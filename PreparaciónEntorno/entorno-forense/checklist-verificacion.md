# Verificación previa — Forense

- [ ] Apt sin errores; `bash PreparaciónEntorno/entorno-forense/provision.sh --check` correcto.
- [ ] Registrar SO/kernel, paquetes, versión exacta de Volatility, dependencias y snapshot.
- [ ] Añadir el directorio `bin` del entorno virtual al PATH del aula o usar su ruta
      completa al ejecutar `vol`; comprobar `vol -h` en la sesión del alumnado.
- [ ] Generar CTRL-01, comprobar identidad, protección y destino separado de adquisición.
- [ ] PF2 completo: raw, EWF, todos los segmentos, exportación y verificación de datos.
- [ ] Demostración RAM en VM compatible, con registro de efectos y hash del resultado.
- [ ] EV-01–EV-04 y WIN-01 con manifiesto y permisos; no mezclar incidentes distintos.
- [ ] Volatility analiza EV-02 con SO y símbolos correctos sin conexión; guardar plugins usados.
- [ ] TSK y SQLite interpretan las muestras, incluidas unidades de offset y WAL/SHM.
- [ ] Captura y registros correlacionables, reloj/cobertura conocidos y flujo recuperable.
- [ ] Artefactos Windows y semánticas por versión contrastados en mini-caso separado.
- [ ] Cronología CSV conserva tiempos originales, UTC y límites de precisión.
- [ ] Soluciones reales y reproducibles, independientes de salidas inventadas.
- [ ] Espacio/tiempo medidos y estaciones suficientes para la defensa.

Este checklist **no se declara completado** por revisar documentos o la sintaxis del
script. La producción del caso y la prueba integral de la VM quedan para la siguiente fase.
