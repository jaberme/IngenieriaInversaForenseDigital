# Ejemplos ejecutables de los temas

Desde la raíz del repositorio, en Linux x86-64:

```bash
make -C temas/ejemplos check
```

Requiere GCC, binutils, Make y Python 3.8 o posterior. Construye tres variantes del
mismo parser: `-O0 -g`, `-O2 -g` y una copia stripped del segundo enlace. Todas son
PIE de forma explícita; no dependen del valor por defecto de la distribución.
Los compiladores se ejecutan con avisos estrictos tratados como errores.

`config.c` define CFG1, un formato **propio del ejemplo**, no un estándar externo:

| Bytes | Interpretación |
|---|---|
| 0–3 | Firma ASCII `CFG1` |
| 4 | Modo 0 o 1 |
| 5 | Reservado, debe ser 0 |
| 6–7 | Límite little-endian de 0 a 1024 |
| 8 en adelante | Carga binaria de longitud no superior al límite |

El modo 1 produce la suma de los bytes de carga; el modo 0 produce cero. No modifica
ficheros ni usa red. `decode` devuelve 1 para cabecera corta, 2 para firma incorrecta,
3 para campos fuera de contrato y 4 para exceso de carga. En error no escribe la
estructura de salida. Sus punteros deben designar objetos válidos, disjuntos y con
los tamaños indicados; el formato de disco no es un volcado de la estructura C.

El proceso devuelve 0 en éxito, `10 + retorno_decode` si falla el formato, 2 por
argumentos, 3 por apertura y 4 por error de lectura/cierre. Leer como máximo 1033
bytes permite detectar exceso sobre el máximo válido de 1032 sin cargar el fichero
completo. Solo se muestra el resultado si la validación ha terminado correctamente.

`verificar.py` genera 15 entradas y comprueba salida, stderr y retorno en las tres
variantes; añade falta de argumentos y fichero ausente: **51 ejecuciones**. Los casos
cubren fronteras, NUL, bytes con bit alto, longitud menor que el límite, byte alto del
límite, exceso y entradas inválidas. Comprueba además entropías 0, 1 y 8 bits/byte.
Los artefactos van en `salida/`, ignorado por Git.

`ofuscacion.c` compara una función directa con su versión por estados y explica un
predicado opaco y una identidad MBA usando `uint32_t`. Se compila en `-O0` y `-O2`:
cada variante comprueba nueve casos de flujo, nueve predicados y 81 pares MBA. Son
casos frontera que complementan la explicación algebraica, no una prueba exhaustiva.

`verificar_literal.py` lee el literal real de `muestras/build/ejemplos.c`, verifica
los bytes almacenados en dos binarios y ejecuta ocho controles con entradas de
12, 13 y 14 caracteres, incluida una entrada incorrecta de longitud 13. El literal
`R3v3rs1ng_UAL` tiene **13 caracteres y 14 bytes con NUL**. `make check` construye
también el banco x86 necesario para esta comprobación, sin modificar sus fuentes.

```bash
python3 temas/ejemplos/entropia.py temas/ejemplos/salida/config-strip --window 4096
make -C muestras/build x86 antidebug
python3 temas/ejemplos/verificar_gdb.py
```

La última orden necesita GDB y permiso del sistema para `ptrace`: verifica siete
sesiones y registra un control sin depurador. No cambia políticas del sistema ni
descarga símbolos. Guarda logs en `salida/`. Un sandbox que prohíba ptrace impedirá
esta parte; no se interpreta esa prohibición como una protección del programa.

Para recorrer manualmente la GUI de Binary Ninja, abrir `salida/config-strip` y
seguir M2. El código fuente sirve de contraste posterior: los nombres propuestos
y el grafo del tema son explicaciones, no una captura ni una salida inventada de la GUI.
CFG1 no implementa el caso RE-01 de la asignatura.
