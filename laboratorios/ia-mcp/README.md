# Ingeniería inversa con MCP e IA

## Alcance comprobado

Se ejecutó REA 6.7.0 como servidor MCP por stdio, con Ghidra 12.1.4,
Node.js 24.20.0 y OpenJDK 25.0.2 en Linux x86-64. Se conservaron el catálogo,
inventarios, referencias, dossiers de cinco funciones y el bundle de Evidence.
Tres ejecuciones sobre una copia de la muestra propia confirmaron la salida
válida, el rechazo de una salida existente y el rechazo de configuración inválida.

La ampliación local utiliza **el Ollama existente con `qwen3:8b`**, sin descargar
pesos adicionales. Se comprobó inferencia y se conectaron las propuestas del
modelo con REA mediante el anfitrión mínimo `ollama_mcp.py`. Los intentos y la
revisión de sus respuestas se conservan por separado de la primera entrega.
No se invocó un proveedor online ni se ejecutó OpenCode. El reproductor original
`reproducir.py` sigue comprobando solo MCP/motor y el objeto.

## Repetir la sesión de herramientas

Requisitos: Linux x86-64, Python 3.11+, Node/npm compatible con REA 6.7.0,
Ghidra con su descompilador nativo, JDK completo y procps. Ghidra se obtiene
desde su [publicación oficial](https://github.com/NationalSecurityAgency/ghidra/releases/tag/Ghidra_12.1.4_build).
Sustituir las rutas absolutas de ejemplo por las instalaciones propias.

Desde la raíz del repositorio:

```bash
export GHIDRA_INSTALL_DIR=/ruta/absoluta/ghidra_12.1.4_PUBLIC
export JAVA_HOME=/ruta/absoluta/jdk
npx --yes rea-agents@6.7.0 doctor --provider ghidra --json
python3 laboratorios/ia-mcp/reproducir.py --salida /tmp/rea-repeticion-01
```

El directorio de salida debe ser nuevo. La primera invocación de `npx` puede
descargar el paquete y sus dependencias. No se registra REA en clientes personales.
El reproductor utiliza únicamente la muestra cuyo hash está fijado en el código,
hace una copia, registra las consultas, exporta el bundle y cierra el objeto antes
de ejecutar tres controles sobre la copia. No modifica el paquete original.

Los selectores son una repetición guiada para esa muestra con base Ghidra
`0x100000`. No constituyen un algoritmo de descubrimiento general. Para otro
objeto, motor o base se revisan el inventario y las coordenadas. `Conexion` es un
cliente secuencial mínimo para este laboratorio, no un SDK general de MCP.

## Usar el Ollama instalado paso a paso

1. Comprobar el servicio y el modelo:

   ```bash
   ollama --version
   ollama list
   ollama show qwen3:8b
   ```

   Si el servicio no responde, arrancar `ollama serve` en otra terminal. Si el
   modelo ya está en la lista, reutilizarlo. Solo si falta se descarga con
   `ollama pull qwen3:8b`.

2. Probar una inferencia breve, separada de MCP:

   ```bash
   curl --fail http://127.0.0.1:11434/api/chat \
     -H 'Content-Type: application/json' \
     -d '{"model":"qwen3:8b","stream":false,"think":false,
          "messages":[{"role":"user","content":"Responde exactamente OLLAMA_OK"}],
          "options":{"temperature":0,"num_ctx":8192,"num_predict":64}}'
   ```

   Comprobar `message.content`, no solo el estado HTTP. La prueba local devolvió
   `OLLAMA_OK`; esto acredita generación de texto, no análisis del objeto.

3. Preparar Python y el motor, desde la raíz del repositorio:

   ```bash
   python3 -m venv /tmp/rea-qwen-venv
   /tmp/rea-qwen-venv/bin/pip install -r laboratorios/ia-mcp/requirements.txt
   export GHIDRA_INSTALL_DIR=/ruta/absoluta/ghidra_12.1.4_PUBLIC
   export JAVA_HOME=/ruta/absoluta/jdk
   npx --yes rea-agents@6.7.0 doctor --provider ghidra --json
   ```

   Puede usarse directamente un Python 3.11+ que ya tenga `jsonschema`.

4. Ejecutar el anfitrión con una salida nueva:

   ```bash
   /tmp/rea-qwen-venv/bin/python laboratorios/ia-mcp/ollama_mcp.py \
     --modelo qwen3:8b --contexto 32768 --salida /tmp/rea-qwen-sesion-01
   ```

   El programa llama únicamente al Ollama de `127.0.0.1:11434`, selecciona once
   herramientas de REA, limita la apertura a la copia identificada y restringe la
   exportación a una ruta nueva. No ejecuta ni modifica la muestra. El modelo
   propone las consultas; el anfitrión valida y las traduce a MCP. Los errores
   completos se devuelven al modelo para que pueda corregir los argumentos.

5. Revisar `respuesta-final.md`, las respuestas originales `turno-*-respuesta.json`
   y `conversacion.json`. Cada consulta conserva el JSON completo de REA y la
   proyección entregada al modelo, con el hash del original. Los dossiers
   proyectados incluyen hasta 80 instrucciones y declaran las que faltan.
   `bundle.json` conserva las observaciones de REA. Exportación y cierre hechos
   por el anfitrión se etiquetan aparte de las propuestas del modelo.

   El puente actualizado exporta **antes** de cada cierre, incluido el que pida
   Qwen. Si ya hay un bundle utiliza `bundle-host-01.json` u otro nombre nuevo
   sin sobrescribir. Exportar tras el cierre puede dar un contenedor vacío.

6. Comparar las conclusiones con instrucciones y controles. Una alternativa
   guiada da al modelo la dirección ya seleccionada por el analista:

   ```bash
   /tmp/rea-qwen-venv/bin/python laboratorios/ia-mcp/ollama_mcp.py \
     --modelo qwen3:8b --contexto 32768 \
     --prompt laboratorios/ia-mcp/prompt-guiado.txt \
     --salida /tmp/rea-qwen-guiada-01
   ```

   Esta modalidad proporciona `0x101942` como ayuda humana. No debe presentarse
   como descubrimiento autónomo de la función.

La copia usada anuncia 40960 tokens de contexto en `/api/show`; se configuraron
32768 y se comprobó el contexto cargado. El ensayo usa `think:false` y
`temperature:0`. Registrar además versión, digest de modelo, cuantización y
recursos de ejecución; estos parámetros no garantizan igualdad de respuestas.

## Alternativas con OpenCode

La ruta online del capítulo usa `opencode-online.json`, `/connect` y `/models`;
se mantienen las claves fuera del material versionable. La alternativa local
`opencode-local.json` selecciona el alias `rea-local`:

```bash
ollama create rea-local -f laboratorios/ia-mcp/Modelfile
```

El Modelfile usa ahora `qwen3:8b` y 32768 tokens. La documentación de integración
OpenCode/Ollama recomienda 64k+, por lo que no se afirma que esta copia de 40960
tokens satisfaga esa recomendación ni que el cliente funcione con la misma
economía de contexto del anfitrión mínimo. OpenCode no se ha ejecutado en esta
verificación. El flujo local probado corresponde al programa Python anterior.

Las plantillas deniegan por defecto herramientas y habilitan consultas concretas.
Esa política pertenece al anfitrión; no crea aislamiento del sistema operativo.
El modo local requiere preparar las dependencias y revisar la red por separado
si se necesita una estación sin salida. La inferencia online puede recibir los
fragmentos que el anfitrión incluya, aunque el binario se analice localmente.

## Registros

[2026-10-20-E01](registros/2026-10-20-E01/) conserva el bundle completo de la sesión
final repetida, una selección del catálogo de entradas, resumen de observaciones,
retornos, salidas y manifiesto con SHA-256. El nombre E01 identifica la primera
entrega archivada; la carpeta de trabajo final fue `Libro/build/ia-mcp-E02`.
La primera ejecución de desarrollo también completó los tres controles.

La [ampliación de inferencia local](registros/2026-10-20-QWEN/README.md) conserva
Q01–Q03. Q03 terminó con seis respuestas de Ollama, cinco propuestas de herramienta,
cuatro llamadas MCP ejecutadas y una sobrescritura bloqueada por el anfitrión.
La explicación del modelo contiene errores sobre los bytes del acumulador y la
división por 26; la revisión los corrige sin alterar la respuesta original.
El bundle original de Q03 quedó vacío por un error de orden del puente inicial.
Se conservó ese original, se corrigió la exportación y se repitieron las dos
consultas sin inferencia: coincidieron sus JSON e identificadores. El bundle
recuperado y su prueba están archivados por separado.

Los manifiestos, resúmenes y revisiones archivados en las dos carpetas anteriores
delimitan qué se ejecutó y qué se contrastó documentalmente. Los paquetes,
proyectos temporales de Ghidra, ejecutables duplicados y PDF permanecen fuera de
los registros versionables.
