/* Ejemplo del capitulo 2: secciones ELF, puntero interno y llamada importada. */
#include <stdint.h>
#include <stdio.h>

uint32_t intentos = 3;
uint32_t contador;
unsigned char buffer[1024];
const char mensaje[] = "Hola";
uint32_t *puntero = &intentos;

int main(void)
{
    puts(mensaje);
    buffer[0] = (unsigned char)*puntero;
    contador += buffer[0];
    return 0;
}
