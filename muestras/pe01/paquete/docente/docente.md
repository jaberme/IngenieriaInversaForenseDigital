# PE-01 — Procedimiento y criterios docentes

Muestra propia construida del ejemplos.c original del curso, sin cambiar sus
funciones. El binario de consola AMD64 se obtiene con MinGW-w64; GNU objcopy elimina
la tabla COFF y la depuración de la copia del alumnado. Los imports permanecen.
El docente conserva el PE con símbolos DWARF y los informes de la misma compilación.
No se genera un PDB ni se afirma compatibilidad con un flujo de depuración MSVC.

## Comportamiento del código propio

El fuente calcula retorno=42, if=1, bucle=45, llamada=6 y los imprime. Sin argumento
imprime uso y retorna 1; con R3v3rs1ng_UAL imprime el mensaje de acierto y retorna 0;
con otra cadena retorna 1 e imprime el error. Si hay argumentos adicionales, los
ignora. La comparación no protege ningún dato real. La salida de texto puede
depender de la codificación y consola; aquí no se ha ejecutado la versión Windows.
Estas afirmaciones proceden del fuente conservado, no de una captura de ejecución PE.

La aplicación no llama a APIs de red, persistencia, registro de Windows ni borrado.
La libc puede incorporar imports que no aparecen directamente en main. Se estudian
como dependencias del programa y de su runtime, sin atribuirles acciones históricas.
Redirigir stdout sería un efecto del entorno que ejecuta la aplicación.

## Construcción en Linux

Necesita Python 3, gcc-mingw-w64-x86-64 y binutils-mingw-w64-x86-64, con sus
cabeceras, runtime y dependencias. No necesita librerías Python adicionales.
En el archivo docente, ejecutar construir.py reconstruye desde ejemplos.c local:

```bash
python3 construir.py --salida /tmp/pe01-edicion-nueva
```

No reutilice una ruta existente: el constructor se niega a sobrescribir ediciones.
Puede indicar --cc RUTA y --binutils-prefix RUTA_PREFIJO para una toolchain extraída
en otra carpeta. --debs CARPETA registra nombres, versiones y hashes de los paquetes
empleados; no los incluye en la distribución. build.json conserva los comandos.
El docente conserva ambos archivos tar.gz. Revise licencias/ al cambiar de toolchain.

--no-insert-timestamp y SOURCE_DATE_EPOCH=0 (también durante objcopy) producen
timestamp COFF cero; no corresponde a una actividad
ocurrida en 1970. --dynamicbase y --nxcompat declaran compatibilidad con ASLR/DEP;
la base efectiva depende de la carga. Las fechas del manifiesto y tar.gz impiden
presentar el paquete completo como reproducible byte a byte. El ELF de P2 tiene
un build independiente: compartir fuente no equivale a compartir instrucciones.

## Solución y validación

RESULTADOS.md contiene secciones, cálculo numérico, bytes e imports de esta edición.
inspeccion.json deriva esos datos de la cabecera; cabeceras.txt, secciones.txt y
entry.asm conservan una lectura independiente con GNU objdump. El constructor
verifica las secciones conservadas entre el PE docente y el stripped, la tabla COFF
vacía, el entry point respaldado en disco y la falta de bytes de .bss.

El inspector usa aritmética little endian y distingue tamaños raw y virtual. En
este PE los directorios de imports/relocaciones son RVA; el directorio de certificados
es una excepción del formato y describe un offset de fichero, aquí ausente.
Es un inspector acotado a nuestras muestras PE32+, no un parser general de PE hostiles.
Un fallo estructural hace fallar la construcción antes de sellar el paquete.

El alumnado calcula direcciones en el PE stripped, porque eliminar secciones puede
cambiar offsets de fichero aunque conserve las RVA. El entry point corresponde al
arranque del runtime; localice main con el desensamblado docente antes de equipararlos.
Los valores exactos solo valen para el hash de MANIFIESTO.json.

## Fuentes técnicas

- [Microsoft: PE Format](https://learn.microsoft.com/en-us/windows/win32/debug/pe-format).
- [GNU ld: opciones PE](https://sourceware.org/binutils/docs/ld/Options.html).
- [GNU objcopy](https://sourceware.org/binutils/docs/binutils/objcopy.html).
