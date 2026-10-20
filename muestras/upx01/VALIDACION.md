# UPX-01 1.0 — Validación ejecutada

Fecha: 28 de septiembre de 2026. Linux x86-64, GCC 13.3.0 y glibc 2.39.
UPX 4.2.2 del paquete Ubuntu noble upx-ucl 4.2.2-3; versión, dependencias y hashes
de herramienta/paquete en [herramienta.json](paquete/docente/herramienta.json).
No se instaló software en el sistema: la herramienta se extrajo en /tmp.

## Identidad de las muestras

| Objeto | Tamaño bytes | SHA-256 |
|---|---:|---|
| Original | 14472 | 125c09bcfecf485febfe7cb74787dc84000263edc4f798d1c12905067f93eaf0 |
| Empaquetado | 5844 | 184e21256a3816e44d0204070b376811eac295c0f179d0dda4ee1bf56498f079 |
| Recuperado | 14472 | 125c09bcfecf485febfe7cb74787dc84000263edc4f798d1c12905067f93eaf0 |

Los tamaños provienen del fichero final. El progreso de -d muestra una cifra
23231 que no es su tamaño final medido; se conserva ese log sin convertir esa cifra
en el tamaño del recuperado. cmp y los hashes establecen la igualdad efectiva.

## Pruebas y evidencia

- upx -9, upx -t, upx -l, upx -d y cmp -s: retorno 0. Cada operación tiene un log
  JSON con comando, retorno, stdout y stderr en el directorio docente.
- Fuente copiado sin cambios desde muestras/build/ejemplos.c.
- Diez entradas: sin argumentos, vacía, corta, incorrecta de 13 bytes, diferencia
  tardía, válida, válida con argumento extra, salto final, no ASCII y 4096 letras A.
  Las tres representaciones producen exactamente el retorno y stdout esperados y
  stderr vacío: 30 procesos comprobados en [comportamiento.json](paquete/docente/comportamiento.json).
- argv[0]=muestra se fijó en las tres ejecuciones de cada caso; evita que el mensaje
  de uso difiera por el nombre del archivo invocado. No se normalizó otra salida.
- Un archivo sintético de control y el inventario de cada directorio temporal
  permanecieron intactos. Los tres ejecutables conservaron sus bytes.
- Cabeceras, segmentos, secciones, clasificación file y cadenas guardadas para las
  tres representaciones. El original tiene 13 program headers y 29 section headers;
  el empaquetado tiene 3 y 0, respectivamente. El recuperado restaura el original.
- La cadena R3v3rs1ng_UAL permanece literalmente en las tres representaciones.
  En este caso empaquetar no oculta esa cadena. Se comprueba en los bytes y los
  informes strings; no se presume que desaparezcan todos los textos.
- SHA256SUMS de ambos directorios y archivos verificados; contenido de cada tar.gz
  comparado con su directorio. El paquete del alumnado excluye fuente, scripts y
  recuperado de control, que debe obtener durante la práctica.
- Extracción del archivo docente en otra carpeta y reconstrucción autónoma con la
  misma toolchain: los tres binarios resultan idénticos; se repiten correctamente
  los 30 procesos. No es una garantía para otras herramientas/versiones.

## Interpretación y límites

file clasifica la envoltura empaquetada como statically linked y sin cabeceras de
sección. No demuestra que la aplicación original haya perdido las dependencias
dinámicas que necesita después de descomprimirse. El original recuperado y su tabla
de versiones glibc permiten examinar esas dependencias.

El entry ELF cambia de 0x1150 a 0x58a0 y vuelve a 0x1150. Son direcciones de enlace,
no offsets de fichero ni direcciones reutilizables en cualquier proceso con ASLR.
UPX añade código de arranque/descompresión. upx -t no certifica benignidad; las
ejecuciones prueban diez casos, no equivalencia universal. La recuperación usada
es automática, no desempaquetado manual ni reconstrucción de un volcado de RAM.

No se ha hecho trazado global de syscalls, piloto GUI ni validación del bloque
ptrace/GDB de P5 en esta entrega. El control de efectos solo abarca los directorios
de trabajo. Los textos y PDF anteriores de P5 se conservan.

P5 actualizado compila sin desbordamientos ni referencias indefinidas: seis páginas
de enunciado y cuatro de solución. Los verificadores documentales confirman la
conservación byte a byte de los prefijos de los 22 documentos originales y la
sincronización completa de las fuentes LaTeX; la colección ampliada suma 98 páginas.
