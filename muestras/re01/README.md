# RE-01 — Utilidad de mantenimiento

Muestra implementada para el núcleo de P3/P4 y el futuro caso forense.
Fuente: [re01.c](re01.c). Contrato y solución: [docente.md](docente.md).
Instrucciones distribuibles: [alumnado.md](alumnado.md).

Edición lista: [paquete del alumnado](paquete/RE-01-alumnado.tar.gz) y
[paquete docente](paquete/RE-01-docente.tar.gz). Consulte la
[validación medida](VALIDACION.md) y el [manifiesto](paquete/alumnado/MANIFIESTO.json).
El binario de esta edición ocupa 14.472 bytes. Su SHA-256 es:

```text
65236d15de045be83091934cb5c1f74aebf7d2ecd176b344743d51565ef2b29f
```

Necesita Linux x86-64, Python 3, GCC y GNU Binutils (`objcopy`, `nm`, `objdump`,
`readelf`). GDB es necesario para validar la sesión de depuración; strace para la
actividad de trazado de P4. No hay dependencias Python adicionales.

## Construcción y distribución

Desde la raíz del repositorio:

```bash
make -C muestras/build re01
```

Genera `paquete/` con dos directorios y dos archivos tar.gz. El constructor se
niega a reutilizar un directorio existente para no mezclar ediciones. Para otra
edición use una ruta nueva:

```bash
python3 muestras/re01/construir.py --salida /tmp/re01-edicion-nueva
```

- `paquete/RE-01-alumnado.tar.gz`: ELF stripped, entradas, instrucciones,
  manifiesto JSON y SHA256SUMS.
- `paquete/RE-01-docente.tar.gz`: ELF con símbolos, símbolos externos, fuente,
  herramientas de construcción/pruebas, solución, direcciones y validación.
- `paquete/SHA256SUMS`: hashes de ambos archivos distribuibles.

El docente conserva ambos paquetes. El archivo docente incluye también fixtures e
instrucciones distribuibles; puede reconstruirse por sí solo con construir.py.
El manifiesto registra la glibc y requisitos del build; valide la VM de destino.
Igual toolchain y fuente pueden producir igual ELF, pero los archivos tar.gz y las
fechas del manifiesto no se anuncian reproducibles bit a bit.

## Ejecución de ejemplo

En una VM de laboratorio, desde la raíz, con un directorio nuevo:

```bash
mkdir resultados-re01
muestras/re01/paquete/alumnado/RE-01 \
  muestras/re01/paquete/alumnado/entradas/valida.cfg \
  muestras/re01/paquete/alumnado/entradas/documento.txt \
  resultados-re01/resultado.txt \
  > resultados-re01/stdout.txt 2> resultados-re01/stderr.txt
printf '%s\n' "$?" > resultados-re01/retorno.txt
```

La validación al construir comprueba el contrato y el ELF definitivo. Para repetir
sin modificar el paquete sellado copie ambos directorios a una ruta de trabajo y
ejecute `python3 muestras/re01/verificar.py RUTA_COPIA`: actualiza el informe docente
de esa copia. GDB puede quedar registrado como no completado si ptrace está bloqueado.
Las pruebas de contrato fallidas hacen fallar la construcción.

RE-01 produce archivos y eventos en stderr. La preparación de EV-01, EV-02, EV-03,
EV-04 y FW-01 sigue siendo independiente. El paquete de RE-01 no equivale a haber
producido dichas evidencias históricas.
