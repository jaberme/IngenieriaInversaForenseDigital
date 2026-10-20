/*
 * antidebug.c — Muestra propia con anti-debugging clásico, para M4/P5.
 * Asignatura: Ingeniería Inversa (Parte I), UAL.
 *
 * Procedencia: código propio, escrito para esta asignatura (mismo marco que
 * ejemplos.c, ver muestras/README.md).
 *
 * Objetivo docente: técnica de autodetección de depurador en Linux mediante
 * la llamada al sistema ptrace(PTRACE_TRACEME, ...). Un proceso solo puede
 * estar siendo trazado por UN tracer a la vez (en Linux, vía ptrace); si el
 * propio proceso solicita ser trazado por su padre mediante TRACEME.
 * Bajo GDB suele fallar porque ya existe un tracer. Un fallo también puede
 * deberse a restricciones del entorno: no demuestra por sí solo depuración.
 * El mensaje de esta muestra es deliberadamente simplificado; el análisis
 * debe distinguir el resultado observado de su interpretación.
 *
 * Deliberadamente NO ofuscado ni reforzado: el objetivo de P5 es demostrar
 * que esta comprobación, igual que cualquier comprobación de software, se
 * ejecuta como código normal y puede interceptarse y forzarse desde el
 * propio depurador contra el que protege (ver solucion.md).
 */

#include <stdio.h>
#include <sys/ptrace.h>
#include <unistd.h>

int main(void)
{
    long resultado = ptrace(PTRACE_TRACEME, 0, NULL, NULL);

    if (resultado == -1) {
        printf("Depurador detectado: ejecucion abortada.\n");
        return 1;
    }

    printf("Sin depurador detectado. Acceso concedido.\n");
    printf("FLAG{ptrace_bypass_ok}\n");
    return 0;
}
