#!/usr/bin/env python3
"""Compila, verifica estáticamente y manifiesta la edición PE-01 de P2."""
import argparse
from datetime import datetime, timezone
import hashlib
import json
import os
from pathlib import Path
import re
import shutil
import subprocess
import tarfile

from inspeccionar import inspect

HERE = Path(__file__).resolve().parent


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def run(command, **kwargs):
    return subprocess.check_output([str(x) for x in command], text=True,
                                   env={**os.environ, 'LC_ALL': 'C', 'SOURCE_DATE_EPOCH': '0'}, **kwargs)


def write_json(path, value):
    path.write_text(json.dumps(value, indent=2, ensure_ascii=False)+'\n')


def sums(directory):
    (directory/'SHA256SUMS').write_text(''.join(
        f'{sha(p)}  {p.relative_to(directory)}\n'
        for p in sorted(directory.rglob('*')) if p.is_file() and p.name != 'SHA256SUMS'))


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--salida', type=Path, default=HERE/'paquete')
    parser.add_argument('--cc', default='x86_64-w64-mingw32-gcc')
    parser.add_argument('--binutils-prefix', default='x86_64-w64-mingw32-')
    parser.add_argument('--debs', type=Path, help='Registra paquetes descargados, sin incluirlos en el archivo')
    args = parser.parse_args()
    cc = shutil.which(args.cc)
    if not cc:
        raise SystemExit('Instale MinGW-w64 o indique --cc con la ruta del compilador cruzado')
    commands = {name: shutil.which(args.binutils_prefix+name) for name in ('objcopy','objdump','ld')}
    if not all(commands.values()):
        raise SystemExit('Faltan GNU Binutils para MinGW-w64; revise --binutils-prefix')
    out = args.salida.resolve()
    out.mkdir(parents=True, exist_ok=False)
    student, teacher = out/'alumnado', out/'docente'
    student.mkdir(); teacher.mkdir()
    source = HERE/'ejemplos.c'
    if not source.exists():
        source = HERE.parent/'build/ejemplos.c'
    shutil.copy2(source, teacher/'ejemplos.c')
    for name in ('construir.py','inspeccionar.py','alumnado.md','docente.md'):
        shutil.copy2(HERE/name, teacher/name)
    shutil.copy2(HERE/'alumnado.md', student/'LEEME.md')
    for dest in (student, teacher):
        shutil.copytree(HERE/'licencias', dest/'licencias')
    flags = ['-std=c11','-Wall','-Wextra','-Wpedantic','-Werror','-O2','-g',
             '-ffile-prefix-map='+str(teacher)+'=.',
             '-Wl,--no-insert-timestamp,--dynamicbase,--nxcompat']
    command = [cc, *flags, '-o', 'ejemplos-pe.simbolos.exe', 'ejemplos.c']
    run(command, cwd=teacher)
    full = teacher/'ejemplos-pe.simbolos.exe'
    binary = student/'ejemplos-pe.exe'
    strip = [commands['objcopy'],'--strip-all',str(full),str(binary)]
    run(strip)
    report = inspect(binary)
    original = inspect(full)
    assert report['machine'] == 0x8664 and report['magic'] == 0x20b
    assert report['subsystem'] == 3 and not report['characteristics'] & 0x2000
    assert report['timestamp'] == 0
    assert report['coff_symbols'] == 0 and report['coff_symbol_pointer'] == 0
    assert report['dll_characteristics'] & 0x140 == 0x140
    assert report['directorios'][5][1] > 0, 'Faltan relocations'
    assert report['directorios'][4] == (0,0), 'No debe tener certificado Authenticode'
    assert {s['nombre'] for s in report['secciones']} >= {'.text','.rdata','.data','.bss','.idata','.reloc'}
    assert not any(s['nombre'].startswith(('.debug','/')) for s in report['secciones'])
    assert any(s['seccion'] == '.bss' for s in report['sin_bytes'])
    assert {i['dll'].lower() for i in report['imports']} == {'kernel32.dll','msvcrt.dll'}
    # Comprueba contenido y direcciones de las secciones conservadas tras strip.
    a, b = binary.read_bytes(), full.read_bytes()
    for sec in report['secciones']:
        before = next(s for s in original['secciones'] if s['nombre'] == sec['nombre'])
        assert (sec['rva'],sec['virtual_size']) == (before['rva'],before['virtual_size'])
        n = sec['raw_size']
        assert a[sec['raw_offset']:sec['raw_offset']+n] == b[before['raw_offset']:before['raw_offset']+n]
    assert report['entrada'] == {**original['entrada'], 'offset':report['entrada']['offset']}
    obj = commands['objdump']
    headers = run([obj,'-p',binary])
    sections = run([obj,'-h',binary])
    va = report['entrada']['va_preferida']
    disasm = run([obj,'-d','-M','intel',f'--start-address={va}',f'--stop-address={va+16}',binary])
    # Segunda lectura independiente con GNU objdump, además del parser de bytes.
    assert 'pei-x86-64' in headers
    assert f'{report["entry_rva"]:016x}' in headers
    assert f'{report["image_base"]:016x}' in headers
    assert all(i['dll'] in headers for i in report['imports'])
    instruction_bytes = re.findall(r'^\s*[0-9a-f]+:\s+((?:[0-9a-f]{2}[ \t]+)+)', disasm, re.MULTILINE)
    assert report['entrada']['bytes'].split() == ' '.join(instruction_bytes).split()
    for name, text in (('cabeceras.txt',headers),('secciones.txt',sections),('entry.asm',disasm)):
        (teacher/name).write_text(text)
    (teacher/'desensamblado.asm').write_text(run([obj,'-d','-M','intel',full]))
    write_json(teacher/'inspeccion.json',report)
    tool_versions = {'gcc':run([cc,'--version']).splitlines()[0], **{
        k:run([v,'--version']).splitlines()[0] for k,v in commands.items()}}
    packages = []
    if args.debs:
        for p in sorted(args.debs.glob('*.deb')):
            packages.append({'archivo':p.name, 'sha256':sha(p),
                             'control':run(['dpkg-deb','-f',p,'Package','Version','Architecture']).strip()})
    manifest = dict(id='PE-01', version='1.0', fichero=binary.name, formato='PE32+ AMD64 consola, stripped',
        tamano=report['tamano'], sha256=report['sha256'], fuente='ejemplos.c, fuente propio del curso compartido con el ELF de P2',
        fuente_sha256=sha(source), uso='Uso y redistribución del código propio en el contexto docente del curso; avisos de runtime en licencias/',
        creacion_utc=datetime.now(timezone.utc).isoformat(), herramientas=tool_versions,
        validacion='Inspección estática y comparación de bytes; no ejecutado en Windows/Wine',
        limites=['Sin firma Authenticode; manifiesto de distribución distinto de un recurso RT_MANIFEST',
                 'Timestamp COFF cero por opción de enlace; no representa fecha histórica',
                 'ASLR declarado en cabecera; no se ha medido una base real en ejecución'])
    write_json(student/'MANIFIESTO.json',manifest)
    write_json(teacher/'build.json',dict(comando=command, cwd=str(teacher), strip=strip,
                                       entorno={'LC_ALL':'C','SOURCE_DATE_EPOCH':'0'},
                                       paquetes_toolchain=packages, **manifest))
    ep = report['entrada']; sec = next(s for s in report['secciones'] if s['nombre']==ep['seccion'])
    bss = next(s for s in report['secciones'] if s['nombre']=='.bss')
    rows = '\n'.join(f'| {s["nombre"]} | {s["rva"]:#x} | {s["virtual_size"]:#x} | {s["raw_offset"]:#x} | {s["raw_size"]:#x} |' for s in report['secciones'])
    (teacher/'RESULTADOS.md').write_text(f'''# PE-01 — resultados estáticos de esta edición

Tamaño: {report['tamano']} bytes. SHA-256: `{report['sha256']}`.
Machine: 0x8664. Magic: 0x20b. Subsystem: 3 (consola). Timestamp COFF: 0.
ImageBase: {report['image_base']:#x}. SectionAlignment: {report['section_alignment']:#x}.
FileAlignment: {report['file_alignment']:#x}. DllCharacteristics: {report['dll_characteristics']:#x}.

| Sección | RVA | VirtualSize | RawPtr | RawSize |
|---|---|---|---|---|
{rows}

## Conversión comprobada del entry point

```text
RVA = {ep['rva']:#x}
VA preferida = {report['image_base']:#x} + {ep['rva']:#x} = {ep['va_preferida']:#x}
Delta en {sec['nombre']} = {ep['rva']:#x} - {sec['rva']:#x} = {ep['rva']-sec['rva']:#x}
Offset = {sec['raw_offset']:#x} + {ep['rva']-sec['rva']:#x} = {ep['offset']:#x}
Bytes (16): {ep['bytes']}
```

El delta y los 16 bytes caben en VirtualSize y RawSize. entry.asm contrasta los
bytes con objdump. La VA preferida no es una base observada en ejecución.

## Caso sin bytes en fichero

La sección .bss comienza en RVA {bss['rva']:#x}, con VirtualSize {bss['virtual_size']:#x}
y RawSize {bss['raw_size']:#x}. Esa región se inicializa al cargar y no admite
convertir su primer RVA en un offset con bytes de la variable. RawPtr=0 no autoriza
a leer la cabecera MZ como si fuera el contenido de .bss.

## Imports y límites

DLL importadas: {', '.join(i['dll'] for i in report['imports'])}.
La lista exacta de funciones está en inspeccion.json y cabeceras.txt. Los imports
del runtime no prueban acciones del usuario ni actividad histórica. El PE no se ha
ejecutado: este informe valida la parte estática de P2. El parser es acotado a estas
muestras PE32+ y no se ofrece como analizador universal de ficheros hostiles.
''')
    for directory in (student, teacher):
        sums(directory)
        with tarfile.open(out/f'PE-01-{directory.name}.tar.gz','w:gz') as tar:
            tar.add(directory,arcname=directory.name)
    (out/'SHA256SUMS').write_text(''.join(f'{sha(p)}  {p.name}\n' for p in sorted(out.glob('*.tar.gz'))))
    print(json.dumps(dict(paquete=str(out),tamano=report['tamano'],sha256=report['sha256'],
                          entry=report['entrada']),indent=2))


if __name__ == '__main__':
    main()
