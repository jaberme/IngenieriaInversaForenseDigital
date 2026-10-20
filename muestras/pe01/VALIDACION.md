# PE-01 1.0 — Validación estática

Fecha: 28 de septiembre de 2026. Binario:
[ejemplos-pe.exe](paquete/alumnado/ejemplos-pe.exe), 39.936 bytes.
SHA-256:

```text
ed7640c92c67e0308d8a7c2edc21f3d7c25f2c435a8ed17cde23cdcd0eac5015
```

## Comprobaciones realizadas

- El fuente docente coincide byte a byte con muestras/build/ejemplos.c.
- Compilación con MinGW-w64 GCC 13-posix, paquete 13.2.0-6ubuntu1+26.1,
  y Binutils 2.41.90.20240122. build.json registra comandos, entorno y versiones;
  también los SHA-256 de los seis paquetes descargados de Ubuntu noble.
- Lectura independiente de la estructura con inspeccionar.py y GNU objdump:
  PE32+ AMD64, consola, diez secciones, dos DLL importadas, .reloc y flags ASLR/DEP.
- Tabla COFF vacía y ausencia de secciones DWARF en el PE del alumnado. Los bytes
  y RVA de las secciones conservadas coinciden con el PE docente con símbolos.
- Conversión del RVA de entrada 0x1410 a offset 0x810. Los 16 bytes leídos coinciden
  con objdump y xxd. La VA preferida es 0x140001410.
- .bss en RVA 0xc000: VirtualSize 0xb80, RawSize 0. El inspector rechaza traducir
  esa región virtual a bytes de variable almacenados en fichero.
- Todos los SHA256SUMS coinciden. El contenido de ambos tar.gz coincide con sus
  directorios; el archivo del alumnado excluye fuente, scripts, solución y símbolos.
- Extracción del archivo docente en otro directorio y reconstrucción utilizando
  solo su contenido y la misma toolchain externa: PE stripped idéntico byte a byte.

Los datos y resultados numéricos están en
[RESULTADOS.md](paquete/docente/RESULTADOS.md),
[inspeccion.json](paquete/docente/inspeccion.json),
[cabeceras.txt](paquete/docente/cabeceras.txt) y
[entry.asm](paquete/docente/entry.asm).

## Documentación y límites

P2 se ha ampliado sin eliminar el texto anterior. Su enunciado PDF tiene seis
páginas y su solución cuatro; ambos compilan sin desbordamientos ni referencias
indefinidas. Los PDF anteriores Practica2.pdf y SolucionP2.pdf se han conservado.
Los verificadores globales confirman los 22 prefijos originales intactos y la
sincronización Markdown/LaTeX; la colección ampliada suma 95 páginas.

No se ha ejecutado el PE en Windows/Wine ni se ha hecho un piloto GUI. P2 exige
análisis estático; no se infieren ejecución, compatibilidad dinámica comprobada,
base de carga real ni actividad histórica. El código propio es benigno y revisable;
la lista de imports por sí sola no demuestra el comportamiento de una aplicación.

El PE no tiene firma Authenticode. Timestamp COFF cero se consigue con la opción
de enlace y SOURCE_DATE_EPOCH=0 durante objcopy. El mensaje heurístico de file
«stripped to external PDB» no prueba que exista un PDB: este procedimiento conserva
DWARF en el PE docente y no genera PDB. El manifiesto externo es de distribución,
no un recurso Windows RT_MANIFEST. Los tar.gz no se anuncian reproducibles, porque
incluyen fechas y metadatos de cada construcción.
