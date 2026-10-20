#!/usr/bin/env python3
"""Pruebas de contrato, fronteras, efectos, paridad ELF y control GDB opcional."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import random
import re
import shutil
import subprocess
import tempfile


def run(args, **kwargs):
    return subprocess.run([str(x) for x in args], capture_output=True, timeout=15, **kwargs)


def reference(text, mode='upper', shift=3, tag='LAB-RE01', ident=1042):
    # Oráculo separado: tablas de traducción Python, no lectura de la salida C.
    alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
    target = alphabet[shift:] + alphabet[:shift]
    if mode == 'lower':
        target = target.lower()
    transformed = text.translate(str.maketrans(alphabet + alphabet.lower(), target + target))
    h = 2166136261
    for byte in transformed.encode('ascii'):
        h = ((h ^ byte) * 16777619) & 0xffffffff
    data = f'tag={tag}\nid={ident}\ntext={transformed}\nchecksum={h:08x}\n'.encode()
    stdout = f'OK id={ident} bytes={len(text)} checksum={h:08x}\n'.encode()
    return data, stdout


def config(mode='upper', shift=3, limit=32, tag='LAB-RE01'):
    return f'mode={mode}\nshift={shift}\nlimit={limit}\ntag={tag}\n'.encode()


def record(text, ident=1042):
    return f'id={ident}\ntext={text}\n'.encode()


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('paquete', type=Path)
    parser.add_argument('--sin-gdb', action='store_true')
    args = parser.parse_args()
    package = args.paquete.resolve()
    binary = package / 'alumnado/RE-01'
    symbols = package / 'docente/RE-01.simbolos'
    report = {'sha256': hashlib.sha256(binary.read_bytes()).hexdigest(), 'pruebas': []}
    headers = run(['readelf', '-hSW', binary]).stdout.decode()
    assert 'DYN' in headers and 'X86-64' in headers
    assert '.symtab' not in headers and '.debug_info' not in headers
    assert '.dynsym' in headers
    with tempfile.TemporaryDirectory(prefix='re01-check-') as tmp:
        work = Path(tmp)
        # Todos los segmentos cargables deben ser idénticos; no solo .text.
        import struct
        segments = []
        for elf in (binary, symbols):
            data = elf.read_bytes()
            offset = struct.unpack_from('<Q', data, 32)[0]
            size, count = struct.unpack_from('<HH', data, 54)
            loaded = []
            for i in range(count):
                kind, flags, off, va, _, filesz, memsz, align = struct.unpack_from('<IIQQQQQQ', data, offset + i * size)
                if kind == 1:
                    # La cabecera ELF cambia e_shoff/e_shnum/e_shstrndx al hacer strip.
                    payload = bytearray(data[off:off+filesz])
                    if off == 0:
                        payload[40:48] = b'\0' * 8
                        payload[60:64] = b'\0' * 4
                    loaded.append((flags, va, memsz, align, bytes(payload)))
            segments.append(loaded)
        assert segments[0] == segments[1], 'Segmentos cargables distintos fuera de la cabecera de secciones'

        def case(name, cfg, doc, status=0, stage='done', expected=None, existing=False, executable=binary):
            directory = work / str(len(report['pruebas']))
            directory.mkdir()
            c, d, out = directory / 'config', directory / 'document', directory / 'resultado'
            if cfg is not None: c.write_bytes(cfg)
            if doc is not None: d.write_bytes(doc)
            if existing: out.write_bytes(b'NO MODIFICAR\n')
            before = {p: p.read_bytes() for p in (c, d) if p.exists()}
            result = run([executable, c, d, out])
            assert result.returncode == status, (name, result.returncode, result.stderr)
            assert result.stderr == f'RE01 status={status} stage={stage}\n'.encode(), name
            if expected:
                assert out.read_bytes() == expected[0], name
                assert result.stdout == expected[1], name
            else:
                assert not result.stdout, name
                assert out.read_bytes() == b'NO MODIFICAR\n' if existing else not out.exists(), name
            assert all(p.read_bytes() == content for p, content in before.items()), name
            report['pruebas'].append({'id': name, 'retorno': status, 'stdout': result.stdout.decode(),
                'stderr': result.stderr.decode(), 'salida': out.read_text() if out.exists() else None})

        case('T1-valida', config(), record('Equipo alfa 2026.'), expected=reference('Equipo alfa 2026.'))
        case('T2-vacio', config(), b'', 5, 'document')
        case('T3-limite-inclusivo', config(limit=16), record('abcdefghijklmnop'), expected=reference('abcdefghijklmnop'))
        case('T4-exceso', config(limit=16), record('abcdefghijklmnopq'), 6, 'limit')
        case('T5-opcion-fuera-rango', config(shift=26), record('Equipo alfa 2026.'), 4, 'config')
        for name, cfg in [('modo', config(mode='rot')), ('limite0', config(limit=0)),
                ('limite129', config(limit=129)), ('negativo', config(shift=-1)),
                ('tag17', config(tag='a'*17)), ('tag-vacio', config(tag='')),
                ('extra', config()+b'x\n'), ('crlf', config().replace(b'\n', b'\r\n')),
                ('nul', config()+b'\0'), ('largo', b'a'*256), ('sin-lf', config()[:-1]),
                ('duplicada', config()+b'mode=upper\n'), ('orden', b'shift=3\n'+config())]:
            case('config-'+name, cfg, record('x'), 4, 'config')
        for name, doc in [('texto-vacio', record('')), ('texto129', record('a'*129)),
                ('id0', record('x', 0)), ('id7', record('x', 1000000)), ('extra', record('x')+b'y\n'),
                ('nul', record('x')+b'\0'), ('largo', b'a'*256), ('sin-lf', record('x')[:-1]),
                ('control', record('\t')), ('utf8', record('ñ'))]:
            case('documento-'+name, config(), doc, 5, 'document')
        case('config-ausente', None, record('x'), 3, 'config')
        case('documento-ausente', config(), None, 3, 'document')
        case('salida-existente', config(), record('x'), 7, 'write', existing=True)
        case('minimos', config(shift=0, limit=1, tag='X'), record('z', 1), expected=reference('z', shift=0, tag='X', ident=1))
        case('maximos', config(shift=25, limit=128, tag='a'*16), record('Z'*128, 999999),
             expected=reference('Z'*128, shift=25, tag='a'*16, ident=999999))
        rng = random.Random(1042)
        for i in range(60):
            text = ''.join(chr(rng.randrange(32,127)) for _ in range(rng.randrange(1,129)))
            mode, shift = rng.choice(('upper','lower')), rng.randrange(26)
            case(f'oraculo-{i}', config(mode, shift, 128), record(text), expected=reference(text, mode, shift))
        case('paridad-con-simbolos', config(), record('Equipo alfa 2026.'),
             expected=reference('Equipo alfa 2026.'), executable=symbols)
        c, d = work / 'c', work / 'd'
        c.write_bytes(config()); d.write_bytes(record('x'))
        r = run([binary]); assert r.returncode == 2
        report['pruebas'].append({'id':'uso', 'retorno':2})
        r = run([binary, c, d, work / 'no-existe' / 'out']); assert r.returncode == 8
        report['pruebas'].append({'id':'destino-inexistente', 'retorno':8})
        for target in (c, d):
            old = target.read_bytes()
            r = run([binary,c,d,target]); assert r.returncode == 7 and target.read_bytes() == old
        link = work / 'link'; link.symlink_to(c)
        r = run([binary,c,d,link]); assert r.returncode == 7 and c.read_bytes() == config()
        report['pruebas'].append({'id':'alias-y-enlace-existentes', 'retorno':7})

        report['gdb'] = {'estado': 'no ejecutado'}
        if not args.sin_gdb and shutil.which('gdb'):
            script = work / 'sesion.gdb'
            script.write_text(f'''set pagination off
set confirm off
set debuginfod enabled off
set disable-randomization off
file {binary}
symbol-file {package / 'docente/RE-01.debug'}
set args {c} {d} {work / 'gdb-out'}
break transform_record
run
p cfg->limit
p record->length
info proc mappings
printf "MAIN_RUNTIME=%p\\n", &main
p sizeof(Config)
p sizeof(Record)
finish
info registers eax
continue
''')
            result = run(['gdb','-nx','-batch','-x',script])
            log = result.stdout + result.stderr
            (package / 'docente/gdb-validacion.log').write_bytes(log)
            if result.returncode == 0 and (work / 'gdb-out').exists():
                assert (work / 'gdb-out').read_bytes() == reference('x')[0]
                first_address = re.search(rb'MAIN_RUNTIME=(0x[0-9a-f]+)', log).group(1).decode()
                # T4: control negativo antes/después; intervenir sobre configuración
                # ya validada, antes de que main consuma el límite.
                c.write_bytes(config(limit=16)); d.write_bytes(record('abcdefghijklmnopq'))
                control = run([binary,c,d,work/'control-antes'])
                assert control.returncode == 6 and not (work/'control-antes').exists()
                script.write_text(f'''set pagination off
set confirm off
set debuginfod enabled off
set disable-randomization off
file {binary}
symbol-file {package / 'docente/RE-01.debug'}
set args {c} {d} {work / 'intervenido'}
break load_config
run
set $saved_cfg = cfg
finish
printf "LIMITE_ANTES=%u\\n", $saved_cfg->limit
set $saved_cfg->limit = 17
printf "LIMITE_DESPUES=%u\\n", $saved_cfg->limit
printf "MAIN_RUNTIME=%p\\n", &main
continue
''')
                changed = run(['gdb','-nx','-batch','-x',script])
                changed_log = changed.stdout + changed.stderr
                (package/'docente/gdb-intervencion.log').write_bytes(changed_log)
                assert changed.returncode == 0, changed_log
                assert b'LIMITE_ANTES=16' in changed_log and b'LIMITE_DESPUES=17' in changed_log
                assert (work/'intervenido').read_bytes() == reference('abcdefghijklmnopq')[0]
                control = run([binary,c,d,work/'control-despues'])
                assert control.returncode == 6 and not (work/'control-despues').exists()
                second_address = re.search(rb'MAIN_RUNTIME=(0x[0-9a-f]+)', changed_log).group(1).decode()
                report['gdb'] = {'estado': 'OK', 'detalle': 'ELF stripped con símbolos externos; breakpoint, memoria, retorno e intervención 16->17 verificados',
                    'control_antes': 6, 'control_despues': 6,
                    'main_runtime': [first_address, second_address],
                    'bases_distintas_observadas': first_address != second_address}
            else:
                if b'ptrace: Operation not permitted' not in log:
                    raise AssertionError(log.decode(errors='replace'))
                report['gdb'] = {'estado': 'no completado', 'retorno':result.returncode, 'detalle':log.decode(errors='replace')[-1600:]}
    (package / 'docente/validacion.json').write_text(json.dumps(report, indent=2, ensure_ascii=False)+'\n')
    print(f"OK: {len(report['pruebas'])} pruebas; GDB: {report['gdb']['estado']}")


if __name__ == '__main__':
    main()
