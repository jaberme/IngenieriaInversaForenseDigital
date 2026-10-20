# Ejemplos comprobables de forense: DEMO-F

Son datos sintéticos creados localmente; **no son EV-01–EV-04, WIN-01 ni CTRL-01**.
No hay captura PCAP ni RAM. La fila `DEMO-RED-1` es un evento conceptual de un ejercicio
matemático. No se atribuyen acciones a personas ni se pretende reproducir un incidente real.

Requisitos: Python 3.11 o posterior. Para la imagen: `mkfs.ext4` (e2fsprogs) y
`mmls`, `fsstat`, `fls`, `icat` (The Sleuth Kit). Se ejecuta desde la raíz del repo.
No necesita red, montaje, dispositivos de bloques ni privilegios administrativos.

```bash
# Crea un destino nuevo; rechaza sobrescribir uno existente.
python3 temas-forense/ejemplos/generar.py temas-forense/ejemplos/salida/mi-demo --disco

# Guarda el inventario fuera del directorio que se inventaría.
python3 temas-forense/ejemplos/integridad.py temas-forense/ejemplos/salida/mi-demo/datos > temas-forense/ejemplos/salida/inventario.json

python3 temas-forense/ejemplos/cronologia.py temas-forense/ejemplos/salida/mi-demo/datos/tiempos.csv > temas-forense/ejemplos/salida/cronologia.csv
python3 temas-forense/ejemplos/intervalos_tcp.py

# Controles positivos y negativos; deja su propia muestra, logs y resultado.txt.
make -C temas-forense check-ejemplos
```

| Archivo | Función y límite |
|---|---|
| `generar.py` | Crea texto, log, SQLite y CSV; opcionalmente volumen ext4 de 16 MiB y disco MBR de 17 MiB, sector 512 y LBA 2048. Es construcción, no adquisición. |
| `integridad.py` | SHA-256 por bloques e inventario de archivos regulares estables. Rechaza enlaces; no ofrece adquisición atómica ni defensa frente a sustitución concurrente. |
| `cronologia.py` | Admite `AAAA-MM-DDThh:mm:ss[.sss]Z` o con offset `±hh:mm`; conserva original, resta adelanto en ms y añade cotas. Rechaza zona ausente, mayor precisión, fechas no válidas e incertidumbre negativa. No interpreta segundos intercalares ni estima la calibración. |
| `intervalos_tcp.py` | Unión de intervalos de posiciones de secuencia en una dirección; ejemplo 260 bytes sumados / 160 posiciones cubiertas. No lee PCAP ni reensambla contenido. |
| `consulta.sql` | Consulta el esquema **docente** `eventos`; no pretende ser un esquema de navegador o aplicación real. |
| `verificar.py` | Verifica hashes, alteración, tiempo/DST, intervalos, SQLite con/sin WAL, TSK y manifiesto. No ejecutar con `python -O`: desactivaría las aserciones. |

Cada generación calcula su manifiesto; UUID, fechas y versiones pueden variar. No hay
un hash universal del disco generado. Los datos escritos en los ficheros son fijos,
pero los metadatos del sistema de archivos no se presentan como históricos.

El experimento WAL copia el conjunto mientras el escritor de la prueba está inactivo
tras confirmar la fila; no avala copiar secuencialmente los archivos de cualquier
base en uso. Abrir una copia puede afectar a auxiliares: el original se conserva.

La instalación local permitió consultar la ayuda de Volatility 3. Las plantillas de
RAM requieren una captura y símbolos compatibles; los comandos dc3dd/libewf y
Wireshark/tshark requieren las herramientas y evidencias indicadas en los capítulos.
Su ejecución no forma parte de estos controles. Véase [validación](../validacion.md).
