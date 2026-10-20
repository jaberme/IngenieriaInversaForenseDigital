#!/usr/bin/env python3
"""Contrasta tres representaciones de la muestra propia, sin modificar el paquete."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import platform
import struct
import subprocess
import tempfile


def identify(path):
    data = path.read_bytes()
    if data[:6] != b'\x7fELF\x02\x01' or len(data) < 64:
        raise ValueError('Se requiere ELF64 little endian')
    kind, machine = struct.unpack_from('<HH', data, 16)
    entry, = struct.unpack_from('<Q', data, 24)
    phnum, = struct.unpack_from('<H', data, 56)
    shnum, = struct.unpack_from('<H', data, 60)
    assert machine == 62
    return dict(tamano=len(data), sha256=hashlib.sha256(data).hexdigest(),
                tipo_elf=kind, entry=hex(entry), program_headers=phnum,
                section_headers=shnum, cadena_clave_literal=b'R3v3rs1ng_UAL' in data)


def verify(package):
    paths = {'original':package/'alumnado/original', 'empaquetado':package/'alumnado/empaquetado',
             'recuperado':package/'docente/recuperado'}
    before = {name:p.read_bytes() for name,p in paths.items()}
    info = {name:identify(p) for name,p in paths.items()}
    assert before['original'] == before['recuperado']
    assert before['original'] != before['empaquetado']
    cases = [('sin-argumentos',[]), ('vacia',['']), ('corta',['abc']),
             ('longitud-correcta',['A'*13]), ('diferencia-tardia',['R3v3rs1ng_UAX']),
             ('valida',['R3v3rs1ng_UAL']), ('argumento-extra',['R3v3rs1ng_UAL','extra']),
             ('salto-final',['R3v3rs1ng_UAL\n']), ('no-ascii',['contraseña']), ('larga',['A'*4096])]
    rows = []
    with tempfile.TemporaryDirectory(prefix='upx01-casos-') as temp:
        root = Path(temp)
        for label, args in cases:
            expected_status = 0 if args and args[0]=='R3v3rs1ng_UAL' else 1
            line = 'Uso: muestra <contrasena>\n' if not args else (
                'Contraseña correcta.\n' if expected_status==0 else 'Contraseña incorrecta.\n')
            expected = ('retorno=42 if=1 bucle=45 llamada=6\n'+line).encode()
            observed = {}
            for name, binary in paths.items():
                work = root/f'{label}-{name}'
                work.mkdir()
                control = work/'control.txt'; control.write_bytes(b'DATO SINTETICO INTACTO\n')
                # argv[0] constante: el mensaje de uso no debe depender del nombre de la copia.
                result = subprocess.run(['muestra',*args], executable=str(binary), cwd=work,
                    env={**os.environ,'LC_ALL':'C'}, capture_output=True, timeout=10)
                assert result.returncode == expected_status, (label,name,result.stderr)
                assert result.stdout == expected and result.stderr == b'', (label,name,result.stdout)
                assert list(work.iterdir()) == [control] and control.read_bytes()==b'DATO SINTETICO INTACTO\n'
                observed[name] = dict(retorno=result.returncode, stdout=result.stdout.decode(),
                                      stderr=result.stderr.decode(), directorio_trabajo_intacto=True)
            rows.append(dict(id=label, argumentos=args, observaciones=observed))
    assert all(p.read_bytes()==before[name] for name,p in paths.items())
    return dict(objetos=info, casos=rows, ejecuciones=len(rows)*len(paths),
                entorno=dict(sistema=platform.platform(), maquina=platform.machine(), libc=platform.libc_ver()),
                limites=['Diez entradas concretas; no prueba equivalencia universal',
                         'Control de ficheros limitado al directorio de trabajo; sin trazado global de syscalls',
                         'No valida aquí la actividad anti-debug de P5'])


if __name__ == '__main__':
    parser=argparse.ArgumentParser()
    parser.add_argument('paquete',type=Path)
    args=parser.parse_args()
    print(json.dumps(verify(args.paquete.resolve()),indent=2,ensure_ascii=False))
