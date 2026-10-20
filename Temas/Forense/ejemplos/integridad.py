"""SHA-256 de ficheros estables. No autentica su procedencia ni crea custodia."""
import argparse
import hashlib
import json
from pathlib import Path


def huella(path):
    path = Path(path)
    if path.is_symlink() or not path.is_file():
        raise ValueError(f"Se requiere un fichero regular, no un enlace: {path}")
    h = hashlib.sha256()
    with path.open("rb") as entrada:
        for bloque in iter(lambda: entrada.read(1024 * 1024), b""):
            h.update(bloque)
    return h.hexdigest()


def inventario(root):
    root = Path(root)
    rows = []
    for path in sorted(root.rglob("*")):
        if path.is_symlink():
            raise ValueError(f"Enlace: requiere tratamiento especifico: {path}")
        if path.is_file():
            rows.append({"ruta": path.relative_to(root).as_posix(),
                         "bytes": path.stat().st_size, "sha256": huella(path)})
    return rows


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("directorio", type=Path)
    args = parser.parse_args()
    if not args.directorio.is_dir() or args.directorio.is_symlink():
        parser.error("Se requiere un directorio ordinario")
    print(json.dumps(inventario(args.directorio), indent=2, ensure_ascii=False))
