# Banco de muestras de ingeniería inversa

## Disponible en el repositorio

Fuentes propios de ejercicio en `build/`. Sus binarios se construyen localmente y
no se versionan. RE-01 tiene además una edición distribuible en `re01/paquete/`.
La licencia/condiciones docentes existentes en los fuentes se conservan;
no se presume permiso de redistribución externa de material ajeno.

| Fuente / objetivo | Generación | Uso y límite |
|---|---|---|
| [RE-01](re01/README.md), utilidad de mantenimiento | Edición disponible en `re01/paquete/`; nuevas ediciones con `construir.py --salida RUTA_NUEVA` | Núcleo P3/P4; 97 pruebas, símbolos docentes, manifiesto y SHA-256 |
| `ejemplos.c`, variantes x86-64 | `make -C muestras/build all` | P1/P2 y calentamiento P3/P4; fuente y clave públicos |
| `antidebug.c` | incluido en `all` o `make antidebug` | P5: condición de ptrace, no detector infalible |
| [UPX-01](upx01/README.md), ejemplos.c empaquetado | Edición disponible en `upx01/paquete/`; UPX 4.2.2 | P5: original/empaquetado/recuperado, hashes, 30 ejecuciones y recuperación idéntica |
| [PE-01 de ejemplos.c](pe01/README.md) | Edición manifestada en `pe01/paquete/`; nuevas ediciones con construir.py | P2 estático; fuente compartido con ELF, cabeceras y conversiones comprobadas |
| PE local de `ejemplos.c` | `make -C muestras/build pe` | Variante local sin manifiesto; no sustituye la edición distribuible PE-01 |
| Imagen didáctica | `make -C muestras/build firmware` | P6: 64 KiB de relleno + SquashFS + ELF x86-64; no arrancable |
| Variantes AArch64/MIPS | `make -C muestras/build cross` | Ampliación; compiladores/binutils cruzados y sysroot si se ejecutan |

`make all` ya no exige instalar tres toolchains. `make firmware` requiere mksquashfs.
Los nombres concretos quedan en `build/salida/`. Las variantes distinguen `-O0 -g`,
`-O2 -g` y sus builds con `-s`; los símbolos de depuración y la tabla de símbolos
no se confunden con imports dinámicos.

El procedimiento se puede repetir; **igualdad bit a bit no está garantizada** entre
compiladores/versiones/rutas ni por marcas temporales de SquashFS. Registrar versiones,
flags, fuentes y hashes de los ficheros efectivamente distribuidos. Las direcciones y
salidas de descompilación se obtienen del build real, no de una captura de otro curso.

## Pendiente de producir

FW-01 y las evidencias forenses completas siguen pendientes de producir y no
forman parte de esta edición del repositorio. RE-01 ya está producido y dispone de
[solución docente](re01/docente.md). El crackme conserva su función de calentamiento;
la imagen didáctica actual tampoco contiene un servicio real ni registros de actividad.

## Manifiesto por edición

Para cada fichero: ID, nombre exacto, procedencia, permiso de uso, versión/fuente,
comando/toolchain, tamaño, SHA-256, formato/arquitectura, práctica y relación con
los derivados. Conservar un original y trabajar sobre copias en VM aislada.
Ninguna práctica exige descargar malware operativo ni atacar sistemas ajenos.
Una muestra pública tampoco es automáticamente de dominio público o inocua.
