"""Genera entradas CFG1 para los capitulos 3 y 4, sin ejecutar el parser."""
from pathlib import Path


def paquete(modo=1, reservado=0, limite=3, datos=b"ABC"):
    return b"CFG1" + bytes([modo, reservado]) + limite.to_bytes(2, "little") + datos


def main():
    salida = Path(__file__).resolve().parent / "salida"
    salida.mkdir(exist_ok=True)
    casos = {
        "valido.cfg": paquete(),
        "modo0.cfg": paquete(modo=0),
        "corto.cfg": b"CFG1\x01\x00\x03",
        "exceso.cfg": paquete(limite=2),
        "sin_carga.cfg": paquete(limite=0, datos=b""),
        "maximo.cfg": paquete(limite=1024, datos=b"\xff" * 1024),
        "firma.cfg": b"BAD!" + paquete()[4:],
        "modo2.cfg": paquete(modo=2),
        "reservado.cfg": paquete(reservado=1),
        "limite1025.cfg": paquete(limite=1025),
    }
    for nombre, contenido in casos.items():
        (salida / nombre).write_bytes(contenido)
    print(f"{len(casos)} entradas CFG1 generadas en {salida}")


if __name__ == "__main__":
    main()
