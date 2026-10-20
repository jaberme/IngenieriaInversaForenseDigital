#!/usr/bin/env bash
# Utilidades base. La validación de muestras/símbolos se realiza antes del curso.
set -euo pipefail
COURSE_FORENSIC_VENV="${COURSE_FORENSIC_VENV:-$HOME/.local/share/curso-forense/venv}"

check_core() {
    local missing=0 command_name
    for command_name in mmls fsstat fls icat ewfacquire ewfexport ewfinfo ewfverify dc3dd sqlite3 tshark capinfos sha256sum; do
        if ! command -v "$command_name" >/dev/null 2>&1; then
            printf 'Falta: %s\n' "$command_name" >&2
            missing=1
        fi
    done
    if [[ ! -x "$COURSE_FORENSIC_VENV/bin/vol" ]]; then
        printf '%s\n' 'Falta Volatility 3 en el entorno docente; seleccionar COURSE_VOLATILITY_VERSION y validar muestras/símbolos.' >&2
        missing=1
    fi
    return "$missing"
}

if [[ "${1:-}" == "--check" && "$#" -eq 1 ]]; then
    check_core
    exit
fi
if [[ "$#" -ne 0 ]]; then
    printf '%s\n' 'Uso: bash provision.sh [--check]' >&2
    exit 2
fi
if [[ "$EUID" -eq 0 ]]; then
    printf '%s\n' 'Ejecutar como usuario normal; se usa sudo solo para apt.' >&2
    exit 1
fi
command -v apt-get >/dev/null
sudo apt-get update
sudo apt-get install -y sleuthkit ewf-tools dc3dd sqlite3 wireshark tshark python3-venv file xxd
if [[ -n "${COURSE_VOLATILITY_VERSION:-}" ]]; then
    if [[ ! "$COURSE_VOLATILITY_VERSION" =~ ^[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
        printf '%s\n' 'COURSE_VOLATILITY_VERSION debe ser una versión numérica exacta X.Y.Z.' >&2
        exit 2
    fi
    python3 -m venv "$COURSE_FORENSIC_VENV"
    "$COURSE_FORENSIC_VENV/bin/python" -m pip install "volatility3==$COURSE_VOLATILITY_VERSION"
fi
printf 'Volatility, una vez instalado: %s/bin/vol\n' "$COURSE_FORENSIC_VENV"
check_core
