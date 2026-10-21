#!/usr/bin/env python3
"""Compilar y registrar el núcleo Linux x86-64 de P1 sin alterar las muestras."""
import argparse
from datetime import datetime, timezone
import hashlib
import json
import os
from pathlib import Path
import platform
import shlex
import shutil
import subprocess

RAIZ = Path(__file__).resolve().parents[2]
LAB = Path(__file__).resolve().parent
PRACTICA = RAIZ / "Practicas/IngenieriaInversa/P1-c-a-asm"


def sha256(ruta):
    with ruta.open("rb") as archivo:
        return hashlib.file_digest(archivo, "sha256").hexdigest()


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--salida", type=Path, help="Directorio nuevo; nunca se sobrescribe")
    args = parser.parse_args()
    if platform.system() != "Linux" or platform.machine() != "x86_64":
        parser.error("Este protocolo requiere Linux x86-64")
    for nombre in ("gcc", "make", "objdump", "readelf", "file"):
        if not shutil.which(nombre):
            parser.error(f"Falta la herramienta {nombre}")
    fuentes = [RAIZ / "muestras/build/ejemplos.c", RAIZ / "muestras/build/Makefile",
               LAB / "controles.c", Path(__file__).resolve(),
               PRACTICA / "Practica1.pdf", PRACTICA / "solucion.pdf"]
    ausentes = [ruta for ruta in fuentes if not ruta.is_file()]
    if ausentes:
        parser.error("Faltan entradas de P1: " +
                     ", ".join(str(ruta.relative_to(RAIZ)) for ruta in ausentes))
    inicio = datetime.now(timezone.utc)
    salida = (args.salida or RAIZ / "build/laboratorios/P1" /
              inicio.strftime("%Y%m%dT%H%M%S%fZ")).resolve()
    salida.mkdir(parents=True, exist_ok=False)
    (salida / "binarios").mkdir()
    env = dict(os.environ, LC_ALL="C", TZ="UTC")
    entradas = {str(p.relative_to(RAIZ)): sha256(p) for p in fuentes}
    registro = {"inicio_utc": inicio.isoformat(), "raiz": str(RAIZ),
                "plataforma": platform.platform(), "maquina": platform.machine(),
                "fuentes_sha256": entradas, "comandos": [], "estado": "en curso"}

    def guardar():
        (salida / "registro.json").write_text(
            json.dumps(registro, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")

    def ejecutar(nombre, argumentos, esperado=0, contiene=None):
        resultado = subprocess.run([str(a) for a in argumentos], cwd=RAIZ, env=env,
                                   capture_output=True, timeout=180)
        (salida / f"{nombre}.txt").write_bytes(resultado.stdout)
        (salida / f"{nombre}.stderr.txt").write_bytes(resultado.stderr)
        registro["comandos"].append({"nombre": nombre, "argv": [str(a) for a in argumentos],
                                     "codigo": resultado.returncode, "esperado": esperado})
        guardar()
        if resultado.returncode != esperado:
            raise RuntimeError(f"{nombre}: salida {resultado.returncode}; se esperaba {esperado}")
        if contiene is not None and contiene not in resultado.stdout:
            raise RuntimeError(f"{nombre}: no aparece la salida de referencia")
        return resultado.stdout.decode("utf-8", errors="replace")

    try:
        if (RAIZ / ".git").exists() and shutil.which("git"):
            registro["revision_base"] = ejecutar("revision", ["git", "rev-parse", "HEAD"]).strip()
        else:
            registro["revision_base"] = None
            registro["procedencia_revision"] = "Copia sin metadatos Git; consultar MANIFIESTO.json"
        for herramienta in ("gcc", "make", "objdump", "readelf", "file"):
            ejecutar(f"version-{herramienta}", [herramienta, "--version"])
        ejecutar("gcc-target", ["gcc", "-dumpmachine"])
        ejecutar("gcc-configuracion", ["gcc", "-v"])
        # -B fuerza las cuatro compilaciones. OUT aísla los binarios del libro.
        ejecutar("compilacion", ["make", "-B", "-C", "muestras/build", "x86",
                                f"OUT={salida / 'binarios'}"])
        for variante in ("dbg", "opt", "strip-dbg", "strip-opt"):
            binario = salida / "binarios" / f"ejemplos-x86-{variante}"
            ejecutar(f"file-{variante}", ["file", binario])
            ejecutar(f"elf-{variante}", ["readelf", "-h", "-S", "-W", binario])
        texto = b"retorno=42 if=1 bucle=45 llamada=6\n"
        for nivel, variante in (("O0", "dbg"), ("O2", "opt")):
            binario = salida / "binarios" / f"ejemplos-x86-{variante}"
            for funcion in ("funcion_retorno", "funcion_if", "funcion_bucle",
                            "funcion_suma", "funcion_llamada_con_argumentos", "main"):
                ejecutar(f"{funcion}-{nivel}", ["objdump", "-d", "-M", "intel",
                                               f"--disassemble={funcion}", binario])
            for caso, argumentos, codigo in (("correcta", ["R3v3rs1ng_UAL"], 0),
                                             ("incorrecta", ["entrada-no-valida"], 1),
                                             ("sin-argumento", [], 1)):
                ejecutar(f"ejecucion-{nivel}-{caso}", [binario, *argumentos], codigo, texto)
            objeto = salida / "binarios" / f"ejemplos-control-{nivel}.o"
            control = salida / "binarios" / f"controles-{nivel}"
            ejecutar(f"compilar-objeto-{nivel}", ["gcc", f"-{nivel}", "-g",
                     "-Dmain=p1_main", "-c", RAIZ / "muestras/build/ejemplos.c", "-o", objeto])
            ejecutar(f"enlazar-controles-{nivel}", ["gcc", f"-{nivel}", "-g",
                     LAB / "controles.c", objeto, "-o", control])
            ejecutar(f"controles-{nivel}", [control])
        if entradas != {str(p.relative_to(RAIZ)): sha256(p) for p in fuentes}:
            raise RuntimeError("Cambió una entrada durante la ejecución")
        registro["estado"] = "ejecutado; controles correctos"
    except Exception as error:
        registro["estado"] = "fallido"
        registro["error"] = str(error)
        raise
    finally:
        registro["fin_utc"] = datetime.now(timezone.utc).isoformat()
        (salida / "comandos.sh").write_text(
            "# Registro de órdenes ejecutadas; cwd: " + str(RAIZ) + "\n" +
            "\n".join(shlex.join(c["argv"]) for c in registro["comandos"]) + "\n",
            encoding="utf-8")
        registro["artefactos_sha256"] = {
            str(p.relative_to(salida)): sha256(p)
            for p in sorted(salida.rglob("*")) if p.is_file() and p.name != "registro.json"}
        guardar()
    print(f"{registro['estado']}: {salida}")


if __name__ == "__main__":
    main()
