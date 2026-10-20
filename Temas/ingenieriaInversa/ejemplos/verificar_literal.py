"""Regresión sobre el literal real del banco y sus límites de longitud.

Se verifica el fuente, los bytes del binario y las entradas con 12/13/14 caracteres.
No se cambia la muestra original para hacer coincidir la documentación.
"""
from pathlib import Path
import re
import subprocess

ROOT = Path(__file__).resolve().parents[2]
source = (ROOT / "muestras/build/ejemplos.c").read_text()
literals = re.findall(r'"(R3v[^"\n]*)"', source)
assert literals == ["R3v3rs1ng_UAL"], literals
key = literals[0]
assert len(key) == len(key.encode("ascii")) == 13
stored = key.encode("ascii") + b"\0"
assert len(stored) == 14
for name in ("ejemplos-x86-dbg", "ejemplos-x86-strip-opt"):
    binary = ROOT / "muestras/build/salida" / name
    assert stored in binary.read_bytes(), name
    for value, accepted in ((key, True), (key[:-1], False), (key + "X", False),
                            ("A" * 13, False)):
        result = subprocess.run([str(binary), value], capture_output=True, text=True,
                                check=False, timeout=10)
        expected = "Contraseña correcta." if accepted else "Contraseña incorrecta."
        assert result.returncode == (0 if accepted else 1), (name, value, result.returncode)
        assert expected in result.stdout, (name, value, result.stdout)
print("Literal: 13 caracteres / 14 bytes con NUL; 8 ejecuciones de control correctas")
