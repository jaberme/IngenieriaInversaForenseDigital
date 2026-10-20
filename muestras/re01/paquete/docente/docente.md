# RE-01 1.0 — Contrato y solución docente

Este documento acompaña el código, el ELF con símbolos, el fichero de depuración y
los resultados de las pruebas. El archivo distribuible al alumnado excluye todo
este directorio. Su publicación en el repositorio no convierte las respuestas en secretas.

## Arquitectura y cinco funciones

`main` coordina `load_config`, `load_record`, `transform_record` y `write_result`.
Se compila con O1 y sin integración de funciones para conservar un grafo pequeño.
Las funciones de arranque y las importadas de libc no forman parte de estas cinco.
El ejecutable distribuido se obtiene haciendo strip sobre el mismo enlace del
ejecutable docente: no es una segunda compilación con direcciones diferentes.

```text
main -> load_config -> load_record -> comprobar length <= limit
                                      |
                             transform_record -> write_result
                                      |
                              stdout y evento en stderr
```

## Contrato de los formatos

Tres argumentos posicionales: configuración, documento, salida nueva. Las rutas
se resuelven respecto al directorio actual. La configuración y el documento deben
ser ficheros regulares. Se leen como máximo 256 bytes; 256 bytes leídos se rechazan.
No se acepta NUL incrustado ni contenido posterior al último LF requerido.
El formato es deliberadamente estricto: orden fijo, sin comentarios, BOM o CRLF.

Configuración, exactamente cuatro líneas terminadas en LF:

```text
mode=upper
shift=3
limit=32
tag=LAB-RE01
```

`mode` admite upper/lower; shift admite 1–2 dígitos decimales y valor 0–25;
limit admite 1–3 dígitos y valor 1–128; tag admite 1–16 caracteres ASCII
alfanuméricos, guion o guion bajo. Se aceptan ceros iniciales dentro de esas anchuras.
No se aceptan signos, espacios añadidos ni opciones repetidas o desconocidas.

Documento, exactamente dos líneas terminadas en LF:

```text
id=1042
text=Equipo alfa 2026.
```

ID: 1–6 dígitos decimales y valor 1–999999. Texto: 1–128 bytes de ASCII
imprimible, incluidos espacio, puntuación y `=`; se rechazan tabuladores, DEL y UTF-8
no ASCII. Una cadena de espacios es válida. El límite de configuración se comprueba
después del formato del documento. El fichero vacío es error de documento.

## Estructuras System V AMD64

| Estructura/campo | Offset bytes | Tipo/tamaño |
|---|---:|---|
| Config.mode | 0 | uint32_t, 4 |
| Config.shift | 4 | uint32_t, 4 |
| Config.limit | 8 | uint32_t, 4 |
| Config.tag | 12 | char[17] |
| Config completa | — | 32 bytes, incluye 3 de relleno final |
| Record.id | 0 | uint32_t, 4 |
| Record.length | 4 | uint32_t, 4 |
| Record.text | 8 | char[129] |
| Record completa | — | 140 bytes, incluye 3 de relleno final |

Los campos se escriben/leen mediante accesos de anchura concreta. Los nombres son
convenios del fuente; el alumnado puede proponer otros si los justifica.

## Transformación

Se normaliza cada letra ASCII a mayúscula, se aplica un desplazamiento circular
de shift posiciones módulo 26 y se lleva a minúscula si mode es lower. Dígitos,
espacios y puntuación permanecen iguales. No es cifrado seguro ni compresión.
La longitud se conserva. Se añade NUL al buffer, que no cuenta como texto.

La suma es FNV-1a de 32 bits sobre los bytes transformados, sin LF ni NUL:
iniciar h=2166136261; para cada byte, h=(h XOR byte)*16777619 módulo 2^32.
Se imprime en ocho dígitos hexadecimales minúsculos. No autentica el resultado;
SHA-256 del manifiesto cumple otra función. Implementación docente independiente
en Python: `reference` de verificar.py.

La salida contiene tag, id, text y checksum en cuatro líneas LF. El id se normaliza
a decimal sin ceros iniciales. Se abre con `fopen(path,"wx")`: creación exclusiva,
sin truncar rutas o enlaces que ya existan. Sus permisos dependen de umask.

## Retornos, orden y efectos

