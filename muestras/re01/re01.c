/* RE-01 1.0 — muestra propia de la asignatura, datos exclusivamente sintéticos.
 * Uso y redistribución dentro del contexto docente del curso.
 * Cinco funciones relevantes: configuración, registro, transformación, salida y main.
 * Formatos deliberadamente pequeños y estrictos; ver docente.md.
 */
#define _POSIX_C_SOURCE 200809L
#include <errno.h>
#include <inttypes.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <unistd.h>

typedef struct {
    uint32_t mode;                 /* 0 = upper, 1 = lower */
    uint32_t shift;                /* 0..25 */
    uint32_t limit;                /* 1..128 bytes de texto */
    char tag[17];                  /* 1..16 caracteres [A-Za-z0-9_-] */
} Config;

typedef struct {
    uint32_t id;                   /* 1..999999 */
    uint32_t length;               /* 1..128 */
    char text[129];                /* ASCII imprimible, más NUL */
} Record;

int load_config(const char *path, Config *cfg)
{
    char buffer[257], mode[6], shift[3], limit[4], tag[17];
    int end = -1;
    struct stat st;
    FILE *fp = fopen(path, "rb");
    if (!fp) return 3;
    int regular = fstat(fileno(fp), &st) == 0 && S_ISREG(st.st_mode);
    size_t n = regular ? fread(buffer, 1, 256, fp) : 0;
    int bad = ferror(fp);
    if (fclose(fp) != 0) bad = 1;
    if (!regular || bad) return 3;
    if (!n || n == 256 || memchr(buffer, 0, n)) return 4;
    buffer[n] = 0;
    /* %1[\n] valida un LF literal. El espacio del formato scanf no lo haría. */
    char e1[2], e2[2], e3[2], e4[2];
    int count = sscanf(buffer,
        "mode=%5[a-z]%1[\n]shift=%2[0-9]%1[\n]limit=%3[0-9]%1[\n]tag=%16[A-Za-z0-9_-]%1[\n]%n",
        mode, e1, shift, e2, limit, e3, tag, e4, &end);
    if (count != 8 || end != (int)n) return 4;
    if (strcmp(mode, "upper") == 0) cfg->mode = 0;
    else if (strcmp(mode, "lower") == 0) cfg->mode = 1;
    else return 4;
    cfg->shift = (uint32_t)strtoul(shift, NULL, 10);
    cfg->limit = (uint32_t)strtoul(limit, NULL, 10);
    if (cfg->shift > 25 || cfg->limit < 1 || cfg->limit > 128) return 4;
    memcpy(cfg->tag, tag, strlen(tag) + 1);
    return 0;
}

int load_record(const char *path, Record *record)
{
    char buffer[257], id[7], text[129], e1[2], e2[2];
    int end = -1;
    struct stat st;
    FILE *fp = fopen(path, "rb");
    if (!fp) return 3;
    int regular = fstat(fileno(fp), &st) == 0 && S_ISREG(st.st_mode);
    size_t n = regular ? fread(buffer, 1, 256, fp) : 0;
    int bad = ferror(fp);
    if (fclose(fp) != 0) bad = 1;
    if (!regular || bad) return 3;
    if (!n || n == 256 || memchr(buffer, 0, n)) return 5;
    buffer[n] = 0;
    int count = sscanf(buffer, "id=%6[0-9]%1[\n]text=%128[^\n]%1[\n]%n",
                       id, e1, text, e2, &end);
    if (count != 4 || end != (int)n) return 5;
    record->id = (uint32_t)strtoul(id, NULL, 10);
    record->length = (uint32_t)strlen(text);
    if (record->id < 1 || record->id > 999999) return 5;
    for (uint32_t i = 0; i < record->length; ++i) {
        unsigned char c = (unsigned char)text[i];
        if (c < 32 || c > 126) return 5;
    }
    memcpy(record->text, text, record->length + 1);
    return 0;
}

uint32_t transform_record(const Config *cfg, const Record *record, char output[129])
{
    uint32_t hash = UINT32_C(2166136261);
    for (uint32_t i = 0; i < record->length; ++i) {
        unsigned char c = (unsigned char)record->text[i];
        if (c >= 'a' && c <= 'z') c = (unsigned char)(c - 'a' + 'A');
        if (c >= 'A' && c <= 'Z') {
            c = (unsigned char)('A' + (c - 'A' + cfg->shift) % 26);
            if (cfg->mode == 1) c = (unsigned char)(c - 'A' + 'a');
        }
        output[i] = (char)c;
        hash = (hash ^ c) * UINT32_C(16777619);
    }
    output[record->length] = 0;
    return hash;
}

int write_result(const char *path, const Config *cfg, const Record *record,
                 const char *output, uint32_t checksum)
{
    /* x: creación exclusiva; no trunca un resultado, entrada o enlace existente. */
    FILE *fp = fopen(path, "wx");
    if (!fp) return errno == EEXIST ? 7 : 8;
    int bad = fprintf(fp, "tag=%s\nid=%" PRIu32 "\ntext=%s\nchecksum=%08" PRIx32 "\n",
                      cfg->tag, record->id, output, checksum) < 0;
    if (fclose(fp) != 0) bad = 1;
    /* Una salida parcial se conserva para documentar el fallo; no se borra. */
    return bad ? 8 : 0;
}

int main(int argc, char **argv)
{
    Config cfg = {0};
    Record record = {0};
    char output[129];
    int status;
    const char *stage = "usage";
    uint32_t checksum = 0;
    if (argc != 4) {
        fprintf(stderr, "Uso: RE-01 CONFIG DOCUMENTO SALIDA_NUEVA\n");
        status = 2;
        goto done;
    }
    stage = "config";
    status = load_config(argv[1], &cfg);
    if (status) goto done;
    stage = "document";
    status = load_record(argv[2], &record);
    if (status) goto done;
    stage = "limit";
    if (record.length > cfg.limit) {
        status = 6;
        goto done;
    }
    stage = "write";
    checksum = transform_record(&cfg, &record, output);
    status = write_result(argv[3], &cfg, &record, output, checksum);
    if (status) goto done;
    stage = "done";
    printf("OK id=%" PRIu32 " bytes=%" PRIu32 " checksum=%08" PRIx32 "\n",
           record.id, record.length, checksum);
done:
    fprintf(stderr, "RE01 status=%d stage=%s\n", status, stage);
    return status;
}
