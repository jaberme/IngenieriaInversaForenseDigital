# PE-01 1.0 — Material de P2

ejemplos-pe.exe es un ejecutable benigno de consola para Windows x86-64, compilado
del mismo ejemplos.c propio del curso que se usa para el ELF de P2. El código de
la aplicación imprime resultados de operaciones aritméticas y compara un argumento
con una cadena fija. No implementa red, persistencia, acceso al registro de Windows,
borrado ni modificación de documentos. El runtime añade arranque y servicios de C.
La finalidad de esta entrega es exclusivamente el análisis estático de P2.

## Material y software

Incluye el PE, MANIFIESTO.json, SHA256SUMS y los avisos del runtime en licencias/.
Necesita file, sha256sum, GNU objdump, xxd y Binary Ninja o Ghidra en el laboratorio.
No necesita Windows, Wine ni compilador. El docente conserva fuente y símbolos.
MANIFIESTO.json documenta procedencia e integridad: no es un manifiesto de aplicación
Windows RT_MANIFEST ni una firma digital Authenticode.

## Recepción y análisis

Extraiga el archivo en una carpeta nueva. Desde alumnado:

```bash
sha256sum -c SHA256SUMS
file ejemplos-pe.exe
objdump -p ejemplos-pe.exe > cabeceras.txt
objdump -h ejemplos-pe.exe > secciones.txt
```

1. Registre hash, tamaño, Machine, Magic del Optional Header y Subsystem.
2. Identifique ImageBase, AddressOfEntryPoint, alineamientos, secciones y DLL importadas.
3. Calcule la VA preferida del entry point sumando ImageBase y RVA.
4. Seleccione su sección. Calcule delta=RVA-VirtualAddress, compruebe que los bytes
   buscados caben en VirtualSize y SizeOfRawData, y obtenga PointerToRawData+delta.
5. Use xxd -g 1 -s OFFSET -l 16 ejemplos-pe.exe y contraste con el desensamblador.
6. Busque un RVA de .bss sin respaldo en fichero y explique por qué la fórmula no
   permite leer sus bytes desde disco. Diferencie tamaño virtual y raw.
7. Registre DYNAMIC_BASE, NX_COMPAT y el directorio de relocations. Distinga base
   preferida y efectiva. No deduzca una carga real de esos indicadores.
8. Explique por qué imports, cadenas y timestamp no prueban actividad histórica.

Trabaje sobre una copia sin ejecutarla. Entregue cabeceras, cálculo con comprobación
de bytes, caso sin bytes en fichero y comparación con el ELF. El timestamp COFF se
ha fijado a cero al enlazar; la fecha de generación figura en el manifiesto externo.
