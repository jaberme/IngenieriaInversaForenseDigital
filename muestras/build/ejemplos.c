/*
 * ejemplos.c — Banco de muestras propias para la asignatura de Ingeniería
 * Inversa (Parte I), UAL.
 *
 * Procedencia: código propio, escrito para esta asignatura.
 * Licencia/uso: material docente, libre de usar y redistribuir dentro del
 * contexto del curso (ver muestras/README.md para el detalle de licencia).
 *
 * Contenido:
 *   1) Funciones C didácticas mínimas que ilustran, una a una, los patrones
 *      de traducción C → ensamblador que se comparan entre x86-64/ARM/MIPS
 *      en M0 y P1 (enfoque tomado de Dennis Yurichev, "Reverse Engineering
 *      for Beginners"): función vacía, función con valor de retorno,
 *      condicional `if`, bucle `for`, llamada con argumentos.
 *   2) Un mini "crackme" de validación de contraseña por comparación de
 *      bytes, usado en M2/P3 (análisis estático) para practicar
 *      descompilación y recuperación de la clave sin ejecutar el binario.
 *
 * Todas las funciones se invocan desde main() para que el binario generado
 * tenga un único punto de entrada y un comportamiento observable simple
 * (código de salida), apto para analizarse con GDB, objdump, Binary Ninja o
 * radare2 indistintamente de la arquitectura de destino.
 */

#include <stdio.h>
#include <string.h>

/* ---------------------------------------------------------------------
 * 1. Funciones didácticas para comparación cross-arquitectura (P1, M0)
 * --------------------------------------------------------------------- */

/* 1.1 Función vacía: solo prólogo/epílogo, sin cuerpo relevante.
 *     Sirve para ver la convención de llamada "desnuda" en cada arch. */
void funcion_vacia(void)
{
    /* Intencionadamente vacía. */
}

/* 1.2 Función con valor de retorno: muestra qué registro/convención se usa
 *     para devolver un entero (rax en x86-64, r0/x0 en ARM, v0 en MIPS). */
int funcion_retorno(void)
{
    return 42;
}

/* 1.3 Condicional `if`: muestra comparación + salto condicional. */
int funcion_if(int valor)
{
    if (valor > 0) {
        return 1;
    }
    return 0;
}

/* 1.4 Bucle `for`: muestra inicialización, condición de salida y salto
 *     hacia atrás (patrón de bucle, idéntico en esencia en las 3 arch). */
int funcion_bucle(int n)
{
    int suma = 0;
    int i;

    for (i = 0; i < n; i++) {
        suma += i;
    }
    return suma;
}

/* 1.5 Llamada con argumentos: muestra el paso de parámetros por registro
 *     (System V AMD64 ABI / AAPCS / convención MIPS o32) al llamar a otra
 *     función definida en este mismo fichero. */
int funcion_suma(int a, int b)
{
    return a + b;
}

int funcion_llamada_con_argumentos(int x, int y, int z)
{
    int parcial = funcion_suma(x, y);
    return funcion_suma(parcial, z);
}

/* ---------------------------------------------------------------------
 * 2. Mini-crackme: validación de contraseña por comparación de bytes (P3)
 * ---------------------------------------------------------------------
 * Objetivo docente: el alumnado debe identificar, SIN EJECUTAR el binario
 * (análisis estático con Binary Ninja), la cadena de validación y/o el
 * algoritmo de comparación para recuperar la contraseña correcta.
 *
 * Deliberadamente simple: comparación byte a byte contra una constante
 * embebida en el binario, sin cifrado ni ofuscación, apropiado para una
 * primera práctica de descompilación estática (M2/P3). Las técnicas de
 * anti-análisis (ofuscación, anti-debug) se introducen más adelante, en
 * M4/P5, sobre otra muestra.
 */

static int validar_contrasena(const char *intento)
{
    /* Contraseña embebida en claro a propósito: el reto de P3 es estático
     * (leer el binario), no criptográfico. */
    static const char CONTRASENA_CORRECTA[] = "R3v3rs1ng_UAL";
    size_t i;
    size_t longitud_esperada = strlen(CONTRASENA_CORRECTA);

    if (strlen(intento) != longitud_esperada) {
        return 0;
    }

    for (i = 0; i < longitud_esperada; i++) {
        if (intento[i] != CONTRASENA_CORRECTA[i]) {
            return 0;
        }
    }

    return 1;
}

/* ---------------------------------------------------------------------
 * main: ejecuta todas las funciones de demostración y el crackme.
 * --------------------------------------------------------------------- */

int main(int argc, char *argv[])
{
    int resultado_retorno;
    int resultado_if;
    int resultado_bucle;
    int resultado_llamada;

    funcion_vacia();
    resultado_retorno = funcion_retorno();
    resultado_if = funcion_if(resultado_retorno);
    resultado_bucle = funcion_bucle(10);
    resultado_llamada = funcion_llamada_con_argumentos(1, 2, 3);

    printf("retorno=%d if=%d bucle=%d llamada=%d\n",
           resultado_retorno, resultado_if, resultado_bucle, resultado_llamada);

    if (argc >= 2) {
        if (validar_contrasena(argv[1])) {
            printf("Contraseña correcta.\n");
            return 0;
        }
        printf("Contraseña incorrecta.\n");
        return 1;
    }

    printf("Uso: %s <contrasena>\n", argv[0]);
    return 1;
}
