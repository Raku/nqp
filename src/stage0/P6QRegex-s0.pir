.include 'cclass.pasm'
.include 'except_severity.pasm'
.include 'except_types.pasm'
.include 'iglobals.pasm'
.include 'interpinfo.pasm'
.include 'iterator.pasm'
.include 'sysinfo.pasm'
.include 'stat.pasm'
.include 'datatypes.pasm'

.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.loadlib "nqp_bigint_ops"

.loadlib "trans_ops"

.loadlib "io_ops"

.namespace []
.sub "_block1000"  :anon :subid("160_1338064447.841")
    .param pmc param_1002 :slurpy
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 0
    .const 'Sub' $P2241 = "375_1338064447.841" 
    capture_lex $P2241
    .const 'Sub' $P2232 = "373_1338064447.841" 
    capture_lex $P2232
    .const 'Sub' $P1551 = "336_1338064447.841" 
    capture_lex $P1551
    .const 'Sub' $P1012 = "162_1338064447.841" 
    capture_lex $P1012
    .const 'Sub' $P1007 = "161_1338064447.841" 
    capture_lex $P1007
.annotate 'line', 1
    .lex "@ARGS", param_1002
    .lex "GLOBALish", $P1003
    .lex "$?PACKAGE", $P1004
.annotate 'line', 855
    new $P100, "Undef"
    set $P1005, $P100
    .lex "$p6regex", $P1005
.annotate 'line', 860
    .const 'Sub' $P1007 = "161_1338064447.841" 
    newclosure $P1010, $P1007
    set $P1006, $P1010
    .lex "MAIN", $P1006
.annotate 'line', 1
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 9
    .const 'Sub' $P1012 = "162_1338064447.841" 
    capture_lex $P1012
    $P1012()
.annotate 'line', 237
    .const 'Sub' $P1551 = "336_1338064447.841" 
    capture_lex $P1551
    $P1551()
.annotate 'line', 852
    .const 'Sub' $P2232 = "373_1338064447.841" 
    capture_lex $P2232
    $P2232()
.annotate 'line', 855
    get_hll_global $P101, "GLOBAL"
    nqp_get_package_through_who $P103, $P101, "QRegex"
    nqp_get_package_through_who $P104, $P103, "P6Regex"
    get_who $P105, $P104
    set $P106, $P105["Compiler"]
    $P107 = $P106."new"()
    set $P1005, $P107
.annotate 'line', 856
    set $P101, $P1005
    unless_null $P101, vivify_1085
    new $P101, "Undef"
  vivify_1085:
    $P101."language"("QRegex::P6Regex")
.annotate 'line', 857
    set $P101, $P1005
    unless_null $P101, vivify_1086
    new $P101, "Undef"
  vivify_1086:
    get_hll_global $P103, "GLOBAL"
    nqp_get_package_through_who $P104, $P103, "QRegex"
    nqp_get_package_through_who $P105, $P104, "P6Regex"
    get_who $P106, $P105
    set $P107, $P106["Grammar"]
    $P101."parsegrammar"($P107)
.annotate 'line', 858
    set $P101, $P1005
    unless_null $P101, vivify_1087
    new $P101, "Undef"
  vivify_1087:
    get_hll_global $P103, "GLOBAL"
    nqp_get_package_through_who $P104, $P103, "QRegex"
    nqp_get_package_through_who $P105, $P104, "P6Regex"
    get_who $P106, $P105
    set $P107, $P106["Actions"]
    $P101."parseactions"($P107)
.annotate 'line', 1
    set $P101, $P1006
    set $P103, param_1002
    if $P103, if_2235
    set $P101, $P103
    goto if_2235_end
  if_2235:
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P104, "ModuleLoader"
    getinterp $P105
    set $P106, $P105["context"]
    $P104."set_mainline_module"($P106)
    .const '' $P2236 = "161_1338064447.841" 
    set $P107, param_1002
    $P108 = $P2236($P107 :flat)
    set $P101, $P108
  if_2235_end:
    .return ($P101)
    .const 'Sub' $P2238 = "374_1338064447.841" 
    .return ($P2238)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post376") :outer("160_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 0
    .const 'Sub' $P1001 = "160_1338064447.841" 
    .local pmc block
    set block, $P1001
    nqp_dynop_setup 
    nqp_bigint_setup 
    getinterp $P110
    get_class $P111, "LexPad"
    get_class $P112, "NQPLexPad"
    $P110."hll_map"($P111, $P112)
    nqp_create_sc $P113, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783"
    .local pmc cur_sc
    set cur_sc, $P113
    cur_sc."set_description"("src\\stage2\\gen\\NQPP6QRegex.pm")
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P114, "ModuleLoader"
    $P115 = $P114."load_setting"("NQPCORE")
    block."set_outer_ctx"($P115)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P114, "ModuleLoader"
    $P114."load_module"("QRegex")
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P114, "ModuleLoader"
    $P114."load_module"("NQPHLL")
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P114, "ModuleLoader"
    $P114."load_module"("QAST")
    set $S100, "AQAAAEAAAAAGAAAAcAAAAAgAAACwAAAAYBsAAJMAAACQJAAAYDUAAAAAAABgNQAAAAAAAGA1AABgNQAAAAAAAAQAAAAFAAAADgAAAA8AAABEAAAARQAAAHMBAAAAAAAAdQEAAHYBAAAIAgAACQIAAAEAAAAAAAAADAAAAAoBAADTAAAAAA0AADMBAAACEwAA/QEAAKAXAAAAAgAAVhgAAAYCAAA2GQAADwIAAPoZAAAAAAAAhwAAAAAAAAAAAAAACgAIAAAAAgAAAAIAAAAAAIgAAAADAAAAAgABAAAAFwAAAAYAAAACAAEAAAA+AAAABwAAAAIAAQAAAEwAAAAIAAAAAgABAAAAUgAAAAkAAAACAAEAAABXAAAACgAAAAIAAAAAAIkAAAALAAAAAgAAAAAAigAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAAAAAADAAAAAACLAAAAAAAAAAEAAAAKAAAAAAAKALgAAAANAAAAAgACAAAACAAAABAAAAACAAIAAAAJAAAAEQAAAAIAAgAAAAoAAAASAAAAAgACAAAACwAAABMAAAACAAIAAAAMAAAAFAAAAAIAAgAAAA0AAAAVAAAAAgACAAAAEAAAABYAAAACAAIAAAASAAAAFwAAAAIAAgAAABMAAAAYAAAAAgABAAAATQAAABkAAAACAAEAAABOAAAAGgAAAAIAAQAAAE8AAAAbAAAAAgABAAAAUAAAABwAAAACAAEAAABRAAAAHQAAAAIAAQAAAGEAAAAeAAAAAgABAAAAYgAAAB8AAAACAAEAAABjAAAAIAAAAAIAAQAAAGQAAAAhAAAAAgABAAAAZQAAACIAAAACAAEAAABmAAAAIwAAAAIAAQAAAGcAAAAkAAAAAgABAAAAaAAAACUAAAACAAEAAABpAAAAJgAAAAIAAQAAAGoAAAAnAAAAAgABAAAAawAAACgAAAACAAEAAABsAAAAKQAAAAIAAQAAAG0AAAAqAAAAAgABAAAAbgAAACsAAAACAAEAAABvAAAALAAAAAIAAQAAAHAAAAAtAAAAAgABAAAAcQAAAC4AAAACAAEAAAByAAAALwAAAAIAAQAAAHMAAAAwAAAAAgABAAAAdAAAADEAAAACAAEAAAB1AAAAMgAAAAIAAQAAAHYAAAAzAAAAAgAAAAAAAwAAADQAAAACAAEAAAB4AAAANQAAAAIAAQAAAHkAAAA2AAAAAgABAAAAegAAADcAAAACAAEAAAB7AAAAOAAAAAIAAQAAAHwAAAA5AAAAAgABAAAAfQAAADoAAAACAAEAAAB+AAAAOwAAAAIAAQAAAH8AAAA8AAAAAgABAAAAgAAAAD0AAAACAAEAAACBAAAAPgAAAAIAAQAAAIIAAAA/AAAAAgABAAAAgwAAAEAAAAACAAEAAACEAAAAQQAAAAIAAQAAAIUAAABCAAAAAgAAAAAADgAAAEMAAAACAAMAAAADAAAARgAAAAIAAwAAAAQAAABHAAAAAgADAAAABQAAAEgAAAACAAMAAAAGAAAASQAAAAIAAwAAAAcAAABKAAAAAgADAAAACAAAAEsAAAACAAMAAAAJAAAATAAAAAIAAwAAAAoAAABNAAAAAgADAAAACwAAAE4AAAACAAMAAAAMAAAATwAAAAIAAwAAAA0AAABQAAAAAgADAAAADgAAAFEAAAACAAMAAAAPAAAAUgAAAAIAAwAAABAAAABTAAAAAgADAAAAEQAAAFQAAAACAAMAAAASAAAAVQAAAAIAAwAAABMAAABWAAAAAgADAAAAFAAAAFcAAAACAAMAAAAVAAAAWAAAAAIAAwAAABYAAABZAAAAAgADAAAAFwAAAFoAAAACAAMAAAAYAAAAWwAAAAIAAwAAABkAAABcAAAAAgADAAAAGgAAAF0AAAACAAMAAAAbAAAAXgAAAAIAAwAAABwAAABfAAAAAgADAAAAHQAAAGAAAAACAAMAAAAeAAAAYQAAAAIAAwAAAB8AAABiAAAAAgADAAAAIAAAAGMAAAACAAMAAAAhAAAAZAAAAAIAAwAAACIAAABlAAAAAgADAAAAIwAAAGYAAAACAAMAAAAkAAAAZwAAAAIAAwAAACUAAABoAAAAAgADAAAAJgAAAGkAAAACAAMAAAAnAAAAagAAAAIAAwAAACgAAABrAAAAAgADAAAAKQAAAGwAAAACAAMAAAAqAAAAbQAAAAIAAwAAACsAAABuAAAAAgADAAAALAAAAG8AAAACAAMAAAAtAAAAcAAAAAIAAwAAAC4AAABxAAAAAgADAAAALwAAAHIAAAACAAMAAAAwAAAAcwAAAAIAAwAAADEAAAB0AAAAAgADAAAAMgAAAHUAAAACAAMAAAAzAAAAdgAAAAIAAwAAADQAAAB3AAAAAgADAAAANQAAAHgAAAACAAMAAAA2AAAAeQAAAAIAAwAAADcAAAB6AAAAAgADAAAAOAAAAHsAAAACAAMAAAA5AAAAfAAAAAIAAwAAADoAAAB9AAAAAgADAAAAOwAAAH4AAAACAAAAAAACAAAAfwAAAAIAAAAAAAQAAACAAAAAAgAAAAAABQAAAIEAAAACAAAAAAAGAAAAggAAAAIAAAAAAAcAAACDAAAAAgAAAAAACAAAAIQAAAACAAAAAAAJAAAAhQAAAAIAAAAAAAoAAACGAAAAAgAAAAAACwAAAIcAAAACAAAAAAAMAAAAiAAAAAIAAAAAAA0AAACJAAAAAgAAAAAADwAAAIoAAAACAAAAAAAQAAAAiwAAAAIAAAAAABEAAACMAAAAAgAAAAAAEgAAAI0AAAACAAAAAAATAAAAjgAAAAIAAAAAABQAAACPAAAAAgAAAAAAFQAAAJAAAAACAAAAAAAWAAAAkQAAAAIAAAAAABcAAACSAAAAAgAAAAAAGAAAAJMAAAACAAAAAAAZAAAAlAAAAAIAAAAAABoAAACVAAAAAgAAAAAAGwAAAJYAAAACAAAAAAAcAAAAlwAAAAIAAAAAAB0AAACYAAAAAgAAAAAAHgAAAJkAAAACAAAAAAAfAAAAmgAAAAIAAAAAACAAAACbAAAAAgAAAAAAIQAAAJwAAAACAAAAAAAiAAAAnQAAAAIAAAAAACMAAACeAAAAAgAAAAAAJAAAAJ8AAAACAAAAAAAlAAAAoAAAAAIAAAAAACYAAAChAAAAAgAAAAAAJwAAAKIAAAACAAAAAAAoAAAAowAAAAIAAAAAACkAAACkAAAAAgAAAAAAKgAAAKUAAAACAAAAAAArAAAApgAAAAIAAAAAACwAAACnAAAAAgAAAAAALQAAAKgAAAACAAAAAAAuAAAAqQAAAAIAAAAAAC8AAACqAAAAAgAAAAAAMAAAAKsAAAACAAAAAAAxAAAArAAAAAIAAAAAADIAAACtAAAAAgAAAAAAMwAAAK4AAAACAAAAAAA0AAAArwAAAAIAAAAAADUAAACwAAAAAgAAAAAANgAAALEAAAACAAAAAAA3AAAAsgAAAAIAAAAAADgAAACzAAAAAgAAAAAAOQAAALQAAAACAAAAAAA6AAAAtQAAAAIAAAAAADsAAAC2AAAAAgAAAAAAPAAAALcAAAACAAAAAAA9AAAAuAAAAAIAAAAAAD4AAAC5AAAAAgAAAAAAPwAAALoAAAACAAAAAABAAAAAuwAAAAIAAAAAAEEAAAC8AAAAAgAAAAAAQgAAAL0AAAACAAAAAABDAAAAvgAAAAIAAAAAAEQAAAC/AAAAAgAAAAAARQAAAMAAAAACAAAAAABGAAAAwQAAAAIAAAAAAEcAAADCAAAAAgAAAAAASAAAAMMAAAACAAAAAABJAAAAxAAAAAIAAAAAAEoAAADFAAAAAgAAAAAASwAAAMYAAAACAAAAAABMAAAAxwAAAAIAAAAAAE0AAADIAAAAAgAAAAAATgAAAAAAAAAAAAAABAAAAAAAAAACAAAAAAABAAAAAgADAAAAAQAAAAIAAQAAAEwAAAACAAIAAAAHAAAABAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAgABAAAATgAAAAAAAAAAAAAACgAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAQAAAABAAAAAAAAAAIAAAACAAAAAQAAAAAAAAACAAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAQAAAAAAAAAAgACAAAABwAAAAMAAgABAAAATAAAAAoACgAAAMkAAAAEAAAAAAAAAAAAygAAAAQAAQAAAAAAAADLAAAABAACAAAAAAAAAMwAAAAEAAMAAAAAAAAAzQAAAAQABAAAAAAAAADOAAAABAAFAAAAAAAAAM8AAAAEAAYAAAAAAAAA0AAAAAQABwAAAAAAAADRAAAABAAIAAAAAAAAANIAAAAEAAkAAAAAAAAAAgADAAAAAQAAAAMAAgAAAAAAAQAAAAMAAAAAAIwAAAAAAAAATwAAAAoAAAAAAAoAXwAAANQAAAACAAIAAAAIAAAA1QAAAAIAAgAAAAkAAADWAAAAAgACAAAACgAAANcAAAACAAIAAAALAAAA2AAAAAIAAgAAAAwAAADZAAAAAgACAAAADQAAANoAAAACAAIAAAAQAAAA2wAAAAIAAgAAABIAAADcAAAAAgACAAAAEwAAAN0AAAACAAMAAAA9AAAA3gAAAAIAAwAAAD4AAADfAAAAAgADAAAAPwAAAOAAAAACAAMAAABAAAAA4QAAAAIAAwAAAEEAAADiAAAAAgAAAAAAVgAAAOMAAAACAAMAAABDAAAA5AAAAAIAAwAAAEQAAADlAAAAAgADAAAARQAAAOYAAAACAAMAAABGAAAA5wAAAAIAAwAAAEcAAADoAAAAAgADAAAASAAAAOkAAAACAAMAAABJAAAA6gAAAAIAAwAAAEoAAADrAAAAAgADAAAASwAAAOwAAAACAAMAAABMAAAA7QAAAAIAAwAAAE0AAADuAAAAAgADAAAATgAAAO8AAAACAAMAAABPAAAA8AAAAAIAAwAAAFAAAADxAAAAAgADAAAAUQAAAPIAAAACAAMAAABSAAAA8wAAAAIAAwAAAFMAAAD0AAAAAgADAAAAVAAAAPUAAAACAAMAAABVAAAA9gAAAAIAAwAAAFYAAAD3AAAAAgADAAAAVwAAAPgAAAACAAMAAABYAAAA+QAAAAIAAwAAAFkAAAD6AAAAAgADAAAAWgAAAPsAAAACAAMAAABbAAAA/AAAAAIAAwAAAFwAAAD9AAAAAgADAAAAXQAAAP4AAAACAAAAAABQAAAA/wAAAAIAAAAAAFEAAAAAAQAAAgAAAAAAUgAAAAEBAAACAAAAAABTAAAAAgEAAAIAAAAAAFQAAAADAQAAAgAAAAAAVQAAAAQBAAACAAAAAABXAAAABQEAAAIAAAAAAFgAAAAGAQAAAgAAAAAAWQAAAAcBAAACAAAAAABaAAAACAEAAAIAAAAAAFsAAAAJAQAAAgAAAAAAXAAAAAoBAAACAAAAAABdAAAACwEAAAIAAAAAAF4AAAAMAQAAAgAAAAAAXwAAAA0BAAACAAAAAABgAAAADgEAAAIAAAAAAGEAAAAPAQAAAgAAAAAAYgAAABABAAACAAAAAABjAAAAEQEAAAIAAAAAAGQAAAASAQAAAgAAAAAAZQAAABMBAAACAAAAAABmAAAAFAEAAAIAAAAAAGcAAAAVAQAAAgAAAAAAaAAAABYBAAACAAAAAABpAAAAFwEAAAIAAAAAAGoAAAAYAQAAAgAAAAAAawAAABkBAAACAAAAAABsAAAAGgEAAAIAAAAAAG0AAAAbAQAAAgAAAAAAbgAAABwBAAACAAAAAABvAAAAHQEAAAIAAAAAAHAAAAAeAQAAAgAAAAAAcQAAAB8BAAACAAAAAAByAAAAIAEAAAIAAAAAAHMAAAAhAQAAAgAAAAAAdAAAACIBAAACAAAAAAB1AAAAIwEAAAIAAAAAAHYAAAAkAQAAAgAAAAAAdwAAACUBAAACAAAAAAB4AAAAJgEAAAIAAAAAAHkAAAAnAQAAAgAAAAAAegAAACgBAAACAAAAAAB7AAAAKQEAAAIAAAAAAHwAAAAqAQAAAgAAAAAAfQAAACsBAAACAAAAAAB+AAAALAEAAAIAAAAAAH8AAAAtAQAAAgAAAAAAgAAAAC4BAAACAAAAAACBAAAALwEAAAIAAAAAAIIAAAAwAQAAAgAAAAAAgwAAADEBAAACAAAAAACEAAAAMgEAAAIAAAAAAIUAAAAAAAAAAAAAAAMAAAAAAAAAAgAAAAAATwAAAAIAAwAAADwAAAACAAIAAAAHAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAwAAAAAAAAACAAIAAAAHAAAAAwACAAMAAAA8AAAAAwACAAAAAABPAAAAAwAAAAAAjQAAAAAAAACGAAAACgAAAAAACgA0AAAANAEAAAIAAgAAAAgAAAA1AQAAAgACAAAACQAAADYBAAACAAIAAAAKAAAANwEAAAIAAgAAAAsAAAA4AQAAAgADAAAAXwAAADkBAAACAAIAAAANAAAAOgEAAAIAAgAAABAAAAA7AQAAAgACAAAAEgAAADwBAAACAAIAAAATAAAAPQEAAAIAAwAAAGAAAAA+AQAAAgADAAAAYQAAAD8BAAACAAMAAABiAAAAQAEAAAIAAwAAAGMAAABBAQAAAgADAAAAZAAAAEIBAAACAAMAAABlAAAAQwEAAAIAAwAAAGYAAABEAQAAAgADAAAAZwAAAEUBAAACAAMAAABoAAAARgEAAAIAAwAAAGkAAABHAQAAAgADAAAAagAAAEgBAAACAAMAAABrAAAASQEAAAIAAwAAAGwAAABKAQAAAgADAAAAbQAAAEsBAAACAAMAAABuAAAATAEAAAIAAwAAAG8AAABNAQAAAgADAAAAcAAAAE4BAAACAAMAAABxAAAATwEAAAIAAwAAAHIAAABQAQAAAgADAAAAcwAAAFEBAAACAAMAAAB0AAAAUgEAAAIAAwAAAHUAAABTAQAAAgADAAAAdgAAAFQBAAACAAMAAAB3AAAAVQEAAAIAAwAAAHgAAABWAQAAAgADAAAAeQAAAFcBAAACAAMAAAB6AAAAWAEAAAIAAwAAAHsAAABZAQAAAgADAAAAfAAAAFoBAAACAAMAAAB9AAAAWwEAAAIAAwAAAH4AAABcAQAAAgADAAAAfwAAAF0BAAACAAMAAACAAAAAXgEAAAIAAwAAAIEAAABfAQAAAgADAAAAggAAAGABAAACAAMAAACDAAAAYQEAAAIAAwAAAIQAAABiAQAAAgADAAAAhQAAAGMBAAACAAMAAACGAAAAZAEAAAIAAwAAAIcAAABlAQAAAgADAAAAiAAAAGYBAAACAAMAAACJAAAAZwEAAAIAAwAAAIoAAAAAAAAAAAAAAAMAAAAAAAAAAgAAAAAAhgAAAAIAAwAAAF4AAAACAAIAAAAHAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAMAAAAAAAAAAgACAAAABwAAAAMAAgADAAAAXgAAAAoACwAAAGgBAAAEAAAAAAAAAAAAaQEAAAQAAQAAAAAAAABqAQAABAACAAAAAAAAAGsBAAAEAAMAAAAAAAAAbAEAAAQABAAAAAAAAABtAQAABAAFAAAAAAAAAG4BAAAEAAYAAAAAAAAAbwEAAAQABwAAAAAAAABwAQAABAAIAAAAAAAAAHEBAAAEAAkAAAAAAAAAcgEAAAQACgAAAAAAAAACAAAAAACGAAAAAwAAAAAAjgAAAAAAAACIAAAACgACAAAA/gEAAAIAAQAAAAEAAAD/AQAAAgAAAAAAjwAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAACIAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAIgAAAADAAAAAACQAAAAAAAAAIkAAAAKAAUAAAABAgAAAgADAAAAAQAAAAICAAACAAMAAAA8AAAAAwIAAAIAAwAAAF4AAAAEAgAAAgADAAAA1QAAAAUCAAACAAMAAACcAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAIkAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAiQAAAAMAAAAAAJEAAAAAAAAAigAAAAoAAwAAAAcCAAACAAYAAAABAAAACgIAAAIABgAAAAcAAAALAgAAAgAGAAAADgAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAACKAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAIoAAAADAAAAAACSAAAAAAAAAI8AAAAKAAMAAAAQAgAAAgAAAAAAAQAAABECAAACAAAAAABPAAAAEgIAAAIAAAAAAIYAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAjwAAAAMAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAACAAAABQAAAAAAAAABAAAAAgAAAAUAAAAQAAAAAQAAAAIAAAAFAAAAIAAAAAEAAAACAAAABQAAADAAAAABAAAAAgAAAAUAAABAAAAAAQAAAAIAAAAFAAAAUAAAAAEAAAACAAAABQAAAGAAAAABAAAAAgAAAAUAAABwAAAAAQAAAAIAAAAFAAAAgAAAAAEAAAACAAAABQAAAJAAAAABAAAAAgAAAAUAAACgAAAAAQAAAAIAAAAFAAAAsAAAAAEAAAACAAAABQAAAMAAAAABAAAAAgAAAAUAAADQAAAAAQAAAAIAAAAFAAAA4AAAAAEAAAACAAAABQAAAPAAAAABAAAAAgAAAAUAAAAAAQAAAQAAAAIAAAAFAAAAEAEAAAEAAAACAAAABQAAACABAAABAAAAAgAAAAUAAAAwAQAAAQAAAAIAAAAFAAAAQAEAAAEAAAACAAAABQAAAFABAAABAAAAAgAAAAUAAABgAQAAAQAAAAIAAAAFAAAAcAEAAAEAAAACAAAABQAAAIABAAABAAAAAgAAAAUAAACQAQAAAQAAAAIAAAAFAAAAoAEAAAEAAAACAAAABQAAALABAAABAAAAAgAAAAUAAADAAQAAAQAAAAIAAAAFAAAA0AEAAAEAAAACAAAABQAAAOABAAABAAAAAgAAAAUAAADwAQAAAQAAAAIAAAAFAAAAAAIAAAEAAAACAAAABQAAABACAAABAAAAAgAAAAUAAAAgAgAAAQAAAAIAAAAFAAAAMAIAAAEAAAACAAAABQAAAEACAAABAAAAAgAAAAUAAABQAgAAAQAAAAIAAAAFAAAAYAIAAAEAAAACAAAABQAAAHACAAABAAAAAgAAAAUAAACAAgAAAQAAAAIAAAAFAAAAkAIAAAEAAAACAAAABQAAAKACAAABAAAAAgAAAAUAAACwAgAAAQAAAAIAAAAFAAAAwAIAAAEAAAACAAAABQAAANACAAABAAAAAgAAAAUAAADgAgAAAQAAAAIAAAAFAAAA8AIAAAEAAAACAAAABQAAAAADAAABAAAAAgAAAAUAAAAQAwAAAQAAAAIAAAAFAAAAIAMAAAEAAAACAAAABQAAADADAAABAAAAAgAAAAUAAABAAwAAAQAAAAIAAAAFAAAAUAMAAAEAAAACAAAABQAAAGADAAABAAAAAgAAAAUAAABwAwAAAQAAAAIAAAAFAAAAgAMAAAEAAAACAAAABQAAAJADAAABAAAAAgAAAAUAAACgAwAAAQAAAAIAAAAFAAAAsAMAAAEAAAACAAAABQAAAMADAAABAAAAAgAAAAUAAADQAwAAAQAAAAIAAAAFAAAA4AMAAAEAAAACAAAABQAAAPADAAABAAAAAgAAAAUAAAAABAAAAQAAAAIAAAAFAAAAEAQAAAEAAAACAAAABQAAACAEAAABAAAAAgAAAAUAAAAwBAAAAQAAAAIAAAAFAAAAQAQAAAEAAAACAAAABQAAAFAEAAABAAAAAgAAAAUAAABgBAAAAQAAAAIAAAAFAAAAcAQAAAEAAAACAAAABQAAAIAEAAABAAAAAgAAAAUAAACQBAAAAQAAAAIAAAAFAAAAoAQAAAEAAAACAAAABQAAALAEAAABAAAAAgAAAAUAAADABAAAAQAAAAAAAAACAAAA0AQAAAAAAAACAAAABQAAANAEAAABAAAAAgAAAAUAAADgBAAAAQAAAAIAAAAFAAAA8AQAAAEAAAACAAAABQAAAAAFAAABAAAAAgAAAAUAAAAQBQAAAQAAAAIAAAAFAAAAIAUAAAEAAAACAAAABQAAADAFAAABAAAAAgAAAAUAAABABQAAAQAAAAIAAAAFAAAAUAUAAAEAAAACAAAABQAAAGAFAAABAAAAAgAAAAUAAABwBQAAAQAAAAIAAAAFAAAAgAUAAAEAAAACAAAABQAAAJAFAAABAAAAAgAAAAUAAACgBQAAAQAAAAIAAAAFAAAAsAUAAAEAAAACAAAABQAAAMAFAAABAAAAAgAAAAUAAADQBQAAAQAAAAIAAAAFAAAA4AUAAAEAAAACAAAABQAAAPAFAAABAAAAAgAAAAUAAAAABgAAAQAAAAIAAAAFAAAAEAYAAAEAAAACAAAABQAAACAGAAABAAAAAgAAAAUAAAAwBgAAAQAAAAIAAAAFAAAAQAYAAAEAAAACAAAABQAAAFAGAAABAAAAAgAAAAUAAABgBgAAAQAAAAIAAAAFAAAAcAYAAAEAAAACAAAABQAAAIAGAAABAAAAAgAAAAUAAACQBgAAAQAAAAIAAAAFAAAAoAYAAAEAAAACAAAABQAAALAGAAABAAAAAgAAAAUAAADABgAAAQAAAAIAAAAFAAAA0AYAAAEAAAACAAAABQAAAOAGAAABAAAAAgAAAAUAAADwBgAAAQAAAAIAAAAFAAAAAAcAAAEAAAACAAAABQAAABAHAAABAAAAAgAAAAUAAAAgBwAAAQAAAAIAAAAFAAAAMAcAAAEAAAACAAAABQAAAEAHAAABAAAAAgAAAAUAAABQBwAAAQAAAAIAAAAFAAAAYAcAAAEAAAACAAAABQAAAHAHAAABAAAAAgAAAAUAAACABwAAAQAAAAIAAAAFAAAAkAcAAAEAAAACAAAABQAAAKAHAAABAAAAAgAAAAUAAACwBwAAAQAAAAIAAAAFAAAAwAcAAAEAAAACAAAABQAAANAHAAABAAAAAgAAAAUAAADgBwAAAQAAAAIAAAAFAAAA8AcAAAEAAAACAAAABQAAAAAIAAABAAAAAgAAAAUAAAAQCAAAAQAAAAIAAAAFAAAAIAgAAAEAAAAAAAAAAwAAADAIAAAAAAAABAAAAAAAAAAwCAAAAQAAAAAAAAAEAAAAQAgAAAAAAAAAAAAABQAAAEAIAAAAAAAAAAAAAAYAAABACAAAAAAAAAUAAAAGAAAAQAgAAAEAAAAFAAAABgAAAOAMAAABAAAABQAAAAYAAAA0EAAAAQAAAAQAAAAAAAAAkBAAAAEAAAAAAAAABwAAAKAQAAAAAAAABAAAAAAAAACgEAAAAQAAAAQAAAAAAAAAsBAAAAEAAAAEAAAAAAAAAMAQAAABAAAACwAAAAAAAAAAAAEAAQABAAsAAAAAAAEAAAABAAEAAQALAAAAAAACAAAAAQABAAEACwAAAAAAAwAAAAEAAQABAAsAAAAAAAQAAAABAAEAAQALAAAAAAAFAAAAAQABAAEACwAAAAAABgAAAAEAAQABAAsAAAAAAAcAAAABAAEAAQALAAAAAAAIAAAAAQABAAEACwAAAAAACQAAAAEAAQABAAsAAAAAAAoAAAABAAEAAQALAAAAAAALAAAAAQABAAEACwAAAAAADAAAAAEAAQABAAsAAAAAAA0AAAABAAEAAQALAAAAAAAOAAAAAQABAAEACwAAAAAADwAAAAEAAQABAAsAAAAAABAAAAABAAEAAQALAAAAAAARAAAAAQABAAEACwAAAAAAEgAAAAEAAQABAAsAAAAAABMAAAABAAEAAQALAAAAAAAUAAAAAQABAAEACwAAAAAAFQAAAAEAAQABAAsAAAAAABYAAAABAAEAAQALAAAAAAAXAAAAAQABAAEACwAAAAAAGAAAAAEAAQABAAsAAAAAABkAAAABAAEAAQALAAAAAAAaAAAAAQABAAEACwAAAAAAGwAAAAEAAQABAAsAAAAAABwAAAABAAEAAQALAAAAAAAdAAAAAQABAAEACwAAAAAAHgAAAAEAAQABAAsAAAAAAB8AAAABAAEAAQALAAAAAAAgAAAAAQABAAEACwAAAAAAIQAAAAEAAQABAAsAAAAAACIAAAABAAEAAQALAAAAAAAjAAAAAQABAAEACwAAAAAAJAAAAAEAAQABAAsAAAAAACUAAAABAAEAAQALAAAAAAAmAAAAAQABAAEACwAAAAAAJwAAAAEAAQABAAsAAAAAACgAAAABAAEAAQALAAAAAAApAAAAAQABAAEACwAAAAAAKgAAAAEAAQABAAsAAAAAACsAAAABAAEAAQALAAAAAAAsAAAAAQABAAEACwAAAAAALQAAAAEAAQABAAsAAAAAAC4AAAABAAEAAQALAAAAAAAvAAAAAQABAAEACwAAAAAAMAAAAAEAAQABAAsAAAAAADEAAAABAAEAAQALAAAAAAAyAAAAAQABAAEACwAAAAAAMwAAAAEAAQABAAsAAAAAADQAAAABAAEAAQALAAAAAAA1AAAAAQABAAEACwAAAAAANgAAAAEAAQABAAsAAAAAADcAAAABAAEAAQALAAAAAAA4AAAAAQABAAEACwAAAAAAOQAAAAEAAQABAAsAAAAAADoAAAABAAEAAQALAAAAAAA7AAAAAQABAAEACwAAAAAAPAAAAAEAAQABAAsAAAAAAD0AAAABAAEAAQALAAAAAAA+AAAAAQABAAEACwAAAAAAPwAAAAEAAQABAAsAAAAAAEAAAAABAAEAAQALAAAAAABBAAAAAQABAAEACwAAAAAAQgAAAAEAAQABAAsAAAAAAEMAAAABAAEAAQALAAAAAABEAAAAAQABAAEACwAAAAAARQAAAAEAAQABAAsAAAAAAEYAAAABAAEAAQALAAAAAABHAAAAAQABAAEACwAAAAAASAAAAAEAAQABAAsAAAAAAEkAAAABAAEAAQALAAAAAABKAAAAAQABAAEACwAAAAAASwAAAAEAAQABAAsAAAAAAEwAAAABAAEAAQALAAAAAABNAAAAAQABAAEACwAAAAAATgAAAAEAAQABAAsAAAAAAE8AAAABAAEAAQALAAAAAABQAAAAAQABAAEACwAAAAAAUQAAAAEAAQABAAsAAAAAAFIAAAABAAEAAQALAAAAAABTAAAAAQABAAEACwAAAAAAVAAAAAEAAQABAAsAAAAAAFUAAAABAAEAAQALAAAAAABWAAAAAQABAAEACwAAAAAAVwAAAAEAAQABAAsAAAAAAFgAAAABAAEAAQALAAAAAABZAAAAAQABAAEACwAAAAAAWgAAAAEAAQABAAsAAAAAAFsAAAABAAEAAQALAAAAAABcAAAAAQABAAEACwAAAAAAXQAAAAEAAQABAAsAAAAAAF4AAAABAAEAAQALAAAAAABfAAAAAQABAAEACwAAAAAAYAAAAAEAAQABAAsAAAAAAGEAAAABAAEAAQALAAAAAABiAAAAAQABAAEACwAAAAAAYwAAAAEAAQABAAsAAAAAAGQAAAABAAEAAQALAAAAAABlAAAAAQABAAEACwAAAAAAZgAAAAEAAQABAAsAAAAAAGcAAAABAAEAAQALAAAAAABoAAAAAQABAAEACwAAAAAAaQAAAAEAAQABAAsAAAAAAGoAAAABAAEAAQALAAAAAABrAAAAAQABAAEACwAAAAAAbAAAAAEAAQABAAsAAAAAAG0AAAABAAEAAQALAAAAAABuAAAAAQABAAEACwAAAAAAbwAAAAEAAQABAAsAAAAAAHAAAAABAAEAAQALAAAAAABxAAAAAQABAAEACwAAAAAAcgAAAAEAAQABAAsAAAAAAHMAAAABAAEAAQALAAAAAAB0AAAAAQABAAEACwAAAAAAdQAAAAEAAQABAAsAAAAAAHYAAAABAAEAAQALAAAAAAB3AAAAAQABAAEACwAAAAAAeAAAAAEAAQABAAsAAAAAAHkAAAABAAEAAQALAAAAAAB6AAAAAQABAAEACwAAAAAAewAAAAEAAQABAAsAAAAAAHwAAAABAAEAAQALAAAAAAB9AAAAAQABAAEACwAAAAAAfgAAAAEAAQABAAsAAAAAAH8AAAABAAEAAQALAAAAAACAAAAAAQABAAEACwAAAAAAgQAAAAEAAQABAAsAAAAAAIIAAAABAAEAAQB0AQAABwAAAAAACgAAAAAABgB3AQAAAQAKAE0AAAB4AQAAAgAAAAAAAgAAAHkBAAACAAAAAAADAAAAegEAAAIAAAAAAAQAAAB7AQAAAgAAAAAABQAAAHwBAAACAAAAAAAGAAAAfQEAAAIAAAAAAAcAAAB+AQAAAgAAAAAACAAAAH8BAAACAAAAAAAJAAAAgAEAAAIAAAAAAAoAAACBAQAAAgAAAAAACwAAAIIBAAACAAAAAAAMAAAAgwEAAAIAAAAAAA0AAACEAQAAAgAAAAAADgAAAIUBAAACAAAAAAAPAAAAhgEAAAIAAAAAABAAAACHAQAAAgAAAAAAEQAAAIgBAAACAAAAAAASAAAAiQEAAAIAAAAAABMAAACKAQAAAgAAAAAAFAAAAIsBAAACAAAAAAAVAAAAjAEAAAIAAAAAABYAAACNAQAAAgAAAAAAFwAAAI4BAAACAAAAAAAYAAAAjwEAAAIAAAAAABkAAACQAQAAAgAAAAAAGgAAAJEBAAACAAAAAAAbAAAAkgEAAAIAAAAAABwAAACTAQAAAgAAAAAAHQAAAJQBAAACAAAAAAAeAAAAlQEAAAIAAAAAAB8AAACWAQAAAgAAAAAAIAAAAJcBAAACAAAAAAAhAAAAmAEAAAIAAAAAACIAAACZAQAAAgAAAAAAIwAAAJoBAAACAAAAAAAkAAAAmwEAAAIAAAAAACUAAACcAQAAAgAAAAAAJgAAAJ0BAAACAAAAAAAnAAAAngEAAAIAAAAAACgAAACfAQAAAgAAAAAAKQAAAKABAAACAAAAAAAqAAAAoQEAAAIAAAAAACsAAACiAQAAAgAAAAAALAAAAKMBAAACAAAAAAAtAAAApAEAAAIAAAAAAC4AAAClAQAAAgAAAAAALwAAAKYBAAACAAAAAAAwAAAApwEAAAIAAAAAADEAAACoAQAAAgAAAAAAMgAAAKkBAAACAAAAAAAzAAAAqgEAAAIAAAAAADQAAACrAQAAAgAAAAAANQAAAKwBAAACAAAAAAA2AAAArQEAAAIAAAAAADcAAACuAQAAAgAAAAAAOAAAAK8BAAACAAAAAAA5AAAAsAEAAAIAAAAAADoAAACxAQAAAgAAAAAAOwAAALIBAAACAAAAAAA8AAAAswEAAAIAAAAAAD0AAAC0AQAAAgAAAAAAPgAAALUBAAACAAAAAAA/AAAAtgEAAAIAAAAAAEAAAAC3AQAAAgAAAAAAQQAAALgBAAACAAAAAABCAAAAuQEAAAIAAAAAAEMAAAC6AQAAAgAAAAAARAAAALsBAAACAAAAAABFAAAAvAEAAAIAAAAAAEYAAAC9AQAAAgAAAAAARwAAAL4BAAACAAAAAABIAAAAvwEAAAIAAAAAAEkAAADAAQAAAgAAAAAASgAAAMEBAAACAAAAAABLAAAAwgEAAAIAAAAAAEwAAADDAQAAAgAAAAAATQAAAMQBAAACAAAAAABOAAAAAQAHAAEAAAACAAMAAAABAAAAAQABAAEAAQAEAAEAAAAAAAAABwAEAAAAAgAAAAAAAQAAAAIAAwAAAAEAAAACAAEAAABMAAAAAgACAAAABwAAAAEAAQABAAEAAQAGAMUBAAABAAoANgAAAMYBAAACAAAAAABQAAAAxwEAAAIAAAAAAFEAAADIAQAAAgAAAAAAUgAAAMkBAAACAAAAAABTAAAAygEAAAIAAAAAAFQAAADLAQAAAgAAAAAAVQAAAMwBAAACAAAAAABWAAAAzQEAAAIAAAAAAFcAAADOAQAAAgAAAAAAWAAAAM8BAAACAAAAAABZAAAA0AEAAAIAAAAAAFoAAADRAQAAAgAAAAAAWwAAANIBAAACAAAAAABcAAAA0wEAAAIAAAAAAF0AAADUAQAAAgAAAAAAXgAAANUBAAACAAAAAABfAAAA1gEAAAIAAAAAAGAAAADXAQAAAgAAAAAAYQAAANgBAAACAAAAAABiAAAA2QEAAAIAAAAAAGMAAADaAQAAAgAAAAAAZAAAANsBAAACAAAAAABlAAAA3AEAAAIAAAAAAGYAAADdAQAAAgAAAAAAZwAAAN4BAAACAAAAAABoAAAA3wEAAAIAAAAAAGkAAADgAQAAAgAAAAAAagAAAOEBAAACAAAAAABrAAAA4gEAAAIAAAAAAGwAAADjAQAAAgAAAAAAbQAAAOQBAAACAAAAAABuAAAA5QEAAAIAAAAAAG8AAADmAQAAAgAAAAAAcAAAAOcBAAACAAAAAABxAAAA6AEAAAIAAAAAAHIAAADpAQAAAgAAAAAAcwAAAOoBAAACAAAAAAB0AAAA6wEAAAIAAAAAAHUAAADsAQAAAgAAAAAAdgAAAO0BAAACAAAAAAB3AAAA7gEAAAIAAAAAAHgAAADvAQAAAgAAAAAAeQAAAPABAAACAAAAAAB6AAAA8QEAAAIAAAAAAHsAAADyAQAAAgAAAAAAfAAAAPMBAAACAAAAAAB9AAAA9AEAAAIAAAAAAH4AAAD1AQAAAgAAAAAAfwAAAPYBAAACAAAAAACAAAAA9wEAAAIAAAAAAIEAAAD4AQAAAgAAAAAAggAAAPkBAAACAAAAAACDAAAA+gEAAAIAAAAAAIQAAAD7AQAAAgAAAAAAhQAAAAEABwABAAAAAgADAAAAPAAAAAEAAQABAAEABAABAAAAAAAAAAcAAwAAAAIAAAAAAE8AAAACAAMAAAA8AAAAAgACAAAABwAAAAEAAQABAAEAAQAGAPwBAAABAAEAAQAHAAEAAAACAAMAAABeAAAAAQABAAEAAQAEAAEAAAAAAAAABwADAAAAAgAAAAAAhgAAAAIAAwAAAF4AAAACAAIAAAAHAAAAAQABAAEAAQABAAwCAAAHAAAAAAAKAAAAAAANAgAABwAAAAAACgAAAAAADgIAAAcAAAAAAAoAAAAAABMCAAAHAAAAAAAKAAAAAAA="
    new $P114, "ResizableStringArray"
    .local pmc string_heap
    set string_heap, $P114
    null $S101
    push string_heap, $S101
    push string_heap, "P6opaque"
    push string_heap, "QRegex"
    push string_heap, "NQPCursorRole"
    push string_heap, "152819621F18B86657DB412D206298CA3534F307-1338064436.189"
    push string_heap, "src\\stage2\\QRegex.nqp"
    push string_heap, "NQPMatch"
    push string_heap, "NQPCursor"
    push string_heap, "NQPRegexMethod"
    push string_heap, "NQPRegex"
    push string_heap, "HLL"
    push string_heap, "QAST"
    push string_heap, "P6opaque"
    push string_heap, "CREATE"
    push string_heap, "2DEE75AFD50ED67BDF162F6BA56A80FA8956D48C-1338064435.275"
    push string_heap, "src\\stage2\\NQPCORE.setting"
    push string_heap, "bless"
    push string_heap, "BUILDALL"
    push string_heap, "BUILD_MAGIC"
    push string_heap, "new"
    push string_heap, "Str"
    push string_heap, "ACCEPTS"
    push string_heap, "isa"
    push string_heap, "__dump"
    push string_heap, "MATCH"
    push string_heap, "Bool"
    push string_heap, "parse"
    push string_heap, "!INTERPOLATE"
    push string_heap, "!INTERPOLATE_REGEX"
    push string_heap, "target"
    push string_heap, "from"
    push string_heap, "pos"
    push string_heap, "CAPHASH"
    push string_heap, "!cursor_init"
    push string_heap, "!cursor_start"
    push string_heap, "!cursor_start_subcapture"
    push string_heap, "!cursor_capture"
    push string_heap, "!cursor_push_cstack"
    push string_heap, "!cursor_pass"
    push string_heap, "!cursor_fail"
    push string_heap, "!cursor_next"
    push string_heap, "!reduce"
    push string_heap, "!reduce_with_match"
    push string_heap, "!protoregex"
    push string_heap, "!protoregex_nfa"
    push string_heap, "!protoregex_table"
    push string_heap, "!BACKREF"
    push string_heap, "!LITERAL"
    push string_heap, "at"
    push string_heap, "before"
    push string_heap, "after"
    push string_heap, "ws"
    push string_heap, "ww"
    push string_heap, "wb"
    push string_heap, "ident"
    push string_heap, "alpha"
    push string_heap, "alnum"
    push string_heap, "upper"
    push string_heap, "lower"
    push string_heap, "digit"
    push string_heap, "xdigit"
    push string_heap, "space"
    push string_heap, "blank"
    push string_heap, "cntrl"
    push string_heap, "punct"
    push string_heap, "FAILGOAL"
    push string_heap, "termish"
    push string_heap, "term"
    push string_heap, "1B4BCF3CBDD2B9FEC4F38EAB1F0132580EC97417-1338064439.301"
    push string_heap, "src\\stage2\\gen\\NQPHLL.pm"
    push string_heap, "infix"
    push string_heap, "prefix"
    push string_heap, "postfix"
    push string_heap, "circumfix"
    push string_heap, "postcircumfix"
    push string_heap, "term:sym<circumfix>"
    push string_heap, "infixish"
    push string_heap, "prefixish"
    push string_heap, "postfixish"
    push string_heap, "nullterm"
    push string_heap, "nullterm_alt"
    push string_heap, "nulltermish"
    push string_heap, "quote_delimited"
    push string_heap, "quote_atom"
    push string_heap, "decint"
    push string_heap, "decints"
    push string_heap, "hexint"
    push string_heap, "hexints"
    push string_heap, "octint"
    push string_heap, "octints"
    push string_heap, "binint"
    push string_heap, "binints"
    push string_heap, "integer"
    push string_heap, "dec_number"
    push string_heap, "escale"
    push string_heap, "quote_escape"
    push string_heap, "quote_escape:sym<backslash>"
    push string_heap, "quote_escape:sym<stopper>"
    push string_heap, "quote_escape:sym<bs>"
    push string_heap, "quote_escape:sym<nl>"
    push string_heap, "quote_escape:sym<cr>"
    push string_heap, "quote_escape:sym<tab>"
    push string_heap, "quote_escape:sym<ff>"
    push string_heap, "quote_escape:sym<esc>"
    push string_heap, "quote_escape:sym<hex>"
    push string_heap, "quote_escape:sym<oct>"
    push string_heap, "quote_escape:sym<chr>"
    push string_heap, "quote_escape:sym<0>"
    push string_heap, "quote_escape:sym<misc>"
    push string_heap, "charname"
    push string_heap, "charnames"
    push string_heap, "charspec"
    push string_heap, "O"
    push string_heap, "panic"
    push string_heap, "peek_delimiters"
    push string_heap, "quote_EXPR"
    push string_heap, "quotemod_check"
    push string_heap, "starter"
    push string_heap, "stopper"
    push string_heap, "split_words"
    push string_heap, "EXPR"
    push string_heap, "EXPR_reduce"
    push string_heap, "ternary"
    push string_heap, "MARKER"
    push string_heap, "MARKED"
    push string_heap, "LANG"
    push string_heap, "obs"
    push string_heap, "normspace"
    push string_heap, "identifier"
    push string_heap, "arg"
    push string_heap, "arglist"
    push string_heap, "TOP"
    push string_heap, "nibbler"
    push string_heap, "termaltseq"
    push string_heap, "termconjseq"
    push string_heap, "termalt"
    push string_heap, "termconj"
    push string_heap, "quantified_atom"
    push string_heap, "separator"
    push string_heap, "atom"
    push string_heap, "quantifier"
    push string_heap, "quantifier:sym<*>"
    push string_heap, "quantifier:sym<+>"
    push string_heap, "quantifier:sym<?>"
    push string_heap, "quantifier:sym<{N,M}>"
    push string_heap, "quantifier:sym<**>"
    push string_heap, "backmod"
    push string_heap, "metachar"
    push string_heap, "metachar:sym<ws>"
    push string_heap, "metachar:sym<[ ]>"
    push string_heap, "metachar:sym<( )>"
    push string_heap, "metachar:sym<'>"
    push string_heap, "metachar:sym<\">"
    push string_heap, "metachar:sym<.>"
    push string_heap, "metachar:sym<^>"
    push string_heap, "metachar:sym<^^>"
    push string_heap, "metachar:sym<$>"
    push string_heap, "metachar:sym<$$>"
    push string_heap, "metachar:sym<:::>"
    push string_heap, "metachar:sym<::>"
    push string_heap, "metachar:sym<lwb>"
    push string_heap, "metachar:sym<rwb>"
    push string_heap, "metachar:sym<bs>"
    push string_heap, "metachar:sym<mod>"
    push string_heap, "metachar:sym<quantifier>"
    push string_heap, "metachar:sym<~>"
    push string_heap, "metachar:sym<{*}>"
    push string_heap, "metachar:sym<assert>"
    push string_heap, "metachar:sym<var>"
    push string_heap, "metachar:sym<PIR>"
    push string_heap, "backslash"
    push string_heap, "backslash:sym<s>"
    push string_heap, "backslash:sym<b>"
    push string_heap, "backslash:sym<e>"
    push string_heap, "backslash:sym<f>"
    push string_heap, "backslash:sym<h>"
    push string_heap, "backslash:sym<r>"
    push string_heap, "backslash:sym<t>"
    push string_heap, "backslash:sym<v>"
    push string_heap, "backslash:sym<o>"
    push string_heap, "backslash:sym<x>"
    push string_heap, "backslash:sym<c>"
    push string_heap, "backslash:sym<A>"
    push string_heap, "backslash:sym<z>"
    push string_heap, "backslash:sym<Z>"
    push string_heap, "backslash:sym<Q>"
    push string_heap, "backslash:sym<unrec>"
    push string_heap, "backslash:sym<misc>"
    push string_heap, "assertion"
    push string_heap, "assertion:sym<?>"
    push string_heap, "assertion:sym<!>"
    push string_heap, "assertion:sym<|>"
    push string_heap, "assertion:sym<method>"
    push string_heap, "assertion:sym<name>"
    push string_heap, "assertion:sym<[>"
    push string_heap, "cclass_elem"
    push string_heap, "mod_internal"
    push string_heap, "mod_ident"
    push string_heap, "mod_ident:sym<ignorecase>"
    push string_heap, "mod_ident:sym<ratchet>"
    push string_heap, "mod_ident:sym<sigspace>"
    push string_heap, "$!orig"
    push string_heap, "$!target"
    push string_heap, "$!from"
    push string_heap, "$!pos"
    push string_heap, "$!match"
    push string_heap, "$!name"
    push string_heap, "$!bstack"
    push string_heap, "$!cstack"
    push string_heap, "$!regexsub"
    push string_heap, "$!restart"
    push string_heap, "P6opaque"
    push string_heap, "CREATE"
    push string_heap, "bless"
    push string_heap, "BUILDALL"
    push string_heap, "BUILD_MAGIC"
    push string_heap, "new"
    push string_heap, "Str"
    push string_heap, "ACCEPTS"
    push string_heap, "isa"
    push string_heap, "__dump"
    push string_heap, "ints_to_string"
    push string_heap, "CTXSAVE"
    push string_heap, "SET_BLOCK_OUTER_CTX"
    push string_heap, "EXPR"
    push string_heap, "term:sym<circumfix>"
    push string_heap, "termish"
    push string_heap, "nullterm"
    push string_heap, "nullterm_alt"
    push string_heap, "integer"
    push string_heap, "dec_number"
    push string_heap, "decint"
    push string_heap, "hexint"
    push string_heap, "octint"
    push string_heap, "binint"
    push string_heap, "quote_EXPR"
    push string_heap, "quote_delimited"
    push string_heap, "quote_atom"
    push string_heap, "quote_escape:sym<backslash>"
    push string_heap, "quote_escape:sym<stopper>"
    push string_heap, "quote_escape:sym<bs>"
    push string_heap, "quote_escape:sym<nl>"
    push string_heap, "quote_escape:sym<cr>"
    push string_heap, "quote_escape:sym<tab>"
    push string_heap, "quote_escape:sym<ff>"
    push string_heap, "quote_escape:sym<esc>"
    push string_heap, "quote_escape:sym<hex>"
    push string_heap, "quote_escape:sym<oct>"
    push string_heap, "quote_escape:sym<chr>"
    push string_heap, "quote_escape:sym<0>"
    push string_heap, "quote_escape:sym<misc>"
    push string_heap, "charname"
    push string_heap, "charnames"
    push string_heap, "charspec"
    push string_heap, "TOP"
    push string_heap, "nibbler"
    push string_heap, "termaltseq"
    push string_heap, "termconjseq"
    push string_heap, "termalt"
    push string_heap, "termconj"
    push string_heap, "quantified_atom"
    push string_heap, "separator"
    push string_heap, "atom"
    push string_heap, "quantifier:sym<*>"
    push string_heap, "quantifier:sym<+>"
    push string_heap, "quantifier:sym<?>"
    push string_heap, "quantifier:sym<**>"
    push string_heap, "metachar:sym<ws>"
    push string_heap, "metachar:sym<[ ]>"
    push string_heap, "metachar:sym<( )>"
    push string_heap, "metachar:sym<'>"
    push string_heap, "metachar:sym<\">"
    push string_heap, "metachar:sym<.>"
    push string_heap, "metachar:sym<^>"
    push string_heap, "metachar:sym<^^>"
    push string_heap, "metachar:sym<$>"
    push string_heap, "metachar:sym<$$>"
    push string_heap, "metachar:sym<lwb>"
    push string_heap, "metachar:sym<rwb>"
    push string_heap, "metachar:sym<bs>"
    push string_heap, "metachar:sym<assert>"
    push string_heap, "metachar:sym<var>"
    push string_heap, "metachar:sym<~>"
    push string_heap, "backslash:sym<s>"
    push string_heap, "backslash:sym<b>"
    push string_heap, "backslash:sym<e>"
    push string_heap, "backslash:sym<f>"
    push string_heap, "backslash:sym<h>"
    push string_heap, "backslash:sym<r>"
    push string_heap, "backslash:sym<t>"
    push string_heap, "backslash:sym<v>"
    push string_heap, "backslash:sym<o>"
    push string_heap, "backslash:sym<x>"
    push string_heap, "backslash:sym<c>"
    push string_heap, "backslash:sym<misc>"
    push string_heap, "assertion:sym<?>"
    push string_heap, "assertion:sym<!>"
    push string_heap, "assertion:sym<|>"
    push string_heap, "assertion:sym<method>"
    push string_heap, "assertion:sym<name>"
    push string_heap, "assertion:sym<[>"
    push string_heap, "arg"
    push string_heap, "arglist"
    push string_heap, "cclass_elem"
    push string_heap, "mod_internal"
    push string_heap, "subrule_alias"
    push string_heap, "flip_ast"
    push string_heap, "P6opaque"
    push string_heap, "CREATE"
    push string_heap, "bless"
    push string_heap, "BUILDALL"
    push string_heap, "BUILD_MAGIC"
    push string_heap, "new"
    push string_heap, "Str"
    push string_heap, "ACCEPTS"
    push string_heap, "isa"
    push string_heap, "__dump"
    push string_heap, "BUILD"
    push string_heap, "get_exports"
    push string_heap, "get_module"
    push string_heap, "language"
    push string_heap, "compiler"
    push string_heap, "config"
    push string_heap, "load_module"
    push string_heap, "import"
    push string_heap, "autoprint"
    push string_heap, "interactive"
    push string_heap, "eval"
    push string_heap, "ctxsave"
    push string_heap, "panic"
    push string_heap, "stages"
    push string_heap, "parsegrammar"
    push string_heap, "parseactions"
    push string_heap, "interactive_banner"
    push string_heap, "interactive_prompt"
    push string_heap, "compiler_progname"
    push string_heap, "commandline_options"
    push string_heap, "command_line"
    push string_heap, "command_eval"
    push string_heap, "process_args"
    push string_heap, "evalfiles"
    push string_heap, "compile"
    push string_heap, "parse"
    push string_heap, "past"
    push string_heap, "post"
    push string_heap, "pirbegin"
    push string_heap, "pir"
    push string_heap, "evalpmc"
    push string_heap, "dumper"
    push string_heap, "usage"
    push string_heap, "version"
    push string_heap, "show-config"
    push string_heap, "nqpevent"
    push string_heap, "removestage"
    push string_heap, "addstage"
    push string_heap, "parse_name"
    push string_heap, "lineof"
    push string_heap, "user-progname"
    push string_heap, "cli-options"
    push string_heap, "cli-arguments"
    push string_heap, "@!stages"
    push string_heap, "$!parsegrammar"
    push string_heap, "$!parseactions"
    push string_heap, "@!cmdoptions"
    push string_heap, "$!usage"
    push string_heap, "$!compiler_progname"
    push string_heap, "$!language"
    push string_heap, "%!config"
    push string_heap, "$!user_progname"
    push string_heap, "@!cli-arguments"
    push string_heap, "%!cli-options"
    push string_heap, "__6MODEL_CORE__"
    push string_heap, "GLOBALish"
    push string_heap, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1338064432.041"
    push string_heap, "src\\stage2\\gen\\nqp-mo.pm"
    push string_heap, "QRegex::P6Regex::Grammar"
    push string_heap, "obs"
    push string_heap, "ws"
    push string_heap, "normspace"
    push string_heap, "identifier"
    push string_heap, "arg"
    push string_heap, "arglist"
    push string_heap, "TOP"
    push string_heap, "nibbler"
    push string_heap, "termaltseq"
    push string_heap, "termconjseq"
    push string_heap, "termalt"
    push string_heap, "termconj"
    push string_heap, "termish"
    push string_heap, "quantified_atom"
    push string_heap, "separator"
    push string_heap, "atom"
    push string_heap, "quantifier"
    push string_heap, "quantifier:sym<*>"
    push string_heap, "quantifier:sym<+>"
    push string_heap, "quantifier:sym<?>"
    push string_heap, "quantifier:sym<{N,M}>"
    push string_heap, "quantifier:sym<**>"
    push string_heap, "backmod"
    push string_heap, "metachar"
    push string_heap, "metachar:sym<ws>"
    push string_heap, "metachar:sym<[ ]>"
    push string_heap, "metachar:sym<( )>"
    push string_heap, "metachar:sym<'>"
    push string_heap, "metachar:sym<\">"
    push string_heap, "metachar:sym<.>"
    push string_heap, "metachar:sym<^>"
    push string_heap, "metachar:sym<^^>"
    push string_heap, "metachar:sym<$>"
    push string_heap, "metachar:sym<$$>"
    push string_heap, "metachar:sym<:::>"
    push string_heap, "metachar:sym<::>"
    push string_heap, "metachar:sym<lwb>"
    push string_heap, "metachar:sym<rwb>"
    push string_heap, "metachar:sym<bs>"
    push string_heap, "metachar:sym<mod>"
    push string_heap, "metachar:sym<quantifier>"
    push string_heap, "metachar:sym<~>"
    push string_heap, "metachar:sym<{*}>"
    push string_heap, "metachar:sym<assert>"
    push string_heap, "metachar:sym<var>"
    push string_heap, "metachar:sym<PIR>"
    push string_heap, "backslash"
    push string_heap, "backslash:sym<s>"
    push string_heap, "backslash:sym<b>"
    push string_heap, "backslash:sym<e>"
    push string_heap, "backslash:sym<f>"
    push string_heap, "backslash:sym<h>"
    push string_heap, "backslash:sym<r>"
    push string_heap, "backslash:sym<t>"
    push string_heap, "backslash:sym<v>"
    push string_heap, "backslash:sym<o>"
    push string_heap, "backslash:sym<x>"
    push string_heap, "backslash:sym<c>"
    push string_heap, "backslash:sym<A>"
    push string_heap, "backslash:sym<z>"
    push string_heap, "backslash:sym<Z>"
    push string_heap, "backslash:sym<Q>"
    push string_heap, "backslash:sym<unrec>"
    push string_heap, "backslash:sym<misc>"
    push string_heap, "assertion"
    push string_heap, "assertion:sym<?>"
    push string_heap, "assertion:sym<!>"
    push string_heap, "assertion:sym<|>"
    push string_heap, "assertion:sym<method>"
    push string_heap, "assertion:sym<name>"
    push string_heap, "assertion:sym<[>"
    push string_heap, "cclass_elem"
    push string_heap, "mod_internal"
    push string_heap, "mod_ident"
    push string_heap, "mod_ident:sym<ignorecase>"
    push string_heap, "mod_ident:sym<ratchet>"
    push string_heap, "mod_ident:sym<sigspace>"
    push string_heap, "QRegex::P6Regex::Actions"
    push string_heap, "TOP"
    push string_heap, "nibbler"
    push string_heap, "termaltseq"
    push string_heap, "termconjseq"
    push string_heap, "termalt"
    push string_heap, "termconj"
    push string_heap, "termish"
    push string_heap, "quantified_atom"
    push string_heap, "separator"
    push string_heap, "atom"
    push string_heap, "quantifier:sym<*>"
    push string_heap, "quantifier:sym<+>"
    push string_heap, "quantifier:sym<?>"
    push string_heap, "quantifier:sym<**>"
    push string_heap, "metachar:sym<ws>"
    push string_heap, "metachar:sym<[ ]>"
    push string_heap, "metachar:sym<( )>"
    push string_heap, "metachar:sym<'>"
    push string_heap, "metachar:sym<\">"
    push string_heap, "metachar:sym<.>"
    push string_heap, "metachar:sym<^>"
    push string_heap, "metachar:sym<^^>"
    push string_heap, "metachar:sym<$>"
    push string_heap, "metachar:sym<$$>"
    push string_heap, "metachar:sym<lwb>"
    push string_heap, "metachar:sym<rwb>"
    push string_heap, "metachar:sym<bs>"
    push string_heap, "metachar:sym<assert>"
    push string_heap, "metachar:sym<var>"
    push string_heap, "metachar:sym<~>"
    push string_heap, "backslash:sym<s>"
    push string_heap, "backslash:sym<b>"
    push string_heap, "backslash:sym<e>"
    push string_heap, "backslash:sym<f>"
    push string_heap, "backslash:sym<h>"
    push string_heap, "backslash:sym<r>"
    push string_heap, "backslash:sym<t>"
    push string_heap, "backslash:sym<v>"
    push string_heap, "backslash:sym<o>"
    push string_heap, "backslash:sym<x>"
    push string_heap, "backslash:sym<c>"
    push string_heap, "backslash:sym<misc>"
    push string_heap, "assertion:sym<?>"
    push string_heap, "assertion:sym<!>"
    push string_heap, "assertion:sym<|>"
    push string_heap, "assertion:sym<method>"
    push string_heap, "assertion:sym<name>"
    push string_heap, "assertion:sym<[>"
    push string_heap, "arg"
    push string_heap, "arglist"
    push string_heap, "cclass_elem"
    push string_heap, "mod_internal"
    push string_heap, "subrule_alias"
    push string_heap, "flip_ast"
    push string_heap, "QRegex::P6Regex::Compiler"
    push string_heap, "P6opaque"
    push string_heap, "NFA"
    push string_heap, "P6Regex"
    push string_heap, "P6opaque"
    push string_heap, "Grammar"
    push string_heap, "Actions"
    push string_heap, "Compiler"
    push string_heap, "CommandLine"
    push string_heap, "World"
    push string_heap, "P6opaque"
    push string_heap, "Node"
    push string_heap, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992"
    push string_heap, "src\\stage2\\QAST.nqp"
    push string_heap, "Regex"
    push string_heap, "Compiler"
    push string_heap, "QRegex"
    push string_heap, "HLL"
    push string_heap, "QAST"
    push string_heap, "P6opaque"
    push string_heap, "Grammar"
    push string_heap, "Actions"
    push string_heap, "Compiler"
    push string_heap, "P6Regex"
    .const 'Sub' $P2241 = "375_1338064447.841" 
    capture_lex $P2241
    $P116 = $P2241()
    nqp_deserialize_sc $S100, cur_sc, string_heap, $P116
    .const 'LexInfo' $P2373 = "160_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 0
    $P2373."set_static_lexpad_value"("GLOBALish", $P117)
    .const 'LexInfo' $P2374 = "160_1338064447.841" 
    $P2374."finish_static_lexpad"()
    .const 'LexInfo' $P2375 = "160_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 0
    $P2375."set_static_lexpad_value"("$?PACKAGE", $P117)
    .const 'LexInfo' $P2376 = "160_1338064447.841" 
    $P2376."finish_static_lexpad"()
    .const '' $P2377 = "10_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 2
    set_sub_code_object $P2377, $P117
    .const '' $P2378 = "11_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 3
    set_sub_code_object $P2378, $P117
    .const '' $P2379 = "13_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 4
    set_sub_code_object $P2379, $P117
    .const '' $P2380 = "14_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 5
    set_sub_code_object $P2380, $P117
    .const '' $P2381 = "15_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 6
    set_sub_code_object $P2381, $P117
    .const '' $P2382 = "16_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 7
    set_sub_code_object $P2382, $P117
    .const '' $P2383 = "17_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 8
    set_sub_code_object $P2383, $P117
    .const '' $P2384 = "18_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 9
    set_sub_code_object $P2384, $P117
    .const '' $P2385 = "19_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 10
    set_sub_code_object $P2385, $P117
    .const '' $P2386 = "20_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 11
    set_sub_code_object $P2386, $P117
    .const '' $P2387 = "21_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 12
    set_sub_code_object $P2387, $P117
    .const '' $P2388 = "22_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 13
    set_sub_code_object $P2388, $P117
    .const '' $P2389 = "24_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 14
    set_sub_code_object $P2389, $P117
    .const '' $P2390 = "26_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 15
    set_sub_code_object $P2390, $P117
    .const '' $P2391 = "27_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 16
    set_sub_code_object $P2391, $P117
    .const '' $P2392 = "29_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 17
    set_sub_code_object $P2392, $P117
    .const '' $P2393 = "30_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 18
    set_sub_code_object $P2393, $P117
    .const '' $P2394 = "31_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 19
    set_sub_code_object $P2394, $P117
    .const '' $P2395 = "32_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 20
    set_sub_code_object $P2395, $P117
    .const '' $P2396 = "33_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 21
    set_sub_code_object $P2396, $P117
    .const '' $P2397 = "37_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 22
    set_sub_code_object $P2397, $P117
    .const '' $P2398 = "38_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 23
    set_sub_code_object $P2398, $P117
    .const '' $P2399 = "40_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 24
    set_sub_code_object $P2399, $P117
    .const '' $P2400 = "41_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 25
    set_sub_code_object $P2400, $P117
    .const '' $P2401 = "42_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 26
    set_sub_code_object $P2401, $P117
    .const '' $P2402 = "43_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 27
    set_sub_code_object $P2402, $P117
    .const '' $P2403 = "44_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 28
    set_sub_code_object $P2403, $P117
    .const '' $P2404 = "45_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 29
    set_sub_code_object $P2404, $P117
    .const '' $P2405 = "46_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 30
    set_sub_code_object $P2405, $P117
    .const '' $P2406 = "47_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 31
    set_sub_code_object $P2406, $P117
    .const '' $P2407 = "48_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 32
    set_sub_code_object $P2407, $P117
    .const '' $P2408 = "49_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 33
    set_sub_code_object $P2408, $P117
    .const '' $P2409 = "50_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 34
    set_sub_code_object $P2409, $P117
    .const '' $P2410 = "51_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 35
    set_sub_code_object $P2410, $P117
    .const '' $P2411 = "52_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 36
    set_sub_code_object $P2411, $P117
    .const '' $P2412 = "53_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 37
    set_sub_code_object $P2412, $P117
    .const '' $P2413 = "54_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 38
    set_sub_code_object $P2413, $P117
    .const '' $P2414 = "55_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 39
    set_sub_code_object $P2414, $P117
    .const '' $P2415 = "56_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 40
    set_sub_code_object $P2415, $P117
    .const '' $P2416 = "57_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 41
    set_sub_code_object $P2416, $P117
    .const '' $P2417 = "58_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 42
    set_sub_code_object $P2417, $P117
    .const '' $P2418 = "59_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 43
    set_sub_code_object $P2418, $P117
    .const '' $P2419 = "60_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 44
    set_sub_code_object $P2419, $P117
    .const '' $P2420 = "61_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 45
    set_sub_code_object $P2420, $P117
    .const '' $P2421 = "62_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 46
    set_sub_code_object $P2421, $P117
    .const '' $P2422 = "63_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 47
    set_sub_code_object $P2422, $P117
    .const '' $P2423 = "64_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 48
    set_sub_code_object $P2423, $P117
    .const '' $P2424 = "65_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 49
    set_sub_code_object $P2424, $P117
    .const '' $P2425 = "66_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 50
    set_sub_code_object $P2425, $P117
    .const '' $P2426 = "67_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 51
    set_sub_code_object $P2426, $P117
    .const '' $P2427 = "68_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 52
    set_sub_code_object $P2427, $P117
    .const '' $P2428 = "69_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 53
    set_sub_code_object $P2428, $P117
    .const '' $P2429 = "70_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 54
    set_sub_code_object $P2429, $P117
    .const '' $P2430 = "71_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 55
    set_sub_code_object $P2430, $P117
    .const '' $P2431 = "72_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 56
    set_sub_code_object $P2431, $P117
    .const '' $P2432 = "73_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 57
    set_sub_code_object $P2432, $P117
    .const '' $P2433 = "74_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 58
    set_sub_code_object $P2433, $P117
    .const '' $P2434 = "75_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 59
    set_sub_code_object $P2434, $P117
    .const '' $P2435 = "76_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 60
    set_sub_code_object $P2435, $P117
    .const '' $P2436 = "77_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 61
    set_sub_code_object $P2436, $P117
    .const '' $P2437 = "78_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 62
    set_sub_code_object $P2437, $P117
    .const '' $P2438 = "79_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 63
    set_sub_code_object $P2438, $P117
    .const '' $P2439 = "80_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 64
    set_sub_code_object $P2439, $P117
    .const '' $P2440 = "81_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 65
    set_sub_code_object $P2440, $P117
    .const '' $P2441 = "82_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 66
    set_sub_code_object $P2441, $P117
    .const '' $P2442 = "84_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 67
    set_sub_code_object $P2442, $P117
    .const '' $P2443 = "86_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 68
    set_sub_code_object $P2443, $P117
    .const '' $P2444 = "87_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 69
    set_sub_code_object $P2444, $P117
    .const '' $P2445 = "88_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 70
    set_sub_code_object $P2445, $P117
    .const '' $P2446 = "90_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 71
    set_sub_code_object $P2446, $P117
    .const '' $P2447 = "92_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 72
    set_sub_code_object $P2447, $P117
    .const '' $P2448 = "99_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 73
    set_sub_code_object $P2448, $P117
    .const '' $P2449 = "101_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 74
    set_sub_code_object $P2449, $P117
    .const '' $P2450 = "102_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 75
    set_sub_code_object $P2450, $P117
    .const '' $P2451 = "103_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 76
    set_sub_code_object $P2451, $P117
    .const '' $P2452 = "104_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 77
    set_sub_code_object $P2452, $P117
    .const '' $P2453 = "105_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 78
    set_sub_code_object $P2453, $P117
    .const 'LexInfo' $P2454 = "162_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 1
    $P2454."set_static_lexpad_value"("$?PACKAGE", $P117)
    .const 'LexInfo' $P2455 = "162_1338064447.841" 
    $P2455."finish_static_lexpad"()
    .const 'LexInfo' $P2456 = "162_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 1
    $P2456."set_static_lexpad_value"("$?CLASS", $P117)
    .const 'LexInfo' $P2457 = "162_1338064447.841" 
    $P2457."finish_static_lexpad"()
    .const '' $P2458 = "106_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 80
    set_sub_code_object $P2458, $P117
    .const '' $P2459 = "107_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 81
    set_sub_code_object $P2459, $P117
    .const '' $P2460 = "108_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 82
    set_sub_code_object $P2460, $P117
    .const '' $P2461 = "109_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 83
    set_sub_code_object $P2461, $P117
    .const '' $P2462 = "110_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 84
    set_sub_code_object $P2462, $P117
    .const '' $P2463 = "111_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 85
    set_sub_code_object $P2463, $P117
    .const '' $P2464 = "112_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 86
    set_sub_code_object $P2464, $P117
    .const '' $P2465 = "113_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 87
    set_sub_code_object $P2465, $P117
    .const '' $P2466 = "114_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 88
    set_sub_code_object $P2466, $P117
    .const '' $P2467 = "115_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 89
    set_sub_code_object $P2467, $P117
    .const '' $P2468 = "116_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 90
    set_sub_code_object $P2468, $P117
    .const '' $P2469 = "117_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 91
    set_sub_code_object $P2469, $P117
    .const '' $P2470 = "118_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 92
    set_sub_code_object $P2470, $P117
    .const '' $P2471 = "119_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 93
    set_sub_code_object $P2471, $P117
    .const '' $P2472 = "120_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 94
    set_sub_code_object $P2472, $P117
    .const '' $P2473 = "121_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 95
    set_sub_code_object $P2473, $P117
    .const '' $P2474 = "122_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 96
    set_sub_code_object $P2474, $P117
    .const '' $P2475 = "123_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 97
    set_sub_code_object $P2475, $P117
    .const '' $P2476 = "124_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 98
    set_sub_code_object $P2476, $P117
    .const '' $P2477 = "125_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 99
    set_sub_code_object $P2477, $P117
    .const '' $P2478 = "126_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 100
    set_sub_code_object $P2478, $P117
    .const '' $P2479 = "127_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 101
    set_sub_code_object $P2479, $P117
    .const '' $P2480 = "128_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 102
    set_sub_code_object $P2480, $P117
    .const '' $P2481 = "129_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 103
    set_sub_code_object $P2481, $P117
    .const '' $P2482 = "130_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 104
    set_sub_code_object $P2482, $P117
    .const '' $P2483 = "131_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 105
    set_sub_code_object $P2483, $P117
    .const '' $P2484 = "132_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 106
    set_sub_code_object $P2484, $P117
    .const '' $P2485 = "133_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 107
    set_sub_code_object $P2485, $P117
    .const '' $P2486 = "134_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 108
    set_sub_code_object $P2486, $P117
    .const '' $P2487 = "135_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 109
    set_sub_code_object $P2487, $P117
    .const '' $P2488 = "136_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 110
    set_sub_code_object $P2488, $P117
    .const '' $P2489 = "137_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 111
    set_sub_code_object $P2489, $P117
    .const '' $P2490 = "138_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 112
    set_sub_code_object $P2490, $P117
    .const '' $P2491 = "139_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 113
    set_sub_code_object $P2491, $P117
    .const '' $P2492 = "140_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 114
    set_sub_code_object $P2492, $P117
    .const '' $P2493 = "141_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 115
    set_sub_code_object $P2493, $P117
    .const '' $P2494 = "142_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 116
    set_sub_code_object $P2494, $P117
    .const '' $P2495 = "143_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 117
    set_sub_code_object $P2495, $P117
    .const '' $P2496 = "144_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 118
    set_sub_code_object $P2496, $P117
    .const '' $P2497 = "145_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 119
    set_sub_code_object $P2497, $P117
    .const '' $P2498 = "146_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 120
    set_sub_code_object $P2498, $P117
    .const '' $P2499 = "147_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 121
    set_sub_code_object $P2499, $P117
    .const '' $P2500 = "148_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 122
    set_sub_code_object $P2500, $P117
    .const '' $P2501 = "149_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 123
    set_sub_code_object $P2501, $P117
    .const '' $P2502 = "150_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 124
    set_sub_code_object $P2502, $P117
    .const '' $P2503 = "151_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 125
    set_sub_code_object $P2503, $P117
    .const '' $P2504 = "152_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 126
    set_sub_code_object $P2504, $P117
    .const '' $P2505 = "153_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 127
    set_sub_code_object $P2505, $P117
    .const '' $P2506 = "154_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 128
    set_sub_code_object $P2506, $P117
    .const '' $P2507 = "155_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 129
    set_sub_code_object $P2507, $P117
    .const '' $P2508 = "156_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 130
    set_sub_code_object $P2508, $P117
    .const '' $P2509 = "157_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 131
    set_sub_code_object $P2509, $P117
    .const '' $P2510 = "338_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 79
    get_who $P118, $P117
    set $P118["buildsub"], $P2510
    .const '' $P2511 = "158_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 132
    set_sub_code_object $P2511, $P117
    .const '' $P2512 = "159_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 133
    set_sub_code_object $P2512, $P117
    .const 'LexInfo' $P2513 = "336_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 79
    $P2513."set_static_lexpad_value"("$?PACKAGE", $P117)
    .const 'LexInfo' $P2514 = "336_1338064447.841" 
    $P2514."finish_static_lexpad"()
    .const 'LexInfo' $P2515 = "336_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 79
    $P2515."set_static_lexpad_value"("$?CLASS", $P117)
    .const 'LexInfo' $P2516 = "336_1338064447.841" 
    $P2516."finish_static_lexpad"()
    .const 'LexInfo' $P2517 = "373_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 134
    $P2517."set_static_lexpad_value"("$?PACKAGE", $P117)
    .const 'LexInfo' $P2518 = "373_1338064447.841" 
    $P2518."finish_static_lexpad"()
    .const 'LexInfo' $P2519 = "373_1338064447.841" 
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 134
    $P2519."set_static_lexpad_value"("$?CLASS", $P117)
    .const 'LexInfo' $P2520 = "373_1338064447.841" 
    $P2520."finish_static_lexpad"()
    nqp_get_sc_object $P117, "F742782F4A44649B939DB960B477BB6FBC4FAD4D-1338064447.783", 0
    set_hll_global "GLOBAL", $P117
.end


.HLL "nqp"

.namespace []
.sub "_block2240"  :anon :subid("375_1338064447.841") :outer("160_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 0
    .const 'Sub' $P2242 = "10_1338064447.841" 
    .const 'Sub' $P2243 = "11_1338064447.841" 
    .const 'Sub' $P2244 = "13_1338064447.841" 
    .const 'Sub' $P2245 = "14_1338064447.841" 
    .const 'Sub' $P2246 = "15_1338064447.841" 
    .const 'Sub' $P2247 = "16_1338064447.841" 
    .const 'Sub' $P2248 = "17_1338064447.841" 
    .const 'Sub' $P2249 = "18_1338064447.841" 
    .const 'Sub' $P2250 = "19_1338064447.841" 
    .const 'Sub' $P2251 = "20_1338064447.841" 
    .const 'Sub' $P2252 = "21_1338064447.841" 
    .const 'Sub' $P2253 = "22_1338064447.841" 
    .const 'Sub' $P2254 = "24_1338064447.841" 
    .const 'Sub' $P2255 = "26_1338064447.841" 
    .const 'Sub' $P2256 = "27_1338064447.841" 
    .const 'Sub' $P2257 = "29_1338064447.841" 
    .const 'Sub' $P2258 = "30_1338064447.841" 
    .const 'Sub' $P2259 = "31_1338064447.841" 
    .const 'Sub' $P2260 = "32_1338064447.841" 
    .const 'Sub' $P2261 = "33_1338064447.841" 
    .const 'Sub' $P2262 = "37_1338064447.841" 
    .const 'Sub' $P2263 = "38_1338064447.841" 
    .const 'Sub' $P2264 = "40_1338064447.841" 
    .const 'Sub' $P2265 = "41_1338064447.841" 
    .const 'Sub' $P2266 = "42_1338064447.841" 
    .const 'Sub' $P2267 = "43_1338064447.841" 
    .const 'Sub' $P2268 = "44_1338064447.841" 
    .const 'Sub' $P2269 = "45_1338064447.841" 
    .const 'Sub' $P2270 = "46_1338064447.841" 
    .const 'Sub' $P2271 = "47_1338064447.841" 
    .const 'Sub' $P2272 = "48_1338064447.841" 
    .const 'Sub' $P2273 = "49_1338064447.841" 
    .const 'Sub' $P2274 = "50_1338064447.841" 
    .const 'Sub' $P2275 = "51_1338064447.841" 
    .const 'Sub' $P2276 = "52_1338064447.841" 
    .const 'Sub' $P2277 = "53_1338064447.841" 
    .const 'Sub' $P2278 = "54_1338064447.841" 
    .const 'Sub' $P2279 = "55_1338064447.841" 
    .const 'Sub' $P2280 = "56_1338064447.841" 
    .const 'Sub' $P2281 = "57_1338064447.841" 
    .const 'Sub' $P2282 = "58_1338064447.841" 
    .const 'Sub' $P2283 = "59_1338064447.841" 
    .const 'Sub' $P2284 = "60_1338064447.841" 
    .const 'Sub' $P2285 = "61_1338064447.841" 
    .const 'Sub' $P2286 = "62_1338064447.841" 
    .const 'Sub' $P2287 = "63_1338064447.841" 
    .const 'Sub' $P2288 = "64_1338064447.841" 
    .const 'Sub' $P2289 = "65_1338064447.841" 
    .const 'Sub' $P2290 = "66_1338064447.841" 
    .const 'Sub' $P2291 = "67_1338064447.841" 
    .const 'Sub' $P2292 = "68_1338064447.841" 
    .const 'Sub' $P2293 = "69_1338064447.841" 
    .const 'Sub' $P2294 = "70_1338064447.841" 
    .const 'Sub' $P2295 = "71_1338064447.841" 
    .const 'Sub' $P2296 = "72_1338064447.841" 
    .const 'Sub' $P2297 = "73_1338064447.841" 
    .const 'Sub' $P2298 = "74_1338064447.841" 
    .const 'Sub' $P2299 = "75_1338064447.841" 
    .const 'Sub' $P2300 = "76_1338064447.841" 
    .const 'Sub' $P2301 = "77_1338064447.841" 
    .const 'Sub' $P2302 = "78_1338064447.841" 
    .const 'Sub' $P2303 = "79_1338064447.841" 
    .const 'Sub' $P2304 = "80_1338064447.841" 
    .const 'Sub' $P2305 = "81_1338064447.841" 
    .const 'Sub' $P2306 = "82_1338064447.841" 
    .const 'Sub' $P2307 = "84_1338064447.841" 
    .const 'Sub' $P2308 = "86_1338064447.841" 
    .const 'Sub' $P2309 = "87_1338064447.841" 
    .const 'Sub' $P2310 = "88_1338064447.841" 
    .const 'Sub' $P2311 = "90_1338064447.841" 
    .const 'Sub' $P2312 = "92_1338064447.841" 
    .const 'Sub' $P2313 = "99_1338064447.841" 
    .const 'Sub' $P2314 = "101_1338064447.841" 
    .const 'Sub' $P2315 = "102_1338064447.841" 
    .const 'Sub' $P2316 = "103_1338064447.841" 
    .const 'Sub' $P2317 = "104_1338064447.841" 
    .const 'Sub' $P2318 = "105_1338064447.841" 
    .const 'Sub' $P2319 = "106_1338064447.841" 
    .const 'Sub' $P2320 = "107_1338064447.841" 
    .const 'Sub' $P2321 = "108_1338064447.841" 
    .const 'Sub' $P2322 = "109_1338064447.841" 
    .const 'Sub' $P2323 = "110_1338064447.841" 
    .const 'Sub' $P2324 = "111_1338064447.841" 
    .const 'Sub' $P2325 = "112_1338064447.841" 
    .const 'Sub' $P2326 = "113_1338064447.841" 
    .const 'Sub' $P2327 = "114_1338064447.841" 
    .const 'Sub' $P2328 = "115_1338064447.841" 
    .const 'Sub' $P2329 = "116_1338064447.841" 
    .const 'Sub' $P2330 = "117_1338064447.841" 
    .const 'Sub' $P2331 = "118_1338064447.841" 
    .const 'Sub' $P2332 = "119_1338064447.841" 
    .const 'Sub' $P2333 = "120_1338064447.841" 
    .const 'Sub' $P2334 = "121_1338064447.841" 
    .const 'Sub' $P2335 = "122_1338064447.841" 
    .const 'Sub' $P2336 = "123_1338064447.841" 
    .const 'Sub' $P2337 = "124_1338064447.841" 
    .const 'Sub' $P2338 = "125_1338064447.841" 
    .const 'Sub' $P2339 = "126_1338064447.841" 
    .const 'Sub' $P2340 = "127_1338064447.841" 
    .const 'Sub' $P2341 = "128_1338064447.841" 
    .const 'Sub' $P2342 = "129_1338064447.841" 
    .const 'Sub' $P2343 = "130_1338064447.841" 
    .const 'Sub' $P2344 = "131_1338064447.841" 
    .const 'Sub' $P2345 = "132_1338064447.841" 
    .const 'Sub' $P2346 = "133_1338064447.841" 
    .const 'Sub' $P2347 = "134_1338064447.841" 
    .const 'Sub' $P2348 = "135_1338064447.841" 
    .const 'Sub' $P2349 = "136_1338064447.841" 
    .const 'Sub' $P2350 = "137_1338064447.841" 
    .const 'Sub' $P2351 = "138_1338064447.841" 
    .const 'Sub' $P2352 = "139_1338064447.841" 
    .const 'Sub' $P2353 = "140_1338064447.841" 
    .const 'Sub' $P2354 = "141_1338064447.841" 
    .const 'Sub' $P2355 = "142_1338064447.841" 
    .const 'Sub' $P2356 = "143_1338064447.841" 
    .const 'Sub' $P2357 = "144_1338064447.841" 
    .const 'Sub' $P2358 = "145_1338064447.841" 
    .const 'Sub' $P2359 = "146_1338064447.841" 
    .const 'Sub' $P2360 = "147_1338064447.841" 
    .const 'Sub' $P2361 = "148_1338064447.841" 
    .const 'Sub' $P2362 = "149_1338064447.841" 
    .const 'Sub' $P2363 = "150_1338064447.841" 
    .const 'Sub' $P2364 = "151_1338064447.841" 
    .const 'Sub' $P2365 = "152_1338064447.841" 
    .const 'Sub' $P2366 = "153_1338064447.841" 
    .const 'Sub' $P2367 = "154_1338064447.841" 
    .const 'Sub' $P2368 = "155_1338064447.841" 
    .const 'Sub' $P2369 = "156_1338064447.841" 
    .const 'Sub' $P2370 = "157_1338064447.841" 
    .const 'Sub' $P2371 = "158_1338064447.841" 
    .const 'Sub' $P2372 = "159_1338064447.841" 
    new $P115, "ResizablePMCArray"
    push $P115, $P2242
    push $P115, $P2243
    push $P115, $P2244
    push $P115, $P2245
    push $P115, $P2246
    push $P115, $P2247
    push $P115, $P2248
    push $P115, $P2249
    push $P115, $P2250
    push $P115, $P2251
    push $P115, $P2252
    push $P115, $P2253
    push $P115, $P2254
    push $P115, $P2255
    push $P115, $P2256
    push $P115, $P2257
    push $P115, $P2258
    push $P115, $P2259
    push $P115, $P2260
    push $P115, $P2261
    push $P115, $P2262
    push $P115, $P2263
    push $P115, $P2264
    push $P115, $P2265
    push $P115, $P2266
    push $P115, $P2267
    push $P115, $P2268
    push $P115, $P2269
    push $P115, $P2270
    push $P115, $P2271
    push $P115, $P2272
    push $P115, $P2273
    push $P115, $P2274
    push $P115, $P2275
    push $P115, $P2276
    push $P115, $P2277
    push $P115, $P2278
    push $P115, $P2279
    push $P115, $P2280
    push $P115, $P2281
    push $P115, $P2282
    push $P115, $P2283
    push $P115, $P2284
    push $P115, $P2285
    push $P115, $P2286
    push $P115, $P2287
    push $P115, $P2288
    push $P115, $P2289
    push $P115, $P2290
    push $P115, $P2291
    push $P115, $P2292
    push $P115, $P2293
    push $P115, $P2294
    push $P115, $P2295
    push $P115, $P2296
    push $P115, $P2297
    push $P115, $P2298
    push $P115, $P2299
    push $P115, $P2300
    push $P115, $P2301
    push $P115, $P2302
    push $P115, $P2303
    push $P115, $P2304
    push $P115, $P2305
    push $P115, $P2306
    push $P115, $P2307
    push $P115, $P2308
    push $P115, $P2309
    push $P115, $P2310
    push $P115, $P2311
    push $P115, $P2312
    push $P115, $P2313
    push $P115, $P2314
    push $P115, $P2315
    push $P115, $P2316
    push $P115, $P2317
    push $P115, $P2318
    push $P115, $P2319
    push $P115, $P2320
    push $P115, $P2321
    push $P115, $P2322
    push $P115, $P2323
    push $P115, $P2324
    push $P115, $P2325
    push $P115, $P2326
    push $P115, $P2327
    push $P115, $P2328
    push $P115, $P2329
    push $P115, $P2330
    push $P115, $P2331
    push $P115, $P2332
    push $P115, $P2333
    push $P115, $P2334
    push $P115, $P2335
    push $P115, $P2336
    push $P115, $P2337
    push $P115, $P2338
    push $P115, $P2339
    push $P115, $P2340
    push $P115, $P2341
    push $P115, $P2342
    push $P115, $P2343
    push $P115, $P2344
    push $P115, $P2345
    push $P115, $P2346
    push $P115, $P2347
    push $P115, $P2348
    push $P115, $P2349
    push $P115, $P2350
    push $P115, $P2351
    push $P115, $P2352
    push $P115, $P2353
    push $P115, $P2354
    push $P115, $P2355
    push $P115, $P2356
    push $P115, $P2357
    push $P115, $P2358
    push $P115, $P2359
    push $P115, $P2360
    push $P115, $P2361
    push $P115, $P2362
    push $P115, $P2363
    push $P115, $P2364
    push $P115, $P2365
    push $P115, $P2366
    push $P115, $P2367
    push $P115, $P2368
    push $P115, $P2369
    push $P115, $P2370
    push $P115, $P2371
    push $P115, $P2372
    .return ($P115)
.end


.HLL "nqp"

.namespace []
.sub "MAIN"  :subid("161_1338064447.841") :outer("160_1338064447.841")
    .param pmc param_1008
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 860
    .lex "@ARGS", param_1008
.annotate 'line', 861
    find_lex $P101, "$p6regex"
    unless_null $P101, vivify_377
    new $P101, "Undef"
  vivify_377:
    set $P1009, param_1008
    unless_null $P1009, vivify_378
    $P1009 = root_new ['parrot';'ResizablePMCArray']
  vivify_378:
    $P102 = $P101."command_line"($P1009, "utf8" :named("encoding"), "ucs4" :named("transcode"))
.annotate 'line', 860
    .return ($P102)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "_block1011"  :subid("162_1338064447.841") :outer("160_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 9
    .const 'Sub' $P1544 = "105_1338064447.841" 
    capture_lex $P1544
    .const 'Sub' $P1538 = "104_1338064447.841" 
    capture_lex $P1538
    .const 'Sub' $P1532 = "103_1338064447.841" 
    capture_lex $P1532
    .const 'Sub' $P1519 = "101_1338064447.841" 
    capture_lex $P1519
    .const 'Sub' $P1488 = "99_1338064447.841" 
    capture_lex $P1488
    .const 'Sub' $P1477 = "92_1338064447.841" 
    capture_lex $P1477
    .const 'Sub' $P1466 = "90_1338064447.841" 
    capture_lex $P1466
    .const 'Sub' $P1460 = "88_1338064447.841" 
    capture_lex $P1460
    .const 'Sub' $P1454 = "87_1338064447.841" 
    capture_lex $P1454
    .const 'Sub' $P1443 = "86_1338064447.841" 
    capture_lex $P1443
    .const 'Sub' $P1432 = "84_1338064447.841" 
    capture_lex $P1432
    .const 'Sub' $P1424 = "81_1338064447.841" 
    capture_lex $P1424
    .const 'Sub' $P1417 = "80_1338064447.841" 
    capture_lex $P1417
    .const 'Sub' $P1411 = "79_1338064447.841" 
    capture_lex $P1411
    .const 'Sub' $P1405 = "78_1338064447.841" 
    capture_lex $P1405
    .const 'Sub' $P1399 = "77_1338064447.841" 
    capture_lex $P1399
    .const 'Sub' $P1393 = "76_1338064447.841" 
    capture_lex $P1393
    .const 'Sub' $P1387 = "75_1338064447.841" 
    capture_lex $P1387
    .const 'Sub' $P1381 = "74_1338064447.841" 
    capture_lex $P1381
    .const 'Sub' $P1375 = "73_1338064447.841" 
    capture_lex $P1375
    .const 'Sub' $P1369 = "72_1338064447.841" 
    capture_lex $P1369
    .const 'Sub' $P1363 = "71_1338064447.841" 
    capture_lex $P1363
    .const 'Sub' $P1357 = "70_1338064447.841" 
    capture_lex $P1357
    .const 'Sub' $P1351 = "69_1338064447.841" 
    capture_lex $P1351
    .const 'Sub' $P1345 = "68_1338064447.841" 
    capture_lex $P1345
    .const 'Sub' $P1339 = "67_1338064447.841" 
    capture_lex $P1339
    .const 'Sub' $P1333 = "66_1338064447.841" 
    capture_lex $P1333
    .const 'Sub' $P1327 = "65_1338064447.841" 
    capture_lex $P1327
    .const 'Sub' $P1319 = "63_1338064447.841" 
    capture_lex $P1319
    .const 'Sub' $P1313 = "62_1338064447.841" 
    capture_lex $P1313
    .const 'Sub' $P1307 = "61_1338064447.841" 
    capture_lex $P1307
    .const 'Sub' $P1301 = "60_1338064447.841" 
    capture_lex $P1301
    .const 'Sub' $P1295 = "59_1338064447.841" 
    capture_lex $P1295
    .const 'Sub' $P1289 = "58_1338064447.841" 
    capture_lex $P1289
    .const 'Sub' $P1283 = "57_1338064447.841" 
    capture_lex $P1283
    .const 'Sub' $P1277 = "56_1338064447.841" 
    capture_lex $P1277
    .const 'Sub' $P1271 = "55_1338064447.841" 
    capture_lex $P1271
    .const 'Sub' $P1265 = "54_1338064447.841" 
    capture_lex $P1265
    .const 'Sub' $P1259 = "53_1338064447.841" 
    capture_lex $P1259
    .const 'Sub' $P1253 = "52_1338064447.841" 
    capture_lex $P1253
    .const 'Sub' $P1247 = "51_1338064447.841" 
    capture_lex $P1247
    .const 'Sub' $P1241 = "50_1338064447.841" 
    capture_lex $P1241
    .const 'Sub' $P1235 = "49_1338064447.841" 
    capture_lex $P1235
    .const 'Sub' $P1229 = "48_1338064447.841" 
    capture_lex $P1229
    .const 'Sub' $P1223 = "47_1338064447.841" 
    capture_lex $P1223
    .const 'Sub' $P1217 = "46_1338064447.841" 
    capture_lex $P1217
    .const 'Sub' $P1211 = "45_1338064447.841" 
    capture_lex $P1211
    .const 'Sub' $P1205 = "44_1338064447.841" 
    capture_lex $P1205
    .const 'Sub' $P1199 = "43_1338064447.841" 
    capture_lex $P1199
    .const 'Sub' $P1193 = "42_1338064447.841" 
    capture_lex $P1193
    .const 'Sub' $P1180 = "40_1338064447.841" 
    capture_lex $P1180
    .const 'Sub' $P1174 = "38_1338064447.841" 
    capture_lex $P1174
    .const 'Sub' $P1152 = "37_1338064447.841" 
    capture_lex $P1152
    .const 'Sub' $P1146 = "33_1338064447.841" 
    capture_lex $P1146
    .const 'Sub' $P1140 = "32_1338064447.841" 
    capture_lex $P1140
    .const 'Sub' $P1134 = "31_1338064447.841" 
    capture_lex $P1134
    .const 'Sub' $P1121 = "29_1338064447.841" 
    capture_lex $P1121
    .const 'Sub' $P1115 = "27_1338064447.841" 
    capture_lex $P1115
    .const 'Sub' $P1104 = "26_1338064447.841" 
    capture_lex $P1104
    .const 'Sub' $P1094 = "24_1338064447.841" 
    capture_lex $P1094
    .const 'Sub' $P1088 = "22_1338064447.841" 
    capture_lex $P1088
    .const 'Sub' $P1082 = "21_1338064447.841" 
    capture_lex $P1082
    .const 'Sub' $P1076 = "20_1338064447.841" 
    capture_lex $P1076
    .const 'Sub' $P1070 = "19_1338064447.841" 
    capture_lex $P1070
    .const 'Sub' $P1062 = "18_1338064447.841" 
    capture_lex $P1062
    .const 'Sub' $P1054 = "17_1338064447.841" 
    capture_lex $P1054
    .const 'Sub' $P1049 = "16_1338064447.841" 
    capture_lex $P1049
    .const 'Sub' $P1043 = "15_1338064447.841" 
    capture_lex $P1043
    .const 'Sub' $P1037 = "14_1338064447.841" 
    capture_lex $P1037
    .const 'Sub' $P1026 = "13_1338064447.841" 
    capture_lex $P1026
    .const 'Sub' $P1020 = "11_1338064447.841" 
    capture_lex $P1020
    .const 'Sub' $P1015 = "10_1338064447.841" 
    capture_lex $P1015
    .lex "$?PACKAGE", $P1013
    .lex "$?CLASS", $P1014
.annotate 'line', 233
    .const 'Sub' $P1544 = "105_1338064447.841" 
    capture_lex $P1544
.annotate 'line', 9
    .return ($P1544)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "obs" :anon :subid("10_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1016
    .param pmc param_1017
    .param pmc param_1018
    .param pmc param_1019 :optional
    .param int has_param_1019 :opt_flag
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 11
    .lex "self", param_1016
    .lex "$old", param_1017
    .lex "$new", param_1018
    if has_param_1019, optparam_379
    new $P101, "String"
    assign $P101, " in Perl 6"
    set param_1019, $P101
  optparam_379:
    .lex "$when", param_1019
.annotate 'line', 12
    set $P103, param_1016
    nqp_decontainerize $P104, $P103
    new $P105, "String"
    assign $P105, "Unsupported use of "
    set $P106, param_1017
    unless_null $P106, vivify_380
    new $P106, "Undef"
  vivify_380:
    set $S100, $P106
    concat $P107, $P105, $S100
    concat $P108, $P107, ";"
.annotate 'line', 13
    set $P109, param_1019
    unless_null $P109, vivify_381
    new $P109, "Undef"
  vivify_381:
    set $S101, $P109
    concat $P110, $P108, $S101
    concat $P111, $P110, " please use "
    set $P112, param_1018
    unless_null $P112, vivify_382
    new $P112, "Undef"
  vivify_382:
    set $S102, $P112
    concat $P113, $P111, $S102
    $P114 = $P104."panic"($P113)
.annotate 'line', 11
    .return ($P114)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "ws"  :subid("11_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1021
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 16
    .lex "self", param_1021
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1022
    .lex "$/", $P1023
    .local string rx10_tgt
    .local int rx10_pos
    .local int rx10_off
    .local int rx10_eos
    .local int rx10_rep
    .local pmc rx10_cur
    .local pmc rx10_curclass
    .local pmc rx10_bstack
    .local pmc rx10_cstack
    (rx10_cur, rx10_tgt, rx10_pos, rx10_curclass, rx10_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx10_cur
    length rx10_eos, rx10_tgt
    eq $I19, 1, rx10_restart
    repr_get_attr_int $I11, self, rx10_curclass, "$!from"
    ne $I11, -1, rxscan11_done
    goto rxscan11_scan
  rxscan11_loop:
    inc rx10_pos
    gt rx10_pos, rx10_eos, rx10_fail
    repr_bind_attr_int rx10_cur, rx10_curclass, "$!from", rx10_pos
  rxscan11_scan:
    nqp_rxmark rx10_bstack, rxscan11_loop, rx10_pos, 0
  rxscan11_done:
  # rx rxquantr12 ** 0..-1
    nqp_rxmark rx10_bstack, rxquantr12_done, rx10_pos, 0
  rxquantr12_loop:
  alt13_0:
    nqp_rxmark rx10_bstack, alt13_1, rx10_pos, 0
  # rx rxquantr14 ** 1..-1
    nqp_rxmark rx10_bstack, rxquantr14_done, -1, 0
  rxquantr14_loop:
    ge rx10_pos, rx10_eos, rx10_fail
    is_cclass $I11, .CCLASS_WHITESPACE, rx10_tgt, rx10_pos
    unless $I11, rx10_fail
    add rx10_pos, 1
    nqp_rxpeek $I19, rx10_bstack, rxquantr14_done
    inc $I19
    inc $I19
    set rx10_rep, rx10_bstack[$I19]
    nqp_rxcommit rx10_bstack, rxquantr14_done
    inc rx10_rep
    nqp_rxmark rx10_bstack, rxquantr14_done, rx10_pos, rx10_rep
    goto rxquantr14_loop
  rxquantr14_done:
    goto alt13_end
  alt13_1:
    add $I11, rx10_pos, 1
    gt $I11, rx10_eos, rx10_fail
    substr $S10, rx10_tgt, rx10_pos, 1
    ne $S10, ucs4:"#", rx10_fail
    add rx10_pos, 1
  # rx rxquantr15 ** 0..-1
    nqp_rxmark rx10_bstack, rxquantr15_done, rx10_pos, 0
  rxquantr15_loop:
    ge rx10_pos, rx10_eos, rx10_fail
    is_cclass $I11, .CCLASS_NEWLINE, rx10_tgt, rx10_pos
    if $I11, rx10_fail
    add rx10_pos, 1
    nqp_rxpeek $I19, rx10_bstack, rxquantr15_done
    inc $I19
    inc $I19
    set rx10_rep, rx10_bstack[$I19]
    nqp_rxcommit rx10_bstack, rxquantr15_done
    inc rx10_rep
    nqp_rxmark rx10_bstack, rxquantr15_done, rx10_pos, rx10_rep
    goto rxquantr15_loop
  rxquantr15_done:
  alt13_end:
    nqp_rxpeek $I19, rx10_bstack, rxquantr12_done
    inc $I19
    inc $I19
    set rx10_rep, rx10_bstack[$I19]
    nqp_rxcommit rx10_bstack, rxquantr12_done
    inc rx10_rep
    nqp_rxmark rx10_bstack, rxquantr12_done, rx10_pos, rx10_rep
    goto rxquantr12_loop
  rxquantr12_done:
    rx10_cur."!cursor_pass"(rx10_pos, "ws", 'backtrack'=>1)
    .return (rx10_cur)
  rx10_restart:
    repr_get_attr_obj rx10_cstack, rx10_cur, rx10_curclass, "$!cstack"
  rx10_fail:
    unless rx10_bstack, rx10_done
    pop $I19, rx10_bstack
    if_null rx10_cstack, rx10_cstack_done
    unless rx10_cstack, rx10_cstack_done
    dec $I19
    set $P11, rx10_cstack[$I19]
  rx10_cstack_done:
    pop rx10_rep, rx10_bstack
    pop rx10_pos, rx10_bstack
    pop $I19, rx10_bstack
    lt rx10_pos, -1, rx10_done
    lt rx10_pos, 0, rx10_fail
    eq $I19, 0, rx10_fail
    if_null rx10_cstack, rx10_jump
    elements $I18, rx10_bstack
    le $I18, 0, rx10_cut
    dec $I18
    set $I18, rx10_bstack[$I18]
  rx10_cut:
    assign rx10_cstack, $I18
  rx10_jump:
    jump $I19
  rx10_done:
    rx10_cur."!cursor_fail"()
    .return (rx10_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "11_1338064447.841_caps"  :subid("163_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 16
    new $P103, "Hash"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "11_1338064447.841_nfa"  :subid("164_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 16
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 1
    push $P104, 0
    push $P104, 2
    push $P104, 2
    push $P104, 35
    push $P104, 4
    push $P104, 1
    push $P104, 0
    push $P104, 0
    new $P105, "ResizablePMCArray"
    push $P105, 4
    push $P105, 32
    push $P105, 3
    new $P106, "ResizablePMCArray"
    push $P106, 1
    push $P106, 0
    push $P106, 2
    push $P106, 1
    push $P106, 0
    push $P106, 1
    new $P107, "ResizablePMCArray"
    push $P107, 5
    push $P107, 4096
    push $P107, 4
    push $P107, 1
    push $P107, 0
    push $P107, 1
    new $P108, "ResizablePMCArray"
    push $P108, $P103
    push $P108, $P104
    push $P108, $P105
    push $P108, $P106
    push $P108, $P107
    .return ($P108)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "normspace"  :subid("13_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1027
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 18
    .const 'Sub' $P1033 = "12_1338064447.841" 
    capture_lex $P1033
    .lex "self", param_1027
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1028
    .lex "$/", $P1029
    .local string rx16_tgt
    .local int rx16_pos
    .local int rx16_off
    .local int rx16_eos
    .local int rx16_rep
    .local pmc rx16_cur
    .local pmc rx16_curclass
    .local pmc rx16_bstack
    .local pmc rx16_cstack
    (rx16_cur, rx16_tgt, rx16_pos, rx16_curclass, rx16_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx16_cur
    length rx16_eos, rx16_tgt
    eq $I19, 1, rx16_restart
    repr_get_attr_int $I11, self, rx16_curclass, "$!from"
    ne $I11, -1, rxscan17_done
    goto rxscan17_scan
  rxscan17_loop:
    inc rx16_pos
    gt rx16_pos, rx16_eos, rx16_fail
    repr_bind_attr_int rx16_cur, rx16_curclass, "$!from", rx16_pos
  rxscan17_scan:
    nqp_rxmark rx16_bstack, rxscan17_loop, rx16_pos, 0
  rxscan17_done:
    .const 'Sub' $P1033 = "12_1338064447.841" 
    capture_lex $P1033
    repr_bind_attr_int rx16_cur, rx16_curclass, "$!pos", rx16_pos
    $P11 = rx16_cur."before"($P1033)
    repr_get_attr_int $I11, $P11, rx16_curclass, "$!pos"
    lt $I11, 0, rx16_fail
    repr_bind_attr_int rx16_cur, rx16_curclass, "$!pos", rx16_pos
    $P11 = rx16_cur."ws"()
    repr_get_attr_int $I11, $P11, rx16_curclass, "$!pos"
    lt $I11, 0, rx16_fail
    repr_get_attr_int rx16_pos, $P11, rx16_curclass, "$!pos"
    rx16_cur."!cursor_pass"(rx16_pos, "normspace", 'backtrack'=>1)
    .return (rx16_cur)
  rx16_restart:
    repr_get_attr_obj rx16_cstack, rx16_cur, rx16_curclass, "$!cstack"
  rx16_fail:
    unless rx16_bstack, rx16_done
    pop $I19, rx16_bstack
    if_null rx16_cstack, rx16_cstack_done
    unless rx16_cstack, rx16_cstack_done
    dec $I19
    set $P11, rx16_cstack[$I19]
  rx16_cstack_done:
    pop rx16_rep, rx16_bstack
    pop rx16_pos, rx16_bstack
    pop $I19, rx16_bstack
    lt rx16_pos, -1, rx16_done
    lt rx16_pos, 0, rx16_fail
    eq $I19, 0, rx16_fail
    if_null rx16_cstack, rx16_jump
    elements $I18, rx16_bstack
    le $I18, 0, rx16_cut
    dec $I18
    set $I18, rx16_bstack[$I18]
  rx16_cut:
    assign rx16_cstack, $I18
  rx16_jump:
    jump $I19
  rx16_done:
    rx16_cur."!cursor_fail"()
    .return (rx16_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "13_1338064447.841_caps"  :subid("165_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 18
    new $P103, "Hash"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "13_1338064447.841_nfa"  :subid("166_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 18
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 4
    push $P104, 32
    push $P104, 0
    push $P104, 2
    push $P104, 35
    push $P104, 0
    new $P105, "ResizablePMCArray"
    push $P105, $P103
    push $P105, $P104
    .return ($P105)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "_block1032"  :anon :subid("12_1338064447.841") :method :outer("13_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 18
    .lex unicode:"$\x{a2}", $P1036
    .local string rx18_tgt
    .local int rx18_pos
    .local int rx18_off
    .local int rx18_eos
    .local int rx18_rep
    .local pmc rx18_cur
    .local pmc rx18_curclass
    .local pmc rx18_bstack
    .local pmc rx18_cstack
    (rx18_cur, rx18_tgt, rx18_pos, rx18_curclass, rx18_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx18_cur
    length rx18_eos, rx18_tgt
    eq $I19, 1, rx18_restart
    repr_get_attr_int $I11, self, rx18_curclass, "$!from"
    ne $I11, -1, rxscan19_done
    goto rxscan19_scan
  rxscan19_loop:
    inc rx18_pos
    gt rx18_pos, rx18_eos, rx18_fail
    repr_bind_attr_int rx18_cur, rx18_curclass, "$!from", rx18_pos
  rxscan19_scan:
    nqp_rxmark rx18_bstack, rxscan19_loop, rx18_pos, 0
  rxscan19_done:
  alt20_0:
    nqp_rxmark rx18_bstack, alt20_1, rx18_pos, 0
    ge rx18_pos, rx18_eos, rx18_fail
    is_cclass $I11, .CCLASS_WHITESPACE, rx18_tgt, rx18_pos
    unless $I11, rx18_fail
    add rx18_pos, 1
    goto alt20_end
  alt20_1:
    add $I11, rx18_pos, 1
    gt $I11, rx18_eos, rx18_fail
    substr $S10, rx18_tgt, rx18_pos, 1
    ne $S10, ucs4:"#", rx18_fail
    add rx18_pos, 1
  alt20_end:
    rx18_cur."!cursor_pass"(rx18_pos, 'backtrack'=>1)
    .return (rx18_cur)
  rx18_restart:
    repr_get_attr_obj rx18_cstack, rx18_cur, rx18_curclass, "$!cstack"
  rx18_fail:
    unless rx18_bstack, rx18_done
    pop $I19, rx18_bstack
    if_null rx18_cstack, rx18_cstack_done
    unless rx18_cstack, rx18_cstack_done
    dec $I19
    set $P11, rx18_cstack[$I19]
  rx18_cstack_done:
    pop rx18_rep, rx18_bstack
    pop rx18_pos, rx18_bstack
    pop $I19, rx18_bstack
    lt rx18_pos, -1, rx18_done
    lt rx18_pos, 0, rx18_fail
    eq $I19, 0, rx18_fail
    if_null rx18_cstack, rx18_jump
    elements $I18, rx18_bstack
    le $I18, 0, rx18_cut
    dec $I18
    set $I18, rx18_bstack[$I18]
  rx18_cut:
    assign rx18_cstack, $I18
  rx18_jump:
    jump $I19
  rx18_done:
    rx18_cur."!cursor_fail"()
    .return (rx18_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "12_1338064447.841_caps"  :subid("167_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 18
    new $P103, "Hash"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "12_1338064447.841_nfa"  :subid("168_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 18
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 4
    push $P104, 32
    push $P104, 0
    push $P104, 2
    push $P104, 35
    push $P104, 0
    new $P105, "ResizablePMCArray"
    push $P105, $P103
    push $P105, $P104
    .return ($P105)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "identifier"  :subid("14_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1038
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 20
    .lex "self", param_1038
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1039
    .lex "$/", $P1040
    .local string rx22_tgt
    .local int rx22_pos
    .local int rx22_off
    .local int rx22_eos
    .local int rx22_rep
    .local pmc rx22_cur
    .local pmc rx22_curclass
    .local pmc rx22_bstack
    .local pmc rx22_cstack
    (rx22_cur, rx22_tgt, rx22_pos, rx22_curclass, rx22_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx22_cur
    length rx22_eos, rx22_tgt
    eq $I19, 1, rx22_restart
    repr_get_attr_int $I11, self, rx22_curclass, "$!from"
    ne $I11, -1, rxscan23_done
    goto rxscan23_scan
  rxscan23_loop:
    inc rx22_pos
    gt rx22_pos, rx22_eos, rx22_fail
    repr_bind_attr_int rx22_cur, rx22_curclass, "$!from", rx22_pos
  rxscan23_scan:
    nqp_rxmark rx22_bstack, rxscan23_loop, rx22_pos, 0
  rxscan23_done:
    repr_bind_attr_int rx22_cur, rx22_curclass, "$!pos", rx22_pos
    $P11 = rx22_cur."ident"()
    repr_get_attr_int $I11, $P11, rx22_curclass, "$!pos"
    lt $I11, 0, rx22_fail
    repr_get_attr_int rx22_pos, $P11, rx22_curclass, "$!pos"
  # rx rxquantr25 ** 0..-1
    nqp_rxmark rx22_bstack, rxquantr25_done, rx22_pos, 0
  rxquantr25_loop:
  alt26_0:
    nqp_rxmark rx22_bstack, alt26_1, rx22_pos, 0
    add $I11, rx22_pos, 1
    gt $I11, rx22_eos, rx22_fail
    substr $S10, rx22_tgt, rx22_pos, 1
    ne $S10, ucs4:"-", rx22_fail
    add rx22_pos, 1
    goto alt26_end
  alt26_1:
    ge rx22_pos, rx22_eos, rx22_fail
    substr $S11, rx22_tgt, rx22_pos, 1
    index $I11, ucs4:"'", $S11
    lt $I11, 0, rx22_fail
    inc rx22_pos
  alt26_end:
    repr_bind_attr_int rx22_cur, rx22_curclass, "$!pos", rx22_pos
    $P11 = rx22_cur."ident"()
    repr_get_attr_int $I11, $P11, rx22_curclass, "$!pos"
    lt $I11, 0, rx22_fail
    repr_get_attr_int rx22_pos, $P11, rx22_curclass, "$!pos"
    nqp_rxpeek $I19, rx22_bstack, rxquantr25_done
    inc $I19
    inc $I19
    set rx22_rep, rx22_bstack[$I19]
    nqp_rxcommit rx22_bstack, rxquantr25_done
    inc rx22_rep
    nqp_rxmark rx22_bstack, rxquantr25_done, rx22_pos, rx22_rep
    goto rxquantr25_loop
  rxquantr25_done:
    rx22_cur."!cursor_pass"(rx22_pos, "identifier", 'backtrack'=>1)
    .return (rx22_cur)
  rx22_restart:
    repr_get_attr_obj rx22_cstack, rx22_cur, rx22_curclass, "$!cstack"
  rx22_fail:
    unless rx22_bstack, rx22_done
    pop $I19, rx22_bstack
    if_null rx22_cstack, rx22_cstack_done
    unless rx22_cstack, rx22_cstack_done
    dec $I19
    set $P11, rx22_cstack[$I19]
  rx22_cstack_done:
    pop rx22_rep, rx22_bstack
    pop rx22_pos, rx22_bstack
    pop $I19, rx22_bstack
    lt rx22_pos, -1, rx22_done
    lt rx22_pos, 0, rx22_fail
    eq $I19, 0, rx22_fail
    if_null rx22_cstack, rx22_jump
    elements $I18, rx22_bstack
    le $I18, 0, rx22_cut
    dec $I18
    set $I18, rx22_bstack[$I18]
  rx22_cut:
    assign rx22_cstack, $I18
  rx22_jump:
    jump $I19
  rx22_done:
    rx22_cur."!cursor_fail"()
    .return (rx22_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "14_1338064447.841_caps"  :subid("169_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 20
    new $P103, "Hash"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "14_1338064447.841_nfa"  :subid("170_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 20
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 8
    push $P104, "ident"
    push $P104, 2
    new $P105, "ResizablePMCArray"
    push $P105, 2
    push $P105, 45
    push $P105, 3
    push $P105, 6
    push $P105, "'"
    push $P105, 3
    push $P105, 1
    push $P105, 0
    push $P105, 0
    new $P106, "ResizablePMCArray"
    push $P106, 8
    push $P106, "ident"
    push $P106, 2
    new $P107, "ResizablePMCArray"
    push $P107, $P103
    push $P107, $P104
    push $P107, $P105
    push $P107, $P106
    .return ($P107)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "arg"  :subid("15_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1044
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 22
    .lex "self", param_1044
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1045
    .lex "$/", $P1046
    .local string rx28_tgt
    .local int rx28_pos
    .local int rx28_off
    .local int rx28_eos
    .local int rx28_rep
    .local pmc rx28_cur
    .local pmc rx28_curclass
    .local pmc rx28_bstack
    .local pmc rx28_cstack
    (rx28_cur, rx28_tgt, rx28_pos, rx28_curclass, rx28_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx28_cur
    length rx28_eos, rx28_tgt
    eq $I19, 1, rx28_restart
    repr_get_attr_int $I11, self, rx28_curclass, "$!from"
    ne $I11, -1, rxscan29_done
    goto rxscan29_scan
  rxscan29_loop:
    inc rx28_pos
    gt rx28_pos, rx28_eos, rx28_fail
    repr_bind_attr_int rx28_cur, rx28_curclass, "$!from", rx28_pos
  rxscan29_scan:
    nqp_rxmark rx28_bstack, rxscan29_loop, rx28_pos, 0
  rxscan29_done:
  alt30_0:
    nqp_rxmark rx28_bstack, alt30_1, rx28_pos, 0
    ge rx28_pos, rx28_eos, rx28_fail
    substr $S11, rx28_tgt, rx28_pos, 1
    index $I11, ucs4:"'", $S11
    lt $I11, 0, rx28_fail
    repr_bind_attr_int rx28_cur, rx28_curclass, "$!pos", rx28_pos
    $P11 = rx28_cur."quote_EXPR"(":q")
    repr_get_attr_int $I11, $P11, rx28_curclass, "$!pos"
    lt $I11, 0, rx28_fail
    nqp_rxmark rx28_bstack, rxsubrule31_pass, -1, 0
  rxsubrule31_pass:
    rx28_cstack = rx28_cur."!cursor_capture"($P11, "quote_EXPR")
    repr_get_attr_int rx28_pos, $P11, rx28_curclass, "$!pos"
    goto alt30_end
  alt30_1:
    nqp_rxmark rx28_bstack, alt30_2, rx28_pos, 0
    ge rx28_pos, rx28_eos, rx28_fail
    substr $S11, rx28_tgt, rx28_pos, 1
    index $I11, ucs4:"\"", $S11
    lt $I11, 0, rx28_fail
    repr_bind_attr_int rx28_cur, rx28_curclass, "$!pos", rx28_pos
    $P11 = rx28_cur."quote_EXPR"(":qq")
    repr_get_attr_int $I11, $P11, rx28_curclass, "$!pos"
    lt $I11, 0, rx28_fail
    nqp_rxmark rx28_bstack, rxsubrule32_pass, -1, 0
  rxsubrule32_pass:
    rx28_cstack = rx28_cur."!cursor_capture"($P11, "quote_EXPR")
    repr_get_attr_int rx28_pos, $P11, rx28_curclass, "$!pos"
    goto alt30_end
  alt30_2:
    nqp_rxmark rx28_bstack, rxcap33_fail, rx28_pos, 0
  # rx rxquantr34 ** 1..-1
    nqp_rxmark rx28_bstack, rxquantr34_done, -1, 0
  rxquantr34_loop:
    ge rx28_pos, rx28_eos, rx28_fail
    is_cclass $I11, .CCLASS_NUMERIC, rx28_tgt, rx28_pos
    unless $I11, rx28_fail
    add rx28_pos, 1
    nqp_rxpeek $I19, rx28_bstack, rxquantr34_done
    inc $I19
    inc $I19
    set rx28_rep, rx28_bstack[$I19]
    nqp_rxcommit rx28_bstack, rxquantr34_done
    inc rx28_rep
    nqp_rxmark rx28_bstack, rxquantr34_done, rx28_pos, rx28_rep
    goto rxquantr34_loop
  rxquantr34_done:
    nqp_rxpeek $I19, rx28_bstack, rxcap33_fail
    inc $I19
    set $I11, rx28_bstack[$I19]
    $P11 = rx28_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx28_pos)
    rx28_cstack = rx28_cur."!cursor_capture"($P11, "val")
    goto rxcap33_done
  rxcap33_fail:
    goto rx28_fail
  rxcap33_done:
  alt30_end:
    rx28_cur."!cursor_pass"(rx28_pos, "arg", 'backtrack'=>1)
    .return (rx28_cur)
  rx28_restart:
    repr_get_attr_obj rx28_cstack, rx28_cur, rx28_curclass, "$!cstack"
  rx28_fail:
    unless rx28_bstack, rx28_done
    pop $I19, rx28_bstack
    if_null rx28_cstack, rx28_cstack_done
    unless rx28_cstack, rx28_cstack_done
    dec $I19
    set $P11, rx28_cstack[$I19]
  rx28_cstack_done:
    pop rx28_rep, rx28_bstack
    pop rx28_pos, rx28_bstack
    pop $I19, rx28_bstack
    lt rx28_pos, -1, rx28_done
    lt rx28_pos, 0, rx28_fail
    eq $I19, 0, rx28_fail
    if_null rx28_cstack, rx28_jump
    elements $I18, rx28_bstack
    le $I18, 0, rx28_cut
    dec $I18
    set $I18, rx28_bstack[$I18]
  rx28_cut:
    assign rx28_cstack, $I18
  rx28_jump:
    jump $I19
  rx28_done:
    rx28_cur."!cursor_fail"()
    .return (rx28_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "15_1338064447.841_caps"  :subid("171_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 22
    new $P103, "Hash"
    set $P103["quote_EXPR"], 0
    set $P103["val"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "15_1338064447.841_nfa"  :subid("172_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 22
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 6
    push $P104, "'"
    push $P104, 2
    push $P104, 6
    push $P104, "\""
    push $P104, 3
    push $P104, 1
    push $P104, 0
    push $P104, 4
    new $P105, "ResizablePMCArray"
    push $P105, 0
    push $P105, 0
    push $P105, 0
    new $P106, "ResizablePMCArray"
    push $P106, 0
    push $P106, 0
    push $P106, 0
    new $P107, "ResizablePMCArray"
    push $P107, 4
    push $P107, 8
    push $P107, 5
    new $P108, "ResizablePMCArray"
    push $P108, 1
    push $P108, 0
    push $P108, 4
    push $P108, 1
    push $P108, 0
    push $P108, 0
    new $P109, "ResizablePMCArray"
    push $P109, $P103
    push $P109, $P104
    push $P109, $P105
    push $P109, $P106
    push $P109, $P107
    push $P109, $P108
    .return ($P109)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "arglist"  :subid("16_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1050
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 30
    .lex "self", param_1050
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1051
    .lex "$/", $P1052
    .local string rx35_tgt
    .local int rx35_pos
    .local int rx35_off
    .local int rx35_eos
    .local int rx35_rep
    .local pmc rx35_cur
    .local pmc rx35_curclass
    .local pmc rx35_bstack
    .local pmc rx35_cstack
    (rx35_cur, rx35_tgt, rx35_pos, rx35_curclass, rx35_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx35_cur
    length rx35_eos, rx35_tgt
    eq $I19, 1, rx35_restart
    repr_get_attr_int $I11, self, rx35_curclass, "$!from"
    ne $I11, -1, rxscan36_done
    goto rxscan36_scan
  rxscan36_loop:
    inc rx35_pos
    gt rx35_pos, rx35_eos, rx35_fail
    repr_bind_attr_int rx35_cur, rx35_curclass, "$!from", rx35_pos
  rxscan36_scan:
    nqp_rxmark rx35_bstack, rxscan36_loop, rx35_pos, 0
  rxscan36_done:
    repr_bind_attr_int rx35_cur, rx35_curclass, "$!pos", rx35_pos
    $P11 = rx35_cur."ws"()
    repr_get_attr_int $I11, $P11, rx35_curclass, "$!pos"
    lt $I11, 0, rx35_fail
    repr_get_attr_int rx35_pos, $P11, rx35_curclass, "$!pos"
    repr_bind_attr_int rx35_cur, rx35_curclass, "$!pos", rx35_pos
    $P11 = rx35_cur."arg"()
    repr_get_attr_int $I11, $P11, rx35_curclass, "$!pos"
    lt $I11, 0, rx35_fail
    nqp_rxmark rx35_bstack, rxsubrule38_pass, -1, 0
  rxsubrule38_pass:
    rx35_cstack = rx35_cur."!cursor_capture"($P11, "arg")
    repr_get_attr_int rx35_pos, $P11, rx35_curclass, "$!pos"
    repr_bind_attr_int rx35_cur, rx35_curclass, "$!pos", rx35_pos
    $P11 = rx35_cur."ws"()
    repr_get_attr_int $I11, $P11, rx35_curclass, "$!pos"
    lt $I11, 0, rx35_fail
    repr_get_attr_int rx35_pos, $P11, rx35_curclass, "$!pos"
  # rx rxquantr40 ** 0..-1
    nqp_rxmark rx35_bstack, rxquantr40_done, rx35_pos, 0
  rxquantr40_loop:
    repr_bind_attr_int rx35_cur, rx35_curclass, "$!pos", rx35_pos
    $P11 = rx35_cur."ws"()
    repr_get_attr_int $I11, $P11, rx35_curclass, "$!pos"
    lt $I11, 0, rx35_fail
    repr_get_attr_int rx35_pos, $P11, rx35_curclass, "$!pos"
    add $I11, rx35_pos, 1
    gt $I11, rx35_eos, rx35_fail
    substr $S10, rx35_tgt, rx35_pos, 1
    ne $S10, ucs4:",", rx35_fail
    add rx35_pos, 1
    repr_bind_attr_int rx35_cur, rx35_curclass, "$!pos", rx35_pos
    $P11 = rx35_cur."ws"()
    repr_get_attr_int $I11, $P11, rx35_curclass, "$!pos"
    lt $I11, 0, rx35_fail
    repr_get_attr_int rx35_pos, $P11, rx35_curclass, "$!pos"
    repr_bind_attr_int rx35_cur, rx35_curclass, "$!pos", rx35_pos
    $P11 = rx35_cur."arg"()
    repr_get_attr_int $I11, $P11, rx35_curclass, "$!pos"
    lt $I11, 0, rx35_fail
    nqp_rxmark rx35_bstack, rxsubrule43_pass, -1, 0
  rxsubrule43_pass:
    rx35_cstack = rx35_cur."!cursor_capture"($P11, "arg")
    repr_get_attr_int rx35_pos, $P11, rx35_curclass, "$!pos"
    nqp_rxpeek $I19, rx35_bstack, rxquantr40_done
    inc $I19
    inc $I19
    set rx35_rep, rx35_bstack[$I19]
    nqp_rxcommit rx35_bstack, rxquantr40_done
    inc rx35_rep
    nqp_rxmark rx35_bstack, rxquantr40_done, rx35_pos, rx35_rep
    goto rxquantr40_loop
  rxquantr40_done:
    repr_bind_attr_int rx35_cur, rx35_curclass, "$!pos", rx35_pos
    $P11 = rx35_cur."ws"()
    repr_get_attr_int $I11, $P11, rx35_curclass, "$!pos"
    lt $I11, 0, rx35_fail
    repr_get_attr_int rx35_pos, $P11, rx35_curclass, "$!pos"
    rx35_cur."!cursor_pass"(rx35_pos, "arglist", 'backtrack'=>1)
    .return (rx35_cur)
  rx35_restart:
    repr_get_attr_obj rx35_cstack, rx35_cur, rx35_curclass, "$!cstack"
  rx35_fail:
    unless rx35_bstack, rx35_done
    pop $I19, rx35_bstack
    if_null rx35_cstack, rx35_cstack_done
    unless rx35_cstack, rx35_cstack_done
    dec $I19
    set $P11, rx35_cstack[$I19]
  rx35_cstack_done:
    pop rx35_rep, rx35_bstack
    pop rx35_pos, rx35_bstack
    pop $I19, rx35_bstack
    lt rx35_pos, -1, rx35_done
    lt rx35_pos, 0, rx35_fail
    eq $I19, 0, rx35_fail
    if_null rx35_cstack, rx35_jump
    elements $I18, rx35_bstack
    le $I18, 0, rx35_cut
    dec $I18
    set $I18, rx35_bstack[$I18]
  rx35_cut:
    assign rx35_cstack, $I18
  rx35_jump:
    jump $I19
  rx35_done:
    rx35_cur."!cursor_fail"()
    .return (rx35_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "16_1338064447.841_caps"  :subid("173_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 30
    new $P103, "Hash"
    set $P103["arg"], 2
    .return ($P103)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "TOP"  :subid("17_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1055
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 32
    .lex "self", param_1055
.annotate 'line', 33
    $P1057 = root_new ['parrot';'Hash']
    set $P1056, $P1057
    .lex "%*RX", $P1056
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1058
    .lex "$/", $P1059
.annotate 'line', 32
    .local string rx45_tgt
    .local int rx45_pos
    .local int rx45_off
    .local int rx45_eos
    .local int rx45_rep
    .local pmc rx45_cur
    .local pmc rx45_curclass
    .local pmc rx45_bstack
    .local pmc rx45_cstack
    (rx45_cur, rx45_tgt, rx45_pos, rx45_curclass, rx45_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx45_cur
    length rx45_eos, rx45_tgt
    eq $I19, 1, rx45_restart
    repr_get_attr_int $I11, self, rx45_curclass, "$!from"
    ne $I11, -1, rxscan46_done
    goto rxscan46_scan
  rxscan46_loop:
    inc rx45_pos
    gt rx45_pos, rx45_eos, rx45_fail
    repr_bind_attr_int rx45_cur, rx45_curclass, "$!from", rx45_pos
  rxscan46_scan:
    nqp_rxmark rx45_bstack, rxscan46_loop, rx45_pos, 0
  rxscan46_done:
    repr_bind_attr_int rx45_cur, rx45_curclass, "$!pos", rx45_pos
    store_lex unicode:"$\x{a2}", rx45_cur
    set $P105, $P1056
    unless_null $P105, vivify_383
    get_hll_global $P103, "GLOBAL"
    get_who $P104, $P103
    set $P105, $P104["%RX"]
    unless_null $P105, vivify_384
    die "Contextual %*RX not found"
  vivify_384:
  vivify_383:
    repr_bind_attr_int rx45_cur, rx45_curclass, "$!pos", rx45_pos
    $P11 = rx45_cur."nibbler"()
    repr_get_attr_int $I11, $P11, rx45_curclass, "$!pos"
    lt $I11, 0, rx45_fail
    nqp_rxmark rx45_bstack, rxsubrule47_pass, -1, 0
  rxsubrule47_pass:
    rx45_cstack = rx45_cur."!cursor_capture"($P11, "nibbler")
    repr_get_attr_int rx45_pos, $P11, rx45_curclass, "$!pos"
  alt48_0:
    nqp_rxmark rx45_bstack, alt48_1, rx45_pos, 0
    lt rx45_pos, rx45_eos, rx45_fail
    goto alt48_end
  alt48_1:
    repr_bind_attr_int rx45_cur, rx45_curclass, "$!pos", rx45_pos
    $P11 = rx45_cur."panic"("Confused")
    repr_get_attr_int $I11, $P11, rx45_curclass, "$!pos"
    lt $I11, 0, rx45_fail
    repr_get_attr_int rx45_pos, $P11, rx45_curclass, "$!pos"
  alt48_end:
    rx45_cur."!cursor_pass"(rx45_pos, "TOP", 'backtrack'=>1)
    .return (rx45_cur)
  rx45_restart:
    repr_get_attr_obj rx45_cstack, rx45_cur, rx45_curclass, "$!cstack"
  rx45_fail:
    unless rx45_bstack, rx45_done
    pop $I19, rx45_bstack
    if_null rx45_cstack, rx45_cstack_done
    unless rx45_cstack, rx45_cstack_done
    dec $I19
    set $P11, rx45_cstack[$I19]
  rx45_cstack_done:
    pop rx45_rep, rx45_bstack
    pop rx45_pos, rx45_bstack
    pop $I19, rx45_bstack
    lt rx45_pos, -1, rx45_done
    lt rx45_pos, 0, rx45_fail
    eq $I19, 0, rx45_fail
    if_null rx45_cstack, rx45_jump
    elements $I18, rx45_bstack
    le $I18, 0, rx45_cut
    dec $I18
    set $I18, rx45_bstack[$I18]
  rx45_cut:
    assign rx45_cstack, $I18
  rx45_jump:
    jump $I19
  rx45_done:
    rx45_cur."!cursor_fail"()
    .return (rx45_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "17_1338064447.841_caps"  :subid("174_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 32
    new $P103, "Hash"
    set $P103["nibbler"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "17_1338064447.841_nfa"  :subid("175_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 32
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 1
    push $P104, 0
    push $P104, 2
    new $P105, "ResizablePMCArray"
    push $P105, 8
    push $P105, "nibbler"
    push $P105, 3
    new $P106, "ResizablePMCArray"
    push $P106, 0
    push $P106, 0
    push $P106, 0
    new $P107, "ResizablePMCArray"
    push $P107, $P103
    push $P107, $P104
    push $P107, $P105
    push $P107, $P106
    .return ($P107)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "nibbler"  :subid("18_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1063
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 38
    .lex "self", param_1063
.annotate 'line', 39
    $P1065 = root_new ['parrot';'Hash']
    set $P1064, $P1065
    .lex "%*RX", $P1064
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1066
    .lex "$/", $P1067
.annotate 'line', 38
    .local string rx51_tgt
    .local int rx51_pos
    .local int rx51_off
    .local int rx51_eos
    .local int rx51_rep
    .local pmc rx51_cur
    .local pmc rx51_curclass
    .local pmc rx51_bstack
    .local pmc rx51_cstack
    (rx51_cur, rx51_tgt, rx51_pos, rx51_curclass, rx51_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx51_cur
    length rx51_eos, rx51_tgt
    eq $I19, 1, rx51_restart
    repr_get_attr_int $I11, self, rx51_curclass, "$!from"
    ne $I11, -1, rxscan52_done
    goto rxscan52_scan
  rxscan52_loop:
    inc rx51_pos
    gt rx51_pos, rx51_eos, rx51_fail
    repr_bind_attr_int rx51_cur, rx51_curclass, "$!from", rx51_pos
  rxscan52_scan:
    nqp_rxmark rx51_bstack, rxscan52_loop, rx51_pos, 0
  rxscan52_done:
    repr_bind_attr_int rx51_cur, rx51_curclass, "$!pos", rx51_pos
    store_lex unicode:"$\x{a2}", rx51_cur
.annotate 'line', 39
    find_dynamic_lex $P103, "%*RX"
    clone $P104, $P103
    set $P1064, $P104
.annotate 'line', 38
  # rx rxquantr53 ** 0..1
    nqp_rxmark rx51_bstack, rxquantr53_done, rx51_pos, 0
  rxquantr53_loop:
    repr_bind_attr_int rx51_cur, rx51_curclass, "$!pos", rx51_pos
    $P11 = rx51_cur."ws"()
    repr_get_attr_int $I11, $P11, rx51_curclass, "$!pos"
    lt $I11, 0, rx51_fail
    repr_get_attr_int rx51_pos, $P11, rx51_curclass, "$!pos"
  alt55_0:
    nqp_rxmark rx51_bstack, alt55_1, rx51_pos, 0
    add $I11, rx51_pos, 2
    gt $I11, rx51_eos, rx51_fail
    substr $S10, rx51_tgt, rx51_pos, 2
    ne $S10, ucs4:"||", rx51_fail
    add rx51_pos, 2
    goto alt55_end
  alt55_1:
    nqp_rxmark rx51_bstack, alt55_2, rx51_pos, 0
    add $I11, rx51_pos, 1
    gt $I11, rx51_eos, rx51_fail
    substr $S10, rx51_tgt, rx51_pos, 1
    ne $S10, ucs4:"|", rx51_fail
    add rx51_pos, 1
    goto alt55_end
  alt55_2:
    nqp_rxmark rx51_bstack, alt55_3, rx51_pos, 0
    add $I11, rx51_pos, 2
    gt $I11, rx51_eos, rx51_fail
    substr $S10, rx51_tgt, rx51_pos, 2
    ne $S10, ucs4:"&&", rx51_fail
    add rx51_pos, 2
    goto alt55_end
  alt55_3:
    add $I11, rx51_pos, 1
    gt $I11, rx51_eos, rx51_fail
    substr $S10, rx51_tgt, rx51_pos, 1
    ne $S10, ucs4:"&", rx51_fail
    add rx51_pos, 1
  alt55_end:
    nqp_rxpeek $I19, rx51_bstack, rxquantr53_done
    inc $I19
    inc $I19
    set rx51_rep, rx51_bstack[$I19]
    nqp_rxcommit rx51_bstack, rxquantr53_done
    inc rx51_rep
  rxquantr53_done:
    repr_bind_attr_int rx51_cur, rx51_curclass, "$!pos", rx51_pos
    $P11 = rx51_cur."termaltseq"()
    repr_get_attr_int $I11, $P11, rx51_curclass, "$!pos"
    lt $I11, 0, rx51_fail
    nqp_rxmark rx51_bstack, rxsubrule56_pass, -1, 0
  rxsubrule56_pass:
    rx51_cstack = rx51_cur."!cursor_capture"($P11, "termaltseq")
    repr_get_attr_int rx51_pos, $P11, rx51_curclass, "$!pos"
    rx51_cur."!cursor_pass"(rx51_pos, "nibbler", 'backtrack'=>1)
    .return (rx51_cur)
  rx51_restart:
    repr_get_attr_obj rx51_cstack, rx51_cur, rx51_curclass, "$!cstack"
  rx51_fail:
    unless rx51_bstack, rx51_done
    pop $I19, rx51_bstack
    if_null rx51_cstack, rx51_cstack_done
    unless rx51_cstack, rx51_cstack_done
    dec $I19
    set $P11, rx51_cstack[$I19]
  rx51_cstack_done:
    pop rx51_rep, rx51_bstack
    pop rx51_pos, rx51_bstack
    pop $I19, rx51_bstack
    lt rx51_pos, -1, rx51_done
    lt rx51_pos, 0, rx51_fail
    eq $I19, 0, rx51_fail
    if_null rx51_cstack, rx51_jump
    elements $I18, rx51_bstack
    le $I18, 0, rx51_cut
    dec $I18
    set $I18, rx51_bstack[$I18]
  rx51_cut:
    assign rx51_cstack, $I18
  rx51_jump:
    jump $I19
  rx51_done:
    rx51_cur."!cursor_fail"()
    .return (rx51_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "18_1338064447.841_caps"  :subid("176_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 38
    new $P103, "Hash"
    set $P103["termaltseq"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "18_1338064447.841_nfa"  :subid("177_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 38
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 1
    push $P104, 0
    push $P104, 2
    new $P105, "ResizablePMCArray"
    push $P105, 8
    push $P105, "ws"
    push $P105, 3
    push $P105, 1
    push $P105, 0
    push $P105, 5
    new $P106, "ResizablePMCArray"
    push $P106, 2
    push $P106, 124
    push $P106, 4
    push $P106, 2
    push $P106, 124
    push $P106, 5
    push $P106, 2
    push $P106, 38
    push $P106, 6
    push $P106, 2
    push $P106, 38
    push $P106, 5
    new $P107, "ResizablePMCArray"
    push $P107, 2
    push $P107, 124
    push $P107, 5
    new $P108, "ResizablePMCArray"
    push $P108, 8
    push $P108, "termaltseq"
    push $P108, 0
    new $P109, "ResizablePMCArray"
    push $P109, 2
    push $P109, 38
    push $P109, 5
    new $P110, "ResizablePMCArray"
    push $P110, $P103
    push $P110, $P104
    push $P110, $P105
    push $P110, $P106
    push $P110, $P107
    push $P110, $P108
    push $P110, $P109
    .return ($P110)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "termaltseq"  :subid("19_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1071
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 44
    .lex "self", param_1071
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1072
    .lex "$/", $P1073
    .local string rx57_tgt
    .local int rx57_pos
    .local int rx57_off
    .local int rx57_eos
    .local int rx57_rep
    .local pmc rx57_cur
    .local pmc rx57_curclass
    .local pmc rx57_bstack
    .local pmc rx57_cstack
    (rx57_cur, rx57_tgt, rx57_pos, rx57_curclass, rx57_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx57_cur
    length rx57_eos, rx57_tgt
    eq $I19, 1, rx57_restart
    repr_get_attr_int $I11, self, rx57_curclass, "$!from"
    ne $I11, -1, rxscan58_done
    goto rxscan58_scan
  rxscan58_loop:
    inc rx57_pos
    gt rx57_pos, rx57_eos, rx57_fail
    repr_bind_attr_int rx57_cur, rx57_curclass, "$!from", rx57_pos
  rxscan58_scan:
    nqp_rxmark rx57_bstack, rxscan58_loop, rx57_pos, 0
  rxscan58_done:
    repr_bind_attr_int rx57_cur, rx57_curclass, "$!pos", rx57_pos
    $P11 = rx57_cur."termconjseq"()
    repr_get_attr_int $I11, $P11, rx57_curclass, "$!pos"
    lt $I11, 0, rx57_fail
    nqp_rxmark rx57_bstack, rxsubrule59_pass, -1, 0
  rxsubrule59_pass:
    rx57_cstack = rx57_cur."!cursor_capture"($P11, "termconjseq")
    repr_get_attr_int rx57_pos, $P11, rx57_curclass, "$!pos"
  # rx rxquantr60 ** 0..-1
    nqp_rxmark rx57_bstack, rxquantr60_done, rx57_pos, 0
  rxquantr60_loop:
    add $I11, rx57_pos, 2
    gt $I11, rx57_eos, rx57_fail
    substr $S10, rx57_tgt, rx57_pos, 2
    ne $S10, ucs4:"||", rx57_fail
    add rx57_pos, 2
  alt61_0:
    nqp_rxmark rx57_bstack, alt61_1, rx57_pos, 0
    repr_bind_attr_int rx57_cur, rx57_curclass, "$!pos", rx57_pos
    $P11 = rx57_cur."termconjseq"()
    repr_get_attr_int $I11, $P11, rx57_curclass, "$!pos"
    lt $I11, 0, rx57_fail
    nqp_rxmark rx57_bstack, rxsubrule62_pass, -1, 0
  rxsubrule62_pass:
    rx57_cstack = rx57_cur."!cursor_capture"($P11, "termconjseq")
    repr_get_attr_int rx57_pos, $P11, rx57_curclass, "$!pos"
    goto alt61_end
  alt61_1:
    repr_bind_attr_int rx57_cur, rx57_curclass, "$!pos", rx57_pos
    $P11 = rx57_cur."panic"("Null pattern not allowed")
    repr_get_attr_int $I11, $P11, rx57_curclass, "$!pos"
    lt $I11, 0, rx57_fail
    repr_get_attr_int rx57_pos, $P11, rx57_curclass, "$!pos"
  alt61_end:
    nqp_rxpeek $I19, rx57_bstack, rxquantr60_done
    inc $I19
    inc $I19
    set rx57_rep, rx57_bstack[$I19]
    nqp_rxcommit rx57_bstack, rxquantr60_done
    inc rx57_rep
    nqp_rxmark rx57_bstack, rxquantr60_done, rx57_pos, rx57_rep
    goto rxquantr60_loop
  rxquantr60_done:
    rx57_cur."!cursor_pass"(rx57_pos, "termaltseq", 'backtrack'=>1)
    .return (rx57_cur)
  rx57_restart:
    repr_get_attr_obj rx57_cstack, rx57_cur, rx57_curclass, "$!cstack"
  rx57_fail:
    unless rx57_bstack, rx57_done
    pop $I19, rx57_bstack
    if_null rx57_cstack, rx57_cstack_done
    unless rx57_cstack, rx57_cstack_done
    dec $I19
    set $P11, rx57_cstack[$I19]
  rx57_cstack_done:
    pop rx57_rep, rx57_bstack
    pop rx57_pos, rx57_bstack
    pop $I19, rx57_bstack
    lt rx57_pos, -1, rx57_done
    lt rx57_pos, 0, rx57_fail
    eq $I19, 0, rx57_fail
    if_null rx57_cstack, rx57_jump
    elements $I18, rx57_bstack
    le $I18, 0, rx57_cut
    dec $I18
    set $I18, rx57_bstack[$I18]
  rx57_cut:
    assign rx57_cstack, $I18
  rx57_jump:
    jump $I19
  rx57_done:
    rx57_cur."!cursor_fail"()
    .return (rx57_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "19_1338064447.841_caps"  :subid("178_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 44
    new $P103, "Hash"
    set $P103["termconjseq"], 2
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "19_1338064447.841_nfa"  :subid("179_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 44
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 8
    push $P104, "termconjseq"
    push $P104, 2
    new $P105, "ResizablePMCArray"
    push $P105, 2
    push $P105, 124
    push $P105, 3
    push $P105, 1
    push $P105, 0
    push $P105, 0
    new $P106, "ResizablePMCArray"
    push $P106, 2
    push $P106, 124
    push $P106, 4
    new $P107, "ResizablePMCArray"
    push $P107, 0
    push $P107, 0
    push $P107, 0
    new $P108, "ResizablePMCArray"
    push $P108, $P103
    push $P108, $P104
    push $P108, $P105
    push $P108, $P106
    push $P108, $P107
    .return ($P108)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "termconjseq"  :subid("20_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1077
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 49
    .lex "self", param_1077
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1078
    .lex "$/", $P1079
    .local string rx64_tgt
    .local int rx64_pos
    .local int rx64_off
    .local int rx64_eos
    .local int rx64_rep
    .local pmc rx64_cur
    .local pmc rx64_curclass
    .local pmc rx64_bstack
    .local pmc rx64_cstack
    (rx64_cur, rx64_tgt, rx64_pos, rx64_curclass, rx64_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx64_cur
    length rx64_eos, rx64_tgt
    eq $I19, 1, rx64_restart
    repr_get_attr_int $I11, self, rx64_curclass, "$!from"
    ne $I11, -1, rxscan65_done
    goto rxscan65_scan
  rxscan65_loop:
    inc rx64_pos
    gt rx64_pos, rx64_eos, rx64_fail
    repr_bind_attr_int rx64_cur, rx64_curclass, "$!from", rx64_pos
  rxscan65_scan:
    nqp_rxmark rx64_bstack, rxscan65_loop, rx64_pos, 0
  rxscan65_done:
    repr_bind_attr_int rx64_cur, rx64_curclass, "$!pos", rx64_pos
    $P11 = rx64_cur."termalt"()
    repr_get_attr_int $I11, $P11, rx64_curclass, "$!pos"
    lt $I11, 0, rx64_fail
    nqp_rxmark rx64_bstack, rxsubrule66_pass, -1, 0
  rxsubrule66_pass:
    rx64_cstack = rx64_cur."!cursor_capture"($P11, "termalt")
    repr_get_attr_int rx64_pos, $P11, rx64_curclass, "$!pos"
  # rx rxquantr67 ** 0..-1
    nqp_rxmark rx64_bstack, rxquantr67_done, rx64_pos, 0
  rxquantr67_loop:
    add $I11, rx64_pos, 2
    gt $I11, rx64_eos, rx64_fail
    substr $S10, rx64_tgt, rx64_pos, 2
    ne $S10, ucs4:"&&", rx64_fail
    add rx64_pos, 2
  alt68_0:
    nqp_rxmark rx64_bstack, alt68_1, rx64_pos, 0
    repr_bind_attr_int rx64_cur, rx64_curclass, "$!pos", rx64_pos
    $P11 = rx64_cur."termalt"()
    repr_get_attr_int $I11, $P11, rx64_curclass, "$!pos"
    lt $I11, 0, rx64_fail
    nqp_rxmark rx64_bstack, rxsubrule69_pass, -1, 0
  rxsubrule69_pass:
    rx64_cstack = rx64_cur."!cursor_capture"($P11, "termalt")
    repr_get_attr_int rx64_pos, $P11, rx64_curclass, "$!pos"
    goto alt68_end
  alt68_1:
    repr_bind_attr_int rx64_cur, rx64_curclass, "$!pos", rx64_pos
    $P11 = rx64_cur."panic"("Null pattern not allowed")
    repr_get_attr_int $I11, $P11, rx64_curclass, "$!pos"
    lt $I11, 0, rx64_fail
    repr_get_attr_int rx64_pos, $P11, rx64_curclass, "$!pos"
  alt68_end:
    nqp_rxpeek $I19, rx64_bstack, rxquantr67_done
    inc $I19
    inc $I19
    set rx64_rep, rx64_bstack[$I19]
    nqp_rxcommit rx64_bstack, rxquantr67_done
    inc rx64_rep
    nqp_rxmark rx64_bstack, rxquantr67_done, rx64_pos, rx64_rep
    goto rxquantr67_loop
  rxquantr67_done:
    rx64_cur."!cursor_pass"(rx64_pos, "termconjseq", 'backtrack'=>1)
    .return (rx64_cur)
  rx64_restart:
    repr_get_attr_obj rx64_cstack, rx64_cur, rx64_curclass, "$!cstack"
  rx64_fail:
    unless rx64_bstack, rx64_done
    pop $I19, rx64_bstack
    if_null rx64_cstack, rx64_cstack_done
    unless rx64_cstack, rx64_cstack_done
    dec $I19
    set $P11, rx64_cstack[$I19]
  rx64_cstack_done:
    pop rx64_rep, rx64_bstack
    pop rx64_pos, rx64_bstack
    pop $I19, rx64_bstack
    lt rx64_pos, -1, rx64_done
    lt rx64_pos, 0, rx64_fail
    eq $I19, 0, rx64_fail
    if_null rx64_cstack, rx64_jump
    elements $I18, rx64_bstack
    le $I18, 0, rx64_cut
    dec $I18
    set $I18, rx64_bstack[$I18]
  rx64_cut:
    assign rx64_cstack, $I18
  rx64_jump:
    jump $I19
  rx64_done:
    rx64_cur."!cursor_fail"()
    .return (rx64_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "20_1338064447.841_caps"  :subid("180_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 49
    new $P103, "Hash"
    set $P103["termalt"], 2
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "20_1338064447.841_nfa"  :subid("181_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 49
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 8
    push $P104, "termalt"
    push $P104, 2
    new $P105, "ResizablePMCArray"
    push $P105, 2
    push $P105, 38
    push $P105, 3
    push $P105, 1
    push $P105, 0
    push $P105, 0
    new $P106, "ResizablePMCArray"
    push $P106, 2
    push $P106, 38
    push $P106, 4
    new $P107, "ResizablePMCArray"
    push $P107, 0
    push $P107, 0
    push $P107, 0
    new $P108, "ResizablePMCArray"
    push $P108, $P103
    push $P108, $P104
    push $P108, $P105
    push $P108, $P106
    push $P108, $P107
    .return ($P108)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "termalt"  :subid("21_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1083
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 54
    .lex "self", param_1083
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1084
    .lex "$/", $P1085
    .local string rx71_tgt
    .local int rx71_pos
    .local int rx71_off
    .local int rx71_eos
    .local int rx71_rep
    .local pmc rx71_cur
    .local pmc rx71_curclass
    .local pmc rx71_bstack
    .local pmc rx71_cstack
    (rx71_cur, rx71_tgt, rx71_pos, rx71_curclass, rx71_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx71_cur
    length rx71_eos, rx71_tgt
    eq $I19, 1, rx71_restart
    repr_get_attr_int $I11, self, rx71_curclass, "$!from"
    ne $I11, -1, rxscan72_done
    goto rxscan72_scan
  rxscan72_loop:
    inc rx71_pos
    gt rx71_pos, rx71_eos, rx71_fail
    repr_bind_attr_int rx71_cur, rx71_curclass, "$!from", rx71_pos
  rxscan72_scan:
    nqp_rxmark rx71_bstack, rxscan72_loop, rx71_pos, 0
  rxscan72_done:
    repr_bind_attr_int rx71_cur, rx71_curclass, "$!pos", rx71_pos
    $P11 = rx71_cur."termconj"()
    repr_get_attr_int $I11, $P11, rx71_curclass, "$!pos"
    lt $I11, 0, rx71_fail
    nqp_rxmark rx71_bstack, rxsubrule73_pass, -1, 0
  rxsubrule73_pass:
    rx71_cstack = rx71_cur."!cursor_capture"($P11, "termconj")
    repr_get_attr_int rx71_pos, $P11, rx71_curclass, "$!pos"
  # rx rxquantr74 ** 0..-1
    nqp_rxmark rx71_bstack, rxquantr74_done, rx71_pos, 0
  rxquantr74_loop:
    add $I11, rx71_pos, 1
    gt $I11, rx71_eos, rx71_fail
    substr $S10, rx71_tgt, rx71_pos, 1
    ne $S10, ucs4:"|", rx71_fail
    add rx71_pos, 1
    ge rx71_pos, rx71_eos, rx71_fail
    substr $S11, rx71_tgt, rx71_pos, 1
    index $I11, ucs4:"|", $S11
    ge $I11, 0, rx71_fail
  alt75_0:
    nqp_rxmark rx71_bstack, alt75_1, rx71_pos, 0
    repr_bind_attr_int rx71_cur, rx71_curclass, "$!pos", rx71_pos
    $P11 = rx71_cur."termconj"()
    repr_get_attr_int $I11, $P11, rx71_curclass, "$!pos"
    lt $I11, 0, rx71_fail
    nqp_rxmark rx71_bstack, rxsubrule76_pass, -1, 0
  rxsubrule76_pass:
    rx71_cstack = rx71_cur."!cursor_capture"($P11, "termconj")
    repr_get_attr_int rx71_pos, $P11, rx71_curclass, "$!pos"
    goto alt75_end
  alt75_1:
    repr_bind_attr_int rx71_cur, rx71_curclass, "$!pos", rx71_pos
    $P11 = rx71_cur."panic"("Null pattern not allowed")
    repr_get_attr_int $I11, $P11, rx71_curclass, "$!pos"
    lt $I11, 0, rx71_fail
    repr_get_attr_int rx71_pos, $P11, rx71_curclass, "$!pos"
  alt75_end:
    nqp_rxpeek $I19, rx71_bstack, rxquantr74_done
    inc $I19
    inc $I19
    set rx71_rep, rx71_bstack[$I19]
    nqp_rxcommit rx71_bstack, rxquantr74_done
    inc rx71_rep
    nqp_rxmark rx71_bstack, rxquantr74_done, rx71_pos, rx71_rep
    goto rxquantr74_loop
  rxquantr74_done:
    rx71_cur."!cursor_pass"(rx71_pos, "termalt", 'backtrack'=>1)
    .return (rx71_cur)
  rx71_restart:
    repr_get_attr_obj rx71_cstack, rx71_cur, rx71_curclass, "$!cstack"
  rx71_fail:
    unless rx71_bstack, rx71_done
    pop $I19, rx71_bstack
    if_null rx71_cstack, rx71_cstack_done
    unless rx71_cstack, rx71_cstack_done
    dec $I19
    set $P11, rx71_cstack[$I19]
  rx71_cstack_done:
    pop rx71_rep, rx71_bstack
    pop rx71_pos, rx71_bstack
    pop $I19, rx71_bstack
    lt rx71_pos, -1, rx71_done
    lt rx71_pos, 0, rx71_fail
    eq $I19, 0, rx71_fail
    if_null rx71_cstack, rx71_jump
    elements $I18, rx71_bstack
    le $I18, 0, rx71_cut
    dec $I18
    set $I18, rx71_bstack[$I18]
  rx71_cut:
    assign rx71_cstack, $I18
  rx71_jump:
    jump $I19
  rx71_done:
    rx71_cur."!cursor_fail"()
    .return (rx71_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "21_1338064447.841_caps"  :subid("182_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 54
    new $P103, "Hash"
    set $P103["termconj"], 2
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "21_1338064447.841_nfa"  :subid("183_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 54
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 8
    push $P104, "termconj"
    push $P104, 2
    new $P105, "ResizablePMCArray"
    push $P105, 2
    push $P105, 124
    push $P105, 3
    push $P105, 1
    push $P105, 0
    push $P105, 0
    new $P106, "ResizablePMCArray"
    push $P106, 7
    push $P106, "|"
    push $P106, 4
    new $P107, "ResizablePMCArray"
    push $P107, 0
    push $P107, 0
    push $P107, 0
    new $P108, "ResizablePMCArray"
    push $P108, $P103
    push $P108, $P104
    push $P108, $P105
    push $P108, $P106
    push $P108, $P107
    .return ($P108)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "termconj"  :subid("22_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1089
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 59
    .lex "self", param_1089
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1090
    .lex "$/", $P1091
    .local string rx78_tgt
    .local int rx78_pos
    .local int rx78_off
    .local int rx78_eos
    .local int rx78_rep
    .local pmc rx78_cur
    .local pmc rx78_curclass
    .local pmc rx78_bstack
    .local pmc rx78_cstack
    (rx78_cur, rx78_tgt, rx78_pos, rx78_curclass, rx78_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx78_cur
    length rx78_eos, rx78_tgt
    eq $I19, 1, rx78_restart
    repr_get_attr_int $I11, self, rx78_curclass, "$!from"
    ne $I11, -1, rxscan79_done
    goto rxscan79_scan
  rxscan79_loop:
    inc rx78_pos
    gt rx78_pos, rx78_eos, rx78_fail
    repr_bind_attr_int rx78_cur, rx78_curclass, "$!from", rx78_pos
  rxscan79_scan:
    nqp_rxmark rx78_bstack, rxscan79_loop, rx78_pos, 0
  rxscan79_done:
    repr_bind_attr_int rx78_cur, rx78_curclass, "$!pos", rx78_pos
    $P11 = rx78_cur."termish"()
    repr_get_attr_int $I11, $P11, rx78_curclass, "$!pos"
    lt $I11, 0, rx78_fail
    nqp_rxmark rx78_bstack, rxsubrule80_pass, -1, 0
  rxsubrule80_pass:
    rx78_cstack = rx78_cur."!cursor_capture"($P11, "termish")
    repr_get_attr_int rx78_pos, $P11, rx78_curclass, "$!pos"
  # rx rxquantr81 ** 0..-1
    nqp_rxmark rx78_bstack, rxquantr81_done, rx78_pos, 0
  rxquantr81_loop:
    add $I11, rx78_pos, 1
    gt $I11, rx78_eos, rx78_fail
    substr $S10, rx78_tgt, rx78_pos, 1
    ne $S10, ucs4:"&", rx78_fail
    add rx78_pos, 1
    ge rx78_pos, rx78_eos, rx78_fail
    substr $S11, rx78_tgt, rx78_pos, 1
    index $I11, ucs4:"&", $S11
    ge $I11, 0, rx78_fail
  alt82_0:
    nqp_rxmark rx78_bstack, alt82_1, rx78_pos, 0
    repr_bind_attr_int rx78_cur, rx78_curclass, "$!pos", rx78_pos
    $P11 = rx78_cur."termish"()
    repr_get_attr_int $I11, $P11, rx78_curclass, "$!pos"
    lt $I11, 0, rx78_fail
    nqp_rxmark rx78_bstack, rxsubrule83_pass, -1, 0
  rxsubrule83_pass:
    rx78_cstack = rx78_cur."!cursor_capture"($P11, "termish")
    repr_get_attr_int rx78_pos, $P11, rx78_curclass, "$!pos"
    goto alt82_end
  alt82_1:
    repr_bind_attr_int rx78_cur, rx78_curclass, "$!pos", rx78_pos
    $P11 = rx78_cur."panic"("Null pattern not allowed")
    repr_get_attr_int $I11, $P11, rx78_curclass, "$!pos"
    lt $I11, 0, rx78_fail
    repr_get_attr_int rx78_pos, $P11, rx78_curclass, "$!pos"
  alt82_end:
    nqp_rxpeek $I19, rx78_bstack, rxquantr81_done
    inc $I19
    inc $I19
    set rx78_rep, rx78_bstack[$I19]
    nqp_rxcommit rx78_bstack, rxquantr81_done
    inc rx78_rep
    nqp_rxmark rx78_bstack, rxquantr81_done, rx78_pos, rx78_rep
    goto rxquantr81_loop
  rxquantr81_done:
    rx78_cur."!cursor_pass"(rx78_pos, "termconj", 'backtrack'=>1)
    .return (rx78_cur)
  rx78_restart:
    repr_get_attr_obj rx78_cstack, rx78_cur, rx78_curclass, "$!cstack"
  rx78_fail:
    unless rx78_bstack, rx78_done
    pop $I19, rx78_bstack
    if_null rx78_cstack, rx78_cstack_done
    unless rx78_cstack, rx78_cstack_done
    dec $I19
    set $P11, rx78_cstack[$I19]
  rx78_cstack_done:
    pop rx78_rep, rx78_bstack
    pop rx78_pos, rx78_bstack
    pop $I19, rx78_bstack
    lt rx78_pos, -1, rx78_done
    lt rx78_pos, 0, rx78_fail
    eq $I19, 0, rx78_fail
    if_null rx78_cstack, rx78_jump
    elements $I18, rx78_bstack
    le $I18, 0, rx78_cut
    dec $I18
    set $I18, rx78_bstack[$I18]
  rx78_cut:
    assign rx78_cstack, $I18
  rx78_jump:
    jump $I19
  rx78_done:
    rx78_cur."!cursor_fail"()
    .return (rx78_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "22_1338064447.841_caps"  :subid("184_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 59
    new $P103, "Hash"
    set $P103["termish"], 2
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "22_1338064447.841_nfa"  :subid("185_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 59
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 8
    push $P104, "termish"
    push $P104, 2
    new $P105, "ResizablePMCArray"
    push $P105, 2
    push $P105, 38
    push $P105, 3
    push $P105, 1
    push $P105, 0
    push $P105, 0
    new $P106, "ResizablePMCArray"
    push $P106, 7
    push $P106, "&"
    push $P106, 4
    new $P107, "ResizablePMCArray"
    push $P107, 0
    push $P107, 0
    push $P107, 0
    new $P108, "ResizablePMCArray"
    push $P108, $P103
    push $P108, $P104
    push $P108, $P105
    push $P108, $P106
    push $P108, $P107
    .return ($P108)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "termish"  :subid("24_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1095
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 64
    .const 'Sub' $P1100 = "23_1338064447.841" 
    capture_lex $P1100
    .lex "self", param_1095
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1096
    .lex "$/", $P1097
    .local string rx85_tgt
    .local int rx85_pos
    .local int rx85_off
    .local int rx85_eos
    .local int rx85_rep
    .local pmc rx85_cur
    .local pmc rx85_curclass
    .local pmc rx85_bstack
    .local pmc rx85_cstack
    (rx85_cur, rx85_tgt, rx85_pos, rx85_curclass, rx85_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx85_cur
    length rx85_eos, rx85_tgt
    eq $I19, 1, rx85_restart
    repr_get_attr_int $I11, self, rx85_curclass, "$!from"
    ne $I11, -1, rxscan86_done
    goto rxscan86_scan
  rxscan86_loop:
    inc rx85_pos
    gt rx85_pos, rx85_eos, rx85_fail
    repr_bind_attr_int rx85_cur, rx85_curclass, "$!from", rx85_pos
  rxscan86_scan:
    nqp_rxmark rx85_bstack, rxscan86_loop, rx85_pos, 0
  rxscan86_done:
  alt87_0:
    nqp_rxmark rx85_bstack, alt87_1, rx85_pos, 0
  # rx rxquantr88 ** 1..-1
    nqp_rxmark rx85_bstack, rxquantr88_done, -1, 0
  rxquantr88_loop:
    repr_bind_attr_int rx85_cur, rx85_curclass, "$!pos", rx85_pos
    $P11 = rx85_cur."quantified_atom"()
    repr_get_attr_int $I11, $P11, rx85_curclass, "$!pos"
    lt $I11, 0, rx85_fail
    goto rxsubrule89_pass
  rxsubrule89_back:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx85_curclass, "$!pos"
    lt $I11, 0, rx85_fail
  rxsubrule89_pass:
    rx85_cstack = rx85_cur."!cursor_capture"($P11, "noun")
    set_addr $I11, rxsubrule89_back
    push rx85_bstack, $I11
    push rx85_bstack, 0
    push rx85_bstack, rx85_pos
    elements $I11, rx85_cstack
    push rx85_bstack, $I11
    repr_get_attr_int rx85_pos, $P11, rx85_curclass, "$!pos"
    nqp_rxpeek $I19, rx85_bstack, rxquantr88_done
    inc $I19
    inc $I19
    set rx85_rep, rx85_bstack[$I19]
    nqp_rxcommit rx85_bstack, rxquantr88_done
    inc rx85_rep
    nqp_rxmark rx85_bstack, rxquantr88_done, rx85_pos, rx85_rep
    goto rxquantr88_loop
  rxquantr88_done:
    goto alt87_end
  alt87_1:
    .const 'Sub' $P1100 = "23_1338064447.841" 
    capture_lex $P1100
    repr_bind_attr_int rx85_cur, rx85_curclass, "$!pos", rx85_pos
    $P11 = rx85_cur.$P1100()
    repr_get_attr_int $I11, $P11, rx85_curclass, "$!pos"
    lt $I11, 0, rx85_fail
    nqp_rxmark rx85_bstack, rxsubrule92_pass, -1, 0
  rxsubrule92_pass:
    rx85_cstack = rx85_cur."!cursor_capture"($P11, 0)
    repr_get_attr_int rx85_pos, $P11, rx85_curclass, "$!pos"
    repr_bind_attr_int rx85_cur, rx85_curclass, "$!pos", rx85_pos
    $P11 = rx85_cur."panic"("Unrecognized regex metacharacter (must be quoted to match literally)")
    repr_get_attr_int $I11, $P11, rx85_curclass, "$!pos"
    lt $I11, 0, rx85_fail
    repr_get_attr_int rx85_pos, $P11, rx85_curclass, "$!pos"
  alt87_end:
    rx85_cur."!cursor_pass"(rx85_pos, "termish", 'backtrack'=>1)
    .return (rx85_cur)
  rx85_restart:
    repr_get_attr_obj rx85_cstack, rx85_cur, rx85_curclass, "$!cstack"
  rx85_fail:
    unless rx85_bstack, rx85_done
    pop $I19, rx85_bstack
    if_null rx85_cstack, rx85_cstack_done
    unless rx85_cstack, rx85_cstack_done
    dec $I19
    set $P11, rx85_cstack[$I19]
  rx85_cstack_done:
    pop rx85_rep, rx85_bstack
    pop rx85_pos, rx85_bstack
    pop $I19, rx85_bstack
    lt rx85_pos, -1, rx85_done
    lt rx85_pos, 0, rx85_fail
    eq $I19, 0, rx85_fail
    if_null rx85_cstack, rx85_jump
    elements $I18, rx85_bstack
    le $I18, 0, rx85_cut
    dec $I18
    set $I18, rx85_bstack[$I18]
  rx85_cut:
    assign rx85_cstack, $I18
  rx85_jump:
    jump $I19
  rx85_done:
    rx85_cur."!cursor_fail"()
    .return (rx85_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "24_1338064447.841_caps"  :subid("186_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 64
    new $P103, "Hash"
    set $P103["noun"], 2
    set $P103["0"], 1
    .return ($P103)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "_block1099"  :anon :subid("23_1338064447.841") :method :outer("24_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 64
    .lex unicode:"$\x{a2}", $P1103
    .local string rx90_tgt
    .local int rx90_pos
    .local int rx90_off
    .local int rx90_eos
    .local int rx90_rep
    .local pmc rx90_cur
    .local pmc rx90_curclass
    .local pmc rx90_bstack
    .local pmc rx90_cstack
    (rx90_cur, rx90_tgt, rx90_pos, rx90_curclass, rx90_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx90_cur
    length rx90_eos, rx90_tgt
    eq $I19, 1, rx90_restart
    repr_get_attr_int $I11, self, rx90_curclass, "$!from"
    ne $I11, -1, rxscan91_done
    goto rxscan91_scan
  rxscan91_loop:
    inc rx90_pos
    gt rx90_pos, rx90_eos, rx90_fail
    repr_bind_attr_int rx90_cur, rx90_curclass, "$!from", rx90_pos
  rxscan91_scan:
    nqp_rxmark rx90_bstack, rxscan91_loop, rx90_pos, 0
  rxscan91_done:
    ge rx90_pos, rx90_eos, rx90_fail
    is_cclass $I11, .CCLASS_WORD, rx90_tgt, rx90_pos
    if $I11, rx90_fail
    add rx90_pos, 1
    rx90_cur."!cursor_pass"(rx90_pos, 'backtrack'=>1)
    .return (rx90_cur)
  rx90_restart:
    repr_get_attr_obj rx90_cstack, rx90_cur, rx90_curclass, "$!cstack"
  rx90_fail:
    unless rx90_bstack, rx90_done
    pop $I19, rx90_bstack
    if_null rx90_cstack, rx90_cstack_done
    unless rx90_cstack, rx90_cstack_done
    dec $I19
    set $P11, rx90_cstack[$I19]
  rx90_cstack_done:
    pop rx90_rep, rx90_bstack
    pop rx90_pos, rx90_bstack
    pop $I19, rx90_bstack
    lt rx90_pos, -1, rx90_done
    lt rx90_pos, 0, rx90_fail
    eq $I19, 0, rx90_fail
    if_null rx90_cstack, rx90_jump
    elements $I18, rx90_bstack
    le $I18, 0, rx90_cut
    dec $I18
    set $I18, rx90_bstack[$I18]
  rx90_cut:
    assign rx90_cstack, $I18
  rx90_jump:
    jump $I19
  rx90_done:
    rx90_cur."!cursor_fail"()
    .return (rx90_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "23_1338064447.841_caps"  :subid("187_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 64
    new $P103, "Hash"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "23_1338064447.841_nfa"  :subid("188_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 64
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 5
    push $P104, 8192
    push $P104, 0
    new $P105, "ResizablePMCArray"
    push $P105, $P103
    push $P105, $P104
    .return ($P105)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "quantified_atom"  :subid("26_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1105
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 69
    .const 'Sub' $P1111 = "25_1338064447.841" 
    capture_lex $P1111
    .lex "self", param_1105
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1106
    .lex "$/", $P1107
    .local string rx94_tgt
    .local int rx94_pos
    .local int rx94_off
    .local int rx94_eos
    .local int rx94_rep
    .local pmc rx94_cur
    .local pmc rx94_curclass
    .local pmc rx94_bstack
    .local pmc rx94_cstack
    (rx94_cur, rx94_tgt, rx94_pos, rx94_curclass, rx94_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx94_cur
    length rx94_eos, rx94_tgt
    eq $I19, 1, rx94_restart
    repr_get_attr_int $I11, self, rx94_curclass, "$!from"
    ne $I11, -1, rxscan95_done
    goto rxscan95_scan
  rxscan95_loop:
    inc rx94_pos
    gt rx94_pos, rx94_eos, rx94_fail
    repr_bind_attr_int rx94_cur, rx94_curclass, "$!from", rx94_pos
  rxscan95_scan:
    nqp_rxmark rx94_bstack, rxscan95_loop, rx94_pos, 0
  rxscan95_done:
    repr_bind_attr_int rx94_cur, rx94_curclass, "$!pos", rx94_pos
    $P11 = rx94_cur."atom"()
    repr_get_attr_int $I11, $P11, rx94_curclass, "$!pos"
    lt $I11, 0, rx94_fail
    nqp_rxmark rx94_bstack, rxsubrule96_pass, -1, 0
  rxsubrule96_pass:
    rx94_cstack = rx94_cur."!cursor_capture"($P11, "atom")
    repr_get_attr_int rx94_pos, $P11, rx94_curclass, "$!pos"
  # rx rxquantr97 ** 0..1
    nqp_rxmark rx94_bstack, rxquantr97_done, rx94_pos, 0
  rxquantr97_loop:
    repr_bind_attr_int rx94_cur, rx94_curclass, "$!pos", rx94_pos
    $P11 = rx94_cur."ws"()
    repr_get_attr_int $I11, $P11, rx94_curclass, "$!pos"
    lt $I11, 0, rx94_fail
    repr_get_attr_int rx94_pos, $P11, rx94_curclass, "$!pos"
  alt99_0:
    nqp_rxmark rx94_bstack, alt99_1, rx94_pos, 0
    repr_bind_attr_int rx94_cur, rx94_curclass, "$!pos", rx94_pos
    $P11 = rx94_cur."quantifier"()
    repr_get_attr_int $I11, $P11, rx94_curclass, "$!pos"
    lt $I11, 0, rx94_fail
    nqp_rxmark rx94_bstack, rxsubrule100_pass, -1, 0
  rxsubrule100_pass:
    rx94_cstack = rx94_cur."!cursor_capture"($P11, "quantifier")
    repr_get_attr_int rx94_pos, $P11, rx94_curclass, "$!pos"
    goto alt99_end
  alt99_1:
    .const 'Sub' $P1111 = "25_1338064447.841" 
    capture_lex $P1111
    repr_bind_attr_int rx94_cur, rx94_curclass, "$!pos", rx94_pos
    $P11 = rx94_cur."before"($P1111)
    repr_get_attr_int $I11, $P11, rx94_curclass, "$!pos"
    lt $I11, 0, rx94_fail
    repr_bind_attr_int rx94_cur, rx94_curclass, "$!pos", rx94_pos
    $P11 = rx94_cur."backmod"()
    repr_get_attr_int $I11, $P11, rx94_curclass, "$!pos"
    lt $I11, 0, rx94_fail
    nqp_rxmark rx94_bstack, rxsubrule103_pass, -1, 0
  rxsubrule103_pass:
    rx94_cstack = rx94_cur."!cursor_capture"($P11, "backmod")
    repr_get_attr_int rx94_pos, $P11, rx94_curclass, "$!pos"
    repr_bind_attr_int rx94_cur, rx94_curclass, "$!pos", rx94_pos
    $P11 = rx94_cur."alpha"()
    repr_get_attr_int $I11, $P11, rx94_curclass, "$!pos"
    ge $I11, 0, rx94_fail
  alt99_end:
  # rx rxquantr104 ** 0..1
    nqp_rxmark rx94_bstack, rxquantr104_done, rx94_pos, 0
  rxquantr104_loop:
    repr_bind_attr_int rx94_cur, rx94_curclass, "$!pos", rx94_pos
    $P11 = rx94_cur."ws"()
    repr_get_attr_int $I11, $P11, rx94_curclass, "$!pos"
    lt $I11, 0, rx94_fail
    repr_get_attr_int rx94_pos, $P11, rx94_curclass, "$!pos"
    repr_bind_attr_int rx94_cur, rx94_curclass, "$!pos", rx94_pos
    $P11 = rx94_cur."separator"()
    repr_get_attr_int $I11, $P11, rx94_curclass, "$!pos"
    lt $I11, 0, rx94_fail
    nqp_rxmark rx94_bstack, rxsubrule106_pass, -1, 0
  rxsubrule106_pass:
    rx94_cstack = rx94_cur."!cursor_capture"($P11, "separator")
    repr_get_attr_int rx94_pos, $P11, rx94_curclass, "$!pos"
    nqp_rxpeek $I19, rx94_bstack, rxquantr104_done
    inc $I19
    inc $I19
    set rx94_rep, rx94_bstack[$I19]
    nqp_rxcommit rx94_bstack, rxquantr104_done
    inc rx94_rep
  rxquantr104_done:
    nqp_rxpeek $I19, rx94_bstack, rxquantr97_done
    inc $I19
    inc $I19
    set rx94_rep, rx94_bstack[$I19]
    nqp_rxcommit rx94_bstack, rxquantr97_done
    inc rx94_rep
  rxquantr97_done:
    rx94_cur."!cursor_pass"(rx94_pos, "quantified_atom", 'backtrack'=>1)
    .return (rx94_cur)
  rx94_restart:
    repr_get_attr_obj rx94_cstack, rx94_cur, rx94_curclass, "$!cstack"
  rx94_fail:
    unless rx94_bstack, rx94_done
    pop $I19, rx94_bstack
    if_null rx94_cstack, rx94_cstack_done
    unless rx94_cstack, rx94_cstack_done
    dec $I19
    set $P11, rx94_cstack[$I19]
  rx94_cstack_done:
    pop rx94_rep, rx94_bstack
    pop rx94_pos, rx94_bstack
    pop $I19, rx94_bstack
    lt rx94_pos, -1, rx94_done
    lt rx94_pos, 0, rx94_fail
    eq $I19, 0, rx94_fail
    if_null rx94_cstack, rx94_jump
    elements $I18, rx94_bstack
    le $I18, 0, rx94_cut
    dec $I18
    set $I18, rx94_bstack[$I18]
  rx94_cut:
    assign rx94_cstack, $I18
  rx94_jump:
    jump $I19
  rx94_done:
    rx94_cur."!cursor_fail"()
    .return (rx94_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "26_1338064447.841_caps"  :subid("189_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 69
    new $P103, "Hash"
    set $P103["atom"], 0
    set $P103["quantifier"], 2
    set $P103["backmod"], 2
    set $P103["separator"], 2
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "26_1338064447.841_nfa"  :subid("190_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 69
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 8
    push $P104, "atom"
    push $P104, 2
    new $P105, "ResizablePMCArray"
    push $P105, 8
    push $P105, "ws"
    push $P105, 3
    push $P105, 1
    push $P105, 0
    push $P105, 0
    new $P106, "ResizablePMCArray"
    push $P106, 8
    push $P106, "quantifier"
    push $P106, 4
    push $P106, 2
    push $P106, 58
    push $P106, 0
    new $P107, "ResizablePMCArray"
    push $P107, 8
    push $P107, "ws"
    push $P107, 5
    push $P107, 1
    push $P107, 0
    push $P107, 0
    new $P108, "ResizablePMCArray"
    push $P108, 8
    push $P108, "separator"
    push $P108, 0
    new $P109, "ResizablePMCArray"
    push $P109, $P103
    push $P109, $P104
    push $P109, $P105
    push $P109, $P106
    push $P109, $P107
    push $P109, $P108
    .return ($P109)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "_block1110"  :anon :subid("25_1338064447.841") :method :outer("26_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 69
    .lex unicode:"$\x{a2}", $P1114
    .local string rx101_tgt
    .local int rx101_pos
    .local int rx101_off
    .local int rx101_eos
    .local int rx101_rep
    .local pmc rx101_cur
    .local pmc rx101_curclass
    .local pmc rx101_bstack
    .local pmc rx101_cstack
    (rx101_cur, rx101_tgt, rx101_pos, rx101_curclass, rx101_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx101_cur
    length rx101_eos, rx101_tgt
    eq $I19, 1, rx101_restart
    repr_get_attr_int $I11, self, rx101_curclass, "$!from"
    ne $I11, -1, rxscan102_done
    goto rxscan102_scan
  rxscan102_loop:
    inc rx101_pos
    gt rx101_pos, rx101_eos, rx101_fail
    repr_bind_attr_int rx101_cur, rx101_curclass, "$!from", rx101_pos
  rxscan102_scan:
    nqp_rxmark rx101_bstack, rxscan102_loop, rx101_pos, 0
  rxscan102_done:
    add $I11, rx101_pos, 1
    gt $I11, rx101_eos, rx101_fail
    substr $S10, rx101_tgt, rx101_pos, 1
    ne $S10, ucs4:":", rx101_fail
    add rx101_pos, 1
    rx101_cur."!cursor_pass"(rx101_pos, 'backtrack'=>1)
    .return (rx101_cur)
  rx101_restart:
    repr_get_attr_obj rx101_cstack, rx101_cur, rx101_curclass, "$!cstack"
  rx101_fail:
    unless rx101_bstack, rx101_done
    pop $I19, rx101_bstack
    if_null rx101_cstack, rx101_cstack_done
    unless rx101_cstack, rx101_cstack_done
    dec $I19
    set $P11, rx101_cstack[$I19]
  rx101_cstack_done:
    pop rx101_rep, rx101_bstack
    pop rx101_pos, rx101_bstack
    pop $I19, rx101_bstack
    lt rx101_pos, -1, rx101_done
    lt rx101_pos, 0, rx101_fail
    eq $I19, 0, rx101_fail
    if_null rx101_cstack, rx101_jump
    elements $I18, rx101_bstack
    le $I18, 0, rx101_cut
    dec $I18
    set $I18, rx101_bstack[$I18]
  rx101_cut:
    assign rx101_cstack, $I18
  rx101_jump:
    jump $I19
  rx101_done:
    rx101_cur."!cursor_fail"()
    .return (rx101_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "25_1338064447.841_caps"  :subid("191_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 69
    new $P103, "Hash"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "25_1338064447.841_nfa"  :subid("192_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 69
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 2
    push $P104, 58
    push $P104, 0
    new $P105, "ResizablePMCArray"
    push $P105, $P103
    push $P105, $P104
    .return ($P105)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "separator"  :subid("27_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1116
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 77
    .lex "self", param_1116
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1117
    .lex "$/", $P1118
    .local string rx107_tgt
    .local int rx107_pos
    .local int rx107_off
    .local int rx107_eos
    .local int rx107_rep
    .local pmc rx107_cur
    .local pmc rx107_curclass
    .local pmc rx107_bstack
    .local pmc rx107_cstack
    (rx107_cur, rx107_tgt, rx107_pos, rx107_curclass, rx107_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx107_cur
    length rx107_eos, rx107_tgt
    eq $I19, 1, rx107_restart
    repr_get_attr_int $I11, self, rx107_curclass, "$!from"
    ne $I11, -1, rxscan108_done
    goto rxscan108_scan
  rxscan108_loop:
    inc rx107_pos
    gt rx107_pos, rx107_eos, rx107_fail
    repr_bind_attr_int rx107_cur, rx107_curclass, "$!from", rx107_pos
  rxscan108_scan:
    nqp_rxmark rx107_bstack, rxscan108_loop, rx107_pos, 0
  rxscan108_done:
    nqp_rxmark rx107_bstack, rxcap109_fail, rx107_pos, 0
    add $I11, rx107_pos, 1
    gt $I11, rx107_eos, rx107_fail
    substr $S10, rx107_tgt, rx107_pos, 1
    ne $S10, ucs4:"%", rx107_fail
    add rx107_pos, 1
  # rx rxquantr110 ** 0..1
    nqp_rxmark rx107_bstack, rxquantr110_done, rx107_pos, 0
  rxquantr110_loop:
    add $I11, rx107_pos, 1
    gt $I11, rx107_eos, rx107_fail
    substr $S10, rx107_tgt, rx107_pos, 1
    ne $S10, ucs4:"%", rx107_fail
    add rx107_pos, 1
    nqp_rxpeek $I19, rx107_bstack, rxquantr110_done
    inc $I19
    inc $I19
    set rx107_rep, rx107_bstack[$I19]
    nqp_rxcommit rx107_bstack, rxquantr110_done
    inc rx107_rep
  rxquantr110_done:
    nqp_rxpeek $I19, rx107_bstack, rxcap109_fail
    inc $I19
    set $I11, rx107_bstack[$I19]
    $P11 = rx107_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx107_pos)
    rx107_cstack = rx107_cur."!cursor_capture"($P11, "septype")
    goto rxcap109_done
  rxcap109_fail:
    goto rx107_fail
  rxcap109_done:
  # rx rxquantr111 ** 0..1
    nqp_rxmark rx107_bstack, rxquantr111_done, rx107_pos, 0
  rxquantr111_loop:
    repr_bind_attr_int rx107_cur, rx107_curclass, "$!pos", rx107_pos
    $P11 = rx107_cur."normspace"()
    repr_get_attr_int $I11, $P11, rx107_curclass, "$!pos"
    lt $I11, 0, rx107_fail
    goto rxsubrule112_pass
  rxsubrule112_back:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx107_curclass, "$!pos"
    lt $I11, 0, rx107_fail
  rxsubrule112_pass:
    rx107_cstack = rx107_cur."!cursor_capture"($P11, "normspace")
    set_addr $I11, rxsubrule112_back
    push rx107_bstack, $I11
    push rx107_bstack, 0
    push rx107_bstack, rx107_pos
    elements $I11, rx107_cstack
    push rx107_bstack, $I11
    repr_get_attr_int rx107_pos, $P11, rx107_curclass, "$!pos"
    nqp_rxpeek $I19, rx107_bstack, rxquantr111_done
    inc $I19
    inc $I19
    set rx107_rep, rx107_bstack[$I19]
    nqp_rxcommit rx107_bstack, rxquantr111_done
    inc rx107_rep
  rxquantr111_done:
    repr_bind_attr_int rx107_cur, rx107_curclass, "$!pos", rx107_pos
    $P11 = rx107_cur."quantified_atom"()
    repr_get_attr_int $I11, $P11, rx107_curclass, "$!pos"
    lt $I11, 0, rx107_fail
    nqp_rxmark rx107_bstack, rxsubrule113_pass, -1, 0
  rxsubrule113_pass:
    rx107_cstack = rx107_cur."!cursor_capture"($P11, "quantified_atom")
    repr_get_attr_int rx107_pos, $P11, rx107_curclass, "$!pos"
    rx107_cur."!cursor_pass"(rx107_pos, "separator", 'backtrack'=>1)
    .return (rx107_cur)
  rx107_restart:
    repr_get_attr_obj rx107_cstack, rx107_cur, rx107_curclass, "$!cstack"
  rx107_fail:
    unless rx107_bstack, rx107_done
    pop $I19, rx107_bstack
    if_null rx107_cstack, rx107_cstack_done
    unless rx107_cstack, rx107_cstack_done
    dec $I19
    set $P11, rx107_cstack[$I19]
  rx107_cstack_done:
    pop rx107_rep, rx107_bstack
    pop rx107_pos, rx107_bstack
    pop $I19, rx107_bstack
    lt rx107_pos, -1, rx107_done
    lt rx107_pos, 0, rx107_fail
    eq $I19, 0, rx107_fail
    if_null rx107_cstack, rx107_jump
    elements $I18, rx107_bstack
    le $I18, 0, rx107_cut
    dec $I18
    set $I18, rx107_bstack[$I18]
  rx107_cut:
    assign rx107_cstack, $I18
  rx107_jump:
    jump $I19
  rx107_done:
    rx107_cur."!cursor_fail"()
    .return (rx107_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "27_1338064447.841_caps"  :subid("193_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 77
    new $P103, "Hash"
    set $P103["septype"], 0
    set $P103["normspace"], 2
    set $P103["quantified_atom"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "27_1338064447.841_nfa"  :subid("194_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 77
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 2
    push $P104, 37
    push $P104, 2
    new $P105, "ResizablePMCArray"
    push $P105, 2
    push $P105, 37
    push $P105, 3
    push $P105, 1
    push $P105, 0
    push $P105, 3
    new $P106, "ResizablePMCArray"
    push $P106, 8
    push $P106, "normspace"
    push $P106, 4
    push $P106, 1
    push $P106, 0
    push $P106, 4
    new $P107, "ResizablePMCArray"
    push $P107, 8
    push $P107, "quantified_atom"
    push $P107, 0
    new $P108, "ResizablePMCArray"
    push $P108, $P103
    push $P108, $P104
    push $P108, $P105
    push $P108, $P106
    push $P108, $P107
    .return ($P108)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "atom"  :subid("29_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1122
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 81
    .const 'Sub' $P1128 = "28_1338064447.841" 
    capture_lex $P1128
    .lex "self", param_1122
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1123
    .lex "$/", $P1124
    .local string rx114_tgt
    .local int rx114_pos
    .local int rx114_off
    .local int rx114_eos
    .local int rx114_rep
    .local pmc rx114_cur
    .local pmc rx114_curclass
    .local pmc rx114_bstack
    .local pmc rx114_cstack
    (rx114_cur, rx114_tgt, rx114_pos, rx114_curclass, rx114_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx114_cur
    length rx114_eos, rx114_tgt
    eq $I19, 1, rx114_restart
    repr_get_attr_int $I11, self, rx114_curclass, "$!from"
    ne $I11, -1, rxscan115_done
    goto rxscan115_scan
  rxscan115_loop:
    inc rx114_pos
    gt rx114_pos, rx114_eos, rx114_fail
    repr_bind_attr_int rx114_cur, rx114_curclass, "$!from", rx114_pos
  rxscan115_scan:
    nqp_rxmark rx114_bstack, rxscan115_loop, rx114_pos, 0
  rxscan115_done:
  alt116_0:
    nqp_rxmark rx114_bstack, alt116_1, rx114_pos, 0
    ge rx114_pos, rx114_eos, rx114_fail
    is_cclass $I11, .CCLASS_WORD, rx114_tgt, rx114_pos
    unless $I11, rx114_fail
    add rx114_pos, 1
  # rx rxquantr117 ** 0..1
    nqp_rxmark rx114_bstack, rxquantr117_done, rx114_pos, 0
  rxquantr117_loop:
  # rx rxquantg118 ** 1..-1
  rxquantg118_loop:
    ge rx114_pos, rx114_eos, rx114_fail
    is_cclass $I11, .CCLASS_WORD, rx114_tgt, rx114_pos
    unless $I11, rx114_fail
    add rx114_pos, 1
    nqp_rxmark rx114_bstack, rxquantg118_done, rx114_pos, rx114_rep
    goto rxquantg118_loop
  rxquantg118_done:
    .const 'Sub' $P1128 = "28_1338064447.841" 
    capture_lex $P1128
    repr_bind_attr_int rx114_cur, rx114_curclass, "$!pos", rx114_pos
    $P11 = rx114_cur."before"($P1128)
    repr_get_attr_int $I11, $P11, rx114_curclass, "$!pos"
    lt $I11, 0, rx114_fail
    nqp_rxpeek $I19, rx114_bstack, rxquantr117_done
    inc $I19
    inc $I19
    set rx114_rep, rx114_bstack[$I19]
    nqp_rxcommit rx114_bstack, rxquantr117_done
    inc rx114_rep
  rxquantr117_done:
    goto alt116_end
  alt116_1:
    repr_bind_attr_int rx114_cur, rx114_curclass, "$!pos", rx114_pos
    $P11 = rx114_cur."metachar"()
    repr_get_attr_int $I11, $P11, rx114_curclass, "$!pos"
    lt $I11, 0, rx114_fail
    nqp_rxmark rx114_bstack, rxsubrule121_pass, -1, 0
  rxsubrule121_pass:
    rx114_cstack = rx114_cur."!cursor_capture"($P11, "metachar")
    repr_get_attr_int rx114_pos, $P11, rx114_curclass, "$!pos"
  alt116_end:
    rx114_cur."!cursor_pass"(rx114_pos, "atom", 'backtrack'=>1)
    .return (rx114_cur)
  rx114_restart:
    repr_get_attr_obj rx114_cstack, rx114_cur, rx114_curclass, "$!cstack"
  rx114_fail:
    unless rx114_bstack, rx114_done
    pop $I19, rx114_bstack
    if_null rx114_cstack, rx114_cstack_done
    unless rx114_cstack, rx114_cstack_done
    dec $I19
    set $P11, rx114_cstack[$I19]
  rx114_cstack_done:
    pop rx114_rep, rx114_bstack
    pop rx114_pos, rx114_bstack
    pop $I19, rx114_bstack
    lt rx114_pos, -1, rx114_done
    lt rx114_pos, 0, rx114_fail
    eq $I19, 0, rx114_fail
    if_null rx114_cstack, rx114_jump
    elements $I18, rx114_bstack
    le $I18, 0, rx114_cut
    dec $I18
    set $I18, rx114_bstack[$I18]
  rx114_cut:
    assign rx114_cstack, $I18
  rx114_jump:
    jump $I19
  rx114_done:
    rx114_cur."!cursor_fail"()
    .return (rx114_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "29_1338064447.841_caps"  :subid("195_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 81
    new $P103, "Hash"
    set $P103["metachar"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "29_1338064447.841_nfa"  :subid("196_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 81
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 4
    push $P104, 8192
    push $P104, 2
    push $P104, 8
    push $P104, "metachar"
    push $P104, 0
    new $P105, "ResizablePMCArray"
    push $P105, 1
    push $P105, 0
    push $P105, 3
    push $P105, 1
    push $P105, 0
    push $P105, 0
    new $P106, "ResizablePMCArray"
    push $P106, 4
    push $P106, 8192
    push $P106, 4
    new $P107, "ResizablePMCArray"
    push $P107, 1
    push $P107, 0
    push $P107, 3
    push $P107, 1
    push $P107, 0
    push $P107, 5
    push $P107, 4
    push $P107, 8192
    push $P107, 0
    new $P108, "ResizablePMCArray"
    new $P109, "ResizablePMCArray"
    push $P109, $P103
    push $P109, $P104
    push $P109, $P105
    push $P109, $P106
    push $P109, $P107
    push $P109, $P108
    .return ($P109)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "_block1127"  :anon :subid("28_1338064447.841") :method :outer("29_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 81
    .lex unicode:"$\x{a2}", $P1131
    .local string rx119_tgt
    .local int rx119_pos
    .local int rx119_off
    .local int rx119_eos
    .local int rx119_rep
    .local pmc rx119_cur
    .local pmc rx119_curclass
    .local pmc rx119_bstack
    .local pmc rx119_cstack
    (rx119_cur, rx119_tgt, rx119_pos, rx119_curclass, rx119_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx119_cur
    length rx119_eos, rx119_tgt
    eq $I19, 1, rx119_restart
    repr_get_attr_int $I11, self, rx119_curclass, "$!from"
    ne $I11, -1, rxscan120_done
    goto rxscan120_scan
  rxscan120_loop:
    inc rx119_pos
    gt rx119_pos, rx119_eos, rx119_fail
    repr_bind_attr_int rx119_cur, rx119_curclass, "$!from", rx119_pos
  rxscan120_scan:
    nqp_rxmark rx119_bstack, rxscan120_loop, rx119_pos, 0
  rxscan120_done:
    ge rx119_pos, rx119_eos, rx119_fail
    is_cclass $I11, .CCLASS_WORD, rx119_tgt, rx119_pos
    unless $I11, rx119_fail
    add rx119_pos, 1
    rx119_cur."!cursor_pass"(rx119_pos, 'backtrack'=>1)
    .return (rx119_cur)
  rx119_restart:
    repr_get_attr_obj rx119_cstack, rx119_cur, rx119_curclass, "$!cstack"
  rx119_fail:
    unless rx119_bstack, rx119_done
    pop $I19, rx119_bstack
    if_null rx119_cstack, rx119_cstack_done
    unless rx119_cstack, rx119_cstack_done
    dec $I19
    set $P11, rx119_cstack[$I19]
  rx119_cstack_done:
    pop rx119_rep, rx119_bstack
    pop rx119_pos, rx119_bstack
    pop $I19, rx119_bstack
    lt rx119_pos, -1, rx119_done
    lt rx119_pos, 0, rx119_fail
    eq $I19, 0, rx119_fail
    if_null rx119_cstack, rx119_jump
    elements $I18, rx119_bstack
    le $I18, 0, rx119_cut
    dec $I18
    set $I18, rx119_bstack[$I18]
  rx119_cut:
    assign rx119_cstack, $I18
  rx119_jump:
    jump $I19
  rx119_done:
    rx119_cur."!cursor_fail"()
    .return (rx119_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "28_1338064447.841_caps"  :subid("197_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 81
    new $P103, "Hash"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "28_1338064447.841_nfa"  :subid("198_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 81
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 4
    push $P104, 8192
    push $P104, 0
    new $P105, "ResizablePMCArray"
    push $P105, $P103
    push $P105, $P104
    .return ($P105)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "quantifier"  :subid("30_1338064447.841")
    .param pmc param_1133
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 89
    .lex "self", param_1133
    $P101 = param_1133."!protoregex"("quantifier")
    .return ($P101)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "quantifier:sym<*>"  :subid("31_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1135
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 90
    .lex "self", param_1135
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1136
    .lex "$/", $P1137
    .local string rx122_tgt
    .local int rx122_pos
    .local int rx122_off
    .local int rx122_eos
    .local int rx122_rep
    .local pmc rx122_cur
    .local pmc rx122_curclass
    .local pmc rx122_bstack
    .local pmc rx122_cstack
    (rx122_cur, rx122_tgt, rx122_pos, rx122_curclass, rx122_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx122_cur
    length rx122_eos, rx122_tgt
    eq $I19, 1, rx122_restart
    repr_get_attr_int $I11, self, rx122_curclass, "$!from"
    ne $I11, -1, rxscan123_done
    goto rxscan123_scan
  rxscan123_loop:
    inc rx122_pos
    gt rx122_pos, rx122_eos, rx122_fail
    repr_bind_attr_int rx122_cur, rx122_curclass, "$!from", rx122_pos
  rxscan123_scan:
    nqp_rxmark rx122_bstack, rxscan123_loop, rx122_pos, 0
  rxscan123_done:
    nqp_rxmark rx122_bstack, rxcap124_fail, rx122_pos, 0
    add $I11, rx122_pos, 1
    gt $I11, rx122_eos, rx122_fail
    substr $S10, rx122_tgt, rx122_pos, 1
    ne $S10, ucs4:"*", rx122_fail
    add rx122_pos, 1
    nqp_rxpeek $I19, rx122_bstack, rxcap124_fail
    inc $I19
    set $I11, rx122_bstack[$I19]
    $P11 = rx122_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx122_pos)
    rx122_cstack = rx122_cur."!cursor_capture"($P11, "sym")
    goto rxcap124_done
  rxcap124_fail:
    goto rx122_fail
  rxcap124_done:
    repr_bind_attr_int rx122_cur, rx122_curclass, "$!pos", rx122_pos
    $P11 = rx122_cur."backmod"()
    repr_get_attr_int $I11, $P11, rx122_curclass, "$!pos"
    lt $I11, 0, rx122_fail
    nqp_rxmark rx122_bstack, rxsubrule125_pass, -1, 0
  rxsubrule125_pass:
    rx122_cstack = rx122_cur."!cursor_capture"($P11, "backmod")
    repr_get_attr_int rx122_pos, $P11, rx122_curclass, "$!pos"
    rx122_cur."!cursor_pass"(rx122_pos, "quantifier:sym<*>", 'backtrack'=>1)
    .return (rx122_cur)
  rx122_restart:
    repr_get_attr_obj rx122_cstack, rx122_cur, rx122_curclass, "$!cstack"
  rx122_fail:
    unless rx122_bstack, rx122_done
    pop $I19, rx122_bstack
    if_null rx122_cstack, rx122_cstack_done
    unless rx122_cstack, rx122_cstack_done
    dec $I19
    set $P11, rx122_cstack[$I19]
  rx122_cstack_done:
    pop rx122_rep, rx122_bstack
    pop rx122_pos, rx122_bstack
    pop $I19, rx122_bstack
    lt rx122_pos, -1, rx122_done
    lt rx122_pos, 0, rx122_fail
    eq $I19, 0, rx122_fail
    if_null rx122_cstack, rx122_jump
    elements $I18, rx122_bstack
    le $I18, 0, rx122_cut
    dec $I18
    set $I18, rx122_bstack[$I18]
  rx122_cut:
    assign rx122_cstack, $I18
  rx122_jump:
    jump $I19
  rx122_done:
    rx122_cur."!cursor_fail"()
    .return (rx122_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "31_1338064447.841_caps"  :subid("199_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 90
    new $P103, "Hash"
    set $P103["sym"], 0
    set $P103["backmod"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "31_1338064447.841_nfa"  :subid("200_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 90
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 2
    push $P104, 42
    push $P104, 2
    new $P105, "ResizablePMCArray"
    push $P105, 8
    push $P105, "backmod"
    push $P105, 0
    new $P106, "ResizablePMCArray"
    push $P106, $P103
    push $P106, $P104
    push $P106, $P105
    .return ($P106)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "quantifier:sym<+>"  :subid("32_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1141
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 91
    .lex "self", param_1141
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1142
    .lex "$/", $P1143
    .local string rx126_tgt
    .local int rx126_pos
    .local int rx126_off
    .local int rx126_eos
    .local int rx126_rep
    .local pmc rx126_cur
    .local pmc rx126_curclass
    .local pmc rx126_bstack
    .local pmc rx126_cstack
    (rx126_cur, rx126_tgt, rx126_pos, rx126_curclass, rx126_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx126_cur
    length rx126_eos, rx126_tgt
    eq $I19, 1, rx126_restart
    repr_get_attr_int $I11, self, rx126_curclass, "$!from"
    ne $I11, -1, rxscan127_done
    goto rxscan127_scan
  rxscan127_loop:
    inc rx126_pos
    gt rx126_pos, rx126_eos, rx126_fail
    repr_bind_attr_int rx126_cur, rx126_curclass, "$!from", rx126_pos
  rxscan127_scan:
    nqp_rxmark rx126_bstack, rxscan127_loop, rx126_pos, 0
  rxscan127_done:
    nqp_rxmark rx126_bstack, rxcap128_fail, rx126_pos, 0
    add $I11, rx126_pos, 1
    gt $I11, rx126_eos, rx126_fail
    substr $S10, rx126_tgt, rx126_pos, 1
    ne $S10, ucs4:"+", rx126_fail
    add rx126_pos, 1
    nqp_rxpeek $I19, rx126_bstack, rxcap128_fail
    inc $I19
    set $I11, rx126_bstack[$I19]
    $P11 = rx126_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx126_pos)
    rx126_cstack = rx126_cur."!cursor_capture"($P11, "sym")
    goto rxcap128_done
  rxcap128_fail:
    goto rx126_fail
  rxcap128_done:
    repr_bind_attr_int rx126_cur, rx126_curclass, "$!pos", rx126_pos
    $P11 = rx126_cur."backmod"()
    repr_get_attr_int $I11, $P11, rx126_curclass, "$!pos"
    lt $I11, 0, rx126_fail
    nqp_rxmark rx126_bstack, rxsubrule129_pass, -1, 0
  rxsubrule129_pass:
    rx126_cstack = rx126_cur."!cursor_capture"($P11, "backmod")
    repr_get_attr_int rx126_pos, $P11, rx126_curclass, "$!pos"
    rx126_cur."!cursor_pass"(rx126_pos, "quantifier:sym<+>", 'backtrack'=>1)
    .return (rx126_cur)
  rx126_restart:
    repr_get_attr_obj rx126_cstack, rx126_cur, rx126_curclass, "$!cstack"
  rx126_fail:
    unless rx126_bstack, rx126_done
    pop $I19, rx126_bstack
    if_null rx126_cstack, rx126_cstack_done
    unless rx126_cstack, rx126_cstack_done
    dec $I19
    set $P11, rx126_cstack[$I19]
  rx126_cstack_done:
    pop rx126_rep, rx126_bstack
    pop rx126_pos, rx126_bstack
    pop $I19, rx126_bstack
    lt rx126_pos, -1, rx126_done
    lt rx126_pos, 0, rx126_fail
    eq $I19, 0, rx126_fail
    if_null rx126_cstack, rx126_jump
    elements $I18, rx126_bstack
    le $I18, 0, rx126_cut
    dec $I18
    set $I18, rx126_bstack[$I18]
  rx126_cut:
    assign rx126_cstack, $I18
  rx126_jump:
    jump $I19
  rx126_done:
    rx126_cur."!cursor_fail"()
    .return (rx126_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "32_1338064447.841_caps"  :subid("201_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 91
    new $P103, "Hash"
    set $P103["sym"], 0
    set $P103["backmod"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "32_1338064447.841_nfa"  :subid("202_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 91
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 2
    push $P104, 43
    push $P104, 2
    new $P105, "ResizablePMCArray"
    push $P105, 8
    push $P105, "backmod"
    push $P105, 0
    new $P106, "ResizablePMCArray"
    push $P106, $P103
    push $P106, $P104
    push $P106, $P105
    .return ($P106)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "quantifier:sym<?>"  :subid("33_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1147
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 92
    .lex "self", param_1147
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1148
    .lex "$/", $P1149
    .local string rx130_tgt
    .local int rx130_pos
    .local int rx130_off
    .local int rx130_eos
    .local int rx130_rep
    .local pmc rx130_cur
    .local pmc rx130_curclass
    .local pmc rx130_bstack
    .local pmc rx130_cstack
    (rx130_cur, rx130_tgt, rx130_pos, rx130_curclass, rx130_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx130_cur
    length rx130_eos, rx130_tgt
    eq $I19, 1, rx130_restart
    repr_get_attr_int $I11, self, rx130_curclass, "$!from"
    ne $I11, -1, rxscan131_done
    goto rxscan131_scan
  rxscan131_loop:
    inc rx130_pos
    gt rx130_pos, rx130_eos, rx130_fail
    repr_bind_attr_int rx130_cur, rx130_curclass, "$!from", rx130_pos
  rxscan131_scan:
    nqp_rxmark rx130_bstack, rxscan131_loop, rx130_pos, 0
  rxscan131_done:
    nqp_rxmark rx130_bstack, rxcap132_fail, rx130_pos, 0
    add $I11, rx130_pos, 1
    gt $I11, rx130_eos, rx130_fail
    substr $S10, rx130_tgt, rx130_pos, 1
    ne $S10, ucs4:"?", rx130_fail
    add rx130_pos, 1
    nqp_rxpeek $I19, rx130_bstack, rxcap132_fail
    inc $I19
    set $I11, rx130_bstack[$I19]
    $P11 = rx130_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx130_pos)
    rx130_cstack = rx130_cur."!cursor_capture"($P11, "sym")
    goto rxcap132_done
  rxcap132_fail:
    goto rx130_fail
  rxcap132_done:
    repr_bind_attr_int rx130_cur, rx130_curclass, "$!pos", rx130_pos
    $P11 = rx130_cur."backmod"()
    repr_get_attr_int $I11, $P11, rx130_curclass, "$!pos"
    lt $I11, 0, rx130_fail
    nqp_rxmark rx130_bstack, rxsubrule133_pass, -1, 0
  rxsubrule133_pass:
    rx130_cstack = rx130_cur."!cursor_capture"($P11, "backmod")
    repr_get_attr_int rx130_pos, $P11, rx130_curclass, "$!pos"
    rx130_cur."!cursor_pass"(rx130_pos, "quantifier:sym<?>", 'backtrack'=>1)
    .return (rx130_cur)
  rx130_restart:
    repr_get_attr_obj rx130_cstack, rx130_cur, rx130_curclass, "$!cstack"
  rx130_fail:
    unless rx130_bstack, rx130_done
    pop $I19, rx130_bstack
    if_null rx130_cstack, rx130_cstack_done
    unless rx130_cstack, rx130_cstack_done
    dec $I19
    set $P11, rx130_cstack[$I19]
  rx130_cstack_done:
    pop rx130_rep, rx130_bstack
    pop rx130_pos, rx130_bstack
    pop $I19, rx130_bstack
    lt rx130_pos, -1, rx130_done
    lt rx130_pos, 0, rx130_fail
    eq $I19, 0, rx130_fail
    if_null rx130_cstack, rx130_jump
    elements $I18, rx130_bstack
    le $I18, 0, rx130_cut
    dec $I18
    set $I18, rx130_bstack[$I18]
  rx130_cut:
    assign rx130_cstack, $I18
  rx130_jump:
    jump $I19
  rx130_done:
    rx130_cur."!cursor_fail"()
    .return (rx130_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "33_1338064447.841_caps"  :subid("203_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 92
    new $P103, "Hash"
    set $P103["sym"], 0
    set $P103["backmod"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "33_1338064447.841_nfa"  :subid("204_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 92
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 2
    push $P104, 63
    push $P104, 2
    new $P105, "ResizablePMCArray"
    push $P105, 8
    push $P105, "backmod"
    push $P105, 0
    new $P106, "ResizablePMCArray"
    push $P106, $P103
    push $P106, $P104
    push $P106, $P105
    .return ($P106)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "quantifier:sym<{N,M}>"  :subid("37_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1153
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 93
    .const 'Sub' $P1170 = "36_1338064447.841" 
    capture_lex $P1170
    .const 'Sub' $P1165 = "35_1338064447.841" 
    capture_lex $P1165
    .const 'Sub' $P1160 = "34_1338064447.841" 
    capture_lex $P1160
    .const 'Sub' $P1158 = "206_1338064447.841" 
    capture_lex $P1158
    .lex "self", param_1153
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1154
    .lex "$/", $P1155
    .local string rx134_tgt
    .local int rx134_pos
    .local int rx134_off
    .local int rx134_eos
    .local int rx134_rep
    .local pmc rx134_cur
    .local pmc rx134_curclass
    .local pmc rx134_bstack
    .local pmc rx134_cstack
    (rx134_cur, rx134_tgt, rx134_pos, rx134_curclass, rx134_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx134_cur
    length rx134_eos, rx134_tgt
    eq $I19, 1, rx134_restart
    repr_get_attr_int $I11, self, rx134_curclass, "$!from"
    ne $I11, -1, rxscan135_done
    goto rxscan135_scan
  rxscan135_loop:
    inc rx134_pos
    gt rx134_pos, rx134_eos, rx134_fail
    repr_bind_attr_int rx134_cur, rx134_curclass, "$!from", rx134_pos
  rxscan135_scan:
    nqp_rxmark rx134_bstack, rxscan135_loop, rx134_pos, 0
  rxscan135_done:
    repr_bind_attr_int rx134_cur, rx134_curclass, "$!pos", rx134_pos
    store_lex unicode:"$\x{a2}", rx134_cur
    find_lex $P103, unicode:"$\x{a2}"
    $P104 = $P103."MATCH"()
    store_lex "$/", $P104
    .const 'Sub' $P1158 = "206_1338064447.841" 
    capture_lex $P1158
    $P105 = $P1158()
    add $I11, rx134_pos, 1
    gt $I11, rx134_eos, rx134_fail
    substr $S10, rx134_tgt, rx134_pos, 1
    ne $S10, ucs4:"{", rx134_fail
    add rx134_pos, 1
    .const 'Sub' $P1160 = "34_1338064447.841" 
    capture_lex $P1160
    repr_bind_attr_int rx134_cur, rx134_curclass, "$!pos", rx134_pos
    $P11 = rx134_cur.$P1160()
    repr_get_attr_int $I11, $P11, rx134_curclass, "$!pos"
    lt $I11, 0, rx134_fail
    nqp_rxmark rx134_bstack, rxsubrule139_pass, -1, 0
  rxsubrule139_pass:
    rx134_cstack = rx134_cur."!cursor_capture"($P11, 0)
    repr_get_attr_int rx134_pos, $P11, rx134_curclass, "$!pos"
    .const 'Sub' $P1165 = "35_1338064447.841" 
    capture_lex $P1165
    repr_bind_attr_int rx134_cur, rx134_curclass, "$!pos", rx134_pos
    $P11 = rx134_cur.$P1165()
    repr_get_attr_int $I11, $P11, rx134_curclass, "$!pos"
    lt $I11, 0, rx134_fail
    nqp_rxmark rx134_bstack, rxsubrule143_pass, -1, 0
  rxsubrule143_pass:
    rx134_cstack = rx134_cur."!cursor_capture"($P11, "1")
    repr_get_attr_int rx134_pos, $P11, rx134_curclass, "$!pos"
    .const 'Sub' $P1170 = "36_1338064447.841" 
    capture_lex $P1170
    repr_bind_attr_int rx134_cur, rx134_curclass, "$!pos", rx134_pos
    $P11 = rx134_cur.$P1170()
    repr_get_attr_int $I11, $P11, rx134_curclass, "$!pos"
    lt $I11, 0, rx134_fail
    nqp_rxmark rx134_bstack, rxsubrule147_pass, -1, 0
  rxsubrule147_pass:
    rx134_cstack = rx134_cur."!cursor_capture"($P11, "2")
    repr_get_attr_int rx134_pos, $P11, rx134_curclass, "$!pos"
    add $I11, rx134_pos, 1
    gt $I11, rx134_eos, rx134_fail
    substr $S10, rx134_tgt, rx134_pos, 1
    ne $S10, ucs4:"}", rx134_fail
    add rx134_pos, 1
    repr_bind_attr_int rx134_cur, rx134_curclass, "$!pos", rx134_pos
    $P11 = rx134_cur."obs"("{N,M} as general quantifier", "** N..M (or ** N..*)")
    repr_get_attr_int $I11, $P11, rx134_curclass, "$!pos"
    lt $I11, 0, rx134_fail
    repr_get_attr_int rx134_pos, $P11, rx134_curclass, "$!pos"
    rx134_cur."!cursor_pass"(rx134_pos, "quantifier:sym<{N,M}>", 'backtrack'=>1)
    .return (rx134_cur)
  rx134_restart:
    repr_get_attr_obj rx134_cstack, rx134_cur, rx134_curclass, "$!cstack"
  rx134_fail:
    unless rx134_bstack, rx134_done
    pop $I19, rx134_bstack
    if_null rx134_cstack, rx134_cstack_done
    unless rx134_cstack, rx134_cstack_done
    dec $I19
    set $P11, rx134_cstack[$I19]
  rx134_cstack_done:
    pop rx134_rep, rx134_bstack
    pop rx134_pos, rx134_bstack
    pop $I19, rx134_bstack
    lt rx134_pos, -1, rx134_done
    lt rx134_pos, 0, rx134_fail
    eq $I19, 0, rx134_fail
    if_null rx134_cstack, rx134_jump
    elements $I18, rx134_bstack
    le $I18, 0, rx134_cut
    dec $I18
    set $I18, rx134_bstack[$I18]
  rx134_cut:
    assign rx134_cstack, $I18
  rx134_jump:
    jump $I19
  rx134_done:
    rx134_cur."!cursor_fail"()
    .return (rx134_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "37_1338064447.841_caps"  :subid("205_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 93
    new $P103, "Hash"
    set $P103["0"], 1
    set $P103["1"], 1
    set $P103["2"], 1
    .return ($P103)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "_block1157"  :anon :subid("206_1338064447.841") :outer("37_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 93
    .return ()
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "_block1159"  :anon :subid("34_1338064447.841") :method :outer("37_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 93
    .lex unicode:"$\x{a2}", $P1163
    .local string rx136_tgt
    .local int rx136_pos
    .local int rx136_off
    .local int rx136_eos
    .local int rx136_rep
    .local pmc rx136_cur
    .local pmc rx136_curclass
    .local pmc rx136_bstack
    .local pmc rx136_cstack
    (rx136_cur, rx136_tgt, rx136_pos, rx136_curclass, rx136_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx136_cur
    length rx136_eos, rx136_tgt
    eq $I19, 1, rx136_restart
    repr_get_attr_int $I11, self, rx136_curclass, "$!from"
    ne $I11, -1, rxscan137_done
    goto rxscan137_scan
  rxscan137_loop:
    inc rx136_pos
    gt rx136_pos, rx136_eos, rx136_fail
    repr_bind_attr_int rx136_cur, rx136_curclass, "$!from", rx136_pos
  rxscan137_scan:
    nqp_rxmark rx136_bstack, rxscan137_loop, rx136_pos, 0
  rxscan137_done:
  # rx rxquantr138 ** 1..-1
    nqp_rxmark rx136_bstack, rxquantr138_done, -1, 0
  rxquantr138_loop:
    ge rx136_pos, rx136_eos, rx136_fail
    is_cclass $I11, .CCLASS_NUMERIC, rx136_tgt, rx136_pos
    unless $I11, rx136_fail
    add rx136_pos, 1
    nqp_rxpeek $I19, rx136_bstack, rxquantr138_done
    inc $I19
    inc $I19
    set rx136_rep, rx136_bstack[$I19]
    nqp_rxcommit rx136_bstack, rxquantr138_done
    inc rx136_rep
    nqp_rxmark rx136_bstack, rxquantr138_done, rx136_pos, rx136_rep
    goto rxquantr138_loop
  rxquantr138_done:
    rx136_cur."!cursor_pass"(rx136_pos, 'backtrack'=>1)
    .return (rx136_cur)
  rx136_restart:
    repr_get_attr_obj rx136_cstack, rx136_cur, rx136_curclass, "$!cstack"
  rx136_fail:
    unless rx136_bstack, rx136_done
    pop $I19, rx136_bstack
    if_null rx136_cstack, rx136_cstack_done
    unless rx136_cstack, rx136_cstack_done
    dec $I19
    set $P11, rx136_cstack[$I19]
  rx136_cstack_done:
    pop rx136_rep, rx136_bstack
    pop rx136_pos, rx136_bstack
    pop $I19, rx136_bstack
    lt rx136_pos, -1, rx136_done
    lt rx136_pos, 0, rx136_fail
    eq $I19, 0, rx136_fail
    if_null rx136_cstack, rx136_jump
    elements $I18, rx136_bstack
    le $I18, 0, rx136_cut
    dec $I18
    set $I18, rx136_bstack[$I18]
  rx136_cut:
    assign rx136_cstack, $I18
  rx136_jump:
    jump $I19
  rx136_done:
    rx136_cur."!cursor_fail"()
    .return (rx136_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "34_1338064447.841_caps"  :subid("207_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 93
    new $P106, "Hash"
    .return ($P106)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "34_1338064447.841_nfa"  :subid("208_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 93
    new $P106, "ResizablePMCArray"
    new $P107, "ResizablePMCArray"
    push $P107, 1
    push $P107, 0
    push $P107, 2
    new $P108, "ResizablePMCArray"
    push $P108, 4
    push $P108, 8
    push $P108, 3
    new $P109, "ResizablePMCArray"
    push $P109, 1
    push $P109, 0
    push $P109, 2
    push $P109, 1
    push $P109, 0
    push $P109, 0
    new $P110, "ResizablePMCArray"
    push $P110, $P106
    push $P110, $P107
    push $P110, $P108
    push $P110, $P109
    .return ($P110)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "_block1164"  :anon :subid("35_1338064447.841") :method :outer("37_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 93
    .lex unicode:"$\x{a2}", $P1168
    .local string rx140_tgt
    .local int rx140_pos
    .local int rx140_off
    .local int rx140_eos
    .local int rx140_rep
    .local pmc rx140_cur
    .local pmc rx140_curclass
    .local pmc rx140_bstack
    .local pmc rx140_cstack
    (rx140_cur, rx140_tgt, rx140_pos, rx140_curclass, rx140_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx140_cur
    length rx140_eos, rx140_tgt
    eq $I19, 1, rx140_restart
    repr_get_attr_int $I11, self, rx140_curclass, "$!from"
    ne $I11, -1, rxscan141_done
    goto rxscan141_scan
  rxscan141_loop:
    inc rx140_pos
    gt rx140_pos, rx140_eos, rx140_fail
    repr_bind_attr_int rx140_cur, rx140_curclass, "$!from", rx140_pos
  rxscan141_scan:
    nqp_rxmark rx140_bstack, rxscan141_loop, rx140_pos, 0
  rxscan141_done:
  # rx rxquantr142 ** 0..1
    nqp_rxmark rx140_bstack, rxquantr142_done, rx140_pos, 0
  rxquantr142_loop:
    add $I11, rx140_pos, 1
    gt $I11, rx140_eos, rx140_fail
    substr $S10, rx140_tgt, rx140_pos, 1
    ne $S10, ucs4:",", rx140_fail
    add rx140_pos, 1
    nqp_rxpeek $I19, rx140_bstack, rxquantr142_done
    inc $I19
    inc $I19
    set rx140_rep, rx140_bstack[$I19]
    nqp_rxcommit rx140_bstack, rxquantr142_done
    inc rx140_rep
  rxquantr142_done:
    rx140_cur."!cursor_pass"(rx140_pos, 'backtrack'=>1)
    .return (rx140_cur)
  rx140_restart:
    repr_get_attr_obj rx140_cstack, rx140_cur, rx140_curclass, "$!cstack"
  rx140_fail:
    unless rx140_bstack, rx140_done
    pop $I19, rx140_bstack
    if_null rx140_cstack, rx140_cstack_done
    unless rx140_cstack, rx140_cstack_done
    dec $I19
    set $P11, rx140_cstack[$I19]
  rx140_cstack_done:
    pop rx140_rep, rx140_bstack
    pop rx140_pos, rx140_bstack
    pop $I19, rx140_bstack
    lt rx140_pos, -1, rx140_done
    lt rx140_pos, 0, rx140_fail
    eq $I19, 0, rx140_fail
    if_null rx140_cstack, rx140_jump
    elements $I18, rx140_bstack
    le $I18, 0, rx140_cut
    dec $I18
    set $I18, rx140_bstack[$I18]
  rx140_cut:
    assign rx140_cstack, $I18
  rx140_jump:
    jump $I19
  rx140_done:
    rx140_cur."!cursor_fail"()
    .return (rx140_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "35_1338064447.841_caps"  :subid("209_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 93
    new $P106, "Hash"
    .return ($P106)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "35_1338064447.841_nfa"  :subid("210_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 93
    new $P106, "ResizablePMCArray"
    new $P107, "ResizablePMCArray"
    push $P107, 2
    push $P107, 44
    push $P107, 0
    push $P107, 1
    push $P107, 0
    push $P107, 0
    new $P108, "ResizablePMCArray"
    push $P108, $P106
    push $P108, $P107
    .return ($P108)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "_block1169"  :anon :subid("36_1338064447.841") :method :outer("37_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 93
    .lex unicode:"$\x{a2}", $P1173
    .local string rx144_tgt
    .local int rx144_pos
    .local int rx144_off
    .local int rx144_eos
    .local int rx144_rep
    .local pmc rx144_cur
    .local pmc rx144_curclass
    .local pmc rx144_bstack
    .local pmc rx144_cstack
    (rx144_cur, rx144_tgt, rx144_pos, rx144_curclass, rx144_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx144_cur
    length rx144_eos, rx144_tgt
    eq $I19, 1, rx144_restart
    repr_get_attr_int $I11, self, rx144_curclass, "$!from"
    ne $I11, -1, rxscan145_done
    goto rxscan145_scan
  rxscan145_loop:
    inc rx144_pos
    gt rx144_pos, rx144_eos, rx144_fail
    repr_bind_attr_int rx144_cur, rx144_curclass, "$!from", rx144_pos
  rxscan145_scan:
    nqp_rxmark rx144_bstack, rxscan145_loop, rx144_pos, 0
  rxscan145_done:
  # rx rxquantr146 ** 0..-1
    nqp_rxmark rx144_bstack, rxquantr146_done, rx144_pos, 0
  rxquantr146_loop:
    ge rx144_pos, rx144_eos, rx144_fail
    is_cclass $I11, .CCLASS_NUMERIC, rx144_tgt, rx144_pos
    unless $I11, rx144_fail
    add rx144_pos, 1
    nqp_rxpeek $I19, rx144_bstack, rxquantr146_done
    inc $I19
    inc $I19
    set rx144_rep, rx144_bstack[$I19]
    nqp_rxcommit rx144_bstack, rxquantr146_done
    inc rx144_rep
    nqp_rxmark rx144_bstack, rxquantr146_done, rx144_pos, rx144_rep
    goto rxquantr146_loop
  rxquantr146_done:
    rx144_cur."!cursor_pass"(rx144_pos, 'backtrack'=>1)
    .return (rx144_cur)
  rx144_restart:
    repr_get_attr_obj rx144_cstack, rx144_cur, rx144_curclass, "$!cstack"
  rx144_fail:
    unless rx144_bstack, rx144_done
    pop $I19, rx144_bstack
    if_null rx144_cstack, rx144_cstack_done
    unless rx144_cstack, rx144_cstack_done
    dec $I19
    set $P11, rx144_cstack[$I19]
  rx144_cstack_done:
    pop rx144_rep, rx144_bstack
    pop rx144_pos, rx144_bstack
    pop $I19, rx144_bstack
    lt rx144_pos, -1, rx144_done
    lt rx144_pos, 0, rx144_fail
    eq $I19, 0, rx144_fail
    if_null rx144_cstack, rx144_jump
    elements $I18, rx144_bstack
    le $I18, 0, rx144_cut
    dec $I18
    set $I18, rx144_bstack[$I18]
  rx144_cut:
    assign rx144_cstack, $I18
  rx144_jump:
    jump $I19
  rx144_done:
    rx144_cur."!cursor_fail"()
    .return (rx144_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "36_1338064447.841_caps"  :subid("211_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 93
    new $P106, "Hash"
    .return ($P106)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "36_1338064447.841_nfa"  :subid("212_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 93
    new $P106, "ResizablePMCArray"
    new $P107, "ResizablePMCArray"
    push $P107, 4
    push $P107, 8
    push $P107, 1
    push $P107, 1
    push $P107, 0
    push $P107, 0
    new $P108, "ResizablePMCArray"
    push $P108, $P106
    push $P108, $P107
    .return ($P108)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "quantifier:sym<**>"  :subid("38_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1175
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 96
    .lex "self", param_1175
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1176
    .lex "$/", $P1177
    .local string rx149_tgt
    .local int rx149_pos
    .local int rx149_off
    .local int rx149_eos
    .local int rx149_rep
    .local pmc rx149_cur
    .local pmc rx149_curclass
    .local pmc rx149_bstack
    .local pmc rx149_cstack
    (rx149_cur, rx149_tgt, rx149_pos, rx149_curclass, rx149_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx149_cur
    length rx149_eos, rx149_tgt
    eq $I19, 1, rx149_restart
    repr_get_attr_int $I11, self, rx149_curclass, "$!from"
    ne $I11, -1, rxscan150_done
    goto rxscan150_scan
  rxscan150_loop:
    inc rx149_pos
    gt rx149_pos, rx149_eos, rx149_fail
    repr_bind_attr_int rx149_cur, rx149_curclass, "$!from", rx149_pos
  rxscan150_scan:
    nqp_rxmark rx149_bstack, rxscan150_loop, rx149_pos, 0
  rxscan150_done:
    nqp_rxmark rx149_bstack, rxcap151_fail, rx149_pos, 0
    add $I11, rx149_pos, 2
    gt $I11, rx149_eos, rx149_fail
    substr $S10, rx149_tgt, rx149_pos, 2
    ne $S10, ucs4:"**", rx149_fail
    add rx149_pos, 2
    nqp_rxpeek $I19, rx149_bstack, rxcap151_fail
    inc $I19
    set $I11, rx149_bstack[$I19]
    $P11 = rx149_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx149_pos)
    rx149_cstack = rx149_cur."!cursor_capture"($P11, "sym")
    goto rxcap151_done
  rxcap151_fail:
    goto rx149_fail
  rxcap151_done:
  # rx rxquantr152 ** 0..1
    nqp_rxmark rx149_bstack, rxquantr152_done, rx149_pos, 0
  rxquantr152_loop:
    repr_bind_attr_int rx149_cur, rx149_curclass, "$!pos", rx149_pos
    $P11 = rx149_cur."normspace"()
    repr_get_attr_int $I11, $P11, rx149_curclass, "$!pos"
    lt $I11, 0, rx149_fail
    goto rxsubrule153_pass
  rxsubrule153_back:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx149_curclass, "$!pos"
    lt $I11, 0, rx149_fail
  rxsubrule153_pass:
    rx149_cstack = rx149_cur."!cursor_capture"($P11, "normspace")
    set_addr $I11, rxsubrule153_back
    push rx149_bstack, $I11
    push rx149_bstack, 0
    push rx149_bstack, rx149_pos
    elements $I11, rx149_cstack
    push rx149_bstack, $I11
    repr_get_attr_int rx149_pos, $P11, rx149_curclass, "$!pos"
    nqp_rxpeek $I19, rx149_bstack, rxquantr152_done
    inc $I19
    inc $I19
    set rx149_rep, rx149_bstack[$I19]
    nqp_rxcommit rx149_bstack, rxquantr152_done
    inc rx149_rep
  rxquantr152_done:
    repr_bind_attr_int rx149_cur, rx149_curclass, "$!pos", rx149_pos
    $P11 = rx149_cur."backmod"()
    repr_get_attr_int $I11, $P11, rx149_curclass, "$!pos"
    lt $I11, 0, rx149_fail
    nqp_rxmark rx149_bstack, rxsubrule154_pass, -1, 0
  rxsubrule154_pass:
    rx149_cstack = rx149_cur."!cursor_capture"($P11, "backmod")
    repr_get_attr_int rx149_pos, $P11, rx149_curclass, "$!pos"
  # rx rxquantr155 ** 0..1
    nqp_rxmark rx149_bstack, rxquantr155_done, rx149_pos, 0
  rxquantr155_loop:
    repr_bind_attr_int rx149_cur, rx149_curclass, "$!pos", rx149_pos
    $P11 = rx149_cur."normspace"()
    repr_get_attr_int $I11, $P11, rx149_curclass, "$!pos"
    lt $I11, 0, rx149_fail
    goto rxsubrule156_pass
  rxsubrule156_back:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx149_curclass, "$!pos"
    lt $I11, 0, rx149_fail
  rxsubrule156_pass:
    rx149_cstack = rx149_cur."!cursor_capture"($P11, "normspace")
    set_addr $I11, rxsubrule156_back
    push rx149_bstack, $I11
    push rx149_bstack, 0
    push rx149_bstack, rx149_pos
    elements $I11, rx149_cstack
    push rx149_bstack, $I11
    repr_get_attr_int rx149_pos, $P11, rx149_curclass, "$!pos"
    nqp_rxpeek $I19, rx149_bstack, rxquantr155_done
    inc $I19
    inc $I19
    set rx149_rep, rx149_bstack[$I19]
    nqp_rxcommit rx149_bstack, rxquantr155_done
    inc rx149_rep
  rxquantr155_done:
    nqp_rxmark rx149_bstack, rxcap157_fail, rx149_pos, 0
  # rx rxquantr158 ** 1..-1
    nqp_rxmark rx149_bstack, rxquantr158_done, -1, 0
  rxquantr158_loop:
    ge rx149_pos, rx149_eos, rx149_fail
    is_cclass $I11, .CCLASS_NUMERIC, rx149_tgt, rx149_pos
    unless $I11, rx149_fail
    add rx149_pos, 1
    nqp_rxpeek $I19, rx149_bstack, rxquantr158_done
    inc $I19
    inc $I19
    set rx149_rep, rx149_bstack[$I19]
    nqp_rxcommit rx149_bstack, rxquantr158_done
    inc rx149_rep
    nqp_rxmark rx149_bstack, rxquantr158_done, rx149_pos, rx149_rep
    goto rxquantr158_loop
  rxquantr158_done:
    nqp_rxpeek $I19, rx149_bstack, rxcap157_fail
    inc $I19
    set $I11, rx149_bstack[$I19]
    $P11 = rx149_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx149_pos)
    rx149_cstack = rx149_cur."!cursor_capture"($P11, "min")
    goto rxcap157_done
  rxcap157_fail:
    goto rx149_fail
  rxcap157_done:
  # rx rxquantr159 ** 0..1
    nqp_rxmark rx149_bstack, rxquantr159_done, rx149_pos, 0
  rxquantr159_loop:
    add $I11, rx149_pos, 2
    gt $I11, rx149_eos, rx149_fail
    substr $S10, rx149_tgt, rx149_pos, 2
    ne $S10, ucs4:"..", rx149_fail
    add rx149_pos, 2
    nqp_rxmark rx149_bstack, rxcap160_fail, rx149_pos, 0
  alt161_0:
    nqp_rxmark rx149_bstack, alt161_1, rx149_pos, 0
  # rx rxquantr162 ** 1..-1
    nqp_rxmark rx149_bstack, rxquantr162_done, -1, 0
  rxquantr162_loop:
    ge rx149_pos, rx149_eos, rx149_fail
    is_cclass $I11, .CCLASS_NUMERIC, rx149_tgt, rx149_pos
    unless $I11, rx149_fail
    add rx149_pos, 1
    nqp_rxpeek $I19, rx149_bstack, rxquantr162_done
    inc $I19
    inc $I19
    set rx149_rep, rx149_bstack[$I19]
    nqp_rxcommit rx149_bstack, rxquantr162_done
    inc rx149_rep
    nqp_rxmark rx149_bstack, rxquantr162_done, rx149_pos, rx149_rep
    goto rxquantr162_loop
  rxquantr162_done:
    goto alt161_end
  alt161_1:
    nqp_rxmark rx149_bstack, alt161_2, rx149_pos, 0
    add $I11, rx149_pos, 1
    gt $I11, rx149_eos, rx149_fail
    substr $S10, rx149_tgt, rx149_pos, 1
    ne $S10, ucs4:"*", rx149_fail
    add rx149_pos, 1
    goto alt161_end
  alt161_2:
    repr_bind_attr_int rx149_cur, rx149_curclass, "$!pos", rx149_pos
    $P11 = rx149_cur."panic"("Only integers or '*' allowed as range quantifier endpoint")
    repr_get_attr_int $I11, $P11, rx149_curclass, "$!pos"
    lt $I11, 0, rx149_fail
    repr_get_attr_int rx149_pos, $P11, rx149_curclass, "$!pos"
  alt161_end:
    nqp_rxpeek $I19, rx149_bstack, rxcap160_fail
    inc $I19
    set $I11, rx149_bstack[$I19]
    $P11 = rx149_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx149_pos)
    rx149_cstack = rx149_cur."!cursor_capture"($P11, "max")
    goto rxcap160_done
  rxcap160_fail:
    goto rx149_fail
  rxcap160_done:
    nqp_rxpeek $I19, rx149_bstack, rxquantr159_done
    inc $I19
    inc $I19
    set rx149_rep, rx149_bstack[$I19]
    nqp_rxcommit rx149_bstack, rxquantr159_done
    inc rx149_rep
  rxquantr159_done:
    rx149_cur."!cursor_pass"(rx149_pos, "quantifier:sym<**>", 'backtrack'=>1)
    .return (rx149_cur)
  rx149_restart:
    repr_get_attr_obj rx149_cstack, rx149_cur, rx149_curclass, "$!cstack"
  rx149_fail:
    unless rx149_bstack, rx149_done
    pop $I19, rx149_bstack
    if_null rx149_cstack, rx149_cstack_done
    unless rx149_cstack, rx149_cstack_done
    dec $I19
    set $P11, rx149_cstack[$I19]
  rx149_cstack_done:
    pop rx149_rep, rx149_bstack
    pop rx149_pos, rx149_bstack
    pop $I19, rx149_bstack
    lt rx149_pos, -1, rx149_done
    lt rx149_pos, 0, rx149_fail
    eq $I19, 0, rx149_fail
    if_null rx149_cstack, rx149_jump
    elements $I18, rx149_bstack
    le $I18, 0, rx149_cut
    dec $I18
    set $I18, rx149_bstack[$I18]
  rx149_cut:
    assign rx149_cstack, $I18
  rx149_jump:
    jump $I19
  rx149_done:
    rx149_cur."!cursor_fail"()
    .return (rx149_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "38_1338064447.841_caps"  :subid("213_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 96
    new $P103, "Hash"
    set $P103["sym"], 0
    set $P103["normspace"], 2
    set $P103["backmod"], 0
    set $P103["min"], 0
    set $P103["max"], 2
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "38_1338064447.841_nfa"  :subid("214_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 96
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 2
    push $P104, 42
    push $P104, 2
    new $P105, "ResizablePMCArray"
    push $P105, 2
    push $P105, 42
    push $P105, 3
    new $P106, "ResizablePMCArray"
    push $P106, 8
    push $P106, "normspace"
    push $P106, 4
    push $P106, 1
    push $P106, 0
    push $P106, 4
    new $P107, "ResizablePMCArray"
    push $P107, 8
    push $P107, "backmod"
    push $P107, 5
    new $P108, "ResizablePMCArray"
    push $P108, 8
    push $P108, "normspace"
    push $P108, 6
    push $P108, 1
    push $P108, 0
    push $P108, 6
    new $P109, "ResizablePMCArray"
    push $P109, 1
    push $P109, 0
    push $P109, 7
    new $P110, "ResizablePMCArray"
    push $P110, 4
    push $P110, 8
    push $P110, 8
    new $P111, "ResizablePMCArray"
    push $P111, 1
    push $P111, 0
    push $P111, 7
    push $P111, 1
    push $P111, 0
    push $P111, 9
    push $P111, 2
    push $P111, 46
    push $P111, 10
    push $P111, 1
    push $P111, 0
    push $P111, 0
    new $P112, "ResizablePMCArray"
    new $P113, "ResizablePMCArray"
    push $P113, 2
    push $P113, 46
    push $P113, 11
    new $P114, "ResizablePMCArray"
    push $P114, 0
    push $P114, 0
    push $P114, 0
    new $P115, "ResizablePMCArray"
    push $P115, $P103
    push $P115, $P104
    push $P115, $P105
    push $P115, $P106
    push $P115, $P107
    push $P115, $P108
    push $P115, $P109
    push $P115, $P110
    push $P115, $P111
    push $P115, $P112
    push $P115, $P113
    push $P115, $P114
    .return ($P115)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "backmod"  :subid("40_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1181
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 110
    .const 'Sub' $P1187 = "39_1338064447.841" 
    capture_lex $P1187
    .lex "self", param_1181
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1182
    .lex "$/", $P1183
    .local string rx164_tgt
    .local int rx164_pos
    .local int rx164_off
    .local int rx164_eos
    .local int rx164_rep
    .local pmc rx164_cur
    .local pmc rx164_curclass
    .local pmc rx164_bstack
    .local pmc rx164_cstack
    (rx164_cur, rx164_tgt, rx164_pos, rx164_curclass, rx164_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx164_cur
    length rx164_eos, rx164_tgt
    eq $I19, 1, rx164_restart
    repr_get_attr_int $I11, self, rx164_curclass, "$!from"
    ne $I11, -1, rxscan165_done
    goto rxscan165_scan
  rxscan165_loop:
    inc rx164_pos
    gt rx164_pos, rx164_eos, rx164_fail
    repr_bind_attr_int rx164_cur, rx164_curclass, "$!from", rx164_pos
  rxscan165_scan:
    nqp_rxmark rx164_bstack, rxscan165_loop, rx164_pos, 0
  rxscan165_done:
  # rx rxquantr166 ** 0..1
    nqp_rxmark rx164_bstack, rxquantr166_done, rx164_pos, 0
  rxquantr166_loop:
    add $I11, rx164_pos, 1
    gt $I11, rx164_eos, rx164_fail
    substr $S10, rx164_tgt, rx164_pos, 1
    ne $S10, ucs4:":", rx164_fail
    add rx164_pos, 1
    nqp_rxpeek $I19, rx164_bstack, rxquantr166_done
    inc $I19
    inc $I19
    set rx164_rep, rx164_bstack[$I19]
    nqp_rxcommit rx164_bstack, rxquantr166_done
    inc rx164_rep
  rxquantr166_done:
  alt167_0:
    nqp_rxmark rx164_bstack, alt167_1, rx164_pos, 0
    add $I11, rx164_pos, 1
    gt $I11, rx164_eos, rx164_fail
    substr $S10, rx164_tgt, rx164_pos, 1
    ne $S10, ucs4:"?", rx164_fail
    add rx164_pos, 1
    goto alt167_end
  alt167_1:
    nqp_rxmark rx164_bstack, alt167_2, rx164_pos, 0
    add $I11, rx164_pos, 1
    gt $I11, rx164_eos, rx164_fail
    substr $S10, rx164_tgt, rx164_pos, 1
    ne $S10, ucs4:"!", rx164_fail
    add rx164_pos, 1
    goto alt167_end
  alt167_2:
    .const 'Sub' $P1187 = "39_1338064447.841" 
    capture_lex $P1187
    repr_bind_attr_int rx164_cur, rx164_curclass, "$!pos", rx164_pos
    $P11 = rx164_cur."before"($P1187)
    repr_get_attr_int $I11, $P11, rx164_curclass, "$!pos"
    ge $I11, 0, rx164_fail
  alt167_end:
    rx164_cur."!cursor_pass"(rx164_pos, "backmod", 'backtrack'=>1)
    .return (rx164_cur)
  rx164_restart:
    repr_get_attr_obj rx164_cstack, rx164_cur, rx164_curclass, "$!cstack"
  rx164_fail:
    unless rx164_bstack, rx164_done
    pop $I19, rx164_bstack
    if_null rx164_cstack, rx164_cstack_done
    unless rx164_cstack, rx164_cstack_done
    dec $I19
    set $P11, rx164_cstack[$I19]
  rx164_cstack_done:
    pop rx164_rep, rx164_bstack
    pop rx164_pos, rx164_bstack
    pop $I19, rx164_bstack
    lt rx164_pos, -1, rx164_done
    lt rx164_pos, 0, rx164_fail
    eq $I19, 0, rx164_fail
    if_null rx164_cstack, rx164_jump
    elements $I18, rx164_bstack
    le $I18, 0, rx164_cut
    dec $I18
    set $I18, rx164_bstack[$I18]
  rx164_cut:
    assign rx164_cstack, $I18
  rx164_jump:
    jump $I19
  rx164_done:
    rx164_cur."!cursor_fail"()
    .return (rx164_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "40_1338064447.841_caps"  :subid("215_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 110
    new $P103, "Hash"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "40_1338064447.841_nfa"  :subid("216_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 110
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 2
    push $P104, 58
    push $P104, 2
    push $P104, 1
    push $P104, 0
    push $P104, 2
    new $P105, "ResizablePMCArray"
    push $P105, 2
    push $P105, 63
    push $P105, 0
    push $P105, 2
    push $P105, 33
    push $P105, 0
    push $P105, 0
    push $P105, 0
    push $P105, 0
    new $P106, "ResizablePMCArray"
    push $P106, $P103
    push $P106, $P104
    push $P106, $P105
    .return ($P106)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "_block1186"  :anon :subid("39_1338064447.841") :method :outer("40_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 110
    .lex unicode:"$\x{a2}", $P1190
    .local string rx168_tgt
    .local int rx168_pos
    .local int rx168_off
    .local int rx168_eos
    .local int rx168_rep
    .local pmc rx168_cur
    .local pmc rx168_curclass
    .local pmc rx168_bstack
    .local pmc rx168_cstack
    (rx168_cur, rx168_tgt, rx168_pos, rx168_curclass, rx168_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx168_cur
    length rx168_eos, rx168_tgt
    eq $I19, 1, rx168_restart
    repr_get_attr_int $I11, self, rx168_curclass, "$!from"
    ne $I11, -1, rxscan169_done
    goto rxscan169_scan
  rxscan169_loop:
    inc rx168_pos
    gt rx168_pos, rx168_eos, rx168_fail
    repr_bind_attr_int rx168_cur, rx168_curclass, "$!from", rx168_pos
  rxscan169_scan:
    nqp_rxmark rx168_bstack, rxscan169_loop, rx168_pos, 0
  rxscan169_done:
    add $I11, rx168_pos, 1
    gt $I11, rx168_eos, rx168_fail
    substr $S10, rx168_tgt, rx168_pos, 1
    ne $S10, ucs4:":", rx168_fail
    add rx168_pos, 1
    rx168_cur."!cursor_pass"(rx168_pos, 'backtrack'=>1)
    .return (rx168_cur)
  rx168_restart:
    repr_get_attr_obj rx168_cstack, rx168_cur, rx168_curclass, "$!cstack"
  rx168_fail:
    unless rx168_bstack, rx168_done
    pop $I19, rx168_bstack
    if_null rx168_cstack, rx168_cstack_done
    unless rx168_cstack, rx168_cstack_done
    dec $I19
    set $P11, rx168_cstack[$I19]
  rx168_cstack_done:
    pop rx168_rep, rx168_bstack
    pop rx168_pos, rx168_bstack
    pop $I19, rx168_bstack
    lt rx168_pos, -1, rx168_done
    lt rx168_pos, 0, rx168_fail
    eq $I19, 0, rx168_fail
    if_null rx168_cstack, rx168_jump
    elements $I18, rx168_bstack
    le $I18, 0, rx168_cut
    dec $I18
    set $I18, rx168_bstack[$I18]
  rx168_cut:
    assign rx168_cstack, $I18
  rx168_jump:
    jump $I19
  rx168_done:
    rx168_cur."!cursor_fail"()
    .return (rx168_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "39_1338064447.841_caps"  :subid("217_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 110
    new $P103, "Hash"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "39_1338064447.841_nfa"  :subid("218_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 110
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 2
    push $P104, 58
    push $P104, 0
    new $P105, "ResizablePMCArray"
    push $P105, $P103
    push $P105, $P104
    .return ($P105)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "metachar"  :subid("41_1338064447.841")
    .param pmc param_1192
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 112
    .lex "self", param_1192
    $P101 = param_1192."!protoregex"("metachar")
    .return ($P101)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "metachar:sym<ws>"  :subid("42_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1194
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 113
    .lex "self", param_1194
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1195
    .lex "$/", $P1196
    .local string rx170_tgt
    .local int rx170_pos
    .local int rx170_off
    .local int rx170_eos
    .local int rx170_rep
    .local pmc rx170_cur
    .local pmc rx170_curclass
    .local pmc rx170_bstack
    .local pmc rx170_cstack
    (rx170_cur, rx170_tgt, rx170_pos, rx170_curclass, rx170_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx170_cur
    length rx170_eos, rx170_tgt
    eq $I19, 1, rx170_restart
    repr_get_attr_int $I11, self, rx170_curclass, "$!from"
    ne $I11, -1, rxscan171_done
    goto rxscan171_scan
  rxscan171_loop:
    inc rx170_pos
    gt rx170_pos, rx170_eos, rx170_fail
    repr_bind_attr_int rx170_cur, rx170_curclass, "$!from", rx170_pos
  rxscan171_scan:
    nqp_rxmark rx170_bstack, rxscan171_loop, rx170_pos, 0
  rxscan171_done:
    repr_bind_attr_int rx170_cur, rx170_curclass, "$!pos", rx170_pos
    $P11 = rx170_cur."normspace"()
    repr_get_attr_int $I11, $P11, rx170_curclass, "$!pos"
    lt $I11, 0, rx170_fail
    repr_get_attr_int rx170_pos, $P11, rx170_curclass, "$!pos"
    rx170_cur."!cursor_pass"(rx170_pos, "metachar:sym<ws>", 'backtrack'=>1)
    .return (rx170_cur)
  rx170_restart:
    repr_get_attr_obj rx170_cstack, rx170_cur, rx170_curclass, "$!cstack"
  rx170_fail:
    unless rx170_bstack, rx170_done
    pop $I19, rx170_bstack
    if_null rx170_cstack, rx170_cstack_done
    unless rx170_cstack, rx170_cstack_done
    dec $I19
    set $P11, rx170_cstack[$I19]
  rx170_cstack_done:
    pop rx170_rep, rx170_bstack
    pop rx170_pos, rx170_bstack
    pop $I19, rx170_bstack
    lt rx170_pos, -1, rx170_done
    lt rx170_pos, 0, rx170_fail
    eq $I19, 0, rx170_fail
    if_null rx170_cstack, rx170_jump
    elements $I18, rx170_bstack
    le $I18, 0, rx170_cut
    dec $I18
    set $I18, rx170_bstack[$I18]
  rx170_cut:
    assign rx170_cstack, $I18
  rx170_jump:
    jump $I19
  rx170_done:
    rx170_cur."!cursor_fail"()
    .return (rx170_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "42_1338064447.841_caps"  :subid("219_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 113
    new $P103, "Hash"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "42_1338064447.841_nfa"  :subid("220_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 113
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 8
    push $P104, "normspace"
    push $P104, 0
    new $P105, "ResizablePMCArray"
    push $P105, $P103
    push $P105, $P104
    .return ($P105)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "metachar:sym<[ ]>"  :subid("43_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1200
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 114
    .lex "self", param_1200
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1201
    .lex "$/", $P1202
    .local string rx173_tgt
    .local int rx173_pos
    .local int rx173_off
    .local int rx173_eos
    .local int rx173_rep
    .local pmc rx173_cur
    .local pmc rx173_curclass
    .local pmc rx173_bstack
    .local pmc rx173_cstack
    (rx173_cur, rx173_tgt, rx173_pos, rx173_curclass, rx173_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx173_cur
    length rx173_eos, rx173_tgt
    eq $I19, 1, rx173_restart
    repr_get_attr_int $I11, self, rx173_curclass, "$!from"
    ne $I11, -1, rxscan174_done
    goto rxscan174_scan
  rxscan174_loop:
    inc rx173_pos
    gt rx173_pos, rx173_eos, rx173_fail
    repr_bind_attr_int rx173_cur, rx173_curclass, "$!from", rx173_pos
  rxscan174_scan:
    nqp_rxmark rx173_bstack, rxscan174_loop, rx173_pos, 0
  rxscan174_done:
    add $I11, rx173_pos, 1
    gt $I11, rx173_eos, rx173_fail
    substr $S10, rx173_tgt, rx173_pos, 1
    ne $S10, ucs4:"[", rx173_fail
    add rx173_pos, 1
    repr_bind_attr_int rx173_cur, rx173_curclass, "$!pos", rx173_pos
    $P11 = rx173_cur."nibbler"()
    repr_get_attr_int $I11, $P11, rx173_curclass, "$!pos"
    lt $I11, 0, rx173_fail
    nqp_rxmark rx173_bstack, rxsubrule175_pass, -1, 0
  rxsubrule175_pass:
    rx173_cstack = rx173_cur."!cursor_capture"($P11, "nibbler")
    repr_get_attr_int rx173_pos, $P11, rx173_curclass, "$!pos"
    add $I11, rx173_pos, 1
    gt $I11, rx173_eos, rx173_fail
    substr $S10, rx173_tgt, rx173_pos, 1
    ne $S10, ucs4:"]", rx173_fail
    add rx173_pos, 1
    rx173_cur."!cursor_pass"(rx173_pos, "metachar:sym<[ ]>", 'backtrack'=>1)
    .return (rx173_cur)
  rx173_restart:
    repr_get_attr_obj rx173_cstack, rx173_cur, rx173_curclass, "$!cstack"
  rx173_fail:
    unless rx173_bstack, rx173_done
    pop $I19, rx173_bstack
    if_null rx173_cstack, rx173_cstack_done
    unless rx173_cstack, rx173_cstack_done
    dec $I19
    set $P11, rx173_cstack[$I19]
  rx173_cstack_done:
    pop rx173_rep, rx173_bstack
    pop rx173_pos, rx173_bstack
    pop $I19, rx173_bstack
    lt rx173_pos, -1, rx173_done
    lt rx173_pos, 0, rx173_fail
    eq $I19, 0, rx173_fail
    if_null rx173_cstack, rx173_jump
    elements $I18, rx173_bstack
    le $I18, 0, rx173_cut
    dec $I18
    set $I18, rx173_bstack[$I18]
  rx173_cut:
    assign rx173_cstack, $I18
  rx173_jump:
    jump $I19
  rx173_done:
    rx173_cur."!cursor_fail"()
    .return (rx173_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "43_1338064447.841_caps"  :subid("221_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 114
    new $P103, "Hash"
    set $P103["nibbler"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "43_1338064447.841_nfa"  :subid("222_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 114
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 2
    push $P104, 91
    push $P104, 2
    new $P105, "ResizablePMCArray"
    push $P105, 8
    push $P105, "nibbler"
    push $P105, 3
    new $P106, "ResizablePMCArray"
    push $P106, 2
    push $P106, 93
    push $P106, 0
    new $P107, "ResizablePMCArray"
    push $P107, $P103
    push $P107, $P104
    push $P107, $P105
    push $P107, $P106
    .return ($P107)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "metachar:sym<( )>"  :subid("44_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1206
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 115
    .lex "self", param_1206
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1207
    .lex "$/", $P1208
    .local string rx176_tgt
    .local int rx176_pos
    .local int rx176_off
    .local int rx176_eos
    .local int rx176_rep
    .local pmc rx176_cur
    .local pmc rx176_curclass
    .local pmc rx176_bstack
    .local pmc rx176_cstack
    (rx176_cur, rx176_tgt, rx176_pos, rx176_curclass, rx176_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx176_cur
    length rx176_eos, rx176_tgt
    eq $I19, 1, rx176_restart
    repr_get_attr_int $I11, self, rx176_curclass, "$!from"
    ne $I11, -1, rxscan177_done
    goto rxscan177_scan
  rxscan177_loop:
    inc rx176_pos
    gt rx176_pos, rx176_eos, rx176_fail
    repr_bind_attr_int rx176_cur, rx176_curclass, "$!from", rx176_pos
  rxscan177_scan:
    nqp_rxmark rx176_bstack, rxscan177_loop, rx176_pos, 0
  rxscan177_done:
    add $I11, rx176_pos, 1
    gt $I11, rx176_eos, rx176_fail
    substr $S10, rx176_tgt, rx176_pos, 1
    ne $S10, ucs4:"(", rx176_fail
    add rx176_pos, 1
    repr_bind_attr_int rx176_cur, rx176_curclass, "$!pos", rx176_pos
    $P11 = rx176_cur."nibbler"()
    repr_get_attr_int $I11, $P11, rx176_curclass, "$!pos"
    lt $I11, 0, rx176_fail
    nqp_rxmark rx176_bstack, rxsubrule178_pass, -1, 0
  rxsubrule178_pass:
    rx176_cstack = rx176_cur."!cursor_capture"($P11, "nibbler")
    repr_get_attr_int rx176_pos, $P11, rx176_curclass, "$!pos"
    add $I11, rx176_pos, 1
    gt $I11, rx176_eos, rx176_fail
    substr $S10, rx176_tgt, rx176_pos, 1
    ne $S10, ucs4:")", rx176_fail
    add rx176_pos, 1
    rx176_cur."!cursor_pass"(rx176_pos, "metachar:sym<( )>", 'backtrack'=>1)
    .return (rx176_cur)
  rx176_restart:
    repr_get_attr_obj rx176_cstack, rx176_cur, rx176_curclass, "$!cstack"
  rx176_fail:
    unless rx176_bstack, rx176_done
    pop $I19, rx176_bstack
    if_null rx176_cstack, rx176_cstack_done
    unless rx176_cstack, rx176_cstack_done
    dec $I19
    set $P11, rx176_cstack[$I19]
  rx176_cstack_done:
    pop rx176_rep, rx176_bstack
    pop rx176_pos, rx176_bstack
    pop $I19, rx176_bstack
    lt rx176_pos, -1, rx176_done
    lt rx176_pos, 0, rx176_fail
    eq $I19, 0, rx176_fail
    if_null rx176_cstack, rx176_jump
    elements $I18, rx176_bstack
    le $I18, 0, rx176_cut
    dec $I18
    set $I18, rx176_bstack[$I18]
  rx176_cut:
    assign rx176_cstack, $I18
  rx176_jump:
    jump $I19
  rx176_done:
    rx176_cur."!cursor_fail"()
    .return (rx176_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "44_1338064447.841_caps"  :subid("223_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 115
    new $P103, "Hash"
    set $P103["nibbler"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "44_1338064447.841_nfa"  :subid("224_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 115
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 2
    push $P104, 40
    push $P104, 2
    new $P105, "ResizablePMCArray"
    push $P105, 8
    push $P105, "nibbler"
    push $P105, 3
    new $P106, "ResizablePMCArray"
    push $P106, 2
    push $P106, 41
    push $P106, 0
    new $P107, "ResizablePMCArray"
    push $P107, $P103
    push $P107, $P104
    push $P107, $P105
    push $P107, $P106
    .return ($P107)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "metachar:sym<'>"  :subid("45_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1212
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 116
    .lex "self", param_1212
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1213
    .lex "$/", $P1214
    .local string rx179_tgt
    .local int rx179_pos
    .local int rx179_off
    .local int rx179_eos
    .local int rx179_rep
    .local pmc rx179_cur
    .local pmc rx179_curclass
    .local pmc rx179_bstack
    .local pmc rx179_cstack
    (rx179_cur, rx179_tgt, rx179_pos, rx179_curclass, rx179_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx179_cur
    length rx179_eos, rx179_tgt
    eq $I19, 1, rx179_restart
    repr_get_attr_int $I11, self, rx179_curclass, "$!from"
    ne $I11, -1, rxscan180_done
    goto rxscan180_scan
  rxscan180_loop:
    inc rx179_pos
    gt rx179_pos, rx179_eos, rx179_fail
    repr_bind_attr_int rx179_cur, rx179_curclass, "$!from", rx179_pos
  rxscan180_scan:
    nqp_rxmark rx179_bstack, rxscan180_loop, rx179_pos, 0
  rxscan180_done:
    ge rx179_pos, rx179_eos, rx179_fail
    substr $S11, rx179_tgt, rx179_pos, 1
    index $I11, ucs4:"'", $S11
    lt $I11, 0, rx179_fail
    repr_bind_attr_int rx179_cur, rx179_curclass, "$!pos", rx179_pos
    $P11 = rx179_cur."quote_EXPR"(":q")
    repr_get_attr_int $I11, $P11, rx179_curclass, "$!pos"
    lt $I11, 0, rx179_fail
    nqp_rxmark rx179_bstack, rxsubrule181_pass, -1, 0
  rxsubrule181_pass:
    rx179_cstack = rx179_cur."!cursor_capture"($P11, "quote_EXPR")
    repr_get_attr_int rx179_pos, $P11, rx179_curclass, "$!pos"
    rx179_cur."!cursor_pass"(rx179_pos, "metachar:sym<'>", 'backtrack'=>1)
    .return (rx179_cur)
  rx179_restart:
    repr_get_attr_obj rx179_cstack, rx179_cur, rx179_curclass, "$!cstack"
  rx179_fail:
    unless rx179_bstack, rx179_done
    pop $I19, rx179_bstack
    if_null rx179_cstack, rx179_cstack_done
    unless rx179_cstack, rx179_cstack_done
    dec $I19
    set $P11, rx179_cstack[$I19]
  rx179_cstack_done:
    pop rx179_rep, rx179_bstack
    pop rx179_pos, rx179_bstack
    pop $I19, rx179_bstack
    lt rx179_pos, -1, rx179_done
    lt rx179_pos, 0, rx179_fail
    eq $I19, 0, rx179_fail
    if_null rx179_cstack, rx179_jump
    elements $I18, rx179_bstack
    le $I18, 0, rx179_cut
    dec $I18
    set $I18, rx179_bstack[$I18]
  rx179_cut:
    assign rx179_cstack, $I18
  rx179_jump:
    jump $I19
  rx179_done:
    rx179_cur."!cursor_fail"()
    .return (rx179_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "45_1338064447.841_caps"  :subid("225_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 116
    new $P103, "Hash"
    set $P103["quote_EXPR"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "45_1338064447.841_nfa"  :subid("226_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 116
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 6
    push $P104, "'"
    push $P104, 2
    new $P105, "ResizablePMCArray"
    push $P105, 0
    push $P105, 0
    push $P105, 0
    new $P106, "ResizablePMCArray"
    push $P106, $P103
    push $P106, $P104
    push $P106, $P105
    .return ($P106)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "metachar:sym<\">"  :subid("46_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1218
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 117
    .lex "self", param_1218
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1219
    .lex "$/", $P1220
    .local string rx182_tgt
    .local int rx182_pos
    .local int rx182_off
    .local int rx182_eos
    .local int rx182_rep
    .local pmc rx182_cur
    .local pmc rx182_curclass
    .local pmc rx182_bstack
    .local pmc rx182_cstack
    (rx182_cur, rx182_tgt, rx182_pos, rx182_curclass, rx182_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx182_cur
    length rx182_eos, rx182_tgt
    eq $I19, 1, rx182_restart
    repr_get_attr_int $I11, self, rx182_curclass, "$!from"
    ne $I11, -1, rxscan183_done
    goto rxscan183_scan
  rxscan183_loop:
    inc rx182_pos
    gt rx182_pos, rx182_eos, rx182_fail
    repr_bind_attr_int rx182_cur, rx182_curclass, "$!from", rx182_pos
  rxscan183_scan:
    nqp_rxmark rx182_bstack, rxscan183_loop, rx182_pos, 0
  rxscan183_done:
    ge rx182_pos, rx182_eos, rx182_fail
    substr $S11, rx182_tgt, rx182_pos, 1
    index $I11, ucs4:"\"", $S11
    lt $I11, 0, rx182_fail
    repr_bind_attr_int rx182_cur, rx182_curclass, "$!pos", rx182_pos
    $P11 = rx182_cur."quote_EXPR"(":qq")
    repr_get_attr_int $I11, $P11, rx182_curclass, "$!pos"
    lt $I11, 0, rx182_fail
    nqp_rxmark rx182_bstack, rxsubrule184_pass, -1, 0
  rxsubrule184_pass:
    rx182_cstack = rx182_cur."!cursor_capture"($P11, "quote_EXPR")
    repr_get_attr_int rx182_pos, $P11, rx182_curclass, "$!pos"
    rx182_cur."!cursor_pass"(rx182_pos, "metachar:sym<\">", 'backtrack'=>1)
    .return (rx182_cur)
  rx182_restart:
    repr_get_attr_obj rx182_cstack, rx182_cur, rx182_curclass, "$!cstack"
  rx182_fail:
    unless rx182_bstack, rx182_done
    pop $I19, rx182_bstack
    if_null rx182_cstack, rx182_cstack_done
    unless rx182_cstack, rx182_cstack_done
    dec $I19
    set $P11, rx182_cstack[$I19]
  rx182_cstack_done:
    pop rx182_rep, rx182_bstack
    pop rx182_pos, rx182_bstack
    pop $I19, rx182_bstack
    lt rx182_pos, -1, rx182_done
    lt rx182_pos, 0, rx182_fail
    eq $I19, 0, rx182_fail
    if_null rx182_cstack, rx182_jump
    elements $I18, rx182_bstack
    le $I18, 0, rx182_cut
    dec $I18
    set $I18, rx182_bstack[$I18]
  rx182_cut:
    assign rx182_cstack, $I18
  rx182_jump:
    jump $I19
  rx182_done:
    rx182_cur."!cursor_fail"()
    .return (rx182_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "46_1338064447.841_caps"  :subid("227_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 117
    new $P103, "Hash"
    set $P103["quote_EXPR"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "46_1338064447.841_nfa"  :subid("228_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 117
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 6
    push $P104, "\""
    push $P104, 2
    new $P105, "ResizablePMCArray"
    push $P105, 0
    push $P105, 0
    push $P105, 0
    new $P106, "ResizablePMCArray"
    push $P106, $P103
    push $P106, $P104
    push $P106, $P105
    .return ($P106)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "metachar:sym<.>"  :subid("47_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1224
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 118
    .lex "self", param_1224
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1225
    .lex "$/", $P1226
    .local string rx185_tgt
    .local int rx185_pos
    .local int rx185_off
    .local int rx185_eos
    .local int rx185_rep
    .local pmc rx185_cur
    .local pmc rx185_curclass
    .local pmc rx185_bstack
    .local pmc rx185_cstack
    (rx185_cur, rx185_tgt, rx185_pos, rx185_curclass, rx185_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx185_cur
    length rx185_eos, rx185_tgt
    eq $I19, 1, rx185_restart
    repr_get_attr_int $I11, self, rx185_curclass, "$!from"
    ne $I11, -1, rxscan186_done
    goto rxscan186_scan
  rxscan186_loop:
    inc rx185_pos
    gt rx185_pos, rx185_eos, rx185_fail
    repr_bind_attr_int rx185_cur, rx185_curclass, "$!from", rx185_pos
  rxscan186_scan:
    nqp_rxmark rx185_bstack, rxscan186_loop, rx185_pos, 0
  rxscan186_done:
    nqp_rxmark rx185_bstack, rxcap187_fail, rx185_pos, 0
    add $I11, rx185_pos, 1
    gt $I11, rx185_eos, rx185_fail
    substr $S10, rx185_tgt, rx185_pos, 1
    ne $S10, ucs4:".", rx185_fail
    add rx185_pos, 1
    nqp_rxpeek $I19, rx185_bstack, rxcap187_fail
    inc $I19
    set $I11, rx185_bstack[$I19]
    $P11 = rx185_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx185_pos)
    rx185_cstack = rx185_cur."!cursor_capture"($P11, "sym")
    goto rxcap187_done
  rxcap187_fail:
    goto rx185_fail
  rxcap187_done:
    rx185_cur."!cursor_pass"(rx185_pos, "metachar:sym<.>", 'backtrack'=>1)
    .return (rx185_cur)
  rx185_restart:
    repr_get_attr_obj rx185_cstack, rx185_cur, rx185_curclass, "$!cstack"
  rx185_fail:
    unless rx185_bstack, rx185_done
    pop $I19, rx185_bstack
    if_null rx185_cstack, rx185_cstack_done
    unless rx185_cstack, rx185_cstack_done
    dec $I19
    set $P11, rx185_cstack[$I19]
  rx185_cstack_done:
    pop rx185_rep, rx185_bstack
    pop rx185_pos, rx185_bstack
    pop $I19, rx185_bstack
    lt rx185_pos, -1, rx185_done
    lt rx185_pos, 0, rx185_fail
    eq $I19, 0, rx185_fail
    if_null rx185_cstack, rx185_jump
    elements $I18, rx185_bstack
    le $I18, 0, rx185_cut
    dec $I18
    set $I18, rx185_bstack[$I18]
  rx185_cut:
    assign rx185_cstack, $I18
  rx185_jump:
    jump $I19
  rx185_done:
    rx185_cur."!cursor_fail"()
    .return (rx185_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "47_1338064447.841_caps"  :subid("229_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 118
    new $P103, "Hash"
    set $P103["sym"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "47_1338064447.841_nfa"  :subid("230_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 118
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 2
    push $P104, 46
    push $P104, 0
    new $P105, "ResizablePMCArray"
    push $P105, $P103
    push $P105, $P104
    .return ($P105)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "metachar:sym<^>"  :subid("48_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1230
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 119
    .lex "self", param_1230
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1231
    .lex "$/", $P1232
    .local string rx188_tgt
    .local int rx188_pos
    .local int rx188_off
    .local int rx188_eos
    .local int rx188_rep
    .local pmc rx188_cur
    .local pmc rx188_curclass
    .local pmc rx188_bstack
    .local pmc rx188_cstack
    (rx188_cur, rx188_tgt, rx188_pos, rx188_curclass, rx188_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx188_cur
    length rx188_eos, rx188_tgt
    eq $I19, 1, rx188_restart
    repr_get_attr_int $I11, self, rx188_curclass, "$!from"
    ne $I11, -1, rxscan189_done
    goto rxscan189_scan
  rxscan189_loop:
    inc rx188_pos
    gt rx188_pos, rx188_eos, rx188_fail
    repr_bind_attr_int rx188_cur, rx188_curclass, "$!from", rx188_pos
  rxscan189_scan:
    nqp_rxmark rx188_bstack, rxscan189_loop, rx188_pos, 0
  rxscan189_done:
    nqp_rxmark rx188_bstack, rxcap190_fail, rx188_pos, 0
    add $I11, rx188_pos, 1
    gt $I11, rx188_eos, rx188_fail
    substr $S10, rx188_tgt, rx188_pos, 1
    ne $S10, ucs4:"^", rx188_fail
    add rx188_pos, 1
    nqp_rxpeek $I19, rx188_bstack, rxcap190_fail
    inc $I19
    set $I11, rx188_bstack[$I19]
    $P11 = rx188_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx188_pos)
    rx188_cstack = rx188_cur."!cursor_capture"($P11, "sym")
    goto rxcap190_done
  rxcap190_fail:
    goto rx188_fail
  rxcap190_done:
    rx188_cur."!cursor_pass"(rx188_pos, "metachar:sym<^>", 'backtrack'=>1)
    .return (rx188_cur)
  rx188_restart:
    repr_get_attr_obj rx188_cstack, rx188_cur, rx188_curclass, "$!cstack"
  rx188_fail:
    unless rx188_bstack, rx188_done
    pop $I19, rx188_bstack
    if_null rx188_cstack, rx188_cstack_done
    unless rx188_cstack, rx188_cstack_done
    dec $I19
    set $P11, rx188_cstack[$I19]
  rx188_cstack_done:
    pop rx188_rep, rx188_bstack
    pop rx188_pos, rx188_bstack
    pop $I19, rx188_bstack
    lt rx188_pos, -1, rx188_done
    lt rx188_pos, 0, rx188_fail
    eq $I19, 0, rx188_fail
    if_null rx188_cstack, rx188_jump
    elements $I18, rx188_bstack
    le $I18, 0, rx188_cut
    dec $I18
    set $I18, rx188_bstack[$I18]
  rx188_cut:
    assign rx188_cstack, $I18
  rx188_jump:
    jump $I19
  rx188_done:
    rx188_cur."!cursor_fail"()
    .return (rx188_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "48_1338064447.841_caps"  :subid("231_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 119
    new $P103, "Hash"
    set $P103["sym"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "48_1338064447.841_nfa"  :subid("232_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 119
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 2
    push $P104, 94
    push $P104, 0
    new $P105, "ResizablePMCArray"
    push $P105, $P103
    push $P105, $P104
    .return ($P105)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "metachar:sym<^^>"  :subid("49_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1236
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 120
    .lex "self", param_1236
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1237
    .lex "$/", $P1238
    .local string rx191_tgt
    .local int rx191_pos
    .local int rx191_off
    .local int rx191_eos
    .local int rx191_rep
    .local pmc rx191_cur
    .local pmc rx191_curclass
    .local pmc rx191_bstack
    .local pmc rx191_cstack
    (rx191_cur, rx191_tgt, rx191_pos, rx191_curclass, rx191_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx191_cur
    length rx191_eos, rx191_tgt
    eq $I19, 1, rx191_restart
    repr_get_attr_int $I11, self, rx191_curclass, "$!from"
    ne $I11, -1, rxscan192_done
    goto rxscan192_scan
  rxscan192_loop:
    inc rx191_pos
    gt rx191_pos, rx191_eos, rx191_fail
    repr_bind_attr_int rx191_cur, rx191_curclass, "$!from", rx191_pos
  rxscan192_scan:
    nqp_rxmark rx191_bstack, rxscan192_loop, rx191_pos, 0
  rxscan192_done:
    nqp_rxmark rx191_bstack, rxcap193_fail, rx191_pos, 0
    add $I11, rx191_pos, 2
    gt $I11, rx191_eos, rx191_fail
    substr $S10, rx191_tgt, rx191_pos, 2
    ne $S10, ucs4:"^^", rx191_fail
    add rx191_pos, 2
    nqp_rxpeek $I19, rx191_bstack, rxcap193_fail
    inc $I19
    set $I11, rx191_bstack[$I19]
    $P11 = rx191_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx191_pos)
    rx191_cstack = rx191_cur."!cursor_capture"($P11, "sym")
    goto rxcap193_done
  rxcap193_fail:
    goto rx191_fail
  rxcap193_done:
    rx191_cur."!cursor_pass"(rx191_pos, "metachar:sym<^^>", 'backtrack'=>1)
    .return (rx191_cur)
  rx191_restart:
    repr_get_attr_obj rx191_cstack, rx191_cur, rx191_curclass, "$!cstack"
  rx191_fail:
    unless rx191_bstack, rx191_done
    pop $I19, rx191_bstack
    if_null rx191_cstack, rx191_cstack_done
    unless rx191_cstack, rx191_cstack_done
    dec $I19
    set $P11, rx191_cstack[$I19]
  rx191_cstack_done:
    pop rx191_rep, rx191_bstack
    pop rx191_pos, rx191_bstack
    pop $I19, rx191_bstack
    lt rx191_pos, -1, rx191_done
    lt rx191_pos, 0, rx191_fail
    eq $I19, 0, rx191_fail
    if_null rx191_cstack, rx191_jump
    elements $I18, rx191_bstack
    le $I18, 0, rx191_cut
    dec $I18
    set $I18, rx191_bstack[$I18]
  rx191_cut:
    assign rx191_cstack, $I18
  rx191_jump:
    jump $I19
  rx191_done:
    rx191_cur."!cursor_fail"()
    .return (rx191_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "49_1338064447.841_caps"  :subid("233_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 120
    new $P103, "Hash"
    set $P103["sym"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "49_1338064447.841_nfa"  :subid("234_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 120
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 2
    push $P104, 94
    push $P104, 2
    new $P105, "ResizablePMCArray"
    push $P105, 2
    push $P105, 94
    push $P105, 0
    new $P106, "ResizablePMCArray"
    push $P106, $P103
    push $P106, $P104
    push $P106, $P105
    .return ($P106)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "metachar:sym<$>"  :subid("50_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1242
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 121
    .lex "self", param_1242
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1243
    .lex "$/", $P1244
    .local string rx194_tgt
    .local int rx194_pos
    .local int rx194_off
    .local int rx194_eos
    .local int rx194_rep
    .local pmc rx194_cur
    .local pmc rx194_curclass
    .local pmc rx194_bstack
    .local pmc rx194_cstack
    (rx194_cur, rx194_tgt, rx194_pos, rx194_curclass, rx194_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx194_cur
    length rx194_eos, rx194_tgt
    eq $I19, 1, rx194_restart
    repr_get_attr_int $I11, self, rx194_curclass, "$!from"
    ne $I11, -1, rxscan195_done
    goto rxscan195_scan
  rxscan195_loop:
    inc rx194_pos
    gt rx194_pos, rx194_eos, rx194_fail
    repr_bind_attr_int rx194_cur, rx194_curclass, "$!from", rx194_pos
  rxscan195_scan:
    nqp_rxmark rx194_bstack, rxscan195_loop, rx194_pos, 0
  rxscan195_done:
    nqp_rxmark rx194_bstack, rxcap196_fail, rx194_pos, 0
    add $I11, rx194_pos, 1
    gt $I11, rx194_eos, rx194_fail
    substr $S10, rx194_tgt, rx194_pos, 1
    ne $S10, ucs4:"$", rx194_fail
    add rx194_pos, 1
    nqp_rxpeek $I19, rx194_bstack, rxcap196_fail
    inc $I19
    set $I11, rx194_bstack[$I19]
    $P11 = rx194_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx194_pos)
    rx194_cstack = rx194_cur."!cursor_capture"($P11, "sym")
    goto rxcap196_done
  rxcap196_fail:
    goto rx194_fail
  rxcap196_done:
    rx194_cur."!cursor_pass"(rx194_pos, "metachar:sym<$>", 'backtrack'=>1)
    .return (rx194_cur)
  rx194_restart:
    repr_get_attr_obj rx194_cstack, rx194_cur, rx194_curclass, "$!cstack"
  rx194_fail:
    unless rx194_bstack, rx194_done
    pop $I19, rx194_bstack
    if_null rx194_cstack, rx194_cstack_done
    unless rx194_cstack, rx194_cstack_done
    dec $I19
    set $P11, rx194_cstack[$I19]
  rx194_cstack_done:
    pop rx194_rep, rx194_bstack
    pop rx194_pos, rx194_bstack
    pop $I19, rx194_bstack
    lt rx194_pos, -1, rx194_done
    lt rx194_pos, 0, rx194_fail
    eq $I19, 0, rx194_fail
    if_null rx194_cstack, rx194_jump
    elements $I18, rx194_bstack
    le $I18, 0, rx194_cut
    dec $I18
    set $I18, rx194_bstack[$I18]
  rx194_cut:
    assign rx194_cstack, $I18
  rx194_jump:
    jump $I19
  rx194_done:
    rx194_cur."!cursor_fail"()
    .return (rx194_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "50_1338064447.841_caps"  :subid("235_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 121
    new $P103, "Hash"
    set $P103["sym"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "50_1338064447.841_nfa"  :subid("236_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 121
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 2
    push $P104, 36
    push $P104, 0
    new $P105, "ResizablePMCArray"
    push $P105, $P103
    push $P105, $P104
    .return ($P105)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "metachar:sym<$$>"  :subid("51_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1248
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 122
    .lex "self", param_1248
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1249
    .lex "$/", $P1250
    .local string rx197_tgt
    .local int rx197_pos
    .local int rx197_off
    .local int rx197_eos
    .local int rx197_rep
    .local pmc rx197_cur
    .local pmc rx197_curclass
    .local pmc rx197_bstack
    .local pmc rx197_cstack
    (rx197_cur, rx197_tgt, rx197_pos, rx197_curclass, rx197_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx197_cur
    length rx197_eos, rx197_tgt
    eq $I19, 1, rx197_restart
    repr_get_attr_int $I11, self, rx197_curclass, "$!from"
    ne $I11, -1, rxscan198_done
    goto rxscan198_scan
  rxscan198_loop:
    inc rx197_pos
    gt rx197_pos, rx197_eos, rx197_fail
    repr_bind_attr_int rx197_cur, rx197_curclass, "$!from", rx197_pos
  rxscan198_scan:
    nqp_rxmark rx197_bstack, rxscan198_loop, rx197_pos, 0
  rxscan198_done:
    nqp_rxmark rx197_bstack, rxcap199_fail, rx197_pos, 0
    add $I11, rx197_pos, 2
    gt $I11, rx197_eos, rx197_fail
    substr $S10, rx197_tgt, rx197_pos, 2
    ne $S10, ucs4:"$$", rx197_fail
    add rx197_pos, 2
    nqp_rxpeek $I19, rx197_bstack, rxcap199_fail
    inc $I19
    set $I11, rx197_bstack[$I19]
    $P11 = rx197_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx197_pos)
    rx197_cstack = rx197_cur."!cursor_capture"($P11, "sym")
    goto rxcap199_done
  rxcap199_fail:
    goto rx197_fail
  rxcap199_done:
    rx197_cur."!cursor_pass"(rx197_pos, "metachar:sym<$$>", 'backtrack'=>1)
    .return (rx197_cur)
  rx197_restart:
    repr_get_attr_obj rx197_cstack, rx197_cur, rx197_curclass, "$!cstack"
  rx197_fail:
    unless rx197_bstack, rx197_done
    pop $I19, rx197_bstack
    if_null rx197_cstack, rx197_cstack_done
    unless rx197_cstack, rx197_cstack_done
    dec $I19
    set $P11, rx197_cstack[$I19]
  rx197_cstack_done:
    pop rx197_rep, rx197_bstack
    pop rx197_pos, rx197_bstack
    pop $I19, rx197_bstack
    lt rx197_pos, -1, rx197_done
    lt rx197_pos, 0, rx197_fail
    eq $I19, 0, rx197_fail
    if_null rx197_cstack, rx197_jump
    elements $I18, rx197_bstack
    le $I18, 0, rx197_cut
    dec $I18
    set $I18, rx197_bstack[$I18]
  rx197_cut:
    assign rx197_cstack, $I18
  rx197_jump:
    jump $I19
  rx197_done:
    rx197_cur."!cursor_fail"()
    .return (rx197_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "51_1338064447.841_caps"  :subid("237_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 122
    new $P103, "Hash"
    set $P103["sym"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "51_1338064447.841_nfa"  :subid("238_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 122
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 2
    push $P104, 36
    push $P104, 2
    new $P105, "ResizablePMCArray"
    push $P105, 2
    push $P105, 36
    push $P105, 0
    new $P106, "ResizablePMCArray"
    push $P106, $P103
    push $P106, $P104
    push $P106, $P105
    .return ($P106)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "metachar:sym<:::>"  :subid("52_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1254
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 123
    .lex "self", param_1254
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1255
    .lex "$/", $P1256
    .local string rx200_tgt
    .local int rx200_pos
    .local int rx200_off
    .local int rx200_eos
    .local int rx200_rep
    .local pmc rx200_cur
    .local pmc rx200_curclass
    .local pmc rx200_bstack
    .local pmc rx200_cstack
    (rx200_cur, rx200_tgt, rx200_pos, rx200_curclass, rx200_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx200_cur
    length rx200_eos, rx200_tgt
    eq $I19, 1, rx200_restart
    repr_get_attr_int $I11, self, rx200_curclass, "$!from"
    ne $I11, -1, rxscan201_done
    goto rxscan201_scan
  rxscan201_loop:
    inc rx200_pos
    gt rx200_pos, rx200_eos, rx200_fail
    repr_bind_attr_int rx200_cur, rx200_curclass, "$!from", rx200_pos
  rxscan201_scan:
    nqp_rxmark rx200_bstack, rxscan201_loop, rx200_pos, 0
  rxscan201_done:
    nqp_rxmark rx200_bstack, rxcap202_fail, rx200_pos, 0
    add $I11, rx200_pos, 3
    gt $I11, rx200_eos, rx200_fail
    substr $S10, rx200_tgt, rx200_pos, 3
    ne $S10, ucs4:":::", rx200_fail
    add rx200_pos, 3
    nqp_rxpeek $I19, rx200_bstack, rxcap202_fail
    inc $I19
    set $I11, rx200_bstack[$I19]
    $P11 = rx200_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx200_pos)
    rx200_cstack = rx200_cur."!cursor_capture"($P11, "sym")
    goto rxcap202_done
  rxcap202_fail:
    goto rx200_fail
  rxcap202_done:
    repr_bind_attr_int rx200_cur, rx200_curclass, "$!pos", rx200_pos
    $P11 = rx200_cur."panic"("::: not yet implemented")
    repr_get_attr_int $I11, $P11, rx200_curclass, "$!pos"
    lt $I11, 0, rx200_fail
    repr_get_attr_int rx200_pos, $P11, rx200_curclass, "$!pos"
    rx200_cur."!cursor_pass"(rx200_pos, "metachar:sym<:::>", 'backtrack'=>1)
    .return (rx200_cur)
  rx200_restart:
    repr_get_attr_obj rx200_cstack, rx200_cur, rx200_curclass, "$!cstack"
  rx200_fail:
    unless rx200_bstack, rx200_done
    pop $I19, rx200_bstack
    if_null rx200_cstack, rx200_cstack_done
    unless rx200_cstack, rx200_cstack_done
    dec $I19
    set $P11, rx200_cstack[$I19]
  rx200_cstack_done:
    pop rx200_rep, rx200_bstack
    pop rx200_pos, rx200_bstack
    pop $I19, rx200_bstack
    lt rx200_pos, -1, rx200_done
    lt rx200_pos, 0, rx200_fail
    eq $I19, 0, rx200_fail
    if_null rx200_cstack, rx200_jump
    elements $I18, rx200_bstack
    le $I18, 0, rx200_cut
    dec $I18
    set $I18, rx200_bstack[$I18]
  rx200_cut:
    assign rx200_cstack, $I18
  rx200_jump:
    jump $I19
  rx200_done:
    rx200_cur."!cursor_fail"()
    .return (rx200_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "52_1338064447.841_caps"  :subid("239_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 123
    new $P103, "Hash"
    set $P103["sym"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "52_1338064447.841_nfa"  :subid("240_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 123
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 2
    push $P104, 58
    push $P104, 2
    new $P105, "ResizablePMCArray"
    push $P105, 2
    push $P105, 58
    push $P105, 3
    new $P106, "ResizablePMCArray"
    push $P106, 2
    push $P106, 58
    push $P106, 4
    new $P107, "ResizablePMCArray"
    push $P107, 8
    push $P107, "panic"
    push $P107, 0
    new $P108, "ResizablePMCArray"
    push $P108, $P103
    push $P108, $P104
    push $P108, $P105
    push $P108, $P106
    push $P108, $P107
    .return ($P108)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "metachar:sym<::>"  :subid("53_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1260
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 124
    .lex "self", param_1260
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1261
    .lex "$/", $P1262
    .local string rx204_tgt
    .local int rx204_pos
    .local int rx204_off
    .local int rx204_eos
    .local int rx204_rep
    .local pmc rx204_cur
    .local pmc rx204_curclass
    .local pmc rx204_bstack
    .local pmc rx204_cstack
    (rx204_cur, rx204_tgt, rx204_pos, rx204_curclass, rx204_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx204_cur
    length rx204_eos, rx204_tgt
    eq $I19, 1, rx204_restart
    repr_get_attr_int $I11, self, rx204_curclass, "$!from"
    ne $I11, -1, rxscan205_done
    goto rxscan205_scan
  rxscan205_loop:
    inc rx204_pos
    gt rx204_pos, rx204_eos, rx204_fail
    repr_bind_attr_int rx204_cur, rx204_curclass, "$!from", rx204_pos
  rxscan205_scan:
    nqp_rxmark rx204_bstack, rxscan205_loop, rx204_pos, 0
  rxscan205_done:
    nqp_rxmark rx204_bstack, rxcap206_fail, rx204_pos, 0
    add $I11, rx204_pos, 2
    gt $I11, rx204_eos, rx204_fail
    substr $S10, rx204_tgt, rx204_pos, 2
    ne $S10, ucs4:"::", rx204_fail
    add rx204_pos, 2
    nqp_rxpeek $I19, rx204_bstack, rxcap206_fail
    inc $I19
    set $I11, rx204_bstack[$I19]
    $P11 = rx204_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx204_pos)
    rx204_cstack = rx204_cur."!cursor_capture"($P11, "sym")
    goto rxcap206_done
  rxcap206_fail:
    goto rx204_fail
  rxcap206_done:
    repr_bind_attr_int rx204_cur, rx204_curclass, "$!pos", rx204_pos
    $P11 = rx204_cur."panic"(":: not yet implemented")
    repr_get_attr_int $I11, $P11, rx204_curclass, "$!pos"
    lt $I11, 0, rx204_fail
    repr_get_attr_int rx204_pos, $P11, rx204_curclass, "$!pos"
    rx204_cur."!cursor_pass"(rx204_pos, "metachar:sym<::>", 'backtrack'=>1)
    .return (rx204_cur)
  rx204_restart:
    repr_get_attr_obj rx204_cstack, rx204_cur, rx204_curclass, "$!cstack"
  rx204_fail:
    unless rx204_bstack, rx204_done
    pop $I19, rx204_bstack
    if_null rx204_cstack, rx204_cstack_done
    unless rx204_cstack, rx204_cstack_done
    dec $I19
    set $P11, rx204_cstack[$I19]
  rx204_cstack_done:
    pop rx204_rep, rx204_bstack
    pop rx204_pos, rx204_bstack
    pop $I19, rx204_bstack
    lt rx204_pos, -1, rx204_done
    lt rx204_pos, 0, rx204_fail
    eq $I19, 0, rx204_fail
    if_null rx204_cstack, rx204_jump
    elements $I18, rx204_bstack
    le $I18, 0, rx204_cut
    dec $I18
    set $I18, rx204_bstack[$I18]
  rx204_cut:
    assign rx204_cstack, $I18
  rx204_jump:
    jump $I19
  rx204_done:
    rx204_cur."!cursor_fail"()
    .return (rx204_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "53_1338064447.841_caps"  :subid("241_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 124
    new $P103, "Hash"
    set $P103["sym"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "53_1338064447.841_nfa"  :subid("242_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 124
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 2
    push $P104, 58
    push $P104, 2
    new $P105, "ResizablePMCArray"
    push $P105, 2
    push $P105, 58
    push $P105, 3
    new $P106, "ResizablePMCArray"
    push $P106, 8
    push $P106, "panic"
    push $P106, 0
    new $P107, "ResizablePMCArray"
    push $P107, $P103
    push $P107, $P104
    push $P107, $P105
    push $P107, $P106
    .return ($P107)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "metachar:sym<lwb>"  :subid("54_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1266
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 125
    .lex "self", param_1266
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1267
    .lex "$/", $P1268
    .local string rx208_tgt
    .local int rx208_pos
    .local int rx208_off
    .local int rx208_eos
    .local int rx208_rep
    .local pmc rx208_cur
    .local pmc rx208_curclass
    .local pmc rx208_bstack
    .local pmc rx208_cstack
    (rx208_cur, rx208_tgt, rx208_pos, rx208_curclass, rx208_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx208_cur
    length rx208_eos, rx208_tgt
    eq $I19, 1, rx208_restart
    repr_get_attr_int $I11, self, rx208_curclass, "$!from"
    ne $I11, -1, rxscan209_done
    goto rxscan209_scan
  rxscan209_loop:
    inc rx208_pos
    gt rx208_pos, rx208_eos, rx208_fail
    repr_bind_attr_int rx208_cur, rx208_curclass, "$!from", rx208_pos
  rxscan209_scan:
    nqp_rxmark rx208_bstack, rxscan209_loop, rx208_pos, 0
  rxscan209_done:
    nqp_rxmark rx208_bstack, rxcap210_fail, rx208_pos, 0
  alt211_0:
    nqp_rxmark rx208_bstack, alt211_1, rx208_pos, 0
    add $I11, rx208_pos, 2
    gt $I11, rx208_eos, rx208_fail
    substr $S10, rx208_tgt, rx208_pos, 2
    ne $S10, ucs4:"<<", rx208_fail
    add rx208_pos, 2
    goto alt211_end
  alt211_1:
    add $I11, rx208_pos, 1
    gt $I11, rx208_eos, rx208_fail
    substr $S10, rx208_tgt, rx208_pos, 1
    ne $S10, ucs4:"\x{ab}", rx208_fail
    add rx208_pos, 1
  alt211_end:
    nqp_rxpeek $I19, rx208_bstack, rxcap210_fail
    inc $I19
    set $I11, rx208_bstack[$I19]
    $P11 = rx208_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx208_pos)
    rx208_cstack = rx208_cur."!cursor_capture"($P11, "sym")
    goto rxcap210_done
  rxcap210_fail:
    goto rx208_fail
  rxcap210_done:
    rx208_cur."!cursor_pass"(rx208_pos, "metachar:sym<lwb>", 'backtrack'=>1)
    .return (rx208_cur)
  rx208_restart:
    repr_get_attr_obj rx208_cstack, rx208_cur, rx208_curclass, "$!cstack"
  rx208_fail:
    unless rx208_bstack, rx208_done
    pop $I19, rx208_bstack
    if_null rx208_cstack, rx208_cstack_done
    unless rx208_cstack, rx208_cstack_done
    dec $I19
    set $P11, rx208_cstack[$I19]
  rx208_cstack_done:
    pop rx208_rep, rx208_bstack
    pop rx208_pos, rx208_bstack
    pop $I19, rx208_bstack
    lt rx208_pos, -1, rx208_done
    lt rx208_pos, 0, rx208_fail
    eq $I19, 0, rx208_fail
    if_null rx208_cstack, rx208_jump
    elements $I18, rx208_bstack
    le $I18, 0, rx208_cut
    dec $I18
    set $I18, rx208_bstack[$I18]
  rx208_cut:
    assign rx208_cstack, $I18
  rx208_jump:
    jump $I19
  rx208_done:
    rx208_cur."!cursor_fail"()
    .return (rx208_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "54_1338064447.841_caps"  :subid("243_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 125
    new $P103, "Hash"
    set $P103["sym"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "54_1338064447.841_nfa"  :subid("244_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 125
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 2
    push $P104, 60
    push $P104, 2
    push $P104, 2
    push $P104, 171
    push $P104, 0
    new $P105, "ResizablePMCArray"
    push $P105, 2
    push $P105, 60
    push $P105, 0
    new $P106, "ResizablePMCArray"
    push $P106, $P103
    push $P106, $P104
    push $P106, $P105
    .return ($P106)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "metachar:sym<rwb>"  :subid("55_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1272
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 126
    .lex "self", param_1272
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1273
    .lex "$/", $P1274
    .local string rx212_tgt
    .local int rx212_pos
    .local int rx212_off
    .local int rx212_eos
    .local int rx212_rep
    .local pmc rx212_cur
    .local pmc rx212_curclass
    .local pmc rx212_bstack
    .local pmc rx212_cstack
    (rx212_cur, rx212_tgt, rx212_pos, rx212_curclass, rx212_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx212_cur
    length rx212_eos, rx212_tgt
    eq $I19, 1, rx212_restart
    repr_get_attr_int $I11, self, rx212_curclass, "$!from"
    ne $I11, -1, rxscan213_done
    goto rxscan213_scan
  rxscan213_loop:
    inc rx212_pos
    gt rx212_pos, rx212_eos, rx212_fail
    repr_bind_attr_int rx212_cur, rx212_curclass, "$!from", rx212_pos
  rxscan213_scan:
    nqp_rxmark rx212_bstack, rxscan213_loop, rx212_pos, 0
  rxscan213_done:
    nqp_rxmark rx212_bstack, rxcap214_fail, rx212_pos, 0
  alt215_0:
    nqp_rxmark rx212_bstack, alt215_1, rx212_pos, 0
    add $I11, rx212_pos, 2
    gt $I11, rx212_eos, rx212_fail
    substr $S10, rx212_tgt, rx212_pos, 2
    ne $S10, ucs4:">>", rx212_fail
    add rx212_pos, 2
    goto alt215_end
  alt215_1:
    add $I11, rx212_pos, 1
    gt $I11, rx212_eos, rx212_fail
    substr $S10, rx212_tgt, rx212_pos, 1
    ne $S10, ucs4:"\x{bb}", rx212_fail
    add rx212_pos, 1
  alt215_end:
    nqp_rxpeek $I19, rx212_bstack, rxcap214_fail
    inc $I19
    set $I11, rx212_bstack[$I19]
    $P11 = rx212_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx212_pos)
    rx212_cstack = rx212_cur."!cursor_capture"($P11, "sym")
    goto rxcap214_done
  rxcap214_fail:
    goto rx212_fail
  rxcap214_done:
    rx212_cur."!cursor_pass"(rx212_pos, "metachar:sym<rwb>", 'backtrack'=>1)
    .return (rx212_cur)
  rx212_restart:
    repr_get_attr_obj rx212_cstack, rx212_cur, rx212_curclass, "$!cstack"
  rx212_fail:
    unless rx212_bstack, rx212_done
    pop $I19, rx212_bstack
    if_null rx212_cstack, rx212_cstack_done
    unless rx212_cstack, rx212_cstack_done
    dec $I19
    set $P11, rx212_cstack[$I19]
  rx212_cstack_done:
    pop rx212_rep, rx212_bstack
    pop rx212_pos, rx212_bstack
    pop $I19, rx212_bstack
    lt rx212_pos, -1, rx212_done
    lt rx212_pos, 0, rx212_fail
    eq $I19, 0, rx212_fail
    if_null rx212_cstack, rx212_jump
    elements $I18, rx212_bstack
    le $I18, 0, rx212_cut
    dec $I18
    set $I18, rx212_bstack[$I18]
  rx212_cut:
    assign rx212_cstack, $I18
  rx212_jump:
    jump $I19
  rx212_done:
    rx212_cur."!cursor_fail"()
    .return (rx212_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "55_1338064447.841_caps"  :subid("245_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 126
    new $P103, "Hash"
    set $P103["sym"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "55_1338064447.841_nfa"  :subid("246_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 126
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 2
    push $P104, 62
    push $P104, 2
    push $P104, 2
    push $P104, 187
    push $P104, 0
    new $P105, "ResizablePMCArray"
    push $P105, 2
    push $P105, 62
    push $P105, 0
    new $P106, "ResizablePMCArray"
    push $P106, $P103
    push $P106, $P104
    push $P106, $P105
    .return ($P106)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "metachar:sym<bs>"  :subid("56_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1278
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 127
    .lex "self", param_1278
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1279
    .lex "$/", $P1280
    .local string rx216_tgt
    .local int rx216_pos
    .local int rx216_off
    .local int rx216_eos
    .local int rx216_rep
    .local pmc rx216_cur
    .local pmc rx216_curclass
    .local pmc rx216_bstack
    .local pmc rx216_cstack
    (rx216_cur, rx216_tgt, rx216_pos, rx216_curclass, rx216_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx216_cur
    length rx216_eos, rx216_tgt
    eq $I19, 1, rx216_restart
    repr_get_attr_int $I11, self, rx216_curclass, "$!from"
    ne $I11, -1, rxscan217_done
    goto rxscan217_scan
  rxscan217_loop:
    inc rx216_pos
    gt rx216_pos, rx216_eos, rx216_fail
    repr_bind_attr_int rx216_cur, rx216_curclass, "$!from", rx216_pos
  rxscan217_scan:
    nqp_rxmark rx216_bstack, rxscan217_loop, rx216_pos, 0
  rxscan217_done:
    add $I11, rx216_pos, 1
    gt $I11, rx216_eos, rx216_fail
    substr $S10, rx216_tgt, rx216_pos, 1
    ne $S10, ucs4:"\\", rx216_fail
    add rx216_pos, 1
    repr_bind_attr_int rx216_cur, rx216_curclass, "$!pos", rx216_pos
    $P11 = rx216_cur."backslash"()
    repr_get_attr_int $I11, $P11, rx216_curclass, "$!pos"
    lt $I11, 0, rx216_fail
    nqp_rxmark rx216_bstack, rxsubrule218_pass, -1, 0
  rxsubrule218_pass:
    rx216_cstack = rx216_cur."!cursor_capture"($P11, "backslash")
    repr_get_attr_int rx216_pos, $P11, rx216_curclass, "$!pos"
    rx216_cur."!cursor_pass"(rx216_pos, "metachar:sym<bs>", 'backtrack'=>1)
    .return (rx216_cur)
  rx216_restart:
    repr_get_attr_obj rx216_cstack, rx216_cur, rx216_curclass, "$!cstack"
  rx216_fail:
    unless rx216_bstack, rx216_done
    pop $I19, rx216_bstack
    if_null rx216_cstack, rx216_cstack_done
    unless rx216_cstack, rx216_cstack_done
    dec $I19
    set $P11, rx216_cstack[$I19]
  rx216_cstack_done:
    pop rx216_rep, rx216_bstack
    pop rx216_pos, rx216_bstack
    pop $I19, rx216_bstack
    lt rx216_pos, -1, rx216_done
    lt rx216_pos, 0, rx216_fail
    eq $I19, 0, rx216_fail
    if_null rx216_cstack, rx216_jump
    elements $I18, rx216_bstack
    le $I18, 0, rx216_cut
    dec $I18
    set $I18, rx216_bstack[$I18]
  rx216_cut:
    assign rx216_cstack, $I18
  rx216_jump:
    jump $I19
  rx216_done:
    rx216_cur."!cursor_fail"()
    .return (rx216_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "56_1338064447.841_caps"  :subid("247_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 127
    new $P103, "Hash"
    set $P103["backslash"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "56_1338064447.841_nfa"  :subid("248_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 127
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 2
    push $P104, 92
    push $P104, 2
    new $P105, "ResizablePMCArray"
    push $P105, 8
    push $P105, "backslash"
    push $P105, 0
    new $P106, "ResizablePMCArray"
    push $P106, $P103
    push $P106, $P104
    push $P106, $P105
    .return ($P106)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "metachar:sym<mod>"  :subid("57_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1284
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 128
    .lex "self", param_1284
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1285
    .lex "$/", $P1286
    .local string rx219_tgt
    .local int rx219_pos
    .local int rx219_off
    .local int rx219_eos
    .local int rx219_rep
    .local pmc rx219_cur
    .local pmc rx219_curclass
    .local pmc rx219_bstack
    .local pmc rx219_cstack
    (rx219_cur, rx219_tgt, rx219_pos, rx219_curclass, rx219_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx219_cur
    length rx219_eos, rx219_tgt
    eq $I19, 1, rx219_restart
    repr_get_attr_int $I11, self, rx219_curclass, "$!from"
    ne $I11, -1, rxscan220_done
    goto rxscan220_scan
  rxscan220_loop:
    inc rx219_pos
    gt rx219_pos, rx219_eos, rx219_fail
    repr_bind_attr_int rx219_cur, rx219_curclass, "$!from", rx219_pos
  rxscan220_scan:
    nqp_rxmark rx219_bstack, rxscan220_loop, rx219_pos, 0
  rxscan220_done:
    repr_bind_attr_int rx219_cur, rx219_curclass, "$!pos", rx219_pos
    $P11 = rx219_cur."mod_internal"()
    repr_get_attr_int $I11, $P11, rx219_curclass, "$!pos"
    lt $I11, 0, rx219_fail
    nqp_rxmark rx219_bstack, rxsubrule221_pass, -1, 0
  rxsubrule221_pass:
    rx219_cstack = rx219_cur."!cursor_capture"($P11, "mod_internal")
    repr_get_attr_int rx219_pos, $P11, rx219_curclass, "$!pos"
    rx219_cur."!cursor_pass"(rx219_pos, "metachar:sym<mod>", 'backtrack'=>1)
    .return (rx219_cur)
  rx219_restart:
    repr_get_attr_obj rx219_cstack, rx219_cur, rx219_curclass, "$!cstack"
  rx219_fail:
    unless rx219_bstack, rx219_done
    pop $I19, rx219_bstack
    if_null rx219_cstack, rx219_cstack_done
    unless rx219_cstack, rx219_cstack_done
    dec $I19
    set $P11, rx219_cstack[$I19]
  rx219_cstack_done:
    pop rx219_rep, rx219_bstack
    pop rx219_pos, rx219_bstack
    pop $I19, rx219_bstack
    lt rx219_pos, -1, rx219_done
    lt rx219_pos, 0, rx219_fail
    eq $I19, 0, rx219_fail
    if_null rx219_cstack, rx219_jump
    elements $I18, rx219_bstack
    le $I18, 0, rx219_cut
    dec $I18
    set $I18, rx219_bstack[$I18]
  rx219_cut:
    assign rx219_cstack, $I18
  rx219_jump:
    jump $I19
  rx219_done:
    rx219_cur."!cursor_fail"()
    .return (rx219_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "57_1338064447.841_caps"  :subid("249_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 128
    new $P103, "Hash"
    set $P103["mod_internal"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "57_1338064447.841_nfa"  :subid("250_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 128
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 8
    push $P104, "mod_internal"
    push $P104, 0
    new $P105, "ResizablePMCArray"
    push $P105, $P103
    push $P105, $P104
    .return ($P105)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "metachar:sym<quantifier>"  :subid("58_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1290
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 129
    .lex "self", param_1290
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1291
    .lex "$/", $P1292
    .local string rx222_tgt
    .local int rx222_pos
    .local int rx222_off
    .local int rx222_eos
    .local int rx222_rep
    .local pmc rx222_cur
    .local pmc rx222_curclass
    .local pmc rx222_bstack
    .local pmc rx222_cstack
    (rx222_cur, rx222_tgt, rx222_pos, rx222_curclass, rx222_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx222_cur
    length rx222_eos, rx222_tgt
    eq $I19, 1, rx222_restart
    repr_get_attr_int $I11, self, rx222_curclass, "$!from"
    ne $I11, -1, rxscan223_done
    goto rxscan223_scan
  rxscan223_loop:
    inc rx222_pos
    gt rx222_pos, rx222_eos, rx222_fail
    repr_bind_attr_int rx222_cur, rx222_curclass, "$!from", rx222_pos
  rxscan223_scan:
    nqp_rxmark rx222_bstack, rxscan223_loop, rx222_pos, 0
  rxscan223_done:
    repr_bind_attr_int rx222_cur, rx222_curclass, "$!pos", rx222_pos
    $P11 = rx222_cur."quantifier"()
    repr_get_attr_int $I11, $P11, rx222_curclass, "$!pos"
    lt $I11, 0, rx222_fail
    nqp_rxmark rx222_bstack, rxsubrule224_pass, -1, 0
  rxsubrule224_pass:
    rx222_cstack = rx222_cur."!cursor_capture"($P11, "quantifier")
    repr_get_attr_int rx222_pos, $P11, rx222_curclass, "$!pos"
    repr_bind_attr_int rx222_cur, rx222_curclass, "$!pos", rx222_pos
    $P11 = rx222_cur."panic"("Quantifier quantifies nothing")
    repr_get_attr_int $I11, $P11, rx222_curclass, "$!pos"
    lt $I11, 0, rx222_fail
    repr_get_attr_int rx222_pos, $P11, rx222_curclass, "$!pos"
    rx222_cur."!cursor_pass"(rx222_pos, "metachar:sym<quantifier>", 'backtrack'=>1)
    .return (rx222_cur)
  rx222_restart:
    repr_get_attr_obj rx222_cstack, rx222_cur, rx222_curclass, "$!cstack"
  rx222_fail:
    unless rx222_bstack, rx222_done
    pop $I19, rx222_bstack
    if_null rx222_cstack, rx222_cstack_done
    unless rx222_cstack, rx222_cstack_done
    dec $I19
    set $P11, rx222_cstack[$I19]
  rx222_cstack_done:
    pop rx222_rep, rx222_bstack
    pop rx222_pos, rx222_bstack
    pop $I19, rx222_bstack
    lt rx222_pos, -1, rx222_done
    lt rx222_pos, 0, rx222_fail
    eq $I19, 0, rx222_fail
    if_null rx222_cstack, rx222_jump
    elements $I18, rx222_bstack
    le $I18, 0, rx222_cut
    dec $I18
    set $I18, rx222_bstack[$I18]
  rx222_cut:
    assign rx222_cstack, $I18
  rx222_jump:
    jump $I19
  rx222_done:
    rx222_cur."!cursor_fail"()
    .return (rx222_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "58_1338064447.841_caps"  :subid("251_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 129
    new $P103, "Hash"
    set $P103["quantifier"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "58_1338064447.841_nfa"  :subid("252_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 129
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 8
    push $P104, "quantifier"
    push $P104, 2
    new $P105, "ResizablePMCArray"
    push $P105, 8
    push $P105, "panic"
    push $P105, 0
    new $P106, "ResizablePMCArray"
    push $P106, $P103
    push $P106, $P104
    push $P106, $P105
    .return ($P106)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "metachar:sym<~>"  :subid("59_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1296
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 134
    .lex "self", param_1296
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1297
    .lex "$/", $P1298
    .local string rx226_tgt
    .local int rx226_pos
    .local int rx226_off
    .local int rx226_eos
    .local int rx226_rep
    .local pmc rx226_cur
    .local pmc rx226_curclass
    .local pmc rx226_bstack
    .local pmc rx226_cstack
    (rx226_cur, rx226_tgt, rx226_pos, rx226_curclass, rx226_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx226_cur
    length rx226_eos, rx226_tgt
    eq $I19, 1, rx226_restart
    repr_get_attr_int $I11, self, rx226_curclass, "$!from"
    ne $I11, -1, rxscan227_done
    goto rxscan227_scan
  rxscan227_loop:
    inc rx226_pos
    gt rx226_pos, rx226_eos, rx226_fail
    repr_bind_attr_int rx226_cur, rx226_curclass, "$!from", rx226_pos
  rxscan227_scan:
    nqp_rxmark rx226_bstack, rxscan227_loop, rx226_pos, 0
  rxscan227_done:
    nqp_rxmark rx226_bstack, rxcap228_fail, rx226_pos, 0
    add $I11, rx226_pos, 1
    gt $I11, rx226_eos, rx226_fail
    substr $S10, rx226_tgt, rx226_pos, 1
    ne $S10, ucs4:"~", rx226_fail
    add rx226_pos, 1
    nqp_rxpeek $I19, rx226_bstack, rxcap228_fail
    inc $I19
    set $I11, rx226_bstack[$I19]
    $P11 = rx226_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx226_pos)
    rx226_cstack = rx226_cur."!cursor_capture"($P11, "sym")
    goto rxcap228_done
  rxcap228_fail:
    goto rx226_fail
  rxcap228_done:
    repr_bind_attr_int rx226_cur, rx226_curclass, "$!pos", rx226_pos
    $P11 = rx226_cur."ws"()
    repr_get_attr_int $I11, $P11, rx226_curclass, "$!pos"
    lt $I11, 0, rx226_fail
    repr_get_attr_int rx226_pos, $P11, rx226_curclass, "$!pos"
    repr_bind_attr_int rx226_cur, rx226_curclass, "$!pos", rx226_pos
    $P11 = rx226_cur."quantified_atom"()
    repr_get_attr_int $I11, $P11, rx226_curclass, "$!pos"
    lt $I11, 0, rx226_fail
    nqp_rxmark rx226_bstack, rxsubrule230_pass, -1, 0
  rxsubrule230_pass:
    rx226_cstack = rx226_cur."!cursor_capture"($P11, "GOAL")
    repr_get_attr_int rx226_pos, $P11, rx226_curclass, "$!pos"
    repr_bind_attr_int rx226_cur, rx226_curclass, "$!pos", rx226_pos
    $P11 = rx226_cur."ws"()
    repr_get_attr_int $I11, $P11, rx226_curclass, "$!pos"
    lt $I11, 0, rx226_fail
    repr_get_attr_int rx226_pos, $P11, rx226_curclass, "$!pos"
    repr_bind_attr_int rx226_cur, rx226_curclass, "$!pos", rx226_pos
    $P11 = rx226_cur."quantified_atom"()
    repr_get_attr_int $I11, $P11, rx226_curclass, "$!pos"
    lt $I11, 0, rx226_fail
    nqp_rxmark rx226_bstack, rxsubrule232_pass, -1, 0
  rxsubrule232_pass:
    rx226_cstack = rx226_cur."!cursor_capture"($P11, "EXPR")
    repr_get_attr_int rx226_pos, $P11, rx226_curclass, "$!pos"
    rx226_cur."!cursor_pass"(rx226_pos, "metachar:sym<~>", 'backtrack'=>1)
    .return (rx226_cur)
  rx226_restart:
    repr_get_attr_obj rx226_cstack, rx226_cur, rx226_curclass, "$!cstack"
  rx226_fail:
    unless rx226_bstack, rx226_done
    pop $I19, rx226_bstack
    if_null rx226_cstack, rx226_cstack_done
    unless rx226_cstack, rx226_cstack_done
    dec $I19
    set $P11, rx226_cstack[$I19]
  rx226_cstack_done:
    pop rx226_rep, rx226_bstack
    pop rx226_pos, rx226_bstack
    pop $I19, rx226_bstack
    lt rx226_pos, -1, rx226_done
    lt rx226_pos, 0, rx226_fail
    eq $I19, 0, rx226_fail
    if_null rx226_cstack, rx226_jump
    elements $I18, rx226_bstack
    le $I18, 0, rx226_cut
    dec $I18
    set $I18, rx226_bstack[$I18]
  rx226_cut:
    assign rx226_cstack, $I18
  rx226_jump:
    jump $I19
  rx226_done:
    rx226_cur."!cursor_fail"()
    .return (rx226_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "59_1338064447.841_caps"  :subid("253_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 134
    new $P103, "Hash"
    set $P103["sym"], 0
    set $P103["GOAL"], 0
    set $P103["EXPR"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "59_1338064447.841_nfa"  :subid("254_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 134
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 2
    push $P104, 126
    push $P104, 2
    new $P105, "ResizablePMCArray"
    push $P105, 8
    push $P105, "ws"
    push $P105, 3
    new $P106, "ResizablePMCArray"
    push $P106, 8
    push $P106, "quantified_atom"
    push $P106, 4
    new $P107, "ResizablePMCArray"
    push $P107, 8
    push $P107, "ws"
    push $P107, 5
    new $P108, "ResizablePMCArray"
    push $P108, 8
    push $P108, "quantified_atom"
    push $P108, 0
    new $P109, "ResizablePMCArray"
    push $P109, $P103
    push $P109, $P104
    push $P109, $P105
    push $P109, $P106
    push $P109, $P107
    push $P109, $P108
    .return ($P109)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "metachar:sym<{*}>"  :subid("60_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1302
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 140
    .lex "self", param_1302
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1303
    .lex "$/", $P1304
    .local string rx233_tgt
    .local int rx233_pos
    .local int rx233_off
    .local int rx233_eos
    .local int rx233_rep
    .local pmc rx233_cur
    .local pmc rx233_curclass
    .local pmc rx233_bstack
    .local pmc rx233_cstack
    (rx233_cur, rx233_tgt, rx233_pos, rx233_curclass, rx233_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx233_cur
    length rx233_eos, rx233_tgt
    eq $I19, 1, rx233_restart
    repr_get_attr_int $I11, self, rx233_curclass, "$!from"
    ne $I11, -1, rxscan234_done
    goto rxscan234_scan
  rxscan234_loop:
    inc rx233_pos
    gt rx233_pos, rx233_eos, rx233_fail
    repr_bind_attr_int rx233_cur, rx233_curclass, "$!from", rx233_pos
  rxscan234_scan:
    nqp_rxmark rx233_bstack, rxscan234_loop, rx233_pos, 0
  rxscan234_done:
    nqp_rxmark rx233_bstack, rxcap235_fail, rx233_pos, 0
    add $I11, rx233_pos, 3
    gt $I11, rx233_eos, rx233_fail
    substr $S10, rx233_tgt, rx233_pos, 3
    ne $S10, ucs4:"{*}", rx233_fail
    add rx233_pos, 3
    nqp_rxpeek $I19, rx233_bstack, rxcap235_fail
    inc $I19
    set $I11, rx233_bstack[$I19]
    $P11 = rx233_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx233_pos)
    rx233_cstack = rx233_cur."!cursor_capture"($P11, "sym")
    goto rxcap235_done
  rxcap235_fail:
    goto rx233_fail
  rxcap235_done:
  # rx rxquantr236 ** 0..1
    nqp_rxmark rx233_bstack, rxquantr236_done, rx233_pos, 0
  rxquantr236_loop:
  # rx rxquantr237 ** 0..-1
    nqp_rxmark rx233_bstack, rxquantr237_done, rx233_pos, 0
  rxquantr237_loop:
    ge rx233_pos, rx233_eos, rx233_fail
    substr $S11, rx233_tgt, rx233_pos, 1
    index $I11, ucs4:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S11
    lt $I11, 0, rx233_fail
    inc rx233_pos
    nqp_rxpeek $I19, rx233_bstack, rxquantr237_done
    inc $I19
    inc $I19
    set rx233_rep, rx233_bstack[$I19]
    nqp_rxcommit rx233_bstack, rxquantr237_done
    inc rx233_rep
    nqp_rxmark rx233_bstack, rxquantr237_done, rx233_pos, rx233_rep
    goto rxquantr237_loop
  rxquantr237_done:
    add $I11, rx233_pos, 3
    gt $I11, rx233_eos, rx233_fail
    substr $S10, rx233_tgt, rx233_pos, 3
    ne $S10, ucs4:"#= ", rx233_fail
    add rx233_pos, 3
  # rx rxquantr238 ** 0..-1
    nqp_rxmark rx233_bstack, rxquantr238_done, rx233_pos, 0
  rxquantr238_loop:
    ge rx233_pos, rx233_eos, rx233_fail
    substr $S11, rx233_tgt, rx233_pos, 1
    index $I11, ucs4:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S11
    lt $I11, 0, rx233_fail
    inc rx233_pos
    nqp_rxpeek $I19, rx233_bstack, rxquantr238_done
    inc $I19
    inc $I19
    set rx233_rep, rx233_bstack[$I19]
    nqp_rxcommit rx233_bstack, rxquantr238_done
    inc rx233_rep
    nqp_rxmark rx233_bstack, rxquantr238_done, rx233_pos, rx233_rep
    goto rxquantr238_loop
  rxquantr238_done:
    nqp_rxmark rx233_bstack, rxcap239_fail, rx233_pos, 0
  # rx rxquantr240 ** 1..-1
    nqp_rxmark rx233_bstack, rxquantr240_done, -1, 0
  rxquantr240_loop:
    ge rx233_pos, rx233_eos, rx233_fail
    is_cclass $I11, .CCLASS_WHITESPACE, rx233_tgt, rx233_pos
    if $I11, rx233_fail
    add rx233_pos, 1
    nqp_rxpeek $I19, rx233_bstack, rxquantr240_done
    inc $I19
    inc $I19
    set rx233_rep, rx233_bstack[$I19]
    nqp_rxcommit rx233_bstack, rxquantr240_done
    inc rx233_rep
    nqp_rxmark rx233_bstack, rxquantr240_done, rx233_pos, rx233_rep
    goto rxquantr240_loop
  rxquantr240_done:
  # rx rxquantr241 ** 0..-1
    nqp_rxmark rx233_bstack, rxquantr241_done, rx233_pos, 0
  rxquantr241_loop:
  # rx rxquantr242 ** 1..-1
    nqp_rxmark rx233_bstack, rxquantr242_done, -1, 0
  rxquantr242_loop:
    ge rx233_pos, rx233_eos, rx233_fail
    substr $S11, rx233_tgt, rx233_pos, 1
    index $I11, ucs4:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S11
    lt $I11, 0, rx233_fail
    inc rx233_pos
    nqp_rxpeek $I19, rx233_bstack, rxquantr242_done
    inc $I19
    inc $I19
    set rx233_rep, rx233_bstack[$I19]
    nqp_rxcommit rx233_bstack, rxquantr242_done
    inc rx233_rep
    nqp_rxmark rx233_bstack, rxquantr242_done, rx233_pos, rx233_rep
    goto rxquantr242_loop
  rxquantr242_done:
  # rx rxquantr243 ** 1..-1
    nqp_rxmark rx233_bstack, rxquantr243_done, -1, 0
  rxquantr243_loop:
    ge rx233_pos, rx233_eos, rx233_fail
    is_cclass $I11, .CCLASS_WHITESPACE, rx233_tgt, rx233_pos
    if $I11, rx233_fail
    add rx233_pos, 1
    nqp_rxpeek $I19, rx233_bstack, rxquantr243_done
    inc $I19
    inc $I19
    set rx233_rep, rx233_bstack[$I19]
    nqp_rxcommit rx233_bstack, rxquantr243_done
    inc rx233_rep
    nqp_rxmark rx233_bstack, rxquantr243_done, rx233_pos, rx233_rep
    goto rxquantr243_loop
  rxquantr243_done:
    nqp_rxpeek $I19, rx233_bstack, rxquantr241_done
    inc $I19
    inc $I19
    set rx233_rep, rx233_bstack[$I19]
    nqp_rxcommit rx233_bstack, rxquantr241_done
    inc rx233_rep
    nqp_rxmark rx233_bstack, rxquantr241_done, rx233_pos, rx233_rep
    goto rxquantr241_loop
  rxquantr241_done:
    nqp_rxpeek $I19, rx233_bstack, rxcap239_fail
    inc $I19
    set $I11, rx233_bstack[$I19]
    $P11 = rx233_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx233_pos)
    rx233_cstack = rx233_cur."!cursor_capture"($P11, "key")
    goto rxcap239_done
  rxcap239_fail:
    goto rx233_fail
  rxcap239_done:
    nqp_rxpeek $I19, rx233_bstack, rxquantr236_done
    inc $I19
    inc $I19
    set rx233_rep, rx233_bstack[$I19]
    nqp_rxcommit rx233_bstack, rxquantr236_done
    inc rx233_rep
  rxquantr236_done:
    rx233_cur."!cursor_pass"(rx233_pos, "metachar:sym<{*}>", 'backtrack'=>1)
    .return (rx233_cur)
  rx233_restart:
    repr_get_attr_obj rx233_cstack, rx233_cur, rx233_curclass, "$!cstack"
  rx233_fail:
    unless rx233_bstack, rx233_done
    pop $I19, rx233_bstack
    if_null rx233_cstack, rx233_cstack_done
    unless rx233_cstack, rx233_cstack_done
    dec $I19
    set $P11, rx233_cstack[$I19]
  rx233_cstack_done:
    pop rx233_rep, rx233_bstack
    pop rx233_pos, rx233_bstack
    pop $I19, rx233_bstack
    lt rx233_pos, -1, rx233_done
    lt rx233_pos, 0, rx233_fail
    eq $I19, 0, rx233_fail
    if_null rx233_cstack, rx233_jump
    elements $I18, rx233_bstack
    le $I18, 0, rx233_cut
    dec $I18
    set $I18, rx233_bstack[$I18]
  rx233_cut:
    assign rx233_cstack, $I18
  rx233_jump:
    jump $I19
  rx233_done:
    rx233_cur."!cursor_fail"()
    .return (rx233_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "60_1338064447.841_caps"  :subid("255_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 140
    new $P103, "Hash"
    set $P103["sym"], 0
    set $P103["key"], 2
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "60_1338064447.841_nfa"  :subid("256_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 140
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 2
    push $P104, 123
    push $P104, 2
    new $P105, "ResizablePMCArray"
    push $P105, 2
    push $P105, 42
    push $P105, 3
    new $P106, "ResizablePMCArray"
    push $P106, 2
    push $P106, 125
    push $P106, 4
    new $P107, "ResizablePMCArray"
    push $P107, 6
    push $P107, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000"
    push $P107, 4
    push $P107, 1
    push $P107, 0
    push $P107, 5
    push $P107, 1
    push $P107, 0
    push $P107, 0
    new $P108, "ResizablePMCArray"
    push $P108, 2
    push $P108, 35
    push $P108, 6
    new $P109, "ResizablePMCArray"
    push $P109, 2
    push $P109, 61
    push $P109, 7
    new $P110, "ResizablePMCArray"
    push $P110, 2
    push $P110, 32
    push $P110, 8
    new $P111, "ResizablePMCArray"
    push $P111, 6
    push $P111, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000"
    push $P111, 8
    push $P111, 1
    push $P111, 0
    push $P111, 9
    new $P112, "ResizablePMCArray"
    push $P112, 1
    push $P112, 0
    push $P112, 10
    new $P113, "ResizablePMCArray"
    push $P113, 5
    push $P113, 32
    push $P113, 11
    new $P114, "ResizablePMCArray"
    push $P114, 1
    push $P114, 0
    push $P114, 10
    push $P114, 1
    push $P114, 0
    push $P114, 12
    push $P114, 1
    push $P114, 0
    push $P114, 13
    push $P114, 1
    push $P114, 0
    push $P114, 0
    new $P115, "ResizablePMCArray"
    new $P116, "ResizablePMCArray"
    push $P116, 6
    push $P116, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000"
    push $P116, 14
    new $P117, "ResizablePMCArray"
    push $P117, 1
    push $P117, 0
    push $P117, 13
    push $P117, 1
    push $P117, 0
    push $P117, 15
    push $P117, 1
    push $P117, 0
    push $P117, 16
    new $P118, "ResizablePMCArray"
    new $P119, "ResizablePMCArray"
    push $P119, 5
    push $P119, 32
    push $P119, 17
    new $P120, "ResizablePMCArray"
    push $P120, 1
    push $P120, 0
    push $P120, 16
    push $P120, 1
    push $P120, 0
    push $P120, 11
    new $P121, "ResizablePMCArray"
    push $P121, $P103
    push $P121, $P104
    push $P121, $P105
    push $P121, $P106
    push $P121, $P107
    push $P121, $P108
    push $P121, $P109
    push $P121, $P110
    push $P121, $P111
    push $P121, $P112
    push $P121, $P113
    push $P121, $P114
    push $P121, $P115
    push $P121, $P116
    push $P121, $P117
    push $P121, $P118
    push $P121, $P119
    push $P121, $P120
    .return ($P121)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "metachar:sym<assert>"  :subid("61_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1308
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 144
    .lex "self", param_1308
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1309
    .lex "$/", $P1310
    .local string rx244_tgt
    .local int rx244_pos
    .local int rx244_off
    .local int rx244_eos
    .local int rx244_rep
    .local pmc rx244_cur
    .local pmc rx244_curclass
    .local pmc rx244_bstack
    .local pmc rx244_cstack
    (rx244_cur, rx244_tgt, rx244_pos, rx244_curclass, rx244_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx244_cur
    length rx244_eos, rx244_tgt
    eq $I19, 1, rx244_restart
    repr_get_attr_int $I11, self, rx244_curclass, "$!from"
    ne $I11, -1, rxscan245_done
    goto rxscan245_scan
  rxscan245_loop:
    inc rx244_pos
    gt rx244_pos, rx244_eos, rx244_fail
    repr_bind_attr_int rx244_cur, rx244_curclass, "$!from", rx244_pos
  rxscan245_scan:
    nqp_rxmark rx244_bstack, rxscan245_loop, rx244_pos, 0
  rxscan245_done:
    add $I11, rx244_pos, 1
    gt $I11, rx244_eos, rx244_fail
    substr $S10, rx244_tgt, rx244_pos, 1
    ne $S10, ucs4:"<", rx244_fail
    add rx244_pos, 1
    repr_bind_attr_int rx244_cur, rx244_curclass, "$!pos", rx244_pos
    $P11 = rx244_cur."assertion"()
    repr_get_attr_int $I11, $P11, rx244_curclass, "$!pos"
    lt $I11, 0, rx244_fail
    nqp_rxmark rx244_bstack, rxsubrule246_pass, -1, 0
  rxsubrule246_pass:
    rx244_cstack = rx244_cur."!cursor_capture"($P11, "assertion")
    repr_get_attr_int rx244_pos, $P11, rx244_curclass, "$!pos"
  alt247_0:
    nqp_rxmark rx244_bstack, alt247_1, rx244_pos, 0
    add $I11, rx244_pos, 1
    gt $I11, rx244_eos, rx244_fail
    substr $S10, rx244_tgt, rx244_pos, 1
    ne $S10, ucs4:">", rx244_fail
    add rx244_pos, 1
    goto alt247_end
  alt247_1:
    repr_bind_attr_int rx244_cur, rx244_curclass, "$!pos", rx244_pos
    $P11 = rx244_cur."panic"("regex assertion not terminated by angle bracket")
    repr_get_attr_int $I11, $P11, rx244_curclass, "$!pos"
    lt $I11, 0, rx244_fail
    repr_get_attr_int rx244_pos, $P11, rx244_curclass, "$!pos"
  alt247_end:
    rx244_cur."!cursor_pass"(rx244_pos, "metachar:sym<assert>", 'backtrack'=>1)
    .return (rx244_cur)
  rx244_restart:
    repr_get_attr_obj rx244_cstack, rx244_cur, rx244_curclass, "$!cstack"
  rx244_fail:
    unless rx244_bstack, rx244_done
    pop $I19, rx244_bstack
    if_null rx244_cstack, rx244_cstack_done
    unless rx244_cstack, rx244_cstack_done
    dec $I19
    set $P11, rx244_cstack[$I19]
  rx244_cstack_done:
    pop rx244_rep, rx244_bstack
    pop rx244_pos, rx244_bstack
    pop $I19, rx244_bstack
    lt rx244_pos, -1, rx244_done
    lt rx244_pos, 0, rx244_fail
    eq $I19, 0, rx244_fail
    if_null rx244_cstack, rx244_jump
    elements $I18, rx244_bstack
    le $I18, 0, rx244_cut
    dec $I18
    set $I18, rx244_bstack[$I18]
  rx244_cut:
    assign rx244_cstack, $I18
  rx244_jump:
    jump $I19
  rx244_done:
    rx244_cur."!cursor_fail"()
    .return (rx244_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "61_1338064447.841_caps"  :subid("257_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 144
    new $P103, "Hash"
    set $P103["assertion"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "61_1338064447.841_nfa"  :subid("258_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 144
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 2
    push $P104, 60
    push $P104, 2
    new $P105, "ResizablePMCArray"
    push $P105, 8
    push $P105, "assertion"
    push $P105, 3
    new $P106, "ResizablePMCArray"
    push $P106, 0
    push $P106, 0
    push $P106, 0
    new $P107, "ResizablePMCArray"
    push $P107, $P103
    push $P107, $P104
    push $P107, $P105
    push $P107, $P106
    .return ($P107)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "metachar:sym<var>"  :subid("62_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1314
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 149
    .lex "self", param_1314
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1315
    .lex "$/", $P1316
    .local string rx249_tgt
    .local int rx249_pos
    .local int rx249_off
    .local int rx249_eos
    .local int rx249_rep
    .local pmc rx249_cur
    .local pmc rx249_curclass
    .local pmc rx249_bstack
    .local pmc rx249_cstack
    (rx249_cur, rx249_tgt, rx249_pos, rx249_curclass, rx249_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx249_cur
    length rx249_eos, rx249_tgt
    eq $I19, 1, rx249_restart
    repr_get_attr_int $I11, self, rx249_curclass, "$!from"
    ne $I11, -1, rxscan250_done
    goto rxscan250_scan
  rxscan250_loop:
    inc rx249_pos
    gt rx249_pos, rx249_eos, rx249_fail
    repr_bind_attr_int rx249_cur, rx249_curclass, "$!from", rx249_pos
  rxscan250_scan:
    nqp_rxmark rx249_bstack, rxscan250_loop, rx249_pos, 0
  rxscan250_done:
  alt251_0:
    nqp_rxmark rx249_bstack, alt251_1, rx249_pos, 0
    add $I11, rx249_pos, 2
    gt $I11, rx249_eos, rx249_fail
    substr $S10, rx249_tgt, rx249_pos, 2
    ne $S10, ucs4:"$<", rx249_fail
    add rx249_pos, 2
    nqp_rxmark rx249_bstack, rxcap252_fail, rx249_pos, 0
  # rx rxquantr253 ** 1..-1
    nqp_rxmark rx249_bstack, rxquantr253_done, -1, 0
  rxquantr253_loop:
    ge rx249_pos, rx249_eos, rx249_fail
    substr $S11, rx249_tgt, rx249_pos, 1
    index $I11, ucs4:">", $S11
    ge $I11, 0, rx249_fail
    inc rx249_pos
    nqp_rxpeek $I19, rx249_bstack, rxquantr253_done
    inc $I19
    inc $I19
    set rx249_rep, rx249_bstack[$I19]
    nqp_rxcommit rx249_bstack, rxquantr253_done
    inc rx249_rep
    nqp_rxmark rx249_bstack, rxquantr253_done, rx249_pos, rx249_rep
    goto rxquantr253_loop
  rxquantr253_done:
    nqp_rxpeek $I19, rx249_bstack, rxcap252_fail
    inc $I19
    set $I11, rx249_bstack[$I19]
    $P11 = rx249_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx249_pos)
    rx249_cstack = rx249_cur."!cursor_capture"($P11, "name")
    goto rxcap252_done
  rxcap252_fail:
    goto rx249_fail
  rxcap252_done:
    add $I11, rx249_pos, 1
    gt $I11, rx249_eos, rx249_fail
    substr $S10, rx249_tgt, rx249_pos, 1
    ne $S10, ucs4:">", rx249_fail
    add rx249_pos, 1
    goto alt251_end
  alt251_1:
    add $I11, rx249_pos, 1
    gt $I11, rx249_eos, rx249_fail
    substr $S10, rx249_tgt, rx249_pos, 1
    ne $S10, ucs4:"$", rx249_fail
    add rx249_pos, 1
    nqp_rxmark rx249_bstack, rxcap254_fail, rx249_pos, 0
  # rx rxquantr255 ** 1..-1
    nqp_rxmark rx249_bstack, rxquantr255_done, -1, 0
  rxquantr255_loop:
    ge rx249_pos, rx249_eos, rx249_fail
    is_cclass $I11, .CCLASS_NUMERIC, rx249_tgt, rx249_pos
    unless $I11, rx249_fail
    add rx249_pos, 1
    nqp_rxpeek $I19, rx249_bstack, rxquantr255_done
    inc $I19
    inc $I19
    set rx249_rep, rx249_bstack[$I19]
    nqp_rxcommit rx249_bstack, rxquantr255_done
    inc rx249_rep
    nqp_rxmark rx249_bstack, rxquantr255_done, rx249_pos, rx249_rep
    goto rxquantr255_loop
  rxquantr255_done:
    nqp_rxpeek $I19, rx249_bstack, rxcap254_fail
    inc $I19
    set $I11, rx249_bstack[$I19]
    $P11 = rx249_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx249_pos)
    rx249_cstack = rx249_cur."!cursor_capture"($P11, "pos")
    goto rxcap254_done
  rxcap254_fail:
    goto rx249_fail
  rxcap254_done:
  alt251_end:
  # rx rxquantr256 ** 0..1
    nqp_rxmark rx249_bstack, rxquantr256_done, rx249_pos, 0
  rxquantr256_loop:
    repr_bind_attr_int rx249_cur, rx249_curclass, "$!pos", rx249_pos
    $P11 = rx249_cur."ws"()
    repr_get_attr_int $I11, $P11, rx249_curclass, "$!pos"
    lt $I11, 0, rx249_fail
    repr_get_attr_int rx249_pos, $P11, rx249_curclass, "$!pos"
    add $I11, rx249_pos, 1
    gt $I11, rx249_eos, rx249_fail
    substr $S10, rx249_tgt, rx249_pos, 1
    ne $S10, ucs4:"=", rx249_fail
    add rx249_pos, 1
    repr_bind_attr_int rx249_cur, rx249_curclass, "$!pos", rx249_pos
    $P11 = rx249_cur."ws"()
    repr_get_attr_int $I11, $P11, rx249_curclass, "$!pos"
    lt $I11, 0, rx249_fail
    repr_get_attr_int rx249_pos, $P11, rx249_curclass, "$!pos"
    repr_bind_attr_int rx249_cur, rx249_curclass, "$!pos", rx249_pos
    $P11 = rx249_cur."quantified_atom"()
    repr_get_attr_int $I11, $P11, rx249_curclass, "$!pos"
    lt $I11, 0, rx249_fail
    nqp_rxmark rx249_bstack, rxsubrule259_pass, -1, 0
  rxsubrule259_pass:
    rx249_cstack = rx249_cur."!cursor_capture"($P11, "quantified_atom")
    repr_get_attr_int rx249_pos, $P11, rx249_curclass, "$!pos"
    nqp_rxpeek $I19, rx249_bstack, rxquantr256_done
    inc $I19
    inc $I19
    set rx249_rep, rx249_bstack[$I19]
    nqp_rxcommit rx249_bstack, rxquantr256_done
    inc rx249_rep
  rxquantr256_done:
    rx249_cur."!cursor_pass"(rx249_pos, "metachar:sym<var>", 'backtrack'=>1)
    .return (rx249_cur)
  rx249_restart:
    repr_get_attr_obj rx249_cstack, rx249_cur, rx249_curclass, "$!cstack"
  rx249_fail:
    unless rx249_bstack, rx249_done
    pop $I19, rx249_bstack
    if_null rx249_cstack, rx249_cstack_done
    unless rx249_cstack, rx249_cstack_done
    dec $I19
    set $P11, rx249_cstack[$I19]
  rx249_cstack_done:
    pop rx249_rep, rx249_bstack
    pop rx249_pos, rx249_bstack
    pop $I19, rx249_bstack
    lt rx249_pos, -1, rx249_done
    lt rx249_pos, 0, rx249_fail
    eq $I19, 0, rx249_fail
    if_null rx249_cstack, rx249_jump
    elements $I18, rx249_bstack
    le $I18, 0, rx249_cut
    dec $I18
    set $I18, rx249_bstack[$I18]
  rx249_cut:
    assign rx249_cstack, $I18
  rx249_jump:
    jump $I19
  rx249_done:
    rx249_cur."!cursor_fail"()
    .return (rx249_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "62_1338064447.841_caps"  :subid("259_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 149
    new $P103, "Hash"
    set $P103["name"], 0
    set $P103["pos"], 0
    set $P103["quantified_atom"], 2
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "62_1338064447.841_nfa"  :subid("260_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 149
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 2
    push $P104, 36
    push $P104, 2
    push $P104, 2
    push $P104, 36
    push $P104, 8
    new $P105, "ResizablePMCArray"
    push $P105, 2
    push $P105, 60
    push $P105, 3
    new $P106, "ResizablePMCArray"
    push $P106, 1
    push $P106, 0
    push $P106, 4
    new $P107, "ResizablePMCArray"
    push $P107, 7
    push $P107, ">"
    push $P107, 5
    new $P108, "ResizablePMCArray"
    push $P108, 1
    push $P108, 0
    push $P108, 4
    push $P108, 1
    push $P108, 0
    push $P108, 6
    push $P108, 2
    push $P108, 62
    push $P108, 7
    new $P109, "ResizablePMCArray"
    new $P110, "ResizablePMCArray"
    push $P110, 8
    push $P110, "ws"
    push $P110, 11
    push $P110, 1
    push $P110, 0
    push $P110, 0
    new $P111, "ResizablePMCArray"
    push $P111, 1
    push $P111, 0
    push $P111, 9
    new $P112, "ResizablePMCArray"
    push $P112, 4
    push $P112, 8
    push $P112, 10
    new $P113, "ResizablePMCArray"
    push $P113, 1
    push $P113, 0
    push $P113, 9
    push $P113, 1
    push $P113, 0
    push $P113, 7
    new $P114, "ResizablePMCArray"
    push $P114, 2
    push $P114, 61
    push $P114, 12
    new $P115, "ResizablePMCArray"
    push $P115, 8
    push $P115, "ws"
    push $P115, 13
    new $P116, "ResizablePMCArray"
    push $P116, 8
    push $P116, "quantified_atom"
    push $P116, 0
    new $P117, "ResizablePMCArray"
    push $P117, $P103
    push $P117, $P104
    push $P117, $P105
    push $P117, $P106
    push $P117, $P107
    push $P117, $P108
    push $P117, $P109
    push $P117, $P110
    push $P117, $P111
    push $P117, $P112
    push $P117, $P113
    push $P117, $P114
    push $P117, $P115
    push $P117, $P116
    .return ($P117)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "metachar:sym<PIR>"  :subid("63_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1320
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 158
    .lex "self", param_1320
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1321
    .lex "$/", $P1322
    .local string rx260_tgt
    .local int rx260_pos
    .local int rx260_off
    .local int rx260_eos
    .local int rx260_rep
    .local pmc rx260_cur
    .local pmc rx260_curclass
    .local pmc rx260_bstack
    .local pmc rx260_cstack
    (rx260_cur, rx260_tgt, rx260_pos, rx260_curclass, rx260_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx260_cur
    length rx260_eos, rx260_tgt
    eq $I19, 1, rx260_restart
    repr_get_attr_int $I11, self, rx260_curclass, "$!from"
    ne $I11, -1, rxscan261_done
    goto rxscan261_scan
  rxscan261_loop:
    inc rx260_pos
    gt rx260_pos, rx260_eos, rx260_fail
    repr_bind_attr_int rx260_cur, rx260_curclass, "$!from", rx260_pos
  rxscan261_scan:
    nqp_rxmark rx260_bstack, rxscan261_loop, rx260_pos, 0
  rxscan261_done:
    add $I11, rx260_pos, 6
    gt $I11, rx260_eos, rx260_fail
    substr $S10, rx260_tgt, rx260_pos, 6
    ne $S10, ucs4:":PIR{{", rx260_fail
    add rx260_pos, 6
    nqp_rxmark rx260_bstack, rxcap262_fail, rx260_pos, 0
  # rx rxquantf263 ** 0..-1
    set rx260_rep, 0
    nqp_rxmark rx260_bstack, rxquantf263_loop, rx260_pos, rx260_rep
    goto rxquantf263_done
  rxquantf263_loop:
    set $I12, rx260_rep
    ge rx260_pos, rx260_eos, rx260_fail
    add rx260_pos, 1
    set rx260_rep, $I12
    inc rx260_rep
    nqp_rxmark rx260_bstack, rxquantf263_loop, rx260_pos, rx260_rep
  rxquantf263_done:
    nqp_rxpeek $I19, rx260_bstack, rxcap262_fail
    inc $I19
    set $I11, rx260_bstack[$I19]
    $P11 = rx260_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx260_pos)
    rx260_cstack = rx260_cur."!cursor_capture"($P11, "pir")
    goto rxcap262_done
  rxcap262_fail:
    goto rx260_fail
  rxcap262_done:
    add $I11, rx260_pos, 2
    gt $I11, rx260_eos, rx260_fail
    substr $S10, rx260_tgt, rx260_pos, 2
    ne $S10, ucs4:"}}", rx260_fail
    add rx260_pos, 2
    rx260_cur."!cursor_pass"(rx260_pos, "metachar:sym<PIR>", 'backtrack'=>1)
    .return (rx260_cur)
  rx260_restart:
    repr_get_attr_obj rx260_cstack, rx260_cur, rx260_curclass, "$!cstack"
  rx260_fail:
    unless rx260_bstack, rx260_done
    pop $I19, rx260_bstack
    if_null rx260_cstack, rx260_cstack_done
    unless rx260_cstack, rx260_cstack_done
    dec $I19
    set $P11, rx260_cstack[$I19]
  rx260_cstack_done:
    pop rx260_rep, rx260_bstack
    pop rx260_pos, rx260_bstack
    pop $I19, rx260_bstack
    lt rx260_pos, -1, rx260_done
    lt rx260_pos, 0, rx260_fail
    eq $I19, 0, rx260_fail
    if_null rx260_cstack, rx260_jump
    elements $I18, rx260_bstack
    le $I18, 0, rx260_cut
    dec $I18
    set $I18, rx260_bstack[$I18]
  rx260_cut:
    assign rx260_cstack, $I18
  rx260_jump:
    jump $I19
  rx260_done:
    rx260_cur."!cursor_fail"()
    .return (rx260_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "63_1338064447.841_caps"  :subid("261_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 158
    new $P103, "Hash"
    set $P103["pir"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "63_1338064447.841_nfa"  :subid("262_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 158
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 2
    push $P104, 58
    push $P104, 2
    new $P105, "ResizablePMCArray"
    push $P105, 2
    push $P105, 80
    push $P105, 3
    new $P106, "ResizablePMCArray"
    push $P106, 2
    push $P106, 73
    push $P106, 4
    new $P107, "ResizablePMCArray"
    push $P107, 2
    push $P107, 82
    push $P107, 5
    new $P108, "ResizablePMCArray"
    push $P108, 2
    push $P108, 123
    push $P108, 6
    new $P109, "ResizablePMCArray"
    push $P109, 2
    push $P109, 123
    push $P109, 7
    new $P110, "ResizablePMCArray"
    push $P110, 4
    push $P110, 65535
    push $P110, 7
    push $P110, 1
    push $P110, 0
    push $P110, 8
    new $P111, "ResizablePMCArray"
    push $P111, 2
    push $P111, 125
    push $P111, 9
    new $P112, "ResizablePMCArray"
    push $P112, 2
    push $P112, 125
    push $P112, 0
    new $P113, "ResizablePMCArray"
    push $P113, $P103
    push $P113, $P104
    push $P113, $P105
    push $P113, $P106
    push $P113, $P107
    push $P113, $P108
    push $P113, $P109
    push $P113, $P110
    push $P113, $P111
    push $P113, $P112
    .return ($P113)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "backslash"  :subid("64_1338064447.841")
    .param pmc param_1326
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 162
    .lex "self", param_1326
    $P101 = param_1326."!protoregex"("backslash")
    .return ($P101)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "backslash:sym<s>"  :subid("65_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1328
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 163
    .lex "self", param_1328
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1329
    .lex "$/", $P1330
    .local string rx264_tgt
    .local int rx264_pos
    .local int rx264_off
    .local int rx264_eos
    .local int rx264_rep
    .local pmc rx264_cur
    .local pmc rx264_curclass
    .local pmc rx264_bstack
    .local pmc rx264_cstack
    (rx264_cur, rx264_tgt, rx264_pos, rx264_curclass, rx264_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx264_cur
    length rx264_eos, rx264_tgt
    eq $I19, 1, rx264_restart
    repr_get_attr_int $I11, self, rx264_curclass, "$!from"
    ne $I11, -1, rxscan265_done
    goto rxscan265_scan
  rxscan265_loop:
    inc rx264_pos
    gt rx264_pos, rx264_eos, rx264_fail
    repr_bind_attr_int rx264_cur, rx264_curclass, "$!from", rx264_pos
  rxscan265_scan:
    nqp_rxmark rx264_bstack, rxscan265_loop, rx264_pos, 0
  rxscan265_done:
    nqp_rxmark rx264_bstack, rxcap266_fail, rx264_pos, 0
    ge rx264_pos, rx264_eos, rx264_fail
    substr $S11, rx264_tgt, rx264_pos, 1
    index $I11, ucs4:"dDnNsSwW", $S11
    lt $I11, 0, rx264_fail
    inc rx264_pos
    nqp_rxpeek $I19, rx264_bstack, rxcap266_fail
    inc $I19
    set $I11, rx264_bstack[$I19]
    $P11 = rx264_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx264_pos)
    rx264_cstack = rx264_cur."!cursor_capture"($P11, "sym")
    goto rxcap266_done
  rxcap266_fail:
    goto rx264_fail
  rxcap266_done:
    rx264_cur."!cursor_pass"(rx264_pos, "backslash:sym<s>", 'backtrack'=>1)
    .return (rx264_cur)
  rx264_restart:
    repr_get_attr_obj rx264_cstack, rx264_cur, rx264_curclass, "$!cstack"
  rx264_fail:
    unless rx264_bstack, rx264_done
    pop $I19, rx264_bstack
    if_null rx264_cstack, rx264_cstack_done
    unless rx264_cstack, rx264_cstack_done
    dec $I19
    set $P11, rx264_cstack[$I19]
  rx264_cstack_done:
    pop rx264_rep, rx264_bstack
    pop rx264_pos, rx264_bstack
    pop $I19, rx264_bstack
    lt rx264_pos, -1, rx264_done
    lt rx264_pos, 0, rx264_fail
    eq $I19, 0, rx264_fail
    if_null rx264_cstack, rx264_jump
    elements $I18, rx264_bstack
    le $I18, 0, rx264_cut
    dec $I18
    set $I18, rx264_bstack[$I18]
  rx264_cut:
    assign rx264_cstack, $I18
  rx264_jump:
    jump $I19
  rx264_done:
    rx264_cur."!cursor_fail"()
    .return (rx264_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "65_1338064447.841_caps"  :subid("263_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 163
    new $P103, "Hash"
    set $P103["sym"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "65_1338064447.841_nfa"  :subid("264_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 163
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 6
    push $P104, "dDnNsSwW"
    push $P104, 0
    new $P105, "ResizablePMCArray"
    push $P105, $P103
    push $P105, $P104
    .return ($P105)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "backslash:sym<b>"  :subid("66_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1334
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 164
    .lex "self", param_1334
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1335
    .lex "$/", $P1336
    .local string rx267_tgt
    .local int rx267_pos
    .local int rx267_off
    .local int rx267_eos
    .local int rx267_rep
    .local pmc rx267_cur
    .local pmc rx267_curclass
    .local pmc rx267_bstack
    .local pmc rx267_cstack
    (rx267_cur, rx267_tgt, rx267_pos, rx267_curclass, rx267_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx267_cur
    length rx267_eos, rx267_tgt
    eq $I19, 1, rx267_restart
    repr_get_attr_int $I11, self, rx267_curclass, "$!from"
    ne $I11, -1, rxscan268_done
    goto rxscan268_scan
  rxscan268_loop:
    inc rx267_pos
    gt rx267_pos, rx267_eos, rx267_fail
    repr_bind_attr_int rx267_cur, rx267_curclass, "$!from", rx267_pos
  rxscan268_scan:
    nqp_rxmark rx267_bstack, rxscan268_loop, rx267_pos, 0
  rxscan268_done:
    nqp_rxmark rx267_bstack, rxcap269_fail, rx267_pos, 0
    ge rx267_pos, rx267_eos, rx267_fail
    substr $S11, rx267_tgt, rx267_pos, 1
    index $I11, ucs4:"bB", $S11
    lt $I11, 0, rx267_fail
    inc rx267_pos
    nqp_rxpeek $I19, rx267_bstack, rxcap269_fail
    inc $I19
    set $I11, rx267_bstack[$I19]
    $P11 = rx267_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx267_pos)
    rx267_cstack = rx267_cur."!cursor_capture"($P11, "sym")
    goto rxcap269_done
  rxcap269_fail:
    goto rx267_fail
  rxcap269_done:
    rx267_cur."!cursor_pass"(rx267_pos, "backslash:sym<b>", 'backtrack'=>1)
    .return (rx267_cur)
  rx267_restart:
    repr_get_attr_obj rx267_cstack, rx267_cur, rx267_curclass, "$!cstack"
  rx267_fail:
    unless rx267_bstack, rx267_done
    pop $I19, rx267_bstack
    if_null rx267_cstack, rx267_cstack_done
    unless rx267_cstack, rx267_cstack_done
    dec $I19
    set $P11, rx267_cstack[$I19]
  rx267_cstack_done:
    pop rx267_rep, rx267_bstack
    pop rx267_pos, rx267_bstack
    pop $I19, rx267_bstack
    lt rx267_pos, -1, rx267_done
    lt rx267_pos, 0, rx267_fail
    eq $I19, 0, rx267_fail
    if_null rx267_cstack, rx267_jump
    elements $I18, rx267_bstack
    le $I18, 0, rx267_cut
    dec $I18
    set $I18, rx267_bstack[$I18]
  rx267_cut:
    assign rx267_cstack, $I18
  rx267_jump:
    jump $I19
  rx267_done:
    rx267_cur."!cursor_fail"()
    .return (rx267_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "66_1338064447.841_caps"  :subid("265_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 164
    new $P103, "Hash"
    set $P103["sym"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "66_1338064447.841_nfa"  :subid("266_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 164
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 6
    push $P104, "bB"
    push $P104, 0
    new $P105, "ResizablePMCArray"
    push $P105, $P103
    push $P105, $P104
    .return ($P105)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "backslash:sym<e>"  :subid("67_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1340
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 165
    .lex "self", param_1340
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1341
    .lex "$/", $P1342
    .local string rx270_tgt
    .local int rx270_pos
    .local int rx270_off
    .local int rx270_eos
    .local int rx270_rep
    .local pmc rx270_cur
    .local pmc rx270_curclass
    .local pmc rx270_bstack
    .local pmc rx270_cstack
    (rx270_cur, rx270_tgt, rx270_pos, rx270_curclass, rx270_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx270_cur
    length rx270_eos, rx270_tgt
    eq $I19, 1, rx270_restart
    repr_get_attr_int $I11, self, rx270_curclass, "$!from"
    ne $I11, -1, rxscan271_done
    goto rxscan271_scan
  rxscan271_loop:
    inc rx270_pos
    gt rx270_pos, rx270_eos, rx270_fail
    repr_bind_attr_int rx270_cur, rx270_curclass, "$!from", rx270_pos
  rxscan271_scan:
    nqp_rxmark rx270_bstack, rxscan271_loop, rx270_pos, 0
  rxscan271_done:
    nqp_rxmark rx270_bstack, rxcap272_fail, rx270_pos, 0
    ge rx270_pos, rx270_eos, rx270_fail
    substr $S11, rx270_tgt, rx270_pos, 1
    index $I11, ucs4:"eE", $S11
    lt $I11, 0, rx270_fail
    inc rx270_pos
    nqp_rxpeek $I19, rx270_bstack, rxcap272_fail
    inc $I19
    set $I11, rx270_bstack[$I19]
    $P11 = rx270_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx270_pos)
    rx270_cstack = rx270_cur."!cursor_capture"($P11, "sym")
    goto rxcap272_done
  rxcap272_fail:
    goto rx270_fail
  rxcap272_done:
    rx270_cur."!cursor_pass"(rx270_pos, "backslash:sym<e>", 'backtrack'=>1)
    .return (rx270_cur)
  rx270_restart:
    repr_get_attr_obj rx270_cstack, rx270_cur, rx270_curclass, "$!cstack"
  rx270_fail:
    unless rx270_bstack, rx270_done
    pop $I19, rx270_bstack
    if_null rx270_cstack, rx270_cstack_done
    unless rx270_cstack, rx270_cstack_done
    dec $I19
    set $P11, rx270_cstack[$I19]
  rx270_cstack_done:
    pop rx270_rep, rx270_bstack
    pop rx270_pos, rx270_bstack
    pop $I19, rx270_bstack
    lt rx270_pos, -1, rx270_done
    lt rx270_pos, 0, rx270_fail
    eq $I19, 0, rx270_fail
    if_null rx270_cstack, rx270_jump
    elements $I18, rx270_bstack
    le $I18, 0, rx270_cut
    dec $I18
    set $I18, rx270_bstack[$I18]
  rx270_cut:
    assign rx270_cstack, $I18
  rx270_jump:
    jump $I19
  rx270_done:
    rx270_cur."!cursor_fail"()
    .return (rx270_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "67_1338064447.841_caps"  :subid("267_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 165
    new $P103, "Hash"
    set $P103["sym"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "67_1338064447.841_nfa"  :subid("268_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 165
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 6
    push $P104, "eE"
    push $P104, 0
    new $P105, "ResizablePMCArray"
    push $P105, $P103
    push $P105, $P104
    .return ($P105)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "backslash:sym<f>"  :subid("68_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1346
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 166
    .lex "self", param_1346
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1347
    .lex "$/", $P1348
    .local string rx273_tgt
    .local int rx273_pos
    .local int rx273_off
    .local int rx273_eos
    .local int rx273_rep
    .local pmc rx273_cur
    .local pmc rx273_curclass
    .local pmc rx273_bstack
    .local pmc rx273_cstack
    (rx273_cur, rx273_tgt, rx273_pos, rx273_curclass, rx273_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx273_cur
    length rx273_eos, rx273_tgt
    eq $I19, 1, rx273_restart
    repr_get_attr_int $I11, self, rx273_curclass, "$!from"
    ne $I11, -1, rxscan274_done
    goto rxscan274_scan
  rxscan274_loop:
    inc rx273_pos
    gt rx273_pos, rx273_eos, rx273_fail
    repr_bind_attr_int rx273_cur, rx273_curclass, "$!from", rx273_pos
  rxscan274_scan:
    nqp_rxmark rx273_bstack, rxscan274_loop, rx273_pos, 0
  rxscan274_done:
    nqp_rxmark rx273_bstack, rxcap275_fail, rx273_pos, 0
    ge rx273_pos, rx273_eos, rx273_fail
    substr $S11, rx273_tgt, rx273_pos, 1
    index $I11, ucs4:"fF", $S11
    lt $I11, 0, rx273_fail
    inc rx273_pos
    nqp_rxpeek $I19, rx273_bstack, rxcap275_fail
    inc $I19
    set $I11, rx273_bstack[$I19]
    $P11 = rx273_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx273_pos)
    rx273_cstack = rx273_cur."!cursor_capture"($P11, "sym")
    goto rxcap275_done
  rxcap275_fail:
    goto rx273_fail
  rxcap275_done:
    rx273_cur."!cursor_pass"(rx273_pos, "backslash:sym<f>", 'backtrack'=>1)
    .return (rx273_cur)
  rx273_restart:
    repr_get_attr_obj rx273_cstack, rx273_cur, rx273_curclass, "$!cstack"
  rx273_fail:
    unless rx273_bstack, rx273_done
    pop $I19, rx273_bstack
    if_null rx273_cstack, rx273_cstack_done
    unless rx273_cstack, rx273_cstack_done
    dec $I19
    set $P11, rx273_cstack[$I19]
  rx273_cstack_done:
    pop rx273_rep, rx273_bstack
    pop rx273_pos, rx273_bstack
    pop $I19, rx273_bstack
    lt rx273_pos, -1, rx273_done
    lt rx273_pos, 0, rx273_fail
    eq $I19, 0, rx273_fail
    if_null rx273_cstack, rx273_jump
    elements $I18, rx273_bstack
    le $I18, 0, rx273_cut
    dec $I18
    set $I18, rx273_bstack[$I18]
  rx273_cut:
    assign rx273_cstack, $I18
  rx273_jump:
    jump $I19
  rx273_done:
    rx273_cur."!cursor_fail"()
    .return (rx273_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "68_1338064447.841_caps"  :subid("269_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 166
    new $P103, "Hash"
    set $P103["sym"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "68_1338064447.841_nfa"  :subid("270_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 166
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 6
    push $P104, "fF"
    push $P104, 0
    new $P105, "ResizablePMCArray"
    push $P105, $P103
    push $P105, $P104
    .return ($P105)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "backslash:sym<h>"  :subid("69_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1352
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 167
    .lex "self", param_1352
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1353
    .lex "$/", $P1354
    .local string rx276_tgt
    .local int rx276_pos
    .local int rx276_off
    .local int rx276_eos
    .local int rx276_rep
    .local pmc rx276_cur
    .local pmc rx276_curclass
    .local pmc rx276_bstack
    .local pmc rx276_cstack
    (rx276_cur, rx276_tgt, rx276_pos, rx276_curclass, rx276_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx276_cur
    length rx276_eos, rx276_tgt
    eq $I19, 1, rx276_restart
    repr_get_attr_int $I11, self, rx276_curclass, "$!from"
    ne $I11, -1, rxscan277_done
    goto rxscan277_scan
  rxscan277_loop:
    inc rx276_pos
    gt rx276_pos, rx276_eos, rx276_fail
    repr_bind_attr_int rx276_cur, rx276_curclass, "$!from", rx276_pos
  rxscan277_scan:
    nqp_rxmark rx276_bstack, rxscan277_loop, rx276_pos, 0
  rxscan277_done:
    nqp_rxmark rx276_bstack, rxcap278_fail, rx276_pos, 0
    ge rx276_pos, rx276_eos, rx276_fail
    substr $S11, rx276_tgt, rx276_pos, 1
    index $I11, ucs4:"hH", $S11
    lt $I11, 0, rx276_fail
    inc rx276_pos
    nqp_rxpeek $I19, rx276_bstack, rxcap278_fail
    inc $I19
    set $I11, rx276_bstack[$I19]
    $P11 = rx276_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx276_pos)
    rx276_cstack = rx276_cur."!cursor_capture"($P11, "sym")
    goto rxcap278_done
  rxcap278_fail:
    goto rx276_fail
  rxcap278_done:
    rx276_cur."!cursor_pass"(rx276_pos, "backslash:sym<h>", 'backtrack'=>1)
    .return (rx276_cur)
  rx276_restart:
    repr_get_attr_obj rx276_cstack, rx276_cur, rx276_curclass, "$!cstack"
  rx276_fail:
    unless rx276_bstack, rx276_done
    pop $I19, rx276_bstack
    if_null rx276_cstack, rx276_cstack_done
    unless rx276_cstack, rx276_cstack_done
    dec $I19
    set $P11, rx276_cstack[$I19]
  rx276_cstack_done:
    pop rx276_rep, rx276_bstack
    pop rx276_pos, rx276_bstack
    pop $I19, rx276_bstack
    lt rx276_pos, -1, rx276_done
    lt rx276_pos, 0, rx276_fail
    eq $I19, 0, rx276_fail
    if_null rx276_cstack, rx276_jump
    elements $I18, rx276_bstack
    le $I18, 0, rx276_cut
    dec $I18
    set $I18, rx276_bstack[$I18]
  rx276_cut:
    assign rx276_cstack, $I18
  rx276_jump:
    jump $I19
  rx276_done:
    rx276_cur."!cursor_fail"()
    .return (rx276_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "69_1338064447.841_caps"  :subid("271_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 167
    new $P103, "Hash"
    set $P103["sym"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "69_1338064447.841_nfa"  :subid("272_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 167
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 6
    push $P104, "hH"
    push $P104, 0
    new $P105, "ResizablePMCArray"
    push $P105, $P103
    push $P105, $P104
    .return ($P105)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "backslash:sym<r>"  :subid("70_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1358
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 168
    .lex "self", param_1358
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1359
    .lex "$/", $P1360
    .local string rx279_tgt
    .local int rx279_pos
    .local int rx279_off
    .local int rx279_eos
    .local int rx279_rep
    .local pmc rx279_cur
    .local pmc rx279_curclass
    .local pmc rx279_bstack
    .local pmc rx279_cstack
    (rx279_cur, rx279_tgt, rx279_pos, rx279_curclass, rx279_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx279_cur
    length rx279_eos, rx279_tgt
    eq $I19, 1, rx279_restart
    repr_get_attr_int $I11, self, rx279_curclass, "$!from"
    ne $I11, -1, rxscan280_done
    goto rxscan280_scan
  rxscan280_loop:
    inc rx279_pos
    gt rx279_pos, rx279_eos, rx279_fail
    repr_bind_attr_int rx279_cur, rx279_curclass, "$!from", rx279_pos
  rxscan280_scan:
    nqp_rxmark rx279_bstack, rxscan280_loop, rx279_pos, 0
  rxscan280_done:
    nqp_rxmark rx279_bstack, rxcap281_fail, rx279_pos, 0
    ge rx279_pos, rx279_eos, rx279_fail
    substr $S11, rx279_tgt, rx279_pos, 1
    index $I11, ucs4:"rR", $S11
    lt $I11, 0, rx279_fail
    inc rx279_pos
    nqp_rxpeek $I19, rx279_bstack, rxcap281_fail
    inc $I19
    set $I11, rx279_bstack[$I19]
    $P11 = rx279_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx279_pos)
    rx279_cstack = rx279_cur."!cursor_capture"($P11, "sym")
    goto rxcap281_done
  rxcap281_fail:
    goto rx279_fail
  rxcap281_done:
    rx279_cur."!cursor_pass"(rx279_pos, "backslash:sym<r>", 'backtrack'=>1)
    .return (rx279_cur)
  rx279_restart:
    repr_get_attr_obj rx279_cstack, rx279_cur, rx279_curclass, "$!cstack"
  rx279_fail:
    unless rx279_bstack, rx279_done
    pop $I19, rx279_bstack
    if_null rx279_cstack, rx279_cstack_done
    unless rx279_cstack, rx279_cstack_done
    dec $I19
    set $P11, rx279_cstack[$I19]
  rx279_cstack_done:
    pop rx279_rep, rx279_bstack
    pop rx279_pos, rx279_bstack
    pop $I19, rx279_bstack
    lt rx279_pos, -1, rx279_done
    lt rx279_pos, 0, rx279_fail
    eq $I19, 0, rx279_fail
    if_null rx279_cstack, rx279_jump
    elements $I18, rx279_bstack
    le $I18, 0, rx279_cut
    dec $I18
    set $I18, rx279_bstack[$I18]
  rx279_cut:
    assign rx279_cstack, $I18
  rx279_jump:
    jump $I19
  rx279_done:
    rx279_cur."!cursor_fail"()
    .return (rx279_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "70_1338064447.841_caps"  :subid("273_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 168
    new $P103, "Hash"
    set $P103["sym"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "70_1338064447.841_nfa"  :subid("274_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 168
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 6
    push $P104, "rR"
    push $P104, 0
    new $P105, "ResizablePMCArray"
    push $P105, $P103
    push $P105, $P104
    .return ($P105)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "backslash:sym<t>"  :subid("71_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1364
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 169
    .lex "self", param_1364
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1365
    .lex "$/", $P1366
    .local string rx282_tgt
    .local int rx282_pos
    .local int rx282_off
    .local int rx282_eos
    .local int rx282_rep
    .local pmc rx282_cur
    .local pmc rx282_curclass
    .local pmc rx282_bstack
    .local pmc rx282_cstack
    (rx282_cur, rx282_tgt, rx282_pos, rx282_curclass, rx282_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx282_cur
    length rx282_eos, rx282_tgt
    eq $I19, 1, rx282_restart
    repr_get_attr_int $I11, self, rx282_curclass, "$!from"
    ne $I11, -1, rxscan283_done
    goto rxscan283_scan
  rxscan283_loop:
    inc rx282_pos
    gt rx282_pos, rx282_eos, rx282_fail
    repr_bind_attr_int rx282_cur, rx282_curclass, "$!from", rx282_pos
  rxscan283_scan:
    nqp_rxmark rx282_bstack, rxscan283_loop, rx282_pos, 0
  rxscan283_done:
    nqp_rxmark rx282_bstack, rxcap284_fail, rx282_pos, 0
    ge rx282_pos, rx282_eos, rx282_fail
    substr $S11, rx282_tgt, rx282_pos, 1
    index $I11, ucs4:"tT", $S11
    lt $I11, 0, rx282_fail
    inc rx282_pos
    nqp_rxpeek $I19, rx282_bstack, rxcap284_fail
    inc $I19
    set $I11, rx282_bstack[$I19]
    $P11 = rx282_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx282_pos)
    rx282_cstack = rx282_cur."!cursor_capture"($P11, "sym")
    goto rxcap284_done
  rxcap284_fail:
    goto rx282_fail
  rxcap284_done:
    rx282_cur."!cursor_pass"(rx282_pos, "backslash:sym<t>", 'backtrack'=>1)
    .return (rx282_cur)
  rx282_restart:
    repr_get_attr_obj rx282_cstack, rx282_cur, rx282_curclass, "$!cstack"
  rx282_fail:
    unless rx282_bstack, rx282_done
    pop $I19, rx282_bstack
    if_null rx282_cstack, rx282_cstack_done
    unless rx282_cstack, rx282_cstack_done
    dec $I19
    set $P11, rx282_cstack[$I19]
  rx282_cstack_done:
    pop rx282_rep, rx282_bstack
    pop rx282_pos, rx282_bstack
    pop $I19, rx282_bstack
    lt rx282_pos, -1, rx282_done
    lt rx282_pos, 0, rx282_fail
    eq $I19, 0, rx282_fail
    if_null rx282_cstack, rx282_jump
    elements $I18, rx282_bstack
    le $I18, 0, rx282_cut
    dec $I18
    set $I18, rx282_bstack[$I18]
  rx282_cut:
    assign rx282_cstack, $I18
  rx282_jump:
    jump $I19
  rx282_done:
    rx282_cur."!cursor_fail"()
    .return (rx282_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "71_1338064447.841_caps"  :subid("275_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 169
    new $P103, "Hash"
    set $P103["sym"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "71_1338064447.841_nfa"  :subid("276_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 169
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 6
    push $P104, "tT"
    push $P104, 0
    new $P105, "ResizablePMCArray"
    push $P105, $P103
    push $P105, $P104
    .return ($P105)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "backslash:sym<v>"  :subid("72_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1370
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 170
    .lex "self", param_1370
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1371
    .lex "$/", $P1372
    .local string rx285_tgt
    .local int rx285_pos
    .local int rx285_off
    .local int rx285_eos
    .local int rx285_rep
    .local pmc rx285_cur
    .local pmc rx285_curclass
    .local pmc rx285_bstack
    .local pmc rx285_cstack
    (rx285_cur, rx285_tgt, rx285_pos, rx285_curclass, rx285_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx285_cur
    length rx285_eos, rx285_tgt
    eq $I19, 1, rx285_restart
    repr_get_attr_int $I11, self, rx285_curclass, "$!from"
    ne $I11, -1, rxscan286_done
    goto rxscan286_scan
  rxscan286_loop:
    inc rx285_pos
    gt rx285_pos, rx285_eos, rx285_fail
    repr_bind_attr_int rx285_cur, rx285_curclass, "$!from", rx285_pos
  rxscan286_scan:
    nqp_rxmark rx285_bstack, rxscan286_loop, rx285_pos, 0
  rxscan286_done:
    nqp_rxmark rx285_bstack, rxcap287_fail, rx285_pos, 0
    ge rx285_pos, rx285_eos, rx285_fail
    substr $S11, rx285_tgt, rx285_pos, 1
    index $I11, ucs4:"vV", $S11
    lt $I11, 0, rx285_fail
    inc rx285_pos
    nqp_rxpeek $I19, rx285_bstack, rxcap287_fail
    inc $I19
    set $I11, rx285_bstack[$I19]
    $P11 = rx285_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx285_pos)
    rx285_cstack = rx285_cur."!cursor_capture"($P11, "sym")
    goto rxcap287_done
  rxcap287_fail:
    goto rx285_fail
  rxcap287_done:
    rx285_cur."!cursor_pass"(rx285_pos, "backslash:sym<v>", 'backtrack'=>1)
    .return (rx285_cur)
  rx285_restart:
    repr_get_attr_obj rx285_cstack, rx285_cur, rx285_curclass, "$!cstack"
  rx285_fail:
    unless rx285_bstack, rx285_done
    pop $I19, rx285_bstack
    if_null rx285_cstack, rx285_cstack_done
    unless rx285_cstack, rx285_cstack_done
    dec $I19
    set $P11, rx285_cstack[$I19]
  rx285_cstack_done:
    pop rx285_rep, rx285_bstack
    pop rx285_pos, rx285_bstack
    pop $I19, rx285_bstack
    lt rx285_pos, -1, rx285_done
    lt rx285_pos, 0, rx285_fail
    eq $I19, 0, rx285_fail
    if_null rx285_cstack, rx285_jump
    elements $I18, rx285_bstack
    le $I18, 0, rx285_cut
    dec $I18
    set $I18, rx285_bstack[$I18]
  rx285_cut:
    assign rx285_cstack, $I18
  rx285_jump:
    jump $I19
  rx285_done:
    rx285_cur."!cursor_fail"()
    .return (rx285_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "72_1338064447.841_caps"  :subid("277_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 170
    new $P103, "Hash"
    set $P103["sym"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "72_1338064447.841_nfa"  :subid("278_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 170
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 6
    push $P104, "vV"
    push $P104, 0
    new $P105, "ResizablePMCArray"
    push $P105, $P103
    push $P105, $P104
    .return ($P105)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "backslash:sym<o>"  :subid("73_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1376
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 171
    .lex "self", param_1376
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1377
    .lex "$/", $P1378
    .local string rx288_tgt
    .local int rx288_pos
    .local int rx288_off
    .local int rx288_eos
    .local int rx288_rep
    .local pmc rx288_cur
    .local pmc rx288_curclass
    .local pmc rx288_bstack
    .local pmc rx288_cstack
    (rx288_cur, rx288_tgt, rx288_pos, rx288_curclass, rx288_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx288_cur
    length rx288_eos, rx288_tgt
    eq $I19, 1, rx288_restart
    repr_get_attr_int $I11, self, rx288_curclass, "$!from"
    ne $I11, -1, rxscan289_done
    goto rxscan289_scan
  rxscan289_loop:
    inc rx288_pos
    gt rx288_pos, rx288_eos, rx288_fail
    repr_bind_attr_int rx288_cur, rx288_curclass, "$!from", rx288_pos
  rxscan289_scan:
    nqp_rxmark rx288_bstack, rxscan289_loop, rx288_pos, 0
  rxscan289_done:
    nqp_rxmark rx288_bstack, rxcap290_fail, rx288_pos, 0
    ge rx288_pos, rx288_eos, rx288_fail
    substr $S11, rx288_tgt, rx288_pos, 1
    index $I11, ucs4:"oO", $S11
    lt $I11, 0, rx288_fail
    inc rx288_pos
    nqp_rxpeek $I19, rx288_bstack, rxcap290_fail
    inc $I19
    set $I11, rx288_bstack[$I19]
    $P11 = rx288_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx288_pos)
    rx288_cstack = rx288_cur."!cursor_capture"($P11, "sym")
    goto rxcap290_done
  rxcap290_fail:
    goto rx288_fail
  rxcap290_done:
  alt291_0:
    nqp_rxmark rx288_bstack, alt291_1, rx288_pos, 0
    repr_bind_attr_int rx288_cur, rx288_curclass, "$!pos", rx288_pos
    $P11 = rx288_cur."octint"()
    repr_get_attr_int $I11, $P11, rx288_curclass, "$!pos"
    lt $I11, 0, rx288_fail
    nqp_rxmark rx288_bstack, rxsubrule292_pass, -1, 0
  rxsubrule292_pass:
    rx288_cstack = rx288_cur."!cursor_capture"($P11, "octint")
    repr_get_attr_int rx288_pos, $P11, rx288_curclass, "$!pos"
    goto alt291_end
  alt291_1:
    add $I11, rx288_pos, 1
    gt $I11, rx288_eos, rx288_fail
    substr $S10, rx288_tgt, rx288_pos, 1
    ne $S10, ucs4:"[", rx288_fail
    add rx288_pos, 1
    repr_bind_attr_int rx288_cur, rx288_curclass, "$!pos", rx288_pos
    $P11 = rx288_cur."octints"()
    repr_get_attr_int $I11, $P11, rx288_curclass, "$!pos"
    lt $I11, 0, rx288_fail
    nqp_rxmark rx288_bstack, rxsubrule293_pass, -1, 0
  rxsubrule293_pass:
    rx288_cstack = rx288_cur."!cursor_capture"($P11, "octints")
    repr_get_attr_int rx288_pos, $P11, rx288_curclass, "$!pos"
    add $I11, rx288_pos, 1
    gt $I11, rx288_eos, rx288_fail
    substr $S10, rx288_tgt, rx288_pos, 1
    ne $S10, ucs4:"]", rx288_fail
    add rx288_pos, 1
  alt291_end:
    rx288_cur."!cursor_pass"(rx288_pos, "backslash:sym<o>", 'backtrack'=>1)
    .return (rx288_cur)
  rx288_restart:
    repr_get_attr_obj rx288_cstack, rx288_cur, rx288_curclass, "$!cstack"
  rx288_fail:
    unless rx288_bstack, rx288_done
    pop $I19, rx288_bstack
    if_null rx288_cstack, rx288_cstack_done
    unless rx288_cstack, rx288_cstack_done
    dec $I19
    set $P11, rx288_cstack[$I19]
  rx288_cstack_done:
    pop rx288_rep, rx288_bstack
    pop rx288_pos, rx288_bstack
    pop $I19, rx288_bstack
    lt rx288_pos, -1, rx288_done
    lt rx288_pos, 0, rx288_fail
    eq $I19, 0, rx288_fail
    if_null rx288_cstack, rx288_jump
    elements $I18, rx288_bstack
    le $I18, 0, rx288_cut
    dec $I18
    set $I18, rx288_bstack[$I18]
  rx288_cut:
    assign rx288_cstack, $I18
  rx288_jump:
    jump $I19
  rx288_done:
    rx288_cur."!cursor_fail"()
    .return (rx288_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "73_1338064447.841_caps"  :subid("279_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 171
    new $P103, "Hash"
    set $P103["sym"], 0
    set $P103["octint"], 0
    set $P103["octints"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "73_1338064447.841_nfa"  :subid("280_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 171
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 6
    push $P104, "oO"
    push $P104, 2
    new $P105, "ResizablePMCArray"
    push $P105, 8
    push $P105, "octint"
    push $P105, 0
    push $P105, 2
    push $P105, 91
    push $P105, 3
    new $P106, "ResizablePMCArray"
    push $P106, 8
    push $P106, "octints"
    push $P106, 4
    new $P107, "ResizablePMCArray"
    push $P107, 2
    push $P107, 93
    push $P107, 0
    new $P108, "ResizablePMCArray"
    push $P108, $P103
    push $P108, $P104
    push $P108, $P105
    push $P108, $P106
    push $P108, $P107
    .return ($P108)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "backslash:sym<x>"  :subid("74_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1382
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 172
    .lex "self", param_1382
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1383
    .lex "$/", $P1384
    .local string rx294_tgt
    .local int rx294_pos
    .local int rx294_off
    .local int rx294_eos
    .local int rx294_rep
    .local pmc rx294_cur
    .local pmc rx294_curclass
    .local pmc rx294_bstack
    .local pmc rx294_cstack
    (rx294_cur, rx294_tgt, rx294_pos, rx294_curclass, rx294_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx294_cur
    length rx294_eos, rx294_tgt
    eq $I19, 1, rx294_restart
    repr_get_attr_int $I11, self, rx294_curclass, "$!from"
    ne $I11, -1, rxscan295_done
    goto rxscan295_scan
  rxscan295_loop:
    inc rx294_pos
    gt rx294_pos, rx294_eos, rx294_fail
    repr_bind_attr_int rx294_cur, rx294_curclass, "$!from", rx294_pos
  rxscan295_scan:
    nqp_rxmark rx294_bstack, rxscan295_loop, rx294_pos, 0
  rxscan295_done:
    nqp_rxmark rx294_bstack, rxcap296_fail, rx294_pos, 0
    ge rx294_pos, rx294_eos, rx294_fail
    substr $S11, rx294_tgt, rx294_pos, 1
    index $I11, ucs4:"xX", $S11
    lt $I11, 0, rx294_fail
    inc rx294_pos
    nqp_rxpeek $I19, rx294_bstack, rxcap296_fail
    inc $I19
    set $I11, rx294_bstack[$I19]
    $P11 = rx294_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx294_pos)
    rx294_cstack = rx294_cur."!cursor_capture"($P11, "sym")
    goto rxcap296_done
  rxcap296_fail:
    goto rx294_fail
  rxcap296_done:
  alt297_0:
    nqp_rxmark rx294_bstack, alt297_1, rx294_pos, 0
    repr_bind_attr_int rx294_cur, rx294_curclass, "$!pos", rx294_pos
    $P11 = rx294_cur."hexint"()
    repr_get_attr_int $I11, $P11, rx294_curclass, "$!pos"
    lt $I11, 0, rx294_fail
    nqp_rxmark rx294_bstack, rxsubrule298_pass, -1, 0
  rxsubrule298_pass:
    rx294_cstack = rx294_cur."!cursor_capture"($P11, "hexint")
    repr_get_attr_int rx294_pos, $P11, rx294_curclass, "$!pos"
    goto alt297_end
  alt297_1:
    add $I11, rx294_pos, 1
    gt $I11, rx294_eos, rx294_fail
    substr $S10, rx294_tgt, rx294_pos, 1
    ne $S10, ucs4:"[", rx294_fail
    add rx294_pos, 1
    repr_bind_attr_int rx294_cur, rx294_curclass, "$!pos", rx294_pos
    $P11 = rx294_cur."hexints"()
    repr_get_attr_int $I11, $P11, rx294_curclass, "$!pos"
    lt $I11, 0, rx294_fail
    nqp_rxmark rx294_bstack, rxsubrule299_pass, -1, 0
  rxsubrule299_pass:
    rx294_cstack = rx294_cur."!cursor_capture"($P11, "hexints")
    repr_get_attr_int rx294_pos, $P11, rx294_curclass, "$!pos"
    add $I11, rx294_pos, 1
    gt $I11, rx294_eos, rx294_fail
    substr $S10, rx294_tgt, rx294_pos, 1
    ne $S10, ucs4:"]", rx294_fail
    add rx294_pos, 1
  alt297_end:
    rx294_cur."!cursor_pass"(rx294_pos, "backslash:sym<x>", 'backtrack'=>1)
    .return (rx294_cur)
  rx294_restart:
    repr_get_attr_obj rx294_cstack, rx294_cur, rx294_curclass, "$!cstack"
  rx294_fail:
    unless rx294_bstack, rx294_done
    pop $I19, rx294_bstack
    if_null rx294_cstack, rx294_cstack_done
    unless rx294_cstack, rx294_cstack_done
    dec $I19
    set $P11, rx294_cstack[$I19]
  rx294_cstack_done:
    pop rx294_rep, rx294_bstack
    pop rx294_pos, rx294_bstack
    pop $I19, rx294_bstack
    lt rx294_pos, -1, rx294_done
    lt rx294_pos, 0, rx294_fail
    eq $I19, 0, rx294_fail
    if_null rx294_cstack, rx294_jump
    elements $I18, rx294_bstack
    le $I18, 0, rx294_cut
    dec $I18
    set $I18, rx294_bstack[$I18]
  rx294_cut:
    assign rx294_cstack, $I18
  rx294_jump:
    jump $I19
  rx294_done:
    rx294_cur."!cursor_fail"()
    .return (rx294_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "74_1338064447.841_caps"  :subid("281_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 172
    new $P103, "Hash"
    set $P103["sym"], 0
    set $P103["hexint"], 0
    set $P103["hexints"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "74_1338064447.841_nfa"  :subid("282_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 172
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 6
    push $P104, "xX"
    push $P104, 2
    new $P105, "ResizablePMCArray"
    push $P105, 8
    push $P105, "hexint"
    push $P105, 0
    push $P105, 2
    push $P105, 91
    push $P105, 3
    new $P106, "ResizablePMCArray"
    push $P106, 8
    push $P106, "hexints"
    push $P106, 4
    new $P107, "ResizablePMCArray"
    push $P107, 2
    push $P107, 93
    push $P107, 0
    new $P108, "ResizablePMCArray"
    push $P108, $P103
    push $P108, $P104
    push $P108, $P105
    push $P108, $P106
    push $P108, $P107
    .return ($P108)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "backslash:sym<c>"  :subid("75_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1388
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 173
    .lex "self", param_1388
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1389
    .lex "$/", $P1390
    .local string rx300_tgt
    .local int rx300_pos
    .local int rx300_off
    .local int rx300_eos
    .local int rx300_rep
    .local pmc rx300_cur
    .local pmc rx300_curclass
    .local pmc rx300_bstack
    .local pmc rx300_cstack
    (rx300_cur, rx300_tgt, rx300_pos, rx300_curclass, rx300_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx300_cur
    length rx300_eos, rx300_tgt
    eq $I19, 1, rx300_restart
    repr_get_attr_int $I11, self, rx300_curclass, "$!from"
    ne $I11, -1, rxscan301_done
    goto rxscan301_scan
  rxscan301_loop:
    inc rx300_pos
    gt rx300_pos, rx300_eos, rx300_fail
    repr_bind_attr_int rx300_cur, rx300_curclass, "$!from", rx300_pos
  rxscan301_scan:
    nqp_rxmark rx300_bstack, rxscan301_loop, rx300_pos, 0
  rxscan301_done:
    nqp_rxmark rx300_bstack, rxcap302_fail, rx300_pos, 0
    ge rx300_pos, rx300_eos, rx300_fail
    substr $S11, rx300_tgt, rx300_pos, 1
    index $I11, ucs4:"cC", $S11
    lt $I11, 0, rx300_fail
    inc rx300_pos
    nqp_rxpeek $I19, rx300_bstack, rxcap302_fail
    inc $I19
    set $I11, rx300_bstack[$I19]
    $P11 = rx300_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx300_pos)
    rx300_cstack = rx300_cur."!cursor_capture"($P11, "sym")
    goto rxcap302_done
  rxcap302_fail:
    goto rx300_fail
  rxcap302_done:
    repr_bind_attr_int rx300_cur, rx300_curclass, "$!pos", rx300_pos
    $P11 = rx300_cur."charspec"()
    repr_get_attr_int $I11, $P11, rx300_curclass, "$!pos"
    lt $I11, 0, rx300_fail
    nqp_rxmark rx300_bstack, rxsubrule303_pass, -1, 0
  rxsubrule303_pass:
    rx300_cstack = rx300_cur."!cursor_capture"($P11, "charspec")
    repr_get_attr_int rx300_pos, $P11, rx300_curclass, "$!pos"
    rx300_cur."!cursor_pass"(rx300_pos, "backslash:sym<c>", 'backtrack'=>1)
    .return (rx300_cur)
  rx300_restart:
    repr_get_attr_obj rx300_cstack, rx300_cur, rx300_curclass, "$!cstack"
  rx300_fail:
    unless rx300_bstack, rx300_done
    pop $I19, rx300_bstack
    if_null rx300_cstack, rx300_cstack_done
    unless rx300_cstack, rx300_cstack_done
    dec $I19
    set $P11, rx300_cstack[$I19]
  rx300_cstack_done:
    pop rx300_rep, rx300_bstack
    pop rx300_pos, rx300_bstack
    pop $I19, rx300_bstack
    lt rx300_pos, -1, rx300_done
    lt rx300_pos, 0, rx300_fail
    eq $I19, 0, rx300_fail
    if_null rx300_cstack, rx300_jump
    elements $I18, rx300_bstack
    le $I18, 0, rx300_cut
    dec $I18
    set $I18, rx300_bstack[$I18]
  rx300_cut:
    assign rx300_cstack, $I18
  rx300_jump:
    jump $I19
  rx300_done:
    rx300_cur."!cursor_fail"()
    .return (rx300_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "75_1338064447.841_caps"  :subid("283_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 173
    new $P103, "Hash"
    set $P103["sym"], 0
    set $P103["charspec"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "75_1338064447.841_nfa"  :subid("284_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 173
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 6
    push $P104, "cC"
    push $P104, 2
    new $P105, "ResizablePMCArray"
    push $P105, 8
    push $P105, "charspec"
    push $P105, 0
    new $P106, "ResizablePMCArray"
    push $P106, $P103
    push $P106, $P104
    push $P106, $P105
    .return ($P106)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "backslash:sym<A>"  :subid("76_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1394
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 174
    .lex "self", param_1394
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1395
    .lex "$/", $P1396
    .local string rx304_tgt
    .local int rx304_pos
    .local int rx304_off
    .local int rx304_eos
    .local int rx304_rep
    .local pmc rx304_cur
    .local pmc rx304_curclass
    .local pmc rx304_bstack
    .local pmc rx304_cstack
    (rx304_cur, rx304_tgt, rx304_pos, rx304_curclass, rx304_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx304_cur
    length rx304_eos, rx304_tgt
    eq $I19, 1, rx304_restart
    repr_get_attr_int $I11, self, rx304_curclass, "$!from"
    ne $I11, -1, rxscan305_done
    goto rxscan305_scan
  rxscan305_loop:
    inc rx304_pos
    gt rx304_pos, rx304_eos, rx304_fail
    repr_bind_attr_int rx304_cur, rx304_curclass, "$!from", rx304_pos
  rxscan305_scan:
    nqp_rxmark rx304_bstack, rxscan305_loop, rx304_pos, 0
  rxscan305_done:
    add $I11, rx304_pos, 1
    gt $I11, rx304_eos, rx304_fail
    substr $S10, rx304_tgt, rx304_pos, 1
    ne $S10, ucs4:"A", rx304_fail
    add rx304_pos, 1
    repr_bind_attr_int rx304_cur, rx304_curclass, "$!pos", rx304_pos
    $P11 = rx304_cur."obs"("\\A as beginning-of-string matcher", "^")
    repr_get_attr_int $I11, $P11, rx304_curclass, "$!pos"
    lt $I11, 0, rx304_fail
    repr_get_attr_int rx304_pos, $P11, rx304_curclass, "$!pos"
    rx304_cur."!cursor_pass"(rx304_pos, "backslash:sym<A>", 'backtrack'=>1)
    .return (rx304_cur)
  rx304_restart:
    repr_get_attr_obj rx304_cstack, rx304_cur, rx304_curclass, "$!cstack"
  rx304_fail:
    unless rx304_bstack, rx304_done
    pop $I19, rx304_bstack
    if_null rx304_cstack, rx304_cstack_done
    unless rx304_cstack, rx304_cstack_done
    dec $I19
    set $P11, rx304_cstack[$I19]
  rx304_cstack_done:
    pop rx304_rep, rx304_bstack
    pop rx304_pos, rx304_bstack
    pop $I19, rx304_bstack
    lt rx304_pos, -1, rx304_done
    lt rx304_pos, 0, rx304_fail
    eq $I19, 0, rx304_fail
    if_null rx304_cstack, rx304_jump
    elements $I18, rx304_bstack
    le $I18, 0, rx304_cut
    dec $I18
    set $I18, rx304_bstack[$I18]
  rx304_cut:
    assign rx304_cstack, $I18
  rx304_jump:
    jump $I19
  rx304_done:
    rx304_cur."!cursor_fail"()
    .return (rx304_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "76_1338064447.841_caps"  :subid("285_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 174
    new $P103, "Hash"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "76_1338064447.841_nfa"  :subid("286_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 174
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 2
    push $P104, 65
    push $P104, 2
    new $P105, "ResizablePMCArray"
    push $P105, 8
    push $P105, "obs"
    push $P105, 0
    new $P106, "ResizablePMCArray"
    push $P106, $P103
    push $P106, $P104
    push $P106, $P105
    .return ($P106)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "backslash:sym<z>"  :subid("77_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1400
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 175
    .lex "self", param_1400
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1401
    .lex "$/", $P1402
    .local string rx307_tgt
    .local int rx307_pos
    .local int rx307_off
    .local int rx307_eos
    .local int rx307_rep
    .local pmc rx307_cur
    .local pmc rx307_curclass
    .local pmc rx307_bstack
    .local pmc rx307_cstack
    (rx307_cur, rx307_tgt, rx307_pos, rx307_curclass, rx307_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx307_cur
    length rx307_eos, rx307_tgt
    eq $I19, 1, rx307_restart
    repr_get_attr_int $I11, self, rx307_curclass, "$!from"
    ne $I11, -1, rxscan308_done
    goto rxscan308_scan
  rxscan308_loop:
    inc rx307_pos
    gt rx307_pos, rx307_eos, rx307_fail
    repr_bind_attr_int rx307_cur, rx307_curclass, "$!from", rx307_pos
  rxscan308_scan:
    nqp_rxmark rx307_bstack, rxscan308_loop, rx307_pos, 0
  rxscan308_done:
    add $I11, rx307_pos, 1
    gt $I11, rx307_eos, rx307_fail
    substr $S10, rx307_tgt, rx307_pos, 1
    ne $S10, ucs4:"z", rx307_fail
    add rx307_pos, 1
    repr_bind_attr_int rx307_cur, rx307_curclass, "$!pos", rx307_pos
    $P11 = rx307_cur."obs"("\\z as end-of-string matcher", "$")
    repr_get_attr_int $I11, $P11, rx307_curclass, "$!pos"
    lt $I11, 0, rx307_fail
    repr_get_attr_int rx307_pos, $P11, rx307_curclass, "$!pos"
    rx307_cur."!cursor_pass"(rx307_pos, "backslash:sym<z>", 'backtrack'=>1)
    .return (rx307_cur)
  rx307_restart:
    repr_get_attr_obj rx307_cstack, rx307_cur, rx307_curclass, "$!cstack"
  rx307_fail:
    unless rx307_bstack, rx307_done
    pop $I19, rx307_bstack
    if_null rx307_cstack, rx307_cstack_done
    unless rx307_cstack, rx307_cstack_done
    dec $I19
    set $P11, rx307_cstack[$I19]
  rx307_cstack_done:
    pop rx307_rep, rx307_bstack
    pop rx307_pos, rx307_bstack
    pop $I19, rx307_bstack
    lt rx307_pos, -1, rx307_done
    lt rx307_pos, 0, rx307_fail
    eq $I19, 0, rx307_fail
    if_null rx307_cstack, rx307_jump
    elements $I18, rx307_bstack
    le $I18, 0, rx307_cut
    dec $I18
    set $I18, rx307_bstack[$I18]
  rx307_cut:
    assign rx307_cstack, $I18
  rx307_jump:
    jump $I19
  rx307_done:
    rx307_cur."!cursor_fail"()
    .return (rx307_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "77_1338064447.841_caps"  :subid("287_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 175
    new $P103, "Hash"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "77_1338064447.841_nfa"  :subid("288_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 175
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 2
    push $P104, 122
    push $P104, 2
    new $P105, "ResizablePMCArray"
    push $P105, 8
    push $P105, "obs"
    push $P105, 0
    new $P106, "ResizablePMCArray"
    push $P106, $P103
    push $P106, $P104
    push $P106, $P105
    .return ($P106)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "backslash:sym<Z>"  :subid("78_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1406
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 176
    .lex "self", param_1406
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1407
    .lex "$/", $P1408
    .local string rx310_tgt
    .local int rx310_pos
    .local int rx310_off
    .local int rx310_eos
    .local int rx310_rep
    .local pmc rx310_cur
    .local pmc rx310_curclass
    .local pmc rx310_bstack
    .local pmc rx310_cstack
    (rx310_cur, rx310_tgt, rx310_pos, rx310_curclass, rx310_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx310_cur
    length rx310_eos, rx310_tgt
    eq $I19, 1, rx310_restart
    repr_get_attr_int $I11, self, rx310_curclass, "$!from"
    ne $I11, -1, rxscan311_done
    goto rxscan311_scan
  rxscan311_loop:
    inc rx310_pos
    gt rx310_pos, rx310_eos, rx310_fail
    repr_bind_attr_int rx310_cur, rx310_curclass, "$!from", rx310_pos
  rxscan311_scan:
    nqp_rxmark rx310_bstack, rxscan311_loop, rx310_pos, 0
  rxscan311_done:
    add $I11, rx310_pos, 1
    gt $I11, rx310_eos, rx310_fail
    substr $S10, rx310_tgt, rx310_pos, 1
    ne $S10, ucs4:"Z", rx310_fail
    add rx310_pos, 1
    repr_bind_attr_int rx310_cur, rx310_curclass, "$!pos", rx310_pos
    $P11 = rx310_cur."obs"("\\Z as end-of-string matcher", "\\n?$")
    repr_get_attr_int $I11, $P11, rx310_curclass, "$!pos"
    lt $I11, 0, rx310_fail
    repr_get_attr_int rx310_pos, $P11, rx310_curclass, "$!pos"
    rx310_cur."!cursor_pass"(rx310_pos, "backslash:sym<Z>", 'backtrack'=>1)
    .return (rx310_cur)
  rx310_restart:
    repr_get_attr_obj rx310_cstack, rx310_cur, rx310_curclass, "$!cstack"
  rx310_fail:
    unless rx310_bstack, rx310_done
    pop $I19, rx310_bstack
    if_null rx310_cstack, rx310_cstack_done
    unless rx310_cstack, rx310_cstack_done
    dec $I19
    set $P11, rx310_cstack[$I19]
  rx310_cstack_done:
    pop rx310_rep, rx310_bstack
    pop rx310_pos, rx310_bstack
    pop $I19, rx310_bstack
    lt rx310_pos, -1, rx310_done
    lt rx310_pos, 0, rx310_fail
    eq $I19, 0, rx310_fail
    if_null rx310_cstack, rx310_jump
    elements $I18, rx310_bstack
    le $I18, 0, rx310_cut
    dec $I18
    set $I18, rx310_bstack[$I18]
  rx310_cut:
    assign rx310_cstack, $I18
  rx310_jump:
    jump $I19
  rx310_done:
    rx310_cur."!cursor_fail"()
    .return (rx310_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "78_1338064447.841_caps"  :subid("289_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 176
    new $P103, "Hash"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "78_1338064447.841_nfa"  :subid("290_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 176
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 2
    push $P104, 90
    push $P104, 2
    new $P105, "ResizablePMCArray"
    push $P105, 8
    push $P105, "obs"
    push $P105, 0
    new $P106, "ResizablePMCArray"
    push $P106, $P103
    push $P106, $P104
    push $P106, $P105
    .return ($P106)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "backslash:sym<Q>"  :subid("79_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1412
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 177
    .lex "self", param_1412
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1413
    .lex "$/", $P1414
    .local string rx313_tgt
    .local int rx313_pos
    .local int rx313_off
    .local int rx313_eos
    .local int rx313_rep
    .local pmc rx313_cur
    .local pmc rx313_curclass
    .local pmc rx313_bstack
    .local pmc rx313_cstack
    (rx313_cur, rx313_tgt, rx313_pos, rx313_curclass, rx313_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx313_cur
    length rx313_eos, rx313_tgt
    eq $I19, 1, rx313_restart
    repr_get_attr_int $I11, self, rx313_curclass, "$!from"
    ne $I11, -1, rxscan314_done
    goto rxscan314_scan
  rxscan314_loop:
    inc rx313_pos
    gt rx313_pos, rx313_eos, rx313_fail
    repr_bind_attr_int rx313_cur, rx313_curclass, "$!from", rx313_pos
  rxscan314_scan:
    nqp_rxmark rx313_bstack, rxscan314_loop, rx313_pos, 0
  rxscan314_done:
    add $I11, rx313_pos, 1
    gt $I11, rx313_eos, rx313_fail
    substr $S10, rx313_tgt, rx313_pos, 1
    ne $S10, ucs4:"Q", rx313_fail
    add rx313_pos, 1
    repr_bind_attr_int rx313_cur, rx313_curclass, "$!pos", rx313_pos
    $P11 = rx313_cur."obs"("\\Q as quotemeta", "quotes or literal variable match")
    repr_get_attr_int $I11, $P11, rx313_curclass, "$!pos"
    lt $I11, 0, rx313_fail
    repr_get_attr_int rx313_pos, $P11, rx313_curclass, "$!pos"
    rx313_cur."!cursor_pass"(rx313_pos, "backslash:sym<Q>", 'backtrack'=>1)
    .return (rx313_cur)
  rx313_restart:
    repr_get_attr_obj rx313_cstack, rx313_cur, rx313_curclass, "$!cstack"
  rx313_fail:
    unless rx313_bstack, rx313_done
    pop $I19, rx313_bstack
    if_null rx313_cstack, rx313_cstack_done
    unless rx313_cstack, rx313_cstack_done
    dec $I19
    set $P11, rx313_cstack[$I19]
  rx313_cstack_done:
    pop rx313_rep, rx313_bstack
    pop rx313_pos, rx313_bstack
    pop $I19, rx313_bstack
    lt rx313_pos, -1, rx313_done
    lt rx313_pos, 0, rx313_fail
    eq $I19, 0, rx313_fail
    if_null rx313_cstack, rx313_jump
    elements $I18, rx313_bstack
    le $I18, 0, rx313_cut
    dec $I18
    set $I18, rx313_bstack[$I18]
  rx313_cut:
    assign rx313_cstack, $I18
  rx313_jump:
    jump $I19
  rx313_done:
    rx313_cur."!cursor_fail"()
    .return (rx313_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "79_1338064447.841_caps"  :subid("291_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 177
    new $P103, "Hash"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "79_1338064447.841_nfa"  :subid("292_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 177
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 2
    push $P104, 81
    push $P104, 2
    new $P105, "ResizablePMCArray"
    push $P105, 8
    push $P105, "obs"
    push $P105, 0
    new $P106, "ResizablePMCArray"
    push $P106, $P103
    push $P106, $P104
    push $P106, $P105
    .return ($P106)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "backslash:sym<unrec>"  :subid("80_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1418
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 178
    .const 'Sub' $P1423 = "294_1338064447.841" 
    capture_lex $P1423
    .lex "self", param_1418
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1419
    .lex "$/", $P1420
    .local string rx316_tgt
    .local int rx316_pos
    .local int rx316_off
    .local int rx316_eos
    .local int rx316_rep
    .local pmc rx316_cur
    .local pmc rx316_curclass
    .local pmc rx316_bstack
    .local pmc rx316_cstack
    (rx316_cur, rx316_tgt, rx316_pos, rx316_curclass, rx316_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx316_cur
    length rx316_eos, rx316_tgt
    eq $I19, 1, rx316_restart
    repr_get_attr_int $I11, self, rx316_curclass, "$!from"
    ne $I11, -1, rxscan317_done
    goto rxscan317_scan
  rxscan317_loop:
    inc rx316_pos
    gt rx316_pos, rx316_eos, rx316_fail
    repr_bind_attr_int rx316_cur, rx316_curclass, "$!from", rx316_pos
  rxscan317_scan:
    nqp_rxmark rx316_bstack, rxscan317_loop, rx316_pos, 0
  rxscan317_done:
    repr_bind_attr_int rx316_cur, rx316_curclass, "$!pos", rx316_pos
    store_lex unicode:"$\x{a2}", rx316_cur
    find_lex $P103, unicode:"$\x{a2}"
    $P104 = $P103."MATCH"()
    store_lex "$/", $P104
    .const 'Sub' $P1423 = "294_1338064447.841" 
    capture_lex $P1423
    $P105 = $P1423()
    ge rx316_pos, rx316_eos, rx316_fail
    is_cclass $I11, .CCLASS_WORD, rx316_tgt, rx316_pos
    unless $I11, rx316_fail
    add rx316_pos, 1
    repr_bind_attr_int rx316_cur, rx316_curclass, "$!pos", rx316_pos
    $P11 = rx316_cur."panic"("Unrecognized backslash sequence")
    repr_get_attr_int $I11, $P11, rx316_curclass, "$!pos"
    lt $I11, 0, rx316_fail
    repr_get_attr_int rx316_pos, $P11, rx316_curclass, "$!pos"
    rx316_cur."!cursor_pass"(rx316_pos, "backslash:sym<unrec>", 'backtrack'=>1)
    .return (rx316_cur)
  rx316_restart:
    repr_get_attr_obj rx316_cstack, rx316_cur, rx316_curclass, "$!cstack"
  rx316_fail:
    unless rx316_bstack, rx316_done
    pop $I19, rx316_bstack
    if_null rx316_cstack, rx316_cstack_done
    unless rx316_cstack, rx316_cstack_done
    dec $I19
    set $P11, rx316_cstack[$I19]
  rx316_cstack_done:
    pop rx316_rep, rx316_bstack
    pop rx316_pos, rx316_bstack
    pop $I19, rx316_bstack
    lt rx316_pos, -1, rx316_done
    lt rx316_pos, 0, rx316_fail
    eq $I19, 0, rx316_fail
    if_null rx316_cstack, rx316_jump
    elements $I18, rx316_bstack
    le $I18, 0, rx316_cut
    dec $I18
    set $I18, rx316_bstack[$I18]
  rx316_cut:
    assign rx316_cstack, $I18
  rx316_jump:
    jump $I19
  rx316_done:
    rx316_cur."!cursor_fail"()
    .return (rx316_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "80_1338064447.841_caps"  :subid("293_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 178
    new $P103, "Hash"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "_block1422"  :anon :subid("294_1338064447.841") :outer("80_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 178
    .return ()
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "backslash:sym<misc>"  :subid("81_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1425
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 179
    .lex "self", param_1425
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1426
    .lex "$/", $P1427
    .local string rx319_tgt
    .local int rx319_pos
    .local int rx319_off
    .local int rx319_eos
    .local int rx319_rep
    .local pmc rx319_cur
    .local pmc rx319_curclass
    .local pmc rx319_bstack
    .local pmc rx319_cstack
    (rx319_cur, rx319_tgt, rx319_pos, rx319_curclass, rx319_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx319_cur
    length rx319_eos, rx319_tgt
    eq $I19, 1, rx319_restart
    repr_get_attr_int $I11, self, rx319_curclass, "$!from"
    ne $I11, -1, rxscan320_done
    goto rxscan320_scan
  rxscan320_loop:
    inc rx319_pos
    gt rx319_pos, rx319_eos, rx319_fail
    repr_bind_attr_int rx319_cur, rx319_curclass, "$!from", rx319_pos
  rxscan320_scan:
    nqp_rxmark rx319_bstack, rxscan320_loop, rx319_pos, 0
  rxscan320_done:
    ge rx319_pos, rx319_eos, rx319_fail
    is_cclass $I11, .CCLASS_WORD, rx319_tgt, rx319_pos
    if $I11, rx319_fail
    add rx319_pos, 1
    rx319_cur."!cursor_pass"(rx319_pos, "backslash:sym<misc>", 'backtrack'=>1)
    .return (rx319_cur)
  rx319_restart:
    repr_get_attr_obj rx319_cstack, rx319_cur, rx319_curclass, "$!cstack"
  rx319_fail:
    unless rx319_bstack, rx319_done
    pop $I19, rx319_bstack
    if_null rx319_cstack, rx319_cstack_done
    unless rx319_cstack, rx319_cstack_done
    dec $I19
    set $P11, rx319_cstack[$I19]
  rx319_cstack_done:
    pop rx319_rep, rx319_bstack
    pop rx319_pos, rx319_bstack
    pop $I19, rx319_bstack
    lt rx319_pos, -1, rx319_done
    lt rx319_pos, 0, rx319_fail
    eq $I19, 0, rx319_fail
    if_null rx319_cstack, rx319_jump
    elements $I18, rx319_bstack
    le $I18, 0, rx319_cut
    dec $I18
    set $I18, rx319_bstack[$I18]
  rx319_cut:
    assign rx319_cstack, $I18
  rx319_jump:
    jump $I19
  rx319_done:
    rx319_cur."!cursor_fail"()
    .return (rx319_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "81_1338064447.841_caps"  :subid("295_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 179
    new $P103, "Hash"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "81_1338064447.841_nfa"  :subid("296_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 179
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 5
    push $P104, 8192
    push $P104, 0
    new $P105, "ResizablePMCArray"
    push $P105, $P103
    push $P105, $P104
    .return ($P105)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "assertion"  :subid("82_1338064447.841")
    .param pmc param_1431
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 181
    .lex "self", param_1431
    $P101 = param_1431."!protoregex"("assertion")
    .return ($P101)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "assertion:sym<?>"  :subid("84_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1433
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 183
    .const 'Sub' $P1439 = "83_1338064447.841" 
    capture_lex $P1439
    .lex "self", param_1433
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1434
    .lex "$/", $P1435
    .local string rx321_tgt
    .local int rx321_pos
    .local int rx321_off
    .local int rx321_eos
    .local int rx321_rep
    .local pmc rx321_cur
    .local pmc rx321_curclass
    .local pmc rx321_bstack
    .local pmc rx321_cstack
    (rx321_cur, rx321_tgt, rx321_pos, rx321_curclass, rx321_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx321_cur
    length rx321_eos, rx321_tgt
    eq $I19, 1, rx321_restart
    repr_get_attr_int $I11, self, rx321_curclass, "$!from"
    ne $I11, -1, rxscan322_done
    goto rxscan322_scan
  rxscan322_loop:
    inc rx321_pos
    gt rx321_pos, rx321_eos, rx321_fail
    repr_bind_attr_int rx321_cur, rx321_curclass, "$!from", rx321_pos
  rxscan322_scan:
    nqp_rxmark rx321_bstack, rxscan322_loop, rx321_pos, 0
  rxscan322_done:
    add $I11, rx321_pos, 1
    gt $I11, rx321_eos, rx321_fail
    substr $S10, rx321_tgt, rx321_pos, 1
    ne $S10, ucs4:"?", rx321_fail
    add rx321_pos, 1
  alt323_0:
    nqp_rxmark rx321_bstack, alt323_1, rx321_pos, 0
    .const 'Sub' $P1439 = "83_1338064447.841" 
    capture_lex $P1439
    repr_bind_attr_int rx321_cur, rx321_curclass, "$!pos", rx321_pos
    $P11 = rx321_cur."before"($P1439)
    repr_get_attr_int $I11, $P11, rx321_curclass, "$!pos"
    lt $I11, 0, rx321_fail
    goto alt323_end
  alt323_1:
    repr_bind_attr_int rx321_cur, rx321_curclass, "$!pos", rx321_pos
    $P11 = rx321_cur."assertion"()
    repr_get_attr_int $I11, $P11, rx321_curclass, "$!pos"
    lt $I11, 0, rx321_fail
    nqp_rxmark rx321_bstack, rxsubrule326_pass, -1, 0
  rxsubrule326_pass:
    rx321_cstack = rx321_cur."!cursor_capture"($P11, "assertion")
    repr_get_attr_int rx321_pos, $P11, rx321_curclass, "$!pos"
  alt323_end:
    rx321_cur."!cursor_pass"(rx321_pos, "assertion:sym<?>", 'backtrack'=>1)
    .return (rx321_cur)
  rx321_restart:
    repr_get_attr_obj rx321_cstack, rx321_cur, rx321_curclass, "$!cstack"
  rx321_fail:
    unless rx321_bstack, rx321_done
    pop $I19, rx321_bstack
    if_null rx321_cstack, rx321_cstack_done
    unless rx321_cstack, rx321_cstack_done
    dec $I19
    set $P11, rx321_cstack[$I19]
  rx321_cstack_done:
    pop rx321_rep, rx321_bstack
    pop rx321_pos, rx321_bstack
    pop $I19, rx321_bstack
    lt rx321_pos, -1, rx321_done
    lt rx321_pos, 0, rx321_fail
    eq $I19, 0, rx321_fail
    if_null rx321_cstack, rx321_jump
    elements $I18, rx321_bstack
    le $I18, 0, rx321_cut
    dec $I18
    set $I18, rx321_bstack[$I18]
  rx321_cut:
    assign rx321_cstack, $I18
  rx321_jump:
    jump $I19
  rx321_done:
    rx321_cur."!cursor_fail"()
    .return (rx321_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "84_1338064447.841_caps"  :subid("297_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 183
    new $P103, "Hash"
    set $P103["assertion"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "84_1338064447.841_nfa"  :subid("298_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 183
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 2
    push $P104, 63
    push $P104, 2
    new $P105, "ResizablePMCArray"
    push $P105, 2
    push $P105, 62
    push $P105, 0
    push $P105, 8
    push $P105, "assertion"
    push $P105, 0
    new $P106, "ResizablePMCArray"
    push $P106, $P103
    push $P106, $P104
    push $P106, $P105
    .return ($P106)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "_block1438"  :anon :subid("83_1338064447.841") :method :outer("84_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 183
    .lex unicode:"$\x{a2}", $P1442
    .local string rx324_tgt
    .local int rx324_pos
    .local int rx324_off
    .local int rx324_eos
    .local int rx324_rep
    .local pmc rx324_cur
    .local pmc rx324_curclass
    .local pmc rx324_bstack
    .local pmc rx324_cstack
    (rx324_cur, rx324_tgt, rx324_pos, rx324_curclass, rx324_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx324_cur
    length rx324_eos, rx324_tgt
    eq $I19, 1, rx324_restart
    repr_get_attr_int $I11, self, rx324_curclass, "$!from"
    ne $I11, -1, rxscan325_done
    goto rxscan325_scan
  rxscan325_loop:
    inc rx324_pos
    gt rx324_pos, rx324_eos, rx324_fail
    repr_bind_attr_int rx324_cur, rx324_curclass, "$!from", rx324_pos
  rxscan325_scan:
    nqp_rxmark rx324_bstack, rxscan325_loop, rx324_pos, 0
  rxscan325_done:
    add $I11, rx324_pos, 1
    gt $I11, rx324_eos, rx324_fail
    substr $S10, rx324_tgt, rx324_pos, 1
    ne $S10, ucs4:">", rx324_fail
    add rx324_pos, 1
    rx324_cur."!cursor_pass"(rx324_pos, 'backtrack'=>1)
    .return (rx324_cur)
  rx324_restart:
    repr_get_attr_obj rx324_cstack, rx324_cur, rx324_curclass, "$!cstack"
  rx324_fail:
    unless rx324_bstack, rx324_done
    pop $I19, rx324_bstack
    if_null rx324_cstack, rx324_cstack_done
    unless rx324_cstack, rx324_cstack_done
    dec $I19
    set $P11, rx324_cstack[$I19]
  rx324_cstack_done:
    pop rx324_rep, rx324_bstack
    pop rx324_pos, rx324_bstack
    pop $I19, rx324_bstack
    lt rx324_pos, -1, rx324_done
    lt rx324_pos, 0, rx324_fail
    eq $I19, 0, rx324_fail
    if_null rx324_cstack, rx324_jump
    elements $I18, rx324_bstack
    le $I18, 0, rx324_cut
    dec $I18
    set $I18, rx324_bstack[$I18]
  rx324_cut:
    assign rx324_cstack, $I18
  rx324_jump:
    jump $I19
  rx324_done:
    rx324_cur."!cursor_fail"()
    .return (rx324_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "83_1338064447.841_caps"  :subid("299_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 183
    new $P103, "Hash"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "83_1338064447.841_nfa"  :subid("300_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 183
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 2
    push $P104, 62
    push $P104, 0
    new $P105, "ResizablePMCArray"
    push $P105, $P103
    push $P105, $P104
    .return ($P105)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "assertion:sym<!>"  :subid("86_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1444
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 184
    .const 'Sub' $P1450 = "85_1338064447.841" 
    capture_lex $P1450
    .lex "self", param_1444
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1445
    .lex "$/", $P1446
    .local string rx327_tgt
    .local int rx327_pos
    .local int rx327_off
    .local int rx327_eos
    .local int rx327_rep
    .local pmc rx327_cur
    .local pmc rx327_curclass
    .local pmc rx327_bstack
    .local pmc rx327_cstack
    (rx327_cur, rx327_tgt, rx327_pos, rx327_curclass, rx327_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx327_cur
    length rx327_eos, rx327_tgt
    eq $I19, 1, rx327_restart
    repr_get_attr_int $I11, self, rx327_curclass, "$!from"
    ne $I11, -1, rxscan328_done
    goto rxscan328_scan
  rxscan328_loop:
    inc rx327_pos
    gt rx327_pos, rx327_eos, rx327_fail
    repr_bind_attr_int rx327_cur, rx327_curclass, "$!from", rx327_pos
  rxscan328_scan:
    nqp_rxmark rx327_bstack, rxscan328_loop, rx327_pos, 0
  rxscan328_done:
    add $I11, rx327_pos, 1
    gt $I11, rx327_eos, rx327_fail
    substr $S10, rx327_tgt, rx327_pos, 1
    ne $S10, ucs4:"!", rx327_fail
    add rx327_pos, 1
  alt329_0:
    nqp_rxmark rx327_bstack, alt329_1, rx327_pos, 0
    .const 'Sub' $P1450 = "85_1338064447.841" 
    capture_lex $P1450
    repr_bind_attr_int rx327_cur, rx327_curclass, "$!pos", rx327_pos
    $P11 = rx327_cur."before"($P1450)
    repr_get_attr_int $I11, $P11, rx327_curclass, "$!pos"
    lt $I11, 0, rx327_fail
    goto alt329_end
  alt329_1:
    repr_bind_attr_int rx327_cur, rx327_curclass, "$!pos", rx327_pos
    $P11 = rx327_cur."assertion"()
    repr_get_attr_int $I11, $P11, rx327_curclass, "$!pos"
    lt $I11, 0, rx327_fail
    nqp_rxmark rx327_bstack, rxsubrule332_pass, -1, 0
  rxsubrule332_pass:
    rx327_cstack = rx327_cur."!cursor_capture"($P11, "assertion")
    repr_get_attr_int rx327_pos, $P11, rx327_curclass, "$!pos"
  alt329_end:
    rx327_cur."!cursor_pass"(rx327_pos, "assertion:sym<!>", 'backtrack'=>1)
    .return (rx327_cur)
  rx327_restart:
    repr_get_attr_obj rx327_cstack, rx327_cur, rx327_curclass, "$!cstack"
  rx327_fail:
    unless rx327_bstack, rx327_done
    pop $I19, rx327_bstack
    if_null rx327_cstack, rx327_cstack_done
    unless rx327_cstack, rx327_cstack_done
    dec $I19
    set $P11, rx327_cstack[$I19]
  rx327_cstack_done:
    pop rx327_rep, rx327_bstack
    pop rx327_pos, rx327_bstack
    pop $I19, rx327_bstack
    lt rx327_pos, -1, rx327_done
    lt rx327_pos, 0, rx327_fail
    eq $I19, 0, rx327_fail
    if_null rx327_cstack, rx327_jump
    elements $I18, rx327_bstack
    le $I18, 0, rx327_cut
    dec $I18
    set $I18, rx327_bstack[$I18]
  rx327_cut:
    assign rx327_cstack, $I18
  rx327_jump:
    jump $I19
  rx327_done:
    rx327_cur."!cursor_fail"()
    .return (rx327_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "86_1338064447.841_caps"  :subid("301_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 184
    new $P103, "Hash"
    set $P103["assertion"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "86_1338064447.841_nfa"  :subid("302_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 184
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 2
    push $P104, 33
    push $P104, 2
    new $P105, "ResizablePMCArray"
    push $P105, 2
    push $P105, 62
    push $P105, 0
    push $P105, 8
    push $P105, "assertion"
    push $P105, 0
    new $P106, "ResizablePMCArray"
    push $P106, $P103
    push $P106, $P104
    push $P106, $P105
    .return ($P106)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "_block1449"  :anon :subid("85_1338064447.841") :method :outer("86_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 184
    .lex unicode:"$\x{a2}", $P1453
    .local string rx330_tgt
    .local int rx330_pos
    .local int rx330_off
    .local int rx330_eos
    .local int rx330_rep
    .local pmc rx330_cur
    .local pmc rx330_curclass
    .local pmc rx330_bstack
    .local pmc rx330_cstack
    (rx330_cur, rx330_tgt, rx330_pos, rx330_curclass, rx330_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx330_cur
    length rx330_eos, rx330_tgt
    eq $I19, 1, rx330_restart
    repr_get_attr_int $I11, self, rx330_curclass, "$!from"
    ne $I11, -1, rxscan331_done
    goto rxscan331_scan
  rxscan331_loop:
    inc rx330_pos
    gt rx330_pos, rx330_eos, rx330_fail
    repr_bind_attr_int rx330_cur, rx330_curclass, "$!from", rx330_pos
  rxscan331_scan:
    nqp_rxmark rx330_bstack, rxscan331_loop, rx330_pos, 0
  rxscan331_done:
    add $I11, rx330_pos, 1
    gt $I11, rx330_eos, rx330_fail
    substr $S10, rx330_tgt, rx330_pos, 1
    ne $S10, ucs4:">", rx330_fail
    add rx330_pos, 1
    rx330_cur."!cursor_pass"(rx330_pos, 'backtrack'=>1)
    .return (rx330_cur)
  rx330_restart:
    repr_get_attr_obj rx330_cstack, rx330_cur, rx330_curclass, "$!cstack"
  rx330_fail:
    unless rx330_bstack, rx330_done
    pop $I19, rx330_bstack
    if_null rx330_cstack, rx330_cstack_done
    unless rx330_cstack, rx330_cstack_done
    dec $I19
    set $P11, rx330_cstack[$I19]
  rx330_cstack_done:
    pop rx330_rep, rx330_bstack
    pop rx330_pos, rx330_bstack
    pop $I19, rx330_bstack
    lt rx330_pos, -1, rx330_done
    lt rx330_pos, 0, rx330_fail
    eq $I19, 0, rx330_fail
    if_null rx330_cstack, rx330_jump
    elements $I18, rx330_bstack
    le $I18, 0, rx330_cut
    dec $I18
    set $I18, rx330_bstack[$I18]
  rx330_cut:
    assign rx330_cstack, $I18
  rx330_jump:
    jump $I19
  rx330_done:
    rx330_cur."!cursor_fail"()
    .return (rx330_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "85_1338064447.841_caps"  :subid("303_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 184
    new $P103, "Hash"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "85_1338064447.841_nfa"  :subid("304_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 184
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 2
    push $P104, 62
    push $P104, 0
    new $P105, "ResizablePMCArray"
    push $P105, $P103
    push $P105, $P104
    .return ($P105)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "assertion:sym<|>"  :subid("87_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1455
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 185
    .lex "self", param_1455
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1456
    .lex "$/", $P1457
    .local string rx333_tgt
    .local int rx333_pos
    .local int rx333_off
    .local int rx333_eos
    .local int rx333_rep
    .local pmc rx333_cur
    .local pmc rx333_curclass
    .local pmc rx333_bstack
    .local pmc rx333_cstack
    (rx333_cur, rx333_tgt, rx333_pos, rx333_curclass, rx333_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx333_cur
    length rx333_eos, rx333_tgt
    eq $I19, 1, rx333_restart
    repr_get_attr_int $I11, self, rx333_curclass, "$!from"
    ne $I11, -1, rxscan334_done
    goto rxscan334_scan
  rxscan334_loop:
    inc rx333_pos
    gt rx333_pos, rx333_eos, rx333_fail
    repr_bind_attr_int rx333_cur, rx333_curclass, "$!from", rx333_pos
  rxscan334_scan:
    nqp_rxmark rx333_bstack, rxscan334_loop, rx333_pos, 0
  rxscan334_done:
    add $I11, rx333_pos, 1
    gt $I11, rx333_eos, rx333_fail
    substr $S10, rx333_tgt, rx333_pos, 1
    ne $S10, ucs4:"|", rx333_fail
    add rx333_pos, 1
    repr_bind_attr_int rx333_cur, rx333_curclass, "$!pos", rx333_pos
    $P11 = rx333_cur."identifier"()
    repr_get_attr_int $I11, $P11, rx333_curclass, "$!pos"
    lt $I11, 0, rx333_fail
    nqp_rxmark rx333_bstack, rxsubrule335_pass, -1, 0
  rxsubrule335_pass:
    rx333_cstack = rx333_cur."!cursor_capture"($P11, "identifier")
    repr_get_attr_int rx333_pos, $P11, rx333_curclass, "$!pos"
    rx333_cur."!cursor_pass"(rx333_pos, "assertion:sym<|>", 'backtrack'=>1)
    .return (rx333_cur)
  rx333_restart:
    repr_get_attr_obj rx333_cstack, rx333_cur, rx333_curclass, "$!cstack"
  rx333_fail:
    unless rx333_bstack, rx333_done
    pop $I19, rx333_bstack
    if_null rx333_cstack, rx333_cstack_done
    unless rx333_cstack, rx333_cstack_done
    dec $I19
    set $P11, rx333_cstack[$I19]
  rx333_cstack_done:
    pop rx333_rep, rx333_bstack
    pop rx333_pos, rx333_bstack
    pop $I19, rx333_bstack
    lt rx333_pos, -1, rx333_done
    lt rx333_pos, 0, rx333_fail
    eq $I19, 0, rx333_fail
    if_null rx333_cstack, rx333_jump
    elements $I18, rx333_bstack
    le $I18, 0, rx333_cut
    dec $I18
    set $I18, rx333_bstack[$I18]
  rx333_cut:
    assign rx333_cstack, $I18
  rx333_jump:
    jump $I19
  rx333_done:
    rx333_cur."!cursor_fail"()
    .return (rx333_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "87_1338064447.841_caps"  :subid("305_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 185
    new $P103, "Hash"
    set $P103["identifier"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "87_1338064447.841_nfa"  :subid("306_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 185
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 2
    push $P104, 124
    push $P104, 2
    new $P105, "ResizablePMCArray"
    push $P105, 8
    push $P105, "identifier"
    push $P105, 0
    new $P106, "ResizablePMCArray"
    push $P106, $P103
    push $P106, $P104
    push $P106, $P105
    .return ($P106)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "assertion:sym<method>"  :subid("88_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1461
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 187
    .lex "self", param_1461
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1462
    .lex "$/", $P1463
    .local string rx336_tgt
    .local int rx336_pos
    .local int rx336_off
    .local int rx336_eos
    .local int rx336_rep
    .local pmc rx336_cur
    .local pmc rx336_curclass
    .local pmc rx336_bstack
    .local pmc rx336_cstack
    (rx336_cur, rx336_tgt, rx336_pos, rx336_curclass, rx336_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx336_cur
    length rx336_eos, rx336_tgt
    eq $I19, 1, rx336_restart
    repr_get_attr_int $I11, self, rx336_curclass, "$!from"
    ne $I11, -1, rxscan337_done
    goto rxscan337_scan
  rxscan337_loop:
    inc rx336_pos
    gt rx336_pos, rx336_eos, rx336_fail
    repr_bind_attr_int rx336_cur, rx336_curclass, "$!from", rx336_pos
  rxscan337_scan:
    nqp_rxmark rx336_bstack, rxscan337_loop, rx336_pos, 0
  rxscan337_done:
    add $I11, rx336_pos, 1
    gt $I11, rx336_eos, rx336_fail
    substr $S10, rx336_tgt, rx336_pos, 1
    ne $S10, ucs4:".", rx336_fail
    add rx336_pos, 1
    repr_bind_attr_int rx336_cur, rx336_curclass, "$!pos", rx336_pos
    $P11 = rx336_cur."assertion"()
    repr_get_attr_int $I11, $P11, rx336_curclass, "$!pos"
    lt $I11, 0, rx336_fail
    nqp_rxmark rx336_bstack, rxsubrule338_pass, -1, 0
  rxsubrule338_pass:
    rx336_cstack = rx336_cur."!cursor_capture"($P11, "assertion")
    repr_get_attr_int rx336_pos, $P11, rx336_curclass, "$!pos"
    rx336_cur."!cursor_pass"(rx336_pos, "assertion:sym<method>", 'backtrack'=>1)
    .return (rx336_cur)
  rx336_restart:
    repr_get_attr_obj rx336_cstack, rx336_cur, rx336_curclass, "$!cstack"
  rx336_fail:
    unless rx336_bstack, rx336_done
    pop $I19, rx336_bstack
    if_null rx336_cstack, rx336_cstack_done
    unless rx336_cstack, rx336_cstack_done
    dec $I19
    set $P11, rx336_cstack[$I19]
  rx336_cstack_done:
    pop rx336_rep, rx336_bstack
    pop rx336_pos, rx336_bstack
    pop $I19, rx336_bstack
    lt rx336_pos, -1, rx336_done
    lt rx336_pos, 0, rx336_fail
    eq $I19, 0, rx336_fail
    if_null rx336_cstack, rx336_jump
    elements $I18, rx336_bstack
    le $I18, 0, rx336_cut
    dec $I18
    set $I18, rx336_bstack[$I18]
  rx336_cut:
    assign rx336_cstack, $I18
  rx336_jump:
    jump $I19
  rx336_done:
    rx336_cur."!cursor_fail"()
    .return (rx336_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "88_1338064447.841_caps"  :subid("307_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 187
    new $P103, "Hash"
    set $P103["assertion"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "88_1338064447.841_nfa"  :subid("308_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 187
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 2
    push $P104, 46
    push $P104, 2
    new $P105, "ResizablePMCArray"
    push $P105, 8
    push $P105, "assertion"
    push $P105, 0
    new $P106, "ResizablePMCArray"
    push $P106, $P103
    push $P106, $P104
    push $P106, $P105
    .return ($P106)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "assertion:sym<name>"  :subid("90_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1467
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 191
    .const 'Sub' $P1473 = "89_1338064447.841" 
    capture_lex $P1473
    .lex "self", param_1467
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1468
    .lex "$/", $P1469
    .local string rx339_tgt
    .local int rx339_pos
    .local int rx339_off
    .local int rx339_eos
    .local int rx339_rep
    .local pmc rx339_cur
    .local pmc rx339_curclass
    .local pmc rx339_bstack
    .local pmc rx339_cstack
    (rx339_cur, rx339_tgt, rx339_pos, rx339_curclass, rx339_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx339_cur
    length rx339_eos, rx339_tgt
    eq $I19, 1, rx339_restart
    repr_get_attr_int $I11, self, rx339_curclass, "$!from"
    ne $I11, -1, rxscan340_done
    goto rxscan340_scan
  rxscan340_loop:
    inc rx339_pos
    gt rx339_pos, rx339_eos, rx339_fail
    repr_bind_attr_int rx339_cur, rx339_curclass, "$!from", rx339_pos
  rxscan340_scan:
    nqp_rxmark rx339_bstack, rxscan340_loop, rx339_pos, 0
  rxscan340_done:
    repr_bind_attr_int rx339_cur, rx339_curclass, "$!pos", rx339_pos
    $P11 = rx339_cur."identifier"()
    repr_get_attr_int $I11, $P11, rx339_curclass, "$!pos"
    lt $I11, 0, rx339_fail
    nqp_rxmark rx339_bstack, rxsubrule341_pass, -1, 0
  rxsubrule341_pass:
    rx339_cstack = rx339_cur."!cursor_capture"($P11, "longname")
    repr_get_attr_int rx339_pos, $P11, rx339_curclass, "$!pos"
  # rx rxquantr342 ** 0..1
    nqp_rxmark rx339_bstack, rxquantr342_done, rx339_pos, 0
  rxquantr342_loop:
  alt343_0:
    nqp_rxmark rx339_bstack, alt343_1, rx339_pos, 0
    .const 'Sub' $P1473 = "89_1338064447.841" 
    capture_lex $P1473
    repr_bind_attr_int rx339_cur, rx339_curclass, "$!pos", rx339_pos
    $P11 = rx339_cur."before"($P1473)
    repr_get_attr_int $I11, $P11, rx339_curclass, "$!pos"
    lt $I11, 0, rx339_fail
    goto alt343_end
  alt343_1:
    nqp_rxmark rx339_bstack, alt343_2, rx339_pos, 0
    add $I11, rx339_pos, 1
    gt $I11, rx339_eos, rx339_fail
    substr $S10, rx339_tgt, rx339_pos, 1
    ne $S10, ucs4:"=", rx339_fail
    add rx339_pos, 1
    repr_bind_attr_int rx339_cur, rx339_curclass, "$!pos", rx339_pos
    $P11 = rx339_cur."assertion"()
    repr_get_attr_int $I11, $P11, rx339_curclass, "$!pos"
    lt $I11, 0, rx339_fail
    nqp_rxmark rx339_bstack, rxsubrule346_pass, -1, 0
  rxsubrule346_pass:
    rx339_cstack = rx339_cur."!cursor_capture"($P11, "assertion")
    repr_get_attr_int rx339_pos, $P11, rx339_curclass, "$!pos"
    goto alt343_end
  alt343_2:
    nqp_rxmark rx339_bstack, alt343_3, rx339_pos, 0
    add $I11, rx339_pos, 1
    gt $I11, rx339_eos, rx339_fail
    substr $S10, rx339_tgt, rx339_pos, 1
    ne $S10, ucs4:":", rx339_fail
    add rx339_pos, 1
    repr_bind_attr_int rx339_cur, rx339_curclass, "$!pos", rx339_pos
    $P11 = rx339_cur."arglist"()
    repr_get_attr_int $I11, $P11, rx339_curclass, "$!pos"
    lt $I11, 0, rx339_fail
    nqp_rxmark rx339_bstack, rxsubrule347_pass, -1, 0
  rxsubrule347_pass:
    rx339_cstack = rx339_cur."!cursor_capture"($P11, "arglist")
    repr_get_attr_int rx339_pos, $P11, rx339_curclass, "$!pos"
    goto alt343_end
  alt343_3:
    nqp_rxmark rx339_bstack, alt343_4, rx339_pos, 0
    add $I11, rx339_pos, 1
    gt $I11, rx339_eos, rx339_fail
    substr $S10, rx339_tgt, rx339_pos, 1
    ne $S10, ucs4:"(", rx339_fail
    add rx339_pos, 1
    repr_bind_attr_int rx339_cur, rx339_curclass, "$!pos", rx339_pos
    $P11 = rx339_cur."arglist"()
    repr_get_attr_int $I11, $P11, rx339_curclass, "$!pos"
    lt $I11, 0, rx339_fail
    nqp_rxmark rx339_bstack, rxsubrule348_pass, -1, 0
  rxsubrule348_pass:
    rx339_cstack = rx339_cur."!cursor_capture"($P11, "arglist")
    repr_get_attr_int rx339_pos, $P11, rx339_curclass, "$!pos"
    add $I11, rx339_pos, 1
    gt $I11, rx339_eos, rx339_fail
    substr $S10, rx339_tgt, rx339_pos, 1
    ne $S10, ucs4:")", rx339_fail
    add rx339_pos, 1
    goto alt343_end
  alt343_4:
    repr_bind_attr_int rx339_cur, rx339_curclass, "$!pos", rx339_pos
    $P11 = rx339_cur."normspace"()
    repr_get_attr_int $I11, $P11, rx339_curclass, "$!pos"
    lt $I11, 0, rx339_fail
    repr_get_attr_int rx339_pos, $P11, rx339_curclass, "$!pos"
    repr_bind_attr_int rx339_cur, rx339_curclass, "$!pos", rx339_pos
    $P11 = rx339_cur."nibbler"()
    repr_get_attr_int $I11, $P11, rx339_curclass, "$!pos"
    lt $I11, 0, rx339_fail
    nqp_rxmark rx339_bstack, rxsubrule350_pass, -1, 0
  rxsubrule350_pass:
    rx339_cstack = rx339_cur."!cursor_capture"($P11, "nibbler")
    repr_get_attr_int rx339_pos, $P11, rx339_curclass, "$!pos"
  alt343_end:
    nqp_rxpeek $I19, rx339_bstack, rxquantr342_done
    inc $I19
    inc $I19
    set rx339_rep, rx339_bstack[$I19]
    nqp_rxcommit rx339_bstack, rxquantr342_done
    inc rx339_rep
  rxquantr342_done:
    rx339_cur."!cursor_pass"(rx339_pos, "assertion:sym<name>", 'backtrack'=>1)
    .return (rx339_cur)
  rx339_restart:
    repr_get_attr_obj rx339_cstack, rx339_cur, rx339_curclass, "$!cstack"
  rx339_fail:
    unless rx339_bstack, rx339_done
    pop $I19, rx339_bstack
    if_null rx339_cstack, rx339_cstack_done
    unless rx339_cstack, rx339_cstack_done
    dec $I19
    set $P11, rx339_cstack[$I19]
  rx339_cstack_done:
    pop rx339_rep, rx339_bstack
    pop rx339_pos, rx339_bstack
    pop $I19, rx339_bstack
    lt rx339_pos, -1, rx339_done
    lt rx339_pos, 0, rx339_fail
    eq $I19, 0, rx339_fail
    if_null rx339_cstack, rx339_jump
    elements $I18, rx339_bstack
    le $I18, 0, rx339_cut
    dec $I18
    set $I18, rx339_bstack[$I18]
  rx339_cut:
    assign rx339_cstack, $I18
  rx339_jump:
    jump $I19
  rx339_done:
    rx339_cur."!cursor_fail"()
    .return (rx339_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "90_1338064447.841_caps"  :subid("309_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 191
    new $P103, "Hash"
    set $P103["longname"], 0
    set $P103["assertion"], 2
    set $P103["arglist"], 2
    set $P103["nibbler"], 2
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "90_1338064447.841_nfa"  :subid("310_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 191
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 8
    push $P104, "identifier"
    push $P104, 2
    new $P105, "ResizablePMCArray"
    push $P105, 2
    push $P105, 62
    push $P105, 0
    push $P105, 2
    push $P105, 61
    push $P105, 3
    push $P105, 2
    push $P105, 58
    push $P105, 4
    push $P105, 2
    push $P105, 40
    push $P105, 5
    push $P105, 8
    push $P105, "normspace"
    push $P105, 7
    push $P105, 1
    push $P105, 0
    push $P105, 0
    new $P106, "ResizablePMCArray"
    push $P106, 8
    push $P106, "assertion"
    push $P106, 0
    new $P107, "ResizablePMCArray"
    push $P107, 8
    push $P107, "arglist"
    push $P107, 0
    new $P108, "ResizablePMCArray"
    push $P108, 8
    push $P108, "arglist"
    push $P108, 6
    new $P109, "ResizablePMCArray"
    push $P109, 2
    push $P109, 41
    push $P109, 0
    new $P110, "ResizablePMCArray"
    push $P110, 8
    push $P110, "nibbler"
    push $P110, 0
    new $P111, "ResizablePMCArray"
    push $P111, $P103
    push $P111, $P104
    push $P111, $P105
    push $P111, $P106
    push $P111, $P107
    push $P111, $P108
    push $P111, $P109
    push $P111, $P110
    .return ($P111)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "_block1472"  :anon :subid("89_1338064447.841") :method :outer("90_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 191
    .lex unicode:"$\x{a2}", $P1476
    .local string rx344_tgt
    .local int rx344_pos
    .local int rx344_off
    .local int rx344_eos
    .local int rx344_rep
    .local pmc rx344_cur
    .local pmc rx344_curclass
    .local pmc rx344_bstack
    .local pmc rx344_cstack
    (rx344_cur, rx344_tgt, rx344_pos, rx344_curclass, rx344_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx344_cur
    length rx344_eos, rx344_tgt
    eq $I19, 1, rx344_restart
    repr_get_attr_int $I11, self, rx344_curclass, "$!from"
    ne $I11, -1, rxscan345_done
    goto rxscan345_scan
  rxscan345_loop:
    inc rx344_pos
    gt rx344_pos, rx344_eos, rx344_fail
    repr_bind_attr_int rx344_cur, rx344_curclass, "$!from", rx344_pos
  rxscan345_scan:
    nqp_rxmark rx344_bstack, rxscan345_loop, rx344_pos, 0
  rxscan345_done:
    add $I11, rx344_pos, 1
    gt $I11, rx344_eos, rx344_fail
    substr $S10, rx344_tgt, rx344_pos, 1
    ne $S10, ucs4:">", rx344_fail
    add rx344_pos, 1
    rx344_cur."!cursor_pass"(rx344_pos, 'backtrack'=>1)
    .return (rx344_cur)
  rx344_restart:
    repr_get_attr_obj rx344_cstack, rx344_cur, rx344_curclass, "$!cstack"
  rx344_fail:
    unless rx344_bstack, rx344_done
    pop $I19, rx344_bstack
    if_null rx344_cstack, rx344_cstack_done
    unless rx344_cstack, rx344_cstack_done
    dec $I19
    set $P11, rx344_cstack[$I19]
  rx344_cstack_done:
    pop rx344_rep, rx344_bstack
    pop rx344_pos, rx344_bstack
    pop $I19, rx344_bstack
    lt rx344_pos, -1, rx344_done
    lt rx344_pos, 0, rx344_fail
    eq $I19, 0, rx344_fail
    if_null rx344_cstack, rx344_jump
    elements $I18, rx344_bstack
    le $I18, 0, rx344_cut
    dec $I18
    set $I18, rx344_bstack[$I18]
  rx344_cut:
    assign rx344_cstack, $I18
  rx344_jump:
    jump $I19
  rx344_done:
    rx344_cur."!cursor_fail"()
    .return (rx344_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "89_1338064447.841_caps"  :subid("311_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 191
    new $P103, "Hash"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "89_1338064447.841_nfa"  :subid("312_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 191
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 2
    push $P104, 62
    push $P104, 0
    new $P105, "ResizablePMCArray"
    push $P105, $P103
    push $P105, $P104
    .return ($P105)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "assertion:sym<[>"  :subid("92_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1478
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 202
    .const 'Sub' $P1484 = "91_1338064447.841" 
    capture_lex $P1484
    .lex "self", param_1478
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1479
    .lex "$/", $P1480
    .local string rx351_tgt
    .local int rx351_pos
    .local int rx351_off
    .local int rx351_eos
    .local int rx351_rep
    .local pmc rx351_cur
    .local pmc rx351_curclass
    .local pmc rx351_bstack
    .local pmc rx351_cstack
    (rx351_cur, rx351_tgt, rx351_pos, rx351_curclass, rx351_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx351_cur
    length rx351_eos, rx351_tgt
    eq $I19, 1, rx351_restart
    repr_get_attr_int $I11, self, rx351_curclass, "$!from"
    ne $I11, -1, rxscan352_done
    goto rxscan352_scan
  rxscan352_loop:
    inc rx351_pos
    gt rx351_pos, rx351_eos, rx351_fail
    repr_bind_attr_int rx351_cur, rx351_curclass, "$!from", rx351_pos
  rxscan352_scan:
    nqp_rxmark rx351_bstack, rxscan352_loop, rx351_pos, 0
  rxscan352_done:
    .const 'Sub' $P1484 = "91_1338064447.841" 
    capture_lex $P1484
    repr_bind_attr_int rx351_cur, rx351_curclass, "$!pos", rx351_pos
    $P11 = rx351_cur."before"($P1484)
    repr_get_attr_int $I11, $P11, rx351_curclass, "$!pos"
    lt $I11, 0, rx351_fail
  # rx rxquantr356 ** 1..-1
    nqp_rxmark rx351_bstack, rxquantr356_done, -1, 0
  rxquantr356_loop:
    repr_bind_attr_int rx351_cur, rx351_curclass, "$!pos", rx351_pos
    $P11 = rx351_cur."cclass_elem"()
    repr_get_attr_int $I11, $P11, rx351_curclass, "$!pos"
    lt $I11, 0, rx351_fail
    goto rxsubrule357_pass
  rxsubrule357_back:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx351_curclass, "$!pos"
    lt $I11, 0, rx351_fail
  rxsubrule357_pass:
    rx351_cstack = rx351_cur."!cursor_capture"($P11, "cclass_elem")
    set_addr $I11, rxsubrule357_back
    push rx351_bstack, $I11
    push rx351_bstack, 0
    push rx351_bstack, rx351_pos
    elements $I11, rx351_cstack
    push rx351_bstack, $I11
    repr_get_attr_int rx351_pos, $P11, rx351_curclass, "$!pos"
    nqp_rxpeek $I19, rx351_bstack, rxquantr356_done
    inc $I19
    inc $I19
    set rx351_rep, rx351_bstack[$I19]
    nqp_rxcommit rx351_bstack, rxquantr356_done
    inc rx351_rep
    nqp_rxmark rx351_bstack, rxquantr356_done, rx351_pos, rx351_rep
    goto rxquantr356_loop
  rxquantr356_done:
    rx351_cur."!cursor_pass"(rx351_pos, "assertion:sym<[>", 'backtrack'=>1)
    .return (rx351_cur)
  rx351_restart:
    repr_get_attr_obj rx351_cstack, rx351_cur, rx351_curclass, "$!cstack"
  rx351_fail:
    unless rx351_bstack, rx351_done
    pop $I19, rx351_bstack
    if_null rx351_cstack, rx351_cstack_done
    unless rx351_cstack, rx351_cstack_done
    dec $I19
    set $P11, rx351_cstack[$I19]
  rx351_cstack_done:
    pop rx351_rep, rx351_bstack
    pop rx351_pos, rx351_bstack
    pop $I19, rx351_bstack
    lt rx351_pos, -1, rx351_done
    lt rx351_pos, 0, rx351_fail
    eq $I19, 0, rx351_fail
    if_null rx351_cstack, rx351_jump
    elements $I18, rx351_bstack
    le $I18, 0, rx351_cut
    dec $I18
    set $I18, rx351_bstack[$I18]
  rx351_cut:
    assign rx351_cstack, $I18
  rx351_jump:
    jump $I19
  rx351_done:
    rx351_cur."!cursor_fail"()
    .return (rx351_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "92_1338064447.841_caps"  :subid("313_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 202
    new $P103, "Hash"
    set $P103["cclass_elem"], 2
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "92_1338064447.841_nfa"  :subid("314_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 202
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 2
    push $P104, 91
    push $P104, 0
    push $P104, 2
    push $P104, 43
    push $P104, 0
    push $P104, 2
    push $P104, 45
    push $P104, 0
    push $P104, 2
    push $P104, 58
    push $P104, 0
    new $P105, "ResizablePMCArray"
    push $P105, $P103
    push $P105, $P104
    .return ($P105)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "_block1483"  :anon :subid("91_1338064447.841") :method :outer("92_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 202
    .lex unicode:"$\x{a2}", $P1487
    .local string rx353_tgt
    .local int rx353_pos
    .local int rx353_off
    .local int rx353_eos
    .local int rx353_rep
    .local pmc rx353_cur
    .local pmc rx353_curclass
    .local pmc rx353_bstack
    .local pmc rx353_cstack
    (rx353_cur, rx353_tgt, rx353_pos, rx353_curclass, rx353_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx353_cur
    length rx353_eos, rx353_tgt
    eq $I19, 1, rx353_restart
    repr_get_attr_int $I11, self, rx353_curclass, "$!from"
    ne $I11, -1, rxscan354_done
    goto rxscan354_scan
  rxscan354_loop:
    inc rx353_pos
    gt rx353_pos, rx353_eos, rx353_fail
    repr_bind_attr_int rx353_cur, rx353_curclass, "$!from", rx353_pos
  rxscan354_scan:
    nqp_rxmark rx353_bstack, rxscan354_loop, rx353_pos, 0
  rxscan354_done:
  alt355_0:
    nqp_rxmark rx353_bstack, alt355_1, rx353_pos, 0
    add $I11, rx353_pos, 1
    gt $I11, rx353_eos, rx353_fail
    substr $S10, rx353_tgt, rx353_pos, 1
    ne $S10, ucs4:"[", rx353_fail
    add rx353_pos, 1
    goto alt355_end
  alt355_1:
    nqp_rxmark rx353_bstack, alt355_2, rx353_pos, 0
    add $I11, rx353_pos, 1
    gt $I11, rx353_eos, rx353_fail
    substr $S10, rx353_tgt, rx353_pos, 1
    ne $S10, ucs4:"+", rx353_fail
    add rx353_pos, 1
    goto alt355_end
  alt355_2:
    nqp_rxmark rx353_bstack, alt355_3, rx353_pos, 0
    add $I11, rx353_pos, 1
    gt $I11, rx353_eos, rx353_fail
    substr $S10, rx353_tgt, rx353_pos, 1
    ne $S10, ucs4:"-", rx353_fail
    add rx353_pos, 1
    goto alt355_end
  alt355_3:
    add $I11, rx353_pos, 1
    gt $I11, rx353_eos, rx353_fail
    substr $S10, rx353_tgt, rx353_pos, 1
    ne $S10, ucs4:":", rx353_fail
    add rx353_pos, 1
  alt355_end:
    rx353_cur."!cursor_pass"(rx353_pos, 'backtrack'=>1)
    .return (rx353_cur)
  rx353_restart:
    repr_get_attr_obj rx353_cstack, rx353_cur, rx353_curclass, "$!cstack"
  rx353_fail:
    unless rx353_bstack, rx353_done
    pop $I19, rx353_bstack
    if_null rx353_cstack, rx353_cstack_done
    unless rx353_cstack, rx353_cstack_done
    dec $I19
    set $P11, rx353_cstack[$I19]
  rx353_cstack_done:
    pop rx353_rep, rx353_bstack
    pop rx353_pos, rx353_bstack
    pop $I19, rx353_bstack
    lt rx353_pos, -1, rx353_done
    lt rx353_pos, 0, rx353_fail
    eq $I19, 0, rx353_fail
    if_null rx353_cstack, rx353_jump
    elements $I18, rx353_bstack
    le $I18, 0, rx353_cut
    dec $I18
    set $I18, rx353_bstack[$I18]
  rx353_cut:
    assign rx353_cstack, $I18
  rx353_jump:
    jump $I19
  rx353_done:
    rx353_cur."!cursor_fail"()
    .return (rx353_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "91_1338064447.841_caps"  :subid("315_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 202
    new $P103, "Hash"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "91_1338064447.841_nfa"  :subid("316_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 202
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 2
    push $P104, 91
    push $P104, 0
    push $P104, 2
    push $P104, 43
    push $P104, 0
    push $P104, 2
    push $P104, 45
    push $P104, 0
    push $P104, 2
    push $P104, 58
    push $P104, 0
    new $P105, "ResizablePMCArray"
    push $P105, $P103
    push $P105, $P104
    .return ($P105)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "cclass_elem"  :subid("99_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1489
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 204
    .const 'Sub' $P1495 = "98_1338064447.841" 
    capture_lex $P1495
    .lex "self", param_1489
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1490
    .lex "$/", $P1491
    .local string rx358_tgt
    .local int rx358_pos
    .local int rx358_off
    .local int rx358_eos
    .local int rx358_rep
    .local pmc rx358_cur
    .local pmc rx358_curclass
    .local pmc rx358_bstack
    .local pmc rx358_cstack
    (rx358_cur, rx358_tgt, rx358_pos, rx358_curclass, rx358_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx358_cur
    length rx358_eos, rx358_tgt
    eq $I19, 1, rx358_restart
    repr_get_attr_int $I11, self, rx358_curclass, "$!from"
    ne $I11, -1, rxscan359_done
    goto rxscan359_scan
  rxscan359_loop:
    inc rx358_pos
    gt rx358_pos, rx358_eos, rx358_fail
    repr_bind_attr_int rx358_cur, rx358_curclass, "$!from", rx358_pos
  rxscan359_scan:
    nqp_rxmark rx358_bstack, rxscan359_loop, rx358_pos, 0
  rxscan359_done:
    nqp_rxmark rx358_bstack, rxcap360_fail, rx358_pos, 0
  alt361_0:
    nqp_rxmark rx358_bstack, alt361_1, rx358_pos, 0
    add $I11, rx358_pos, 1
    gt $I11, rx358_eos, rx358_fail
    substr $S10, rx358_tgt, rx358_pos, 1
    ne $S10, ucs4:"+", rx358_fail
    add rx358_pos, 1
    goto alt361_end
  alt361_1:
    nqp_rxmark rx358_bstack, alt361_2, rx358_pos, 0
    add $I11, rx358_pos, 1
    gt $I11, rx358_eos, rx358_fail
    substr $S10, rx358_tgt, rx358_pos, 1
    ne $S10, ucs4:"-", rx358_fail
    add rx358_pos, 1
    goto alt361_end
  alt361_2:
  alt361_end:
    nqp_rxpeek $I19, rx358_bstack, rxcap360_fail
    inc $I19
    set $I11, rx358_bstack[$I19]
    $P11 = rx358_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx358_pos)
    rx358_cstack = rx358_cur."!cursor_capture"($P11, "sign")
    goto rxcap360_done
  rxcap360_fail:
    goto rx358_fail
  rxcap360_done:
  # rx rxquantr363 ** 0..1
    nqp_rxmark rx358_bstack, rxquantr363_done, rx358_pos, 0
  rxquantr363_loop:
    repr_bind_attr_int rx358_cur, rx358_curclass, "$!pos", rx358_pos
    $P11 = rx358_cur."normspace"()
    repr_get_attr_int $I11, $P11, rx358_curclass, "$!pos"
    lt $I11, 0, rx358_fail
    goto rxsubrule364_pass
  rxsubrule364_back:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx358_curclass, "$!pos"
    lt $I11, 0, rx358_fail
  rxsubrule364_pass:
    rx358_cstack = rx358_cur."!cursor_push_cstack"($P11)
    set_addr $I11, rxsubrule364_back
    push rx358_bstack, $I11
    push rx358_bstack, 0
    push rx358_bstack, rx358_pos
    elements $I11, rx358_cstack
    push rx358_bstack, $I11
    repr_get_attr_int rx358_pos, $P11, rx358_curclass, "$!pos"
    nqp_rxpeek $I19, rx358_bstack, rxquantr363_done
    inc $I19
    inc $I19
    set rx358_rep, rx358_bstack[$I19]
    nqp_rxcommit rx358_bstack, rxquantr363_done
    inc rx358_rep
  rxquantr363_done:
  alt365_0:
    nqp_rxmark rx358_bstack, alt365_1, rx358_pos, 0
    add $I11, rx358_pos, 1
    gt $I11, rx358_eos, rx358_fail
    substr $S10, rx358_tgt, rx358_pos, 1
    ne $S10, ucs4:"[", rx358_fail
    add rx358_pos, 1
  # rx rxquantr366 ** 0..-1
    nqp_rxmark rx358_bstack, rxquantr366_done, rx358_pos, 0
  rxquantr366_loop:
    .const 'Sub' $P1495 = "98_1338064447.841" 
    capture_lex $P1495
    repr_bind_attr_int rx358_cur, rx358_curclass, "$!pos", rx358_pos
    $P11 = rx358_cur.$P1495()
    repr_get_attr_int $I11, $P11, rx358_curclass, "$!pos"
    lt $I11, 0, rx358_fail
    goto rxsubrule397_pass
  rxsubrule397_back:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx358_curclass, "$!pos"
    lt $I11, 0, rx358_fail
  rxsubrule397_pass:
    rx358_cstack = rx358_cur."!cursor_capture"($P11, "charspec")
    set_addr $I11, rxsubrule397_back
    push rx358_bstack, $I11
    push rx358_bstack, 0
    push rx358_bstack, rx358_pos
    elements $I11, rx358_cstack
    push rx358_bstack, $I11
    repr_get_attr_int rx358_pos, $P11, rx358_curclass, "$!pos"
    nqp_rxpeek $I19, rx358_bstack, rxquantr366_done
    inc $I19
    inc $I19
    set rx358_rep, rx358_bstack[$I19]
    nqp_rxcommit rx358_bstack, rxquantr366_done
    inc rx358_rep
    nqp_rxmark rx358_bstack, rxquantr366_done, rx358_pos, rx358_rep
    goto rxquantr366_loop
  rxquantr366_done:
  # rx rxquantr398 ** 0..-1
    nqp_rxmark rx358_bstack, rxquantr398_done, rx358_pos, 0
  rxquantr398_loop:
    ge rx358_pos, rx358_eos, rx358_fail
    is_cclass $I11, .CCLASS_WHITESPACE, rx358_tgt, rx358_pos
    unless $I11, rx358_fail
    add rx358_pos, 1
    nqp_rxpeek $I19, rx358_bstack, rxquantr398_done
    inc $I19
    inc $I19
    set rx358_rep, rx358_bstack[$I19]
    nqp_rxcommit rx358_bstack, rxquantr398_done
    inc rx358_rep
    nqp_rxmark rx358_bstack, rxquantr398_done, rx358_pos, rx358_rep
    goto rxquantr398_loop
  rxquantr398_done:
    add $I11, rx358_pos, 1
    gt $I11, rx358_eos, rx358_fail
    substr $S10, rx358_tgt, rx358_pos, 1
    ne $S10, ucs4:"]", rx358_fail
    add rx358_pos, 1
    goto alt365_end
  alt365_1:
    nqp_rxmark rx358_bstack, alt365_2, rx358_pos, 0
    nqp_rxmark rx358_bstack, rxcap399_fail, rx358_pos, 0
  # rx rxquantr400 ** 1..-1
    nqp_rxmark rx358_bstack, rxquantr400_done, -1, 0
  rxquantr400_loop:
    ge rx358_pos, rx358_eos, rx358_fail
    is_cclass $I11, .CCLASS_WORD, rx358_tgt, rx358_pos
    unless $I11, rx358_fail
    add rx358_pos, 1
    nqp_rxpeek $I19, rx358_bstack, rxquantr400_done
    inc $I19
    inc $I19
    set rx358_rep, rx358_bstack[$I19]
    nqp_rxcommit rx358_bstack, rxquantr400_done
    inc rx358_rep
    nqp_rxmark rx358_bstack, rxquantr400_done, rx358_pos, rx358_rep
    goto rxquantr400_loop
  rxquantr400_done:
    nqp_rxpeek $I19, rx358_bstack, rxcap399_fail
    inc $I19
    set $I11, rx358_bstack[$I19]
    $P11 = rx358_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx358_pos)
    rx358_cstack = rx358_cur."!cursor_capture"($P11, "name")
    goto rxcap399_done
  rxcap399_fail:
    goto rx358_fail
  rxcap399_done:
    goto alt365_end
  alt365_2:
    add $I11, rx358_pos, 1
    gt $I11, rx358_eos, rx358_fail
    substr $S10, rx358_tgt, rx358_pos, 1
    ne $S10, ucs4:":", rx358_fail
    add rx358_pos, 1
    nqp_rxmark rx358_bstack, rxcap401_fail, rx358_pos, 0
  alt402_0:
    nqp_rxmark rx358_bstack, alt402_1, rx358_pos, 0
    add $I11, rx358_pos, 1
    gt $I11, rx358_eos, rx358_fail
    substr $S10, rx358_tgt, rx358_pos, 1
    ne $S10, ucs4:"!", rx358_fail
    add rx358_pos, 1
    goto alt402_end
  alt402_1:
  alt402_end:
    nqp_rxpeek $I19, rx358_bstack, rxcap401_fail
    inc $I19
    set $I11, rx358_bstack[$I19]
    $P11 = rx358_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx358_pos)
    rx358_cstack = rx358_cur."!cursor_capture"($P11, "invert")
    goto rxcap401_done
  rxcap401_fail:
    goto rx358_fail
  rxcap401_done:
    nqp_rxmark rx358_bstack, rxcap404_fail, rx358_pos, 0
  # rx rxquantr405 ** 1..-1
    nqp_rxmark rx358_bstack, rxquantr405_done, -1, 0
  rxquantr405_loop:
    ge rx358_pos, rx358_eos, rx358_fail
    is_cclass $I11, .CCLASS_WORD, rx358_tgt, rx358_pos
    unless $I11, rx358_fail
    add rx358_pos, 1
    nqp_rxpeek $I19, rx358_bstack, rxquantr405_done
    inc $I19
    inc $I19
    set rx358_rep, rx358_bstack[$I19]
    nqp_rxcommit rx358_bstack, rxquantr405_done
    inc rx358_rep
    nqp_rxmark rx358_bstack, rxquantr405_done, rx358_pos, rx358_rep
    goto rxquantr405_loop
  rxquantr405_done:
    nqp_rxpeek $I19, rx358_bstack, rxcap404_fail
    inc $I19
    set $I11, rx358_bstack[$I19]
    $P11 = rx358_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx358_pos)
    rx358_cstack = rx358_cur."!cursor_capture"($P11, "uniprop")
    goto rxcap404_done
  rxcap404_fail:
    goto rx358_fail
  rxcap404_done:
  alt365_end:
  # rx rxquantr406 ** 0..1
    nqp_rxmark rx358_bstack, rxquantr406_done, rx358_pos, 0
  rxquantr406_loop:
    repr_bind_attr_int rx358_cur, rx358_curclass, "$!pos", rx358_pos
    $P11 = rx358_cur."normspace"()
    repr_get_attr_int $I11, $P11, rx358_curclass, "$!pos"
    lt $I11, 0, rx358_fail
    goto rxsubrule407_pass
  rxsubrule407_back:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx358_curclass, "$!pos"
    lt $I11, 0, rx358_fail
  rxsubrule407_pass:
    rx358_cstack = rx358_cur."!cursor_push_cstack"($P11)
    set_addr $I11, rxsubrule407_back
    push rx358_bstack, $I11
    push rx358_bstack, 0
    push rx358_bstack, rx358_pos
    elements $I11, rx358_cstack
    push rx358_bstack, $I11
    repr_get_attr_int rx358_pos, $P11, rx358_curclass, "$!pos"
    nqp_rxpeek $I19, rx358_bstack, rxquantr406_done
    inc $I19
    inc $I19
    set rx358_rep, rx358_bstack[$I19]
    nqp_rxcommit rx358_bstack, rxquantr406_done
    inc rx358_rep
  rxquantr406_done:
    rx358_cur."!cursor_pass"(rx358_pos, "cclass_elem", 'backtrack'=>1)
    .return (rx358_cur)
  rx358_restart:
    repr_get_attr_obj rx358_cstack, rx358_cur, rx358_curclass, "$!cstack"
  rx358_fail:
    unless rx358_bstack, rx358_done
    pop $I19, rx358_bstack
    if_null rx358_cstack, rx358_cstack_done
    unless rx358_cstack, rx358_cstack_done
    dec $I19
    set $P11, rx358_cstack[$I19]
  rx358_cstack_done:
    pop rx358_rep, rx358_bstack
    pop rx358_pos, rx358_bstack
    pop $I19, rx358_bstack
    lt rx358_pos, -1, rx358_done
    lt rx358_pos, 0, rx358_fail
    eq $I19, 0, rx358_fail
    if_null rx358_cstack, rx358_jump
    elements $I18, rx358_bstack
    le $I18, 0, rx358_cut
    dec $I18
    set $I18, rx358_bstack[$I18]
  rx358_cut:
    assign rx358_cstack, $I18
  rx358_jump:
    jump $I19
  rx358_done:
    rx358_cur."!cursor_fail"()
    .return (rx358_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "99_1338064447.841_caps"  :subid("317_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 204
    new $P103, "Hash"
    set $P103["sign"], 0
    set $P103["charspec"], 2
    set $P103["name"], 0
    set $P103["invert"], 0
    set $P103["uniprop"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "99_1338064447.841_nfa"  :subid("318_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 204
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 2
    push $P104, 43
    push $P104, 2
    push $P104, 2
    push $P104, 45
    push $P104, 2
    push $P104, 1
    push $P104, 0
    push $P104, 2
    new $P105, "ResizablePMCArray"
    push $P105, 8
    push $P105, "normspace"
    push $P105, 3
    push $P105, 1
    push $P105, 0
    push $P105, 3
    new $P106, "ResizablePMCArray"
    push $P106, 2
    push $P106, 91
    push $P106, 4
    push $P106, 1
    push $P106, 0
    push $P106, 8
    push $P106, 2
    push $P106, 58
    push $P106, 10
    new $P107, "ResizablePMCArray"
    push $P107, 0
    push $P107, 0
    push $P107, 0
    push $P107, 1
    push $P107, 0
    push $P107, 5
    new $P108, "ResizablePMCArray"
    push $P108, 4
    push $P108, 32
    push $P108, 5
    push $P108, 1
    push $P108, 0
    push $P108, 6
    new $P109, "ResizablePMCArray"
    push $P109, 2
    push $P109, 93
    push $P109, 7
    new $P110, "ResizablePMCArray"
    push $P110, 8
    push $P110, "normspace"
    push $P110, 0
    push $P110, 1
    push $P110, 0
    push $P110, 0
    new $P111, "ResizablePMCArray"
    push $P111, 4
    push $P111, 8192
    push $P111, 9
    new $P112, "ResizablePMCArray"
    push $P112, 1
    push $P112, 0
    push $P112, 8
    push $P112, 1
    push $P112, 0
    push $P112, 7
    new $P113, "ResizablePMCArray"
    push $P113, 2
    push $P113, 33
    push $P113, 11
    push $P113, 1
    push $P113, 0
    push $P113, 11
    new $P114, "ResizablePMCArray"
    push $P114, 1
    push $P114, 0
    push $P114, 12
    new $P115, "ResizablePMCArray"
    push $P115, 4
    push $P115, 8192
    push $P115, 13
    new $P116, "ResizablePMCArray"
    push $P116, 1
    push $P116, 0
    push $P116, 12
    push $P116, 1
    push $P116, 0
    push $P116, 7
    new $P117, "ResizablePMCArray"
    push $P117, $P103
    push $P117, $P104
    push $P117, $P105
    push $P117, $P106
    push $P117, $P107
    push $P117, $P108
    push $P117, $P109
    push $P117, $P110
    push $P117, $P111
    push $P117, $P112
    push $P117, $P113
    push $P117, $P114
    push $P117, $P115
    push $P117, $P116
    .return ($P117)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "_block1494"  :anon :subid("98_1338064447.841") :method :outer("99_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 204
    .const 'Sub' $P1512 = "97_1338064447.841" 
    capture_lex $P1512
    .const 'Sub' $P1504 = "95_1338064447.841" 
    capture_lex $P1504
    .const 'Sub' $P1499 = "93_1338064447.841" 
    capture_lex $P1499
    .lex unicode:"$\x{a2}", $P1497
    .local string rx367_tgt
    .local int rx367_pos
    .local int rx367_off
    .local int rx367_eos
    .local int rx367_rep
    .local pmc rx367_cur
    .local pmc rx367_curclass
    .local pmc rx367_bstack
    .local pmc rx367_cstack
    (rx367_cur, rx367_tgt, rx367_pos, rx367_curclass, rx367_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx367_cur
    length rx367_eos, rx367_tgt
    eq $I19, 1, rx367_restart
    repr_get_attr_int $I11, self, rx367_curclass, "$!from"
    ne $I11, -1, rxscan368_done
    goto rxscan368_scan
  rxscan368_loop:
    inc rx367_pos
    gt rx367_pos, rx367_eos, rx367_fail
    repr_bind_attr_int rx367_cur, rx367_curclass, "$!from", rx367_pos
  rxscan368_scan:
    nqp_rxmark rx367_bstack, rxscan368_loop, rx367_pos, 0
  rxscan368_done:
  alt369_0:
    nqp_rxmark rx367_bstack, alt369_1, rx367_pos, 0
  # rx rxquantr370 ** 0..-1
    nqp_rxmark rx367_bstack, rxquantr370_done, rx367_pos, 0
  rxquantr370_loop:
    ge rx367_pos, rx367_eos, rx367_fail
    is_cclass $I11, .CCLASS_WHITESPACE, rx367_tgt, rx367_pos
    unless $I11, rx367_fail
    add rx367_pos, 1
    nqp_rxpeek $I19, rx367_bstack, rxquantr370_done
    inc $I19
    inc $I19
    set rx367_rep, rx367_bstack[$I19]
    nqp_rxcommit rx367_bstack, rxquantr370_done
    inc rx367_rep
    nqp_rxmark rx367_bstack, rxquantr370_done, rx367_pos, rx367_rep
    goto rxquantr370_loop
  rxquantr370_done:
    add $I11, rx367_pos, 1
    gt $I11, rx367_eos, rx367_fail
    substr $S10, rx367_tgt, rx367_pos, 1
    ne $S10, ucs4:"-", rx367_fail
    add rx367_pos, 1
    .const 'Sub' $P1499 = "93_1338064447.841" 
    capture_lex $P1499
    repr_bind_attr_int rx367_cur, rx367_curclass, "$!pos", rx367_pos
    $P11 = rx367_cur."before"($P1499)
    repr_get_attr_int $I11, $P11, rx367_curclass, "$!pos"
    ge $I11, 0, rx367_fail
    repr_bind_attr_int rx367_cur, rx367_curclass, "$!pos", rx367_pos
    $P11 = rx367_cur."obs"("- as character range", ".. for range, for explicit - in character class, escape it or place as last thing")
    repr_get_attr_int $I11, $P11, rx367_curclass, "$!pos"
    lt $I11, 0, rx367_fail
    repr_get_attr_int rx367_pos, $P11, rx367_curclass, "$!pos"
    goto alt369_end
  alt369_1:
  # rx rxquantr375 ** 0..-1
    nqp_rxmark rx367_bstack, rxquantr375_done, rx367_pos, 0
  rxquantr375_loop:
    ge rx367_pos, rx367_eos, rx367_fail
    is_cclass $I11, .CCLASS_WHITESPACE, rx367_tgt, rx367_pos
    unless $I11, rx367_fail
    add rx367_pos, 1
    nqp_rxpeek $I19, rx367_bstack, rxquantr375_done
    inc $I19
    inc $I19
    set rx367_rep, rx367_bstack[$I19]
    nqp_rxcommit rx367_bstack, rxquantr375_done
    inc rx367_rep
    nqp_rxmark rx367_bstack, rxquantr375_done, rx367_pos, rx367_rep
    goto rxquantr375_loop
  rxquantr375_done:
    .const 'Sub' $P1504 = "95_1338064447.841" 
    capture_lex $P1504
    repr_bind_attr_int rx367_cur, rx367_curclass, "$!pos", rx367_pos
    $P11 = rx367_cur.$P1504()
    repr_get_attr_int $I11, $P11, rx367_curclass, "$!pos"
    lt $I11, 0, rx367_fail
    nqp_rxmark rx367_bstack, rxsubrule384_pass, -1, 0
  rxsubrule384_pass:
    rx367_cstack = rx367_cur."!cursor_capture"($P11, 0)
    repr_get_attr_int rx367_pos, $P11, rx367_curclass, "$!pos"
  # rx rxquantr385 ** 0..1
    nqp_rxmark rx367_bstack, rxquantr385_done, rx367_pos, 0
  rxquantr385_loop:
  # rx rxquantr386 ** 0..-1
    nqp_rxmark rx367_bstack, rxquantr386_done, rx367_pos, 0
  rxquantr386_loop:
    ge rx367_pos, rx367_eos, rx367_fail
    is_cclass $I11, .CCLASS_WHITESPACE, rx367_tgt, rx367_pos
    unless $I11, rx367_fail
    add rx367_pos, 1
    nqp_rxpeek $I19, rx367_bstack, rxquantr386_done
    inc $I19
    inc $I19
    set rx367_rep, rx367_bstack[$I19]
    nqp_rxcommit rx367_bstack, rxquantr386_done
    inc rx367_rep
    nqp_rxmark rx367_bstack, rxquantr386_done, rx367_pos, rx367_rep
    goto rxquantr386_loop
  rxquantr386_done:
    add $I11, rx367_pos, 2
    gt $I11, rx367_eos, rx367_fail
    substr $S10, rx367_tgt, rx367_pos, 2
    ne $S10, ucs4:"..", rx367_fail
    add rx367_pos, 2
  # rx rxquantr387 ** 0..-1
    nqp_rxmark rx367_bstack, rxquantr387_done, rx367_pos, 0
  rxquantr387_loop:
    ge rx367_pos, rx367_eos, rx367_fail
    is_cclass $I11, .CCLASS_WHITESPACE, rx367_tgt, rx367_pos
    unless $I11, rx367_fail
    add rx367_pos, 1
    nqp_rxpeek $I19, rx367_bstack, rxquantr387_done
    inc $I19
    inc $I19
    set rx367_rep, rx367_bstack[$I19]
    nqp_rxcommit rx367_bstack, rxquantr387_done
    inc rx367_rep
    nqp_rxmark rx367_bstack, rxquantr387_done, rx367_pos, rx367_rep
    goto rxquantr387_loop
  rxquantr387_done:
    .const 'Sub' $P1512 = "97_1338064447.841" 
    capture_lex $P1512
    repr_bind_attr_int rx367_cur, rx367_curclass, "$!pos", rx367_pos
    $P11 = rx367_cur.$P1512()
    repr_get_attr_int $I11, $P11, rx367_curclass, "$!pos"
    lt $I11, 0, rx367_fail
    nqp_rxmark rx367_bstack, rxsubrule396_pass, -1, 0
  rxsubrule396_pass:
    rx367_cstack = rx367_cur."!cursor_capture"($P11, "1")
    repr_get_attr_int rx367_pos, $P11, rx367_curclass, "$!pos"
    nqp_rxpeek $I19, rx367_bstack, rxquantr385_done
    inc $I19
    inc $I19
    set rx367_rep, rx367_bstack[$I19]
    nqp_rxcommit rx367_bstack, rxquantr385_done
    inc rx367_rep
  rxquantr385_done:
  alt369_end:
    rx367_cur."!cursor_pass"(rx367_pos, 'backtrack'=>1)
    .return (rx367_cur)
  rx367_restart:
    repr_get_attr_obj rx367_cstack, rx367_cur, rx367_curclass, "$!cstack"
  rx367_fail:
    unless rx367_bstack, rx367_done
    pop $I19, rx367_bstack
    if_null rx367_cstack, rx367_cstack_done
    unless rx367_cstack, rx367_cstack_done
    dec $I19
    set $P11, rx367_cstack[$I19]
  rx367_cstack_done:
    pop rx367_rep, rx367_bstack
    pop rx367_pos, rx367_bstack
    pop $I19, rx367_bstack
    lt rx367_pos, -1, rx367_done
    lt rx367_pos, 0, rx367_fail
    eq $I19, 0, rx367_fail
    if_null rx367_cstack, rx367_jump
    elements $I18, rx367_bstack
    le $I18, 0, rx367_cut
    dec $I18
    set $I18, rx367_bstack[$I18]
  rx367_cut:
    assign rx367_cstack, $I18
  rx367_jump:
    jump $I19
  rx367_done:
    rx367_cur."!cursor_fail"()
    .return (rx367_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "98_1338064447.841_caps"  :subid("319_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 204
    new $P103, "Hash"
    set $P103["0"], 1
    set $P103["1"], 3
    .return ($P103)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "_block1498"  :anon :subid("93_1338064447.841") :method :outer("98_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 204
    .lex unicode:"$\x{a2}", $P1502
    .local string rx371_tgt
    .local int rx371_pos
    .local int rx371_off
    .local int rx371_eos
    .local int rx371_rep
    .local pmc rx371_cur
    .local pmc rx371_curclass
    .local pmc rx371_bstack
    .local pmc rx371_cstack
    (rx371_cur, rx371_tgt, rx371_pos, rx371_curclass, rx371_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx371_cur
    length rx371_eos, rx371_tgt
    eq $I19, 1, rx371_restart
    repr_get_attr_int $I11, self, rx371_curclass, "$!from"
    ne $I11, -1, rxscan372_done
    goto rxscan372_scan
  rxscan372_loop:
    inc rx371_pos
    gt rx371_pos, rx371_eos, rx371_fail
    repr_bind_attr_int rx371_cur, rx371_curclass, "$!from", rx371_pos
  rxscan372_scan:
    nqp_rxmark rx371_bstack, rxscan372_loop, rx371_pos, 0
  rxscan372_done:
  # rx rxquantr373 ** 0..-1
    nqp_rxmark rx371_bstack, rxquantr373_done, rx371_pos, 0
  rxquantr373_loop:
    ge rx371_pos, rx371_eos, rx371_fail
    is_cclass $I11, .CCLASS_WHITESPACE, rx371_tgt, rx371_pos
    unless $I11, rx371_fail
    add rx371_pos, 1
    nqp_rxpeek $I19, rx371_bstack, rxquantr373_done
    inc $I19
    inc $I19
    set rx371_rep, rx371_bstack[$I19]
    nqp_rxcommit rx371_bstack, rxquantr373_done
    inc rx371_rep
    nqp_rxmark rx371_bstack, rxquantr373_done, rx371_pos, rx371_rep
    goto rxquantr373_loop
  rxquantr373_done:
    add $I11, rx371_pos, 1
    gt $I11, rx371_eos, rx371_fail
    substr $S10, rx371_tgt, rx371_pos, 1
    ne $S10, ucs4:"]", rx371_fail
    add rx371_pos, 1
    rx371_cur."!cursor_pass"(rx371_pos, 'backtrack'=>1)
    .return (rx371_cur)
  rx371_restart:
    repr_get_attr_obj rx371_cstack, rx371_cur, rx371_curclass, "$!cstack"
  rx371_fail:
    unless rx371_bstack, rx371_done
    pop $I19, rx371_bstack
    if_null rx371_cstack, rx371_cstack_done
    unless rx371_cstack, rx371_cstack_done
    dec $I19
    set $P11, rx371_cstack[$I19]
  rx371_cstack_done:
    pop rx371_rep, rx371_bstack
    pop rx371_pos, rx371_bstack
    pop $I19, rx371_bstack
    lt rx371_pos, -1, rx371_done
    lt rx371_pos, 0, rx371_fail
    eq $I19, 0, rx371_fail
    if_null rx371_cstack, rx371_jump
    elements $I18, rx371_bstack
    le $I18, 0, rx371_cut
    dec $I18
    set $I18, rx371_bstack[$I18]
  rx371_cut:
    assign rx371_cstack, $I18
  rx371_jump:
    jump $I19
  rx371_done:
    rx371_cur."!cursor_fail"()
    .return (rx371_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "93_1338064447.841_caps"  :subid("320_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 204
    new $P103, "Hash"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "93_1338064447.841_nfa"  :subid("321_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 204
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 4
    push $P104, 32
    push $P104, 1
    push $P104, 1
    push $P104, 0
    push $P104, 2
    new $P105, "ResizablePMCArray"
    push $P105, 2
    push $P105, 93
    push $P105, 0
    new $P106, "ResizablePMCArray"
    push $P106, $P103
    push $P106, $P104
    push $P106, $P105
    .return ($P106)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "_block1503"  :anon :subid("95_1338064447.841") :method :outer("98_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 204
    .const 'Sub' $P1508 = "94_1338064447.841" 
    capture_lex $P1508
    .lex unicode:"$\x{a2}", $P1506
    .local string rx376_tgt
    .local int rx376_pos
    .local int rx376_off
    .local int rx376_eos
    .local int rx376_rep
    .local pmc rx376_cur
    .local pmc rx376_curclass
    .local pmc rx376_bstack
    .local pmc rx376_cstack
    (rx376_cur, rx376_tgt, rx376_pos, rx376_curclass, rx376_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx376_cur
    length rx376_eos, rx376_tgt
    eq $I19, 1, rx376_restart
    repr_get_attr_int $I11, self, rx376_curclass, "$!from"
    ne $I11, -1, rxscan377_done
    goto rxscan377_scan
  rxscan377_loop:
    inc rx376_pos
    gt rx376_pos, rx376_eos, rx376_fail
    repr_bind_attr_int rx376_cur, rx376_curclass, "$!from", rx376_pos
  rxscan377_scan:
    nqp_rxmark rx376_bstack, rxscan377_loop, rx376_pos, 0
  rxscan377_done:
  alt378_0:
    nqp_rxmark rx376_bstack, alt378_1, rx376_pos, 0
    add $I11, rx376_pos, 1
    gt $I11, rx376_eos, rx376_fail
    substr $S10, rx376_tgt, rx376_pos, 1
    ne $S10, ucs4:"\\", rx376_fail
    add rx376_pos, 1
    repr_bind_attr_int rx376_cur, rx376_curclass, "$!pos", rx376_pos
    $P11 = rx376_cur."backslash"()
    repr_get_attr_int $I11, $P11, rx376_curclass, "$!pos"
    lt $I11, 0, rx376_fail
    nqp_rxmark rx376_bstack, rxsubrule379_pass, -1, 0
  rxsubrule379_pass:
    rx376_cstack = rx376_cur."!cursor_capture"($P11, "backslash")
    repr_get_attr_int rx376_pos, $P11, rx376_curclass, "$!pos"
    goto alt378_end
  alt378_1:
    .const 'Sub' $P1508 = "94_1338064447.841" 
    capture_lex $P1508
    repr_bind_attr_int rx376_cur, rx376_curclass, "$!pos", rx376_pos
    $P11 = rx376_cur.$P1508()
    repr_get_attr_int $I11, $P11, rx376_curclass, "$!pos"
    lt $I11, 0, rx376_fail
    nqp_rxmark rx376_bstack, rxsubrule383_pass, -1, 0
  rxsubrule383_pass:
    rx376_cstack = rx376_cur."!cursor_capture"($P11, 0)
    repr_get_attr_int rx376_pos, $P11, rx376_curclass, "$!pos"
  alt378_end:
    rx376_cur."!cursor_pass"(rx376_pos, 'backtrack'=>1)
    .return (rx376_cur)
  rx376_restart:
    repr_get_attr_obj rx376_cstack, rx376_cur, rx376_curclass, "$!cstack"
  rx376_fail:
    unless rx376_bstack, rx376_done
    pop $I19, rx376_bstack
    if_null rx376_cstack, rx376_cstack_done
    unless rx376_cstack, rx376_cstack_done
    dec $I19
    set $P11, rx376_cstack[$I19]
  rx376_cstack_done:
    pop rx376_rep, rx376_bstack
    pop rx376_pos, rx376_bstack
    pop $I19, rx376_bstack
    lt rx376_pos, -1, rx376_done
    lt rx376_pos, 0, rx376_fail
    eq $I19, 0, rx376_fail
    if_null rx376_cstack, rx376_jump
    elements $I18, rx376_bstack
    le $I18, 0, rx376_cut
    dec $I18
    set $I18, rx376_bstack[$I18]
  rx376_cut:
    assign rx376_cstack, $I18
  rx376_jump:
    jump $I19
  rx376_done:
    rx376_cur."!cursor_fail"()
    .return (rx376_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "95_1338064447.841_caps"  :subid("322_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 204
    new $P103, "Hash"
    set $P103["backslash"], 0
    set $P103["0"], 1
    .return ($P103)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "_block1507"  :anon :subid("94_1338064447.841") :method :outer("95_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 204
    .lex unicode:"$\x{a2}", $P1510
    .local string rx380_tgt
    .local int rx380_pos
    .local int rx380_off
    .local int rx380_eos
    .local int rx380_rep
    .local pmc rx380_cur
    .local pmc rx380_curclass
    .local pmc rx380_bstack
    .local pmc rx380_cstack
    (rx380_cur, rx380_tgt, rx380_pos, rx380_curclass, rx380_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx380_cur
    length rx380_eos, rx380_tgt
    eq $I19, 1, rx380_restart
    repr_get_attr_int $I11, self, rx380_curclass, "$!from"
    ne $I11, -1, rxscan381_done
    goto rxscan381_scan
  rxscan381_loop:
    inc rx380_pos
    gt rx380_pos, rx380_eos, rx380_fail
    repr_bind_attr_int rx380_cur, rx380_curclass, "$!from", rx380_pos
  rxscan381_scan:
    nqp_rxmark rx380_bstack, rxscan381_loop, rx380_pos, 0
  rxscan381_done:
    nqp_rxmark rx380_bstack, rxconj382_fail, rx380_pos, 0
    goto rxconj382_first
  rxconj382_fail:
    goto rx380_fail
  rxconj382_first:
    add $I11, rx380_pos, 1
    gt $I11, rx380_eos, rx380_fail
    substr $S10, rx380_tgt, rx380_pos, 1
    eq $S10, ucs4:"]", rx380_fail
    add rx380_pos, 1
    nqp_rxpeek $I19, rx380_bstack, rxconj382_fail
    inc $I19
    set $I11, rx380_bstack[$I19]
    nqp_rxmark rx380_bstack, rxconj382_fail, $I11, rx380_pos
    set rx380_pos, $I11
    add $I11, rx380_pos, 1
    gt $I11, rx380_eos, rx380_fail
    substr $S10, rx380_tgt, rx380_pos, 1
    eq $S10, ucs4:"\\", rx380_fail
    add rx380_pos, 1
    nqp_rxpeek $I19, rx380_bstack, rxconj382_fail
    inc $I19
    set $I11, rx380_bstack[$I19]
    inc $I19
    set $I12, rx380_bstack[$I19]
    ne rx380_pos, $I12, rx380_fail
    set rx380_pos, $I11
    ge rx380_pos, rx380_eos, rx380_fail
    add rx380_pos, 1
    rx380_cur."!cursor_pass"(rx380_pos, 'backtrack'=>1)
    .return (rx380_cur)
  rx380_restart:
    repr_get_attr_obj rx380_cstack, rx380_cur, rx380_curclass, "$!cstack"
  rx380_fail:
    unless rx380_bstack, rx380_done
    pop $I19, rx380_bstack
    if_null rx380_cstack, rx380_cstack_done
    unless rx380_cstack, rx380_cstack_done
    dec $I19
    set $P11, rx380_cstack[$I19]
  rx380_cstack_done:
    pop rx380_rep, rx380_bstack
    pop rx380_pos, rx380_bstack
    pop $I19, rx380_bstack
    lt rx380_pos, -1, rx380_done
    lt rx380_pos, 0, rx380_fail
    eq $I19, 0, rx380_fail
    if_null rx380_cstack, rx380_jump
    elements $I18, rx380_bstack
    le $I18, 0, rx380_cut
    dec $I18
    set $I18, rx380_bstack[$I18]
  rx380_cut:
    assign rx380_cstack, $I18
  rx380_jump:
    jump $I19
  rx380_done:
    rx380_cur."!cursor_fail"()
    .return (rx380_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "94_1338064447.841_caps"  :subid("323_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 204
    new $P103, "Hash"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "_block1511"  :anon :subid("97_1338064447.841") :method :outer("98_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 204
    .const 'Sub' $P1516 = "96_1338064447.841" 
    capture_lex $P1516
    .lex unicode:"$\x{a2}", $P1514
    .local string rx388_tgt
    .local int rx388_pos
    .local int rx388_off
    .local int rx388_eos
    .local int rx388_rep
    .local pmc rx388_cur
    .local pmc rx388_curclass
    .local pmc rx388_bstack
    .local pmc rx388_cstack
    (rx388_cur, rx388_tgt, rx388_pos, rx388_curclass, rx388_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx388_cur
    length rx388_eos, rx388_tgt
    eq $I19, 1, rx388_restart
    repr_get_attr_int $I11, self, rx388_curclass, "$!from"
    ne $I11, -1, rxscan389_done
    goto rxscan389_scan
  rxscan389_loop:
    inc rx388_pos
    gt rx388_pos, rx388_eos, rx388_fail
    repr_bind_attr_int rx388_cur, rx388_curclass, "$!from", rx388_pos
  rxscan389_scan:
    nqp_rxmark rx388_bstack, rxscan389_loop, rx388_pos, 0
  rxscan389_done:
  alt390_0:
    nqp_rxmark rx388_bstack, alt390_1, rx388_pos, 0
    add $I11, rx388_pos, 1
    gt $I11, rx388_eos, rx388_fail
    substr $S10, rx388_tgt, rx388_pos, 1
    ne $S10, ucs4:"\\", rx388_fail
    add rx388_pos, 1
    repr_bind_attr_int rx388_cur, rx388_curclass, "$!pos", rx388_pos
    $P11 = rx388_cur."backslash"()
    repr_get_attr_int $I11, $P11, rx388_curclass, "$!pos"
    lt $I11, 0, rx388_fail
    nqp_rxmark rx388_bstack, rxsubrule391_pass, -1, 0
  rxsubrule391_pass:
    rx388_cstack = rx388_cur."!cursor_capture"($P11, "backslash")
    repr_get_attr_int rx388_pos, $P11, rx388_curclass, "$!pos"
    goto alt390_end
  alt390_1:
    .const 'Sub' $P1516 = "96_1338064447.841" 
    capture_lex $P1516
    repr_bind_attr_int rx388_cur, rx388_curclass, "$!pos", rx388_pos
    $P11 = rx388_cur.$P1516()
    repr_get_attr_int $I11, $P11, rx388_curclass, "$!pos"
    lt $I11, 0, rx388_fail
    nqp_rxmark rx388_bstack, rxsubrule395_pass, -1, 0
  rxsubrule395_pass:
    rx388_cstack = rx388_cur."!cursor_capture"($P11, 0)
    repr_get_attr_int rx388_pos, $P11, rx388_curclass, "$!pos"
  alt390_end:
    rx388_cur."!cursor_pass"(rx388_pos, 'backtrack'=>1)
    .return (rx388_cur)
  rx388_restart:
    repr_get_attr_obj rx388_cstack, rx388_cur, rx388_curclass, "$!cstack"
  rx388_fail:
    unless rx388_bstack, rx388_done
    pop $I19, rx388_bstack
    if_null rx388_cstack, rx388_cstack_done
    unless rx388_cstack, rx388_cstack_done
    dec $I19
    set $P11, rx388_cstack[$I19]
  rx388_cstack_done:
    pop rx388_rep, rx388_bstack
    pop rx388_pos, rx388_bstack
    pop $I19, rx388_bstack
    lt rx388_pos, -1, rx388_done
    lt rx388_pos, 0, rx388_fail
    eq $I19, 0, rx388_fail
    if_null rx388_cstack, rx388_jump
    elements $I18, rx388_bstack
    le $I18, 0, rx388_cut
    dec $I18
    set $I18, rx388_bstack[$I18]
  rx388_cut:
    assign rx388_cstack, $I18
  rx388_jump:
    jump $I19
  rx388_done:
    rx388_cur."!cursor_fail"()
    .return (rx388_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "97_1338064447.841_caps"  :subid("324_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 204
    new $P103, "Hash"
    set $P103["backslash"], 0
    set $P103["0"], 1
    .return ($P103)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "_block1515"  :anon :subid("96_1338064447.841") :method :outer("97_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 204
    .lex unicode:"$\x{a2}", $P1518
    .local string rx392_tgt
    .local int rx392_pos
    .local int rx392_off
    .local int rx392_eos
    .local int rx392_rep
    .local pmc rx392_cur
    .local pmc rx392_curclass
    .local pmc rx392_bstack
    .local pmc rx392_cstack
    (rx392_cur, rx392_tgt, rx392_pos, rx392_curclass, rx392_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx392_cur
    length rx392_eos, rx392_tgt
    eq $I19, 1, rx392_restart
    repr_get_attr_int $I11, self, rx392_curclass, "$!from"
    ne $I11, -1, rxscan393_done
    goto rxscan393_scan
  rxscan393_loop:
    inc rx392_pos
    gt rx392_pos, rx392_eos, rx392_fail
    repr_bind_attr_int rx392_cur, rx392_curclass, "$!from", rx392_pos
  rxscan393_scan:
    nqp_rxmark rx392_bstack, rxscan393_loop, rx392_pos, 0
  rxscan393_done:
    nqp_rxmark rx392_bstack, rxconj394_fail, rx392_pos, 0
    goto rxconj394_first
  rxconj394_fail:
    goto rx392_fail
  rxconj394_first:
    add $I11, rx392_pos, 1
    gt $I11, rx392_eos, rx392_fail
    substr $S10, rx392_tgt, rx392_pos, 1
    eq $S10, ucs4:"]", rx392_fail
    add rx392_pos, 1
    nqp_rxpeek $I19, rx392_bstack, rxconj394_fail
    inc $I19
    set $I11, rx392_bstack[$I19]
    nqp_rxmark rx392_bstack, rxconj394_fail, $I11, rx392_pos
    set rx392_pos, $I11
    add $I11, rx392_pos, 1
    gt $I11, rx392_eos, rx392_fail
    substr $S10, rx392_tgt, rx392_pos, 1
    eq $S10, ucs4:"\\", rx392_fail
    add rx392_pos, 1
    nqp_rxpeek $I19, rx392_bstack, rxconj394_fail
    inc $I19
    set $I11, rx392_bstack[$I19]
    inc $I19
    set $I12, rx392_bstack[$I19]
    ne rx392_pos, $I12, rx392_fail
    set rx392_pos, $I11
    ge rx392_pos, rx392_eos, rx392_fail
    add rx392_pos, 1
    rx392_cur."!cursor_pass"(rx392_pos, 'backtrack'=>1)
    .return (rx392_cur)
  rx392_restart:
    repr_get_attr_obj rx392_cstack, rx392_cur, rx392_curclass, "$!cstack"
  rx392_fail:
    unless rx392_bstack, rx392_done
    pop $I19, rx392_bstack
    if_null rx392_cstack, rx392_cstack_done
    unless rx392_cstack, rx392_cstack_done
    dec $I19
    set $P11, rx392_cstack[$I19]
  rx392_cstack_done:
    pop rx392_rep, rx392_bstack
    pop rx392_pos, rx392_bstack
    pop $I19, rx392_bstack
    lt rx392_pos, -1, rx392_done
    lt rx392_pos, 0, rx392_fail
    eq $I19, 0, rx392_fail
    if_null rx392_cstack, rx392_jump
    elements $I18, rx392_bstack
    le $I18, 0, rx392_cut
    dec $I18
    set $I18, rx392_bstack[$I18]
  rx392_cut:
    assign rx392_cstack, $I18
  rx392_jump:
    jump $I19
  rx392_done:
    rx392_cur."!cursor_fail"()
    .return (rx392_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "96_1338064447.841_caps"  :subid("325_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 204
    new $P103, "Hash"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "mod_internal"  :subid("101_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1520
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 223
    .const 'Sub' $P1526 = "100_1338064447.841" 
    capture_lex $P1526
    .lex "self", param_1520
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1521
    .lex "$/", $P1522
    .local string rx408_tgt
    .local int rx408_pos
    .local int rx408_off
    .local int rx408_eos
    .local int rx408_rep
    .local pmc rx408_cur
    .local pmc rx408_curclass
    .local pmc rx408_bstack
    .local pmc rx408_cstack
    (rx408_cur, rx408_tgt, rx408_pos, rx408_curclass, rx408_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx408_cur
    length rx408_eos, rx408_tgt
    eq $I19, 1, rx408_restart
    repr_get_attr_int $I11, self, rx408_curclass, "$!from"
    ne $I11, -1, rxscan409_done
    goto rxscan409_scan
  rxscan409_loop:
    inc rx408_pos
    gt rx408_pos, rx408_eos, rx408_fail
    repr_bind_attr_int rx408_cur, rx408_curclass, "$!from", rx408_pos
  rxscan409_scan:
    nqp_rxmark rx408_bstack, rxscan409_loop, rx408_pos, 0
  rxscan409_done:
  alt410_0:
    nqp_rxmark rx408_bstack, alt410_1, rx408_pos, 0
    add $I11, rx408_pos, 1
    gt $I11, rx408_eos, rx408_fail
    substr $S10, rx408_tgt, rx408_pos, 1
    ne $S10, ucs4:":", rx408_fail
    add rx408_pos, 1
  # rx rxquantr411 ** 1..1
    nqp_rxmark rx408_bstack, rxquantr411_done, -1, 0
  rxquantr411_loop:
    .const 'Sub' $P1526 = "100_1338064447.841" 
    capture_lex $P1526
    repr_bind_attr_int rx408_cur, rx408_curclass, "$!pos", rx408_pos
    $P11 = rx408_cur.$P1526()
    repr_get_attr_int $I11, $P11, rx408_curclass, "$!pos"
    lt $I11, 0, rx408_fail
    goto rxsubrule416_pass
  rxsubrule416_back:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx408_curclass, "$!pos"
    lt $I11, 0, rx408_fail
  rxsubrule416_pass:
    rx408_cstack = rx408_cur."!cursor_capture"($P11, "n")
    set_addr $I11, rxsubrule416_back
    push rx408_bstack, $I11
    push rx408_bstack, 0
    push rx408_bstack, rx408_pos
    elements $I11, rx408_cstack
    push rx408_bstack, $I11
    repr_get_attr_int rx408_pos, $P11, rx408_curclass, "$!pos"
    nqp_rxpeek $I19, rx408_bstack, rxquantr411_done
    inc $I19
    inc $I19
    set rx408_rep, rx408_bstack[$I19]
    nqp_rxcommit rx408_bstack, rxquantr411_done
    inc rx408_rep
  rxquantr411_done:
    repr_bind_attr_int rx408_cur, rx408_curclass, "$!pos", rx408_pos
    $P11 = rx408_cur."mod_ident"()
    repr_get_attr_int $I11, $P11, rx408_curclass, "$!pos"
    lt $I11, 0, rx408_fail
    nqp_rxmark rx408_bstack, rxsubrule417_pass, -1, 0
  rxsubrule417_pass:
    rx408_cstack = rx408_cur."!cursor_capture"($P11, "mod_ident")
    repr_get_attr_int rx408_pos, $P11, rx408_curclass, "$!pos"
    le rx408_pos, 0, rx408_fail
    is_cclass $I11, .CCLASS_WORD, rx408_tgt, rx408_pos
    if $I11, rx408_fail
    sub $I11, rx408_pos, 1
    is_cclass $I11, .CCLASS_WORD, rx408_tgt, $I11
    unless $I11, rx408_fail
    goto alt410_end
  alt410_1:
    add $I11, rx408_pos, 1
    gt $I11, rx408_eos, rx408_fail
    substr $S10, rx408_tgt, rx408_pos, 1
    ne $S10, ucs4:":", rx408_fail
    add rx408_pos, 1
    repr_bind_attr_int rx408_cur, rx408_curclass, "$!pos", rx408_pos
    $P11 = rx408_cur."mod_ident"()
    repr_get_attr_int $I11, $P11, rx408_curclass, "$!pos"
    lt $I11, 0, rx408_fail
    nqp_rxmark rx408_bstack, rxsubrule419_pass, -1, 0
  rxsubrule419_pass:
    rx408_cstack = rx408_cur."!cursor_capture"($P11, "mod_ident")
    repr_get_attr_int rx408_pos, $P11, rx408_curclass, "$!pos"
  # rx rxquantr420 ** 0..1
    nqp_rxmark rx408_bstack, rxquantr420_done, rx408_pos, 0
  rxquantr420_loop:
    add $I11, rx408_pos, 1
    gt $I11, rx408_eos, rx408_fail
    substr $S10, rx408_tgt, rx408_pos, 1
    ne $S10, ucs4:"(", rx408_fail
    add rx408_pos, 1
    nqp_rxmark rx408_bstack, rxcap421_fail, rx408_pos, 0
  # rx rxquantr422 ** 1..-1
    nqp_rxmark rx408_bstack, rxquantr422_done, -1, 0
  rxquantr422_loop:
    ge rx408_pos, rx408_eos, rx408_fail
    is_cclass $I11, .CCLASS_NUMERIC, rx408_tgt, rx408_pos
    unless $I11, rx408_fail
    add rx408_pos, 1
    nqp_rxpeek $I19, rx408_bstack, rxquantr422_done
    inc $I19
    inc $I19
    set rx408_rep, rx408_bstack[$I19]
    nqp_rxcommit rx408_bstack, rxquantr422_done
    inc rx408_rep
    nqp_rxmark rx408_bstack, rxquantr422_done, rx408_pos, rx408_rep
    goto rxquantr422_loop
  rxquantr422_done:
    nqp_rxpeek $I19, rx408_bstack, rxcap421_fail
    inc $I19
    set $I11, rx408_bstack[$I19]
    $P11 = rx408_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx408_pos)
    rx408_cstack = rx408_cur."!cursor_capture"($P11, "n")
    goto rxcap421_done
  rxcap421_fail:
    goto rx408_fail
  rxcap421_done:
    add $I11, rx408_pos, 1
    gt $I11, rx408_eos, rx408_fail
    substr $S10, rx408_tgt, rx408_pos, 1
    ne $S10, ucs4:")", rx408_fail
    add rx408_pos, 1
    nqp_rxpeek $I19, rx408_bstack, rxquantr420_done
    inc $I19
    inc $I19
    set rx408_rep, rx408_bstack[$I19]
    nqp_rxcommit rx408_bstack, rxquantr420_done
    inc rx408_rep
  rxquantr420_done:
  alt410_end:
    rx408_cur."!cursor_pass"(rx408_pos, "mod_internal", 'backtrack'=>1)
    .return (rx408_cur)
  rx408_restart:
    repr_get_attr_obj rx408_cstack, rx408_cur, rx408_curclass, "$!cstack"
  rx408_fail:
    unless rx408_bstack, rx408_done
    pop $I19, rx408_bstack
    if_null rx408_cstack, rx408_cstack_done
    unless rx408_cstack, rx408_cstack_done
    dec $I19
    set $P11, rx408_cstack[$I19]
  rx408_cstack_done:
    pop rx408_rep, rx408_bstack
    pop rx408_pos, rx408_bstack
    pop $I19, rx408_bstack
    lt rx408_pos, -1, rx408_done
    lt rx408_pos, 0, rx408_fail
    eq $I19, 0, rx408_fail
    if_null rx408_cstack, rx408_jump
    elements $I18, rx408_bstack
    le $I18, 0, rx408_cut
    dec $I18
    set $I18, rx408_bstack[$I18]
  rx408_cut:
    assign rx408_cstack, $I18
  rx408_jump:
    jump $I19
  rx408_done:
    rx408_cur."!cursor_fail"()
    .return (rx408_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "101_1338064447.841_caps"  :subid("326_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 223
    new $P103, "Hash"
    set $P103["n"], 2
    set $P103["mod_ident"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "101_1338064447.841_nfa"  :subid("327_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 223
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 2
    push $P104, 58
    push $P104, 2
    push $P104, 2
    push $P104, 58
    push $P104, 3
    new $P105, "ResizablePMCArray"
    push $P105, 0
    push $P105, 0
    push $P105, 0
    new $P106, "ResizablePMCArray"
    push $P106, 8
    push $P106, "mod_ident"
    push $P106, 4
    new $P107, "ResizablePMCArray"
    push $P107, 2
    push $P107, 40
    push $P107, 5
    push $P107, 1
    push $P107, 0
    push $P107, 0
    new $P108, "ResizablePMCArray"
    push $P108, 1
    push $P108, 0
    push $P108, 6
    new $P109, "ResizablePMCArray"
    push $P109, 4
    push $P109, 8
    push $P109, 7
    new $P110, "ResizablePMCArray"
    push $P110, 1
    push $P110, 0
    push $P110, 6
    push $P110, 1
    push $P110, 0
    push $P110, 8
    push $P110, 2
    push $P110, 41
    push $P110, 0
    new $P111, "ResizablePMCArray"
    new $P112, "ResizablePMCArray"
    push $P112, $P103
    push $P112, $P104
    push $P112, $P105
    push $P112, $P106
    push $P112, $P107
    push $P112, $P108
    push $P112, $P109
    push $P112, $P110
    push $P112, $P111
    .return ($P112)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "_block1525"  :anon :subid("100_1338064447.841") :method :outer("101_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 223
    .lex unicode:"$\x{a2}", $P1529
    .local string rx412_tgt
    .local int rx412_pos
    .local int rx412_off
    .local int rx412_eos
    .local int rx412_rep
    .local pmc rx412_cur
    .local pmc rx412_curclass
    .local pmc rx412_bstack
    .local pmc rx412_cstack
    (rx412_cur, rx412_tgt, rx412_pos, rx412_curclass, rx412_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx412_cur
    length rx412_eos, rx412_tgt
    eq $I19, 1, rx412_restart
    repr_get_attr_int $I11, self, rx412_curclass, "$!from"
    ne $I11, -1, rxscan413_done
    goto rxscan413_scan
  rxscan413_loop:
    inc rx412_pos
    gt rx412_pos, rx412_eos, rx412_fail
    repr_bind_attr_int rx412_cur, rx412_curclass, "$!from", rx412_pos
  rxscan413_scan:
    nqp_rxmark rx412_bstack, rxscan413_loop, rx412_pos, 0
  rxscan413_done:
  alt414_0:
    nqp_rxmark rx412_bstack, alt414_1, rx412_pos, 0
    add $I11, rx412_pos, 1
    gt $I11, rx412_eos, rx412_fail
    substr $S10, rx412_tgt, rx412_pos, 1
    ne $S10, ucs4:"!", rx412_fail
    add rx412_pos, 1
    goto alt414_end
  alt414_1:
  # rx rxquantr415 ** 1..-1
    nqp_rxmark rx412_bstack, rxquantr415_done, -1, 0
  rxquantr415_loop:
    ge rx412_pos, rx412_eos, rx412_fail
    is_cclass $I11, .CCLASS_NUMERIC, rx412_tgt, rx412_pos
    unless $I11, rx412_fail
    add rx412_pos, 1
    nqp_rxpeek $I19, rx412_bstack, rxquantr415_done
    inc $I19
    inc $I19
    set rx412_rep, rx412_bstack[$I19]
    nqp_rxcommit rx412_bstack, rxquantr415_done
    inc rx412_rep
    nqp_rxmark rx412_bstack, rxquantr415_done, rx412_pos, rx412_rep
    goto rxquantr415_loop
  rxquantr415_done:
  alt414_end:
    rx412_cur."!cursor_pass"(rx412_pos, 'backtrack'=>1)
    .return (rx412_cur)
  rx412_restart:
    repr_get_attr_obj rx412_cstack, rx412_cur, rx412_curclass, "$!cstack"
  rx412_fail:
    unless rx412_bstack, rx412_done
    pop $I19, rx412_bstack
    if_null rx412_cstack, rx412_cstack_done
    unless rx412_cstack, rx412_cstack_done
    dec $I19
    set $P11, rx412_cstack[$I19]
  rx412_cstack_done:
    pop rx412_rep, rx412_bstack
    pop rx412_pos, rx412_bstack
    pop $I19, rx412_bstack
    lt rx412_pos, -1, rx412_done
    lt rx412_pos, 0, rx412_fail
    eq $I19, 0, rx412_fail
    if_null rx412_cstack, rx412_jump
    elements $I18, rx412_bstack
    le $I18, 0, rx412_cut
    dec $I18
    set $I18, rx412_bstack[$I18]
  rx412_cut:
    assign rx412_cstack, $I18
  rx412_jump:
    jump $I19
  rx412_done:
    rx412_cur."!cursor_fail"()
    .return (rx412_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "100_1338064447.841_caps"  :subid("328_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 223
    new $P103, "Hash"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "100_1338064447.841_nfa"  :subid("329_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 223
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 2
    push $P104, 33
    push $P104, 0
    push $P104, 1
    push $P104, 0
    push $P104, 2
    new $P105, "ResizablePMCArray"
    push $P105, 4
    push $P105, 8
    push $P105, 3
    new $P106, "ResizablePMCArray"
    push $P106, 1
    push $P106, 0
    push $P106, 2
    push $P106, 1
    push $P106, 0
    push $P106, 0
    new $P107, "ResizablePMCArray"
    push $P107, $P103
    push $P107, $P104
    push $P107, $P105
    push $P107, $P106
    .return ($P107)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "mod_ident"  :subid("102_1338064447.841")
    .param pmc param_1531
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 230
    .lex "self", param_1531
    $P101 = param_1531."!protoregex"("mod_ident")
    .return ($P101)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<ignorecase>"  :subid("103_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1533
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 231
    .lex "self", param_1533
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1534
    .lex "$/", $P1535
    .local string rx423_tgt
    .local int rx423_pos
    .local int rx423_off
    .local int rx423_eos
    .local int rx423_rep
    .local pmc rx423_cur
    .local pmc rx423_curclass
    .local pmc rx423_bstack
    .local pmc rx423_cstack
    (rx423_cur, rx423_tgt, rx423_pos, rx423_curclass, rx423_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx423_cur
    length rx423_eos, rx423_tgt
    eq $I19, 1, rx423_restart
    repr_get_attr_int $I11, self, rx423_curclass, "$!from"
    ne $I11, -1, rxscan424_done
    goto rxscan424_scan
  rxscan424_loop:
    inc rx423_pos
    gt rx423_pos, rx423_eos, rx423_fail
    repr_bind_attr_int rx423_cur, rx423_curclass, "$!from", rx423_pos
  rxscan424_scan:
    nqp_rxmark rx423_bstack, rxscan424_loop, rx423_pos, 0
  rxscan424_done:
    nqp_rxmark rx423_bstack, rxcap425_fail, rx423_pos, 0
    add $I11, rx423_pos, 1
    gt $I11, rx423_eos, rx423_fail
    substr $S10, rx423_tgt, rx423_pos, 1
    ne $S10, ucs4:"i", rx423_fail
    add rx423_pos, 1
    nqp_rxpeek $I19, rx423_bstack, rxcap425_fail
    inc $I19
    set $I11, rx423_bstack[$I19]
    $P11 = rx423_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx423_pos)
    rx423_cstack = rx423_cur."!cursor_capture"($P11, "sym")
    goto rxcap425_done
  rxcap425_fail:
    goto rx423_fail
  rxcap425_done:
  # rx rxquantr426 ** 0..1
    nqp_rxmark rx423_bstack, rxquantr426_done, rx423_pos, 0
  rxquantr426_loop:
    add $I11, rx423_pos, 9
    gt $I11, rx423_eos, rx423_fail
    substr $S10, rx423_tgt, rx423_pos, 9
    ne $S10, ucs4:"gnorecase", rx423_fail
    add rx423_pos, 9
    nqp_rxpeek $I19, rx423_bstack, rxquantr426_done
    inc $I19
    inc $I19
    set rx423_rep, rx423_bstack[$I19]
    nqp_rxcommit rx423_bstack, rxquantr426_done
    inc rx423_rep
  rxquantr426_done:
    rx423_cur."!cursor_pass"(rx423_pos, "mod_ident:sym<ignorecase>", 'backtrack'=>1)
    .return (rx423_cur)
  rx423_restart:
    repr_get_attr_obj rx423_cstack, rx423_cur, rx423_curclass, "$!cstack"
  rx423_fail:
    unless rx423_bstack, rx423_done
    pop $I19, rx423_bstack
    if_null rx423_cstack, rx423_cstack_done
    unless rx423_cstack, rx423_cstack_done
    dec $I19
    set $P11, rx423_cstack[$I19]
  rx423_cstack_done:
    pop rx423_rep, rx423_bstack
    pop rx423_pos, rx423_bstack
    pop $I19, rx423_bstack
    lt rx423_pos, -1, rx423_done
    lt rx423_pos, 0, rx423_fail
    eq $I19, 0, rx423_fail
    if_null rx423_cstack, rx423_jump
    elements $I18, rx423_bstack
    le $I18, 0, rx423_cut
    dec $I18
    set $I18, rx423_bstack[$I18]
  rx423_cut:
    assign rx423_cstack, $I18
  rx423_jump:
    jump $I19
  rx423_done:
    rx423_cur."!cursor_fail"()
    .return (rx423_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "103_1338064447.841_caps"  :subid("330_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 231
    new $P103, "Hash"
    set $P103["sym"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "103_1338064447.841_nfa"  :subid("331_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 231
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 2
    push $P104, 105
    push $P104, 2
    new $P105, "ResizablePMCArray"
    push $P105, 2
    push $P105, 103
    push $P105, 3
    push $P105, 1
    push $P105, 0
    push $P105, 0
    new $P106, "ResizablePMCArray"
    push $P106, 2
    push $P106, 110
    push $P106, 4
    new $P107, "ResizablePMCArray"
    push $P107, 2
    push $P107, 111
    push $P107, 5
    new $P108, "ResizablePMCArray"
    push $P108, 2
    push $P108, 114
    push $P108, 6
    new $P109, "ResizablePMCArray"
    push $P109, 2
    push $P109, 101
    push $P109, 7
    new $P110, "ResizablePMCArray"
    push $P110, 2
    push $P110, 99
    push $P110, 8
    new $P111, "ResizablePMCArray"
    push $P111, 2
    push $P111, 97
    push $P111, 9
    new $P112, "ResizablePMCArray"
    push $P112, 2
    push $P112, 115
    push $P112, 10
    new $P113, "ResizablePMCArray"
    push $P113, 2
    push $P113, 101
    push $P113, 0
    new $P114, "ResizablePMCArray"
    push $P114, $P103
    push $P114, $P104
    push $P114, $P105
    push $P114, $P106
    push $P114, $P107
    push $P114, $P108
    push $P114, $P109
    push $P114, $P110
    push $P114, $P111
    push $P114, $P112
    push $P114, $P113
    .return ($P114)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<ratchet>"  :subid("104_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1539
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 232
    .lex "self", param_1539
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1540
    .lex "$/", $P1541
    .local string rx427_tgt
    .local int rx427_pos
    .local int rx427_off
    .local int rx427_eos
    .local int rx427_rep
    .local pmc rx427_cur
    .local pmc rx427_curclass
    .local pmc rx427_bstack
    .local pmc rx427_cstack
    (rx427_cur, rx427_tgt, rx427_pos, rx427_curclass, rx427_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx427_cur
    length rx427_eos, rx427_tgt
    eq $I19, 1, rx427_restart
    repr_get_attr_int $I11, self, rx427_curclass, "$!from"
    ne $I11, -1, rxscan428_done
    goto rxscan428_scan
  rxscan428_loop:
    inc rx427_pos
    gt rx427_pos, rx427_eos, rx427_fail
    repr_bind_attr_int rx427_cur, rx427_curclass, "$!from", rx427_pos
  rxscan428_scan:
    nqp_rxmark rx427_bstack, rxscan428_loop, rx427_pos, 0
  rxscan428_done:
    nqp_rxmark rx427_bstack, rxcap429_fail, rx427_pos, 0
    add $I11, rx427_pos, 1
    gt $I11, rx427_eos, rx427_fail
    substr $S10, rx427_tgt, rx427_pos, 1
    ne $S10, ucs4:"r", rx427_fail
    add rx427_pos, 1
    nqp_rxpeek $I19, rx427_bstack, rxcap429_fail
    inc $I19
    set $I11, rx427_bstack[$I19]
    $P11 = rx427_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx427_pos)
    rx427_cstack = rx427_cur."!cursor_capture"($P11, "sym")
    goto rxcap429_done
  rxcap429_fail:
    goto rx427_fail
  rxcap429_done:
  # rx rxquantr430 ** 0..1
    nqp_rxmark rx427_bstack, rxquantr430_done, rx427_pos, 0
  rxquantr430_loop:
    add $I11, rx427_pos, 6
    gt $I11, rx427_eos, rx427_fail
    substr $S10, rx427_tgt, rx427_pos, 6
    ne $S10, ucs4:"atchet", rx427_fail
    add rx427_pos, 6
    nqp_rxpeek $I19, rx427_bstack, rxquantr430_done
    inc $I19
    inc $I19
    set rx427_rep, rx427_bstack[$I19]
    nqp_rxcommit rx427_bstack, rxquantr430_done
    inc rx427_rep
  rxquantr430_done:
    rx427_cur."!cursor_pass"(rx427_pos, "mod_ident:sym<ratchet>", 'backtrack'=>1)
    .return (rx427_cur)
  rx427_restart:
    repr_get_attr_obj rx427_cstack, rx427_cur, rx427_curclass, "$!cstack"
  rx427_fail:
    unless rx427_bstack, rx427_done
    pop $I19, rx427_bstack
    if_null rx427_cstack, rx427_cstack_done
    unless rx427_cstack, rx427_cstack_done
    dec $I19
    set $P11, rx427_cstack[$I19]
  rx427_cstack_done:
    pop rx427_rep, rx427_bstack
    pop rx427_pos, rx427_bstack
    pop $I19, rx427_bstack
    lt rx427_pos, -1, rx427_done
    lt rx427_pos, 0, rx427_fail
    eq $I19, 0, rx427_fail
    if_null rx427_cstack, rx427_jump
    elements $I18, rx427_bstack
    le $I18, 0, rx427_cut
    dec $I18
    set $I18, rx427_bstack[$I18]
  rx427_cut:
    assign rx427_cstack, $I18
  rx427_jump:
    jump $I19
  rx427_done:
    rx427_cur."!cursor_fail"()
    .return (rx427_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "104_1338064447.841_caps"  :subid("332_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 232
    new $P103, "Hash"
    set $P103["sym"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "104_1338064447.841_nfa"  :subid("333_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 232
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 2
    push $P104, 114
    push $P104, 2
    new $P105, "ResizablePMCArray"
    push $P105, 2
    push $P105, 97
    push $P105, 3
    push $P105, 1
    push $P105, 0
    push $P105, 0
    new $P106, "ResizablePMCArray"
    push $P106, 2
    push $P106, 116
    push $P106, 4
    new $P107, "ResizablePMCArray"
    push $P107, 2
    push $P107, 99
    push $P107, 5
    new $P108, "ResizablePMCArray"
    push $P108, 2
    push $P108, 104
    push $P108, 6
    new $P109, "ResizablePMCArray"
    push $P109, 2
    push $P109, 101
    push $P109, 7
    new $P110, "ResizablePMCArray"
    push $P110, 2
    push $P110, 116
    push $P110, 0
    new $P111, "ResizablePMCArray"
    push $P111, $P103
    push $P111, $P104
    push $P111, $P105
    push $P111, $P106
    push $P111, $P107
    push $P111, $P108
    push $P111, $P109
    push $P111, $P110
    .return ($P111)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<sigspace>"  :subid("105_1338064447.841") :outer("162_1338064447.841")
    .param pmc param_1545
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 233
    .lex "self", param_1545
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1546
    .lex "$/", $P1547
    .local string rx431_tgt
    .local int rx431_pos
    .local int rx431_off
    .local int rx431_eos
    .local int rx431_rep
    .local pmc rx431_cur
    .local pmc rx431_curclass
    .local pmc rx431_bstack
    .local pmc rx431_cstack
    (rx431_cur, rx431_tgt, rx431_pos, rx431_curclass, rx431_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx431_cur
    length rx431_eos, rx431_tgt
    eq $I19, 1, rx431_restart
    repr_get_attr_int $I11, self, rx431_curclass, "$!from"
    ne $I11, -1, rxscan432_done
    goto rxscan432_scan
  rxscan432_loop:
    inc rx431_pos
    gt rx431_pos, rx431_eos, rx431_fail
    repr_bind_attr_int rx431_cur, rx431_curclass, "$!from", rx431_pos
  rxscan432_scan:
    nqp_rxmark rx431_bstack, rxscan432_loop, rx431_pos, 0
  rxscan432_done:
    nqp_rxmark rx431_bstack, rxcap433_fail, rx431_pos, 0
    add $I11, rx431_pos, 1
    gt $I11, rx431_eos, rx431_fail
    substr $S10, rx431_tgt, rx431_pos, 1
    ne $S10, ucs4:"s", rx431_fail
    add rx431_pos, 1
    nqp_rxpeek $I19, rx431_bstack, rxcap433_fail
    inc $I19
    set $I11, rx431_bstack[$I19]
    $P11 = rx431_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx431_pos)
    rx431_cstack = rx431_cur."!cursor_capture"($P11, "sym")
    goto rxcap433_done
  rxcap433_fail:
    goto rx431_fail
  rxcap433_done:
  # rx rxquantr434 ** 0..1
    nqp_rxmark rx431_bstack, rxquantr434_done, rx431_pos, 0
  rxquantr434_loop:
    add $I11, rx431_pos, 7
    gt $I11, rx431_eos, rx431_fail
    substr $S10, rx431_tgt, rx431_pos, 7
    ne $S10, ucs4:"igspace", rx431_fail
    add rx431_pos, 7
    nqp_rxpeek $I19, rx431_bstack, rxquantr434_done
    inc $I19
    inc $I19
    set rx431_rep, rx431_bstack[$I19]
    nqp_rxcommit rx431_bstack, rxquantr434_done
    inc rx431_rep
  rxquantr434_done:
    rx431_cur."!cursor_pass"(rx431_pos, "mod_ident:sym<sigspace>", 'backtrack'=>1)
    .return (rx431_cur)
  rx431_restart:
    repr_get_attr_obj rx431_cstack, rx431_cur, rx431_curclass, "$!cstack"
  rx431_fail:
    unless rx431_bstack, rx431_done
    pop $I19, rx431_bstack
    if_null rx431_cstack, rx431_cstack_done
    unless rx431_cstack, rx431_cstack_done
    dec $I19
    set $P11, rx431_cstack[$I19]
  rx431_cstack_done:
    pop rx431_rep, rx431_bstack
    pop rx431_pos, rx431_bstack
    pop $I19, rx431_bstack
    lt rx431_pos, -1, rx431_done
    lt rx431_pos, 0, rx431_fail
    eq $I19, 0, rx431_fail
    if_null rx431_cstack, rx431_jump
    elements $I18, rx431_bstack
    le $I18, 0, rx431_cut
    dec $I18
    set $I18, rx431_bstack[$I18]
  rx431_cut:
    assign rx431_cstack, $I18
  rx431_jump:
    jump $I19
  rx431_done:
    rx431_cur."!cursor_fail"()
    .return (rx431_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "105_1338064447.841_caps"  :subid("334_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 233
    new $P103, "Hash"
    set $P103["sym"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "105_1338064447.841_nfa"  :subid("335_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 233
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 2
    push $P104, 115
    push $P104, 2
    new $P105, "ResizablePMCArray"
    push $P105, 2
    push $P105, 105
    push $P105, 3
    push $P105, 1
    push $P105, 0
    push $P105, 0
    new $P106, "ResizablePMCArray"
    push $P106, 2
    push $P106, 103
    push $P106, 4
    new $P107, "ResizablePMCArray"
    push $P107, 2
    push $P107, 115
    push $P107, 5
    new $P108, "ResizablePMCArray"
    push $P108, 2
    push $P108, 112
    push $P108, 6
    new $P109, "ResizablePMCArray"
    push $P109, 2
    push $P109, 97
    push $P109, 7
    new $P110, "ResizablePMCArray"
    push $P110, 2
    push $P110, 99
    push $P110, 8
    new $P111, "ResizablePMCArray"
    push $P111, 2
    push $P111, 101
    push $P111, 0
    new $P112, "ResizablePMCArray"
    push $P112, $P103
    push $P112, $P104
    push $P112, $P105
    push $P112, $P106
    push $P112, $P107
    push $P112, $P108
    push $P112, $P109
    push $P112, $P110
    push $P112, $P111
    .return ($P112)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "_block1550"  :subid("336_1338064447.841") :outer("160_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 237
    .const 'Sub' $P2205 = "159_1338064447.841" 
    capture_lex $P2205
    .const 'Sub' $P2200 = "158_1338064447.841" 
    capture_lex $P2200
    .const 'Sub' $P2189 = "157_1338064447.841" 
    capture_lex $P2189
    .const 'Sub' $P2091 = "156_1338064447.841" 
    capture_lex $P2091
    .const 'Sub' $P2082 = "155_1338064447.841" 
    capture_lex $P2082
    .const 'Sub' $P2075 = "154_1338064447.841" 
    capture_lex $P2075
    .const 'Sub' $P2057 = "153_1338064447.841" 
    capture_lex $P2057
    .const 'Sub' $P2023 = "152_1338064447.841" 
    capture_lex $P2023
    .const 'Sub' $P2018 = "151_1338064447.841" 
    capture_lex $P2018
    .const 'Sub' $P2010 = "150_1338064447.841" 
    capture_lex $P2010
    .const 'Sub' $P2003 = "149_1338064447.841" 
    capture_lex $P2003
    .const 'Sub' $P1996 = "148_1338064447.841" 
    capture_lex $P1996
    .const 'Sub' $P1992 = "147_1338064447.841" 
    capture_lex $P1992
    .const 'Sub' $P1988 = "146_1338064447.841" 
    capture_lex $P1988
    .const 'Sub' $P1978 = "145_1338064447.841" 
    capture_lex $P1978
    .const 'Sub' $P1968 = "144_1338064447.841" 
    capture_lex $P1968
    .const 'Sub' $P1963 = "143_1338064447.841" 
    capture_lex $P1963
    .const 'Sub' $P1958 = "142_1338064447.841" 
    capture_lex $P1958
    .const 'Sub' $P1953 = "141_1338064447.841" 
    capture_lex $P1953
    .const 'Sub' $P1948 = "140_1338064447.841" 
    capture_lex $P1948
    .const 'Sub' $P1943 = "139_1338064447.841" 
    capture_lex $P1943
    .const 'Sub' $P1938 = "138_1338064447.841" 
    capture_lex $P1938
    .const 'Sub' $P1933 = "137_1338064447.841" 
    capture_lex $P1933
    .const 'Sub' $P1926 = "136_1338064447.841" 
    capture_lex $P1926
    .const 'Sub' $P1920 = "135_1338064447.841" 
    capture_lex $P1920
    .const 'Sub' $P1902 = "134_1338064447.841" 
    capture_lex $P1902
    .const 'Sub' $P1898 = "133_1338064447.841" 
    capture_lex $P1898
    .const 'Sub' $P1894 = "132_1338064447.841" 
    capture_lex $P1894
    .const 'Sub' $P1891 = "131_1338064447.841" 
    capture_lex $P1891
    .const 'Sub' $P1888 = "130_1338064447.841" 
    capture_lex $P1888
    .const 'Sub' $P1885 = "129_1338064447.841" 
    capture_lex $P1885
    .const 'Sub' $P1882 = "128_1338064447.841" 
    capture_lex $P1882
    .const 'Sub' $P1879 = "127_1338064447.841" 
    capture_lex $P1879
    .const 'Sub' $P1876 = "126_1338064447.841" 
    capture_lex $P1876
    .const 'Sub' $P1873 = "125_1338064447.841" 
    capture_lex $P1873
    .const 'Sub' $P1865 = "124_1338064447.841" 
    capture_lex $P1865
    .const 'Sub' $P1857 = "123_1338064447.841" 
    capture_lex $P1857
    .const 'Sub' $P1850 = "122_1338064447.841" 
    capture_lex $P1850
    .const 'Sub' $P1846 = "121_1338064447.841" 
    capture_lex $P1846
    .const 'Sub' $P1841 = "120_1338064447.841" 
    capture_lex $P1841
    .const 'Sub' $P1827 = "119_1338064447.841" 
    capture_lex $P1827
    .const 'Sub' $P1822 = "118_1338064447.841" 
    capture_lex $P1822
    .const 'Sub' $P1817 = "117_1338064447.841" 
    capture_lex $P1817
    .const 'Sub' $P1812 = "116_1338064447.841" 
    capture_lex $P1812
    .const 'Sub' $P1802 = "115_1338064447.841" 
    capture_lex $P1802
    .const 'Sub' $P1798 = "114_1338064447.841" 
    capture_lex $P1798
    .const 'Sub' $P1769 = "113_1338064447.841" 
    capture_lex $P1769
    .const 'Sub' $P1747 = "112_1338064447.841" 
    capture_lex $P1747
    .const 'Sub' $P1734 = "111_1338064447.841" 
    capture_lex $P1734
    .const 'Sub' $P1721 = "110_1338064447.841" 
    capture_lex $P1721
    .const 'Sub' $P1708 = "109_1338064447.841" 
    capture_lex $P1708
    .const 'Sub' $P1695 = "108_1338064447.841" 
    capture_lex $P1695
    .const 'Sub' $P1691 = "107_1338064447.841" 
    capture_lex $P1691
    .const 'Sub' $P1687 = "106_1338064447.841" 
    capture_lex $P1687
    .const 'Sub' $P1585 = "341_1338064447.841" 
    capture_lex $P1585
    .const 'Sub' $P1563 = "338_1338064447.841" 
    capture_lex $P1563
    .const 'Sub' $P1553 = "337_1338064447.841" 
    capture_lex $P1553
.annotate 'line', 730
    .const 'Sub' $P1553 = "337_1338064447.841" 
    newclosure $P1561, $P1553
    set $P1552, $P1561
    .lex "backmod", $P1552
.annotate 'line', 737
    .const 'Sub' $P1563 = "338_1338064447.841" 
    newclosure $P1583, $P1563
    set $P1562, $P1583
    .lex "buildsub", $P1562
.annotate 'line', 237
    set $P114, $P1562
    find_lex $P115, "$?PACKAGE"
    get_who $P116, $P115
    set $P116["buildsub"], $P114
.annotate 'line', 777
    .const 'Sub' $P1585 = "341_1338064447.841" 
    newclosure $P1684, $P1585
    set $P1584, $P1684
    .lex "capnames", $P1584
.annotate 'line', 237
    .lex "$?PACKAGE", $P1685
    .lex "$?CLASS", $P1686
    set $P118, $P1552
    set $P118, $P1562
    set $P118, $P1584
.annotate 'line', 831
    .const 'Sub' $P2205 = "159_1338064447.841" 
    newclosure $P2230, $P2205
.annotate 'line', 237
    .return ($P2230)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "backmod"  :subid("337_1338064447.841") :outer("336_1338064447.841")
    .param pmc param_1554
    .param pmc param_1555
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 730
    .lex "$ast", param_1554
    .lex "$backmod", param_1555
.annotate 'line', 731
    set $P101, param_1555
    unless_null $P101, vivify_385
    new $P101, "Undef"
  vivify_385:
    set $S100, $P101
    iseq $I100, $S100, ":"
    if $I100, if_1556
.annotate 'line', 732
    set $P104, param_1555
    unless_null $P104, vivify_386
    new $P104, "Undef"
  vivify_386:
    set $S101, $P104
    iseq $I101, $S101, ":?"
    unless $I101, unless_1558
    new $P103, 'Integer'
    set $P103, $I101
    goto unless_1558_end
  unless_1558:
    set $P105, param_1555
    unless_null $P105, vivify_387
    new $P105, "Undef"
  vivify_387:
    set $S102, $P105
    iseq $I102, $S102, "?"
    new $P103, 'Integer'
    set $P103, $I102
  unless_1558_end:
    if $P103, if_1557
.annotate 'line', 733
    set $P107, param_1555
    unless_null $P107, vivify_388
    new $P107, "Undef"
  vivify_388:
    set $S103, $P107
    iseq $I103, $S103, ":!"
    unless $I103, unless_1560
    new $P106, 'Integer'
    set $P106, $I103
    goto unless_1560_end
  unless_1560:
    set $P108, param_1555
    unless_null $P108, vivify_389
    new $P108, "Undef"
  vivify_389:
    set $S104, $P108
    iseq $I104, $S104, "!"
    new $P106, 'Integer'
    set $P106, $I104
  unless_1560_end:
    unless $P106, if_1559_end
    set $P109, param_1554
    unless_null $P109, vivify_390
    new $P109, "Undef"
  vivify_390:
    $P109."backtrack"("g")
  if_1559_end:
    goto if_1557_end
  if_1557:
.annotate 'line', 732
    set $P106, param_1554
    unless_null $P106, vivify_391
    new $P106, "Undef"
  vivify_391:
    $P106."backtrack"("f")
  if_1557_end:
    goto if_1556_end
  if_1556:
.annotate 'line', 731
    set $P103, param_1554
    unless_null $P103, vivify_392
    new $P103, "Undef"
  vivify_392:
    $P103."backtrack"("r")
  if_1556_end:
.annotate 'line', 730
    set $P101, param_1554
    unless_null $P101, vivify_393
    new $P101, "Undef"
  vivify_393:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "buildsub"  :subid("338_1338064447.841") :outer("336_1338064447.841")
    .param pmc param_1564
    .param pmc param_1565 :optional
    .param int has_param_1565 :opt_flag
    .param pmc param_1566 :optional :named("anon")
    .param int has_param_1566 :opt_flag
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 737
    .const 'Sub' $P1578 = "340_1338064447.841" 
    capture_lex $P1578
    .const 'Sub' $P1572 = "339_1338064447.841" 
    capture_lex $P1572
    .lex "$qast", param_1564
    if has_param_1565, optparam_394
    get_hll_global $P103, "GLOBAL"
    nqp_get_package_through_who $P104, $P103, "PAST"
    get_who $P105, $P104
    set $P106, $P105["Block"]
    $P107 = $P106."new"("method" :named("blocktype"))
    set param_1565, $P107
  optparam_394:
    .lex "$block", param_1565
    if has_param_1566, optparam_395
    new $P108, "Undef"
    set param_1566, $P108
  optparam_395:
    .lex "$anon", param_1566
.annotate 'line', 738
    new $P109, "Undef"
    set $P1567, $P109
    .lex "$hashpast", $P1567
.annotate 'line', 746
    new $P110, "Undef"
    set $P1568, $P110
    .lex "$initpast", $P1568
.annotate 'line', 747
    new $P111, "Undef"
    set $P1569, $P111
    .lex "$capblock", $P1569
.annotate 'line', 751
    new $P112, "Undef"
    set $P1570, $P112
    .lex "$nfapast", $P1570
.annotate 'line', 738
    get_hll_global $P113, "GLOBAL"
    nqp_get_package_through_who $P114, $P113, "PAST"
    get_who $P115, $P114
    set $P116, $P115["Op"]
    $P117 = $P116."new"("hash" :named("pasttype"))
    set $P1567, $P117
.annotate 'line', 739
    set $P114, param_1564
    unless_null $P114, vivify_396
    new $P114, "Undef"
  vivify_396:
    $P115 = "capnames"($P114, 0)
    defined $I100, $P115
    unless $I100, for_undef_397
    iter $P113, $P115
    new $P118, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P118, loop1575_handler
    push_eh $P118
  loop1575_test:
    unless $P113, loop1575_done
    shift $P116, $P113
  loop1575_redo:
    .const 'Sub' $P1572 = "339_1338064447.841" 
    capture_lex $P1572
    $P1572($P116)
  loop1575_next:
    goto loop1575_test
  loop1575_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P119, exception, 'type'
    eq $P119, .CONTROL_LOOP_NEXT, loop1575_next
    eq $P119, .CONTROL_LOOP_REDO, loop1575_redo
  loop1575_done:
    pop_eh 
  for_undef_397:
.annotate 'line', 746
    get_hll_global $P113, "GLOBAL"
    nqp_get_package_through_who $P114, $P113, "PAST"
    get_who $P115, $P114
    set $P116, $P115["Stmts"]
    $P117 = $P116."new"()
    set $P1568, $P117
.annotate 'line', 747
    get_hll_global $P113, "GLOBAL"
    nqp_get_package_through_who $P114, $P113, "PAST"
    get_who $P115, $P114
    set $P116, $P115["Block"]
    new $P117, "ResizablePMCArray"
    push $P117, "Sub"
.annotate 'line', 748
    set $P118, param_1565
    unless_null $P118, vivify_404
    new $P118, "Undef"
  vivify_404:
    $P119 = $P118."subid"()
    concat $P120, $P119, "_caps"
.annotate 'line', 747
    set $P121, $P1567
    unless_null $P121, vivify_405
    new $P121, "Undef"
  vivify_405:
    $P122 = $P116."new"($P121, "nqp" :named("hll"), $P117 :named("namespace"), 0 :named("lexical"), $P120 :named("name"))
    set $P1569, $P122
.annotate 'line', 749
    set $P113, $P1568
    unless_null $P113, vivify_406
    new $P113, "Undef"
  vivify_406:
    get_hll_global $P114, "GLOBAL"
    nqp_get_package_through_who $P115, $P114, "PAST"
    get_who $P116, $P115
    set $P117, $P116["Stmt"]
    set $P118, $P1569
    unless_null $P118, vivify_407
    new $P118, "Undef"
  vivify_407:
    $P119 = $P117."new"($P118)
    $P113."push"($P119)
.annotate 'line', 751
    get_hll_global $P113, "GLOBAL"
    nqp_get_package_through_who $P114, $P113, "QRegex"
    get_who $P115, $P114
    set $P116, $P115["NFA"]
    $P117 = $P116."new"()
    set $P118, param_1564
    unless_null $P118, vivify_408
    new $P118, "Undef"
  vivify_408:
    $P119 = $P117."addnode"($P118)
    $P120 = $P119."past"()
    set $P1570, $P120
.annotate 'line', 752
    set $P113, $P1570
    unless_null $P113, vivify_409
    new $P113, "Undef"
  vivify_409:
    unless $P113, if_1576_end
    .const 'Sub' $P1578 = "340_1338064447.841" 
    capture_lex $P1578
    $P1578()
  if_1576_end:
.annotate 'line', 759
    set $P113, param_1565
    unless_null $P113, vivify_414
    new $P113, "Undef"
  vivify_414:
    $P114 = $P113."symbol"(unicode:"$\x{a2}")
    if $P114, unless_1580_end
.annotate 'line', 760
    set $P115, $P1568
    unless_null $P115, vivify_415
    new $P115, "Undef"
  vivify_415:
    get_hll_global $P116, "GLOBAL"
    nqp_get_package_through_who $P117, $P116, "PAST"
    get_who $P118, $P117
    set $P119, $P118["Var"]
    $P120 = $P119."new"(unicode:"$\x{a2}" :named("name"), "lexical" :named("scope"), 1 :named("isdecl"))
    $P115."push"($P120)
.annotate 'line', 761
    set $P115, param_1565
    unless_null $P115, vivify_416
    new $P115, "Undef"
  vivify_416:
    $P115."symbol"(unicode:"$\x{a2}", "lexical" :named("scope"))
  unless_1580_end:
.annotate 'line', 764
    set $P113, param_1564
    unless_null $P113, vivify_417
    new $P113, "Undef"
  vivify_417:
    set $P1581, param_1565
    unless_null $P1581, vivify_418
    $P1581 = root_new ['parrot';'Hash']
    set param_1565, $P1581
  vivify_418:
    set $P1581["orig_qast"], $P113
.annotate 'line', 766
    get_hll_global $P113, "GLOBAL"
    nqp_get_package_through_who $P114, $P113, "QAST"
    get_who $P115, $P114
    set $P116, $P115["Regex"]
.annotate 'line', 767
    get_hll_global $P117, "GLOBAL"
    nqp_get_package_through_who $P118, $P117, "QAST"
    get_who $P119, $P118
    set $P120, $P119["Regex"]
    $P121 = $P120."new"("scan" :named("rxtype"))
    set $P122, param_1564
    unless_null $P122, vivify_419
    new $P122, "Undef"
  vivify_419:
.annotate 'line', 769
    set $P124, param_1566
    unless_null $P124, vivify_420
    new $P124, "Undef"
  vivify_420:
    if $P124, if_1582
.annotate 'line', 771
    get_hll_global $P130, "GLOBAL"
    nqp_get_package_through_who $P131, $P130, "QAST"
    get_who $P132, $P131
    set $P133, $P132["Regex"]
    find_dynamic_lex $P136, "%*RX"
    unless_null $P136, vivify_421
    get_hll_global $P134, "GLOBAL"
    get_who $P135, $P134
    set $P136, $P135["%RX"]
    unless_null $P136, vivify_422
    die "Contextual %*RX not found"
  vivify_422:
  vivify_421:
    set $P137, $P136["name"]
    unless_null $P137, vivify_423
    new $P137, "Undef"
  vivify_423:
    $P138 = $P133."new"("pass" :named("rxtype"), $P137 :named("name"))
    set $P123, $P138
.annotate 'line', 769
    goto if_1582_end
  if_1582:
.annotate 'line', 770
    get_hll_global $P125, "GLOBAL"
    nqp_get_package_through_who $P126, $P125, "QAST"
    get_who $P127, $P126
    set $P128, $P127["Regex"]
    $P129 = $P128."new"("pass" :named("rxtype"))
    set $P123, $P129
  if_1582_end:
.annotate 'line', 769
    $P139 = $P116."new"($P121, $P122, $P123, "concat" :named("rxtype"))
.annotate 'line', 766
    set param_1564, $P139
.annotate 'line', 772
    set $P113, param_1565
    unless_null $P113, vivify_424
    new $P113, "Undef"
  vivify_424:
    set $P114, $P1568
    unless_null $P114, vivify_425
    new $P114, "Undef"
  vivify_425:
    $P113."push"($P114)
.annotate 'line', 773
    set $P113, param_1565
    unless_null $P113, vivify_426
    new $P113, "Undef"
  vivify_426:
    get_hll_global $P114, "GLOBAL"
    nqp_get_package_through_who $P115, $P114, "PAST"
    get_who $P116, $P115
    set $P117, $P116["QAST"]
    set $P118, param_1564
    unless_null $P118, vivify_427
    new $P118, "Undef"
  vivify_427:
    $P119 = $P117."new"($P118)
    $P113."push"($P119)
.annotate 'line', 737
    set $P113, param_1565
    unless_null $P113, vivify_428
    new $P113, "Undef"
  vivify_428:
    .return ($P113)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "_block1571"  :anon :subid("339_1338064447.841") :outer("338_1338064447.841")
    .param pmc param_1573
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 739
    .lex "$_", param_1573
.annotate 'line', 740
    find_lex $P118, "$_"
    unless_null $P118, vivify_398
    new $P118, "Undef"
  vivify_398:
    $S100 = $P118."key"()
    isgt $I101, $S100, ""
    if $I101, if_1574
    new $P117, 'Integer'
    set $P117, $I101
    goto if_1574_end
  if_1574:
.annotate 'line', 741
    find_lex $P119, "$hashpast"
    unless_null $P119, vivify_399
    new $P119, "Undef"
  vivify_399:
    find_lex $P120, "$_"
    unless_null $P120, vivify_400
    new $P120, "Undef"
  vivify_400:
    $P121 = $P120."key"()
    $P119."push"($P121)
.annotate 'line', 742
    find_lex $P119, "$hashpast"
    unless_null $P119, vivify_401
    new $P119, "Undef"
  vivify_401:
.annotate 'line', 743
    find_lex $P120, "$_"
    unless_null $P120, vivify_402
    new $P120, "Undef"
  vivify_402:
    $S101 = $P120."key"()
    is_cclass $I102, .CCLASS_NUMERIC, $S101, 0
    new $P121, 'Integer'
    set $P121, $I102
    find_lex $P122, "$_"
    unless_null $P122, vivify_403
    new $P122, "Undef"
  vivify_403:
    $N100 = $P122."value"()
    set $N101, 1
    isgt $I103, $N100, $N101
    new $P123, 'Integer'
    set $P123, $I103
    mul $P124, $P123, 2
    add $P125, $P121, $P124
    $P126 = $P119."push"($P125)
.annotate 'line', 740
    set $P117, $P126
  if_1574_end:
.annotate 'line', 739
    .return ($P117)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "_block1577"  :anon :subid("340_1338064447.841") :outer("338_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 753
    new $P114, "Undef"
    set $P1579, $P114
    .lex "$nfablock", $P1579
    get_hll_global $P115, "GLOBAL"
    nqp_get_package_through_who $P116, $P115, "PAST"
    get_who $P117, $P116
    set $P118, $P117["Block"]
    new $P119, "ResizablePMCArray"
    push $P119, "Sub"
.annotate 'line', 755
    find_lex $P120, "$block"
    unless_null $P120, vivify_410
    new $P120, "Undef"
  vivify_410:
    $P121 = $P120."subid"()
    concat $P122, $P121, "_nfa"
.annotate 'line', 753
    find_lex $P123, "$nfapast"
    unless_null $P123, vivify_411
    new $P123, "Undef"
  vivify_411:
    $P124 = $P118."new"($P123, "nqp" :named("hll"), $P119 :named("namespace"), 0 :named("lexical"), $P122 :named("name"))
    set $P1579, $P124
.annotate 'line', 756
    find_lex $P115, "$initpast"
    unless_null $P115, vivify_412
    new $P115, "Undef"
  vivify_412:
    get_hll_global $P116, "GLOBAL"
    nqp_get_package_through_who $P117, $P116, "PAST"
    get_who $P118, $P117
    set $P119, $P118["Stmt"]
    set $P120, $P1579
    unless_null $P120, vivify_413
    new $P120, "Undef"
  vivify_413:
    $P121 = $P119."new"($P120)
    $P122 = $P115."push"($P121)
.annotate 'line', 752
    .return ($P122)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "capnames"  :subid("341_1338064447.841") :outer("336_1338064447.841")
    .param pmc param_1586
    .param pmc param_1587
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 777
    .const 'Sub' $P1671 = "352_1338064447.841" 
    capture_lex $P1671
    .const 'Sub' $P1649 = "349_1338064447.841" 
    capture_lex $P1649
    .const 'Sub' $P1634 = "347_1338064447.841" 
    capture_lex $P1634
    .const 'Sub' $P1610 = "344_1338064447.841" 
    capture_lex $P1610
    .const 'Sub' $P1594 = "342_1338064447.841" 
    capture_lex $P1594
    .lex "$ast", param_1586
    .lex "$count", param_1587
.annotate 'line', 778
    $P1589 = root_new ['parrot';'Hash']
    set $P1588, $P1589
    .lex "%capnames", $P1588
.annotate 'line', 779
    new $P117, "Undef"
    set $P1590, $P117
    .lex "$rxtype", $P1590
.annotate 'line', 777
    set $P1591, $P1588
    unless_null $P1591, vivify_429
    $P1591 = root_new ['parrot';'Hash']
  vivify_429:
.annotate 'line', 779
    set $P118, param_1586
    unless_null $P118, vivify_430
    new $P118, "Undef"
  vivify_430:
    $P119 = $P118."rxtype"()
    set $P1590, $P119
.annotate 'line', 780
    set $P118, $P1590
    unless_null $P118, vivify_431
    new $P118, "Undef"
  vivify_431:
    set $S100, $P118
    iseq $I100, $S100, "concat"
    if $I100, if_1592
.annotate 'line', 787
    set $P120, $P1590
    unless_null $P120, vivify_432
    new $P120, "Undef"
  vivify_432:
    set $S101, $P120
    iseq $I101, $S101, "altseq"
    unless $I101, unless_1608
    new $P119, 'Integer'
    set $P119, $I101
    goto unless_1608_end
  unless_1608:
    set $P121, $P1590
    unless_null $P121, vivify_433
    new $P121, "Undef"
  vivify_433:
    set $S102, $P121
    iseq $I102, $S102, "alt"
    new $P119, 'Integer'
    set $P119, $I102
  unless_1608_end:
    if $P119, if_1607
.annotate 'line', 798
    set $P125, $P1590
    unless_null $P125, vivify_434
    new $P125, "Undef"
  vivify_434:
    set $S103, $P125
    iseq $I103, $S103, "subrule"
    if $I103, if_1632
    new $P124, 'Integer'
    set $P124, $I103
    goto if_1632_end
  if_1632:
    set $P126, param_1586
    unless_null $P126, vivify_435
    new $P126, "Undef"
  vivify_435:
    $S104 = $P126."subtype"()
    iseq $I104, $S104, "capture"
    new $P124, 'Integer'
    set $P124, $I104
  if_1632_end:
    if $P124, if_1631
.annotate 'line', 807
    set $P129, $P1590
    unless_null $P129, vivify_436
    new $P129, "Undef"
  vivify_436:
    set $S105, $P129
    iseq $I105, $S105, "subcapture"
    if $I105, if_1647
.annotate 'line', 816
    set $P131, $P1590
    unless_null $P131, vivify_437
    new $P131, "Undef"
  vivify_437:
    set $S106, $P131
    iseq $I106, $S106, "quant"
    unless $I106, if_1669_end
    .const 'Sub' $P1671 = "352_1338064447.841" 
    capture_lex $P1671
    $P1671()
  if_1669_end:
    goto if_1647_end
  if_1647:
.annotate 'line', 807
    .const 'Sub' $P1649 = "349_1338064447.841" 
    capture_lex $P1649
    $P1649()
  if_1647_end:
    goto if_1631_end
  if_1631:
.annotate 'line', 798
    .const 'Sub' $P1634 = "347_1338064447.841" 
    capture_lex $P1634
    $P1634()
  if_1631_end:
    goto if_1607_end
  if_1607:
.annotate 'line', 787
    .const 'Sub' $P1610 = "344_1338064447.841" 
    capture_lex $P1610
    $P1610()
  if_1607_end:
    goto if_1592_end
  if_1592:
.annotate 'line', 781
    set $P120, param_1586
    unless_null $P120, vivify_503
    new $P120, "Undef"
  vivify_503:
    $P121 = $P120."list"()
    defined $I101, $P121
    unless $I101, for_undef_504
    iter $P119, $P121
    new $P124, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P124, loop1606_handler
    push_eh $P124
  loop1606_test:
    unless $P119, loop1606_done
    shift $P122, $P119
  loop1606_redo:
    .const 'Sub' $P1594 = "342_1338064447.841" 
    capture_lex $P1594
    $P1594($P122)
  loop1606_next:
    goto loop1606_test
  loop1606_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P125, exception, 'type'
    eq $P125, .CONTROL_LOOP_NEXT, loop1606_next
    eq $P125, .CONTROL_LOOP_REDO, loop1606_redo
  loop1606_done:
    pop_eh 
  for_undef_504:
  if_1592_end:
.annotate 'line', 821
    set $P118, param_1587
    unless_null $P118, vivify_517
    new $P118, "Undef"
  vivify_517:
    set $P1682, $P1588
    unless_null $P1682, vivify_518
    $P1682 = root_new ['parrot';'Hash']
    set $P1588, $P1682
  vivify_518:
    set $P1682[""], $P118
.annotate 'line', 777
    set $P1683, $P1588
    unless_null $P1683, vivify_519
    $P1683 = root_new ['parrot';'Hash']
  vivify_519:
    .return ($P1683)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block1670"  :anon :subid("352_1338064447.841") :outer("341_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 816
    .const 'Sub' $P1677 = "353_1338064447.841" 
    capture_lex $P1677
.annotate 'line', 817
    $P1673 = root_new ['parrot';'Hash']
    set $P1672, $P1673
    .lex "%astcap", $P1672
    find_lex $P1674, "$ast"
    unless_null $P1674, vivify_438
    $P1674 = root_new ['parrot';'ResizablePMCArray']
  vivify_438:
    set $P132, $P1674[0]
    unless_null $P132, vivify_439
    new $P132, "Undef"
  vivify_439:
    find_lex $P133, "$count"
    unless_null $P133, vivify_440
    new $P133, "Undef"
  vivify_440:
    $P134 = "capnames"($P132, $P133)
    set $P1672, $P134
.annotate 'line', 818
    set $P1675, $P1672
    unless_null $P1675, vivify_441
    $P1675 = root_new ['parrot';'Hash']
  vivify_441:
    defined $I107, $P1675
    unless $I107, for_undef_442
    iter $P132, $P1675
    new $P135, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P135, loop1680_handler
    push_eh $P135
  loop1680_test:
    unless $P132, loop1680_done
    shift $P133, $P132
  loop1680_redo:
    .const 'Sub' $P1677 = "353_1338064447.841" 
    capture_lex $P1677
    $P1677($P133)
  loop1680_next:
    goto loop1680_test
  loop1680_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P136, exception, 'type'
    eq $P136, .CONTROL_LOOP_NEXT, loop1680_next
    eq $P136, .CONTROL_LOOP_REDO, loop1680_redo
  loop1680_done:
    pop_eh 
  for_undef_442:
.annotate 'line', 819
    set $P1681, $P1672
    unless_null $P1681, vivify_445
    $P1681 = root_new ['parrot';'Hash']
  vivify_445:
    set $P132, $P1681[""]
    unless_null $P132, vivify_446
    new $P132, "Undef"
  vivify_446:
    store_lex "$count", $P132
.annotate 'line', 816
    .return ($P132)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "_block1676"  :anon :subid("353_1338064447.841") :outer("352_1338064447.841")
    .param pmc param_1678
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 818
    .lex "$_", param_1678
    new $P134, "Float"
    assign $P134, 2
    find_lex $P135, "$_"
    unless_null $P135, vivify_443
    new $P135, "Undef"
  vivify_443:
    find_lex $P1679, "%capnames"
    unless_null $P1679, vivify_444
    $P1679 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1679
  vivify_444:
    set $P1679[$P135], $P134
    .return ($P134)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block1648"  :anon :subid("349_1338064447.841") :outer("341_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 807
    .const 'Sub' $P1662 = "351_1338064447.841" 
    capture_lex $P1662
    .const 'Sub' $P1653 = "350_1338064447.841" 
    capture_lex $P1653
.annotate 'line', 812
    $P1651 = root_new ['parrot';'Hash']
    set $P1650, $P1651
    .lex "%x", $P1650
.annotate 'line', 808
    find_lex $P131, "$ast"
    unless_null $P131, vivify_447
    new $P131, "Undef"
  vivify_447:
    $S106 = $P131."name"()
    split $P132, " ", $S106
    defined $I106, $P132
    unless $I106, for_undef_448
    iter $P130, $P132
    new $P135, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P135, loop1658_handler
    push_eh $P135
  loop1658_test:
    unless $P130, loop1658_done
    shift $P133, $P130
  loop1658_redo:
    .const 'Sub' $P1653 = "350_1338064447.841" 
    capture_lex $P1653
    $P1653($P133)
  loop1658_next:
    goto loop1658_test
  loop1658_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P136, exception, 'type'
    eq $P136, .CONTROL_LOOP_NEXT, loop1658_next
    eq $P136, .CONTROL_LOOP_REDO, loop1658_redo
  loop1658_done:
    pop_eh 
  for_undef_448:
.annotate 'line', 812
    find_lex $P1659, "$ast"
    unless_null $P1659, vivify_454
    $P1659 = root_new ['parrot';'ResizablePMCArray']
  vivify_454:
    set $P130, $P1659[0]
    unless_null $P130, vivify_455
    new $P130, "Undef"
  vivify_455:
    find_lex $P131, "$count"
    unless_null $P131, vivify_456
    new $P131, "Undef"
  vivify_456:
    $P132 = "capnames"($P130, $P131)
    set $P1650, $P132
.annotate 'line', 813
    set $P1660, $P1650
    unless_null $P1660, vivify_457
    $P1660 = root_new ['parrot';'Hash']
  vivify_457:
    defined $I106, $P1660
    unless $I106, for_undef_458
    iter $P130, $P1660
    new $P132, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P132, loop1667_handler
    push_eh $P132
  loop1667_test:
    unless $P130, loop1667_done
    shift $P131, $P130
  loop1667_redo:
    .const 'Sub' $P1662 = "351_1338064447.841" 
    capture_lex $P1662
    $P1662($P131)
  loop1667_next:
    goto loop1667_test
  loop1667_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P133, exception, 'type'
    eq $P133, .CONTROL_LOOP_NEXT, loop1667_next
    eq $P133, .CONTROL_LOOP_REDO, loop1667_redo
  loop1667_done:
    pop_eh 
  for_undef_458:
.annotate 'line', 814
    set $P1668, $P1650
    unless_null $P1668, vivify_467
    $P1668 = root_new ['parrot';'Hash']
  vivify_467:
    set $P130, $P1668[""]
    unless_null $P130, vivify_468
    new $P130, "Undef"
  vivify_468:
    store_lex "$count", $P130
.annotate 'line', 807
    .return ($P130)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "_block1652"  :anon :subid("350_1338064447.841") :outer("349_1338064447.841")
    .param pmc param_1654
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 808
    .lex "$_", param_1654
.annotate 'line', 809
    find_lex $P135, "$_"
    unless_null $P135, vivify_449
    new $P135, "Undef"
  vivify_449:
    set $S107, $P135
    iseq $I107, $S107, "0"
    unless $I107, unless_1656
    new $P134, 'Integer'
    set $P134, $I107
    goto unless_1656_end
  unless_1656:
    find_lex $P136, "$_"
    unless_null $P136, vivify_450
    new $P136, "Undef"
  vivify_450:
    set $N100, $P136
    set $N101, 0
    isgt $I108, $N100, $N101
    new $P134, 'Integer'
    set $P134, $I108
  unless_1656_end:
    unless $P134, if_1655_end
    find_lex $P137, "$_"
    unless_null $P137, vivify_451
    new $P137, "Undef"
  vivify_451:
    add $P138, $P137, 1
    store_lex "$count", $P138
  if_1655_end:
.annotate 'line', 810
    new $P134, "Float"
    assign $P134, 1
    find_lex $P135, "$_"
    unless_null $P135, vivify_452
    new $P135, "Undef"
  vivify_452:
    find_lex $P1657, "%capnames"
    unless_null $P1657, vivify_453
    $P1657 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1657
  vivify_453:
    set $P1657[$P135], $P134
.annotate 'line', 808
    .return ($P134)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "_block1661"  :anon :subid("351_1338064447.841") :outer("349_1338064447.841")
    .param pmc param_1663
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 813
    .lex "$_", param_1663
    find_lex $P132, "$_"
    unless_null $P132, vivify_459
    new $P132, "Undef"
  vivify_459:
    $P133 = $P132."key"()
    find_lex $P1664, "%capnames"
    unless_null $P1664, vivify_460
    $P1664 = root_new ['parrot';'Hash']
  vivify_460:
    set $P134, $P1664[$P133]
    unless_null $P134, vivify_461
    new $P134, "Undef"
  vivify_461:
    set $N100, $P134
    new $P135, 'Float'
    set $P135, $N100
    find_lex $P136, "$_"
    unless_null $P136, vivify_462
    new $P136, "Undef"
  vivify_462:
    $P137 = $P136."key"()
    find_lex $P1665, "%x"
    unless_null $P1665, vivify_463
    $P1665 = root_new ['parrot';'Hash']
  vivify_463:
    set $P138, $P1665[$P137]
    unless_null $P138, vivify_464
    new $P138, "Undef"
  vivify_464:
    add $P139, $P135, $P138
    find_lex $P140, "$_"
    unless_null $P140, vivify_465
    new $P140, "Undef"
  vivify_465:
    $P141 = $P140."key"()
    find_lex $P1666, "%capnames"
    unless_null $P1666, vivify_466
    $P1666 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1666
  vivify_466:
    set $P1666[$P141], $P139
    .return ($P139)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block1633"  :anon :subid("347_1338064447.841") :outer("341_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 798
    .const 'Sub' $P1641 = "348_1338064447.841" 
    capture_lex $P1641
.annotate 'line', 799
    new $P127, "Undef"
    set $P1635, $P127
    .lex "$name", $P1635
.annotate 'line', 801
    $P1637 = root_new ['parrot';'ResizablePMCArray']
    set $P1636, $P1637
    .lex "@names", $P1636
.annotate 'line', 799
    find_lex $P128, "$ast"
    unless_null $P128, vivify_469
    new $P128, "Undef"
  vivify_469:
    $P129 = $P128."name"()
    set $P1635, $P129
.annotate 'line', 800
    set $P128, $P1635
    unless_null $P128, vivify_470
    new $P128, "Undef"
  vivify_470:
    set $S105, $P128
    iseq $I105, $S105, ""
    unless $I105, if_1638_end
    find_lex $P129, "$count"
    unless_null $P129, vivify_471
    new $P129, "Undef"
  vivify_471:
    set $P1635, $P129
    find_lex $P129, "$ast"
    unless_null $P129, vivify_472
    new $P129, "Undef"
  vivify_472:
    set $P130, $P1635
    unless_null $P130, vivify_473
    new $P130, "Undef"
  vivify_473:
    $P129."name"($P130)
  if_1638_end:
.annotate 'line', 801
    set $P128, $P1635
    unless_null $P128, vivify_474
    new $P128, "Undef"
  vivify_474:
    set $S105, $P128
    split $P129, "=", $S105
    set $P1636, $P129
.annotate 'line', 802
    set $P1639, $P1636
    unless_null $P1639, vivify_475
    $P1639 = root_new ['parrot';'ResizablePMCArray']
  vivify_475:
    defined $I105, $P1639
    unless $I105, for_undef_476
    iter $P128, $P1639
    new $P131, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P131, loop1646_handler
    push_eh $P131
  loop1646_test:
    unless $P128, loop1646_done
    shift $P129, $P128
  loop1646_redo:
    .const 'Sub' $P1641 = "348_1338064447.841" 
    capture_lex $P1641
    $P1641($P129)
  loop1646_next:
    goto loop1646_test
  loop1646_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P132, exception, 'type'
    eq $P132, .CONTROL_LOOP_NEXT, loop1646_next
    eq $P132, .CONTROL_LOOP_REDO, loop1646_redo
  loop1646_done:
    pop_eh 
  for_undef_476:
.annotate 'line', 798
    .return ($P128)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "_block1640"  :anon :subid("348_1338064447.841") :outer("347_1338064447.841")
    .param pmc param_1642
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 802
    .lex "$_", param_1642
.annotate 'line', 803
    find_lex $P131, "$_"
    unless_null $P131, vivify_477
    new $P131, "Undef"
  vivify_477:
    set $S105, $P131
    iseq $I106, $S105, "0"
    unless $I106, unless_1644
    new $P130, 'Integer'
    set $P130, $I106
    goto unless_1644_end
  unless_1644:
    find_lex $P132, "$_"
    unless_null $P132, vivify_478
    new $P132, "Undef"
  vivify_478:
    set $N100, $P132
    set $N101, 0
    isgt $I107, $N100, $N101
    new $P130, 'Integer'
    set $P130, $I107
  unless_1644_end:
    unless $P130, if_1643_end
    find_lex $P133, "$_"
    unless_null $P133, vivify_479
    new $P133, "Undef"
  vivify_479:
    add $P134, $P133, 1
    store_lex "$count", $P134
  if_1643_end:
.annotate 'line', 804
    new $P130, "Float"
    assign $P130, 1
    find_lex $P131, "$_"
    unless_null $P131, vivify_480
    new $P131, "Undef"
  vivify_480:
    find_lex $P1645, "%capnames"
    unless_null $P1645, vivify_481
    $P1645 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1645
  vivify_481:
    set $P1645[$P131], $P130
.annotate 'line', 802
    .return ($P130)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block1609"  :anon :subid("344_1338064447.841") :outer("341_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 787
    .const 'Sub' $P1613 = "345_1338064447.841" 
    capture_lex $P1613
.annotate 'line', 788
    new $P122, "Undef"
    set $P1611, $P122
    .lex "$max", $P1611
    find_lex $P123, "$count"
    unless_null $P123, vivify_482
    new $P123, "Undef"
  vivify_482:
    set $P1611, $P123
.annotate 'line', 789
    find_lex $P124, "$ast"
    unless_null $P124, vivify_483
    new $P124, "Undef"
  vivify_483:
    $P125 = $P124."list"()
    defined $I103, $P125
    unless $I103, for_undef_484
    iter $P123, $P125
    new $P128, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P128, loop1630_handler
    push_eh $P128
  loop1630_test:
    unless $P123, loop1630_done
    shift $P126, $P123
  loop1630_redo:
    .const 'Sub' $P1613 = "345_1338064447.841" 
    capture_lex $P1613
    $P1613($P126)
  loop1630_next:
    goto loop1630_test
  loop1630_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P129, exception, 'type'
    eq $P129, .CONTROL_LOOP_NEXT, loop1630_next
    eq $P129, .CONTROL_LOOP_REDO, loop1630_redo
  loop1630_done:
    pop_eh 
  for_undef_484:
.annotate 'line', 796
    set $P123, $P1611
    unless_null $P123, vivify_502
    new $P123, "Undef"
  vivify_502:
    store_lex "$count", $P123
.annotate 'line', 787
    .return ($P123)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block1612"  :anon :subid("345_1338064447.841") :outer("344_1338064447.841")
    .param pmc param_1616
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 789
    .const 'Sub' $P1619 = "346_1338064447.841" 
    capture_lex $P1619
.annotate 'line', 790
    $P1615 = root_new ['parrot';'Hash']
    set $P1614, $P1615
    .lex "%x", $P1614
    .lex "$_", param_1616
    find_lex $P127, "$_"
    unless_null $P127, vivify_485
    new $P127, "Undef"
  vivify_485:
    find_lex $P128, "$count"
    unless_null $P128, vivify_486
    new $P128, "Undef"
  vivify_486:
    $P129 = "capnames"($P127, $P128)
    set $P1614, $P129
.annotate 'line', 791
    set $P1617, $P1614
    unless_null $P1617, vivify_487
    $P1617 = root_new ['parrot';'Hash']
  vivify_487:
    defined $I104, $P1617
    unless $I104, for_undef_488
    iter $P127, $P1617
    new $P130, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P130, loop1626_handler
    push_eh $P130
  loop1626_test:
    unless $P127, loop1626_done
    shift $P128, $P127
  loop1626_redo:
    .const 'Sub' $P1619 = "346_1338064447.841" 
    capture_lex $P1619
    $P1619($P128)
  loop1626_next:
    goto loop1626_test
  loop1626_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P131, exception, 'type'
    eq $P131, .CONTROL_LOOP_NEXT, loop1626_next
    eq $P131, .CONTROL_LOOP_REDO, loop1626_redo
  loop1626_done:
    pop_eh 
  for_undef_488:
.annotate 'line', 794
    set $P1628, $P1614
    unless_null $P1628, vivify_497
    $P1628 = root_new ['parrot';'Hash']
  vivify_497:
    set $P128, $P1628[""]
    unless_null $P128, vivify_498
    new $P128, "Undef"
  vivify_498:
    set $N100, $P128
    find_lex $P129, "$max"
    unless_null $P129, vivify_499
    new $P129, "Undef"
  vivify_499:
    set $N101, $P129
    isgt $I104, $N100, $N101
    if $I104, if_1627
    new $P127, 'Integer'
    set $P127, $I104
    goto if_1627_end
  if_1627:
    set $P1629, $P1614
    unless_null $P1629, vivify_500
    $P1629 = root_new ['parrot';'Hash']
  vivify_500:
    set $P130, $P1629[""]
    unless_null $P130, vivify_501
    new $P130, "Undef"
  vivify_501:
    store_lex "$max", $P130
    set $P127, $P130
  if_1627_end:
.annotate 'line', 789
    .return ($P127)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "_block1618"  :anon :subid("346_1338064447.841") :outer("345_1338064447.841")
    .param pmc param_1620
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 791
    .lex "$_", param_1620
.annotate 'line', 792
    find_lex $P131, "$_"
    unless_null $P131, vivify_489
    new $P131, "Undef"
  vivify_489:
    $P132 = $P131."key"()
    find_lex $P1623, "%capnames"
    unless_null $P1623, vivify_490
    $P1623 = root_new ['parrot';'Hash']
  vivify_490:
    set $P133, $P1623[$P132]
    unless_null $P133, vivify_491
    new $P133, "Undef"
  vivify_491:
    set $N100, $P133
    set $N101, 2
    islt $I105, $N100, $N101
    if $I105, if_1622
    new $P130, 'Integer'
    set $P130, $I105
    goto if_1622_end
  if_1622:
    find_lex $P134, "$_"
    unless_null $P134, vivify_492
    new $P134, "Undef"
  vivify_492:
    $P135 = $P134."key"()
    find_lex $P1624, "%x"
    unless_null $P1624, vivify_493
    $P1624 = root_new ['parrot';'Hash']
  vivify_493:
    set $P136, $P1624[$P135]
    unless_null $P136, vivify_494
    new $P136, "Undef"
  vivify_494:
    set $N102, $P136
    set $N103, 1
    iseq $I106, $N102, $N103
    new $P130, 'Integer'
    set $P130, $I106
  if_1622_end:
    if $P130, if_1621
    new $P138, "Float"
    assign $P138, 2
    set $P129, $P138
    goto if_1621_end
  if_1621:
    new $P137, "Float"
    assign $P137, 1
    set $P129, $P137
  if_1621_end:
    find_lex $P139, "$_"
    unless_null $P139, vivify_495
    new $P139, "Undef"
  vivify_495:
    $P140 = $P139."key"()
    find_lex $P1625, "%capnames"
    unless_null $P1625, vivify_496
    $P1625 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1625
  vivify_496:
    set $P1625[$P140], $P129
.annotate 'line', 791
    .return ($P129)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block1593"  :anon :subid("342_1338064447.841") :outer("341_1338064447.841")
    .param pmc param_1597
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 781
    .const 'Sub' $P1600 = "343_1338064447.841" 
    capture_lex $P1600
.annotate 'line', 782
    $P1596 = root_new ['parrot';'Hash']
    set $P1595, $P1596
    .lex "%x", $P1595
    .lex "$_", param_1597
    find_lex $P123, "$_"
    unless_null $P123, vivify_505
    new $P123, "Undef"
  vivify_505:
    find_lex $P124, "$count"
    unless_null $P124, vivify_506
    new $P124, "Undef"
  vivify_506:
    $P125 = "capnames"($P123, $P124)
    set $P1595, $P125
.annotate 'line', 783
    set $P1598, $P1595
    unless_null $P1598, vivify_507
    $P1598 = root_new ['parrot';'Hash']
  vivify_507:
    defined $I102, $P1598
    unless $I102, for_undef_508
    iter $P123, $P1598
    new $P125, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P125, loop1604_handler
    push_eh $P125
  loop1604_test:
    unless $P123, loop1604_done
    shift $P124, $P123
  loop1604_redo:
    .const 'Sub' $P1600 = "343_1338064447.841" 
    capture_lex $P1600
    $P1600($P124)
  loop1604_next:
    goto loop1604_test
  loop1604_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P126, exception, 'type'
    eq $P126, .CONTROL_LOOP_NEXT, loop1604_next
    eq $P126, .CONTROL_LOOP_REDO, loop1604_redo
  loop1604_done:
    pop_eh 
  for_undef_508:
.annotate 'line', 784
    set $P1605, $P1595
    unless_null $P1605, vivify_515
    $P1605 = root_new ['parrot';'Hash']
  vivify_515:
    set $P123, $P1605[""]
    unless_null $P123, vivify_516
    new $P123, "Undef"
  vivify_516:
    store_lex "$count", $P123
.annotate 'line', 781
    .return ($P123)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "_block1599"  :anon :subid("343_1338064447.841") :outer("342_1338064447.841")
    .param pmc param_1601
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 783
    .lex "$_", param_1601
    find_lex $P125, "$_"
    unless_null $P125, vivify_509
    new $P125, "Undef"
  vivify_509:
    $P126 = $P125."key"()
    find_lex $P1602, "%capnames"
    unless_null $P1602, vivify_510
    $P1602 = root_new ['parrot';'Hash']
  vivify_510:
    set $P127, $P1602[$P126]
    unless_null $P127, vivify_511
    new $P127, "Undef"
  vivify_511:
    set $N100, $P127
    new $P128, 'Float'
    set $P128, $N100
    find_lex $P129, "$_"
    unless_null $P129, vivify_512
    new $P129, "Undef"
  vivify_512:
    $N101 = $P129."value"()
    add $P130, $P128, $N101
    find_lex $P131, "$_"
    unless_null $P131, vivify_513
    new $P131, "Undef"
  vivify_513:
    $P132 = $P131."key"()
    find_lex $P1603, "%capnames"
    unless_null $P1603, vivify_514
    $P1603 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1603
  vivify_514:
    set $P1603[$P132], $P130
    .return ($P130)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "TOP" :anon :subid("106_1338064447.841") :outer("336_1338064447.841")
    .param pmc param_1688
    .param pmc param_1689
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 238
    .lex "self", param_1688
    .lex "$/", param_1689
.annotate 'line', 239
    set $P118, param_1689
    set $P1690, param_1689
    unless_null $P1690, vivify_520
    $P1690 = root_new ['parrot';'Hash']
  vivify_520:
    set $P119, $P1690["nibbler"]
    unless_null $P119, vivify_521
    new $P119, "Undef"
  vivify_521:
    $P120 = $P119."ast"()
    $P121 = "buildsub"($P120)
    $P122 = $P118."!make"($P121)
.annotate 'line', 238
    .return ($P122)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "nibbler" :anon :subid("107_1338064447.841") :outer("336_1338064447.841")
    .param pmc param_1692
    .param pmc param_1693
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 242
    .lex "self", param_1692
    .lex "$/", param_1693
    set $P118, param_1693
    set $P1694, param_1693
    unless_null $P1694, vivify_522
    $P1694 = root_new ['parrot';'Hash']
  vivify_522:
    set $P119, $P1694["termaltseq"]
    unless_null $P119, vivify_523
    new $P119, "Undef"
  vivify_523:
    $P120 = $P119."ast"()
    $P121 = $P118."!make"($P120)
    .return ($P121)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "termaltseq" :anon :subid("108_1338064447.841") :outer("336_1338064447.841")
    .param pmc param_1696
    .param pmc param_1697
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 244
    .const 'Sub' $P1705 = "354_1338064447.841" 
    capture_lex $P1705
    .lex "self", param_1696
    .lex "$/", param_1697
.annotate 'line', 245
    new $P118, "Undef"
    set $P1698, $P118
    .lex "$qast", $P1698
    set $P1699, param_1697
    unless_null $P1699, vivify_524
    $P1699 = root_new ['parrot';'Hash']
  vivify_524:
    set $P1700, $P1699["termconjseq"]
    unless_null $P1700, vivify_525
    $P1700 = root_new ['parrot';'ResizablePMCArray']
  vivify_525:
    set $P119, $P1700[0]
    unless_null $P119, vivify_526
    new $P119, "Undef"
  vivify_526:
    $P120 = $P119."ast"()
    set $P1698, $P120
.annotate 'line', 246
    set $P1702, param_1697
    unless_null $P1702, vivify_527
    $P1702 = root_new ['parrot';'Hash']
  vivify_527:
    set $P119, $P1702["termconjseq"]
    unless_null $P119, vivify_528
    new $P119, "Undef"
  vivify_528:
    set $N100, $P119
    set $N101, 1
    isgt $I100, $N100, $N101
    unless $I100, if_1701_end
.annotate 'line', 247
    get_hll_global $P120, "GLOBAL"
    nqp_get_package_through_who $P121, $P120, "QAST"
    get_who $P122, $P121
    set $P123, $P122["Regex"]
    set $P124, param_1697
    unless_null $P124, vivify_529
    new $P124, "Undef"
  vivify_529:
    $P125 = $P123."new"("altseq" :named("rxtype"), $P124 :named("node"))
    set $P1698, $P125
.annotate 'line', 248
    set $P1703, param_1697
    unless_null $P1703, vivify_530
    $P1703 = root_new ['parrot';'Hash']
  vivify_530:
    set $P121, $P1703["termconjseq"]
    unless_null $P121, vivify_531
    new $P121, "Undef"
  vivify_531:
    defined $I101, $P121
    unless $I101, for_undef_532
    iter $P120, $P121
    new $P123, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P123, loop1707_handler
    push_eh $P123
  loop1707_test:
    unless $P120, loop1707_done
    shift $P122, $P120
  loop1707_redo:
    .const 'Sub' $P1705 = "354_1338064447.841" 
    capture_lex $P1705
    $P1705($P122)
  loop1707_next:
    goto loop1707_test
  loop1707_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P124, exception, 'type'
    eq $P124, .CONTROL_LOOP_NEXT, loop1707_next
    eq $P124, .CONTROL_LOOP_REDO, loop1707_redo
  loop1707_done:
    pop_eh 
  for_undef_532:
  if_1701_end:
.annotate 'line', 250
    set $P119, param_1697
    set $P120, $P1698
    unless_null $P120, vivify_535
    new $P120, "Undef"
  vivify_535:
    $P121 = $P119."!make"($P120)
.annotate 'line', 244
    .return ($P121)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "_block1704"  :anon :subid("354_1338064447.841") :outer("108_1338064447.841")
    .param pmc param_1706
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 248
    .lex "$_", param_1706
    find_lex $P123, "$qast"
    unless_null $P123, vivify_533
    new $P123, "Undef"
  vivify_533:
    find_lex $P124, "$_"
    unless_null $P124, vivify_534
    new $P124, "Undef"
  vivify_534:
    $P125 = $P124."ast"()
    $P126 = $P123."push"($P125)
    .return ($P126)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "termconjseq" :anon :subid("109_1338064447.841") :outer("336_1338064447.841")
    .param pmc param_1709
    .param pmc param_1710
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 253
    .const 'Sub' $P1718 = "355_1338064447.841" 
    capture_lex $P1718
    .lex "self", param_1709
    .lex "$/", param_1710
.annotate 'line', 254
    new $P118, "Undef"
    set $P1711, $P118
    .lex "$qast", $P1711
    set $P1712, param_1710
    unless_null $P1712, vivify_536
    $P1712 = root_new ['parrot';'Hash']
  vivify_536:
    set $P1713, $P1712["termalt"]
    unless_null $P1713, vivify_537
    $P1713 = root_new ['parrot';'ResizablePMCArray']
  vivify_537:
    set $P119, $P1713[0]
    unless_null $P119, vivify_538
    new $P119, "Undef"
  vivify_538:
    $P120 = $P119."ast"()
    set $P1711, $P120
.annotate 'line', 255
    set $P1715, param_1710
    unless_null $P1715, vivify_539
    $P1715 = root_new ['parrot';'Hash']
  vivify_539:
    set $P119, $P1715["termalt"]
    unless_null $P119, vivify_540
    new $P119, "Undef"
  vivify_540:
    set $N100, $P119
    set $N101, 1
    isgt $I100, $N100, $N101
    unless $I100, if_1714_end
.annotate 'line', 256
    get_hll_global $P120, "GLOBAL"
    nqp_get_package_through_who $P121, $P120, "QAST"
    get_who $P122, $P121
    set $P123, $P122["Regex"]
    set $P124, param_1710
    unless_null $P124, vivify_541
    new $P124, "Undef"
  vivify_541:
    $P125 = $P123."new"("conjseq" :named("rxtype"), $P124 :named("node"))
    set $P1711, $P125
.annotate 'line', 257
    set $P1716, param_1710
    unless_null $P1716, vivify_542
    $P1716 = root_new ['parrot';'Hash']
  vivify_542:
    set $P121, $P1716["termalt"]
    unless_null $P121, vivify_543
    new $P121, "Undef"
  vivify_543:
    defined $I101, $P121
    unless $I101, for_undef_544
    iter $P120, $P121
    new $P123, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P123, loop1720_handler
    push_eh $P123
  loop1720_test:
    unless $P120, loop1720_done
    shift $P122, $P120
  loop1720_redo:
    .const 'Sub' $P1718 = "355_1338064447.841" 
    capture_lex $P1718
    $P1718($P122)
  loop1720_next:
    goto loop1720_test
  loop1720_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P124, exception, 'type'
    eq $P124, .CONTROL_LOOP_NEXT, loop1720_next
    eq $P124, .CONTROL_LOOP_REDO, loop1720_redo
  loop1720_done:
    pop_eh 
  for_undef_544:
  if_1714_end:
.annotate 'line', 259
    set $P119, param_1710
    set $P120, $P1711
    unless_null $P120, vivify_547
    new $P120, "Undef"
  vivify_547:
    $P121 = $P119."!make"($P120)
.annotate 'line', 253
    .return ($P121)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "_block1717"  :anon :subid("355_1338064447.841") :outer("109_1338064447.841")
    .param pmc param_1719
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 257
    .lex "$_", param_1719
    find_lex $P123, "$qast"
    unless_null $P123, vivify_545
    new $P123, "Undef"
  vivify_545:
    find_lex $P124, "$_"
    unless_null $P124, vivify_546
    new $P124, "Undef"
  vivify_546:
    $P125 = $P124."ast"()
    $P126 = $P123."push"($P125)
    .return ($P126)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "termalt" :anon :subid("110_1338064447.841") :outer("336_1338064447.841")
    .param pmc param_1722
    .param pmc param_1723
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 262
    .const 'Sub' $P1731 = "356_1338064447.841" 
    capture_lex $P1731
    .lex "self", param_1722
    .lex "$/", param_1723
.annotate 'line', 263
    new $P118, "Undef"
    set $P1724, $P118
    .lex "$qast", $P1724
    set $P1725, param_1723
    unless_null $P1725, vivify_548
    $P1725 = root_new ['parrot';'Hash']
  vivify_548:
    set $P1726, $P1725["termconj"]
    unless_null $P1726, vivify_549
    $P1726 = root_new ['parrot';'ResizablePMCArray']
  vivify_549:
    set $P119, $P1726[0]
    unless_null $P119, vivify_550
    new $P119, "Undef"
  vivify_550:
    $P120 = $P119."ast"()
    set $P1724, $P120
.annotate 'line', 264
    set $P1728, param_1723
    unless_null $P1728, vivify_551
    $P1728 = root_new ['parrot';'Hash']
  vivify_551:
    set $P119, $P1728["termconj"]
    unless_null $P119, vivify_552
    new $P119, "Undef"
  vivify_552:
    set $N100, $P119
    set $N101, 1
    isgt $I100, $N100, $N101
    unless $I100, if_1727_end
.annotate 'line', 265
    get_hll_global $P120, "GLOBAL"
    nqp_get_package_through_who $P121, $P120, "QAST"
    get_who $P122, $P121
    set $P123, $P122["Regex"]
    set $P124, param_1723
    unless_null $P124, vivify_553
    new $P124, "Undef"
  vivify_553:
    $P125 = $P123."new"("alt" :named("rxtype"), $P124 :named("node"))
    set $P1724, $P125
.annotate 'line', 266
    set $P1729, param_1723
    unless_null $P1729, vivify_554
    $P1729 = root_new ['parrot';'Hash']
  vivify_554:
    set $P121, $P1729["termconj"]
    unless_null $P121, vivify_555
    new $P121, "Undef"
  vivify_555:
    defined $I101, $P121
    unless $I101, for_undef_556
    iter $P120, $P121
    new $P123, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P123, loop1733_handler
    push_eh $P123
  loop1733_test:
    unless $P120, loop1733_done
    shift $P122, $P120
  loop1733_redo:
    .const 'Sub' $P1731 = "356_1338064447.841" 
    capture_lex $P1731
    $P1731($P122)
  loop1733_next:
    goto loop1733_test
  loop1733_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P124, exception, 'type'
    eq $P124, .CONTROL_LOOP_NEXT, loop1733_next
    eq $P124, .CONTROL_LOOP_REDO, loop1733_redo
  loop1733_done:
    pop_eh 
  for_undef_556:
  if_1727_end:
.annotate 'line', 268
    set $P119, param_1723
    set $P120, $P1724
    unless_null $P120, vivify_559
    new $P120, "Undef"
  vivify_559:
    $P121 = $P119."!make"($P120)
.annotate 'line', 262
    .return ($P121)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "_block1730"  :anon :subid("356_1338064447.841") :outer("110_1338064447.841")
    .param pmc param_1732
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 266
    .lex "$_", param_1732
    find_lex $P123, "$qast"
    unless_null $P123, vivify_557
    new $P123, "Undef"
  vivify_557:
    find_lex $P124, "$_"
    unless_null $P124, vivify_558
    new $P124, "Undef"
  vivify_558:
    $P125 = $P124."ast"()
    $P126 = $P123."push"($P125)
    .return ($P126)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "termconj" :anon :subid("111_1338064447.841") :outer("336_1338064447.841")
    .param pmc param_1735
    .param pmc param_1736
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 271
    .const 'Sub' $P1744 = "357_1338064447.841" 
    capture_lex $P1744
    .lex "self", param_1735
    .lex "$/", param_1736
.annotate 'line', 272
    new $P118, "Undef"
    set $P1737, $P118
    .lex "$qast", $P1737
    set $P1738, param_1736
    unless_null $P1738, vivify_560
    $P1738 = root_new ['parrot';'Hash']
  vivify_560:
    set $P1739, $P1738["termish"]
    unless_null $P1739, vivify_561
    $P1739 = root_new ['parrot';'ResizablePMCArray']
  vivify_561:
    set $P119, $P1739[0]
    unless_null $P119, vivify_562
    new $P119, "Undef"
  vivify_562:
    $P120 = $P119."ast"()
    set $P1737, $P120
.annotate 'line', 273
    set $P1741, param_1736
    unless_null $P1741, vivify_563
    $P1741 = root_new ['parrot';'Hash']
  vivify_563:
    set $P119, $P1741["termish"]
    unless_null $P119, vivify_564
    new $P119, "Undef"
  vivify_564:
    set $N100, $P119
    set $N101, 1
    isgt $I100, $N100, $N101
    unless $I100, if_1740_end
.annotate 'line', 274
    get_hll_global $P120, "GLOBAL"
    nqp_get_package_through_who $P121, $P120, "QAST"
    get_who $P122, $P121
    set $P123, $P122["Regex"]
    set $P124, param_1736
    unless_null $P124, vivify_565
    new $P124, "Undef"
  vivify_565:
    $P125 = $P123."new"("conj" :named("rxtype"), $P124 :named("node"))
    set $P1737, $P125
.annotate 'line', 275
    set $P1742, param_1736
    unless_null $P1742, vivify_566
    $P1742 = root_new ['parrot';'Hash']
  vivify_566:
    set $P121, $P1742["termish"]
    unless_null $P121, vivify_567
    new $P121, "Undef"
  vivify_567:
    defined $I101, $P121
    unless $I101, for_undef_568
    iter $P120, $P121
    new $P123, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P123, loop1746_handler
    push_eh $P123
  loop1746_test:
    unless $P120, loop1746_done
    shift $P122, $P120
  loop1746_redo:
    .const 'Sub' $P1744 = "357_1338064447.841" 
    capture_lex $P1744
    $P1744($P122)
  loop1746_next:
    goto loop1746_test
  loop1746_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P124, exception, 'type'
    eq $P124, .CONTROL_LOOP_NEXT, loop1746_next
    eq $P124, .CONTROL_LOOP_REDO, loop1746_redo
  loop1746_done:
    pop_eh 
  for_undef_568:
  if_1740_end:
.annotate 'line', 277
    set $P119, param_1736
    set $P120, $P1737
    unless_null $P120, vivify_571
    new $P120, "Undef"
  vivify_571:
    $P121 = $P119."!make"($P120)
.annotate 'line', 271
    .return ($P121)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "_block1743"  :anon :subid("357_1338064447.841") :outer("111_1338064447.841")
    .param pmc param_1745
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 275
    .lex "$_", param_1745
    find_lex $P123, "$qast"
    unless_null $P123, vivify_569
    new $P123, "Undef"
  vivify_569:
    find_lex $P124, "$_"
    unless_null $P124, vivify_570
    new $P124, "Undef"
  vivify_570:
    $P125 = $P124."ast"()
    $P126 = $P123."push"($P125)
    .return ($P126)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "termish" :anon :subid("112_1338064447.841") :outer("336_1338064447.841")
    .param pmc param_1748
    .param pmc param_1749
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 280
    .const 'Sub' $P1754 = "358_1338064447.841" 
    capture_lex $P1754
    .lex "self", param_1748
    .lex "$/", param_1749
.annotate 'line', 281
    new $P118, "Undef"
    set $P1750, $P118
    .lex "$qast", $P1750
.annotate 'line', 282
    new $P119, "Undef"
    set $P1751, $P119
    .lex "$lastlit", $P1751
.annotate 'line', 281
    get_hll_global $P120, "GLOBAL"
    nqp_get_package_through_who $P121, $P120, "QAST"
    get_who $P122, $P121
    set $P123, $P122["Regex"]
    set $P124, param_1749
    unless_null $P124, vivify_572
    new $P124, "Undef"
  vivify_572:
    $P125 = $P123."new"("concat" :named("rxtype"), $P124 :named("node"))
    set $P1750, $P125
.annotate 'line', 282
    new $P120, "Float"
    assign $P120, 0
    set $P1751, $P120
.annotate 'line', 283
    set $P1752, param_1749
    unless_null $P1752, vivify_573
    $P1752 = root_new ['parrot';'Hash']
  vivify_573:
    set $P121, $P1752["noun"]
    unless_null $P121, vivify_574
    new $P121, "Undef"
  vivify_574:
    defined $I100, $P121
    unless $I100, for_undef_575
    iter $P120, $P121
    new $P125, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P125, loop1768_handler
    push_eh $P125
  loop1768_test:
    unless $P120, loop1768_done
    shift $P122, $P120
  loop1768_redo:
    .const 'Sub' $P1754 = "358_1338064447.841" 
    capture_lex $P1754
    $P1754($P122)
  loop1768_next:
    goto loop1768_test
  loop1768_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P126, exception, 'type'
    eq $P126, .CONTROL_LOOP_NEXT, loop1768_next
    eq $P126, .CONTROL_LOOP_REDO, loop1768_redo
  loop1768_done:
    pop_eh 
  for_undef_575:
.annotate 'line', 298
    set $P120, param_1749
    set $P121, $P1750
    unless_null $P121, vivify_593
    new $P121, "Undef"
  vivify_593:
    $P122 = $P120."!make"($P121)
.annotate 'line', 280
    .return ($P122)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "_block1753"  :anon :subid("358_1338064447.841") :outer("112_1338064447.841")
    .param pmc param_1756
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 284
    new $P123, "Undef"
    set $P1755, $P123
    .lex "$ast", $P1755
    .lex "$_", param_1756
    find_lex $P124, "$_"
    unless_null $P124, vivify_576
    new $P124, "Undef"
  vivify_576:
    $P125 = $P124."ast"()
    set $P1755, $P125
.annotate 'line', 285
    set $P125, $P1755
    unless_null $P125, vivify_577
    new $P125, "Undef"
  vivify_577:
    if $P125, if_1757
    set $P124, $P125
    goto if_1757_end
  if_1757:
.annotate 'line', 286
    find_lex $P129, "$lastlit"
    unless_null $P129, vivify_578
    new $P129, "Undef"
  vivify_578:
    if $P129, if_1760
    set $P128, $P129
    goto if_1760_end
  if_1760:
    set $P130, $P1755
    unless_null $P130, vivify_579
    new $P130, "Undef"
  vivify_579:
    $S100 = $P130."rxtype"()
    iseq $I101, $S100, "literal"
    new $P128, 'Integer'
    set $P128, $I101
  if_1760_end:
    if $P128, if_1759
    set $P127, $P128
    goto if_1759_end
  if_1759:
.annotate 'line', 287
    get_hll_global $P131, "GLOBAL"
    nqp_get_package_through_who $P132, $P131, "QAST"
    get_who $P133, $P132
    set $P134, $P133["Node"]
    set $P1761, $P1755
    unless_null $P1761, vivify_580
    $P1761 = root_new ['parrot';'ResizablePMCArray']
  vivify_580:
    set $P135, $P1761[0]
    unless_null $P135, vivify_581
    new $P135, "Undef"
  vivify_581:
    $P136 = $P134."ACCEPTS"($P135)
    isfalse $I102, $P136
    new $P127, 'Integer'
    set $P127, $I102
  if_1759_end:
    if $P127, if_1758
.annotate 'line', 291
    find_lex $P137, "$qast"
    unless_null $P137, vivify_582
    new $P137, "Undef"
  vivify_582:
    find_lex $P138, "$_"
    unless_null $P138, vivify_583
    new $P138, "Undef"
  vivify_583:
    $P140 = $P138."ast"()
    $P137."push"($P140)
.annotate 'line', 292
    set $P140, $P1755
    unless_null $P140, vivify_584
    new $P140, "Undef"
  vivify_584:
    $S101 = $P140."rxtype"()
    iseq $I103, $S101, "literal"
    if $I103, if_1766
    new $P138, 'Integer'
    set $P138, $I103
    goto if_1766_end
  if_1766:
.annotate 'line', 293
    get_hll_global $P141, "GLOBAL"
    nqp_get_package_through_who $P142, $P141, "QAST"
    get_who $P143, $P142
    set $P144, $P143["Node"]
    set $P1767, $P1755
    unless_null $P1767, vivify_585
    $P1767 = root_new ['parrot';'ResizablePMCArray']
  vivify_585:
    set $P145, $P1767[0]
    unless_null $P145, vivify_586
    new $P145, "Undef"
  vivify_586:
    $P146 = $P144."ACCEPTS"($P145)
    isfalse $I104, $P146
    new $P138, 'Integer'
    set $P138, $I104
  if_1766_end:
    if $P138, if_1765
    new $P148, "Float"
    assign $P148, 0
    set $P137, $P148
    goto if_1765_end
  if_1765:
    set $P147, $P1755
    unless_null $P147, vivify_587
    new $P147, "Undef"
  vivify_587:
    set $P137, $P147
  if_1765_end:
.annotate 'line', 294
    store_lex "$lastlit", $P137
.annotate 'line', 290
    set $P126, $P137
.annotate 'line', 287
    goto if_1758_end
  if_1758:
.annotate 'line', 288
    find_lex $P1762, "$lastlit"
    unless_null $P1762, vivify_588
    $P1762 = root_new ['parrot';'ResizablePMCArray']
  vivify_588:
    set $P137, $P1762[0]
    unless_null $P137, vivify_589
    new $P137, "Undef"
  vivify_589:
    set $P1763, $P1755
    unless_null $P1763, vivify_590
    $P1763 = root_new ['parrot';'ResizablePMCArray']
  vivify_590:
    set $P138, $P1763[0]
    unless_null $P138, vivify_591
    new $P138, "Undef"
  vivify_591:
    concat $P139, $P137, $P138
    find_lex $P1764, "$lastlit"
    unless_null $P1764, vivify_592
    $P1764 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$lastlit", $P1764
  vivify_592:
    set $P1764[0], $P139
.annotate 'line', 287
    set $P126, $P139
  if_1758_end:
.annotate 'line', 285
    set $P124, $P126
  if_1757_end:
.annotate 'line', 283
    .return ($P124)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "quantified_atom" :anon :subid("113_1338064447.841") :outer("336_1338064447.841")
    .param pmc param_1770
    .param pmc param_1771
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 301
    .const 'Sub' $P1777 = "359_1338064447.841" 
    capture_lex $P1777
    .lex "self", param_1770
    .lex "$/", param_1771
.annotate 'line', 302
    new $P118, "Undef"
    set $P1772, $P118
    .lex "$qast", $P1772
    set $P1773, param_1771
    unless_null $P1773, vivify_594
    $P1773 = root_new ['parrot';'Hash']
  vivify_594:
    set $P119, $P1773["atom"]
    unless_null $P119, vivify_595
    new $P119, "Undef"
  vivify_595:
    $P120 = $P119."ast"()
    set $P1772, $P120
.annotate 'line', 303
    set $P1775, param_1771
    unless_null $P1775, vivify_596
    $P1775 = root_new ['parrot';'Hash']
  vivify_596:
    set $P119, $P1775["quantifier"]
    unless_null $P119, vivify_597
    new $P119, "Undef"
  vivify_597:
    unless $P119, if_1774_end
    .const 'Sub' $P1777 = "359_1338064447.841" 
    capture_lex $P1777
    $P1777()
  if_1774_end:
.annotate 'line', 308
    set $P1782, param_1771
    unless_null $P1782, vivify_604
    $P1782 = root_new ['parrot';'Hash']
  vivify_604:
    set $P119, $P1782["separator"]
    unless_null $P119, vivify_605
    new $P119, "Undef"
  vivify_605:
    unless $P119, if_1781_end
.annotate 'line', 309
    set $P120, $P1772
    unless_null $P120, vivify_606
    new $P120, "Undef"
  vivify_606:
    $S100 = $P120."rxtype"()
    iseq $I100, $S100, "quant"
    if $I100, unless_1783_end
.annotate 'line', 310
    set $P121, param_1771
    unless_null $P121, vivify_607
    new $P121, "Undef"
  vivify_607:
    $P122 = $P121."CURSOR"()
    new $P123, "String"
    assign $P123, "'"
    set $P1784, param_1771
    unless_null $P1784, vivify_608
    $P1784 = root_new ['parrot';'Hash']
  vivify_608:
    set $P1785, $P1784["separator"]
    unless_null $P1785, vivify_609
    $P1785 = root_new ['parrot';'ResizablePMCArray']
  vivify_609:
    set $P1786, $P1785[0]
    unless_null $P1786, vivify_610
    $P1786 = root_new ['parrot';'Hash']
  vivify_610:
    set $P124, $P1786["septype"]
    unless_null $P124, vivify_611
    new $P124, "Undef"
  vivify_611:
    concat $P125, $P123, $P124
    concat $P126, $P125, "' many only be used immediately following a quantifier"
    $P122."panic"($P126)
  unless_1783_end:
.annotate 'line', 313
    set $P120, $P1772
    unless_null $P120, vivify_612
    new $P120, "Undef"
  vivify_612:
    set $P1787, param_1771
    unless_null $P1787, vivify_613
    $P1787 = root_new ['parrot';'Hash']
  vivify_613:
    set $P1788, $P1787["separator"]
    unless_null $P1788, vivify_614
    $P1788 = root_new ['parrot';'ResizablePMCArray']
  vivify_614:
    set $P121, $P1788[0]
    unless_null $P121, vivify_615
    new $P121, "Undef"
  vivify_615:
    $P122 = $P121."ast"()
    $P120."push"($P122)
.annotate 'line', 314
    set $P1790, param_1771
    unless_null $P1790, vivify_616
    $P1790 = root_new ['parrot';'Hash']
  vivify_616:
    set $P1791, $P1790["separator"]
    unless_null $P1791, vivify_617
    $P1791 = root_new ['parrot';'ResizablePMCArray']
  vivify_617:
    set $P1792, $P1791[0]
    unless_null $P1792, vivify_618
    $P1792 = root_new ['parrot';'Hash']
  vivify_618:
    set $P120, $P1792["septype"]
    unless_null $P120, vivify_619
    new $P120, "Undef"
  vivify_619:
    set $S100, $P120
    iseq $I100, $S100, "%%"
    unless $I100, if_1789_end
.annotate 'line', 315
    get_hll_global $P121, "GLOBAL"
    nqp_get_package_through_who $P122, $P121, "QAST"
    get_who $P123, $P122
    set $P124, $P123["Regex"]
    set $P125, $P1772
    unless_null $P125, vivify_620
    new $P125, "Undef"
  vivify_620:
.annotate 'line', 316
    get_hll_global $P126, "GLOBAL"
    nqp_get_package_through_who $P127, $P126, "QAST"
    get_who $P128, $P127
    set $P129, $P128["Regex"]
    set $P1793, param_1771
    unless_null $P1793, vivify_621
    $P1793 = root_new ['parrot';'Hash']
  vivify_621:
    set $P1794, $P1793["separator"]
    unless_null $P1794, vivify_622
    $P1794 = root_new ['parrot';'ResizablePMCArray']
  vivify_622:
    set $P130, $P1794[0]
    unless_null $P130, vivify_623
    new $P130, "Undef"
  vivify_623:
    $P131 = $P130."ast"()
    $P132 = $P129."new"($P131, "quant" :named("rxtype"), 0 :named("min"), 1 :named("max"))
    $P133 = $P124."new"($P125, $P132, "concat" :named("rxtype"))
.annotate 'line', 315
    set $P1772, $P133
  if_1789_end:
  if_1781_end:
.annotate 'line', 319
    set $P121, $P1772
    unless_null $P121, vivify_624
    new $P121, "Undef"
  vivify_624:
    if $P121, if_1797
    set $P120, $P121
    goto if_1797_end
  if_1797:
    set $P122, $P1772
    unless_null $P122, vivify_625
    new $P122, "Undef"
  vivify_625:
    $P123 = $P122."backtrack"()
    isfalse $I100, $P123
    new $P120, 'Integer'
    set $P120, $I100
  if_1797_end:
    if $P120, if_1796
    set $P119, $P120
    goto if_1796_end
  if_1796:
    find_dynamic_lex $P126, "%*RX"
    unless_null $P126, vivify_626
    get_hll_global $P124, "GLOBAL"
    get_who $P125, $P124
    set $P126, $P125["%RX"]
    unless_null $P126, vivify_627
    die "Contextual %*RX not found"
  vivify_627:
  vivify_626:
    set $P127, $P126["r"]
    unless_null $P127, vivify_628
    new $P127, "Undef"
  vivify_628:
    set $P119, $P127
  if_1796_end:
    unless $P119, if_1795_end
    set $P128, $P1772
    unless_null $P128, vivify_629
    new $P128, "Undef"
  vivify_629:
    $P128."backtrack"("r")
  if_1795_end:
.annotate 'line', 320
    set $P119, param_1771
    set $P120, $P1772
    unless_null $P120, vivify_630
    new $P120, "Undef"
  vivify_630:
    $P121 = $P119."!make"($P120)
.annotate 'line', 301
    .return ($P121)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "_block1776"  :anon :subid("359_1338064447.841") :outer("113_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 304
    new $P120, "Undef"
    set $P1778, $P120
    .lex "$ast", $P1778
    find_lex $P1779, "$/"
    unless_null $P1779, vivify_598
    $P1779 = root_new ['parrot';'Hash']
  vivify_598:
    set $P1780, $P1779["quantifier"]
    unless_null $P1780, vivify_599
    $P1780 = root_new ['parrot';'ResizablePMCArray']
  vivify_599:
    set $P121, $P1780[0]
    unless_null $P121, vivify_600
    new $P121, "Undef"
  vivify_600:
    $P122 = $P121."ast"()
    set $P1778, $P122
.annotate 'line', 305
    set $P121, $P1778
    unless_null $P121, vivify_601
    new $P121, "Undef"
  vivify_601:
    find_lex $P122, "$qast"
    unless_null $P122, vivify_602
    new $P122, "Undef"
  vivify_602:
    $P121."unshift"($P122)
.annotate 'line', 306
    set $P121, $P1778
    unless_null $P121, vivify_603
    new $P121, "Undef"
  vivify_603:
    store_lex "$qast", $P121
.annotate 'line', 303
    .return ($P121)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "separator" :anon :subid("114_1338064447.841") :outer("336_1338064447.841")
    .param pmc param_1799
    .param pmc param_1800
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 323
    .lex "self", param_1799
    .lex "$/", param_1800
.annotate 'line', 324
    set $P118, param_1800
    set $P1801, param_1800
    unless_null $P1801, vivify_631
    $P1801 = root_new ['parrot';'Hash']
  vivify_631:
    set $P119, $P1801["quantified_atom"]
    unless_null $P119, vivify_632
    new $P119, "Undef"
  vivify_632:
    $P120 = $P119."ast"()
    $P121 = $P118."!make"($P120)
.annotate 'line', 323
    .return ($P121)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "atom" :anon :subid("115_1338064447.841") :outer("336_1338064447.841")
    .param pmc param_1803
    .param pmc param_1804
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 327
    .const 'Sub' $P1809 = "360_1338064447.841" 
    capture_lex $P1809
    .lex "self", param_1803
    .lex "$/", param_1804
.annotate 'line', 328
    set $P1806, param_1804
    unless_null $P1806, vivify_633
    $P1806 = root_new ['parrot';'Hash']
  vivify_633:
    set $P119, $P1806["metachar"]
    unless_null $P119, vivify_634
    new $P119, "Undef"
  vivify_634:
    if $P119, if_1805
.annotate 'line', 331
    .const 'Sub' $P1809 = "360_1338064447.841" 
    capture_lex $P1809
    $P121 = $P1809()
    set $P118, $P121
.annotate 'line', 328
    goto if_1805_end
  if_1805:
.annotate 'line', 329
    set $P120, param_1804
    set $P1807, param_1804
    unless_null $P1807, vivify_642
    $P1807 = root_new ['parrot';'Hash']
  vivify_642:
    set $P121, $P1807["metachar"]
    unless_null $P121, vivify_643
    new $P121, "Undef"
  vivify_643:
    $P122 = $P121."ast"()
    $P123 = $P120."!make"($P122)
.annotate 'line', 328
    set $P118, $P123
  if_1805_end:
.annotate 'line', 327
    .return ($P118)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "_block1808"  :anon :subid("360_1338064447.841") :outer("115_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 332
    new $P120, "Undef"
    set $P1810, $P120
    .lex "$qast", $P1810
    get_hll_global $P121, "GLOBAL"
    nqp_get_package_through_who $P122, $P121, "QAST"
    get_who $P124, $P122
    set $P125, $P124["Regex"]
    find_lex $P126, "$/"
    unless_null $P126, vivify_635
    new $P126, "Undef"
  vivify_635:
    set $S100, $P126
    find_lex $P127, "$/"
    unless_null $P127, vivify_636
    new $P127, "Undef"
  vivify_636:
    $P128 = $P125."new"($S100, "literal" :named("rxtype"), $P127 :named("node"))
    set $P1810, $P128
.annotate 'line', 333
    find_dynamic_lex $P124, "%*RX"
    unless_null $P124, vivify_637
    get_hll_global $P121, "GLOBAL"
    get_who $P122, $P121
    set $P124, $P122["%RX"]
    unless_null $P124, vivify_638
    die "Contextual %*RX not found"
  vivify_638:
  vivify_637:
    set $P125, $P124["i"]
    unless_null $P125, vivify_639
    new $P125, "Undef"
  vivify_639:
    unless $P125, if_1811_end
    set $P126, $P1810
    unless_null $P126, vivify_640
    new $P126, "Undef"
  vivify_640:
    $P126."subtype"("ignorecase")
  if_1811_end:
.annotate 'line', 334
    find_dynamic_lex $P121, "$/"
    set $P122, $P1810
    unless_null $P122, vivify_641
    new $P122, "Undef"
  vivify_641:
    $P124 = $P121."!make"($P122)
.annotate 'line', 331
    .return ($P124)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "quantifier:sym<*>" :anon :subid("116_1338064447.841") :outer("336_1338064447.841")
    .param pmc param_1813
    .param pmc param_1814
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 338
    .lex "self", param_1813
    .lex "$/", param_1814
.annotate 'line', 339
    new $P118, "Undef"
    set $P1815, $P118
    .lex "$qast", $P1815
    get_hll_global $P119, "GLOBAL"
    nqp_get_package_through_who $P120, $P119, "QAST"
    get_who $P121, $P120
    set $P122, $P121["Regex"]
    set $P123, param_1814
    unless_null $P123, vivify_644
    new $P123, "Undef"
  vivify_644:
    $P124 = $P122."new"("quant" :named("rxtype"), $P123 :named("node"))
    set $P1815, $P124
.annotate 'line', 340
    set $P119, param_1814
    set $P120, $P1815
    unless_null $P120, vivify_645
    new $P120, "Undef"
  vivify_645:
    set $P1816, param_1814
    unless_null $P1816, vivify_646
    $P1816 = root_new ['parrot';'Hash']
  vivify_646:
    set $P121, $P1816["backmod"]
    unless_null $P121, vivify_647
    new $P121, "Undef"
  vivify_647:
    $P122 = "backmod"($P120, $P121)
    $P123 = $P119."!make"($P122)
.annotate 'line', 338
    .return ($P123)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "quantifier:sym<+>" :anon :subid("117_1338064447.841") :outer("336_1338064447.841")
    .param pmc param_1818
    .param pmc param_1819
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 343
    .lex "self", param_1818
    .lex "$/", param_1819
.annotate 'line', 344
    new $P118, "Undef"
    set $P1820, $P118
    .lex "$qast", $P1820
    get_hll_global $P119, "GLOBAL"
    nqp_get_package_through_who $P120, $P119, "QAST"
    get_who $P121, $P120
    set $P122, $P121["Regex"]
    set $P123, param_1819
    unless_null $P123, vivify_648
    new $P123, "Undef"
  vivify_648:
    $P124 = $P122."new"("quant" :named("rxtype"), 1 :named("min"), $P123 :named("node"))
    set $P1820, $P124
.annotate 'line', 345
    set $P119, param_1819
    set $P120, $P1820
    unless_null $P120, vivify_649
    new $P120, "Undef"
  vivify_649:
    set $P1821, param_1819
    unless_null $P1821, vivify_650
    $P1821 = root_new ['parrot';'Hash']
  vivify_650:
    set $P121, $P1821["backmod"]
    unless_null $P121, vivify_651
    new $P121, "Undef"
  vivify_651:
    $P122 = "backmod"($P120, $P121)
    $P123 = $P119."!make"($P122)
.annotate 'line', 343
    .return ($P123)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "quantifier:sym<?>" :anon :subid("118_1338064447.841") :outer("336_1338064447.841")
    .param pmc param_1823
    .param pmc param_1824
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 348
    .lex "self", param_1823
    .lex "$/", param_1824
.annotate 'line', 349
    new $P118, "Undef"
    set $P1825, $P118
    .lex "$qast", $P1825
    get_hll_global $P119, "GLOBAL"
    nqp_get_package_through_who $P120, $P119, "QAST"
    get_who $P121, $P120
    set $P122, $P121["Regex"]
    set $P123, param_1824
    unless_null $P123, vivify_652
    new $P123, "Undef"
  vivify_652:
    $P124 = $P122."new"("quant" :named("rxtype"), 0 :named("min"), 1 :named("max"), $P123 :named("node"))
    set $P1825, $P124
.annotate 'line', 350
    set $P119, param_1824
    set $P120, $P1825
    unless_null $P120, vivify_653
    new $P120, "Undef"
  vivify_653:
    set $P1826, param_1824
    unless_null $P1826, vivify_654
    $P1826 = root_new ['parrot';'Hash']
  vivify_654:
    set $P121, $P1826["backmod"]
    unless_null $P121, vivify_655
    new $P121, "Undef"
  vivify_655:
    $P122 = "backmod"($P120, $P121)
    $P123 = $P119."!make"($P122)
.annotate 'line', 348
    .return ($P123)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "quantifier:sym<**>" :anon :subid("119_1338064447.841") :outer("336_1338064447.841")
    .param pmc param_1828
    .param pmc param_1829
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 353
    .lex "self", param_1828
    .lex "$/", param_1829
.annotate 'line', 354
    new $P118, "Undef"
    set $P1830, $P118
    .lex "$qast", $P1830
.annotate 'line', 353
    set $P119, $P1830
    unless_null $P119, vivify_656
    new $P119, "Undef"
  vivify_656:
.annotate 'line', 355
    get_hll_global $P119, "GLOBAL"
    nqp_get_package_through_who $P120, $P119, "QAST"
    get_who $P121, $P120
    set $P122, $P121["Regex"]
    set $P1831, param_1829
    unless_null $P1831, vivify_657
    $P1831 = root_new ['parrot';'Hash']
  vivify_657:
    set $P123, $P1831["min"]
    unless_null $P123, vivify_658
    new $P123, "Undef"
  vivify_658:
    set $N100, $P123
    set $P124, param_1829
    unless_null $P124, vivify_659
    new $P124, "Undef"
  vivify_659:
    $P125 = $P122."new"("quant" :named("rxtype"), $N100 :named("min"), $P124 :named("node"))
    set $P1830, $P125
.annotate 'line', 356
    set $P1833, param_1829
    unless_null $P1833, vivify_660
    $P1833 = root_new ['parrot';'Hash']
  vivify_660:
    set $P119, $P1833["max"]
    unless_null $P119, vivify_661
    new $P119, "Undef"
  vivify_661:
    isfalse $I100, $P119
    if $I100, if_1832
.annotate 'line', 357
    set $P1836, param_1829
    unless_null $P1836, vivify_662
    $P1836 = root_new ['parrot';'Hash']
  vivify_662:
    set $P1837, $P1836["max"]
    unless_null $P1837, vivify_663
    $P1837 = root_new ['parrot';'ResizablePMCArray']
  vivify_663:
    set $P120, $P1837[0]
    unless_null $P120, vivify_664
    new $P120, "Undef"
  vivify_664:
    set $S100, $P120
    isne $I101, $S100, "*"
    unless $I101, if_1835_end
    set $P121, $P1830
    unless_null $P121, vivify_665
    new $P121, "Undef"
  vivify_665:
    set $P1838, param_1829
    unless_null $P1838, vivify_666
    $P1838 = root_new ['parrot';'Hash']
  vivify_666:
    set $P1839, $P1838["max"]
    unless_null $P1839, vivify_667
    $P1839 = root_new ['parrot';'ResizablePMCArray']
  vivify_667:
    set $P122, $P1839[0]
    unless_null $P122, vivify_668
    new $P122, "Undef"
  vivify_668:
    set $N100, $P122
    $P121."max"($N100)
  if_1835_end:
    goto if_1832_end
  if_1832:
.annotate 'line', 356
    set $P120, $P1830
    unless_null $P120, vivify_669
    new $P120, "Undef"
  vivify_669:
    set $P1834, param_1829
    unless_null $P1834, vivify_670
    $P1834 = root_new ['parrot';'Hash']
  vivify_670:
    set $P121, $P1834["min"]
    unless_null $P121, vivify_671
    new $P121, "Undef"
  vivify_671:
    set $N100, $P121
    $P120."max"($N100)
  if_1832_end:
.annotate 'line', 358
    set $P119, param_1829
    set $P120, $P1830
    unless_null $P120, vivify_672
    new $P120, "Undef"
  vivify_672:
    set $P1840, param_1829
    unless_null $P1840, vivify_673
    $P1840 = root_new ['parrot';'Hash']
  vivify_673:
    set $P121, $P1840["backmod"]
    unless_null $P121, vivify_674
    new $P121, "Undef"
  vivify_674:
    $P122 = "backmod"($P120, $P121)
    $P123 = $P119."!make"($P122)
.annotate 'line', 353
    .return ($P123)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "metachar:sym<ws>" :anon :subid("120_1338064447.841") :outer("336_1338064447.841")
    .param pmc param_1842
    .param pmc param_1843
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 361
    .lex "self", param_1842
    .lex "$/", param_1843
.annotate 'line', 362
    new $P118, "Undef"
    set $P1844, $P118
    .lex "$qast", $P1844
.annotate 'line', 363
    find_dynamic_lex $P122, "%*RX"
    unless_null $P122, vivify_675
    get_hll_global $P120, "GLOBAL"
    get_who $P121, $P120
    set $P122, $P121["%RX"]
    unless_null $P122, vivify_676
    die "Contextual %*RX not found"
  vivify_676:
  vivify_675:
    set $P123, $P122["s"]
    unless_null $P123, vivify_677
    new $P123, "Undef"
  vivify_677:
    if $P123, if_1845
    new $P135, "Float"
    assign $P135, 0
    set $P119, $P135
    goto if_1845_end
  if_1845:
    get_hll_global $P124, "GLOBAL"
    nqp_get_package_through_who $P125, $P124, "QAST"
    get_who $P126, $P125
    set $P127, $P126["Regex"]
    get_hll_global $P128, "GLOBAL"
    nqp_get_package_through_who $P129, $P128, "PAST"
    get_who $P130, $P129
    set $P131, $P130["Node"]
    $P132 = $P131."new"("ws")
    set $P133, param_1843
    unless_null $P133, vivify_678
    new $P133, "Undef"
  vivify_678:
    $P134 = $P127."new"($P132, "ws" :named("rxtype"), "method" :named("subtype"), $P133 :named("node"))
    set $P119, $P134
  if_1845_end:
    set $P1844, $P119
.annotate 'line', 365
    set $P119, param_1843
    set $P120, $P1844
    unless_null $P120, vivify_679
    new $P120, "Undef"
  vivify_679:
    $P121 = $P119."!make"($P120)
.annotate 'line', 361
    .return ($P121)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "metachar:sym<[ ]>" :anon :subid("121_1338064447.841") :outer("336_1338064447.841")
    .param pmc param_1847
    .param pmc param_1848
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 368
    .lex "self", param_1847
    .lex "$/", param_1848
.annotate 'line', 369
    set $P118, param_1848
    set $P1849, param_1848
    unless_null $P1849, vivify_680
    $P1849 = root_new ['parrot';'Hash']
  vivify_680:
    set $P119, $P1849["nibbler"]
    unless_null $P119, vivify_681
    new $P119, "Undef"
  vivify_681:
    $P120 = $P119."ast"()
    $P121 = $P118."!make"($P120)
.annotate 'line', 368
    .return ($P121)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "metachar:sym<( )>" :anon :subid("122_1338064447.841") :outer("336_1338064447.841")
    .param pmc param_1851
    .param pmc param_1852
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 372
    .lex "self", param_1851
    .lex "$/", param_1852
.annotate 'line', 373
    new $P118, "Undef"
    set $P1853, $P118
    .lex "$subpast", $P1853
.annotate 'line', 374
    new $P119, "Undef"
    set $P1854, $P119
    .lex "$qast", $P1854
.annotate 'line', 373
    get_hll_global $P120, "GLOBAL"
    nqp_get_package_through_who $P121, $P120, "PAST"
    get_who $P122, $P121
    set $P123, $P122["Node"]
    set $P1855, param_1852
    unless_null $P1855, vivify_682
    $P1855 = root_new ['parrot';'Hash']
  vivify_682:
    set $P124, $P1855["nibbler"]
    unless_null $P124, vivify_683
    new $P124, "Undef"
  vivify_683:
    $P125 = $P124."ast"()
    $P126 = "buildsub"($P125, 1 :named("anon"))
    $P127 = $P123."new"($P126)
    set $P1853, $P127
.annotate 'line', 374
    get_hll_global $P120, "GLOBAL"
    nqp_get_package_through_who $P121, $P120, "QAST"
    get_who $P122, $P121
    set $P123, $P122["Regex"]
    set $P124, $P1853
    unless_null $P124, vivify_684
    new $P124, "Undef"
  vivify_684:
    set $P1856, param_1852
    unless_null $P1856, vivify_685
    $P1856 = root_new ['parrot';'Hash']
  vivify_685:
    set $P125, $P1856["nibbler"]
    unless_null $P125, vivify_686
    new $P125, "Undef"
  vivify_686:
    $P126 = $P125."ast"()
    set $P127, param_1852
    unless_null $P127, vivify_687
    new $P127, "Undef"
  vivify_687:
    $P128 = $P123."new"($P124, $P126, "subrule" :named("rxtype"), "capture" :named("subtype"), $P127 :named("node"))
    set $P1854, $P128
.annotate 'line', 376
    set $P120, param_1852
    set $P121, $P1854
    unless_null $P121, vivify_688
    new $P121, "Undef"
  vivify_688:
    $P122 = $P120."!make"($P121)
.annotate 'line', 372
    .return ($P122)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "metachar:sym<'>" :anon :subid("123_1338064447.841") :outer("336_1338064447.841")
    .param pmc param_1858
    .param pmc param_1859
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 379
    .lex "self", param_1858
    .lex "$/", param_1859
.annotate 'line', 380
    new $P118, "Undef"
    set $P1860, $P118
    .lex "$quote", $P1860
.annotate 'line', 382
    new $P119, "Undef"
    set $P1861, $P119
    .lex "$qast", $P1861
.annotate 'line', 380
    set $P1862, param_1859
    unless_null $P1862, vivify_689
    $P1862 = root_new ['parrot';'Hash']
  vivify_689:
    set $P120, $P1862["quote_EXPR"]
    unless_null $P120, vivify_690
    new $P120, "Undef"
  vivify_690:
    $P121 = $P120."ast"()
    set $P1860, $P121
.annotate 'line', 381
    get_hll_global $P120, "GLOBAL"
    nqp_get_package_through_who $P121, $P120, "PAST"
    get_who $P122, $P121
    set $P123, $P122["Val"]
    set $P124, $P1860
    unless_null $P124, vivify_691
    new $P124, "Undef"
  vivify_691:
    $P125 = $P123."ACCEPTS"($P124)
    unless $P125, if_1863_end
    set $P126, $P1860
    unless_null $P126, vivify_692
    new $P126, "Undef"
  vivify_692:
    $P127 = $P126."value"()
    set $P1860, $P127
  if_1863_end:
.annotate 'line', 382
    get_hll_global $P120, "GLOBAL"
    nqp_get_package_through_who $P121, $P120, "QAST"
    get_who $P122, $P121
    set $P123, $P122["Regex"]
    set $P124, $P1860
    unless_null $P124, vivify_693
    new $P124, "Undef"
  vivify_693:
    set $P125, param_1859
    unless_null $P125, vivify_694
    new $P125, "Undef"
  vivify_694:
    $P126 = $P123."new"($P124, "literal" :named("rxtype"), $P125 :named("node"))
    set $P1861, $P126
.annotate 'line', 383
    find_dynamic_lex $P122, "%*RX"
    unless_null $P122, vivify_695
    get_hll_global $P120, "GLOBAL"
    get_who $P121, $P120
    set $P122, $P121["%RX"]
    unless_null $P122, vivify_696
    die "Contextual %*RX not found"
  vivify_696:
  vivify_695:
    set $P123, $P122["i"]
    unless_null $P123, vivify_697
    new $P123, "Undef"
  vivify_697:
    unless $P123, if_1864_end
    set $P124, $P1861
    unless_null $P124, vivify_698
    new $P124, "Undef"
  vivify_698:
    $P124."subtype"("ignorecase")
  if_1864_end:
.annotate 'line', 384
    set $P120, param_1859
    set $P121, $P1861
    unless_null $P121, vivify_699
    new $P121, "Undef"
  vivify_699:
    $P122 = $P120."!make"($P121)
.annotate 'line', 379
    .return ($P122)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "metachar:sym<\">" :anon :subid("124_1338064447.841") :outer("336_1338064447.841")
    .param pmc param_1866
    .param pmc param_1867
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 387
    .lex "self", param_1866
    .lex "$/", param_1867
.annotate 'line', 388
    new $P118, "Undef"
    set $P1868, $P118
    .lex "$quote", $P1868
.annotate 'line', 390
    new $P119, "Undef"
    set $P1869, $P119
    .lex "$qast", $P1869
.annotate 'line', 388
    set $P1870, param_1867
    unless_null $P1870, vivify_700
    $P1870 = root_new ['parrot';'Hash']
  vivify_700:
    set $P120, $P1870["quote_EXPR"]
    unless_null $P120, vivify_701
    new $P120, "Undef"
  vivify_701:
    $P121 = $P120."ast"()
    set $P1868, $P121
.annotate 'line', 389
    get_hll_global $P120, "GLOBAL"
    nqp_get_package_through_who $P121, $P120, "PAST"
    get_who $P122, $P121
    set $P123, $P122["Val"]
    set $P124, $P1868
    unless_null $P124, vivify_702
    new $P124, "Undef"
  vivify_702:
    $P125 = $P123."ACCEPTS"($P124)
    unless $P125, if_1871_end
    set $P126, $P1868
    unless_null $P126, vivify_703
    new $P126, "Undef"
  vivify_703:
    $P127 = $P126."value"()
    set $P1868, $P127
  if_1871_end:
.annotate 'line', 390
    get_hll_global $P120, "GLOBAL"
    nqp_get_package_through_who $P121, $P120, "QAST"
    get_who $P122, $P121
    set $P123, $P122["Regex"]
    set $P124, $P1868
    unless_null $P124, vivify_704
    new $P124, "Undef"
  vivify_704:
    set $P125, param_1867
    unless_null $P125, vivify_705
    new $P125, "Undef"
  vivify_705:
    $P126 = $P123."new"($P124, "literal" :named("rxtype"), $P125 :named("node"))
    set $P1869, $P126
.annotate 'line', 391
    find_dynamic_lex $P122, "%*RX"
    unless_null $P122, vivify_706
    get_hll_global $P120, "GLOBAL"
    get_who $P121, $P120
    set $P122, $P121["%RX"]
    unless_null $P122, vivify_707
    die "Contextual %*RX not found"
  vivify_707:
  vivify_706:
    set $P123, $P122["i"]
    unless_null $P123, vivify_708
    new $P123, "Undef"
  vivify_708:
    unless $P123, if_1872_end
    set $P124, $P1869
    unless_null $P124, vivify_709
    new $P124, "Undef"
  vivify_709:
    $P124."subtype"("ignorecase")
  if_1872_end:
.annotate 'line', 392
    set $P120, param_1867
    set $P121, $P1869
    unless_null $P121, vivify_710
    new $P121, "Undef"
  vivify_710:
    $P122 = $P120."!make"($P121)
.annotate 'line', 387
    .return ($P122)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "metachar:sym<.>" :anon :subid("125_1338064447.841") :outer("336_1338064447.841")
    .param pmc param_1874
    .param pmc param_1875
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 395
    .lex "self", param_1874
    .lex "$/", param_1875
.annotate 'line', 396
    set $P118, param_1875
    get_hll_global $P119, "GLOBAL"
    nqp_get_package_through_who $P120, $P119, "QAST"
    get_who $P121, $P120
    set $P122, $P121["Regex"]
    set $P123, param_1875
    unless_null $P123, vivify_711
    new $P123, "Undef"
  vivify_711:
    $P124 = $P122."new"("cclass" :named("rxtype"), "." :named("subtype"), $P123 :named("node"))
    $P125 = $P118."!make"($P124)
.annotate 'line', 395
    .return ($P125)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "metachar:sym<^>" :anon :subid("126_1338064447.841") :outer("336_1338064447.841")
    .param pmc param_1877
    .param pmc param_1878
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 399
    .lex "self", param_1877
    .lex "$/", param_1878
.annotate 'line', 400
    set $P118, param_1878
    get_hll_global $P119, "GLOBAL"
    nqp_get_package_through_who $P120, $P119, "QAST"
    get_who $P121, $P120
    set $P122, $P121["Regex"]
    set $P123, param_1878
    unless_null $P123, vivify_712
    new $P123, "Undef"
  vivify_712:
    $P124 = $P122."new"("anchor" :named("rxtype"), "bos" :named("subtype"), $P123 :named("node"))
    $P125 = $P118."!make"($P124)
.annotate 'line', 399
    .return ($P125)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "metachar:sym<^^>" :anon :subid("127_1338064447.841") :outer("336_1338064447.841")
    .param pmc param_1880
    .param pmc param_1881
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 403
    .lex "self", param_1880
    .lex "$/", param_1881
.annotate 'line', 404
    set $P118, param_1881
    get_hll_global $P119, "GLOBAL"
    nqp_get_package_through_who $P120, $P119, "QAST"
    get_who $P121, $P120
    set $P122, $P121["Regex"]
    set $P123, param_1881
    unless_null $P123, vivify_713
    new $P123, "Undef"
  vivify_713:
    $P124 = $P122."new"("anchor" :named("rxtype"), "bol" :named("subtype"), $P123 :named("node"))
    $P125 = $P118."!make"($P124)
.annotate 'line', 403
    .return ($P125)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "metachar:sym<$>" :anon :subid("128_1338064447.841") :outer("336_1338064447.841")
    .param pmc param_1883
    .param pmc param_1884
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 407
    .lex "self", param_1883
    .lex "$/", param_1884
.annotate 'line', 408
    set $P118, param_1884
    get_hll_global $P119, "GLOBAL"
    nqp_get_package_through_who $P120, $P119, "QAST"
    get_who $P121, $P120
    set $P122, $P121["Regex"]
    set $P123, param_1884
    unless_null $P123, vivify_714
    new $P123, "Undef"
  vivify_714:
    $P124 = $P122."new"("anchor" :named("rxtype"), "eos" :named("subtype"), $P123 :named("node"))
    $P125 = $P118."!make"($P124)
.annotate 'line', 407
    .return ($P125)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "metachar:sym<$$>" :anon :subid("129_1338064447.841") :outer("336_1338064447.841")
    .param pmc param_1886
    .param pmc param_1887
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 411
    .lex "self", param_1886
    .lex "$/", param_1887
.annotate 'line', 412
    set $P118, param_1887
    get_hll_global $P119, "GLOBAL"
    nqp_get_package_through_who $P120, $P119, "QAST"
    get_who $P121, $P120
    set $P122, $P121["Regex"]
    set $P123, param_1887
    unless_null $P123, vivify_715
    new $P123, "Undef"
  vivify_715:
    $P124 = $P122."new"("anchor" :named("rxtype"), "eol" :named("subtype"), $P123 :named("node"))
    $P125 = $P118."!make"($P124)
.annotate 'line', 411
    .return ($P125)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "metachar:sym<lwb>" :anon :subid("130_1338064447.841") :outer("336_1338064447.841")
    .param pmc param_1889
    .param pmc param_1890
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 415
    .lex "self", param_1889
    .lex "$/", param_1890
.annotate 'line', 416
    set $P118, param_1890
    get_hll_global $P119, "GLOBAL"
    nqp_get_package_through_who $P120, $P119, "QAST"
    get_who $P121, $P120
    set $P122, $P121["Regex"]
    set $P123, param_1890
    unless_null $P123, vivify_716
    new $P123, "Undef"
  vivify_716:
    $P124 = $P122."new"("anchor" :named("rxtype"), "lwb" :named("subtype"), $P123 :named("node"))
    $P125 = $P118."!make"($P124)
.annotate 'line', 415
    .return ($P125)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "metachar:sym<rwb>" :anon :subid("131_1338064447.841") :outer("336_1338064447.841")
    .param pmc param_1892
    .param pmc param_1893
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 419
    .lex "self", param_1892
    .lex "$/", param_1893
.annotate 'line', 420
    set $P118, param_1893
    get_hll_global $P119, "GLOBAL"
    nqp_get_package_through_who $P120, $P119, "QAST"
    get_who $P121, $P120
    set $P122, $P121["Regex"]
    set $P123, param_1893
    unless_null $P123, vivify_717
    new $P123, "Undef"
  vivify_717:
    $P124 = $P122."new"("anchor" :named("rxtype"), "rwb" :named("subtype"), $P123 :named("node"))
    $P125 = $P118."!make"($P124)
.annotate 'line', 419
    .return ($P125)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "metachar:sym<bs>" :anon :subid("132_1338064447.841") :outer("336_1338064447.841")
    .param pmc param_1895
    .param pmc param_1896
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 423
    .lex "self", param_1895
    .lex "$/", param_1896
.annotate 'line', 424
    set $P118, param_1896
    set $P1897, param_1896
    unless_null $P1897, vivify_718
    $P1897 = root_new ['parrot';'Hash']
  vivify_718:
    set $P119, $P1897["backslash"]
    unless_null $P119, vivify_719
    new $P119, "Undef"
  vivify_719:
    $P120 = $P119."ast"()
    $P121 = $P118."!make"($P120)
.annotate 'line', 423
    .return ($P121)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "metachar:sym<assert>" :anon :subid("133_1338064447.841") :outer("336_1338064447.841")
    .param pmc param_1899
    .param pmc param_1900
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 427
    .lex "self", param_1899
    .lex "$/", param_1900
.annotate 'line', 428
    set $P118, param_1900
    set $P1901, param_1900
    unless_null $P1901, vivify_720
    $P1901 = root_new ['parrot';'Hash']
  vivify_720:
    set $P119, $P1901["assertion"]
    unless_null $P119, vivify_721
    new $P119, "Undef"
  vivify_721:
    $P120 = $P119."ast"()
    $P121 = $P118."!make"($P120)
.annotate 'line', 427
    .return ($P121)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "metachar:sym<var>" :anon :subid("134_1338064447.841") :outer("336_1338064447.841")
    .param pmc param_1903
    .param pmc param_1904
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 431
    .lex "self", param_1903
    .lex "$/", param_1904
.annotate 'line', 432
    new $P118, "Undef"
    set $P1905, $P118
    .lex "$qast", $P1905
.annotate 'line', 433
    new $P119, "Undef"
    set $P1906, $P119
    .lex "$name", $P1906
.annotate 'line', 431
    set $P120, $P1905
    unless_null $P120, vivify_722
    new $P120, "Undef"
  vivify_722:
.annotate 'line', 433
    set $P1908, param_1904
    unless_null $P1908, vivify_723
    $P1908 = root_new ['parrot';'Hash']
  vivify_723:
    set $P121, $P1908["pos"]
    unless_null $P121, vivify_724
    new $P121, "Undef"
  vivify_724:
    if $P121, if_1907
    set $P1910, param_1904
    unless_null $P1910, vivify_725
    $P1910 = root_new ['parrot';'Hash']
  vivify_725:
    set $P123, $P1910["name"]
    unless_null $P123, vivify_726
    new $P123, "Undef"
  vivify_726:
    set $S100, $P123
    new $P120, 'String'
    set $P120, $S100
    goto if_1907_end
  if_1907:
    set $P1909, param_1904
    unless_null $P1909, vivify_727
    $P1909 = root_new ['parrot';'Hash']
  vivify_727:
    set $P122, $P1909["pos"]
    unless_null $P122, vivify_728
    new $P122, "Undef"
  vivify_728:
    set $N100, $P122
    new $P120, 'Float'
    set $P120, $N100
  if_1907_end:
    set $P1906, $P120
.annotate 'line', 434
    set $P1912, param_1904
    unless_null $P1912, vivify_729
    $P1912 = root_new ['parrot';'Hash']
  vivify_729:
    set $P120, $P1912["quantified_atom"]
    unless_null $P120, vivify_730
    new $P120, "Undef"
  vivify_730:
    if $P120, if_1911
.annotate 'line', 448
    get_hll_global $P121, "GLOBAL"
    nqp_get_package_through_who $P122, $P121, "QAST"
    get_who $P123, $P122
    set $P124, $P123["Regex"]
    get_hll_global $P125, "GLOBAL"
    nqp_get_package_through_who $P126, $P125, "PAST"
    get_who $P127, $P126
    set $P128, $P127["Node"]
    set $P129, $P1906
    unless_null $P129, vivify_731
    new $P129, "Undef"
  vivify_731:
    $P130 = $P128."new"("!BACKREF", $P129)
    set $P131, param_1904
    unless_null $P131, vivify_732
    new $P131, "Undef"
  vivify_732:
    $P132 = $P124."new"($P130, "subrule" :named("rxtype"), "method" :named("subtype"), $P131 :named("node"))
    set $P1905, $P132
.annotate 'line', 447
    goto if_1911_end
  if_1911:
.annotate 'line', 435
    set $P1913, param_1904
    unless_null $P1913, vivify_733
    $P1913 = root_new ['parrot';'Hash']
  vivify_733:
    set $P1914, $P1913["quantified_atom"]
    unless_null $P1914, vivify_734
    $P1914 = root_new ['parrot';'ResizablePMCArray']
  vivify_734:
    set $P121, $P1914[0]
    unless_null $P121, vivify_735
    new $P121, "Undef"
  vivify_735:
    $P122 = $P121."ast"()
    set $P1905, $P122
.annotate 'line', 436
    set $P122, $P1905
    unless_null $P122, vivify_736
    new $P122, "Undef"
  vivify_736:
    $S100 = $P122."rxtype"()
    iseq $I100, $S100, "quant"
    if $I100, if_1916
    new $P121, 'Integer'
    set $P121, $I100
    goto if_1916_end
  if_1916:
    set $P1917, $P1905
    unless_null $P1917, vivify_737
    $P1917 = root_new ['parrot';'ResizablePMCArray']
  vivify_737:
    set $P123, $P1917[0]
    unless_null $P123, vivify_738
    new $P123, "Undef"
  vivify_738:
    $S101 = $P123."rxtype"()
    iseq $I101, $S101, "subrule"
    new $P121, 'Integer'
    set $P121, $I101
  if_1916_end:
    if $P121, if_1915
.annotate 'line', 439
    set $P124, $P1905
    unless_null $P124, vivify_739
    new $P124, "Undef"
  vivify_739:
    $S102 = $P124."rxtype"()
    iseq $I102, $S102, "subrule"
    if $I102, if_1919
.annotate 'line', 443
    get_hll_global $P125, "GLOBAL"
    nqp_get_package_through_who $P126, $P125, "QAST"
    get_who $P127, $P126
    set $P128, $P127["Regex"]
    set $P129, $P1905
    unless_null $P129, vivify_740
    new $P129, "Undef"
  vivify_740:
    set $P130, $P1906
    unless_null $P130, vivify_741
    new $P130, "Undef"
  vivify_741:
    set $P131, param_1904
    unless_null $P131, vivify_742
    new $P131, "Undef"
  vivify_742:
    $P132 = $P128."new"($P129, $P130 :named("name"), "subcapture" :named("rxtype"), $P131 :named("node"))
    set $P1905, $P132
.annotate 'line', 442
    goto if_1919_end
  if_1919:
.annotate 'line', 440
    set $P125, param_1903
    nqp_decontainerize $P126, $P125
    set $P127, $P1905
    unless_null $P127, vivify_743
    new $P127, "Undef"
  vivify_743:
    set $P128, $P1906
    unless_null $P128, vivify_744
    new $P128, "Undef"
  vivify_744:
    $P126."subrule_alias"($P127, $P128)
  if_1919_end:
.annotate 'line', 439
    goto if_1915_end
  if_1915:
.annotate 'line', 437
    set $P124, param_1903
    nqp_decontainerize $P125, $P124
    set $P1918, $P1905
    unless_null $P1918, vivify_745
    $P1918 = root_new ['parrot';'ResizablePMCArray']
  vivify_745:
    set $P126, $P1918[0]
    unless_null $P126, vivify_746
    new $P126, "Undef"
  vivify_746:
    set $P127, $P1906
    unless_null $P127, vivify_747
    new $P127, "Undef"
  vivify_747:
    $P125."subrule_alias"($P126, $P127)
  if_1915_end:
  if_1911_end:
.annotate 'line', 451
    set $P120, param_1904
    set $P121, $P1905
    unless_null $P121, vivify_748
    new $P121, "Undef"
  vivify_748:
    $P122 = $P120."!make"($P121)
.annotate 'line', 431
    .return ($P122)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "metachar:sym<~>" :anon :subid("135_1338064447.841") :outer("336_1338064447.841")
    .param pmc param_1921
    .param pmc param_1922
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 454
    .lex "self", param_1921
    .lex "$/", param_1922
.annotate 'line', 455
    set $P118, param_1922
    get_hll_global $P119, "GLOBAL"
    nqp_get_package_through_who $P120, $P119, "QAST"
    get_who $P121, $P120
    set $P122, $P121["Regex"]
.annotate 'line', 456
    set $P1923, param_1922
    unless_null $P1923, vivify_749
    $P1923 = root_new ['parrot';'Hash']
  vivify_749:
    set $P123, $P1923["EXPR"]
    unless_null $P123, vivify_750
    new $P123, "Undef"
  vivify_750:
    $P124 = $P123."ast"()
.annotate 'line', 457
    get_hll_global $P125, "GLOBAL"
    nqp_get_package_through_who $P126, $P125, "QAST"
    get_who $P127, $P126
    set $P128, $P127["Regex"]
.annotate 'line', 458
    set $P1924, param_1922
    unless_null $P1924, vivify_751
    $P1924 = root_new ['parrot';'Hash']
  vivify_751:
    set $P129, $P1924["GOAL"]
    unless_null $P129, vivify_752
    new $P129, "Undef"
  vivify_752:
    $P130 = $P129."ast"()
.annotate 'line', 459
    get_hll_global $P131, "GLOBAL"
    nqp_get_package_through_who $P132, $P131, "QAST"
    get_who $P133, $P132
    set $P134, $P133["Regex"]
    get_hll_global $P135, "GLOBAL"
    nqp_get_package_through_who $P136, $P135, "PAST"
    get_who $P137, $P136
    set $P138, $P137["Node"]
    set $P1925, param_1922
    unless_null $P1925, vivify_753
    $P1925 = root_new ['parrot';'Hash']
  vivify_753:
    set $P139, $P1925["GOAL"]
    unless_null $P139, vivify_754
    new $P139, "Undef"
  vivify_754:
    set $S100, $P139
    $P140 = $P138."new"("FAILGOAL", $S100)
    $P141 = $P134."new"($P140, "subrule" :named("rxtype"), "method" :named("subtype"))
    $P142 = $P128."new"($P130, $P141, "altseq" :named("rxtype"))
.annotate 'line', 457
    $P143 = $P122."new"($P124, $P142, "concat" :named("rxtype"))
.annotate 'line', 455
    $P144 = $P118."!make"($P143)
.annotate 'line', 454
    .return ($P144)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "backslash:sym<s>" :anon :subid("136_1338064447.841") :outer("336_1338064447.841")
    .param pmc param_1927
    .param pmc param_1928
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 467
    .lex "self", param_1927
    .lex "$/", param_1928
.annotate 'line', 468
    set $P118, param_1928
    get_hll_global $P119, "GLOBAL"
    nqp_get_package_through_who $P120, $P119, "QAST"
    get_who $P121, $P120
    set $P122, $P121["Regex"]
.annotate 'line', 469
    set $P1930, param_1928
    unless_null $P1930, vivify_755
    $P1930 = root_new ['parrot';'Hash']
  vivify_755:
    set $P124, $P1930["sym"]
    unless_null $P124, vivify_756
    new $P124, "Undef"
  vivify_756:
    set $S100, $P124
    iseq $I100, $S100, "n"
    if $I100, if_1929
    set $P1931, param_1928
    unless_null $P1931, vivify_757
    $P1931 = root_new ['parrot';'Hash']
  vivify_757:
    set $P126, $P1931["sym"]
    unless_null $P126, vivify_758
    new $P126, "Undef"
  vivify_758:
    set $S101, $P126
    new $P123, 'String'
    set $P123, $S101
    goto if_1929_end
  if_1929:
    new $P125, "String"
    assign $P125, "nl"
    set $P123, $P125
  if_1929_end:
.annotate 'line', 470
    set $P1932, param_1928
    unless_null $P1932, vivify_759
    $P1932 = root_new ['parrot';'Hash']
  vivify_759:
    set $P127, $P1932["sym"]
    unless_null $P127, vivify_760
    new $P127, "Undef"
  vivify_760:
    set $S102, $P127
    isle $I101, $S102, "Z"
.annotate 'line', 468
    set $P128, param_1928
    unless_null $P128, vivify_761
    new $P128, "Undef"
  vivify_761:
    $P129 = $P122."new"(".CCLASS_WHITESPACE", "cclass" :named("rxtype"), $P123 :named("subtype"), $I101 :named("negate"), $P128 :named("node"))
    $P130 = $P118."!make"($P129)
.annotate 'line', 467
    .return ($P130)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "backslash:sym<b>" :anon :subid("137_1338064447.841") :outer("336_1338064447.841")
    .param pmc param_1934
    .param pmc param_1935
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 473
    .lex "self", param_1934
    .lex "$/", param_1935
.annotate 'line', 474
    new $P118, "Undef"
    set $P1936, $P118
    .lex "$qast", $P1936
    get_hll_global $P119, "GLOBAL"
    nqp_get_package_through_who $P120, $P119, "QAST"
    get_who $P121, $P120
    set $P122, $P121["Regex"]
.annotate 'line', 475
    set $P1937, param_1935
    unless_null $P1937, vivify_762
    $P1937 = root_new ['parrot';'Hash']
  vivify_762:
    set $P123, $P1937["sym"]
    unless_null $P123, vivify_763
    new $P123, "Undef"
  vivify_763:
    set $S100, $P123
    iseq $I100, $S100, "B"
.annotate 'line', 474
    set $P124, param_1935
    unless_null $P124, vivify_764
    new $P124, "Undef"
  vivify_764:
    $P125 = $P122."new"("\b", "enumcharlist" :named("rxtype"), $I100 :named("negate"), $P124 :named("node"))
    set $P1936, $P125
.annotate 'line', 476
    set $P119, param_1935
    set $P120, $P1936
    unless_null $P120, vivify_765
    new $P120, "Undef"
  vivify_765:
    $P121 = $P119."!make"($P120)
.annotate 'line', 473
    .return ($P121)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "backslash:sym<e>" :anon :subid("138_1338064447.841") :outer("336_1338064447.841")
    .param pmc param_1939
    .param pmc param_1940
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 479
    .lex "self", param_1939
    .lex "$/", param_1940
.annotate 'line', 480
    new $P118, "Undef"
    set $P1941, $P118
    .lex "$qast", $P1941
    get_hll_global $P119, "GLOBAL"
    nqp_get_package_through_who $P120, $P119, "QAST"
    get_who $P121, $P120
    set $P122, $P121["Regex"]
.annotate 'line', 481
    set $P1942, param_1940
    unless_null $P1942, vivify_766
    $P1942 = root_new ['parrot';'Hash']
  vivify_766:
    set $P123, $P1942["sym"]
    unless_null $P123, vivify_767
    new $P123, "Undef"
  vivify_767:
    set $S100, $P123
    iseq $I100, $S100, "E"
.annotate 'line', 480
    set $P124, param_1940
    unless_null $P124, vivify_768
    new $P124, "Undef"
  vivify_768:
    $P125 = $P122."new"("\e", "enumcharlist" :named("rxtype"), $I100 :named("negate"), $P124 :named("node"))
    set $P1941, $P125
.annotate 'line', 482
    set $P119, param_1940
    set $P120, $P1941
    unless_null $P120, vivify_769
    new $P120, "Undef"
  vivify_769:
    $P121 = $P119."!make"($P120)
.annotate 'line', 479
    .return ($P121)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "backslash:sym<f>" :anon :subid("139_1338064447.841") :outer("336_1338064447.841")
    .param pmc param_1944
    .param pmc param_1945
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 485
    .lex "self", param_1944
    .lex "$/", param_1945
.annotate 'line', 486
    new $P118, "Undef"
    set $P1946, $P118
    .lex "$qast", $P1946
    get_hll_global $P119, "GLOBAL"
    nqp_get_package_through_who $P120, $P119, "QAST"
    get_who $P121, $P120
    set $P122, $P121["Regex"]
.annotate 'line', 487
    set $P1947, param_1945
    unless_null $P1947, vivify_770
    $P1947 = root_new ['parrot';'Hash']
  vivify_770:
    set $P123, $P1947["sym"]
    unless_null $P123, vivify_771
    new $P123, "Undef"
  vivify_771:
    set $S100, $P123
    iseq $I100, $S100, "F"
.annotate 'line', 486
    set $P124, param_1945
    unless_null $P124, vivify_772
    new $P124, "Undef"
  vivify_772:
    $P125 = $P122."new"("\f", "enumcharlist" :named("rxtype"), $I100 :named("negate"), $P124 :named("node"))
    set $P1946, $P125
.annotate 'line', 488
    set $P119, param_1945
    set $P120, $P1946
    unless_null $P120, vivify_773
    new $P120, "Undef"
  vivify_773:
    $P121 = $P119."!make"($P120)
.annotate 'line', 485
    .return ($P121)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "backslash:sym<h>" :anon :subid("140_1338064447.841") :outer("336_1338064447.841")
    .param pmc param_1949
    .param pmc param_1950
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 491
    .lex "self", param_1949
    .lex "$/", param_1950
.annotate 'line', 492
    new $P118, "Undef"
    set $P1951, $P118
    .lex "$qast", $P1951
    get_hll_global $P119, "GLOBAL"
    nqp_get_package_through_who $P120, $P119, "QAST"
    get_who $P121, $P120
    set $P122, $P121["Regex"]
.annotate 'line', 493
    set $P1952, param_1950
    unless_null $P1952, vivify_774
    $P1952 = root_new ['parrot';'Hash']
  vivify_774:
    set $P123, $P1952["sym"]
    unless_null $P123, vivify_775
    new $P123, "Undef"
  vivify_775:
    set $S100, $P123
    iseq $I100, $S100, "H"
.annotate 'line', 492
    set $P124, param_1950
    unless_null $P124, vivify_776
    new $P124, "Undef"
  vivify_776:
    $P125 = $P122."new"(unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", "enumcharlist" :named("rxtype"), $I100 :named("negate"), $P124 :named("node"))
    set $P1951, $P125
.annotate 'line', 494
    set $P119, param_1950
    set $P120, $P1951
    unless_null $P120, vivify_777
    new $P120, "Undef"
  vivify_777:
    $P121 = $P119."!make"($P120)
.annotate 'line', 491
    .return ($P121)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "backslash:sym<r>" :anon :subid("141_1338064447.841") :outer("336_1338064447.841")
    .param pmc param_1954
    .param pmc param_1955
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 497
    .lex "self", param_1954
    .lex "$/", param_1955
.annotate 'line', 498
    new $P118, "Undef"
    set $P1956, $P118
    .lex "$qast", $P1956
    get_hll_global $P119, "GLOBAL"
    nqp_get_package_through_who $P120, $P119, "QAST"
    get_who $P121, $P120
    set $P122, $P121["Regex"]
.annotate 'line', 499
    set $P1957, param_1955
    unless_null $P1957, vivify_778
    $P1957 = root_new ['parrot';'Hash']
  vivify_778:
    set $P123, $P1957["sym"]
    unless_null $P123, vivify_779
    new $P123, "Undef"
  vivify_779:
    set $S100, $P123
    iseq $I100, $S100, "R"
.annotate 'line', 498
    set $P124, param_1955
    unless_null $P124, vivify_780
    new $P124, "Undef"
  vivify_780:
    $P125 = $P122."new"("\r", "enumcharlist" :named("rxtype"), $I100 :named("negate"), $P124 :named("node"))
    set $P1956, $P125
.annotate 'line', 500
    set $P119, param_1955
    set $P120, $P1956
    unless_null $P120, vivify_781
    new $P120, "Undef"
  vivify_781:
    $P121 = $P119."!make"($P120)
.annotate 'line', 497
    .return ($P121)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "backslash:sym<t>" :anon :subid("142_1338064447.841") :outer("336_1338064447.841")
    .param pmc param_1959
    .param pmc param_1960
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 503
    .lex "self", param_1959
    .lex "$/", param_1960
.annotate 'line', 504
    new $P118, "Undef"
    set $P1961, $P118
    .lex "$qast", $P1961
    get_hll_global $P119, "GLOBAL"
    nqp_get_package_through_who $P120, $P119, "QAST"
    get_who $P121, $P120
    set $P122, $P121["Regex"]
.annotate 'line', 505
    set $P1962, param_1960
    unless_null $P1962, vivify_782
    $P1962 = root_new ['parrot';'Hash']
  vivify_782:
    set $P123, $P1962["sym"]
    unless_null $P123, vivify_783
    new $P123, "Undef"
  vivify_783:
    set $S100, $P123
    iseq $I100, $S100, "T"
.annotate 'line', 504
    set $P124, param_1960
    unless_null $P124, vivify_784
    new $P124, "Undef"
  vivify_784:
    $P125 = $P122."new"("\t", "enumcharlist" :named("rxtype"), $I100 :named("negate"), $P124 :named("node"))
    set $P1961, $P125
.annotate 'line', 506
    set $P119, param_1960
    set $P120, $P1961
    unless_null $P120, vivify_785
    new $P120, "Undef"
  vivify_785:
    $P121 = $P119."!make"($P120)
.annotate 'line', 503
    .return ($P121)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "backslash:sym<v>" :anon :subid("143_1338064447.841") :outer("336_1338064447.841")
    .param pmc param_1964
    .param pmc param_1965
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 509
    .lex "self", param_1964
    .lex "$/", param_1965
.annotate 'line', 510
    new $P118, "Undef"
    set $P1966, $P118
    .lex "$qast", $P1966
    get_hll_global $P119, "GLOBAL"
    nqp_get_package_through_who $P120, $P119, "QAST"
    get_who $P121, $P120
    set $P122, $P121["Regex"]
.annotate 'line', 512
    set $P1967, param_1965
    unless_null $P1967, vivify_786
    $P1967 = root_new ['parrot';'Hash']
  vivify_786:
    set $P123, $P1967["sym"]
    unless_null $P123, vivify_787
    new $P123, "Undef"
  vivify_787:
    set $S100, $P123
    iseq $I100, $S100, "V"
.annotate 'line', 510
    set $P124, param_1965
    unless_null $P124, vivify_788
    new $P124, "Undef"
  vivify_788:
    $P125 = $P122."new"(unicode:"\n\x{b}\f\r\x{85}\u2028\u2029", "enumcharlist" :named("rxtype"), $I100 :named("negate"), $P124 :named("node"))
    set $P1966, $P125
.annotate 'line', 513
    set $P119, param_1965
    set $P120, $P1966
    unless_null $P120, vivify_789
    new $P120, "Undef"
  vivify_789:
    $P121 = $P119."!make"($P120)
.annotate 'line', 509
    .return ($P121)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "backslash:sym<o>" :anon :subid("144_1338064447.841") :outer("336_1338064447.841")
    .param pmc param_1969
    .param pmc param_1970
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 516
    .lex "self", param_1969
    .lex "$/", param_1970
.annotate 'line', 517
    new $P118, "Undef"
    set $P1971, $P118
    .lex "$octlit", $P1971
.annotate 'line', 518
    get_hll_global $P119, "GLOBAL"
    nqp_get_package_through_who $P120, $P119, "HLL"
    get_who $P121, $P120
    set $P122, $P121["Actions"]
    set $P1973, param_1970
    unless_null $P1973, vivify_790
    $P1973 = root_new ['parrot';'Hash']
  vivify_790:
    set $P124, $P1973["octint"]
    unless_null $P124, vivify_791
    new $P124, "Undef"
  vivify_791:
    unless $P124, unless_1972
    set $P123, $P124
    goto unless_1972_end
  unless_1972:
    set $P1974, param_1970
    unless_null $P1974, vivify_792
    $P1974 = root_new ['parrot';'Hash']
  vivify_792:
    set $P1975, $P1974["octints"]
    unless_null $P1975, vivify_793
    $P1975 = root_new ['parrot';'Hash']
  vivify_793:
    set $P125, $P1975["octint"]
    unless_null $P125, vivify_794
    new $P125, "Undef"
  vivify_794:
    set $P123, $P125
  unless_1972_end:
    $P126 = $P122."ints_to_string"($P123)
    set $P1971, $P126
.annotate 'line', 519
    set $P119, param_1970
    set $P1977, param_1970
    unless_null $P1977, vivify_795
    $P1977 = root_new ['parrot';'Hash']
  vivify_795:
    set $P121, $P1977["sym"]
    unless_null $P121, vivify_796
    new $P121, "Undef"
  vivify_796:
    set $S100, $P121
    iseq $I100, $S100, "O"
    if $I100, if_1976
.annotate 'line', 522
    get_hll_global $P129, "GLOBAL"
    nqp_get_package_through_who $P130, $P129, "QAST"
    get_who $P131, $P130
    set $P132, $P131["Regex"]
    set $P133, $P1971
    unless_null $P133, vivify_797
    new $P133, "Undef"
  vivify_797:
    set $P134, param_1970
    unless_null $P134, vivify_798
    new $P134, "Undef"
  vivify_798:
    $P135 = $P132."new"($P133, "literal" :named("rxtype"), $P134 :named("node"))
    set $P120, $P135
.annotate 'line', 519
    goto if_1976_end
  if_1976:
.annotate 'line', 520
    get_hll_global $P122, "GLOBAL"
    nqp_get_package_through_who $P123, $P122, "QAST"
    get_who $P124, $P123
    set $P125, $P124["Regex"]
    set $P126, $P1971
    unless_null $P126, vivify_799
    new $P126, "Undef"
  vivify_799:
    set $P127, param_1970
    unless_null $P127, vivify_800
    new $P127, "Undef"
  vivify_800:
    $P128 = $P125."new"($P126, "enumcharlist" :named("rxtype"), 1 :named("negate"), $P127 :named("node"))
    set $P120, $P128
  if_1976_end:
    $P136 = $P119."!make"($P120)
.annotate 'line', 516
    .return ($P136)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "backslash:sym<x>" :anon :subid("145_1338064447.841") :outer("336_1338064447.841")
    .param pmc param_1979
    .param pmc param_1980
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 525
    .lex "self", param_1979
    .lex "$/", param_1980
.annotate 'line', 526
    new $P118, "Undef"
    set $P1981, $P118
    .lex "$hexlit", $P1981
.annotate 'line', 527
    get_hll_global $P119, "GLOBAL"
    nqp_get_package_through_who $P120, $P119, "HLL"
    get_who $P121, $P120
    set $P122, $P121["Actions"]
    set $P1983, param_1980
    unless_null $P1983, vivify_801
    $P1983 = root_new ['parrot';'Hash']
  vivify_801:
    set $P124, $P1983["hexint"]
    unless_null $P124, vivify_802
    new $P124, "Undef"
  vivify_802:
    unless $P124, unless_1982
    set $P123, $P124
    goto unless_1982_end
  unless_1982:
    set $P1984, param_1980
    unless_null $P1984, vivify_803
    $P1984 = root_new ['parrot';'Hash']
  vivify_803:
    set $P1985, $P1984["hexints"]
    unless_null $P1985, vivify_804
    $P1985 = root_new ['parrot';'Hash']
  vivify_804:
    set $P125, $P1985["hexint"]
    unless_null $P125, vivify_805
    new $P125, "Undef"
  vivify_805:
    set $P123, $P125
  unless_1982_end:
    $P126 = $P122."ints_to_string"($P123)
    set $P1981, $P126
.annotate 'line', 528
    set $P119, param_1980
    set $P1987, param_1980
    unless_null $P1987, vivify_806
    $P1987 = root_new ['parrot';'Hash']
  vivify_806:
    set $P121, $P1987["sym"]
    unless_null $P121, vivify_807
    new $P121, "Undef"
  vivify_807:
    set $S100, $P121
    iseq $I100, $S100, "X"
    if $I100, if_1986
.annotate 'line', 531
    get_hll_global $P129, "GLOBAL"
    nqp_get_package_through_who $P130, $P129, "QAST"
    get_who $P131, $P130
    set $P132, $P131["Regex"]
    set $P133, $P1981
    unless_null $P133, vivify_808
    new $P133, "Undef"
  vivify_808:
    set $P134, param_1980
    unless_null $P134, vivify_809
    new $P134, "Undef"
  vivify_809:
    $P135 = $P132."new"($P133, "literal" :named("rxtype"), $P134 :named("node"))
    set $P120, $P135
.annotate 'line', 528
    goto if_1986_end
  if_1986:
.annotate 'line', 529
    get_hll_global $P122, "GLOBAL"
    nqp_get_package_through_who $P123, $P122, "QAST"
    get_who $P124, $P123
    set $P125, $P124["Regex"]
    set $P126, $P1981
    unless_null $P126, vivify_810
    new $P126, "Undef"
  vivify_810:
    set $P127, param_1980
    unless_null $P127, vivify_811
    new $P127, "Undef"
  vivify_811:
    $P128 = $P125."new"($P126, "enumcharlist" :named("rxtype"), 1 :named("negate"), $P127 :named("node"))
    set $P120, $P128
  if_1986_end:
    $P136 = $P119."!make"($P120)
.annotate 'line', 525
    .return ($P136)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "backslash:sym<c>" :anon :subid("146_1338064447.841") :outer("336_1338064447.841")
    .param pmc param_1989
    .param pmc param_1990
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 534
    .lex "self", param_1989
    .lex "$/", param_1990
.annotate 'line', 535
    set $P118, param_1990
    get_hll_global $P119, "GLOBAL"
    nqp_get_package_through_who $P120, $P119, "QAST"
    get_who $P121, $P120
    set $P122, $P121["Regex"]
    set $P1991, param_1990
    unless_null $P1991, vivify_812
    $P1991 = root_new ['parrot';'Hash']
  vivify_812:
    set $P123, $P1991["charspec"]
    unless_null $P123, vivify_813
    new $P123, "Undef"
  vivify_813:
    $P124 = $P123."ast"()
    set $P125, param_1990
    unless_null $P125, vivify_814
    new $P125, "Undef"
  vivify_814:
    $P126 = $P122."new"($P124, "literal" :named("rxtype"), $P125 :named("node"))
    $P127 = $P118."!make"($P126)
.annotate 'line', 534
    .return ($P127)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "backslash:sym<misc>" :anon :subid("147_1338064447.841") :outer("336_1338064447.841")
    .param pmc param_1993
    .param pmc param_1994
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 538
    .lex "self", param_1993
    .lex "$/", param_1994
.annotate 'line', 539
    new $P118, "Undef"
    set $P1995, $P118
    .lex "$qast", $P1995
    get_hll_global $P119, "GLOBAL"
    nqp_get_package_through_who $P120, $P119, "QAST"
    get_who $P121, $P120
    set $P122, $P121["Regex"]
    set $P123, param_1994
    unless_null $P123, vivify_815
    new $P123, "Undef"
  vivify_815:
    set $S100, $P123
    set $P124, param_1994
    unless_null $P124, vivify_816
    new $P124, "Undef"
  vivify_816:
    $P125 = $P122."new"($S100, "literal" :named("rxtype"), $P124 :named("node"))
    set $P1995, $P125
.annotate 'line', 540
    set $P119, param_1994
    set $P120, $P1995
    unless_null $P120, vivify_817
    new $P120, "Undef"
  vivify_817:
    $P121 = $P119."!make"($P120)
.annotate 'line', 538
    .return ($P121)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "assertion:sym<?>" :anon :subid("148_1338064447.841") :outer("336_1338064447.841")
    .param pmc param_1997
    .param pmc param_1998
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 543
    .lex "self", param_1997
    .lex "$/", param_1998
.annotate 'line', 544
    new $P118, "Undef"
    set $P1999, $P118
    .lex "$qast", $P1999
.annotate 'line', 543
    set $P119, $P1999
    unless_null $P119, vivify_818
    new $P119, "Undef"
  vivify_818:
.annotate 'line', 545
    set $P2001, param_1998
    unless_null $P2001, vivify_819
    $P2001 = root_new ['parrot';'Hash']
  vivify_819:
    set $P119, $P2001["assertion"]
    unless_null $P119, vivify_820
    new $P119, "Undef"
  vivify_820:
    if $P119, if_2000
.annotate 'line', 550
    get_hll_global $P120, "GLOBAL"
    nqp_get_package_through_who $P121, $P120, "QAST"
    get_who $P122, $P121
    set $P123, $P122["Regex"]
    set $P124, param_1998
    unless_null $P124, vivify_821
    new $P124, "Undef"
  vivify_821:
    $P125 = $P123."new"("anchor" :named("rxtype"), "pass" :named("subtype"), $P124 :named("node"))
    set $P1999, $P125
.annotate 'line', 549
    goto if_2000_end
  if_2000:
.annotate 'line', 546
    set $P2002, param_1998
    unless_null $P2002, vivify_822
    $P2002 = root_new ['parrot';'Hash']
  vivify_822:
    set $P120, $P2002["assertion"]
    unless_null $P120, vivify_823
    new $P120, "Undef"
  vivify_823:
    $P121 = $P120."ast"()
    set $P1999, $P121
.annotate 'line', 547
    set $P120, $P1999
    unless_null $P120, vivify_824
    new $P120, "Undef"
  vivify_824:
    $P120."subtype"("zerowidth")
  if_2000_end:
.annotate 'line', 552
    set $P119, param_1998
    set $P120, $P1999
    unless_null $P120, vivify_825
    new $P120, "Undef"
  vivify_825:
    $P121 = $P119."!make"($P120)
.annotate 'line', 543
    .return ($P121)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "assertion:sym<!>" :anon :subid("149_1338064447.841") :outer("336_1338064447.841")
    .param pmc param_2004
    .param pmc param_2005
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 555
    .lex "self", param_2004
    .lex "$/", param_2005
.annotate 'line', 556
    new $P118, "Undef"
    set $P2006, $P118
    .lex "$qast", $P2006
.annotate 'line', 555
    set $P119, $P2006
    unless_null $P119, vivify_826
    new $P119, "Undef"
  vivify_826:
.annotate 'line', 557
    set $P2008, param_2005
    unless_null $P2008, vivify_827
    $P2008 = root_new ['parrot';'Hash']
  vivify_827:
    set $P119, $P2008["assertion"]
    unless_null $P119, vivify_828
    new $P119, "Undef"
  vivify_828:
    if $P119, if_2007
.annotate 'line', 563
    get_hll_global $P120, "GLOBAL"
    nqp_get_package_through_who $P121, $P120, "QAST"
    get_who $P122, $P121
    set $P123, $P122["Regex"]
    set $P124, param_2005
    unless_null $P124, vivify_829
    new $P124, "Undef"
  vivify_829:
    $P125 = $P123."new"("anchor" :named("rxtype"), "fail" :named("subtype"), $P124 :named("node"))
    set $P2006, $P125
.annotate 'line', 562
    goto if_2007_end
  if_2007:
.annotate 'line', 558
    set $P2009, param_2005
    unless_null $P2009, vivify_830
    $P2009 = root_new ['parrot';'Hash']
  vivify_830:
    set $P120, $P2009["assertion"]
    unless_null $P120, vivify_831
    new $P120, "Undef"
  vivify_831:
    $P121 = $P120."ast"()
    set $P2006, $P121
.annotate 'line', 559
    set $P120, $P2006
    unless_null $P120, vivify_832
    new $P120, "Undef"
  vivify_832:
    set $P121, $P2006
    unless_null $P121, vivify_833
    new $P121, "Undef"
  vivify_833:
    $P122 = $P121."negate"()
    isfalse $I100, $P122
    $P120."negate"($I100)
.annotate 'line', 560
    set $P120, $P2006
    unless_null $P120, vivify_834
    new $P120, "Undef"
  vivify_834:
    $P120."subtype"("zerowidth")
  if_2007_end:
.annotate 'line', 565
    set $P119, param_2005
    set $P120, $P2006
    unless_null $P120, vivify_835
    new $P120, "Undef"
  vivify_835:
    $P121 = $P119."!make"($P120)
.annotate 'line', 555
    .return ($P121)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "assertion:sym<|>" :anon :subid("150_1338064447.841") :outer("336_1338064447.841")
    .param pmc param_2011
    .param pmc param_2012
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 568
    .lex "self", param_2011
    .lex "$/", param_2012
.annotate 'line', 569
    new $P118, "Undef"
    set $P2013, $P118
    .lex "$qast", $P2013
.annotate 'line', 570
    new $P119, "Undef"
    set $P2014, $P119
    .lex "$name", $P2014
.annotate 'line', 568
    set $P120, $P2013
    unless_null $P120, vivify_836
    new $P120, "Undef"
  vivify_836:
.annotate 'line', 570
    set $P2015, param_2012
    unless_null $P2015, vivify_837
    $P2015 = root_new ['parrot';'Hash']
  vivify_837:
    set $P120, $P2015["identifier"]
    unless_null $P120, vivify_838
    new $P120, "Undef"
  vivify_838:
    set $S100, $P120
    new $P121, 'String'
    set $P121, $S100
    set $P2014, $P121
.annotate 'line', 571
    set $P120, $P2014
    unless_null $P120, vivify_839
    new $P120, "Undef"
  vivify_839:
    set $S100, $P120
    iseq $I100, $S100, "c"
    if $I100, if_2016
.annotate 'line', 576
    set $P121, $P2014
    unless_null $P121, vivify_840
    new $P121, "Undef"
  vivify_840:
    set $S101, $P121
    iseq $I101, $S101, "w"
    unless $I101, if_2017_end
.annotate 'line', 577
    get_hll_global $P122, "GLOBAL"
    nqp_get_package_through_who $P123, $P122, "QAST"
    get_who $P124, $P123
    set $P125, $P124["Regex"]
    set $P126, param_2012
    unless_null $P126, vivify_841
    new $P126, "Undef"
  vivify_841:
.annotate 'line', 578
    get_hll_global $P127, "GLOBAL"
    nqp_get_package_through_who $P128, $P127, "PAST"
    get_who $P129, $P128
    set $P130, $P129["Node"]
    $P131 = $P130."new"("wb")
    $P132 = $P125."new"($P131, "subrule" :named("rxtype"), "method" :named("subtype"), $P126 :named("node"), "" :named("name"))
.annotate 'line', 577
    set $P2013, $P132
  if_2017_end:
.annotate 'line', 576
    goto if_2016_end
  if_2016:
.annotate 'line', 574
    new $P121, "Float"
    assign $P121, 0
    set $P2013, $P121
  if_2016_end:
.annotate 'line', 581
    set $P120, param_2012
    set $P121, $P2013
    unless_null $P121, vivify_842
    new $P121, "Undef"
  vivify_842:
    $P122 = $P120."!make"($P121)
.annotate 'line', 568
    .return ($P122)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "assertion:sym<method>" :anon :subid("151_1338064447.841") :outer("336_1338064447.841")
    .param pmc param_2019
    .param pmc param_2020
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 584
    .lex "self", param_2019
    .lex "$/", param_2020
.annotate 'line', 585
    new $P118, "Undef"
    set $P2021, $P118
    .lex "$qast", $P2021
    set $P2022, param_2020
    unless_null $P2022, vivify_843
    $P2022 = root_new ['parrot';'Hash']
  vivify_843:
    set $P119, $P2022["assertion"]
    unless_null $P119, vivify_844
    new $P119, "Undef"
  vivify_844:
    $P120 = $P119."ast"()
    set $P2021, $P120
.annotate 'line', 586
    set $P119, $P2021
    unless_null $P119, vivify_845
    new $P119, "Undef"
  vivify_845:
    $P119."subtype"("method")
.annotate 'line', 587
    set $P119, $P2021
    unless_null $P119, vivify_846
    new $P119, "Undef"
  vivify_846:
    $P119."name"("")
.annotate 'line', 588
    set $P119, param_2020
    set $P120, $P2021
    unless_null $P120, vivify_847
    new $P120, "Undef"
  vivify_847:
    $P121 = $P119."!make"($P120)
.annotate 'line', 584
    .return ($P121)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "assertion:sym<name>" :anon :subid("152_1338064447.841") :outer("336_1338064447.841")
    .param pmc param_2024
    .param pmc param_2025
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 591
    .const 'Sub' $P2044 = "362_1338064447.841" 
    capture_lex $P2044
    .const 'Sub' $P2035 = "361_1338064447.841" 
    capture_lex $P2035
    .lex "self", param_2024
    .lex "$/", param_2025
.annotate 'line', 592
    new $P118, "Undef"
    set $P2026, $P118
    .lex "$name", $P2026
.annotate 'line', 593
    new $P119, "Undef"
    set $P2027, $P119
    .lex "$qast", $P2027
.annotate 'line', 592
    set $P2028, param_2025
    unless_null $P2028, vivify_848
    $P2028 = root_new ['parrot';'Hash']
  vivify_848:
    set $P120, $P2028["longname"]
    unless_null $P120, vivify_849
    new $P120, "Undef"
  vivify_849:
    set $S100, $P120
    new $P121, 'String'
    set $P121, $S100
    set $P2026, $P121
.annotate 'line', 591
    set $P120, $P2027
    unless_null $P120, vivify_850
    new $P120, "Undef"
  vivify_850:
.annotate 'line', 594
    set $P2030, param_2025
    unless_null $P2030, vivify_851
    $P2030 = root_new ['parrot';'Hash']
  vivify_851:
    set $P120, $P2030["assertion"]
    unless_null $P120, vivify_852
    new $P120, "Undef"
  vivify_852:
    if $P120, if_2029
.annotate 'line', 598
    set $P121, $P2026
    unless_null $P121, vivify_853
    new $P121, "Undef"
  vivify_853:
    set $S100, $P121
    iseq $I100, $S100, "sym"
    if $I100, if_2033
.annotate 'line', 607
    get_hll_global $P124, "GLOBAL"
    nqp_get_package_through_who $P125, $P124, "QAST"
    get_who $P126, $P125
    set $P127, $P126["Regex"]
    set $P128, param_2025
    unless_null $P128, vivify_854
    new $P128, "Undef"
  vivify_854:
.annotate 'line', 608
    get_hll_global $P129, "GLOBAL"
    nqp_get_package_through_who $P130, $P129, "PAST"
    get_who $P131, $P130
    set $P132, $P131["Node"]
    set $P133, $P2026
    unless_null $P133, vivify_855
    new $P133, "Undef"
  vivify_855:
    $P134 = $P132."new"($P133)
    set $P135, $P2026
    unless_null $P135, vivify_856
    new $P135, "Undef"
  vivify_856:
    $P137 = $P127."new"($P134, "subrule" :named("rxtype"), "capture" :named("subtype"), $P128 :named("node"), $P135 :named("name"))
.annotate 'line', 607
    set $P2027, $P137
.annotate 'line', 610
    set $P2040, param_2025
    unless_null $P2040, vivify_857
    $P2040 = root_new ['parrot';'Hash']
  vivify_857:
    set $P124, $P2040["arglist"]
    unless_null $P124, vivify_858
    new $P124, "Undef"
  vivify_858:
    if $P124, if_2039
.annotate 'line', 613
    set $P2049, param_2025
    unless_null $P2049, vivify_859
    $P2049 = root_new ['parrot';'Hash']
  vivify_859:
    set $P125, $P2049["nibbler"]
    unless_null $P125, vivify_860
    new $P125, "Undef"
  vivify_860:
    unless $P125, if_2048_end
.annotate 'line', 614
    set $P126, $P2026
    unless_null $P126, vivify_861
    new $P126, "Undef"
  vivify_861:
    set $S101, $P126
    iseq $I101, $S101, "after"
    if $I101, if_2050
.annotate 'line', 616
    set $P2054, $P2027
    unless_null $P2054, vivify_862
    $P2054 = root_new ['parrot';'ResizablePMCArray']
  vivify_862:
    set $P134, $P2054[0]
    unless_null $P134, vivify_863
    new $P134, "Undef"
  vivify_863:
    set $P2055, param_2025
    unless_null $P2055, vivify_864
    $P2055 = root_new ['parrot';'Hash']
  vivify_864:
    set $P2056, $P2055["nibbler"]
    unless_null $P2056, vivify_865
    $P2056 = root_new ['parrot';'ResizablePMCArray']
  vivify_865:
    set $P135, $P2056[0]
    unless_null $P135, vivify_866
    new $P135, "Undef"
  vivify_866:
    $P137 = $P135."ast"()
    $P138 = "buildsub"($P137, 1 :named("anon"))
    $P134."push"($P138)
    goto if_2050_end
  if_2050:
.annotate 'line', 615
    set $P2051, $P2027
    unless_null $P2051, vivify_867
    $P2051 = root_new ['parrot';'ResizablePMCArray']
  vivify_867:
    set $P127, $P2051[0]
    unless_null $P127, vivify_868
    new $P127, "Undef"
  vivify_868:
    set $P128, param_2024
    nqp_decontainerize $P129, $P128
    set $P2052, param_2025
    unless_null $P2052, vivify_869
    $P2052 = root_new ['parrot';'Hash']
  vivify_869:
    set $P2053, $P2052["nibbler"]
    unless_null $P2053, vivify_870
    $P2053 = root_new ['parrot';'ResizablePMCArray']
  vivify_870:
    set $P130, $P2053[0]
    unless_null $P130, vivify_871
    new $P130, "Undef"
  vivify_871:
    $P131 = $P130."ast"()
    $P132 = $P129."flip_ast"($P131)
    $P133 = "buildsub"($P132, 1 :named("anon"))
    $P127."push"($P133)
  if_2050_end:
  if_2048_end:
.annotate 'line', 613
    goto if_2039_end
  if_2039:
.annotate 'line', 611
    set $P2041, param_2025
    unless_null $P2041, vivify_872
    $P2041 = root_new ['parrot';'Hash']
  vivify_872:
    set $P2042, $P2041["arglist"]
    unless_null $P2042, vivify_873
    $P2042 = root_new ['parrot';'ResizablePMCArray']
  vivify_873:
    set $P126, $P2042[0]
    unless_null $P126, vivify_874
    new $P126, "Undef"
  vivify_874:
    $P127 = $P126."ast"()
    $P128 = $P127."list"()
    defined $I101, $P128
    unless $I101, for_undef_875
    iter $P125, $P128
    new $P130, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P130, loop2047_handler
    push_eh $P130
  loop2047_test:
    unless $P125, loop2047_done
    shift $P129, $P125
  loop2047_redo:
    .const 'Sub' $P2044 = "362_1338064447.841" 
    capture_lex $P2044
    $P2044($P129)
  loop2047_next:
    goto loop2047_test
  loop2047_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P131, exception, 'type'
    eq $P131, .CONTROL_LOOP_NEXT, loop2047_next
    eq $P131, .CONTROL_LOOP_REDO, loop2047_redo
  loop2047_done:
    pop_eh 
  for_undef_875:
  if_2039_end:
.annotate 'line', 606
    goto if_2033_end
  if_2033:
.annotate 'line', 598
    .const 'Sub' $P2035 = "361_1338064447.841" 
    capture_lex $P2035
    $P2035()
  if_2033_end:
    goto if_2029_end
  if_2029:
.annotate 'line', 595
    set $P2031, param_2025
    unless_null $P2031, vivify_893
    $P2031 = root_new ['parrot';'Hash']
  vivify_893:
    set $P2032, $P2031["assertion"]
    unless_null $P2032, vivify_894
    $P2032 = root_new ['parrot';'ResizablePMCArray']
  vivify_894:
    set $P121, $P2032[0]
    unless_null $P121, vivify_895
    new $P121, "Undef"
  vivify_895:
    $P122 = $P121."ast"()
    set $P2027, $P122
.annotate 'line', 596
    set $P121, param_2024
    nqp_decontainerize $P122, $P121
    set $P123, $P2027
    unless_null $P123, vivify_896
    new $P123, "Undef"
  vivify_896:
    set $P124, $P2026
    unless_null $P124, vivify_897
    new $P124, "Undef"
  vivify_897:
    $P122."subrule_alias"($P123, $P124)
  if_2029_end:
.annotate 'line', 619
    set $P120, param_2025
    set $P121, $P2027
    unless_null $P121, vivify_898
    new $P121, "Undef"
  vivify_898:
    $P122 = $P120."!make"($P121)
.annotate 'line', 591
    .return ($P122)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "_block2043"  :anon :subid("362_1338064447.841") :outer("152_1338064447.841")
    .param pmc param_2045
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 611
    .lex "$_", param_2045
    find_lex $P2046, "$qast"
    unless_null $P2046, vivify_876
    $P2046 = root_new ['parrot';'ResizablePMCArray']
  vivify_876:
    set $P130, $P2046[0]
    unless_null $P130, vivify_877
    new $P130, "Undef"
  vivify_877:
    find_lex $P131, "$_"
    unless_null $P131, vivify_878
    new $P131, "Undef"
  vivify_878:
    $P132 = $P130."push"($P131)
    .return ($P132)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "_block2034"  :anon :subid("361_1338064447.841") :outer("152_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 599
    new $P122, "Undef"
    set $P2036, $P122
    .lex "$loc", $P2036
.annotate 'line', 602
    new $P123, "Undef"
    set $P2037, $P123
    .lex "$rxname", $P2037
.annotate 'line', 599
    find_dynamic_lex $P126, "%*RX"
    unless_null $P126, vivify_879
    get_hll_global $P124, "GLOBAL"
    get_who $P125, $P124
    set $P126, $P125["%RX"]
    unless_null $P126, vivify_880
    die "Contextual %*RX not found"
  vivify_880:
  vivify_879:
    set $P127, $P126["name"]
    unless_null $P127, vivify_881
    new $P127, "Undef"
  vivify_881:
    set $S101, $P127
    index $I101, $S101, ":sym<"
    new $P128, 'Integer'
    set $P128, $I101
    set $P2036, $P128
.annotate 'line', 601
    set $P124, $P2036
    unless_null $P124, vivify_882
    new $P124, "Undef"
  vivify_882:
    set $N100, $P124
    set $N101, 0
    islt $I101, $N100, $N101
    unless $I101, if_2038_end
.annotate 'line', 600
    find_dynamic_lex $P127, "%*RX"
    unless_null $P127, vivify_883
    get_hll_global $P125, "GLOBAL"
    get_who $P126, $P125
    set $P127, $P126["%RX"]
    unless_null $P127, vivify_884
    die "Contextual %*RX not found"
  vivify_884:
  vivify_883:
    set $P128, $P127["name"]
    unless_null $P128, vivify_885
    new $P128, "Undef"
  vivify_885:
    set $S101, $P128
    index $I102, $S101, unicode:":sym\x{ab}"
    new $P129, 'Integer'
    set $P129, $I102
    set $P2036, $P129
  if_2038_end:
.annotate 'line', 602
    find_dynamic_lex $P126, "%*RX"
    unless_null $P126, vivify_886
    get_hll_global $P124, "GLOBAL"
    get_who $P125, $P124
    set $P126, $P125["%RX"]
    unless_null $P126, vivify_887
    die "Contextual %*RX not found"
  vivify_887:
  vivify_886:
    set $P127, $P126["name"]
    unless_null $P127, vivify_888
    new $P127, "Undef"
  vivify_888:
    set $S101, $P127
    set $P128, $P2036
    unless_null $P128, vivify_889
    new $P128, "Undef"
  vivify_889:
    add $P129, $P128, 5
    set $I101, $P129
    substr $S102, $S101, $I101
    chopn $S103, $S102, 1
    new $P130, 'String'
    set $P130, $S103
    set $P2037, $P130
.annotate 'line', 603
    get_hll_global $P124, "GLOBAL"
    nqp_get_package_through_who $P125, $P124, "QAST"
    get_who $P126, $P125
    set $P127, $P126["Regex"]
    find_lex $P128, "$/"
    unless_null $P128, vivify_890
    new $P128, "Undef"
  vivify_890:
.annotate 'line', 604
    get_hll_global $P129, "GLOBAL"
    nqp_get_package_through_who $P130, $P129, "QAST"
    get_who $P131, $P130
    set $P132, $P131["Regex"]
    set $P133, $P2037
    unless_null $P133, vivify_891
    new $P133, "Undef"
  vivify_891:
    find_lex $P134, "$/"
    unless_null $P134, vivify_892
    new $P134, "Undef"
  vivify_892:
    $P135 = $P132."new"($P133, "literal" :named("rxtype"), $P134 :named("node"))
    $P136 = $P127."new"($P135, "sym" :named("name"), "subcapture" :named("rxtype"), $P128 :named("node"))
.annotate 'line', 603
    store_lex "$qast", $P136
.annotate 'line', 598
    .return ($P136)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "assertion:sym<[>" :anon :subid("153_1338064447.841") :outer("336_1338064447.841")
    .param pmc param_2058
    .param pmc param_2059
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 622
    .const 'Sub' $P2069 = "363_1338064447.841" 
    capture_lex $P2069
    .lex "self", param_2058
    .lex "$/", param_2059
.annotate 'line', 623
    new $P118, "Undef"
    set $P2060, $P118
    .lex "$clist", $P2060
.annotate 'line', 624
    new $P119, "Undef"
    set $P2061, $P119
    .lex "$qast", $P2061
.annotate 'line', 631
    new $P120, "Undef"
    set $P2062, $P120
    .lex "$i", $P2062
.annotate 'line', 632
    new $P121, "Undef"
    set $P2063, $P121
    .lex "$n", $P2063
.annotate 'line', 623
    set $P2064, param_2059
    unless_null $P2064, vivify_899
    $P2064 = root_new ['parrot';'Hash']
  vivify_899:
    set $P122, $P2064["cclass_elem"]
    unless_null $P122, vivify_900
    new $P122, "Undef"
  vivify_900:
    set $P2060, $P122
.annotate 'line', 624
    set $P2065, $P2060
    unless_null $P2065, vivify_901
    $P2065 = root_new ['parrot';'ResizablePMCArray']
  vivify_901:
    set $P122, $P2065[0]
    unless_null $P122, vivify_902
    new $P122, "Undef"
  vivify_902:
    $P123 = $P122."ast"()
    set $P2061, $P123
.annotate 'line', 625
    set $P123, $P2061
    unless_null $P123, vivify_903
    new $P123, "Undef"
  vivify_903:
    $P124 = $P123."negate"()
    if $P124, if_2067
    set $P122, $P124
    goto if_2067_end
  if_2067:
    set $P125, $P2061
    unless_null $P125, vivify_904
    new $P125, "Undef"
  vivify_904:
    $S100 = $P125."rxtype"()
    iseq $I100, $S100, "subrule"
    new $P122, 'Integer'
    set $P122, $I100
  if_2067_end:
    unless $P122, if_2066_end
.annotate 'line', 626
    set $P126, $P2061
    unless_null $P126, vivify_905
    new $P126, "Undef"
  vivify_905:
    $P126."subtype"("zerowidth")
.annotate 'line', 627
    get_hll_global $P126, "GLOBAL"
    nqp_get_package_through_who $P127, $P126, "QAST"
    get_who $P128, $P127
    set $P129, $P128["Regex"]
    set $P130, param_2059
    unless_null $P130, vivify_906
    new $P130, "Undef"
  vivify_906:
    set $P131, $P2061
    unless_null $P131, vivify_907
    new $P131, "Undef"
  vivify_907:
.annotate 'line', 629
    get_hll_global $P132, "GLOBAL"
    nqp_get_package_through_who $P133, $P132, "QAST"
    get_who $P134, $P133
    set $P135, $P134["Regex"]
    $P136 = $P135."new"("cclass" :named("rxtype"), "." :named("subtype"))
    $P137 = $P129."new"($P131, $P136, "concat" :named("rxtype"), $P130 :named("node"))
.annotate 'line', 627
    set $P2061, $P137
  if_2066_end:
.annotate 'line', 631
    new $P122, "Float"
    assign $P122, 1
    set $P2062, $P122
.annotate 'line', 632
    set $P122, $P2060
    unless_null $P122, vivify_908
    new $P122, "Undef"
  vivify_908:
    set $N100, $P122
    new $P123, 'Float'
    set $P123, $N100
    set $P2063, $P123
.annotate 'line', 633
    new $P125, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P125, loop2074_handler
    push_eh $P125
  loop2074_test:
    set $P122, $P2062
    unless_null $P122, vivify_909
    new $P122, "Undef"
  vivify_909:
    set $N100, $P122
    set $P123, $P2063
    unless_null $P123, vivify_910
    new $P123, "Undef"
  vivify_910:
    set $N101, $P123
    islt $I100, $N100, $N101
    unless $I100, loop2074_done
  loop2074_redo:
    .const 'Sub' $P2069 = "363_1338064447.841" 
    capture_lex $P2069
    $P2069()
  loop2074_next:
    goto loop2074_test
  loop2074_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P126, exception, 'type'
    eq $P126, .CONTROL_LOOP_NEXT, loop2074_next
    eq $P126, .CONTROL_LOOP_REDO, loop2074_redo
  loop2074_done:
    pop_eh 
.annotate 'line', 644
    set $P122, param_2059
    set $P123, $P2061
    unless_null $P123, vivify_923
    new $P123, "Undef"
  vivify_923:
    $P124 = $P122."!make"($P123)
.annotate 'line', 622
    .return ($P124)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "_block2068"  :anon :subid("363_1338064447.841") :outer("153_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 634
    new $P124, "Undef"
    set $P2070, $P124
    .lex "$ast", $P2070
    find_lex $P125, "$i"
    unless_null $P125, vivify_911
    new $P125, "Undef"
  vivify_911:
    set $I101, $P125
    find_lex $P2071, "$clist"
    unless_null $P2071, vivify_912
    $P2071 = root_new ['parrot';'ResizablePMCArray']
  vivify_912:
    set $P126, $P2071[$I101]
    unless_null $P126, vivify_913
    new $P126, "Undef"
  vivify_913:
    $P127 = $P126."ast"()
    set $P2070, $P127
.annotate 'line', 635
    set $P125, $P2070
    unless_null $P125, vivify_914
    new $P125, "Undef"
  vivify_914:
    $P126 = $P125."negate"()
    if $P126, if_2072
.annotate 'line', 640
    get_hll_global $P127, "GLOBAL"
    nqp_get_package_through_who $P128, $P127, "QAST"
    get_who $P129, $P128
    set $P130, $P129["Regex"]
    find_lex $P131, "$qast"
    unless_null $P131, vivify_915
    new $P131, "Undef"
  vivify_915:
    set $P132, $P2070
    unless_null $P132, vivify_916
    new $P132, "Undef"
  vivify_916:
    find_lex $P133, "$/"
    unless_null $P133, vivify_917
    new $P133, "Undef"
  vivify_917:
    $P134 = $P130."new"($P131, $P132, "altseq" :named("rxtype"), $P133 :named("node"))
    store_lex "$qast", $P134
.annotate 'line', 639
    goto if_2072_end
  if_2072:
.annotate 'line', 636
    set $P127, $P2070
    unless_null $P127, vivify_918
    new $P127, "Undef"
  vivify_918:
    $P127."subtype"("zerowidth")
.annotate 'line', 637
    get_hll_global $P127, "GLOBAL"
    nqp_get_package_through_who $P128, $P127, "QAST"
    get_who $P129, $P128
    set $P130, $P129["Regex"]
    set $P131, $P2070
    unless_null $P131, vivify_919
    new $P131, "Undef"
  vivify_919:
    find_lex $P132, "$qast"
    unless_null $P132, vivify_920
    new $P132, "Undef"
  vivify_920:
    find_lex $P133, "$/"
    unless_null $P133, vivify_921
    new $P133, "Undef"
  vivify_921:
    $P134 = $P130."new"($P131, $P132, "concat" :named("rxtype"), $P133 :named("node"))
    store_lex "$qast", $P134
  if_2072_end:
.annotate 'line', 633
    find_lex $P125, "$i"
    unless_null $P125, vivify_922
    new $P125, "Undef"
  vivify_922:
    clone $P2073, $P125
    inc $P125
    .return ($P2073)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "arg" :anon :subid("154_1338064447.841") :outer("336_1338064447.841")
    .param pmc param_2076
    .param pmc param_2077
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 647
    .lex "self", param_2076
    .lex "$/", param_2077
.annotate 'line', 648
    set $P118, param_2077
    set $P2079, param_2077
    unless_null $P2079, vivify_924
    $P2079 = root_new ['parrot';'Hash']
  vivify_924:
    set $P120, $P2079["quote_EXPR"]
    unless_null $P120, vivify_925
    new $P120, "Undef"
  vivify_925:
    if $P120, if_2078
    set $P2081, param_2077
    unless_null $P2081, vivify_926
    $P2081 = root_new ['parrot';'Hash']
  vivify_926:
    set $P123, $P2081["val"]
    unless_null $P123, vivify_927
    new $P123, "Undef"
  vivify_927:
    set $N100, $P123
    new $P119, 'Float'
    set $P119, $N100
    goto if_2078_end
  if_2078:
    set $P2080, param_2077
    unless_null $P2080, vivify_928
    $P2080 = root_new ['parrot';'Hash']
  vivify_928:
    set $P121, $P2080["quote_EXPR"]
    unless_null $P121, vivify_929
    new $P121, "Undef"
  vivify_929:
    $P122 = $P121."ast"()
    set $P119, $P122
  if_2078_end:
    $P124 = $P118."!make"($P119)
.annotate 'line', 647
    .return ($P124)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "arglist" :anon :subid("155_1338064447.841") :outer("336_1338064447.841")
    .param pmc param_2083
    .param pmc param_2084
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 651
    .const 'Sub' $P2088 = "364_1338064447.841" 
    capture_lex $P2088
    .lex "self", param_2083
    .lex "$/", param_2084
.annotate 'line', 652
    new $P118, "Undef"
    set $P2085, $P118
    .lex "$past", $P2085
    get_hll_global $P119, "GLOBAL"
    nqp_get_package_through_who $P120, $P119, "PAST"
    get_who $P121, $P120
    set $P122, $P121["Op"]
    $P123 = $P122."new"("list" :named("pasttype"))
    set $P2085, $P123
.annotate 'line', 653
    set $P2086, param_2084
    unless_null $P2086, vivify_930
    $P2086 = root_new ['parrot';'Hash']
  vivify_930:
    set $P120, $P2086["arg"]
    unless_null $P120, vivify_931
    new $P120, "Undef"
  vivify_931:
    defined $I100, $P120
    unless $I100, for_undef_932
    iter $P119, $P120
    new $P122, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P122, loop2090_handler
    push_eh $P122
  loop2090_test:
    unless $P119, loop2090_done
    shift $P121, $P119
  loop2090_redo:
    .const 'Sub' $P2088 = "364_1338064447.841" 
    capture_lex $P2088
    $P2088($P121)
  loop2090_next:
    goto loop2090_test
  loop2090_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P123, exception, 'type'
    eq $P123, .CONTROL_LOOP_NEXT, loop2090_next
    eq $P123, .CONTROL_LOOP_REDO, loop2090_redo
  loop2090_done:
    pop_eh 
  for_undef_932:
.annotate 'line', 654
    set $P119, param_2084
    set $P120, $P2085
    unless_null $P120, vivify_935
    new $P120, "Undef"
  vivify_935:
    $P121 = $P119."!make"($P120)
.annotate 'line', 651
    .return ($P121)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "_block2087"  :anon :subid("364_1338064447.841") :outer("155_1338064447.841")
    .param pmc param_2089
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 653
    .lex "$_", param_2089
    find_lex $P122, "$past"
    unless_null $P122, vivify_933
    new $P122, "Undef"
  vivify_933:
    find_lex $P123, "$_"
    unless_null $P123, vivify_934
    new $P123, "Undef"
  vivify_934:
    $P124 = $P123."ast"()
    $P125 = $P122."push"($P124)
    .return ($P125)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "cclass_elem" :anon :subid("156_1338064447.841") :outer("336_1338064447.841")
    .param pmc param_2092
    .param pmc param_2093
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 657
    .const 'Sub' $P2117 = "367_1338064447.841" 
    capture_lex $P2117
    .const 'Sub' $P2106 = "366_1338064447.841" 
    capture_lex $P2106
    .const 'Sub' $P2099 = "365_1338064447.841" 
    capture_lex $P2099
    .lex "self", param_2092
    .lex "$/", param_2093
.annotate 'line', 658
    new $P118, "Undef"
    set $P2094, $P118
    .lex "$str", $P2094
.annotate 'line', 659
    new $P119, "Undef"
    set $P2095, $P119
    .lex "$qast", $P2095
.annotate 'line', 658
    new $P120, "String"
    assign $P120, ""
    set $P2094, $P120
.annotate 'line', 657
    set $P120, $P2095
    unless_null $P120, vivify_936
    new $P120, "Undef"
  vivify_936:
.annotate 'line', 660
    set $P2097, param_2093
    unless_null $P2097, vivify_937
    $P2097 = root_new ['parrot';'Hash']
  vivify_937:
    set $P120, $P2097["name"]
    unless_null $P120, vivify_938
    new $P120, "Undef"
  vivify_938:
    if $P120, if_2096
.annotate 'line', 665
    set $P2104, param_2093
    unless_null $P2104, vivify_939
    $P2104 = root_new ['parrot';'Hash']
  vivify_939:
    set $P122, $P2104["uniprop"]
    unless_null $P122, vivify_940
    new $P122, "Undef"
  vivify_940:
    if $P122, if_2103
.annotate 'line', 671
    .const 'Sub' $P2117 = "367_1338064447.841" 
    capture_lex $P2117
    $P2117()
    goto if_2103_end
  if_2103:
.annotate 'line', 665
    .const 'Sub' $P2106 = "366_1338064447.841" 
    capture_lex $P2106
    $P2106()
  if_2103_end:
    goto if_2096_end
  if_2096:
.annotate 'line', 660
    .const 'Sub' $P2099 = "365_1338064447.841" 
    capture_lex $P2099
    $P2099()
  if_2096_end:
.annotate 'line', 721
    set $P120, param_2093
    set $P121, $P2095
    unless_null $P121, vivify_1046
    new $P121, "Undef"
  vivify_1046:
    $P122 = $P120."!make"($P121)
.annotate 'line', 657
    .return ($P122)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block2116"  :anon :subid("367_1338064447.841") :outer("156_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 671
    .const 'Sub' $P2123 = "368_1338064447.841" 
    capture_lex $P2123
.annotate 'line', 672
    $P2119 = root_new ['parrot';'ResizablePMCArray']
    set $P2118, $P2119
    .lex "@alts", $P2118
.annotate 'line', 671
    set $P2120, $P2118
    unless_null $P2120, vivify_941
    $P2120 = root_new ['parrot';'ResizablePMCArray']
  vivify_941:
.annotate 'line', 673
    find_lex $P2121, "$/"
    unless_null $P2121, vivify_942
    $P2121 = root_new ['parrot';'Hash']
  vivify_942:
    set $P125, $P2121["charspec"]
    unless_null $P125, vivify_943
    new $P125, "Undef"
  vivify_943:
    defined $I100, $P125
    unless $I100, for_undef_944
    iter $P124, $P125
    new $P128, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P128, loop2178_handler
    push_eh $P128
  loop2178_test:
    unless $P124, loop2178_done
    shift $P126, $P124
  loop2178_redo:
    .const 'Sub' $P2123 = "368_1338064447.841" 
    capture_lex $P2123
    $P2123($P126)
  loop2178_next:
    goto loop2178_test
  loop2178_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P129, exception, 'type'
    eq $P129, .CONTROL_LOOP_NEXT, loop2178_next
    eq $P129, .CONTROL_LOOP_REDO, loop2178_redo
  loop2178_done:
    pop_eh 
  for_undef_944:
.annotate 'line', 712
    find_lex $P124, "$str"
    unless_null $P124, vivify_1014
    new $P124, "Undef"
  vivify_1014:
    set $S100, $P124
    length $I100, $S100
    unless $I100, if_2179_end
.annotate 'line', 711
    set $P2180, $P2118
    unless_null $P2180, vivify_1015
    $P2180 = root_new ['parrot';'ResizablePMCArray']
  vivify_1015:
    get_hll_global $P125, "GLOBAL"
    nqp_get_package_through_who $P126, $P125, "QAST"
    get_who $P127, $P126
    set $P128, $P127["Regex"]
    find_lex $P129, "$str"
    unless_null $P129, vivify_1016
    new $P129, "Undef"
  vivify_1016:
    find_lex $P130, "$/"
    unless_null $P130, vivify_1017
    new $P130, "Undef"
  vivify_1017:
    find_lex $P2181, "$/"
    unless_null $P2181, vivify_1018
    $P2181 = root_new ['parrot';'Hash']
  vivify_1018:
    set $P131, $P2181["sign"]
    unless_null $P131, vivify_1019
    new $P131, "Undef"
  vivify_1019:
    set $S101, $P131
    iseq $I101, $S101, "-"
    $P132 = $P128."new"($P129, "enumcharlist" :named("rxtype"), $P130 :named("node"), $I101 :named("negate"))
    $P2180."push"($P132)
  if_2179_end:
.annotate 'line', 713
    set $P2183, $P2118
    unless_null $P2183, vivify_1020
    $P2183 = root_new ['parrot';'ResizablePMCArray']
  vivify_1020:
    set $N100, $P2183
    set $N101, 1
    iseq $I100, $N100, $N101
    if $I100, if_2182
.annotate 'line', 714
    find_lex $P2186, "$/"
    unless_null $P2186, vivify_1021
    $P2186 = root_new ['parrot';'Hash']
  vivify_1021:
    set $P127, $P2186["sign"]
    unless_null $P127, vivify_1022
    new $P127, "Undef"
  vivify_1022:
    set $S100, $P127
    iseq $I101, $S100, "-"
    if $I101, if_2185
.annotate 'line', 718
    get_hll_global $P146, "GLOBAL"
    nqp_get_package_through_who $P147, $P146, "QAST"
    get_who $P148, $P147
    set $P149, $P148["Regex"]
    set $P2188, $P2118
    unless_null $P2188, vivify_1023
    $P2188 = root_new ['parrot';'ResizablePMCArray']
  vivify_1023:
    $P150 = $P149."new"($P2188 :flat, "alt" :named("rxtype"))
    set $P126, $P150
.annotate 'line', 714
    goto if_2185_end
  if_2185:
.annotate 'line', 715
    get_hll_global $P128, "GLOBAL"
    nqp_get_package_through_who $P129, $P128, "QAST"
    get_who $P130, $P129
    set $P131, $P130["Regex"]
    find_lex $P132, "$/"
    unless_null $P132, vivify_1024
    new $P132, "Undef"
  vivify_1024:
.annotate 'line', 716
    get_hll_global $P133, "GLOBAL"
    nqp_get_package_through_who $P135, $P133, "QAST"
    get_who $P136, $P135
    set $P137, $P136["Regex"]
    set $P2187, $P2118
    unless_null $P2187, vivify_1025
    $P2187 = root_new ['parrot';'ResizablePMCArray']
  vivify_1025:
    $P139 = $P137."new"($P2187 :flat, "conj" :named("rxtype"), "zerowidth" :named("subtype"))
.annotate 'line', 717
    get_hll_global $P140, "GLOBAL"
    nqp_get_package_through_who $P141, $P140, "QAST"
    get_who $P142, $P141
    set $P143, $P142["Regex"]
    $P144 = $P143."new"("cclass" :named("rxtype"), "." :named("subtype"))
    $P145 = $P131."new"($P139, $P144, "concat" :named("rxtype"), $P132 :named("node"))
.annotate 'line', 715
    set $P126, $P145
  if_2185_end:
.annotate 'line', 714
    set $P124, $P126
.annotate 'line', 713
    goto if_2182_end
  if_2182:
    set $P2184, $P2118
    unless_null $P2184, vivify_1026
    $P2184 = root_new ['parrot';'ResizablePMCArray']
  vivify_1026:
    set $P125, $P2184[0]
    unless_null $P125, vivify_1027
    new $P125, "Undef"
  vivify_1027:
    set $P124, $P125
  if_2182_end:
    store_lex "$qast", $P124
.annotate 'line', 671
    .return ($P124)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "_block2122"  :anon :subid("368_1338064447.841") :outer("367_1338064447.841")
    .param pmc param_2124
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 673
    .const 'Sub' $P2170 = "370_1338064447.841" 
    capture_lex $P2170
    .const 'Sub' $P2128 = "369_1338064447.841" 
    capture_lex $P2128
    .lex "$_", param_2124
.annotate 'line', 674
    find_lex $P2126, "$_"
    unless_null $P2126, vivify_945
    $P2126 = root_new ['parrot';'ResizablePMCArray']
  vivify_945:
    set $P128, $P2126[1]
    unless_null $P128, vivify_946
    new $P128, "Undef"
  vivify_946:
    if $P128, if_2125
.annotate 'line', 704
    find_lex $P2167, "$_"
    unless_null $P2167, vivify_947
    $P2167 = root_new ['parrot';'ResizablePMCArray']
  vivify_947:
    set $P2168, $P2167[0]
    unless_null $P2168, vivify_948
    $P2168 = root_new ['parrot';'Hash']
  vivify_948:
    set $P137, $P2168["backslash"]
    unless_null $P137, vivify_949
    new $P137, "Undef"
  vivify_949:
    if $P137, if_2166
.annotate 'line', 709
    find_lex $P142, "$str"
    unless_null $P142, vivify_950
    new $P142, "Undef"
  vivify_950:
    find_lex $P2177, "$_"
    unless_null $P2177, vivify_951
    $P2177 = root_new ['parrot';'ResizablePMCArray']
  vivify_951:
    set $P143, $P2177[0]
    unless_null $P143, vivify_952
    new $P143, "Undef"
  vivify_952:
    set $S100, $P143
    concat $P144, $P142, $S100
    store_lex "$str", $P144
    set $P136, $P144
.annotate 'line', 704
    goto if_2166_end
  if_2166:
    .const 'Sub' $P2170 = "370_1338064447.841" 
    capture_lex $P2170
    $P140 = $P2170()
    set $P136, $P140
  if_2166_end:
    set $P127, $P136
.annotate 'line', 674
    goto if_2125_end
  if_2125:
    .const 'Sub' $P2128 = "369_1338064447.841" 
    capture_lex $P2128
    $P135 = $P2128()
    set $P127, $P135
  if_2125_end:
.annotate 'line', 673
    .return ($P127)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "_block2169"  :anon :subid("370_1338064447.841") :outer("368_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 705
    new $P139, "Undef"
    set $P2171, $P139
    .lex "$bs", $P2171
    find_lex $P2172, "$_"
    unless_null $P2172, vivify_953
    $P2172 = root_new ['parrot';'ResizablePMCArray']
  vivify_953:
    set $P2173, $P2172[0]
    unless_null $P2173, vivify_954
    $P2173 = root_new ['parrot';'Hash']
  vivify_954:
    set $P140, $P2173["backslash"]
    unless_null $P140, vivify_955
    new $P140, "Undef"
  vivify_955:
    $P141 = $P140."ast"()
    set $P2171, $P141
.annotate 'line', 706
    find_lex $P2175, "$/"
    unless_null $P2175, vivify_956
    $P2175 = root_new ['parrot';'Hash']
  vivify_956:
    set $P140, $P2175["sign"]
    unless_null $P140, vivify_957
    new $P140, "Undef"
  vivify_957:
    set $S100, $P140
    iseq $I102, $S100, "-"
    unless $I102, if_2174_end
    set $P141, $P2171
    unless_null $P141, vivify_958
    new $P141, "Undef"
  vivify_958:
    set $P142, $P2171
    unless_null $P142, vivify_959
    new $P142, "Undef"
  vivify_959:
    $P143 = $P142."negate"()
    isfalse $I103, $P143
    $P141."negate"($I103)
  if_2174_end:
.annotate 'line', 707
    find_lex $P2176, "@alts"
    unless_null $P2176, vivify_960
    $P2176 = root_new ['parrot';'ResizablePMCArray']
  vivify_960:
    set $P140, $P2171
    unless_null $P140, vivify_961
    new $P140, "Undef"
  vivify_961:
    $P141 = $P2176."push"($P140)
.annotate 'line', 704
    .return ($P141)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block2127"  :anon :subid("369_1338064447.841") :outer("368_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 675
    new $P129, "Undef"
    set $P2129, $P129
    .lex "$node", $P2129
.annotate 'line', 676
    new $P130, "Undef"
    set $P2130, $P130
    .lex "$lhs", $P2130
.annotate 'line', 677
    new $P131, "Undef"
    set $P2131, $P131
    .lex "$rhs", $P2131
.annotate 'line', 698
    new $P132, "Undef"
    set $P2132, $P132
    .lex "$ord0", $P2132
.annotate 'line', 699
    new $P133, "Undef"
    set $P2133, $P133
    .lex "$ord1", $P2133
.annotate 'line', 674
    set $P135, $P2129
    unless_null $P135, vivify_962
    new $P135, "Undef"
  vivify_962:
    set $P135, $P2130
    unless_null $P135, vivify_963
    new $P135, "Undef"
  vivify_963:
    set $P135, $P2131
    unless_null $P135, vivify_964
    new $P135, "Undef"
  vivify_964:
.annotate 'line', 678
    find_lex $P2135, "$_"
    unless_null $P2135, vivify_965
    $P2135 = root_new ['parrot';'ResizablePMCArray']
  vivify_965:
    set $P2136, $P2135[0]
    unless_null $P2136, vivify_966
    $P2136 = root_new ['parrot';'Hash']
  vivify_966:
    set $P135, $P2136["backslash"]
    unless_null $P135, vivify_967
    new $P135, "Undef"
  vivify_967:
    if $P135, if_2134
.annotate 'line', 686
    find_lex $P2145, "$_"
    unless_null $P2145, vivify_968
    $P2145 = root_new ['parrot';'ResizablePMCArray']
  vivify_968:
    set $P2146, $P2145[0]
    unless_null $P2146, vivify_969
    $P2146 = root_new ['parrot';'ResizablePMCArray']
  vivify_969:
    set $P136, $P2146[0]
    unless_null $P136, vivify_970
    new $P136, "Undef"
  vivify_970:
    set $S100, $P136
    new $P137, 'String'
    set $P137, $S100
    set $P2130, $P137
.annotate 'line', 685
    goto if_2134_end
  if_2134:
.annotate 'line', 679
    find_lex $P2137, "$_"
    unless_null $P2137, vivify_971
    $P2137 = root_new ['parrot';'ResizablePMCArray']
  vivify_971:
    set $P2138, $P2137[0]
    unless_null $P2138, vivify_972
    $P2138 = root_new ['parrot';'Hash']
  vivify_972:
    set $P136, $P2138["backslash"]
    unless_null $P136, vivify_973
    new $P136, "Undef"
  vivify_973:
    $P137 = $P136."ast"()
    set $P2129, $P137
.annotate 'line', 681
    set $P140, $P2129
    unless_null $P140, vivify_974
    new $P140, "Undef"
  vivify_974:
    $S100 = $P140."rxtype"()
    isne $I101, $S100, "literal"
    if $I101, if_2142
    new $P139, 'Integer'
    set $P139, $I101
    goto if_2142_end
  if_2142:
    set $P141, $P2129
    unless_null $P141, vivify_975
    new $P141, "Undef"
  vivify_975:
    $S101 = $P141."rxtype"()
    isne $I102, $S101, "enumcharlist"
    new $P139, 'Integer'
    set $P139, $I102
  if_2142_end:
    unless $P139, unless_2141
    set $P137, $P139
    goto unless_2141_end
  unless_2141:
.annotate 'line', 682
    set $P142, $P2129
    unless_null $P142, vivify_976
    new $P142, "Undef"
  vivify_976:
    $P143 = $P142."negate"()
    set $P137, $P143
  unless_2141_end:
    unless $P137, unless_2140
    set $P136, $P137
    goto unless_2140_end
  unless_2140:
    set $P2143, $P2129
    unless_null $P2143, vivify_977
    $P2143 = root_new ['parrot';'ResizablePMCArray']
  vivify_977:
    set $P144, $P2143[0]
    unless_null $P144, vivify_978
    new $P144, "Undef"
  vivify_978:
    set $S102, $P144
    length $I103, $S102
    set $N100, $I103
    set $N101, 1
    isne $I104, $N100, $N101
    new $P136, 'Integer'
    set $P136, $I104
  unless_2140_end:
    unless $P136, if_2139_end
.annotate 'line', 680
    find_lex $P145, "$/"
    unless_null $P145, vivify_979
    new $P145, "Undef"
  vivify_979:
    $P146 = $P145."CURSOR"()
    new $P147, "String"
    assign $P147, "Illegal range endpoint in regex: "
    find_lex $P148, "$_"
    unless_null $P148, vivify_980
    new $P148, "Undef"
  vivify_980:
    set $S103, $P148
    concat $P149, $P147, $S103
    $P146."panic"($P149)
  if_2139_end:
.annotate 'line', 683
    set $P2144, $P2129
    unless_null $P2144, vivify_981
    $P2144 = root_new ['parrot';'ResizablePMCArray']
  vivify_981:
    set $P136, $P2144[0]
    unless_null $P136, vivify_982
    new $P136, "Undef"
  vivify_982:
    set $P2130, $P136
  if_2134_end:
.annotate 'line', 688
    find_lex $P2148, "$_"
    unless_null $P2148, vivify_983
    $P2148 = root_new ['parrot';'ResizablePMCArray']
  vivify_983:
    set $P2149, $P2148[1]
    unless_null $P2149, vivify_984
    $P2149 = root_new ['parrot';'ResizablePMCArray']
  vivify_984:
    set $P2150, $P2149[0]
    unless_null $P2150, vivify_985
    $P2150 = root_new ['parrot';'Hash']
  vivify_985:
    set $P135, $P2150["backslash"]
    unless_null $P135, vivify_986
    new $P135, "Undef"
  vivify_986:
    if $P135, if_2147
.annotate 'line', 696
    find_lex $P2160, "$_"
    unless_null $P2160, vivify_987
    $P2160 = root_new ['parrot';'ResizablePMCArray']
  vivify_987:
    set $P2161, $P2160[1]
    unless_null $P2161, vivify_988
    $P2161 = root_new ['parrot';'ResizablePMCArray']
  vivify_988:
    set $P2162, $P2161[0]
    unless_null $P2162, vivify_989
    $P2162 = root_new ['parrot';'ResizablePMCArray']
  vivify_989:
    set $P136, $P2162[0]
    unless_null $P136, vivify_990
    new $P136, "Undef"
  vivify_990:
    set $S100, $P136
    new $P137, 'String'
    set $P137, $S100
    set $P2131, $P137
.annotate 'line', 695
    goto if_2147_end
  if_2147:
.annotate 'line', 689
    find_lex $P2151, "$_"
    unless_null $P2151, vivify_991
    $P2151 = root_new ['parrot';'ResizablePMCArray']
  vivify_991:
    set $P2152, $P2151[1]
    unless_null $P2152, vivify_992
    $P2152 = root_new ['parrot';'ResizablePMCArray']
  vivify_992:
    set $P2153, $P2152[0]
    unless_null $P2153, vivify_993
    $P2153 = root_new ['parrot';'Hash']
  vivify_993:
    set $P136, $P2153["backslash"]
    unless_null $P136, vivify_994
    new $P136, "Undef"
  vivify_994:
    $P137 = $P136."ast"()
    set $P2129, $P137
.annotate 'line', 691
    set $P140, $P2129
    unless_null $P140, vivify_995
    new $P140, "Undef"
  vivify_995:
    $S100 = $P140."rxtype"()
    isne $I101, $S100, "literal"
    if $I101, if_2157
    new $P139, 'Integer'
    set $P139, $I101
    goto if_2157_end
  if_2157:
    set $P141, $P2129
    unless_null $P141, vivify_996
    new $P141, "Undef"
  vivify_996:
    $S101 = $P141."rxtype"()
    isne $I102, $S101, "enumcharlist"
    new $P139, 'Integer'
    set $P139, $I102
  if_2157_end:
    unless $P139, unless_2156
    set $P137, $P139
    goto unless_2156_end
  unless_2156:
.annotate 'line', 692
    set $P142, $P2129
    unless_null $P142, vivify_997
    new $P142, "Undef"
  vivify_997:
    $P143 = $P142."negate"()
    set $P137, $P143
  unless_2156_end:
    unless $P137, unless_2155
    set $P136, $P137
    goto unless_2155_end
  unless_2155:
    set $P2158, $P2129
    unless_null $P2158, vivify_998
    $P2158 = root_new ['parrot';'ResizablePMCArray']
  vivify_998:
    set $P144, $P2158[0]
    unless_null $P144, vivify_999
    new $P144, "Undef"
  vivify_999:
    set $S102, $P144
    length $I103, $S102
    set $N100, $I103
    set $N101, 1
    isne $I104, $N100, $N101
    new $P136, 'Integer'
    set $P136, $I104
  unless_2155_end:
    unless $P136, if_2154_end
.annotate 'line', 690
    find_lex $P145, "$/"
    unless_null $P145, vivify_1000
    new $P145, "Undef"
  vivify_1000:
    $P146 = $P145."CURSOR"()
    new $P147, "String"
    assign $P147, "Illegal range endpoint in regex: "
    find_lex $P148, "$_"
    unless_null $P148, vivify_1001
    new $P148, "Undef"
  vivify_1001:
    set $S103, $P148
    concat $P149, $P147, $S103
    $P146."panic"($P149)
  if_2154_end:
.annotate 'line', 693
    set $P2159, $P2129
    unless_null $P2159, vivify_1002
    $P2159 = root_new ['parrot';'ResizablePMCArray']
  vivify_1002:
    set $P136, $P2159[0]
    unless_null $P136, vivify_1003
    new $P136, "Undef"
  vivify_1003:
    set $P2131, $P136
  if_2147_end:
.annotate 'line', 698
    set $P135, $P2130
    unless_null $P135, vivify_1004
    new $P135, "Undef"
  vivify_1004:
    set $S100, $P135
    ord $I101, $S100
    new $P136, 'Integer'
    set $P136, $I101
    set $P2132, $P136
.annotate 'line', 699
    set $P135, $P2131
    unless_null $P135, vivify_1005
    new $P135, "Undef"
  vivify_1005:
    set $S100, $P135
    ord $I101, $S100
    new $P136, 'Integer'
    set $P136, $I101
    set $P2133, $P136
.annotate 'line', 701
    set $P135, $P2132
    unless_null $P135, vivify_1006
    new $P135, "Undef"
  vivify_1006:
    set $N100, $P135
    set $P136, $P2133
    unless_null $P136, vivify_1007
    new $P136, "Undef"
  vivify_1007:
    set $N101, $P136
    isgt $I101, $N100, $N101
    unless $I101, if_2163_end
.annotate 'line', 700
    find_lex $P137, "$/"
    unless_null $P137, vivify_1008
    new $P137, "Undef"
  vivify_1008:
    $P139 = $P137."CURSOR"()
    new $P140, "String"
    assign $P140, "Illegal reversed character range in regex: "
    find_lex $P141, "$_"
    unless_null $P141, vivify_1009
    new $P141, "Undef"
  vivify_1009:
    set $S100, $P141
    concat $P142, $P140, $S100
    $P139."panic"($P142)
  if_2163_end:
.annotate 'line', 702
    new $P141, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P141, loop2165_handler
    push_eh $P141
  loop2165_test:
    set $P135, $P2132
    unless_null $P135, vivify_1010
    new $P135, "Undef"
  vivify_1010:
    set $N100, $P135
    set $P136, $P2133
    unless_null $P136, vivify_1011
    new $P136, "Undef"
  vivify_1011:
    set $N101, $P136
    isle $I101, $N100, $N101
    unless $I101, loop2165_done
  loop2165_redo:
    find_lex $P137, "$str"
    unless_null $P137, vivify_1012
    new $P137, "Undef"
  vivify_1012:
    set $P139, $P2132
    unless_null $P139, vivify_1013
    new $P139, "Undef"
  vivify_1013:
    clone $P2164, $P139
    inc $P139
    set $I102, $P2164
    chr $S100, $I102
    concat $P140, $P137, $S100
    store_lex "$str", $P140
  loop2165_next:
    goto loop2165_test
  loop2165_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P142, exception, 'type'
    eq $P142, .CONTROL_LOOP_NEXT, loop2165_next
    eq $P142, .CONTROL_LOOP_REDO, loop2165_redo
  loop2165_done:
    pop_eh 
.annotate 'line', 674
    .return ($I101)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "_block2105"  :anon :subid("366_1338064447.841") :outer("156_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 666
    new $P123, "Undef"
    set $P2107, $P123
    .lex "$uniprop", $P2107
    find_lex $P2108, "$/"
    unless_null $P2108, vivify_1028
    $P2108 = root_new ['parrot';'Hash']
  vivify_1028:
    set $P124, $P2108["uniprop"]
    unless_null $P124, vivify_1029
    new $P124, "Undef"
  vivify_1029:
    set $S100, $P124
    new $P125, 'String'
    set $P125, $S100
    set $P2107, $P125
.annotate 'line', 667
    get_hll_global $P124, "GLOBAL"
    nqp_get_package_through_who $P125, $P124, "QAST"
    get_who $P126, $P125
    set $P127, $P126["Regex"]
    set $P128, $P2107
    unless_null $P128, vivify_1030
    new $P128, "Undef"
  vivify_1030:
.annotate 'line', 668
    find_lex $P2111, "$/"
    unless_null $P2111, vivify_1031
    $P2111 = root_new ['parrot';'Hash']
  vivify_1031:
    set $P131, $P2111["sign"]
    unless_null $P131, vivify_1032
    new $P131, "Undef"
  vivify_1032:
    set $S100, $P131
    iseq $I100, $S100, "-"
    if $I100, if_2110
    new $P130, 'Integer'
    set $P130, $I100
    goto if_2110_end
  if_2110:
    find_lex $P2112, "$/"
    unless_null $P2112, vivify_1033
    $P2112 = root_new ['parrot';'Hash']
  vivify_1033:
    set $P132, $P2112["invert"]
    unless_null $P132, vivify_1034
    new $P132, "Undef"
  vivify_1034:
    set $S101, $P132
    isne $I101, $S101, "!"
    new $P130, 'Integer'
    set $P130, $I101
  if_2110_end:
    unless $P130, unless_2109
    set $P129, $P130
    goto unless_2109_end
  unless_2109:
.annotate 'line', 669
    find_lex $P2114, "$/"
    unless_null $P2114, vivify_1035
    $P2114 = root_new ['parrot';'Hash']
  vivify_1035:
    set $P135, $P2114["sign"]
    unless_null $P135, vivify_1036
    new $P135, "Undef"
  vivify_1036:
    set $S102, $P135
    isne $I102, $S102, "-"
    if $I102, if_2113
    new $P133, 'Integer'
    set $P133, $I102
    goto if_2113_end
  if_2113:
    find_lex $P2115, "$/"
    unless_null $P2115, vivify_1037
    $P2115 = root_new ['parrot';'Hash']
  vivify_1037:
    set $P136, $P2115["invert"]
    unless_null $P136, vivify_1038
    new $P136, "Undef"
  vivify_1038:
    set $S103, $P136
    iseq $I103, $S103, "!"
    new $P133, 'Integer'
    set $P133, $I103
  if_2113_end:
    set $P129, $P133
  unless_2109_end:
.annotate 'line', 667
    find_lex $P137, "$/"
    unless_null $P137, vivify_1039
    new $P137, "Undef"
  vivify_1039:
    $P138 = $P127."new"($P128, "uniprop" :named("rxtype"), $P129 :named("negate"), $P137 :named("node"))
    store_lex "$qast", $P138
.annotate 'line', 665
    .return ($P138)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "_block2098"  :anon :subid("365_1338064447.841") :outer("156_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 661
    new $P121, "Undef"
    set $P2100, $P121
    .lex "$name", $P2100
    find_lex $P2101, "$/"
    unless_null $P2101, vivify_1040
    $P2101 = root_new ['parrot';'Hash']
  vivify_1040:
    set $P122, $P2101["name"]
    unless_null $P122, vivify_1041
    new $P122, "Undef"
  vivify_1041:
    set $S100, $P122
    new $P123, 'String'
    set $P123, $S100
    set $P2100, $P123
.annotate 'line', 662
    get_hll_global $P122, "GLOBAL"
    nqp_get_package_through_who $P123, $P122, "QAST"
    get_who $P124, $P123
    set $P125, $P124["Regex"]
    get_hll_global $P126, "GLOBAL"
    nqp_get_package_through_who $P127, $P126, "PAST"
    get_who $P128, $P127
    set $P129, $P128["Node"]
    set $P130, $P2100
    unless_null $P130, vivify_1042
    new $P130, "Undef"
  vivify_1042:
    $P131 = $P129."new"($P130)
.annotate 'line', 663
    find_lex $P2102, "$/"
    unless_null $P2102, vivify_1043
    $P2102 = root_new ['parrot';'Hash']
  vivify_1043:
    set $P132, $P2102["sign"]
    unless_null $P132, vivify_1044
    new $P132, "Undef"
  vivify_1044:
    set $S100, $P132
    iseq $I100, $S100, "-"
.annotate 'line', 662
    find_lex $P133, "$/"
    unless_null $P133, vivify_1045
    new $P133, "Undef"
  vivify_1045:
    $P134 = $P125."new"($P131, "subrule" :named("rxtype"), "method" :named("subtype"), $I100 :named("negate"), $P133 :named("node"))
    store_lex "$qast", $P134
.annotate 'line', 660
    .return ($P134)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "mod_internal" :anon :subid("157_1338064447.841") :outer("336_1338064447.841")
    .param pmc param_2190
    .param pmc param_2191
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 724
    .lex "self", param_2190
    .lex "$/", param_2191
.annotate 'line', 725
    new $P118, "Undef"
    set $P2192, $P118
    .lex "$n", $P2192
    set $P2194, param_2191
    unless_null $P2194, vivify_1047
    $P2194 = root_new ['parrot';'Hash']
  vivify_1047:
    set $P2195, $P2194["n"]
    unless_null $P2195, vivify_1048
    $P2195 = root_new ['parrot';'ResizablePMCArray']
  vivify_1048:
    set $P120, $P2195[0]
    unless_null $P120, vivify_1049
    new $P120, "Undef"
  vivify_1049:
    set $S100, $P120
    isgt $I100, $S100, ""
    if $I100, if_2193
    new $P122, "Float"
    assign $P122, 1
    set $P119, $P122
    goto if_2193_end
  if_2193:
    set $P2196, param_2191
    unless_null $P2196, vivify_1050
    $P2196 = root_new ['parrot';'Hash']
  vivify_1050:
    set $P2197, $P2196["n"]
    unless_null $P2197, vivify_1051
    $P2197 = root_new ['parrot';'ResizablePMCArray']
  vivify_1051:
    set $P121, $P2197[0]
    unless_null $P121, vivify_1052
    new $P121, "Undef"
  vivify_1052:
    set $N100, $P121
    new $P119, 'Float'
    set $P119, $N100
  if_2193_end:
    set $P2192, $P119
.annotate 'line', 726
    set $P119, $P2192
    unless_null $P119, vivify_1053
    new $P119, "Undef"
  vivify_1053:
    set $P2198, param_2191
    unless_null $P2198, vivify_1054
    $P2198 = root_new ['parrot';'Hash']
  vivify_1054:
    set $P2199, $P2198["mod_ident"]
    unless_null $P2199, vivify_1055
    $P2199 = root_new ['parrot';'Hash']
  vivify_1055:
    set $P120, $P2199["sym"]
    unless_null $P120, vivify_1056
    new $P120, "Undef"
  vivify_1056:
    set $S100, $P120
    find_dynamic_lex $P123, "%*RX"
    unless_null $P123, vivify_1057
    get_hll_global $P121, "GLOBAL"
    get_who $P122, $P121
    set $P123, $P122["%RX"]
    unless_null $P123, vivify_1058
    die "Contextual %*RX not found"
  vivify_1058:
    store_dynamic_lex "%*RX", $P123
  vivify_1057:
    set $P123[$S100], $P119
.annotate 'line', 727
    set $P119, param_2191
    $P120 = $P119."!make"(0)
.annotate 'line', 724
    .return ($P120)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "subrule_alias" :anon :subid("158_1338064447.841") :outer("336_1338064447.841")
    .param pmc param_2201
    .param pmc param_2202
    .param pmc param_2203
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 825
    .lex "self", param_2201
    .lex "$ast", param_2202
    .lex "$name", param_2203
.annotate 'line', 826
    set $P118, param_2202
    unless_null $P118, vivify_1059
    new $P118, "Undef"
  vivify_1059:
    $S100 = $P118."name"()
    isgt $I100, $S100, ""
    if $I100, if_2204
.annotate 'line', 827
    set $P119, param_2202
    unless_null $P119, vivify_1060
    new $P119, "Undef"
  vivify_1060:
    set $P120, param_2203
    unless_null $P120, vivify_1061
    new $P120, "Undef"
  vivify_1061:
    $P119."name"($P120)
    goto if_2204_end
  if_2204:
.annotate 'line', 826
    set $P119, param_2202
    unless_null $P119, vivify_1062
    new $P119, "Undef"
  vivify_1062:
    set $P120, param_2203
    unless_null $P120, vivify_1063
    new $P120, "Undef"
  vivify_1063:
    concat $P121, $P120, "="
    set $P122, param_2202
    unless_null $P122, vivify_1064
    new $P122, "Undef"
  vivify_1064:
    $S101 = $P122."name"()
    concat $P123, $P121, $S101
    $P119."name"($P123)
  if_2204_end:
.annotate 'line', 828
    set $P118, param_2202
    unless_null $P118, vivify_1065
    new $P118, "Undef"
  vivify_1065:
    $P119 = $P118."subtype"("capture")
.annotate 'line', 825
    .return ($P119)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "flip_ast" :anon :subid("159_1338064447.841") :outer("336_1338064447.841")
    .param pmc param_2208
    .param pmc param_2209
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 831
    .const 'Sub' $P2227 = "372_1338064447.841" 
    capture_lex $P2227
    .const 'Sub' $P2216 = "371_1338064447.841" 
    capture_lex $P2216
    new $P2207, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P2207, control_2206
    push_eh $P2207
    .lex "self", param_2208
    .lex "$qast", param_2209
.annotate 'line', 832
    set $P118, param_2209
    unless_null $P118, vivify_1066
    new $P118, "Undef"
  vivify_1066:
    get_hll_global $P119, "GLOBAL"
    nqp_get_package_through_who $P120, $P119, "QAST"
    get_who $P121, $P120
    set $P122, $P121["Regex"]
    type_check $I100, $P118, $P122
    if $I100, unless_2210_end
    new $P123, "Exception"
    set $P123['type'], .CONTROL_RETURN
    set $P124, param_2209
    unless_null $P124, vivify_1067
    new $P124, "Undef"
  vivify_1067:
    setattribute $P123, 'payload', $P124
    throw $P123
  unless_2210_end:
.annotate 'line', 833
    set $P118, param_2209
    unless_null $P118, vivify_1068
    new $P118, "Undef"
  vivify_1068:
    $S100 = $P118."rxtype"()
    iseq $I100, $S100, "literal"
    if $I100, if_2211
.annotate 'line', 836
    set $P119, param_2209
    unless_null $P119, vivify_1069
    new $P119, "Undef"
  vivify_1069:
    $S101 = $P119."rxtype"()
    iseq $I101, $S101, "concat"
    if $I101, if_2214
.annotate 'line', 841
    set $P120, param_2209
    unless_null $P120, vivify_1070
    new $P120, "Undef"
  vivify_1070:
    $S102 = $P120."rxtype"()
    iseq $I102, $S102, "pastnode"
    if $I102, if_2225
.annotate 'line', 845
    set $P122, param_2209
    unless_null $P122, vivify_1071
    new $P122, "Undef"
  vivify_1071:
    $P123 = $P122."list"()
    defined $I103, $P123
    unless $I103, for_undef_1072
    iter $P121, $P123
    new $P125, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P125, loop2229_handler
    push_eh $P125
  loop2229_test:
    unless $P121, loop2229_done
    shift $P124, $P121
  loop2229_redo:
    .const 'Sub' $P2227 = "372_1338064447.841" 
    capture_lex $P2227
    $P2227($P124)
  loop2229_next:
    goto loop2229_test
  loop2229_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P126, exception, 'type'
    eq $P126, .CONTROL_LOOP_NEXT, loop2229_next
    eq $P126, .CONTROL_LOOP_REDO, loop2229_redo
  loop2229_done:
    pop_eh 
  for_undef_1072:
.annotate 'line', 844
    goto if_2225_end
  if_2225:
  if_2225_end:
.annotate 'line', 841
    goto if_2214_end
  if_2214:
.annotate 'line', 836
    .const 'Sub' $P2216 = "371_1338064447.841" 
    capture_lex $P2216
    $P2216()
  if_2214_end:
    goto if_2211_end
  if_2211:
.annotate 'line', 834
    set $P2212, param_2209
    unless_null $P2212, vivify_1081
    $P2212 = root_new ['parrot';'ResizablePMCArray']
  vivify_1081:
    set $P119, $P2212[0]
    unless_null $P119, vivify_1082
    new $P119, "Undef"
  vivify_1082:
    $P120 = $P119."reverse"()
    set $P2213, param_2209
    unless_null $P2213, vivify_1083
    $P2213 = root_new ['parrot';'ResizablePMCArray']
    set param_2209, $P2213
  vivify_1083:
    set $P2213[0], $P120
  if_2211_end:
.annotate 'line', 831
    set $P118, param_2209
    unless_null $P118, vivify_1084
    new $P118, "Undef"
  vivify_1084:
    .return ($P118)
  control_2206:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P119, exception, "payload"
    .return ($P119)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "_block2226"  :anon :subid("372_1338064447.841") :outer("159_1338064447.841")
    .param pmc param_2228
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 845
    .lex "$_", param_2228
    find_lex $P125, "self"
    nqp_decontainerize $P126, $P125
    find_lex $P127, "$_"
    unless_null $P127, vivify_1073
    new $P127, "Undef"
  vivify_1073:
    $P128 = $P126."flip_ast"($P127)
    .return ($P128)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block2215"  :anon :subid("371_1338064447.841") :outer("159_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 837
    $P2218 = root_new ['parrot';'ResizablePMCArray']
    set $P2217, $P2218
    .lex "@tmp", $P2217
.annotate 'line', 836
    set $P2219, $P2217
    unless_null $P2219, vivify_1074
    $P2219 = root_new ['parrot';'ResizablePMCArray']
  vivify_1074:
.annotate 'line', 838
    new $P122, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P122, loop2221_handler
    push_eh $P122
  loop2221_test:
    find_lex $P120, "$qast"
    unless_null $P120, vivify_1075
    new $P120, "Undef"
  vivify_1075:
    $P121 = $P120."list"()
    set $N100, $P121
    unless $N100, loop2221_done
  loop2221_redo:
    set $P2220, $P2217
    unless_null $P2220, vivify_1076
    $P2220 = root_new ['parrot';'ResizablePMCArray']
  vivify_1076:
    find_lex $P122, "$qast"
    unless_null $P122, vivify_1077
    new $P122, "Undef"
  vivify_1077:
    $P123 = $P122."list"()
    $P124 = $P123."shift"()
    $P2220."push"($P124)
  loop2221_next:
    goto loop2221_test
  loop2221_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P123, exception, 'type'
    eq $P123, .CONTROL_LOOP_NEXT, loop2221_next
    eq $P123, .CONTROL_LOOP_REDO, loop2221_redo
  loop2221_done:
    pop_eh 
.annotate 'line', 839
    new $P120, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P120, loop2224_handler
    push_eh $P120
  loop2224_test:
    set $P2222, $P2217
    unless_null $P2222, vivify_1078
    $P2222 = root_new ['parrot';'ResizablePMCArray']
  vivify_1078:
    unless $P2222, loop2224_done
  loop2224_redo:
    find_lex $P120, "$qast"
    unless_null $P120, vivify_1079
    new $P120, "Undef"
  vivify_1079:
    $P121 = $P120."list"()
    find_lex $P122, "self"
    nqp_decontainerize $P123, $P122
    set $P2223, $P2217
    unless_null $P2223, vivify_1080
    $P2223 = root_new ['parrot';'ResizablePMCArray']
  vivify_1080:
    $P124 = $P2223."pop"()
    $P125 = $P123."flip_ast"($P124)
    $P121."push"($P125)
  loop2224_next:
    goto loop2224_test
  loop2224_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P121, exception, 'type'
    eq $P121, .CONTROL_LOOP_NEXT, loop2224_next
    eq $P121, .CONTROL_LOOP_REDO, loop2224_redo
  loop2224_done:
    pop_eh 
.annotate 'line', 836
    .return ($P2222)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Compiler"]
.sub "_block2231"  :subid("373_1338064447.841") :outer("160_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 852
    .lex "$?PACKAGE", $P2233
    .lex "$?CLASS", $P2234
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block2237" :load :anon :subid("374_1338064447.841")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 1
    .const '' $P2239 = "160_1338064447.841" 
    $P109 = $P2239()
    .return ($P109)
.end

