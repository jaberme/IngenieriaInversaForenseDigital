"""Genera entradas y verifica el contrato CFG1 en los dos builds docentes."""
import subprocess
from pathlib import Path
from entropia import entropy

ROOT = Path(__file__).resolve().parent
OUT = ROOT / "salida"


def packet(mode=1, flags=0, limit=3, data=b"ABC"):
    return b"CFG1" + bytes([mode, flags]) + limit.to_bytes(2, "little") + data


CASES = [
    ("valido", packet(), 0, "modo=1 limite=3 longitud=3 total=198"),
    ("modo0", packet(mode=0), 0, "modo=0 limite=3 longitud=3 total=0"),
    ("menor_limite", packet(data=b"AB"), 0,
     "modo=1 limite=3 longitud=2 total=131"),
    ("byte_alto", packet(limit=256), 0,
     "modo=1 limite=256 longitud=3 total=198"),
    ("binario", packet(data=b"\x00\x80\xff"), 0,
     "modo=1 limite=3 longitud=3 total=383"),
    ("vacio", b"", 11, "rechazo=1"),
    ("corto", b"CFG1\x01\x00\x03", 11, "rechazo=1"),
    ("firma", b"BAD!" + packet()[4:], 12, "rechazo=2"),
    ("modo2", packet(mode=2), 13, "rechazo=3"),
    ("flags", packet(flags=1), 13, "rechazo=3"),
    ("limite1025", packet(limit=1025), 13, "rechazo=3"),
    ("exceso", packet(limit=2), 14, "rechazo=4"),
    ("sin_carga", packet(limit=0, data=b""), 0,
     "modo=1 limite=0 longitud=0 total=0"),
    ("maximo", packet(limit=1024, data=b"\xff" * 1024), 0,
     "modo=1 limite=1024 longitud=1024 total=261120"),
    ("muy_largo", packet(limit=1024, data=b"\xff" * 4096), 14, "rechazo=4"),
]


def main():
    OUT.mkdir(exist_ok=True)
    checks = 0
    for name, data, code, output in CASES:
        path = OUT / f"{name}.cfg"
        path.write_bytes(data)
        for binary in ("config-dbg", "config-opt", "config-strip"):
            result = subprocess.run([str(OUT / binary), str(path)],
                                    capture_output=True, text=True, check=False)
            assert (result.returncode, result.stdout.strip(), result.stderr) == (
                code, output, ""), (binary, name, result)
            checks += 1
    for binary in ("config-dbg", "config-opt", "config-strip"):
        result = subprocess.run([str(OUT / binary)], capture_output=True)
        assert result.returncode == 2 and b"uso:" in result.stderr
        result = subprocess.run([str(OUT / binary), str(OUT / "no-existe.cfg")],
                                capture_output=True)
        assert result.returncode == 3 and b"fopen" in result.stderr
        checks += 2
    assert entropy(b"\x00" * 4096) == 0
    assert entropy(bytes(range(256)) * 16) == 8
    assert entropy(b"AB" * 2048) == 1
    print(f"{checks} ejecuciones CFG1 correctas; 3 distribuciones de entropía correctas")


if __name__ == "__main__":
    main()
