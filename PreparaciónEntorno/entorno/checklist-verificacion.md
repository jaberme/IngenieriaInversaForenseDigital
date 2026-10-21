# Verificación previa — Ingeniería inversa

No marcar como completado sin ejecutarlo en la VM que recibirá el alumnado.

- [ ] SO x86-64, recursos medidos y snapshot; registrar versiones y fecha.
- [ ] `bash PreparaciónEntorno/entorno/provision.sh --check` sin ausencias del núcleo.
- [ ] Binary Ninja abre ELF/PE, permite HLIL, tipos/comentarios y guardar/reabrir `.bndb`;
      comprobar licencia y operación sin conexión durante la clase.
- [ ] `make -C muestras/build all pe firmware`; registrar toolchain y hashes de salida.
- [ ] P1: confirmar 42/1/45/6, comparar `-O0`/`-O2`, clave de 13 caracteres.
- [ ] P2: conversiones ELF/PE comprobadas; `.bss` sin bytes en fichero.
- [ ] P3/P4: generar RE-01 y ensayar cinco entradas, tipos y rutas de error.
- [ ] GDB puede trazar en la VM; documentar ASLR, símbolos y restricciones de ptrace.
- [ ] P5: control anti-debug y UPX empaquetar/desempaquetar/comparar sobre copias.
- [ ] P6: extracción SquashFS como usuario sin privilegios, offset y hashes.
- [ ] Manifiesto de licencias, herramientas y muestras, sin credenciales en el repo.
- [ ] Piloto con tiempos y entrega del paquete de alumnado separado de soluciones.

Pendientes de esta revisión: instalación completa de VM, GUI/licencia de Binary Ninja,
paquete RE-01/FW-01 definitivo y piloto de las prácticas.
