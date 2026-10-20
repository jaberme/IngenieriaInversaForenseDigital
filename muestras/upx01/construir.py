#!/usr/bin/env python3
"""Construye UPX-01, conserva pruebas y empaqueta una edición nueva del material."""
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

from verificar import verify

HERE=Path(__file__).resolve().parent


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def run(args, cwd=None):
    return subprocess.run([str(x) for x in args],cwd=cwd,env={**os.environ,'LC_ALL':'C'},
                          capture_output=True,text=True,timeout=60)


def checked(args, cwd=None):
    r=run(args,cwd)
    if r.returncode:
        raise RuntimeError(f'{args}: {r.returncode}\n{r.stdout}\n{r.stderr}')
    return r.stdout


def write_json(path,obj):
    path.write_text(json.dumps(obj,indent=2,ensure_ascii=False)+'\n')


def sums(directory):
    (directory/'SHA256SUMS').write_text(''.join(f'{sha(p)}  {p.relative_to(directory)}\n'
        for p in sorted(directory.rglob('*')) if p.is_file() and p.name!='SHA256SUMS'))


def main():
    parser=argparse.ArgumentParser()
    parser.add_argument('--salida',type=Path,default=HERE/'paquete')
    parser.add_argument('--upx',default=shutil.which('upx') or shutil.which('upx-ucl') or 'upx')
    parser.add_argument('--deb',type=Path,help='Registra procedencia del paquete UPX usado, sin redistribuirlo')
    args=parser.parse_args()
    upx=shutil.which(args.upx)
    if not upx: raise SystemExit('Falta UPX; indique --upx /RUTA/upx o prepare upx-ucl en la VM')
    upx=str(Path(upx).resolve())
    if platform.system()!='Linux' or platform.machine()!='x86_64':
        raise SystemExit('La validación ejecutable requiere Linux x86-64')
    out=args.salida.resolve(); out.mkdir(parents=True,exist_ok=False)
    student,teacher=out/'alumnado',out/'docente'
    student.mkdir(); teacher.mkdir()
    source=HERE/'ejemplos.c'
    if not source.exists(): source=HERE.parent/'build/ejemplos.c'
    shutil.copy2(source,teacher/'ejemplos.c')
    for name in ('construir.py','verificar.py','alumnado.md','docente.md'):
        shutil.copy2(HERE/name,teacher/name)
    shutil.copy2(HERE/'alumnado.md',student/'LEEME.md')
    for dest in (student,teacher): shutil.copytree(HERE/'licencias',dest/'licencias')
    original=student/'original'; packed=student/'empaquetado'; recovered=teacher/'recuperado'
    command=['gcc','-std=c11','-Wall','-Wextra','-Wpedantic','-Werror','-O2','-s','-fPIE','-pie',
             '-o',str(original),'ejemplos.c']
    checked(command,cwd=teacher)
    initial=original.read_bytes()
    operations=[]
    for name,cmd in [('empaquetar',[upx,'-9','-o',packed,original]),
                     ('test',[upx,'-t',packed]), ('listar',[upx,'-l',packed]),
                     ('desempaquetar',[upx,'-d','-o',recovered,packed]),
                     ('cmp',['cmp','-s',original,recovered])]:
        result=run(cmd)
        operation=dict(id=name,comando=[str(x) for x in cmd],retorno=result.returncode,
                       stdout=result.stdout,stderr=result.stderr)
        operations.append(operation)
        (teacher/f'{name}.log').write_text(json.dumps(operation,indent=2,ensure_ascii=False)+'\n')
        if result.returncode: raise RuntimeError(operation)
    assert original.read_bytes()==initial
    behavior=verify(out)
    write_json(teacher/'comportamiento.json',behavior)
    for name,path in [('original',original),('empaquetado',packed),('recuperado',recovered)]:
        for suffix,cmd in [('elf.txt',['readelf','-h','-lW','-SW',path]),
                           ('file.txt',['file','-b',path]),('strings.txt',['strings','-a',path])]:
            result=run(cmd)
            (teacher/f'{name}-{suffix}').write_text(result.stdout+result.stderr)
            if result.returncode: raise RuntimeError(f'{cmd}: {result.stderr}')
    tool_info=dict(version=checked([upx,'--version']).strip(),sha256=sha(Path(upx)))
    if args.deb:
        tool_info['paquete']=dict(nombre=args.deb.name,sha256=sha(args.deb),
            control=checked(['dpkg-deb','-f',args.deb,'Package','Version','Architecture','Depends']).strip())
    write_json(teacher/'herramienta.json',tool_info)
    manifest=dict(id='UPX-01',version='1.0',creacion_utc=datetime.now(timezone.utc).isoformat(),
        procedencia='Fuente propio ejemplos.c del curso; empaquetado sin modificar mediante UPX -9',
        uso='Código propio: uso y redistribución en el contexto docente del curso; avisos del stub en licencias/',
        fuente_sha256=sha(source),herramienta=tool_info,
        herramientas={c:checked([c,'--version']).splitlines()[0] for c in ('gcc','ld','readelf','cmp')},
        libc_build=checked(['getconf','GNU_LIBC_VERSION']).strip(),
        requisitos_glibc=checked(['readelf','--version-info',original]),
        ficheros=[dict(nombre=n,**behavior['objetos'][n]) for n in ('original','empaquetado')],
        limites=['El alumnado genera recuperado; la copia de control está en el paquete docente',
                 'UPX no se incluye: preparar la versión manifestada antes de clase',
                 'Diez entradas contrastadas; no prueba equivalencia universal ni valida anti-debug'])
    write_json(student/'MANIFIESTO.json',manifest)
    write_json(teacher/'build.json',dict(comando=command,cwd=str(teacher),operaciones=operations,**manifest))
    info=behavior['objetos']; saved=100*(1-info['empaquetado']['tamano']/info['original']['tamano'])
    rows='\n'.join(f'| {name} | {v["tamano"]} | {v["entry"]} | {v["program_headers"]} | {v["section_headers"]} |'
                   for name,v in info.items())
    hashes='\n'.join(f'{v["sha256"]}  {name}' for name,v in info.items())
    (teacher/'RESULTADOS.md').write_text(f'''# UPX-01 — Resultados medidos

{tool_info['version'].splitlines()[0]}, empaquetado -9, test -t y recuperación -d.
Los tres comandos terminaron con retorno 0; cmp -s también retornó 0.

| Objeto | Bytes reales | Entry ELF | Program headers | Section headers |
|---|---:|---|---:|---:|
{rows}

```text
{hashes}
```

La reducción de tamaño en fichero es {saved:.2f} %. La medida procede de los bytes
leídos y del tamaño final del fichero, no de interpretar las columnas de progreso de UPX.
Los hashes identifican cada representación; original y recuperado son idénticos byte
a byte en esta edición, mientras que empaquetado difiere.

Se ejecutaron {behavior['ejecuciones']} procesos: diez entradas por tres representaciones.
Se compararon retorno, stdout y stderr con el contrato del fuente. Se mantuvo argv[0]
igual a muestra para que la línea de uso no varíe con el nombre de la copia. El caso
válido y válido con argumento extra retornan 0; los otros ocho casos retornan 1.
Todos imprimen retorno=42 if=1 bucle=45 llamada=6 antes del mensaje de uso/acierto/error.
comportamiento.json conserva entradas y resultados exactos de cada proceso.

El contenido de un archivo de control y el inventario del directorio de trabajo
permanecieron intactos. El alcance de esa observación no cubre todo el sistema de
ficheros ni todas las llamadas al sistema. No se cambió ninguno de los tres binarios.
El stub y las dependencias pueden producir efectos de carga que este control no mide.

Los informes *-elf.txt, *-strings.txt y *-file.txt permiten contrastar estructura y
visibilidad de cadenas. La ausencia de cabeceras de sección no elimina los segmentos
cargables ni vuelve malicioso el fichero. Esta entrega no valida la sesión anti-debug.
''')
    for directory in (student,teacher):
        sums(directory)
        with tarfile.open(out/f'UPX-01-{directory.name}.tar.gz','w:gz') as tar:
            tar.add(directory,arcname=directory.name)
    (out/'SHA256SUMS').write_text(''.join(f'{sha(p)}  {p.name}\n' for p in sorted(out.glob('*.tar.gz'))))
    print(json.dumps(dict(paquete=str(out),objetos=info,ejecuciones=behavior['ejecuciones']),indent=2))


if __name__=='__main__': main()
