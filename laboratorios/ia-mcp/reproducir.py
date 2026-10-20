#!/usr/bin/env python3
"""Repite una sesión MCP medida sobre RE-01; no invoca ningún modelo de IA.

Requiere Node/npm, REA 6.7.0 y Ghidra configurado en GHIDRA_INSTALL_DIR,
con un JDK completo seleccionado mediante JAVA_HOME si fuera necesario.
Los selectores corresponden únicamente a la muestra y base comprobadas aquí.
"""
import argparse
import hashlib
import json
import os
import platform
from pathlib import Path
import queue
import shutil
import subprocess
import threading
import time


ROOT = Path(__file__).resolve().parents[2]
SHA256 = "65236d15de045be83091934cb5c1f74aebf7d2ecd176b344743d51565ef2b29f"
VERSION = "6.7.0"
SELECTORES = {
    "configuracion": "0x101309",
    "documento": "0x10165b",
    "transformacion": "0x101942",
    "salida": "0x1019cd",
    "principal": "0x101a70",
}


def digest(path):
    with path.open("rb") as stream:
        return hashlib.file_digest(stream, "sha256").hexdigest()


def guardar(path, data):
    path.write_text(json.dumps(data, ensure_ascii=False, indent=2) + "\n")


class Conexion:
    """Cliente secuencial mínimo para la revisión MCP 2025-11-25 por stdio."""

    def __init__(self, salida):
        self.salida = salida
        self.siguiente = 0
        self.cola = queue.Queue()
        self.log = (salida / "servidor.log").open("w")
        self.proceso = subprocess.Popen(
            ["npx", "--yes", f"rea-agents@{VERSION}", "mcp"],
            stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=self.log,
            text=True, encoding="utf-8", env=os.environ.copy(),
        )
        threading.Thread(target=self.leer, daemon=True).start()

    def leer(self):
        try:
            for line in self.proceso.stdout:
                self.cola.put(json.loads(line))
        except Exception as exc:
            self.cola.put(exc)
        finally:
            self.cola.put(EOFError("El servidor MCP cerró stdout"))

    def enviar(self, mensaje):
        self.proceso.stdin.write(json.dumps(mensaje) + "\n")
        self.proceso.stdin.flush()

    def solicitud(self, metodo, parametros):
        self.siguiente += 1
        numero = self.siguiente
        self.enviar({"jsonrpc": "2.0", "id": numero,
                     "method": metodo, "params": parametros})
        fin = time.monotonic() + 600
        while True:
            respuesta = self.cola.get(timeout=max(0.01, fin - time.monotonic()))
            if isinstance(respuesta, Exception):
                raise respuesta
            if respuesta.get("id") == numero:
                if "error" in respuesta:
                    raise RuntimeError(respuesta["error"])
                return respuesta["result"]

    def herramienta(self, nombre, parametros, etiqueta=None):
        resultado = self.solicitud("tools/call", {"name": nombre,
                                                  "arguments": parametros})
        etiqueta = etiqueta or nombre
        # Conserva el diagnóstico completo si falla y la Evidence si tiene éxito.
        dato = resultado.get("structuredContent", resultado)
        guardar(self.salida / f"{etiqueta}.json", dato)
        with (self.salida / "llamadas.jsonl").open("a") as stream:
            stream.write(json.dumps({"name": nombre, "arguments": parametros,
                                     "file": f"{etiqueta}.json",
                                     "isError": resultado.get("isError", False),
                                     "evidence_id": dato.get("evidence_id")}) + "\n")
        if resultado.get("isError"):
            raise RuntimeError(f"{nombre}: consultar {etiqueta}.json")
        print(etiqueta, flush=True)
        return dato

    def terminar(self):
        self.proceso.stdin.close()
        try:
            self.proceso.wait(timeout=20)
        except subprocess.TimeoutExpired:
            self.proceso.terminate()
            try:
                self.proceso.wait(timeout=10)
            except subprocess.TimeoutExpired:
                self.proceso.kill()
                self.proceso.wait()
        self.proceso.stdout.close()
        self.log.close()


