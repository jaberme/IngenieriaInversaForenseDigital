# Makefile — Banco de muestras reproducibles
# Asignatura: Ingeniería Inversa (Parte I), UAL
#
# Compila ejemplos.c para tres arquitecturas (x86-64, ARM64, MIPS little-endian)
# usando compiladores cruzados opcionales para ARM/MIPS:
#   - x86-64:        gcc
#   - ARM64:         aarch64-linux-gnu-gcc
#   - MIPS (mipsel): mipsel-linux-gnu-gcc
#
# Cada arquitectura se compila en 4 variantes para que P1/P2 puedan comparar
# el efecto de la optimización y de los símbolos de depuración sobre el
# mismo código fuente:
#   - dbg : -O0 -g           (sin optimizar, con símbolos  -> más legible)
#   - opt : -O2 -g           (optimizado,    con símbolos  -> útil para ver
#                              cómo el compilador reordena/elimina código)
#   - strip-dbg : -O0 -s     (sin optimizar, sin símbolos  -> "binario real")
#   - strip-opt : -O2 -s     (optimizado,    sin símbolos  -> el caso más
#                              difícil de leer, el más realista en la práctica)
#
# Los binarios ARM64 y MIPS no se ejecutan de forma nativa en una máquina
# x86-64; se ejecutan bajo qemu-user (qemu-aarch64 / qemu-mipsel), instalado
# también por PreparaciónEntorno/entorno/provision.sh. Este Makefile solo
# compila; la ejecución bajo QEMU se hace a mano desde la práctica publicada en
# Practicas/IngenieriaInversa/P1-c-a-asm/.
#
# Además, antidebug.c (M4/P5) genera una muestra propia x86-64 con
# autodetección de depurador vía ptrace(PTRACE_TRACEME, ...) (técnica clásica
# de anti-debugging en Linux, descrita en los capítulos 4 y 5 del libro). Se
# compila en una sola variante con símbolos (-O0 -g), igual que
# ejemplos-x86-dbg en P4, porque P5 necesita fijar breakpoints por nombre de
# función para interceptar la llamada a ptrace.
#
# Finalmente, "make firmware" (M5/P6) construye una imagen de firmware
# DIDÁCTICA propia (véanse el capítulo 6 del libro y muestras/README.md):
# concatena una región de relleno de baja entropía que
# simula un bootloader con un sistema de ficheros SquashFS real que contiene
# un binario ELF x86-64 (compilado de ejemplos.c). Requiere mksquashfs
# (paquete squashfs-tools, instalado por
# PreparaciónEntorno/entorno/provision.sh).
#
# Uso:
#   make x86       # solo binarios x86-64 (ejemplos.c)
#   make arm       # solo binarios ARM64
#   make mips      # solo binarios MIPS (mipsel)
#   make antidebug # binario x86-64 de antidebug.c (M4/P5)
#   make firmware  # imagen de firmware didáctica (M5/P6)
#   make all       # núcleo x86-64 + antidebug (target por defecto)
#   make pe        # PE para análisis estático de P2, requiere MinGW-w64
#   make cross     # ampliación ARM64/MIPS
#   make clean     # elimina todos los binarios generados

CC_X86  := gcc
CC_ARM  := aarch64-linux-gnu-gcc
CC_MIPS := mipsel-linux-gnu-gcc
CC_PE   := x86_64-w64-mingw32-gcc
.DEFAULT_GOAL := all

SRC          := ejemplos.c
SRC_ANTIDEBUG := antidebug.c
OUT := salida

# Variantes de compilación: nombre_sufijo:flags
# (se expanden manualmente por target porque cada arch usa un compilador distinto)
FLAGS_DBG        := -O0 -g
FLAGS_OPT        := -O2 -g
FLAGS_STRIP_DBG  := -O0 -s
FLAGS_STRIP_OPT  := -O2 -s

.PHONY: all x86 pe pe01 upx01 cross arm mips antidebug firmware re01 clean

# Edición independiente: conserva los artefactos y manifiestos de cada compilación.
re01:
	python3 ../re01/construir.py

pe01:
	python3 ../pe01/construir.py --cc $(CC_PE)

upx01:
	python3 ../upx01/construir.py

all: x86 antidebug

cross: arm mips

pe: $(OUT)/ejemplos-pe.exe

$(OUT)/ejemplos-pe.exe: $(SRC) | $(OUT)
	$(CC_PE) $(FLAGS_STRIP_OPT) -o $@ $<

# --------------------------------------------------------------------------
# x86-64
# --------------------------------------------------------------------------
x86: \
	$(OUT)/ejemplos-x86-dbg \
	$(OUT)/ejemplos-x86-opt \
	$(OUT)/ejemplos-x86-strip-dbg \
	$(OUT)/ejemplos-x86-strip-opt

$(OUT)/ejemplos-x86-dbg: $(SRC) | $(OUT)
	$(CC_X86) $(FLAGS_DBG) -o $@ $<

