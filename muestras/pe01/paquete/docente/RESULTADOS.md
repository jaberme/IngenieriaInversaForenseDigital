# PE-01 — resultados estáticos de esta edición

Tamaño: 39936 bytes. SHA-256: `ed7640c92c67e0308d8a7c2edc21f3d7c25f2c435a8ed17cde23cdcd0eac5015`.
Machine: 0x8664. Magic: 0x20b. Subsystem: 3 (consola). Timestamp COFF: 0.
ImageBase: 0x140000000. SectionAlignment: 0x1000.
FileAlignment: 0x200. DllCharacteristics: 0x160.

| Sección | RVA | VirtualSize | RawPtr | RawSize |
|---|---|---|---|---|
| .text | 0x1000 | 0x6c88 | 0x400 | 0x6e00 |
| .data | 0x8000 | 0xc0 | 0x7200 | 0x200 |
| .rdata | 0x9000 | 0xe00 | 0x7400 | 0xe00 |
| .pdata | 0xa000 | 0x4b0 | 0x8200 | 0x600 |
| .xdata | 0xb000 | 0x52c | 0x8800 | 0x600 |
| .bss | 0xc000 | 0xb80 | 0x0 | 0x0 |
| .idata | 0xd000 | 0x6d0 | 0x8e00 | 0x800 |
| .CRT | 0xe000 | 0x60 | 0x9600 | 0x200 |
| .tls | 0xf000 | 0x10 | 0x9800 | 0x200 |
| .reloc | 0x10000 | 0x84 | 0x9a00 | 0x200 |

## Conversión comprobada del entry point

```text
RVA = 0x1410
VA preferida = 0x140000000 + 0x1410 = 0x140001410
Delta en .text = 0x1410 - 0x1000 = 0x410
Offset = 0x400 + 0x410 = 0x810
Bytes (16): 55 48 89 e5 48 83 ec 20 48 8b 05 c1 83 00 00 c7
```

El delta y los 16 bytes caben en VirtualSize y RawSize. entry.asm contrasta los
bytes con objdump. La VA preferida no es una base observada en ejecución.

## Caso sin bytes en fichero

La sección .bss comienza en RVA 0xc000, con VirtualSize 0xb80
y RawSize 0x0. Esa región se inicializa al cargar y no admite
convertir su primer RVA en un offset con bytes de la variable. RawPtr=0 no autoriza
a leer la cabecera MZ como si fuera el contenido de .bss.

## Imports y límites

DLL importadas: KERNEL32.dll, msvcrt.dll.
La lista exacta de funciones está en inspeccion.json y cabeceras.txt. Los imports
del runtime no prueban acciones del usuario ni actividad histórica. El PE no se ha
ejecutado: este informe valida la parte estática de P2. El parser es acotado a estas
muestras PE32+ y no se ofrece como analizador universal de ficheros hostiles.
