# UPX-01 — Guía docente

El constructor copia sin cambios ejemplos.c del banco docente y lo compila como
ELF Linux x86-64 PIE stripped con GCC -O2. UPX -9 crea el derivado; -t lo comprueba
y -d recupera otra copia. El original nunca se empaqueta en el mismo fichero.
No se modifica el stub ni se añaden anti-análisis u ofuscación propios.

## Preparar la herramienta

La edición usa UPX 4.2.2 del paquete upx-ucl 4.2.2-3 de Ubuntu noble. Es una versión
concreta ensayada, no una afirmación de que sea la última. La herramienta requiere
sus dependencias de la distribución; el manifiesto registra versión, SHA-256 del
ejecutable y datos del paquete. No se incluye el ejecutable UPX en los tar.gz.

Para una VM Ubuntu compatible el docente puede preparar upx-ucl mediante su gestor
de paquetes. Otra opción es extraer el paquete oficial en una carpeta de trabajo
con dpkg-deb -x e invocar usr/bin/upx-ucl de esa carpeta, como en esta validación.
La extracción no instala dependencias: deben existir en el entorno de ejecución.
No hay descargas automáticas ni cambios de política del host en los scripts.

## Reconstrucción

Desde el directorio docente extraído, con GCC, Binutils, Python 3 y UPX disponibles:

```bash
python3 construir.py --upx /RUTA/upx-ucl --salida /tmp/upx01-edicion-nueva
```

La carpeta de destino debe ser nueva. El archivo docente contiene el fuente,
scripts, licencias, recuperado de control e informes. El docente conserva ambos
archivos para comparar directamente original/empaquetado/recuperado. Los números
medidos están en RESULTADOS.md; build.json registra compilación y operaciones.
Puede usar --deb RUTA.deb para registrar versión/hash del paquete de herramientas.

## Comportamiento y corrección

El código original imprime retorno=42 if=1 bucle=45 llamada=6 y compara argv[1]
con R3v3rs1ng_UAL. Sin argumento o con otra cadena retorna 1; con esa cadena retorna
0. Ignora argumentos posteriores al primero. Los mensajes contienen UTF-8.
verificar.py compara las tres representaciones con diez entradas concretas y un
oráculo derivado del contrato; se prueban 30 procesos. No cambia los binarios.

El verificador usa argv[0]=muestra para que el mensaje de uso sea comparable, sin
normalizar ni eliminar otras diferencias. El informe conserva retorno, stdout,
stderr y entradas. Comprueba también que un archivo de control y el inventario del
directorio temporal no cambien, con ese alcance limitado. No es un trazador global.

Para repetir la validación sin modificar los paquetes, extráigalos juntos en una
carpeta de trabajo y redirija el informe fuera de ellos:

```bash
python3 docente/verificar.py . > nueva-validacion.json
```

Se exige interpretar tres pruebas distintas: -t comprueba el formato empaquetado que
UPX reconoce; cmp comprueba bytes; las ejecuciones contrastan comportamiento para
entradas concretas. Ninguna demuestra por sí sola equivalencia universal o benignidad.
La procedencia propia y el fuente permiten explicar el carácter benigno de la muestra.

Si una columna de progreso de UPX difiere del tamaño final, conserve ambos datos y
use stat, los bytes realmente leídos y el hash para identificar el archivo producido.
No sustituya mediciones por una cifra de ejemplo. La reducción no se atribuye solo
a compresión de instrucciones: cambia también la representación ELF y sus metadatos.

## Alcance en P5

Este material completa empaquetado, recuperación, comparación estructural y controles
de comportamiento. El bloque ptrace/GDB de P5 sigue usando antidebug.c y requiere
un entorno que permita trazar. Sus límites y sus controles no se sustituyen por UPX.
RE-01 y PE-01 mantienen sus propios binarios y hashes; UPX-01 es una muestra aparte.

## Referencias

- [Manual UPX 4.2.2](https://github.com/upx/upx/blob/v4.2.2/doc/upx-doc.txt).
- [Proyecto UPX](https://upx.github.io/).
- Los avisos y la excepción para ejecutables comprimidos se conservan en licencias/.
