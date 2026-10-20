# Ollama existente y Qwen3 8B: registros de inferencia

Modelo: `qwen3:8b`, digest
`500a1f067a9f782620b40bee6f7b0c89e17ae61f686b92c24933e4ca4b2b8b41`,
Q4_K_M, Ollama 0.34.4. No se descargaron otros pesos ni se hicieron inferencias
online. Contexto solicitado y observado: 32768; `think:false`, temperatura 0, CPU.

## Lectura de los resultados

**La respuesta del modelo contiene errores técnicos.** La
[revisión del analista](revision-del-analista.json) y la tabla del capítulo
separan sus afirmaciones de lo confirmado por las instrucciones y los controles.
Los dos Markdown de Q03 conservan literalmente el texto del modelo; no son la
solución validada del ejercicio.

- [Prueba breve](humo.json): generación de `OLLAMA_OK`, separada del ensayo MCP.
- [Metadatos](show.json) y [proceso cargado](ps.json): identidad, capacidades,
  contexto y ausencia de VRAM utilizada.
- [Interpretación de Q03 en turno 4](Q03-interpretacion-turno04.md).
- [Respuesta final original, sin corregir](Q03-respuesta-modelo-sin-revisar.md).
- [Revisión y parámetros](revision-del-analista.json).

## Intentos y archivos completos

| Intento | Alcance y resultado |
| --- | --- |
| Q01 | Desarrollo interrumpido: seis consultas fallidas después de una apertura con formato crudo incorrecto y diagnóstico insuficiente del puente inicial. |
| Q02 | Exploración amplia: trece consultas propuestas por Qwen y ejecutadas sin errores MCP; dos búsquedas dieron `not_in_procedure`. El analista interrumpió tras inspeccionar salida, principal y configuración. Sin respuesta final. |
| Q03 | Pregunta guiada con `0x101942` proporcionada por el analista. Seis respuestas de Ollama; cinco propuestas de herramientas, cuatro ejecutadas por MCP y una sobrescritura bloqueada por el anfitrión. El anfitrión exportó el bundle y cerró de nuevo. Respuesta final conservada, con errores revisados. |

`Q01.tar.gz`, `Q02.tar.gz` y `Q03.tar.gz` contienen las peticiones y respuestas
completas, catálogos, consultas originales, proyecciones y diagnósticos. Las
carpetas archivadas se denominan Q01/Q02/Q03. Se excluye únicamente la copia del
ejecutable, ya identificada y distribuida en el repositorio. El manifiesto de cada
intento enumera SHA-256 de sus archivos. Q02/Q03 incluyen la versión del anfitrión
ejecutado; Q01 conserva los intercambios anteriores a la corrección del puente.

Para inspeccionar un archivo en un directorio nuevo:

```bash
mkdir /tmp/rea-qwen-registros
tar -xzf Q03.tar.gz -C /tmp/rea-qwen-registros
```

Q03 incluye `conversacion.json`, los seis pares `turno-*-peticion/respuesta.json`,
las observaciones completas de REA y `bundle.json`. La explicación técnica aparece
tanto en el turno 4, acompañado de una propuesta de herramienta, como en la
respuesta final. Leer solo el último mensaje no describe todo el intercambio.
Las llamadas `host-export` y `host-close` son del anfitrión y no se atribuyen a
Qwen. La exportación que el modelo propuso con `overwrite:true` fue bloqueada y no
se contó como una llamada MCP ejecutada.

**Corrección de conservación.** El `bundle.json` original dentro de Q03 quedó
vacío: el primer anfitrión lo exportó después de que el cierre retirase los
registros de REA. Los JSON completos de las consultas no se perdieron. Se corrigió
el anfitrión para exportar antes de cada cierre y se repitieron las dos consultas
de código, sin nueva inferencia. La prueba conservó un bundle no vacío y comprobó
igualdad íntegra de los JSON y de sus `evidence_id` con Q03. Véanse
`Q03-bundle-recuperado.json`, `conservacion-resultado.json` y
`conservacion.tar.gz`. El archivo original Q03 y su manifiesto siguen intactos;
el bundle recuperado no se presenta como una exportación originalmente realizada
por el modelo.

Se comprobaron las huellas de las copias del ejecutable y del original. El
anfitrión no ejecutó la muestra en estos ensayos. Los tres controles previos de
E01 y su checksum proceden del autor y mantienen su identidad separada.