| Retorno | Etapa en stderr | Significado |
|---:|---|---|
| 0 | done | fichero escrito y cerrado sin error notificado |
| 2 | usage | número de argumentos incorrecto; también imprime uso |
| 3 | config/document | fallo de apertura/lectura/cierre o fichero no regular |
| 4 | config | sintaxis, opción, tamaño o rango de configuración inválidos |
| 5 | document | sintaxis, tamaño, ID o texto del documento inválidos |
| 6 | limit | texto válido pero supera el límite configurado |
| 7 | write | destino existente, incluidos enlaces simbólicos |
| 8 | write | otro fallo de creación, escritura o cierre de la salida |

Cada finalización normal escribe `RE01 status=N stage=ETAPA` en stderr. En éxito
stdout informa ID, longitud y checksum. El evento carece de fecha, PID y autenticación:
el capturador externo debe conservar instante/zona, argv, versión, stdout, stderr y
retorno. No puede atribuirse una persona a partir de esta línea.

Los errores 2–6 no abren la salida. En error 7 el destino se conserva. En error 8
puede quedar un fichero parcial, que se conserva. No se promete escritura atómica,
fsync, recuperación tras corte de energía ni detectar errores del consumidor de
stdout/stderr; retorno 0 certifica únicamente la operación de fichero descrita.
Las entradas pueden actualizar atime. La utilidad abre entradas antes de comprobar
que son regulares: un FIFO puede bloquear en fopen, por lo que el contrato de uso
exige ficheros regulares del laboratorio. No es un servicio para entradas hostiles.

## Cinco pruebas evaluables

T1 valida configuración y transforma `Equipo alfa 2026.`; T2 rechaza fichero vacío;
T3 acepta exactamente 16 bytes con limit=16; T4 rechaza 17 bytes con el mismo límite;
T5 rechaza shift=26 antes de leer el documento. Las salidas exactas medidas están
en validacion.json, junto con fronteras mínimas/máximas y 60 controles contra
un oráculo Python. Compare las entradas de cada prueba antes y después.

## Direcciones, depuración y PIE

`direcciones.json` registra VA ELF y tamaño de las cinco funciones de este build.
`desensamblado.asm` conserva instrucciones y bytes. No se copian estos valores a
otra compilación. `elf.txt` contiene segmentos y build ID; build.json registra
comando, toolchain y hash. Mantenga juntos RE-01.debug y su manifiesto.

Desde el directorio docente, ejecute `gdb -nx -x sesion.gdb` con una salida
resultado-gdb.txt que no exista todavía. Carga el ELF del alumno y sus símbolos
externos, deja ASLR activo y para en transform_record. `p *cfg`, `p *record` y
`finish` muestran estructura y retorno. `gdb-validacion.log` y validacion.json
indican si se pudo ejecutar en el entorno de construcción; no confunda un guion
preparado con una sesión efectivamente comprobada.

Para resolver sin símbolos: lea PT_LOAD en `readelf -lW`, encuentre el mapeo con
el offset correspondiente y derive load bias respetando alineación de página.
Dirección efectiva = load bias + VA ELF. Compare los bytes antes de fijar el
breakpoint; las bases cambian entre procesos si ASLR está activo.

Intervención acotada: con T4, pare en transform_record no se alcanzará la función
porque el límite se comprueba antes. Con símbolos, pare en main justo después de
load_config, eleve cfg.limit de 16 a 17, registre el valor anterior y continúe.
La ejecución intervenida debe escribir; otra ejecución nueva sin cambio retorna 6.
No cambie record.length a un valor fuera de su capacidad: invalidaría las premisas
de los accesos a memoria. El crackme de P4 conserva su intervención sobre eax.

## Preparación de EV-01

Copie exactamente alumnado/RE-01 y las entradas a la VM de generación. Verifique
el SHA-256 contra MANIFIESTO.json antes y después de copiar. Realice allí las
ejecuciones del escenario con capturas reales de tiempo, resultados y registros.
No recompile dentro de esa VM si quiere que el ejecutable extraído coincida.
La imagen EV-01 y las capturas de RAM/red siguen siendo materiales independientes
que requieren producción. RE-01 no abre sockets: el eventual servicio/transporte
local deberá ser otro componente documentado con su propia actividad.

## Fuentes técnicas

- [GNU Binutils: objcopy](https://www.sourceware.org/binutils/docs/binutils/objcopy.html): separación de depuración y eliminación de símbolos.
- [GDB: Separate Debug Files](https://www.sourceware.org/gdb/current/onlinedocs/gdb.html/Separate-Debug-Files.html): símbolos externos y correspondencia de secciones.
- [GNU C Library: manual](https://www.gnu.org/software/libc/manual/): streams, apertura exclusiva y tratamiento de errores.