$(OUT)/ejemplos-x86-opt: $(SRC) | $(OUT)
	$(CC_X86) $(FLAGS_OPT) -o $@ $<

$(OUT)/ejemplos-x86-strip-dbg: $(SRC) | $(OUT)
	$(CC_X86) $(FLAGS_STRIP_DBG) -o $@ $<

$(OUT)/ejemplos-x86-strip-opt: $(SRC) | $(OUT)
	$(CC_X86) $(FLAGS_STRIP_OPT) -o $@ $<

# --------------------------------------------------------------------------
# ARM64 (aarch64)
# --------------------------------------------------------------------------
arm: \
	$(OUT)/ejemplos-arm-dbg \
	$(OUT)/ejemplos-arm-opt \
	$(OUT)/ejemplos-arm-strip-dbg \
	$(OUT)/ejemplos-arm-strip-opt

$(OUT)/ejemplos-arm-dbg: $(SRC) | $(OUT)
	$(CC_ARM) $(FLAGS_DBG) -o $@ $<

$(OUT)/ejemplos-arm-opt: $(SRC) | $(OUT)
	$(CC_ARM) $(FLAGS_OPT) -o $@ $<

$(OUT)/ejemplos-arm-strip-dbg: $(SRC) | $(OUT)
	$(CC_ARM) $(FLAGS_STRIP_DBG) -o $@ $<

$(OUT)/ejemplos-arm-strip-opt: $(SRC) | $(OUT)
	$(CC_ARM) $(FLAGS_STRIP_OPT) -o $@ $<

# --------------------------------------------------------------------------
# MIPS little-endian (mipsel)
# --------------------------------------------------------------------------
mips: \
	$(OUT)/ejemplos-mips-dbg \
	$(OUT)/ejemplos-mips-opt \
	$(OUT)/ejemplos-mips-strip-dbg \
	$(OUT)/ejemplos-mips-strip-opt

$(OUT)/ejemplos-mips-dbg: $(SRC) | $(OUT)
	$(CC_MIPS) $(FLAGS_DBG) -o $@ $<

$(OUT)/ejemplos-mips-opt: $(SRC) | $(OUT)
	$(CC_MIPS) $(FLAGS_OPT) -o $@ $<

$(OUT)/ejemplos-mips-strip-dbg: $(SRC) | $(OUT)
	$(CC_MIPS) $(FLAGS_STRIP_DBG) -o $@ $<

$(OUT)/ejemplos-mips-strip-opt: $(SRC) | $(OUT)
	$(CC_MIPS) $(FLAGS_STRIP_OPT) -o $@ $<

# --------------------------------------------------------------------------
# antidebug (x86-64, M4/P5: ptrace(PTRACE_TRACEME) anti-debugging)
# --------------------------------------------------------------------------
antidebug: $(OUT)/antidebug-dbg

$(OUT)/antidebug-dbg: $(SRC_ANTIDEBUG) | $(OUT)
	$(CC_X86) $(FLAGS_DBG) -o $@ $<

# --------------------------------------------------------------------------
# firmware (M5/P6): imagen de firmware didáctica propia y reproducible
# --------------------------------------------------------------------------
firmware: $(OUT)/firmware-didactico.bin

$(OUT)/firmware-didactico.bin: $(SRC) | $(OUT)
	@echo "=== Compilando binario embebido (gestor_acceso, a partir de $(SRC)) ==="
	@mkdir -p $(OUT)/.fw-rootfs/bin $(OUT)/.fw-rootfs/etc
	$(CC_X86) -O2 -s -o $(OUT)/.fw-rootfs/bin/gestor_acceso $(SRC)
	@echo "Bienvenido al firmware didáctico P6 — Ingeniería Inversa UAL" \
		> $(OUT)/.fw-rootfs/etc/banner.txt
	@echo "=== Empaquetando rootfs en SquashFS ==="
	mksquashfs $(OUT)/.fw-rootfs $(OUT)/.fw-squashfs.img -comp xz -all-root -noappend
	@echo "=== Generando región de bootloader (relleno de baja entropía, 64 KiB) ==="
	@python3 -c "\
import sys; \
header = b'DIDACTIC-BOOT-UAL-RE\x00' + b'\x00' * 100; \
boot = header + b'\x00' * (0x10000 - len(header)); \
sys.stdout.buffer.write(boot)" > $(OUT)/.fw-bootloader.bin
	@echo "=== Concatenando bootloader + squashfs en $@ ==="
	cat $(OUT)/.fw-bootloader.bin $(OUT)/.fw-squashfs.img > $@
	@rm -rf $(OUT)/.fw-rootfs $(OUT)/.fw-squashfs.img $(OUT)/.fw-bootloader.bin
	@echo "Imagen generada: $@"

# --------------------------------------------------------------------------
$(OUT):
	mkdir -p $(OUT)

clean:
	rm -rf $(OUT)
