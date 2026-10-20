# Ejecutar con config-strip abierto: consola o File / Run Script... de Binary Ninja.
# La interfaz proporciona bv (BinaryView del documento actual).
bv.update_analysis_and_wait()
for f in sorted(bv.functions, key=lambda funcion: funcion.start):
    refs = list(bv.get_code_refs(f.start))
    print(f"0x{f.start:x} {f.name} xrefs={len(refs)}")

for cadena in bv.get_strings():
    if "CFG1" in cadena.value:
        print(f"cadena VA=0x{cadena.start:x} {cadena.value!r}")
        for ref in bv.get_code_refs(cadena.start):
            print(f"  referencia VA=0x{ref.address:x}")
