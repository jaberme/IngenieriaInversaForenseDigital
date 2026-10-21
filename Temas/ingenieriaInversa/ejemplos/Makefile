CC := gcc
CFLAGS := -std=c11 -Wall -Wextra -Wconversion -Werror -fPIE
OUT := salida

all: $(OUT)/config-dbg $(OUT)/config-opt $(OUT)/config-strip $(OUT)/ofuscacion-dbg $(OUT)/ofuscacion-opt

$(OUT):
	mkdir -p $@

$(OUT)/config-dbg: config.c | $(OUT)
	$(CC) $(CFLAGS) -O0 -g -fno-omit-frame-pointer -pie $< -o $@

$(OUT)/config-opt: config.c | $(OUT)
	$(CC) $(CFLAGS) -O2 -g -pie $< -o $@

$(OUT)/config-strip: $(OUT)/config-opt
	objcopy --strip-all $< $@

$(OUT)/ofuscacion-dbg: ofuscacion.c | $(OUT)
	$(CC) $(CFLAGS) -O0 -g -pie $< -o $@

$(OUT)/ofuscacion-opt: ofuscacion.c | $(OUT)
	$(CC) $(CFLAGS) -O2 -g -pie $< -o $@

check: all
	python3 verificar.py
	./$(OUT)/ofuscacion-dbg
	./$(OUT)/ofuscacion-opt
	$(MAKE) -C ../../../muestras/build x86
	python3 verificar_literal.py

.PHONY: all check
