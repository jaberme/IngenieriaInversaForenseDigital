/* Controles docentes de P1. Se enlazan con ejemplos.c en otro objeto, sin LTO. */
#include <limits.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>

int funcion_retorno(void);
int funcion_if(int valor);
int funcion_bucle(int n);
int funcion_suma(int a, int b);
int funcion_llamada_con_argumentos(int x, int y, int z);

struct config {
    uint8_t mode;
    uint16_t limit;
    uint32_t total;
};

static int fallos;

static void comprobar(const char *caso, long long esperado, long long obtenido)
{
    int correcto = esperado == obtenido;
    printf("%s\t%lld\t%lld\t%s\n", caso, esperado, obtenido,
           correcto ? "OK" : "FALLO");
    fallos += !correcto;
}

int main(void)
{
    /* El dominio evita overflow con signo; 65536*65535/2 cabe en int32. */
    const int entradas[] = {-1, 0, 1, 3, 4, 10, 65536};
    const int esperados[] = {0, 0, 0, 3, 6, 45, 2147450880};
    const int signos[] = {INT_MIN, -1, 0, 1, INT_MAX};
    const int condiciones[] = {0, 0, 0, 1, 1};
    const uint32_t valor = UINT32_C(0x0a0b0c0d);
    const unsigned char *bytes = (const unsigned char *)&valor;
    char caso[80];

    _Static_assert(CHAR_BIT == 8 && sizeof(int) == 4 && sizeof(long) == 8
                   && sizeof(void *) == 8, "Se requiere el entorno LP64 de P1");
    puts("caso\tesperado\tobtenido\testado");
    for (size_t i = 0; i < sizeof entradas / sizeof entradas[0]; ++i) {
        snprintf(caso, sizeof caso, "funcion_bucle(%d)", entradas[i]);
        comprobar(caso, esperados[i], funcion_bucle(entradas[i]));
    }
    for (size_t i = 0; i < sizeof signos / sizeof signos[0]; ++i) {
        snprintf(caso, sizeof caso, "funcion_if(%d)", signos[i]);
        comprobar(caso, condiciones[i], funcion_if(signos[i]));
    }
    comprobar("funcion_retorno()", 42, funcion_retorno());
    comprobar("funcion_suma(1,2)", 3, funcion_suma(1, 2));
    comprobar("funcion_llamada_con_argumentos(1,2,3)", 6,
              funcion_llamada_con_argumentos(1, 2, 3));
    comprobar("funcion_llamada_con_argumentos(-2,5,-1)", 2,
              funcion_llamada_con_argumentos(-2, 5, -1));
    comprobar("offsetof(config,mode)", 0, offsetof(struct config, mode));
    comprobar("offsetof(config,limit)", 2, offsetof(struct config, limit));
    comprobar("offsetof(config,total)", 4, offsetof(struct config, total));
    comprobar("sizeof(config)", 8, sizeof(struct config));
    comprobar("byte[0](0x0a0b0c0d)", 0x0d, bytes[0]);
    comprobar("byte[1](0x0a0b0c0d)", 0x0c, bytes[1]);
    comprobar("byte[2](0x0a0b0c0d)", 0x0b, bytes[2]);
    comprobar("byte[3](0x0a0b0c0d)", 0x0a, bytes[3]);
    return fallos ? 1 : 0;
}
