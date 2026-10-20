"""Modelo docente: bytes de secuencia cubiertos en UNA dirección de un flujo.

No es un reensamblador: requiere secuencias desenvueltas, longitudes capturadas
completas y ausencia de conflictos de contenido. Excluye SYN/FIN y sus incrementos.
"""

def bytes_unicos(intervalos):
    total = 0
    extremo = None
    for inicio, fin in sorted(intervalos):
        if inicio < 0 or fin < inicio:
            raise ValueError("Intervalo invalido")
        if extremo is None or inicio >= extremo:
            total += fin - inicio
        elif fin > extremo:
            total += fin - extremo
        extremo = fin if extremo is None else max(extremo, fin)
    return total


if __name__ == "__main__":
    segmentos = [(1000, 1100), (1000, 1100), (1100, 1160)]
    print("Bytes observados:", sum(b - a for a, b in segmentos))
    print("Posiciones de secuencia cubiertas:", bytes_unicos(segmentos))
