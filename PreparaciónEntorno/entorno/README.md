# Laboratorio de ingeniería inversa

Plataforma de referencia para preparar el aula: **Ubuntu 24.04 LTS x86-64 en VM**.
Es una elección de base para validar, no una afirmación de que el aprovisionamiento
se haya ensayado aquí en una VM limpia. En hosts ARM se necesita una VM x86-64 o un
puesto remoto del aula con ese entorno, no recompilar silenciosamente para otra ABI.

## Núcleo

GCC/make/binutils, GDB, strace, file, xxd, Python, SquashFS, Binwalk y UPX.
**Binary Ninja de escritorio** será la interfaz principal; se instala por el canal
oficial con la licencia que facilite la asignatura. Antes del curso se verifica
apertura ELF/PE, HLIL, tipos y guardado `.bndb`. No se presupone que la edición gratuita
cubra toda la práctica ni se exige API o modo sin interfaz. No guardar licencias en Git.
[Guía oficial](https://docs.binary.ninja/guide/index.html).

Ghidra es alternativa funcional, validada con su JDK correspondiente. No se exige
instalar además radare2, Cutter, OFRAK, Frida y pwndbg. Cutter utiliza Rizin.
MinGW-w64 es necesario **en la preparación docente** para generar el PE de P2;
el alumnado puede recibir ese fichero ya compilado. No se necesita Windows para leerlo.

## Preparación

Desde una VM de laboratorio (el script modifica paquetes del sistema):

```bash
bash PreparaciónEntorno/entorno/provision.sh
bash PreparaciónEntorno/entorno/provision.sh --check
make -C muestras/build all
```

El script instala el núcleo por apt y falla ante errores; no descarga ejecuciones
`latest` ni instala extensiones desde ramas cambiantes. UPX se instala desde paquete
si existe; si no, se prepara por el docente con versión/checksum oficial verificados.
Binary Ninja se instala aparte. `--check` comprueba comandos, **no valida licencias,
GUI ni resolución de prácticas**; completar el checklist es obligatorio.

Recomendación de capacidad de la VM compartida con forense: 4 vCPU, 8 GiB RAM y
60 GiB libres, a medir con el paquete final. Para muestras de memoria mayores puede
hacer falta más RAM/disco. No se obliga a descargar corpora completos de cientos de GB.

Red solo para aprovisionar; ejecución docente en VM aislada, sin acceso a producción
ni carpetas personales compartidas. Muestras y resultados en directorios separados;
snapshot limpio antes de experimentar. Un contenedor no sustituye toda esta VM.

## Reproducibilidad y ampliaciones

Registrar versiones de SO, kernel, compilador, bibliotecas, herramientas y hashes de
muestras en el manifiesto de la edición. Congelar la VM tras el piloto; apt por sí
solo no fija versiones idénticas entre fechas. `make` reproduce el procedimiento,
no garantiza bytes idénticos entre toolchains.

AArch64/MIPS y QEMU son ampliaciones: instalar sus compiladores/binutils aparte.
Los ELF dinámicos requieren cargador y bibliotecas compatibles, por ejemplo
`qemu-aarch64 -L /usr/aarch64-linux-gnu ...` en la imagen donde ese sysroot se haya
validado. No se promete emular un dispositivo completo con QEMU-user.
