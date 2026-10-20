# RE-01 1.0 — Validación de la edición distribuida

Fecha: 28 de septiembre de 2026. Este registro corresponde exclusivamente al
[ELF distribuido](paquete/alumnado/RE-01), de 14.472 bytes, cuyo SHA-256 es:

```text
65236d15de045be83091934cb5c1f74aebf7d2ecd176b344743d51565ef2b29f
```

## Construcción y separación de materiales

GCC 13.3.0, GNU Binutils 2.42 y glibc 2.39, Linux x86-64. La versión GLIBC más
alta requerida por el ELF es 2.34; también necesita el cargador dinámico x86-64.
Flags exactos y procedencia en [build.json](paquete/docente/build.json).
El código con símbolos se enlaza una vez; objcopy produce los símbolos externos
y la copia stripped. Se han comparado los segmentos PT_LOAD de ambas copias,
exceptuando los campos de cabecera que describen las secciones eliminadas.
La copia del alumnado carece de .symtab y .debug_info; conserva .dynsym para los
imports de libc. No se promete eliminar nombres necesarios para el enlace dinámico.

Se extrajo el archivo docente en un directorio temporal y se reconstruyó usando
solo su contenido: las 97 pruebas funcionales pasaron y el ELF resultó idéntico
byte a byte con esta misma toolchain. En esa repetición dentro del sandbox GDB
quedó registrado como no completado por ptrace; las sesiones verificadas que se
distribuyen son las ejecutadas con ptrace permitido, descritas más abajo.

## Resultados medidos

[verificar.py](verificar.py) ha superado 97 casos: cinco pruebas principales,
fronteras, errores de formato y apertura, creación exclusiva, alias de entradas,
enlace simbólico, paridad con el ELF docente y 60 entradas válidas comparadas con
un oráculo Python independiente. El informe conserva los resultados en
[validacion.json](paquete/docente/validacion.json).

También se ejecutaron las cinco pruebas con los ficheros reales de entradas/ del
archivo distribuible: retorno, stdout, stderr y resultado coinciden con el informe.
Se verificaron todos los SHA256SUMS y el contenido de ambos tar.gz contra sus
directorios. El archivo del alumnado contiene 11 ficheros y excluye código fuente,
scripts de prueba, soluciones y símbolos docentes.

| Prueba | Configuración / documento en entradas/ | Retorno | Etapa | Salida nueva |
|---|---|---:|---|---|
| T1 | valida.cfg / documento.txt | 0 | done | HTXLSR DOID 2026.; checksum d8d9f468 |
| T2 | valida.cfg / vacio.txt | 5 | document | no |
| T3 | limite.cfg / limite.txt | 0 | done | DEFGHIJKLMNOPQRS; checksum 84929ef5 |
| T4 | limite.cfg / exceso.txt | 6 | limit | no |
| T5 | opcion-invalida.cfg / documento.txt | 4 | config | no |

El resultado T1 completo, incluidos sus LF, es:

```text
tag=LAB-RE01
id=1042
text=HTXLSR DOID 2026.
checksum=d8d9f468
```

## Localizadores del build

| Función | VA ELF | Tamaño bytes |
|---|---|---:|
| load_config | 0x1309 | 850 |
| load_record | 0x165b | 743 |
| transform_record | 0x1942 | 139 |
| write_result | 0x19cd | 163 |
| main | 0x1a70 | 420 |

En main, la comparación unsigned en 0x1b17 compara limit con length y el salto
jb de 0x1b1e rechaza cuando limit es menor. Se comprueban contra
[desensamblado.asm](paquete/docente/desensamblado.asm), sin trasladarlos a otro build.
Son VA ELF, no offsets de fichero ni direcciones absolutas de todos los procesos.

## GDB y controles

Se ejecutó GDB con ptrace permitido fuera del sandbox, manteniendo ASLR activo.
El ELF stripped cargó los símbolos externos del mismo build. El
[primer registro](paquete/docente/gdb-validacion.log) documenta breakpoint en
transform_record, memoria, tamaños de estructuras, mapeos y retorno.

En la [intervención](paquete/docente/gdb-intervencion.log), el control con longitud
17 y límite 16 retornó 6. Tras load_config se guardó el límite y se cambió a 17;
el proceso produjo exactamente el resultado del oráculo. Una ejecución nueva sin
intervención volvió a retornar 6 y no creó salida. Las dos direcciones observadas
de main fueron 0x57648466da70 y 0x55c1f8357a70: sus bases fueron respectivamente
0x57648466c000 y 0x55c1f8356000. Son ejemplos medidos, no direcciones reutilizables.

## Límites de esta validación

strace no está instalado en este entorno: sus comandos se incluyen en P4 para
realizarlos en la VM del curso; no se presenta una traza inexistente. No se ha
realizado aquí un piloto de tiempos ni una sesión GUI con Binary Ninja.
La cobertura incluye fallos de apertura de salida, pero no simula disco lleno,
fallos físicos, interrupciones del sistema ni todas las combinaciones posibles.
Los paquetes de RE-01 no generan EV-01 ni capturas de RAM/red. Copiar exactamente
este ELF al futuro EV-01 permitirá exigir coincidencia SHA-256; recompilarlo no.

Los guiones P3/P4 conservan literalmente sus fichas históricas y añaden al final
una actualización RE-01 1.0 que sustituye sus afirmaciones de material pendiente.
