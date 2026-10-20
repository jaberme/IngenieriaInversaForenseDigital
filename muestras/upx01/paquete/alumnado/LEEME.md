# UPX-01 1.0 — Empaquetado benigno para P5

Esta entrega contiene original (ELF x86-64 PIE stripped) y empaquetado (su derivado
UPX). Ambos proceden de ejemplos.c del curso, una demostración de aritmética y
comparación de una cadena. El código propio no implementa red, persistencia ni
borrado/modificación de documentos. Empaquetar no convierte esa función en malware.

## Materiales y preparación

Linux x86-64 con glibc compatible con MANIFIESTO.json, GNU file/readelf/strings,
sha256sum, cmp y UPX. Edición validada: UPX 4.2.2, paquete Ubuntu noble upx-ucl
4.2.2-3. El docente debe prepararlo antes de clase. La muestra empaquetada ya se
entrega; para comprobarla y desempaquetarla necesita la herramienta. No necesita
compilar ni disponer del fuente para realizar este bloque.

El manifiesto contiene procedencia, tamaños, hashes y versiones. UPX no se incluye
en el archivo: se obtiene por el gestor de paquetes de la VM o su canal oficial.
Los avisos del stub están en licencias/. Esta muestra resuelve el bloque de
empaquetado; antidebug-dbg y GDB siguen siendo materiales del otro bloque de P5.

## Recepción y recuperación

Extraiga el archivo en una carpeta nueva de la VM; desde alumnado, en Bash:

```bash
sha256sum -c SHA256SUMS
upx --version
mkdir sesion
upx -t empaquetado > sesion/test.txt 2>&1
printf '%s\n' "$?" > sesion/test.exit
upx -d -o sesion/recuperado empaquetado > sesion/desempaquetar.txt 2>&1
printf '%s\n' "$?" > sesion/desempaquetar.exit
sha256sum original empaquetado sesion/recuperado > sesion/hashes.txt
cmp -s original sesion/recuperado
printf '%s\n' "$?" > sesion/cmp.exit
```

Use upx-ucl en lugar de upx si ese es el nombre disponible. Lea cada retorno:
si test o recuperación fallan, conserve el error y no trate un fichero ausente o
anterior como resultado válido. No vuelva a usar sesion; cada intento tendrá una
carpeta nueva. cmp=0 significa igualdad; 1 significa diferencia; 2, error.

## Empaquetar y comparar

```bash
upx -9 -o sesion/propio original > sesion/empaquetar.txt 2>&1
printf '%s\n' "$?" > sesion/empaquetar.exit
upx -t sesion/propio
stat -c '%n %s bytes' original empaquetado sesion/recuperado
readelf -h -lW -SW original > sesion/original-elf.txt
readelf -h -lW -SW empaquetado > sesion/empaquetado-elf.txt
strings -a original > sesion/original-strings.txt
strings -a empaquetado > sesion/empaquetado-strings.txt
```

Compare el fichero propio con el entregado, anotando versión, opciones y hashes;
no presuponga igualdad con otra versión. Distinga ausencia de tabla de secciones
y ausencia de segmentos cargables. El entry point empaquetado corresponde al arranque
del stub, por lo que no se reutiliza como dirección de main del original.

Dentro de la VM ejecute las tres representaciones con la misma cadena válida,
una cadena incorrecta de 13 caracteres y una cadena vacía. Por cada proceso guarde
stdout, stderr y retorno. Repita sin argumentos: el uso incluye argv[0], así que
las rutas de invocación diferentes pueden cambiar ese texto sin cambiar la lógica.
Documente la diferencia, sin borrar resultados para forzar una coincidencia.

## Entrega y límites

Incluya comandos, versiones, hashes, tamaños finales, retornos UPX/cmp, tabla de
entry point/segmentos/secciones y comparación de comportamiento. No confunda test
de integridad de UPX con prueba de benignidad, ni recuperación automática con
desempaquetado manual. La equivalencia de unas entradas no prueba todos los casos.
El análisis de entropía es opcional y no permite por sí solo identificar malware.
