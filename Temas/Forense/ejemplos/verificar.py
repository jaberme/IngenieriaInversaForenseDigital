"""Comprobaciones con controles conocidos y TSK, sin dispositivos ni privilegios."""
import hashlib
import json
from pathlib import Path
import shutil
import sqlite3
import subprocess
import tempfile
from datetime import datetime
from generar import crear, DOCUMENTO
from integridad import huella
from cronologia import normalizar, procesar
from intervalos_tcp import bytes_unicos

OUT = Path(__file__).resolve().parent / "salida"


def run(args):
    return subprocess.run(args, capture_output=True, check=True)


def main():
    OUT.mkdir(exist_ok=True)
    work = Path(tempfile.mkdtemp(prefix="verificacion-", dir=OUT))
    demo = crear(work / "demo", disco=True)
    registro = []
    doc = demo / "datos/informe.txt"
    assert huella(doc) == hashlib.sha256(DOCUMENTO).hexdigest()
    copia = work / "copia.txt"
    shutil.copyfile(doc, copia)
    assert huella(copia) == huella(doc)
    copia.write_bytes(DOCUMENTO + b"CAMBIO")
    assert huella(copia) != huella(doc)
    empty = work / "vacio"
    empty.touch()
    assert huella(empty) == "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
    registro.append("Integridad: original, copia, alteracion y vector SHA-256 vacio OK")
    rows = procesar(demo / "datos/tiempos.csv")
    assert rows[0]["utc_estimado"] == "2026-09-27T10:00:03.000Z"
    assert rows[0]["utc_min"] == "2026-09-27T10:00:02.000Z"
    assert rows[0]["utc_max"] == "2026-09-27T10:00:04.000Z"
    assert rows[0]["utc_min"] < rows[1]["utc_min"] < rows[1]["utc_max"] < rows[0]["utc_max"]
    for bad in ({**rows[0], "tiempo_original": "2026-09-27T12:00:05"},
                {**rows[0], "incertidumbre_ms": -1},
                {**rows[0], "tiempo_original": "2026-09-27T12:00:05.000001Z"},
                {**rows[0], "tiempo_original": "2026-09-27T12:00:05+02:00:00.001"}):
        try:
            normalizar(bad)
        except ValueError:
            pass
        else:
            raise AssertionError("Se acepto entrada temporal invalida")
    instants = [normalizar({**rows[0], "tiempo_original": stamp, "adelanto_ms": 0})
                for stamp in ("2025-10-26T02:30:00+02:00", "2025-10-26T02:30:00+01:00")]
    delta = datetime.fromisoformat(instants[1]["utc_estimado"]) - datetime.fromisoformat(instants[0]["utc_estimado"])
    assert delta.total_seconds() == 3600
    registro.append("Tiempo: offsets, correccion, intervalos, rechazo sin zona y hora repetida OK")
    assert bytes_unicos([(1000, 1100), (1000, 1100), (1100, 1160)]) == 160
    assert bytes_unicos([(20, 30), (0, 10), (5, 8)]) == 20
    assert bytes_unicos([]) == 0
    registro.append("TCP conceptual: retransmision, hueco y flujo vacio OK")
    dbfile = demo / "datos/actividad.sqlite"
    with sqlite3.connect(dbfile.as_uri() + "?mode=ro", uri=True) as db:
        query = (Path(__file__).parent / "consulta.sql").read_text()
        assert [r[0] for r in db.execute(query)] == [1, 2]
    # Snapshot de prueba con escritor detenido; demuestra por que importa el WAL.
    writer = sqlite3.connect(work / "origen.sqlite")
    writer.execute("PRAGMA journal_mode=WAL")
    writer.execute("PRAGMA wal_autocheckpoint=0")
    writer.execute("CREATE TABLE eventos(id INTEGER)")
    writer.commit()
    writer.execute("PRAGMA wal_checkpoint(TRUNCATE)")
    writer.execute("INSERT INTO eventos VALUES (7)")
    writer.commit()
    complete = work / "snapshot"
    complete.mkdir()
    for source in work.glob("origen.sqlite*"):
        shutil.copyfile(source, complete / source.name)
    shutil.copyfile(work / "origen.sqlite", work / "solo-main.sqlite")
    with sqlite3.connect((complete / "origen.sqlite").as_uri() + "?mode=ro", uri=True) as db:
        assert db.execute("SELECT id FROM eventos").fetchall() == [(7,)]
    with sqlite3.connect((work / "solo-main.sqlite").as_uri() + "?mode=ro", uri=True) as db:
        assert db.execute("SELECT id FROM eventos").fetchall() == []
    writer.close()
    registro.append("SQLite: consulta y snapshot WAL=1 fila frente a main aislado=0 filas OK")
    image = demo / "disco.dd"
    before = huella(image)
    for command in (["mmls", "-b", "512", str(image)],
                    ["fsstat", "-b", "512", "-o", "2048", str(image)],
                    ["fls", "-r", "-b", "512", "-o", "2048", str(image)]):
        result = run(command)
        (work / (command[0] + ".log")).write_bytes(result.stdout + result.stderr)
    listing = (work / "fls.log").read_text()
    line = next(x for x in listing.splitlines() if x.endswith("\tinforme.txt"))
    inode = line.split(":", 1)[0].split()[-1]
    result = run(["icat", "-b", "512", "-o", "2048", str(image), inode])
    assert result.stdout == DOCUMENTO
    (work / "informe-extraido.txt").write_bytes(result.stdout)
    assert huella(image) == before
    assert "0000002048" in (work / "mmls.log").read_text()
    error = subprocess.run(["fsstat", "-b", "512", "-o", "2049", str(image)],
                           capture_output=True)
    assert error.returncode != 0
    (work / "offset-incorrecto.log").write_bytes(error.stdout + error.stderr)
    assert huella(image) == before
    registro.append("TSK: MBR, ext4, offset LBA2048 y extraccion byte a byte sin alterar imagen OK")
    manifest = json.loads((demo / "manifiesto.json").read_text())
    for row in manifest["archivos"]:
        assert huella(demo / row["ruta"]) == row["sha256"]
    registro.append("Manifiesto: todos los ficheros generados conservan su SHA-256")
    (work / "resultado.txt").write_text("\n".join(registro) + "\n")
    print("\n".join(registro))
    print("Logs y muestra:", work)


if __name__ == "__main__":
    main()
