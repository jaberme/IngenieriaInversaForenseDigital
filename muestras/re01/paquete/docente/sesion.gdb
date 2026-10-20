set pagination off
set confirm off
set debuginfod enabled off
set disable-randomization off
file ../alumnado/RE-01
symbol-file RE-01.debug
set args ../alumnado/entradas/valida.cfg ../alumnado/entradas/documento.txt resultado-gdb.txt
break transform_record
run
info proc mappings
p/x &main
info args
p *cfg
p *record
disassemble /r transform_record
finish
info registers eax
continue
