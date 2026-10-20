# RE-01 — Utilidad de mantenimiento, edición 1.0

Muestra sintética propia para P3 (análisis estático) y P4 (contraste dinámico).
Necesita Linux x86-64 con el cargador y glibc compatibles con MANIFIESTO.json.
Contiene un ELF PIE sin símbolos de depuración; conserva imports dinámicos.
El manifiesto identifica los bytes distribuidos. No reconstruya el ejecutable
entre P3 y P4: las direcciones dependen de esos bytes.

## Recepción

Extraiga el paquete en la VM del curso. Desde la carpeta alumnado:

```bash
sha256sum -c SHA256SUMS
file RE-01
readelf -h -lW RE-01
```

Cada sesión tendrá una carpeta nueva de resultados. El programa usa tres argumentos:

```text
./RE-01 CONFIG DOCUMENTO SALIDA_NUEVA
```

Las rutas son relativas al directorio actual. Las entradas son ficheros regulares;
trabaje con copias de los ficheros sintéticos adjuntos. Los formatos usan ASCII y
saltos LF. No se precisan privilegios administrativos ni acceso a red.

## P3: preguntas a resolver antes de ejecutar

1. Localice las entradas, los campos de configuración y las estructuras de memoria.
2. Determine anchuras, rangos, orden de validación y errores distinguibles.
3. Explique cómo cambian letras, números y signos; determine la suma de comprobación.
4. Determine qué se escribe y qué sucede cuando la salida ya existe.
5. Identifique cada condición decisiva en ensamblador y en el pseudocódigo.
6. Anote las predicciones de la siguiente matriz, sin ejecutar aún el programa.

| Prueba | Configuración | Documento | Predicción |
|---|---|---|---|
| T1 | entradas/valida.cfg | entradas/documento.txt | completar |
| T2 | entradas/valida.cfg | entradas/vacio.txt | completar |
| T3 | entradas/limite.cfg | entradas/limite.txt | completar |
| T4 | entradas/limite.cfg | entradas/exceso.txt | completar |
| T5 | entradas/opcion-invalida.cfg | entradas/documento.txt | completar |

## P4: contrastar las predicciones

Desde alumnado, usando una carpeta que todavía no exista:

```bash
mkdir sesion-p4
./RE-01 entradas/valida.cfg entradas/documento.txt sesion-p4/T1.txt \
  > sesion-p4/T1.stdout 2> sesion-p4/T1.stderr
printf '%s\n' "$?" > sesion-p4/T1.exit
```

Repita T2–T5 con salidas distintas. Registre retorno, stdout, stderr, existencia y
contenido de salida y hashes de entradas antes/después. Las redirecciones de shell
crean los logs incluso si RE-01 no llega a crear el fichero de resultado.

Con GDB use `set disable-randomization off`, `starti`, `info files` e
`info proc mappings`. Calcule la dirección cargada a partir del ELF y los mapeos,
compruebe los bytes con `x/8i DIRECCION` y fije el breakpoint. Las direcciones
estáticas de P3 son VA ELF, no direcciones absolutas de cualquier ejecución.
El docente dispone de símbolos externos de la misma compilación.

`strace -f -o sesion-p4/T1.strace ./RE-01 ...` permite observar accesos a archivos;
use una salida nueva para que el ensayo no quede condicionado por T1 anterior.
Documente el efecto de la observación sobre la ejecución. El control de intervención
se realiza sobre un proceso nuevo y se compara con otro sin alteraciones.

## Entrega

Incluya hash del ejecutable, versión de herramientas, grafo de las funciones,
campos con offsets y anchuras, especificación de entradas/salidas, cinco predicciones
y su contraste. Distinga comportamiento observado y capacidad inferida.

## Procedencia y alcance

Uso y redistribución en el contexto docente del curso. Todos los datos son sintéticos.
Este paquete no es una imagen forense ni acredita ejecución histórica. El programa
no se comunica por red. El futuro caso forense deberá generar y documentar sus
ejecuciones, copias y registros por separado.
