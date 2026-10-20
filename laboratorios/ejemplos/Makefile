CC := gcc
CFLAGS := -std=c11 -Wall -Wextra -Wconversion -Werror -fPIE
OUT := salida

.PHONY: all
all: $(OUT)/config-dbg $(OUT)/config-opt $(OUT)/config-strip $(OUT)/secciones-lazy $(OUT)/secciones-now

$(OUT):
	mkdir -p $@

$(OUT)/config-dbg: config.c | $(OUT)
	$(CC) $(CFLAGS) -O0 -g -fno-omit-frame-pointer -pie $< -o $@

$(OUT)/config-opt: config.c | $(OUT)
	$(CC) $(CFLAGS) -O2 -g -pie $< -o $@

$(OUT)/config-strip: $(OUT)/config-opt
	objcopy --strip-all $< $@

$(OUT)/secciones-lazy: secciones.c | $(OUT)
	$(CC) $(CFLAGS) -O0 -g -fplt -pie -Wl,-z,relro,-z,lazy $< -o $@

$(OUT)/secciones-now: secciones.c | $(OUT)
	$(CC) $(CFLAGS) -O0 -g -fplt -pie -Wl,-z,relro,-z,now $< -o $@
