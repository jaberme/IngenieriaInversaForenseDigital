# Ingeniería inversa y análisis forense digital

![Un microprocesador descompuesto en capas y una unidad de almacenamiento conectados mediante flujos de datos y una cronología de evidencias.](documentos/ingenieria-inversa-forense.png)

Material complementario del libro **Reversing y forense digital. De la teoría a
la evidencia**, de **José Antonio Álvarez Bermejo**.

Este repositorio reúne muestras, código, prácticas y herramientas para estudiar
cómo funciona un programa y cómo se interpretan las huellas que conserva un
sistema. El recorrido conecta ensamblador, formatos ejecutables y depuración con
preservación, análisis de evidencias y elaboración del informe técnico. Incluye
un laboratorio de ingeniería inversa asistida por inteligencia artificial mediante
REA, MCP y Ollama.

## Qué encontrarás

| Directorio | Contenido |
| --- | --- |
| [Practicas/IngenieriaInversa](Practicas/IngenieriaInversa/) | Seis prácticas con enunciados y soluciones PDF: C y ensamblador, binarios, análisis estático, depuración, protecciones y firmware. Incluye el caso adicional del router. |
| [Practicas/Forense](Practicas/Forense/) | Cinco prácticas sobre custodia, adquisición, análisis de sistemas, redes y dictamen; modelo editable de consentimiento y encargo. |
| [Temas/ingenieriaInversa/ejemplos](Temas/ingenieriaInversa/ejemplos/) | Código C y Python para estudiar validaciones, entropía, ofuscación y depuración. |
| [Temas/Forense/ejemplos](Temas/Forense/ejemplos/README.md) | Ejemplos sintéticos de integridad, cronología, SQLite, intervalos TCP y generación de imágenes didácticas. |
| [laboratorios](laboratorios/) | Desarrollo de P1, fundamentos C++, ejemplos ELF/CFG1 y sesiones REA/MCP con modelos de lenguaje. |
| [muestras](muestras/README.md) | Fuentes y paquetes RE-01, PE-01 y UPX-01, con entradas, registros y huellas de verificación. |
| [PreparaciónEntorno](PreparaciónEntorno/) | Guías, scripts y listas de comprobación para preparar los entornos de ingeniería inversa y forense. |
| [documentos](documentos/) | Lámina PE 101, modelo de consentimiento en PDF e ilustración de presentación. |

## Primeros pasos

Clona el repositorio y ejecuta las órdenes desde su raíz:

```bash
git clone https://github.com/jaberme/IngenieriaInversaForenseDigital.git material-libro
cd material-libro
```

Consulta la preparación de [ingeniería inversa](PreparaciónEntorno/entorno/README.md)
o de [análisis forense](PreparaciónEntorno/entorno-forense/README.md) según el
recorrido que vayas a seguir. Cada ejercicio indica sus herramientas; el ejemplo
siguiente utiliza Linux, GCC, Make, Binutils y Python 3.11 o posterior.

### Compilar e inspeccionar un ejecutable ELF

```bash
make -C laboratorios/ejemplos all
python3 laboratorios/ejemplos/generar_cfg1.py
file laboratorios/ejemplos/salida/config-strip
readelf -hW laboratorios/ejemplos/salida/config-strip
```

Se generan variantes con y sin símbolos, dos ejemplos de enlazado y las entradas
del parser CFG1. Puedes contrastar el resultado con su
[código fuente](laboratorios/ejemplos/config.c) y el
[script de consulta para Binary Ninja](laboratorios/ejemplos/bn_resumen.py).

### Explorar un ejemplo forense sintético

```bash
python3 Temas/Forense/ejemplos/intervalos_tcp.py
```

El ejemplo distingue bytes observados y posiciones de secuencia únicas cuando
hay retransmisiones. La [ficha de DEMO-F](Temas/Forense/ejemplos/README.md) describe
los demás generadores y sus controles.

## Muestras para practicar

- [RE-01](muestras/re01/README.md): utilidad de mantenimiento para reconstruir
  validaciones, transformaciones y salidas mediante análisis estático y dinámico.
- [PE-01](muestras/pe01/README.md): ejecutable PE para estudiar cabeceras,
  secciones y correspondencias entre direcciones y posiciones en el archivo.
- [UPX-01](muestras/upx01/README.md): versiones original, empaquetada y recuperada
  para observar los efectos del empaquetado y comprobar la recuperación.
- [Firmware del router](Practicas/IngenieriaInversa/P6-extra-router/): imagen y
  material gráfico del caso práctico adicional.

Los paquetes incluyen material para alumnado y docentes. Consulta sus fichas de
validación para identificar la edición, las herramientas y el alcance de los
resultados conservados.

## Ingeniería inversa con MCP e inteligencia artificial

El [laboratorio REA/MCP](laboratorios/ia-mcp/README.md) desarrolla dos rutas:

- **Inferencia local:** Ollama con `qwen3:8b` y un anfitrión Python que convierte
  las propuestas del modelo en consultas MCP sobre REA/Ghidra.
- **Inferencia online:** configuración de OpenCode y REA para utilizar un
  proveedor de modelos desde un motor de análisis local.

La ficha incluye instrucciones paso a paso, configuraciones, peticiones de
análisis y registros. La inferencia local dispone de ensayos conservados y revisión
de los errores del modelo; la ruta online y la alternativa OpenCode están
documentadas. Las respuestas del modelo se contrastan con instrucciones,
referencias y controles de ejecución.

## Procedencia y uso de los materiales

Las muestras de reversing, los datos sintéticos DEMO-F y los corpus forenses
externos se identifican por separado. Los registros conservan las condiciones y
las rutas del entorno en el que se obtuvieron. Los corpus externos, como Lone
Wolf, se obtienen desde su distribución de origen.

Los documentos y componentes de terceros conservan sus atribuciones y condiciones
de uso, recogidas en sus fichas y archivos de licencia. La imagen de cabecera es
una ilustración conceptual generada con IA: [procedencia y prompt](documentos/imagen-readme.md).
