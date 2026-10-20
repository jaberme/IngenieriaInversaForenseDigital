"""Crea DEMO-F: ficheros sintéticos. Nunca adquiere un dispositivo real."""
import argparse
import csv
import json
from pathlib import Path
import sqlite3
import struct
import subprocess
from integridad import inventario

DOCUMENTO = b"Documento sintetico DEMO-F. No contiene datos personales.\n"


def crear(destino, disco=False):
    destino = Path(destino)
    destino.mkdir(parents=True, exist_ok=False)
    datos = destino / "datos"
    datos.mkdir()
    (datos / "informe.txt").write_bytes(DOCUMENTO)
    (datos / "servicio.log").write_text(
        "2026-09-27T12:00:05.000+02:00 request_id=demo-7 ruta=/docs/informe.txt estado=200\n",
        encoding="utf-8")
    db = sqlite3.connect(datos / "actividad.sqlite")
    db.execute("CREATE TABLE eventos(id INTEGER PRIMARY KEY, tiempo TEXT, "
               "operacion TEXT, ruta TEXT, resultado TEXT)")
    db.executemany("INSERT INTO eventos VALUES(?,?,?,?,?)", [
        (1, "2026-09-27T10:00:01Z", "preparar", "/docs/informe.txt", "ok"),
        (2, "2026-09-27T10:00:03Z", "solicitud", "/docs/informe.txt", "registrada"),
        (3, "2026-09-27T10:00:04Z", "lectura", "/docs/ausente.txt", "error")])
    db.commit()
    db.close()
    rows = [
        {"id": "DEMO-LOG-1", "fuente": "servicio.log:1",
         "tiempo_original": "2026-09-27T12:00:05.000+02:00",
         "adelanto_ms": 2000, "incertidumbre_ms": 1000},
        {"id": "DEMO-RED-1", "fuente": "evento conceptual, no PCAP",
         "tiempo_original": "2026-09-27T10:00:03.500Z",
         "adelanto_ms": 0, "incertidumbre_ms": 100}]
    with (datos / "tiempos.csv").open("w", newline="", encoding="utf-8") as f:
        w = csv.DictWriter(f, fieldnames=rows[0].keys())
        w.writeheader()
        w.writerows(rows)
    if disco:
        # mkfs escribe solo un fichero nuevo dentro de la salida docente.
        volumen = destino / "volumen.ext4"
        with volumen.open("xb") as f:
            f.truncate(16 * 1024 * 1024)
        cmd = ["mkfs.ext4", "-F", "-q", "-b", "1024", "-L", "DEMO-F",
               "-O", "^metadata_csum,^64bit", "-d", str(datos), str(volumen)]
        result = subprocess.run(cmd, capture_output=True, text=True, check=True)
        (destino / "construccion.log").write_text(
            json.dumps(cmd) + "\n" + result.stdout + result.stderr)
        # Un MBR docente: partición Linux desde LBA 2048, sectores de 512 bytes.
        mbr = bytearray(512)
        mbr[446:462] = struct.pack("<B3sB3sII", 0, b"\xfe\xff\xff", 0x83,
                                   b"\xfe\xff\xff", 2048, volumen.stat().st_size // 512)
        mbr[510:512] = b"\x55\xaa"
        with (destino / "disco.dd").open("xb") as f:
            f.write(mbr)
            f.write(bytes(2048 * 512 - len(mbr)))
            with volumen.open("rb") as v:
                for bloque in iter(lambda: v.read(1024 * 1024), b""):
                    f.write(bloque)
    (destino / "manifiesto.json").write_text(json.dumps({
        "naturaleza": "DEMO-F, generado; no es EV-01 ni captura historica",
        "archivos": inventario(destino)}, indent=2, ensure_ascii=False) + "\n")
    return destino


if __name__ == "__main__":
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("destino", type=Path)
    p.add_argument("--disco", action="store_true", help="requiere mkfs.ext4; sin montaje")
    a = p.parse_args()
    crear(a.destino, a.disco)
    print(a.destino)
