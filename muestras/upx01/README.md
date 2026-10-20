# UPX-01 — Muestra empaquetada validada para P5

Edición 1.0, 28 de septiembre de 2026. Se ha empaquetado el
[ejemplos.c propio del curso](../build/ejemplos.c) con **UPX 4.2.2**. El código
realiza aritmética, imprime resultados y compara una cadena; no implementa red,
persistencia ni modificación de documentos. Se conserva el fuente sin cambios.

## Material listo

- [Paquete del alumnado](paquete/UPX-01-alumnado.tar.gz): original y empaquetado,
  manifiesto, hashes, instrucciones y avisos del stub.
- [Paquete docente](paquete/UPX-01-docente.tar.gz): fuente, scripts de construcción
  y comprobación, recuperado de control, logs y solución medida.
- [Manifiesto](paquete/alumnado/MANIFIESTO.json),
  [hashes de los archivos](paquete/SHA256SUMS),
  [resultados](paquete/docente/RESULTADOS.md) y [validación](VALIDACION.md).

| Representación | Tamaño real | Entry ELF | Cabeceras de sección |
|---|---:|---|---:|
| Original | 14.472 bytes | 0x1150 | 29 |
| Empaquetado | 5.844 bytes | 0x58a0 | 0 |
| Recuperado | 14.472 bytes | 0x1150 | 29 |

Reducción del tamaño en fichero: **59,62 %**. upx -t y cmp -s terminaron con retorno
0; original y recuperado son idénticos byte a byte. Diez entradas por las tres
representaciones dieron el retorno/stdout/stderr esperado: **30 ejecuciones**.
La reconstrucción desde el archivo docente produjo los mismos tres binarios con
la misma toolchain. Eso no garantiza igualdad al cambiar compilador o UPX.

SHA-256 del empaquetado:

```text
184e21256a3816e44d0204070b376811eac295c0f179d0dda4ee1bf56498f079
```

## Preparar UPX

El programa UPX no se incluye en los archivos. Para Ubuntu noble, el docente puede
instalar previamente el paquete upx-ucl mediante el gestor de paquetes de la VM.
La edición ensayada es 4.2.2-3 amd64; registra también el hash de esa herramienta.
El comando puede llamarse upx o upx-ucl. Compruebe su versión antes del laboratorio.
No se afirma que 4.2.2 sea la versión más reciente.

En este entorno se preparó sin instalar paquetes en el sistema:

```bash
mkdir -p /tmp/p5-upx-debs /tmp/p5-upx-root
cd /tmp/p5-upx-debs
apt-get download upx-ucl=4.2.2-3
dpkg-deb -x upx-ucl_4.2.2-3_amd64.deb /tmp/p5-upx-root
/tmp/p5-upx-root/usr/bin/upx-ucl --version
```

Estas rutas documentan la construcción local. Extraer el paquete no instala sus
dependencias: libc6 >=2.38, libgcc-s1 >=3.3.1 y libstdc++6 >=13.1 para ese paquete.
Su disponibilidad en otras distribuciones debe comprobarse. El canal del proyecto
es [UPX](https://upx.github.io/) y el
[manual de la versión](https://github.com/upx/upx/blob/v4.2.2/doc/upx-doc.txt)
describe las operaciones. No se descarga software durante la sesión del alumnado.

## Reconstruir otra edición

Desde la raíz, en Linux x86-64 con GCC, Binutils, Python 3 y UPX:

```bash
python3 muestras/upx01/construir.py \
  --upx /tmp/p5-upx-root/usr/bin/upx-ucl \
  --salida /tmp/upx01-edicion-nueva
```

Para la primera construcción en la ruta predeterminada existe make -C muestras/build
upx01. El constructor se niega a sobrescribir una edición existente. La reconstrucción
compila, empaqueta, prueba, recupera y ejecuta la muestra; use el entorno del curso.

## Alcance

El material completa el bloque de empaquetado de P5. El bloque anti-debug conserva
antidebug.c, GDB y sus controles propios. No se han cambiado RE-01 ni PE-01.
La validación de comportamiento cubre diez entradas, no todas las ejecuciones posibles.
Los controles de efectos se limitan al directorio de trabajo; no se presenta una
traza global de sistema ni un piloto GUI. P5 se ha ampliado sin retirar contenido.
