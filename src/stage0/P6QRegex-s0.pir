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
.sub "_block1000"  :anon :subid("160_1337965225.74")
    .param pmc param_1002 :slurpy
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 0
    .const 'Sub' $P2240 = "375_1337965225.74" 
    capture_lex $P2240
    .const 'Sub' $P2231 = "373_1337965225.74" 
    capture_lex $P2231
    .const 'Sub' $P1551 = "336_1337965225.74" 
    capture_lex $P1551
    .const 'Sub' $P1012 = "162_1337965225.74" 
    capture_lex $P1012
    .const 'Sub' $P1007 = "161_1337965225.74" 
    capture_lex $P1007
.annotate 'line', 1
    .lex "@ARGS", param_1002
    .lex "GLOBALish", $P1003
    .lex "$?PACKAGE", $P1004
.annotate 'line', 851
    new $P100, "Undef"
    set $P1005, $P100
    .lex "$p6regex", $P1005
.annotate 'line', 856
    .const 'Sub' $P1007 = "161_1337965225.74" 
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
    .const 'Sub' $P1012 = "162_1337965225.74" 
    capture_lex $P1012
    $P1012()
.annotate 'line', 237
    .const 'Sub' $P1551 = "336_1337965225.74" 
    capture_lex $P1551
    $P1551()
.annotate 'line', 848
    .const 'Sub' $P2231 = "373_1337965225.74" 
    capture_lex $P2231
    $P2231()
.annotate 'line', 851
    get_hll_global $P101, "GLOBAL"
    nqp_get_package_through_who $P103, $P101, "QRegex"
    nqp_get_package_through_who $P104, $P103, "P6Regex"
    get_who $P105, $P104
    set $P106, $P105["Compiler"]
    $P107 = $P106."new"()
    set $P1005, $P107
.annotate 'line', 852
    set $P101, $P1005
    unless_null $P101, vivify_1082
    new $P101, "Undef"
  vivify_1082:
    $P101."language"("QRegex::P6Regex")
.annotate 'line', 853
    set $P101, $P1005
    unless_null $P101, vivify_1083
    new $P101, "Undef"
  vivify_1083:
    get_hll_global $P103, "GLOBAL"
    nqp_get_package_through_who $P104, $P103, "QRegex"
    nqp_get_package_through_who $P105, $P104, "P6Regex"
    get_who $P106, $P105
    set $P107, $P106["Grammar"]
    $P101."parsegrammar"($P107)
.annotate 'line', 854
    set $P101, $P1005
    unless_null $P101, vivify_1084
    new $P101, "Undef"
  vivify_1084:
    get_hll_global $P103, "GLOBAL"
    nqp_get_package_through_who $P104, $P103, "QRegex"
    nqp_get_package_through_who $P105, $P104, "P6Regex"
    get_who $P106, $P105
    set $P107, $P106["Actions"]
    $P101."parseactions"($P107)
.annotate 'line', 1
    set $P101, $P1006
    set $P103, param_1002
    if $P103, if_2234
    set $P101, $P103
    goto if_2234_end
  if_2234:
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P104, "ModuleLoader"
    getinterp $P105
    set $P106, $P105["context"]
    $P104."set_mainline_module"($P106)
    .const '' $P2235 = "161_1337965225.74" 
    set $P107, param_1002
    $P108 = $P2235($P107 :flat)
    set $P101, $P108
  if_2234_end:
    .return ($P101)
    .const 'Sub' $P2237 = "374_1337965225.74" 
    .return ($P2237)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post376") :outer("160_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 0
    .const 'Sub' $P1001 = "160_1337965225.74" 
    .local pmc block
    set block, $P1001
    nqp_dynop_setup 
    nqp_bigint_setup 
    getinterp $P110
    get_class $P111, "LexPad"
    get_class $P112, "NQPLexPad"
    $P110."hll_map"($P111, $P112)
    nqp_create_sc $P113, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714"
    .local pmc cur_sc
    set cur_sc, $P113
    cur_sc."set_description"("src\\stage2\\gen\\NQPP6QRegex.pm")
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P114, "ModuleLoader"
    $P115 = $P114."load_setting"("NQPCORE")
    block."set_outer_ctx"($P115)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P114, "ModuleLoader"
    $P114."load_module"("NQPRegex")
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P114, "ModuleLoader"
    $P114."load_module"("QRegex")
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P114, "ModuleLoader"
    $P114."load_module"("QRegex")
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P114, "ModuleLoader"
    $P114."load_module"("NQPHLL")
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P114, "ModuleLoader"
    $P114."load_module"("QAST")
    set $S100, "AQAAAEAAAAAHAAAAeAAAAAkAAADAAAAAABwAAJUAAABQJQAAMDYAAAAAAAAwNgAAAAAAADA2AAAwNgAAAAAAAAQAAAAAAAAACAAAAAkAAAASAAAAEwAAAEgAAABJAAAAcQEAAAAAAABzAQAAdAEAAAsCAAAMAgAAAQAAAAAAAAAQAAAANAEAANcAAAAqDQAANwEAACwTAAD7AQAAXhcAAAACAAAwGAAAAwIAAOYYAAAJAgAAxhkAABMCAACKGgAAAAAAAIcAAAAAAAAAAAAAAAoACwAAAAIAAAACAAAAAACIAAAAAwAAAAIAAQAAAAQAAAAFAAAACwABAAAARgAAAAYAAAACAAAAAACJAAAABwAAAAIAAgAAABcAAAAKAAAAAgACAAAAPgAAAAsAAAACAAIAAABMAAAADAAAAAIAAgAAAFIAAAANAAAAAgACAAAAVwAAAA4AAAACAAAAAACKAAAADwAAAAIAAAAAAIsAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAAAAAAAAwAAAAAAjAAAAAAAAAABAAAACgAAAAAACgC4AAAAEQAAAAIAAwAAAAgAAAAUAAAAAgADAAAACQAAABUAAAACAAMAAAAKAAAAFgAAAAIAAwAAAAsAAAAXAAAAAgADAAAADAAAABgAAAACAAMAAAANAAAAGQAAAAIAAwAAABAAAAAaAAAAAgADAAAAEgAAABsAAAACAAMAAAATAAAAHAAAAAIAAgAAAE0AAAAdAAAAAgACAAAATgAAAB4AAAACAAIAAABPAAAAHwAAAAIAAgAAAFAAAAAgAAAAAgACAAAAUQAAACEAAAACAAIAAABiAAAAIgAAAAIAAgAAAGMAAAAjAAAAAgACAAAAZAAAACQAAAACAAIAAABlAAAAJQAAAAIAAgAAAGYAAAAmAAAAAgACAAAAZwAAACcAAAACAAIAAABoAAAAKAAAAAIAAgAAAGkAAAApAAAAAgACAAAAagAAACoAAAACAAIAAABrAAAAKwAAAAIAAgAAAGwAAAAsAAAAAgACAAAAbQAAAC0AAAACAAIAAABuAAAALgAAAAIAAgAAAG8AAAAvAAAAAgACAAAAcAAAADAAAAACAAIAAABxAAAAMQAAAAIAAgAAAHIAAAAyAAAAAgACAAAAcwAAADMAAAACAAIAAAB0AAAANAAAAAIAAgAAAHUAAAA1AAAAAgACAAAAdgAAADYAAAACAAIAAAB3AAAANwAAAAIAAAAAAAMAAAA4AAAAAgACAAAAeQAAADkAAAACAAIAAAB6AAAAOgAAAAIAAgAAAHsAAAA7AAAAAgACAAAAfAAAADwAAAACAAIAAAB9AAAAPQAAAAIAAgAAAH4AAAA+AAAAAgACAAAAfwAAAD8AAAACAAIAAACAAAAAQAAAAAIAAgAAAIEAAABBAAAAAgACAAAAggAAAEIAAAACAAIAAACDAAAAQwAAAAIAAgAAAIQAAABEAAAAAgACAAAAhQAAAEUAAAACAAIAAACGAAAARgAAAAIAAAAAAA4AAABHAAAAAgAEAAAAAwAAAEoAAAACAAQAAAAEAAAASwAAAAIABAAAAAUAAABMAAAAAgAEAAAABgAAAE0AAAACAAQAAAAHAAAATgAAAAIABAAAAAgAAABPAAAAAgAEAAAACQAAAFAAAAACAAQAAAAKAAAAUQAAAAIABAAAAAsAAABSAAAAAgAEAAAADAAAAFMAAAACAAQAAAANAAAAVAAAAAIABAAAAA4AAABVAAAAAgAEAAAADwAAAFYAAAACAAQAAAAQAAAAVwAAAAIABAAAABEAAABYAAAAAgAEAAAAEgAAAFkAAAACAAQAAAATAAAAWgAAAAIABAAAABQAAABbAAAAAgAEAAAAFQAAAFwAAAACAAQAAAAWAAAAXQAAAAIABAAAABcAAABeAAAAAgAEAAAAGAAAAF8AAAACAAQAAAAZAAAAYAAAAAIABAAAABoAAABhAAAAAgAEAAAAGwAAAGIAAAACAAQAAAAcAAAAYwAAAAIABAAAAB0AAABkAAAAAgAEAAAAHgAAAGUAAAACAAQAAAAfAAAAZgAAAAIABAAAACAAAABnAAAAAgAEAAAAIQAAAGgAAAACAAQAAAAiAAAAaQAAAAIABAAAACMAAABqAAAAAgAEAAAAJAAAAGsAAAACAAQAAAAlAAAAbAAAAAIABAAAACYAAABtAAAAAgAEAAAAJwAAAG4AAAACAAQAAAAoAAAAbwAAAAIABAAAACkAAABwAAAAAgAEAAAAKgAAAHEAAAACAAQAAAArAAAAcgAAAAIABAAAACwAAABzAAAAAgAEAAAALQAAAHQAAAACAAQAAAAuAAAAdQAAAAIABAAAAC8AAAB2AAAAAgAEAAAAMAAAAHcAAAACAAQAAAAxAAAAeAAAAAIABAAAADIAAAB5AAAAAgAEAAAAMwAAAHoAAAACAAQAAAA0AAAAewAAAAIABAAAADUAAAB8AAAAAgAEAAAANgAAAH0AAAACAAQAAAA3AAAAfgAAAAIABAAAADgAAAB/AAAAAgAEAAAAOQAAAIAAAAACAAQAAAA6AAAAgQAAAAIABAAAADsAAACCAAAAAgAAAAAAAgAAAIMAAAACAAAAAAAEAAAAhAAAAAIAAAAAAAUAAACFAAAAAgAAAAAABgAAAIYAAAACAAAAAAAHAAAAhwAAAAIAAAAAAAgAAACIAAAAAgAAAAAACQAAAIkAAAACAAAAAAAKAAAAigAAAAIAAAAAAAsAAACLAAAAAgAAAAAADAAAAIwAAAACAAAAAAANAAAAjQAAAAIAAAAAAA8AAACOAAAAAgAAAAAAEAAAAI8AAAACAAAAAAARAAAAkAAAAAIAAAAAABIAAACRAAAAAgAAAAAAEwAAAJIAAAACAAAAAAAUAAAAkwAAAAIAAAAAABUAAACUAAAAAgAAAAAAFgAAAJUAAAACAAAAAAAXAAAAlgAAAAIAAAAAABgAAACXAAAAAgAAAAAAGQAAAJgAAAACAAAAAAAaAAAAmQAAAAIAAAAAABsAAACaAAAAAgAAAAAAHAAAAJsAAAACAAAAAAAdAAAAnAAAAAIAAAAAAB4AAACdAAAAAgAAAAAAHwAAAJ4AAAACAAAAAAAgAAAAnwAAAAIAAAAAACEAAACgAAAAAgAAAAAAIgAAAKEAAAACAAAAAAAjAAAAogAAAAIAAAAAACQAAACjAAAAAgAAAAAAJQAAAKQAAAACAAAAAAAmAAAApQAAAAIAAAAAACcAAACmAAAAAgAAAAAAKAAAAKcAAAACAAAAAAApAAAAqAAAAAIAAAAAACoAAACpAAAAAgAAAAAAKwAAAKoAAAACAAAAAAAsAAAAqwAAAAIAAAAAAC0AAACsAAAAAgAAAAAALgAAAK0AAAACAAAAAAAvAAAArgAAAAIAAAAAADAAAACvAAAAAgAAAAAAMQAAALAAAAACAAAAAAAyAAAAsQAAAAIAAAAAADMAAACyAAAAAgAAAAAANAAAALMAAAACAAAAAAA1AAAAtAAAAAIAAAAAADYAAAC1AAAAAgAAAAAANwAAALYAAAACAAAAAAA4AAAAtwAAAAIAAAAAADkAAAC4AAAAAgAAAAAAOgAAALkAAAACAAAAAAA7AAAAugAAAAIAAAAAADwAAAC7AAAAAgAAAAAAPQAAALwAAAACAAAAAAA+AAAAvQAAAAIAAAAAAD8AAAC+AAAAAgAAAAAAQAAAAL8AAAACAAAAAABBAAAAwAAAAAIAAAAAAEIAAADBAAAAAgAAAAAAQwAAAMIAAAACAAAAAABEAAAAwwAAAAIAAAAAAEUAAADEAAAAAgAAAAAARgAAAMUAAAACAAAAAABHAAAAxgAAAAIAAAAAAEgAAADHAAAAAgAAAAAASQAAAMgAAAACAAAAAABKAAAAyQAAAAIAAAAAAEsAAADKAAAAAgAAAAAATAAAAMsAAAACAAAAAABNAAAAzAAAAAIAAAAAAE4AAAAAAAAAAAAAAAQAAAAAAAAAAgAAAAAAAQAAAAIABAAAAAEAAAACAAIAAABMAAAAAgADAAAABwAAAAQAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAIAAgAAAE4AAAAAAAAAAAAAAAoAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAMAAAAEAAAAAQAAAAAAAAADAAAAAgAAAAEAAAAAAAAAAwAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAAEAAAAAAAAAAIAAwAAAAcAAAADAAIAAgAAAEwAAAAKAAoAAADNAAAABAAAAAAAAAAAAM4AAAAEAAEAAAAAAAAAzwAAAAQAAgAAAAAAAADQAAAABAADAAAAAAAAANEAAAAEAAQAAAAAAAAA0gAAAAQABQAAAAAAAADTAAAABAAGAAAAAAAAANQAAAAEAAcAAAAAAAAA1QAAAAQACAAAAAAAAADWAAAABAAJAAAAAAAAAAIABAAAAAEAAAADAAIAAAAAAAEAAAADAAAAAACNAAAAAAAAAE8AAAAKAAAAAAAKAF8AAADYAAAAAgADAAAACAAAANkAAAACAAMAAAAJAAAA2gAAAAIAAwAAAAoAAADbAAAAAgADAAAACwAAANwAAAACAAMAAAAMAAAA3QAAAAIAAwAAAA0AAADeAAAAAgADAAAAEAAAAN8AAAACAAMAAAASAAAA4AAAAAIAAwAAABMAAADhAAAAAgAEAAAAPQAAAOIAAAACAAQAAAA+AAAA4wAAAAIABAAAAD8AAADkAAAAAgAEAAAAQAAAAOUAAAACAAQAAABBAAAA5gAAAAIAAAAAAFYAAADnAAAAAgAEAAAAQwAAAOgAAAACAAQAAABEAAAA6QAAAAIABAAAAEUAAADqAAAAAgAEAAAARgAAAOsAAAACAAQAAABHAAAA7AAAAAIABAAAAEgAAADtAAAAAgAEAAAASQAAAO4AAAACAAQAAABKAAAA7wAAAAIABAAAAEsAAADwAAAAAgAEAAAATAAAAPEAAAACAAQAAABNAAAA8gAAAAIABAAAAE4AAADzAAAAAgAEAAAATwAAAPQAAAACAAQAAABQAAAA9QAAAAIABAAAAFEAAAD2AAAAAgAEAAAAUgAAAPcAAAACAAQAAABTAAAA+AAAAAIABAAAAFQAAAD5AAAAAgAEAAAAVQAAAPoAAAACAAQAAABWAAAA+wAAAAIABAAAAFcAAAD8AAAAAgAEAAAAWAAAAP0AAAACAAQAAABZAAAA/gAAAAIABAAAAFoAAAD/AAAAAgAEAAAAWwAAAAABAAACAAQAAABcAAAAAQEAAAIABAAAAF0AAAACAQAAAgAAAAAAUAAAAAMBAAACAAAAAABRAAAABAEAAAIAAAAAAFIAAAAFAQAAAgAAAAAAUwAAAAYBAAACAAAAAABUAAAABwEAAAIAAAAAAFUAAAAIAQAAAgAAAAAAVwAAAAkBAAACAAAAAABYAAAACgEAAAIAAAAAAFkAAAALAQAAAgAAAAAAWgAAAAwBAAACAAAAAABbAAAADQEAAAIAAAAAAFwAAAAOAQAAAgAAAAAAXQAAAA8BAAACAAAAAABeAAAAEAEAAAIAAAAAAF8AAAARAQAAAgAAAAAAYAAAABIBAAACAAAAAABhAAAAEwEAAAIAAAAAAGIAAAAUAQAAAgAAAAAAYwAAABUBAAACAAAAAABkAAAAFgEAAAIAAAAAAGUAAAAXAQAAAgAAAAAAZgAAABgBAAACAAAAAABnAAAAGQEAAAIAAAAAAGgAAAAaAQAAAgAAAAAAaQAAABsBAAACAAAAAABqAAAAHAEAAAIAAAAAAGsAAAAdAQAAAgAAAAAAbAAAAB4BAAACAAAAAABtAAAAHwEAAAIAAAAAAG4AAAAgAQAAAgAAAAAAbwAAACEBAAACAAAAAABwAAAAIgEAAAIAAAAAAHEAAAAjAQAAAgAAAAAAcgAAACQBAAACAAAAAABzAAAAJQEAAAIAAAAAAHQAAAAmAQAAAgAAAAAAdQAAACcBAAACAAAAAAB2AAAAKAEAAAIAAAAAAHcAAAApAQAAAgAAAAAAeAAAACoBAAACAAAAAAB5AAAAKwEAAAIAAAAAAHoAAAAsAQAAAgAAAAAAewAAAC0BAAACAAAAAAB8AAAALgEAAAIAAAAAAH0AAAAvAQAAAgAAAAAAfgAAADABAAACAAAAAAB/AAAAMQEAAAIAAAAAAIAAAAAyAQAAAgAAAAAAgQAAADMBAAACAAAAAACCAAAANAEAAAIAAAAAAIMAAAA1AQAAAgAAAAAAhAAAADYBAAACAAAAAACFAAAAAAAAAAAAAAADAAAAAAAAAAIAAAAAAE8AAAACAAQAAAA8AAAAAgADAAAABwAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAMAAAAAAAAAAgADAAAABwAAAAMAAgAEAAAAPAAAAAMAAgAAAAAATwAAAAMAAAAAAI4AAAAAAAAAhgAAAAoAAAAAAAoAMQAAADgBAAACAAMAAAAIAAAAOQEAAAIAAwAAAAkAAAA6AQAAAgADAAAACgAAADsBAAACAAMAAAALAAAAPAEAAAIABAAAAF8AAAA9AQAAAgADAAAADQAAAD4BAAACAAMAAAAQAAAAPwEAAAIAAwAAABIAAABAAQAAAgADAAAAEwAAAEEBAAACAAQAAABgAAAAQgEAAAIABAAAAGEAAABDAQAAAgAEAAAAYgAAAEQBAAACAAQAAABjAAAARQEAAAIABAAAAGQAAABGAQAAAgAEAAAAZQAAAEcBAAACAAQAAABmAAAASAEAAAIABAAAAGcAAABJAQAAAgAEAAAAaAAAAEoBAAACAAQAAABpAAAASwEAAAIABAAAAGoAAABMAQAAAgAEAAAAawAAAE0BAAACAAQAAABsAAAATgEAAAIABAAAAG0AAABPAQAAAgAEAAAAbgAAAFABAAACAAQAAABvAAAAUQEAAAIABAAAAHAAAABSAQAAAgAEAAAAcQAAAFMBAAACAAQAAAByAAAAVAEAAAIABAAAAHMAAABVAQAAAgAEAAAAdAAAAFYBAAACAAQAAAB1AAAAVwEAAAIABAAAAHYAAABYAQAAAgAEAAAAdwAAAFkBAAACAAQAAAB4AAAAWgEAAAIABAAAAHkAAABbAQAAAgAEAAAAegAAAFwBAAACAAQAAAB7AAAAXQEAAAIABAAAAHwAAABeAQAAAgAEAAAAfQAAAF8BAAACAAQAAAB+AAAAYAEAAAIABAAAAH8AAABhAQAAAgAEAAAAgAAAAGIBAAACAAQAAACBAAAAYwEAAAIABAAAAIIAAABkAQAAAgAEAAAAgwAAAGUBAAACAAQAAACEAAAAZgEAAAIABAAAAIUAAABnAQAAAgAEAAAAhgAAAGgBAAACAAQAAACHAAAAAAAAAAAAAAADAAAAAAAAAAIAAAAAAIYAAAACAAQAAABeAAAAAgADAAAABwAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAADAAAAAAAAAAIAAwAAAAcAAAADAAIABAAAAF4AAAAKAAgAAABpAQAABAAAAAAAAAAAAGoBAAAEAAEAAAAAAAAAawEAAAQAAgAAAAAAAABsAQAABAADAAAAAAAAAG0BAAAEAAQAAAAAAAAAbgEAAAQABQAAAAAAAABvAQAABAAGAAAAAAAAAHABAAAEAAcAAAAAAAAAAgAAAAAAhgAAAAMAAAAAAI8AAAAAAAAAiAAAAAoABAAAAPwBAAACAAEAAAAAAAAA/QEAAAIAAQAAAAEAAAD+AQAAAgABAAAAAgAAAP8BAAACAAEAAAADAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAIgAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAiAAAAAMAAAAAAJAAAAAAAAAAiQAAAAoAAgAAAAECAAACAAIAAAABAAAAAgIAAAIAAAAAAJEAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAAiQAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAACJAAAAAwAAAAAAkgAAAAAAAACKAAAACgAFAAAABAIAAAIABAAAAAEAAAAFAgAAAgAEAAAAPAAAAAYCAAACAAQAAABeAAAABwIAAAIABAAAANEAAAAIAgAAAgAEAAAAmQAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAACKAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAIoAAAADAAAAAACTAAAAAAAAAIsAAAAKAAMAAAAKAgAAAgAHAAAAAQAAAA0CAAACAAcAAAAHAAAADgIAAAIABwAAAA4AAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAAiwAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAACLAAAAAwAAAAAAlAAAAAAAAACRAAAACgADAAAAFAIAAAIAAAAAAAEAAAAVAgAAAgAAAAAATwAAABYCAAACAAAAAACGAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAJEAAAADAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAwAAAAUAAAAAAAAAAQAAAAMAAAAFAAAAEAAAAAEAAAADAAAABQAAACAAAAABAAAAAwAAAAUAAAAwAAAAAQAAAAMAAAAFAAAAQAAAAAEAAAADAAAABQAAAFAAAAABAAAAAwAAAAUAAABgAAAAAQAAAAMAAAAFAAAAcAAAAAEAAAADAAAABQAAAIAAAAABAAAAAwAAAAUAAACQAAAAAQAAAAMAAAAFAAAAoAAAAAEAAAADAAAABQAAALAAAAABAAAAAwAAAAUAAADAAAAAAQAAAAMAAAAFAAAA0AAAAAEAAAADAAAABQAAAOAAAAABAAAAAwAAAAUAAADwAAAAAQAAAAMAAAAFAAAAAAEAAAEAAAADAAAABQAAABABAAABAAAAAwAAAAUAAAAgAQAAAQAAAAMAAAAFAAAAMAEAAAEAAAADAAAABQAAAEABAAABAAAAAwAAAAUAAABQAQAAAQAAAAMAAAAFAAAAYAEAAAEAAAADAAAABQAAAHABAAABAAAAAwAAAAUAAACAAQAAAQAAAAMAAAAFAAAAkAEAAAEAAAADAAAABQAAAKABAAABAAAAAwAAAAUAAACwAQAAAQAAAAMAAAAFAAAAwAEAAAEAAAADAAAABQAAANABAAABAAAAAwAAAAUAAADgAQAAAQAAAAMAAAAFAAAA8AEAAAEAAAADAAAABQAAAAACAAABAAAAAwAAAAUAAAAQAgAAAQAAAAMAAAAFAAAAIAIAAAEAAAADAAAABQAAADACAAABAAAAAwAAAAUAAABAAgAAAQAAAAMAAAAFAAAAUAIAAAEAAAADAAAABQAAAGACAAABAAAAAwAAAAUAAABwAgAAAQAAAAMAAAAFAAAAgAIAAAEAAAADAAAABQAAAJACAAABAAAAAwAAAAUAAACgAgAAAQAAAAMAAAAFAAAAsAIAAAEAAAADAAAABQAAAMACAAABAAAAAwAAAAUAAADQAgAAAQAAAAMAAAAFAAAA4AIAAAEAAAADAAAABQAAAPACAAABAAAAAwAAAAUAAAAAAwAAAQAAAAMAAAAFAAAAEAMAAAEAAAADAAAABQAAACADAAABAAAAAwAAAAUAAAAwAwAAAQAAAAMAAAAFAAAAQAMAAAEAAAADAAAABQAAAFADAAABAAAAAwAAAAUAAABgAwAAAQAAAAMAAAAFAAAAcAMAAAEAAAADAAAABQAAAIADAAABAAAAAwAAAAUAAACQAwAAAQAAAAMAAAAFAAAAoAMAAAEAAAADAAAABQAAALADAAABAAAAAwAAAAUAAADAAwAAAQAAAAMAAAAFAAAA0AMAAAEAAAADAAAABQAAAOADAAABAAAAAwAAAAUAAADwAwAAAQAAAAMAAAAFAAAAAAQAAAEAAAADAAAABQAAABAEAAABAAAAAwAAAAUAAAAgBAAAAQAAAAMAAAAFAAAAMAQAAAEAAAADAAAABQAAAEAEAAABAAAAAwAAAAUAAABQBAAAAQAAAAMAAAAFAAAAYAQAAAEAAAADAAAABQAAAHAEAAABAAAAAwAAAAUAAACABAAAAQAAAAMAAAAFAAAAkAQAAAEAAAADAAAABQAAAKAEAAABAAAAAwAAAAUAAACwBAAAAQAAAAMAAAAFAAAAwAQAAAEAAAAAAAAAAgAAANAEAAAAAAAAAwAAAAUAAADQBAAAAQAAAAMAAAAFAAAA4AQAAAEAAAADAAAABQAAAPAEAAABAAAAAwAAAAUAAAAABQAAAQAAAAMAAAAFAAAAEAUAAAEAAAADAAAABQAAACAFAAABAAAAAwAAAAUAAAAwBQAAAQAAAAMAAAAFAAAAQAUAAAEAAAADAAAABQAAAFAFAAABAAAAAwAAAAUAAABgBQAAAQAAAAMAAAAFAAAAcAUAAAEAAAADAAAABQAAAIAFAAABAAAAAwAAAAUAAACQBQAAAQAAAAMAAAAFAAAAoAUAAAEAAAADAAAABQAAALAFAAABAAAAAwAAAAUAAADABQAAAQAAAAMAAAAFAAAA0AUAAAEAAAADAAAABQAAAOAFAAABAAAAAwAAAAUAAADwBQAAAQAAAAMAAAAFAAAAAAYAAAEAAAADAAAABQAAABAGAAABAAAAAwAAAAUAAAAgBgAAAQAAAAMAAAAFAAAAMAYAAAEAAAADAAAABQAAAEAGAAABAAAAAwAAAAUAAABQBgAAAQAAAAMAAAAFAAAAYAYAAAEAAAADAAAABQAAAHAGAAABAAAAAwAAAAUAAACABgAAAQAAAAMAAAAFAAAAkAYAAAEAAAADAAAABQAAAKAGAAABAAAAAwAAAAUAAACwBgAAAQAAAAMAAAAFAAAAwAYAAAEAAAADAAAABQAAANAGAAABAAAAAwAAAAUAAADgBgAAAQAAAAMAAAAFAAAA8AYAAAEAAAADAAAABQAAAAAHAAABAAAAAwAAAAUAAAAQBwAAAQAAAAMAAAAFAAAAIAcAAAEAAAADAAAABQAAADAHAAABAAAAAwAAAAUAAABABwAAAQAAAAMAAAAFAAAAUAcAAAEAAAADAAAABQAAAGAHAAABAAAAAwAAAAUAAABwBwAAAQAAAAMAAAAFAAAAgAcAAAEAAAADAAAABQAAAJAHAAABAAAAAwAAAAUAAACgBwAAAQAAAAMAAAAFAAAAsAcAAAEAAAADAAAABQAAAMAHAAABAAAAAwAAAAUAAADQBwAAAQAAAAMAAAAFAAAA4AcAAAEAAAADAAAABQAAAPAHAAABAAAAAwAAAAUAAAAACAAAAQAAAAMAAAAFAAAAEAgAAAEAAAADAAAABQAAACAIAAABAAAAAAAAAAMAAAAwCAAAAAAAAAUAAAAAAAAAMAgAAAEAAAAAAAAABAAAAEAIAAAAAAAAAAAAAAUAAABACAAAAAAAAAAAAAAGAAAAQAgAAAAAAAAAAAAABwAAAEAIAAAAAAAABgAAAAYAAABACAAAAQAAAAYAAAAGAAAA4AwAAAEAAAAGAAAABgAAADQQAAABAAAABQAAAAAAAACQEAAAAQAAAAUAAAAAAAAAoBAAAAEAAAAAAAAACAAAALAQAAAAAAAABQAAAAAAAACwEAAAAQAAAAUAAAAAAAAAwBAAAAEAAAAFAAAAAAAAANAQAAABAAAACwAAAAAAAAAAAAEAAQABAAsAAAAAAAEAAAABAAEAAQALAAAAAAACAAAAAQABAAEACwAAAAAAAwAAAAEAAQABAAsAAAAAAAQAAAABAAEAAQALAAAAAAAFAAAAAQABAAEACwAAAAAABgAAAAEAAQABAAsAAAAAAAcAAAABAAEAAQALAAAAAAAIAAAAAQABAAEACwAAAAAACQAAAAEAAQABAAsAAAAAAAoAAAABAAEAAQALAAAAAAALAAAAAQABAAEACwAAAAAADAAAAAEAAQABAAsAAAAAAA0AAAABAAEAAQALAAAAAAAOAAAAAQABAAEACwAAAAAADwAAAAEAAQABAAsAAAAAABAAAAABAAEAAQALAAAAAAARAAAAAQABAAEACwAAAAAAEgAAAAEAAQABAAsAAAAAABMAAAABAAEAAQALAAAAAAAUAAAAAQABAAEACwAAAAAAFQAAAAEAAQABAAsAAAAAABYAAAABAAEAAQALAAAAAAAXAAAAAQABAAEACwAAAAAAGAAAAAEAAQABAAsAAAAAABkAAAABAAEAAQALAAAAAAAaAAAAAQABAAEACwAAAAAAGwAAAAEAAQABAAsAAAAAABwAAAABAAEAAQALAAAAAAAdAAAAAQABAAEACwAAAAAAHgAAAAEAAQABAAsAAAAAAB8AAAABAAEAAQALAAAAAAAgAAAAAQABAAEACwAAAAAAIQAAAAEAAQABAAsAAAAAACIAAAABAAEAAQALAAAAAAAjAAAAAQABAAEACwAAAAAAJAAAAAEAAQABAAsAAAAAACUAAAABAAEAAQALAAAAAAAmAAAAAQABAAEACwAAAAAAJwAAAAEAAQABAAsAAAAAACgAAAABAAEAAQALAAAAAAApAAAAAQABAAEACwAAAAAAKgAAAAEAAQABAAsAAAAAACsAAAABAAEAAQALAAAAAAAsAAAAAQABAAEACwAAAAAALQAAAAEAAQABAAsAAAAAAC4AAAABAAEAAQALAAAAAAAvAAAAAQABAAEACwAAAAAAMAAAAAEAAQABAAsAAAAAADEAAAABAAEAAQALAAAAAAAyAAAAAQABAAEACwAAAAAAMwAAAAEAAQABAAsAAAAAADQAAAABAAEAAQALAAAAAAA1AAAAAQABAAEACwAAAAAANgAAAAEAAQABAAsAAAAAADcAAAABAAEAAQALAAAAAAA4AAAAAQABAAEACwAAAAAAOQAAAAEAAQABAAsAAAAAADoAAAABAAEAAQALAAAAAAA7AAAAAQABAAEACwAAAAAAPAAAAAEAAQABAAsAAAAAAD0AAAABAAEAAQALAAAAAAA+AAAAAQABAAEACwAAAAAAPwAAAAEAAQABAAsAAAAAAEAAAAABAAEAAQALAAAAAABBAAAAAQABAAEACwAAAAAAQgAAAAEAAQABAAsAAAAAAEMAAAABAAEAAQALAAAAAABEAAAAAQABAAEACwAAAAAARQAAAAEAAQABAAsAAAAAAEYAAAABAAEAAQALAAAAAABHAAAAAQABAAEACwAAAAAASAAAAAEAAQABAAsAAAAAAEkAAAABAAEAAQALAAAAAABKAAAAAQABAAEACwAAAAAASwAAAAEAAQABAAsAAAAAAEwAAAABAAEAAQALAAAAAABNAAAAAQABAAEACwAAAAAATgAAAAEAAQABAAsAAAAAAE8AAAABAAEAAQALAAAAAABQAAAAAQABAAEACwAAAAAAUQAAAAEAAQABAAsAAAAAAFIAAAABAAEAAQALAAAAAABTAAAAAQABAAEACwAAAAAAVAAAAAEAAQABAAsAAAAAAFUAAAABAAEAAQALAAAAAABWAAAAAQABAAEACwAAAAAAVwAAAAEAAQABAAsAAAAAAFgAAAABAAEAAQALAAAAAABZAAAAAQABAAEACwAAAAAAWgAAAAEAAQABAAsAAAAAAFsAAAABAAEAAQALAAAAAABcAAAAAQABAAEACwAAAAAAXQAAAAEAAQABAAsAAAAAAF4AAAABAAEAAQALAAAAAABfAAAAAQABAAEACwAAAAAAYAAAAAEAAQABAAsAAAAAAGEAAAABAAEAAQALAAAAAABiAAAAAQABAAEACwAAAAAAYwAAAAEAAQABAAsAAAAAAGQAAAABAAEAAQALAAAAAABlAAAAAQABAAEACwAAAAAAZgAAAAEAAQABAAsAAAAAAGcAAAABAAEAAQALAAAAAABoAAAAAQABAAEACwAAAAAAaQAAAAEAAQABAAsAAAAAAGoAAAABAAEAAQALAAAAAABrAAAAAQABAAEACwAAAAAAbAAAAAEAAQABAAsAAAAAAG0AAAABAAEAAQALAAAAAABuAAAAAQABAAEACwAAAAAAbwAAAAEAAQABAAsAAAAAAHAAAAABAAEAAQALAAAAAABxAAAAAQABAAEACwAAAAAAcgAAAAEAAQABAAsAAAAAAHMAAAABAAEAAQALAAAAAAB0AAAAAQABAAEACwAAAAAAdQAAAAEAAQABAAsAAAAAAHYAAAABAAEAAQALAAAAAAB3AAAAAQABAAEACwAAAAAAeAAAAAEAAQABAAsAAAAAAHkAAAABAAEAAQALAAAAAAB6AAAAAQABAAEACwAAAAAAewAAAAEAAQABAAsAAAAAAHwAAAABAAEAAQALAAAAAAB9AAAAAQABAAEACwAAAAAAfgAAAAEAAQABAAsAAAAAAH8AAAABAAEAAQALAAAAAACAAAAAAQABAAEACwAAAAAAgQAAAAEAAQABAAsAAAAAAIIAAAABAAEAAQByAQAABwAAAAAACgAAAAAABgB1AQAAAQAKAE0AAAB2AQAAAgAAAAAAAgAAAHcBAAACAAAAAAADAAAAeAEAAAIAAAAAAAQAAAB5AQAAAgAAAAAABQAAAHoBAAACAAAAAAAGAAAAewEAAAIAAAAAAAcAAAB8AQAAAgAAAAAACAAAAH0BAAACAAAAAAAJAAAAfgEAAAIAAAAAAAoAAAB/AQAAAgAAAAAACwAAAIABAAACAAAAAAAMAAAAgQEAAAIAAAAAAA0AAACCAQAAAgAAAAAADgAAAIMBAAACAAAAAAAPAAAAhAEAAAIAAAAAABAAAACFAQAAAgAAAAAAEQAAAIYBAAACAAAAAAASAAAAhwEAAAIAAAAAABMAAACIAQAAAgAAAAAAFAAAAIkBAAACAAAAAAAVAAAAigEAAAIAAAAAABYAAACLAQAAAgAAAAAAFwAAAIwBAAACAAAAAAAYAAAAjQEAAAIAAAAAABkAAACOAQAAAgAAAAAAGgAAAI8BAAACAAAAAAAbAAAAkAEAAAIAAAAAABwAAACRAQAAAgAAAAAAHQAAAJIBAAACAAAAAAAeAAAAkwEAAAIAAAAAAB8AAACUAQAAAgAAAAAAIAAAAJUBAAACAAAAAAAhAAAAlgEAAAIAAAAAACIAAACXAQAAAgAAAAAAIwAAAJgBAAACAAAAAAAkAAAAmQEAAAIAAAAAACUAAACaAQAAAgAAAAAAJgAAAJsBAAACAAAAAAAnAAAAnAEAAAIAAAAAACgAAACdAQAAAgAAAAAAKQAAAJ4BAAACAAAAAAAqAAAAnwEAAAIAAAAAACsAAACgAQAAAgAAAAAALAAAAKEBAAACAAAAAAAtAAAAogEAAAIAAAAAAC4AAACjAQAAAgAAAAAALwAAAKQBAAACAAAAAAAwAAAApQEAAAIAAAAAADEAAACmAQAAAgAAAAAAMgAAAKcBAAACAAAAAAAzAAAAqAEAAAIAAAAAADQAAACpAQAAAgAAAAAANQAAAKoBAAACAAAAAAA2AAAAqwEAAAIAAAAAADcAAACsAQAAAgAAAAAAOAAAAK0BAAACAAAAAAA5AAAArgEAAAIAAAAAADoAAACvAQAAAgAAAAAAOwAAALABAAACAAAAAAA8AAAAsQEAAAIAAAAAAD0AAACyAQAAAgAAAAAAPgAAALMBAAACAAAAAAA/AAAAtAEAAAIAAAAAAEAAAAC1AQAAAgAAAAAAQQAAALYBAAACAAAAAABCAAAAtwEAAAIAAAAAAEMAAAC4AQAAAgAAAAAARAAAALkBAAACAAAAAABFAAAAugEAAAIAAAAAAEYAAAC7AQAAAgAAAAAARwAAALwBAAACAAAAAABIAAAAvQEAAAIAAAAAAEkAAAC+AQAAAgAAAAAASgAAAL8BAAACAAAAAABLAAAAwAEAAAIAAAAAAEwAAADBAQAAAgAAAAAATQAAAMIBAAACAAAAAABOAAAAAQAHAAEAAAACAAQAAAABAAAAAQABAAEAAQAEAAEAAAAAAAAABwAEAAAAAgAAAAAAAQAAAAIABAAAAAEAAAACAAIAAABMAAAAAgADAAAABwAAAAEAAQABAAEAAQAGAMMBAAABAAoANgAAAMQBAAACAAAAAABQAAAAxQEAAAIAAAAAAFEAAADGAQAAAgAAAAAAUgAAAMcBAAACAAAAAABTAAAAyAEAAAIAAAAAAFQAAADJAQAAAgAAAAAAVQAAAMoBAAACAAAAAABWAAAAywEAAAIAAAAAAFcAAADMAQAAAgAAAAAAWAAAAM0BAAACAAAAAABZAAAAzgEAAAIAAAAAAFoAAADPAQAAAgAAAAAAWwAAANABAAACAAAAAABcAAAA0QEAAAIAAAAAAF0AAADSAQAAAgAAAAAAXgAAANMBAAACAAAAAABfAAAA1AEAAAIAAAAAAGAAAADVAQAAAgAAAAAAYQAAANYBAAACAAAAAABiAAAA1wEAAAIAAAAAAGMAAADYAQAAAgAAAAAAZAAAANkBAAACAAAAAABlAAAA2gEAAAIAAAAAAGYAAADbAQAAAgAAAAAAZwAAANwBAAACAAAAAABoAAAA3QEAAAIAAAAAAGkAAADeAQAAAgAAAAAAagAAAN8BAAACAAAAAABrAAAA4AEAAAIAAAAAAGwAAADhAQAAAgAAAAAAbQAAAOIBAAACAAAAAABuAAAA4wEAAAIAAAAAAG8AAADkAQAAAgAAAAAAcAAAAOUBAAACAAAAAABxAAAA5gEAAAIAAAAAAHIAAADnAQAAAgAAAAAAcwAAAOgBAAACAAAAAAB0AAAA6QEAAAIAAAAAAHUAAADqAQAAAgAAAAAAdgAAAOsBAAACAAAAAAB3AAAA7AEAAAIAAAAAAHgAAADtAQAAAgAAAAAAeQAAAO4BAAACAAAAAAB6AAAA7wEAAAIAAAAAAHsAAADwAQAAAgAAAAAAfAAAAPEBAAACAAAAAAB9AAAA8gEAAAIAAAAAAH4AAADzAQAAAgAAAAAAfwAAAPQBAAACAAAAAACAAAAA9QEAAAIAAAAAAIEAAAD2AQAAAgAAAAAAggAAAPcBAAACAAAAAACDAAAA+AEAAAIAAAAAAIQAAAD5AQAAAgAAAAAAhQAAAAEABwABAAAAAgAEAAAAPAAAAAEAAQABAAEABAABAAAAAAAAAAcAAwAAAAIAAAAAAE8AAAACAAQAAAA8AAAAAgADAAAABwAAAAEAAQABAAEAAQAGAPoBAAABAAEAAQAHAAEAAAACAAQAAABeAAAAAQABAAEAAQAEAAEAAAAAAAAABwADAAAAAgAAAAAAhgAAAAIABAAAAF4AAAACAAMAAAAHAAAAAQABAAEAAQABAA8CAAAHAAAAAAAKAAAAAAAQAgAABwAAAAAACgAAAAAAEQIAAAcAAAAAAAoAAAAAABICAAAHAAAAAAAKAAAAAAAXAgAABwAAAAAACgAAAAAA"
    new $P114, "ResizableStringArray"
    .local pmc string_heap
    set string_heap, $P114
    null $S101
    push string_heap, $S101
    push string_heap, "P6opaque"
    push string_heap, "Regex"
    push string_heap, "PAST"
    push string_heap, "__REGEX_CORE_SC__"
    push string_heap, "_dumper"
    push string_heap, "QRegex"
    push string_heap, "NQPCursorRole"
    push string_heap, "3561418F14B9DE62E1BFBA13A83EFEE010689949-1337965216.224"
    push string_heap, "src\\stage2\\QRegex.nqp"
    push string_heap, "NQPMatch"
    push string_heap, "NQPCursor"
    push string_heap, "NQPRegexMethod"
    push string_heap, "NQPRegex"
    push string_heap, "HLL"
    push string_heap, "QAST"
    push string_heap, "P6opaque"
    push string_heap, "CREATE"
    push string_heap, "2DEE75AFD50ED67BDF162F6BA56A80FA8956D48C-1337965215.466"
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
    push string_heap, "BC3B59D39ADC8F2D8C75405F1DD1E83CD4BCDEB4-1337965218.952"
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
    push string_heap, "@!stages"
    push string_heap, "$!parsegrammar"
    push string_heap, "$!parseactions"
    push string_heap, "@!cmdoptions"
    push string_heap, "$!usage"
    push string_heap, "$!compiler_progname"
    push string_heap, "$!language"
    push string_heap, "%!config"
    push string_heap, "__6MODEL_CORE__"
    push string_heap, "GLOBALish"
    push string_heap, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337965212.796"
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
    push string_heap, "Cursor"
    push string_heap, "Match"
    push string_heap, "Method"
    push string_heap, "Regex"
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
    push string_heap, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1337965223.607"
    push string_heap, "src\\stage2\\QAST.nqp"
    push string_heap, "Regex"
    push string_heap, "Compiler"
    push string_heap, "Regex"
    push string_heap, "QRegex"
    push string_heap, "HLL"
    push string_heap, "QAST"
    push string_heap, "P6opaque"
    push string_heap, "Grammar"
    push string_heap, "Actions"
    push string_heap, "Compiler"
    push string_heap, "P6Regex"
    .const 'Sub' $P2240 = "375_1337965225.74" 
    capture_lex $P2240
    $P116 = $P2240()
    nqp_deserialize_sc $S100, cur_sc, string_heap, $P116
    .const 'LexInfo' $P2372 = "160_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 0
    $P2372."set_static_lexpad_value"("GLOBALish", $P117)
    .const 'LexInfo' $P2373 = "160_1337965225.74" 
    $P2373."finish_static_lexpad"()
    .const 'LexInfo' $P2374 = "160_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 0
    $P2374."set_static_lexpad_value"("$?PACKAGE", $P117)
    .const 'LexInfo' $P2375 = "160_1337965225.74" 
    $P2375."finish_static_lexpad"()
    .const '' $P2376 = "10_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 2
    set_sub_code_object $P2376, $P117
    .const '' $P2377 = "11_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 3
    set_sub_code_object $P2377, $P117
    .const '' $P2378 = "13_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 4
    set_sub_code_object $P2378, $P117
    .const '' $P2379 = "14_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 5
    set_sub_code_object $P2379, $P117
    .const '' $P2380 = "15_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 6
    set_sub_code_object $P2380, $P117
    .const '' $P2381 = "16_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 7
    set_sub_code_object $P2381, $P117
    .const '' $P2382 = "17_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 8
    set_sub_code_object $P2382, $P117
    .const '' $P2383 = "18_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 9
    set_sub_code_object $P2383, $P117
    .const '' $P2384 = "19_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 10
    set_sub_code_object $P2384, $P117
    .const '' $P2385 = "20_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 11
    set_sub_code_object $P2385, $P117
    .const '' $P2386 = "21_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 12
    set_sub_code_object $P2386, $P117
    .const '' $P2387 = "22_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 13
    set_sub_code_object $P2387, $P117
    .const '' $P2388 = "24_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 14
    set_sub_code_object $P2388, $P117
    .const '' $P2389 = "26_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 15
    set_sub_code_object $P2389, $P117
    .const '' $P2390 = "27_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 16
    set_sub_code_object $P2390, $P117
    .const '' $P2391 = "29_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 17
    set_sub_code_object $P2391, $P117
    .const '' $P2392 = "30_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 18
    set_sub_code_object $P2392, $P117
    .const '' $P2393 = "31_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 19
    set_sub_code_object $P2393, $P117
    .const '' $P2394 = "32_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 20
    set_sub_code_object $P2394, $P117
    .const '' $P2395 = "33_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 21
    set_sub_code_object $P2395, $P117
    .const '' $P2396 = "37_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 22
    set_sub_code_object $P2396, $P117
    .const '' $P2397 = "38_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 23
    set_sub_code_object $P2397, $P117
    .const '' $P2398 = "40_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 24
    set_sub_code_object $P2398, $P117
    .const '' $P2399 = "41_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 25
    set_sub_code_object $P2399, $P117
    .const '' $P2400 = "42_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 26
    set_sub_code_object $P2400, $P117
    .const '' $P2401 = "43_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 27
    set_sub_code_object $P2401, $P117
    .const '' $P2402 = "44_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 28
    set_sub_code_object $P2402, $P117
    .const '' $P2403 = "45_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 29
    set_sub_code_object $P2403, $P117
    .const '' $P2404 = "46_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 30
    set_sub_code_object $P2404, $P117
    .const '' $P2405 = "47_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 31
    set_sub_code_object $P2405, $P117
    .const '' $P2406 = "48_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 32
    set_sub_code_object $P2406, $P117
    .const '' $P2407 = "49_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 33
    set_sub_code_object $P2407, $P117
    .const '' $P2408 = "50_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 34
    set_sub_code_object $P2408, $P117
    .const '' $P2409 = "51_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 35
    set_sub_code_object $P2409, $P117
    .const '' $P2410 = "52_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 36
    set_sub_code_object $P2410, $P117
    .const '' $P2411 = "53_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 37
    set_sub_code_object $P2411, $P117
    .const '' $P2412 = "54_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 38
    set_sub_code_object $P2412, $P117
    .const '' $P2413 = "55_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 39
    set_sub_code_object $P2413, $P117
    .const '' $P2414 = "56_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 40
    set_sub_code_object $P2414, $P117
    .const '' $P2415 = "57_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 41
    set_sub_code_object $P2415, $P117
    .const '' $P2416 = "58_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 42
    set_sub_code_object $P2416, $P117
    .const '' $P2417 = "59_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 43
    set_sub_code_object $P2417, $P117
    .const '' $P2418 = "60_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 44
    set_sub_code_object $P2418, $P117
    .const '' $P2419 = "61_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 45
    set_sub_code_object $P2419, $P117
    .const '' $P2420 = "62_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 46
    set_sub_code_object $P2420, $P117
    .const '' $P2421 = "63_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 47
    set_sub_code_object $P2421, $P117
    .const '' $P2422 = "64_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 48
    set_sub_code_object $P2422, $P117
    .const '' $P2423 = "65_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 49
    set_sub_code_object $P2423, $P117
    .const '' $P2424 = "66_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 50
    set_sub_code_object $P2424, $P117
    .const '' $P2425 = "67_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 51
    set_sub_code_object $P2425, $P117
    .const '' $P2426 = "68_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 52
    set_sub_code_object $P2426, $P117
    .const '' $P2427 = "69_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 53
    set_sub_code_object $P2427, $P117
    .const '' $P2428 = "70_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 54
    set_sub_code_object $P2428, $P117
    .const '' $P2429 = "71_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 55
    set_sub_code_object $P2429, $P117
    .const '' $P2430 = "72_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 56
    set_sub_code_object $P2430, $P117
    .const '' $P2431 = "73_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 57
    set_sub_code_object $P2431, $P117
    .const '' $P2432 = "74_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 58
    set_sub_code_object $P2432, $P117
    .const '' $P2433 = "75_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 59
    set_sub_code_object $P2433, $P117
    .const '' $P2434 = "76_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 60
    set_sub_code_object $P2434, $P117
    .const '' $P2435 = "77_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 61
    set_sub_code_object $P2435, $P117
    .const '' $P2436 = "78_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 62
    set_sub_code_object $P2436, $P117
    .const '' $P2437 = "79_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 63
    set_sub_code_object $P2437, $P117
    .const '' $P2438 = "80_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 64
    set_sub_code_object $P2438, $P117
    .const '' $P2439 = "81_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 65
    set_sub_code_object $P2439, $P117
    .const '' $P2440 = "82_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 66
    set_sub_code_object $P2440, $P117
    .const '' $P2441 = "84_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 67
    set_sub_code_object $P2441, $P117
    .const '' $P2442 = "86_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 68
    set_sub_code_object $P2442, $P117
    .const '' $P2443 = "87_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 69
    set_sub_code_object $P2443, $P117
    .const '' $P2444 = "88_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 70
    set_sub_code_object $P2444, $P117
    .const '' $P2445 = "90_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 71
    set_sub_code_object $P2445, $P117
    .const '' $P2446 = "92_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 72
    set_sub_code_object $P2446, $P117
    .const '' $P2447 = "99_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 73
    set_sub_code_object $P2447, $P117
    .const '' $P2448 = "101_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 74
    set_sub_code_object $P2448, $P117
    .const '' $P2449 = "102_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 75
    set_sub_code_object $P2449, $P117
    .const '' $P2450 = "103_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 76
    set_sub_code_object $P2450, $P117
    .const '' $P2451 = "104_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 77
    set_sub_code_object $P2451, $P117
    .const '' $P2452 = "105_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 78
    set_sub_code_object $P2452, $P117
    .const 'LexInfo' $P2453 = "162_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 1
    $P2453."set_static_lexpad_value"("$?PACKAGE", $P117)
    .const 'LexInfo' $P2454 = "162_1337965225.74" 
    $P2454."finish_static_lexpad"()
    .const 'LexInfo' $P2455 = "162_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 1
    $P2455."set_static_lexpad_value"("$?CLASS", $P117)
    .const 'LexInfo' $P2456 = "162_1337965225.74" 
    $P2456."finish_static_lexpad"()
    .const '' $P2457 = "106_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 80
    set_sub_code_object $P2457, $P117
    .const '' $P2458 = "107_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 81
    set_sub_code_object $P2458, $P117
    .const '' $P2459 = "108_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 82
    set_sub_code_object $P2459, $P117
    .const '' $P2460 = "109_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 83
    set_sub_code_object $P2460, $P117
    .const '' $P2461 = "110_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 84
    set_sub_code_object $P2461, $P117
    .const '' $P2462 = "111_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 85
    set_sub_code_object $P2462, $P117
    .const '' $P2463 = "112_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 86
    set_sub_code_object $P2463, $P117
    .const '' $P2464 = "113_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 87
    set_sub_code_object $P2464, $P117
    .const '' $P2465 = "114_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 88
    set_sub_code_object $P2465, $P117
    .const '' $P2466 = "115_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 89
    set_sub_code_object $P2466, $P117
    .const '' $P2467 = "116_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 90
    set_sub_code_object $P2467, $P117
    .const '' $P2468 = "117_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 91
    set_sub_code_object $P2468, $P117
    .const '' $P2469 = "118_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 92
    set_sub_code_object $P2469, $P117
    .const '' $P2470 = "119_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 93
    set_sub_code_object $P2470, $P117
    .const '' $P2471 = "120_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 94
    set_sub_code_object $P2471, $P117
    .const '' $P2472 = "121_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 95
    set_sub_code_object $P2472, $P117
    .const '' $P2473 = "122_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 96
    set_sub_code_object $P2473, $P117
    .const '' $P2474 = "123_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 97
    set_sub_code_object $P2474, $P117
    .const '' $P2475 = "124_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 98
    set_sub_code_object $P2475, $P117
    .const '' $P2476 = "125_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 99
    set_sub_code_object $P2476, $P117
    .const '' $P2477 = "126_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 100
    set_sub_code_object $P2477, $P117
    .const '' $P2478 = "127_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 101
    set_sub_code_object $P2478, $P117
    .const '' $P2479 = "128_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 102
    set_sub_code_object $P2479, $P117
    .const '' $P2480 = "129_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 103
    set_sub_code_object $P2480, $P117
    .const '' $P2481 = "130_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 104
    set_sub_code_object $P2481, $P117
    .const '' $P2482 = "131_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 105
    set_sub_code_object $P2482, $P117
    .const '' $P2483 = "132_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 106
    set_sub_code_object $P2483, $P117
    .const '' $P2484 = "133_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 107
    set_sub_code_object $P2484, $P117
    .const '' $P2485 = "134_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 108
    set_sub_code_object $P2485, $P117
    .const '' $P2486 = "135_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 109
    set_sub_code_object $P2486, $P117
    .const '' $P2487 = "136_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 110
    set_sub_code_object $P2487, $P117
    .const '' $P2488 = "137_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 111
    set_sub_code_object $P2488, $P117
    .const '' $P2489 = "138_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 112
    set_sub_code_object $P2489, $P117
    .const '' $P2490 = "139_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 113
    set_sub_code_object $P2490, $P117
    .const '' $P2491 = "140_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 114
    set_sub_code_object $P2491, $P117
    .const '' $P2492 = "141_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 115
    set_sub_code_object $P2492, $P117
    .const '' $P2493 = "142_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 116
    set_sub_code_object $P2493, $P117
    .const '' $P2494 = "143_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 117
    set_sub_code_object $P2494, $P117
    .const '' $P2495 = "144_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 118
    set_sub_code_object $P2495, $P117
    .const '' $P2496 = "145_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 119
    set_sub_code_object $P2496, $P117
    .const '' $P2497 = "146_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 120
    set_sub_code_object $P2497, $P117
    .const '' $P2498 = "147_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 121
    set_sub_code_object $P2498, $P117
    .const '' $P2499 = "148_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 122
    set_sub_code_object $P2499, $P117
    .const '' $P2500 = "149_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 123
    set_sub_code_object $P2500, $P117
    .const '' $P2501 = "150_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 124
    set_sub_code_object $P2501, $P117
    .const '' $P2502 = "151_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 125
    set_sub_code_object $P2502, $P117
    .const '' $P2503 = "152_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 126
    set_sub_code_object $P2503, $P117
    .const '' $P2504 = "153_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 127
    set_sub_code_object $P2504, $P117
    .const '' $P2505 = "154_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 128
    set_sub_code_object $P2505, $P117
    .const '' $P2506 = "155_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 129
    set_sub_code_object $P2506, $P117
    .const '' $P2507 = "156_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 130
    set_sub_code_object $P2507, $P117
    .const '' $P2508 = "157_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 131
    set_sub_code_object $P2508, $P117
    .const '' $P2509 = "338_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 79
    get_who $P118, $P117
    set $P118["buildsub"], $P2509
    .const '' $P2510 = "158_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 132
    set_sub_code_object $P2510, $P117
    .const '' $P2511 = "159_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 133
    set_sub_code_object $P2511, $P117
    .const 'LexInfo' $P2512 = "336_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 79
    $P2512."set_static_lexpad_value"("$?PACKAGE", $P117)
    .const 'LexInfo' $P2513 = "336_1337965225.74" 
    $P2513."finish_static_lexpad"()
    .const 'LexInfo' $P2514 = "336_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 79
    $P2514."set_static_lexpad_value"("$?CLASS", $P117)
    .const 'LexInfo' $P2515 = "336_1337965225.74" 
    $P2515."finish_static_lexpad"()
    .const 'LexInfo' $P2516 = "373_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 134
    $P2516."set_static_lexpad_value"("$?PACKAGE", $P117)
    .const 'LexInfo' $P2517 = "373_1337965225.74" 
    $P2517."finish_static_lexpad"()
    .const 'LexInfo' $P2518 = "373_1337965225.74" 
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 134
    $P2518."set_static_lexpad_value"("$?CLASS", $P117)
    .const 'LexInfo' $P2519 = "373_1337965225.74" 
    $P2519."finish_static_lexpad"()
    nqp_get_sc_object $P117, "93CAC232C0C690958BF18876CF59084AC6A2F0E3-1337965225.714", 0
    set_hll_global "GLOBAL", $P117
.end


.HLL "nqp"

.namespace []
.sub "_block2239"  :anon :subid("375_1337965225.74") :outer("160_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 0
    .const 'Sub' $P2241 = "10_1337965225.74" 
    .const 'Sub' $P2242 = "11_1337965225.74" 
    .const 'Sub' $P2243 = "13_1337965225.74" 
    .const 'Sub' $P2244 = "14_1337965225.74" 
    .const 'Sub' $P2245 = "15_1337965225.74" 
    .const 'Sub' $P2246 = "16_1337965225.74" 
    .const 'Sub' $P2247 = "17_1337965225.74" 
    .const 'Sub' $P2248 = "18_1337965225.74" 
    .const 'Sub' $P2249 = "19_1337965225.74" 
    .const 'Sub' $P2250 = "20_1337965225.74" 
    .const 'Sub' $P2251 = "21_1337965225.74" 
    .const 'Sub' $P2252 = "22_1337965225.74" 
    .const 'Sub' $P2253 = "24_1337965225.74" 
    .const 'Sub' $P2254 = "26_1337965225.74" 
    .const 'Sub' $P2255 = "27_1337965225.74" 
    .const 'Sub' $P2256 = "29_1337965225.74" 
    .const 'Sub' $P2257 = "30_1337965225.74" 
    .const 'Sub' $P2258 = "31_1337965225.74" 
    .const 'Sub' $P2259 = "32_1337965225.74" 
    .const 'Sub' $P2260 = "33_1337965225.74" 
    .const 'Sub' $P2261 = "37_1337965225.74" 
    .const 'Sub' $P2262 = "38_1337965225.74" 
    .const 'Sub' $P2263 = "40_1337965225.74" 
    .const 'Sub' $P2264 = "41_1337965225.74" 
    .const 'Sub' $P2265 = "42_1337965225.74" 
    .const 'Sub' $P2266 = "43_1337965225.74" 
    .const 'Sub' $P2267 = "44_1337965225.74" 
    .const 'Sub' $P2268 = "45_1337965225.74" 
    .const 'Sub' $P2269 = "46_1337965225.74" 
    .const 'Sub' $P2270 = "47_1337965225.74" 
    .const 'Sub' $P2271 = "48_1337965225.74" 
    .const 'Sub' $P2272 = "49_1337965225.74" 
    .const 'Sub' $P2273 = "50_1337965225.74" 
    .const 'Sub' $P2274 = "51_1337965225.74" 
    .const 'Sub' $P2275 = "52_1337965225.74" 
    .const 'Sub' $P2276 = "53_1337965225.74" 
    .const 'Sub' $P2277 = "54_1337965225.74" 
    .const 'Sub' $P2278 = "55_1337965225.74" 
    .const 'Sub' $P2279 = "56_1337965225.74" 
    .const 'Sub' $P2280 = "57_1337965225.74" 
    .const 'Sub' $P2281 = "58_1337965225.74" 
    .const 'Sub' $P2282 = "59_1337965225.74" 
    .const 'Sub' $P2283 = "60_1337965225.74" 
    .const 'Sub' $P2284 = "61_1337965225.74" 
    .const 'Sub' $P2285 = "62_1337965225.74" 
    .const 'Sub' $P2286 = "63_1337965225.74" 
    .const 'Sub' $P2287 = "64_1337965225.74" 
    .const 'Sub' $P2288 = "65_1337965225.74" 
    .const 'Sub' $P2289 = "66_1337965225.74" 
    .const 'Sub' $P2290 = "67_1337965225.74" 
    .const 'Sub' $P2291 = "68_1337965225.74" 
    .const 'Sub' $P2292 = "69_1337965225.74" 
    .const 'Sub' $P2293 = "70_1337965225.74" 
    .const 'Sub' $P2294 = "71_1337965225.74" 
    .const 'Sub' $P2295 = "72_1337965225.74" 
    .const 'Sub' $P2296 = "73_1337965225.74" 
    .const 'Sub' $P2297 = "74_1337965225.74" 
    .const 'Sub' $P2298 = "75_1337965225.74" 
    .const 'Sub' $P2299 = "76_1337965225.74" 
    .const 'Sub' $P2300 = "77_1337965225.74" 
    .const 'Sub' $P2301 = "78_1337965225.74" 
    .const 'Sub' $P2302 = "79_1337965225.74" 
    .const 'Sub' $P2303 = "80_1337965225.74" 
    .const 'Sub' $P2304 = "81_1337965225.74" 
    .const 'Sub' $P2305 = "82_1337965225.74" 
    .const 'Sub' $P2306 = "84_1337965225.74" 
    .const 'Sub' $P2307 = "86_1337965225.74" 
    .const 'Sub' $P2308 = "87_1337965225.74" 
    .const 'Sub' $P2309 = "88_1337965225.74" 
    .const 'Sub' $P2310 = "90_1337965225.74" 
    .const 'Sub' $P2311 = "92_1337965225.74" 
    .const 'Sub' $P2312 = "99_1337965225.74" 
    .const 'Sub' $P2313 = "101_1337965225.74" 
    .const 'Sub' $P2314 = "102_1337965225.74" 
    .const 'Sub' $P2315 = "103_1337965225.74" 
    .const 'Sub' $P2316 = "104_1337965225.74" 
    .const 'Sub' $P2317 = "105_1337965225.74" 
    .const 'Sub' $P2318 = "106_1337965225.74" 
    .const 'Sub' $P2319 = "107_1337965225.74" 
    .const 'Sub' $P2320 = "108_1337965225.74" 
    .const 'Sub' $P2321 = "109_1337965225.74" 
    .const 'Sub' $P2322 = "110_1337965225.74" 
    .const 'Sub' $P2323 = "111_1337965225.74" 
    .const 'Sub' $P2324 = "112_1337965225.74" 
    .const 'Sub' $P2325 = "113_1337965225.74" 
    .const 'Sub' $P2326 = "114_1337965225.74" 
    .const 'Sub' $P2327 = "115_1337965225.74" 
    .const 'Sub' $P2328 = "116_1337965225.74" 
    .const 'Sub' $P2329 = "117_1337965225.74" 
    .const 'Sub' $P2330 = "118_1337965225.74" 
    .const 'Sub' $P2331 = "119_1337965225.74" 
    .const 'Sub' $P2332 = "120_1337965225.74" 
    .const 'Sub' $P2333 = "121_1337965225.74" 
    .const 'Sub' $P2334 = "122_1337965225.74" 
    .const 'Sub' $P2335 = "123_1337965225.74" 
    .const 'Sub' $P2336 = "124_1337965225.74" 
    .const 'Sub' $P2337 = "125_1337965225.74" 
    .const 'Sub' $P2338 = "126_1337965225.74" 
    .const 'Sub' $P2339 = "127_1337965225.74" 
    .const 'Sub' $P2340 = "128_1337965225.74" 
    .const 'Sub' $P2341 = "129_1337965225.74" 
    .const 'Sub' $P2342 = "130_1337965225.74" 
    .const 'Sub' $P2343 = "131_1337965225.74" 
    .const 'Sub' $P2344 = "132_1337965225.74" 
    .const 'Sub' $P2345 = "133_1337965225.74" 
    .const 'Sub' $P2346 = "134_1337965225.74" 
    .const 'Sub' $P2347 = "135_1337965225.74" 
    .const 'Sub' $P2348 = "136_1337965225.74" 
    .const 'Sub' $P2349 = "137_1337965225.74" 
    .const 'Sub' $P2350 = "138_1337965225.74" 
    .const 'Sub' $P2351 = "139_1337965225.74" 
    .const 'Sub' $P2352 = "140_1337965225.74" 
    .const 'Sub' $P2353 = "141_1337965225.74" 
    .const 'Sub' $P2354 = "142_1337965225.74" 
    .const 'Sub' $P2355 = "143_1337965225.74" 
    .const 'Sub' $P2356 = "144_1337965225.74" 
    .const 'Sub' $P2357 = "145_1337965225.74" 
    .const 'Sub' $P2358 = "146_1337965225.74" 
    .const 'Sub' $P2359 = "147_1337965225.74" 
    .const 'Sub' $P2360 = "148_1337965225.74" 
    .const 'Sub' $P2361 = "149_1337965225.74" 
    .const 'Sub' $P2362 = "150_1337965225.74" 
    .const 'Sub' $P2363 = "151_1337965225.74" 
    .const 'Sub' $P2364 = "152_1337965225.74" 
    .const 'Sub' $P2365 = "153_1337965225.74" 
    .const 'Sub' $P2366 = "154_1337965225.74" 
    .const 'Sub' $P2367 = "155_1337965225.74" 
    .const 'Sub' $P2368 = "156_1337965225.74" 
    .const 'Sub' $P2369 = "157_1337965225.74" 
    .const 'Sub' $P2370 = "158_1337965225.74" 
    .const 'Sub' $P2371 = "159_1337965225.74" 
    new $P115, "ResizablePMCArray"
    push $P115, $P2241
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
    .return ($P115)
.end


.HLL "nqp"

.namespace []
.sub "MAIN"  :subid("161_1337965225.74") :outer("160_1337965225.74")
    .param pmc param_1008
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 856
    .lex "@ARGS", param_1008
.annotate 'line', 857
    find_lex $P101, "$p6regex"
    unless_null $P101, vivify_377
    new $P101, "Undef"
  vivify_377:
    set $P1009, param_1008
    unless_null $P1009, vivify_378
    $P1009 = root_new ['parrot';'ResizablePMCArray']
  vivify_378:
    $P102 = $P101."command_line"($P1009, "utf8" :named("encoding"), "ucs4" :named("transcode"))
.annotate 'line', 856
    .return ($P102)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "_block1011"  :subid("162_1337965225.74") :outer("160_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 9
    .const 'Sub' $P1544 = "105_1337965225.74" 
    capture_lex $P1544
    .const 'Sub' $P1538 = "104_1337965225.74" 
    capture_lex $P1538
    .const 'Sub' $P1532 = "103_1337965225.74" 
    capture_lex $P1532
    .const 'Sub' $P1519 = "101_1337965225.74" 
    capture_lex $P1519
    .const 'Sub' $P1488 = "99_1337965225.74" 
    capture_lex $P1488
    .const 'Sub' $P1477 = "92_1337965225.74" 
    capture_lex $P1477
    .const 'Sub' $P1466 = "90_1337965225.74" 
    capture_lex $P1466
    .const 'Sub' $P1460 = "88_1337965225.74" 
    capture_lex $P1460
    .const 'Sub' $P1454 = "87_1337965225.74" 
    capture_lex $P1454
    .const 'Sub' $P1443 = "86_1337965225.74" 
    capture_lex $P1443
    .const 'Sub' $P1432 = "84_1337965225.74" 
    capture_lex $P1432
    .const 'Sub' $P1424 = "81_1337965225.74" 
    capture_lex $P1424
    .const 'Sub' $P1417 = "80_1337965225.74" 
    capture_lex $P1417
    .const 'Sub' $P1411 = "79_1337965225.74" 
    capture_lex $P1411
    .const 'Sub' $P1405 = "78_1337965225.74" 
    capture_lex $P1405
    .const 'Sub' $P1399 = "77_1337965225.74" 
    capture_lex $P1399
    .const 'Sub' $P1393 = "76_1337965225.74" 
    capture_lex $P1393
    .const 'Sub' $P1387 = "75_1337965225.74" 
    capture_lex $P1387
    .const 'Sub' $P1381 = "74_1337965225.74" 
    capture_lex $P1381
    .const 'Sub' $P1375 = "73_1337965225.74" 
    capture_lex $P1375
    .const 'Sub' $P1369 = "72_1337965225.74" 
    capture_lex $P1369
    .const 'Sub' $P1363 = "71_1337965225.74" 
    capture_lex $P1363
    .const 'Sub' $P1357 = "70_1337965225.74" 
    capture_lex $P1357
    .const 'Sub' $P1351 = "69_1337965225.74" 
    capture_lex $P1351
    .const 'Sub' $P1345 = "68_1337965225.74" 
    capture_lex $P1345
    .const 'Sub' $P1339 = "67_1337965225.74" 
    capture_lex $P1339
    .const 'Sub' $P1333 = "66_1337965225.74" 
    capture_lex $P1333
    .const 'Sub' $P1327 = "65_1337965225.74" 
    capture_lex $P1327
    .const 'Sub' $P1319 = "63_1337965225.74" 
    capture_lex $P1319
    .const 'Sub' $P1313 = "62_1337965225.74" 
    capture_lex $P1313
    .const 'Sub' $P1307 = "61_1337965225.74" 
    capture_lex $P1307
    .const 'Sub' $P1301 = "60_1337965225.74" 
    capture_lex $P1301
    .const 'Sub' $P1295 = "59_1337965225.74" 
    capture_lex $P1295
    .const 'Sub' $P1289 = "58_1337965225.74" 
    capture_lex $P1289
    .const 'Sub' $P1283 = "57_1337965225.74" 
    capture_lex $P1283
    .const 'Sub' $P1277 = "56_1337965225.74" 
    capture_lex $P1277
    .const 'Sub' $P1271 = "55_1337965225.74" 
    capture_lex $P1271
    .const 'Sub' $P1265 = "54_1337965225.74" 
    capture_lex $P1265
    .const 'Sub' $P1259 = "53_1337965225.74" 
    capture_lex $P1259
    .const 'Sub' $P1253 = "52_1337965225.74" 
    capture_lex $P1253
    .const 'Sub' $P1247 = "51_1337965225.74" 
    capture_lex $P1247
    .const 'Sub' $P1241 = "50_1337965225.74" 
    capture_lex $P1241
    .const 'Sub' $P1235 = "49_1337965225.74" 
    capture_lex $P1235
    .const 'Sub' $P1229 = "48_1337965225.74" 
    capture_lex $P1229
    .const 'Sub' $P1223 = "47_1337965225.74" 
    capture_lex $P1223
    .const 'Sub' $P1217 = "46_1337965225.74" 
    capture_lex $P1217
    .const 'Sub' $P1211 = "45_1337965225.74" 
    capture_lex $P1211
    .const 'Sub' $P1205 = "44_1337965225.74" 
    capture_lex $P1205
    .const 'Sub' $P1199 = "43_1337965225.74" 
    capture_lex $P1199
    .const 'Sub' $P1193 = "42_1337965225.74" 
    capture_lex $P1193
    .const 'Sub' $P1180 = "40_1337965225.74" 
    capture_lex $P1180
    .const 'Sub' $P1174 = "38_1337965225.74" 
    capture_lex $P1174
    .const 'Sub' $P1152 = "37_1337965225.74" 
    capture_lex $P1152
    .const 'Sub' $P1146 = "33_1337965225.74" 
    capture_lex $P1146
    .const 'Sub' $P1140 = "32_1337965225.74" 
    capture_lex $P1140
    .const 'Sub' $P1134 = "31_1337965225.74" 
    capture_lex $P1134
    .const 'Sub' $P1121 = "29_1337965225.74" 
    capture_lex $P1121
    .const 'Sub' $P1115 = "27_1337965225.74" 
    capture_lex $P1115
    .const 'Sub' $P1104 = "26_1337965225.74" 
    capture_lex $P1104
    .const 'Sub' $P1094 = "24_1337965225.74" 
    capture_lex $P1094
    .const 'Sub' $P1088 = "22_1337965225.74" 
    capture_lex $P1088
    .const 'Sub' $P1082 = "21_1337965225.74" 
    capture_lex $P1082
    .const 'Sub' $P1076 = "20_1337965225.74" 
    capture_lex $P1076
    .const 'Sub' $P1070 = "19_1337965225.74" 
    capture_lex $P1070
    .const 'Sub' $P1062 = "18_1337965225.74" 
    capture_lex $P1062
    .const 'Sub' $P1054 = "17_1337965225.74" 
    capture_lex $P1054
    .const 'Sub' $P1049 = "16_1337965225.74" 
    capture_lex $P1049
    .const 'Sub' $P1043 = "15_1337965225.74" 
    capture_lex $P1043
    .const 'Sub' $P1037 = "14_1337965225.74" 
    capture_lex $P1037
    .const 'Sub' $P1026 = "13_1337965225.74" 
    capture_lex $P1026
    .const 'Sub' $P1020 = "11_1337965225.74" 
    capture_lex $P1020
    .const 'Sub' $P1015 = "10_1337965225.74" 
    capture_lex $P1015
    .lex "$?PACKAGE", $P1013
    .lex "$?CLASS", $P1014
.annotate 'line', 233
    .const 'Sub' $P1544 = "105_1337965225.74" 
    capture_lex $P1544
.annotate 'line', 9
    .return ($P1544)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "obs" :anon :subid("10_1337965225.74") :outer("162_1337965225.74")
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
.sub "ws"  :subid("11_1337965225.74") :outer("162_1337965225.74")
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
.sub "11_1337965225.74_caps"  :subid("163_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 16
    new $P103, "Hash"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "11_1337965225.74_nfa"  :subid("164_1337965225.74")
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
.sub "normspace"  :subid("13_1337965225.74") :outer("162_1337965225.74")
    .param pmc param_1027
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 18
    .const 'Sub' $P1033 = "12_1337965225.74" 
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
    .const 'Sub' $P1033 = "12_1337965225.74" 
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
.sub "13_1337965225.74_caps"  :subid("165_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 18
    new $P103, "Hash"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "13_1337965225.74_nfa"  :subid("166_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 18
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 8
    push $P104, "before"
    push $P104, 0
    new $P105, "ResizablePMCArray"
    push $P105, $P103
    push $P105, $P104
    .return ($P105)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "_block1032"  :anon :subid("12_1337965225.74") :method :outer("13_1337965225.74")
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
.sub "12_1337965225.74_caps"  :subid("167_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 18
    new $P103, "Hash"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "12_1337965225.74_nfa"  :subid("168_1337965225.74")
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
.sub "identifier"  :subid("14_1337965225.74") :outer("162_1337965225.74")
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
.sub "14_1337965225.74_caps"  :subid("169_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 20
    new $P103, "Hash"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "14_1337965225.74_nfa"  :subid("170_1337965225.74")
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
.sub "arg"  :subid("15_1337965225.74") :outer("162_1337965225.74")
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
.sub "15_1337965225.74_caps"  :subid("171_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 22
    new $P103, "Hash"
    set $P103["quote_EXPR"], 0
    set $P103["val"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "15_1337965225.74_nfa"  :subid("172_1337965225.74")
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
.sub "arglist"  :subid("16_1337965225.74") :outer("162_1337965225.74")
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
.sub "16_1337965225.74_caps"  :subid("173_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 30
    new $P103, "Hash"
    set $P103["arg"], 2
    .return ($P103)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "TOP"  :subid("17_1337965225.74") :outer("162_1337965225.74")
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
.sub "17_1337965225.74_caps"  :subid("174_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 32
    new $P103, "Hash"
    set $P103["nibbler"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "17_1337965225.74_nfa"  :subid("175_1337965225.74")
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
.sub "nibbler"  :subid("18_1337965225.74") :outer("162_1337965225.74")
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
.sub "18_1337965225.74_caps"  :subid("176_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 38
    new $P103, "Hash"
    set $P103["termaltseq"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "18_1337965225.74_nfa"  :subid("177_1337965225.74")
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
.sub "termaltseq"  :subid("19_1337965225.74") :outer("162_1337965225.74")
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
.sub "19_1337965225.74_caps"  :subid("178_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 44
    new $P103, "Hash"
    set $P103["termconjseq"], 2
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "19_1337965225.74_nfa"  :subid("179_1337965225.74")
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
.sub "termconjseq"  :subid("20_1337965225.74") :outer("162_1337965225.74")
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
.sub "20_1337965225.74_caps"  :subid("180_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 49
    new $P103, "Hash"
    set $P103["termalt"], 2
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "20_1337965225.74_nfa"  :subid("181_1337965225.74")
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
.sub "termalt"  :subid("21_1337965225.74") :outer("162_1337965225.74")
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
.sub "21_1337965225.74_caps"  :subid("182_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 54
    new $P103, "Hash"
    set $P103["termconj"], 2
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "21_1337965225.74_nfa"  :subid("183_1337965225.74")
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
.sub "termconj"  :subid("22_1337965225.74") :outer("162_1337965225.74")
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
.sub "22_1337965225.74_caps"  :subid("184_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 59
    new $P103, "Hash"
    set $P103["termish"], 2
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "22_1337965225.74_nfa"  :subid("185_1337965225.74")
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
.sub "termish"  :subid("24_1337965225.74") :outer("162_1337965225.74")
    .param pmc param_1095
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 64
    .const 'Sub' $P1100 = "23_1337965225.74" 
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
    .const 'Sub' $P1100 = "23_1337965225.74" 
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
.sub "24_1337965225.74_caps"  :subid("186_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 64
    new $P103, "Hash"
    set $P103["noun"], 2
    set $P103["0"], 1
    .return ($P103)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "_block1099"  :anon :subid("23_1337965225.74") :method :outer("24_1337965225.74")
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
.sub "23_1337965225.74_caps"  :subid("187_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 64
    new $P103, "Hash"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "23_1337965225.74_nfa"  :subid("188_1337965225.74")
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
.sub "quantified_atom"  :subid("26_1337965225.74") :outer("162_1337965225.74")
    .param pmc param_1105
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 69
    .const 'Sub' $P1111 = "25_1337965225.74" 
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
    .const 'Sub' $P1111 = "25_1337965225.74" 
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
.sub "26_1337965225.74_caps"  :subid("189_1337965225.74")
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
.sub "26_1337965225.74_nfa"  :subid("190_1337965225.74")
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
    push $P106, 8
    push $P106, "before"
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
.sub "_block1110"  :anon :subid("25_1337965225.74") :method :outer("26_1337965225.74")
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
.sub "25_1337965225.74_caps"  :subid("191_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 69
    new $P103, "Hash"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "25_1337965225.74_nfa"  :subid("192_1337965225.74")
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
.sub "separator"  :subid("27_1337965225.74") :outer("162_1337965225.74")
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
.sub "27_1337965225.74_caps"  :subid("193_1337965225.74")
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
.sub "27_1337965225.74_nfa"  :subid("194_1337965225.74")
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
.sub "atom"  :subid("29_1337965225.74") :outer("162_1337965225.74")
    .param pmc param_1122
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 81
    .const 'Sub' $P1128 = "28_1337965225.74" 
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
    .const 'Sub' $P1128 = "28_1337965225.74" 
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
.sub "29_1337965225.74_caps"  :subid("195_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 81
    new $P103, "Hash"
    set $P103["metachar"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "29_1337965225.74_nfa"  :subid("196_1337965225.74")
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
    push $P107, 8
    push $P107, "before"
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
.sub "_block1127"  :anon :subid("28_1337965225.74") :method :outer("29_1337965225.74")
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
.sub "28_1337965225.74_caps"  :subid("197_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 81
    new $P103, "Hash"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "28_1337965225.74_nfa"  :subid("198_1337965225.74")
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
.sub "quantifier"  :subid("30_1337965225.74")
    .param pmc param_1133
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 89
    .lex "self", param_1133
    $P101 = param_1133."!protoregex"("quantifier")
    .return ($P101)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "quantifier:sym<*>"  :subid("31_1337965225.74") :outer("162_1337965225.74")
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
.sub "31_1337965225.74_caps"  :subid("199_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 90
    new $P103, "Hash"
    set $P103["sym"], 0
    set $P103["backmod"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "31_1337965225.74_nfa"  :subid("200_1337965225.74")
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
.sub "quantifier:sym<+>"  :subid("32_1337965225.74") :outer("162_1337965225.74")
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
.sub "32_1337965225.74_caps"  :subid("201_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 91
    new $P103, "Hash"
    set $P103["sym"], 0
    set $P103["backmod"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "32_1337965225.74_nfa"  :subid("202_1337965225.74")
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
.sub "quantifier:sym<?>"  :subid("33_1337965225.74") :outer("162_1337965225.74")
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
.sub "33_1337965225.74_caps"  :subid("203_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 92
    new $P103, "Hash"
    set $P103["sym"], 0
    set $P103["backmod"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "33_1337965225.74_nfa"  :subid("204_1337965225.74")
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
.sub "quantifier:sym<{N,M}>"  :subid("37_1337965225.74") :outer("162_1337965225.74")
    .param pmc param_1153
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 93
    .const 'Sub' $P1170 = "36_1337965225.74" 
    capture_lex $P1170
    .const 'Sub' $P1165 = "35_1337965225.74" 
    capture_lex $P1165
    .const 'Sub' $P1160 = "34_1337965225.74" 
    capture_lex $P1160
    .const 'Sub' $P1158 = "206_1337965225.74" 
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
    .const 'Sub' $P1158 = "206_1337965225.74" 
    capture_lex $P1158
    $P105 = $P1158()
    add $I11, rx134_pos, 1
    gt $I11, rx134_eos, rx134_fail
    substr $S10, rx134_tgt, rx134_pos, 1
    ne $S10, ucs4:"{", rx134_fail
    add rx134_pos, 1
    .const 'Sub' $P1160 = "34_1337965225.74" 
    capture_lex $P1160
    repr_bind_attr_int rx134_cur, rx134_curclass, "$!pos", rx134_pos
    $P11 = rx134_cur.$P1160()
    repr_get_attr_int $I11, $P11, rx134_curclass, "$!pos"
    lt $I11, 0, rx134_fail
    nqp_rxmark rx134_bstack, rxsubrule139_pass, -1, 0
  rxsubrule139_pass:
    rx134_cstack = rx134_cur."!cursor_capture"($P11, 0)
    repr_get_attr_int rx134_pos, $P11, rx134_curclass, "$!pos"
    .const 'Sub' $P1165 = "35_1337965225.74" 
    capture_lex $P1165
    repr_bind_attr_int rx134_cur, rx134_curclass, "$!pos", rx134_pos
    $P11 = rx134_cur.$P1165()
    repr_get_attr_int $I11, $P11, rx134_curclass, "$!pos"
    lt $I11, 0, rx134_fail
    nqp_rxmark rx134_bstack, rxsubrule143_pass, -1, 0
  rxsubrule143_pass:
    rx134_cstack = rx134_cur."!cursor_capture"($P11, "1")
    repr_get_attr_int rx134_pos, $P11, rx134_curclass, "$!pos"
    .const 'Sub' $P1170 = "36_1337965225.74" 
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
.sub "37_1337965225.74_caps"  :subid("205_1337965225.74")
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
.sub "_block1157"  :anon :subid("206_1337965225.74") :outer("37_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 93
    .return ()
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "_block1159"  :anon :subid("34_1337965225.74") :method :outer("37_1337965225.74")
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
.sub "34_1337965225.74_caps"  :subid("207_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 93
    new $P106, "Hash"
    .return ($P106)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "34_1337965225.74_nfa"  :subid("208_1337965225.74")
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
.sub "_block1164"  :anon :subid("35_1337965225.74") :method :outer("37_1337965225.74")
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
.sub "35_1337965225.74_caps"  :subid("209_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 93
    new $P106, "Hash"
    .return ($P106)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "35_1337965225.74_nfa"  :subid("210_1337965225.74")
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
.sub "_block1169"  :anon :subid("36_1337965225.74") :method :outer("37_1337965225.74")
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
.sub "36_1337965225.74_caps"  :subid("211_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 93
    new $P106, "Hash"
    .return ($P106)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "36_1337965225.74_nfa"  :subid("212_1337965225.74")
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
.sub "quantifier:sym<**>"  :subid("38_1337965225.74") :outer("162_1337965225.74")
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
.sub "38_1337965225.74_caps"  :subid("213_1337965225.74")
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
.sub "38_1337965225.74_nfa"  :subid("214_1337965225.74")
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
.sub "backmod"  :subid("40_1337965225.74") :outer("162_1337965225.74")
    .param pmc param_1181
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 110
    .const 'Sub' $P1187 = "39_1337965225.74" 
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
    .const 'Sub' $P1187 = "39_1337965225.74" 
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
.sub "40_1337965225.74_caps"  :subid("215_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 110
    new $P103, "Hash"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "40_1337965225.74_nfa"  :subid("216_1337965225.74")
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
.sub "_block1186"  :anon :subid("39_1337965225.74") :method :outer("40_1337965225.74")
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
.sub "39_1337965225.74_caps"  :subid("217_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 110
    new $P103, "Hash"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "39_1337965225.74_nfa"  :subid("218_1337965225.74")
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
.sub "metachar"  :subid("41_1337965225.74")
    .param pmc param_1192
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 112
    .lex "self", param_1192
    $P101 = param_1192."!protoregex"("metachar")
    .return ($P101)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "metachar:sym<ws>"  :subid("42_1337965225.74") :outer("162_1337965225.74")
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
.sub "42_1337965225.74_caps"  :subid("219_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 113
    new $P103, "Hash"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "42_1337965225.74_nfa"  :subid("220_1337965225.74")
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
.sub "metachar:sym<[ ]>"  :subid("43_1337965225.74") :outer("162_1337965225.74")
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
.sub "43_1337965225.74_caps"  :subid("221_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 114
    new $P103, "Hash"
    set $P103["nibbler"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "43_1337965225.74_nfa"  :subid("222_1337965225.74")
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
.sub "metachar:sym<( )>"  :subid("44_1337965225.74") :outer("162_1337965225.74")
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
.sub "44_1337965225.74_caps"  :subid("223_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 115
    new $P103, "Hash"
    set $P103["nibbler"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "44_1337965225.74_nfa"  :subid("224_1337965225.74")
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
.sub "metachar:sym<'>"  :subid("45_1337965225.74") :outer("162_1337965225.74")
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
.sub "45_1337965225.74_caps"  :subid("225_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 116
    new $P103, "Hash"
    set $P103["quote_EXPR"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "45_1337965225.74_nfa"  :subid("226_1337965225.74")
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
.sub "metachar:sym<\">"  :subid("46_1337965225.74") :outer("162_1337965225.74")
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
.sub "46_1337965225.74_caps"  :subid("227_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 117
    new $P103, "Hash"
    set $P103["quote_EXPR"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "46_1337965225.74_nfa"  :subid("228_1337965225.74")
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
.sub "metachar:sym<.>"  :subid("47_1337965225.74") :outer("162_1337965225.74")
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
.sub "47_1337965225.74_caps"  :subid("229_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 118
    new $P103, "Hash"
    set $P103["sym"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "47_1337965225.74_nfa"  :subid("230_1337965225.74")
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
.sub "metachar:sym<^>"  :subid("48_1337965225.74") :outer("162_1337965225.74")
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
.sub "48_1337965225.74_caps"  :subid("231_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 119
    new $P103, "Hash"
    set $P103["sym"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "48_1337965225.74_nfa"  :subid("232_1337965225.74")
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
.sub "metachar:sym<^^>"  :subid("49_1337965225.74") :outer("162_1337965225.74")
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
.sub "49_1337965225.74_caps"  :subid("233_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 120
    new $P103, "Hash"
    set $P103["sym"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "49_1337965225.74_nfa"  :subid("234_1337965225.74")
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
.sub "metachar:sym<$>"  :subid("50_1337965225.74") :outer("162_1337965225.74")
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
.sub "50_1337965225.74_caps"  :subid("235_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 121
    new $P103, "Hash"
    set $P103["sym"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "50_1337965225.74_nfa"  :subid("236_1337965225.74")
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
.sub "metachar:sym<$$>"  :subid("51_1337965225.74") :outer("162_1337965225.74")
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
.sub "51_1337965225.74_caps"  :subid("237_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 122
    new $P103, "Hash"
    set $P103["sym"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "51_1337965225.74_nfa"  :subid("238_1337965225.74")
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
.sub "metachar:sym<:::>"  :subid("52_1337965225.74") :outer("162_1337965225.74")
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
.sub "52_1337965225.74_caps"  :subid("239_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 123
    new $P103, "Hash"
    set $P103["sym"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "52_1337965225.74_nfa"  :subid("240_1337965225.74")
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
.sub "metachar:sym<::>"  :subid("53_1337965225.74") :outer("162_1337965225.74")
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
.sub "53_1337965225.74_caps"  :subid("241_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 124
    new $P103, "Hash"
    set $P103["sym"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "53_1337965225.74_nfa"  :subid("242_1337965225.74")
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
.sub "metachar:sym<lwb>"  :subid("54_1337965225.74") :outer("162_1337965225.74")
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
.sub "54_1337965225.74_caps"  :subid("243_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 125
    new $P103, "Hash"
    set $P103["sym"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "54_1337965225.74_nfa"  :subid("244_1337965225.74")
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
.sub "metachar:sym<rwb>"  :subid("55_1337965225.74") :outer("162_1337965225.74")
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
.sub "55_1337965225.74_caps"  :subid("245_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 126
    new $P103, "Hash"
    set $P103["sym"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "55_1337965225.74_nfa"  :subid("246_1337965225.74")
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
.sub "metachar:sym<bs>"  :subid("56_1337965225.74") :outer("162_1337965225.74")
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
.sub "56_1337965225.74_caps"  :subid("247_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 127
    new $P103, "Hash"
    set $P103["backslash"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "56_1337965225.74_nfa"  :subid("248_1337965225.74")
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
.sub "metachar:sym<mod>"  :subid("57_1337965225.74") :outer("162_1337965225.74")
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
.sub "57_1337965225.74_caps"  :subid("249_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 128
    new $P103, "Hash"
    set $P103["mod_internal"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "57_1337965225.74_nfa"  :subid("250_1337965225.74")
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
.sub "metachar:sym<quantifier>"  :subid("58_1337965225.74") :outer("162_1337965225.74")
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
.sub "58_1337965225.74_caps"  :subid("251_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 129
    new $P103, "Hash"
    set $P103["quantifier"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "58_1337965225.74_nfa"  :subid("252_1337965225.74")
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
.sub "metachar:sym<~>"  :subid("59_1337965225.74") :outer("162_1337965225.74")
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
.sub "59_1337965225.74_caps"  :subid("253_1337965225.74")
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
.sub "59_1337965225.74_nfa"  :subid("254_1337965225.74")
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
.sub "metachar:sym<{*}>"  :subid("60_1337965225.74") :outer("162_1337965225.74")
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
.sub "60_1337965225.74_caps"  :subid("255_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 140
    new $P103, "Hash"
    set $P103["sym"], 0
    set $P103["key"], 2
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "60_1337965225.74_nfa"  :subid("256_1337965225.74")
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
.sub "metachar:sym<assert>"  :subid("61_1337965225.74") :outer("162_1337965225.74")
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
.sub "61_1337965225.74_caps"  :subid("257_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 144
    new $P103, "Hash"
    set $P103["assertion"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "61_1337965225.74_nfa"  :subid("258_1337965225.74")
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
.sub "metachar:sym<var>"  :subid("62_1337965225.74") :outer("162_1337965225.74")
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
.sub "62_1337965225.74_caps"  :subid("259_1337965225.74")
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
.sub "62_1337965225.74_nfa"  :subid("260_1337965225.74")
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
.sub "metachar:sym<PIR>"  :subid("63_1337965225.74") :outer("162_1337965225.74")
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
.sub "63_1337965225.74_caps"  :subid("261_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 158
    new $P103, "Hash"
    set $P103["pir"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "63_1337965225.74_nfa"  :subid("262_1337965225.74")
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
.sub "backslash"  :subid("64_1337965225.74")
    .param pmc param_1326
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 162
    .lex "self", param_1326
    $P101 = param_1326."!protoregex"("backslash")
    .return ($P101)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "backslash:sym<s>"  :subid("65_1337965225.74") :outer("162_1337965225.74")
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
.sub "65_1337965225.74_caps"  :subid("263_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 163
    new $P103, "Hash"
    set $P103["sym"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "65_1337965225.74_nfa"  :subid("264_1337965225.74")
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
.sub "backslash:sym<b>"  :subid("66_1337965225.74") :outer("162_1337965225.74")
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
.sub "66_1337965225.74_caps"  :subid("265_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 164
    new $P103, "Hash"
    set $P103["sym"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "66_1337965225.74_nfa"  :subid("266_1337965225.74")
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
.sub "backslash:sym<e>"  :subid("67_1337965225.74") :outer("162_1337965225.74")
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
.sub "67_1337965225.74_caps"  :subid("267_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 165
    new $P103, "Hash"
    set $P103["sym"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "67_1337965225.74_nfa"  :subid("268_1337965225.74")
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
.sub "backslash:sym<f>"  :subid("68_1337965225.74") :outer("162_1337965225.74")
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
.sub "68_1337965225.74_caps"  :subid("269_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 166
    new $P103, "Hash"
    set $P103["sym"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "68_1337965225.74_nfa"  :subid("270_1337965225.74")
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
.sub "backslash:sym<h>"  :subid("69_1337965225.74") :outer("162_1337965225.74")
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
.sub "69_1337965225.74_caps"  :subid("271_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 167
    new $P103, "Hash"
    set $P103["sym"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "69_1337965225.74_nfa"  :subid("272_1337965225.74")
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
.sub "backslash:sym<r>"  :subid("70_1337965225.74") :outer("162_1337965225.74")
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
.sub "70_1337965225.74_caps"  :subid("273_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 168
    new $P103, "Hash"
    set $P103["sym"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "70_1337965225.74_nfa"  :subid("274_1337965225.74")
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
.sub "backslash:sym<t>"  :subid("71_1337965225.74") :outer("162_1337965225.74")
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
.sub "71_1337965225.74_caps"  :subid("275_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 169
    new $P103, "Hash"
    set $P103["sym"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "71_1337965225.74_nfa"  :subid("276_1337965225.74")
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
.sub "backslash:sym<v>"  :subid("72_1337965225.74") :outer("162_1337965225.74")
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
.sub "72_1337965225.74_caps"  :subid("277_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 170
    new $P103, "Hash"
    set $P103["sym"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "72_1337965225.74_nfa"  :subid("278_1337965225.74")
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
.sub "backslash:sym<o>"  :subid("73_1337965225.74") :outer("162_1337965225.74")
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
.sub "73_1337965225.74_caps"  :subid("279_1337965225.74")
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
.sub "73_1337965225.74_nfa"  :subid("280_1337965225.74")
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
.sub "backslash:sym<x>"  :subid("74_1337965225.74") :outer("162_1337965225.74")
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
.sub "74_1337965225.74_caps"  :subid("281_1337965225.74")
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
.sub "74_1337965225.74_nfa"  :subid("282_1337965225.74")
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
.sub "backslash:sym<c>"  :subid("75_1337965225.74") :outer("162_1337965225.74")
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
.sub "75_1337965225.74_caps"  :subid("283_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 173
    new $P103, "Hash"
    set $P103["sym"], 0
    set $P103["charspec"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "75_1337965225.74_nfa"  :subid("284_1337965225.74")
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
.sub "backslash:sym<A>"  :subid("76_1337965225.74") :outer("162_1337965225.74")
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
.sub "76_1337965225.74_caps"  :subid("285_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 174
    new $P103, "Hash"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "76_1337965225.74_nfa"  :subid("286_1337965225.74")
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
.sub "backslash:sym<z>"  :subid("77_1337965225.74") :outer("162_1337965225.74")
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
.sub "77_1337965225.74_caps"  :subid("287_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 175
    new $P103, "Hash"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "77_1337965225.74_nfa"  :subid("288_1337965225.74")
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
.sub "backslash:sym<Z>"  :subid("78_1337965225.74") :outer("162_1337965225.74")
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
.sub "78_1337965225.74_caps"  :subid("289_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 176
    new $P103, "Hash"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "78_1337965225.74_nfa"  :subid("290_1337965225.74")
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
.sub "backslash:sym<Q>"  :subid("79_1337965225.74") :outer("162_1337965225.74")
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
.sub "79_1337965225.74_caps"  :subid("291_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 177
    new $P103, "Hash"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "79_1337965225.74_nfa"  :subid("292_1337965225.74")
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
.sub "backslash:sym<unrec>"  :subid("80_1337965225.74") :outer("162_1337965225.74")
    .param pmc param_1418
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 178
    .const 'Sub' $P1423 = "294_1337965225.74" 
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
    .const 'Sub' $P1423 = "294_1337965225.74" 
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
.sub "80_1337965225.74_caps"  :subid("293_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 178
    new $P103, "Hash"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "_block1422"  :anon :subid("294_1337965225.74") :outer("80_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 178
    .return ()
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "backslash:sym<misc>"  :subid("81_1337965225.74") :outer("162_1337965225.74")
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
.sub "81_1337965225.74_caps"  :subid("295_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 179
    new $P103, "Hash"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "81_1337965225.74_nfa"  :subid("296_1337965225.74")
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
.sub "assertion"  :subid("82_1337965225.74")
    .param pmc param_1431
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 181
    .lex "self", param_1431
    $P101 = param_1431."!protoregex"("assertion")
    .return ($P101)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "assertion:sym<?>"  :subid("84_1337965225.74") :outer("162_1337965225.74")
    .param pmc param_1433
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 183
    .const 'Sub' $P1439 = "83_1337965225.74" 
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
    .const 'Sub' $P1439 = "83_1337965225.74" 
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
.sub "84_1337965225.74_caps"  :subid("297_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 183
    new $P103, "Hash"
    set $P103["assertion"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "84_1337965225.74_nfa"  :subid("298_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 183
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 2
    push $P104, 63
    push $P104, 2
    new $P105, "ResizablePMCArray"
    push $P105, 8
    push $P105, "before"
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
.sub "_block1438"  :anon :subid("83_1337965225.74") :method :outer("84_1337965225.74")
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
.sub "83_1337965225.74_caps"  :subid("299_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 183
    new $P103, "Hash"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "83_1337965225.74_nfa"  :subid("300_1337965225.74")
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
.sub "assertion:sym<!>"  :subid("86_1337965225.74") :outer("162_1337965225.74")
    .param pmc param_1444
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 184
    .const 'Sub' $P1450 = "85_1337965225.74" 
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
    .const 'Sub' $P1450 = "85_1337965225.74" 
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
.sub "86_1337965225.74_caps"  :subid("301_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 184
    new $P103, "Hash"
    set $P103["assertion"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "86_1337965225.74_nfa"  :subid("302_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 184
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 2
    push $P104, 33
    push $P104, 2
    new $P105, "ResizablePMCArray"
    push $P105, 8
    push $P105, "before"
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
.sub "_block1449"  :anon :subid("85_1337965225.74") :method :outer("86_1337965225.74")
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
.sub "85_1337965225.74_caps"  :subid("303_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 184
    new $P103, "Hash"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "85_1337965225.74_nfa"  :subid("304_1337965225.74")
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
.sub "assertion:sym<|>"  :subid("87_1337965225.74") :outer("162_1337965225.74")
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
.sub "87_1337965225.74_caps"  :subid("305_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 185
    new $P103, "Hash"
    set $P103["identifier"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "87_1337965225.74_nfa"  :subid("306_1337965225.74")
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
.sub "assertion:sym<method>"  :subid("88_1337965225.74") :outer("162_1337965225.74")
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
.sub "88_1337965225.74_caps"  :subid("307_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 187
    new $P103, "Hash"
    set $P103["assertion"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "88_1337965225.74_nfa"  :subid("308_1337965225.74")
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
.sub "assertion:sym<name>"  :subid("90_1337965225.74") :outer("162_1337965225.74")
    .param pmc param_1467
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 191
    .const 'Sub' $P1473 = "89_1337965225.74" 
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
    .const 'Sub' $P1473 = "89_1337965225.74" 
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
.sub "90_1337965225.74_caps"  :subid("309_1337965225.74")
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
.sub "90_1337965225.74_nfa"  :subid("310_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 191
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 8
    push $P104, "identifier"
    push $P104, 2
    new $P105, "ResizablePMCArray"
    push $P105, 8
    push $P105, "before"
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
.sub "_block1472"  :anon :subid("89_1337965225.74") :method :outer("90_1337965225.74")
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
.sub "89_1337965225.74_caps"  :subid("311_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 191
    new $P103, "Hash"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "89_1337965225.74_nfa"  :subid("312_1337965225.74")
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
.sub "assertion:sym<[>"  :subid("92_1337965225.74") :outer("162_1337965225.74")
    .param pmc param_1478
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 202
    .const 'Sub' $P1484 = "91_1337965225.74" 
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
    .const 'Sub' $P1484 = "91_1337965225.74" 
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
.sub "92_1337965225.74_caps"  :subid("313_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 202
    new $P103, "Hash"
    set $P103["cclass_elem"], 2
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "92_1337965225.74_nfa"  :subid("314_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 202
    new $P103, "ResizablePMCArray"
    new $P104, "ResizablePMCArray"
    push $P104, 8
    push $P104, "before"
    push $P104, 0
    new $P105, "ResizablePMCArray"
    push $P105, $P103
    push $P105, $P104
    .return ($P105)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "_block1483"  :anon :subid("91_1337965225.74") :method :outer("92_1337965225.74")
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
.sub "91_1337965225.74_caps"  :subid("315_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 202
    new $P103, "Hash"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "91_1337965225.74_nfa"  :subid("316_1337965225.74")
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
.sub "cclass_elem"  :subid("99_1337965225.74") :outer("162_1337965225.74")
    .param pmc param_1489
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 204
    .const 'Sub' $P1495 = "98_1337965225.74" 
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
  # rx rxquantr362 ** 0..1
    nqp_rxmark rx358_bstack, rxquantr362_done, rx358_pos, 0
  rxquantr362_loop:
    repr_bind_attr_int rx358_cur, rx358_curclass, "$!pos", rx358_pos
    $P11 = rx358_cur."normspace"()
    repr_get_attr_int $I11, $P11, rx358_curclass, "$!pos"
    lt $I11, 0, rx358_fail
    goto rxsubrule363_pass
  rxsubrule363_back:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx358_curclass, "$!pos"
    lt $I11, 0, rx358_fail
  rxsubrule363_pass:
    rx358_cstack = rx358_cur."!cursor_push_cstack"($P11)
    set_addr $I11, rxsubrule363_back
    push rx358_bstack, $I11
    push rx358_bstack, 0
    push rx358_bstack, rx358_pos
    elements $I11, rx358_cstack
    push rx358_bstack, $I11
    repr_get_attr_int rx358_pos, $P11, rx358_curclass, "$!pos"
    nqp_rxpeek $I19, rx358_bstack, rxquantr362_done
    inc $I19
    inc $I19
    set rx358_rep, rx358_bstack[$I19]
    nqp_rxcommit rx358_bstack, rxquantr362_done
    inc rx358_rep
  rxquantr362_done:
  alt364_0:
    nqp_rxmark rx358_bstack, alt364_1, rx358_pos, 0
    add $I11, rx358_pos, 1
    gt $I11, rx358_eos, rx358_fail
    substr $S10, rx358_tgt, rx358_pos, 1
    ne $S10, ucs4:"[", rx358_fail
    add rx358_pos, 1
  # rx rxquantr365 ** 0..-1
    nqp_rxmark rx358_bstack, rxquantr365_done, rx358_pos, 0
  rxquantr365_loop:
    .const 'Sub' $P1495 = "98_1337965225.74" 
    capture_lex $P1495
    repr_bind_attr_int rx358_cur, rx358_curclass, "$!pos", rx358_pos
    $P11 = rx358_cur.$P1495()
    repr_get_attr_int $I11, $P11, rx358_curclass, "$!pos"
    lt $I11, 0, rx358_fail
    goto rxsubrule396_pass
  rxsubrule396_back:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx358_curclass, "$!pos"
    lt $I11, 0, rx358_fail
  rxsubrule396_pass:
    rx358_cstack = rx358_cur."!cursor_capture"($P11, "charspec")
    set_addr $I11, rxsubrule396_back
    push rx358_bstack, $I11
    push rx358_bstack, 0
    push rx358_bstack, rx358_pos
    elements $I11, rx358_cstack
    push rx358_bstack, $I11
    repr_get_attr_int rx358_pos, $P11, rx358_curclass, "$!pos"
    nqp_rxpeek $I19, rx358_bstack, rxquantr365_done
    inc $I19
    inc $I19
    set rx358_rep, rx358_bstack[$I19]
    nqp_rxcommit rx358_bstack, rxquantr365_done
    inc rx358_rep
    nqp_rxmark rx358_bstack, rxquantr365_done, rx358_pos, rx358_rep
    goto rxquantr365_loop
  rxquantr365_done:
  # rx rxquantr397 ** 0..-1
    nqp_rxmark rx358_bstack, rxquantr397_done, rx358_pos, 0
  rxquantr397_loop:
    ge rx358_pos, rx358_eos, rx358_fail
    is_cclass $I11, .CCLASS_WHITESPACE, rx358_tgt, rx358_pos
    unless $I11, rx358_fail
    add rx358_pos, 1
    nqp_rxpeek $I19, rx358_bstack, rxquantr397_done
    inc $I19
    inc $I19
    set rx358_rep, rx358_bstack[$I19]
    nqp_rxcommit rx358_bstack, rxquantr397_done
    inc rx358_rep
    nqp_rxmark rx358_bstack, rxquantr397_done, rx358_pos, rx358_rep
    goto rxquantr397_loop
  rxquantr397_done:
    add $I11, rx358_pos, 1
    gt $I11, rx358_eos, rx358_fail
    substr $S10, rx358_tgt, rx358_pos, 1
    ne $S10, ucs4:"]", rx358_fail
    add rx358_pos, 1
    goto alt364_end
  alt364_1:
    nqp_rxmark rx358_bstack, alt364_2, rx358_pos, 0
    nqp_rxmark rx358_bstack, rxcap398_fail, rx358_pos, 0
  # rx rxquantr399 ** 1..-1
    nqp_rxmark rx358_bstack, rxquantr399_done, -1, 0
  rxquantr399_loop:
    ge rx358_pos, rx358_eos, rx358_fail
    is_cclass $I11, .CCLASS_WORD, rx358_tgt, rx358_pos
    unless $I11, rx358_fail
    add rx358_pos, 1
    nqp_rxpeek $I19, rx358_bstack, rxquantr399_done
    inc $I19
    inc $I19
    set rx358_rep, rx358_bstack[$I19]
    nqp_rxcommit rx358_bstack, rxquantr399_done
    inc rx358_rep
    nqp_rxmark rx358_bstack, rxquantr399_done, rx358_pos, rx358_rep
    goto rxquantr399_loop
  rxquantr399_done:
    nqp_rxpeek $I19, rx358_bstack, rxcap398_fail
    inc $I19
    set $I11, rx358_bstack[$I19]
    $P11 = rx358_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx358_pos)
    rx358_cstack = rx358_cur."!cursor_capture"($P11, "name")
    goto rxcap398_done
  rxcap398_fail:
    goto rx358_fail
  rxcap398_done:
    goto alt364_end
  alt364_2:
    add $I11, rx358_pos, 1
    gt $I11, rx358_eos, rx358_fail
    substr $S10, rx358_tgt, rx358_pos, 1
    ne $S10, ucs4:":", rx358_fail
    add rx358_pos, 1
    nqp_rxmark rx358_bstack, rxcap400_fail, rx358_pos, 0
  alt401_0:
    nqp_rxmark rx358_bstack, alt401_1, rx358_pos, 0
    add $I11, rx358_pos, 1
    gt $I11, rx358_eos, rx358_fail
    substr $S10, rx358_tgt, rx358_pos, 1
    ne $S10, ucs4:"!", rx358_fail
    add rx358_pos, 1
    goto alt401_end
  alt401_1:
  alt401_end:
    nqp_rxpeek $I19, rx358_bstack, rxcap400_fail
    inc $I19
    set $I11, rx358_bstack[$I19]
    $P11 = rx358_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx358_pos)
    rx358_cstack = rx358_cur."!cursor_capture"($P11, "invert")
    goto rxcap400_done
  rxcap400_fail:
    goto rx358_fail
  rxcap400_done:
    nqp_rxmark rx358_bstack, rxcap402_fail, rx358_pos, 0
  # rx rxquantr403 ** 1..-1
    nqp_rxmark rx358_bstack, rxquantr403_done, -1, 0
  rxquantr403_loop:
    ge rx358_pos, rx358_eos, rx358_fail
    is_cclass $I11, .CCLASS_WORD, rx358_tgt, rx358_pos
    unless $I11, rx358_fail
    add rx358_pos, 1
    nqp_rxpeek $I19, rx358_bstack, rxquantr403_done
    inc $I19
    inc $I19
    set rx358_rep, rx358_bstack[$I19]
    nqp_rxcommit rx358_bstack, rxquantr403_done
    inc rx358_rep
    nqp_rxmark rx358_bstack, rxquantr403_done, rx358_pos, rx358_rep
    goto rxquantr403_loop
  rxquantr403_done:
    nqp_rxpeek $I19, rx358_bstack, rxcap402_fail
    inc $I19
    set $I11, rx358_bstack[$I19]
    $P11 = rx358_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx358_pos)
    rx358_cstack = rx358_cur."!cursor_capture"($P11, "uniprop")
    goto rxcap402_done
  rxcap402_fail:
    goto rx358_fail
  rxcap402_done:
  alt364_end:
  # rx rxquantr404 ** 0..1
    nqp_rxmark rx358_bstack, rxquantr404_done, rx358_pos, 0
  rxquantr404_loop:
    repr_bind_attr_int rx358_cur, rx358_curclass, "$!pos", rx358_pos
    $P11 = rx358_cur."normspace"()
    repr_get_attr_int $I11, $P11, rx358_curclass, "$!pos"
    lt $I11, 0, rx358_fail
    goto rxsubrule405_pass
  rxsubrule405_back:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx358_curclass, "$!pos"
    lt $I11, 0, rx358_fail
  rxsubrule405_pass:
    rx358_cstack = rx358_cur."!cursor_push_cstack"($P11)
    set_addr $I11, rxsubrule405_back
    push rx358_bstack, $I11
    push rx358_bstack, 0
    push rx358_bstack, rx358_pos
    elements $I11, rx358_cstack
    push rx358_bstack, $I11
    repr_get_attr_int rx358_pos, $P11, rx358_curclass, "$!pos"
    nqp_rxpeek $I19, rx358_bstack, rxquantr404_done
    inc $I19
    inc $I19
    set rx358_rep, rx358_bstack[$I19]
    nqp_rxcommit rx358_bstack, rxquantr404_done
    inc rx358_rep
  rxquantr404_done:
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
.sub "99_1337965225.74_caps"  :subid("317_1337965225.74")
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
.sub "99_1337965225.74_nfa"  :subid("318_1337965225.74")
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
.sub "_block1494"  :anon :subid("98_1337965225.74") :method :outer("99_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 204
    .const 'Sub' $P1512 = "97_1337965225.74" 
    capture_lex $P1512
    .const 'Sub' $P1504 = "95_1337965225.74" 
    capture_lex $P1504
    .const 'Sub' $P1499 = "93_1337965225.74" 
    capture_lex $P1499
    .lex unicode:"$\x{a2}", $P1497
    .local string rx366_tgt
    .local int rx366_pos
    .local int rx366_off
    .local int rx366_eos
    .local int rx366_rep
    .local pmc rx366_cur
    .local pmc rx366_curclass
    .local pmc rx366_bstack
    .local pmc rx366_cstack
    (rx366_cur, rx366_tgt, rx366_pos, rx366_curclass, rx366_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx366_cur
    length rx366_eos, rx366_tgt
    eq $I19, 1, rx366_restart
    repr_get_attr_int $I11, self, rx366_curclass, "$!from"
    ne $I11, -1, rxscan367_done
    goto rxscan367_scan
  rxscan367_loop:
    inc rx366_pos
    gt rx366_pos, rx366_eos, rx366_fail
    repr_bind_attr_int rx366_cur, rx366_curclass, "$!from", rx366_pos
  rxscan367_scan:
    nqp_rxmark rx366_bstack, rxscan367_loop, rx366_pos, 0
  rxscan367_done:
  alt368_0:
    nqp_rxmark rx366_bstack, alt368_1, rx366_pos, 0
  # rx rxquantr369 ** 0..-1
    nqp_rxmark rx366_bstack, rxquantr369_done, rx366_pos, 0
  rxquantr369_loop:
    ge rx366_pos, rx366_eos, rx366_fail
    is_cclass $I11, .CCLASS_WHITESPACE, rx366_tgt, rx366_pos
    unless $I11, rx366_fail
    add rx366_pos, 1
    nqp_rxpeek $I19, rx366_bstack, rxquantr369_done
    inc $I19
    inc $I19
    set rx366_rep, rx366_bstack[$I19]
    nqp_rxcommit rx366_bstack, rxquantr369_done
    inc rx366_rep
    nqp_rxmark rx366_bstack, rxquantr369_done, rx366_pos, rx366_rep
    goto rxquantr369_loop
  rxquantr369_done:
    add $I11, rx366_pos, 1
    gt $I11, rx366_eos, rx366_fail
    substr $S10, rx366_tgt, rx366_pos, 1
    ne $S10, ucs4:"-", rx366_fail
    add rx366_pos, 1
    .const 'Sub' $P1499 = "93_1337965225.74" 
    capture_lex $P1499
    repr_bind_attr_int rx366_cur, rx366_curclass, "$!pos", rx366_pos
    $P11 = rx366_cur."before"($P1499)
    repr_get_attr_int $I11, $P11, rx366_curclass, "$!pos"
    ge $I11, 0, rx366_fail
    repr_bind_attr_int rx366_cur, rx366_curclass, "$!pos", rx366_pos
    $P11 = rx366_cur."obs"("- as character range", ".. for range, for explicit - in character class, escape it or place as last thing")
    repr_get_attr_int $I11, $P11, rx366_curclass, "$!pos"
    lt $I11, 0, rx366_fail
    repr_get_attr_int rx366_pos, $P11, rx366_curclass, "$!pos"
    goto alt368_end
  alt368_1:
  # rx rxquantr374 ** 0..-1
    nqp_rxmark rx366_bstack, rxquantr374_done, rx366_pos, 0
  rxquantr374_loop:
    ge rx366_pos, rx366_eos, rx366_fail
    is_cclass $I11, .CCLASS_WHITESPACE, rx366_tgt, rx366_pos
    unless $I11, rx366_fail
    add rx366_pos, 1
    nqp_rxpeek $I19, rx366_bstack, rxquantr374_done
    inc $I19
    inc $I19
    set rx366_rep, rx366_bstack[$I19]
    nqp_rxcommit rx366_bstack, rxquantr374_done
    inc rx366_rep
    nqp_rxmark rx366_bstack, rxquantr374_done, rx366_pos, rx366_rep
    goto rxquantr374_loop
  rxquantr374_done:
    .const 'Sub' $P1504 = "95_1337965225.74" 
    capture_lex $P1504
    repr_bind_attr_int rx366_cur, rx366_curclass, "$!pos", rx366_pos
    $P11 = rx366_cur.$P1504()
    repr_get_attr_int $I11, $P11, rx366_curclass, "$!pos"
    lt $I11, 0, rx366_fail
    nqp_rxmark rx366_bstack, rxsubrule383_pass, -1, 0
  rxsubrule383_pass:
    rx366_cstack = rx366_cur."!cursor_capture"($P11, 0)
    repr_get_attr_int rx366_pos, $P11, rx366_curclass, "$!pos"
  # rx rxquantr384 ** 0..1
    nqp_rxmark rx366_bstack, rxquantr384_done, rx366_pos, 0
  rxquantr384_loop:
  # rx rxquantr385 ** 0..-1
    nqp_rxmark rx366_bstack, rxquantr385_done, rx366_pos, 0
  rxquantr385_loop:
    ge rx366_pos, rx366_eos, rx366_fail
    is_cclass $I11, .CCLASS_WHITESPACE, rx366_tgt, rx366_pos
    unless $I11, rx366_fail
    add rx366_pos, 1
    nqp_rxpeek $I19, rx366_bstack, rxquantr385_done
    inc $I19
    inc $I19
    set rx366_rep, rx366_bstack[$I19]
    nqp_rxcommit rx366_bstack, rxquantr385_done
    inc rx366_rep
    nqp_rxmark rx366_bstack, rxquantr385_done, rx366_pos, rx366_rep
    goto rxquantr385_loop
  rxquantr385_done:
    add $I11, rx366_pos, 2
    gt $I11, rx366_eos, rx366_fail
    substr $S10, rx366_tgt, rx366_pos, 2
    ne $S10, ucs4:"..", rx366_fail
    add rx366_pos, 2
  # rx rxquantr386 ** 0..-1
    nqp_rxmark rx366_bstack, rxquantr386_done, rx366_pos, 0
  rxquantr386_loop:
    ge rx366_pos, rx366_eos, rx366_fail
    is_cclass $I11, .CCLASS_WHITESPACE, rx366_tgt, rx366_pos
    unless $I11, rx366_fail
    add rx366_pos, 1
    nqp_rxpeek $I19, rx366_bstack, rxquantr386_done
    inc $I19
    inc $I19
    set rx366_rep, rx366_bstack[$I19]
    nqp_rxcommit rx366_bstack, rxquantr386_done
    inc rx366_rep
    nqp_rxmark rx366_bstack, rxquantr386_done, rx366_pos, rx366_rep
    goto rxquantr386_loop
  rxquantr386_done:
    .const 'Sub' $P1512 = "97_1337965225.74" 
    capture_lex $P1512
    repr_bind_attr_int rx366_cur, rx366_curclass, "$!pos", rx366_pos
    $P11 = rx366_cur.$P1512()
    repr_get_attr_int $I11, $P11, rx366_curclass, "$!pos"
    lt $I11, 0, rx366_fail
    nqp_rxmark rx366_bstack, rxsubrule395_pass, -1, 0
  rxsubrule395_pass:
    rx366_cstack = rx366_cur."!cursor_capture"($P11, "1")
    repr_get_attr_int rx366_pos, $P11, rx366_curclass, "$!pos"
    nqp_rxpeek $I19, rx366_bstack, rxquantr384_done
    inc $I19
    inc $I19
    set rx366_rep, rx366_bstack[$I19]
    nqp_rxcommit rx366_bstack, rxquantr384_done
    inc rx366_rep
  rxquantr384_done:
  alt368_end:
    rx366_cur."!cursor_pass"(rx366_pos, 'backtrack'=>1)
    .return (rx366_cur)
  rx366_restart:
    repr_get_attr_obj rx366_cstack, rx366_cur, rx366_curclass, "$!cstack"
  rx366_fail:
    unless rx366_bstack, rx366_done
    pop $I19, rx366_bstack
    if_null rx366_cstack, rx366_cstack_done
    unless rx366_cstack, rx366_cstack_done
    dec $I19
    set $P11, rx366_cstack[$I19]
  rx366_cstack_done:
    pop rx366_rep, rx366_bstack
    pop rx366_pos, rx366_bstack
    pop $I19, rx366_bstack
    lt rx366_pos, -1, rx366_done
    lt rx366_pos, 0, rx366_fail
    eq $I19, 0, rx366_fail
    if_null rx366_cstack, rx366_jump
    elements $I18, rx366_bstack
    le $I18, 0, rx366_cut
    dec $I18
    set $I18, rx366_bstack[$I18]
  rx366_cut:
    assign rx366_cstack, $I18
  rx366_jump:
    jump $I19
  rx366_done:
    rx366_cur."!cursor_fail"()
    .return (rx366_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "98_1337965225.74_caps"  :subid("319_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 204
    new $P103, "Hash"
    set $P103["0"], 1
    set $P103["1"], 3
    .return ($P103)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "_block1498"  :anon :subid("93_1337965225.74") :method :outer("98_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 204
    .lex unicode:"$\x{a2}", $P1502
    .local string rx370_tgt
    .local int rx370_pos
    .local int rx370_off
    .local int rx370_eos
    .local int rx370_rep
    .local pmc rx370_cur
    .local pmc rx370_curclass
    .local pmc rx370_bstack
    .local pmc rx370_cstack
    (rx370_cur, rx370_tgt, rx370_pos, rx370_curclass, rx370_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx370_cur
    length rx370_eos, rx370_tgt
    eq $I19, 1, rx370_restart
    repr_get_attr_int $I11, self, rx370_curclass, "$!from"
    ne $I11, -1, rxscan371_done
    goto rxscan371_scan
  rxscan371_loop:
    inc rx370_pos
    gt rx370_pos, rx370_eos, rx370_fail
    repr_bind_attr_int rx370_cur, rx370_curclass, "$!from", rx370_pos
  rxscan371_scan:
    nqp_rxmark rx370_bstack, rxscan371_loop, rx370_pos, 0
  rxscan371_done:
  # rx rxquantr372 ** 0..-1
    nqp_rxmark rx370_bstack, rxquantr372_done, rx370_pos, 0
  rxquantr372_loop:
    ge rx370_pos, rx370_eos, rx370_fail
    is_cclass $I11, .CCLASS_WHITESPACE, rx370_tgt, rx370_pos
    unless $I11, rx370_fail
    add rx370_pos, 1
    nqp_rxpeek $I19, rx370_bstack, rxquantr372_done
    inc $I19
    inc $I19
    set rx370_rep, rx370_bstack[$I19]
    nqp_rxcommit rx370_bstack, rxquantr372_done
    inc rx370_rep
    nqp_rxmark rx370_bstack, rxquantr372_done, rx370_pos, rx370_rep
    goto rxquantr372_loop
  rxquantr372_done:
    add $I11, rx370_pos, 1
    gt $I11, rx370_eos, rx370_fail
    substr $S10, rx370_tgt, rx370_pos, 1
    ne $S10, ucs4:"]", rx370_fail
    add rx370_pos, 1
    rx370_cur."!cursor_pass"(rx370_pos, 'backtrack'=>1)
    .return (rx370_cur)
  rx370_restart:
    repr_get_attr_obj rx370_cstack, rx370_cur, rx370_curclass, "$!cstack"
  rx370_fail:
    unless rx370_bstack, rx370_done
    pop $I19, rx370_bstack
    if_null rx370_cstack, rx370_cstack_done
    unless rx370_cstack, rx370_cstack_done
    dec $I19
    set $P11, rx370_cstack[$I19]
  rx370_cstack_done:
    pop rx370_rep, rx370_bstack
    pop rx370_pos, rx370_bstack
    pop $I19, rx370_bstack
    lt rx370_pos, -1, rx370_done
    lt rx370_pos, 0, rx370_fail
    eq $I19, 0, rx370_fail
    if_null rx370_cstack, rx370_jump
    elements $I18, rx370_bstack
    le $I18, 0, rx370_cut
    dec $I18
    set $I18, rx370_bstack[$I18]
  rx370_cut:
    assign rx370_cstack, $I18
  rx370_jump:
    jump $I19
  rx370_done:
    rx370_cur."!cursor_fail"()
    .return (rx370_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "93_1337965225.74_caps"  :subid("320_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 204
    new $P103, "Hash"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "93_1337965225.74_nfa"  :subid("321_1337965225.74")
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
.sub "_block1503"  :anon :subid("95_1337965225.74") :method :outer("98_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 204
    .const 'Sub' $P1508 = "94_1337965225.74" 
    capture_lex $P1508
    .lex unicode:"$\x{a2}", $P1506
    .local string rx375_tgt
    .local int rx375_pos
    .local int rx375_off
    .local int rx375_eos
    .local int rx375_rep
    .local pmc rx375_cur
    .local pmc rx375_curclass
    .local pmc rx375_bstack
    .local pmc rx375_cstack
    (rx375_cur, rx375_tgt, rx375_pos, rx375_curclass, rx375_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx375_cur
    length rx375_eos, rx375_tgt
    eq $I19, 1, rx375_restart
    repr_get_attr_int $I11, self, rx375_curclass, "$!from"
    ne $I11, -1, rxscan376_done
    goto rxscan376_scan
  rxscan376_loop:
    inc rx375_pos
    gt rx375_pos, rx375_eos, rx375_fail
    repr_bind_attr_int rx375_cur, rx375_curclass, "$!from", rx375_pos
  rxscan376_scan:
    nqp_rxmark rx375_bstack, rxscan376_loop, rx375_pos, 0
  rxscan376_done:
  alt377_0:
    nqp_rxmark rx375_bstack, alt377_1, rx375_pos, 0
    add $I11, rx375_pos, 1
    gt $I11, rx375_eos, rx375_fail
    substr $S10, rx375_tgt, rx375_pos, 1
    ne $S10, ucs4:"\\", rx375_fail
    add rx375_pos, 1
    repr_bind_attr_int rx375_cur, rx375_curclass, "$!pos", rx375_pos
    $P11 = rx375_cur."backslash"()
    repr_get_attr_int $I11, $P11, rx375_curclass, "$!pos"
    lt $I11, 0, rx375_fail
    nqp_rxmark rx375_bstack, rxsubrule378_pass, -1, 0
  rxsubrule378_pass:
    rx375_cstack = rx375_cur."!cursor_capture"($P11, "backslash")
    repr_get_attr_int rx375_pos, $P11, rx375_curclass, "$!pos"
    goto alt377_end
  alt377_1:
    .const 'Sub' $P1508 = "94_1337965225.74" 
    capture_lex $P1508
    repr_bind_attr_int rx375_cur, rx375_curclass, "$!pos", rx375_pos
    $P11 = rx375_cur.$P1508()
    repr_get_attr_int $I11, $P11, rx375_curclass, "$!pos"
    lt $I11, 0, rx375_fail
    nqp_rxmark rx375_bstack, rxsubrule382_pass, -1, 0
  rxsubrule382_pass:
    rx375_cstack = rx375_cur."!cursor_capture"($P11, 0)
    repr_get_attr_int rx375_pos, $P11, rx375_curclass, "$!pos"
  alt377_end:
    rx375_cur."!cursor_pass"(rx375_pos, 'backtrack'=>1)
    .return (rx375_cur)
  rx375_restart:
    repr_get_attr_obj rx375_cstack, rx375_cur, rx375_curclass, "$!cstack"
  rx375_fail:
    unless rx375_bstack, rx375_done
    pop $I19, rx375_bstack
    if_null rx375_cstack, rx375_cstack_done
    unless rx375_cstack, rx375_cstack_done
    dec $I19
    set $P11, rx375_cstack[$I19]
  rx375_cstack_done:
    pop rx375_rep, rx375_bstack
    pop rx375_pos, rx375_bstack
    pop $I19, rx375_bstack
    lt rx375_pos, -1, rx375_done
    lt rx375_pos, 0, rx375_fail
    eq $I19, 0, rx375_fail
    if_null rx375_cstack, rx375_jump
    elements $I18, rx375_bstack
    le $I18, 0, rx375_cut
    dec $I18
    set $I18, rx375_bstack[$I18]
  rx375_cut:
    assign rx375_cstack, $I18
  rx375_jump:
    jump $I19
  rx375_done:
    rx375_cur."!cursor_fail"()
    .return (rx375_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "95_1337965225.74_caps"  :subid("322_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 204
    new $P103, "Hash"
    set $P103["backslash"], 0
    set $P103["0"], 1
    .return ($P103)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "_block1507"  :anon :subid("94_1337965225.74") :method :outer("95_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 204
    .lex unicode:"$\x{a2}", $P1510
    .local string rx379_tgt
    .local int rx379_pos
    .local int rx379_off
    .local int rx379_eos
    .local int rx379_rep
    .local pmc rx379_cur
    .local pmc rx379_curclass
    .local pmc rx379_bstack
    .local pmc rx379_cstack
    (rx379_cur, rx379_tgt, rx379_pos, rx379_curclass, rx379_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx379_cur
    length rx379_eos, rx379_tgt
    eq $I19, 1, rx379_restart
    repr_get_attr_int $I11, self, rx379_curclass, "$!from"
    ne $I11, -1, rxscan380_done
    goto rxscan380_scan
  rxscan380_loop:
    inc rx379_pos
    gt rx379_pos, rx379_eos, rx379_fail
    repr_bind_attr_int rx379_cur, rx379_curclass, "$!from", rx379_pos
  rxscan380_scan:
    nqp_rxmark rx379_bstack, rxscan380_loop, rx379_pos, 0
  rxscan380_done:
    nqp_rxmark rx379_bstack, rxconj381_fail, rx379_pos, 0
    goto rxconj381_first
  rxconj381_fail:
    goto rx379_fail
  rxconj381_first:
    add $I11, rx379_pos, 1
    gt $I11, rx379_eos, rx379_fail
    substr $S10, rx379_tgt, rx379_pos, 1
    eq $S10, ucs4:"]", rx379_fail
    add rx379_pos, 1
    nqp_rxpeek $I19, rx379_bstack, rxconj381_fail
    inc $I19
    set $I11, rx379_bstack[$I19]
    nqp_rxmark rx379_bstack, rxconj381_fail, $I11, rx379_pos
    set rx379_pos, $I11
    add $I11, rx379_pos, 1
    gt $I11, rx379_eos, rx379_fail
    substr $S10, rx379_tgt, rx379_pos, 1
    eq $S10, ucs4:"\\", rx379_fail
    add rx379_pos, 1
    nqp_rxpeek $I19, rx379_bstack, rxconj381_fail
    inc $I19
    set $I11, rx379_bstack[$I19]
    inc $I19
    set $I12, rx379_bstack[$I19]
    ne rx379_pos, $I12, rx379_fail
    set rx379_pos, $I11
    ge rx379_pos, rx379_eos, rx379_fail
    add rx379_pos, 1
    rx379_cur."!cursor_pass"(rx379_pos, 'backtrack'=>1)
    .return (rx379_cur)
  rx379_restart:
    repr_get_attr_obj rx379_cstack, rx379_cur, rx379_curclass, "$!cstack"
  rx379_fail:
    unless rx379_bstack, rx379_done
    pop $I19, rx379_bstack
    if_null rx379_cstack, rx379_cstack_done
    unless rx379_cstack, rx379_cstack_done
    dec $I19
    set $P11, rx379_cstack[$I19]
  rx379_cstack_done:
    pop rx379_rep, rx379_bstack
    pop rx379_pos, rx379_bstack
    pop $I19, rx379_bstack
    lt rx379_pos, -1, rx379_done
    lt rx379_pos, 0, rx379_fail
    eq $I19, 0, rx379_fail
    if_null rx379_cstack, rx379_jump
    elements $I18, rx379_bstack
    le $I18, 0, rx379_cut
    dec $I18
    set $I18, rx379_bstack[$I18]
  rx379_cut:
    assign rx379_cstack, $I18
  rx379_jump:
    jump $I19
  rx379_done:
    rx379_cur."!cursor_fail"()
    .return (rx379_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "94_1337965225.74_caps"  :subid("323_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 204
    new $P103, "Hash"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "_block1511"  :anon :subid("97_1337965225.74") :method :outer("98_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 204
    .const 'Sub' $P1516 = "96_1337965225.74" 
    capture_lex $P1516
    .lex unicode:"$\x{a2}", $P1514
    .local string rx387_tgt
    .local int rx387_pos
    .local int rx387_off
    .local int rx387_eos
    .local int rx387_rep
    .local pmc rx387_cur
    .local pmc rx387_curclass
    .local pmc rx387_bstack
    .local pmc rx387_cstack
    (rx387_cur, rx387_tgt, rx387_pos, rx387_curclass, rx387_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx387_cur
    length rx387_eos, rx387_tgt
    eq $I19, 1, rx387_restart
    repr_get_attr_int $I11, self, rx387_curclass, "$!from"
    ne $I11, -1, rxscan388_done
    goto rxscan388_scan
  rxscan388_loop:
    inc rx387_pos
    gt rx387_pos, rx387_eos, rx387_fail
    repr_bind_attr_int rx387_cur, rx387_curclass, "$!from", rx387_pos
  rxscan388_scan:
    nqp_rxmark rx387_bstack, rxscan388_loop, rx387_pos, 0
  rxscan388_done:
  alt389_0:
    nqp_rxmark rx387_bstack, alt389_1, rx387_pos, 0
    add $I11, rx387_pos, 1
    gt $I11, rx387_eos, rx387_fail
    substr $S10, rx387_tgt, rx387_pos, 1
    ne $S10, ucs4:"\\", rx387_fail
    add rx387_pos, 1
    repr_bind_attr_int rx387_cur, rx387_curclass, "$!pos", rx387_pos
    $P11 = rx387_cur."backslash"()
    repr_get_attr_int $I11, $P11, rx387_curclass, "$!pos"
    lt $I11, 0, rx387_fail
    nqp_rxmark rx387_bstack, rxsubrule390_pass, -1, 0
  rxsubrule390_pass:
    rx387_cstack = rx387_cur."!cursor_capture"($P11, "backslash")
    repr_get_attr_int rx387_pos, $P11, rx387_curclass, "$!pos"
    goto alt389_end
  alt389_1:
    .const 'Sub' $P1516 = "96_1337965225.74" 
    capture_lex $P1516
    repr_bind_attr_int rx387_cur, rx387_curclass, "$!pos", rx387_pos
    $P11 = rx387_cur.$P1516()
    repr_get_attr_int $I11, $P11, rx387_curclass, "$!pos"
    lt $I11, 0, rx387_fail
    nqp_rxmark rx387_bstack, rxsubrule394_pass, -1, 0
  rxsubrule394_pass:
    rx387_cstack = rx387_cur."!cursor_capture"($P11, 0)
    repr_get_attr_int rx387_pos, $P11, rx387_curclass, "$!pos"
  alt389_end:
    rx387_cur."!cursor_pass"(rx387_pos, 'backtrack'=>1)
    .return (rx387_cur)
  rx387_restart:
    repr_get_attr_obj rx387_cstack, rx387_cur, rx387_curclass, "$!cstack"
  rx387_fail:
    unless rx387_bstack, rx387_done
    pop $I19, rx387_bstack
    if_null rx387_cstack, rx387_cstack_done
    unless rx387_cstack, rx387_cstack_done
    dec $I19
    set $P11, rx387_cstack[$I19]
  rx387_cstack_done:
    pop rx387_rep, rx387_bstack
    pop rx387_pos, rx387_bstack
    pop $I19, rx387_bstack
    lt rx387_pos, -1, rx387_done
    lt rx387_pos, 0, rx387_fail
    eq $I19, 0, rx387_fail
    if_null rx387_cstack, rx387_jump
    elements $I18, rx387_bstack
    le $I18, 0, rx387_cut
    dec $I18
    set $I18, rx387_bstack[$I18]
  rx387_cut:
    assign rx387_cstack, $I18
  rx387_jump:
    jump $I19
  rx387_done:
    rx387_cur."!cursor_fail"()
    .return (rx387_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "97_1337965225.74_caps"  :subid("324_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 204
    new $P103, "Hash"
    set $P103["backslash"], 0
    set $P103["0"], 1
    .return ($P103)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "_block1515"  :anon :subid("96_1337965225.74") :method :outer("97_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 204
    .lex unicode:"$\x{a2}", $P1518
    .local string rx391_tgt
    .local int rx391_pos
    .local int rx391_off
    .local int rx391_eos
    .local int rx391_rep
    .local pmc rx391_cur
    .local pmc rx391_curclass
    .local pmc rx391_bstack
    .local pmc rx391_cstack
    (rx391_cur, rx391_tgt, rx391_pos, rx391_curclass, rx391_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx391_cur
    length rx391_eos, rx391_tgt
    eq $I19, 1, rx391_restart
    repr_get_attr_int $I11, self, rx391_curclass, "$!from"
    ne $I11, -1, rxscan392_done
    goto rxscan392_scan
  rxscan392_loop:
    inc rx391_pos
    gt rx391_pos, rx391_eos, rx391_fail
    repr_bind_attr_int rx391_cur, rx391_curclass, "$!from", rx391_pos
  rxscan392_scan:
    nqp_rxmark rx391_bstack, rxscan392_loop, rx391_pos, 0
  rxscan392_done:
    nqp_rxmark rx391_bstack, rxconj393_fail, rx391_pos, 0
    goto rxconj393_first
  rxconj393_fail:
    goto rx391_fail
  rxconj393_first:
    add $I11, rx391_pos, 1
    gt $I11, rx391_eos, rx391_fail
    substr $S10, rx391_tgt, rx391_pos, 1
    eq $S10, ucs4:"]", rx391_fail
    add rx391_pos, 1
    nqp_rxpeek $I19, rx391_bstack, rxconj393_fail
    inc $I19
    set $I11, rx391_bstack[$I19]
    nqp_rxmark rx391_bstack, rxconj393_fail, $I11, rx391_pos
    set rx391_pos, $I11
    add $I11, rx391_pos, 1
    gt $I11, rx391_eos, rx391_fail
    substr $S10, rx391_tgt, rx391_pos, 1
    eq $S10, ucs4:"\\", rx391_fail
    add rx391_pos, 1
    nqp_rxpeek $I19, rx391_bstack, rxconj393_fail
    inc $I19
    set $I11, rx391_bstack[$I19]
    inc $I19
    set $I12, rx391_bstack[$I19]
    ne rx391_pos, $I12, rx391_fail
    set rx391_pos, $I11
    ge rx391_pos, rx391_eos, rx391_fail
    add rx391_pos, 1
    rx391_cur."!cursor_pass"(rx391_pos, 'backtrack'=>1)
    .return (rx391_cur)
  rx391_restart:
    repr_get_attr_obj rx391_cstack, rx391_cur, rx391_curclass, "$!cstack"
  rx391_fail:
    unless rx391_bstack, rx391_done
    pop $I19, rx391_bstack
    if_null rx391_cstack, rx391_cstack_done
    unless rx391_cstack, rx391_cstack_done
    dec $I19
    set $P11, rx391_cstack[$I19]
  rx391_cstack_done:
    pop rx391_rep, rx391_bstack
    pop rx391_pos, rx391_bstack
    pop $I19, rx391_bstack
    lt rx391_pos, -1, rx391_done
    lt rx391_pos, 0, rx391_fail
    eq $I19, 0, rx391_fail
    if_null rx391_cstack, rx391_jump
    elements $I18, rx391_bstack
    le $I18, 0, rx391_cut
    dec $I18
    set $I18, rx391_bstack[$I18]
  rx391_cut:
    assign rx391_cstack, $I18
  rx391_jump:
    jump $I19
  rx391_done:
    rx391_cur."!cursor_fail"()
    .return (rx391_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "96_1337965225.74_caps"  :subid("325_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 204
    new $P103, "Hash"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "mod_internal"  :subid("101_1337965225.74") :outer("162_1337965225.74")
    .param pmc param_1520
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 223
    .const 'Sub' $P1526 = "100_1337965225.74" 
    capture_lex $P1526
    .lex "self", param_1520
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1521
    .lex "$/", $P1522
    .local string rx406_tgt
    .local int rx406_pos
    .local int rx406_off
    .local int rx406_eos
    .local int rx406_rep
    .local pmc rx406_cur
    .local pmc rx406_curclass
    .local pmc rx406_bstack
    .local pmc rx406_cstack
    (rx406_cur, rx406_tgt, rx406_pos, rx406_curclass, rx406_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx406_cur
    length rx406_eos, rx406_tgt
    eq $I19, 1, rx406_restart
    repr_get_attr_int $I11, self, rx406_curclass, "$!from"
    ne $I11, -1, rxscan407_done
    goto rxscan407_scan
  rxscan407_loop:
    inc rx406_pos
    gt rx406_pos, rx406_eos, rx406_fail
    repr_bind_attr_int rx406_cur, rx406_curclass, "$!from", rx406_pos
  rxscan407_scan:
    nqp_rxmark rx406_bstack, rxscan407_loop, rx406_pos, 0
  rxscan407_done:
  alt408_0:
    nqp_rxmark rx406_bstack, alt408_1, rx406_pos, 0
    add $I11, rx406_pos, 1
    gt $I11, rx406_eos, rx406_fail
    substr $S10, rx406_tgt, rx406_pos, 1
    ne $S10, ucs4:":", rx406_fail
    add rx406_pos, 1
  # rx rxquantr409 ** 1..1
    nqp_rxmark rx406_bstack, rxquantr409_done, -1, 0
  rxquantr409_loop:
    .const 'Sub' $P1526 = "100_1337965225.74" 
    capture_lex $P1526
    repr_bind_attr_int rx406_cur, rx406_curclass, "$!pos", rx406_pos
    $P11 = rx406_cur.$P1526()
    repr_get_attr_int $I11, $P11, rx406_curclass, "$!pos"
    lt $I11, 0, rx406_fail
    goto rxsubrule414_pass
  rxsubrule414_back:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx406_curclass, "$!pos"
    lt $I11, 0, rx406_fail
  rxsubrule414_pass:
    rx406_cstack = rx406_cur."!cursor_capture"($P11, "n")
    set_addr $I11, rxsubrule414_back
    push rx406_bstack, $I11
    push rx406_bstack, 0
    push rx406_bstack, rx406_pos
    elements $I11, rx406_cstack
    push rx406_bstack, $I11
    repr_get_attr_int rx406_pos, $P11, rx406_curclass, "$!pos"
    nqp_rxpeek $I19, rx406_bstack, rxquantr409_done
    inc $I19
    inc $I19
    set rx406_rep, rx406_bstack[$I19]
    nqp_rxcommit rx406_bstack, rxquantr409_done
    inc rx406_rep
  rxquantr409_done:
    repr_bind_attr_int rx406_cur, rx406_curclass, "$!pos", rx406_pos
    $P11 = rx406_cur."mod_ident"()
    repr_get_attr_int $I11, $P11, rx406_curclass, "$!pos"
    lt $I11, 0, rx406_fail
    nqp_rxmark rx406_bstack, rxsubrule415_pass, -1, 0
  rxsubrule415_pass:
    rx406_cstack = rx406_cur."!cursor_capture"($P11, "mod_ident")
    repr_get_attr_int rx406_pos, $P11, rx406_curclass, "$!pos"
    le rx406_pos, 0, rx406_fail
    is_cclass $I11, .CCLASS_WORD, rx406_tgt, rx406_pos
    if $I11, rx406_fail
    sub $I11, rx406_pos, 1
    is_cclass $I11, .CCLASS_WORD, rx406_tgt, $I11
    unless $I11, rx406_fail
    goto alt408_end
  alt408_1:
    add $I11, rx406_pos, 1
    gt $I11, rx406_eos, rx406_fail
    substr $S10, rx406_tgt, rx406_pos, 1
    ne $S10, ucs4:":", rx406_fail
    add rx406_pos, 1
    repr_bind_attr_int rx406_cur, rx406_curclass, "$!pos", rx406_pos
    $P11 = rx406_cur."mod_ident"()
    repr_get_attr_int $I11, $P11, rx406_curclass, "$!pos"
    lt $I11, 0, rx406_fail
    nqp_rxmark rx406_bstack, rxsubrule417_pass, -1, 0
  rxsubrule417_pass:
    rx406_cstack = rx406_cur."!cursor_capture"($P11, "mod_ident")
    repr_get_attr_int rx406_pos, $P11, rx406_curclass, "$!pos"
  # rx rxquantr418 ** 0..1
    nqp_rxmark rx406_bstack, rxquantr418_done, rx406_pos, 0
  rxquantr418_loop:
    add $I11, rx406_pos, 1
    gt $I11, rx406_eos, rx406_fail
    substr $S10, rx406_tgt, rx406_pos, 1
    ne $S10, ucs4:"(", rx406_fail
    add rx406_pos, 1
    nqp_rxmark rx406_bstack, rxcap419_fail, rx406_pos, 0
  # rx rxquantr420 ** 1..-1
    nqp_rxmark rx406_bstack, rxquantr420_done, -1, 0
  rxquantr420_loop:
    ge rx406_pos, rx406_eos, rx406_fail
    is_cclass $I11, .CCLASS_NUMERIC, rx406_tgt, rx406_pos
    unless $I11, rx406_fail
    add rx406_pos, 1
    nqp_rxpeek $I19, rx406_bstack, rxquantr420_done
    inc $I19
    inc $I19
    set rx406_rep, rx406_bstack[$I19]
    nqp_rxcommit rx406_bstack, rxquantr420_done
    inc rx406_rep
    nqp_rxmark rx406_bstack, rxquantr420_done, rx406_pos, rx406_rep
    goto rxquantr420_loop
  rxquantr420_done:
    nqp_rxpeek $I19, rx406_bstack, rxcap419_fail
    inc $I19
    set $I11, rx406_bstack[$I19]
    $P11 = rx406_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx406_pos)
    rx406_cstack = rx406_cur."!cursor_capture"($P11, "n")
    goto rxcap419_done
  rxcap419_fail:
    goto rx406_fail
  rxcap419_done:
    add $I11, rx406_pos, 1
    gt $I11, rx406_eos, rx406_fail
    substr $S10, rx406_tgt, rx406_pos, 1
    ne $S10, ucs4:")", rx406_fail
    add rx406_pos, 1
    nqp_rxpeek $I19, rx406_bstack, rxquantr418_done
    inc $I19
    inc $I19
    set rx406_rep, rx406_bstack[$I19]
    nqp_rxcommit rx406_bstack, rxquantr418_done
    inc rx406_rep
  rxquantr418_done:
  alt408_end:
    rx406_cur."!cursor_pass"(rx406_pos, "mod_internal", 'backtrack'=>1)
    .return (rx406_cur)
  rx406_restart:
    repr_get_attr_obj rx406_cstack, rx406_cur, rx406_curclass, "$!cstack"
  rx406_fail:
    unless rx406_bstack, rx406_done
    pop $I19, rx406_bstack
    if_null rx406_cstack, rx406_cstack_done
    unless rx406_cstack, rx406_cstack_done
    dec $I19
    set $P11, rx406_cstack[$I19]
  rx406_cstack_done:
    pop rx406_rep, rx406_bstack
    pop rx406_pos, rx406_bstack
    pop $I19, rx406_bstack
    lt rx406_pos, -1, rx406_done
    lt rx406_pos, 0, rx406_fail
    eq $I19, 0, rx406_fail
    if_null rx406_cstack, rx406_jump
    elements $I18, rx406_bstack
    le $I18, 0, rx406_cut
    dec $I18
    set $I18, rx406_bstack[$I18]
  rx406_cut:
    assign rx406_cstack, $I18
  rx406_jump:
    jump $I19
  rx406_done:
    rx406_cur."!cursor_fail"()
    .return (rx406_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "101_1337965225.74_caps"  :subid("326_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 223
    new $P103, "Hash"
    set $P103["n"], 2
    set $P103["mod_ident"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "101_1337965225.74_nfa"  :subid("327_1337965225.74")
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
.sub "_block1525"  :anon :subid("100_1337965225.74") :method :outer("101_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 223
    .lex unicode:"$\x{a2}", $P1529
    .local string rx410_tgt
    .local int rx410_pos
    .local int rx410_off
    .local int rx410_eos
    .local int rx410_rep
    .local pmc rx410_cur
    .local pmc rx410_curclass
    .local pmc rx410_bstack
    .local pmc rx410_cstack
    (rx410_cur, rx410_tgt, rx410_pos, rx410_curclass, rx410_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx410_cur
    length rx410_eos, rx410_tgt
    eq $I19, 1, rx410_restart
    repr_get_attr_int $I11, self, rx410_curclass, "$!from"
    ne $I11, -1, rxscan411_done
    goto rxscan411_scan
  rxscan411_loop:
    inc rx410_pos
    gt rx410_pos, rx410_eos, rx410_fail
    repr_bind_attr_int rx410_cur, rx410_curclass, "$!from", rx410_pos
  rxscan411_scan:
    nqp_rxmark rx410_bstack, rxscan411_loop, rx410_pos, 0
  rxscan411_done:
  alt412_0:
    nqp_rxmark rx410_bstack, alt412_1, rx410_pos, 0
    add $I11, rx410_pos, 1
    gt $I11, rx410_eos, rx410_fail
    substr $S10, rx410_tgt, rx410_pos, 1
    ne $S10, ucs4:"!", rx410_fail
    add rx410_pos, 1
    goto alt412_end
  alt412_1:
  # rx rxquantr413 ** 1..-1
    nqp_rxmark rx410_bstack, rxquantr413_done, -1, 0
  rxquantr413_loop:
    ge rx410_pos, rx410_eos, rx410_fail
    is_cclass $I11, .CCLASS_NUMERIC, rx410_tgt, rx410_pos
    unless $I11, rx410_fail
    add rx410_pos, 1
    nqp_rxpeek $I19, rx410_bstack, rxquantr413_done
    inc $I19
    inc $I19
    set rx410_rep, rx410_bstack[$I19]
    nqp_rxcommit rx410_bstack, rxquantr413_done
    inc rx410_rep
    nqp_rxmark rx410_bstack, rxquantr413_done, rx410_pos, rx410_rep
    goto rxquantr413_loop
  rxquantr413_done:
  alt412_end:
    rx410_cur."!cursor_pass"(rx410_pos, 'backtrack'=>1)
    .return (rx410_cur)
  rx410_restart:
    repr_get_attr_obj rx410_cstack, rx410_cur, rx410_curclass, "$!cstack"
  rx410_fail:
    unless rx410_bstack, rx410_done
    pop $I19, rx410_bstack
    if_null rx410_cstack, rx410_cstack_done
    unless rx410_cstack, rx410_cstack_done
    dec $I19
    set $P11, rx410_cstack[$I19]
  rx410_cstack_done:
    pop rx410_rep, rx410_bstack
    pop rx410_pos, rx410_bstack
    pop $I19, rx410_bstack
    lt rx410_pos, -1, rx410_done
    lt rx410_pos, 0, rx410_fail
    eq $I19, 0, rx410_fail
    if_null rx410_cstack, rx410_jump
    elements $I18, rx410_bstack
    le $I18, 0, rx410_cut
    dec $I18
    set $I18, rx410_bstack[$I18]
  rx410_cut:
    assign rx410_cstack, $I18
  rx410_jump:
    jump $I19
  rx410_done:
    rx410_cur."!cursor_fail"()
    .return (rx410_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "100_1337965225.74_caps"  :subid("328_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 223
    new $P103, "Hash"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "100_1337965225.74_nfa"  :subid("329_1337965225.74")
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
.sub "mod_ident"  :subid("102_1337965225.74")
    .param pmc param_1531
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 230
    .lex "self", param_1531
    $P101 = param_1531."!protoregex"("mod_ident")
    .return ($P101)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<ignorecase>"  :subid("103_1337965225.74") :outer("162_1337965225.74")
    .param pmc param_1533
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 231
    .lex "self", param_1533
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1534
    .lex "$/", $P1535
    .local string rx421_tgt
    .local int rx421_pos
    .local int rx421_off
    .local int rx421_eos
    .local int rx421_rep
    .local pmc rx421_cur
    .local pmc rx421_curclass
    .local pmc rx421_bstack
    .local pmc rx421_cstack
    (rx421_cur, rx421_tgt, rx421_pos, rx421_curclass, rx421_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx421_cur
    length rx421_eos, rx421_tgt
    eq $I19, 1, rx421_restart
    repr_get_attr_int $I11, self, rx421_curclass, "$!from"
    ne $I11, -1, rxscan422_done
    goto rxscan422_scan
  rxscan422_loop:
    inc rx421_pos
    gt rx421_pos, rx421_eos, rx421_fail
    repr_bind_attr_int rx421_cur, rx421_curclass, "$!from", rx421_pos
  rxscan422_scan:
    nqp_rxmark rx421_bstack, rxscan422_loop, rx421_pos, 0
  rxscan422_done:
    nqp_rxmark rx421_bstack, rxcap423_fail, rx421_pos, 0
    add $I11, rx421_pos, 1
    gt $I11, rx421_eos, rx421_fail
    substr $S10, rx421_tgt, rx421_pos, 1
    ne $S10, ucs4:"i", rx421_fail
    add rx421_pos, 1
    nqp_rxpeek $I19, rx421_bstack, rxcap423_fail
    inc $I19
    set $I11, rx421_bstack[$I19]
    $P11 = rx421_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx421_pos)
    rx421_cstack = rx421_cur."!cursor_capture"($P11, "sym")
    goto rxcap423_done
  rxcap423_fail:
    goto rx421_fail
  rxcap423_done:
  # rx rxquantr424 ** 0..1
    nqp_rxmark rx421_bstack, rxquantr424_done, rx421_pos, 0
  rxquantr424_loop:
    add $I11, rx421_pos, 9
    gt $I11, rx421_eos, rx421_fail
    substr $S10, rx421_tgt, rx421_pos, 9
    ne $S10, ucs4:"gnorecase", rx421_fail
    add rx421_pos, 9
    nqp_rxpeek $I19, rx421_bstack, rxquantr424_done
    inc $I19
    inc $I19
    set rx421_rep, rx421_bstack[$I19]
    nqp_rxcommit rx421_bstack, rxquantr424_done
    inc rx421_rep
  rxquantr424_done:
    rx421_cur."!cursor_pass"(rx421_pos, "mod_ident:sym<ignorecase>", 'backtrack'=>1)
    .return (rx421_cur)
  rx421_restart:
    repr_get_attr_obj rx421_cstack, rx421_cur, rx421_curclass, "$!cstack"
  rx421_fail:
    unless rx421_bstack, rx421_done
    pop $I19, rx421_bstack
    if_null rx421_cstack, rx421_cstack_done
    unless rx421_cstack, rx421_cstack_done
    dec $I19
    set $P11, rx421_cstack[$I19]
  rx421_cstack_done:
    pop rx421_rep, rx421_bstack
    pop rx421_pos, rx421_bstack
    pop $I19, rx421_bstack
    lt rx421_pos, -1, rx421_done
    lt rx421_pos, 0, rx421_fail
    eq $I19, 0, rx421_fail
    if_null rx421_cstack, rx421_jump
    elements $I18, rx421_bstack
    le $I18, 0, rx421_cut
    dec $I18
    set $I18, rx421_bstack[$I18]
  rx421_cut:
    assign rx421_cstack, $I18
  rx421_jump:
    jump $I19
  rx421_done:
    rx421_cur."!cursor_fail"()
    .return (rx421_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "103_1337965225.74_caps"  :subid("330_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 231
    new $P103, "Hash"
    set $P103["sym"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "103_1337965225.74_nfa"  :subid("331_1337965225.74")
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
.sub "mod_ident:sym<ratchet>"  :subid("104_1337965225.74") :outer("162_1337965225.74")
    .param pmc param_1539
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 232
    .lex "self", param_1539
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1540
    .lex "$/", $P1541
    .local string rx425_tgt
    .local int rx425_pos
    .local int rx425_off
    .local int rx425_eos
    .local int rx425_rep
    .local pmc rx425_cur
    .local pmc rx425_curclass
    .local pmc rx425_bstack
    .local pmc rx425_cstack
    (rx425_cur, rx425_tgt, rx425_pos, rx425_curclass, rx425_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx425_cur
    length rx425_eos, rx425_tgt
    eq $I19, 1, rx425_restart
    repr_get_attr_int $I11, self, rx425_curclass, "$!from"
    ne $I11, -1, rxscan426_done
    goto rxscan426_scan
  rxscan426_loop:
    inc rx425_pos
    gt rx425_pos, rx425_eos, rx425_fail
    repr_bind_attr_int rx425_cur, rx425_curclass, "$!from", rx425_pos
  rxscan426_scan:
    nqp_rxmark rx425_bstack, rxscan426_loop, rx425_pos, 0
  rxscan426_done:
    nqp_rxmark rx425_bstack, rxcap427_fail, rx425_pos, 0
    add $I11, rx425_pos, 1
    gt $I11, rx425_eos, rx425_fail
    substr $S10, rx425_tgt, rx425_pos, 1
    ne $S10, ucs4:"r", rx425_fail
    add rx425_pos, 1
    nqp_rxpeek $I19, rx425_bstack, rxcap427_fail
    inc $I19
    set $I11, rx425_bstack[$I19]
    $P11 = rx425_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx425_pos)
    rx425_cstack = rx425_cur."!cursor_capture"($P11, "sym")
    goto rxcap427_done
  rxcap427_fail:
    goto rx425_fail
  rxcap427_done:
  # rx rxquantr428 ** 0..1
    nqp_rxmark rx425_bstack, rxquantr428_done, rx425_pos, 0
  rxquantr428_loop:
    add $I11, rx425_pos, 6
    gt $I11, rx425_eos, rx425_fail
    substr $S10, rx425_tgt, rx425_pos, 6
    ne $S10, ucs4:"atchet", rx425_fail
    add rx425_pos, 6
    nqp_rxpeek $I19, rx425_bstack, rxquantr428_done
    inc $I19
    inc $I19
    set rx425_rep, rx425_bstack[$I19]
    nqp_rxcommit rx425_bstack, rxquantr428_done
    inc rx425_rep
  rxquantr428_done:
    rx425_cur."!cursor_pass"(rx425_pos, "mod_ident:sym<ratchet>", 'backtrack'=>1)
    .return (rx425_cur)
  rx425_restart:
    repr_get_attr_obj rx425_cstack, rx425_cur, rx425_curclass, "$!cstack"
  rx425_fail:
    unless rx425_bstack, rx425_done
    pop $I19, rx425_bstack
    if_null rx425_cstack, rx425_cstack_done
    unless rx425_cstack, rx425_cstack_done
    dec $I19
    set $P11, rx425_cstack[$I19]
  rx425_cstack_done:
    pop rx425_rep, rx425_bstack
    pop rx425_pos, rx425_bstack
    pop $I19, rx425_bstack
    lt rx425_pos, -1, rx425_done
    lt rx425_pos, 0, rx425_fail
    eq $I19, 0, rx425_fail
    if_null rx425_cstack, rx425_jump
    elements $I18, rx425_bstack
    le $I18, 0, rx425_cut
    dec $I18
    set $I18, rx425_bstack[$I18]
  rx425_cut:
    assign rx425_cstack, $I18
  rx425_jump:
    jump $I19
  rx425_done:
    rx425_cur."!cursor_fail"()
    .return (rx425_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "104_1337965225.74_caps"  :subid("332_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 232
    new $P103, "Hash"
    set $P103["sym"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "104_1337965225.74_nfa"  :subid("333_1337965225.74")
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
.sub "mod_ident:sym<sigspace>"  :subid("105_1337965225.74") :outer("162_1337965225.74")
    .param pmc param_1545
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 233
    .lex "self", param_1545
    .local pmc self
    find_lex $P101, "self"
    set self, $P101
    .lex unicode:"$\x{a2}", $P1546
    .lex "$/", $P1547
    .local string rx429_tgt
    .local int rx429_pos
    .local int rx429_off
    .local int rx429_eos
    .local int rx429_rep
    .local pmc rx429_cur
    .local pmc rx429_curclass
    .local pmc rx429_bstack
    .local pmc rx429_cstack
    (rx429_cur, rx429_tgt, rx429_pos, rx429_curclass, rx429_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx429_cur
    length rx429_eos, rx429_tgt
    eq $I19, 1, rx429_restart
    repr_get_attr_int $I11, self, rx429_curclass, "$!from"
    ne $I11, -1, rxscan430_done
    goto rxscan430_scan
  rxscan430_loop:
    inc rx429_pos
    gt rx429_pos, rx429_eos, rx429_fail
    repr_bind_attr_int rx429_cur, rx429_curclass, "$!from", rx429_pos
  rxscan430_scan:
    nqp_rxmark rx429_bstack, rxscan430_loop, rx429_pos, 0
  rxscan430_done:
    nqp_rxmark rx429_bstack, rxcap431_fail, rx429_pos, 0
    add $I11, rx429_pos, 1
    gt $I11, rx429_eos, rx429_fail
    substr $S10, rx429_tgt, rx429_pos, 1
    ne $S10, ucs4:"s", rx429_fail
    add rx429_pos, 1
    nqp_rxpeek $I19, rx429_bstack, rxcap431_fail
    inc $I19
    set $I11, rx429_bstack[$I19]
    $P11 = rx429_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx429_pos)
    rx429_cstack = rx429_cur."!cursor_capture"($P11, "sym")
    goto rxcap431_done
  rxcap431_fail:
    goto rx429_fail
  rxcap431_done:
  # rx rxquantr432 ** 0..1
    nqp_rxmark rx429_bstack, rxquantr432_done, rx429_pos, 0
  rxquantr432_loop:
    add $I11, rx429_pos, 7
    gt $I11, rx429_eos, rx429_fail
    substr $S10, rx429_tgt, rx429_pos, 7
    ne $S10, ucs4:"igspace", rx429_fail
    add rx429_pos, 7
    nqp_rxpeek $I19, rx429_bstack, rxquantr432_done
    inc $I19
    inc $I19
    set rx429_rep, rx429_bstack[$I19]
    nqp_rxcommit rx429_bstack, rxquantr432_done
    inc rx429_rep
  rxquantr432_done:
    rx429_cur."!cursor_pass"(rx429_pos, "mod_ident:sym<sigspace>", 'backtrack'=>1)
    .return (rx429_cur)
  rx429_restart:
    repr_get_attr_obj rx429_cstack, rx429_cur, rx429_curclass, "$!cstack"
  rx429_fail:
    unless rx429_bstack, rx429_done
    pop $I19, rx429_bstack
    if_null rx429_cstack, rx429_cstack_done
    unless rx429_cstack, rx429_cstack_done
    dec $I19
    set $P11, rx429_cstack[$I19]
  rx429_cstack_done:
    pop rx429_rep, rx429_bstack
    pop rx429_pos, rx429_bstack
    pop $I19, rx429_bstack
    lt rx429_pos, -1, rx429_done
    lt rx429_pos, 0, rx429_fail
    eq $I19, 0, rx429_fail
    if_null rx429_cstack, rx429_jump
    elements $I18, rx429_bstack
    le $I18, 0, rx429_cut
    dec $I18
    set $I18, rx429_bstack[$I18]
  rx429_cut:
    assign rx429_cstack, $I18
  rx429_jump:
    jump $I19
  rx429_done:
    rx429_cur."!cursor_fail"()
    .return (rx429_cur)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "105_1337965225.74_caps"  :subid("334_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 233
    new $P103, "Hash"
    set $P103["sym"], 0
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Sub"]
.sub "105_1337965225.74_nfa"  :subid("335_1337965225.74")
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
.sub "_block1550"  :subid("336_1337965225.74") :outer("160_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 237
    .const 'Sub' $P2204 = "159_1337965225.74" 
    capture_lex $P2204
    .const 'Sub' $P2199 = "158_1337965225.74" 
    capture_lex $P2199
    .const 'Sub' $P2188 = "157_1337965225.74" 
    capture_lex $P2188
    .const 'Sub' $P2090 = "156_1337965225.74" 
    capture_lex $P2090
    .const 'Sub' $P2081 = "155_1337965225.74" 
    capture_lex $P2081
    .const 'Sub' $P2074 = "154_1337965225.74" 
    capture_lex $P2074
    .const 'Sub' $P2056 = "153_1337965225.74" 
    capture_lex $P2056
    .const 'Sub' $P2022 = "152_1337965225.74" 
    capture_lex $P2022
    .const 'Sub' $P2017 = "151_1337965225.74" 
    capture_lex $P2017
    .const 'Sub' $P2009 = "150_1337965225.74" 
    capture_lex $P2009
    .const 'Sub' $P2002 = "149_1337965225.74" 
    capture_lex $P2002
    .const 'Sub' $P1995 = "148_1337965225.74" 
    capture_lex $P1995
    .const 'Sub' $P1991 = "147_1337965225.74" 
    capture_lex $P1991
    .const 'Sub' $P1987 = "146_1337965225.74" 
    capture_lex $P1987
    .const 'Sub' $P1977 = "145_1337965225.74" 
    capture_lex $P1977
    .const 'Sub' $P1967 = "144_1337965225.74" 
    capture_lex $P1967
    .const 'Sub' $P1962 = "143_1337965225.74" 
    capture_lex $P1962
    .const 'Sub' $P1957 = "142_1337965225.74" 
    capture_lex $P1957
    .const 'Sub' $P1952 = "141_1337965225.74" 
    capture_lex $P1952
    .const 'Sub' $P1947 = "140_1337965225.74" 
    capture_lex $P1947
    .const 'Sub' $P1942 = "139_1337965225.74" 
    capture_lex $P1942
    .const 'Sub' $P1937 = "138_1337965225.74" 
    capture_lex $P1937
    .const 'Sub' $P1932 = "137_1337965225.74" 
    capture_lex $P1932
    .const 'Sub' $P1925 = "136_1337965225.74" 
    capture_lex $P1925
    .const 'Sub' $P1919 = "135_1337965225.74" 
    capture_lex $P1919
    .const 'Sub' $P1901 = "134_1337965225.74" 
    capture_lex $P1901
    .const 'Sub' $P1897 = "133_1337965225.74" 
    capture_lex $P1897
    .const 'Sub' $P1893 = "132_1337965225.74" 
    capture_lex $P1893
    .const 'Sub' $P1890 = "131_1337965225.74" 
    capture_lex $P1890
    .const 'Sub' $P1887 = "130_1337965225.74" 
    capture_lex $P1887
    .const 'Sub' $P1884 = "129_1337965225.74" 
    capture_lex $P1884
    .const 'Sub' $P1881 = "128_1337965225.74" 
    capture_lex $P1881
    .const 'Sub' $P1878 = "127_1337965225.74" 
    capture_lex $P1878
    .const 'Sub' $P1875 = "126_1337965225.74" 
    capture_lex $P1875
    .const 'Sub' $P1872 = "125_1337965225.74" 
    capture_lex $P1872
    .const 'Sub' $P1864 = "124_1337965225.74" 
    capture_lex $P1864
    .const 'Sub' $P1856 = "123_1337965225.74" 
    capture_lex $P1856
    .const 'Sub' $P1849 = "122_1337965225.74" 
    capture_lex $P1849
    .const 'Sub' $P1845 = "121_1337965225.74" 
    capture_lex $P1845
    .const 'Sub' $P1840 = "120_1337965225.74" 
    capture_lex $P1840
    .const 'Sub' $P1826 = "119_1337965225.74" 
    capture_lex $P1826
    .const 'Sub' $P1821 = "118_1337965225.74" 
    capture_lex $P1821
    .const 'Sub' $P1816 = "117_1337965225.74" 
    capture_lex $P1816
    .const 'Sub' $P1811 = "116_1337965225.74" 
    capture_lex $P1811
    .const 'Sub' $P1801 = "115_1337965225.74" 
    capture_lex $P1801
    .const 'Sub' $P1797 = "114_1337965225.74" 
    capture_lex $P1797
    .const 'Sub' $P1768 = "113_1337965225.74" 
    capture_lex $P1768
    .const 'Sub' $P1746 = "112_1337965225.74" 
    capture_lex $P1746
    .const 'Sub' $P1733 = "111_1337965225.74" 
    capture_lex $P1733
    .const 'Sub' $P1720 = "110_1337965225.74" 
    capture_lex $P1720
    .const 'Sub' $P1707 = "109_1337965225.74" 
    capture_lex $P1707
    .const 'Sub' $P1694 = "108_1337965225.74" 
    capture_lex $P1694
    .const 'Sub' $P1690 = "107_1337965225.74" 
    capture_lex $P1690
    .const 'Sub' $P1686 = "106_1337965225.74" 
    capture_lex $P1686
    .const 'Sub' $P1584 = "341_1337965225.74" 
    capture_lex $P1584
    .const 'Sub' $P1563 = "338_1337965225.74" 
    capture_lex $P1563
    .const 'Sub' $P1553 = "337_1337965225.74" 
    capture_lex $P1553
.annotate 'line', 728
    .const 'Sub' $P1553 = "337_1337965225.74" 
    newclosure $P1561, $P1553
    set $P1552, $P1561
    .lex "backmod", $P1552
.annotate 'line', 735
    .const 'Sub' $P1563 = "338_1337965225.74" 
    newclosure $P1582, $P1563
    set $P1562, $P1582
    .lex "buildsub", $P1562
.annotate 'line', 237
    set $P114, $P1562
    find_lex $P115, "$?PACKAGE"
    get_who $P116, $P115
    set $P116["buildsub"], $P114
.annotate 'line', 773
    .const 'Sub' $P1584 = "341_1337965225.74" 
    newclosure $P1683, $P1584
    set $P1583, $P1683
    .lex "capnames", $P1583
.annotate 'line', 237
    .lex "$?PACKAGE", $P1684
    .lex "$?CLASS", $P1685
    set $P118, $P1552
    set $P118, $P1562
    set $P118, $P1583
.annotate 'line', 827
    .const 'Sub' $P2204 = "159_1337965225.74" 
    newclosure $P2229, $P2204
.annotate 'line', 237
    .return ($P2229)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "backmod"  :subid("337_1337965225.74") :outer("336_1337965225.74")
    .param pmc param_1554
    .param pmc param_1555
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 728
    .lex "$ast", param_1554
    .lex "$backmod", param_1555
.annotate 'line', 729
    set $P101, param_1555
    unless_null $P101, vivify_385
    new $P101, "Undef"
  vivify_385:
    set $S100, $P101
    iseq $I100, $S100, ":"
    if $I100, if_1556
.annotate 'line', 730
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
.annotate 'line', 731
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
.annotate 'line', 730
    set $P106, param_1554
    unless_null $P106, vivify_391
    new $P106, "Undef"
  vivify_391:
    $P106."backtrack"("f")
  if_1557_end:
    goto if_1556_end
  if_1556:
.annotate 'line', 729
    set $P103, param_1554
    unless_null $P103, vivify_392
    new $P103, "Undef"
  vivify_392:
    $P103."backtrack"("r")
  if_1556_end:
.annotate 'line', 728
    set $P101, param_1554
    unless_null $P101, vivify_393
    new $P101, "Undef"
  vivify_393:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "buildsub"  :subid("338_1337965225.74") :outer("336_1337965225.74")
    .param pmc param_1564
    .param pmc param_1565 :optional
    .param int has_param_1565 :opt_flag
    .param pmc param_1566 :optional :named("anon")
    .param int has_param_1566 :opt_flag
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 735
    .const 'Sub' $P1578 = "340_1337965225.74" 
    capture_lex $P1578
    .const 'Sub' $P1572 = "339_1337965225.74" 
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
.annotate 'line', 736
    new $P109, "Undef"
    set $P1567, $P109
    .lex "$hashpast", $P1567
.annotate 'line', 744
    new $P110, "Undef"
    set $P1568, $P110
    .lex "$initpast", $P1568
.annotate 'line', 745
    new $P111, "Undef"
    set $P1569, $P111
    .lex "$capblock", $P1569
.annotate 'line', 749
    new $P112, "Undef"
    set $P1570, $P112
    .lex "$nfapast", $P1570
.annotate 'line', 736
    get_hll_global $P113, "GLOBAL"
    nqp_get_package_through_who $P114, $P113, "PAST"
    get_who $P115, $P114
    set $P116, $P115["Op"]
    $P117 = $P116."new"("hash" :named("pasttype"))
    set $P1567, $P117
.annotate 'line', 737
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
    .const 'Sub' $P1572 = "339_1337965225.74" 
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
.annotate 'line', 744
    get_hll_global $P113, "GLOBAL"
    nqp_get_package_through_who $P114, $P113, "PAST"
    get_who $P115, $P114
    set $P116, $P115["Stmts"]
    $P117 = $P116."new"()
    set $P1568, $P117
.annotate 'line', 745
    get_hll_global $P113, "GLOBAL"
    nqp_get_package_through_who $P114, $P113, "PAST"
    get_who $P115, $P114
    set $P116, $P115["Block"]
    new $P117, "ResizablePMCArray"
    push $P117, "Sub"
.annotate 'line', 746
    set $P118, param_1565
    unless_null $P118, vivify_404
    new $P118, "Undef"
  vivify_404:
    $P119 = $P118."subid"()
    concat $P120, $P119, "_caps"
.annotate 'line', 745
    set $P121, $P1567
    unless_null $P121, vivify_405
    new $P121, "Undef"
  vivify_405:
    $P122 = $P116."new"($P121, "nqp" :named("hll"), $P117 :named("namespace"), 0 :named("lexical"), $P120 :named("name"))
    set $P1569, $P122
.annotate 'line', 747
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
.annotate 'line', 749
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
.annotate 'line', 750
    set $P113, $P1570
    unless_null $P113, vivify_409
    new $P113, "Undef"
  vivify_409:
    unless $P113, if_1576_end
    .const 'Sub' $P1578 = "340_1337965225.74" 
    capture_lex $P1578
    $P1578()
  if_1576_end:
.annotate 'line', 757
    set $P113, param_1565
    unless_null $P113, vivify_414
    new $P113, "Undef"
  vivify_414:
    $P114 = $P113."symbol"(unicode:"$\x{a2}")
    if $P114, unless_1580_end
.annotate 'line', 758
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
.annotate 'line', 759
    set $P115, param_1565
    unless_null $P115, vivify_416
    new $P115, "Undef"
  vivify_416:
    $P115."symbol"(unicode:"$\x{a2}", "lexical" :named("scope"))
  unless_1580_end:
.annotate 'line', 762
    get_hll_global $P113, "GLOBAL"
    nqp_get_package_through_who $P114, $P113, "QAST"
    get_who $P115, $P114
    set $P116, $P115["Regex"]
.annotate 'line', 763
    get_hll_global $P117, "GLOBAL"
    nqp_get_package_through_who $P118, $P117, "QAST"
    get_who $P119, $P118
    set $P120, $P119["Regex"]
    $P121 = $P120."new"("scan" :named("rxtype"))
    set $P122, param_1564
    unless_null $P122, vivify_417
    new $P122, "Undef"
  vivify_417:
.annotate 'line', 765
    set $P124, param_1566
    unless_null $P124, vivify_418
    new $P124, "Undef"
  vivify_418:
    if $P124, if_1581
.annotate 'line', 767
    get_hll_global $P130, "GLOBAL"
    nqp_get_package_through_who $P131, $P130, "QAST"
    get_who $P132, $P131
    set $P133, $P132["Regex"]
    find_dynamic_lex $P136, "%*RX"
    unless_null $P136, vivify_419
    get_hll_global $P134, "GLOBAL"
    get_who $P135, $P134
    set $P136, $P135["%RX"]
    unless_null $P136, vivify_420
    die "Contextual %*RX not found"
  vivify_420:
  vivify_419:
    set $P137, $P136["name"]
    unless_null $P137, vivify_421
    new $P137, "Undef"
  vivify_421:
    $P138 = $P133."new"("pass" :named("rxtype"), $P137 :named("name"))
    set $P123, $P138
.annotate 'line', 765
    goto if_1581_end
  if_1581:
.annotate 'line', 766
    get_hll_global $P125, "GLOBAL"
    nqp_get_package_through_who $P126, $P125, "QAST"
    get_who $P127, $P126
    set $P128, $P127["Regex"]
    $P129 = $P128."new"("pass" :named("rxtype"))
    set $P123, $P129
  if_1581_end:
.annotate 'line', 765
    $P139 = $P116."new"($P121, $P122, $P123, "concat" :named("rxtype"))
.annotate 'line', 762
    set param_1564, $P139
.annotate 'line', 768
    set $P113, param_1565
    unless_null $P113, vivify_422
    new $P113, "Undef"
  vivify_422:
    set $P114, $P1568
    unless_null $P114, vivify_423
    new $P114, "Undef"
  vivify_423:
    $P113."push"($P114)
.annotate 'line', 769
    set $P113, param_1565
    unless_null $P113, vivify_424
    new $P113, "Undef"
  vivify_424:
    get_hll_global $P114, "GLOBAL"
    nqp_get_package_through_who $P115, $P114, "PAST"
    get_who $P116, $P115
    set $P117, $P116["QAST"]
    set $P118, param_1564
    unless_null $P118, vivify_425
    new $P118, "Undef"
  vivify_425:
    $P119 = $P117."new"($P118)
    $P113."push"($P119)
.annotate 'line', 735
    set $P113, param_1565
    unless_null $P113, vivify_426
    new $P113, "Undef"
  vivify_426:
    .return ($P113)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "_block1571"  :anon :subid("339_1337965225.74") :outer("338_1337965225.74")
    .param pmc param_1573
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 737
    .lex "$_", param_1573
.annotate 'line', 738
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
.annotate 'line', 739
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
.annotate 'line', 740
    find_lex $P119, "$hashpast"
    unless_null $P119, vivify_401
    new $P119, "Undef"
  vivify_401:
.annotate 'line', 741
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
.annotate 'line', 738
    set $P117, $P126
  if_1574_end:
.annotate 'line', 737
    .return ($P117)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "_block1577"  :anon :subid("340_1337965225.74") :outer("338_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 751
    new $P114, "Undef"
    set $P1579, $P114
    .lex "$nfablock", $P1579
    get_hll_global $P115, "GLOBAL"
    nqp_get_package_through_who $P116, $P115, "PAST"
    get_who $P117, $P116
    set $P118, $P117["Block"]
    new $P119, "ResizablePMCArray"
    push $P119, "Sub"
.annotate 'line', 753
    find_lex $P120, "$block"
    unless_null $P120, vivify_410
    new $P120, "Undef"
  vivify_410:
    $P121 = $P120."subid"()
    concat $P122, $P121, "_nfa"
.annotate 'line', 751
    find_lex $P123, "$nfapast"
    unless_null $P123, vivify_411
    new $P123, "Undef"
  vivify_411:
    $P124 = $P118."new"($P123, "nqp" :named("hll"), $P119 :named("namespace"), 0 :named("lexical"), $P122 :named("name"))
    set $P1579, $P124
.annotate 'line', 754
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
.annotate 'line', 750
    .return ($P122)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "capnames"  :subid("341_1337965225.74") :outer("336_1337965225.74")
    .param pmc param_1585
    .param pmc param_1586
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 773
    .const 'Sub' $P1670 = "352_1337965225.74" 
    capture_lex $P1670
    .const 'Sub' $P1648 = "349_1337965225.74" 
    capture_lex $P1648
    .const 'Sub' $P1633 = "347_1337965225.74" 
    capture_lex $P1633
    .const 'Sub' $P1609 = "344_1337965225.74" 
    capture_lex $P1609
    .const 'Sub' $P1593 = "342_1337965225.74" 
    capture_lex $P1593
    .lex "$ast", param_1585
    .lex "$count", param_1586
.annotate 'line', 774
    $P1588 = root_new ['parrot';'Hash']
    set $P1587, $P1588
    .lex "%capnames", $P1587
.annotate 'line', 775
    new $P117, "Undef"
    set $P1589, $P117
    .lex "$rxtype", $P1589
.annotate 'line', 773
    set $P1590, $P1587
    unless_null $P1590, vivify_427
    $P1590 = root_new ['parrot';'Hash']
  vivify_427:
.annotate 'line', 775
    set $P118, param_1585
    unless_null $P118, vivify_428
    new $P118, "Undef"
  vivify_428:
    $P119 = $P118."rxtype"()
    set $P1589, $P119
.annotate 'line', 776
    set $P118, $P1589
    unless_null $P118, vivify_429
    new $P118, "Undef"
  vivify_429:
    set $S100, $P118
    iseq $I100, $S100, "concat"
    if $I100, if_1591
.annotate 'line', 783
    set $P120, $P1589
    unless_null $P120, vivify_430
    new $P120, "Undef"
  vivify_430:
    set $S101, $P120
    iseq $I101, $S101, "altseq"
    unless $I101, unless_1607
    new $P119, 'Integer'
    set $P119, $I101
    goto unless_1607_end
  unless_1607:
    set $P121, $P1589
    unless_null $P121, vivify_431
    new $P121, "Undef"
  vivify_431:
    set $S102, $P121
    iseq $I102, $S102, "alt"
    new $P119, 'Integer'
    set $P119, $I102
  unless_1607_end:
    if $P119, if_1606
.annotate 'line', 794
    set $P125, $P1589
    unless_null $P125, vivify_432
    new $P125, "Undef"
  vivify_432:
    set $S103, $P125
    iseq $I103, $S103, "subrule"
    if $I103, if_1631
    new $P124, 'Integer'
    set $P124, $I103
    goto if_1631_end
  if_1631:
    set $P126, param_1585
    unless_null $P126, vivify_433
    new $P126, "Undef"
  vivify_433:
    $S104 = $P126."subtype"()
    iseq $I104, $S104, "capture"
    new $P124, 'Integer'
    set $P124, $I104
  if_1631_end:
    if $P124, if_1630
.annotate 'line', 803
    set $P129, $P1589
    unless_null $P129, vivify_434
    new $P129, "Undef"
  vivify_434:
    set $S105, $P129
    iseq $I105, $S105, "subcapture"
    if $I105, if_1646
.annotate 'line', 812
    set $P131, $P1589
    unless_null $P131, vivify_435
    new $P131, "Undef"
  vivify_435:
    set $S106, $P131
    iseq $I106, $S106, "quant"
    unless $I106, if_1668_end
    .const 'Sub' $P1670 = "352_1337965225.74" 
    capture_lex $P1670
    $P1670()
  if_1668_end:
    goto if_1646_end
  if_1646:
.annotate 'line', 803
    .const 'Sub' $P1648 = "349_1337965225.74" 
    capture_lex $P1648
    $P1648()
  if_1646_end:
    goto if_1630_end
  if_1630:
.annotate 'line', 794
    .const 'Sub' $P1633 = "347_1337965225.74" 
    capture_lex $P1633
    $P1633()
  if_1630_end:
    goto if_1606_end
  if_1606:
.annotate 'line', 783
    .const 'Sub' $P1609 = "344_1337965225.74" 
    capture_lex $P1609
    $P1609()
  if_1606_end:
    goto if_1591_end
  if_1591:
.annotate 'line', 777
    set $P120, param_1585
    unless_null $P120, vivify_501
    new $P120, "Undef"
  vivify_501:
    $P121 = $P120."list"()
    defined $I101, $P121
    unless $I101, for_undef_502
    iter $P119, $P121
    new $P124, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P124, loop1605_handler
    push_eh $P124
  loop1605_test:
    unless $P119, loop1605_done
    shift $P122, $P119
  loop1605_redo:
    .const 'Sub' $P1593 = "342_1337965225.74" 
    capture_lex $P1593
    $P1593($P122)
  loop1605_next:
    goto loop1605_test
  loop1605_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P125, exception, 'type'
    eq $P125, .CONTROL_LOOP_NEXT, loop1605_next
    eq $P125, .CONTROL_LOOP_REDO, loop1605_redo
  loop1605_done:
    pop_eh 
  for_undef_502:
  if_1591_end:
.annotate 'line', 817
    set $P118, param_1586
    unless_null $P118, vivify_515
    new $P118, "Undef"
  vivify_515:
    set $P1681, $P1587
    unless_null $P1681, vivify_516
    $P1681 = root_new ['parrot';'Hash']
    set $P1587, $P1681
  vivify_516:
    set $P1681[""], $P118
.annotate 'line', 773
    set $P1682, $P1587
    unless_null $P1682, vivify_517
    $P1682 = root_new ['parrot';'Hash']
  vivify_517:
    .return ($P1682)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block1669"  :anon :subid("352_1337965225.74") :outer("341_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 812
    .const 'Sub' $P1676 = "353_1337965225.74" 
    capture_lex $P1676
.annotate 'line', 813
    $P1672 = root_new ['parrot';'Hash']
    set $P1671, $P1672
    .lex "%astcap", $P1671
    find_lex $P1673, "$ast"
    unless_null $P1673, vivify_436
    $P1673 = root_new ['parrot';'ResizablePMCArray']
  vivify_436:
    set $P132, $P1673[0]
    unless_null $P132, vivify_437
    new $P132, "Undef"
  vivify_437:
    find_lex $P133, "$count"
    unless_null $P133, vivify_438
    new $P133, "Undef"
  vivify_438:
    $P134 = "capnames"($P132, $P133)
    set $P1671, $P134
.annotate 'line', 814
    set $P1674, $P1671
    unless_null $P1674, vivify_439
    $P1674 = root_new ['parrot';'Hash']
  vivify_439:
    defined $I107, $P1674
    unless $I107, for_undef_440
    iter $P132, $P1674
    new $P135, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P135, loop1679_handler
    push_eh $P135
  loop1679_test:
    unless $P132, loop1679_done
    shift $P133, $P132
  loop1679_redo:
    .const 'Sub' $P1676 = "353_1337965225.74" 
    capture_lex $P1676
    $P1676($P133)
  loop1679_next:
    goto loop1679_test
  loop1679_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P136, exception, 'type'
    eq $P136, .CONTROL_LOOP_NEXT, loop1679_next
    eq $P136, .CONTROL_LOOP_REDO, loop1679_redo
  loop1679_done:
    pop_eh 
  for_undef_440:
.annotate 'line', 815
    set $P1680, $P1671
    unless_null $P1680, vivify_443
    $P1680 = root_new ['parrot';'Hash']
  vivify_443:
    set $P132, $P1680[""]
    unless_null $P132, vivify_444
    new $P132, "Undef"
  vivify_444:
    store_lex "$count", $P132
.annotate 'line', 812
    .return ($P132)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "_block1675"  :anon :subid("353_1337965225.74") :outer("352_1337965225.74")
    .param pmc param_1677
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 814
    .lex "$_", param_1677
    new $P134, "Float"
    assign $P134, 2
    find_lex $P135, "$_"
    unless_null $P135, vivify_441
    new $P135, "Undef"
  vivify_441:
    find_lex $P1678, "%capnames"
    unless_null $P1678, vivify_442
    $P1678 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1678
  vivify_442:
    set $P1678[$P135], $P134
    .return ($P134)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block1647"  :anon :subid("349_1337965225.74") :outer("341_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 803
    .const 'Sub' $P1661 = "351_1337965225.74" 
    capture_lex $P1661
    .const 'Sub' $P1652 = "350_1337965225.74" 
    capture_lex $P1652
.annotate 'line', 808
    $P1650 = root_new ['parrot';'Hash']
    set $P1649, $P1650
    .lex "%x", $P1649
.annotate 'line', 804
    find_lex $P131, "$ast"
    unless_null $P131, vivify_445
    new $P131, "Undef"
  vivify_445:
    $S106 = $P131."name"()
    split $P132, " ", $S106
    defined $I106, $P132
    unless $I106, for_undef_446
    iter $P130, $P132
    new $P135, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P135, loop1657_handler
    push_eh $P135
  loop1657_test:
    unless $P130, loop1657_done
    shift $P133, $P130
  loop1657_redo:
    .const 'Sub' $P1652 = "350_1337965225.74" 
    capture_lex $P1652
    $P1652($P133)
  loop1657_next:
    goto loop1657_test
  loop1657_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P136, exception, 'type'
    eq $P136, .CONTROL_LOOP_NEXT, loop1657_next
    eq $P136, .CONTROL_LOOP_REDO, loop1657_redo
  loop1657_done:
    pop_eh 
  for_undef_446:
.annotate 'line', 808
    find_lex $P1658, "$ast"
    unless_null $P1658, vivify_452
    $P1658 = root_new ['parrot';'ResizablePMCArray']
  vivify_452:
    set $P130, $P1658[0]
    unless_null $P130, vivify_453
    new $P130, "Undef"
  vivify_453:
    find_lex $P131, "$count"
    unless_null $P131, vivify_454
    new $P131, "Undef"
  vivify_454:
    $P132 = "capnames"($P130, $P131)
    set $P1649, $P132
.annotate 'line', 809
    set $P1659, $P1649
    unless_null $P1659, vivify_455
    $P1659 = root_new ['parrot';'Hash']
  vivify_455:
    defined $I106, $P1659
    unless $I106, for_undef_456
    iter $P130, $P1659
    new $P132, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P132, loop1666_handler
    push_eh $P132
  loop1666_test:
    unless $P130, loop1666_done
    shift $P131, $P130
  loop1666_redo:
    .const 'Sub' $P1661 = "351_1337965225.74" 
    capture_lex $P1661
    $P1661($P131)
  loop1666_next:
    goto loop1666_test
  loop1666_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P133, exception, 'type'
    eq $P133, .CONTROL_LOOP_NEXT, loop1666_next
    eq $P133, .CONTROL_LOOP_REDO, loop1666_redo
  loop1666_done:
    pop_eh 
  for_undef_456:
.annotate 'line', 810
    set $P1667, $P1649
    unless_null $P1667, vivify_465
    $P1667 = root_new ['parrot';'Hash']
  vivify_465:
    set $P130, $P1667[""]
    unless_null $P130, vivify_466
    new $P130, "Undef"
  vivify_466:
    store_lex "$count", $P130
.annotate 'line', 803
    .return ($P130)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "_block1651"  :anon :subid("350_1337965225.74") :outer("349_1337965225.74")
    .param pmc param_1653
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 804
    .lex "$_", param_1653
.annotate 'line', 805
    find_lex $P135, "$_"
    unless_null $P135, vivify_447
    new $P135, "Undef"
  vivify_447:
    set $S107, $P135
    iseq $I107, $S107, "0"
    unless $I107, unless_1655
    new $P134, 'Integer'
    set $P134, $I107
    goto unless_1655_end
  unless_1655:
    find_lex $P136, "$_"
    unless_null $P136, vivify_448
    new $P136, "Undef"
  vivify_448:
    set $N100, $P136
    set $N101, 0
    isgt $I108, $N100, $N101
    new $P134, 'Integer'
    set $P134, $I108
  unless_1655_end:
    unless $P134, if_1654_end
    find_lex $P137, "$_"
    unless_null $P137, vivify_449
    new $P137, "Undef"
  vivify_449:
    add $P138, $P137, 1
    store_lex "$count", $P138
  if_1654_end:
.annotate 'line', 806
    new $P134, "Float"
    assign $P134, 1
    find_lex $P135, "$_"
    unless_null $P135, vivify_450
    new $P135, "Undef"
  vivify_450:
    find_lex $P1656, "%capnames"
    unless_null $P1656, vivify_451
    $P1656 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1656
  vivify_451:
    set $P1656[$P135], $P134
.annotate 'line', 804
    .return ($P134)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "_block1660"  :anon :subid("351_1337965225.74") :outer("349_1337965225.74")
    .param pmc param_1662
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 809
    .lex "$_", param_1662
    find_lex $P132, "$_"
    unless_null $P132, vivify_457
    new $P132, "Undef"
  vivify_457:
    $P133 = $P132."key"()
    find_lex $P1663, "%capnames"
    unless_null $P1663, vivify_458
    $P1663 = root_new ['parrot';'Hash']
  vivify_458:
    set $P134, $P1663[$P133]
    unless_null $P134, vivify_459
    new $P134, "Undef"
  vivify_459:
    set $N100, $P134
    new $P135, 'Float'
    set $P135, $N100
    find_lex $P136, "$_"
    unless_null $P136, vivify_460
    new $P136, "Undef"
  vivify_460:
    $P137 = $P136."key"()
    find_lex $P1664, "%x"
    unless_null $P1664, vivify_461
    $P1664 = root_new ['parrot';'Hash']
  vivify_461:
    set $P138, $P1664[$P137]
    unless_null $P138, vivify_462
    new $P138, "Undef"
  vivify_462:
    add $P139, $P135, $P138
    find_lex $P140, "$_"
    unless_null $P140, vivify_463
    new $P140, "Undef"
  vivify_463:
    $P141 = $P140."key"()
    find_lex $P1665, "%capnames"
    unless_null $P1665, vivify_464
    $P1665 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1665
  vivify_464:
    set $P1665[$P141], $P139
    .return ($P139)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block1632"  :anon :subid("347_1337965225.74") :outer("341_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 794
    .const 'Sub' $P1640 = "348_1337965225.74" 
    capture_lex $P1640
.annotate 'line', 795
    new $P127, "Undef"
    set $P1634, $P127
    .lex "$name", $P1634
.annotate 'line', 797
    $P1636 = root_new ['parrot';'ResizablePMCArray']
    set $P1635, $P1636
    .lex "@names", $P1635
.annotate 'line', 795
    find_lex $P128, "$ast"
    unless_null $P128, vivify_467
    new $P128, "Undef"
  vivify_467:
    $P129 = $P128."name"()
    set $P1634, $P129
.annotate 'line', 796
    set $P128, $P1634
    unless_null $P128, vivify_468
    new $P128, "Undef"
  vivify_468:
    set $S105, $P128
    iseq $I105, $S105, ""
    unless $I105, if_1637_end
    find_lex $P129, "$count"
    unless_null $P129, vivify_469
    new $P129, "Undef"
  vivify_469:
    set $P1634, $P129
    find_lex $P129, "$ast"
    unless_null $P129, vivify_470
    new $P129, "Undef"
  vivify_470:
    set $P130, $P1634
    unless_null $P130, vivify_471
    new $P130, "Undef"
  vivify_471:
    $P129."name"($P130)
  if_1637_end:
.annotate 'line', 797
    set $P128, $P1634
    unless_null $P128, vivify_472
    new $P128, "Undef"
  vivify_472:
    set $S105, $P128
    split $P129, "=", $S105
    set $P1635, $P129
.annotate 'line', 798
    set $P1638, $P1635
    unless_null $P1638, vivify_473
    $P1638 = root_new ['parrot';'ResizablePMCArray']
  vivify_473:
    defined $I105, $P1638
    unless $I105, for_undef_474
    iter $P128, $P1638
    new $P131, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P131, loop1645_handler
    push_eh $P131
  loop1645_test:
    unless $P128, loop1645_done
    shift $P129, $P128
  loop1645_redo:
    .const 'Sub' $P1640 = "348_1337965225.74" 
    capture_lex $P1640
    $P1640($P129)
  loop1645_next:
    goto loop1645_test
  loop1645_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P132, exception, 'type'
    eq $P132, .CONTROL_LOOP_NEXT, loop1645_next
    eq $P132, .CONTROL_LOOP_REDO, loop1645_redo
  loop1645_done:
    pop_eh 
  for_undef_474:
.annotate 'line', 794
    .return ($P128)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "_block1639"  :anon :subid("348_1337965225.74") :outer("347_1337965225.74")
    .param pmc param_1641
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 798
    .lex "$_", param_1641
.annotate 'line', 799
    find_lex $P131, "$_"
    unless_null $P131, vivify_475
    new $P131, "Undef"
  vivify_475:
    set $S105, $P131
    iseq $I106, $S105, "0"
    unless $I106, unless_1643
    new $P130, 'Integer'
    set $P130, $I106
    goto unless_1643_end
  unless_1643:
    find_lex $P132, "$_"
    unless_null $P132, vivify_476
    new $P132, "Undef"
  vivify_476:
    set $N100, $P132
    set $N101, 0
    isgt $I107, $N100, $N101
    new $P130, 'Integer'
    set $P130, $I107
  unless_1643_end:
    unless $P130, if_1642_end
    find_lex $P133, "$_"
    unless_null $P133, vivify_477
    new $P133, "Undef"
  vivify_477:
    add $P134, $P133, 1
    store_lex "$count", $P134
  if_1642_end:
.annotate 'line', 800
    new $P130, "Float"
    assign $P130, 1
    find_lex $P131, "$_"
    unless_null $P131, vivify_478
    new $P131, "Undef"
  vivify_478:
    find_lex $P1644, "%capnames"
    unless_null $P1644, vivify_479
    $P1644 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1644
  vivify_479:
    set $P1644[$P131], $P130
.annotate 'line', 798
    .return ($P130)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block1608"  :anon :subid("344_1337965225.74") :outer("341_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 783
    .const 'Sub' $P1612 = "345_1337965225.74" 
    capture_lex $P1612
.annotate 'line', 784
    new $P122, "Undef"
    set $P1610, $P122
    .lex "$max", $P1610
    find_lex $P123, "$count"
    unless_null $P123, vivify_480
    new $P123, "Undef"
  vivify_480:
    set $P1610, $P123
.annotate 'line', 785
    find_lex $P124, "$ast"
    unless_null $P124, vivify_481
    new $P124, "Undef"
  vivify_481:
    $P125 = $P124."list"()
    defined $I103, $P125
    unless $I103, for_undef_482
    iter $P123, $P125
    new $P128, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P128, loop1629_handler
    push_eh $P128
  loop1629_test:
    unless $P123, loop1629_done
    shift $P126, $P123
  loop1629_redo:
    .const 'Sub' $P1612 = "345_1337965225.74" 
    capture_lex $P1612
    $P1612($P126)
  loop1629_next:
    goto loop1629_test
  loop1629_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P129, exception, 'type'
    eq $P129, .CONTROL_LOOP_NEXT, loop1629_next
    eq $P129, .CONTROL_LOOP_REDO, loop1629_redo
  loop1629_done:
    pop_eh 
  for_undef_482:
.annotate 'line', 792
    set $P123, $P1610
    unless_null $P123, vivify_500
    new $P123, "Undef"
  vivify_500:
    store_lex "$count", $P123
.annotate 'line', 783
    .return ($P123)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block1611"  :anon :subid("345_1337965225.74") :outer("344_1337965225.74")
    .param pmc param_1615
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 785
    .const 'Sub' $P1618 = "346_1337965225.74" 
    capture_lex $P1618
.annotate 'line', 786
    $P1614 = root_new ['parrot';'Hash']
    set $P1613, $P1614
    .lex "%x", $P1613
    .lex "$_", param_1615
    find_lex $P127, "$_"
    unless_null $P127, vivify_483
    new $P127, "Undef"
  vivify_483:
    find_lex $P128, "$count"
    unless_null $P128, vivify_484
    new $P128, "Undef"
  vivify_484:
    $P129 = "capnames"($P127, $P128)
    set $P1613, $P129
.annotate 'line', 787
    set $P1616, $P1613
    unless_null $P1616, vivify_485
    $P1616 = root_new ['parrot';'Hash']
  vivify_485:
    defined $I104, $P1616
    unless $I104, for_undef_486
    iter $P127, $P1616
    new $P130, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P130, loop1625_handler
    push_eh $P130
  loop1625_test:
    unless $P127, loop1625_done
    shift $P128, $P127
  loop1625_redo:
    .const 'Sub' $P1618 = "346_1337965225.74" 
    capture_lex $P1618
    $P1618($P128)
  loop1625_next:
    goto loop1625_test
  loop1625_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P131, exception, 'type'
    eq $P131, .CONTROL_LOOP_NEXT, loop1625_next
    eq $P131, .CONTROL_LOOP_REDO, loop1625_redo
  loop1625_done:
    pop_eh 
  for_undef_486:
.annotate 'line', 790
    set $P1627, $P1613
    unless_null $P1627, vivify_495
    $P1627 = root_new ['parrot';'Hash']
  vivify_495:
    set $P128, $P1627[""]
    unless_null $P128, vivify_496
    new $P128, "Undef"
  vivify_496:
    set $N100, $P128
    find_lex $P129, "$max"
    unless_null $P129, vivify_497
    new $P129, "Undef"
  vivify_497:
    set $N101, $P129
    isgt $I104, $N100, $N101
    if $I104, if_1626
    new $P127, 'Integer'
    set $P127, $I104
    goto if_1626_end
  if_1626:
    set $P1628, $P1613
    unless_null $P1628, vivify_498
    $P1628 = root_new ['parrot';'Hash']
  vivify_498:
    set $P130, $P1628[""]
    unless_null $P130, vivify_499
    new $P130, "Undef"
  vivify_499:
    store_lex "$max", $P130
    set $P127, $P130
  if_1626_end:
.annotate 'line', 785
    .return ($P127)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "_block1617"  :anon :subid("346_1337965225.74") :outer("345_1337965225.74")
    .param pmc param_1619
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 787
    .lex "$_", param_1619
.annotate 'line', 788
    find_lex $P131, "$_"
    unless_null $P131, vivify_487
    new $P131, "Undef"
  vivify_487:
    $P132 = $P131."key"()
    find_lex $P1622, "%capnames"
    unless_null $P1622, vivify_488
    $P1622 = root_new ['parrot';'Hash']
  vivify_488:
    set $P133, $P1622[$P132]
    unless_null $P133, vivify_489
    new $P133, "Undef"
  vivify_489:
    set $N100, $P133
    set $N101, 2
    islt $I105, $N100, $N101
    if $I105, if_1621
    new $P130, 'Integer'
    set $P130, $I105
    goto if_1621_end
  if_1621:
    find_lex $P134, "$_"
    unless_null $P134, vivify_490
    new $P134, "Undef"
  vivify_490:
    $P135 = $P134."key"()
    find_lex $P1623, "%x"
    unless_null $P1623, vivify_491
    $P1623 = root_new ['parrot';'Hash']
  vivify_491:
    set $P136, $P1623[$P135]
    unless_null $P136, vivify_492
    new $P136, "Undef"
  vivify_492:
    set $N102, $P136
    set $N103, 1
    iseq $I106, $N102, $N103
    new $P130, 'Integer'
    set $P130, $I106
  if_1621_end:
    if $P130, if_1620
    new $P138, "Float"
    assign $P138, 2
    set $P129, $P138
    goto if_1620_end
  if_1620:
    new $P137, "Float"
    assign $P137, 1
    set $P129, $P137
  if_1620_end:
    find_lex $P139, "$_"
    unless_null $P139, vivify_493
    new $P139, "Undef"
  vivify_493:
    $P140 = $P139."key"()
    find_lex $P1624, "%capnames"
    unless_null $P1624, vivify_494
    $P1624 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1624
  vivify_494:
    set $P1624[$P140], $P129
.annotate 'line', 787
    .return ($P129)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block1592"  :anon :subid("342_1337965225.74") :outer("341_1337965225.74")
    .param pmc param_1596
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 777
    .const 'Sub' $P1599 = "343_1337965225.74" 
    capture_lex $P1599
.annotate 'line', 778
    $P1595 = root_new ['parrot';'Hash']
    set $P1594, $P1595
    .lex "%x", $P1594
    .lex "$_", param_1596
    find_lex $P123, "$_"
    unless_null $P123, vivify_503
    new $P123, "Undef"
  vivify_503:
    find_lex $P124, "$count"
    unless_null $P124, vivify_504
    new $P124, "Undef"
  vivify_504:
    $P125 = "capnames"($P123, $P124)
    set $P1594, $P125
.annotate 'line', 779
    set $P1597, $P1594
    unless_null $P1597, vivify_505
    $P1597 = root_new ['parrot';'Hash']
  vivify_505:
    defined $I102, $P1597
    unless $I102, for_undef_506
    iter $P123, $P1597
    new $P125, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P125, loop1603_handler
    push_eh $P125
  loop1603_test:
    unless $P123, loop1603_done
    shift $P124, $P123
  loop1603_redo:
    .const 'Sub' $P1599 = "343_1337965225.74" 
    capture_lex $P1599
    $P1599($P124)
  loop1603_next:
    goto loop1603_test
  loop1603_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P126, exception, 'type'
    eq $P126, .CONTROL_LOOP_NEXT, loop1603_next
    eq $P126, .CONTROL_LOOP_REDO, loop1603_redo
  loop1603_done:
    pop_eh 
  for_undef_506:
.annotate 'line', 780
    set $P1604, $P1594
    unless_null $P1604, vivify_513
    $P1604 = root_new ['parrot';'Hash']
  vivify_513:
    set $P123, $P1604[""]
    unless_null $P123, vivify_514
    new $P123, "Undef"
  vivify_514:
    store_lex "$count", $P123
.annotate 'line', 777
    .return ($P123)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "_block1598"  :anon :subid("343_1337965225.74") :outer("342_1337965225.74")
    .param pmc param_1600
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 779
    .lex "$_", param_1600
    find_lex $P125, "$_"
    unless_null $P125, vivify_507
    new $P125, "Undef"
  vivify_507:
    $P126 = $P125."key"()
    find_lex $P1601, "%capnames"
    unless_null $P1601, vivify_508
    $P1601 = root_new ['parrot';'Hash']
  vivify_508:
    set $P127, $P1601[$P126]
    unless_null $P127, vivify_509
    new $P127, "Undef"
  vivify_509:
    set $N100, $P127
    new $P128, 'Float'
    set $P128, $N100
    find_lex $P129, "$_"
    unless_null $P129, vivify_510
    new $P129, "Undef"
  vivify_510:
    $N101 = $P129."value"()
    add $P130, $P128, $N101
    find_lex $P131, "$_"
    unless_null $P131, vivify_511
    new $P131, "Undef"
  vivify_511:
    $P132 = $P131."key"()
    find_lex $P1602, "%capnames"
    unless_null $P1602, vivify_512
    $P1602 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1602
  vivify_512:
    set $P1602[$P132], $P130
    .return ($P130)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "TOP" :anon :subid("106_1337965225.74") :outer("336_1337965225.74")
    .param pmc param_1687
    .param pmc param_1688
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 238
    .lex "self", param_1687
    .lex "$/", param_1688
.annotate 'line', 239
    set $P118, param_1688
    set $P1689, param_1688
    unless_null $P1689, vivify_518
    $P1689 = root_new ['parrot';'Hash']
  vivify_518:
    set $P119, $P1689["nibbler"]
    unless_null $P119, vivify_519
    new $P119, "Undef"
  vivify_519:
    $P120 = $P119."ast"()
    $P121 = "buildsub"($P120)
    $P122 = $P118."!make"($P121)
.annotate 'line', 238
    .return ($P122)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "nibbler" :anon :subid("107_1337965225.74") :outer("336_1337965225.74")
    .param pmc param_1691
    .param pmc param_1692
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 242
    .lex "self", param_1691
    .lex "$/", param_1692
    set $P118, param_1692
    set $P1693, param_1692
    unless_null $P1693, vivify_520
    $P1693 = root_new ['parrot';'Hash']
  vivify_520:
    set $P119, $P1693["termaltseq"]
    unless_null $P119, vivify_521
    new $P119, "Undef"
  vivify_521:
    $P120 = $P119."ast"()
    $P121 = $P118."!make"($P120)
    .return ($P121)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "termaltseq" :anon :subid("108_1337965225.74") :outer("336_1337965225.74")
    .param pmc param_1695
    .param pmc param_1696
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 244
    .const 'Sub' $P1704 = "354_1337965225.74" 
    capture_lex $P1704
    .lex "self", param_1695
    .lex "$/", param_1696
.annotate 'line', 245
    new $P118, "Undef"
    set $P1697, $P118
    .lex "$qast", $P1697
    set $P1698, param_1696
    unless_null $P1698, vivify_522
    $P1698 = root_new ['parrot';'Hash']
  vivify_522:
    set $P1699, $P1698["termconjseq"]
    unless_null $P1699, vivify_523
    $P1699 = root_new ['parrot';'ResizablePMCArray']
  vivify_523:
    set $P119, $P1699[0]
    unless_null $P119, vivify_524
    new $P119, "Undef"
  vivify_524:
    $P120 = $P119."ast"()
    set $P1697, $P120
.annotate 'line', 246
    set $P1701, param_1696
    unless_null $P1701, vivify_525
    $P1701 = root_new ['parrot';'Hash']
  vivify_525:
    set $P119, $P1701["termconjseq"]
    unless_null $P119, vivify_526
    new $P119, "Undef"
  vivify_526:
    set $N100, $P119
    set $N101, 1
    isgt $I100, $N100, $N101
    unless $I100, if_1700_end
.annotate 'line', 247
    get_hll_global $P120, "GLOBAL"
    nqp_get_package_through_who $P121, $P120, "QAST"
    get_who $P122, $P121
    set $P123, $P122["Regex"]
    set $P124, param_1696
    unless_null $P124, vivify_527
    new $P124, "Undef"
  vivify_527:
    $P125 = $P123."new"("altseq" :named("rxtype"), $P124 :named("node"))
    set $P1697, $P125
.annotate 'line', 248
    set $P1702, param_1696
    unless_null $P1702, vivify_528
    $P1702 = root_new ['parrot';'Hash']
  vivify_528:
    set $P121, $P1702["termconjseq"]
    unless_null $P121, vivify_529
    new $P121, "Undef"
  vivify_529:
    defined $I101, $P121
    unless $I101, for_undef_530
    iter $P120, $P121
    new $P123, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P123, loop1706_handler
    push_eh $P123
  loop1706_test:
    unless $P120, loop1706_done
    shift $P122, $P120
  loop1706_redo:
    .const 'Sub' $P1704 = "354_1337965225.74" 
    capture_lex $P1704
    $P1704($P122)
  loop1706_next:
    goto loop1706_test
  loop1706_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P124, exception, 'type'
    eq $P124, .CONTROL_LOOP_NEXT, loop1706_next
    eq $P124, .CONTROL_LOOP_REDO, loop1706_redo
  loop1706_done:
    pop_eh 
  for_undef_530:
  if_1700_end:
.annotate 'line', 250
    set $P119, param_1696
    set $P120, $P1697
    unless_null $P120, vivify_533
    new $P120, "Undef"
  vivify_533:
    $P121 = $P119."!make"($P120)
.annotate 'line', 244
    .return ($P121)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "_block1703"  :anon :subid("354_1337965225.74") :outer("108_1337965225.74")
    .param pmc param_1705
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 248
    .lex "$_", param_1705
    find_lex $P123, "$qast"
    unless_null $P123, vivify_531
    new $P123, "Undef"
  vivify_531:
    find_lex $P124, "$_"
    unless_null $P124, vivify_532
    new $P124, "Undef"
  vivify_532:
    $P125 = $P124."ast"()
    $P126 = $P123."push"($P125)
    .return ($P126)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "termconjseq" :anon :subid("109_1337965225.74") :outer("336_1337965225.74")
    .param pmc param_1708
    .param pmc param_1709
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 253
    .const 'Sub' $P1717 = "355_1337965225.74" 
    capture_lex $P1717
    .lex "self", param_1708
    .lex "$/", param_1709
.annotate 'line', 254
    new $P118, "Undef"
    set $P1710, $P118
    .lex "$qast", $P1710
    set $P1711, param_1709
    unless_null $P1711, vivify_534
    $P1711 = root_new ['parrot';'Hash']
  vivify_534:
    set $P1712, $P1711["termalt"]
    unless_null $P1712, vivify_535
    $P1712 = root_new ['parrot';'ResizablePMCArray']
  vivify_535:
    set $P119, $P1712[0]
    unless_null $P119, vivify_536
    new $P119, "Undef"
  vivify_536:
    $P120 = $P119."ast"()
    set $P1710, $P120
.annotate 'line', 255
    set $P1714, param_1709
    unless_null $P1714, vivify_537
    $P1714 = root_new ['parrot';'Hash']
  vivify_537:
    set $P119, $P1714["termalt"]
    unless_null $P119, vivify_538
    new $P119, "Undef"
  vivify_538:
    set $N100, $P119
    set $N101, 1
    isgt $I100, $N100, $N101
    unless $I100, if_1713_end
.annotate 'line', 256
    get_hll_global $P120, "GLOBAL"
    nqp_get_package_through_who $P121, $P120, "QAST"
    get_who $P122, $P121
    set $P123, $P122["Regex"]
    set $P124, param_1709
    unless_null $P124, vivify_539
    new $P124, "Undef"
  vivify_539:
    $P125 = $P123."new"("conjseq" :named("rxtype"), $P124 :named("node"))
    set $P1710, $P125
.annotate 'line', 257
    set $P1715, param_1709
    unless_null $P1715, vivify_540
    $P1715 = root_new ['parrot';'Hash']
  vivify_540:
    set $P121, $P1715["termalt"]
    unless_null $P121, vivify_541
    new $P121, "Undef"
  vivify_541:
    defined $I101, $P121
    unless $I101, for_undef_542
    iter $P120, $P121
    new $P123, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P123, loop1719_handler
    push_eh $P123
  loop1719_test:
    unless $P120, loop1719_done
    shift $P122, $P120
  loop1719_redo:
    .const 'Sub' $P1717 = "355_1337965225.74" 
    capture_lex $P1717
    $P1717($P122)
  loop1719_next:
    goto loop1719_test
  loop1719_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P124, exception, 'type'
    eq $P124, .CONTROL_LOOP_NEXT, loop1719_next
    eq $P124, .CONTROL_LOOP_REDO, loop1719_redo
  loop1719_done:
    pop_eh 
  for_undef_542:
  if_1713_end:
.annotate 'line', 259
    set $P119, param_1709
    set $P120, $P1710
    unless_null $P120, vivify_545
    new $P120, "Undef"
  vivify_545:
    $P121 = $P119."!make"($P120)
.annotate 'line', 253
    .return ($P121)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "_block1716"  :anon :subid("355_1337965225.74") :outer("109_1337965225.74")
    .param pmc param_1718
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 257
    .lex "$_", param_1718
    find_lex $P123, "$qast"
    unless_null $P123, vivify_543
    new $P123, "Undef"
  vivify_543:
    find_lex $P124, "$_"
    unless_null $P124, vivify_544
    new $P124, "Undef"
  vivify_544:
    $P125 = $P124."ast"()
    $P126 = $P123."push"($P125)
    .return ($P126)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "termalt" :anon :subid("110_1337965225.74") :outer("336_1337965225.74")
    .param pmc param_1721
    .param pmc param_1722
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 262
    .const 'Sub' $P1730 = "356_1337965225.74" 
    capture_lex $P1730
    .lex "self", param_1721
    .lex "$/", param_1722
.annotate 'line', 263
    new $P118, "Undef"
    set $P1723, $P118
    .lex "$qast", $P1723
    set $P1724, param_1722
    unless_null $P1724, vivify_546
    $P1724 = root_new ['parrot';'Hash']
  vivify_546:
    set $P1725, $P1724["termconj"]
    unless_null $P1725, vivify_547
    $P1725 = root_new ['parrot';'ResizablePMCArray']
  vivify_547:
    set $P119, $P1725[0]
    unless_null $P119, vivify_548
    new $P119, "Undef"
  vivify_548:
    $P120 = $P119."ast"()
    set $P1723, $P120
.annotate 'line', 264
    set $P1727, param_1722
    unless_null $P1727, vivify_549
    $P1727 = root_new ['parrot';'Hash']
  vivify_549:
    set $P119, $P1727["termconj"]
    unless_null $P119, vivify_550
    new $P119, "Undef"
  vivify_550:
    set $N100, $P119
    set $N101, 1
    isgt $I100, $N100, $N101
    unless $I100, if_1726_end
.annotate 'line', 265
    get_hll_global $P120, "GLOBAL"
    nqp_get_package_through_who $P121, $P120, "QAST"
    get_who $P122, $P121
    set $P123, $P122["Regex"]
    set $P124, param_1722
    unless_null $P124, vivify_551
    new $P124, "Undef"
  vivify_551:
    $P125 = $P123."new"("alt" :named("rxtype"), $P124 :named("node"))
    set $P1723, $P125
.annotate 'line', 266
    set $P1728, param_1722
    unless_null $P1728, vivify_552
    $P1728 = root_new ['parrot';'Hash']
  vivify_552:
    set $P121, $P1728["termconj"]
    unless_null $P121, vivify_553
    new $P121, "Undef"
  vivify_553:
    defined $I101, $P121
    unless $I101, for_undef_554
    iter $P120, $P121
    new $P123, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P123, loop1732_handler
    push_eh $P123
  loop1732_test:
    unless $P120, loop1732_done
    shift $P122, $P120
  loop1732_redo:
    .const 'Sub' $P1730 = "356_1337965225.74" 
    capture_lex $P1730
    $P1730($P122)
  loop1732_next:
    goto loop1732_test
  loop1732_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P124, exception, 'type'
    eq $P124, .CONTROL_LOOP_NEXT, loop1732_next
    eq $P124, .CONTROL_LOOP_REDO, loop1732_redo
  loop1732_done:
    pop_eh 
  for_undef_554:
  if_1726_end:
.annotate 'line', 268
    set $P119, param_1722
    set $P120, $P1723
    unless_null $P120, vivify_557
    new $P120, "Undef"
  vivify_557:
    $P121 = $P119."!make"($P120)
.annotate 'line', 262
    .return ($P121)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "_block1729"  :anon :subid("356_1337965225.74") :outer("110_1337965225.74")
    .param pmc param_1731
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 266
    .lex "$_", param_1731
    find_lex $P123, "$qast"
    unless_null $P123, vivify_555
    new $P123, "Undef"
  vivify_555:
    find_lex $P124, "$_"
    unless_null $P124, vivify_556
    new $P124, "Undef"
  vivify_556:
    $P125 = $P124."ast"()
    $P126 = $P123."push"($P125)
    .return ($P126)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "termconj" :anon :subid("111_1337965225.74") :outer("336_1337965225.74")
    .param pmc param_1734
    .param pmc param_1735
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 271
    .const 'Sub' $P1743 = "357_1337965225.74" 
    capture_lex $P1743
    .lex "self", param_1734
    .lex "$/", param_1735
.annotate 'line', 272
    new $P118, "Undef"
    set $P1736, $P118
    .lex "$qast", $P1736
    set $P1737, param_1735
    unless_null $P1737, vivify_558
    $P1737 = root_new ['parrot';'Hash']
  vivify_558:
    set $P1738, $P1737["termish"]
    unless_null $P1738, vivify_559
    $P1738 = root_new ['parrot';'ResizablePMCArray']
  vivify_559:
    set $P119, $P1738[0]
    unless_null $P119, vivify_560
    new $P119, "Undef"
  vivify_560:
    $P120 = $P119."ast"()
    set $P1736, $P120
.annotate 'line', 273
    set $P1740, param_1735
    unless_null $P1740, vivify_561
    $P1740 = root_new ['parrot';'Hash']
  vivify_561:
    set $P119, $P1740["termish"]
    unless_null $P119, vivify_562
    new $P119, "Undef"
  vivify_562:
    set $N100, $P119
    set $N101, 1
    isgt $I100, $N100, $N101
    unless $I100, if_1739_end
.annotate 'line', 274
    get_hll_global $P120, "GLOBAL"
    nqp_get_package_through_who $P121, $P120, "QAST"
    get_who $P122, $P121
    set $P123, $P122["Regex"]
    set $P124, param_1735
    unless_null $P124, vivify_563
    new $P124, "Undef"
  vivify_563:
    $P125 = $P123."new"("conj" :named("rxtype"), $P124 :named("node"))
    set $P1736, $P125
.annotate 'line', 275
    set $P1741, param_1735
    unless_null $P1741, vivify_564
    $P1741 = root_new ['parrot';'Hash']
  vivify_564:
    set $P121, $P1741["termish"]
    unless_null $P121, vivify_565
    new $P121, "Undef"
  vivify_565:
    defined $I101, $P121
    unless $I101, for_undef_566
    iter $P120, $P121
    new $P123, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P123, loop1745_handler
    push_eh $P123
  loop1745_test:
    unless $P120, loop1745_done
    shift $P122, $P120
  loop1745_redo:
    .const 'Sub' $P1743 = "357_1337965225.74" 
    capture_lex $P1743
    $P1743($P122)
  loop1745_next:
    goto loop1745_test
  loop1745_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P124, exception, 'type'
    eq $P124, .CONTROL_LOOP_NEXT, loop1745_next
    eq $P124, .CONTROL_LOOP_REDO, loop1745_redo
  loop1745_done:
    pop_eh 
  for_undef_566:
  if_1739_end:
.annotate 'line', 277
    set $P119, param_1735
    set $P120, $P1736
    unless_null $P120, vivify_569
    new $P120, "Undef"
  vivify_569:
    $P121 = $P119."!make"($P120)
.annotate 'line', 271
    .return ($P121)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "_block1742"  :anon :subid("357_1337965225.74") :outer("111_1337965225.74")
    .param pmc param_1744
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 275
    .lex "$_", param_1744
    find_lex $P123, "$qast"
    unless_null $P123, vivify_567
    new $P123, "Undef"
  vivify_567:
    find_lex $P124, "$_"
    unless_null $P124, vivify_568
    new $P124, "Undef"
  vivify_568:
    $P125 = $P124."ast"()
    $P126 = $P123."push"($P125)
    .return ($P126)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "termish" :anon :subid("112_1337965225.74") :outer("336_1337965225.74")
    .param pmc param_1747
    .param pmc param_1748
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 280
    .const 'Sub' $P1753 = "358_1337965225.74" 
    capture_lex $P1753
    .lex "self", param_1747
    .lex "$/", param_1748
.annotate 'line', 281
    new $P118, "Undef"
    set $P1749, $P118
    .lex "$qast", $P1749
.annotate 'line', 282
    new $P119, "Undef"
    set $P1750, $P119
    .lex "$lastlit", $P1750
.annotate 'line', 281
    get_hll_global $P120, "GLOBAL"
    nqp_get_package_through_who $P121, $P120, "QAST"
    get_who $P122, $P121
    set $P123, $P122["Regex"]
    set $P124, param_1748
    unless_null $P124, vivify_570
    new $P124, "Undef"
  vivify_570:
    $P125 = $P123."new"("concat" :named("rxtype"), $P124 :named("node"))
    set $P1749, $P125
.annotate 'line', 282
    new $P120, "Float"
    assign $P120, 0
    set $P1750, $P120
.annotate 'line', 283
    set $P1751, param_1748
    unless_null $P1751, vivify_571
    $P1751 = root_new ['parrot';'Hash']
  vivify_571:
    set $P121, $P1751["noun"]
    unless_null $P121, vivify_572
    new $P121, "Undef"
  vivify_572:
    defined $I100, $P121
    unless $I100, for_undef_573
    iter $P120, $P121
    new $P125, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P125, loop1767_handler
    push_eh $P125
  loop1767_test:
    unless $P120, loop1767_done
    shift $P122, $P120
  loop1767_redo:
    .const 'Sub' $P1753 = "358_1337965225.74" 
    capture_lex $P1753
    $P1753($P122)
  loop1767_next:
    goto loop1767_test
  loop1767_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P126, exception, 'type'
    eq $P126, .CONTROL_LOOP_NEXT, loop1767_next
    eq $P126, .CONTROL_LOOP_REDO, loop1767_redo
  loop1767_done:
    pop_eh 
  for_undef_573:
.annotate 'line', 298
    set $P120, param_1748
    set $P121, $P1749
    unless_null $P121, vivify_591
    new $P121, "Undef"
  vivify_591:
    $P122 = $P120."!make"($P121)
.annotate 'line', 280
    .return ($P122)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "_block1752"  :anon :subid("358_1337965225.74") :outer("112_1337965225.74")
    .param pmc param_1755
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 284
    new $P123, "Undef"
    set $P1754, $P123
    .lex "$ast", $P1754
    .lex "$_", param_1755
    find_lex $P124, "$_"
    unless_null $P124, vivify_574
    new $P124, "Undef"
  vivify_574:
    $P125 = $P124."ast"()
    set $P1754, $P125
.annotate 'line', 285
    set $P125, $P1754
    unless_null $P125, vivify_575
    new $P125, "Undef"
  vivify_575:
    if $P125, if_1756
    set $P124, $P125
    goto if_1756_end
  if_1756:
.annotate 'line', 286
    find_lex $P129, "$lastlit"
    unless_null $P129, vivify_576
    new $P129, "Undef"
  vivify_576:
    if $P129, if_1759
    set $P128, $P129
    goto if_1759_end
  if_1759:
    set $P130, $P1754
    unless_null $P130, vivify_577
    new $P130, "Undef"
  vivify_577:
    $S100 = $P130."rxtype"()
    iseq $I101, $S100, "literal"
    new $P128, 'Integer'
    set $P128, $I101
  if_1759_end:
    if $P128, if_1758
    set $P127, $P128
    goto if_1758_end
  if_1758:
.annotate 'line', 287
    get_hll_global $P131, "GLOBAL"
    nqp_get_package_through_who $P132, $P131, "QAST"
    get_who $P133, $P132
    set $P134, $P133["Node"]
    set $P1760, $P1754
    unless_null $P1760, vivify_578
    $P1760 = root_new ['parrot';'ResizablePMCArray']
  vivify_578:
    set $P135, $P1760[0]
    unless_null $P135, vivify_579
    new $P135, "Undef"
  vivify_579:
    $P136 = $P134."ACCEPTS"($P135)
    isfalse $I102, $P136
    new $P127, 'Integer'
    set $P127, $I102
  if_1758_end:
    if $P127, if_1757
.annotate 'line', 291
    find_lex $P137, "$qast"
    unless_null $P137, vivify_580
    new $P137, "Undef"
  vivify_580:
    find_lex $P138, "$_"
    unless_null $P138, vivify_581
    new $P138, "Undef"
  vivify_581:
    $P140 = $P138."ast"()
    $P137."push"($P140)
.annotate 'line', 292
    set $P140, $P1754
    unless_null $P140, vivify_582
    new $P140, "Undef"
  vivify_582:
    $S101 = $P140."rxtype"()
    iseq $I103, $S101, "literal"
    if $I103, if_1765
    new $P138, 'Integer'
    set $P138, $I103
    goto if_1765_end
  if_1765:
.annotate 'line', 293
    get_hll_global $P141, "GLOBAL"
    nqp_get_package_through_who $P142, $P141, "QAST"
    get_who $P143, $P142
    set $P144, $P143["Node"]
    set $P1766, $P1754
    unless_null $P1766, vivify_583
    $P1766 = root_new ['parrot';'ResizablePMCArray']
  vivify_583:
    set $P145, $P1766[0]
    unless_null $P145, vivify_584
    new $P145, "Undef"
  vivify_584:
    $P146 = $P144."ACCEPTS"($P145)
    isfalse $I104, $P146
    new $P138, 'Integer'
    set $P138, $I104
  if_1765_end:
    if $P138, if_1764
    new $P148, "Float"
    assign $P148, 0
    set $P137, $P148
    goto if_1764_end
  if_1764:
    set $P147, $P1754
    unless_null $P147, vivify_585
    new $P147, "Undef"
  vivify_585:
    set $P137, $P147
  if_1764_end:
.annotate 'line', 294
    store_lex "$lastlit", $P137
.annotate 'line', 290
    set $P126, $P137
.annotate 'line', 287
    goto if_1757_end
  if_1757:
.annotate 'line', 288
    find_lex $P1761, "$lastlit"
    unless_null $P1761, vivify_586
    $P1761 = root_new ['parrot';'ResizablePMCArray']
  vivify_586:
    set $P137, $P1761[0]
    unless_null $P137, vivify_587
    new $P137, "Undef"
  vivify_587:
    set $P1762, $P1754
    unless_null $P1762, vivify_588
    $P1762 = root_new ['parrot';'ResizablePMCArray']
  vivify_588:
    set $P138, $P1762[0]
    unless_null $P138, vivify_589
    new $P138, "Undef"
  vivify_589:
    concat $P139, $P137, $P138
    find_lex $P1763, "$lastlit"
    unless_null $P1763, vivify_590
    $P1763 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$lastlit", $P1763
  vivify_590:
    set $P1763[0], $P139
.annotate 'line', 287
    set $P126, $P139
  if_1757_end:
.annotate 'line', 285
    set $P124, $P126
  if_1756_end:
.annotate 'line', 283
    .return ($P124)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "quantified_atom" :anon :subid("113_1337965225.74") :outer("336_1337965225.74")
    .param pmc param_1769
    .param pmc param_1770
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 301
    .const 'Sub' $P1776 = "359_1337965225.74" 
    capture_lex $P1776
    .lex "self", param_1769
    .lex "$/", param_1770
.annotate 'line', 302
    new $P118, "Undef"
    set $P1771, $P118
    .lex "$qast", $P1771
    set $P1772, param_1770
    unless_null $P1772, vivify_592
    $P1772 = root_new ['parrot';'Hash']
  vivify_592:
    set $P119, $P1772["atom"]
    unless_null $P119, vivify_593
    new $P119, "Undef"
  vivify_593:
    $P120 = $P119."ast"()
    set $P1771, $P120
.annotate 'line', 303
    set $P1774, param_1770
    unless_null $P1774, vivify_594
    $P1774 = root_new ['parrot';'Hash']
  vivify_594:
    set $P119, $P1774["quantifier"]
    unless_null $P119, vivify_595
    new $P119, "Undef"
  vivify_595:
    unless $P119, if_1773_end
    .const 'Sub' $P1776 = "359_1337965225.74" 
    capture_lex $P1776
    $P1776()
  if_1773_end:
.annotate 'line', 308
    set $P1781, param_1770
    unless_null $P1781, vivify_602
    $P1781 = root_new ['parrot';'Hash']
  vivify_602:
    set $P119, $P1781["separator"]
    unless_null $P119, vivify_603
    new $P119, "Undef"
  vivify_603:
    unless $P119, if_1780_end
.annotate 'line', 309
    set $P120, $P1771
    unless_null $P120, vivify_604
    new $P120, "Undef"
  vivify_604:
    $S100 = $P120."rxtype"()
    iseq $I100, $S100, "quant"
    if $I100, unless_1782_end
.annotate 'line', 310
    set $P121, param_1770
    unless_null $P121, vivify_605
    new $P121, "Undef"
  vivify_605:
    $P122 = $P121."CURSOR"()
    new $P123, "String"
    assign $P123, "'"
    set $P1783, param_1770
    unless_null $P1783, vivify_606
    $P1783 = root_new ['parrot';'Hash']
  vivify_606:
    set $P1784, $P1783["separator"]
    unless_null $P1784, vivify_607
    $P1784 = root_new ['parrot';'ResizablePMCArray']
  vivify_607:
    set $P1785, $P1784[0]
    unless_null $P1785, vivify_608
    $P1785 = root_new ['parrot';'Hash']
  vivify_608:
    set $P124, $P1785["septype"]
    unless_null $P124, vivify_609
    new $P124, "Undef"
  vivify_609:
    concat $P125, $P123, $P124
    concat $P126, $P125, "' many only be used immediately following a quantifier"
    $P122."panic"($P126)
  unless_1782_end:
.annotate 'line', 313
    set $P120, $P1771
    unless_null $P120, vivify_610
    new $P120, "Undef"
  vivify_610:
    set $P1786, param_1770
    unless_null $P1786, vivify_611
    $P1786 = root_new ['parrot';'Hash']
  vivify_611:
    set $P1787, $P1786["separator"]
    unless_null $P1787, vivify_612
    $P1787 = root_new ['parrot';'ResizablePMCArray']
  vivify_612:
    set $P121, $P1787[0]
    unless_null $P121, vivify_613
    new $P121, "Undef"
  vivify_613:
    $P122 = $P121."ast"()
    $P120."push"($P122)
.annotate 'line', 314
    set $P1789, param_1770
    unless_null $P1789, vivify_614
    $P1789 = root_new ['parrot';'Hash']
  vivify_614:
    set $P1790, $P1789["separator"]
    unless_null $P1790, vivify_615
    $P1790 = root_new ['parrot';'ResizablePMCArray']
  vivify_615:
    set $P1791, $P1790[0]
    unless_null $P1791, vivify_616
    $P1791 = root_new ['parrot';'Hash']
  vivify_616:
    set $P120, $P1791["septype"]
    unless_null $P120, vivify_617
    new $P120, "Undef"
  vivify_617:
    set $S100, $P120
    iseq $I100, $S100, "%%"
    unless $I100, if_1788_end
.annotate 'line', 315
    get_hll_global $P121, "GLOBAL"
    nqp_get_package_through_who $P122, $P121, "QAST"
    get_who $P123, $P122
    set $P124, $P123["Regex"]
    set $P125, $P1771
    unless_null $P125, vivify_618
    new $P125, "Undef"
  vivify_618:
.annotate 'line', 316
    get_hll_global $P126, "GLOBAL"
    nqp_get_package_through_who $P127, $P126, "QAST"
    get_who $P128, $P127
    set $P129, $P128["Regex"]
    set $P1792, param_1770
    unless_null $P1792, vivify_619
    $P1792 = root_new ['parrot';'Hash']
  vivify_619:
    set $P1793, $P1792["separator"]
    unless_null $P1793, vivify_620
    $P1793 = root_new ['parrot';'ResizablePMCArray']
  vivify_620:
    set $P130, $P1793[0]
    unless_null $P130, vivify_621
    new $P130, "Undef"
  vivify_621:
    $P131 = $P130."ast"()
    $P132 = $P129."new"($P131, "quant" :named("rxtype"), 0 :named("min"), 1 :named("max"))
    $P133 = $P124."new"($P125, $P132, "concat" :named("rxtype"))
.annotate 'line', 315
    set $P1771, $P133
  if_1788_end:
  if_1780_end:
.annotate 'line', 319
    set $P121, $P1771
    unless_null $P121, vivify_622
    new $P121, "Undef"
  vivify_622:
    if $P121, if_1796
    set $P120, $P121
    goto if_1796_end
  if_1796:
    set $P122, $P1771
    unless_null $P122, vivify_623
    new $P122, "Undef"
  vivify_623:
    $P123 = $P122."backtrack"()
    isfalse $I100, $P123
    new $P120, 'Integer'
    set $P120, $I100
  if_1796_end:
    if $P120, if_1795
    set $P119, $P120
    goto if_1795_end
  if_1795:
    find_dynamic_lex $P126, "%*RX"
    unless_null $P126, vivify_624
    get_hll_global $P124, "GLOBAL"
    get_who $P125, $P124
    set $P126, $P125["%RX"]
    unless_null $P126, vivify_625
    die "Contextual %*RX not found"
  vivify_625:
  vivify_624:
    set $P127, $P126["r"]
    unless_null $P127, vivify_626
    new $P127, "Undef"
  vivify_626:
    set $P119, $P127
  if_1795_end:
    unless $P119, if_1794_end
    set $P128, $P1771
    unless_null $P128, vivify_627
    new $P128, "Undef"
  vivify_627:
    $P128."backtrack"("r")
  if_1794_end:
.annotate 'line', 320
    set $P119, param_1770
    set $P120, $P1771
    unless_null $P120, vivify_628
    new $P120, "Undef"
  vivify_628:
    $P121 = $P119."!make"($P120)
.annotate 'line', 301
    .return ($P121)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "_block1775"  :anon :subid("359_1337965225.74") :outer("113_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 304
    new $P120, "Undef"
    set $P1777, $P120
    .lex "$ast", $P1777
    find_lex $P1778, "$/"
    unless_null $P1778, vivify_596
    $P1778 = root_new ['parrot';'Hash']
  vivify_596:
    set $P1779, $P1778["quantifier"]
    unless_null $P1779, vivify_597
    $P1779 = root_new ['parrot';'ResizablePMCArray']
  vivify_597:
    set $P121, $P1779[0]
    unless_null $P121, vivify_598
    new $P121, "Undef"
  vivify_598:
    $P122 = $P121."ast"()
    set $P1777, $P122
.annotate 'line', 305
    set $P121, $P1777
    unless_null $P121, vivify_599
    new $P121, "Undef"
  vivify_599:
    find_lex $P122, "$qast"
    unless_null $P122, vivify_600
    new $P122, "Undef"
  vivify_600:
    $P121."unshift"($P122)
.annotate 'line', 306
    set $P121, $P1777
    unless_null $P121, vivify_601
    new $P121, "Undef"
  vivify_601:
    store_lex "$qast", $P121
.annotate 'line', 303
    .return ($P121)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "separator" :anon :subid("114_1337965225.74") :outer("336_1337965225.74")
    .param pmc param_1798
    .param pmc param_1799
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 323
    .lex "self", param_1798
    .lex "$/", param_1799
.annotate 'line', 324
    set $P118, param_1799
    set $P1800, param_1799
    unless_null $P1800, vivify_629
    $P1800 = root_new ['parrot';'Hash']
  vivify_629:
    set $P119, $P1800["quantified_atom"]
    unless_null $P119, vivify_630
    new $P119, "Undef"
  vivify_630:
    $P120 = $P119."ast"()
    $P121 = $P118."!make"($P120)
.annotate 'line', 323
    .return ($P121)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "atom" :anon :subid("115_1337965225.74") :outer("336_1337965225.74")
    .param pmc param_1802
    .param pmc param_1803
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 327
    .const 'Sub' $P1808 = "360_1337965225.74" 
    capture_lex $P1808
    .lex "self", param_1802
    .lex "$/", param_1803
.annotate 'line', 328
    set $P1805, param_1803
    unless_null $P1805, vivify_631
    $P1805 = root_new ['parrot';'Hash']
  vivify_631:
    set $P119, $P1805["metachar"]
    unless_null $P119, vivify_632
    new $P119, "Undef"
  vivify_632:
    if $P119, if_1804
.annotate 'line', 331
    .const 'Sub' $P1808 = "360_1337965225.74" 
    capture_lex $P1808
    $P121 = $P1808()
    set $P118, $P121
.annotate 'line', 328
    goto if_1804_end
  if_1804:
.annotate 'line', 329
    set $P120, param_1803
    set $P1806, param_1803
    unless_null $P1806, vivify_640
    $P1806 = root_new ['parrot';'Hash']
  vivify_640:
    set $P121, $P1806["metachar"]
    unless_null $P121, vivify_641
    new $P121, "Undef"
  vivify_641:
    $P122 = $P121."ast"()
    $P123 = $P120."!make"($P122)
.annotate 'line', 328
    set $P118, $P123
  if_1804_end:
.annotate 'line', 327
    .return ($P118)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "_block1807"  :anon :subid("360_1337965225.74") :outer("115_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 332
    new $P120, "Undef"
    set $P1809, $P120
    .lex "$qast", $P1809
    get_hll_global $P121, "GLOBAL"
    nqp_get_package_through_who $P122, $P121, "QAST"
    get_who $P124, $P122
    set $P125, $P124["Regex"]
    find_lex $P126, "$/"
    unless_null $P126, vivify_633
    new $P126, "Undef"
  vivify_633:
    set $S100, $P126
    find_lex $P127, "$/"
    unless_null $P127, vivify_634
    new $P127, "Undef"
  vivify_634:
    $P128 = $P125."new"($S100, "literal" :named("rxtype"), $P127 :named("node"))
    set $P1809, $P128
.annotate 'line', 333
    find_dynamic_lex $P124, "%*RX"
    unless_null $P124, vivify_635
    get_hll_global $P121, "GLOBAL"
    get_who $P122, $P121
    set $P124, $P122["%RX"]
    unless_null $P124, vivify_636
    die "Contextual %*RX not found"
  vivify_636:
  vivify_635:
    set $P125, $P124["i"]
    unless_null $P125, vivify_637
    new $P125, "Undef"
  vivify_637:
    unless $P125, if_1810_end
    set $P126, $P1809
    unless_null $P126, vivify_638
    new $P126, "Undef"
  vivify_638:
    $P126."subtype"("ignorecase")
  if_1810_end:
.annotate 'line', 334
    find_dynamic_lex $P121, "$/"
    set $P122, $P1809
    unless_null $P122, vivify_639
    new $P122, "Undef"
  vivify_639:
    $P124 = $P121."!make"($P122)
.annotate 'line', 331
    .return ($P124)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "quantifier:sym<*>" :anon :subid("116_1337965225.74") :outer("336_1337965225.74")
    .param pmc param_1812
    .param pmc param_1813
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 338
    .lex "self", param_1812
    .lex "$/", param_1813
.annotate 'line', 339
    new $P118, "Undef"
    set $P1814, $P118
    .lex "$qast", $P1814
    get_hll_global $P119, "GLOBAL"
    nqp_get_package_through_who $P120, $P119, "QAST"
    get_who $P121, $P120
    set $P122, $P121["Regex"]
    set $P123, param_1813
    unless_null $P123, vivify_642
    new $P123, "Undef"
  vivify_642:
    $P124 = $P122."new"("quant" :named("rxtype"), $P123 :named("node"))
    set $P1814, $P124
.annotate 'line', 340
    set $P119, param_1813
    set $P120, $P1814
    unless_null $P120, vivify_643
    new $P120, "Undef"
  vivify_643:
    set $P1815, param_1813
    unless_null $P1815, vivify_644
    $P1815 = root_new ['parrot';'Hash']
  vivify_644:
    set $P121, $P1815["backmod"]
    unless_null $P121, vivify_645
    new $P121, "Undef"
  vivify_645:
    $P122 = "backmod"($P120, $P121)
    $P123 = $P119."!make"($P122)
.annotate 'line', 338
    .return ($P123)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "quantifier:sym<+>" :anon :subid("117_1337965225.74") :outer("336_1337965225.74")
    .param pmc param_1817
    .param pmc param_1818
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 343
    .lex "self", param_1817
    .lex "$/", param_1818
.annotate 'line', 344
    new $P118, "Undef"
    set $P1819, $P118
    .lex "$qast", $P1819
    get_hll_global $P119, "GLOBAL"
    nqp_get_package_through_who $P120, $P119, "QAST"
    get_who $P121, $P120
    set $P122, $P121["Regex"]
    set $P123, param_1818
    unless_null $P123, vivify_646
    new $P123, "Undef"
  vivify_646:
    $P124 = $P122."new"("quant" :named("rxtype"), 1 :named("min"), $P123 :named("node"))
    set $P1819, $P124
.annotate 'line', 345
    set $P119, param_1818
    set $P120, $P1819
    unless_null $P120, vivify_647
    new $P120, "Undef"
  vivify_647:
    set $P1820, param_1818
    unless_null $P1820, vivify_648
    $P1820 = root_new ['parrot';'Hash']
  vivify_648:
    set $P121, $P1820["backmod"]
    unless_null $P121, vivify_649
    new $P121, "Undef"
  vivify_649:
    $P122 = "backmod"($P120, $P121)
    $P123 = $P119."!make"($P122)
.annotate 'line', 343
    .return ($P123)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "quantifier:sym<?>" :anon :subid("118_1337965225.74") :outer("336_1337965225.74")
    .param pmc param_1822
    .param pmc param_1823
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 348
    .lex "self", param_1822
    .lex "$/", param_1823
.annotate 'line', 349
    new $P118, "Undef"
    set $P1824, $P118
    .lex "$qast", $P1824
    get_hll_global $P119, "GLOBAL"
    nqp_get_package_through_who $P120, $P119, "QAST"
    get_who $P121, $P120
    set $P122, $P121["Regex"]
    set $P123, param_1823
    unless_null $P123, vivify_650
    new $P123, "Undef"
  vivify_650:
    $P124 = $P122."new"("quant" :named("rxtype"), 0 :named("min"), 1 :named("max"), $P123 :named("node"))
    set $P1824, $P124
.annotate 'line', 350
    set $P119, param_1823
    set $P120, $P1824
    unless_null $P120, vivify_651
    new $P120, "Undef"
  vivify_651:
    set $P1825, param_1823
    unless_null $P1825, vivify_652
    $P1825 = root_new ['parrot';'Hash']
  vivify_652:
    set $P121, $P1825["backmod"]
    unless_null $P121, vivify_653
    new $P121, "Undef"
  vivify_653:
    $P122 = "backmod"($P120, $P121)
    $P123 = $P119."!make"($P122)
.annotate 'line', 348
    .return ($P123)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "quantifier:sym<**>" :anon :subid("119_1337965225.74") :outer("336_1337965225.74")
    .param pmc param_1827
    .param pmc param_1828
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 353
    .lex "self", param_1827
    .lex "$/", param_1828
.annotate 'line', 354
    new $P118, "Undef"
    set $P1829, $P118
    .lex "$qast", $P1829
.annotate 'line', 353
    set $P119, $P1829
    unless_null $P119, vivify_654
    new $P119, "Undef"
  vivify_654:
.annotate 'line', 355
    get_hll_global $P119, "GLOBAL"
    nqp_get_package_through_who $P120, $P119, "QAST"
    get_who $P121, $P120
    set $P122, $P121["Regex"]
    set $P1830, param_1828
    unless_null $P1830, vivify_655
    $P1830 = root_new ['parrot';'Hash']
  vivify_655:
    set $P123, $P1830["min"]
    unless_null $P123, vivify_656
    new $P123, "Undef"
  vivify_656:
    set $N100, $P123
    set $P124, param_1828
    unless_null $P124, vivify_657
    new $P124, "Undef"
  vivify_657:
    $P125 = $P122."new"("quant" :named("rxtype"), $N100 :named("min"), $P124 :named("node"))
    set $P1829, $P125
.annotate 'line', 356
    set $P1832, param_1828
    unless_null $P1832, vivify_658
    $P1832 = root_new ['parrot';'Hash']
  vivify_658:
    set $P119, $P1832["max"]
    unless_null $P119, vivify_659
    new $P119, "Undef"
  vivify_659:
    isfalse $I100, $P119
    if $I100, if_1831
.annotate 'line', 357
    set $P1835, param_1828
    unless_null $P1835, vivify_660
    $P1835 = root_new ['parrot';'Hash']
  vivify_660:
    set $P1836, $P1835["max"]
    unless_null $P1836, vivify_661
    $P1836 = root_new ['parrot';'ResizablePMCArray']
  vivify_661:
    set $P120, $P1836[0]
    unless_null $P120, vivify_662
    new $P120, "Undef"
  vivify_662:
    set $S100, $P120
    isne $I101, $S100, "*"
    unless $I101, if_1834_end
    set $P121, $P1829
    unless_null $P121, vivify_663
    new $P121, "Undef"
  vivify_663:
    set $P1837, param_1828
    unless_null $P1837, vivify_664
    $P1837 = root_new ['parrot';'Hash']
  vivify_664:
    set $P1838, $P1837["max"]
    unless_null $P1838, vivify_665
    $P1838 = root_new ['parrot';'ResizablePMCArray']
  vivify_665:
    set $P122, $P1838[0]
    unless_null $P122, vivify_666
    new $P122, "Undef"
  vivify_666:
    set $N100, $P122
    $P121."max"($N100)
  if_1834_end:
    goto if_1831_end
  if_1831:
.annotate 'line', 356
    set $P120, $P1829
    unless_null $P120, vivify_667
    new $P120, "Undef"
  vivify_667:
    set $P1833, param_1828
    unless_null $P1833, vivify_668
    $P1833 = root_new ['parrot';'Hash']
  vivify_668:
    set $P121, $P1833["min"]
    unless_null $P121, vivify_669
    new $P121, "Undef"
  vivify_669:
    set $N100, $P121
    $P120."max"($N100)
  if_1831_end:
.annotate 'line', 358
    set $P119, param_1828
    set $P120, $P1829
    unless_null $P120, vivify_670
    new $P120, "Undef"
  vivify_670:
    set $P1839, param_1828
    unless_null $P1839, vivify_671
    $P1839 = root_new ['parrot';'Hash']
  vivify_671:
    set $P121, $P1839["backmod"]
    unless_null $P121, vivify_672
    new $P121, "Undef"
  vivify_672:
    $P122 = "backmod"($P120, $P121)
    $P123 = $P119."!make"($P122)
.annotate 'line', 353
    .return ($P123)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "metachar:sym<ws>" :anon :subid("120_1337965225.74") :outer("336_1337965225.74")
    .param pmc param_1841
    .param pmc param_1842
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 361
    .lex "self", param_1841
    .lex "$/", param_1842
.annotate 'line', 362
    new $P118, "Undef"
    set $P1843, $P118
    .lex "$qast", $P1843
.annotate 'line', 363
    find_dynamic_lex $P122, "%*RX"
    unless_null $P122, vivify_673
    get_hll_global $P120, "GLOBAL"
    get_who $P121, $P120
    set $P122, $P121["%RX"]
    unless_null $P122, vivify_674
    die "Contextual %*RX not found"
  vivify_674:
  vivify_673:
    set $P123, $P122["s"]
    unless_null $P123, vivify_675
    new $P123, "Undef"
  vivify_675:
    if $P123, if_1844
    new $P135, "Float"
    assign $P135, 0
    set $P119, $P135
    goto if_1844_end
  if_1844:
    get_hll_global $P124, "GLOBAL"
    nqp_get_package_through_who $P125, $P124, "QAST"
    get_who $P126, $P125
    set $P127, $P126["Regex"]
    get_hll_global $P128, "GLOBAL"
    nqp_get_package_through_who $P129, $P128, "PAST"
    get_who $P130, $P129
    set $P131, $P130["Node"]
    $P132 = $P131."new"("ws")
    set $P133, param_1842
    unless_null $P133, vivify_676
    new $P133, "Undef"
  vivify_676:
    $P134 = $P127."new"($P132, "ws" :named("rxtype"), "method" :named("subtype"), $P133 :named("node"))
    set $P119, $P134
  if_1844_end:
    set $P1843, $P119
.annotate 'line', 365
    set $P119, param_1842
    set $P120, $P1843
    unless_null $P120, vivify_677
    new $P120, "Undef"
  vivify_677:
    $P121 = $P119."!make"($P120)
.annotate 'line', 361
    .return ($P121)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "metachar:sym<[ ]>" :anon :subid("121_1337965225.74") :outer("336_1337965225.74")
    .param pmc param_1846
    .param pmc param_1847
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 368
    .lex "self", param_1846
    .lex "$/", param_1847
.annotate 'line', 369
    set $P118, param_1847
    set $P1848, param_1847
    unless_null $P1848, vivify_678
    $P1848 = root_new ['parrot';'Hash']
  vivify_678:
    set $P119, $P1848["nibbler"]
    unless_null $P119, vivify_679
    new $P119, "Undef"
  vivify_679:
    $P120 = $P119."ast"()
    $P121 = $P118."!make"($P120)
.annotate 'line', 368
    .return ($P121)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "metachar:sym<( )>" :anon :subid("122_1337965225.74") :outer("336_1337965225.74")
    .param pmc param_1850
    .param pmc param_1851
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 372
    .lex "self", param_1850
    .lex "$/", param_1851
.annotate 'line', 373
    new $P118, "Undef"
    set $P1852, $P118
    .lex "$subpast", $P1852
.annotate 'line', 374
    new $P119, "Undef"
    set $P1853, $P119
    .lex "$qast", $P1853
.annotate 'line', 373
    get_hll_global $P120, "GLOBAL"
    nqp_get_package_through_who $P121, $P120, "PAST"
    get_who $P122, $P121
    set $P123, $P122["Node"]
    set $P1854, param_1851
    unless_null $P1854, vivify_680
    $P1854 = root_new ['parrot';'Hash']
  vivify_680:
    set $P124, $P1854["nibbler"]
    unless_null $P124, vivify_681
    new $P124, "Undef"
  vivify_681:
    $P125 = $P124."ast"()
    $P126 = "buildsub"($P125, 1 :named("anon"))
    $P127 = $P123."new"($P126)
    set $P1852, $P127
.annotate 'line', 374
    get_hll_global $P120, "GLOBAL"
    nqp_get_package_through_who $P121, $P120, "QAST"
    get_who $P122, $P121
    set $P123, $P122["Regex"]
    set $P124, $P1852
    unless_null $P124, vivify_682
    new $P124, "Undef"
  vivify_682:
    set $P1855, param_1851
    unless_null $P1855, vivify_683
    $P1855 = root_new ['parrot';'Hash']
  vivify_683:
    set $P125, $P1855["nibbler"]
    unless_null $P125, vivify_684
    new $P125, "Undef"
  vivify_684:
    $P126 = $P125."ast"()
    set $P127, param_1851
    unless_null $P127, vivify_685
    new $P127, "Undef"
  vivify_685:
    $P128 = $P123."new"($P124, $P126, "subrule" :named("rxtype"), "capture" :named("subtype"), $P127 :named("node"))
    set $P1853, $P128
.annotate 'line', 376
    set $P120, param_1851
    set $P121, $P1853
    unless_null $P121, vivify_686
    new $P121, "Undef"
  vivify_686:
    $P122 = $P120."!make"($P121)
.annotate 'line', 372
    .return ($P122)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "metachar:sym<'>" :anon :subid("123_1337965225.74") :outer("336_1337965225.74")
    .param pmc param_1857
    .param pmc param_1858
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 379
    .lex "self", param_1857
    .lex "$/", param_1858
.annotate 'line', 380
    new $P118, "Undef"
    set $P1859, $P118
    .lex "$quote", $P1859
.annotate 'line', 382
    new $P119, "Undef"
    set $P1860, $P119
    .lex "$qast", $P1860
.annotate 'line', 380
    set $P1861, param_1858
    unless_null $P1861, vivify_687
    $P1861 = root_new ['parrot';'Hash']
  vivify_687:
    set $P120, $P1861["quote_EXPR"]
    unless_null $P120, vivify_688
    new $P120, "Undef"
  vivify_688:
    $P121 = $P120."ast"()
    set $P1859, $P121
.annotate 'line', 381
    get_hll_global $P120, "GLOBAL"
    nqp_get_package_through_who $P121, $P120, "PAST"
    get_who $P122, $P121
    set $P123, $P122["Val"]
    set $P124, $P1859
    unless_null $P124, vivify_689
    new $P124, "Undef"
  vivify_689:
    $P125 = $P123."ACCEPTS"($P124)
    unless $P125, if_1862_end
    set $P126, $P1859
    unless_null $P126, vivify_690
    new $P126, "Undef"
  vivify_690:
    $P127 = $P126."value"()
    set $P1859, $P127
  if_1862_end:
.annotate 'line', 382
    get_hll_global $P120, "GLOBAL"
    nqp_get_package_through_who $P121, $P120, "QAST"
    get_who $P122, $P121
    set $P123, $P122["Regex"]
    set $P124, $P1859
    unless_null $P124, vivify_691
    new $P124, "Undef"
  vivify_691:
    set $P125, param_1858
    unless_null $P125, vivify_692
    new $P125, "Undef"
  vivify_692:
    $P126 = $P123."new"($P124, "literal" :named("rxtype"), $P125 :named("node"))
    set $P1860, $P126
.annotate 'line', 383
    find_dynamic_lex $P122, "%*RX"
    unless_null $P122, vivify_693
    get_hll_global $P120, "GLOBAL"
    get_who $P121, $P120
    set $P122, $P121["%RX"]
    unless_null $P122, vivify_694
    die "Contextual %*RX not found"
  vivify_694:
  vivify_693:
    set $P123, $P122["i"]
    unless_null $P123, vivify_695
    new $P123, "Undef"
  vivify_695:
    unless $P123, if_1863_end
    set $P124, $P1860
    unless_null $P124, vivify_696
    new $P124, "Undef"
  vivify_696:
    $P124."subtype"("ignorecase")
  if_1863_end:
.annotate 'line', 384
    set $P120, param_1858
    set $P121, $P1860
    unless_null $P121, vivify_697
    new $P121, "Undef"
  vivify_697:
    $P122 = $P120."!make"($P121)
.annotate 'line', 379
    .return ($P122)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "metachar:sym<\">" :anon :subid("124_1337965225.74") :outer("336_1337965225.74")
    .param pmc param_1865
    .param pmc param_1866
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 387
    .lex "self", param_1865
    .lex "$/", param_1866
.annotate 'line', 388
    new $P118, "Undef"
    set $P1867, $P118
    .lex "$quote", $P1867
.annotate 'line', 390
    new $P119, "Undef"
    set $P1868, $P119
    .lex "$qast", $P1868
.annotate 'line', 388
    set $P1869, param_1866
    unless_null $P1869, vivify_698
    $P1869 = root_new ['parrot';'Hash']
  vivify_698:
    set $P120, $P1869["quote_EXPR"]
    unless_null $P120, vivify_699
    new $P120, "Undef"
  vivify_699:
    $P121 = $P120."ast"()
    set $P1867, $P121
.annotate 'line', 389
    get_hll_global $P120, "GLOBAL"
    nqp_get_package_through_who $P121, $P120, "PAST"
    get_who $P122, $P121
    set $P123, $P122["Val"]
    set $P124, $P1867
    unless_null $P124, vivify_700
    new $P124, "Undef"
  vivify_700:
    $P125 = $P123."ACCEPTS"($P124)
    unless $P125, if_1870_end
    set $P126, $P1867
    unless_null $P126, vivify_701
    new $P126, "Undef"
  vivify_701:
    $P127 = $P126."value"()
    set $P1867, $P127
  if_1870_end:
.annotate 'line', 390
    get_hll_global $P120, "GLOBAL"
    nqp_get_package_through_who $P121, $P120, "QAST"
    get_who $P122, $P121
    set $P123, $P122["Regex"]
    set $P124, $P1867
    unless_null $P124, vivify_702
    new $P124, "Undef"
  vivify_702:
    set $P125, param_1866
    unless_null $P125, vivify_703
    new $P125, "Undef"
  vivify_703:
    $P126 = $P123."new"($P124, "literal" :named("rxtype"), $P125 :named("node"))
    set $P1868, $P126
.annotate 'line', 391
    find_dynamic_lex $P122, "%*RX"
    unless_null $P122, vivify_704
    get_hll_global $P120, "GLOBAL"
    get_who $P121, $P120
    set $P122, $P121["%RX"]
    unless_null $P122, vivify_705
    die "Contextual %*RX not found"
  vivify_705:
  vivify_704:
    set $P123, $P122["i"]
    unless_null $P123, vivify_706
    new $P123, "Undef"
  vivify_706:
    unless $P123, if_1871_end
    set $P124, $P1868
    unless_null $P124, vivify_707
    new $P124, "Undef"
  vivify_707:
    $P124."subtype"("ignorecase")
  if_1871_end:
.annotate 'line', 392
    set $P120, param_1866
    set $P121, $P1868
    unless_null $P121, vivify_708
    new $P121, "Undef"
  vivify_708:
    $P122 = $P120."!make"($P121)
.annotate 'line', 387
    .return ($P122)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "metachar:sym<.>" :anon :subid("125_1337965225.74") :outer("336_1337965225.74")
    .param pmc param_1873
    .param pmc param_1874
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 395
    .lex "self", param_1873
    .lex "$/", param_1874
.annotate 'line', 396
    set $P118, param_1874
    get_hll_global $P119, "GLOBAL"
    nqp_get_package_through_who $P120, $P119, "QAST"
    get_who $P121, $P120
    set $P122, $P121["Regex"]
    set $P123, param_1874
    unless_null $P123, vivify_709
    new $P123, "Undef"
  vivify_709:
    $P124 = $P122."new"("cclass" :named("rxtype"), "." :named("subtype"), $P123 :named("node"))
    $P125 = $P118."!make"($P124)
.annotate 'line', 395
    .return ($P125)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "metachar:sym<^>" :anon :subid("126_1337965225.74") :outer("336_1337965225.74")
    .param pmc param_1876
    .param pmc param_1877
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 399
    .lex "self", param_1876
    .lex "$/", param_1877
.annotate 'line', 400
    set $P118, param_1877
    get_hll_global $P119, "GLOBAL"
    nqp_get_package_through_who $P120, $P119, "QAST"
    get_who $P121, $P120
    set $P122, $P121["Regex"]
    set $P123, param_1877
    unless_null $P123, vivify_710
    new $P123, "Undef"
  vivify_710:
    $P124 = $P122."new"("anchor" :named("rxtype"), "bos" :named("subtype"), $P123 :named("node"))
    $P125 = $P118."!make"($P124)
.annotate 'line', 399
    .return ($P125)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "metachar:sym<^^>" :anon :subid("127_1337965225.74") :outer("336_1337965225.74")
    .param pmc param_1879
    .param pmc param_1880
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 403
    .lex "self", param_1879
    .lex "$/", param_1880
.annotate 'line', 404
    set $P118, param_1880
    get_hll_global $P119, "GLOBAL"
    nqp_get_package_through_who $P120, $P119, "QAST"
    get_who $P121, $P120
    set $P122, $P121["Regex"]
    set $P123, param_1880
    unless_null $P123, vivify_711
    new $P123, "Undef"
  vivify_711:
    $P124 = $P122."new"("anchor" :named("rxtype"), "bol" :named("subtype"), $P123 :named("node"))
    $P125 = $P118."!make"($P124)
.annotate 'line', 403
    .return ($P125)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "metachar:sym<$>" :anon :subid("128_1337965225.74") :outer("336_1337965225.74")
    .param pmc param_1882
    .param pmc param_1883
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 407
    .lex "self", param_1882
    .lex "$/", param_1883
.annotate 'line', 408
    set $P118, param_1883
    get_hll_global $P119, "GLOBAL"
    nqp_get_package_through_who $P120, $P119, "QAST"
    get_who $P121, $P120
    set $P122, $P121["Regex"]
    set $P123, param_1883
    unless_null $P123, vivify_712
    new $P123, "Undef"
  vivify_712:
    $P124 = $P122."new"("anchor" :named("rxtype"), "eos" :named("subtype"), $P123 :named("node"))
    $P125 = $P118."!make"($P124)
.annotate 'line', 407
    .return ($P125)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "metachar:sym<$$>" :anon :subid("129_1337965225.74") :outer("336_1337965225.74")
    .param pmc param_1885
    .param pmc param_1886
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 411
    .lex "self", param_1885
    .lex "$/", param_1886
.annotate 'line', 412
    set $P118, param_1886
    get_hll_global $P119, "GLOBAL"
    nqp_get_package_through_who $P120, $P119, "QAST"
    get_who $P121, $P120
    set $P122, $P121["Regex"]
    set $P123, param_1886
    unless_null $P123, vivify_713
    new $P123, "Undef"
  vivify_713:
    $P124 = $P122."new"("anchor" :named("rxtype"), "eol" :named("subtype"), $P123 :named("node"))
    $P125 = $P118."!make"($P124)
.annotate 'line', 411
    .return ($P125)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "metachar:sym<lwb>" :anon :subid("130_1337965225.74") :outer("336_1337965225.74")
    .param pmc param_1888
    .param pmc param_1889
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 415
    .lex "self", param_1888
    .lex "$/", param_1889
.annotate 'line', 416
    set $P118, param_1889
    get_hll_global $P119, "GLOBAL"
    nqp_get_package_through_who $P120, $P119, "QAST"
    get_who $P121, $P120
    set $P122, $P121["Regex"]
    set $P123, param_1889
    unless_null $P123, vivify_714
    new $P123, "Undef"
  vivify_714:
    $P124 = $P122."new"("anchor" :named("rxtype"), "lwb" :named("subtype"), $P123 :named("node"))
    $P125 = $P118."!make"($P124)
.annotate 'line', 415
    .return ($P125)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "metachar:sym<rwb>" :anon :subid("131_1337965225.74") :outer("336_1337965225.74")
    .param pmc param_1891
    .param pmc param_1892
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 419
    .lex "self", param_1891
    .lex "$/", param_1892
.annotate 'line', 420
    set $P118, param_1892
    get_hll_global $P119, "GLOBAL"
    nqp_get_package_through_who $P120, $P119, "QAST"
    get_who $P121, $P120
    set $P122, $P121["Regex"]
    set $P123, param_1892
    unless_null $P123, vivify_715
    new $P123, "Undef"
  vivify_715:
    $P124 = $P122."new"("anchor" :named("rxtype"), "rwb" :named("subtype"), $P123 :named("node"))
    $P125 = $P118."!make"($P124)
.annotate 'line', 419
    .return ($P125)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "metachar:sym<bs>" :anon :subid("132_1337965225.74") :outer("336_1337965225.74")
    .param pmc param_1894
    .param pmc param_1895
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 423
    .lex "self", param_1894
    .lex "$/", param_1895
.annotate 'line', 424
    set $P118, param_1895
    set $P1896, param_1895
    unless_null $P1896, vivify_716
    $P1896 = root_new ['parrot';'Hash']
  vivify_716:
    set $P119, $P1896["backslash"]
    unless_null $P119, vivify_717
    new $P119, "Undef"
  vivify_717:
    $P120 = $P119."ast"()
    $P121 = $P118."!make"($P120)
.annotate 'line', 423
    .return ($P121)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "metachar:sym<assert>" :anon :subid("133_1337965225.74") :outer("336_1337965225.74")
    .param pmc param_1898
    .param pmc param_1899
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 427
    .lex "self", param_1898
    .lex "$/", param_1899
.annotate 'line', 428
    set $P118, param_1899
    set $P1900, param_1899
    unless_null $P1900, vivify_718
    $P1900 = root_new ['parrot';'Hash']
  vivify_718:
    set $P119, $P1900["assertion"]
    unless_null $P119, vivify_719
    new $P119, "Undef"
  vivify_719:
    $P120 = $P119."ast"()
    $P121 = $P118."!make"($P120)
.annotate 'line', 427
    .return ($P121)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "metachar:sym<var>" :anon :subid("134_1337965225.74") :outer("336_1337965225.74")
    .param pmc param_1902
    .param pmc param_1903
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 431
    .lex "self", param_1902
    .lex "$/", param_1903
.annotate 'line', 432
    new $P118, "Undef"
    set $P1904, $P118
    .lex "$qast", $P1904
.annotate 'line', 433
    new $P119, "Undef"
    set $P1905, $P119
    .lex "$name", $P1905
.annotate 'line', 431
    set $P120, $P1904
    unless_null $P120, vivify_720
    new $P120, "Undef"
  vivify_720:
.annotate 'line', 433
    set $P1907, param_1903
    unless_null $P1907, vivify_721
    $P1907 = root_new ['parrot';'Hash']
  vivify_721:
    set $P121, $P1907["pos"]
    unless_null $P121, vivify_722
    new $P121, "Undef"
  vivify_722:
    if $P121, if_1906
    set $P1909, param_1903
    unless_null $P1909, vivify_723
    $P1909 = root_new ['parrot';'Hash']
  vivify_723:
    set $P123, $P1909["name"]
    unless_null $P123, vivify_724
    new $P123, "Undef"
  vivify_724:
    set $S100, $P123
    new $P120, 'String'
    set $P120, $S100
    goto if_1906_end
  if_1906:
    set $P1908, param_1903
    unless_null $P1908, vivify_725
    $P1908 = root_new ['parrot';'Hash']
  vivify_725:
    set $P122, $P1908["pos"]
    unless_null $P122, vivify_726
    new $P122, "Undef"
  vivify_726:
    set $N100, $P122
    new $P120, 'Float'
    set $P120, $N100
  if_1906_end:
    set $P1905, $P120
.annotate 'line', 434
    set $P1911, param_1903
    unless_null $P1911, vivify_727
    $P1911 = root_new ['parrot';'Hash']
  vivify_727:
    set $P120, $P1911["quantified_atom"]
    unless_null $P120, vivify_728
    new $P120, "Undef"
  vivify_728:
    if $P120, if_1910
.annotate 'line', 448
    get_hll_global $P121, "GLOBAL"
    nqp_get_package_through_who $P122, $P121, "QAST"
    get_who $P123, $P122
    set $P124, $P123["Regex"]
    get_hll_global $P125, "GLOBAL"
    nqp_get_package_through_who $P126, $P125, "PAST"
    get_who $P127, $P126
    set $P128, $P127["Node"]
    set $P129, $P1905
    unless_null $P129, vivify_729
    new $P129, "Undef"
  vivify_729:
    $P130 = $P128."new"("!BACKREF", $P129)
    set $P131, param_1903
    unless_null $P131, vivify_730
    new $P131, "Undef"
  vivify_730:
    $P132 = $P124."new"($P130, "subrule" :named("rxtype"), "method" :named("subtype"), $P131 :named("node"))
    set $P1904, $P132
.annotate 'line', 447
    goto if_1910_end
  if_1910:
.annotate 'line', 435
    set $P1912, param_1903
    unless_null $P1912, vivify_731
    $P1912 = root_new ['parrot';'Hash']
  vivify_731:
    set $P1913, $P1912["quantified_atom"]
    unless_null $P1913, vivify_732
    $P1913 = root_new ['parrot';'ResizablePMCArray']
  vivify_732:
    set $P121, $P1913[0]
    unless_null $P121, vivify_733
    new $P121, "Undef"
  vivify_733:
    $P122 = $P121."ast"()
    set $P1904, $P122
.annotate 'line', 436
    set $P122, $P1904
    unless_null $P122, vivify_734
    new $P122, "Undef"
  vivify_734:
    $S100 = $P122."rxtype"()
    iseq $I100, $S100, "quant"
    if $I100, if_1915
    new $P121, 'Integer'
    set $P121, $I100
    goto if_1915_end
  if_1915:
    set $P1916, $P1904
    unless_null $P1916, vivify_735
    $P1916 = root_new ['parrot';'ResizablePMCArray']
  vivify_735:
    set $P123, $P1916[0]
    unless_null $P123, vivify_736
    new $P123, "Undef"
  vivify_736:
    $S101 = $P123."rxtype"()
    iseq $I101, $S101, "subrule"
    new $P121, 'Integer'
    set $P121, $I101
  if_1915_end:
    if $P121, if_1914
.annotate 'line', 439
    set $P124, $P1904
    unless_null $P124, vivify_737
    new $P124, "Undef"
  vivify_737:
    $S102 = $P124."rxtype"()
    iseq $I102, $S102, "subrule"
    if $I102, if_1918
.annotate 'line', 443
    get_hll_global $P125, "GLOBAL"
    nqp_get_package_through_who $P126, $P125, "QAST"
    get_who $P127, $P126
    set $P128, $P127["Regex"]
    set $P129, $P1904
    unless_null $P129, vivify_738
    new $P129, "Undef"
  vivify_738:
    set $P130, $P1905
    unless_null $P130, vivify_739
    new $P130, "Undef"
  vivify_739:
    set $P131, param_1903
    unless_null $P131, vivify_740
    new $P131, "Undef"
  vivify_740:
    $P132 = $P128."new"($P129, $P130 :named("name"), "subcapture" :named("rxtype"), $P131 :named("node"))
    set $P1904, $P132
.annotate 'line', 442
    goto if_1918_end
  if_1918:
.annotate 'line', 440
    set $P125, param_1902
    nqp_decontainerize $P126, $P125
    set $P127, $P1904
    unless_null $P127, vivify_741
    new $P127, "Undef"
  vivify_741:
    set $P128, $P1905
    unless_null $P128, vivify_742
    new $P128, "Undef"
  vivify_742:
    $P126."subrule_alias"($P127, $P128)
  if_1918_end:
.annotate 'line', 439
    goto if_1914_end
  if_1914:
.annotate 'line', 437
    set $P124, param_1902
    nqp_decontainerize $P125, $P124
    set $P1917, $P1904
    unless_null $P1917, vivify_743
    $P1917 = root_new ['parrot';'ResizablePMCArray']
  vivify_743:
    set $P126, $P1917[0]
    unless_null $P126, vivify_744
    new $P126, "Undef"
  vivify_744:
    set $P127, $P1905
    unless_null $P127, vivify_745
    new $P127, "Undef"
  vivify_745:
    $P125."subrule_alias"($P126, $P127)
  if_1914_end:
  if_1910_end:
.annotate 'line', 451
    set $P120, param_1903
    set $P121, $P1904
    unless_null $P121, vivify_746
    new $P121, "Undef"
  vivify_746:
    $P122 = $P120."!make"($P121)
.annotate 'line', 431
    .return ($P122)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "metachar:sym<~>" :anon :subid("135_1337965225.74") :outer("336_1337965225.74")
    .param pmc param_1920
    .param pmc param_1921
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 454
    .lex "self", param_1920
    .lex "$/", param_1921
.annotate 'line', 455
    set $P118, param_1921
    get_hll_global $P119, "GLOBAL"
    nqp_get_package_through_who $P120, $P119, "QAST"
    get_who $P121, $P120
    set $P122, $P121["Regex"]
.annotate 'line', 456
    set $P1922, param_1921
    unless_null $P1922, vivify_747
    $P1922 = root_new ['parrot';'Hash']
  vivify_747:
    set $P123, $P1922["EXPR"]
    unless_null $P123, vivify_748
    new $P123, "Undef"
  vivify_748:
    $P124 = $P123."ast"()
.annotate 'line', 457
    get_hll_global $P125, "GLOBAL"
    nqp_get_package_through_who $P126, $P125, "QAST"
    get_who $P127, $P126
    set $P128, $P127["Regex"]
.annotate 'line', 458
    set $P1923, param_1921
    unless_null $P1923, vivify_749
    $P1923 = root_new ['parrot';'Hash']
  vivify_749:
    set $P129, $P1923["GOAL"]
    unless_null $P129, vivify_750
    new $P129, "Undef"
  vivify_750:
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
    set $P1924, param_1921
    unless_null $P1924, vivify_751
    $P1924 = root_new ['parrot';'Hash']
  vivify_751:
    set $P139, $P1924["GOAL"]
    unless_null $P139, vivify_752
    new $P139, "Undef"
  vivify_752:
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
.sub "backslash:sym<s>" :anon :subid("136_1337965225.74") :outer("336_1337965225.74")
    .param pmc param_1926
    .param pmc param_1927
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 467
    .lex "self", param_1926
    .lex "$/", param_1927
.annotate 'line', 468
    set $P118, param_1927
    get_hll_global $P119, "GLOBAL"
    nqp_get_package_through_who $P120, $P119, "QAST"
    get_who $P121, $P120
    set $P122, $P121["Regex"]
.annotate 'line', 469
    set $P1929, param_1927
    unless_null $P1929, vivify_753
    $P1929 = root_new ['parrot';'Hash']
  vivify_753:
    set $P124, $P1929["sym"]
    unless_null $P124, vivify_754
    new $P124, "Undef"
  vivify_754:
    set $S100, $P124
    iseq $I100, $S100, "n"
    if $I100, if_1928
    set $P1930, param_1927
    unless_null $P1930, vivify_755
    $P1930 = root_new ['parrot';'Hash']
  vivify_755:
    set $P126, $P1930["sym"]
    unless_null $P126, vivify_756
    new $P126, "Undef"
  vivify_756:
    set $S101, $P126
    new $P123, 'String'
    set $P123, $S101
    goto if_1928_end
  if_1928:
    new $P125, "String"
    assign $P125, "nl"
    set $P123, $P125
  if_1928_end:
.annotate 'line', 470
    set $P1931, param_1927
    unless_null $P1931, vivify_757
    $P1931 = root_new ['parrot';'Hash']
  vivify_757:
    set $P127, $P1931["sym"]
    unless_null $P127, vivify_758
    new $P127, "Undef"
  vivify_758:
    set $S102, $P127
    isle $I101, $S102, "Z"
.annotate 'line', 468
    set $P128, param_1927
    unless_null $P128, vivify_759
    new $P128, "Undef"
  vivify_759:
    $P129 = $P122."new"(".CCLASS_WHITESPACE", "cclass" :named("rxtype"), $P123 :named("subtype"), $I101 :named("negate"), $P128 :named("node"))
    $P130 = $P118."!make"($P129)
.annotate 'line', 467
    .return ($P130)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "backslash:sym<b>" :anon :subid("137_1337965225.74") :outer("336_1337965225.74")
    .param pmc param_1933
    .param pmc param_1934
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 473
    .lex "self", param_1933
    .lex "$/", param_1934
.annotate 'line', 474
    new $P118, "Undef"
    set $P1935, $P118
    .lex "$qast", $P1935
    get_hll_global $P119, "GLOBAL"
    nqp_get_package_through_who $P120, $P119, "QAST"
    get_who $P121, $P120
    set $P122, $P121["Regex"]
.annotate 'line', 475
    set $P1936, param_1934
    unless_null $P1936, vivify_760
    $P1936 = root_new ['parrot';'Hash']
  vivify_760:
    set $P123, $P1936["sym"]
    unless_null $P123, vivify_761
    new $P123, "Undef"
  vivify_761:
    set $S100, $P123
    iseq $I100, $S100, "B"
.annotate 'line', 474
    set $P124, param_1934
    unless_null $P124, vivify_762
    new $P124, "Undef"
  vivify_762:
    $P125 = $P122."new"("\b", "enumcharlist" :named("rxtype"), $I100 :named("negate"), $P124 :named("node"))
    set $P1935, $P125
.annotate 'line', 476
    set $P119, param_1934
    set $P120, $P1935
    unless_null $P120, vivify_763
    new $P120, "Undef"
  vivify_763:
    $P121 = $P119."!make"($P120)
.annotate 'line', 473
    .return ($P121)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "backslash:sym<e>" :anon :subid("138_1337965225.74") :outer("336_1337965225.74")
    .param pmc param_1938
    .param pmc param_1939
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 479
    .lex "self", param_1938
    .lex "$/", param_1939
.annotate 'line', 480
    new $P118, "Undef"
    set $P1940, $P118
    .lex "$qast", $P1940
    get_hll_global $P119, "GLOBAL"
    nqp_get_package_through_who $P120, $P119, "QAST"
    get_who $P121, $P120
    set $P122, $P121["Regex"]
.annotate 'line', 481
    set $P1941, param_1939
    unless_null $P1941, vivify_764
    $P1941 = root_new ['parrot';'Hash']
  vivify_764:
    set $P123, $P1941["sym"]
    unless_null $P123, vivify_765
    new $P123, "Undef"
  vivify_765:
    set $S100, $P123
    iseq $I100, $S100, "E"
.annotate 'line', 480
    set $P124, param_1939
    unless_null $P124, vivify_766
    new $P124, "Undef"
  vivify_766:
    $P125 = $P122."new"("\e", "enumcharlist" :named("rxtype"), $I100 :named("negate"), $P124 :named("node"))
    set $P1940, $P125
.annotate 'line', 482
    set $P119, param_1939
    set $P120, $P1940
    unless_null $P120, vivify_767
    new $P120, "Undef"
  vivify_767:
    $P121 = $P119."!make"($P120)
.annotate 'line', 479
    .return ($P121)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "backslash:sym<f>" :anon :subid("139_1337965225.74") :outer("336_1337965225.74")
    .param pmc param_1943
    .param pmc param_1944
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 485
    .lex "self", param_1943
    .lex "$/", param_1944
.annotate 'line', 486
    new $P118, "Undef"
    set $P1945, $P118
    .lex "$qast", $P1945
    get_hll_global $P119, "GLOBAL"
    nqp_get_package_through_who $P120, $P119, "QAST"
    get_who $P121, $P120
    set $P122, $P121["Regex"]
.annotate 'line', 487
    set $P1946, param_1944
    unless_null $P1946, vivify_768
    $P1946 = root_new ['parrot';'Hash']
  vivify_768:
    set $P123, $P1946["sym"]
    unless_null $P123, vivify_769
    new $P123, "Undef"
  vivify_769:
    set $S100, $P123
    iseq $I100, $S100, "F"
.annotate 'line', 486
    set $P124, param_1944
    unless_null $P124, vivify_770
    new $P124, "Undef"
  vivify_770:
    $P125 = $P122."new"("\f", "enumcharlist" :named("rxtype"), $I100 :named("negate"), $P124 :named("node"))
    set $P1945, $P125
.annotate 'line', 488
    set $P119, param_1944
    set $P120, $P1945
    unless_null $P120, vivify_771
    new $P120, "Undef"
  vivify_771:
    $P121 = $P119."!make"($P120)
.annotate 'line', 485
    .return ($P121)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "backslash:sym<h>" :anon :subid("140_1337965225.74") :outer("336_1337965225.74")
    .param pmc param_1948
    .param pmc param_1949
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 491
    .lex "self", param_1948
    .lex "$/", param_1949
.annotate 'line', 492
    new $P118, "Undef"
    set $P1950, $P118
    .lex "$qast", $P1950
    get_hll_global $P119, "GLOBAL"
    nqp_get_package_through_who $P120, $P119, "QAST"
    get_who $P121, $P120
    set $P122, $P121["Regex"]
.annotate 'line', 493
    set $P1951, param_1949
    unless_null $P1951, vivify_772
    $P1951 = root_new ['parrot';'Hash']
  vivify_772:
    set $P123, $P1951["sym"]
    unless_null $P123, vivify_773
    new $P123, "Undef"
  vivify_773:
    set $S100, $P123
    iseq $I100, $S100, "H"
.annotate 'line', 492
    set $P124, param_1949
    unless_null $P124, vivify_774
    new $P124, "Undef"
  vivify_774:
    $P125 = $P122."new"(unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", "enumcharlist" :named("rxtype"), $I100 :named("negate"), $P124 :named("node"))
    set $P1950, $P125
.annotate 'line', 494
    set $P119, param_1949
    set $P120, $P1950
    unless_null $P120, vivify_775
    new $P120, "Undef"
  vivify_775:
    $P121 = $P119."!make"($P120)
.annotate 'line', 491
    .return ($P121)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "backslash:sym<r>" :anon :subid("141_1337965225.74") :outer("336_1337965225.74")
    .param pmc param_1953
    .param pmc param_1954
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 497
    .lex "self", param_1953
    .lex "$/", param_1954
.annotate 'line', 498
    new $P118, "Undef"
    set $P1955, $P118
    .lex "$qast", $P1955
    get_hll_global $P119, "GLOBAL"
    nqp_get_package_through_who $P120, $P119, "QAST"
    get_who $P121, $P120
    set $P122, $P121["Regex"]
.annotate 'line', 499
    set $P1956, param_1954
    unless_null $P1956, vivify_776
    $P1956 = root_new ['parrot';'Hash']
  vivify_776:
    set $P123, $P1956["sym"]
    unless_null $P123, vivify_777
    new $P123, "Undef"
  vivify_777:
    set $S100, $P123
    iseq $I100, $S100, "R"
.annotate 'line', 498
    set $P124, param_1954
    unless_null $P124, vivify_778
    new $P124, "Undef"
  vivify_778:
    $P125 = $P122."new"("\r", "enumcharlist" :named("rxtype"), $I100 :named("negate"), $P124 :named("node"))
    set $P1955, $P125
.annotate 'line', 500
    set $P119, param_1954
    set $P120, $P1955
    unless_null $P120, vivify_779
    new $P120, "Undef"
  vivify_779:
    $P121 = $P119."!make"($P120)
.annotate 'line', 497
    .return ($P121)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "backslash:sym<t>" :anon :subid("142_1337965225.74") :outer("336_1337965225.74")
    .param pmc param_1958
    .param pmc param_1959
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 503
    .lex "self", param_1958
    .lex "$/", param_1959
.annotate 'line', 504
    new $P118, "Undef"
    set $P1960, $P118
    .lex "$qast", $P1960
    get_hll_global $P119, "GLOBAL"
    nqp_get_package_through_who $P120, $P119, "QAST"
    get_who $P121, $P120
    set $P122, $P121["Regex"]
.annotate 'line', 505
    set $P1961, param_1959
    unless_null $P1961, vivify_780
    $P1961 = root_new ['parrot';'Hash']
  vivify_780:
    set $P123, $P1961["sym"]
    unless_null $P123, vivify_781
    new $P123, "Undef"
  vivify_781:
    set $S100, $P123
    iseq $I100, $S100, "T"
.annotate 'line', 504
    set $P124, param_1959
    unless_null $P124, vivify_782
    new $P124, "Undef"
  vivify_782:
    $P125 = $P122."new"("\t", "enumcharlist" :named("rxtype"), $I100 :named("negate"), $P124 :named("node"))
    set $P1960, $P125
.annotate 'line', 506
    set $P119, param_1959
    set $P120, $P1960
    unless_null $P120, vivify_783
    new $P120, "Undef"
  vivify_783:
    $P121 = $P119."!make"($P120)
.annotate 'line', 503
    .return ($P121)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "backslash:sym<v>" :anon :subid("143_1337965225.74") :outer("336_1337965225.74")
    .param pmc param_1963
    .param pmc param_1964
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 509
    .lex "self", param_1963
    .lex "$/", param_1964
.annotate 'line', 510
    new $P118, "Undef"
    set $P1965, $P118
    .lex "$qast", $P1965
    get_hll_global $P119, "GLOBAL"
    nqp_get_package_through_who $P120, $P119, "QAST"
    get_who $P121, $P120
    set $P122, $P121["Regex"]
.annotate 'line', 512
    set $P1966, param_1964
    unless_null $P1966, vivify_784
    $P1966 = root_new ['parrot';'Hash']
  vivify_784:
    set $P123, $P1966["sym"]
    unless_null $P123, vivify_785
    new $P123, "Undef"
  vivify_785:
    set $S100, $P123
    iseq $I100, $S100, "V"
.annotate 'line', 510
    set $P124, param_1964
    unless_null $P124, vivify_786
    new $P124, "Undef"
  vivify_786:
    $P125 = $P122."new"(unicode:"\n\x{b}\f\r\x{85}\u2028\u2029", "enumcharlist" :named("rxtype"), $I100 :named("negate"), $P124 :named("node"))
    set $P1965, $P125
.annotate 'line', 513
    set $P119, param_1964
    set $P120, $P1965
    unless_null $P120, vivify_787
    new $P120, "Undef"
  vivify_787:
    $P121 = $P119."!make"($P120)
.annotate 'line', 509
    .return ($P121)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "backslash:sym<o>" :anon :subid("144_1337965225.74") :outer("336_1337965225.74")
    .param pmc param_1968
    .param pmc param_1969
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 516
    .lex "self", param_1968
    .lex "$/", param_1969
.annotate 'line', 517
    new $P118, "Undef"
    set $P1970, $P118
    .lex "$octlit", $P1970
.annotate 'line', 518
    get_hll_global $P119, "GLOBAL"
    nqp_get_package_through_who $P120, $P119, "HLL"
    get_who $P121, $P120
    set $P122, $P121["Actions"]
    set $P1972, param_1969
    unless_null $P1972, vivify_788
    $P1972 = root_new ['parrot';'Hash']
  vivify_788:
    set $P124, $P1972["octint"]
    unless_null $P124, vivify_789
    new $P124, "Undef"
  vivify_789:
    unless $P124, unless_1971
    set $P123, $P124
    goto unless_1971_end
  unless_1971:
    set $P1973, param_1969
    unless_null $P1973, vivify_790
    $P1973 = root_new ['parrot';'Hash']
  vivify_790:
    set $P1974, $P1973["octints"]
    unless_null $P1974, vivify_791
    $P1974 = root_new ['parrot';'Hash']
  vivify_791:
    set $P125, $P1974["octint"]
    unless_null $P125, vivify_792
    new $P125, "Undef"
  vivify_792:
    set $P123, $P125
  unless_1971_end:
    $P126 = $P122."ints_to_string"($P123)
    set $P1970, $P126
.annotate 'line', 519
    set $P119, param_1969
    set $P1976, param_1969
    unless_null $P1976, vivify_793
    $P1976 = root_new ['parrot';'Hash']
  vivify_793:
    set $P121, $P1976["sym"]
    unless_null $P121, vivify_794
    new $P121, "Undef"
  vivify_794:
    set $S100, $P121
    iseq $I100, $S100, "O"
    if $I100, if_1975
.annotate 'line', 522
    get_hll_global $P129, "GLOBAL"
    nqp_get_package_through_who $P130, $P129, "QAST"
    get_who $P131, $P130
    set $P132, $P131["Regex"]
    set $P133, $P1970
    unless_null $P133, vivify_795
    new $P133, "Undef"
  vivify_795:
    set $P134, param_1969
    unless_null $P134, vivify_796
    new $P134, "Undef"
  vivify_796:
    $P135 = $P132."new"($P133, "literal" :named("rxtype"), $P134 :named("node"))
    set $P120, $P135
.annotate 'line', 519
    goto if_1975_end
  if_1975:
.annotate 'line', 520
    get_hll_global $P122, "GLOBAL"
    nqp_get_package_through_who $P123, $P122, "QAST"
    get_who $P124, $P123
    set $P125, $P124["Regex"]
    set $P126, $P1970
    unless_null $P126, vivify_797
    new $P126, "Undef"
  vivify_797:
    set $P127, param_1969
    unless_null $P127, vivify_798
    new $P127, "Undef"
  vivify_798:
    $P128 = $P125."new"($P126, "enumcharlist" :named("rxtype"), 1 :named("negate"), $P127 :named("node"))
    set $P120, $P128
  if_1975_end:
    $P136 = $P119."!make"($P120)
.annotate 'line', 516
    .return ($P136)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "backslash:sym<x>" :anon :subid("145_1337965225.74") :outer("336_1337965225.74")
    .param pmc param_1978
    .param pmc param_1979
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 525
    .lex "self", param_1978
    .lex "$/", param_1979
.annotate 'line', 526
    new $P118, "Undef"
    set $P1980, $P118
    .lex "$hexlit", $P1980
.annotate 'line', 527
    get_hll_global $P119, "GLOBAL"
    nqp_get_package_through_who $P120, $P119, "HLL"
    get_who $P121, $P120
    set $P122, $P121["Actions"]
    set $P1982, param_1979
    unless_null $P1982, vivify_799
    $P1982 = root_new ['parrot';'Hash']
  vivify_799:
    set $P124, $P1982["hexint"]
    unless_null $P124, vivify_800
    new $P124, "Undef"
  vivify_800:
    unless $P124, unless_1981
    set $P123, $P124
    goto unless_1981_end
  unless_1981:
    set $P1983, param_1979
    unless_null $P1983, vivify_801
    $P1983 = root_new ['parrot';'Hash']
  vivify_801:
    set $P1984, $P1983["hexints"]
    unless_null $P1984, vivify_802
    $P1984 = root_new ['parrot';'Hash']
  vivify_802:
    set $P125, $P1984["hexint"]
    unless_null $P125, vivify_803
    new $P125, "Undef"
  vivify_803:
    set $P123, $P125
  unless_1981_end:
    $P126 = $P122."ints_to_string"($P123)
    set $P1980, $P126
.annotate 'line', 528
    set $P119, param_1979
    set $P1986, param_1979
    unless_null $P1986, vivify_804
    $P1986 = root_new ['parrot';'Hash']
  vivify_804:
    set $P121, $P1986["sym"]
    unless_null $P121, vivify_805
    new $P121, "Undef"
  vivify_805:
    set $S100, $P121
    iseq $I100, $S100, "X"
    if $I100, if_1985
.annotate 'line', 531
    get_hll_global $P129, "GLOBAL"
    nqp_get_package_through_who $P130, $P129, "QAST"
    get_who $P131, $P130
    set $P132, $P131["Regex"]
    set $P133, $P1980
    unless_null $P133, vivify_806
    new $P133, "Undef"
  vivify_806:
    set $P134, param_1979
    unless_null $P134, vivify_807
    new $P134, "Undef"
  vivify_807:
    $P135 = $P132."new"($P133, "literal" :named("rxtype"), $P134 :named("node"))
    set $P120, $P135
.annotate 'line', 528
    goto if_1985_end
  if_1985:
.annotate 'line', 529
    get_hll_global $P122, "GLOBAL"
    nqp_get_package_through_who $P123, $P122, "QAST"
    get_who $P124, $P123
    set $P125, $P124["Regex"]
    set $P126, $P1980
    unless_null $P126, vivify_808
    new $P126, "Undef"
  vivify_808:
    set $P127, param_1979
    unless_null $P127, vivify_809
    new $P127, "Undef"
  vivify_809:
    $P128 = $P125."new"($P126, "enumcharlist" :named("rxtype"), 1 :named("negate"), $P127 :named("node"))
    set $P120, $P128
  if_1985_end:
    $P136 = $P119."!make"($P120)
.annotate 'line', 525
    .return ($P136)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "backslash:sym<c>" :anon :subid("146_1337965225.74") :outer("336_1337965225.74")
    .param pmc param_1988
    .param pmc param_1989
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 534
    .lex "self", param_1988
    .lex "$/", param_1989
.annotate 'line', 535
    set $P118, param_1989
    get_hll_global $P119, "GLOBAL"
    nqp_get_package_through_who $P120, $P119, "QAST"
    get_who $P121, $P120
    set $P122, $P121["Regex"]
    set $P1990, param_1989
    unless_null $P1990, vivify_810
    $P1990 = root_new ['parrot';'Hash']
  vivify_810:
    set $P123, $P1990["charspec"]
    unless_null $P123, vivify_811
    new $P123, "Undef"
  vivify_811:
    $P124 = $P123."ast"()
    set $P125, param_1989
    unless_null $P125, vivify_812
    new $P125, "Undef"
  vivify_812:
    $P126 = $P122."new"($P124, "literal" :named("rxtype"), $P125 :named("node"))
    $P127 = $P118."!make"($P126)
.annotate 'line', 534
    .return ($P127)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "backslash:sym<misc>" :anon :subid("147_1337965225.74") :outer("336_1337965225.74")
    .param pmc param_1992
    .param pmc param_1993
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 538
    .lex "self", param_1992
    .lex "$/", param_1993
.annotate 'line', 539
    new $P118, "Undef"
    set $P1994, $P118
    .lex "$qast", $P1994
    get_hll_global $P119, "GLOBAL"
    nqp_get_package_through_who $P120, $P119, "QAST"
    get_who $P121, $P120
    set $P122, $P121["Regex"]
    set $P123, param_1993
    unless_null $P123, vivify_813
    new $P123, "Undef"
  vivify_813:
    set $S100, $P123
    set $P124, param_1993
    unless_null $P124, vivify_814
    new $P124, "Undef"
  vivify_814:
    $P125 = $P122."new"($S100, "literal" :named("rxtype"), $P124 :named("node"))
    set $P1994, $P125
.annotate 'line', 540
    set $P119, param_1993
    set $P120, $P1994
    unless_null $P120, vivify_815
    new $P120, "Undef"
  vivify_815:
    $P121 = $P119."!make"($P120)
.annotate 'line', 538
    .return ($P121)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "assertion:sym<?>" :anon :subid("148_1337965225.74") :outer("336_1337965225.74")
    .param pmc param_1996
    .param pmc param_1997
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 543
    .lex "self", param_1996
    .lex "$/", param_1997
.annotate 'line', 544
    new $P118, "Undef"
    set $P1998, $P118
    .lex "$qast", $P1998
.annotate 'line', 543
    set $P119, $P1998
    unless_null $P119, vivify_816
    new $P119, "Undef"
  vivify_816:
.annotate 'line', 545
    set $P2000, param_1997
    unless_null $P2000, vivify_817
    $P2000 = root_new ['parrot';'Hash']
  vivify_817:
    set $P119, $P2000["assertion"]
    unless_null $P119, vivify_818
    new $P119, "Undef"
  vivify_818:
    if $P119, if_1999
.annotate 'line', 549
    new $P120, "Float"
    assign $P120, 0
    set $P1998, $P120
    goto if_1999_end
  if_1999:
.annotate 'line', 546
    set $P2001, param_1997
    unless_null $P2001, vivify_819
    $P2001 = root_new ['parrot';'Hash']
  vivify_819:
    set $P120, $P2001["assertion"]
    unless_null $P120, vivify_820
    new $P120, "Undef"
  vivify_820:
    $P121 = $P120."ast"()
    set $P1998, $P121
.annotate 'line', 547
    set $P120, $P1998
    unless_null $P120, vivify_821
    new $P120, "Undef"
  vivify_821:
    $P120."subtype"("zerowidth")
  if_1999_end:
.annotate 'line', 550
    set $P119, param_1997
    set $P120, $P1998
    unless_null $P120, vivify_822
    new $P120, "Undef"
  vivify_822:
    $P121 = $P119."!make"($P120)
.annotate 'line', 543
    .return ($P121)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "assertion:sym<!>" :anon :subid("149_1337965225.74") :outer("336_1337965225.74")
    .param pmc param_2003
    .param pmc param_2004
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 553
    .lex "self", param_2003
    .lex "$/", param_2004
.annotate 'line', 554
    new $P118, "Undef"
    set $P2005, $P118
    .lex "$qast", $P2005
.annotate 'line', 553
    set $P119, $P2005
    unless_null $P119, vivify_823
    new $P119, "Undef"
  vivify_823:
.annotate 'line', 555
    set $P2007, param_2004
    unless_null $P2007, vivify_824
    $P2007 = root_new ['parrot';'Hash']
  vivify_824:
    set $P119, $P2007["assertion"]
    unless_null $P119, vivify_825
    new $P119, "Undef"
  vivify_825:
    if $P119, if_2006
.annotate 'line', 561
    get_hll_global $P120, "GLOBAL"
    nqp_get_package_through_who $P121, $P120, "QAST"
    get_who $P122, $P121
    set $P123, $P122["Regex"]
    set $P124, param_2004
    unless_null $P124, vivify_826
    new $P124, "Undef"
  vivify_826:
    $P125 = $P123."new"("anchor" :named("rxtype"), "fail" :named("subtype"), $P124 :named("node"))
    set $P2005, $P125
.annotate 'line', 560
    goto if_2006_end
  if_2006:
.annotate 'line', 556
    set $P2008, param_2004
    unless_null $P2008, vivify_827
    $P2008 = root_new ['parrot';'Hash']
  vivify_827:
    set $P120, $P2008["assertion"]
    unless_null $P120, vivify_828
    new $P120, "Undef"
  vivify_828:
    $P121 = $P120."ast"()
    set $P2005, $P121
.annotate 'line', 557
    set $P120, $P2005
    unless_null $P120, vivify_829
    new $P120, "Undef"
  vivify_829:
    set $P121, $P2005
    unless_null $P121, vivify_830
    new $P121, "Undef"
  vivify_830:
    $P122 = $P121."negate"()
    isfalse $I100, $P122
    $P120."negate"($I100)
.annotate 'line', 558
    set $P120, $P2005
    unless_null $P120, vivify_831
    new $P120, "Undef"
  vivify_831:
    $P120."subtype"("zerowidth")
  if_2006_end:
.annotate 'line', 563
    set $P119, param_2004
    set $P120, $P2005
    unless_null $P120, vivify_832
    new $P120, "Undef"
  vivify_832:
    $P121 = $P119."!make"($P120)
.annotate 'line', 553
    .return ($P121)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "assertion:sym<|>" :anon :subid("150_1337965225.74") :outer("336_1337965225.74")
    .param pmc param_2010
    .param pmc param_2011
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 566
    .lex "self", param_2010
    .lex "$/", param_2011
.annotate 'line', 567
    new $P118, "Undef"
    set $P2012, $P118
    .lex "$qast", $P2012
.annotate 'line', 568
    new $P119, "Undef"
    set $P2013, $P119
    .lex "$name", $P2013
.annotate 'line', 566
    set $P120, $P2012
    unless_null $P120, vivify_833
    new $P120, "Undef"
  vivify_833:
.annotate 'line', 568
    set $P2014, param_2011
    unless_null $P2014, vivify_834
    $P2014 = root_new ['parrot';'Hash']
  vivify_834:
    set $P120, $P2014["identifier"]
    unless_null $P120, vivify_835
    new $P120, "Undef"
  vivify_835:
    set $S100, $P120
    new $P121, 'String'
    set $P121, $S100
    set $P2013, $P121
.annotate 'line', 569
    set $P120, $P2013
    unless_null $P120, vivify_836
    new $P120, "Undef"
  vivify_836:
    set $S100, $P120
    iseq $I100, $S100, "c"
    if $I100, if_2015
.annotate 'line', 574
    set $P121, $P2013
    unless_null $P121, vivify_837
    new $P121, "Undef"
  vivify_837:
    set $S101, $P121
    iseq $I101, $S101, "w"
    unless $I101, if_2016_end
.annotate 'line', 575
    get_hll_global $P122, "GLOBAL"
    nqp_get_package_through_who $P123, $P122, "QAST"
    get_who $P124, $P123
    set $P125, $P124["Regex"]
    set $P126, param_2011
    unless_null $P126, vivify_838
    new $P126, "Undef"
  vivify_838:
.annotate 'line', 576
    get_hll_global $P127, "GLOBAL"
    nqp_get_package_through_who $P128, $P127, "PAST"
    get_who $P129, $P128
    set $P130, $P129["Node"]
    $P131 = $P130."new"("wb")
    $P132 = $P125."new"($P131, "subrule" :named("rxtype"), "method" :named("subtype"), $P126 :named("node"), "" :named("name"))
.annotate 'line', 575
    set $P2012, $P132
  if_2016_end:
.annotate 'line', 574
    goto if_2015_end
  if_2015:
.annotate 'line', 572
    new $P121, "Float"
    assign $P121, 0
    set $P2012, $P121
  if_2015_end:
.annotate 'line', 579
    set $P120, param_2011
    set $P121, $P2012
    unless_null $P121, vivify_839
    new $P121, "Undef"
  vivify_839:
    $P122 = $P120."!make"($P121)
.annotate 'line', 566
    .return ($P122)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "assertion:sym<method>" :anon :subid("151_1337965225.74") :outer("336_1337965225.74")
    .param pmc param_2018
    .param pmc param_2019
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 582
    .lex "self", param_2018
    .lex "$/", param_2019
.annotate 'line', 583
    new $P118, "Undef"
    set $P2020, $P118
    .lex "$qast", $P2020
    set $P2021, param_2019
    unless_null $P2021, vivify_840
    $P2021 = root_new ['parrot';'Hash']
  vivify_840:
    set $P119, $P2021["assertion"]
    unless_null $P119, vivify_841
    new $P119, "Undef"
  vivify_841:
    $P120 = $P119."ast"()
    set $P2020, $P120
.annotate 'line', 584
    set $P119, $P2020
    unless_null $P119, vivify_842
    new $P119, "Undef"
  vivify_842:
    $P119."subtype"("method")
.annotate 'line', 585
    set $P119, $P2020
    unless_null $P119, vivify_843
    new $P119, "Undef"
  vivify_843:
    $P119."name"("")
.annotate 'line', 586
    set $P119, param_2019
    set $P120, $P2020
    unless_null $P120, vivify_844
    new $P120, "Undef"
  vivify_844:
    $P121 = $P119."!make"($P120)
.annotate 'line', 582
    .return ($P121)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "assertion:sym<name>" :anon :subid("152_1337965225.74") :outer("336_1337965225.74")
    .param pmc param_2023
    .param pmc param_2024
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 589
    .const 'Sub' $P2043 = "362_1337965225.74" 
    capture_lex $P2043
    .const 'Sub' $P2034 = "361_1337965225.74" 
    capture_lex $P2034
    .lex "self", param_2023
    .lex "$/", param_2024
.annotate 'line', 590
    new $P118, "Undef"
    set $P2025, $P118
    .lex "$name", $P2025
.annotate 'line', 591
    new $P119, "Undef"
    set $P2026, $P119
    .lex "$qast", $P2026
.annotate 'line', 590
    set $P2027, param_2024
    unless_null $P2027, vivify_845
    $P2027 = root_new ['parrot';'Hash']
  vivify_845:
    set $P120, $P2027["longname"]
    unless_null $P120, vivify_846
    new $P120, "Undef"
  vivify_846:
    set $S100, $P120
    new $P121, 'String'
    set $P121, $S100
    set $P2025, $P121
.annotate 'line', 589
    set $P120, $P2026
    unless_null $P120, vivify_847
    new $P120, "Undef"
  vivify_847:
.annotate 'line', 592
    set $P2029, param_2024
    unless_null $P2029, vivify_848
    $P2029 = root_new ['parrot';'Hash']
  vivify_848:
    set $P120, $P2029["assertion"]
    unless_null $P120, vivify_849
    new $P120, "Undef"
  vivify_849:
    if $P120, if_2028
.annotate 'line', 596
    set $P121, $P2025
    unless_null $P121, vivify_850
    new $P121, "Undef"
  vivify_850:
    set $S100, $P121
    iseq $I100, $S100, "sym"
    if $I100, if_2032
.annotate 'line', 605
    get_hll_global $P124, "GLOBAL"
    nqp_get_package_through_who $P125, $P124, "QAST"
    get_who $P126, $P125
    set $P127, $P126["Regex"]
    set $P128, param_2024
    unless_null $P128, vivify_851
    new $P128, "Undef"
  vivify_851:
.annotate 'line', 606
    get_hll_global $P129, "GLOBAL"
    nqp_get_package_through_who $P130, $P129, "PAST"
    get_who $P131, $P130
    set $P132, $P131["Node"]
    set $P133, $P2025
    unless_null $P133, vivify_852
    new $P133, "Undef"
  vivify_852:
    $P134 = $P132."new"($P133)
    set $P135, $P2025
    unless_null $P135, vivify_853
    new $P135, "Undef"
  vivify_853:
    $P137 = $P127."new"($P134, "subrule" :named("rxtype"), "capture" :named("subtype"), $P128 :named("node"), $P135 :named("name"))
.annotate 'line', 605
    set $P2026, $P137
.annotate 'line', 608
    set $P2039, param_2024
    unless_null $P2039, vivify_854
    $P2039 = root_new ['parrot';'Hash']
  vivify_854:
    set $P124, $P2039["arglist"]
    unless_null $P124, vivify_855
    new $P124, "Undef"
  vivify_855:
    if $P124, if_2038
.annotate 'line', 611
    set $P2048, param_2024
    unless_null $P2048, vivify_856
    $P2048 = root_new ['parrot';'Hash']
  vivify_856:
    set $P125, $P2048["nibbler"]
    unless_null $P125, vivify_857
    new $P125, "Undef"
  vivify_857:
    unless $P125, if_2047_end
.annotate 'line', 612
    set $P126, $P2025
    unless_null $P126, vivify_858
    new $P126, "Undef"
  vivify_858:
    set $S101, $P126
    iseq $I101, $S101, "after"
    if $I101, if_2049
.annotate 'line', 614
    set $P2053, $P2026
    unless_null $P2053, vivify_859
    $P2053 = root_new ['parrot';'ResizablePMCArray']
  vivify_859:
    set $P134, $P2053[0]
    unless_null $P134, vivify_860
    new $P134, "Undef"
  vivify_860:
    set $P2054, param_2024
    unless_null $P2054, vivify_861
    $P2054 = root_new ['parrot';'Hash']
  vivify_861:
    set $P2055, $P2054["nibbler"]
    unless_null $P2055, vivify_862
    $P2055 = root_new ['parrot';'ResizablePMCArray']
  vivify_862:
    set $P135, $P2055[0]
    unless_null $P135, vivify_863
    new $P135, "Undef"
  vivify_863:
    $P137 = $P135."ast"()
    $P138 = "buildsub"($P137, 1 :named("anon"))
    $P134."push"($P138)
    goto if_2049_end
  if_2049:
.annotate 'line', 613
    set $P2050, $P2026
    unless_null $P2050, vivify_864
    $P2050 = root_new ['parrot';'ResizablePMCArray']
  vivify_864:
    set $P127, $P2050[0]
    unless_null $P127, vivify_865
    new $P127, "Undef"
  vivify_865:
    set $P128, param_2023
    nqp_decontainerize $P129, $P128
    set $P2051, param_2024
    unless_null $P2051, vivify_866
    $P2051 = root_new ['parrot';'Hash']
  vivify_866:
    set $P2052, $P2051["nibbler"]
    unless_null $P2052, vivify_867
    $P2052 = root_new ['parrot';'ResizablePMCArray']
  vivify_867:
    set $P130, $P2052[0]
    unless_null $P130, vivify_868
    new $P130, "Undef"
  vivify_868:
    $P131 = $P130."ast"()
    $P132 = $P129."flip_ast"($P131)
    $P133 = "buildsub"($P132, 1 :named("anon"))
    $P127."push"($P133)
  if_2049_end:
  if_2047_end:
.annotate 'line', 611
    goto if_2038_end
  if_2038:
.annotate 'line', 609
    set $P2040, param_2024
    unless_null $P2040, vivify_869
    $P2040 = root_new ['parrot';'Hash']
  vivify_869:
    set $P2041, $P2040["arglist"]
    unless_null $P2041, vivify_870
    $P2041 = root_new ['parrot';'ResizablePMCArray']
  vivify_870:
    set $P126, $P2041[0]
    unless_null $P126, vivify_871
    new $P126, "Undef"
  vivify_871:
    $P127 = $P126."ast"()
    $P128 = $P127."list"()
    defined $I101, $P128
    unless $I101, for_undef_872
    iter $P125, $P128
    new $P130, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P130, loop2046_handler
    push_eh $P130
  loop2046_test:
    unless $P125, loop2046_done
    shift $P129, $P125
  loop2046_redo:
    .const 'Sub' $P2043 = "362_1337965225.74" 
    capture_lex $P2043
    $P2043($P129)
  loop2046_next:
    goto loop2046_test
  loop2046_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P131, exception, 'type'
    eq $P131, .CONTROL_LOOP_NEXT, loop2046_next
    eq $P131, .CONTROL_LOOP_REDO, loop2046_redo
  loop2046_done:
    pop_eh 
  for_undef_872:
  if_2038_end:
.annotate 'line', 604
    goto if_2032_end
  if_2032:
.annotate 'line', 596
    .const 'Sub' $P2034 = "361_1337965225.74" 
    capture_lex $P2034
    $P2034()
  if_2032_end:
    goto if_2028_end
  if_2028:
.annotate 'line', 593
    set $P2030, param_2024
    unless_null $P2030, vivify_890
    $P2030 = root_new ['parrot';'Hash']
  vivify_890:
    set $P2031, $P2030["assertion"]
    unless_null $P2031, vivify_891
    $P2031 = root_new ['parrot';'ResizablePMCArray']
  vivify_891:
    set $P121, $P2031[0]
    unless_null $P121, vivify_892
    new $P121, "Undef"
  vivify_892:
    $P122 = $P121."ast"()
    set $P2026, $P122
.annotate 'line', 594
    set $P121, param_2023
    nqp_decontainerize $P122, $P121
    set $P123, $P2026
    unless_null $P123, vivify_893
    new $P123, "Undef"
  vivify_893:
    set $P124, $P2025
    unless_null $P124, vivify_894
    new $P124, "Undef"
  vivify_894:
    $P122."subrule_alias"($P123, $P124)
  if_2028_end:
.annotate 'line', 617
    set $P120, param_2024
    set $P121, $P2026
    unless_null $P121, vivify_895
    new $P121, "Undef"
  vivify_895:
    $P122 = $P120."!make"($P121)
.annotate 'line', 589
    .return ($P122)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "_block2042"  :anon :subid("362_1337965225.74") :outer("152_1337965225.74")
    .param pmc param_2044
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 609
    .lex "$_", param_2044
    find_lex $P2045, "$qast"
    unless_null $P2045, vivify_873
    $P2045 = root_new ['parrot';'ResizablePMCArray']
  vivify_873:
    set $P130, $P2045[0]
    unless_null $P130, vivify_874
    new $P130, "Undef"
  vivify_874:
    find_lex $P131, "$_"
    unless_null $P131, vivify_875
    new $P131, "Undef"
  vivify_875:
    $P132 = $P130."push"($P131)
    .return ($P132)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "_block2033"  :anon :subid("361_1337965225.74") :outer("152_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 597
    new $P122, "Undef"
    set $P2035, $P122
    .lex "$loc", $P2035
.annotate 'line', 600
    new $P123, "Undef"
    set $P2036, $P123
    .lex "$rxname", $P2036
.annotate 'line', 597
    find_dynamic_lex $P126, "%*RX"
    unless_null $P126, vivify_876
    get_hll_global $P124, "GLOBAL"
    get_who $P125, $P124
    set $P126, $P125["%RX"]
    unless_null $P126, vivify_877
    die "Contextual %*RX not found"
  vivify_877:
  vivify_876:
    set $P127, $P126["name"]
    unless_null $P127, vivify_878
    new $P127, "Undef"
  vivify_878:
    set $S101, $P127
    index $I101, $S101, ":sym<"
    new $P128, 'Integer'
    set $P128, $I101
    set $P2035, $P128
.annotate 'line', 599
    set $P124, $P2035
    unless_null $P124, vivify_879
    new $P124, "Undef"
  vivify_879:
    set $N100, $P124
    set $N101, 0
    islt $I101, $N100, $N101
    unless $I101, if_2037_end
.annotate 'line', 598
    find_dynamic_lex $P127, "%*RX"
    unless_null $P127, vivify_880
    get_hll_global $P125, "GLOBAL"
    get_who $P126, $P125
    set $P127, $P126["%RX"]
    unless_null $P127, vivify_881
    die "Contextual %*RX not found"
  vivify_881:
  vivify_880:
    set $P128, $P127["name"]
    unless_null $P128, vivify_882
    new $P128, "Undef"
  vivify_882:
    set $S101, $P128
    index $I102, $S101, unicode:":sym\x{ab}"
    new $P129, 'Integer'
    set $P129, $I102
    set $P2035, $P129
  if_2037_end:
.annotate 'line', 600
    find_dynamic_lex $P126, "%*RX"
    unless_null $P126, vivify_883
    get_hll_global $P124, "GLOBAL"
    get_who $P125, $P124
    set $P126, $P125["%RX"]
    unless_null $P126, vivify_884
    die "Contextual %*RX not found"
  vivify_884:
  vivify_883:
    set $P127, $P126["name"]
    unless_null $P127, vivify_885
    new $P127, "Undef"
  vivify_885:
    set $S101, $P127
    set $P128, $P2035
    unless_null $P128, vivify_886
    new $P128, "Undef"
  vivify_886:
    add $P129, $P128, 5
    set $I101, $P129
    substr $S102, $S101, $I101
    chopn $S103, $S102, 1
    new $P130, 'String'
    set $P130, $S103
    set $P2036, $P130
.annotate 'line', 601
    get_hll_global $P124, "GLOBAL"
    nqp_get_package_through_who $P125, $P124, "QAST"
    get_who $P126, $P125
    set $P127, $P126["Regex"]
    find_lex $P128, "$/"
    unless_null $P128, vivify_887
    new $P128, "Undef"
  vivify_887:
.annotate 'line', 602
    get_hll_global $P129, "GLOBAL"
    nqp_get_package_through_who $P130, $P129, "QAST"
    get_who $P131, $P130
    set $P132, $P131["Regex"]
    set $P133, $P2036
    unless_null $P133, vivify_888
    new $P133, "Undef"
  vivify_888:
    find_lex $P134, "$/"
    unless_null $P134, vivify_889
    new $P134, "Undef"
  vivify_889:
    $P135 = $P132."new"($P133, "literal" :named("rxtype"), $P134 :named("node"))
    $P136 = $P127."new"($P135, "sym" :named("name"), "subcapture" :named("rxtype"), $P128 :named("node"))
.annotate 'line', 601
    store_lex "$qast", $P136
.annotate 'line', 596
    .return ($P136)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "assertion:sym<[>" :anon :subid("153_1337965225.74") :outer("336_1337965225.74")
    .param pmc param_2057
    .param pmc param_2058
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 620
    .const 'Sub' $P2068 = "363_1337965225.74" 
    capture_lex $P2068
    .lex "self", param_2057
    .lex "$/", param_2058
.annotate 'line', 621
    new $P118, "Undef"
    set $P2059, $P118
    .lex "$clist", $P2059
.annotate 'line', 622
    new $P119, "Undef"
    set $P2060, $P119
    .lex "$qast", $P2060
.annotate 'line', 629
    new $P120, "Undef"
    set $P2061, $P120
    .lex "$i", $P2061
.annotate 'line', 630
    new $P121, "Undef"
    set $P2062, $P121
    .lex "$n", $P2062
.annotate 'line', 621
    set $P2063, param_2058
    unless_null $P2063, vivify_896
    $P2063 = root_new ['parrot';'Hash']
  vivify_896:
    set $P122, $P2063["cclass_elem"]
    unless_null $P122, vivify_897
    new $P122, "Undef"
  vivify_897:
    set $P2059, $P122
.annotate 'line', 622
    set $P2064, $P2059
    unless_null $P2064, vivify_898
    $P2064 = root_new ['parrot';'ResizablePMCArray']
  vivify_898:
    set $P122, $P2064[0]
    unless_null $P122, vivify_899
    new $P122, "Undef"
  vivify_899:
    $P123 = $P122."ast"()
    set $P2060, $P123
.annotate 'line', 623
    set $P123, $P2060
    unless_null $P123, vivify_900
    new $P123, "Undef"
  vivify_900:
    $P124 = $P123."negate"()
    if $P124, if_2066
    set $P122, $P124
    goto if_2066_end
  if_2066:
    set $P125, $P2060
    unless_null $P125, vivify_901
    new $P125, "Undef"
  vivify_901:
    $S100 = $P125."rxtype"()
    iseq $I100, $S100, "subrule"
    new $P122, 'Integer'
    set $P122, $I100
  if_2066_end:
    unless $P122, if_2065_end
.annotate 'line', 624
    set $P126, $P2060
    unless_null $P126, vivify_902
    new $P126, "Undef"
  vivify_902:
    $P126."subtype"("zerowidth")
.annotate 'line', 625
    get_hll_global $P126, "GLOBAL"
    nqp_get_package_through_who $P127, $P126, "QAST"
    get_who $P128, $P127
    set $P129, $P128["Regex"]
    set $P130, param_2058
    unless_null $P130, vivify_903
    new $P130, "Undef"
  vivify_903:
    set $P131, $P2060
    unless_null $P131, vivify_904
    new $P131, "Undef"
  vivify_904:
.annotate 'line', 627
    get_hll_global $P132, "GLOBAL"
    nqp_get_package_through_who $P133, $P132, "QAST"
    get_who $P134, $P133
    set $P135, $P134["Regex"]
    $P136 = $P135."new"("cclass" :named("rxtype"), "." :named("subtype"))
    $P137 = $P129."new"($P131, $P136, "concat" :named("rxtype"), $P130 :named("node"))
.annotate 'line', 625
    set $P2060, $P137
  if_2065_end:
.annotate 'line', 629
    new $P122, "Float"
    assign $P122, 1
    set $P2061, $P122
.annotate 'line', 630
    set $P122, $P2059
    unless_null $P122, vivify_905
    new $P122, "Undef"
  vivify_905:
    set $N100, $P122
    new $P123, 'Float'
    set $P123, $N100
    set $P2062, $P123
.annotate 'line', 631
    new $P125, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P125, loop2073_handler
    push_eh $P125
  loop2073_test:
    set $P122, $P2061
    unless_null $P122, vivify_906
    new $P122, "Undef"
  vivify_906:
    set $N100, $P122
    set $P123, $P2062
    unless_null $P123, vivify_907
    new $P123, "Undef"
  vivify_907:
    set $N101, $P123
    islt $I100, $N100, $N101
    unless $I100, loop2073_done
  loop2073_redo:
    .const 'Sub' $P2068 = "363_1337965225.74" 
    capture_lex $P2068
    $P2068()
  loop2073_next:
    goto loop2073_test
  loop2073_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P126, exception, 'type'
    eq $P126, .CONTROL_LOOP_NEXT, loop2073_next
    eq $P126, .CONTROL_LOOP_REDO, loop2073_redo
  loop2073_done:
    pop_eh 
.annotate 'line', 642
    set $P122, param_2058
    set $P123, $P2060
    unless_null $P123, vivify_920
    new $P123, "Undef"
  vivify_920:
    $P124 = $P122."!make"($P123)
.annotate 'line', 620
    .return ($P124)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "_block2067"  :anon :subid("363_1337965225.74") :outer("153_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 632
    new $P124, "Undef"
    set $P2069, $P124
    .lex "$ast", $P2069
    find_lex $P125, "$i"
    unless_null $P125, vivify_908
    new $P125, "Undef"
  vivify_908:
    set $I101, $P125
    find_lex $P2070, "$clist"
    unless_null $P2070, vivify_909
    $P2070 = root_new ['parrot';'ResizablePMCArray']
  vivify_909:
    set $P126, $P2070[$I101]
    unless_null $P126, vivify_910
    new $P126, "Undef"
  vivify_910:
    $P127 = $P126."ast"()
    set $P2069, $P127
.annotate 'line', 633
    set $P125, $P2069
    unless_null $P125, vivify_911
    new $P125, "Undef"
  vivify_911:
    $P126 = $P125."negate"()
    if $P126, if_2071
.annotate 'line', 638
    get_hll_global $P127, "GLOBAL"
    nqp_get_package_through_who $P128, $P127, "QAST"
    get_who $P129, $P128
    set $P130, $P129["Regex"]
    find_lex $P131, "$qast"
    unless_null $P131, vivify_912
    new $P131, "Undef"
  vivify_912:
    set $P132, $P2069
    unless_null $P132, vivify_913
    new $P132, "Undef"
  vivify_913:
    find_lex $P133, "$/"
    unless_null $P133, vivify_914
    new $P133, "Undef"
  vivify_914:
    $P134 = $P130."new"($P131, $P132, "altseq" :named("rxtype"), $P133 :named("node"))
    store_lex "$qast", $P134
.annotate 'line', 637
    goto if_2071_end
  if_2071:
.annotate 'line', 634
    set $P127, $P2069
    unless_null $P127, vivify_915
    new $P127, "Undef"
  vivify_915:
    $P127."subtype"("zerowidth")
.annotate 'line', 635
    get_hll_global $P127, "GLOBAL"
    nqp_get_package_through_who $P128, $P127, "QAST"
    get_who $P129, $P128
    set $P130, $P129["Regex"]
    set $P131, $P2069
    unless_null $P131, vivify_916
    new $P131, "Undef"
  vivify_916:
    find_lex $P132, "$qast"
    unless_null $P132, vivify_917
    new $P132, "Undef"
  vivify_917:
    find_lex $P133, "$/"
    unless_null $P133, vivify_918
    new $P133, "Undef"
  vivify_918:
    $P134 = $P130."new"($P131, $P132, "concat" :named("rxtype"), $P133 :named("node"))
    store_lex "$qast", $P134
  if_2071_end:
.annotate 'line', 631
    find_lex $P125, "$i"
    unless_null $P125, vivify_919
    new $P125, "Undef"
  vivify_919:
    clone $P2072, $P125
    inc $P125
    .return ($P2072)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "arg" :anon :subid("154_1337965225.74") :outer("336_1337965225.74")
    .param pmc param_2075
    .param pmc param_2076
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 645
    .lex "self", param_2075
    .lex "$/", param_2076
.annotate 'line', 646
    set $P118, param_2076
    set $P2078, param_2076
    unless_null $P2078, vivify_921
    $P2078 = root_new ['parrot';'Hash']
  vivify_921:
    set $P120, $P2078["quote_EXPR"]
    unless_null $P120, vivify_922
    new $P120, "Undef"
  vivify_922:
    if $P120, if_2077
    set $P2080, param_2076
    unless_null $P2080, vivify_923
    $P2080 = root_new ['parrot';'Hash']
  vivify_923:
    set $P123, $P2080["val"]
    unless_null $P123, vivify_924
    new $P123, "Undef"
  vivify_924:
    set $N100, $P123
    new $P119, 'Float'
    set $P119, $N100
    goto if_2077_end
  if_2077:
    set $P2079, param_2076
    unless_null $P2079, vivify_925
    $P2079 = root_new ['parrot';'Hash']
  vivify_925:
    set $P121, $P2079["quote_EXPR"]
    unless_null $P121, vivify_926
    new $P121, "Undef"
  vivify_926:
    $P122 = $P121."ast"()
    set $P119, $P122
  if_2077_end:
    $P124 = $P118."!make"($P119)
.annotate 'line', 645
    .return ($P124)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "arglist" :anon :subid("155_1337965225.74") :outer("336_1337965225.74")
    .param pmc param_2082
    .param pmc param_2083
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 649
    .const 'Sub' $P2087 = "364_1337965225.74" 
    capture_lex $P2087
    .lex "self", param_2082
    .lex "$/", param_2083
.annotate 'line', 650
    new $P118, "Undef"
    set $P2084, $P118
    .lex "$past", $P2084
    get_hll_global $P119, "GLOBAL"
    nqp_get_package_through_who $P120, $P119, "PAST"
    get_who $P121, $P120
    set $P122, $P121["Op"]
    $P123 = $P122."new"("list" :named("pasttype"))
    set $P2084, $P123
.annotate 'line', 651
    set $P2085, param_2083
    unless_null $P2085, vivify_927
    $P2085 = root_new ['parrot';'Hash']
  vivify_927:
    set $P120, $P2085["arg"]
    unless_null $P120, vivify_928
    new $P120, "Undef"
  vivify_928:
    defined $I100, $P120
    unless $I100, for_undef_929
    iter $P119, $P120
    new $P122, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P122, loop2089_handler
    push_eh $P122
  loop2089_test:
    unless $P119, loop2089_done
    shift $P121, $P119
  loop2089_redo:
    .const 'Sub' $P2087 = "364_1337965225.74" 
    capture_lex $P2087
    $P2087($P121)
  loop2089_next:
    goto loop2089_test
  loop2089_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P123, exception, 'type'
    eq $P123, .CONTROL_LOOP_NEXT, loop2089_next
    eq $P123, .CONTROL_LOOP_REDO, loop2089_redo
  loop2089_done:
    pop_eh 
  for_undef_929:
.annotate 'line', 652
    set $P119, param_2083
    set $P120, $P2084
    unless_null $P120, vivify_932
    new $P120, "Undef"
  vivify_932:
    $P121 = $P119."!make"($P120)
.annotate 'line', 649
    .return ($P121)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "_block2086"  :anon :subid("364_1337965225.74") :outer("155_1337965225.74")
    .param pmc param_2088
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 651
    .lex "$_", param_2088
    find_lex $P122, "$past"
    unless_null $P122, vivify_930
    new $P122, "Undef"
  vivify_930:
    find_lex $P123, "$_"
    unless_null $P123, vivify_931
    new $P123, "Undef"
  vivify_931:
    $P124 = $P123."ast"()
    $P125 = $P122."push"($P124)
    .return ($P125)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "cclass_elem" :anon :subid("156_1337965225.74") :outer("336_1337965225.74")
    .param pmc param_2091
    .param pmc param_2092
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 655
    .const 'Sub' $P2116 = "367_1337965225.74" 
    capture_lex $P2116
    .const 'Sub' $P2105 = "366_1337965225.74" 
    capture_lex $P2105
    .const 'Sub' $P2098 = "365_1337965225.74" 
    capture_lex $P2098
    .lex "self", param_2091
    .lex "$/", param_2092
.annotate 'line', 656
    new $P118, "Undef"
    set $P2093, $P118
    .lex "$str", $P2093
.annotate 'line', 657
    new $P119, "Undef"
    set $P2094, $P119
    .lex "$qast", $P2094
.annotate 'line', 656
    new $P120, "String"
    assign $P120, ""
    set $P2093, $P120
.annotate 'line', 655
    set $P120, $P2094
    unless_null $P120, vivify_933
    new $P120, "Undef"
  vivify_933:
.annotate 'line', 658
    set $P2096, param_2092
    unless_null $P2096, vivify_934
    $P2096 = root_new ['parrot';'Hash']
  vivify_934:
    set $P120, $P2096["name"]
    unless_null $P120, vivify_935
    new $P120, "Undef"
  vivify_935:
    if $P120, if_2095
.annotate 'line', 663
    set $P2103, param_2092
    unless_null $P2103, vivify_936
    $P2103 = root_new ['parrot';'Hash']
  vivify_936:
    set $P122, $P2103["uniprop"]
    unless_null $P122, vivify_937
    new $P122, "Undef"
  vivify_937:
    if $P122, if_2102
.annotate 'line', 669
    .const 'Sub' $P2116 = "367_1337965225.74" 
    capture_lex $P2116
    $P2116()
    goto if_2102_end
  if_2102:
.annotate 'line', 663
    .const 'Sub' $P2105 = "366_1337965225.74" 
    capture_lex $P2105
    $P2105()
  if_2102_end:
    goto if_2095_end
  if_2095:
.annotate 'line', 658
    .const 'Sub' $P2098 = "365_1337965225.74" 
    capture_lex $P2098
    $P2098()
  if_2095_end:
.annotate 'line', 719
    set $P120, param_2092
    set $P121, $P2094
    unless_null $P121, vivify_1043
    new $P121, "Undef"
  vivify_1043:
    $P122 = $P120."!make"($P121)
.annotate 'line', 655
    .return ($P122)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block2115"  :anon :subid("367_1337965225.74") :outer("156_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 669
    .const 'Sub' $P2122 = "368_1337965225.74" 
    capture_lex $P2122
.annotate 'line', 670
    $P2118 = root_new ['parrot';'ResizablePMCArray']
    set $P2117, $P2118
    .lex "@alts", $P2117
.annotate 'line', 669
    set $P2119, $P2117
    unless_null $P2119, vivify_938
    $P2119 = root_new ['parrot';'ResizablePMCArray']
  vivify_938:
.annotate 'line', 671
    find_lex $P2120, "$/"
    unless_null $P2120, vivify_939
    $P2120 = root_new ['parrot';'Hash']
  vivify_939:
    set $P125, $P2120["charspec"]
    unless_null $P125, vivify_940
    new $P125, "Undef"
  vivify_940:
    defined $I100, $P125
    unless $I100, for_undef_941
    iter $P124, $P125
    new $P128, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P128, loop2177_handler
    push_eh $P128
  loop2177_test:
    unless $P124, loop2177_done
    shift $P126, $P124
  loop2177_redo:
    .const 'Sub' $P2122 = "368_1337965225.74" 
    capture_lex $P2122
    $P2122($P126)
  loop2177_next:
    goto loop2177_test
  loop2177_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P129, exception, 'type'
    eq $P129, .CONTROL_LOOP_NEXT, loop2177_next
    eq $P129, .CONTROL_LOOP_REDO, loop2177_redo
  loop2177_done:
    pop_eh 
  for_undef_941:
.annotate 'line', 710
    find_lex $P124, "$str"
    unless_null $P124, vivify_1011
    new $P124, "Undef"
  vivify_1011:
    set $S100, $P124
    length $I100, $S100
    unless $I100, if_2178_end
.annotate 'line', 709
    set $P2179, $P2117
    unless_null $P2179, vivify_1012
    $P2179 = root_new ['parrot';'ResizablePMCArray']
  vivify_1012:
    get_hll_global $P125, "GLOBAL"
    nqp_get_package_through_who $P126, $P125, "QAST"
    get_who $P127, $P126
    set $P128, $P127["Regex"]
    find_lex $P129, "$str"
    unless_null $P129, vivify_1013
    new $P129, "Undef"
  vivify_1013:
    find_lex $P130, "$/"
    unless_null $P130, vivify_1014
    new $P130, "Undef"
  vivify_1014:
    find_lex $P2180, "$/"
    unless_null $P2180, vivify_1015
    $P2180 = root_new ['parrot';'Hash']
  vivify_1015:
    set $P131, $P2180["sign"]
    unless_null $P131, vivify_1016
    new $P131, "Undef"
  vivify_1016:
    set $S101, $P131
    iseq $I101, $S101, "-"
    $P132 = $P128."new"($P129, "enumcharlist" :named("rxtype"), $P130 :named("node"), $I101 :named("negate"))
    $P2179."push"($P132)
  if_2178_end:
.annotate 'line', 711
    set $P2182, $P2117
    unless_null $P2182, vivify_1017
    $P2182 = root_new ['parrot';'ResizablePMCArray']
  vivify_1017:
    set $N100, $P2182
    set $N101, 1
    iseq $I100, $N100, $N101
    if $I100, if_2181
.annotate 'line', 712
    find_lex $P2185, "$/"
    unless_null $P2185, vivify_1018
    $P2185 = root_new ['parrot';'Hash']
  vivify_1018:
    set $P127, $P2185["sign"]
    unless_null $P127, vivify_1019
    new $P127, "Undef"
  vivify_1019:
    set $S100, $P127
    iseq $I101, $S100, "-"
    if $I101, if_2184
.annotate 'line', 716
    get_hll_global $P146, "GLOBAL"
    nqp_get_package_through_who $P147, $P146, "QAST"
    get_who $P148, $P147
    set $P149, $P148["Regex"]
    set $P2187, $P2117
    unless_null $P2187, vivify_1020
    $P2187 = root_new ['parrot';'ResizablePMCArray']
  vivify_1020:
    $P150 = $P149."new"($P2187 :flat, "alt" :named("rxtype"))
    set $P126, $P150
.annotate 'line', 712
    goto if_2184_end
  if_2184:
.annotate 'line', 713
    get_hll_global $P128, "GLOBAL"
    nqp_get_package_through_who $P129, $P128, "QAST"
    get_who $P130, $P129
    set $P131, $P130["Regex"]
    find_lex $P132, "$/"
    unless_null $P132, vivify_1021
    new $P132, "Undef"
  vivify_1021:
.annotate 'line', 714
    get_hll_global $P133, "GLOBAL"
    nqp_get_package_through_who $P135, $P133, "QAST"
    get_who $P136, $P135
    set $P137, $P136["Regex"]
    set $P2186, $P2117
    unless_null $P2186, vivify_1022
    $P2186 = root_new ['parrot';'ResizablePMCArray']
  vivify_1022:
    $P139 = $P137."new"($P2186 :flat, "conj" :named("rxtype"), "zerowidth" :named("subtype"))
.annotate 'line', 715
    get_hll_global $P140, "GLOBAL"
    nqp_get_package_through_who $P141, $P140, "QAST"
    get_who $P142, $P141
    set $P143, $P142["Regex"]
    $P144 = $P143."new"("cclass" :named("rxtype"), "." :named("subtype"))
    $P145 = $P131."new"($P139, $P144, "concat" :named("rxtype"), $P132 :named("node"))
.annotate 'line', 713
    set $P126, $P145
  if_2184_end:
.annotate 'line', 712
    set $P124, $P126
.annotate 'line', 711
    goto if_2181_end
  if_2181:
    set $P2183, $P2117
    unless_null $P2183, vivify_1023
    $P2183 = root_new ['parrot';'ResizablePMCArray']
  vivify_1023:
    set $P125, $P2183[0]
    unless_null $P125, vivify_1024
    new $P125, "Undef"
  vivify_1024:
    set $P124, $P125
  if_2181_end:
    store_lex "$qast", $P124
.annotate 'line', 669
    .return ($P124)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "_block2121"  :anon :subid("368_1337965225.74") :outer("367_1337965225.74")
    .param pmc param_2123
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 671
    .const 'Sub' $P2169 = "370_1337965225.74" 
    capture_lex $P2169
    .const 'Sub' $P2127 = "369_1337965225.74" 
    capture_lex $P2127
    .lex "$_", param_2123
.annotate 'line', 672
    find_lex $P2125, "$_"
    unless_null $P2125, vivify_942
    $P2125 = root_new ['parrot';'ResizablePMCArray']
  vivify_942:
    set $P128, $P2125[1]
    unless_null $P128, vivify_943
    new $P128, "Undef"
  vivify_943:
    if $P128, if_2124
.annotate 'line', 702
    find_lex $P2166, "$_"
    unless_null $P2166, vivify_944
    $P2166 = root_new ['parrot';'ResizablePMCArray']
  vivify_944:
    set $P2167, $P2166[0]
    unless_null $P2167, vivify_945
    $P2167 = root_new ['parrot';'Hash']
  vivify_945:
    set $P137, $P2167["backslash"]
    unless_null $P137, vivify_946
    new $P137, "Undef"
  vivify_946:
    if $P137, if_2165
.annotate 'line', 707
    find_lex $P142, "$str"
    unless_null $P142, vivify_947
    new $P142, "Undef"
  vivify_947:
    find_lex $P2176, "$_"
    unless_null $P2176, vivify_948
    $P2176 = root_new ['parrot';'ResizablePMCArray']
  vivify_948:
    set $P143, $P2176[0]
    unless_null $P143, vivify_949
    new $P143, "Undef"
  vivify_949:
    set $S100, $P143
    concat $P144, $P142, $S100
    store_lex "$str", $P144
    set $P136, $P144
.annotate 'line', 702
    goto if_2165_end
  if_2165:
    .const 'Sub' $P2169 = "370_1337965225.74" 
    capture_lex $P2169
    $P140 = $P2169()
    set $P136, $P140
  if_2165_end:
    set $P127, $P136
.annotate 'line', 672
    goto if_2124_end
  if_2124:
    .const 'Sub' $P2127 = "369_1337965225.74" 
    capture_lex $P2127
    $P135 = $P2127()
    set $P127, $P135
  if_2124_end:
.annotate 'line', 671
    .return ($P127)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "_block2168"  :anon :subid("370_1337965225.74") :outer("368_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 703
    new $P139, "Undef"
    set $P2170, $P139
    .lex "$bs", $P2170
    find_lex $P2171, "$_"
    unless_null $P2171, vivify_950
    $P2171 = root_new ['parrot';'ResizablePMCArray']
  vivify_950:
    set $P2172, $P2171[0]
    unless_null $P2172, vivify_951
    $P2172 = root_new ['parrot';'Hash']
  vivify_951:
    set $P140, $P2172["backslash"]
    unless_null $P140, vivify_952
    new $P140, "Undef"
  vivify_952:
    $P141 = $P140."ast"()
    set $P2170, $P141
.annotate 'line', 704
    find_lex $P2174, "$/"
    unless_null $P2174, vivify_953
    $P2174 = root_new ['parrot';'Hash']
  vivify_953:
    set $P140, $P2174["sign"]
    unless_null $P140, vivify_954
    new $P140, "Undef"
  vivify_954:
    set $S100, $P140
    iseq $I102, $S100, "-"
    unless $I102, if_2173_end
    set $P141, $P2170
    unless_null $P141, vivify_955
    new $P141, "Undef"
  vivify_955:
    set $P142, $P2170
    unless_null $P142, vivify_956
    new $P142, "Undef"
  vivify_956:
    $P143 = $P142."negate"()
    isfalse $I103, $P143
    $P141."negate"($I103)
  if_2173_end:
.annotate 'line', 705
    find_lex $P2175, "@alts"
    unless_null $P2175, vivify_957
    $P2175 = root_new ['parrot';'ResizablePMCArray']
  vivify_957:
    set $P140, $P2170
    unless_null $P140, vivify_958
    new $P140, "Undef"
  vivify_958:
    $P141 = $P2175."push"($P140)
.annotate 'line', 702
    .return ($P141)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block2126"  :anon :subid("369_1337965225.74") :outer("368_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 673
    new $P129, "Undef"
    set $P2128, $P129
    .lex "$node", $P2128
.annotate 'line', 674
    new $P130, "Undef"
    set $P2129, $P130
    .lex "$lhs", $P2129
.annotate 'line', 675
    new $P131, "Undef"
    set $P2130, $P131
    .lex "$rhs", $P2130
.annotate 'line', 696
    new $P132, "Undef"
    set $P2131, $P132
    .lex "$ord0", $P2131
.annotate 'line', 697
    new $P133, "Undef"
    set $P2132, $P133
    .lex "$ord1", $P2132
.annotate 'line', 672
    set $P135, $P2128
    unless_null $P135, vivify_959
    new $P135, "Undef"
  vivify_959:
    set $P135, $P2129
    unless_null $P135, vivify_960
    new $P135, "Undef"
  vivify_960:
    set $P135, $P2130
    unless_null $P135, vivify_961
    new $P135, "Undef"
  vivify_961:
.annotate 'line', 676
    find_lex $P2134, "$_"
    unless_null $P2134, vivify_962
    $P2134 = root_new ['parrot';'ResizablePMCArray']
  vivify_962:
    set $P2135, $P2134[0]
    unless_null $P2135, vivify_963
    $P2135 = root_new ['parrot';'Hash']
  vivify_963:
    set $P135, $P2135["backslash"]
    unless_null $P135, vivify_964
    new $P135, "Undef"
  vivify_964:
    if $P135, if_2133
.annotate 'line', 684
    find_lex $P2144, "$_"
    unless_null $P2144, vivify_965
    $P2144 = root_new ['parrot';'ResizablePMCArray']
  vivify_965:
    set $P2145, $P2144[0]
    unless_null $P2145, vivify_966
    $P2145 = root_new ['parrot';'ResizablePMCArray']
  vivify_966:
    set $P136, $P2145[0]
    unless_null $P136, vivify_967
    new $P136, "Undef"
  vivify_967:
    set $S100, $P136
    new $P137, 'String'
    set $P137, $S100
    set $P2129, $P137
.annotate 'line', 683
    goto if_2133_end
  if_2133:
.annotate 'line', 677
    find_lex $P2136, "$_"
    unless_null $P2136, vivify_968
    $P2136 = root_new ['parrot';'ResizablePMCArray']
  vivify_968:
    set $P2137, $P2136[0]
    unless_null $P2137, vivify_969
    $P2137 = root_new ['parrot';'Hash']
  vivify_969:
    set $P136, $P2137["backslash"]
    unless_null $P136, vivify_970
    new $P136, "Undef"
  vivify_970:
    $P137 = $P136."ast"()
    set $P2128, $P137
.annotate 'line', 679
    set $P140, $P2128
    unless_null $P140, vivify_971
    new $P140, "Undef"
  vivify_971:
    $S100 = $P140."rxtype"()
    isne $I101, $S100, "literal"
    if $I101, if_2141
    new $P139, 'Integer'
    set $P139, $I101
    goto if_2141_end
  if_2141:
    set $P141, $P2128
    unless_null $P141, vivify_972
    new $P141, "Undef"
  vivify_972:
    $S101 = $P141."rxtype"()
    isne $I102, $S101, "enumcharlist"
    new $P139, 'Integer'
    set $P139, $I102
  if_2141_end:
    unless $P139, unless_2140
    set $P137, $P139
    goto unless_2140_end
  unless_2140:
.annotate 'line', 680
    set $P142, $P2128
    unless_null $P142, vivify_973
    new $P142, "Undef"
  vivify_973:
    $P143 = $P142."negate"()
    set $P137, $P143
  unless_2140_end:
    unless $P137, unless_2139
    set $P136, $P137
    goto unless_2139_end
  unless_2139:
    set $P2142, $P2128
    unless_null $P2142, vivify_974
    $P2142 = root_new ['parrot';'ResizablePMCArray']
  vivify_974:
    set $P144, $P2142[0]
    unless_null $P144, vivify_975
    new $P144, "Undef"
  vivify_975:
    set $S102, $P144
    length $I103, $S102
    set $N100, $I103
    set $N101, 1
    isne $I104, $N100, $N101
    new $P136, 'Integer'
    set $P136, $I104
  unless_2139_end:
    unless $P136, if_2138_end
.annotate 'line', 678
    find_lex $P145, "$/"
    unless_null $P145, vivify_976
    new $P145, "Undef"
  vivify_976:
    $P146 = $P145."CURSOR"()
    new $P147, "String"
    assign $P147, "Illegal range endpoint in regex: "
    find_lex $P148, "$_"
    unless_null $P148, vivify_977
    new $P148, "Undef"
  vivify_977:
    set $S103, $P148
    concat $P149, $P147, $S103
    $P146."panic"($P149)
  if_2138_end:
.annotate 'line', 681
    set $P2143, $P2128
    unless_null $P2143, vivify_978
    $P2143 = root_new ['parrot';'ResizablePMCArray']
  vivify_978:
    set $P136, $P2143[0]
    unless_null $P136, vivify_979
    new $P136, "Undef"
  vivify_979:
    set $P2129, $P136
  if_2133_end:
.annotate 'line', 686
    find_lex $P2147, "$_"
    unless_null $P2147, vivify_980
    $P2147 = root_new ['parrot';'ResizablePMCArray']
  vivify_980:
    set $P2148, $P2147[1]
    unless_null $P2148, vivify_981
    $P2148 = root_new ['parrot';'ResizablePMCArray']
  vivify_981:
    set $P2149, $P2148[0]
    unless_null $P2149, vivify_982
    $P2149 = root_new ['parrot';'Hash']
  vivify_982:
    set $P135, $P2149["backslash"]
    unless_null $P135, vivify_983
    new $P135, "Undef"
  vivify_983:
    if $P135, if_2146
.annotate 'line', 694
    find_lex $P2159, "$_"
    unless_null $P2159, vivify_984
    $P2159 = root_new ['parrot';'ResizablePMCArray']
  vivify_984:
    set $P2160, $P2159[1]
    unless_null $P2160, vivify_985
    $P2160 = root_new ['parrot';'ResizablePMCArray']
  vivify_985:
    set $P2161, $P2160[0]
    unless_null $P2161, vivify_986
    $P2161 = root_new ['parrot';'ResizablePMCArray']
  vivify_986:
    set $P136, $P2161[0]
    unless_null $P136, vivify_987
    new $P136, "Undef"
  vivify_987:
    set $S100, $P136
    new $P137, 'String'
    set $P137, $S100
    set $P2130, $P137
.annotate 'line', 693
    goto if_2146_end
  if_2146:
.annotate 'line', 687
    find_lex $P2150, "$_"
    unless_null $P2150, vivify_988
    $P2150 = root_new ['parrot';'ResizablePMCArray']
  vivify_988:
    set $P2151, $P2150[1]
    unless_null $P2151, vivify_989
    $P2151 = root_new ['parrot';'ResizablePMCArray']
  vivify_989:
    set $P2152, $P2151[0]
    unless_null $P2152, vivify_990
    $P2152 = root_new ['parrot';'Hash']
  vivify_990:
    set $P136, $P2152["backslash"]
    unless_null $P136, vivify_991
    new $P136, "Undef"
  vivify_991:
    $P137 = $P136."ast"()
    set $P2128, $P137
.annotate 'line', 689
    set $P140, $P2128
    unless_null $P140, vivify_992
    new $P140, "Undef"
  vivify_992:
    $S100 = $P140."rxtype"()
    isne $I101, $S100, "literal"
    if $I101, if_2156
    new $P139, 'Integer'
    set $P139, $I101
    goto if_2156_end
  if_2156:
    set $P141, $P2128
    unless_null $P141, vivify_993
    new $P141, "Undef"
  vivify_993:
    $S101 = $P141."rxtype"()
    isne $I102, $S101, "enumcharlist"
    new $P139, 'Integer'
    set $P139, $I102
  if_2156_end:
    unless $P139, unless_2155
    set $P137, $P139
    goto unless_2155_end
  unless_2155:
.annotate 'line', 690
    set $P142, $P2128
    unless_null $P142, vivify_994
    new $P142, "Undef"
  vivify_994:
    $P143 = $P142."negate"()
    set $P137, $P143
  unless_2155_end:
    unless $P137, unless_2154
    set $P136, $P137
    goto unless_2154_end
  unless_2154:
    set $P2157, $P2128
    unless_null $P2157, vivify_995
    $P2157 = root_new ['parrot';'ResizablePMCArray']
  vivify_995:
    set $P144, $P2157[0]
    unless_null $P144, vivify_996
    new $P144, "Undef"
  vivify_996:
    set $S102, $P144
    length $I103, $S102
    set $N100, $I103
    set $N101, 1
    isne $I104, $N100, $N101
    new $P136, 'Integer'
    set $P136, $I104
  unless_2154_end:
    unless $P136, if_2153_end
.annotate 'line', 688
    find_lex $P145, "$/"
    unless_null $P145, vivify_997
    new $P145, "Undef"
  vivify_997:
    $P146 = $P145."CURSOR"()
    new $P147, "String"
    assign $P147, "Illegal range endpoint in regex: "
    find_lex $P148, "$_"
    unless_null $P148, vivify_998
    new $P148, "Undef"
  vivify_998:
    set $S103, $P148
    concat $P149, $P147, $S103
    $P146."panic"($P149)
  if_2153_end:
.annotate 'line', 691
    set $P2158, $P2128
    unless_null $P2158, vivify_999
    $P2158 = root_new ['parrot';'ResizablePMCArray']
  vivify_999:
    set $P136, $P2158[0]
    unless_null $P136, vivify_1000
    new $P136, "Undef"
  vivify_1000:
    set $P2130, $P136
  if_2146_end:
.annotate 'line', 696
    set $P135, $P2129
    unless_null $P135, vivify_1001
    new $P135, "Undef"
  vivify_1001:
    set $S100, $P135
    ord $I101, $S100
    new $P136, 'Integer'
    set $P136, $I101
    set $P2131, $P136
.annotate 'line', 697
    set $P135, $P2130
    unless_null $P135, vivify_1002
    new $P135, "Undef"
  vivify_1002:
    set $S100, $P135
    ord $I101, $S100
    new $P136, 'Integer'
    set $P136, $I101
    set $P2132, $P136
.annotate 'line', 699
    set $P135, $P2131
    unless_null $P135, vivify_1003
    new $P135, "Undef"
  vivify_1003:
    set $N100, $P135
    set $P136, $P2132
    unless_null $P136, vivify_1004
    new $P136, "Undef"
  vivify_1004:
    set $N101, $P136
    isgt $I101, $N100, $N101
    unless $I101, if_2162_end
.annotate 'line', 698
    find_lex $P137, "$/"
    unless_null $P137, vivify_1005
    new $P137, "Undef"
  vivify_1005:
    $P139 = $P137."CURSOR"()
    new $P140, "String"
    assign $P140, "Illegal reversed character range in regex: "
    find_lex $P141, "$_"
    unless_null $P141, vivify_1006
    new $P141, "Undef"
  vivify_1006:
    set $S100, $P141
    concat $P142, $P140, $S100
    $P139."panic"($P142)
  if_2162_end:
.annotate 'line', 700
    new $P141, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P141, loop2164_handler
    push_eh $P141
  loop2164_test:
    set $P135, $P2131
    unless_null $P135, vivify_1007
    new $P135, "Undef"
  vivify_1007:
    set $N100, $P135
    set $P136, $P2132
    unless_null $P136, vivify_1008
    new $P136, "Undef"
  vivify_1008:
    set $N101, $P136
    isle $I101, $N100, $N101
    unless $I101, loop2164_done
  loop2164_redo:
    find_lex $P137, "$str"
    unless_null $P137, vivify_1009
    new $P137, "Undef"
  vivify_1009:
    set $P139, $P2131
    unless_null $P139, vivify_1010
    new $P139, "Undef"
  vivify_1010:
    clone $P2163, $P139
    inc $P139
    set $I102, $P2163
    chr $S100, $I102
    concat $P140, $P137, $S100
    store_lex "$str", $P140
  loop2164_next:
    goto loop2164_test
  loop2164_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P142, exception, 'type'
    eq $P142, .CONTROL_LOOP_NEXT, loop2164_next
    eq $P142, .CONTROL_LOOP_REDO, loop2164_redo
  loop2164_done:
    pop_eh 
.annotate 'line', 672
    .return ($I101)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "_block2104"  :anon :subid("366_1337965225.74") :outer("156_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 664
    new $P123, "Undef"
    set $P2106, $P123
    .lex "$uniprop", $P2106
    find_lex $P2107, "$/"
    unless_null $P2107, vivify_1025
    $P2107 = root_new ['parrot';'Hash']
  vivify_1025:
    set $P124, $P2107["uniprop"]
    unless_null $P124, vivify_1026
    new $P124, "Undef"
  vivify_1026:
    set $S100, $P124
    new $P125, 'String'
    set $P125, $S100
    set $P2106, $P125
.annotate 'line', 665
    get_hll_global $P124, "GLOBAL"
    nqp_get_package_through_who $P125, $P124, "QAST"
    get_who $P126, $P125
    set $P127, $P126["Regex"]
    set $P128, $P2106
    unless_null $P128, vivify_1027
    new $P128, "Undef"
  vivify_1027:
.annotate 'line', 666
    find_lex $P2110, "$/"
    unless_null $P2110, vivify_1028
    $P2110 = root_new ['parrot';'Hash']
  vivify_1028:
    set $P131, $P2110["sign"]
    unless_null $P131, vivify_1029
    new $P131, "Undef"
  vivify_1029:
    set $S100, $P131
    iseq $I100, $S100, "-"
    if $I100, if_2109
    new $P130, 'Integer'
    set $P130, $I100
    goto if_2109_end
  if_2109:
    find_lex $P2111, "$/"
    unless_null $P2111, vivify_1030
    $P2111 = root_new ['parrot';'Hash']
  vivify_1030:
    set $P132, $P2111["invert"]
    unless_null $P132, vivify_1031
    new $P132, "Undef"
  vivify_1031:
    set $S101, $P132
    isne $I101, $S101, "!"
    new $P130, 'Integer'
    set $P130, $I101
  if_2109_end:
    unless $P130, unless_2108
    set $P129, $P130
    goto unless_2108_end
  unless_2108:
.annotate 'line', 667
    find_lex $P2113, "$/"
    unless_null $P2113, vivify_1032
    $P2113 = root_new ['parrot';'Hash']
  vivify_1032:
    set $P135, $P2113["sign"]
    unless_null $P135, vivify_1033
    new $P135, "Undef"
  vivify_1033:
    set $S102, $P135
    isne $I102, $S102, "-"
    if $I102, if_2112
    new $P133, 'Integer'
    set $P133, $I102
    goto if_2112_end
  if_2112:
    find_lex $P2114, "$/"
    unless_null $P2114, vivify_1034
    $P2114 = root_new ['parrot';'Hash']
  vivify_1034:
    set $P136, $P2114["invert"]
    unless_null $P136, vivify_1035
    new $P136, "Undef"
  vivify_1035:
    set $S103, $P136
    iseq $I103, $S103, "!"
    new $P133, 'Integer'
    set $P133, $I103
  if_2112_end:
    set $P129, $P133
  unless_2108_end:
.annotate 'line', 665
    find_lex $P137, "$/"
    unless_null $P137, vivify_1036
    new $P137, "Undef"
  vivify_1036:
    $P138 = $P127."new"($P128, "uniprop" :named("rxtype"), $P129 :named("negate"), $P137 :named("node"))
    store_lex "$qast", $P138
.annotate 'line', 663
    .return ($P138)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "_block2097"  :anon :subid("365_1337965225.74") :outer("156_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 659
    new $P121, "Undef"
    set $P2099, $P121
    .lex "$name", $P2099
    find_lex $P2100, "$/"
    unless_null $P2100, vivify_1037
    $P2100 = root_new ['parrot';'Hash']
  vivify_1037:
    set $P122, $P2100["name"]
    unless_null $P122, vivify_1038
    new $P122, "Undef"
  vivify_1038:
    set $S100, $P122
    new $P123, 'String'
    set $P123, $S100
    set $P2099, $P123
.annotate 'line', 660
    get_hll_global $P122, "GLOBAL"
    nqp_get_package_through_who $P123, $P122, "QAST"
    get_who $P124, $P123
    set $P125, $P124["Regex"]
    get_hll_global $P126, "GLOBAL"
    nqp_get_package_through_who $P127, $P126, "PAST"
    get_who $P128, $P127
    set $P129, $P128["Node"]
    set $P130, $P2099
    unless_null $P130, vivify_1039
    new $P130, "Undef"
  vivify_1039:
    $P131 = $P129."new"($P130)
.annotate 'line', 661
    find_lex $P2101, "$/"
    unless_null $P2101, vivify_1040
    $P2101 = root_new ['parrot';'Hash']
  vivify_1040:
    set $P132, $P2101["sign"]
    unless_null $P132, vivify_1041
    new $P132, "Undef"
  vivify_1041:
    set $S100, $P132
    iseq $I100, $S100, "-"
.annotate 'line', 660
    find_lex $P133, "$/"
    unless_null $P133, vivify_1042
    new $P133, "Undef"
  vivify_1042:
    $P134 = $P125."new"($P131, "subrule" :named("rxtype"), "method" :named("subtype"), $I100 :named("negate"), $P133 :named("node"))
    store_lex "$qast", $P134
.annotate 'line', 658
    .return ($P134)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "mod_internal" :anon :subid("157_1337965225.74") :outer("336_1337965225.74")
    .param pmc param_2189
    .param pmc param_2190
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 722
    .lex "self", param_2189
    .lex "$/", param_2190
.annotate 'line', 723
    new $P118, "Undef"
    set $P2191, $P118
    .lex "$n", $P2191
    set $P2193, param_2190
    unless_null $P2193, vivify_1044
    $P2193 = root_new ['parrot';'Hash']
  vivify_1044:
    set $P2194, $P2193["n"]
    unless_null $P2194, vivify_1045
    $P2194 = root_new ['parrot';'ResizablePMCArray']
  vivify_1045:
    set $P120, $P2194[0]
    unless_null $P120, vivify_1046
    new $P120, "Undef"
  vivify_1046:
    set $S100, $P120
    isgt $I100, $S100, ""
    if $I100, if_2192
    new $P122, "Float"
    assign $P122, 1
    set $P119, $P122
    goto if_2192_end
  if_2192:
    set $P2195, param_2190
    unless_null $P2195, vivify_1047
    $P2195 = root_new ['parrot';'Hash']
  vivify_1047:
    set $P2196, $P2195["n"]
    unless_null $P2196, vivify_1048
    $P2196 = root_new ['parrot';'ResizablePMCArray']
  vivify_1048:
    set $P121, $P2196[0]
    unless_null $P121, vivify_1049
    new $P121, "Undef"
  vivify_1049:
    set $N100, $P121
    new $P119, 'Float'
    set $P119, $N100
  if_2192_end:
    set $P2191, $P119
.annotate 'line', 724
    set $P119, $P2191
    unless_null $P119, vivify_1050
    new $P119, "Undef"
  vivify_1050:
    set $P2197, param_2190
    unless_null $P2197, vivify_1051
    $P2197 = root_new ['parrot';'Hash']
  vivify_1051:
    set $P2198, $P2197["mod_ident"]
    unless_null $P2198, vivify_1052
    $P2198 = root_new ['parrot';'Hash']
  vivify_1052:
    set $P120, $P2198["sym"]
    unless_null $P120, vivify_1053
    new $P120, "Undef"
  vivify_1053:
    set $S100, $P120
    find_dynamic_lex $P123, "%*RX"
    unless_null $P123, vivify_1054
    get_hll_global $P121, "GLOBAL"
    get_who $P122, $P121
    set $P123, $P122["%RX"]
    unless_null $P123, vivify_1055
    die "Contextual %*RX not found"
  vivify_1055:
    store_dynamic_lex "%*RX", $P123
  vivify_1054:
    set $P123[$S100], $P119
.annotate 'line', 725
    set $P119, param_2190
    $P120 = $P119."!make"(0)
.annotate 'line', 722
    .return ($P120)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "subrule_alias" :anon :subid("158_1337965225.74") :outer("336_1337965225.74")
    .param pmc param_2200
    .param pmc param_2201
    .param pmc param_2202
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 821
    .lex "self", param_2200
    .lex "$ast", param_2201
    .lex "$name", param_2202
.annotate 'line', 822
    set $P118, param_2201
    unless_null $P118, vivify_1056
    new $P118, "Undef"
  vivify_1056:
    $S100 = $P118."name"()
    isgt $I100, $S100, ""
    if $I100, if_2203
.annotate 'line', 823
    set $P119, param_2201
    unless_null $P119, vivify_1057
    new $P119, "Undef"
  vivify_1057:
    set $P120, param_2202
    unless_null $P120, vivify_1058
    new $P120, "Undef"
  vivify_1058:
    $P119."name"($P120)
    goto if_2203_end
  if_2203:
.annotate 'line', 822
    set $P119, param_2201
    unless_null $P119, vivify_1059
    new $P119, "Undef"
  vivify_1059:
    set $P120, param_2202
    unless_null $P120, vivify_1060
    new $P120, "Undef"
  vivify_1060:
    concat $P121, $P120, "="
    set $P122, param_2201
    unless_null $P122, vivify_1061
    new $P122, "Undef"
  vivify_1061:
    $S101 = $P122."name"()
    concat $P123, $P121, $S101
    $P119."name"($P123)
  if_2203_end:
.annotate 'line', 824
    set $P118, param_2201
    unless_null $P118, vivify_1062
    new $P118, "Undef"
  vivify_1062:
    $P119 = $P118."subtype"("capture")
.annotate 'line', 821
    .return ($P119)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "flip_ast" :anon :subid("159_1337965225.74") :outer("336_1337965225.74")
    .param pmc param_2207
    .param pmc param_2208
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 827
    .const 'Sub' $P2226 = "372_1337965225.74" 
    capture_lex $P2226
    .const 'Sub' $P2215 = "371_1337965225.74" 
    capture_lex $P2215
    new $P2206, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P2206, control_2205
    push_eh $P2206
    .lex "self", param_2207
    .lex "$qast", param_2208
.annotate 'line', 828
    set $P118, param_2208
    unless_null $P118, vivify_1063
    new $P118, "Undef"
  vivify_1063:
    get_hll_global $P119, "GLOBAL"
    nqp_get_package_through_who $P120, $P119, "QAST"
    get_who $P121, $P120
    set $P122, $P121["Regex"]
    type_check $I100, $P118, $P122
    if $I100, unless_2209_end
    new $P123, "Exception"
    set $P123['type'], .CONTROL_RETURN
    set $P124, param_2208
    unless_null $P124, vivify_1064
    new $P124, "Undef"
  vivify_1064:
    setattribute $P123, 'payload', $P124
    throw $P123
  unless_2209_end:
.annotate 'line', 829
    set $P118, param_2208
    unless_null $P118, vivify_1065
    new $P118, "Undef"
  vivify_1065:
    $S100 = $P118."rxtype"()
    iseq $I100, $S100, "literal"
    if $I100, if_2210
.annotate 'line', 832
    set $P119, param_2208
    unless_null $P119, vivify_1066
    new $P119, "Undef"
  vivify_1066:
    $S101 = $P119."rxtype"()
    iseq $I101, $S101, "concat"
    if $I101, if_2213
.annotate 'line', 837
    set $P120, param_2208
    unless_null $P120, vivify_1067
    new $P120, "Undef"
  vivify_1067:
    $S102 = $P120."rxtype"()
    iseq $I102, $S102, "pastnode"
    if $I102, if_2224
.annotate 'line', 841
    set $P122, param_2208
    unless_null $P122, vivify_1068
    new $P122, "Undef"
  vivify_1068:
    $P123 = $P122."list"()
    defined $I103, $P123
    unless $I103, for_undef_1069
    iter $P121, $P123
    new $P125, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P125, loop2228_handler
    push_eh $P125
  loop2228_test:
    unless $P121, loop2228_done
    shift $P124, $P121
  loop2228_redo:
    .const 'Sub' $P2226 = "372_1337965225.74" 
    capture_lex $P2226
    $P2226($P124)
  loop2228_next:
    goto loop2228_test
  loop2228_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P126, exception, 'type'
    eq $P126, .CONTROL_LOOP_NEXT, loop2228_next
    eq $P126, .CONTROL_LOOP_REDO, loop2228_redo
  loop2228_done:
    pop_eh 
  for_undef_1069:
.annotate 'line', 840
    goto if_2224_end
  if_2224:
  if_2224_end:
.annotate 'line', 837
    goto if_2213_end
  if_2213:
.annotate 'line', 832
    .const 'Sub' $P2215 = "371_1337965225.74" 
    capture_lex $P2215
    $P2215()
  if_2213_end:
    goto if_2210_end
  if_2210:
.annotate 'line', 830
    set $P2211, param_2208
    unless_null $P2211, vivify_1078
    $P2211 = root_new ['parrot';'ResizablePMCArray']
  vivify_1078:
    set $P119, $P2211[0]
    unless_null $P119, vivify_1079
    new $P119, "Undef"
  vivify_1079:
    $P120 = $P119."reverse"()
    set $P2212, param_2208
    unless_null $P2212, vivify_1080
    $P2212 = root_new ['parrot';'ResizablePMCArray']
    set param_2208, $P2212
  vivify_1080:
    set $P2212[0], $P120
  if_2210_end:
.annotate 'line', 827
    set $P118, param_2208
    unless_null $P118, vivify_1081
    new $P118, "Undef"
  vivify_1081:
    .return ($P118)
  control_2205:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P119, exception, "payload"
    .return ($P119)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.sub "_block2225"  :anon :subid("372_1337965225.74") :outer("159_1337965225.74")
    .param pmc param_2227
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 841
    .lex "$_", param_2227
    find_lex $P125, "self"
    nqp_decontainerize $P126, $P125
    find_lex $P127, "$_"
    unless_null $P127, vivify_1070
    new $P127, "Undef"
  vivify_1070:
    $P128 = $P126."flip_ast"($P127)
    .return ($P128)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block2214"  :anon :subid("371_1337965225.74") :outer("159_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 833
    $P2217 = root_new ['parrot';'ResizablePMCArray']
    set $P2216, $P2217
    .lex "@tmp", $P2216
.annotate 'line', 832
    set $P2218, $P2216
    unless_null $P2218, vivify_1071
    $P2218 = root_new ['parrot';'ResizablePMCArray']
  vivify_1071:
.annotate 'line', 834
    new $P122, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P122, loop2220_handler
    push_eh $P122
  loop2220_test:
    find_lex $P120, "$qast"
    unless_null $P120, vivify_1072
    new $P120, "Undef"
  vivify_1072:
    $P121 = $P120."list"()
    set $N100, $P121
    unless $N100, loop2220_done
  loop2220_redo:
    set $P2219, $P2216
    unless_null $P2219, vivify_1073
    $P2219 = root_new ['parrot';'ResizablePMCArray']
  vivify_1073:
    find_lex $P122, "$qast"
    unless_null $P122, vivify_1074
    new $P122, "Undef"
  vivify_1074:
    $P123 = $P122."list"()
    $P124 = $P123."shift"()
    $P2219."push"($P124)
  loop2220_next:
    goto loop2220_test
  loop2220_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P123, exception, 'type'
    eq $P123, .CONTROL_LOOP_NEXT, loop2220_next
    eq $P123, .CONTROL_LOOP_REDO, loop2220_redo
  loop2220_done:
    pop_eh 
.annotate 'line', 835
    new $P120, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P120, loop2223_handler
    push_eh $P120
  loop2223_test:
    set $P2221, $P2216
    unless_null $P2221, vivify_1075
    $P2221 = root_new ['parrot';'ResizablePMCArray']
  vivify_1075:
    unless $P2221, loop2223_done
  loop2223_redo:
    find_lex $P120, "$qast"
    unless_null $P120, vivify_1076
    new $P120, "Undef"
  vivify_1076:
    $P121 = $P120."list"()
    find_lex $P122, "self"
    nqp_decontainerize $P123, $P122
    set $P2222, $P2216
    unless_null $P2222, vivify_1077
    $P2222 = root_new ['parrot';'ResizablePMCArray']
  vivify_1077:
    $P124 = $P2222."pop"()
    $P125 = $P123."flip_ast"($P124)
    $P121."push"($P125)
  loop2223_next:
    goto loop2223_test
  loop2223_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P121, exception, 'type'
    eq $P121, .CONTROL_LOOP_NEXT, loop2223_next
    eq $P121, .CONTROL_LOOP_REDO, loop2223_redo
  loop2223_done:
    pop_eh 
.annotate 'line', 832
    .return ($P2221)
.end


.HLL "nqp"

.namespace ["QRegex";"P6Regex";"Compiler"]
.sub "_block2230"  :subid("373_1337965225.74") :outer("160_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 848
    .lex "$?PACKAGE", $P2232
    .lex "$?CLASS", $P2233
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block2236" :load :anon :subid("374_1337965225.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 1
    .const '' $P2238 = "160_1337965225.74" 
    $P109 = $P2238()
    .return ($P109)
.end

