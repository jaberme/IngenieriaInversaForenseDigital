/* Ejemplo de configuracion CFG1 para los laboratorios del libro.
 * Procedencia: temas/ejemplos/config.c; sin acciones de red ni escritura. */
#include <stdint.h>
#include <stddef.h>
#include <stdio.h>
#include <string.h>

struct config {
    uint8_t mode;
    uint16_t limit;
    uint32_t total;
};

/* Retornos: 0 valido; 1 corto; 2 firma; 3 campos; 4 carga excesiva.
 * buf apunta a n bytes legibles; out a una estructura escribible disjunta.
 * En error, *out queda intacto. */
int decode(const uint8_t *buf, size_t n, struct config *out)
{
    if (n < 8)
        return 1;
    if (memcmp(buf, "CFG1", 4) != 0)
        return 2;
    uint8_t mode = buf[4];
    uint16_t limit = (uint16_t)((uint16_t)buf[6] |
                              ((uint16_t)buf[7] << 8));
    if (mode > 1 || buf[5] != 0 || limit > 1024)
        return 3;
    if (n - 8 > limit)
        return 4;
    uint32_t total = 0;
    for (size_t i = 8; i < n; ++i)
        total += buf[i];
    out->mode = mode;
    out->limit = limit;
    out->total = mode ? total : 0;
    return 0;
}

int main(int argc, char **argv)
{
    if (argc != 2) {
        fprintf(stderr, "uso: %s fichero.cfg\n", argv[0]);
        return 2;
    }
    FILE *f = fopen(argv[1], "rb");
    if (f == NULL) {
        perror("fopen");
        return 3;
    }
    /* Un byte extra permite detectar ficheros mayores que el maximo. */
    uint8_t buf[1033];
    size_t n = fread(buf, 1, sizeof buf, f);
    int failed = ferror(f);
    int closed = fclose(f);
    if (failed || closed != 0) {
        fputs("error de lectura/cierre\n", stderr);
        return 4;
    }
    struct config cfg = {0};
    int result = decode(buf, n, &cfg);
    if (result != 0) {
        printf("rechazo=%d\n", result);
        return 10 + result;
    }
    printf("modo=%u limite=%u longitud=%zu total=%u\n",
           (unsigned)cfg.mode, (unsigned)cfg.limit, n - 8,
           (unsigned)cfg.total);
    return 0;
}