def comprobar_ejecuciones(out, objeto):
    """Ejecuta exclusivamente nuestra muestra identificada, sobre copias nuevas."""
    fixtures = ROOT / "muestras/re01/paquete/alumnado/entradas"
    datos = out / "entradas"
    datos.mkdir()
    for nombre in ("valida.cfg", "documento.txt", "opcion-invalida.cfg"):
        shutil.copy2(fixtures / nombre, datos / nombre)
    resultado = out / "resultado.txt"
    pruebas = [
        ("valida", datos / "valida.cfg", resultado, 0),
        ("salida-existente", datos / "valida.cfg", resultado, 7),
        ("config-invalida", datos / "opcion-invalida.cfg", out / "ausente.txt", 4),
    ]
    registros = []
    original = None
    for nombre, config, destino, esperado in pruebas:
        comando = [str(objeto), str(config), str(datos / "documento.txt"), str(destino)]
        r = subprocess.run(comando, capture_output=True, timeout=10)
        (out / f"{nombre}.stdout").write_bytes(r.stdout)
        (out / f"{nombre}.stderr").write_bytes(r.stderr)
        assert r.returncode == esperado, (nombre, r.returncode)
        registros.append({"nombre": nombre, "argv": comando,
                          "retorno": r.returncode, "esperado": esperado})
        if nombre == "valida":
            original = resultado.read_bytes()
        assert resultado.read_bytes() == original
    assert not (out / "ausente.txt").exists()
    # Cálculo independiente sobre la salida predicha, sin leer el C de la muestra.
    texto = b"HTXLSR DOID 2026."
    h = 2166136261
    for byte in texto:
        h = ((h ^ byte) * 16777619) & 0xffffffff
    esperado = f"tag=LAB-RE01\nid=1042\ntext={texto.decode()}\nchecksum={h:08x}\n"
    assert original == esperado.encode(), original
    guardar(out / "ejecuciones.json", {"pruebas": registros,
            "texto_predicho": texto.decode(), "checksum_predicho": f"{h:08x}",
            "resultado_sha256": digest(resultado), "coincide": True})


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--salida", type=Path, required=True,
                        help="Directorio nuevo para registros y copias")
    args = parser.parse_args()
    if not os.environ.get("GHIDRA_INSTALL_DIR"):
        parser.error("Define GHIDRA_INSTALL_DIR antes de ejecutar")
    fuente = ROOT / "muestras/re01/paquete/alumnado/RE-01"
    assert digest(fuente) == SHA256, "La muestra no coincide con esta edición"
    out = args.salida.resolve()
    out.mkdir(parents=True, exist_ok=False)
    objeto = out / "RE-01"
    shutil.copy2(fuente, objeto)
    conexion = Conexion(out)
    abierto = False
    try:
        inicio = conexion.solicitud("initialize", {
            "protocolVersion": "2025-11-25", "capabilities": {},
            "clientInfo": {"name": "libro-ia-mcp", "version": "1.0"}})
        guardar(out / "initialize.json", inicio)
        assert inicio["serverInfo"]["version"] == VERSION
        conexion.enviar({"jsonrpc": "2.0", "method": "notifications/initialized"})
        herramientas = []
        parametros = {}
        while True:
            pagina = conexion.solicitud("tools/list", parametros)
            herramientas.extend(pagina["tools"])
            if not pagina.get("nextCursor"):
                break
            parametros = {"cursor": pagina["nextCursor"]}
        seleccion = set(("open_binary", "close_binary", "binary_session",
                         "binary_overview", "list_procedures", "search_strings",
                         "xrefs", "analyze_function", "procedure_assembly",
                         "resolve_containing_procedure", "export_evidence_bundle"))
        guardar(out / "catalogo-seleccion.json", {
            "total": len(herramientas),
            "tools": [t for t in herramientas if t["name"] in seleccion]})
        conexion.herramienta("binary_session", {"expected_package_version": VERSION})
        conexion.herramienta("open_binary", {"path": str(objeto), "provider_id": "ghidra"})
        abierto = True
        vista = conexion.herramienta("binary_overview", {})
        assert vista["normalized_result"]["image_base"] == "0x100000"
        inventario = conexion.herramienta("list_procedures", {})
        direcciones = {r["address"] for r in inventario["normalized_result"]}
        assert set(SELECTORES.values()) <= direcciones
        cadenas = conexion.herramienta("search_strings", {"pattern": "checksum"})
        assert "0x1020d8" in {r["address"] for r in cadenas["normalized_result"]}
        conexion.herramienta("xrefs", {"address": "0x1020d8"})
        conexion.herramienta("resolve_containing_procedure", {"address": "0x101a14"})
        for nombre, direccion in SELECTORES.items():
            conexion.herramienta("analyze_function", {"procedure": direccion}, nombre)
        conexion.herramienta("procedure_assembly", {"procedure": SELECTORES["transformacion"]})
        conexion.herramienta("export_evidence_bundle", {"path": str(out / "bundle.json")})
    finally:
        try:
            if abierto:
                conexion.herramienta("close_binary", {})
        finally:
            conexion.terminar()
    comprobar_ejecuciones(out, objeto)
    assert digest(objeto) == SHA256 and digest(fuente) == SHA256
    guardar(out / "manifiesto.json", {
        "rea": VERSION, "muestra_sha256": SHA256,
        "reproductor_sha256": digest(Path(__file__)),
        "python": platform.python_version(), "sistema": platform.platform(),
        "node": subprocess.check_output(["node", "--version"], text=True).strip(),
        "ghidra_install_dir": os.environ["GHIDRA_INSTALL_DIR"],
        "java_home": os.environ.get("JAVA_HOME"), "modelo_invocado": False,
        "selectores": SELECTORES, "base_ghidra": "0x100000",
        "archivos": {str(p.relative_to(out)): digest(p)
                     for p in sorted(out.rglob("*")) if p.is_file() and p != objeto}})
    print("Sesión MCP y tres ejecuciones verificadas. No se invocó ningún modelo.")


if __name__ == "__main__":
    main()
