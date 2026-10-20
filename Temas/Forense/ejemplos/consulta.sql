-- Esquema DOCENTE, no atribuido a un navegador, journald ni Windows.
SELECT id, tiempo, operacion, ruta, resultado
FROM eventos
WHERE ruta = '/docs/informe.txt'
ORDER BY id;
