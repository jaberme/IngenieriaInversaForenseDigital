#!/usr/bin/env python3
"""Construye dos paquetes desde un único ELF enlazado; sin dependencias Python externas."""
import argparse
from datetime import datetime, timezone
import hashlib
import json
import os
from pathlib import Path
import platform
import shutil
import subprocess
import tarfile

HERE = Path(__file__).resolve().parent
FLAGS = ['-std=c11', '-Wall', '-Wextra', '-Wpedantic', '-Werror', '-O1', '-g3',
         '-fno-inline', '-fno-omit-frame-pointer', '-fPIE', '-pie',
         '-Wl,-z,relro,-z,now', '-Wl,--build-id=sha1', '-ffile-prefix-map=' + str(HERE) + '=.']


def run(args, **kwargs):
    return subprocess.check_output(args, text=True, env={**os.environ, 'LC_ALL': 'C'}, **kwargs)


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def manifest(directory):
    entries = []
    for path in sorted(directory.rglob('*')):
        if path.is_file() and path.name != 'SHA256SUMS':
            entries.append(f'{digest(path)}  {path.relative_to(directory)}\n')
    (directory / 'SHA256SUMS').write_text(''.join(entries))


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--salida', type=Path, default=HERE / 'paquete')
    args = parser.parse_args()
    out = args.salida.resolve()
    # Impide mezclar silenciosamente una edición ya distribuida con un nuevo build.
    out.mkdir(parents=True, exist_ok=False)
    student, teacher = out / 'alumnado', out / 'docente'
    student.mkdir()
    teacher.mkdir()
    if platform.machine() not in ('x86_64', 'amd64'):
        raise SystemExit('Se requiere Linux x86-64; no se genera otra ABI silenciosamente.')
    if platform.system() != 'Linux':
        raise SystemExit('Se requiere Linux.')
    command = ['gcc', *FLAGS, '-o', str(teacher / 'RE-01.simbolos'), 're01.c']
    run(command, cwd=HERE)
    run(['objcopy', '--only-keep-debug', str(teacher / 'RE-01.simbolos'), str(teacher / 'RE-01.debug')])
    run(['objcopy', '--strip-all', str(teacher / 'RE-01.simbolos'), str(student / 'RE-01')])
    shutil.copytree(HERE / 'fixtures', student / 'entradas')
    shutil.copytree(HERE / 'fixtures', teacher / 'fixtures')
    for name in ('re01.c', 'construir.py', 'verificar.py', 'docente.md', 'alumnado.md'):
        shutil.copy2(HERE / name, teacher / name)
    shutil.copy2(HERE / 'alumnado.md', student / 'LEEME.md')
    headers = run(['readelf', '-h', '-lW', '-SW', '-n', str(student / 'RE-01')])
    (teacher / 'elf.txt').write_text(headers)
    (teacher / 'desensamblado.asm').write_text(run(['objdump', '-d', '-M', 'intel', str(teacher / 'RE-01.simbolos')]))
    names = {'main', 'load_config', 'load_record', 'transform_record', 'write_result'}
    locations = []
    for line in run(['nm', '-S', '-n', str(teacher / 'RE-01.simbolos')]).splitlines():
        parts = line.split()
        if len(parts) == 4 and parts[3] in names:
            locations.append({'funcion': parts[3], 'va_elf': '0x' + parts[0], 'bytes': int(parts[1], 16)})
    (teacher / 'direcciones.json').write_text(json.dumps(locations, indent=2) + '\n')
    tools = {cmd: run([cmd, '--version']).splitlines()[0] for cmd in ('gcc', 'ld', 'objcopy', 'readelf')}
    build = {
        'id': 'RE-01', 'version': '1.0', 'nombre': 'RE-01',
        'procedencia': 'Muestra sintética propia del curso; código re01.c',
        'uso': 'Uso y redistribución en el contexto docente del curso',
        'creacion_utc': datetime.now(timezone.utc).isoformat(),
        'formato': 'ELF64 x86-64 PIE dinámico; sin .symtab ni DWARF; imports dinámicos conservados',
        'tamano': (student / 'RE-01').stat().st_size, 'sha256': digest(student / 'RE-01'),
        'fuente_sha256': digest(HERE / 're01.c'), 'herramientas': tools,
        'libc_build': run(['getconf', 'GNU_LIBC_VERSION']).strip(),
        'requisitos_glibc': run(['readelf', '--version-info', str(student / 'RE-01')]),
        'limites': ['No genera tráfico de red', 'No constituye EV-01 ni acredita actividad histórica',
                    'Resultados dependen del build; no se promete igualdad entre toolchains'],
    }
    (student / 'MANIFIESTO.json').write_text(json.dumps(build, indent=2, ensure_ascii=False) + '\n')
    (teacher / 'build.json').write_text(json.dumps({'comando': command, 'cwd': str(HERE), **build}, indent=2, ensure_ascii=False) + '\n')
    # El fichero de símbolos conserva las direcciones del ELF distribuido.
    (teacher / 'sesion.gdb').write_text('''set pagination off
set confirm off
set debuginfod enabled off
set disable-randomization off
file ../alumnado/RE-01
symbol-file RE-01.debug
set args ../alumnado/entradas/valida.cfg ../alumnado/entradas/documento.txt resultado-gdb.txt
break transform_record
run
info proc mappings
p/x &main
info args
p *cfg
p *record
disassemble /r transform_record
finish
info registers eax
continue
''')
    # Verificación con ejecutables definitivos, antes de sellar y empaquetar.
    subprocess.run(['python3', str(HERE / 'verificar.py'), str(out)], check=True)
    for directory in (student, teacher):
        manifest(directory)
        with tarfile.open(out / f'RE-01-{directory.name}.tar.gz', 'w:gz') as archive:
            archive.add(directory, arcname=directory.name)
    (out / 'SHA256SUMS').write_text(''.join(f'{digest(p)}  {p.name}\n' for p in sorted(out.glob('*.tar.gz'))))
    print(json.dumps({'paquete': str(out), 'tamano': build['tamano'], 'sha256': build['sha256']}, indent=2))


if __name__ == '__main__':
    main()
