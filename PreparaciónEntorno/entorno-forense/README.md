# Laboratorio forense

Reutiliza la VM Linux x86-64 de la Parte I. Base de preparación: Ubuntu 24.04 LTS.
8 GiB RAM, 4 vCPU y 60 GiB libres como presupuesto inicial para muestras reducidas;
medir espacio de originales + copias + exportaciones + índices con el paquete final.
No se promete capacidad para M57/Lone Wolf completos con ese presupuesto.

## Núcleo y preparación

The Sleuth Kit, libewf/ewf-tools, dc3dd, SQLite, Wireshark/tshark, SHA-256 y
Volatility 3. El script instala las utilidades apt; la versión de Volatility 3 debe
seleccionarse y validarse contra las muestras antes de fijarla:

```bash
bash PreparaciónEntorno/entorno-forense/provision.sh
bash PreparaciónEntorno/entorno-forense/provision.sh --check
```

Si se configura `COURSE_VOLATILITY_VERSION` con la versión exacta elegida, el script
la instala en un entorno virtual del usuario. No selecciona `latest` ni supone que
la instalación resuelva símbolos, compatibilidad o validez del volcado.
El script se ejecuta como usuario normal y usa sudo solo para apt.
No ejecutar instalaciones de usuario como root. Los fallos del núcleo no se ocultan.

Para RAM, el docente prepara una VM compatible y AVML/LiME u otra herramienta
validada, registrando versión, hash, permisos, formato y efectos. No se descarga
un capturador privilegiado desde una URL cambiante. Preparar también símbolos de
Volatility y los plugins que realmente funcionen antes de desconectar la red.

## Alternativas y límites

Autopsy moderno puede usarse en puesto preparado aparte; **el paquete `autopsy` de
algunas distribuciones es la interfaz antigua**, no necesariamente la aplicación
actual. No basar capturas o instrucciones modernas en ese paquete sin verificar.
Guymager es alternativa a adquisición CLI. plaso, Timesketch, Zeek y analizadores
móviles son ampliaciones preparadas por el docente, no instalaciones obligatorias.

El trabajo del alumnado analiza copias con parsers; montar `ro` o ejecutar
`blockdev --setro` no equivale a un bloqueador hardware validado. CTRL-01 es un medio
desechable del aula; nunca usar un disco personal como ejercicio. Análisis de disco
congelado y adquisición en vivo requieren criterios distintos.

## Distribución de evidencias

Ver el [mapa general del material](../../readme.md). Se necesitan manifiestos de
archivos reales, hashes, licencias, formato, rango y herramientas/símbolos. Un enlace
genérico a un corpus no es una práctica lista. Las descargas se completan antes de
clase y se verifica su referencia, sin inventar nombres ni hashes oficiales.

Validación completa pendiente: [checklist](checklist-verificacion.md).
