#!/usr/bin/env bash
# Núcleo docente para una VM Ubuntu 24.04 x86-64. Binary Ninja se instala aparte.
set -euo pipefail

check_core() {
    local missing=0 command_name
    for command_name in gcc make readelf objdump gdb strace file xxd python3 mksquashfs unsquashfs binwalk upx; do
        if ! command -v "$command_name" >/dev/null 2>&1; then
            printf 'Falta: %s\n' "$command_name" >&2
            missing=1
        fi
    done
    printf '%s\n' 'Validar Binary Ninja y las prácticas mediante checklist-verificacion.md.'
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
if [[ "$(uname -m)" != "x86_64" ]]; then
    printf '%s\n' 'Se requiere la VM x86-64 del aula; consulte README.md.' >&2
    exit 1
fi
command -v apt-get >/dev/null
COURSE_PRIV=()
if [[ "$EUID" -ne 0 ]]; then COURSE_PRIV=(sudo); fi
"${COURSE_PRIV[@]}" apt-get update
"${COURSE_PRIV[@]}" apt-get install -y build-essential binutils gdb strace file xxd python3 squashfs-tools binwalk gcc-mingw-w64-x86-64
if ! command -v upx >/dev/null 2>&1; then
    if apt-cache show upx-ucl >/dev/null 2>&1; then
        "${COURSE_PRIV[@]}" apt-get install -y upx-ucl
    elif apt-cache show upx >/dev/null 2>&1; then
        "${COURSE_PRIV[@]}" apt-get install -y upx
    else
        printf '%s\n' 'UPX no disponible por apt; el docente debe instalar una versión oficial validada para P5.' >&2
        exit 1
    fi
fi
check_core
