# PE-01 — PE benigno manifestado para P2

Edición 1.0, producida el 28 de septiembre de 2026. Ejecutable de consola PE32+
AMD64 construido a partir del mismo [ejemplos.c](../build/ejemplos.c) que el ELF de
P2. Se conserva ese fuente sin cambios. El código propio imprime operaciones
aritméticas y compara una cadena; no implementa red, persistencia ni modificaciones
de documentos. El estudio en P2 se realiza sin ejecutarlo.

## Archivos disponibles

- [Paquete del alumnado](paquete/PE-01-alumnado.tar.gz): ejecutable stripped,
  instrucciones, manifiesto, hashes y avisos del runtime.
- [Paquete docente](paquete/PE-01-docente.tar.gz): fuente, procedimiento de compilación,
  scripts de construcción/inspección, PE con símbolos y resultados.
  No incluye el compilador ni DLL externas.
- [Ejecutable](paquete/alumnado/ejemplos-pe.exe),
  [manifiesto](paquete/alumnado/MANIFIESTO.json) y
  [hashes de los paquetes](paquete/SHA256SUMS).
- [Solución con valores medidos](paquete/docente/RESULTADOS.md) y
  [explicación docente](docente.md).

El ejecutable ocupa **39.936 bytes**. SHA-256:

```text
ed7640c92c67e0308d8a7c2edc21f3d7c25f2c435a8ed17cde23cdcd0eac5015
```

El manifiesto externo documenta procedencia e integridad; no es RT_MANIFEST ni una
firma Authenticode. No se han incluido respuestas ni símbolos docentes en el archivo
del alumnado. El material docente público no debe tratarse como secreto evaluable.

## Uso y reconstrucción

Para P2 basta extraer el paquete del alumnado en una carpeta nueva y seguir
[LEEME.md](alumnado.md). Se analiza con GNU objdump, xxd y Binary Ninja/Ghidra;
no requiere Windows, Wine ni MinGW-w64 en el puesto del alumno.

Para producir otra edición desde la raíz del repositorio con MinGW-w64 instalado:

```bash
python3 muestras/pe01/construir.py --salida /tmp/pe01-edicion-nueva
```

También existe make -C muestras/build pe01 para la primera construcción en la ruta
predeterminada. El constructor rechaza rutas existentes. El antiguo make pe sigue
generando el ejercicio local no manifestado; el material distribuible de P2 es la
edición de esta carpeta. No intercambie hashes, offsets o timestamps entre builds.

En esta edición se descargaron paquetes MinGW-w64 de Ubuntu noble y se extrajeron
en /tmp, sin instalación del sistema. El comando real fue:

```bash
python3 muestras/pe01/construir.py \
  --cc /tmp/p2-mingw-root/usr/bin/x86_64-w64-mingw32-gcc-posix \
  --binutils-prefix /tmp/p2-mingw-root/usr/bin/x86_64-w64-mingw32- \
  --debs /tmp/p2-mingw-debs
```

Esas rutas son del entorno de construcción, no dependencias para analizar el PE.
[build.json](paquete/docente/build.json) conserva versiones, flags, entorno y hashes
de los seis paquetes de herramientas. Los avisos de MinGW/GCC se adjuntan en ambos
archivos; no se redistribuyen el compilador ni las DLL de Windows.

## Validación y límites

El [registro de validación](VALIDACION.md) recoge las comprobaciones de esta edición,
incluida la reconstrucción autónoma con resultado idéntico y los hashes de los paquetes.

El constructor comprueba firmas MZ/PE, Machine, PE32+, subsistema consola, secciones,
imports, relocaciones, flags ASLR/DEP, ausencia de certificados y eliminación de
símbolos/depuración. Compara RVA y contenido de las secciones conservadas antes y
después de strip; contrasta cabeceras y los 16 bytes del entry point con GNU objdump.

En esta edición el entry point tiene RVA 0x1410, VA preferida 0x140001410 y offset
0x810. La .bss empieza en RVA 0xc000, ocupa 0xb80 bytes virtuales y no tiene bytes
raw. Los informes adjuntos documentan el cálculo completo y las DLL importadas.

La validación es estática: **no se ha ejecutado en Windows ni Wine**. Tampoco se ha
hecho un piloto GUI en Binary Ninja/Ghidra. El timestamp COFF cero está fijado por
el procedimiento y no acredita una fecha de actividad. No se promete igualdad del
PE al cambiar toolchain, ni de los tar.gz con sus fechas y manifiestos.
