# UPX-01 — Resultados medidos

upx 4.2.2, empaquetado -9, test -t y recuperación -d.
Los tres comandos terminaron con retorno 0; cmp -s también retornó 0.

| Objeto | Bytes reales | Entry ELF | Program headers | Section headers |
|---|---:|---|---:|---:|
| original | 14472 | 0x1150 | 13 | 29 |
| empaquetado | 5844 | 0x58a0 | 3 | 0 |
| recuperado | 14472 | 0x1150 | 13 | 29 |

```text
125c09bcfecf485febfe7cb74787dc84000263edc4f798d1c12905067f93eaf0  original
184e21256a3816e44d0204070b376811eac295c0f179d0dda4ee1bf56498f079  empaquetado
125c09bcfecf485febfe7cb74787dc84000263edc4f798d1c12905067f93eaf0  recuperado
```

La reducción de tamaño en fichero es 59.62 %. La medida procede de los bytes
leídos y del tamaño final del fichero, no de interpretar las columnas de progreso de UPX.
Los hashes identifican cada representación; original y recuperado son idénticos byte
a byte en esta edición, mientras que empaquetado difiere.

Se ejecutaron 30 procesos: diez entradas por tres representaciones.
Se compararon retorno, stdout y stderr con el contrato del fuente. Se mantuvo argv[0]
igual a muestra para que la línea de uso no varíe con el nombre de la copia. El caso
válido y válido con argumento extra retornan 0; los otros ocho casos retornan 1.
Todos imprimen retorno=42 if=1 bucle=45 llamada=6 antes del mensaje de uso/acierto/error.
comportamiento.json conserva entradas y resultados exactos de cada proceso.

El contenido de un archivo de control y el inventario del directorio de trabajo
permanecieron intactos. El alcance de esa observación no cubre todo el sistema de
ficheros ni todas las llamadas al sistema. No se cambió ninguno de los tres binarios.
El stub y las dependencias pueden producir efectos de carga que este control no mide.

Los informes *-elf.txt, *-strings.txt y *-file.txt permiten contrastar estructura y
visibilidad de cadenas. La ausencia de cabeceras de sección no elimina los segmentos
cargables ni vuelve malicioso el fichero. Esta entrega no valida la sesión anti-debug.
