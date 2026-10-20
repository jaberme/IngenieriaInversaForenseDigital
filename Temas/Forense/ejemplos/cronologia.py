"""Normaliza eventos ISO 8601 con offset explícito; conserva el valor original."""
import argparse
import csv
import re
from datetime import datetime, timedelta, timezone
from pathlib import Path


def normalizar(row):
    original = row["tiempo_original"]
    patron = (r"\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}"
              r"(?:\.\d{1,3})?(?:Z|[+-]\d{2}:\d{2})")
    if not re.fullmatch(patron, original):
        raise ValueError("Se requiere ISO 8601 con offset; precisión máxima: ms")
    stamp = datetime.fromisoformat(original.replace("Z", "+00:00"))
    if stamp.utcoffset() is None:
        raise ValueError("Falta offset: no se debe inventar una zona horaria")
    if stamp.microsecond % 1000:
        raise ValueError("Este modelo admite resolución de milisegundos, no menor")
    ahead = int(row["adelanto_ms"])
    uncertainty = int(row["incertidumbre_ms"])
    if uncertainty < 0:
        raise ValueError("La incertidumbre no puede ser negativa")
    utc = stamp.astimezone(timezone.utc) - timedelta(milliseconds=ahead)
    bound = timedelta(milliseconds=uncertainty)
    def iso(value):
        return value.isoformat(timespec="milliseconds").replace("+00:00", "Z")
    return {**row, "utc_estimado": iso(utc), "utc_min": iso(utc - bound),
            "utc_max": iso(utc + bound)}


def procesar(path):
    with Path(path).open(newline="", encoding="utf-8") as entrada:
        rows = [normalizar(row) for row in csv.DictReader(entrada)]
    # Se usa datetime: orden lexicográfico de offsets originales no ordena instantes.
    return sorted(rows, key=lambda row: datetime.fromisoformat(
        row["utc_estimado"].replace("Z", "+00:00")))


if __name__ == "__main__":
    import sys
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("csv", type=Path)
    args = parser.parse_args()
    rows = procesar(args.csv)
    if rows:
        writer = csv.DictWriter(sys.stdout, fieldnames=list(rows[0]))
        writer.writeheader()
        writer.writerows(rows)
