"""Sesiones M3/M4: requiere ptrace permitido; no cambia políticas del sistema.

Ejecutar desde cualquier directorio después de construir ambas colecciones.
Guarda logs en Temas/ingenieriaInversa/ejemplos/salida/. No instala
herramientas ni usa la red.
"""
import os
import subprocess
from pathlib import Path

ROOT = Path(__file__).resolve().parents[3]
OUT = Path(__file__).resolve().parent / "salida"
SAMPLES = ROOT / "muestras/build/salida"


def session(name, binary, args, commands, expected):
    command = ["gdb", "-q", "-nx", "-batch"]
    setup = ["set pagination off", "set debuginfod enabled off",
             "set disable-randomization off", "set disassembly-flavor intel"]
    for item in setup + commands:
        command.extend(["-ex", item])
    command.extend(["--args", str(binary), *map(str, args)])
    result = subprocess.run(command, capture_output=True, text=True,
                            cwd=ROOT, env={**os.environ, "LC_ALL": "C"}, timeout=30)
    log = result.stdout + result.stderr
    (OUT / (name + ".log")).write_text(log)
    assert result.returncode == 0, (name, log)
    for fragment in expected:
        assert fragment in log, (name, fragment, log)
    print(name, "OK")


def main():
    session("gdb-config", OUT / "config-dbg", [OUT / "valido.cfg"],
            ["break *decode", "run", 'printf "N=%lu\\n", $rsi',
             "x/11bx $rdi", "finish", 'printf "RET=%d\\n", $eax',
             "p cfg", "continue"],
            ["N=11", "RET=0", "total = 198", "total=198"])
    session("gdb-watch", OUT / "config-dbg", [OUT / "valido.cfg"],
            ["break decode", "run", "set $salida_cfg = out",
             "watch -l $salida_cfg->total", "continue", "bt", "continue"],
            ["Old value = 0", "New value = 198", "total=198"])
    for change in (False, True):
        commands = ["break validar_contrasena", "run", "finish",
                    'printf "RET=%d\\n", $eax']
        if change:
            commands.append("set $eax = 1")
        commands.append("continue")
        session("gdb-clave-" + str(change), SAMPLES / "ejemplos-x86-dbg",
                ["AAAAAAAAAAAAA"], commands,
                ["RET=0", "Contraseña correcta." if change else "Contraseña incorrecta."])
    for change in (False, True):
        commands = ["set breakpoint pending on", "break ptrace", "run", "finish",
                    'printf "PTRACE=%ld\\n", (long)$rax', "x/6i $pc"]
        if change:
            commands.append("set $rax = 0")
        commands.append("continue")
        session("gdb-ptrace-" + str(change), SAMPLES / "antidebug-dbg", [], commands,
                ["PTRACE=-1", "FLAG{ptrace_bypass_ok}" if change else "ejecucion abortada."])
    session("gdb-syscall", SAMPLES / "antidebug-dbg", [],
            ["catch syscall ptrace", "run", "info registers orig_rax rax rdi",
             "continue", 'printf "RAW=%ld\\n", (long)$rax', "continue"],
            ["call to syscall ptrace", "returned from syscall ptrace", "RAW=-1"])
    result = subprocess.run([str(SAMPLES / "antidebug-dbg")], capture_output=True,
                            text=True, timeout=10)
    (OUT / "antidebug-control.log").write_text(
        f"exit={result.returncode}\n" + result.stdout + result.stderr)
    # Un control sin GDB puede fallar por política: se registra, no se inventa éxito.
    print("Control sin GDB:", result.returncode, result.stdout.strip())
    print("7 sesiones GDB verificadas; control sin GDB registrado")


if __name__ == "__main__":
    main()
