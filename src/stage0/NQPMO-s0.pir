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
.sub "_block1000"  :anon :subid("123_1339198188.86")
    .param pmc param_1002 :slurpy
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 0
    .const 'Sub' $P2176 = "196_1339198188.86" 
    capture_lex $P2176
    .const 'Sub' $P2168 = "194_1339198188.86" 
    capture_lex $P2168
    .const 'Sub' $P2128 = "193_1339198188.86" 
    capture_lex $P2128
    .const 'Sub' $P2077 = "190_1339198188.86" 
    capture_lex $P2077
    .const 'Sub' $P2036 = "189_1339198188.86" 
    capture_lex $P2036
    .const 'Sub' $P1491 = "153_1339198188.86" 
    capture_lex $P1491
    .const 'Sub' $P1353 = "146_1339198188.86" 
    capture_lex $P1353
    .const 'Sub' $P1282 = "138_1339198188.86" 
    capture_lex $P1282
    .const 'Sub' $P1150 = "134_1339198188.86" 
    capture_lex $P1150
    .const 'Sub' $P1050 = "125_1339198188.86" 
    capture_lex $P1050
    .const 'Sub' $P1016 = "124_1339198188.86" 
    capture_lex $P1016
.annotate 'line', 1
    .lex "@ARGS", param_1002
    .lex "GLOBALish", $P1003
    .lex "$?PACKAGE", $P1004
    .lex "Archetypes", $P1005
    .lex "RoleToRoleApplier", $P1006
    .lex "NQPConcreteRoleHOW", $P1007
    .lex "RoleToClassApplier", $P1008
    .lex "NQPParametricRoleHOW", $P1009
    .lex "NQPClassHOW", $P1010
    .lex "NQPNativeHOW", $P1011
    .lex "NQPAttribute", $P1012
    .lex "NQPModuleHOW", $P1013
    .lex "EXPORTHOW", $P1014
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 9
    .const 'Sub' $P1016 = "124_1339198188.86" 
    capture_lex $P1016
    $P1016()
.annotate 'line', 72
    .const 'Sub' $P1050 = "125_1339198188.86" 
    capture_lex $P1050
    $P1050()
.annotate 'line', 164
    .const 'Sub' $P1150 = "134_1339198188.86" 
    capture_lex $P1150
    $P1150()
.annotate 'line', 317
    .const 'Sub' $P1282 = "138_1339198188.86" 
    capture_lex $P1282
    $P1282()
.annotate 'line', 390
    .const 'Sub' $P1353 = "146_1339198188.86" 
    capture_lex $P1353
    $P1353()
.annotate 'line', 567
    .const 'Sub' $P1491 = "153_1339198188.86" 
    capture_lex $P1491
    $P1491()
.annotate 'line', 1135
    .const 'Sub' $P2036 = "189_1339198188.86" 
    capture_lex $P2036
    $P2036()
.annotate 'line', 1186
    .const 'Sub' $P2077 = "190_1339198188.86" 
    capture_lex $P2077
    $P2077()
.annotate 'line', 1268
    .const 'Sub' $P2128 = "193_1339198188.86" 
    capture_lex $P2128
    $P2128()
.annotate 'line', 1322
    .const 'Sub' $P2168 = "194_1339198188.86" 
    capture_lex $P2168
    $P2168()
.annotate 'line', 1
    set $P101, param_1002
    if $P101, if_2171
    set $P100, $P101
    goto if_2171_end
  if_2171:
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P102, "ModuleLoader"
    getinterp $P103
    set $P104, $P103["context"]
    $P105 = $P102."set_mainline_module"($P104)
    set $P100, $P105
  if_2171_end:
    .return ($P100)
    .const 'Sub' $P2173 = "195_1339198188.86" 
    .return ($P2173)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post197") :outer("123_1339198188.86")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 0
    .const 'Sub' $P1001 = "123_1339198188.86" 
    .local pmc block
    set block, $P1001
    nqp_dynop_setup 
    nqp_bigint_setup 
    getinterp $P107
    get_class $P108, "LexPad"
    get_class $P109, "NQPLexPad"
    $P107."hll_map"($P108, $P109)
    nqp_create_sc $P110, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799"
    .local pmc cur_sc
    set cur_sc, $P110
    cur_sc."set_description"("src\\stage2\\gen\\nqp-mo.pm")
    set $S100, "AQAAAEAAAAABAAAASAAAAAsAAACgAAAALhIAAEcAAACeFgAAKiAAAAAAAAAqIAAAAAAAACogAAAqIAAAAAAAALYAAAAAAAAAAQAAAAAAAAAKAAAACgEAAB0AAADkAgAAHwAAAIwDAAA8AAAA+gUAAD4AAACiBgAAWAAAANYIAACPAAAA8AwAAJsAAAA4DgAAqQAAAKwPAAC1AAAA9BAAAAAAAAALAAAAAAAAAAAAAAAKAAgAAAACAAAAAgAAAAAAAgAAAAMAAAACAAAAAAADAAAABAAAAAIAAAAAAAQAAAAFAAAAAgAAAAAABQAAAAYAAAACAAAAAAAGAAAABwAAAAIAAAAAAAcAAAAIAAAAAgAAAAAACAAAAAkAAAACAAAAAAAJAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAAAAAAMAAAAAAAwAAAAAAAAAAQAAAAoAAAAAAAoACgAAAAsAAAALAAAAAAAAAAAADAAAAAsAAAAAAAEAAAANAAAACwAAAAAAAgAAAA4AAAALAAAAAAADAAAADwAAAAsAAAAAAAQAAAAQAAAACwAAAAAABQAAABEAAAALAAAAAAAGAAAAEgAAAAsAAAAAAAcAAAATAAAACwAAAAAACAAAABQAAAALAAAAAAAJAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAEAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAEAAAAKAAgAAAAVAAAABAAAAAAAAAAAABYAAAAEAAEAAAAAAAAAFwAAAAQAAgAAAAAAAAAYAAAABAADAAAAAAAAABkAAAAEAAQAAAAAAAAAGgAAAAQABQAAAAAAAAAbAAAABAAGAAAAAAAAABwAAAAEAAcAAAAAAAAAAAAAAA0AAAAAAAAAAgAAAAoAAAAAAAoAAQAAAB4AAAALAAAAAAAKAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAIAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAgAAAAMAAAAAAA4AAAAAAAAAAwAAAAoAAAAAAAoAEwAAACAAAAALAAAAAAALAAAAIQAAAAsAAAAAAAwAAAAiAAAACwAAAAAADQAAACMAAAALAAAAAAAOAAAAJAAAAAsAAAAAAA8AAAAlAAAACwAAAAAAEAAAACYAAAALAAAAAAARAAAAJwAAAAsAAAAAABIAAAAoAAAACwAAAAAAEwAAACkAAAALAAAAAAAUAAAAKgAAAAsAAAAAABUAAAArAAAACwAAAAAAFgAAACwAAAALAAAAAAAXAAAALQAAAAsAAAAAABgAAAAuAAAACwAAAAAAGQAAAC8AAAALAAAAAAAaAAAAMAAAAAsAAAAAABsAAAAxAAAACwAAAAAAHAAAADIAAAALAAAAAAAdAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAMAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAJAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAwAAAAoACQAAADMAAAAEAAAAAAAAAAAANAAAAAQAAQAAAAAAAAA1AAAABAACAAAAAAAAADYAAAAEAAMAAAAAAAAANwAAAAQABAAAAAAAAAA4AAAABAAFAAAAAAAAADkAAAAEAAYAAAAAAAAAOgAAAAQABwAAAAAAAAA7AAAABAAIAAAAAAAAAAAAAAAPAAAAAAAAAAQAAAAKAAAAAAAKAAEAAAA9AAAACwAAAAAAHgAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAAEAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAQAAAADAAAAAAAQAAAAAAAAAAUAAAAKAAAAAAAKABIAAAA/AAAACwAAAAAAHwAAAEAAAAALAAAAAAAgAAAAQQAAAAsAAAAAACEAAABCAAAACwAAAAAAIgAAAEMAAAALAAAAAAAjAAAARAAAAAsAAAAAACQAAABFAAAACwAAAAAAJQAAAEYAAAALAAAAAAAmAAAARwAAAAsAAAAAACcAAABIAAAACwAAAAAAKAAAAEkAAAALAAAAAAApAAAASgAAAAsAAAAAACoAAABLAAAACwAAAAAAKwAAAEwAAAALAAAAAAAsAAAATQAAAAsAAAAAAC0AAABOAAAACwAAAAAALgAAAE8AAAALAAAAAAAvAAAAUAAAAAsAAAAAADAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAABQAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAUAAAAKAAcAAABRAAAABAAAAAAAAAAAAFIAAAAEAAEAAAAAAAAAUwAAAAQAAgAAAAAAAABUAAAABAADAAAAAAAAAFUAAAAEAAQAAAAAAAAAVgAAAAQABQAAAAAAAABXAAAABAAGAAAAAAAAAAAAAAARAAAAAAAAAAYAAAAKAAAAAAAKACUAAABZAAAACwAAAAAAMQAAAFoAAAALAAAAAAAyAAAAWwAAAAsAAAAAADMAAABcAAAACwAAAAAANAAAAF0AAAALAAAAAAA1AAAAXgAAAAsAAAAAADYAAABfAAAACwAAAAAANwAAAGAAAAALAAAAAAA4AAAAYQAAAAsAAAAAADkAAABiAAAACwAAAAAAOgAAAGMAAAALAAAAAAA7AAAAZAAAAAsAAAAAADwAAABlAAAACwAAAAAAPQAAAGYAAAALAAAAAAA+AAAAZwAAAAsAAAAAAD8AAABoAAAACwAAAAAAQAAAAGkAAAALAAAAAABBAAAAagAAAAsAAAAAAEIAAABrAAAACwAAAAAAQwAAAGwAAAALAAAAAABEAAAAbQAAAAsAAAAAAEUAAABuAAAACwAAAAAARgAAAG8AAAALAAAAAABHAAAAcAAAAAsAAAAAAEgAAABxAAAACwAAAAAASQAAAHIAAAALAAAAAABKAAAAcwAAAAsAAAAAAEsAAAB0AAAACwAAAAAATAAAAHUAAAALAAAAAABNAAAAdgAAAAsAAAAAAE4AAAB3AAAACwAAAAAATwAAAHgAAAALAAAAAABQAAAAeQAAAAsAAAAAAFEAAAB6AAAACwAAAAAAUgAAAHsAAAALAAAAAABTAAAAfAAAAAsAAAAAAFQAAAB9AAAACwAAAAAAVQAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAAGAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAAGAAAACgARAAAAfgAAAAQAAAAAAAAAAAB/AAAABAABAAAAAAAAAIAAAAAEAAIAAAAAAAAAgQAAAAQAAwAAAAAAAACCAAAABAAEAAAAAAAAAIMAAAAEAAUAAAAAAAAAhAAAAAQABgAAAAAAAACFAAAABAAHAAAAAAAAAIYAAAAEAAgAAAAAAAAAhwAAAAQACQAAAAAAAACIAAAABAAKAAAAAAAAAIkAAAAEAAsAAAAAAAAAigAAAAQADAAAAAAAAACLAAAABAANAAAAAAAAAIwAAAAEAA4AAAAAAAAAjQAAAAQADwAAAAAAAACOAAAABAAQAAAAAAAAAAAAAAASAAAAAAAAAAcAAAAKAAAAAAAKAAkAAACQAAAACwAAAAAAVgAAAJEAAAALAAAAAABXAAAAkgAAAAsAAAAAAFgAAACTAAAACwAAAAAAWQAAAJQAAAALAAAAAABaAAAAlQAAAAsAAAAAAFsAAACWAAAACwAAAAAAXAAAAJcAAAALAAAAAABdAAAAmAAAAAsAAAAAAF4AAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAABwAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAABwAAAAoAAgAAAJkAAAAEAAAAAAAAAAAAmgAAAAQAAQAAAAAAAAAAAAAAEwAAAAAAAAAIAAAACgAAAAAACgAJAAAAnAAAAAsAAAAAAF8AAACdAAAACwAAAAAAYAAAAJ4AAAALAAAAAABhAAAAnwAAAAsAAAAAAGIAAACgAAAACwAAAAAAYwAAAKEAAAALAAAAAABkAAAAogAAAAsAAAAAAGUAAACjAAAACwAAAAAAZgAAAKQAAAALAAAAAABnAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAgAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAAIAAAACgAEAAAApQAAAAQAAAAAAAAAAACmAAAABAABAAAAAAAAAKcAAAAEAAIAAAAAAAAAqAAAAAQAAwAAAAAAAAAAAAAAFAAAAAAAAAAJAAAACgAAAAAACgAJAAAAqgAAAAsAAAAAAGgAAACrAAAACwAAAAAAaQAAAKwAAAALAAAAAABqAAAArQAAAAsAAAAAAGsAAACuAAAACwAAAAAAbAAAAK8AAAALAAAAAABtAAAAsAAAAAsAAAAAAG4AAACxAAAACwAAAAAAbwAAALIAAAALAAAAAABwAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAkAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAkAAAAKAAIAAACzAAAABAAAAAAAAAAAALQAAAAEAAEAAAAAAAAAAAAAABUAAAAAAAAACgAAAAoAAAAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAAKAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAoAAAADAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAADAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAUAAAAAAAAAAAAAAAAAAAAGAAAAAAAAAAAAAAAAAAAABwAAAAAAAAAAAAAAAAAAAAgAAAAAAAAAAAAAAAAAAAAJAAAAAAAAAAAAAAAAAAAACgAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAQAAAAEAAAAAAAAAEAAAAAEAAAABAAAAAAAAAPwAAAABAAAAAQAAAAAAAAAaAQAAAQAAAAEAAAAAAAAAjgIAAAEAAAABAAAAAAAAAKwCAAABAAAAAQAAAAAAAAD+AwAAAQAAAAEAAAAAAAAAvgYAAAEAAAABAAAAAAAAAGAHAAABAAAAAQAAAAAAAAAWCAAAAQAAAAEAAAAAAAAAuAgAAAEAAAABAAAAAgAAAMgIAAABAAAAAQAAAAIAAADMCAAAAQAAAAEAAAACAAAA0AgAAAEAAAABAAAAAgAAANQIAAABAAAAAQAAAAIAAADYCAAAAQAAAAEAAAACAAAA3AgAAAEAAAABAAAAAgAAAOAIAAABAAAAAQAAAAIAAADkCAAAAQAAAAEAAAACAAAA6AgAAAEAAAABAAAAAgAAAOwIAAABAAAAAQAAAAIAAADwCAAAAQAAAAEAAAACAAAA9AgAAAEAAAABAAAAAgAAAPgIAAABAAAAAQAAAAIAAAD8CAAAAQAAAAEAAAACAAAAAAkAAAEAAAABAAAAAgAAAAQJAAABAAAAAQAAAAIAAAAICQAAAQAAAAEAAAACAAAADAkAAAEAAAABAAAAAgAAABAJAAABAAAAAQAAAAIAAAAUCQAAAQAAAAEAAAACAAAAGAkAAAEAAAABAAAAAgAAABwJAAABAAAAAQAAAAIAAAAgCQAAAQAAAAEAAAACAAAAJAkAAAEAAAABAAAAAgAAACgJAAABAAAAAQAAAAIAAAAsCQAAAQAAAAEAAAACAAAAMAkAAAEAAAABAAAAAgAAADQJAAABAAAAAQAAAAIAAAA4CQAAAQAAAAEAAAACAAAAPAkAAAEAAAABAAAAAgAAAEAJAAABAAAAAQAAAAIAAABECQAAAQAAAAEAAAACAAAASAkAAAEAAAABAAAAAgAAAEwJAAABAAAAAQAAAAIAAABQCQAAAQAAAAEAAAACAAAAVAkAAAEAAAABAAAAAgAAAFgJAAABAAAAAQAAAAIAAABcCQAAAQAAAAEAAAACAAAAYAkAAAEAAAABAAAAAgAAAGQJAAABAAAAAQAAAAIAAABoCQAAAQAAAAEAAAACAAAAbAkAAAEAAAABAAAAAgAAAHAJAAABAAAAAQAAAAIAAAB0CQAAAQAAAAEAAAACAAAAeAkAAAEAAAABAAAAAgAAAHwJAAABAAAAAQAAAAIAAACACQAAAQAAAAEAAAACAAAAhAkAAAEAAAABAAAAAgAAAIgJAAABAAAAtwAAAAcAAAAAAAoAAAAAALgAAAAHAAgAAAACAAAAAAAWAAAAAgAAAAAAFwAAAAIAAAAAABgAAAACAAAAAAAZAAAAAgAAAAAAGgAAAAIAAAAAABsAAAACAAAAAAAcAAAAAgAAAAAAHQAAAAoACgAAALkAAAALAAAAAAAAAAAAugAAAAsAAAAAAAEAAAC7AAAACwAAAAAAAgAAALwAAAALAAAAAAADAAAAvQAAAAsAAAAAAAQAAAC+AAAACwAAAAAABQAAAL8AAAALAAAAAAAGAAAAwAAAAAsAAAAAAAcAAADBAAAACwAAAAAACAAAAMIAAAALAAAAAAAJAAAAwwAAAAcAAAAAAAoAAQAAAMQAAAALAAAAAAAKAAAAxQAAAAcACQAAAAIAAAAAAB4AAAACAAAAAAAfAAAAAgAAAAAAIAAAAAIAAAAAACEAAAACAAAAAAAiAAAAAgAAAAAAIwAAAAIAAAAAACQAAAACAAAAAAAlAAAAAgAAAAAAJgAAAAoAEwAAAMYAAAALAAAAAAALAAAAxwAAAAsAAAAAAAwAAADIAAAACwAAAAAADQAAAMkAAAALAAAAAAAOAAAAygAAAAsAAAAAAA8AAADLAAAACwAAAAAAEAAAAMwAAAALAAAAAAARAAAAzQAAAAsAAAAAABIAAADOAAAACwAAAAAAEwAAAM8AAAALAAAAAAAUAAAA0AAAAAsAAAAAABUAAADRAAAACwAAAAAAFgAAANIAAAALAAAAAAAXAAAA0wAAAAsAAAAAABgAAADUAAAACwAAAAAAGQAAANUAAAALAAAAAAAaAAAA1gAAAAsAAAAAABsAAADXAAAACwAAAAAAHAAAANgAAAALAAAAAAAdAAAA2QAAAAcAAAAAAAoAAQAAANoAAAALAAAAAAAeAAAA2wAAAAcABwAAAAIAAAAAACcAAAACAAAAAAAoAAAAAgAAAAAAKQAAAAIAAAAAACoAAAACAAAAAAArAAAAAgAAAAAALAAAAAIAAAAAAC0AAAAKABIAAADcAAAACwAAAAAAHwAAAN0AAAALAAAAAAAgAAAA3gAAAAsAAAAAACEAAADfAAAACwAAAAAAIgAAAOAAAAALAAAAAAAjAAAA4QAAAAsAAAAAACQAAADiAAAACwAAAAAAJQAAAOMAAAALAAAAAAAmAAAA5AAAAAsAAAAAACcAAADlAAAACwAAAAAAKAAAAOYAAAALAAAAAAApAAAA5wAAAAsAAAAAACoAAADoAAAACwAAAAAAKwAAAOkAAAALAAAAAAAsAAAA6gAAAAsAAAAAAC0AAADrAAAACwAAAAAALgAAAOwAAAALAAAAAAAvAAAA7QAAAAsAAAAAADAAAADuAAAABwARAAAAAgAAAAAALgAAAAIAAAAAAC8AAAACAAAAAAAwAAAAAgAAAAAAMQAAAAIAAAAAADIAAAACAAAAAAAzAAAAAgAAAAAANAAAAAIAAAAAADUAAAACAAAAAAA2AAAAAgAAAAAANwAAAAIAAAAAADgAAAACAAAAAAA5AAAAAgAAAAAAOgAAAAIAAAAAADsAAAACAAAAAAA8AAAAAgAAAAAAPQAAAAIAAAAAAD4AAAAKACUAAADvAAAACwAAAAAAMQAAAPAAAAALAAAAAAAyAAAA8QAAAAsAAAAAADMAAADyAAAACwAAAAAANAAAAPMAAAALAAAAAAA1AAAA9AAAAAsAAAAAADYAAAD1AAAACwAAAAAANwAAAPYAAAALAAAAAAA4AAAA9wAAAAsAAAAAADkAAAD4AAAACwAAAAAAOgAAAPkAAAALAAAAAAA7AAAA+gAAAAsAAAAAADwAAAD7AAAACwAAAAAAPQAAAPwAAAALAAAAAAA+AAAA/QAAAAsAAAAAAD8AAAD+AAAACwAAAAAAQAAAAP8AAAALAAAAAABBAAAAAAEAAAsAAAAAAEIAAAABAQAACwAAAAAAQwAAAAIBAAALAAAAAABEAAAAAwEAAAsAAAAAAEUAAAAEAQAACwAAAAAARgAAAAUBAAALAAAAAABHAAAABgEAAAsAAAAAAEgAAAAHAQAACwAAAAAASQAAAAgBAAALAAAAAABKAAAACQEAAAsAAAAAAEsAAAAKAQAACwAAAAAATAAAAAsBAAALAAAAAABNAAAADAEAAAsAAAAAAE4AAAANAQAACwAAAAAATwAAAA4BAAALAAAAAABQAAAADwEAAAsAAAAAAFEAAAAQAQAACwAAAAAAUgAAABEBAAALAAAAAABTAAAAEgEAAAsAAAAAAFQAAAATAQAACwAAAAAAVQAAABQBAAAHAAIAAAACAAAAAAA/AAAAAgAAAAAAQAAAAAoACQAAABUBAAALAAAAAABWAAAAFgEAAAsAAAAAAFcAAAAXAQAACwAAAAAAWAAAABgBAAALAAAAAABZAAAAGQEAAAsAAAAAAFoAAAAaAQAACwAAAAAAWwAAABsBAAALAAAAAABcAAAAHAEAAAsAAAAAAF0AAAAdAQAACwAAAAAAXgAAAB4BAAAHAAQAAAACAAAAAABBAAAAAgAAAAAAQgAAAAIAAAAAAEMAAAACAAAAAABEAAAACgAJAAAAHwEAAAsAAAAAAF8AAAAgAQAACwAAAAAAYAAAACEBAAALAAAAAABhAAAAIgEAAAsAAAAAAGIAAAAjAQAACwAAAAAAYwAAACQBAAALAAAAAABkAAAAJQEAAAsAAAAAAGUAAAAmAQAACwAAAAAAZgAAACcBAAALAAAAAABnAAAAKAEAAAcAAgAAAAIAAAAAAEUAAAACAAAAAABGAAAACgAJAAAAKQEAAAsAAAAAAGgAAAAqAQAACwAAAAAAaQAAACsBAAALAAAAAABqAAAALAEAAAsAAAAAAGsAAAAtAQAACwAAAAAAbAAAAC4BAAALAAAAAABtAAAALwEAAAsAAAAAAG4AAAAwAQAACwAAAAAAbwAAADEBAAALAAAAAABwAAAAMgEAAAcAAAAAAAoAAAAAADMBAAA0AQAANQEAADYBAAA3AQAAOAEAADkBAAA6AQAAOwEAADwBAAA9AQAAPgEAAD8BAABAAQAAQQEAAEIBAABDAQAARAEAAEUBAABGAQAARwEAAEgBAABJAQAASgEAAEsBAABMAQAATQEAAE4BAABPAQAAUAEAAFEBAABSAQAAUwEAAFQBAABVAQAAVgEAAFcBAABYAQAAWQEAAFoBAABbAQAAXAEAAF0BAABeAQAAXwEAAGABAABhAQAAYgEAAGMBAAA="
    new $P111, "ResizableStringArray"
    .local pmc string_heap
    set string_heap, $P111
    null $S101
    push string_heap, $S101
    push string_heap, "P6opaque"
    push string_heap, "RoleToRoleApplier"
    push string_heap, "NQPConcreteRoleHOW"
    push string_heap, "RoleToClassApplier"
    push string_heap, "NQPParametricRoleHOW"
    push string_heap, "NQPClassHOW"
    push string_heap, "NQPNativeHOW"
    push string_heap, "NQPAttribute"
    push string_heap, "NQPModuleHOW"
    push string_heap, "P6opaque"
    push string_heap, "new"
    push string_heap, "BUILD"
    push string_heap, "nominal"
    push string_heap, "nominalizable"
    push string_heap, "inheritable"
    push string_heap, "inheritalizable"
    push string_heap, "composable"
    push string_heap, "composalizable"
    push string_heap, "generic"
    push string_heap, "parametric"
    push string_heap, "$!nominal"
    push string_heap, "$!nominalizable"
    push string_heap, "$!inheritable"
    push string_heap, "$!inheritalizable"
    push string_heap, "$!composable"
    push string_heap, "$!composalizable"
    push string_heap, "$!generic"
    push string_heap, "$!parametric"
    push string_heap, "P6opaque"
    push string_heap, "apply"
    push string_heap, "P6opaque"
    push string_heap, "archetypes"
    push string_heap, "new"
    push string_heap, "BUILD"
    push string_heap, "new_type"
    push string_heap, "add_method"
    push string_heap, "add_multi_method"
    push string_heap, "add_attribute"
    push string_heap, "add_parent"
    push string_heap, "add_role"
    push string_heap, "add_collision"
    push string_heap, "compose"
    push string_heap, "methods"
    push string_heap, "method_table"
    push string_heap, "collisions"
    push string_heap, "name"
    push string_heap, "attributes"
    push string_heap, "roles"
    push string_heap, "role_typecheck_list"
    push string_heap, "instance_of"
    push string_heap, "$!name"
    push string_heap, "$!instance_of"
    push string_heap, "%!attributes"
    push string_heap, "%!methods"
    push string_heap, "@!multi_methods_to_incorporate"
    push string_heap, "@!collisions"
    push string_heap, "@!roles"
    push string_heap, "@!role_typecheck_list"
    push string_heap, "$!composed"
    push string_heap, "P6opaque"
    push string_heap, "apply"
    push string_heap, "P6opaque"
    push string_heap, "archetypes"
    push string_heap, "new"
    push string_heap, "BUILD"
    push string_heap, "new_type"
    push string_heap, "set_body_block"
    push string_heap, "add_method"
    push string_heap, "add_multi_method"
    push string_heap, "add_attribute"
    push string_heap, "add_parent"
    push string_heap, "add_role"
    push string_heap, "compose"
    push string_heap, "parametric"
    push string_heap, "specialize"
    push string_heap, "methods"
    push string_heap, "method_table"
    push string_heap, "name"
    push string_heap, "attributes"
    push string_heap, "roles"
    push string_heap, "$!name"
    push string_heap, "%!attributes"
    push string_heap, "%!methods"
    push string_heap, "@!multi_methods_to_incorporate"
    push string_heap, "@!roles"
    push string_heap, "$!composed"
    push string_heap, "$!body_block"
    push string_heap, "P6opaque"
    push string_heap, "archetypes"
    push string_heap, "new"
    push string_heap, "BUILD"
    push string_heap, "new_type"
    push string_heap, "add_method"
    push string_heap, "add_multi_method"
    push string_heap, "add_attribute"
    push string_heap, "add_parent"
    push string_heap, "set_default_parent"
    push string_heap, "add_role"
    push string_heap, "add_parrot_vtable_mapping"
    push string_heap, "add_parrot_vtable_handler_mapping"
    push string_heap, "compose"
    push string_heap, "incorporate_multi_candidates"
    push string_heap, "publish_type_cache"
    push string_heap, "publish_method_cache"
    push string_heap, "publish_boolification_spec"
    push string_heap, "publish_parrot_vtable_mapping"
    push string_heap, "publish_parrot_vtablee_handler_mapping"
    push string_heap, "parents"
    push string_heap, "mro"
    push string_heap, "roles"
    push string_heap, "methods"
    push string_heap, "method_table"
    push string_heap, "name"
    push string_heap, "traced"
    push string_heap, "trace_depth"
    push string_heap, "attributes"
    push string_heap, "parrot_vtable_mappings"
    push string_heap, "parrot_vtable_handler_mappings"
    push string_heap, "isa"
    push string_heap, "does"
    push string_heap, "can"
    push string_heap, "find_method"
    push string_heap, "cache"
    push string_heap, "trace-on"
    push string_heap, "trace-off"
    push string_heap, "$!name"
    push string_heap, "%!attributes"
    push string_heap, "%!methods"
    push string_heap, "@!method_order"
    push string_heap, "@!multi_methods_to_incorporate"
    push string_heap, "@!parents"
    push string_heap, "@!roles"
    push string_heap, "$!default_parent"
    push string_heap, "@!vtable"
    push string_heap, "%!method-vtable-slots"
    push string_heap, "$!composed"
    push string_heap, "@!mro"
    push string_heap, "@!done"
    push string_heap, "%!parrot_vtable_mapping"
    push string_heap, "%!parrot_vtable_handler_mapping"
    push string_heap, "$!trace"
    push string_heap, "$!trace_depth"
    push string_heap, "P6opaque"
    push string_heap, "archetypes"
    push string_heap, "new"
    push string_heap, "BUILD"
    push string_heap, "new_type"
    push string_heap, "add_method"
    push string_heap, "add_multi_method"
    push string_heap, "add_attribute"
    push string_heap, "compose"
    push string_heap, "name"
    push string_heap, "$!name"
    push string_heap, "$!composed"
    push string_heap, "P6opaque"
    push string_heap, "new"
    push string_heap, "BUILD"
    push string_heap, "name"
    push string_heap, "type"
    push string_heap, "has_accessor"
    push string_heap, "build_closure"
    push string_heap, "box_target"
    push string_heap, "compose"
    push string_heap, "has_mutator"
    push string_heap, "$!name"
    push string_heap, "$!type"
    push string_heap, "$!has_type"
    push string_heap, "$!box_target"
    push string_heap, "P6opaque"
    push string_heap, "archetypes"
    push string_heap, "new"
    push string_heap, "BUILD"
    push string_heap, "new_type"
    push string_heap, "add_method"
    push string_heap, "add_multi_method"
    push string_heap, "add_attribute"
    push string_heap, "compose"
    push string_heap, "name"
    push string_heap, "$!name"
    push string_heap, "$!composed"
    push string_heap, "P6opaque"
    push string_heap, "__6MODEL_CORE__"
    push string_heap, "GLOBALish"
    push string_heap, "Archetypes"
    push string_heap, "new"
    push string_heap, "BUILD"
    push string_heap, "nominal"
    push string_heap, "nominalizable"
    push string_heap, "inheritable"
    push string_heap, "inheritalizable"
    push string_heap, "composable"
    push string_heap, "composalizable"
    push string_heap, "generic"
    push string_heap, "parametric"
    push string_heap, "Captureproxy"
    push string_heap, "apply"
    push string_heap, "Captureproxy"
    push string_heap, "archetypes"
    push string_heap, "new"
    push string_heap, "BUILD"
    push string_heap, "new_type"
    push string_heap, "add_method"
    push string_heap, "add_multi_method"
    push string_heap, "add_attribute"
    push string_heap, "add_parent"
    push string_heap, "add_role"
    push string_heap, "add_collision"
    push string_heap, "compose"
    push string_heap, "methods"
    push string_heap, "method_table"
    push string_heap, "collisions"
    push string_heap, "name"
    push string_heap, "attributes"
    push string_heap, "roles"
    push string_heap, "role_typecheck_list"
    push string_heap, "instance_of"
    push string_heap, "Captureproxy"
    push string_heap, "apply"
    push string_heap, "\"$code_obj\""
    push string_heap, "archetypes"
    push string_heap, "new"
    push string_heap, "BUILD"
    push string_heap, "new_type"
    push string_heap, "set_body_block"
    push string_heap, "add_method"
    push string_heap, "add_multi_method"
    push string_heap, "add_attribute"
    push string_heap, "add_parent"
    push string_heap, "add_role"
    push string_heap, "compose"
    push string_heap, "parametric"
    push string_heap, "specialize"
    push string_heap, "methods"
    push string_heap, "method_table"
    push string_heap, "name"
    push string_heap, "attributes"
    push string_heap, "roles"
    push string_heap, "NQPClassHOW"
    push string_heap, "archetypes"
    push string_heap, "new"
    push string_heap, "BUILD"
    push string_heap, "new_type"
    push string_heap, "add_method"
    push string_heap, "add_multi_method"
    push string_heap, "add_attribute"
    push string_heap, "add_parent"
    push string_heap, "set_default_parent"
    push string_heap, "add_role"
    push string_heap, "add_parrot_vtable_mapping"
    push string_heap, "add_parrot_vtable_handler_mapping"
    push string_heap, "compose"
    push string_heap, "incorporate_multi_candidates"
    push string_heap, "publish_type_cache"
    push string_heap, "publish_method_cache"
    push string_heap, "publish_boolification_spec"
    push string_heap, "publish_parrot_vtable_mapping"
    push string_heap, "publish_parrot_vtablee_handler_mapping"
    push string_heap, "parents"
    push string_heap, "mro"
    push string_heap, "roles"
    push string_heap, "methods"
    push string_heap, "method_table"
    push string_heap, "name"
    push string_heap, "traced"
    push string_heap, "trace_depth"
    push string_heap, "attributes"
    push string_heap, "parrot_vtable_mappings"
    push string_heap, "parrot_vtable_handler_mappings"
    push string_heap, "isa"
    push string_heap, "does"
    push string_heap, "can"
    push string_heap, "find_method"
    push string_heap, "cache"
    push string_heap, "trace-on"
    push string_heap, "trace-off"
    push string_heap, "NQPNativeHOW"
    push string_heap, "archetypes"
    push string_heap, "new"
    push string_heap, "BUILD"
    push string_heap, "new_type"
    push string_heap, "add_method"
    push string_heap, "add_multi_method"
    push string_heap, "add_attribute"
    push string_heap, "compose"
    push string_heap, "name"
    push string_heap, "NQPAttribute"
    push string_heap, "new"
    push string_heap, "BUILD"
    push string_heap, "name"
    push string_heap, "type"
    push string_heap, "has_accessor"
    push string_heap, "build_closure"
    push string_heap, "box_target"
    push string_heap, "compose"
    push string_heap, "has_mutator"
    push string_heap, "NQPModuleHOW"
    push string_heap, "archetypes"
    push string_heap, "new"
    push string_heap, "BUILD"
    push string_heap, "new_type"
    push string_heap, "add_method"
    push string_heap, "add_multi_method"
    push string_heap, "add_attribute"
    push string_heap, "compose"
    push string_heap, "name"
    push string_heap, "EXPORTHOW"
    push string_heap, "$!nominal"
    push string_heap, "$!nominalizable"
    push string_heap, "$!inheritable"
    push string_heap, "$!inheritalizable"
    push string_heap, "$!composable"
    push string_heap, "$!composalizable"
    push string_heap, "$!generic"
    push string_heap, "$!parametric"
    push string_heap, "$!name"
    push string_heap, "$!instance_of"
    push string_heap, "%!attributes"
    push string_heap, "%!methods"
    push string_heap, "@!multi_methods_to_incorporate"
    push string_heap, "@!collisions"
    push string_heap, "@!roles"
    push string_heap, "@!role_typecheck_list"
    push string_heap, "$!composed"
    push string_heap, "$!name"
    push string_heap, "%!attributes"
    push string_heap, "%!methods"
    push string_heap, "@!multi_methods_to_incorporate"
    push string_heap, "@!roles"
    push string_heap, "$!composed"
    push string_heap, "$!body_block"
    push string_heap, "$!name"
    push string_heap, "%!attributes"
    push string_heap, "%!methods"
    push string_heap, "@!method_order"
    push string_heap, "@!multi_methods_to_incorporate"
    push string_heap, "@!parents"
    push string_heap, "@!roles"
    push string_heap, "$!default_parent"
    push string_heap, "@!vtable"
    push string_heap, "%!method-vtable-slots"
    push string_heap, "$!composed"
    push string_heap, "@!mro"
    push string_heap, "@!done"
    push string_heap, "%!parrot_vtable_mapping"
    push string_heap, "%!parrot_vtable_handler_mapping"
    push string_heap, "$!trace"
    push string_heap, "$!trace_depth"
    push string_heap, "$!name"
    push string_heap, "$!composed"
    push string_heap, "$!name"
    push string_heap, "$!type"
    push string_heap, "$!has_type"
    push string_heap, "$!box_target"
    push string_heap, "$!name"
    push string_heap, "$!composed"
    .const 'Sub' $P2176 = "196_1339198188.86" 
    capture_lex $P2176
    $P113 = $P2176()
    nqp_deserialize_sc $S100, cur_sc, string_heap, $P113
    .const 'LexInfo' $P2290 = "123_1339198188.86" 
    nqp_get_sc_object $P114, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 0
    $P2290."set_static_lexpad_value"("GLOBALish", $P114)
    .const 'LexInfo' $P2291 = "123_1339198188.86" 
    $P2291."finish_static_lexpad"()
    .const 'LexInfo' $P2292 = "123_1339198188.86" 
    nqp_get_sc_object $P114, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 0
    $P2292."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'LexInfo' $P2293 = "123_1339198188.86" 
    $P2293."finish_static_lexpad"()
    .const 'LexInfo' $P2294 = "123_1339198188.86" 
    nqp_get_sc_object $P114, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 1
    $P2294."set_static_lexpad_value"("Archetypes", $P114)
    .const 'LexInfo' $P2295 = "123_1339198188.86" 
    $P2295."finish_static_lexpad"()
    .const 'LexInfo' $P2296 = "124_1339198188.86" 
    nqp_get_sc_object $P114, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 1
    $P2296."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'LexInfo' $P2297 = "124_1339198188.86" 
    $P2297."finish_static_lexpad"()
    .const 'LexInfo' $P2298 = "124_1339198188.86" 
    nqp_get_sc_object $P114, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 1
    $P2298."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'LexInfo' $P2299 = "124_1339198188.86" 
    $P2299."finish_static_lexpad"()
    .const 'LexInfo' $P2300 = "123_1339198188.86" 
    nqp_get_sc_object $P114, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 2
    $P2300."set_static_lexpad_value"("RoleToRoleApplier", $P114)
    .const 'LexInfo' $P2301 = "123_1339198188.86" 
    $P2301."finish_static_lexpad"()
    .const 'LexInfo' $P2302 = "125_1339198188.86" 
    nqp_get_sc_object $P114, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 2
    $P2302."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'LexInfo' $P2303 = "125_1339198188.86" 
    $P2303."finish_static_lexpad"()
    .const 'LexInfo' $P2304 = "125_1339198188.86" 
    nqp_get_sc_object $P114, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 2
    $P2304."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'LexInfo' $P2305 = "125_1339198188.86" 
    $P2305."finish_static_lexpad"()
    .const 'LexInfo' $P2306 = "123_1339198188.86" 
    nqp_get_sc_object $P114, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 3
    $P2306."set_static_lexpad_value"("NQPConcreteRoleHOW", $P114)
    .const 'LexInfo' $P2307 = "123_1339198188.86" 
    $P2307."finish_static_lexpad"()
    .const 'LexInfo' $P2308 = "134_1339198188.86" 
    nqp_get_sc_object $P114, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 3
    $P2308."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'LexInfo' $P2309 = "134_1339198188.86" 
    $P2309."finish_static_lexpad"()
    .const 'LexInfo' $P2310 = "134_1339198188.86" 
    nqp_get_sc_object $P114, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 3
    $P2310."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'LexInfo' $P2311 = "134_1339198188.86" 
    $P2311."finish_static_lexpad"()
    .const 'LexInfo' $P2312 = "123_1339198188.86" 
    nqp_get_sc_object $P114, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 4
    $P2312."set_static_lexpad_value"("RoleToClassApplier", $P114)
    .const 'LexInfo' $P2313 = "123_1339198188.86" 
    $P2313."finish_static_lexpad"()
    .const 'LexInfo' $P2314 = "138_1339198188.86" 
    nqp_get_sc_object $P114, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 4
    $P2314."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'LexInfo' $P2315 = "138_1339198188.86" 
    $P2315."finish_static_lexpad"()
    .const 'LexInfo' $P2316 = "138_1339198188.86" 
    nqp_get_sc_object $P114, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 4
    $P2316."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'LexInfo' $P2317 = "138_1339198188.86" 
    $P2317."finish_static_lexpad"()
    .const 'LexInfo' $P2318 = "123_1339198188.86" 
    nqp_get_sc_object $P114, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 5
    $P2318."set_static_lexpad_value"("NQPParametricRoleHOW", $P114)
    .const 'LexInfo' $P2319 = "123_1339198188.86" 
    $P2319."finish_static_lexpad"()
    .const 'LexInfo' $P2320 = "146_1339198188.86" 
    nqp_get_sc_object $P114, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 5
    $P2320."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'LexInfo' $P2321 = "146_1339198188.86" 
    $P2321."finish_static_lexpad"()
    .const 'LexInfo' $P2322 = "146_1339198188.86" 
    nqp_get_sc_object $P114, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 5
    $P2322."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'LexInfo' $P2323 = "146_1339198188.86" 
    $P2323."finish_static_lexpad"()
    .const 'LexInfo' $P2324 = "123_1339198188.86" 
    nqp_get_sc_object $P114, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    $P2324."set_static_lexpad_value"("NQPClassHOW", $P114)
    .const 'LexInfo' $P2325 = "123_1339198188.86" 
    $P2325."finish_static_lexpad"()
    .const 'LexInfo' $P2326 = "153_1339198188.86" 
    nqp_get_sc_object $P114, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    $P2326."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'LexInfo' $P2327 = "153_1339198188.86" 
    $P2327."finish_static_lexpad"()
    .const 'LexInfo' $P2328 = "153_1339198188.86" 
    nqp_get_sc_object $P114, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    $P2328."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'LexInfo' $P2329 = "153_1339198188.86" 
    $P2329."finish_static_lexpad"()
    .const 'LexInfo' $P2330 = "123_1339198188.86" 
    nqp_get_sc_object $P114, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 7
    $P2330."set_static_lexpad_value"("NQPNativeHOW", $P114)
    .const 'LexInfo' $P2331 = "123_1339198188.86" 
    $P2331."finish_static_lexpad"()
    .const 'LexInfo' $P2332 = "189_1339198188.86" 
    nqp_get_sc_object $P114, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 7
    $P2332."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'LexInfo' $P2333 = "189_1339198188.86" 
    $P2333."finish_static_lexpad"()
    .const 'LexInfo' $P2334 = "189_1339198188.86" 
    nqp_get_sc_object $P114, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 7
    $P2334."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'LexInfo' $P2335 = "189_1339198188.86" 
    $P2335."finish_static_lexpad"()
    .const 'LexInfo' $P2336 = "123_1339198188.86" 
    nqp_get_sc_object $P114, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 8
    $P2336."set_static_lexpad_value"("NQPAttribute", $P114)
    .const 'LexInfo' $P2337 = "123_1339198188.86" 
    $P2337."finish_static_lexpad"()
    .const 'LexInfo' $P2338 = "190_1339198188.86" 
    nqp_get_sc_object $P114, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 8
    $P2338."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'LexInfo' $P2339 = "190_1339198188.86" 
    $P2339."finish_static_lexpad"()
    .const 'LexInfo' $P2340 = "190_1339198188.86" 
    nqp_get_sc_object $P114, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 8
    $P2340."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'LexInfo' $P2341 = "190_1339198188.86" 
    $P2341."finish_static_lexpad"()
    .const 'LexInfo' $P2342 = "123_1339198188.86" 
    nqp_get_sc_object $P114, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 9
    $P2342."set_static_lexpad_value"("NQPModuleHOW", $P114)
    .const 'LexInfo' $P2343 = "123_1339198188.86" 
    $P2343."finish_static_lexpad"()
    .const 'LexInfo' $P2344 = "193_1339198188.86" 
    nqp_get_sc_object $P114, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 9
    $P2344."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'LexInfo' $P2345 = "193_1339198188.86" 
    $P2345."finish_static_lexpad"()
    .const 'LexInfo' $P2346 = "193_1339198188.86" 
    nqp_get_sc_object $P114, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 9
    $P2346."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'LexInfo' $P2347 = "193_1339198188.86" 
    $P2347."finish_static_lexpad"()
    .const 'LexInfo' $P2348 = "123_1339198188.86" 
    nqp_get_sc_object $P114, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 10
    $P2348."set_static_lexpad_value"("EXPORTHOW", $P114)
    .const 'LexInfo' $P2349 = "123_1339198188.86" 
    $P2349."finish_static_lexpad"()
    .const 'LexInfo' $P2350 = "194_1339198188.86" 
    nqp_get_sc_object $P114, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 10
    $P2350."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'LexInfo' $P2351 = "194_1339198188.86" 
    $P2351."finish_static_lexpad"()
    .const 'LexInfo' $P2352 = "194_1339198188.86" 
    nqp_get_sc_object $P114, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 10
    $P2352."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'LexInfo' $P2353 = "194_1339198188.86" 
    $P2353."finish_static_lexpad"()
    nqp_get_sc_object $P114, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 0
    set_hll_global "GLOBAL", $P114
.end


.HLL "nqp"

.namespace []
.sub "_block2175"  :anon :subid("196_1339198188.86") :outer("123_1339198188.86")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 0
    .const 'Sub' $P2177 = "10_1339198188.86" 
    .const 'Sub' $P2178 = "11_1339198188.86" 
    .const 'Sub' $P2179 = "12_1339198188.86" 
    .const 'Sub' $P2180 = "13_1339198188.86" 
    .const 'Sub' $P2181 = "14_1339198188.86" 
    .const 'Sub' $P2182 = "15_1339198188.86" 
    .const 'Sub' $P2183 = "16_1339198188.86" 
    .const 'Sub' $P2184 = "17_1339198188.86" 
    .const 'Sub' $P2185 = "18_1339198188.86" 
    .const 'Sub' $P2186 = "19_1339198188.86" 
    .const 'Sub' $P2187 = "20_1339198188.86" 
    .const 'Sub' $P2188 = "21_1339198188.86" 
    .const 'Sub' $P2189 = "22_1339198188.86" 
    .const 'Sub' $P2190 = "23_1339198188.86" 
    .const 'Sub' $P2191 = "24_1339198188.86" 
    .const 'Sub' $P2192 = "25_1339198188.86" 
    .const 'Sub' $P2193 = "26_1339198188.86" 
    .const 'Sub' $P2194 = "27_1339198188.86" 
    .const 'Sub' $P2195 = "28_1339198188.86" 
    .const 'Sub' $P2196 = "29_1339198188.86" 
    .const 'Sub' $P2197 = "30_1339198188.86" 
    .const 'Sub' $P2198 = "31_1339198188.86" 
    .const 'Sub' $P2199 = "32_1339198188.86" 
    .const 'Sub' $P2200 = "33_1339198188.86" 
    .const 'Sub' $P2201 = "34_1339198188.86" 
    .const 'Sub' $P2202 = "35_1339198188.86" 
    .const 'Sub' $P2203 = "36_1339198188.86" 
    .const 'Sub' $P2204 = "37_1339198188.86" 
    .const 'Sub' $P2205 = "38_1339198188.86" 
    .const 'Sub' $P2206 = "39_1339198188.86" 
    .const 'Sub' $P2207 = "40_1339198188.86" 
    .const 'Sub' $P2208 = "41_1339198188.86" 
    .const 'Sub' $P2209 = "42_1339198188.86" 
    .const 'Sub' $P2210 = "43_1339198188.86" 
    .const 'Sub' $P2211 = "44_1339198188.86" 
    .const 'Sub' $P2212 = "45_1339198188.86" 
    .const 'Sub' $P2213 = "46_1339198188.86" 
    .const 'Sub' $P2214 = "47_1339198188.86" 
    .const 'Sub' $P2215 = "48_1339198188.86" 
    .const 'Sub' $P2216 = "49_1339198188.86" 
    .const 'Sub' $P2217 = "50_1339198188.86" 
    .const 'Sub' $P2218 = "51_1339198188.86" 
    .const 'Sub' $P2219 = "52_1339198188.86" 
    .const 'Sub' $P2220 = "53_1339198188.86" 
    .const 'Sub' $P2221 = "54_1339198188.86" 
    .const 'Sub' $P2222 = "55_1339198188.86" 
    .const 'Sub' $P2223 = "56_1339198188.86" 
    .const 'Sub' $P2224 = "57_1339198188.86" 
    .const 'Sub' $P2225 = "58_1339198188.86" 
    .const 'Sub' $P2226 = "59_1339198188.86" 
    .const 'Sub' $P2227 = "60_1339198188.86" 
    .const 'Sub' $P2228 = "61_1339198188.86" 
    .const 'Sub' $P2229 = "62_1339198188.86" 
    .const 'Sub' $P2230 = "63_1339198188.86" 
    .const 'Sub' $P2231 = "64_1339198188.86" 
    .const 'Sub' $P2232 = "65_1339198188.86" 
    .const 'Sub' $P2233 = "66_1339198188.86" 
    .const 'Sub' $P2234 = "67_1339198188.86" 
    .const 'Sub' $P2235 = "68_1339198188.86" 
    .const 'Sub' $P2236 = "69_1339198188.86" 
    .const 'Sub' $P2237 = "70_1339198188.86" 
    .const 'Sub' $P2238 = "71_1339198188.86" 
    .const 'Sub' $P2239 = "72_1339198188.86" 
    .const 'Sub' $P2240 = "73_1339198188.86" 
    .const 'Sub' $P2241 = "74_1339198188.86" 
    .const 'Sub' $P2242 = "75_1339198188.86" 
    .const 'Sub' $P2243 = "76_1339198188.86" 
    .const 'Sub' $P2244 = "77_1339198188.86" 
    .const 'Sub' $P2245 = "78_1339198188.86" 
    .const 'Sub' $P2246 = "79_1339198188.86" 
    .const 'Sub' $P2247 = "80_1339198188.86" 
    .const 'Sub' $P2248 = "81_1339198188.86" 
    .const 'Sub' $P2249 = "82_1339198188.86" 
    .const 'Sub' $P2250 = "83_1339198188.86" 
    .const 'Sub' $P2251 = "84_1339198188.86" 
    .const 'Sub' $P2252 = "85_1339198188.86" 
    .const 'Sub' $P2253 = "86_1339198188.86" 
    .const 'Sub' $P2254 = "87_1339198188.86" 
    .const 'Sub' $P2255 = "88_1339198188.86" 
    .const 'Sub' $P2256 = "89_1339198188.86" 
    .const 'Sub' $P2257 = "90_1339198188.86" 
    .const 'Sub' $P2258 = "91_1339198188.86" 
    .const 'Sub' $P2259 = "92_1339198188.86" 
    .const 'Sub' $P2260 = "93_1339198188.86" 
    .const 'Sub' $P2261 = "94_1339198188.86" 
    .const 'Sub' $P2262 = "95_1339198188.86" 
    .const 'Sub' $P2263 = "96_1339198188.86" 
    .const 'Sub' $P2264 = "97_1339198188.86" 
    .const 'Sub' $P2265 = "98_1339198188.86" 
    .const 'Sub' $P2266 = "99_1339198188.86" 
    .const 'Sub' $P2267 = "100_1339198188.86" 
    .const 'Sub' $P2268 = "101_1339198188.86" 
    .const 'Sub' $P2269 = "102_1339198188.86" 
    .const 'Sub' $P2270 = "103_1339198188.86" 
    .const 'Sub' $P2271 = "104_1339198188.86" 
    .const 'Sub' $P2272 = "105_1339198188.86" 
    .const 'Sub' $P2273 = "106_1339198188.86" 
    .const 'Sub' $P2274 = "107_1339198188.86" 
    .const 'Sub' $P2275 = "108_1339198188.86" 
    .const 'Sub' $P2276 = "109_1339198188.86" 
    .const 'Sub' $P2277 = "110_1339198188.86" 
    .const 'Sub' $P2278 = "111_1339198188.86" 
    .const 'Sub' $P2279 = "112_1339198188.86" 
    .const 'Sub' $P2280 = "113_1339198188.86" 
    .const 'Sub' $P2281 = "114_1339198188.86" 
    .const 'Sub' $P2282 = "115_1339198188.86" 
    .const 'Sub' $P2283 = "116_1339198188.86" 
    .const 'Sub' $P2284 = "117_1339198188.86" 
    .const 'Sub' $P2285 = "118_1339198188.86" 
    .const 'Sub' $P2286 = "119_1339198188.86" 
    .const 'Sub' $P2287 = "120_1339198188.86" 
    .const 'Sub' $P2288 = "121_1339198188.86" 
    .const 'Sub' $P2289 = "122_1339198188.86" 
    new $P112, "ResizablePMCArray"
    push $P112, $P2177
    push $P112, $P2178
    push $P112, $P2179
    push $P112, $P2180
    push $P112, $P2181
    push $P112, $P2182
    push $P112, $P2183
    push $P112, $P2184
    push $P112, $P2185
    push $P112, $P2186
    push $P112, $P2187
    push $P112, $P2188
    push $P112, $P2189
    push $P112, $P2190
    push $P112, $P2191
    push $P112, $P2192
    push $P112, $P2193
    push $P112, $P2194
    push $P112, $P2195
    push $P112, $P2196
    push $P112, $P2197
    push $P112, $P2198
    push $P112, $P2199
    push $P112, $P2200
    push $P112, $P2201
    push $P112, $P2202
    push $P112, $P2203
    push $P112, $P2204
    push $P112, $P2205
    push $P112, $P2206
    push $P112, $P2207
    push $P112, $P2208
    push $P112, $P2209
    push $P112, $P2210
    push $P112, $P2211
    push $P112, $P2212
    push $P112, $P2213
    push $P112, $P2214
    push $P112, $P2215
    push $P112, $P2216
    push $P112, $P2217
    push $P112, $P2218
    push $P112, $P2219
    push $P112, $P2220
    push $P112, $P2221
    push $P112, $P2222
    push $P112, $P2223
    push $P112, $P2224
    push $P112, $P2225
    push $P112, $P2226
    push $P112, $P2227
    push $P112, $P2228
    push $P112, $P2229
    push $P112, $P2230
    push $P112, $P2231
    push $P112, $P2232
    push $P112, $P2233
    push $P112, $P2234
    push $P112, $P2235
    push $P112, $P2236
    push $P112, $P2237
    push $P112, $P2238
    push $P112, $P2239
    push $P112, $P2240
    push $P112, $P2241
    push $P112, $P2242
    push $P112, $P2243
    push $P112, $P2244
    push $P112, $P2245
    push $P112, $P2246
    push $P112, $P2247
    push $P112, $P2248
    push $P112, $P2249
    push $P112, $P2250
    push $P112, $P2251
    push $P112, $P2252
    push $P112, $P2253
    push $P112, $P2254
    push $P112, $P2255
    push $P112, $P2256
    push $P112, $P2257
    push $P112, $P2258
    push $P112, $P2259
    push $P112, $P2260
    push $P112, $P2261
    push $P112, $P2262
    push $P112, $P2263
    push $P112, $P2264
    push $P112, $P2265
    push $P112, $P2266
    push $P112, $P2267
    push $P112, $P2268
    push $P112, $P2269
    push $P112, $P2270
    push $P112, $P2271
    push $P112, $P2272
    push $P112, $P2273
    push $P112, $P2274
    push $P112, $P2275
    push $P112, $P2276
    push $P112, $P2277
    push $P112, $P2278
    push $P112, $P2279
    push $P112, $P2280
    push $P112, $P2281
    push $P112, $P2282
    push $P112, $P2283
    push $P112, $P2284
    push $P112, $P2285
    push $P112, $P2286
    push $P112, $P2287
    push $P112, $P2288
    push $P112, $P2289
    .return ($P112)
.end


.HLL "nqp"

.namespace []
.sub "_block1015"  :anon :subid("124_1339198188.86") :outer("123_1339198188.86")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 9
    .const 'Sub' $P1046 = "19_1339198188.86" 
    capture_lex $P1046
    .const 'Sub' $P1044 = "18_1339198188.86" 
    capture_lex $P1044
    .const 'Sub' $P1042 = "17_1339198188.86" 
    capture_lex $P1042
    .const 'Sub' $P1040 = "16_1339198188.86" 
    capture_lex $P1040
    .const 'Sub' $P1038 = "15_1339198188.86" 
    capture_lex $P1038
    .const 'Sub' $P1036 = "14_1339198188.86" 
    capture_lex $P1036
    .const 'Sub' $P1034 = "13_1339198188.86" 
    capture_lex $P1034
    .const 'Sub' $P1032 = "12_1339198188.86" 
    capture_lex $P1032
    .const 'Sub' $P1026 = "11_1339198188.86" 
    capture_lex $P1026
    .const 'Sub' $P1019 = "10_1339198188.86" 
    capture_lex $P1019
    .lex "$?PACKAGE", $P1017
    .lex "$?CLASS", $P1018
.annotate 'line', 68
    .const 'Sub' $P1046 = "19_1339198188.86" 
    newclosure $P1048, $P1046
.annotate 'line', 9
    .return ($P1048)
.end


.HLL "nqp"

.namespace []
.sub "new" :anon :subid("10_1339198188.86") :outer("124_1339198188.86")
    .param pmc param_1020
    .param pmc param_1021 :optional :named("nominal")
    .param int has_param_1021 :opt_flag
    .param pmc param_1022 :optional :named("inheritable")
    .param int has_param_1022 :opt_flag
    .param pmc param_1023 :optional :named("composable")
    .param int has_param_1023 :opt_flag
    .param pmc param_1024 :optional :named("parametric")
    .param int has_param_1024 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 47
    .lex "self", param_1020
    if has_param_1021, optparam_198
    new $P100, "Undef"
    set param_1021, $P100
  optparam_198:
    .lex "$nominal", param_1021
    if has_param_1022, optparam_199
    new $P101, "Undef"
    set param_1022, $P101
  optparam_199:
    .lex "$inheritable", param_1022
    if has_param_1023, optparam_200
    new $P102, "Undef"
    set param_1023, $P102
  optparam_200:
    .lex "$composable", param_1023
    if has_param_1024, optparam_201
    new $P103, "Undef"
    set param_1024, $P103
  optparam_201:
    .lex "$parametric", param_1024
.annotate 'line', 48
    new $P104, "Undef"
    set $P1025, $P104
    .lex "$arch", $P1025
    set $P105, param_1020
    nqp_decontainerize $P106, $P105
    repr_instance_of $P107, $P106
    set $P1025, $P107
.annotate 'line', 49
    set $P105, $P1025
    unless_null $P105, vivify_202
    new $P105, "Undef"
  vivify_202:
    set $P106, param_1021
    unless_null $P106, vivify_203
    new $P106, "Undef"
  vivify_203:
    set $P107, param_1022
    unless_null $P107, vivify_204
    new $P107, "Undef"
  vivify_204:
    set $P108, param_1023
    unless_null $P108, vivify_205
    new $P108, "Undef"
  vivify_205:
    set $P109, param_1024
    unless_null $P109, vivify_206
    new $P109, "Undef"
  vivify_206:
    $P105."BUILD"($P106 :named("nominal"), $P107 :named("inheritable"), $P108 :named("composable"), $P109 :named("parametric"))
.annotate 'line', 47
    set $P105, $P1025
    unless_null $P105, vivify_207
    new $P105, "Undef"
  vivify_207:
    .return ($P105)
.end


.HLL "nqp"

.namespace []
.sub "BUILD" :anon :subid("11_1339198188.86") :outer("124_1339198188.86")
    .param pmc param_1027
    .param pmc param_1028 :optional :named("nominal")
    .param int has_param_1028 :opt_flag
    .param pmc param_1029 :optional :named("inheritable")
    .param int has_param_1029 :opt_flag
    .param pmc param_1030 :optional :named("composable")
    .param int has_param_1030 :opt_flag
    .param pmc param_1031 :optional :named("parametric")
    .param int has_param_1031 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 54
    .lex "self", param_1027
    if has_param_1028, optparam_208
    new $P100, "Undef"
    set param_1028, $P100
  optparam_208:
    .lex "$nominal", param_1028
    if has_param_1029, optparam_209
    new $P101, "Undef"
    set param_1029, $P101
  optparam_209:
    .lex "$inheritable", param_1029
    if has_param_1030, optparam_210
    new $P102, "Undef"
    set param_1030, $P102
  optparam_210:
    .lex "$composable", param_1030
    if has_param_1031, optparam_211
    new $P103, "Undef"
    set param_1031, $P103
  optparam_211:
    .lex "$parametric", param_1031
.annotate 'line', 55
    set $P104, param_1028
    unless_null $P104, vivify_212
    new $P104, "Undef"
  vivify_212:
    set $P105, param_1027
    nqp_decontainerize $P106, $P105
    nqp_get_sc_object $P107, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 1
    repr_bind_attr_obj $P106, $P107, "$!nominal", 0, $P104
.annotate 'line', 56
    set $P104, param_1029
    unless_null $P104, vivify_213
    new $P104, "Undef"
  vivify_213:
    set $P105, param_1027
    nqp_decontainerize $P106, $P105
    nqp_get_sc_object $P107, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 1
    repr_bind_attr_obj $P106, $P107, "$!inheritable", 2, $P104
.annotate 'line', 57
    set $P104, param_1030
    unless_null $P104, vivify_214
    new $P104, "Undef"
  vivify_214:
    set $P105, param_1027
    nqp_decontainerize $P106, $P105
    nqp_get_sc_object $P107, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 1
    repr_bind_attr_obj $P106, $P107, "$!composable", 4, $P104
.annotate 'line', 58
    set $P104, param_1031
    unless_null $P104, vivify_215
    new $P104, "Undef"
  vivify_215:
    set $P105, param_1027
    nqp_decontainerize $P106, $P105
    nqp_get_sc_object $P107, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 1
    repr_bind_attr_obj $P106, $P107, "$!parametric", 7, $P104
.annotate 'line', 54
    .return ($P104)
.end


.HLL "nqp"

.namespace []
.sub "nominal" :anon :subid("12_1339198188.86") :outer("124_1339198188.86")
    .param pmc param_1033
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 61
    .lex "self", param_1033
    set $P100, param_1033
    nqp_decontainerize $P101, $P100
    nqp_get_sc_object $P102, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 1
    repr_get_attr_obj $P103, $P101, $P102, "$!nominal", 0
    unless_null $P103, vivify_216
    new $P103, "Undef"
  vivify_216:
    .return ($P103)
.end


.HLL "nqp"

.namespace []
.sub "nominalizable" :anon :subid("13_1339198188.86") :outer("124_1339198188.86")
    .param pmc param_1035
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 62
    .lex "self", param_1035
    set $P100, param_1035
    nqp_decontainerize $P101, $P100
    nqp_get_sc_object $P102, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 1
    repr_get_attr_obj $P103, $P101, $P102, "$!nominalizable", 1
    unless_null $P103, vivify_217
    new $P103, "Undef"
  vivify_217:
    .return ($P103)
.end


.HLL "nqp"

.namespace []
.sub "inheritable" :anon :subid("14_1339198188.86") :outer("124_1339198188.86")
    .param pmc param_1037
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 63
    .lex "self", param_1037
    set $P100, param_1037
    nqp_decontainerize $P101, $P100
    nqp_get_sc_object $P102, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 1
    repr_get_attr_obj $P103, $P101, $P102, "$!inheritable", 2
    unless_null $P103, vivify_218
    new $P103, "Undef"
  vivify_218:
    .return ($P103)
.end


.HLL "nqp"

.namespace []
.sub "inheritalizable" :anon :subid("15_1339198188.86") :outer("124_1339198188.86")
    .param pmc param_1039
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 64
    .lex "self", param_1039
    set $P100, param_1039
    nqp_decontainerize $P101, $P100
    nqp_get_sc_object $P102, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 1
    repr_get_attr_obj $P103, $P101, $P102, "$!inheritalizable", 3
    unless_null $P103, vivify_219
    new $P103, "Undef"
  vivify_219:
    .return ($P103)
.end


.HLL "nqp"

.namespace []
.sub "composable" :anon :subid("16_1339198188.86") :outer("124_1339198188.86")
    .param pmc param_1041
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 65
    .lex "self", param_1041
    set $P100, param_1041
    nqp_decontainerize $P101, $P100
    nqp_get_sc_object $P102, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 1
    repr_get_attr_obj $P103, $P101, $P102, "$!composable", 4
    unless_null $P103, vivify_220
    new $P103, "Undef"
  vivify_220:
    .return ($P103)
.end


.HLL "nqp"

.namespace []
.sub "composalizable" :anon :subid("17_1339198188.86") :outer("124_1339198188.86")
    .param pmc param_1043
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 66
    .lex "self", param_1043
    set $P100, param_1043
    nqp_decontainerize $P101, $P100
    nqp_get_sc_object $P102, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 1
    repr_get_attr_obj $P103, $P101, $P102, "$!composalizable", 5
    unless_null $P103, vivify_221
    new $P103, "Undef"
  vivify_221:
    .return ($P103)
.end


.HLL "nqp"

.namespace []
.sub "generic" :anon :subid("18_1339198188.86") :outer("124_1339198188.86")
    .param pmc param_1045
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 67
    .lex "self", param_1045
    set $P100, param_1045
    nqp_decontainerize $P101, $P100
    nqp_get_sc_object $P102, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 1
    repr_get_attr_obj $P103, $P101, $P102, "$!generic", 6
    unless_null $P103, vivify_222
    new $P103, "Undef"
  vivify_222:
    .return ($P103)
.end


.HLL "nqp"

.namespace []
.sub "parametric" :anon :subid("19_1339198188.86") :outer("124_1339198188.86")
    .param pmc param_1047
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 68
    .lex "self", param_1047
    set $P100, param_1047
    nqp_decontainerize $P101, $P100
    nqp_get_sc_object $P102, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 1
    repr_get_attr_obj $P103, $P101, $P102, "$!parametric", 7
    unless_null $P103, vivify_223
    new $P103, "Undef"
  vivify_223:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block1049"  :subid("125_1339198188.86") :outer("123_1339198188.86")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 72
    .const 'Sub' $P1053 = "20_1339198188.86" 
    capture_lex $P1053
    .lex "$?PACKAGE", $P1051
    .lex "$?CLASS", $P1052
.annotate 'line', 73
    .const 'Sub' $P1053 = "20_1339198188.86" 
    newclosure $P1148, $P1053
.annotate 'line', 72
    .return ($P1148)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "apply" :anon :subid("20_1339198188.86") :outer("125_1339198188.86")
    .param pmc param_1056
    .param pmc param_1057
    .param pmc param_1058
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 73
    .const 'Sub' $P1123 = "131_1339198188.86" 
    capture_lex $P1123
    .const 'Sub' $P1108 = "130_1339198188.86" 
    capture_lex $P1108
    .const 'Sub' $P1102 = "129_1339198188.86" 
    capture_lex $P1102
    .const 'Sub' $P1070 = "126_1339198188.86" 
    capture_lex $P1070
    new $P1055, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P1055, control_1054
    push_eh $P1055
    .lex "self", param_1056
    .lex "$target", param_1057
    .lex "@roles", param_1058
.annotate 'line', 75
    $P1060 = root_new ['parrot';'Hash']
    set $P1059, $P1060
    .lex "%meth_info", $P1059
.annotate 'line', 101
    $P1062 = root_new ['parrot';'Hash']
    set $P1061, $P1062
    .lex "%target_meth_info", $P1061
.annotate 'line', 102
    $P1064 = root_new ['parrot';'ResizablePMCArray']
    set $P1063, $P1064
    .lex "@target_meths", $P1063
.annotate 'line', 127
    $P1066 = root_new ['parrot';'ResizablePMCArray']
    set $P1065, $P1066
    .lex "@all_roles", $P1065
.annotate 'line', 73
    set $P1067, $P1059
    unless_null $P1067, vivify_224
    $P1067 = root_new ['parrot';'Hash']
  vivify_224:
.annotate 'line', 76
    set $P1068, param_1058
    unless_null $P1068, vivify_225
    $P1068 = root_new ['parrot';'ResizablePMCArray']
  vivify_225:
    defined $I100, $P1068
    unless $I100, for_undef_226
    iter $P100, $P1068
    new $P103, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P103, loop1098_handler
    push_eh $P103
  loop1098_test:
    unless $P100, loop1098_done
    shift $P101, $P100
  loop1098_redo:
    .const 'Sub' $P1070 = "126_1339198188.86" 
    capture_lex $P1070
    $P1070($P101)
  loop1098_next:
    goto loop1098_test
  loop1098_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P104, exception, 'type'
    eq $P104, .CONTROL_LOOP_NEXT, loop1098_next
    eq $P104, .CONTROL_LOOP_REDO, loop1098_redo
  loop1098_done:
    pop_eh 
  for_undef_226:
.annotate 'line', 73
    set $P1099, $P1061
    unless_null $P1099, vivify_250
    $P1099 = root_new ['parrot';'Hash']
  vivify_250:
.annotate 'line', 102
    set $P100, param_1057
    unless_null $P100, vivify_251
    new $P100, "Undef"
  vivify_251:
    get_how $P101, $P100
    set $P102, param_1057
    unless_null $P102, vivify_252
    new $P102, "Undef"
  vivify_252:
    $P103 = $P101."methods"($P102)
    set $P1063, $P103
.annotate 'line', 103
    set $P1100, $P1063
    unless_null $P1100, vivify_253
    $P1100 = root_new ['parrot';'ResizablePMCArray']
  vivify_253:
    defined $I100, $P1100
    unless $I100, for_undef_254
    iter $P100, $P1100
    new $P103, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P103, loop1105_handler
    push_eh $P103
  loop1105_test:
    unless $P100, loop1105_done
    shift $P101, $P100
  loop1105_redo:
    .const 'Sub' $P1102 = "129_1339198188.86" 
    capture_lex $P1102
    $P1102($P101)
  loop1105_next:
    goto loop1105_test
  loop1105_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P104, exception, 'type'
    eq $P104, .CONTROL_LOOP_NEXT, loop1105_next
    eq $P104, .CONTROL_LOOP_REDO, loop1105_redo
  loop1105_done:
    pop_eh 
  for_undef_254:
.annotate 'line', 108
    set $P1106, $P1059
    unless_null $P1106, vivify_258
    $P1106 = root_new ['parrot';'Hash']
  vivify_258:
    defined $I100, $P1106
    unless $I100, for_undef_259
    iter $P100, $P1106
    new $P104, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P104, loop1119_handler
    push_eh $P104
  loop1119_test:
    unless $P100, loop1119_done
    shift $P101, $P100
  loop1119_redo:
    .const 'Sub' $P1108 = "130_1339198188.86" 
    capture_lex $P1108
    $P1108($P101)
  loop1119_next:
    goto loop1119_test
  loop1119_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P105, exception, 'type'
    eq $P105, .CONTROL_LOOP_NEXT, loop1119_next
    eq $P105, .CONTROL_LOOP_REDO, loop1119_redo
  loop1119_done:
    pop_eh 
  for_undef_259:
.annotate 'line', 73
    set $P1120, $P1065
    unless_null $P1120, vivify_276
    $P1120 = root_new ['parrot';'ResizablePMCArray']
  vivify_276:
.annotate 'line', 128
    set $P1121, param_1058
    unless_null $P1121, vivify_277
    $P1121 = root_new ['parrot';'ResizablePMCArray']
  vivify_277:
    defined $I100, $P1121
    unless $I100, for_undef_278
    iter $P100, $P1121
    new $P103, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P103, loop1146_handler
    push_eh $P103
  loop1146_test:
    unless $P100, loop1146_done
    shift $P101, $P100
  loop1146_redo:
    .const 'Sub' $P1123 = "131_1339198188.86" 
    capture_lex $P1123
    $P1123($P101)
  loop1146_next:
    goto loop1146_test
  loop1146_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P105, exception, 'type'
    eq $P105, .CONTROL_LOOP_NEXT, loop1146_next
    eq $P105, .CONTROL_LOOP_REDO, loop1146_redo
  loop1146_done:
    pop_eh 
  for_undef_278:
.annotate 'line', 157
    new $P100, "Exception"
    set $P100['type'], .CONTROL_RETURN
    set $P1147, $P1065
    unless_null $P1147, vivify_300
    $P1147 = root_new ['parrot';'ResizablePMCArray']
  vivify_300:
    setattribute $P100, 'payload', $P1147
    throw $P100
.annotate 'line', 73
    .return ()
  control_1054:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P100, exception, "payload"
    .return ($P100)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block1069"  :anon :subid("126_1339198188.86") :outer("20_1339198188.86")
    .param pmc param_1073
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 76
    .const 'Sub' $P1076 = "127_1339198188.86" 
    capture_lex $P1076
.annotate 'line', 77
    $P1072 = root_new ['parrot';'ResizablePMCArray']
    set $P1071, $P1072
    .lex "@methods", $P1071
    .lex "$_", param_1073
    find_lex $P102, "$_"
    unless_null $P102, vivify_227
    new $P102, "Undef"
  vivify_227:
    get_how $P103, $P102
    find_lex $P104, "$_"
    unless_null $P104, vivify_228
    new $P104, "Undef"
  vivify_228:
    $P105 = $P103."methods"($P104)
    set $P1071, $P105
.annotate 'line', 78
    set $P1074, $P1071
    unless_null $P1074, vivify_229
    $P1074 = root_new ['parrot';'ResizablePMCArray']
  vivify_229:
    defined $I101, $P1074
    unless $I101, for_undef_230
    iter $P102, $P1074
    new $P108, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P108, loop1097_handler
    push_eh $P108
  loop1097_test:
    unless $P102, loop1097_done
    shift $P103, $P102
  loop1097_redo:
    .const 'Sub' $P1076 = "127_1339198188.86" 
    capture_lex $P1076
    $P1076($P103)
  loop1097_next:
    goto loop1097_test
  loop1097_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P109, exception, 'type'
    eq $P109, .CONTROL_LOOP_NEXT, loop1097_next
    eq $P109, .CONTROL_LOOP_REDO, loop1097_redo
  loop1097_done:
    pop_eh 
  for_undef_230:
.annotate 'line', 76
    .return ($P102)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block1075"  :anon :subid("127_1339198188.86") :outer("126_1339198188.86")
    .param pmc param_1082
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 78
    .const 'Sub' $P1091 = "128_1339198188.86" 
    capture_lex $P1091
.annotate 'line', 79
    new $P104, "Undef"
    set $P1077, $P104
    .lex "$name", $P1077
.annotate 'line', 80
    new $P105, "Undef"
    set $P1078, $P105
    .lex "$meth", $P1078
.annotate 'line', 81
    $P1080 = root_new ['parrot';'ResizablePMCArray']
    set $P1079, $P1080
    .lex "@meth_list", $P1079
.annotate 'line', 88
    new $P106, "Undef"
    set $P1081, $P106
    .lex "$found", $P1081
    .lex "$_", param_1082
.annotate 'line', 79
    find_lex $P107, "$_"
    unless_null $P107, vivify_231
    new $P107, "Undef"
  vivify_231:
    set $S100, $P107
    new $P108, 'String'
    set $P108, $S100
    set $P1077, $P108
.annotate 'line', 80
    find_lex $P107, "$_"
    unless_null $P107, vivify_232
    new $P107, "Undef"
  vivify_232:
    set $P1078, $P107
.annotate 'line', 78
    set $P1083, $P1079
    unless_null $P1083, vivify_233
    $P1083 = root_new ['parrot';'ResizablePMCArray']
  vivify_233:
.annotate 'line', 82
    set $P107, $P1077
    unless_null $P107, vivify_234
    new $P107, "Undef"
  vivify_234:
    find_lex $P1085, "%meth_info"
    unless_null $P1085, vivify_235
    $P1085 = root_new ['parrot';'Hash']
  vivify_235:
    set $P108, $P1085[$P107]
    unless_null $P108, vivify_236
    new $P108, "Undef"
  vivify_236:
    defined $I102, $P108
    if $I102, if_1084
.annotate 'line', 86
    set $P1087, $P1079
    unless_null $P1087, vivify_237
    $P1087 = root_new ['parrot';'ResizablePMCArray']
  vivify_237:
    set $P109, $P1077
    unless_null $P109, vivify_238
    new $P109, "Undef"
  vivify_238:
    find_lex $P1088, "%meth_info"
    unless_null $P1088, vivify_239
    $P1088 = root_new ['parrot';'Hash']
    store_lex "%meth_info", $P1088
  vivify_239:
    set $P1088[$P109], $P1087
.annotate 'line', 85
    goto if_1084_end
  if_1084:
.annotate 'line', 83
    set $P109, $P1077
    unless_null $P109, vivify_240
    new $P109, "Undef"
  vivify_240:
    find_lex $P1086, "%meth_info"
    unless_null $P1086, vivify_241
    $P1086 = root_new ['parrot';'Hash']
  vivify_241:
    set $P110, $P1086[$P109]
    unless_null $P110, vivify_242
    new $P110, "Undef"
  vivify_242:
    set $P1079, $P110
  if_1084_end:
.annotate 'line', 88
    new $P107, "Float"
    assign $P107, 0
    set $P1081, $P107
.annotate 'line', 89
    set $P1089, $P1079
    unless_null $P1089, vivify_243
    $P1089 = root_new ['parrot';'ResizablePMCArray']
  vivify_243:
    defined $I102, $P1089
    unless $I102, for_undef_244
    iter $P107, $P1089
    new $P110, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P110, loop1094_handler
    push_eh $P110
  loop1094_test:
    unless $P107, loop1094_done
    shift $P108, $P107
  loop1094_redo:
    .const 'Sub' $P1091 = "128_1339198188.86" 
    capture_lex $P1091
    $P1091($P108)
  loop1094_next:
    goto loop1094_test
  loop1094_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P111, exception, 'type'
    eq $P111, .CONTROL_LOOP_NEXT, loop1094_next
    eq $P111, .CONTROL_LOOP_REDO, loop1094_redo
  loop1094_done:
    pop_eh 
  for_undef_244:
.annotate 'line', 94
    set $P108, $P1081
    unless_null $P108, vivify_247
    new $P108, "Undef"
  vivify_247:
    unless $P108, unless_1095
    set $P107, $P108
    goto unless_1095_end
  unless_1095:
.annotate 'line', 95
    set $P1096, $P1079
    unless_null $P1096, vivify_248
    $P1096 = root_new ['parrot';'ResizablePMCArray']
  vivify_248:
    set $P109, $P1078
    unless_null $P109, vivify_249
    new $P109, "Undef"
  vivify_249:
    $P110 = $P1096."push"($P109)
.annotate 'line', 94
    set $P107, $P110
  unless_1095_end:
.annotate 'line', 78
    .return ($P107)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block1090"  :anon :subid("128_1339198188.86") :outer("127_1339198188.86")
    .param pmc param_1092
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 89
    .lex "$_", param_1092
.annotate 'line', 90
    find_lex $P110, "$meth"
    unless_null $P110, vivify_245
    new $P110, "Undef"
  vivify_245:
    find_lex $P111, "$_"
    unless_null $P111, vivify_246
    new $P111, "Undef"
  vivify_246:
    issame $I103, $P110, $P111
    if $I103, if_1093
    new $P109, 'Integer'
    set $P109, $I103
    goto if_1093_end
  if_1093:
.annotate 'line', 91
    new $P112, "Float"
    assign $P112, 1
    store_lex "$found", $P112
.annotate 'line', 90
    set $P109, $P112
  if_1093_end:
.annotate 'line', 89
    .return ($P109)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block1101"  :anon :subid("129_1339198188.86") :outer("20_1339198188.86")
    .param pmc param_1103
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 103
    .lex "$_", param_1103
.annotate 'line', 104
    find_lex $P102, "$_"
    unless_null $P102, vivify_255
    new $P102, "Undef"
  vivify_255:
    find_lex $P103, "$_"
    unless_null $P103, vivify_256
    new $P103, "Undef"
  vivify_256:
    set $S100, $P103
    find_lex $P1104, "%target_meth_info"
    unless_null $P1104, vivify_257
    $P1104 = root_new ['parrot';'Hash']
    store_lex "%target_meth_info", $P1104
  vivify_257:
    set $P1104[$S100], $P102
.annotate 'line', 103
    .return ($P102)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block1107"  :anon :subid("130_1339198188.86") :outer("20_1339198188.86")
    .param pmc param_1112
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 109
    new $P102, "Undef"
    set $P1109, $P102
    .lex "$name", $P1109
.annotate 'line', 110
    $P1111 = root_new ['parrot';'ResizablePMCArray']
    set $P1110, $P1111
    .lex "@add_meths", $P1110
    .lex "$_", param_1112
.annotate 'line', 109
    find_lex $P103, "$_"
    unless_null $P103, vivify_260
    new $P103, "Undef"
  vivify_260:
    set $S100, $P103
    new $P104, 'String'
    set $P104, $S100
    set $P1109, $P104
.annotate 'line', 110
    set $P103, $P1109
    unless_null $P103, vivify_261
    new $P103, "Undef"
  vivify_261:
    find_lex $P1113, "%meth_info"
    unless_null $P1113, vivify_262
    $P1113 = root_new ['parrot';'Hash']
  vivify_262:
    set $P104, $P1113[$P103]
    unless_null $P104, vivify_263
    new $P104, "Undef"
  vivify_263:
    set $P1110, $P104
.annotate 'line', 114
    set $P104, $P1109
    unless_null $P104, vivify_264
    new $P104, "Undef"
  vivify_264:
    find_lex $P1115, "%target_meth_info"
    unless_null $P1115, vivify_265
    $P1115 = root_new ['parrot';'Hash']
  vivify_265:
    set $P105, $P1115[$P104]
    unless_null $P105, vivify_266
    new $P105, "Undef"
  vivify_266:
    defined $I101, $P105
    unless $I101, unless_1114
    new $P103, 'Integer'
    set $P103, $I101
    goto unless_1114_end
  unless_1114:
.annotate 'line', 116
    set $P1117, $P1110
    unless_null $P1117, vivify_267
    $P1117 = root_new ['parrot';'ResizablePMCArray']
  vivify_267:
    set $N100, $P1117
    set $N101, 1
    iseq $I102, $N100, $N101
    if $I102, if_1116
.annotate 'line', 121
    find_lex $P107, "$target"
    unless_null $P107, vivify_268
    new $P107, "Undef"
  vivify_268:
    get_how $P108, $P107
    find_lex $P109, "$target"
    unless_null $P109, vivify_269
    new $P109, "Undef"
  vivify_269:
    set $P110, $P1109
    unless_null $P110, vivify_270
    new $P110, "Undef"
  vivify_270:
    $P111 = $P108."add_collision"($P109, $P110)
.annotate 'line', 119
    set $P106, $P111
.annotate 'line', 116
    goto if_1116_end
  if_1116:
.annotate 'line', 117
    find_lex $P107, "$target"
    unless_null $P107, vivify_271
    new $P107, "Undef"
  vivify_271:
    get_how $P108, $P107
    find_lex $P109, "$target"
    unless_null $P109, vivify_272
    new $P109, "Undef"
  vivify_272:
    set $P110, $P1109
    unless_null $P110, vivify_273
    new $P110, "Undef"
  vivify_273:
    set $P1118, $P1110
    unless_null $P1118, vivify_274
    $P1118 = root_new ['parrot';'ResizablePMCArray']
  vivify_274:
    set $P111, $P1118[0]
    unless_null $P111, vivify_275
    new $P111, "Undef"
  vivify_275:
    $P112 = $P108."add_method"($P109, $P110, $P111)
.annotate 'line', 116
    set $P106, $P112
  if_1116_end:
.annotate 'line', 114
    set $P103, $P106
  unless_1114_end:
.annotate 'line', 108
    .return ($P103)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block1122"  :anon :subid("131_1339198188.86") :outer("20_1339198188.86")
    .param pmc param_1127
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 128
    .const 'Sub' $P1130 = "132_1339198188.86" 
    capture_lex $P1130
.annotate 'line', 129
    new $P102, "Undef"
    set $P1124, $P102
    .lex "$how", $P1124
.annotate 'line', 132
    $P1126 = root_new ['parrot';'ResizablePMCArray']
    set $P1125, $P1126
    .lex "@attributes", $P1125
    .lex "$_", param_1127
.annotate 'line', 129
    find_lex $P103, "$_"
    unless_null $P103, vivify_279
    new $P103, "Undef"
  vivify_279:
    get_how $P104, $P103
    set $P1124, $P104
.annotate 'line', 132
    set $P103, $P1124
    unless_null $P103, vivify_280
    new $P103, "Undef"
  vivify_280:
    find_lex $P104, "$_"
    unless_null $P104, vivify_281
    new $P104, "Undef"
  vivify_281:
    $P105 = $P103."attributes"($P104)
    set $P1125, $P105
.annotate 'line', 133
    set $P1128, $P1125
    unless_null $P1128, vivify_282
    $P1128 = root_new ['parrot';'ResizablePMCArray']
  vivify_282:
    defined $I101, $P1128
    unless $I101, for_undef_283
    iter $P103, $P1128
    new $P108, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P108, loop1144_handler
    push_eh $P108
  loop1144_test:
    unless $P103, loop1144_done
    shift $P104, $P103
  loop1144_redo:
    .const 'Sub' $P1130 = "132_1339198188.86" 
    capture_lex $P1130
    $P1130($P104)
  loop1144_next:
    goto loop1144_test
  loop1144_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P109, exception, 'type'
    eq $P109, .CONTROL_LOOP_NEXT, loop1144_next
    eq $P109, .CONTROL_LOOP_REDO, loop1144_redo
  loop1144_done:
    pop_eh 
  for_undef_283:
.annotate 'line', 154
    find_lex $P1145, "@all_roles"
    unless_null $P1145, vivify_298
    $P1145 = root_new ['parrot';'ResizablePMCArray']
  vivify_298:
    find_lex $P103, "$_"
    unless_null $P103, vivify_299
    new $P103, "Undef"
  vivify_299:
    $P104 = $P1145."push"($P103)
.annotate 'line', 128
    .return ($P104)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block1129"  :anon :subid("132_1339198188.86") :outer("131_1339198188.86")
    .param pmc param_1135
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 133
    .const 'Sub' $P1138 = "133_1339198188.86" 
    capture_lex $P1138
.annotate 'line', 134
    new $P105, "Undef"
    set $P1131, $P105
    .lex "$add_attr", $P1131
.annotate 'line', 135
    new $P106, "Undef"
    set $P1132, $P106
    .lex "$skip", $P1132
.annotate 'line', 136
    $P1134 = root_new ['parrot';'ResizablePMCArray']
    set $P1133, $P1134
    .lex "@cur_attrs", $P1133
    .lex "$_", param_1135
.annotate 'line', 134
    find_lex $P107, "$_"
    unless_null $P107, vivify_284
    new $P107, "Undef"
  vivify_284:
    set $P1131, $P107
.annotate 'line', 135
    new $P107, "Float"
    assign $P107, 0
    set $P1132, $P107
.annotate 'line', 136
    find_lex $P107, "$target"
    unless_null $P107, vivify_285
    new $P107, "Undef"
  vivify_285:
    get_how $P108, $P107
    find_lex $P109, "$target"
    unless_null $P109, vivify_286
    new $P109, "Undef"
  vivify_286:
    $P110 = $P108."attributes"($P109)
    set $P1133, $P110
.annotate 'line', 137
    set $P1136, $P1133
    unless_null $P1136, vivify_287
    $P1136 = root_new ['parrot';'ResizablePMCArray']
  vivify_287:
    defined $I102, $P1136
    unless $I102, for_undef_288
    iter $P107, $P1136
    new $P110, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P110, loop1142_handler
    push_eh $P110
  loop1142_test:
    unless $P107, loop1142_done
    shift $P108, $P107
  loop1142_redo:
    .const 'Sub' $P1138 = "133_1339198188.86" 
    capture_lex $P1138
    $P1138($P108)
  loop1142_next:
    goto loop1142_test
  loop1142_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P111, exception, 'type'
    eq $P111, .CONTROL_LOOP_NEXT, loop1142_next
    eq $P111, .CONTROL_LOOP_REDO, loop1142_redo
  loop1142_done:
    pop_eh 
  for_undef_288:
.annotate 'line', 147
    set $P108, $P1132
    unless_null $P108, vivify_294
    new $P108, "Undef"
  vivify_294:
    unless $P108, unless_1143
    set $P107, $P108
    goto unless_1143_end
  unless_1143:
.annotate 'line', 148
    find_lex $P109, "$target"
    unless_null $P109, vivify_295
    new $P109, "Undef"
  vivify_295:
    get_how $P110, $P109
    find_lex $P111, "$target"
    unless_null $P111, vivify_296
    new $P111, "Undef"
  vivify_296:
    set $P112, $P1131
    unless_null $P112, vivify_297
    new $P112, "Undef"
  vivify_297:
    $P113 = $P110."add_attribute"($P111, $P112)
.annotate 'line', 147
    set $P107, $P113
  unless_1143_end:
.annotate 'line', 133
    .return ($P107)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block1137"  :anon :subid("133_1339198188.86") :outer("132_1339198188.86")
    .param pmc param_1139
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 137
    .lex "$_", param_1139
.annotate 'line', 138
    find_lex $P110, "$_"
    unless_null $P110, vivify_289
    new $P110, "Undef"
  vivify_289:
    find_lex $P111, "$add_attr"
    unless_null $P111, vivify_290
    new $P111, "Undef"
  vivify_290:
    issame $I103, $P110, $P111
    if $I103, if_1140
.annotate 'line', 142
    find_lex $P114, "$_"
    unless_null $P114, vivify_291
    new $P114, "Undef"
  vivify_291:
    $S100 = $P114."name"()
    find_lex $P115, "$add_attr"
    unless_null $P115, vivify_292
    new $P115, "Undef"
  vivify_292:
    $S101 = $P115."name"()
    iseq $I104, $S100, $S101
    if $I104, if_1141
    new $P113, 'Integer'
    set $P113, $I104
    goto if_1141_end
  if_1141:
.annotate 'line', 143
    new $P116, "String"
    assign $P116, "Attribute '"
    find_lex $P117, "$_"
    unless_null $P117, vivify_293
    new $P117, "Undef"
  vivify_293:
    $S102 = $P117."name"()
    concat $P118, $P116, $S102
    concat $P119, $P118, "' conflicts in role composition"
    die $P119
  if_1141_end:
.annotate 'line', 141
    set $P109, $P113
.annotate 'line', 138
    goto if_1140_end
  if_1140:
.annotate 'line', 139
    new $P112, "Float"
    assign $P112, 1
    store_lex "$skip", $P112
.annotate 'line', 138
    set $P109, $P112
  if_1140_end:
.annotate 'line', 137
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1149"  :subid("134_1339198188.86") :outer("123_1339198188.86")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 164
    .const 'Sub' $P1277 = "39_1339198188.86" 
    capture_lex $P1277
    .const 'Sub' $P1273 = "38_1339198188.86" 
    capture_lex $P1273
    .const 'Sub' $P1269 = "37_1339198188.86" 
    capture_lex $P1269
    .const 'Sub' $P1255 = "36_1339198188.86" 
    capture_lex $P1255
    .const 'Sub' $P1252 = "35_1339198188.86" 
    capture_lex $P1252
    .const 'Sub' $P1248 = "34_1339198188.86" 
    capture_lex $P1248
    .const 'Sub' $P1244 = "33_1339198188.86" 
    capture_lex $P1244
    .const 'Sub' $P1230 = "32_1339198188.86" 
    capture_lex $P1230
    .const 'Sub' $P1215 = "31_1339198188.86" 
    capture_lex $P1215
    .const 'Sub' $P1209 = "30_1339198188.86" 
    capture_lex $P1209
    .const 'Sub' $P1203 = "29_1339198188.86" 
    capture_lex $P1203
    .const 'Sub' $P1199 = "28_1339198188.86" 
    capture_lex $P1199
    .const 'Sub' $P1191 = "27_1339198188.86" 
    capture_lex $P1191
    .const 'Sub' $P1178 = "26_1339198188.86" 
    capture_lex $P1178
    .const 'Sub' $P1170 = "25_1339198188.86" 
    capture_lex $P1170
    .const 'Sub' $P1165 = "24_1339198188.86" 
    capture_lex $P1165
    .const 'Sub' $P1161 = "23_1339198188.86" 
    capture_lex $P1161
    .const 'Sub' $P1156 = "22_1339198188.86" 
    capture_lex $P1156
    .const 'Sub' $P1154 = "21_1339198188.86" 
    capture_lex $P1154
.annotate 'line', 190
    new $P100, "Undef"
    set $P1151, $P100
    .lex "$archetypes", $P1151
    .lex "$?PACKAGE", $P1152
    .lex "$?CLASS", $P1153
    find_lex $P101, "Archetypes"
    $P102 = $P101."new"(1 :named("nominal"), 1 :named("composable"))
    set $P1151, $P102
.annotate 'line', 311
    .const 'Sub' $P1277 = "39_1339198188.86" 
    newclosure $P1280, $P1277
.annotate 'line', 164
    .return ($P1280)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "archetypes" :anon :subid("21_1339198188.86") :outer("134_1339198188.86")
    .param pmc param_1155
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 191
    .lex "self", param_1155
    find_lex $P101, "$archetypes"
    unless_null $P101, vivify_301
    new $P101, "Undef"
  vivify_301:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "new" :anon :subid("22_1339198188.86") :outer("134_1339198188.86")
    .param pmc param_1157
    .param pmc param_1158 :named("name")
    .param pmc param_1159 :named("instance_of")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 200
    .lex "self", param_1157
    .lex "$name", param_1158
    .lex "$instance_of", param_1159
.annotate 'line', 201
    new $P101, "Undef"
    set $P1160, $P101
    .lex "$obj", $P1160
    set $P102, param_1157
    nqp_decontainerize $P103, $P102
    repr_instance_of $P104, $P103
    set $P1160, $P104
.annotate 'line', 202
    set $P102, $P1160
    unless_null $P102, vivify_302
    new $P102, "Undef"
  vivify_302:
    set $P103, param_1158
    unless_null $P103, vivify_303
    new $P103, "Undef"
  vivify_303:
    set $P104, param_1159
    unless_null $P104, vivify_304
    new $P104, "Undef"
  vivify_304:
    $P102."BUILD"($P103 :named("name"), $P104 :named("instance_of"))
.annotate 'line', 200
    set $P102, $P1160
    unless_null $P102, vivify_305
    new $P102, "Undef"
  vivify_305:
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "BUILD" :anon :subid("23_1339198188.86") :outer("134_1339198188.86")
    .param pmc param_1162
    .param pmc param_1163 :named("name")
    .param pmc param_1164 :named("instance_of")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 206
    .lex "self", param_1162
    .lex "$name", param_1163
    .lex "$instance_of", param_1164
.annotate 'line', 207
    set $P101, param_1163
    unless_null $P101, vivify_306
    new $P101, "Undef"
  vivify_306:
    set $P102, param_1162
    nqp_decontainerize $P103, $P102
    nqp_get_sc_object $P104, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 3
    repr_bind_attr_obj $P103, $P104, "$!name", 0, $P101
.annotate 'line', 208
    set $P101, param_1164
    unless_null $P101, vivify_307
    new $P101, "Undef"
  vivify_307:
    set $P102, param_1162
    nqp_decontainerize $P103, $P102
    nqp_get_sc_object $P104, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 3
    repr_bind_attr_obj $P103, $P104, "$!instance_of", 1, $P101
.annotate 'line', 206
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "new_type" :anon :subid("24_1339198188.86") :outer("134_1339198188.86")
    .param pmc param_1166
    .param pmc param_1168 :named("instance_of")
    .param pmc param_1167 :optional :named("name")
    .param int has_param_1167 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 213
    .lex "self", param_1166
    if has_param_1167, optparam_308
    new $P101, "String"
    assign $P101, "<anon>"
    set param_1167, $P101
  optparam_308:
    .lex "$name", param_1167
    .lex "$instance_of", param_1168
.annotate 'line', 214
    new $P102, "Undef"
    set $P1169, $P102
    .lex "$metarole", $P1169
    set $P103, param_1166
    nqp_decontainerize $P104, $P103
    set $P105, param_1167
    unless_null $P105, vivify_309
    new $P105, "Undef"
  vivify_309:
    set $P106, param_1168
    unless_null $P106, vivify_310
    new $P106, "Undef"
  vivify_310:
    $P107 = $P104."new"($P105 :named("name"), $P106 :named("instance_of"))
    set $P1169, $P107
.annotate 'line', 215
    set $P103, $P1169
    unless_null $P103, vivify_311
    new $P103, "Undef"
  vivify_311:
    new $P104, "String"
    assign $P104, "Uninstantiable"
    set $S100, $P104
    repr_type_object_for $P105, $P103, $S100
.annotate 'line', 213
    .return ($P105)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_method" :anon :subid("25_1339198188.86") :outer("134_1339198188.86")
    .param pmc param_1171
    .param pmc param_1172
    .param pmc param_1173
    .param pmc param_1174
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 218
    .lex "self", param_1171
    .lex "$obj", param_1172
    .lex "$name", param_1173
    .lex "$code_obj", param_1174
.annotate 'line', 219
    set $P101, param_1173
    unless_null $P101, vivify_312
    new $P101, "Undef"
  vivify_312:
    set $P102, param_1171
    nqp_decontainerize $P103, $P102
    nqp_get_sc_object $P104, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 3
    repr_get_attr_obj $P1176, $P103, $P104, "%!methods", 3
    unless_null $P1176, vivify_313
    $P1176 = root_new ['parrot';'Hash']
  vivify_313:
    set $P105, $P1176[$P101]
    unless_null $P105, vivify_314
    new $P105, "Undef"
  vivify_314:
    unless $P105, if_1175_end
.annotate 'line', 220
    new $P106, "String"
    assign $P106, "This role already has a method named "
    set $P107, param_1173
    unless_null $P107, vivify_315
    new $P107, "Undef"
  vivify_315:
    concat $P108, $P106, $P107
    die $P108
  if_1175_end:
.annotate 'line', 222
    set $P101, param_1174
    unless_null $P101, vivify_316
    new $P101, "Undef"
  vivify_316:
    set $P102, param_1173
    unless_null $P102, vivify_317
    new $P102, "Undef"
  vivify_317:
    set $P103, param_1171
    nqp_decontainerize $P104, $P103
    nqp_get_sc_object $P105, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 3
    repr_get_attr_obj $P1177, $P104, $P105, "%!methods", 3
    unless_null $P1177, vivify_318
    $P1177 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P104, $P105, "%!methods", 3, $P1177
  vivify_318:
    set $P1177[$P102], $P101
.annotate 'line', 218
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_multi_method" :anon :subid("26_1339198188.86") :outer("134_1339198188.86")
    .param pmc param_1179
    .param pmc param_1180
    .param pmc param_1181
    .param pmc param_1182
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 225
    .lex "self", param_1179
    .lex "$obj", param_1180
    .lex "$name", param_1181
    .lex "$code_obj", param_1182
.annotate 'line', 226
    $P1184 = root_new ['parrot';'Hash']
    set $P1183, $P1184
    .lex "%todo", $P1183
.annotate 'line', 225
    set $P1185, $P1183
    unless_null $P1185, vivify_319
    $P1185 = root_new ['parrot';'Hash']
  vivify_319:
.annotate 'line', 227
    set $P101, param_1181
    unless_null $P101, vivify_320
    new $P101, "Undef"
  vivify_320:
    set $P1186, $P1183
    unless_null $P1186, vivify_321
    $P1186 = root_new ['parrot';'Hash']
    set $P1183, $P1186
  vivify_321:
    set $P1186["name"], $P101
.annotate 'line', 228
    set $P101, param_1182
    unless_null $P101, vivify_322
    new $P101, "Undef"
  vivify_322:
    set $P1187, $P1183
    unless_null $P1187, vivify_323
    $P1187 = root_new ['parrot';'Hash']
    set $P1183, $P1187
  vivify_323:
    set $P1187["code"], $P101
.annotate 'line', 229
    set $P1188, $P1183
    unless_null $P1188, vivify_324
    $P1188 = root_new ['parrot';'Hash']
  vivify_324:
    set $P101, param_1179
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 3
    repr_get_attr_obj $P1189, $P102, $P103, "@!multi_methods_to_incorporate", 4
    unless_null $P1189, vivify_325
    $P1189 = root_new ['parrot';'ResizablePMCArray']
  vivify_325:
    set $N100, $P1189
    set $I100, $N100
    set $P104, param_1179
    nqp_decontainerize $P105, $P104
    nqp_get_sc_object $P106, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 3
    repr_get_attr_obj $P1190, $P105, $P106, "@!multi_methods_to_incorporate", 4
    unless_null $P1190, vivify_326
    $P1190 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P105, $P106, "@!multi_methods_to_incorporate", 4, $P1190
  vivify_326:
    set $P1190[$I100], $P1188
.annotate 'line', 225
    set $P101, param_1182
    unless_null $P101, vivify_327
    new $P101, "Undef"
  vivify_327:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_attribute" :anon :subid("27_1339198188.86") :outer("134_1339198188.86")
    .param pmc param_1192
    .param pmc param_1193
    .param pmc param_1194
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 233
    .lex "self", param_1192
    .lex "$obj", param_1193
    .lex "$meta_attr", param_1194
.annotate 'line', 234
    new $P101, "Undef"
    set $P1195, $P101
    .lex "$name", $P1195
    set $P102, param_1194
    unless_null $P102, vivify_328
    new $P102, "Undef"
  vivify_328:
    $P103 = $P102."name"()
    set $P1195, $P103
.annotate 'line', 235
    set $P102, $P1195
    unless_null $P102, vivify_329
    new $P102, "Undef"
  vivify_329:
    set $P103, param_1192
    nqp_decontainerize $P104, $P103
    nqp_get_sc_object $P105, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 3
    repr_get_attr_obj $P1197, $P104, $P105, "%!attributes", 2
    unless_null $P1197, vivify_330
    $P1197 = root_new ['parrot';'Hash']
  vivify_330:
    set $P106, $P1197[$P102]
    unless_null $P106, vivify_331
    new $P106, "Undef"
  vivify_331:
    unless $P106, if_1196_end
.annotate 'line', 236
    new $P107, "String"
    assign $P107, "This role already has an attribute named "
    set $P108, $P1195
    unless_null $P108, vivify_332
    new $P108, "Undef"
  vivify_332:
    concat $P109, $P107, $P108
    die $P109
  if_1196_end:
.annotate 'line', 238
    set $P102, param_1194
    unless_null $P102, vivify_333
    new $P102, "Undef"
  vivify_333:
    set $P103, $P1195
    unless_null $P103, vivify_334
    new $P103, "Undef"
  vivify_334:
    set $P104, param_1192
    nqp_decontainerize $P105, $P104
    nqp_get_sc_object $P106, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 3
    repr_get_attr_obj $P1198, $P105, $P106, "%!attributes", 2
    unless_null $P1198, vivify_335
    $P1198 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P105, $P106, "%!attributes", 2, $P1198
  vivify_335:
    set $P1198[$P103], $P102
.annotate 'line', 233
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_parent" :anon :subid("28_1339198188.86") :outer("134_1339198188.86")
    .param pmc param_1200
    .param pmc param_1201
    .param pmc param_1202
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 241
    .lex "self", param_1200
    .lex "$obj", param_1201
    .lex "$parent", param_1202
.annotate 'line', 242
    new $P101, "String"
    assign $P101, "A role cannot inherit from a class in NQP"
    die $P101
.annotate 'line', 241
    .return ()
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_role" :anon :subid("29_1339198188.86") :outer("134_1339198188.86")
    .param pmc param_1204
    .param pmc param_1205
    .param pmc param_1206
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 245
    .lex "self", param_1204
    .lex "$obj", param_1205
    .lex "$role", param_1206
.annotate 'line', 246
    set $P101, param_1206
    unless_null $P101, vivify_336
    new $P101, "Undef"
  vivify_336:
    set $P102, param_1204
    nqp_decontainerize $P103, $P102
    nqp_get_sc_object $P104, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 3
    repr_get_attr_obj $P1207, $P103, $P104, "@!roles", 6
    unless_null $P1207, vivify_337
    $P1207 = root_new ['parrot';'ResizablePMCArray']
  vivify_337:
    set $N100, $P1207
    set $I100, $N100
    set $P105, param_1204
    nqp_decontainerize $P106, $P105
    nqp_get_sc_object $P107, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 3
    repr_get_attr_obj $P1208, $P106, $P107, "@!roles", 6
    unless_null $P1208, vivify_338
    $P1208 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P106, $P107, "@!roles", 6, $P1208
  vivify_338:
    set $P1208[$I100], $P101
.annotate 'line', 245
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_collision" :anon :subid("30_1339198188.86") :outer("134_1339198188.86")
    .param pmc param_1210
    .param pmc param_1211
    .param pmc param_1212
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 249
    .lex "self", param_1210
    .lex "$obj", param_1211
    .lex "$colliding_name", param_1212
.annotate 'line', 250
    set $P101, param_1212
    unless_null $P101, vivify_339
    new $P101, "Undef"
  vivify_339:
    set $P102, param_1210
    nqp_decontainerize $P103, $P102
    nqp_get_sc_object $P104, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 3
    repr_get_attr_obj $P1213, $P103, $P104, "@!collisions", 5
    unless_null $P1213, vivify_340
    $P1213 = root_new ['parrot';'ResizablePMCArray']
  vivify_340:
    set $N100, $P1213
    set $I100, $N100
    set $P105, param_1210
    nqp_decontainerize $P106, $P105
    nqp_get_sc_object $P107, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 3
    repr_get_attr_obj $P1214, $P106, $P107, "@!collisions", 5
    unless_null $P1214, vivify_341
    $P1214 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P106, $P107, "@!collisions", 5, $P1214
  vivify_341:
    set $P1214[$I100], $P101
.annotate 'line', 249
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "compose" :anon :subid("31_1339198188.86") :outer("134_1339198188.86")
    .param pmc param_1216
    .param pmc param_1217
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 254
    .const 'Sub' $P1222 = "135_1339198188.86" 
    capture_lex $P1222
    .lex "self", param_1216
    .lex "$obj", param_1217
.annotate 'line', 257
    set $P101, param_1216
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 3
    repr_get_attr_obj $P1219, $P102, $P103, "@!roles", 6
    unless_null $P1219, vivify_342
    $P1219 = root_new ['parrot';'ResizablePMCArray']
  vivify_342:
    unless $P1219, if_1218_end
.annotate 'line', 258
    set $P105, param_1216
    nqp_decontainerize $P106, $P105
    nqp_get_sc_object $P107, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 3
    repr_get_attr_obj $P1220, $P106, $P107, "@!roles", 6
    unless_null $P1220, vivify_343
    $P1220 = root_new ['parrot';'ResizablePMCArray']
  vivify_343:
    defined $I100, $P1220
    unless $I100, for_undef_344
    iter $P104, $P1220
    new $P109, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P109, loop1228_handler
    push_eh $P109
  loop1228_test:
    unless $P104, loop1228_done
    shift $P108, $P104
  loop1228_redo:
    .const 'Sub' $P1222 = "135_1339198188.86" 
    capture_lex $P1222
    $P1222($P108)
  loop1228_next:
    goto loop1228_test
  loop1228_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P110, exception, 'type'
    eq $P110, .CONTROL_LOOP_NEXT, loop1228_next
    eq $P110, .CONTROL_LOOP_REDO, loop1228_redo
  loop1228_done:
    pop_eh 
  for_undef_344:
.annotate 'line', 262
    find_lex $P104, "RoleToRoleApplier"
    set $P105, param_1217
    unless_null $P105, vivify_352
    new $P105, "Undef"
  vivify_352:
    set $P106, param_1216
    nqp_decontainerize $P107, $P106
    nqp_get_sc_object $P108, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 3
    repr_get_attr_obj $P1229, $P107, $P108, "@!roles", 6
    unless_null $P1229, vivify_353
    $P1229 = root_new ['parrot';'ResizablePMCArray']
  vivify_353:
    $P104."apply"($P105, $P1229)
  if_1218_end:
.annotate 'line', 266
    new $P101, "Float"
    assign $P101, 1
    set $P102, param_1216
    nqp_decontainerize $P103, $P102
    nqp_get_sc_object $P104, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 3
    repr_bind_attr_obj $P103, $P104, "$!composed", 8, $P101
.annotate 'line', 254
    set $P101, param_1217
    unless_null $P101, vivify_354
    new $P101, "Undef"
  vivify_354:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1221"  :anon :subid("135_1339198188.86") :outer("31_1339198188.86")
    .param pmc param_1223
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 258
    .lex "$_", param_1223
.annotate 'line', 259
    find_lex $P109, "$_"
    unless_null $P109, vivify_345
    new $P109, "Undef"
  vivify_345:
    find_lex $P110, "self"
    nqp_decontainerize $P111, $P110
    nqp_get_sc_object $P112, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 3
    repr_get_attr_obj $P1224, $P111, $P112, "@!role_typecheck_list", 7
    unless_null $P1224, vivify_346
    $P1224 = root_new ['parrot';'ResizablePMCArray']
  vivify_346:
    set $N100, $P1224
    set $I101, $N100
    find_lex $P113, "self"
    nqp_decontainerize $P114, $P113
    nqp_get_sc_object $P115, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 3
    repr_get_attr_obj $P1225, $P114, $P115, "@!role_typecheck_list", 7
    unless_null $P1225, vivify_347
    $P1225 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P114, $P115, "@!role_typecheck_list", 7, $P1225
  vivify_347:
    set $P1225[$I101], $P109
.annotate 'line', 260
    find_lex $P109, "$_"
    unless_null $P109, vivify_348
    new $P109, "Undef"
  vivify_348:
    get_how $P110, $P109
    find_lex $P111, "$_"
    unless_null $P111, vivify_349
    new $P111, "Undef"
  vivify_349:
    $P112 = $P110."instance_of"($P111)
    find_lex $P113, "self"
    nqp_decontainerize $P114, $P113
    nqp_get_sc_object $P115, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 3
    repr_get_attr_obj $P1226, $P114, $P115, "@!role_typecheck_list", 7
    unless_null $P1226, vivify_350
    $P1226 = root_new ['parrot';'ResizablePMCArray']
  vivify_350:
    set $N100, $P1226
    set $I101, $N100
    find_lex $P116, "self"
    nqp_decontainerize $P117, $P116
    nqp_get_sc_object $P118, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 3
    repr_get_attr_obj $P1227, $P117, $P118, "@!role_typecheck_list", 7
    unless_null $P1227, vivify_351
    $P1227 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P117, $P118, "@!role_typecheck_list", 7, $P1227
  vivify_351:
    set $P1227[$I101], $P112
.annotate 'line', 258
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "methods" :anon :subid("32_1339198188.86") :outer("134_1339198188.86")
    .param pmc param_1231
    .param pmc param_1232
    .param pmc param_1233 :optional :named("local")
    .param int has_param_1233 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 275
    .const 'Sub' $P1239 = "136_1339198188.86" 
    capture_lex $P1239
    .lex "self", param_1231
    .lex "$obj", param_1232
    if has_param_1233, optparam_355
    new $P101, "Undef"
    set param_1233, $P101
  optparam_355:
    .lex "$local", param_1233
.annotate 'line', 276
    $P1235 = root_new ['parrot';'ResizablePMCArray']
    set $P1234, $P1235
    .lex "@meths", $P1234
.annotate 'line', 275
    set $P1236, $P1234
    unless_null $P1236, vivify_356
    $P1236 = root_new ['parrot';'ResizablePMCArray']
  vivify_356:
.annotate 'line', 277
    set $P103, param_1231
    nqp_decontainerize $P104, $P103
    nqp_get_sc_object $P105, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 3
    repr_get_attr_obj $P1237, $P104, $P105, "%!methods", 3
    unless_null $P1237, vivify_357
    $P1237 = root_new ['parrot';'Hash']
  vivify_357:
    defined $I100, $P1237
    unless $I100, for_undef_358
    iter $P102, $P1237
    new $P107, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P107, loop1242_handler
    push_eh $P107
  loop1242_test:
    unless $P102, loop1242_done
    shift $P106, $P102
  loop1242_redo:
    .const 'Sub' $P1239 = "136_1339198188.86" 
    capture_lex $P1239
    $P1239($P106)
  loop1242_next:
    goto loop1242_test
  loop1242_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop1242_next
    eq $P108, .CONTROL_LOOP_REDO, loop1242_redo
  loop1242_done:
    pop_eh 
  for_undef_358:
.annotate 'line', 275
    set $P1243, $P1234
    unless_null $P1243, vivify_361
    $P1243 = root_new ['parrot';'ResizablePMCArray']
  vivify_361:
    .return ($P1243)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1238"  :anon :subid("136_1339198188.86") :outer("32_1339198188.86")
    .param pmc param_1240
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 277
    .lex "$_", param_1240
.annotate 'line', 278
    find_lex $P1241, "@meths"
    unless_null $P1241, vivify_359
    $P1241 = root_new ['parrot';'ResizablePMCArray']
  vivify_359:
    find_lex $P107, "$_"
    unless_null $P107, vivify_360
    new $P107, "Undef"
  vivify_360:
    $P108 = $P107."value"()
    $P109 = $P1241."push"($P108)
.annotate 'line', 277
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "method_table" :anon :subid("33_1339198188.86") :outer("134_1339198188.86")
    .param pmc param_1245
    .param pmc param_1246
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 283
    .lex "self", param_1245
    .lex "$obj", param_1246
    set $P101, param_1245
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 3
    repr_get_attr_obj $P1247, $P102, $P103, "%!methods", 3
    unless_null $P1247, vivify_362
    $P1247 = root_new ['parrot';'Hash']
  vivify_362:
    .return ($P1247)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "collisions" :anon :subid("34_1339198188.86") :outer("134_1339198188.86")
    .param pmc param_1249
    .param pmc param_1250
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 287
    .lex "self", param_1249
    .lex "$obj", param_1250
    set $P101, param_1249
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 3
    repr_get_attr_obj $P1251, $P102, $P103, "@!collisions", 5
    unless_null $P1251, vivify_363
    $P1251 = root_new ['parrot';'ResizablePMCArray']
  vivify_363:
    .return ($P1251)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "name" :anon :subid("35_1339198188.86") :outer("134_1339198188.86")
    .param pmc param_1253
    .param pmc param_1254
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 291
    .lex "self", param_1253
    .lex "$obj", param_1254
    set $P101, param_1253
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 3
    repr_get_attr_obj $P104, $P102, $P103, "$!name", 0
    unless_null $P104, vivify_364
    new $P104, "Undef"
  vivify_364:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "attributes" :anon :subid("36_1339198188.86") :outer("134_1339198188.86")
    .param pmc param_1256
    .param pmc param_1257
    .param pmc param_1258 :optional :named("local")
    .param int has_param_1258 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 295
    .const 'Sub' $P1264 = "137_1339198188.86" 
    capture_lex $P1264
    .lex "self", param_1256
    .lex "$obj", param_1257
    if has_param_1258, optparam_365
    new $P101, "Undef"
    set param_1258, $P101
  optparam_365:
    .lex "$local", param_1258
.annotate 'line', 296
    $P1260 = root_new ['parrot';'ResizablePMCArray']
    set $P1259, $P1260
    .lex "@attrs", $P1259
.annotate 'line', 295
    set $P1261, $P1259
    unless_null $P1261, vivify_366
    $P1261 = root_new ['parrot';'ResizablePMCArray']
  vivify_366:
.annotate 'line', 297
    set $P103, param_1256
    nqp_decontainerize $P104, $P103
    nqp_get_sc_object $P105, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 3
    repr_get_attr_obj $P1262, $P104, $P105, "%!attributes", 2
    unless_null $P1262, vivify_367
    $P1262 = root_new ['parrot';'Hash']
  vivify_367:
    defined $I100, $P1262
    unless $I100, for_undef_368
    iter $P102, $P1262
    new $P107, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P107, loop1267_handler
    push_eh $P107
  loop1267_test:
    unless $P102, loop1267_done
    shift $P106, $P102
  loop1267_redo:
    .const 'Sub' $P1264 = "137_1339198188.86" 
    capture_lex $P1264
    $P1264($P106)
  loop1267_next:
    goto loop1267_test
  loop1267_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop1267_next
    eq $P108, .CONTROL_LOOP_REDO, loop1267_redo
  loop1267_done:
    pop_eh 
  for_undef_368:
.annotate 'line', 295
    set $P1268, $P1259
    unless_null $P1268, vivify_371
    $P1268 = root_new ['parrot';'ResizablePMCArray']
  vivify_371:
    .return ($P1268)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1263"  :anon :subid("137_1339198188.86") :outer("36_1339198188.86")
    .param pmc param_1265
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 297
    .lex "$_", param_1265
.annotate 'line', 298
    find_lex $P1266, "@attrs"
    unless_null $P1266, vivify_369
    $P1266 = root_new ['parrot';'ResizablePMCArray']
  vivify_369:
    find_lex $P107, "$_"
    unless_null $P107, vivify_370
    new $P107, "Undef"
  vivify_370:
    $P108 = $P107."value"()
    $P109 = $P1266."push"($P108)
.annotate 'line', 297
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "roles" :anon :subid("37_1339198188.86") :outer("134_1339198188.86")
    .param pmc param_1270
    .param pmc param_1271
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 303
    .lex "self", param_1270
    .lex "$obj", param_1271
    set $P101, param_1270
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 3
    repr_get_attr_obj $P1272, $P102, $P103, "@!roles", 6
    unless_null $P1272, vivify_372
    $P1272 = root_new ['parrot';'ResizablePMCArray']
  vivify_372:
    .return ($P1272)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "role_typecheck_list" :anon :subid("38_1339198188.86") :outer("134_1339198188.86")
    .param pmc param_1274
    .param pmc param_1275
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 307
    .lex "self", param_1274
    .lex "$obj", param_1275
    set $P101, param_1274
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 3
    repr_get_attr_obj $P1276, $P102, $P103, "@!role_typecheck_list", 7
    unless_null $P1276, vivify_373
    $P1276 = root_new ['parrot';'ResizablePMCArray']
  vivify_373:
    .return ($P1276)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "instance_of" :anon :subid("39_1339198188.86") :outer("134_1339198188.86")
    .param pmc param_1278
    .param pmc param_1279
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 311
    .lex "self", param_1278
    .lex "$obj", param_1279
    set $P101, param_1278
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 3
    repr_get_attr_obj $P104, $P102, $P103, "$!instance_of", 1
    unless_null $P104, vivify_374
    new $P104, "Undef"
  vivify_374:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block1281"  :subid("138_1339198188.86") :outer("123_1339198188.86")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 317
    .const 'Sub' $P1309 = "40_1339198188.86" 
    capture_lex $P1309
    .const 'Sub' $P1293 = "140_1339198188.86" 
    capture_lex $P1293
    .const 'Sub' $P1284 = "139_1339198188.86" 
    capture_lex $P1284
.annotate 'line', 319
    .const 'Sub' $P1284 = "139_1339198188.86" 
    newclosure $P1291, $P1284
    set $P1283, $P1291
    .lex "has_method", $P1283
.annotate 'line', 324
    .const 'Sub' $P1293 = "140_1339198188.86" 
    newclosure $P1306, $P1293
    set $P1292, $P1306
    .lex "has_attribute", $P1292
.annotate 'line', 317
    .lex "$?PACKAGE", $P1307
    .lex "$?CLASS", $P1308
    set $P101, $P1283
    set $P101, $P1292
.annotate 'line', 332
    .const 'Sub' $P1309 = "40_1339198188.86" 
    newclosure $P1351, $P1309
.annotate 'line', 317
    .return ($P1351)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "has_method"  :subid("139_1339198188.86") :outer("138_1339198188.86")
    .param pmc param_1285
    .param pmc param_1286
    .param pmc param_1287
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 319
    .lex "$target", param_1285
    .lex "$name", param_1286
    .lex "$local", param_1287
.annotate 'line', 320
    $P1289 = root_new ['parrot';'Hash']
    set $P1288, $P1289
    .lex "%mt", $P1288
    set $P100, param_1285
    unless_null $P100, vivify_375
    new $P100, "Undef"
  vivify_375:
    get_how $P101, $P100
    set $P102, param_1285
    unless_null $P102, vivify_376
    new $P102, "Undef"
  vivify_376:
    $P103 = $P101."method_table"($P102)
    set $P1288, $P103
.annotate 'line', 321
    set $P100, param_1286
    unless_null $P100, vivify_377
    new $P100, "Undef"
  vivify_377:
    set $S100, $P100
    set $P1290, $P1288
    unless_null $P1290, vivify_378
    $P1290 = root_new ['parrot';'Hash']
  vivify_378:
    exists $I100, $P1290[$S100]
.annotate 'line', 319
    .return ($I100)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "has_attribute"  :subid("140_1339198188.86") :outer("138_1339198188.86")
    .param pmc param_1296
    .param pmc param_1297
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 324
    .const 'Sub' $P1302 = "141_1339198188.86" 
    capture_lex $P1302
    new $P1295, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P1295, control_1294
    push_eh $P1295
    .lex "$target", param_1296
    .lex "$name", param_1297
.annotate 'line', 325
    $P1299 = root_new ['parrot';'ResizablePMCArray']
    set $P1298, $P1299
    .lex "@attributes", $P1298
    set $P100, param_1296
    unless_null $P100, vivify_379
    new $P100, "Undef"
  vivify_379:
    get_how $P101, $P100
    set $P102, param_1296
    unless_null $P102, vivify_380
    new $P102, "Undef"
  vivify_380:
    $P103 = $P101."attributes"($P102, 1 :named("local"))
    set $P1298, $P103
.annotate 'line', 326
    set $P1300, $P1298
    unless_null $P1300, vivify_381
    $P1300 = root_new ['parrot';'ResizablePMCArray']
  vivify_381:
    defined $I101, $P1300
    unless $I101, for_undef_382
    iter $P100, $P1300
    new $P103, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P103, loop1305_handler
    push_eh $P103
  loop1305_test:
    unless $P100, loop1305_done
    shift $P101, $P100
  loop1305_redo:
    .const 'Sub' $P1302 = "141_1339198188.86" 
    capture_lex $P1302
    $P1302($P101)
  loop1305_next:
    goto loop1305_test
  loop1305_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P104, exception, 'type'
    eq $P104, .CONTROL_LOOP_NEXT, loop1305_next
    eq $P104, .CONTROL_LOOP_REDO, loop1305_redo
  loop1305_done:
    pop_eh 
  for_undef_382:
.annotate 'line', 329
    new $P100, "Exception"
    set $P100['type'], .CONTROL_RETURN
    new $P101, "Float"
    assign $P101, 0
    setattribute $P100, 'payload', $P101
    throw $P100
.annotate 'line', 324
    .return ()
  control_1294:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P100, exception, "payload"
    .return ($P100)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "_block1301"  :anon :subid("141_1339198188.86") :outer("140_1339198188.86")
    .param pmc param_1303
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 326
    .lex "$_", param_1303
.annotate 'line', 327
    find_lex $P103, "$_"
    unless_null $P103, vivify_383
    new $P103, "Undef"
  vivify_383:
    $S100 = $P103."name"()
    find_lex $P104, "$name"
    unless_null $P104, vivify_384
    new $P104, "Undef"
  vivify_384:
    set $S101, $P104
    iseq $I102, $S100, $S101
    if $I102, if_1304
    new $P102, 'Integer'
    set $P102, $I102
    goto if_1304_end
  if_1304:
    new $P105, "Exception"
    set $P105['type'], .CONTROL_RETURN
    new $P106, "Float"
    assign $P106, 1
    setattribute $P105, 'payload', $P106
    throw $P105
  if_1304_end:
.annotate 'line', 326
    .return ($P102)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "apply" :anon :subid("40_1339198188.86") :outer("138_1339198188.86")
    .param pmc param_1310
    .param pmc param_1311
    .param pmc param_1312
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 332
    .const 'Sub' $P1345 = "145_1339198188.86" 
    capture_lex $P1345
    .const 'Sub' $P1339 = "144_1339198188.86" 
    capture_lex $P1339
    .const 'Sub' $P1333 = "143_1339198188.86" 
    capture_lex $P1333
    .const 'Sub' $P1328 = "142_1339198188.86" 
    capture_lex $P1328
    .lex "self", param_1310
    .lex "$target", param_1311
    .lex "@roles", param_1312
.annotate 'line', 335
    new $P101, "Undef"
    set $P1313, $P101
    .lex "$to_compose", $P1313
.annotate 'line', 336
    new $P102, "Undef"
    set $P1314, $P102
    .lex "$to_compose_meta", $P1314
.annotate 'line', 351
    $P1316 = root_new ['parrot';'ResizablePMCArray']
    set $P1315, $P1316
    .lex "@collisions", $P1315
.annotate 'line', 360
    $P1318 = root_new ['parrot';'ResizablePMCArray']
    set $P1317, $P1318
    .lex "@methods", $P1317
.annotate 'line', 368
    $P1320 = root_new ['parrot';'ResizablePMCArray']
    set $P1319, $P1320
    .lex "@attributes", $P1319
.annotate 'line', 380
    $P1322 = root_new ['parrot';'ResizablePMCArray']
    set $P1321, $P1322
    .lex "@done", $P1321
.annotate 'line', 332
    set $P103, $P1313
    unless_null $P103, vivify_385
    new $P103, "Undef"
  vivify_385:
    set $P103, $P1314
    unless_null $P103, vivify_386
    new $P103, "Undef"
  vivify_386:
.annotate 'line', 337
    set $P1324, param_1312
    unless_null $P1324, vivify_387
    $P1324 = root_new ['parrot';'ResizablePMCArray']
  vivify_387:
    set $N100, $P1324
    set $N101, 1
    iseq $I101, $N100, $N101
    if $I101, if_1323
.annotate 'line', 342
    find_lex $P103, "NQPConcreteRoleHOW"
    find_lex $P104, "$?PACKAGE"
    get_who $P105, $P104
    set $P108, $P105["NQPMu"]
    unless_null $P108, vivify_388
    get_hll_global $P106, "GLOBAL"
    get_who $P107, $P106
    set $P108, $P107["NQPMu"]
  vivify_388:
    $P109 = $P103."new_type"($P108 :named("instance_of"))
    set $P1313, $P109
.annotate 'line', 343
    set $P103, $P1313
    unless_null $P103, vivify_389
    new $P103, "Undef"
  vivify_389:
    get_how $P104, $P103
    set $P1314, $P104
.annotate 'line', 344
    set $P1326, param_1312
    unless_null $P1326, vivify_390
    $P1326 = root_new ['parrot';'ResizablePMCArray']
  vivify_390:
    defined $I102, $P1326
    unless $I102, for_undef_391
    iter $P103, $P1326
    new $P105, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P105, loop1330_handler
    push_eh $P105
  loop1330_test:
    unless $P103, loop1330_done
    shift $P104, $P103
  loop1330_redo:
    .const 'Sub' $P1328 = "142_1339198188.86" 
    capture_lex $P1328
    $P1328($P104)
  loop1330_next:
    goto loop1330_test
  loop1330_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P106, exception, 'type'
    eq $P106, .CONTROL_LOOP_NEXT, loop1330_next
    eq $P106, .CONTROL_LOOP_REDO, loop1330_redo
  loop1330_done:
    pop_eh 
  for_undef_391:
.annotate 'line', 347
    set $P103, $P1314
    unless_null $P103, vivify_395
    new $P103, "Undef"
  vivify_395:
    set $P104, $P1313
    unless_null $P104, vivify_396
    new $P104, "Undef"
  vivify_396:
    $P105 = $P103."compose"($P104)
    set $P1313, $P105
.annotate 'line', 341
    goto if_1323_end
  if_1323:
.annotate 'line', 338
    set $P1325, param_1312
    unless_null $P1325, vivify_397
    $P1325 = root_new ['parrot';'ResizablePMCArray']
  vivify_397:
    set $P103, $P1325[0]
    unless_null $P103, vivify_398
    new $P103, "Undef"
  vivify_398:
    set $P1313, $P103
.annotate 'line', 339
    set $P103, $P1313
    unless_null $P103, vivify_399
    new $P103, "Undef"
  vivify_399:
    get_how $P104, $P103
    set $P1314, $P104
  if_1323_end:
.annotate 'line', 351
    set $P103, $P1314
    unless_null $P103, vivify_400
    new $P103, "Undef"
  vivify_400:
    set $P104, $P1313
    unless_null $P104, vivify_401
    new $P104, "Undef"
  vivify_401:
    $P105 = $P103."collisions"($P104)
    set $P1315, $P105
.annotate 'line', 352
    set $P1331, $P1315
    unless_null $P1331, vivify_402
    $P1331 = root_new ['parrot';'ResizablePMCArray']
  vivify_402:
    defined $I101, $P1331
    unless $I101, for_undef_403
    iter $P103, $P1331
    new $P106, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P106, loop1336_handler
    push_eh $P106
  loop1336_test:
    unless $P103, loop1336_done
    shift $P104, $P103
  loop1336_redo:
    .const 'Sub' $P1333 = "143_1339198188.86" 
    capture_lex $P1333
    $P1333($P104)
  loop1336_next:
    goto loop1336_test
  loop1336_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P107, exception, 'type'
    eq $P107, .CONTROL_LOOP_NEXT, loop1336_next
    eq $P107, .CONTROL_LOOP_REDO, loop1336_redo
  loop1336_done:
    pop_eh 
  for_undef_403:
.annotate 'line', 360
    set $P103, $P1314
    unless_null $P103, vivify_409
    new $P103, "Undef"
  vivify_409:
    set $P104, $P1313
    unless_null $P104, vivify_410
    new $P104, "Undef"
  vivify_410:
    $P105 = $P103."methods"($P104)
    set $P1317, $P105
.annotate 'line', 361
    set $P1337, $P1317
    unless_null $P1337, vivify_411
    $P1337 = root_new ['parrot';'ResizablePMCArray']
  vivify_411:
    defined $I101, $P1337
    unless $I101, for_undef_412
    iter $P103, $P1337
    new $P106, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P106, loop1342_handler
    push_eh $P106
  loop1342_test:
    unless $P103, loop1342_done
    shift $P104, $P103
  loop1342_redo:
    .const 'Sub' $P1339 = "144_1339198188.86" 
    capture_lex $P1339
    $P1339($P104)
  loop1342_next:
    goto loop1342_test
  loop1342_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P107, exception, 'type'
    eq $P107, .CONTROL_LOOP_NEXT, loop1342_next
    eq $P107, .CONTROL_LOOP_REDO, loop1342_redo
  loop1342_done:
    pop_eh 
  for_undef_412:
.annotate 'line', 368
    set $P103, $P1314
    unless_null $P103, vivify_419
    new $P103, "Undef"
  vivify_419:
    set $P104, $P1313
    unless_null $P104, vivify_420
    new $P104, "Undef"
  vivify_420:
    $P105 = $P103."attributes"($P104)
    set $P1319, $P105
.annotate 'line', 369
    set $P1343, $P1319
    unless_null $P1343, vivify_421
    $P1343 = root_new ['parrot';'ResizablePMCArray']
  vivify_421:
    defined $I101, $P1343
    unless $I101, for_undef_422
    iter $P103, $P1343
    new $P105, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P105, loop1348_handler
    push_eh $P105
  loop1348_test:
    unless $P103, loop1348_done
    shift $P104, $P103
  loop1348_redo:
    .const 'Sub' $P1345 = "145_1339198188.86" 
    capture_lex $P1345
    $P1345($P104)
  loop1348_next:
    goto loop1348_test
  loop1348_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P106, exception, 'type'
    eq $P106, .CONTROL_LOOP_NEXT, loop1348_next
    eq $P106, .CONTROL_LOOP_REDO, loop1348_redo
  loop1348_done:
    pop_eh 
  for_undef_422:
.annotate 'line', 332
    set $P1349, $P1321
    unless_null $P1349, vivify_431
    $P1349 = root_new ['parrot';'ResizablePMCArray']
  vivify_431:
.annotate 'line', 381
    set $P103, $P1313
    unless_null $P103, vivify_432
    new $P103, "Undef"
  vivify_432:
    set $P1350, $P1321
    unless_null $P1350, vivify_433
    $P1350 = root_new ['parrot';'ResizablePMCArray']
    set $P1321, $P1350
  vivify_433:
    set $P1350[0], $P103
.annotate 'line', 332
    .return ($P103)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block1327"  :anon :subid("142_1339198188.86") :outer("40_1339198188.86")
    .param pmc param_1329
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 344
    .lex "$_", param_1329
.annotate 'line', 345
    find_lex $P105, "$to_compose_meta"
    unless_null $P105, vivify_392
    new $P105, "Undef"
  vivify_392:
    find_lex $P106, "$to_compose"
    unless_null $P106, vivify_393
    new $P106, "Undef"
  vivify_393:
    find_lex $P107, "$_"
    unless_null $P107, vivify_394
    new $P107, "Undef"
  vivify_394:
    $P108 = $P105."add_role"($P106, $P107)
.annotate 'line', 344
    .return ($P108)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block1332"  :anon :subid("143_1339198188.86") :outer("40_1339198188.86")
    .param pmc param_1334
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 352
    .lex "$_", param_1334
.annotate 'line', 353
    find_lex $P106, "$target"
    unless_null $P106, vivify_404
    new $P106, "Undef"
  vivify_404:
    find_lex $P107, "$_"
    unless_null $P107, vivify_405
    new $P107, "Undef"
  vivify_405:
    set $S100, $P107
    $P108 = "has_method"($P106, $S100, 1)
    unless $P108, unless_1335
    set $P105, $P108
    goto unless_1335_end
  unless_1335:
.annotate 'line', 354
    new $P109, 'String'
    set $P109, "Method '"
    find_lex $P110, "$_"
    unless_null $P110, vivify_406
    new $P110, "Undef"
  vivify_406:
    concat $P111, $P109, $P110
    concat $P112, $P111, "' collides and a resolution must be provided by the class '"
.annotate 'line', 355
    find_lex $P113, "$target"
    unless_null $P113, vivify_407
    new $P113, "Undef"
  vivify_407:
    get_how $P114, $P113
    find_lex $P115, "$target"
    unless_null $P115, vivify_408
    new $P115, "Undef"
  vivify_408:
    $S101 = $P114."name"($P115)
    concat $P116, $P112, $S101
.annotate 'line', 354
    concat $P117, $P116, "'"
.annotate 'line', 355
    die $P117
  unless_1335_end:
.annotate 'line', 352
    .return ($P105)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block1338"  :anon :subid("144_1339198188.86") :outer("40_1339198188.86")
    .param pmc param_1340
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 361
    .lex "$_", param_1340
.annotate 'line', 362
    find_lex $P106, "$target"
    unless_null $P106, vivify_413
    new $P106, "Undef"
  vivify_413:
    find_lex $P107, "$_"
    unless_null $P107, vivify_414
    new $P107, "Undef"
  vivify_414:
    set $S100, $P107
    $P108 = "has_method"($P106, $S100, 0)
    unless $P108, unless_1341
    set $P105, $P108
    goto unless_1341_end
  unless_1341:
.annotate 'line', 363
    find_lex $P109, "$target"
    unless_null $P109, vivify_415
    new $P109, "Undef"
  vivify_415:
    get_how $P110, $P109
    find_lex $P111, "$target"
    unless_null $P111, vivify_416
    new $P111, "Undef"
  vivify_416:
    find_lex $P112, "$_"
    unless_null $P112, vivify_417
    new $P112, "Undef"
  vivify_417:
    set $S101, $P112
    find_lex $P113, "$_"
    unless_null $P113, vivify_418
    new $P113, "Undef"
  vivify_418:
    $P114 = $P110."add_method"($P111, $S101, $P113)
.annotate 'line', 362
    set $P105, $P114
  unless_1341_end:
.annotate 'line', 361
    .return ($P105)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block1344"  :anon :subid("145_1339198188.86") :outer("40_1339198188.86")
    .param pmc param_1346
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 369
    .lex "$_", param_1346
.annotate 'line', 370
    find_lex $P105, "$target"
    unless_null $P105, vivify_423
    new $P105, "Undef"
  vivify_423:
    find_lex $P106, "$_"
    unless_null $P106, vivify_424
    new $P106, "Undef"
  vivify_424:
    $P107 = $P106."name"()
    $P108 = "has_attribute"($P105, $P107)
    unless $P108, if_1347_end
.annotate 'line', 371
    new $P109, "String"
    assign $P109, "Attribute '"
    find_lex $P110, "$_"
    unless_null $P110, vivify_425
    new $P110, "Undef"
  vivify_425:
    $S100 = $P110."name"()
    concat $P111, $P109, $S100
    concat $P112, $P111, "' already exists in the class '"
.annotate 'line', 372
    find_lex $P113, "$target"
    unless_null $P113, vivify_426
    new $P113, "Undef"
  vivify_426:
    get_how $P114, $P113
    find_lex $P115, "$target"
    unless_null $P115, vivify_427
    new $P115, "Undef"
  vivify_427:
    $S101 = $P114."name"($P115)
    concat $P116, $P112, $S101
.annotate 'line', 371
    concat $P117, $P116, "', but a role also wishes to compose it"
.annotate 'line', 372
    die $P117
  if_1347_end:
.annotate 'line', 374
    find_lex $P105, "$target"
    unless_null $P105, vivify_428
    new $P105, "Undef"
  vivify_428:
    get_how $P106, $P105
    find_lex $P107, "$target"
    unless_null $P107, vivify_429
    new $P107, "Undef"
  vivify_429:
    find_lex $P108, "$_"
    unless_null $P108, vivify_430
    new $P108, "Undef"
  vivify_430:
    $P109 = $P106."add_attribute"($P107, $P108)
.annotate 'line', 369
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1352"  :subid("146_1339198188.86") :outer("123_1339198188.86")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 390
    .const 'Sub' $P1485 = "58_1339198188.86" 
    capture_lex $P1485
    .const 'Sub' $P1471 = "57_1339198188.86" 
    capture_lex $P1471
    .const 'Sub' $P1468 = "56_1339198188.86" 
    capture_lex $P1468
    .const 'Sub' $P1464 = "55_1339198188.86" 
    capture_lex $P1464
    .const 'Sub' $P1450 = "54_1339198188.86" 
    capture_lex $P1450
    .const 'Sub' $P1420 = "53_1339198188.86" 
    capture_lex $P1420
    .const 'Sub' $P1417 = "52_1339198188.86" 
    capture_lex $P1417
    .const 'Sub' $P1414 = "51_1339198188.86" 
    capture_lex $P1414
    .const 'Sub' $P1408 = "50_1339198188.86" 
    capture_lex $P1408
    .const 'Sub' $P1404 = "49_1339198188.86" 
    capture_lex $P1404
    .const 'Sub' $P1396 = "48_1339198188.86" 
    capture_lex $P1396
    .const 'Sub' $P1383 = "47_1339198188.86" 
    capture_lex $P1383
    .const 'Sub' $P1375 = "46_1339198188.86" 
    capture_lex $P1375
    .const 'Sub' $P1371 = "45_1339198188.86" 
    capture_lex $P1371
    .const 'Sub' $P1366 = "44_1339198188.86" 
    capture_lex $P1366
    .const 'Sub' $P1363 = "43_1339198188.86" 
    capture_lex $P1363
    .const 'Sub' $P1359 = "42_1339198188.86" 
    capture_lex $P1359
    .const 'Sub' $P1357 = "41_1339198188.86" 
    capture_lex $P1357
.annotate 'line', 414
    new $P100, "Undef"
    set $P1354, $P100
    .lex "$archetypes", $P1354
    .lex "$?PACKAGE", $P1355
    .lex "$?CLASS", $P1356
    find_lex $P101, "Archetypes"
    $P102 = $P101."new"(1 :named("nominal"), 1 :named("composable"), 1 :named("parametric"))
    set $P1354, $P102
.annotate 'line', 557
    .const 'Sub' $P1485 = "58_1339198188.86" 
    newclosure $P1489, $P1485
.annotate 'line', 390
    .return ($P1489)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "archetypes" :anon :subid("41_1339198188.86") :outer("146_1339198188.86")
    .param pmc param_1358
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 415
    .lex "self", param_1358
    find_lex $P101, "$archetypes"
    unless_null $P101, vivify_434
    new $P101, "Undef"
  vivify_434:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "new" :anon :subid("42_1339198188.86") :outer("146_1339198188.86")
    .param pmc param_1360
    .param pmc param_1361 :named("name")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 424
    .lex "self", param_1360
    .lex "$name", param_1361
.annotate 'line', 425
    new $P101, "Undef"
    set $P1362, $P101
    .lex "$obj", $P1362
    set $P102, param_1360
    nqp_decontainerize $P103, $P102
    repr_instance_of $P104, $P103
    set $P1362, $P104
.annotate 'line', 426
    set $P102, $P1362
    unless_null $P102, vivify_435
    new $P102, "Undef"
  vivify_435:
    set $P103, param_1361
    unless_null $P103, vivify_436
    new $P103, "Undef"
  vivify_436:
    $P102."BUILD"($P103 :named("name"))
.annotate 'line', 424
    set $P102, $P1362
    unless_null $P102, vivify_437
    new $P102, "Undef"
  vivify_437:
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "BUILD" :anon :subid("43_1339198188.86") :outer("146_1339198188.86")
    .param pmc param_1364
    .param pmc param_1365 :named("name")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 430
    .lex "self", param_1364
    .lex "$name", param_1365
.annotate 'line', 431
    set $P101, param_1365
    unless_null $P101, vivify_438
    new $P101, "Undef"
  vivify_438:
    set $P102, param_1364
    nqp_decontainerize $P103, $P102
    nqp_get_sc_object $P104, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 5
    repr_bind_attr_obj $P103, $P104, "$!name", 0, $P101
.annotate 'line', 430
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "new_type" :anon :subid("44_1339198188.86") :outer("146_1339198188.86")
    .param pmc param_1367
    .param pmc param_1368 :optional :named("name")
    .param int has_param_1368 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 436
    .lex "self", param_1367
    if has_param_1368, optparam_439
    new $P101, "String"
    assign $P101, "<anon>"
    set param_1368, $P101
  optparam_439:
    .lex "$name", param_1368
.annotate 'line', 437
    new $P102, "Undef"
    set $P1369, $P102
    .lex "$metarole", $P1369
    set $P103, param_1367
    nqp_decontainerize $P104, $P103
    set $P105, param_1368
    unless_null $P105, vivify_440
    new $P105, "Undef"
  vivify_440:
    $P106 = $P104."new"($P105 :named("name"))
    set $P1369, $P106
.annotate 'line', 439
    set $P103, $P1369
    unless_null $P103, vivify_441
    new $P103, "Undef"
  vivify_441:
    new $P104, "String"
    assign $P104, "Uninstantiable"
    set $S100, $P104
    repr_type_object_for $P105, $P103, $S100
    $P1370 = root_new ['parrot';'Hash']
    set_who $P105, $P1370
.annotate 'line', 436
    .return ($P105)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "set_body_block" :anon :subid("45_1339198188.86") :outer("146_1339198188.86")
    .param pmc param_1372
    .param pmc param_1373
    .param pmc param_1374
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 443
    .lex "self", param_1372
    .lex "$obj", param_1373
    .lex "$body_block", param_1374
.annotate 'line', 444
    set $P101, param_1374
    unless_null $P101, vivify_442
    new $P101, "Undef"
  vivify_442:
    set $P102, param_1372
    nqp_decontainerize $P103, $P102
    nqp_get_sc_object $P104, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 5
    repr_bind_attr_obj $P103, $P104, "$!body_block", 6, $P101
.annotate 'line', 443
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_method" :anon :subid("46_1339198188.86") :outer("146_1339198188.86")
    .param pmc param_1376
    .param pmc param_1377
    .param pmc param_1378
    .param pmc param_1379
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 447
    .lex "self", param_1376
    .lex "$obj", param_1377
    .lex "$name", param_1378
    .lex "$code_obj", param_1379
.annotate 'line', 448
    set $P101, param_1378
    unless_null $P101, vivify_443
    new $P101, "Undef"
  vivify_443:
    set $P102, param_1376
    nqp_decontainerize $P103, $P102
    nqp_get_sc_object $P104, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 5
    repr_get_attr_obj $P1381, $P103, $P104, "%!methods", 2
    unless_null $P1381, vivify_444
    $P1381 = root_new ['parrot';'Hash']
  vivify_444:
    set $P105, $P1381[$P101]
    unless_null $P105, vivify_445
    new $P105, "Undef"
  vivify_445:
    unless $P105, if_1380_end
.annotate 'line', 449
    new $P106, "String"
    assign $P106, "This role already has a method named "
    set $P107, param_1378
    unless_null $P107, vivify_446
    new $P107, "Undef"
  vivify_446:
    concat $P108, $P106, $P107
    die $P108
  if_1380_end:
.annotate 'line', 451
    set $P101, param_1379
    unless_null $P101, vivify_447
    new $P101, "Undef"
  vivify_447:
    set $P102, param_1378
    unless_null $P102, vivify_448
    new $P102, "Undef"
  vivify_448:
    set $P103, param_1376
    nqp_decontainerize $P104, $P103
    nqp_get_sc_object $P105, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 5
    repr_get_attr_obj $P1382, $P104, $P105, "%!methods", 2
    unless_null $P1382, vivify_449
    $P1382 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P104, $P105, "%!methods", 2, $P1382
  vivify_449:
    set $P1382[$P102], $P101
.annotate 'line', 447
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_multi_method" :anon :subid("47_1339198188.86") :outer("146_1339198188.86")
    .param pmc param_1384
    .param pmc param_1385
    .param pmc param_1386
    .param pmc param_1387
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 454
    .lex "self", param_1384
    .lex "$obj", param_1385
    .lex "$name", param_1386
    .lex "$code_obj", param_1387
.annotate 'line', 455
    $P1389 = root_new ['parrot';'Hash']
    set $P1388, $P1389
    .lex "%todo", $P1388
.annotate 'line', 454
    set $P1390, $P1388
    unless_null $P1390, vivify_450
    $P1390 = root_new ['parrot';'Hash']
  vivify_450:
.annotate 'line', 456
    set $P101, param_1386
    unless_null $P101, vivify_451
    new $P101, "Undef"
  vivify_451:
    set $P1391, $P1388
    unless_null $P1391, vivify_452
    $P1391 = root_new ['parrot';'Hash']
    set $P1388, $P1391
  vivify_452:
    set $P1391["name"], $P101
.annotate 'line', 457
    set $P101, param_1387
    unless_null $P101, vivify_453
    new $P101, "Undef"
  vivify_453:
    set $P1392, $P1388
    unless_null $P1392, vivify_454
    $P1392 = root_new ['parrot';'Hash']
    set $P1388, $P1392
  vivify_454:
    set $P1392["code"], $P101
.annotate 'line', 458
    set $P1393, $P1388
    unless_null $P1393, vivify_455
    $P1393 = root_new ['parrot';'Hash']
  vivify_455:
    set $P101, param_1384
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 5
    repr_get_attr_obj $P1394, $P102, $P103, "@!multi_methods_to_incorporate", 3
    unless_null $P1394, vivify_456
    $P1394 = root_new ['parrot';'ResizablePMCArray']
  vivify_456:
    set $N100, $P1394
    set $I100, $N100
    set $P104, param_1384
    nqp_decontainerize $P105, $P104
    nqp_get_sc_object $P106, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 5
    repr_get_attr_obj $P1395, $P105, $P106, "@!multi_methods_to_incorporate", 3
    unless_null $P1395, vivify_457
    $P1395 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P105, $P106, "@!multi_methods_to_incorporate", 3, $P1395
  vivify_457:
    set $P1395[$I100], $P1393
.annotate 'line', 454
    set $P101, param_1387
    unless_null $P101, vivify_458
    new $P101, "Undef"
  vivify_458:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_attribute" :anon :subid("48_1339198188.86") :outer("146_1339198188.86")
    .param pmc param_1397
    .param pmc param_1398
    .param pmc param_1399
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 462
    .lex "self", param_1397
    .lex "$obj", param_1398
    .lex "$meta_attr", param_1399
.annotate 'line', 463
    new $P101, "Undef"
    set $P1400, $P101
    .lex "$name", $P1400
    set $P102, param_1399
    unless_null $P102, vivify_459
    new $P102, "Undef"
  vivify_459:
    $P103 = $P102."name"()
    set $P1400, $P103
.annotate 'line', 464
    set $P102, $P1400
    unless_null $P102, vivify_460
    new $P102, "Undef"
  vivify_460:
    set $P103, param_1397
    nqp_decontainerize $P104, $P103
    nqp_get_sc_object $P105, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 5
    repr_get_attr_obj $P1402, $P104, $P105, "%!attributes", 1
    unless_null $P1402, vivify_461
    $P1402 = root_new ['parrot';'Hash']
  vivify_461:
    set $P106, $P1402[$P102]
    unless_null $P106, vivify_462
    new $P106, "Undef"
  vivify_462:
    unless $P106, if_1401_end
.annotate 'line', 465
    new $P107, "String"
    assign $P107, "This role already has an attribute named "
    set $P108, $P1400
    unless_null $P108, vivify_463
    new $P108, "Undef"
  vivify_463:
    concat $P109, $P107, $P108
    die $P109
  if_1401_end:
.annotate 'line', 467
    set $P102, param_1399
    unless_null $P102, vivify_464
    new $P102, "Undef"
  vivify_464:
    set $P103, $P1400
    unless_null $P103, vivify_465
    new $P103, "Undef"
  vivify_465:
    set $P104, param_1397
    nqp_decontainerize $P105, $P104
    nqp_get_sc_object $P106, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 5
    repr_get_attr_obj $P1403, $P105, $P106, "%!attributes", 1
    unless_null $P1403, vivify_466
    $P1403 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P105, $P106, "%!attributes", 1, $P1403
  vivify_466:
    set $P1403[$P103], $P102
.annotate 'line', 462
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_parent" :anon :subid("49_1339198188.86") :outer("146_1339198188.86")
    .param pmc param_1405
    .param pmc param_1406
    .param pmc param_1407
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 470
    .lex "self", param_1405
    .lex "$obj", param_1406
    .lex "$parent", param_1407
.annotate 'line', 471
    new $P101, "String"
    assign $P101, "A role cannot inherit from a class"
    die $P101
.annotate 'line', 470
    .return ()
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_role" :anon :subid("50_1339198188.86") :outer("146_1339198188.86")
    .param pmc param_1409
    .param pmc param_1410
    .param pmc param_1411
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 474
    .lex "self", param_1409
    .lex "$obj", param_1410
    .lex "$role", param_1411
.annotate 'line', 475
    set $P101, param_1411
    unless_null $P101, vivify_467
    new $P101, "Undef"
  vivify_467:
    set $P102, param_1409
    nqp_decontainerize $P103, $P102
    nqp_get_sc_object $P104, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 5
    repr_get_attr_obj $P1412, $P103, $P104, "@!roles", 4
    unless_null $P1412, vivify_468
    $P1412 = root_new ['parrot';'ResizablePMCArray']
  vivify_468:
    set $N100, $P1412
    set $I100, $N100
    set $P105, param_1409
    nqp_decontainerize $P106, $P105
    nqp_get_sc_object $P107, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 5
    repr_get_attr_obj $P1413, $P106, $P107, "@!roles", 4
    unless_null $P1413, vivify_469
    $P1413 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P106, $P107, "@!roles", 4, $P1413
  vivify_469:
    set $P1413[$I100], $P101
.annotate 'line', 474
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "compose" :anon :subid("51_1339198188.86") :outer("146_1339198188.86")
    .param pmc param_1415
    .param pmc param_1416
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 479
    .lex "self", param_1415
    .lex "$obj", param_1416
.annotate 'line', 480
    new $P101, "Float"
    assign $P101, 1
    set $P102, param_1415
    nqp_decontainerize $P103, $P102
    nqp_get_sc_object $P104, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 5
    repr_bind_attr_obj $P103, $P104, "$!composed", 5, $P101
.annotate 'line', 479
    set $P101, param_1416
    unless_null $P101, vivify_470
    new $P101, "Undef"
  vivify_470:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "parametric" :anon :subid("52_1339198188.86") :outer("146_1339198188.86")
    .param pmc param_1418
    .param pmc param_1419
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 490
    .lex "self", param_1418
    .lex "$obj", param_1419
    .return (1)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "specialize" :anon :subid("53_1339198188.86") :outer("146_1339198188.86")
    .param pmc param_1423
    .param pmc param_1424
    .param pmc param_1425
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 496
    .const 'Sub' $P1446 = "150_1339198188.86" 
    capture_lex $P1446
    .const 'Sub' $P1439 = "149_1339198188.86" 
    capture_lex $P1439
    .const 'Sub' $P1434 = "148_1339198188.86" 
    capture_lex $P1434
    .const 'Sub' $P1429 = "147_1339198188.86" 
    capture_lex $P1429
    new $P1422, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P1422, control_1421
    push_eh $P1422
    .lex "self", param_1423
    .lex "$obj", param_1424
    .lex "$class_arg", param_1425
.annotate 'line', 502
    new $P101, "Undef"
    set $P1426, $P101
    .lex "$irole", $P1426
.annotate 'line', 499
    set $P102, param_1423
    nqp_decontainerize $P103, $P102
    nqp_get_sc_object $P104, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 5
    repr_get_attr_obj $P105, $P103, $P104, "$!body_block", 6
    unless_null $P105, vivify_471
    new $P105, "Undef"
  vivify_471:
    set $P106, param_1425
    unless_null $P106, vivify_472
    new $P106, "Undef"
  vivify_472:
    $P105($P106)
.annotate 'line', 502
    find_lex $P102, "NQPConcreteRoleHOW"
    set $P103, param_1423
    nqp_decontainerize $P104, $P103
    nqp_get_sc_object $P105, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 5
    repr_get_attr_obj $P106, $P104, $P105, "$!name", 0
    unless_null $P106, vivify_473
    new $P106, "Undef"
  vivify_473:
    set $P107, param_1424
    unless_null $P107, vivify_474
    new $P107, "Undef"
  vivify_474:
    $P108 = $P102."new_type"($P106 :named("name"), $P107 :named("instance_of"))
    set $P1426, $P108
.annotate 'line', 506
    set $P103, param_1423
    nqp_decontainerize $P104, $P103
    nqp_get_sc_object $P105, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 5
    repr_get_attr_obj $P1427, $P104, $P105, "%!attributes", 1
    unless_null $P1427, vivify_475
    $P1427 = root_new ['parrot';'Hash']
  vivify_475:
    defined $I100, $P1427
    unless $I100, for_undef_476
    iter $P102, $P1427
    new $P107, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P107, loop1431_handler
    push_eh $P107
  loop1431_test:
    unless $P102, loop1431_done
    shift $P106, $P102
  loop1431_redo:
    .const 'Sub' $P1429 = "147_1339198188.86" 
    capture_lex $P1429
    $P1429($P106)
  loop1431_next:
    goto loop1431_test
  loop1431_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop1431_next
    eq $P108, .CONTROL_LOOP_REDO, loop1431_redo
  loop1431_done:
    pop_eh 
  for_undef_476:
.annotate 'line', 511
    set $P103, param_1423
    nqp_decontainerize $P104, $P103
    nqp_get_sc_object $P105, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 5
    repr_get_attr_obj $P1432, $P104, $P105, "%!methods", 2
    unless_null $P1432, vivify_480
    $P1432 = root_new ['parrot';'Hash']
  vivify_480:
    defined $I100, $P1432
    unless $I100, for_undef_481
    iter $P102, $P1432
    new $P107, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P107, loop1436_handler
    push_eh $P107
  loop1436_test:
    unless $P102, loop1436_done
    shift $P106, $P102
  loop1436_redo:
    .const 'Sub' $P1434 = "148_1339198188.86" 
    capture_lex $P1434
    $P1434($P106)
  loop1436_next:
    goto loop1436_test
  loop1436_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop1436_next
    eq $P108, .CONTROL_LOOP_REDO, loop1436_redo
  loop1436_done:
    pop_eh 
  for_undef_481:
.annotate 'line', 514
    set $P103, param_1423
    nqp_decontainerize $P104, $P103
    nqp_get_sc_object $P105, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 5
    repr_get_attr_obj $P1437, $P104, $P105, "@!multi_methods_to_incorporate", 3
    unless_null $P1437, vivify_486
    $P1437 = root_new ['parrot';'ResizablePMCArray']
  vivify_486:
    defined $I100, $P1437
    unless $I100, for_undef_487
    iter $P102, $P1437
    new $P107, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P107, loop1443_handler
    push_eh $P107
  loop1443_test:
    unless $P102, loop1443_done
    shift $P106, $P102
  loop1443_redo:
    .const 'Sub' $P1439 = "149_1339198188.86" 
    capture_lex $P1439
    $P1439($P106)
  loop1443_next:
    goto loop1443_test
  loop1443_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop1443_next
    eq $P108, .CONTROL_LOOP_REDO, loop1443_redo
  loop1443_done:
    pop_eh 
  for_undef_487:
.annotate 'line', 519
    set $P103, param_1423
    nqp_decontainerize $P104, $P103
    nqp_get_sc_object $P105, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 5
    repr_get_attr_obj $P1444, $P104, $P105, "@!roles", 4
    unless_null $P1444, vivify_494
    $P1444 = root_new ['parrot';'ResizablePMCArray']
  vivify_494:
    defined $I100, $P1444
    unless $I100, for_undef_495
    iter $P102, $P1444
    new $P108, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P108, loop1449_handler
    push_eh $P108
  loop1449_test:
    unless $P102, loop1449_done
    shift $P106, $P102
  loop1449_redo:
    .const 'Sub' $P1446 = "150_1339198188.86" 
    capture_lex $P1446
    $P1446($P106)
  loop1449_next:
    goto loop1449_test
  loop1449_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P109, exception, 'type'
    eq $P109, .CONTROL_LOOP_NEXT, loop1449_next
    eq $P109, .CONTROL_LOOP_REDO, loop1449_redo
  loop1449_done:
    pop_eh 
  for_undef_495:
.annotate 'line', 525
    set $P102, $P1426
    unless_null $P102, vivify_502
    new $P102, "Undef"
  vivify_502:
    get_how $P103, $P102
    set $P104, $P1426
    unless_null $P104, vivify_503
    new $P104, "Undef"
  vivify_503:
    $P103."compose"($P104)
.annotate 'line', 526
    new $P102, "Exception"
    set $P102['type'], .CONTROL_RETURN
    set $P103, $P1426
    unless_null $P103, vivify_504
    new $P103, "Undef"
  vivify_504:
    setattribute $P102, 'payload', $P103
    throw $P102
.annotate 'line', 496
    .return ()
  control_1421:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P102, exception, "payload"
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1428"  :anon :subid("147_1339198188.86") :outer("53_1339198188.86")
    .param pmc param_1430
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 506
    .lex "$_", param_1430
.annotate 'line', 507
    find_lex $P107, "$irole"
    unless_null $P107, vivify_477
    new $P107, "Undef"
  vivify_477:
    get_how $P108, $P107
    find_lex $P109, "$irole"
    unless_null $P109, vivify_478
    new $P109, "Undef"
  vivify_478:
    find_lex $P110, "$_"
    unless_null $P110, vivify_479
    new $P110, "Undef"
  vivify_479:
    $P111 = $P110."value"()
    $P112 = $P108."add_attribute"($P109, $P111)
.annotate 'line', 506
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1433"  :anon :subid("148_1339198188.86") :outer("53_1339198188.86")
    .param pmc param_1435
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 511
    .lex "$_", param_1435
.annotate 'line', 512
    find_lex $P107, "$irole"
    unless_null $P107, vivify_482
    new $P107, "Undef"
  vivify_482:
    get_how $P108, $P107
    find_lex $P109, "$irole"
    unless_null $P109, vivify_483
    new $P109, "Undef"
  vivify_483:
    find_lex $P110, "$_"
    unless_null $P110, vivify_484
    new $P110, "Undef"
  vivify_484:
    $P111 = $P110."key"()
    find_lex $P112, "$_"
    unless_null $P112, vivify_485
    new $P112, "Undef"
  vivify_485:
    $P113 = $P112."value"()
    $P114 = $P113."clone"()
    $P115 = $P108."add_method"($P109, $P111, $P114)
.annotate 'line', 511
    .return ($P115)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1438"  :anon :subid("149_1339198188.86") :outer("53_1339198188.86")
    .param pmc param_1440
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 514
    .lex "$_", param_1440
.annotate 'line', 515
    find_lex $P107, "$irole"
    unless_null $P107, vivify_488
    new $P107, "Undef"
  vivify_488:
    get_how $P108, $P107
    find_lex $P109, "$irole"
    unless_null $P109, vivify_489
    new $P109, "Undef"
  vivify_489:
    find_lex $P1441, "$_"
    unless_null $P1441, vivify_490
    $P1441 = root_new ['parrot';'Hash']
  vivify_490:
    set $P110, $P1441["name"]
    unless_null $P110, vivify_491
    new $P110, "Undef"
  vivify_491:
    find_lex $P1442, "$_"
    unless_null $P1442, vivify_492
    $P1442 = root_new ['parrot';'Hash']
  vivify_492:
    set $P111, $P1442["code"]
    unless_null $P111, vivify_493
    new $P111, "Undef"
  vivify_493:
    $P112 = "reify_method"($P111)
    $P113 = $P108."add_multi_method"($P109, $P110, $P112)
.annotate 'line', 514
    .return ($P113)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1445"  :anon :subid("150_1339198188.86") :outer("53_1339198188.86")
    .param pmc param_1448
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 520
    new $P107, "Undef"
    set $P1447, $P107
    .lex "$specialized", $P1447
    .lex "$_", param_1448
    find_lex $P108, "$irole"
    unless_null $P108, vivify_496
    new $P108, "Undef"
  vivify_496:
    get_how $P109, $P108
    find_lex $P110, "$irole"
    unless_null $P110, vivify_497
    new $P110, "Undef"
  vivify_497:
    find_lex $P111, "$class_arg"
    unless_null $P111, vivify_498
    new $P111, "Undef"
  vivify_498:
    $P112 = $P109."specialize"($P110, $P111)
    set $P1447, $P112
.annotate 'line', 521
    find_lex $P108, "$irole"
    unless_null $P108, vivify_499
    new $P108, "Undef"
  vivify_499:
    get_how $P109, $P108
    find_lex $P110, "$irole"
    unless_null $P110, vivify_500
    new $P110, "Undef"
  vivify_500:
    set $P111, $P1447
    unless_null $P111, vivify_501
    new $P111, "Undef"
  vivify_501:
    $P112 = $P109."add_role"($P110, $P111)
.annotate 'line', 519
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "methods" :anon :subid("54_1339198188.86") :outer("146_1339198188.86")
    .param pmc param_1451
    .param pmc param_1452
    .param pmc param_1453 :optional :named("local")
    .param int has_param_1453 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 533
    .const 'Sub' $P1459 = "151_1339198188.86" 
    capture_lex $P1459
    .lex "self", param_1451
    .lex "$obj", param_1452
    if has_param_1453, optparam_505
    new $P101, "Undef"
    set param_1453, $P101
  optparam_505:
    .lex "$local", param_1453
.annotate 'line', 534
    $P1455 = root_new ['parrot';'ResizablePMCArray']
    set $P1454, $P1455
    .lex "@meths", $P1454
.annotate 'line', 533
    set $P1456, $P1454
    unless_null $P1456, vivify_506
    $P1456 = root_new ['parrot';'ResizablePMCArray']
  vivify_506:
.annotate 'line', 535
    set $P103, param_1451
    nqp_decontainerize $P104, $P103
    nqp_get_sc_object $P105, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 5
    repr_get_attr_obj $P1457, $P104, $P105, "%!methods", 2
    unless_null $P1457, vivify_507
    $P1457 = root_new ['parrot';'Hash']
  vivify_507:
    defined $I100, $P1457
    unless $I100, for_undef_508
    iter $P102, $P1457
    new $P107, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P107, loop1462_handler
    push_eh $P107
  loop1462_test:
    unless $P102, loop1462_done
    shift $P106, $P102
  loop1462_redo:
    .const 'Sub' $P1459 = "151_1339198188.86" 
    capture_lex $P1459
    $P1459($P106)
  loop1462_next:
    goto loop1462_test
  loop1462_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop1462_next
    eq $P108, .CONTROL_LOOP_REDO, loop1462_redo
  loop1462_done:
    pop_eh 
  for_undef_508:
.annotate 'line', 533
    set $P1463, $P1454
    unless_null $P1463, vivify_511
    $P1463 = root_new ['parrot';'ResizablePMCArray']
  vivify_511:
    .return ($P1463)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1458"  :anon :subid("151_1339198188.86") :outer("54_1339198188.86")
    .param pmc param_1460
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 535
    .lex "$_", param_1460
.annotate 'line', 536
    find_lex $P1461, "@meths"
    unless_null $P1461, vivify_509
    $P1461 = root_new ['parrot';'ResizablePMCArray']
  vivify_509:
    find_lex $P107, "$_"
    unless_null $P107, vivify_510
    new $P107, "Undef"
  vivify_510:
    $P108 = $P107."value"()
    $P109 = $P1461."push"($P108)
.annotate 'line', 535
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "method_table" :anon :subid("55_1339198188.86") :outer("146_1339198188.86")
    .param pmc param_1465
    .param pmc param_1466
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 541
    .lex "self", param_1465
    .lex "$obj", param_1466
    set $P101, param_1465
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 5
    repr_get_attr_obj $P1467, $P102, $P103, "%!methods", 2
    unless_null $P1467, vivify_512
    $P1467 = root_new ['parrot';'Hash']
  vivify_512:
    .return ($P1467)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "name" :anon :subid("56_1339198188.86") :outer("146_1339198188.86")
    .param pmc param_1469
    .param pmc param_1470
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 545
    .lex "self", param_1469
    .lex "$obj", param_1470
    set $P101, param_1469
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 5
    repr_get_attr_obj $P104, $P102, $P103, "$!name", 0
    unless_null $P104, vivify_513
    new $P104, "Undef"
  vivify_513:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "attributes" :anon :subid("57_1339198188.86") :outer("146_1339198188.86")
    .param pmc param_1472
    .param pmc param_1473
    .param pmc param_1474 :optional :named("local")
    .param int has_param_1474 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 549
    .const 'Sub' $P1480 = "152_1339198188.86" 
    capture_lex $P1480
    .lex "self", param_1472
    .lex "$obj", param_1473
    if has_param_1474, optparam_514
    new $P101, "Undef"
    set param_1474, $P101
  optparam_514:
    .lex "$local", param_1474
.annotate 'line', 550
    $P1476 = root_new ['parrot';'ResizablePMCArray']
    set $P1475, $P1476
    .lex "@attrs", $P1475
.annotate 'line', 549
    set $P1477, $P1475
    unless_null $P1477, vivify_515
    $P1477 = root_new ['parrot';'ResizablePMCArray']
  vivify_515:
.annotate 'line', 551
    set $P103, param_1472
    nqp_decontainerize $P104, $P103
    nqp_get_sc_object $P105, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 5
    repr_get_attr_obj $P1478, $P104, $P105, "%!attributes", 1
    unless_null $P1478, vivify_516
    $P1478 = root_new ['parrot';'Hash']
  vivify_516:
    defined $I100, $P1478
    unless $I100, for_undef_517
    iter $P102, $P1478
    new $P107, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P107, loop1483_handler
    push_eh $P107
  loop1483_test:
    unless $P102, loop1483_done
    shift $P106, $P102
  loop1483_redo:
    .const 'Sub' $P1480 = "152_1339198188.86" 
    capture_lex $P1480
    $P1480($P106)
  loop1483_next:
    goto loop1483_test
  loop1483_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop1483_next
    eq $P108, .CONTROL_LOOP_REDO, loop1483_redo
  loop1483_done:
    pop_eh 
  for_undef_517:
.annotate 'line', 549
    set $P1484, $P1475
    unless_null $P1484, vivify_520
    $P1484 = root_new ['parrot';'ResizablePMCArray']
  vivify_520:
    .return ($P1484)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1479"  :anon :subid("152_1339198188.86") :outer("57_1339198188.86")
    .param pmc param_1481
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 551
    .lex "$_", param_1481
.annotate 'line', 552
    find_lex $P1482, "@attrs"
    unless_null $P1482, vivify_518
    $P1482 = root_new ['parrot';'ResizablePMCArray']
  vivify_518:
    find_lex $P107, "$_"
    unless_null $P107, vivify_519
    new $P107, "Undef"
  vivify_519:
    $P108 = $P107."value"()
    $P109 = $P1482."push"($P108)
.annotate 'line', 551
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "roles" :anon :subid("58_1339198188.86") :outer("146_1339198188.86")
    .param pmc param_1486
    .param pmc param_1487
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 557
    .lex "self", param_1486
    .lex "$obj", param_1487
    set $P101, param_1486
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 5
    repr_get_attr_obj $P1488, $P102, $P103, "@!roles", 4
    unless_null $P1488, vivify_521
    $P1488 = root_new ['parrot';'ResizablePMCArray']
  vivify_521:
    .return ($P1488)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1490"  :subid("153_1339198188.86") :outer("123_1339198188.86")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 567
    .const 'Sub' $P2031 = "95_1339198188.86" 
    capture_lex $P2031
    .const 'Sub' $P2024 = "94_1339198188.86" 
    capture_lex $P2024
    .const 'Sub' $P2009 = "93_1339198188.86" 
    capture_lex $P2009
    .const 'Sub' $P1980 = "92_1339198188.86" 
    capture_lex $P1980
    .const 'Sub' $P1964 = "91_1339198188.86" 
    capture_lex $P1964
    .const 'Sub' $P1953 = "90_1339198188.86" 
    capture_lex $P1953
    .const 'Sub' $P1941 = "89_1339198188.86" 
    capture_lex $P1941
    .const 'Sub' $P1936 = "88_1339198188.86" 
    capture_lex $P1936
    .const 'Sub' $P1931 = "87_1339198188.86" 
    capture_lex $P1931
    .const 'Sub' $P1917 = "86_1339198188.86" 
    capture_lex $P1917
    .const 'Sub' $P1914 = "85_1339198188.86" 
    capture_lex $P1914
    .const 'Sub' $P1911 = "84_1339198188.86" 
    capture_lex $P1911
    .const 'Sub' $P1908 = "83_1339198188.86" 
    capture_lex $P1908
    .const 'Sub' $P1904 = "82_1339198188.86" 
    capture_lex $P1904
    .const 'Sub' $P1882 = "81_1339198188.86" 
    capture_lex $P1882
    .const 'Sub' $P1877 = "80_1339198188.86" 
    capture_lex $P1877
    .const 'Sub' $P1873 = "79_1339198188.86" 
    capture_lex $P1873
    .const 'Sub' $P1866 = "78_1339198188.86" 
    capture_lex $P1866
    .const 'Sub' $P1843 = "77_1339198188.86" 
    capture_lex $P1843
    .const 'Sub' $P1820 = "76_1339198188.86" 
    capture_lex $P1820
    .const 'Sub' $P1815 = "75_1339198188.86" 
    capture_lex $P1815
    .const 'Sub' $P1794 = "74_1339198188.86" 
    capture_lex $P1794
    .const 'Sub' $P1775 = "73_1339198188.86" 
    capture_lex $P1775
    .const 'Sub' $P1719 = "72_1339198188.86" 
    capture_lex $P1719
    .const 'Sub' $P1689 = "71_1339198188.86" 
    capture_lex $P1689
    .const 'Sub' $P1681 = "70_1339198188.86" 
    capture_lex $P1681
    .const 'Sub' $P1673 = "69_1339198188.86" 
    capture_lex $P1673
    .const 'Sub' $P1661 = "68_1339198188.86" 
    capture_lex $P1661
    .const 'Sub' $P1657 = "67_1339198188.86" 
    capture_lex $P1657
    .const 'Sub' $P1643 = "66_1339198188.86" 
    capture_lex $P1643
    .const 'Sub' $P1635 = "65_1339198188.86" 
    capture_lex $P1635
    .const 'Sub' $P1622 = "64_1339198188.86" 
    capture_lex $P1622
    .const 'Sub' $P1608 = "63_1339198188.86" 
    capture_lex $P1608
    .const 'Sub' $P1602 = "62_1339198188.86" 
    capture_lex $P1602
    .const 'Sub' $P1599 = "61_1339198188.86" 
    capture_lex $P1599
    .const 'Sub' $P1595 = "60_1339198188.86" 
    capture_lex $P1595
    .const 'Sub' $P1593 = "59_1339198188.86" 
    capture_lex $P1593
    .const 'Sub' $P1528 = "157_1339198188.86" 
    capture_lex $P1528
    .const 'Sub' $P1496 = "154_1339198188.86" 
    capture_lex $P1496
.annotate 'line', 602
    $P1493 = root_new ['parrot';'Hash']
    set $P1492, $P1493
    .lex "%caches", $P1492
.annotate 'line', 612
    new $P100, "Undef"
    set $P1494, $P100
    .lex "$archetypes", $P1494
.annotate 'line', 835
    .const 'Sub' $P1496 = "154_1339198188.86" 
    newclosure $P1526, $P1496
    set $P1495, $P1526
    .lex "compute_c3_mro", $P1495
.annotate 'line', 861
    .const 'Sub' $P1528 = "157_1339198188.86" 
    newclosure $P1589, $P1528
    set $P1527, $P1589
    .lex "c3_merge", $P1527
.annotate 'line', 612
    .lex "$?PACKAGE", $P1590
    .lex "$?CLASS", $P1591
.annotate 'line', 567
    set $P1592, $P1492
    unless_null $P1592, vivify_584
    $P1592 = root_new ['parrot';'Hash']
  vivify_584:
.annotate 'line', 612
    find_lex $P107, "Archetypes"
    $P108 = $P107."new"(1 :named("nominal"), 1 :named("inheritable"))
    set $P1494, $P108
.annotate 'line', 567
    set $P107, $P1495
    set $P107, $P1527
.annotate 'line', 1129
    .const 'Sub' $P2031 = "95_1339198188.86" 
    newclosure $P2034, $P2031
.annotate 'line', 567
    .return ($P2034)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "compute_c3_mro"  :subid("154_1339198188.86") :outer("153_1339198188.86")
    .param pmc param_1499
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 835
    .const 'Sub' $P1511 = "155_1339198188.86" 
    capture_lex $P1511
    new $P1498, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P1498, control_1497
    push_eh $P1498
    .lex "$class", param_1499
.annotate 'line', 836
    $P1501 = root_new ['parrot';'ResizablePMCArray']
    set $P1500, $P1501
    .lex "@immediate_parents", $P1500
.annotate 'line', 839
    $P1503 = root_new ['parrot';'ResizablePMCArray']
    set $P1502, $P1503
    .lex "@result", $P1502
.annotate 'line', 836
    set $P101, param_1499
    unless_null $P101, vivify_522
    new $P101, "Undef"
  vivify_522:
    get_how $P102, $P101
    set $P103, param_1499
    unless_null $P103, vivify_523
    new $P103, "Undef"
  vivify_523:
    $P104 = $P102."parents"($P103, 1 :named("local"))
    set $P1500, $P104
.annotate 'line', 835
    set $P1504, $P1502
    unless_null $P1504, vivify_524
    $P1504 = root_new ['parrot';'ResizablePMCArray']
  vivify_524:
.annotate 'line', 840
    set $P1506, $P1500
    unless_null $P1506, vivify_525
    $P1506 = root_new ['parrot';'ResizablePMCArray']
  vivify_525:
    set $N100, $P1506
    unless $N100, if_1505_end
.annotate 'line', 841
    set $P1508, $P1500
    unless_null $P1508, vivify_526
    $P1508 = root_new ['parrot';'ResizablePMCArray']
  vivify_526:
    set $N101, $P1508
    set $N102, 1
    iseq $I100, $N101, $N102
    if $I100, if_1507
.annotate 'line', 843
    .const 'Sub' $P1511 = "155_1339198188.86" 
    capture_lex $P1511
    $P1511()
    goto if_1507_end
  if_1507:
.annotate 'line', 842
    set $P1509, $P1500
    unless_null $P1509, vivify_535
    $P1509 = root_new ['parrot';'ResizablePMCArray']
  vivify_535:
    set $P101, $P1509[0]
    unless_null $P101, vivify_536
    new $P101, "Undef"
  vivify_536:
    $P102 = "compute_c3_mro"($P101)
    set $P1502, $P102
  if_1507_end:
  if_1505_end:
.annotate 'line', 856
    set $P1524, $P1502
    unless_null $P1524, vivify_537
    $P1524 = root_new ['parrot';'ResizablePMCArray']
  vivify_537:
    set $P101, param_1499
    unless_null $P101, vivify_538
    new $P101, "Undef"
  vivify_538:
    $P1524."unshift"($P101)
.annotate 'line', 857
    new $P101, "Exception"
    set $P101['type'], .CONTROL_RETURN
    set $P1525, $P1502
    unless_null $P1525, vivify_539
    $P1525 = root_new ['parrot';'ResizablePMCArray']
  vivify_539:
    setattribute $P101, 'payload', $P1525
    throw $P101
.annotate 'line', 835
    .return ()
  control_1497:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P101, exception, "payload"
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1510"  :anon :subid("155_1339198188.86") :outer("154_1339198188.86")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 843
    .const 'Sub' $P1517 = "156_1339198188.86" 
    capture_lex $P1517
.annotate 'line', 846
    $P1513 = root_new ['parrot';'ResizablePMCArray']
    set $P1512, $P1513
    .lex "@merge_list", $P1512
.annotate 'line', 843
    set $P1514, $P1512
    unless_null $P1514, vivify_527
    $P1514 = root_new ['parrot';'ResizablePMCArray']
  vivify_527:
.annotate 'line', 847
    find_lex $P1515, "@immediate_parents"
    unless_null $P1515, vivify_528
    $P1515 = root_new ['parrot';'ResizablePMCArray']
  vivify_528:
    defined $I101, $P1515
    unless $I101, for_undef_529
    iter $P101, $P1515
    new $P103, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P103, loop1520_handler
    push_eh $P103
  loop1520_test:
    unless $P101, loop1520_done
    shift $P102, $P101
  loop1520_redo:
    .const 'Sub' $P1517 = "156_1339198188.86" 
    capture_lex $P1517
    $P1517($P102)
  loop1520_next:
    goto loop1520_test
  loop1520_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P104, exception, 'type'
    eq $P104, .CONTROL_LOOP_NEXT, loop1520_next
    eq $P104, .CONTROL_LOOP_REDO, loop1520_redo
  loop1520_done:
    pop_eh 
  for_undef_529:
.annotate 'line', 850
    set $P1521, $P1512
    unless_null $P1521, vivify_532
    $P1521 = root_new ['parrot';'ResizablePMCArray']
  vivify_532:
    find_lex $P1522, "@immediate_parents"
    unless_null $P1522, vivify_533
    $P1522 = root_new ['parrot';'ResizablePMCArray']
  vivify_533:
    $P1521."push"($P1522)
.annotate 'line', 851
    set $P1523, $P1512
    unless_null $P1523, vivify_534
    $P1523 = root_new ['parrot';'ResizablePMCArray']
  vivify_534:
    $P101 = "c3_merge"($P1523)
    store_lex "@result", $P101
.annotate 'line', 843
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1516"  :anon :subid("156_1339198188.86") :outer("155_1339198188.86")
    .param pmc param_1518
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 847
    .lex "$_", param_1518
.annotate 'line', 848
    find_lex $P1519, "@merge_list"
    unless_null $P1519, vivify_530
    $P1519 = root_new ['parrot';'ResizablePMCArray']
  vivify_530:
    find_lex $P103, "$_"
    unless_null $P103, vivify_531
    new $P103, "Undef"
  vivify_531:
    $P104 = "compute_c3_mro"($P103)
    $P105 = $P1519."push"($P104)
.annotate 'line', 847
    .return ($P105)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "c3_merge"  :subid("157_1339198188.86") :outer("153_1339198188.86")
    .param pmc param_1531
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 861
    .const 'Sub' $P1572 = "162_1339198188.86" 
    capture_lex $P1572
    .const 'Sub' $P1541 = "158_1339198188.86" 
    capture_lex $P1541
    new $P1530, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P1530, control_1529
    push_eh $P1530
    .lex "@merge_list", param_1531
.annotate 'line', 862
    $P1533 = root_new ['parrot';'ResizablePMCArray']
    set $P1532, $P1533
    .lex "@result", $P1532
.annotate 'line', 863
    new $P102, "Undef"
    set $P1534, $P102
    .lex "$accepted", $P1534
.annotate 'line', 864
    new $P103, "Undef"
    set $P1535, $P103
    .lex "$something_accepted", $P1535
.annotate 'line', 865
    new $P104, "Undef"
    set $P1536, $P104
    .lex "$cand_count", $P1536
.annotate 'line', 908
    new $P105, "Undef"
    set $P1537, $P105
    .lex "$i", $P1537
.annotate 'line', 861
    set $P1538, $P1532
    unless_null $P1538, vivify_540
    $P1538 = root_new ['parrot';'ResizablePMCArray']
  vivify_540:
    set $P106, $P1534
    unless_null $P106, vivify_541
    new $P106, "Undef"
  vivify_541:
.annotate 'line', 864
    new $P106, "Float"
    assign $P106, 0
    set $P1535, $P106
.annotate 'line', 865
    new $P106, "Float"
    assign $P106, 0
    set $P1536, $P106
.annotate 'line', 868
    set $P1539, param_1531
    unless_null $P1539, vivify_542
    $P1539 = root_new ['parrot';'ResizablePMCArray']
  vivify_542:
    defined $I100, $P1539
    unless $I100, for_undef_543
    iter $P106, $P1539
    new $P109, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P109, loop1566_handler
    push_eh $P109
  loop1566_test:
    unless $P106, loop1566_done
    shift $P107, $P106
  loop1566_redo:
    .const 'Sub' $P1541 = "158_1339198188.86" 
    capture_lex $P1541
    $P1541($P107)
  loop1566_next:
    goto loop1566_test
  loop1566_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P110, exception, 'type'
    eq $P110, .CONTROL_LOOP_NEXT, loop1566_next
    eq $P110, .CONTROL_LOOP_REDO, loop1566_redo
  loop1566_done:
    pop_eh 
  for_undef_543:
.annotate 'line', 898
    set $P106, $P1536
    unless_null $P106, vivify_562
    new $P106, "Undef"
  vivify_562:
    set $N100, $P106
    set $N101, 0
    iseq $I100, $N100, $N101
    unless $I100, if_1567_end
.annotate 'line', 899
    new $P107, "Exception"
    set $P107['type'], .CONTROL_RETURN
    set $P1568, $P1532
    unless_null $P1568, vivify_563
    $P1568 = root_new ['parrot';'ResizablePMCArray']
  vivify_563:
    setattribute $P107, 'payload', $P1568
    throw $P107
  if_1567_end:
.annotate 'line', 903
    set $P106, $P1535
    unless_null $P106, vivify_564
    new $P106, "Undef"
  vivify_564:
    if $P106, unless_1569_end
.annotate 'line', 904
    new $P107, "String"
    assign $P107, "Could not build C3 linearization: ambiguous hierarchy"
    die $P107
  unless_1569_end:
.annotate 'line', 908
    new $P106, "Float"
    assign $P106, 0
    set $P1537, $P106
.annotate 'line', 909
    new $P107, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P107, loop1585_handler
    push_eh $P107
  loop1585_test:
    set $P106, $P1537
    unless_null $P106, vivify_565
    new $P106, "Undef"
  vivify_565:
    set $N100, $P106
    set $P1570, param_1531
    unless_null $P1570, vivify_566
    $P1570 = root_new ['parrot';'ResizablePMCArray']
  vivify_566:
    set $N101, $P1570
    islt $I100, $N100, $N101
    unless $I100, loop1585_done
  loop1585_redo:
    .const 'Sub' $P1572 = "162_1339198188.86" 
    capture_lex $P1572
    $P1572()
  loop1585_next:
    goto loop1585_test
  loop1585_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P109, exception, 'type'
    eq $P109, .CONTROL_LOOP_NEXT, loop1585_next
    eq $P109, .CONTROL_LOOP_REDO, loop1585_redo
  loop1585_done:
    pop_eh 
.annotate 'line', 922
    set $P1586, param_1531
    unless_null $P1586, vivify_580
    $P1586 = root_new ['parrot';'ResizablePMCArray']
  vivify_580:
    $P106 = "c3_merge"($P1586)
    set $P1532, $P106
.annotate 'line', 923
    set $P1587, $P1532
    unless_null $P1587, vivify_581
    $P1587 = root_new ['parrot';'ResizablePMCArray']
  vivify_581:
    set $P106, $P1534
    unless_null $P106, vivify_582
    new $P106, "Undef"
  vivify_582:
    $P1587."unshift"($P106)
.annotate 'line', 924
    new $P106, "Exception"
    set $P106['type'], .CONTROL_RETURN
    set $P1588, $P1532
    unless_null $P1588, vivify_583
    $P1588 = root_new ['parrot';'ResizablePMCArray']
  vivify_583:
    setattribute $P106, 'payload', $P1588
    throw $P106
.annotate 'line', 861
    .return ()
  control_1529:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P106, exception, "payload"
    .return ($P106)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1540"  :anon :subid("158_1339198188.86") :outer("157_1339198188.86")
    .param pmc param_1544
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 868
    .const 'Sub' $P1548 = "159_1339198188.86" 
    capture_lex $P1548
.annotate 'line', 869
    $P1543 = root_new ['parrot';'ResizablePMCArray']
    set $P1542, $P1543
    .lex "@cand_list", $P1542
    .lex "$_", param_1544
    find_lex $P108, "$_"
    unless_null $P108, vivify_544
    new $P108, "Undef"
  vivify_544:
    set $P1542, $P108
.annotate 'line', 870
    set $P1546, $P1542
    unless_null $P1546, vivify_545
    $P1546 = root_new ['parrot';'ResizablePMCArray']
  vivify_545:
    set $N100, $P1546
    if $N100, if_1545
    new $P108, 'Float'
    set $P108, $N100
    goto if_1545_end
  if_1545:
    .const 'Sub' $P1548 = "159_1339198188.86" 
    capture_lex $P1548
    $P112 = $P1548()
    set $P108, $P112
  if_1545_end:
.annotate 'line', 868
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1547"  :anon :subid("159_1339198188.86") :outer("158_1339198188.86")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 870
    .const 'Sub' $P1554 = "160_1339198188.86" 
    capture_lex $P1554
.annotate 'line', 871
    new $P109, "Undef"
    set $P1549, $P109
    .lex "$rejected", $P1549
.annotate 'line', 872
    new $P110, "Undef"
    set $P1550, $P110
    .lex "$cand_class", $P1550
.annotate 'line', 871
    new $P111, "Float"
    assign $P111, 0
    set $P1549, $P111
.annotate 'line', 872
    find_lex $P1551, "@cand_list"
    unless_null $P1551, vivify_546
    $P1551 = root_new ['parrot';'ResizablePMCArray']
  vivify_546:
    set $P111, $P1551[0]
    unless_null $P111, vivify_547
    new $P111, "Undef"
  vivify_547:
    set $P1550, $P111
.annotate 'line', 873
    find_lex $P111, "$cand_count"
    unless_null $P111, vivify_548
    new $P111, "Undef"
  vivify_548:
    add $P112, $P111, 1
    store_lex "$cand_count", $P112
.annotate 'line', 874
    find_lex $P1552, "@merge_list"
    unless_null $P1552, vivify_549
    $P1552 = root_new ['parrot';'ResizablePMCArray']
  vivify_549:
    defined $I101, $P1552
    unless $I101, for_undef_550
    iter $P111, $P1552
    new $P114, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P114, loop1564_handler
    push_eh $P114
  loop1564_test:
    unless $P111, loop1564_done
    shift $P112, $P111
  loop1564_redo:
    .const 'Sub' $P1554 = "160_1339198188.86" 
    capture_lex $P1554
    $P1554($P112)
  loop1564_next:
    goto loop1564_test
  loop1564_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P115, exception, 'type'
    eq $P115, .CONTROL_LOOP_NEXT, loop1564_next
    eq $P115, .CONTROL_LOOP_REDO, loop1564_redo
  loop1564_done:
    pop_eh 
  for_undef_550:
.annotate 'line', 889
    set $P112, $P1549
    unless_null $P112, vivify_560
    new $P112, "Undef"
  vivify_560:
    unless $P112, unless_1565
    set $P111, $P112
    goto unless_1565_end
  unless_1565:
.annotate 'line', 890
    set $P113, $P1550
    unless_null $P113, vivify_561
    new $P113, "Undef"
  vivify_561:
    store_lex "$accepted", $P113
.annotate 'line', 891
    new $P113, "Float"
    assign $P113, 1
    store_lex "$something_accepted", $P113
.annotate 'line', 892
    die 0, .CONTROL_LOOP_LAST
  unless_1565_end:
.annotate 'line', 870
    .return ($P111)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1553"  :anon :subid("160_1339198188.86") :outer("159_1339198188.86")
    .param pmc param_1555
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 874
    .const 'Sub' $P1559 = "161_1339198188.86" 
    capture_lex $P1559
    .lex "$_", param_1555
.annotate 'line', 876
    find_lex $P114, "$_"
    unless_null $P114, vivify_551
    new $P114, "Undef"
  vivify_551:
    find_lex $P1557, "@cand_list"
    unless_null $P1557, vivify_552
    $P1557 = root_new ['parrot';'ResizablePMCArray']
  vivify_552:
    issame $I102, $P114, $P1557
    unless $I102, unless_1556
    new $P113, 'Integer'
    set $P113, $I102
    goto unless_1556_end
  unless_1556:
    .const 'Sub' $P1559 = "161_1339198188.86" 
    capture_lex $P1559
    $P116 = $P1559()
    set $P113, $P116
  unless_1556_end:
.annotate 'line', 874
    .return ($P113)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1558"  :anon :subid("161_1339198188.86") :outer("160_1339198188.86")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 878
    new $P115, "Undef"
    set $P1560, $P115
    .lex "$cur_pos", $P1560
    new $P116, "Float"
    assign $P116, 1
    set $P1560, $P116
.annotate 'line', 879
    new $P118, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P118, loop1563_handler
    push_eh $P118
  loop1563_test:
    set $P116, $P1560
    unless_null $P116, vivify_553
    new $P116, "Undef"
  vivify_553:
    set $N101, $P116
    find_lex $P117, "$_"
    unless_null $P117, vivify_554
    new $P117, "Undef"
  vivify_554:
    set $N102, $P117
    isle $I103, $N101, $N102
    unless $I103, loop1563_done
  loop1563_redo:
.annotate 'line', 880
    set $P118, $P1560
    unless_null $P118, vivify_555
    new $P118, "Undef"
  vivify_555:
    set $I104, $P118
    find_lex $P1562, "$_"
    unless_null $P1562, vivify_556
    $P1562 = root_new ['parrot';'ResizablePMCArray']
  vivify_556:
    set $P119, $P1562[$I104]
    unless_null $P119, vivify_557
    new $P119, "Undef"
  vivify_557:
    find_lex $P120, "$cand_class"
    unless_null $P120, vivify_558
    new $P120, "Undef"
  vivify_558:
    issame $I105, $P119, $P120
    unless $I105, if_1561_end
.annotate 'line', 881
    new $P121, "Float"
    assign $P121, 1
    store_lex "$rejected", $P121
  if_1561_end:
.annotate 'line', 883
    set $P118, $P1560
    unless_null $P118, vivify_559
    new $P118, "Undef"
  vivify_559:
    add $P119, $P118, 1
    set $P1560, $P119
  loop1563_next:
.annotate 'line', 879
    goto loop1563_test
  loop1563_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P119, exception, 'type'
    eq $P119, .CONTROL_LOOP_NEXT, loop1563_next
    eq $P119, .CONTROL_LOOP_REDO, loop1563_redo
  loop1563_done:
    pop_eh 
.annotate 'line', 876
    .return ($I103)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1571"  :anon :subid("162_1339198188.86") :outer("157_1339198188.86")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 909
    .const 'Sub' $P1578 = "163_1339198188.86" 
    capture_lex $P1578
.annotate 'line', 910
    $P1574 = root_new ['parrot';'ResizablePMCArray']
    set $P1573, $P1574
    .lex "@new_list", $P1573
.annotate 'line', 909
    set $P1575, $P1573
    unless_null $P1575, vivify_567
    $P1575 = root_new ['parrot';'ResizablePMCArray']
  vivify_567:
.annotate 'line', 911
    find_lex $P108, "$i"
    unless_null $P108, vivify_568
    new $P108, "Undef"
  vivify_568:
    set $I101, $P108
    find_lex $P1576, "@merge_list"
    unless_null $P1576, vivify_569
    $P1576 = root_new ['parrot';'ResizablePMCArray']
  vivify_569:
    set $P109, $P1576[$I101]
    unless_null $P109, vivify_570
    new $P109, "Undef"
  vivify_570:
    defined $I102, $P109
    unless $I102, for_undef_571
    iter $P107, $P109
    new $P112, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P112, loop1582_handler
    push_eh $P112
  loop1582_test:
    unless $P107, loop1582_done
    shift $P110, $P107
  loop1582_redo:
    .const 'Sub' $P1578 = "163_1339198188.86" 
    capture_lex $P1578
    $P1578($P110)
  loop1582_next:
    goto loop1582_test
  loop1582_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P113, exception, 'type'
    eq $P113, .CONTROL_LOOP_NEXT, loop1582_next
    eq $P113, .CONTROL_LOOP_REDO, loop1582_redo
  loop1582_done:
    pop_eh 
  for_undef_571:
.annotate 'line', 916
    set $P1583, $P1573
    unless_null $P1583, vivify_576
    $P1583 = root_new ['parrot';'ResizablePMCArray']
  vivify_576:
    find_lex $P107, "$i"
    unless_null $P107, vivify_577
    new $P107, "Undef"
  vivify_577:
    set $I101, $P107
    find_lex $P1584, "@merge_list"
    unless_null $P1584, vivify_578
    $P1584 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@merge_list", $P1584
  vivify_578:
    set $P1584[$I101], $P1583
.annotate 'line', 917
    find_lex $P107, "$i"
    unless_null $P107, vivify_579
    new $P107, "Undef"
  vivify_579:
    add $P108, $P107, 1
    store_lex "$i", $P108
.annotate 'line', 909
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1577"  :anon :subid("163_1339198188.86") :outer("162_1339198188.86")
    .param pmc param_1579
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 911
    .lex "$_", param_1579
.annotate 'line', 912
    find_lex $P112, "$_"
    unless_null $P112, vivify_572
    new $P112, "Undef"
  vivify_572:
    find_lex $P113, "$accepted"
    unless_null $P113, vivify_573
    new $P113, "Undef"
  vivify_573:
    issame $I103, $P112, $P113
    unless $I103, unless_1580
    new $P111, 'Integer'
    set $P111, $I103
    goto unless_1580_end
  unless_1580:
.annotate 'line', 913
    find_lex $P1581, "@new_list"
    unless_null $P1581, vivify_574
    $P1581 = root_new ['parrot';'ResizablePMCArray']
  vivify_574:
    find_lex $P114, "$_"
    unless_null $P114, vivify_575
    new $P114, "Undef"
  vivify_575:
    $P115 = $P1581."push"($P114)
.annotate 'line', 912
    set $P111, $P115
  unless_1580_end:
.annotate 'line', 911
    .return ($P111)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "archetypes" :anon :subid("59_1339198188.86") :outer("153_1339198188.86")
    .param pmc param_1594
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 613
    .lex "self", param_1594
    find_lex $P107, "$archetypes"
    unless_null $P107, vivify_585
    new $P107, "Undef"
  vivify_585:
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "new" :anon :subid("60_1339198188.86") :outer("153_1339198188.86")
    .param pmc param_1596
    .param pmc param_1597 :optional :named("name")
    .param int has_param_1597 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 622
    .lex "self", param_1596
    if has_param_1597, optparam_586
    new $P107, "Undef"
    set param_1597, $P107
  optparam_586:
    .lex "$name", param_1597
.annotate 'line', 623
    new $P108, "Undef"
    set $P1598, $P108
    .lex "$obj", $P1598
    set $P109, param_1596
    nqp_decontainerize $P110, $P109
    repr_instance_of $P111, $P110
    set $P1598, $P111
.annotate 'line', 624
    set $P109, $P1598
    unless_null $P109, vivify_587
    new $P109, "Undef"
  vivify_587:
    set $P110, param_1597
    unless_null $P110, vivify_588
    new $P110, "Undef"
  vivify_588:
    $P109."BUILD"($P110 :named("name"))
.annotate 'line', 622
    set $P109, $P1598
    unless_null $P109, vivify_589
    new $P109, "Undef"
  vivify_589:
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "BUILD" :anon :subid("61_1339198188.86") :outer("153_1339198188.86")
    .param pmc param_1600
    .param pmc param_1601 :optional :named("name")
    .param int has_param_1601 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 628
    .lex "self", param_1600
    if has_param_1601, optparam_590
    new $P107, "Undef"
    set param_1601, $P107
  optparam_590:
    .lex "$name", param_1601
.annotate 'line', 629
    set $P108, param_1601
    unless_null $P108, vivify_591
    new $P108, "Undef"
  vivify_591:
    set $P109, param_1600
    nqp_decontainerize $P110, $P109
    nqp_get_sc_object $P111, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_bind_attr_obj $P110, $P111, "$!name", 0, $P108
.annotate 'line', 628
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "new_type" :anon :subid("62_1339198188.86") :outer("153_1339198188.86")
    .param pmc param_1603
    .param pmc param_1604 :optional :named("name")
    .param int has_param_1604 :opt_flag
    .param pmc param_1605 :optional :named("repr")
    .param int has_param_1605 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 634
    .lex "self", param_1603
    if has_param_1604, optparam_592
    new $P107, "String"
    assign $P107, "<anon>"
    set param_1604, $P107
  optparam_592:
    .lex "$name", param_1604
    if has_param_1605, optparam_593
    new $P108, "String"
    assign $P108, "P6opaque"
    set param_1605, $P108
  optparam_593:
    .lex "$repr", param_1605
.annotate 'line', 635
    new $P109, "Undef"
    set $P1606, $P109
    .lex "$metaclass", $P1606
    set $P110, param_1603
    nqp_decontainerize $P111, $P110
    set $P112, param_1604
    unless_null $P112, vivify_594
    new $P112, "Undef"
  vivify_594:
    $P113 = $P111."new"($P112 :named("name"))
    set $P1606, $P113
.annotate 'line', 637
    set $P110, $P1606
    unless_null $P110, vivify_595
    new $P110, "Undef"
  vivify_595:
    set $P111, param_1605
    unless_null $P111, vivify_596
    new $P111, "Undef"
  vivify_596:
    set $S100, $P111
    repr_type_object_for $P112, $P110, $S100
    $P1607 = root_new ['parrot';'Hash']
    set_who $P112, $P1607
.annotate 'line', 634
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_method" :anon :subid("63_1339198188.86") :outer("153_1339198188.86")
    .param pmc param_1609
    .param pmc param_1610
    .param pmc param_1611
    .param pmc param_1612
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 641
    .lex "self", param_1609
    .lex "$obj", param_1610
    .lex "$name", param_1611
    .lex "$code_obj", param_1612
.annotate 'line', 642
    set $P107, param_1611
    unless_null $P107, vivify_597
    new $P107, "Undef"
  vivify_597:
    set $P108, param_1609
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P1614, $P109, $P110, "%!methods", 2
    unless_null $P1614, vivify_598
    $P1614 = root_new ['parrot';'Hash']
  vivify_598:
    set $P111, $P1614[$P107]
    unless_null $P111, vivify_599
    new $P111, "Undef"
  vivify_599:
    unless $P111, if_1613_end
.annotate 'line', 643
    new $P112, "String"
    assign $P112, "This class already has a method named "
    set $P113, param_1611
    unless_null $P113, vivify_600
    new $P113, "Undef"
  vivify_600:
    concat $P114, $P112, $P113
    die $P114
  if_1613_end:
.annotate 'line', 645
    set $P108, param_1612
    unless_null $P108, vivify_601
    new $P108, "Undef"
  vivify_601:
    isnull $I100, $P108
    unless $I100, unless_1616
    new $P107, 'Integer'
    set $P107, $I100
    goto unless_1616_end
  unless_1616:
    set $P109, param_1612
    unless_null $P109, vivify_602
    new $P109, "Undef"
  vivify_602:
    isa $I101, $P109, "Undef"
    new $P107, 'Integer'
    set $P107, $I101
  unless_1616_end:
    unless $P107, if_1615_end
.annotate 'line', 646
    new $P110, 'String'
    set $P110, "Cannot add a null method '"
    set $P111, param_1611
    unless_null $P111, vivify_603
    new $P111, "Undef"
  vivify_603:
    concat $P112, $P110, $P111
    concat $P113, $P112, "' to class '"
    set $P114, param_1609
    nqp_decontainerize $P115, $P114
    nqp_get_sc_object $P116, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P117, $P115, $P116, "$!name", 0
    unless_null $P117, vivify_604
    new $P117, "Undef"
  vivify_604:
    concat $P118, $P113, $P117
    concat $P119, $P118, "'"
    die $P119
  if_1615_end:
.annotate 'line', 648
    set $P107, param_1610
    unless_null $P107, vivify_605
    new $P107, "Undef"
  vivify_605:
    set_method_cache_authoritativeness $P107, 0
.annotate 'line', 649
    $P1617 = root_new ['parrot';'Hash']
    set $P107, param_1609
    nqp_decontainerize $P108, $P107
    get_id $I100, $P108
    find_lex $P1618, "%caches"
    unless_null $P1618, vivify_606
    $P1618 = root_new ['parrot';'Hash']
    store_lex "%caches", $P1618
  vivify_606:
    set $P1618[$I100], $P1617
.annotate 'line', 650
    set $P107, param_1612
    unless_null $P107, vivify_607
    new $P107, "Undef"
  vivify_607:
    set $P108, param_1611
    unless_null $P108, vivify_608
    new $P108, "Undef"
  vivify_608:
    set $P109, param_1609
    nqp_decontainerize $P110, $P109
    nqp_get_sc_object $P111, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P1619, $P110, $P111, "%!methods", 2
    unless_null $P1619, vivify_609
    $P1619 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P110, $P111, "%!methods", 2, $P1619
  vivify_609:
    set $P1619[$P108], $P107
    set $P112, param_1609
    nqp_decontainerize $P113, $P112
    nqp_get_sc_object $P114, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P1620, $P113, $P114, "@!method_order", 3
    unless_null $P1620, vivify_610
    $P1620 = root_new ['parrot';'ResizablePMCArray']
  vivify_610:
    set $N100, $P1620
    set $I100, $N100
    set $P115, param_1609
    nqp_decontainerize $P116, $P115
    nqp_get_sc_object $P117, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P1621, $P116, $P117, "@!method_order", 3
    unless_null $P1621, vivify_611
    $P1621 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P116, $P117, "@!method_order", 3, $P1621
  vivify_611:
    set $P1621[$I100], $P107
.annotate 'line', 641
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_multi_method" :anon :subid("64_1339198188.86") :outer("153_1339198188.86")
    .param pmc param_1623
    .param pmc param_1624
    .param pmc param_1625
    .param pmc param_1626
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 653
    .lex "self", param_1623
    .lex "$obj", param_1624
    .lex "$name", param_1625
    .lex "$code_obj", param_1626
.annotate 'line', 659
    $P1628 = root_new ['parrot';'Hash']
    set $P1627, $P1628
    .lex "%todo", $P1627
.annotate 'line', 653
    set $P1629, $P1627
    unless_null $P1629, vivify_612
    $P1629 = root_new ['parrot';'Hash']
  vivify_612:
.annotate 'line', 660
    set $P107, param_1625
    unless_null $P107, vivify_613
    new $P107, "Undef"
  vivify_613:
    set $P1630, $P1627
    unless_null $P1630, vivify_614
    $P1630 = root_new ['parrot';'Hash']
    set $P1627, $P1630
  vivify_614:
    set $P1630["name"], $P107
.annotate 'line', 661
    set $P107, param_1626
    unless_null $P107, vivify_615
    new $P107, "Undef"
  vivify_615:
    set $P1631, $P1627
    unless_null $P1631, vivify_616
    $P1631 = root_new ['parrot';'Hash']
    set $P1627, $P1631
  vivify_616:
    set $P1631["code"], $P107
.annotate 'line', 662
    set $P1632, $P1627
    unless_null $P1632, vivify_617
    $P1632 = root_new ['parrot';'Hash']
  vivify_617:
    set $P107, param_1623
    nqp_decontainerize $P108, $P107
    nqp_get_sc_object $P109, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P1633, $P108, $P109, "@!multi_methods_to_incorporate", 4
    unless_null $P1633, vivify_618
    $P1633 = root_new ['parrot';'ResizablePMCArray']
  vivify_618:
    set $N100, $P1633
    set $I100, $N100
    set $P110, param_1623
    nqp_decontainerize $P111, $P110
    nqp_get_sc_object $P112, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P1634, $P111, $P112, "@!multi_methods_to_incorporate", 4
    unless_null $P1634, vivify_619
    $P1634 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P111, $P112, "@!multi_methods_to_incorporate", 4, $P1634
  vivify_619:
    set $P1634[$I100], $P1632
.annotate 'line', 663
    set $P107, param_1624
    unless_null $P107, vivify_620
    new $P107, "Undef"
  vivify_620:
    set_method_cache_authoritativeness $P107, 0
.annotate 'line', 653
    set $P107, param_1626
    unless_null $P107, vivify_621
    new $P107, "Undef"
  vivify_621:
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_attribute" :anon :subid("65_1339198188.86") :outer("153_1339198188.86")
    .param pmc param_1636
    .param pmc param_1637
    .param pmc param_1638
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 667
    .lex "self", param_1636
    .lex "$obj", param_1637
    .lex "$meta_attr", param_1638
.annotate 'line', 668
    new $P107, "Undef"
    set $P1639, $P107
    .lex "$name", $P1639
    set $P108, param_1638
    unless_null $P108, vivify_622
    new $P108, "Undef"
  vivify_622:
    $P109 = $P108."name"()
    set $P1639, $P109
.annotate 'line', 669
    set $P108, $P1639
    unless_null $P108, vivify_623
    new $P108, "Undef"
  vivify_623:
    set $P109, param_1636
    nqp_decontainerize $P110, $P109
    nqp_get_sc_object $P111, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P1641, $P110, $P111, "%!attributes", 1
    unless_null $P1641, vivify_624
    $P1641 = root_new ['parrot';'Hash']
  vivify_624:
    set $P112, $P1641[$P108]
    unless_null $P112, vivify_625
    new $P112, "Undef"
  vivify_625:
    unless $P112, if_1640_end
.annotate 'line', 670
    new $P113, "String"
    assign $P113, "This class already has an attribute named "
    set $P114, $P1639
    unless_null $P114, vivify_626
    new $P114, "Undef"
  vivify_626:
    concat $P115, $P113, $P114
    die $P115
  if_1640_end:
.annotate 'line', 672
    set $P108, param_1638
    unless_null $P108, vivify_627
    new $P108, "Undef"
  vivify_627:
    set $P109, $P1639
    unless_null $P109, vivify_628
    new $P109, "Undef"
  vivify_628:
    set $P110, param_1636
    nqp_decontainerize $P111, $P110
    nqp_get_sc_object $P112, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P1642, $P111, $P112, "%!attributes", 1
    unless_null $P1642, vivify_629
    $P1642 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P111, $P112, "%!attributes", 1, $P1642
  vivify_629:
    set $P1642[$P109], $P108
.annotate 'line', 667
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_parent" :anon :subid("66_1339198188.86") :outer("153_1339198188.86")
    .param pmc param_1644
    .param pmc param_1645
    .param pmc param_1646
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 675
    .const 'Sub' $P1651 = "164_1339198188.86" 
    capture_lex $P1651
    .lex "self", param_1644
    .lex "$obj", param_1645
    .lex "$parent", param_1646
.annotate 'line', 676
    set $P107, param_1644
    nqp_decontainerize $P108, $P107
    nqp_get_sc_object $P109, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P110, $P108, $P109, "$!composed", 10
    unless_null $P110, vivify_630
    new $P110, "Undef"
  vivify_630:
    unless $P110, if_1647_end
.annotate 'line', 677
    new $P111, "String"
    assign $P111, "NQPClassHOW does not support adding parents after being composed."
    die $P111
  if_1647_end:
.annotate 'line', 679
    set $P107, param_1645
    unless_null $P107, vivify_631
    new $P107, "Undef"
  vivify_631:
    set $P108, param_1646
    unless_null $P108, vivify_632
    new $P108, "Undef"
  vivify_632:
    issame $I100, $P107, $P108
    unless $I100, if_1648_end
.annotate 'line', 680
    new $P109, 'String'
    set $P109, "Class '"
    set $P110, param_1644
    nqp_decontainerize $P111, $P110
    nqp_get_sc_object $P112, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P113, $P111, $P112, "$!name", 0
    unless_null $P113, vivify_633
    new $P113, "Undef"
  vivify_633:
    concat $P114, $P109, $P113
    concat $P115, $P114, "' cannot inherit from itself."
    die $P115
  if_1648_end:
.annotate 'line', 682
    set $P108, param_1644
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P1649, $P109, $P110, "@!parents", 5
    unless_null $P1649, vivify_634
    $P1649 = root_new ['parrot';'ResizablePMCArray']
  vivify_634:
    defined $I100, $P1649
    unless $I100, for_undef_635
    iter $P107, $P1649
    new $P113, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P113, loop1654_handler
    push_eh $P113
  loop1654_test:
    unless $P107, loop1654_done
    shift $P111, $P107
  loop1654_redo:
    .const 'Sub' $P1651 = "164_1339198188.86" 
    capture_lex $P1651
    $P1651($P111)
  loop1654_next:
    goto loop1654_test
  loop1654_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P114, exception, 'type'
    eq $P114, .CONTROL_LOOP_NEXT, loop1654_next
    eq $P114, .CONTROL_LOOP_REDO, loop1654_redo
  loop1654_done:
    pop_eh 
  for_undef_635:
.annotate 'line', 687
    set $P107, param_1646
    unless_null $P107, vivify_639
    new $P107, "Undef"
  vivify_639:
    set $P108, param_1644
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P1655, $P109, $P110, "@!parents", 5
    unless_null $P1655, vivify_640
    $P1655 = root_new ['parrot';'ResizablePMCArray']
  vivify_640:
    set $N100, $P1655
    set $I100, $N100
    set $P111, param_1644
    nqp_decontainerize $P112, $P111
    nqp_get_sc_object $P113, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P1656, $P112, $P113, "@!parents", 5
    unless_null $P1656, vivify_641
    $P1656 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P112, $P113, "@!parents", 5, $P1656
  vivify_641:
    set $P1656[$I100], $P107
.annotate 'line', 675
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1650"  :anon :subid("164_1339198188.86") :outer("66_1339198188.86")
    .param pmc param_1652
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 682
    .lex "$_", param_1652
.annotate 'line', 683
    find_lex $P113, "$_"
    unless_null $P113, vivify_636
    new $P113, "Undef"
  vivify_636:
    find_lex $P114, "$parent"
    unless_null $P114, vivify_637
    new $P114, "Undef"
  vivify_637:
    issame $I101, $P113, $P114
    if $I101, if_1653
    new $P112, 'Integer'
    set $P112, $I101
    goto if_1653_end
  if_1653:
.annotate 'line', 684
    new $P115, "String"
    assign $P115, "Already have "
    find_lex $P116, "$parent"
    unless_null $P116, vivify_638
    new $P116, "Undef"
  vivify_638:
    concat $P117, $P115, $P116
    concat $P118, $P117, " as a parent class."
    die $P118
  if_1653_end:
.annotate 'line', 682
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "set_default_parent" :anon :subid("67_1339198188.86") :outer("153_1339198188.86")
    .param pmc param_1658
    .param pmc param_1659
    .param pmc param_1660
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 690
    .lex "self", param_1658
    .lex "$obj", param_1659
    .lex "$parent", param_1660
.annotate 'line', 691
    set $P107, param_1660
    unless_null $P107, vivify_642
    new $P107, "Undef"
  vivify_642:
    set $P108, param_1658
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_bind_attr_obj $P109, $P110, "$!default_parent", 7, $P107
.annotate 'line', 690
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_role" :anon :subid("68_1339198188.86") :outer("153_1339198188.86")
    .param pmc param_1662
    .param pmc param_1663
    .param pmc param_1664
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 694
    .const 'Sub' $P1667 = "165_1339198188.86" 
    capture_lex $P1667
    .lex "self", param_1662
    .lex "$obj", param_1663
    .lex "$role", param_1664
.annotate 'line', 695
    set $P108, param_1662
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P1665, $P109, $P110, "@!roles", 6
    unless_null $P1665, vivify_643
    $P1665 = root_new ['parrot';'ResizablePMCArray']
  vivify_643:
    defined $I100, $P1665
    unless $I100, for_undef_644
    iter $P107, $P1665
    new $P113, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P113, loop1670_handler
    push_eh $P113
  loop1670_test:
    unless $P107, loop1670_done
    shift $P111, $P107
  loop1670_redo:
    .const 'Sub' $P1667 = "165_1339198188.86" 
    capture_lex $P1667
    $P1667($P111)
  loop1670_next:
    goto loop1670_test
  loop1670_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P114, exception, 'type'
    eq $P114, .CONTROL_LOOP_NEXT, loop1670_next
    eq $P114, .CONTROL_LOOP_REDO, loop1670_redo
  loop1670_done:
    pop_eh 
  for_undef_644:
.annotate 'line', 700
    set $P107, param_1664
    unless_null $P107, vivify_648
    new $P107, "Undef"
  vivify_648:
    set $P108, param_1662
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P1671, $P109, $P110, "@!roles", 6
    unless_null $P1671, vivify_649
    $P1671 = root_new ['parrot';'ResizablePMCArray']
  vivify_649:
    set $N100, $P1671
    set $I100, $N100
    set $P111, param_1662
    nqp_decontainerize $P112, $P111
    nqp_get_sc_object $P113, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P1672, $P112, $P113, "@!roles", 6
    unless_null $P1672, vivify_650
    $P1672 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P112, $P113, "@!roles", 6, $P1672
  vivify_650:
    set $P1672[$I100], $P107
.annotate 'line', 694
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1666"  :anon :subid("165_1339198188.86") :outer("68_1339198188.86")
    .param pmc param_1668
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 695
    .lex "$_", param_1668
.annotate 'line', 696
    find_lex $P113, "$_"
    unless_null $P113, vivify_645
    new $P113, "Undef"
  vivify_645:
    find_lex $P114, "$role"
    unless_null $P114, vivify_646
    new $P114, "Undef"
  vivify_646:
    issame $I101, $P113, $P114
    if $I101, if_1669
    new $P112, 'Integer'
    set $P112, $I101
    goto if_1669_end
  if_1669:
.annotate 'line', 697
    new $P115, "String"
    assign $P115, "The role "
    find_lex $P116, "$role"
    unless_null $P116, vivify_647
    new $P116, "Undef"
  vivify_647:
    concat $P117, $P115, $P116
    concat $P118, $P117, " has already been added."
    die $P118
  if_1669_end:
.annotate 'line', 695
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_parrot_vtable_mapping" :anon :subid("69_1339198188.86") :outer("153_1339198188.86")
    .param pmc param_1674
    .param pmc param_1675
    .param pmc param_1676
    .param pmc param_1677
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 703
    .lex "self", param_1674
    .lex "$obj", param_1675
    .lex "$name", param_1676
    .lex "$meth", param_1677
.annotate 'line', 704
    set $P107, param_1676
    unless_null $P107, vivify_651
    new $P107, "Undef"
  vivify_651:
    set $P108, param_1674
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P1679, $P109, $P110, "%!parrot_vtable_mapping", 13
    unless_null $P1679, vivify_652
    $P1679 = root_new ['parrot';'Hash']
  vivify_652:
    set $P111, $P1679[$P107]
    unless_null $P111, vivify_653
    new $P111, "Undef"
  vivify_653:
    defined $I100, $P111
    unless $I100, if_1678_end
.annotate 'line', 705
    new $P112, "String"
    assign $P112, "Class '"
    set $P113, param_1674
    nqp_decontainerize $P114, $P113
    nqp_get_sc_object $P115, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P116, $P114, $P115, "$!name", 0
    unless_null $P116, vivify_654
    new $P116, "Undef"
  vivify_654:
    concat $P117, $P112, $P116
    concat $P118, $P117, "' already has a Parrot v-table override for '"
    set $P119, param_1676
    unless_null $P119, vivify_655
    new $P119, "Undef"
  vivify_655:
    concat $P120, $P118, $P119
.annotate 'line', 706
    concat $P121, $P120, "'"
.annotate 'line', 707
    die $P121
  if_1678_end:
.annotate 'line', 709
    set $P107, param_1677
    unless_null $P107, vivify_656
    new $P107, "Undef"
  vivify_656:
    set $P108, param_1676
    unless_null $P108, vivify_657
    new $P108, "Undef"
  vivify_657:
    set $P109, param_1674
    nqp_decontainerize $P110, $P109
    nqp_get_sc_object $P111, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P1680, $P110, $P111, "%!parrot_vtable_mapping", 13
    unless_null $P1680, vivify_658
    $P1680 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P110, $P111, "%!parrot_vtable_mapping", 13, $P1680
  vivify_658:
    set $P1680[$P108], $P107
.annotate 'line', 703
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_parrot_vtable_handler_mapping" :anon :subid("70_1339198188.86") :outer("153_1339198188.86")
    .param pmc param_1682
    .param pmc param_1683
    .param pmc param_1684
    .param pmc param_1685
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 712
    .lex "self", param_1682
    .lex "$obj", param_1683
    .lex "$name", param_1684
    .lex "$att_name", param_1685
.annotate 'line', 713
    set $P107, param_1684
    unless_null $P107, vivify_659
    new $P107, "Undef"
  vivify_659:
    set $P108, param_1682
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P1687, $P109, $P110, "%!parrot_vtable_handler_mapping", 14
    unless_null $P1687, vivify_660
    $P1687 = root_new ['parrot';'Hash']
  vivify_660:
    set $P111, $P1687[$P107]
    unless_null $P111, vivify_661
    new $P111, "Undef"
  vivify_661:
    defined $I100, $P111
    unless $I100, if_1686_end
.annotate 'line', 714
    new $P112, "String"
    assign $P112, "Class '"
    set $P113, param_1682
    nqp_decontainerize $P114, $P113
    nqp_get_sc_object $P115, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P116, $P114, $P115, "$!name", 0
    unless_null $P116, vivify_662
    new $P116, "Undef"
  vivify_662:
    concat $P117, $P112, $P116
    concat $P118, $P117, "' already has a Parrot v-table handler for '"
    set $P119, param_1684
    unless_null $P119, vivify_663
    new $P119, "Undef"
  vivify_663:
    concat $P120, $P118, $P119
.annotate 'line', 715
    concat $P121, $P120, "'"
.annotate 'line', 716
    die $P121
  if_1686_end:
.annotate 'line', 718
    set $P107, param_1683
    unless_null $P107, vivify_664
    new $P107, "Undef"
  vivify_664:
    set $P108, param_1685
    unless_null $P108, vivify_665
    new $P108, "Undef"
  vivify_665:
    new $P109, "ResizablePMCArray"
    push $P109, $P107
    push $P109, $P108
    set $P110, param_1684
    unless_null $P110, vivify_666
    new $P110, "Undef"
  vivify_666:
    set $P111, param_1682
    nqp_decontainerize $P112, $P111
    nqp_get_sc_object $P113, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P1688, $P112, $P113, "%!parrot_vtable_handler_mapping", 14
    unless_null $P1688, vivify_667
    $P1688 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P112, $P113, "%!parrot_vtable_handler_mapping", 14, $P1688
  vivify_667:
    set $P1688[$P110], $P109
.annotate 'line', 712
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "compose" :anon :subid("71_1339198188.86") :outer("153_1339198188.86")
    .param pmc param_1690
    .param pmc param_1691
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 721
    .const 'Sub' $P1716 = "168_1339198188.86" 
    capture_lex $P1716
    .const 'Sub' $P1695 = "166_1339198188.86" 
    capture_lex $P1695
    .lex "self", param_1690
    .lex "$obj", param_1691
.annotate 'line', 725
    set $P107, param_1690
    nqp_decontainerize $P108, $P107
    nqp_get_sc_object $P109, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P1693, $P108, $P109, "@!roles", 6
    unless_null $P1693, vivify_668
    $P1693 = root_new ['parrot';'ResizablePMCArray']
  vivify_668:
    unless $P1693, if_1692_end
    .const 'Sub' $P1695 = "166_1339198188.86" 
    capture_lex $P1695
    $P1695()
  if_1692_end:
.annotate 'line', 738
    set $P108, param_1690
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P1713, $P109, $P110, "@!parents", 5
    unless_null $P1713, vivify_685
    $P1713 = root_new ['parrot';'ResizablePMCArray']
  vivify_685:
    set $N100, $P1713
    set $N101, 0
    iseq $I100, $N100, $N101
    if $I100, if_1712
    new $P107, 'Integer'
    set $P107, $I100
    goto if_1712_end
  if_1712:
    set $P111, param_1690
    nqp_decontainerize $P112, $P111
    nqp_get_sc_object $P113, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P114, $P112, $P113, "$!name", 0
    unless_null $P114, vivify_686
    new $P114, "Undef"
  vivify_686:
    set $S100, $P114
    isne $I101, $S100, "NQPMu"
    new $P107, 'Integer'
    set $P107, $I101
  if_1712_end:
    unless $P107, if_1711_end
.annotate 'line', 739
    set $P115, param_1690
    nqp_decontainerize $P116, $P115
    set $P117, param_1691
    unless_null $P117, vivify_687
    new $P117, "Undef"
  vivify_687:
    set $P118, param_1690
    nqp_decontainerize $P119, $P118
    nqp_get_sc_object $P120, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P121, $P119, $P120, "$!default_parent", 7
    unless_null $P121, vivify_688
    new $P121, "Undef"
  vivify_688:
    $P116."add_parent"($P117, $P121)
  if_1711_end:
.annotate 'line', 744
    set $P107, param_1690
    nqp_decontainerize $P108, $P107
    nqp_get_sc_object $P109, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P110, $P108, $P109, "$!composed", 10
    unless_null $P110, vivify_689
    new $P110, "Undef"
  vivify_689:
    if $P110, unless_1714_end
.annotate 'line', 745
    set $P111, param_1691
    unless_null $P111, vivify_690
    new $P111, "Undef"
  vivify_690:
    $P112 = "compute_c3_mro"($P111)
    set $P113, param_1690
    nqp_decontainerize $P114, $P113
    nqp_get_sc_object $P115, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_bind_attr_obj $P114, $P115, "@!mro", 11, $P112
.annotate 'line', 746
    new $P111, "Float"
    assign $P111, 1
    set $P112, param_1690
    nqp_decontainerize $P113, $P112
    nqp_get_sc_object $P114, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_bind_attr_obj $P113, $P114, "$!composed", 10, $P111
  unless_1714_end:
.annotate 'line', 750
    set $P107, param_1690
    nqp_decontainerize $P108, $P107
    set $P109, param_1691
    unless_null $P109, vivify_691
    new $P109, "Undef"
  vivify_691:
    $P108."incorporate_multi_candidates"($P109)
.annotate 'line', 753
    set $P108, param_1690
    nqp_decontainerize $P109, $P108
    set $P110, param_1691
    unless_null $P110, vivify_692
    new $P110, "Undef"
  vivify_692:
    $P111 = $P109."attributes"($P110, "0" :named("local"))
    defined $I100, $P111
    unless $I100, for_undef_693
    iter $P107, $P111
    new $P113, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P113, loop1718_handler
    push_eh $P113
  loop1718_test:
    unless $P107, loop1718_done
    shift $P112, $P107
  loop1718_redo:
    .const 'Sub' $P1716 = "168_1339198188.86" 
    capture_lex $P1716
    $P1716($P112)
  loop1718_next:
    goto loop1718_test
  loop1718_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P114, exception, 'type'
    eq $P114, .CONTROL_LOOP_NEXT, loop1718_next
    eq $P114, .CONTROL_LOOP_REDO, loop1718_redo
  loop1718_done:
    pop_eh 
  for_undef_693:
.annotate 'line', 756
    set $P107, param_1690
    nqp_decontainerize $P108, $P107
    set $P109, param_1691
    unless_null $P109, vivify_696
    new $P109, "Undef"
  vivify_696:
    $P108."publish_type_cache"($P109)
.annotate 'line', 757
    set $P107, param_1690
    nqp_decontainerize $P108, $P107
    set $P109, param_1691
    unless_null $P109, vivify_697
    new $P109, "Undef"
  vivify_697:
    $P108."publish_method_cache"($P109)
.annotate 'line', 758
    set $P107, param_1690
    nqp_decontainerize $P108, $P107
    set $P109, param_1691
    unless_null $P109, vivify_698
    new $P109, "Undef"
  vivify_698:
    $P108."publish_boolification_spec"($P109)
.annotate 'line', 761
    set $P107, param_1690
    nqp_decontainerize $P108, $P107
    set $P109, param_1691
    unless_null $P109, vivify_699
    new $P109, "Undef"
  vivify_699:
    $P108."publish_parrot_vtable_mapping"($P109)
.annotate 'line', 762
    set $P107, param_1690
    nqp_decontainerize $P108, $P107
    set $P109, param_1691
    unless_null $P109, vivify_700
    new $P109, "Undef"
  vivify_700:
    $P108."publish_parrot_vtablee_handler_mapping"($P109)
.annotate 'line', 721
    set $P107, param_1691
    unless_null $P107, vivify_701
    new $P107, "Undef"
  vivify_701:
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1694"  :anon :subid("166_1339198188.86") :outer("71_1339198188.86")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 725
    .const 'Sub' $P1701 = "167_1339198188.86" 
    capture_lex $P1701
.annotate 'line', 726
    $P1697 = root_new ['parrot';'ResizablePMCArray']
    set $P1696, $P1697
    .lex "@specialized_roles", $P1696
.annotate 'line', 725
    set $P1698, $P1696
    unless_null $P1698, vivify_669
    $P1698 = root_new ['parrot';'ResizablePMCArray']
  vivify_669:
.annotate 'line', 727
    find_lex $P111, "self"
    nqp_decontainerize $P112, $P111
    nqp_get_sc_object $P113, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P1699, $P112, $P113, "@!roles", 6
    unless_null $P1699, vivify_670
    $P1699 = root_new ['parrot';'ResizablePMCArray']
  vivify_670:
    defined $I100, $P1699
    unless $I100, for_undef_671
    iter $P110, $P1699
    new $P117, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P117, loop1709_handler
    push_eh $P117
  loop1709_test:
    unless $P110, loop1709_done
    shift $P114, $P110
  loop1709_redo:
    .const 'Sub' $P1701 = "167_1339198188.86" 
    capture_lex $P1701
    $P1701($P114)
  loop1709_next:
    goto loop1709_test
  loop1709_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P118, exception, 'type'
    eq $P118, .CONTROL_LOOP_NEXT, loop1709_next
    eq $P118, .CONTROL_LOOP_REDO, loop1709_redo
  loop1709_done:
    pop_eh 
  for_undef_671:
.annotate 'line', 733
    find_lex $P110, "RoleToClassApplier"
    find_lex $P111, "$obj"
    unless_null $P111, vivify_683
    new $P111, "Undef"
  vivify_683:
    set $P1710, $P1696
    unless_null $P1710, vivify_684
    $P1710 = root_new ['parrot';'ResizablePMCArray']
  vivify_684:
    $P112 = $P110."apply"($P111, $P1710)
.annotate 'line', 725
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1700"  :anon :subid("167_1339198188.86") :outer("166_1339198188.86")
    .param pmc param_1703
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 728
    new $P115, "Undef"
    set $P1702, $P115
    .lex "$ins", $P1702
    .lex "$_", param_1703
    find_lex $P116, "$_"
    unless_null $P116, vivify_672
    new $P116, "Undef"
  vivify_672:
    get_how $P117, $P116
    find_lex $P118, "$_"
    unless_null $P118, vivify_673
    new $P118, "Undef"
  vivify_673:
    find_lex $P119, "$obj"
    unless_null $P119, vivify_674
    new $P119, "Undef"
  vivify_674:
    $P120 = $P117."specialize"($P118, $P119)
    set $P1702, $P120
.annotate 'line', 729
    find_lex $P1704, "@specialized_roles"
    unless_null $P1704, vivify_675
    $P1704 = root_new ['parrot';'ResizablePMCArray']
  vivify_675:
    set $P116, $P1702
    unless_null $P116, vivify_676
    new $P116, "Undef"
  vivify_676:
    $P1704."push"($P116)
.annotate 'line', 730
    find_lex $P116, "$_"
    unless_null $P116, vivify_677
    new $P116, "Undef"
  vivify_677:
    find_lex $P117, "self"
    nqp_decontainerize $P118, $P117
    nqp_get_sc_object $P119, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P1705, $P118, $P119, "@!done", 12
    unless_null $P1705, vivify_678
    $P1705 = root_new ['parrot';'ResizablePMCArray']
  vivify_678:
    set $N100, $P1705
    set $I101, $N100
    find_lex $P120, "self"
    nqp_decontainerize $P121, $P120
    nqp_get_sc_object $P122, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P1706, $P121, $P122, "@!done", 12
    unless_null $P1706, vivify_679
    $P1706 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P121, $P122, "@!done", 12, $P1706
  vivify_679:
    set $P1706[$I101], $P116
.annotate 'line', 731
    set $P116, $P1702
    unless_null $P116, vivify_680
    new $P116, "Undef"
  vivify_680:
    find_lex $P117, "self"
    nqp_decontainerize $P118, $P117
    nqp_get_sc_object $P119, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P1707, $P118, $P119, "@!done", 12
    unless_null $P1707, vivify_681
    $P1707 = root_new ['parrot';'ResizablePMCArray']
  vivify_681:
    set $N100, $P1707
    set $I101, $N100
    find_lex $P120, "self"
    nqp_decontainerize $P121, $P120
    nqp_get_sc_object $P122, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P1708, $P121, $P122, "@!done", 12
    unless_null $P1708, vivify_682
    $P1708 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P121, $P122, "@!done", 12, $P1708
  vivify_682:
    set $P1708[$I101], $P116
.annotate 'line', 727
    .return ($P116)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1715"  :anon :subid("168_1339198188.86") :outer("71_1339198188.86")
    .param pmc param_1717
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 753
    .lex "$_", param_1717
    find_lex $P113, "$_"
    unless_null $P113, vivify_694
    new $P113, "Undef"
  vivify_694:
    find_lex $P114, "$obj"
    unless_null $P114, vivify_695
    new $P114, "Undef"
  vivify_695:
    $P115 = $P113."compose"($P114)
    .return ($P115)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "incorporate_multi_candidates" :anon :subid("72_1339198188.86") :outer("153_1339198188.86")
    .param pmc param_1720
    .param pmc param_1721
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 767
    .const 'Sub' $P1726 = "169_1339198188.86" 
    capture_lex $P1726
    .lex "self", param_1720
    .lex "$obj", param_1721
.annotate 'line', 768
    new $P107, "Undef"
    set $P1722, $P107
    .lex "$num_todo", $P1722
.annotate 'line', 769
    new $P108, "Undef"
    set $P1723, $P108
    .lex "$i", $P1723
.annotate 'line', 768
    set $P109, param_1720
    nqp_decontainerize $P110, $P109
    nqp_get_sc_object $P111, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P1724, $P110, $P111, "@!multi_methods_to_incorporate", 4
    unless_null $P1724, vivify_702
    $P1724 = root_new ['parrot';'ResizablePMCArray']
  vivify_702:
    set $N100, $P1724
    new $P112, 'Float'
    set $P112, $N100
    set $P1722, $P112
.annotate 'line', 769
    new $P109, "Float"
    assign $P109, 0
    set $P1723, $P109
.annotate 'line', 770
    new $P114, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P114, loop1774_handler
    push_eh $P114
  loop1774_test:
    set $P109, $P1723
    unless_null $P109, vivify_703
    new $P109, "Undef"
  vivify_703:
    set $N100, $P109
    set $P110, $P1722
    unless_null $P110, vivify_704
    new $P110, "Undef"
  vivify_704:
    set $N101, $P110
    isne $I100, $N100, $N101
    unless $I100, loop1774_done
  loop1774_redo:
    .const 'Sub' $P1726 = "169_1339198188.86" 
    capture_lex $P1726
    $P1726()
  loop1774_next:
    goto loop1774_test
  loop1774_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P116, exception, 'type'
    eq $P116, .CONTROL_LOOP_NEXT, loop1774_next
    eq $P116, .CONTROL_LOOP_REDO, loop1774_redo
  loop1774_done:
    pop_eh 
.annotate 'line', 767
    .return ($I100)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1725"  :anon :subid("169_1339198188.86") :outer("72_1339198188.86")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 770
    .const 'Sub' $P1740 = "170_1339198188.86" 
    capture_lex $P1740
.annotate 'line', 772
    new $P111, "Undef"
    set $P1727, $P111
    .lex "$name", $P1727
.annotate 'line', 773
    new $P112, "Undef"
    set $P1728, $P112
    .lex "$code", $P1728
.annotate 'line', 777
    new $P113, "Undef"
    set $P1729, $P113
    .lex "$dispatcher", $P1729
.annotate 'line', 772
    find_lex $P114, "$i"
    unless_null $P114, vivify_705
    new $P114, "Undef"
  vivify_705:
    set $I101, $P114
    find_lex $P115, "self"
    nqp_decontainerize $P116, $P115
    nqp_get_sc_object $P117, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P1730, $P116, $P117, "@!multi_methods_to_incorporate", 4
    unless_null $P1730, vivify_706
    $P1730 = root_new ['parrot';'ResizablePMCArray']
  vivify_706:
    set $P1731, $P1730[$I101]
    unless_null $P1731, vivify_707
    $P1731 = root_new ['parrot';'Hash']
  vivify_707:
    set $P118, $P1731["name"]
    unless_null $P118, vivify_708
    new $P118, "Undef"
  vivify_708:
    set $P1727, $P118
.annotate 'line', 773
    find_lex $P114, "$i"
    unless_null $P114, vivify_709
    new $P114, "Undef"
  vivify_709:
    set $I101, $P114
    find_lex $P115, "self"
    nqp_decontainerize $P116, $P115
    nqp_get_sc_object $P117, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P1732, $P116, $P117, "@!multi_methods_to_incorporate", 4
    unless_null $P1732, vivify_710
    $P1732 = root_new ['parrot';'ResizablePMCArray']
  vivify_710:
    set $P1733, $P1732[$I101]
    unless_null $P1733, vivify_711
    $P1733 = root_new ['parrot';'Hash']
  vivify_711:
    set $P118, $P1733["code"]
    unless_null $P118, vivify_712
    new $P118, "Undef"
  vivify_712:
    set $P1728, $P118
.annotate 'line', 777
    set $P114, $P1727
    unless_null $P114, vivify_713
    new $P114, "Undef"
  vivify_713:
    find_lex $P115, "self"
    nqp_decontainerize $P116, $P115
    nqp_get_sc_object $P117, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P1734, $P116, $P117, "%!methods", 2
    unless_null $P1734, vivify_714
    $P1734 = root_new ['parrot';'Hash']
  vivify_714:
    set $P118, $P1734[$P114]
    unless_null $P118, vivify_715
    new $P118, "Undef"
  vivify_715:
    set $P1729, $P118
.annotate 'line', 778
    set $P114, $P1729
    unless_null $P114, vivify_716
    new $P114, "Undef"
  vivify_716:
    defined $I101, $P114
    if $I101, if_1735
.annotate 'line', 791
    .const 'Sub' $P1740 = "170_1339198188.86" 
    capture_lex $P1740
    $P1740()
    goto if_1735_end
  if_1735:
.annotate 'line', 781
    set $P115, $P1729
    unless_null $P115, vivify_755
    new $P115, "Undef"
  vivify_755:
    is_dispatcher $I102, $P115
    if $I102, if_1736
.annotate 'line', 784
    set $P117, $P1729
    unless_null $P117, vivify_756
    new $P117, "Undef"
  vivify_756:
    can $I103, $P117, "is_dispatcher"
    if $I103, if_1738
    new $P116, 'Integer'
    set $P116, $I103
    goto if_1738_end
  if_1738:
    set $P118, $P1729
    unless_null $P118, vivify_757
    new $P118, "Undef"
  vivify_757:
    $P119 = $P118."is_dispatcher"()
    set $P116, $P119
  if_1738_end:
    if $P116, if_1737
.annotate 'line', 788
    new $P120, 'String'
    set $P120, "Cannot have a multi candidate for "
    set $P121, $P1727
    unless_null $P121, vivify_758
    new $P121, "Undef"
  vivify_758:
    concat $P122, $P120, $P121
    concat $P123, $P122, " when an only method is also in the class"
    die $P123
.annotate 'line', 787
    goto if_1737_end
  if_1737:
.annotate 'line', 785
    set $P120, $P1729
    unless_null $P120, vivify_759
    new $P120, "Undef"
  vivify_759:
    set $P121, $P1728
    unless_null $P121, vivify_760
    new $P121, "Undef"
  vivify_760:
    $P120."add_dispatchee"($P121)
  if_1737_end:
.annotate 'line', 784
    goto if_1736_end
  if_1736:
.annotate 'line', 782
    set $P116, $P1729
    unless_null $P116, vivify_761
    new $P116, "Undef"
  vivify_761:
    set $P117, $P1728
    unless_null $P117, vivify_762
    new $P117, "Undef"
  vivify_762:
    push_dispatchee $P116, $P117
  if_1736_end:
  if_1735_end:
.annotate 'line', 830
    find_lex $P114, "$i"
    unless_null $P114, vivify_763
    new $P114, "Undef"
  vivify_763:
    add $P115, $P114, 1
    store_lex "$i", $P115
.annotate 'line', 770
    .return ($P115)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1739"  :anon :subid("170_1339198188.86") :outer("169_1339198188.86")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 791
    .const 'Sub' $P1746 = "171_1339198188.86" 
    capture_lex $P1746
.annotate 'line', 793
    new $P115, "Undef"
    set $P1741, $P115
    .lex "$j", $P1741
.annotate 'line', 794
    new $P116, "Undef"
    set $P1742, $P116
    .lex "$found", $P1742
.annotate 'line', 793
    new $P117, "Float"
    assign $P117, 1
    set $P1741, $P117
.annotate 'line', 794
    new $P117, "Float"
    assign $P117, 0
    set $P1742, $P117
.annotate 'line', 795
    new $P125, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P125, loop1772_handler
    push_eh $P125
  loop1772_test:
    set $P118, $P1741
    unless_null $P118, vivify_717
    new $P118, "Undef"
  vivify_717:
    set $N102, $P118
    find_lex $P119, "self"
    nqp_decontainerize $P120, $P119
    nqp_get_sc_object $P121, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P1744, $P120, $P121, "@!mro", 11
    unless_null $P1744, vivify_718
    $P1744 = root_new ['parrot';'ResizablePMCArray']
  vivify_718:
    set $N103, $P1744
    isne $I102, $N102, $N103
    if $I102, if_1743
    new $P117, 'Integer'
    set $P117, $I102
    goto if_1743_end
  if_1743:
    set $P122, $P1742
    unless_null $P122, vivify_719
    new $P122, "Undef"
  vivify_719:
    isfalse $I103, $P122
    new $P117, 'Integer'
    set $P117, $I103
  if_1743_end:
    unless $P117, loop1772_done
  loop1772_redo:
    .const 'Sub' $P1746 = "171_1339198188.86" 
    capture_lex $P1746
    $P1746()
  loop1772_next:
    goto loop1772_test
  loop1772_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P127, exception, 'type'
    eq $P127, .CONTROL_LOOP_NEXT, loop1772_next
    eq $P127, .CONTROL_LOOP_REDO, loop1772_redo
  loop1772_done:
    pop_eh 
.annotate 'line', 826
    set $P118, $P1742
    unless_null $P118, vivify_753
    new $P118, "Undef"
  vivify_753:
    unless $P118, unless_1773
    set $P117, $P118
    goto unless_1773_end
  unless_1773:
.annotate 'line', 827
    new $P119, 'String'
    set $P119, "Could not find a proto for multi "
    find_lex $P120, "$name"
    unless_null $P120, vivify_754
    new $P120, "Undef"
  vivify_754:
    concat $P121, $P119, $P120
    concat $P122, $P121, ", and proto generation is NYI"
    die $P122
  unless_1773_end:
.annotate 'line', 791
    .return ($P117)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1745"  :anon :subid("171_1339198188.86") :outer("170_1339198188.86")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 795
    .const 'Sub' $P1769 = "173_1339198188.86" 
    capture_lex $P1769
    .const 'Sub' $P1756 = "172_1339198188.86" 
    capture_lex $P1756
.annotate 'line', 796
    new $P123, "Undef"
    set $P1747, $P123
    .lex "$parent", $P1747
.annotate 'line', 797
    $P1749 = root_new ['parrot';'Hash']
    set $P1748, $P1749
    .lex "%meths", $P1748
.annotate 'line', 798
    new $P124, "Undef"
    set $P1750, $P124
    .lex "$dispatcher", $P1750
.annotate 'line', 796
    find_lex $P125, "$j"
    unless_null $P125, vivify_720
    new $P125, "Undef"
  vivify_720:
    set $I104, $P125
    find_lex $P126, "self"
    nqp_decontainerize $P127, $P126
    nqp_get_sc_object $P128, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P1751, $P127, $P128, "@!mro", 11
    unless_null $P1751, vivify_721
    $P1751 = root_new ['parrot';'ResizablePMCArray']
  vivify_721:
    set $P129, $P1751[$I104]
    unless_null $P129, vivify_722
    new $P129, "Undef"
  vivify_722:
    set $P1747, $P129
.annotate 'line', 797
    set $P125, $P1747
    unless_null $P125, vivify_723
    new $P125, "Undef"
  vivify_723:
    get_how $P126, $P125
    set $P127, $P1747
    unless_null $P127, vivify_724
    new $P127, "Undef"
  vivify_724:
    $P128 = $P126."method_table"($P127)
    set $P1748, $P128
.annotate 'line', 798
    find_lex $P125, "$name"
    unless_null $P125, vivify_725
    new $P125, "Undef"
  vivify_725:
    set $P1752, $P1748
    unless_null $P1752, vivify_726
    $P1752 = root_new ['parrot';'Hash']
  vivify_726:
    set $P126, $P1752[$P125]
    unless_null $P126, vivify_727
    new $P126, "Undef"
  vivify_727:
    set $P1750, $P126
.annotate 'line', 799
    set $P125, $P1750
    unless_null $P125, vivify_728
    new $P125, "Undef"
  vivify_728:
    defined $I104, $P125
    unless $I104, if_1753_end
.annotate 'line', 802
    set $P126, $P1750
    unless_null $P126, vivify_729
    new $P126, "Undef"
  vivify_729:
    is_dispatcher $I105, $P126
    if $I105, if_1754
.annotate 'line', 814
    set $P131, $P1750
    unless_null $P131, vivify_730
    new $P131, "Undef"
  vivify_730:
    can $I106, $P131, "is_dispatcher"
    if $I106, if_1767
    new $P130, 'Integer'
    set $P130, $I106
    goto if_1767_end
  if_1767:
    set $P132, $P1750
    unless_null $P132, vivify_731
    new $P132, "Undef"
  vivify_731:
    $P133 = $P132."is_dispatcher"()
    set $P130, $P133
  if_1767_end:
    if $P130, if_1766
.annotate 'line', 821
    new $P136, 'String'
    set $P136, "Could not find a proto for multi "
    find_lex $P137, "$name"
    unless_null $P137, vivify_732
    new $P137, "Undef"
  vivify_732:
    concat $P138, $P136, $P137
    concat $P139, $P138, " (it may exist, but an only is hiding it if so)"
    die $P139
.annotate 'line', 820
    goto if_1766_end
  if_1766:
.annotate 'line', 814
    .const 'Sub' $P1769 = "173_1339198188.86" 
    capture_lex $P1769
    $P1769()
  if_1766_end:
    goto if_1754_end
  if_1754:
.annotate 'line', 802
    .const 'Sub' $P1756 = "172_1339198188.86" 
    capture_lex $P1756
    $P1756()
  if_1754_end:
  if_1753_end:
.annotate 'line', 824
    find_lex $P125, "$j"
    unless_null $P125, vivify_752
    new $P125, "Undef"
  vivify_752:
    add $P126, $P125, 1
    store_lex "$j", $P126
.annotate 'line', 795
    .return ($P126)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1768"  :anon :subid("173_1339198188.86") :outer("171_1339198188.86")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 815
    new $P134, "Undef"
    set $P1770, $P134
    .lex "$new_disp", $P1770
    find_lex $P135, "$dispatcher"
    unless_null $P135, vivify_733
    new $P135, "Undef"
  vivify_733:
    $P136 = $P135."derive_dispatcher"()
    set $P1770, $P136
.annotate 'line', 816
    set $P135, $P1770
    unless_null $P135, vivify_734
    new $P135, "Undef"
  vivify_734:
    find_lex $P136, "$code"
    unless_null $P136, vivify_735
    new $P136, "Undef"
  vivify_735:
    $P135."add_dispatchee"($P136)
.annotate 'line', 817
    set $P135, $P1770
    unless_null $P135, vivify_736
    new $P135, "Undef"
  vivify_736:
    find_lex $P136, "$name"
    unless_null $P136, vivify_737
    new $P136, "Undef"
  vivify_737:
    find_lex $P137, "self"
    nqp_decontainerize $P138, $P137
    nqp_get_sc_object $P139, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P1771, $P138, $P139, "%!methods", 2
    unless_null $P1771, vivify_738
    $P1771 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P138, $P139, "%!methods", 2, $P1771
  vivify_738:
    set $P1771[$P136], $P135
.annotate 'line', 818
    new $P135, "Float"
    assign $P135, 1
    store_lex "$found", $P135
.annotate 'line', 814
    .return ($P135)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1755"  :anon :subid("172_1339198188.86") :outer("171_1339198188.86")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 804
    $P1758 = root_new ['parrot';'ResizablePMCArray']
    set $P1757, $P1758
    .lex "@new_dispatchees", $P1757
.annotate 'line', 806
    new $P127, "Undef"
    set $P1759, $P127
    .lex "$new_disp", $P1759
.annotate 'line', 807
    new $P128, "Undef"
    set $P1760, $P128
    .lex "$clone_callback", $P1760
.annotate 'line', 802
    set $P1761, $P1757
    unless_null $P1761, vivify_739
    $P1761 = root_new ['parrot';'ResizablePMCArray']
  vivify_739:
.annotate 'line', 805
    find_lex $P129, "$code"
    unless_null $P129, vivify_740
    new $P129, "Undef"
  vivify_740:
    set $P1762, $P1757
    unless_null $P1762, vivify_741
    $P1762 = root_new ['parrot';'ResizablePMCArray']
    set $P1757, $P1762
  vivify_741:
    set $P1762[0], $P129
.annotate 'line', 806
    find_lex $P129, "$dispatcher"
    unless_null $P129, vivify_742
    new $P129, "Undef"
  vivify_742:
    set $P1763, $P1757
    unless_null $P1763, vivify_743
    $P1763 = root_new ['parrot';'ResizablePMCArray']
  vivify_743:
    create_dispatch_and_add_candidates $P130, $P129, $P1763
    set $P1759, $P130
.annotate 'line', 807
    find_lex $P129, "$dispatcher"
    unless_null $P129, vivify_744
    new $P129, "Undef"
  vivify_744:
    getprop $P130, $P129, "CLONE_CALLBACK"
    set $P1760, $P130
.annotate 'line', 808
    set $P129, $P1760
    unless_null $P129, vivify_745
    new $P129, "Undef"
  vivify_745:
    defined $I106, $P129
    unless $I106, if_1764_end
.annotate 'line', 809
    set $P130, $P1760
    unless_null $P130, vivify_746
    new $P130, "Undef"
  vivify_746:
    find_lex $P131, "$dispatcher"
    unless_null $P131, vivify_747
    new $P131, "Undef"
  vivify_747:
    set $P132, $P1759
    unless_null $P132, vivify_748
    new $P132, "Undef"
  vivify_748:
    $P130($P131, $P132)
  if_1764_end:
.annotate 'line', 811
    set $P129, $P1759
    unless_null $P129, vivify_749
    new $P129, "Undef"
  vivify_749:
    find_lex $P130, "$name"
    unless_null $P130, vivify_750
    new $P130, "Undef"
  vivify_750:
    find_lex $P131, "self"
    nqp_decontainerize $P132, $P131
    nqp_get_sc_object $P133, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P1765, $P132, $P133, "%!methods", 2
    unless_null $P1765, vivify_751
    $P1765 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P132, $P133, "%!methods", 2, $P1765
  vivify_751:
    set $P1765[$P130], $P129
.annotate 'line', 812
    new $P129, "Float"
    assign $P129, 1
    store_lex "$found", $P129
.annotate 'line', 802
    .return ($P129)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_type_cache" :anon :subid("73_1339198188.86") :outer("153_1339198188.86")
    .param pmc param_1776
    .param pmc param_1777
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 927
    .const 'Sub' $P1789 = "175_1339198188.86" 
    capture_lex $P1789
    .const 'Sub' $P1783 = "174_1339198188.86" 
    capture_lex $P1783
    .lex "self", param_1776
    .lex "$obj", param_1777
.annotate 'line', 928
    $P1779 = root_new ['parrot';'ResizablePMCArray']
    set $P1778, $P1779
    .lex "@tc", $P1778
.annotate 'line', 927
    set $P1780, $P1778
    unless_null $P1780, vivify_764
    $P1780 = root_new ['parrot';'ResizablePMCArray']
  vivify_764:
.annotate 'line', 929
    set $P108, param_1776
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P1781, $P109, $P110, "@!mro", 11
    unless_null $P1781, vivify_765
    $P1781 = root_new ['parrot';'ResizablePMCArray']
  vivify_765:
    defined $I100, $P1781
    unless $I100, for_undef_766
    iter $P107, $P1781
    new $P112, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P112, loop1786_handler
    push_eh $P112
  loop1786_test:
    unless $P107, loop1786_done
    shift $P111, $P107
  loop1786_redo:
    .const 'Sub' $P1783 = "174_1339198188.86" 
    capture_lex $P1783
    $P1783($P111)
  loop1786_next:
    goto loop1786_test
  loop1786_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P114, exception, 'type'
    eq $P114, .CONTROL_LOOP_NEXT, loop1786_next
    eq $P114, .CONTROL_LOOP_REDO, loop1786_redo
  loop1786_done:
    pop_eh 
  for_undef_766:
.annotate 'line', 930
    set $P108, param_1776
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P1787, $P109, $P110, "@!done", 12
    unless_null $P1787, vivify_769
    $P1787 = root_new ['parrot';'ResizablePMCArray']
  vivify_769:
    defined $I100, $P1787
    unless $I100, for_undef_770
    iter $P107, $P1787
    new $P112, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P112, loop1792_handler
    push_eh $P112
  loop1792_test:
    unless $P107, loop1792_done
    shift $P111, $P107
  loop1792_redo:
    .const 'Sub' $P1789 = "175_1339198188.86" 
    capture_lex $P1789
    $P1789($P111)
  loop1792_next:
    goto loop1792_test
  loop1792_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P114, exception, 'type'
    eq $P114, .CONTROL_LOOP_NEXT, loop1792_next
    eq $P114, .CONTROL_LOOP_REDO, loop1792_redo
  loop1792_done:
    pop_eh 
  for_undef_770:
.annotate 'line', 931
    set $P107, param_1777
    unless_null $P107, vivify_773
    new $P107, "Undef"
  vivify_773:
    set $P1793, $P1778
    unless_null $P1793, vivify_774
    $P1793 = root_new ['parrot';'ResizablePMCArray']
  vivify_774:
    publish_type_check_cache $P107, $P1793
.annotate 'line', 927
    .return ()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1782"  :anon :subid("174_1339198188.86") :outer("73_1339198188.86")
    .param pmc param_1784
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 929
    .lex "$_", param_1784
    find_lex $P1785, "@tc"
    unless_null $P1785, vivify_767
    $P1785 = root_new ['parrot';'ResizablePMCArray']
  vivify_767:
    find_lex $P112, "$_"
    unless_null $P112, vivify_768
    new $P112, "Undef"
  vivify_768:
    $P113 = $P1785."push"($P112)
    .return ($P113)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1788"  :anon :subid("175_1339198188.86") :outer("73_1339198188.86")
    .param pmc param_1790
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 930
    .lex "$_", param_1790
    find_lex $P1791, "@tc"
    unless_null $P1791, vivify_771
    $P1791 = root_new ['parrot';'ResizablePMCArray']
  vivify_771:
    find_lex $P112, "$_"
    unless_null $P112, vivify_772
    new $P112, "Undef"
  vivify_772:
    $P113 = $P1791."push"($P112)
    .return ($P113)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_method_cache" :anon :subid("74_1339198188.86") :outer("153_1339198188.86")
    .param pmc param_1795
    .param pmc param_1796
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 934
    .const 'Sub' $P1806 = "176_1339198188.86" 
    capture_lex $P1806
    .lex "self", param_1795
    .lex "$obj", param_1796
.annotate 'line', 937
    $P1798 = root_new ['parrot';'Hash']
    set $P1797, $P1798
    .lex "%cache", $P1797
.annotate 'line', 938
    $P1800 = root_new ['parrot';'ResizablePMCArray']
    set $P1799, $P1800
    .lex "@mro_reversed", $P1799
.annotate 'line', 934
    set $P1801, $P1797
    unless_null $P1801, vivify_775
    $P1801 = root_new ['parrot';'Hash']
  vivify_775:
.annotate 'line', 938
    set $P107, param_1795
    nqp_decontainerize $P108, $P107
    nqp_get_sc_object $P109, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P1802, $P108, $P109, "@!mro", 11
    unless_null $P1802, vivify_776
    $P1802 = root_new ['parrot';'ResizablePMCArray']
  vivify_776:
    clone $P110, $P1802
    set $P1799, $P110
.annotate 'line', 939
    set $P1803, $P1799
    unless_null $P1803, vivify_777
    $P1803 = root_new ['parrot';'ResizablePMCArray']
  vivify_777:
    $P1803."reverse"()
.annotate 'line', 940
    set $P1804, $P1799
    unless_null $P1804, vivify_778
    $P1804 = root_new ['parrot';'ResizablePMCArray']
  vivify_778:
    defined $I100, $P1804
    unless $I100, for_undef_779
    iter $P107, $P1804
    new $P110, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P110, loop1813_handler
    push_eh $P110
  loop1813_test:
    unless $P107, loop1813_done
    shift $P108, $P107
  loop1813_redo:
    .const 'Sub' $P1806 = "176_1339198188.86" 
    capture_lex $P1806
    $P1806($P108)
  loop1813_next:
    goto loop1813_test
  loop1813_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P111, exception, 'type'
    eq $P111, .CONTROL_LOOP_NEXT, loop1813_next
    eq $P111, .CONTROL_LOOP_REDO, loop1813_redo
  loop1813_done:
    pop_eh 
  for_undef_779:
.annotate 'line', 945
    set $P107, param_1796
    unless_null $P107, vivify_786
    new $P107, "Undef"
  vivify_786:
    set $P1814, $P1797
    unless_null $P1814, vivify_787
    $P1814 = root_new ['parrot';'Hash']
  vivify_787:
    publish_method_cache $P107, $P1814
.annotate 'line', 946
    set $P107, param_1796
    unless_null $P107, vivify_788
    new $P107, "Undef"
  vivify_788:
    set_method_cache_authoritativeness $P107, 1
.annotate 'line', 934
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1805"  :anon :subid("176_1339198188.86") :outer("74_1339198188.86")
    .param pmc param_1807
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 940
    .const 'Sub' $P1809 = "177_1339198188.86" 
    capture_lex $P1809
    .lex "$_", param_1807
.annotate 'line', 941
    find_lex $P110, "$_"
    unless_null $P110, vivify_780
    new $P110, "Undef"
  vivify_780:
    get_how $P111, $P110
    find_lex $P112, "$_"
    unless_null $P112, vivify_781
    new $P112, "Undef"
  vivify_781:
    $P113 = $P111."method_table"($P112)
    defined $I101, $P113
    unless $I101, for_undef_782
    iter $P109, $P113
    new $P115, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P115, loop1812_handler
    push_eh $P115
  loop1812_test:
    unless $P109, loop1812_done
    shift $P114, $P109
  loop1812_redo:
    .const 'Sub' $P1809 = "177_1339198188.86" 
    capture_lex $P1809
    $P1809($P114)
  loop1812_next:
    goto loop1812_test
  loop1812_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P117, exception, 'type'
    eq $P117, .CONTROL_LOOP_NEXT, loop1812_next
    eq $P117, .CONTROL_LOOP_REDO, loop1812_redo
  loop1812_done:
    pop_eh 
  for_undef_782:
.annotate 'line', 940
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1808"  :anon :subid("177_1339198188.86") :outer("176_1339198188.86")
    .param pmc param_1810
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 941
    .lex "$_", param_1810
.annotate 'line', 942
    find_lex $P115, "$_"
    unless_null $P115, vivify_783
    new $P115, "Undef"
  vivify_783:
    $P116 = $P115."value"()
    find_lex $P117, "$_"
    unless_null $P117, vivify_784
    new $P117, "Undef"
  vivify_784:
    $P118 = $P117."key"()
    find_lex $P1811, "%cache"
    unless_null $P1811, vivify_785
    $P1811 = root_new ['parrot';'Hash']
    store_lex "%cache", $P1811
  vivify_785:
    set $P1811[$P118], $P116
.annotate 'line', 941
    .return ($P116)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "publish_boolification_spec" :anon :subid("75_1339198188.86") :outer("153_1339198188.86")
    .param pmc param_1816
    .param pmc param_1817
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 949
    .lex "self", param_1816
    .lex "$obj", param_1817
.annotate 'line', 950
    new $P107, "Undef"
    set $P1818, $P107
    .lex "$bool_meth", $P1818
    set $P108, param_1816
    nqp_decontainerize $P109, $P108
    set $P110, param_1817
    unless_null $P110, vivify_789
    new $P110, "Undef"
  vivify_789:
    $P111 = $P109."find_method"($P110, "Bool")
    set $P1818, $P111
.annotate 'line', 951
    set $P109, $P1818
    unless_null $P109, vivify_790
    new $P109, "Undef"
  vivify_790:
    defined $I100, $P109
    if $I100, if_1819
.annotate 'line', 955
    set $P111, param_1817
    unless_null $P111, vivify_791
    new $P111, "Undef"
  vivify_791:
    null $P112
    set_boolification_spec $P111, 5, $P112
.annotate 'line', 954
    set $P108, $P111
.annotate 'line', 951
    goto if_1819_end
  if_1819:
.annotate 'line', 952
    set $P110, param_1817
    unless_null $P110, vivify_792
    new $P110, "Undef"
  vivify_792:
    set $P111, $P1818
    unless_null $P111, vivify_793
    new $P111, "Undef"
  vivify_793:
    set_boolification_spec $P110, 0, $P111
.annotate 'line', 951
    set $P108, $P110
  if_1819_end:
.annotate 'line', 949
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_parrot_vtable_mapping" :anon :subid("76_1339198188.86") :outer("153_1339198188.86")
    .param pmc param_1821
    .param pmc param_1822
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 959
    .const 'Sub' $P1832 = "178_1339198188.86" 
    capture_lex $P1832
    .lex "self", param_1821
    .lex "$obj", param_1822
.annotate 'line', 960
    $P1824 = root_new ['parrot';'Hash']
    set $P1823, $P1824
    .lex "%mapping", $P1823
.annotate 'line', 961
    $P1826 = root_new ['parrot';'ResizablePMCArray']
    set $P1825, $P1826
    .lex "@mro_reversed", $P1825
.annotate 'line', 959
    set $P1827, $P1823
    unless_null $P1827, vivify_794
    $P1827 = root_new ['parrot';'Hash']
  vivify_794:
.annotate 'line', 961
    set $P107, param_1821
    nqp_decontainerize $P108, $P107
    nqp_get_sc_object $P109, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P1828, $P108, $P109, "@!mro", 11
    unless_null $P1828, vivify_795
    $P1828 = root_new ['parrot';'ResizablePMCArray']
  vivify_795:
    clone $P110, $P1828
    set $P1825, $P110
.annotate 'line', 962
    set $P1829, $P1825
    unless_null $P1829, vivify_796
    $P1829 = root_new ['parrot';'ResizablePMCArray']
  vivify_796:
    $P1829."reverse"()
.annotate 'line', 963
    set $P1830, $P1825
    unless_null $P1830, vivify_797
    $P1830 = root_new ['parrot';'ResizablePMCArray']
  vivify_797:
    defined $I100, $P1830
    unless $I100, for_undef_798
    iter $P107, $P1830
    new $P110, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P110, loop1839_handler
    push_eh $P110
  loop1839_test:
    unless $P107, loop1839_done
    shift $P108, $P107
  loop1839_redo:
    .const 'Sub' $P1832 = "178_1339198188.86" 
    capture_lex $P1832
    $P1832($P108)
  loop1839_next:
    goto loop1839_test
  loop1839_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P111, exception, 'type'
    eq $P111, .CONTROL_LOOP_NEXT, loop1839_next
    eq $P111, .CONTROL_LOOP_REDO, loop1839_redo
  loop1839_done:
    pop_eh 
  for_undef_798:
.annotate 'line', 968
    set $P1841, $P1823
    unless_null $P1841, vivify_805
    $P1841 = root_new ['parrot';'Hash']
  vivify_805:
    set $N100, $P1841
    if $N100, if_1840
    new $P107, 'Float'
    set $P107, $N100
    goto if_1840_end
  if_1840:
.annotate 'line', 969
    set $P108, param_1822
    unless_null $P108, vivify_806
    new $P108, "Undef"
  vivify_806:
    set $P1842, $P1823
    unless_null $P1842, vivify_807
    $P1842 = root_new ['parrot';'Hash']
  vivify_807:
    stable_publish_vtable_mapping $P108, $P1842
  if_1840_end:
.annotate 'line', 959
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1831"  :anon :subid("178_1339198188.86") :outer("76_1339198188.86")
    .param pmc param_1833
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 963
    .const 'Sub' $P1835 = "179_1339198188.86" 
    capture_lex $P1835
    .lex "$_", param_1833
.annotate 'line', 964
    find_lex $P110, "$_"
    unless_null $P110, vivify_799
    new $P110, "Undef"
  vivify_799:
    get_how $P111, $P110
    find_lex $P112, "$_"
    unless_null $P112, vivify_800
    new $P112, "Undef"
  vivify_800:
    $P113 = $P111."parrot_vtable_mappings"($P112, 1 :named("local"))
    defined $I101, $P113
    unless $I101, for_undef_801
    iter $P109, $P113
    new $P115, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P115, loop1838_handler
    push_eh $P115
  loop1838_test:
    unless $P109, loop1838_done
    shift $P114, $P109
  loop1838_redo:
    .const 'Sub' $P1835 = "179_1339198188.86" 
    capture_lex $P1835
    $P1835($P114)
  loop1838_next:
    goto loop1838_test
  loop1838_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P117, exception, 'type'
    eq $P117, .CONTROL_LOOP_NEXT, loop1838_next
    eq $P117, .CONTROL_LOOP_REDO, loop1838_redo
  loop1838_done:
    pop_eh 
  for_undef_801:
.annotate 'line', 963
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1834"  :anon :subid("179_1339198188.86") :outer("178_1339198188.86")
    .param pmc param_1836
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 964
    .lex "$_", param_1836
.annotate 'line', 965
    find_lex $P115, "$_"
    unless_null $P115, vivify_802
    new $P115, "Undef"
  vivify_802:
    $P116 = $P115."value"()
    find_lex $P117, "$_"
    unless_null $P117, vivify_803
    new $P117, "Undef"
  vivify_803:
    $P118 = $P117."key"()
    find_lex $P1837, "%mapping"
    unless_null $P1837, vivify_804
    $P1837 = root_new ['parrot';'Hash']
    store_lex "%mapping", $P1837
  vivify_804:
    set $P1837[$P118], $P116
.annotate 'line', 964
    .return ($P116)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_parrot_vtablee_handler_mapping" :anon :subid("77_1339198188.86") :outer("153_1339198188.86")
    .param pmc param_1844
    .param pmc param_1845
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 973
    .const 'Sub' $P1855 = "180_1339198188.86" 
    capture_lex $P1855
    .lex "self", param_1844
    .lex "$obj", param_1845
.annotate 'line', 974
    $P1847 = root_new ['parrot';'Hash']
    set $P1846, $P1847
    .lex "%mapping", $P1846
.annotate 'line', 975
    $P1849 = root_new ['parrot';'ResizablePMCArray']
    set $P1848, $P1849
    .lex "@mro_reversed", $P1848
.annotate 'line', 973
    set $P1850, $P1846
    unless_null $P1850, vivify_808
    $P1850 = root_new ['parrot';'Hash']
  vivify_808:
.annotate 'line', 975
    set $P107, param_1844
    nqp_decontainerize $P108, $P107
    nqp_get_sc_object $P109, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P1851, $P108, $P109, "@!mro", 11
    unless_null $P1851, vivify_809
    $P1851 = root_new ['parrot';'ResizablePMCArray']
  vivify_809:
    clone $P110, $P1851
    set $P1848, $P110
.annotate 'line', 976
    set $P1852, $P1848
    unless_null $P1852, vivify_810
    $P1852 = root_new ['parrot';'ResizablePMCArray']
  vivify_810:
    $P1852."reverse"()
.annotate 'line', 977
    set $P1853, $P1848
    unless_null $P1853, vivify_811
    $P1853 = root_new ['parrot';'ResizablePMCArray']
  vivify_811:
    defined $I100, $P1853
    unless $I100, for_undef_812
    iter $P107, $P1853
    new $P110, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P110, loop1862_handler
    push_eh $P110
  loop1862_test:
    unless $P107, loop1862_done
    shift $P108, $P107
  loop1862_redo:
    .const 'Sub' $P1855 = "180_1339198188.86" 
    capture_lex $P1855
    $P1855($P108)
  loop1862_next:
    goto loop1862_test
  loop1862_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P111, exception, 'type'
    eq $P111, .CONTROL_LOOP_NEXT, loop1862_next
    eq $P111, .CONTROL_LOOP_REDO, loop1862_redo
  loop1862_done:
    pop_eh 
  for_undef_812:
.annotate 'line', 982
    set $P1864, $P1846
    unless_null $P1864, vivify_819
    $P1864 = root_new ['parrot';'Hash']
  vivify_819:
    set $N100, $P1864
    if $N100, if_1863
    new $P107, 'Float'
    set $P107, $N100
    goto if_1863_end
  if_1863:
.annotate 'line', 983
    set $P108, param_1845
    unless_null $P108, vivify_820
    new $P108, "Undef"
  vivify_820:
    set $P1865, $P1846
    unless_null $P1865, vivify_821
    $P1865 = root_new ['parrot';'Hash']
  vivify_821:
    stable_publish_vtable_handler_mapping $P108, $P1865
  if_1863_end:
.annotate 'line', 973
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1854"  :anon :subid("180_1339198188.86") :outer("77_1339198188.86")
    .param pmc param_1856
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 977
    .const 'Sub' $P1858 = "181_1339198188.86" 
    capture_lex $P1858
    .lex "$_", param_1856
.annotate 'line', 978
    find_lex $P110, "$_"
    unless_null $P110, vivify_813
    new $P110, "Undef"
  vivify_813:
    get_how $P111, $P110
    find_lex $P112, "$_"
    unless_null $P112, vivify_814
    new $P112, "Undef"
  vivify_814:
    $P113 = $P111."parrot_vtable_handler_mappings"($P112, 1 :named("local"))
    defined $I101, $P113
    unless $I101, for_undef_815
    iter $P109, $P113
    new $P115, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P115, loop1861_handler
    push_eh $P115
  loop1861_test:
    unless $P109, loop1861_done
    shift $P114, $P109
  loop1861_redo:
    .const 'Sub' $P1858 = "181_1339198188.86" 
    capture_lex $P1858
    $P1858($P114)
  loop1861_next:
    goto loop1861_test
  loop1861_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P117, exception, 'type'
    eq $P117, .CONTROL_LOOP_NEXT, loop1861_next
    eq $P117, .CONTROL_LOOP_REDO, loop1861_redo
  loop1861_done:
    pop_eh 
  for_undef_815:
.annotate 'line', 977
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1857"  :anon :subid("181_1339198188.86") :outer("180_1339198188.86")
    .param pmc param_1859
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 978
    .lex "$_", param_1859
.annotate 'line', 979
    find_lex $P115, "$_"
    unless_null $P115, vivify_816
    new $P115, "Undef"
  vivify_816:
    $P116 = $P115."value"()
    find_lex $P117, "$_"
    unless_null $P117, vivify_817
    new $P117, "Undef"
  vivify_817:
    $P118 = $P117."key"()
    find_lex $P1860, "%mapping"
    unless_null $P1860, vivify_818
    $P1860 = root_new ['parrot';'Hash']
    store_lex "%mapping", $P1860
  vivify_818:
    set $P1860[$P118], $P116
.annotate 'line', 978
    .return ($P116)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parents" :anon :subid("78_1339198188.86") :outer("153_1339198188.86")
    .param pmc param_1867
    .param pmc param_1868
    .param pmc param_1869 :optional :named("local")
    .param int has_param_1869 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 991
    .lex "self", param_1867
    .lex "$obj", param_1868
    if has_param_1869, optparam_822
    new $P107, "Undef"
    set param_1869, $P107
  optparam_822:
    .lex "$local", param_1869
.annotate 'line', 992
    set $P109, param_1869
    unless_null $P109, vivify_823
    new $P109, "Undef"
  vivify_823:
    if $P109, if_1870
    set $P113, param_1867
    nqp_decontainerize $P114, $P113
    nqp_get_sc_object $P115, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P1872, $P114, $P115, "@!mro", 11
    unless_null $P1872, vivify_824
    $P1872 = root_new ['parrot';'ResizablePMCArray']
  vivify_824:
    set $P108, $P1872
    goto if_1870_end
  if_1870:
    set $P110, param_1867
    nqp_decontainerize $P111, $P110
    nqp_get_sc_object $P112, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P1871, $P111, $P112, "@!parents", 5
    unless_null $P1871, vivify_825
    $P1871 = root_new ['parrot';'ResizablePMCArray']
  vivify_825:
    set $P108, $P1871
  if_1870_end:
.annotate 'line', 991
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "mro" :anon :subid("79_1339198188.86") :outer("153_1339198188.86")
    .param pmc param_1874
    .param pmc param_1875
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 995
    .lex "self", param_1874
    .lex "$obj", param_1875
    set $P107, param_1874
    nqp_decontainerize $P108, $P107
    nqp_get_sc_object $P109, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P1876, $P108, $P109, "@!mro", 11
    unless_null $P1876, vivify_826
    $P1876 = root_new ['parrot';'ResizablePMCArray']
  vivify_826:
    .return ($P1876)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "roles" :anon :subid("80_1339198188.86") :outer("153_1339198188.86")
    .param pmc param_1878
    .param pmc param_1879
    .param pmc param_1880 :named("local")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 999
    .lex "self", param_1878
    .lex "$obj", param_1879
    .lex "$local", param_1880
    set $P107, param_1878
    nqp_decontainerize $P108, $P107
    nqp_get_sc_object $P109, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P1881, $P108, $P109, "@!roles", 6
    unless_null $P1881, vivify_827
    $P1881 = root_new ['parrot';'ResizablePMCArray']
  vivify_827:
    .return ($P1881)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "methods" :anon :subid("81_1339198188.86") :outer("153_1339198188.86")
    .param pmc param_1883
    .param pmc param_1884
    .param pmc param_1885 :optional :named("local")
    .param int has_param_1885 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1003
    .const 'Sub' $P1889 = "182_1339198188.86" 
    capture_lex $P1889
    .lex "self", param_1883
    .lex "$obj", param_1884
    if has_param_1885, optparam_828
    new $P107, "Undef"
    set param_1885, $P107
  optparam_828:
    .lex "$local", param_1885
.annotate 'line', 1004
    set $P109, param_1885
    unless_null $P109, vivify_829
    new $P109, "Undef"
  vivify_829:
    if $P109, if_1886
.annotate 'line', 1007
    .const 'Sub' $P1889 = "182_1339198188.86" 
    capture_lex $P1889
    $P110 = $P1889()
    set $P108, $P110
.annotate 'line', 1004
    goto if_1886_end
  if_1886:
    set $P110, param_1883
    nqp_decontainerize $P111, $P110
    nqp_get_sc_object $P112, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P1887, $P111, $P112, "@!method_order", 3
    unless_null $P1887, vivify_839
    $P1887 = root_new ['parrot';'ResizablePMCArray']
  vivify_839:
    set $P108, $P1887
  if_1886_end:
.annotate 'line', 1003
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1888"  :anon :subid("182_1339198188.86") :outer("81_1339198188.86")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1007
    .const 'Sub' $P1895 = "183_1339198188.86" 
    capture_lex $P1895
.annotate 'line', 1008
    $P1891 = root_new ['parrot';'ResizablePMCArray']
    set $P1890, $P1891
    .lex "@meths", $P1890
.annotate 'line', 1007
    set $P1892, $P1890
    unless_null $P1892, vivify_830
    $P1892 = root_new ['parrot';'ResizablePMCArray']
  vivify_830:
.annotate 'line', 1009
    find_lex $P111, "self"
    nqp_decontainerize $P112, $P111
    nqp_get_sc_object $P113, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P1893, $P112, $P113, "@!mro", 11
    unless_null $P1893, vivify_831
    $P1893 = root_new ['parrot';'ResizablePMCArray']
  vivify_831:
    defined $I100, $P1893
    unless $I100, for_undef_832
    iter $P110, $P1893
    new $P116, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P116, loop1902_handler
    push_eh $P116
  loop1902_test:
    unless $P110, loop1902_done
    shift $P114, $P110
  loop1902_redo:
    .const 'Sub' $P1895 = "183_1339198188.86" 
    capture_lex $P1895
    $P1895($P114)
  loop1902_next:
    goto loop1902_test
  loop1902_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P117, exception, 'type'
    eq $P117, .CONTROL_LOOP_NEXT, loop1902_next
    eq $P117, .CONTROL_LOOP_REDO, loop1902_redo
  loop1902_done:
    pop_eh 
  for_undef_832:
.annotate 'line', 1007
    set $P1903, $P1890
    unless_null $P1903, vivify_838
    $P1903 = root_new ['parrot';'ResizablePMCArray']
  vivify_838:
    .return ($P1903)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1894"  :anon :subid("183_1339198188.86") :outer("182_1339198188.86")
    .param pmc param_1896
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1009
    .const 'Sub' $P1898 = "184_1339198188.86" 
    capture_lex $P1898
    .lex "$_", param_1896
.annotate 'line', 1010
    find_lex $P116, "$_"
    unless_null $P116, vivify_833
    new $P116, "Undef"
  vivify_833:
    get_how $P117, $P116
    find_lex $P118, "$_"
    unless_null $P118, vivify_834
    new $P118, "Undef"
  vivify_834:
    $P119 = $P117."methods"($P118, 1 :named("local"))
    defined $I101, $P119
    unless $I101, for_undef_835
    iter $P115, $P119
    new $P121, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P121, loop1901_handler
    push_eh $P121
  loop1901_test:
    unless $P115, loop1901_done
    shift $P120, $P115
  loop1901_redo:
    .const 'Sub' $P1898 = "184_1339198188.86" 
    capture_lex $P1898
    $P1898($P120)
  loop1901_next:
    goto loop1901_test
  loop1901_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P123, exception, 'type'
    eq $P123, .CONTROL_LOOP_NEXT, loop1901_next
    eq $P123, .CONTROL_LOOP_REDO, loop1901_redo
  loop1901_done:
    pop_eh 
  for_undef_835:
.annotate 'line', 1009
    .return ($P115)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1897"  :anon :subid("184_1339198188.86") :outer("183_1339198188.86")
    .param pmc param_1899
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1010
    .lex "$_", param_1899
.annotate 'line', 1011
    find_lex $P1900, "@meths"
    unless_null $P1900, vivify_836
    $P1900 = root_new ['parrot';'ResizablePMCArray']
  vivify_836:
    find_lex $P121, "$_"
    unless_null $P121, vivify_837
    new $P121, "Undef"
  vivify_837:
    $P122 = $P1900."push"($P121)
.annotate 'line', 1010
    .return ($P122)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "method_table" :anon :subid("82_1339198188.86") :outer("153_1339198188.86")
    .param pmc param_1905
    .param pmc param_1906
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1018
    .lex "self", param_1905
    .lex "$obj", param_1906
    set $P107, param_1905
    nqp_decontainerize $P108, $P107
    nqp_get_sc_object $P109, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P1907, $P108, $P109, "%!methods", 2
    unless_null $P1907, vivify_840
    $P1907 = root_new ['parrot';'Hash']
  vivify_840:
    .return ($P1907)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "name" :anon :subid("83_1339198188.86") :outer("153_1339198188.86")
    .param pmc param_1909
    .param pmc param_1910
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1022
    .lex "self", param_1909
    .lex "$obj", param_1910
    set $P107, param_1909
    nqp_decontainerize $P108, $P107
    nqp_get_sc_object $P109, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P110, $P108, $P109, "$!name", 0
    unless_null $P110, vivify_841
    new $P110, "Undef"
  vivify_841:
    .return ($P110)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "traced" :anon :subid("84_1339198188.86") :outer("153_1339198188.86")
    .param pmc param_1912
    .param pmc param_1913
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1026
    .lex "self", param_1912
    .lex "$obj", param_1913
    set $P107, param_1912
    nqp_decontainerize $P108, $P107
    nqp_get_sc_object $P109, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P110, $P108, $P109, "$!trace", 15
    unless_null $P110, vivify_842
    new $P110, "Undef"
  vivify_842:
    .return ($P110)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "trace_depth" :anon :subid("85_1339198188.86") :outer("153_1339198188.86")
    .param pmc param_1915
    .param pmc param_1916
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1030
    .lex "self", param_1915
    .lex "$obj", param_1916
    set $P107, param_1915
    nqp_decontainerize $P108, $P107
    nqp_get_sc_object $P109, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P110, $P108, $P109, "$!trace_depth", 16
    unless_null $P110, vivify_843
    new $P110, "Undef"
  vivify_843:
    .return ($P110)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "attributes" :anon :subid("86_1339198188.86") :outer("153_1339198188.86")
    .param pmc param_1918
    .param pmc param_1919
    .param pmc param_1920 :named("local")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1034
    .const 'Sub' $P1926 = "185_1339198188.86" 
    capture_lex $P1926
    .lex "self", param_1918
    .lex "$obj", param_1919
    .lex "$local", param_1920
.annotate 'line', 1035
    $P1922 = root_new ['parrot';'ResizablePMCArray']
    set $P1921, $P1922
    .lex "@attrs", $P1921
.annotate 'line', 1034
    set $P1923, $P1921
    unless_null $P1923, vivify_844
    $P1923 = root_new ['parrot';'ResizablePMCArray']
  vivify_844:
.annotate 'line', 1036
    set $P108, param_1918
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P1924, $P109, $P110, "%!attributes", 1
    unless_null $P1924, vivify_845
    $P1924 = root_new ['parrot';'Hash']
  vivify_845:
    defined $I100, $P1924
    unless $I100, for_undef_846
    iter $P107, $P1924
    new $P112, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P112, loop1929_handler
    push_eh $P112
  loop1929_test:
    unless $P107, loop1929_done
    shift $P111, $P107
  loop1929_redo:
    .const 'Sub' $P1926 = "185_1339198188.86" 
    capture_lex $P1926
    $P1926($P111)
  loop1929_next:
    goto loop1929_test
  loop1929_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P113, exception, 'type'
    eq $P113, .CONTROL_LOOP_NEXT, loop1929_next
    eq $P113, .CONTROL_LOOP_REDO, loop1929_redo
  loop1929_done:
    pop_eh 
  for_undef_846:
.annotate 'line', 1034
    set $P1930, $P1921
    unless_null $P1930, vivify_849
    $P1930 = root_new ['parrot';'ResizablePMCArray']
  vivify_849:
    .return ($P1930)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1925"  :anon :subid("185_1339198188.86") :outer("86_1339198188.86")
    .param pmc param_1927
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1036
    .lex "$_", param_1927
.annotate 'line', 1037
    find_lex $P1928, "@attrs"
    unless_null $P1928, vivify_847
    $P1928 = root_new ['parrot';'ResizablePMCArray']
  vivify_847:
    find_lex $P112, "$_"
    unless_null $P112, vivify_848
    new $P112, "Undef"
  vivify_848:
    $P113 = $P112."value"()
    $P114 = $P1928."push"($P113)
.annotate 'line', 1036
    .return ($P114)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parrot_vtable_mappings" :anon :subid("87_1339198188.86") :outer("153_1339198188.86")
    .param pmc param_1932
    .param pmc param_1933
    .param pmc param_1934 :named("local")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1042
    .lex "self", param_1932
    .lex "$obj", param_1933
    .lex "$local", param_1934
    set $P107, param_1932
    nqp_decontainerize $P108, $P107
    nqp_get_sc_object $P109, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P1935, $P108, $P109, "%!parrot_vtable_mapping", 13
    unless_null $P1935, vivify_850
    $P1935 = root_new ['parrot';'Hash']
  vivify_850:
    .return ($P1935)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parrot_vtable_handler_mappings" :anon :subid("88_1339198188.86") :outer("153_1339198188.86")
    .param pmc param_1937
    .param pmc param_1938
    .param pmc param_1939 :named("local")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1046
    .lex "self", param_1937
    .lex "$obj", param_1938
    .lex "$local", param_1939
    set $P107, param_1937
    nqp_decontainerize $P108, $P107
    nqp_get_sc_object $P109, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P1940, $P108, $P109, "%!parrot_vtable_handler_mapping", 14
    unless_null $P1940, vivify_851
    $P1940 = root_new ['parrot';'Hash']
  vivify_851:
    .return ($P1940)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "isa" :anon :subid("89_1339198188.86") :outer("153_1339198188.86")
    .param pmc param_1944
    .param pmc param_1945
    .param pmc param_1946
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1054
    new $P1943, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P1943, control_1942
    push_eh $P1943
    .lex "self", param_1944
    .lex "$obj", param_1945
    .lex "$check", param_1946
.annotate 'line', 1055
    new $P107, "Undef"
    set $P1947, $P107
    .lex "$check-class", $P1947
.annotate 'line', 1056
    new $P108, "Undef"
    set $P1948, $P108
    .lex "$i", $P1948
.annotate 'line', 1055
    set $P109, param_1946
    unless_null $P109, vivify_852
    new $P109, "Undef"
  vivify_852:
    get_what $P110, $P109
    set $P1947, $P110
.annotate 'line', 1056
    set $P109, param_1944
    nqp_decontainerize $P110, $P109
    nqp_get_sc_object $P111, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P1949, $P110, $P111, "@!mro", 11
    unless_null $P1949, vivify_853
    $P1949 = root_new ['parrot';'ResizablePMCArray']
  vivify_853:
    set $N100, $P1949
    new $P112, 'Float'
    set $P112, $N100
    set $P1948, $P112
.annotate 'line', 1057
    new $P110, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P110, loop1952_handler
    push_eh $P110
  loop1952_test:
    set $P109, $P1948
    unless_null $P109, vivify_854
    new $P109, "Undef"
  vivify_854:
    set $N100, $P109
    set $N101, 0
    isgt $I100, $N100, $N101
    unless $I100, loop1952_done
  loop1952_redo:
.annotate 'line', 1058
    set $P110, $P1948
    unless_null $P110, vivify_855
    new $P110, "Undef"
  vivify_855:
    sub $P111, $P110, 1
    set $P1948, $P111
.annotate 'line', 1059
    set $P110, $P1948
    unless_null $P110, vivify_856
    new $P110, "Undef"
  vivify_856:
    set $I101, $P110
    set $P111, param_1944
    nqp_decontainerize $P112, $P111
    nqp_get_sc_object $P113, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P1951, $P112, $P113, "@!mro", 11
    unless_null $P1951, vivify_857
    $P1951 = root_new ['parrot';'ResizablePMCArray']
  vivify_857:
    set $P114, $P1951[$I101]
    unless_null $P114, vivify_858
    new $P114, "Undef"
  vivify_858:
    set $P115, $P1947
    unless_null $P115, vivify_859
    new $P115, "Undef"
  vivify_859:
    issame $I102, $P114, $P115
    unless $I102, if_1950_end
.annotate 'line', 1060
    new $P116, "Exception"
    set $P116['type'], .CONTROL_RETURN
    new $P117, "Float"
    assign $P117, 1
    setattribute $P116, 'payload', $P117
    throw $P116
  if_1950_end:
  loop1952_next:
.annotate 'line', 1057
    goto loop1952_test
  loop1952_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P111, exception, 'type'
    eq $P111, .CONTROL_LOOP_NEXT, loop1952_next
    eq $P111, .CONTROL_LOOP_REDO, loop1952_redo
  loop1952_done:
    pop_eh 
.annotate 'line', 1063
    new $P109, "Exception"
    set $P109['type'], .CONTROL_RETURN
    new $P110, "Float"
    assign $P110, 0
    setattribute $P109, 'payload', $P110
    throw $P109
.annotate 'line', 1054
    .return ()
  control_1942:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P109, exception, "payload"
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "does" :anon :subid("90_1339198188.86") :outer("153_1339198188.86")
    .param pmc param_1956
    .param pmc param_1957
    .param pmc param_1958
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1066
    new $P1955, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P1955, control_1954
    push_eh $P1955
    .lex "self", param_1956
    .lex "$obj", param_1957
    .lex "$check", param_1958
.annotate 'line', 1067
    new $P107, "Undef"
    set $P1959, $P107
    .lex "$i", $P1959
    set $P108, param_1956
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P1960, $P109, $P110, "@!done", 12
    unless_null $P1960, vivify_860
    $P1960 = root_new ['parrot';'ResizablePMCArray']
  vivify_860:
    set $N100, $P1960
    new $P111, 'Float'
    set $P111, $N100
    set $P1959, $P111
.annotate 'line', 1068
    new $P109, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P109, loop1963_handler
    push_eh $P109
  loop1963_test:
    set $P108, $P1959
    unless_null $P108, vivify_861
    new $P108, "Undef"
  vivify_861:
    set $N100, $P108
    set $N101, 0
    isgt $I100, $N100, $N101
    unless $I100, loop1963_done
  loop1963_redo:
.annotate 'line', 1069
    set $P109, $P1959
    unless_null $P109, vivify_862
    new $P109, "Undef"
  vivify_862:
    sub $P110, $P109, 1
    set $P1959, $P110
.annotate 'line', 1070
    set $P109, $P1959
    unless_null $P109, vivify_863
    new $P109, "Undef"
  vivify_863:
    set $I101, $P109
    set $P110, param_1956
    nqp_decontainerize $P111, $P110
    nqp_get_sc_object $P112, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P1962, $P111, $P112, "@!done", 12
    unless_null $P1962, vivify_864
    $P1962 = root_new ['parrot';'ResizablePMCArray']
  vivify_864:
    set $P113, $P1962[$I101]
    unless_null $P113, vivify_865
    new $P113, "Undef"
  vivify_865:
    set $P114, param_1958
    unless_null $P114, vivify_866
    new $P114, "Undef"
  vivify_866:
    issame $I102, $P113, $P114
    unless $I102, if_1961_end
.annotate 'line', 1071
    new $P115, "Exception"
    set $P115['type'], .CONTROL_RETURN
    new $P116, "Float"
    assign $P116, 1
    setattribute $P115, 'payload', $P116
    throw $P115
  if_1961_end:
  loop1963_next:
.annotate 'line', 1068
    goto loop1963_test
  loop1963_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P110, exception, 'type'
    eq $P110, .CONTROL_LOOP_NEXT, loop1963_next
    eq $P110, .CONTROL_LOOP_REDO, loop1963_redo
  loop1963_done:
    pop_eh 
.annotate 'line', 1074
    new $P108, "Exception"
    set $P108['type'], .CONTROL_RETURN
    new $P109, "Float"
    assign $P109, 0
    setattribute $P108, 'payload', $P109
    throw $P108
.annotate 'line', 1066
    .return ()
  control_1954:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, "payload"
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "can" :anon :subid("91_1339198188.86") :outer("153_1339198188.86")
    .param pmc param_1967
    .param pmc param_1968
    .param pmc param_1969
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1077
    .const 'Sub' $P1972 = "186_1339198188.86" 
    capture_lex $P1972
    new $P1966, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P1966, control_1965
    push_eh $P1966
    .lex "self", param_1967
    .lex "$obj", param_1968
    .lex "$name", param_1969
.annotate 'line', 1078
    set $P108, param_1967
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P1970, $P109, $P110, "@!mro", 11
    unless_null $P1970, vivify_867
    $P1970 = root_new ['parrot';'ResizablePMCArray']
  vivify_867:
    defined $I100, $P1970
    unless $I100, for_undef_868
    iter $P107, $P1970
    new $P114, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P114, loop1979_handler
    push_eh $P114
  loop1979_test:
    unless $P107, loop1979_done
    shift $P111, $P107
  loop1979_redo:
    .const 'Sub' $P1972 = "186_1339198188.86" 
    capture_lex $P1972
    $P1972($P111)
  loop1979_next:
    goto loop1979_test
  loop1979_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P115, exception, 'type'
    eq $P115, .CONTROL_LOOP_NEXT, loop1979_next
    eq $P115, .CONTROL_LOOP_REDO, loop1979_redo
  loop1979_done:
    pop_eh 
  for_undef_868:
.annotate 'line', 1085
    new $P107, "Exception"
    set $P107['type'], .CONTROL_RETURN
    new $P108, "Float"
    assign $P108, 0
    setattribute $P107, 'payload', $P108
    throw $P107
.annotate 'line', 1077
    .return ()
  control_1965:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P107, exception, "payload"
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1971"  :anon :subid("186_1339198188.86") :outer("91_1339198188.86")
    .param pmc param_1976
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1079
    $P1974 = root_new ['parrot';'Hash']
    set $P1973, $P1974
    .lex "%meths", $P1973
.annotate 'line', 1080
    new $P112, "Undef"
    set $P1975, $P112
    .lex "$can", $P1975
    .lex "$_", param_1976
.annotate 'line', 1079
    find_lex $P113, "$_"
    unless_null $P113, vivify_869
    new $P113, "Undef"
  vivify_869:
    get_how $P114, $P113
    find_lex $P115, "$obj"
    unless_null $P115, vivify_870
    new $P115, "Undef"
  vivify_870:
    $P116 = $P114."method_table"($P115)
    set $P1973, $P116
.annotate 'line', 1080
    find_lex $P113, "$name"
    unless_null $P113, vivify_871
    new $P113, "Undef"
  vivify_871:
    set $P1977, $P1973
    unless_null $P1977, vivify_872
    $P1977 = root_new ['parrot';'Hash']
  vivify_872:
    set $P114, $P1977[$P113]
    unless_null $P114, vivify_873
    new $P114, "Undef"
  vivify_873:
    set $P1975, $P114
.annotate 'line', 1081
    set $P114, $P1975
    unless_null $P114, vivify_874
    new $P114, "Undef"
  vivify_874:
    defined $I101, $P114
    if $I101, if_1978
    new $P113, 'Integer'
    set $P113, $I101
    goto if_1978_end
  if_1978:
.annotate 'line', 1082
    new $P115, "Exception"
    set $P115['type'], .CONTROL_RETURN
    set $P116, $P1975
    unless_null $P116, vivify_875
    new $P116, "Undef"
  vivify_875:
    setattribute $P115, 'payload', $P116
    throw $P115
  if_1978_end:
.annotate 'line', 1078
    .return ($P113)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "find_method" :anon :subid("92_1339198188.86") :outer("153_1339198188.86")
    .param pmc param_1983
    .param pmc param_1984
    .param pmc param_1985
    .param pmc param_1986 :optional :named("no_fallback")
    .param int has_param_1986 :opt_flag
    .param pmc param_1987 :optional :named("no_trace")
    .param int has_param_1987 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1091
    .const 'Sub' $P1990 = "187_1339198188.86" 
    capture_lex $P1990
    new $P1982, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P1982, control_1981
    push_eh $P1982
    .lex "self", param_1983
    .lex "$obj", param_1984
    .lex "$name", param_1985
    if has_param_1986, optparam_876
    new $P107, "Undef"
    set param_1986, $P107
  optparam_876:
    .lex "$no_fallback", param_1986
    if has_param_1987, optparam_877
    new $P108, "Undef"
    set param_1987, $P108
  optparam_877:
    .lex "$no_trace", param_1987
.annotate 'line', 1092
    set $P110, param_1983
    nqp_decontainerize $P111, $P110
    nqp_get_sc_object $P112, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P1988, $P111, $P112, "@!mro", 11
    unless_null $P1988, vivify_878
    $P1988 = root_new ['parrot';'ResizablePMCArray']
  vivify_878:
    defined $I100, $P1988
    unless $I100, for_undef_879
    iter $P109, $P1988
    new $P116, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P116, loop2008_handler
    push_eh $P116
  loop2008_test:
    unless $P109, loop2008_done
    shift $P113, $P109
  loop2008_redo:
    .const 'Sub' $P1990 = "187_1339198188.86" 
    capture_lex $P1990
    $P1990($P113)
  loop2008_next:
    goto loop2008_test
  loop2008_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P117, exception, 'type'
    eq $P117, .CONTROL_LOOP_NEXT, loop2008_next
    eq $P117, .CONTROL_LOOP_REDO, loop2008_redo
  loop2008_done:
    pop_eh 
  for_undef_879:
.annotate 'line', 1107
    null $P109
.annotate 'line', 1091
    .return ($P109)
  control_1981:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P110, exception, "payload"
    .return ($P110)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1989"  :anon :subid("187_1339198188.86") :outer("92_1339198188.86")
    .param pmc param_1994
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1092
    .const 'Sub' $P2001 = "188_1339198188.86" 
    capture_lex $P2001
.annotate 'line', 1093
    $P1992 = root_new ['parrot';'Hash']
    set $P1991, $P1992
    .lex "%meths", $P1991
.annotate 'line', 1094
    new $P114, "Undef"
    set $P1993, $P114
    .lex "$found", $P1993
    .lex "$_", param_1994
.annotate 'line', 1093
    find_lex $P115, "$_"
    unless_null $P115, vivify_880
    new $P115, "Undef"
  vivify_880:
    get_how $P116, $P115
    find_lex $P117, "$obj"
    unless_null $P117, vivify_881
    new $P117, "Undef"
  vivify_881:
    $P118 = $P116."method_table"($P117)
    set $P1991, $P118
.annotate 'line', 1094
    find_lex $P115, "$name"
    unless_null $P115, vivify_882
    new $P115, "Undef"
  vivify_882:
    set $P1995, $P1991
    unless_null $P1995, vivify_883
    $P1995 = root_new ['parrot';'Hash']
  vivify_883:
    set $P116, $P1995[$P115]
    unless_null $P116, vivify_884
    new $P116, "Undef"
  vivify_884:
    set $P1993, $P116
.annotate 'line', 1095
    set $P116, $P1993
    unless_null $P116, vivify_885
    new $P116, "Undef"
  vivify_885:
    defined $I101, $P116
    if $I101, if_1996
    new $P115, 'Integer'
    set $P115, $I101
    goto if_1996_end
  if_1996:
.annotate 'line', 1096
    new $P117, "Exception"
    set $P117['type'], .CONTROL_RETURN
    find_lex $P121, "self"
    nqp_decontainerize $P122, $P121
    nqp_get_sc_object $P123, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P124, $P122, $P123, "$!trace", 15
    unless_null $P124, vivify_886
    new $P124, "Undef"
  vivify_886:
    if $P124, if_1999
    set $P120, $P124
    goto if_1999_end
  if_1999:
    find_lex $P125, "$no_trace"
    unless_null $P125, vivify_887
    new $P125, "Undef"
  vivify_887:
    isfalse $I102, $P125
    new $P120, 'Integer'
    set $P120, $I102
  if_1999_end:
    if $P120, if_1998
    set $P119, $P120
    goto if_1998_end
  if_1998:
    find_lex $P126, "$name"
    unless_null $P126, vivify_888
    new $P126, "Undef"
  vivify_888:
    set $S100, $P126
    substr $S101, $S100, 0, 1
    isne $I103, $S101, "!"
    new $P119, 'Integer'
    set $P119, $I103
  if_1998_end:
    if $P119, if_1997
    set $P129, $P1993
    unless_null $P129, vivify_889
    new $P129, "Undef"
  vivify_889:
    set $P118, $P129
    goto if_1997_end
  if_1997:
.annotate 'line', 1097
    .const 'Sub' $P2001 = "188_1339198188.86" 
    newclosure $P2007, $P2001
    set $P118, $P2007
  if_1997_end:
.annotate 'line', 1096
    setattribute $P117, 'payload', $P118
    throw $P117
  if_1996_end:
.annotate 'line', 1092
    .return ($P115)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block2000"  :anon :subid("188_1339198188.86") :outer("187_1339198188.86")
    .param pmc param_2002 :slurpy
    .param pmc param_2003 :slurpy :named
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1097
    .lex "@pos", param_2002
    .lex "%named", param_2003
.annotate 'line', 1100
    new $P127, "Undef"
    set $P2004, $P127
    .lex "$result", $P2004
.annotate 'line', 1098
    find_lex $P128, "self"
    nqp_decontainerize $P129, $P128
    nqp_get_sc_object $P130, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P131, $P129, $P130, "$!trace_depth", 16
    unless_null $P131, vivify_890
    new $P131, "Undef"
  vivify_890:
    set $I104, $P131
    repeat $S102, "  ", $I104
    new $P132, 'String'
    set $P132, $S102
    new $P133, 'String'
    set $P133, "Calling "
    find_lex $P134, "$name"
    unless_null $P134, vivify_891
    new $P134, "Undef"
  vivify_891:
    concat $P135, $P133, $P134
    concat $P136, $P132, $P135
    "say"($P136)
.annotate 'line', 1099
    find_lex $P128, "self"
    nqp_decontainerize $P129, $P128
    nqp_get_sc_object $P130, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P131, $P129, $P130, "$!trace_depth", 16
    unless_null $P131, vivify_892
    new $P131, "Undef"
  vivify_892:
    add $P132, $P131, 1
    find_lex $P133, "self"
    nqp_decontainerize $P134, $P133
    nqp_get_sc_object $P135, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_bind_attr_obj $P134, $P135, "$!trace_depth", 16, $P132
.annotate 'line', 1100
    find_lex $P128, "$found"
    unless_null $P128, vivify_893
    new $P128, "Undef"
  vivify_893:
    set $P2005, param_2002
    unless_null $P2005, vivify_894
    $P2005 = root_new ['parrot';'ResizablePMCArray']
  vivify_894:
    set $P2006, param_2003
    unless_null $P2006, vivify_895
    $P2006 = root_new ['parrot';'Hash']
  vivify_895:
    $P129 = $P128($P2005 :flat, $P2006 :flat)
    set $P2004, $P129
.annotate 'line', 1101
    find_lex $P128, "self"
    nqp_decontainerize $P129, $P128
    nqp_get_sc_object $P130, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_get_attr_obj $P131, $P129, $P130, "$!trace_depth", 16
    unless_null $P131, vivify_896
    new $P131, "Undef"
  vivify_896:
    sub $P132, $P131, 1
    find_lex $P133, "self"
    nqp_decontainerize $P134, $P133
    nqp_get_sc_object $P135, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_bind_attr_obj $P134, $P135, "$!trace_depth", 16, $P132
.annotate 'line', 1097
    set $P128, $P2004
    unless_null $P128, vivify_897
    new $P128, "Undef"
  vivify_897:
    .return ($P128)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "cache" :anon :subid("93_1339198188.86") :outer("153_1339198188.86")
    .param pmc param_2010
    .param pmc param_2011
    .param pmc param_2012
    .param pmc param_2013
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1113
    .lex "self", param_2010
    .lex "$obj", param_2011
    .lex "$key", param_2012
    .lex "$value_generator", param_2013
.annotate 'line', 1114
    set $P107, param_2010
    nqp_decontainerize $P108, $P107
    get_id $I100, $P108
    set $S100, $I100
    find_lex $P2015, "%caches"
    unless_null $P2015, vivify_898
    $P2015 = root_new ['parrot';'Hash']
  vivify_898:
    exists $I101, $P2015[$S100]
    if $I101, unless_2014_end
    $P2016 = root_new ['parrot';'Hash']
    set $P109, param_2010
    nqp_decontainerize $P110, $P109
    get_id $I102, $P110
    find_lex $P2017, "%caches"
    unless_null $P2017, vivify_899
    $P2017 = root_new ['parrot';'Hash']
    store_lex "%caches", $P2017
  vivify_899:
    set $P2017[$I102], $P2016
  unless_2014_end:
.annotate 'line', 1115
    set $P111, param_2012
    unless_null $P111, vivify_900
    new $P111, "Undef"
  vivify_900:
    set $S100, $P111
    set $P108, param_2010
    nqp_decontainerize $P109, $P108
    get_id $I100, $P109
    find_lex $P2019, "%caches"
    unless_null $P2019, vivify_901
    $P2019 = root_new ['parrot';'Hash']
  vivify_901:
    set $P110, $P2019[$I100]
    unless_null $P110, vivify_902
    new $P110, "Undef"
  vivify_902:
    exists $I101, $P110[$S100]
    if $I101, if_2018
.annotate 'line', 1117
    set $P116, param_2013
    unless_null $P116, vivify_903
    new $P116, "Undef"
  vivify_903:
    $P117 = $P116()
    set $P118, param_2012
    unless_null $P118, vivify_904
    new $P118, "Undef"
  vivify_904:
    set $P119, param_2010
    nqp_decontainerize $P120, $P119
    get_id $I103, $P120
    find_lex $P2022, "%caches"
    unless_null $P2022, vivify_905
    $P2022 = root_new ['parrot';'Hash']
    store_lex "%caches", $P2022
  vivify_905:
    set $P2023, $P2022[$I103]
    unless_null $P2023, vivify_906
    $P2023 = root_new ['parrot';'Hash']
    set $P2022[$I103], $P2023
  vivify_906:
    set $P2023[$P118], $P117
    set $P107, $P117
.annotate 'line', 1115
    goto if_2018_end
  if_2018:
    set $P112, param_2012
    unless_null $P112, vivify_907
    new $P112, "Undef"
  vivify_907:
.annotate 'line', 1116
    set $P113, param_2010
    nqp_decontainerize $P114, $P113
    get_id $I102, $P114
    find_lex $P2020, "%caches"
    unless_null $P2020, vivify_908
    $P2020 = root_new ['parrot';'Hash']
  vivify_908:
    set $P2021, $P2020[$I102]
    unless_null $P2021, vivify_909
    $P2021 = root_new ['parrot';'Hash']
  vivify_909:
.annotate 'line', 1115
    set $P115, $P2021[$P112]
    unless_null $P115, vivify_910
    new $P115, "Undef"
  vivify_910:
    set $P107, $P115
  if_2018_end:
.annotate 'line', 1113
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "trace-on" :anon :subid("94_1339198188.86") :outer("153_1339198188.86")
    .param pmc param_2025
    .param pmc param_2026
    .param pmc param_2027 :optional
    .param int has_param_2027 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1123
    .lex "self", param_2025
    .lex "$obj", param_2026
    if has_param_2027, optparam_911
    new $P107, "Undef"
    set param_2027, $P107
  optparam_911:
    .lex "$depth", param_2027
.annotate 'line', 1124
    new $P108, "Float"
    assign $P108, 1
    set $P109, param_2025
    nqp_decontainerize $P110, $P109
    nqp_get_sc_object $P111, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_bind_attr_obj $P110, $P111, "$!trace", 15, $P108
.annotate 'line', 1125
    set $P108, param_2027
    unless_null $P108, vivify_912
    new $P108, "Undef"
  vivify_912:
    set $P2028, $P108
    defined $I2030, $P2028
    if $I2030, default_2029
    new $P109, "Float"
    assign $P109, 0
    set $P2028, $P109
  default_2029:
    set $P110, param_2025
    nqp_decontainerize $P111, $P110
    nqp_get_sc_object $P112, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_bind_attr_obj $P111, $P112, "$!trace_depth", 16, $P2028
.annotate 'line', 1126
    set $P108, param_2026
    unless_null $P108, vivify_913
    new $P108, "Undef"
  vivify_913:
    set_method_cache_authoritativeness $P108, 0
.annotate 'line', 1127
    set $P108, param_2026
    unless_null $P108, vivify_914
    new $P108, "Undef"
  vivify_914:
    new $P109, "Hash"
    publish_method_cache $P108, $P109
.annotate 'line', 1123
    .return ()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "trace-off" :anon :subid("95_1339198188.86") :outer("153_1339198188.86")
    .param pmc param_2032
    .param pmc param_2033
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1129
    .lex "self", param_2032
    .lex "$obj", param_2033
.annotate 'line', 1130
    new $P107, "Float"
    assign $P107, 0
    set $P108, param_2032
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 6
    repr_bind_attr_obj $P109, $P110, "$!trace", 15, $P107
.annotate 'line', 1129
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "_block2035"  :subid("189_1339198188.86") :outer("123_1339198188.86")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1135
    .const 'Sub' $P2072 = "104_1339198188.86" 
    capture_lex $P2072
    .const 'Sub' $P2069 = "103_1339198188.86" 
    capture_lex $P2069
    .const 'Sub' $P2065 = "102_1339198188.86" 
    capture_lex $P2065
    .const 'Sub' $P2060 = "101_1339198188.86" 
    capture_lex $P2060
    .const 'Sub' $P2055 = "100_1339198188.86" 
    capture_lex $P2055
    .const 'Sub' $P2049 = "99_1339198188.86" 
    capture_lex $P2049
    .const 'Sub' $P2046 = "98_1339198188.86" 
    capture_lex $P2046
    .const 'Sub' $P2042 = "97_1339198188.86" 
    capture_lex $P2042
    .const 'Sub' $P2040 = "96_1339198188.86" 
    capture_lex $P2040
.annotate 'line', 1139
    new $P100, "Undef"
    set $P2037, $P100
    .lex "$archetypes", $P2037
    .lex "$?PACKAGE", $P2038
    .lex "$?CLASS", $P2039
    find_lex $P101, "Archetypes"
    $P102 = $P101."new"(1 :named("nominal"))
    set $P2037, $P102
.annotate 'line', 1180
    .const 'Sub' $P2072 = "104_1339198188.86" 
    newclosure $P2075, $P2072
.annotate 'line', 1135
    .return ($P2075)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "archetypes" :anon :subid("96_1339198188.86") :outer("189_1339198188.86")
    .param pmc param_2041
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1140
    .lex "self", param_2041
    find_lex $P101, "$archetypes"
    unless_null $P101, vivify_915
    new $P101, "Undef"
  vivify_915:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "new" :anon :subid("97_1339198188.86") :outer("189_1339198188.86")
    .param pmc param_2043
    .param pmc param_2044 :optional :named("name")
    .param int has_param_2044 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1144
    .lex "self", param_2043
    if has_param_2044, optparam_916
    new $P101, "Undef"
    set param_2044, $P101
  optparam_916:
    .lex "$name", param_2044
.annotate 'line', 1145
    new $P102, "Undef"
    set $P2045, $P102
    .lex "$obj", $P2045
    set $P103, param_2043
    nqp_decontainerize $P104, $P103
    repr_instance_of $P105, $P104
    set $P2045, $P105
.annotate 'line', 1146
    set $P103, $P2045
    unless_null $P103, vivify_917
    new $P103, "Undef"
  vivify_917:
    set $P104, param_2044
    unless_null $P104, vivify_918
    new $P104, "Undef"
  vivify_918:
    $P103."BUILD"($P104 :named("name"))
.annotate 'line', 1144
    set $P103, $P2045
    unless_null $P103, vivify_919
    new $P103, "Undef"
  vivify_919:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "BUILD" :anon :subid("98_1339198188.86") :outer("189_1339198188.86")
    .param pmc param_2047
    .param pmc param_2048 :optional :named("name")
    .param int has_param_2048 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1150
    .lex "self", param_2047
    if has_param_2048, optparam_920
    new $P101, "Undef"
    set param_2048, $P101
  optparam_920:
    .lex "$name", param_2048
.annotate 'line', 1151
    set $P102, param_2048
    unless_null $P102, vivify_921
    new $P102, "Undef"
  vivify_921:
    set $P103, param_2047
    nqp_decontainerize $P104, $P103
    nqp_get_sc_object $P105, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 7
    repr_bind_attr_obj $P104, $P105, "$!name", 0, $P102
.annotate 'line', 1150
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "new_type" :anon :subid("99_1339198188.86") :outer("189_1339198188.86")
    .param pmc param_2050
    .param pmc param_2052 :named("repr")
    .param pmc param_2051 :optional :named("name")
    .param int has_param_2051 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1157
    .lex "self", param_2050
    if has_param_2051, optparam_922
    new $P101, "String"
    assign $P101, "<anon>"
    set param_2051, $P101
  optparam_922:
    .lex "$name", param_2051
    .lex "$repr", param_2052
.annotate 'line', 1158
    new $P102, "Undef"
    set $P2053, $P102
    .lex "$metaclass", $P2053
    set $P103, param_2050
    nqp_decontainerize $P104, $P103
    set $P105, param_2051
    unless_null $P105, vivify_923
    new $P105, "Undef"
  vivify_923:
    $P106 = $P104."new"($P105 :named("name"))
    set $P2053, $P106
.annotate 'line', 1160
    set $P103, $P2053
    unless_null $P103, vivify_924
    new $P103, "Undef"
  vivify_924:
    set $P104, param_2052
    unless_null $P104, vivify_925
    new $P104, "Undef"
  vivify_925:
    set $S100, $P104
    repr_type_object_for $P105, $P103, $S100
    $P2054 = root_new ['parrot';'Hash']
    set_who $P105, $P2054
.annotate 'line', 1157
    .return ($P105)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_method" :anon :subid("100_1339198188.86") :outer("189_1339198188.86")
    .param pmc param_2056
    .param pmc param_2057
    .param pmc param_2058
    .param pmc param_2059
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1164
    .lex "self", param_2056
    .lex "$obj", param_2057
    .lex "$name", param_2058
    .lex "$code_obj", param_2059
.annotate 'line', 1165
    new $P101, "String"
    assign $P101, "Native types may not have methods (must be boxed to call method)"
    die $P101
.annotate 'line', 1164
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_multi_method" :anon :subid("101_1339198188.86") :outer("189_1339198188.86")
    .param pmc param_2061
    .param pmc param_2062
    .param pmc param_2063
    .param pmc param_2064
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1168
    .lex "self", param_2061
    .lex "$obj", param_2062
    .lex "$name", param_2063
    .lex "$code_obj", param_2064
.annotate 'line', 1169
    new $P101, "String"
    assign $P101, "Native types may not have methods (must be boxed to call method)"
    die $P101
.annotate 'line', 1168
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_attribute" :anon :subid("102_1339198188.86") :outer("189_1339198188.86")
    .param pmc param_2066
    .param pmc param_2067
    .param pmc param_2068
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1172
    .lex "self", param_2066
    .lex "$obj", param_2067
    .lex "$meta_attr", param_2068
.annotate 'line', 1173
    new $P101, "String"
    assign $P101, "Native types may not have attributes"
    die $P101
.annotate 'line', 1172
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "compose" :anon :subid("103_1339198188.86") :outer("189_1339198188.86")
    .param pmc param_2070
    .param pmc param_2071
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1176
    .lex "self", param_2070
    .lex "$obj", param_2071
.annotate 'line', 1177
    new $P101, "Float"
    assign $P101, 1
    set $P102, param_2070
    nqp_decontainerize $P103, $P102
    nqp_get_sc_object $P104, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 7
    repr_bind_attr_obj $P103, $P104, "$!composed", 1, $P101
.annotate 'line', 1176
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "name" :anon :subid("104_1339198188.86") :outer("189_1339198188.86")
    .param pmc param_2073
    .param pmc param_2074
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1180
    .lex "self", param_2073
    .lex "$obj", param_2074
    set $P101, param_2073
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 7
    repr_get_attr_obj $P104, $P102, $P103, "$!name", 0
    unless_null $P104, vivify_926
    new $P104, "Undef"
  vivify_926:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2076"  :subid("190_1339198188.86") :outer("123_1339198188.86")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1186
    .const 'Sub' $P2125 = "113_1339198188.86" 
    capture_lex $P2125
    .const 'Sub' $P2122 = "112_1339198188.86" 
    capture_lex $P2122
    .const 'Sub' $P2119 = "111_1339198188.86" 
    capture_lex $P2119
    .const 'Sub' $P2117 = "110_1339198188.86" 
    capture_lex $P2117
    .const 'Sub' $P2115 = "109_1339198188.86" 
    capture_lex $P2115
    .const 'Sub' $P2112 = "108_1339198188.86" 
    capture_lex $P2112
    .const 'Sub' $P2110 = "107_1339198188.86" 
    capture_lex $P2110
    .const 'Sub' $P2104 = "106_1339198188.86" 
    capture_lex $P2104
    .const 'Sub' $P2096 = "105_1339198188.86" 
    capture_lex $P2096
    .const 'Sub' $P2079 = "191_1339198188.86" 
    capture_lex $P2079
.annotate 'line', 1257
    .const 'Sub' $P2079 = "191_1339198188.86" 
    newclosure $P2093, $P2079
    set $P2078, $P2093
    .lex "has_method", $P2078
.annotate 'line', 1186
    .lex "$?PACKAGE", $P2094
    .lex "$?CLASS", $P2095
    set $P101, $P2078
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "has_method"  :subid("191_1339198188.86") :outer("190_1339198188.86")
    .param pmc param_2082
    .param pmc param_2083
    .param pmc param_2084
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1257
    .const 'Sub' $P2089 = "192_1339198188.86" 
    capture_lex $P2089
    new $P2081, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P2081, control_2080
    push_eh $P2081
    .lex "$target", param_2082
    .lex "$name", param_2083
    .lex "$local", param_2084
.annotate 'line', 1258
    $P2086 = root_new ['parrot';'ResizablePMCArray']
    set $P2085, $P2086
    .lex "@methods", $P2085
    set $P100, param_2082
    unless_null $P100, vivify_927
    new $P100, "Undef"
  vivify_927:
    get_how $P101, $P100
    set $P102, param_2082
    unless_null $P102, vivify_928
    new $P102, "Undef"
  vivify_928:
    set $P103, param_2084
    unless_null $P103, vivify_929
    new $P103, "Undef"
  vivify_929:
    $P104 = $P101."methods"($P102, $P103 :named("local"))
    set $P2085, $P104
.annotate 'line', 1259
    set $P2087, $P2085
    unless_null $P2087, vivify_930
    $P2087 = root_new ['parrot';'ResizablePMCArray']
  vivify_930:
    defined $I100, $P2087
    unless $I100, for_undef_931
    iter $P100, $P2087
    new $P103, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P103, loop2092_handler
    push_eh $P103
  loop2092_test:
    unless $P100, loop2092_done
    shift $P101, $P100
  loop2092_redo:
    .const 'Sub' $P2089 = "192_1339198188.86" 
    capture_lex $P2089
    $P2089($P101)
  loop2092_next:
    goto loop2092_test
  loop2092_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P104, exception, 'type'
    eq $P104, .CONTROL_LOOP_NEXT, loop2092_next
    eq $P104, .CONTROL_LOOP_REDO, loop2092_redo
  loop2092_done:
    pop_eh 
  for_undef_931:
.annotate 'line', 1262
    new $P100, "Exception"
    set $P100['type'], .CONTROL_RETURN
    new $P101, "Float"
    assign $P101, 0
    setattribute $P100, 'payload', $P101
    throw $P100
.annotate 'line', 1257
    .return ()
  control_2080:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P100, exception, "payload"
    .return ($P100)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "_block2088"  :anon :subid("192_1339198188.86") :outer("191_1339198188.86")
    .param pmc param_2090
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1259
    .lex "$_", param_2090
.annotate 'line', 1260
    find_lex $P103, "$_"
    unless_null $P103, vivify_932
    new $P103, "Undef"
  vivify_932:
    set $S100, $P103
    find_lex $P104, "$name"
    unless_null $P104, vivify_933
    new $P104, "Undef"
  vivify_933:
    set $S101, $P104
    iseq $I101, $S100, $S101
    if $I101, if_2091
    new $P102, 'Integer'
    set $P102, $I101
    goto if_2091_end
  if_2091:
    new $P105, "Exception"
    set $P105['type'], .CONTROL_RETURN
    new $P106, "Float"
    assign $P106, 1
    setattribute $P105, 'payload', $P106
    throw $P105
  if_2091_end:
.annotate 'line', 1259
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "new" :anon :subid("105_1339198188.86") :outer("190_1339198188.86")
    .param pmc param_2097
    .param pmc param_2098 :named("name")
    .param pmc param_2099 :optional :named("box_target")
    .param int has_param_2099 :opt_flag
    .param pmc param_2100 :slurpy :named
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1192
    .lex "self", param_2097
    .lex "$name", param_2098
    if has_param_2099, optparam_934
    new $P101, "Undef"
    set param_2099, $P101
  optparam_934:
    .lex "$box_target", param_2099
    .lex "%extra", param_2100
.annotate 'line', 1193
    new $P102, "Undef"
    set $P2101, $P102
    .lex "$attr", $P2101
    set $P103, param_2097
    nqp_decontainerize $P104, $P103
    repr_instance_of $P105, $P104
    set $P2101, $P105
.annotate 'line', 1194
    set $P103, $P2101
    unless_null $P103, vivify_935
    new $P103, "Undef"
  vivify_935:
    set $P104, param_2098
    unless_null $P104, vivify_936
    new $P104, "Undef"
  vivify_936:
    set $P2102, param_2100
    unless_null $P2102, vivify_937
    $P2102 = root_new ['parrot';'Hash']
  vivify_937:
    set $P105, param_2099
    unless_null $P105, vivify_938
    new $P105, "Undef"
  vivify_938:
.annotate 'line', 1195
    set $P2103, param_2100
    unless_null $P2103, vivify_939
    $P2103 = root_new ['parrot';'Hash']
  vivify_939:
    exists $I100, $P2103["type"]
.annotate 'line', 1194
    $P103."BUILD"($P2102 :flat, $P104 :named("name"), $P105 :named("box_target"), $I100 :named("has_type"))
.annotate 'line', 1192
    set $P103, $P2101
    unless_null $P103, vivify_940
    new $P103, "Undef"
  vivify_940:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "BUILD" :anon :subid("106_1339198188.86") :outer("190_1339198188.86")
    .param pmc param_2105
    .param pmc param_2106 :optional :named("name")
    .param int has_param_2106 :opt_flag
    .param pmc param_2107 :optional :named("type")
    .param int has_param_2107 :opt_flag
    .param pmc param_2108 :optional :named("has_type")
    .param int has_param_2108 :opt_flag
    .param pmc param_2109 :optional :named("box_target")
    .param int has_param_2109 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1199
    .lex "self", param_2105
    if has_param_2106, optparam_941
    new $P101, "Undef"
    set param_2106, $P101
  optparam_941:
    .lex "$name", param_2106
    if has_param_2107, optparam_942
    new $P102, "Undef"
    set param_2107, $P102
  optparam_942:
    .lex "$type", param_2107
    if has_param_2108, optparam_943
    new $P103, "Undef"
    set param_2108, $P103
  optparam_943:
    .lex "$has_type", param_2108
    if has_param_2109, optparam_944
    new $P104, "Undef"
    set param_2109, $P104
  optparam_944:
    .lex "$box_target", param_2109
.annotate 'line', 1200
    set $P105, param_2106
    unless_null $P105, vivify_945
    new $P105, "Undef"
  vivify_945:
    set $P106, param_2105
    nqp_decontainerize $P107, $P106
    nqp_get_sc_object $P108, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 8
    repr_bind_attr_obj $P107, $P108, "$!name", 0, $P105
.annotate 'line', 1201
    set $P105, param_2107
    unless_null $P105, vivify_946
    new $P105, "Undef"
  vivify_946:
    set $P106, param_2105
    nqp_decontainerize $P107, $P106
    nqp_get_sc_object $P108, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 8
    repr_bind_attr_obj $P107, $P108, "$!type", 1, $P105
.annotate 'line', 1202
    set $P105, param_2108
    unless_null $P105, vivify_947
    new $P105, "Undef"
  vivify_947:
    set $P106, param_2105
    nqp_decontainerize $P107, $P106
    nqp_get_sc_object $P108, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 8
    repr_bind_attr_obj $P107, $P108, "$!has_type", 2, $P105
.annotate 'line', 1203
    set $P105, param_2109
    unless_null $P105, vivify_948
    new $P105, "Undef"
  vivify_948:
    set $P106, param_2105
    nqp_decontainerize $P107, $P106
    nqp_get_sc_object $P108, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 8
    repr_bind_attr_obj $P107, $P108, "$!box_target", 3, $P105
.annotate 'line', 1199
    .return ($P105)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "name" :anon :subid("107_1339198188.86") :outer("190_1339198188.86")
    .param pmc param_2111
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1206
    .lex "self", param_2111
    set $P101, param_2111
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 8
    repr_get_attr_obj $P104, $P102, $P103, "$!name", 0
    unless_null $P104, vivify_949
    new $P104, "Undef"
  vivify_949:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "type" :anon :subid("108_1339198188.86") :outer("190_1339198188.86")
    .param pmc param_2113
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1210
    .lex "self", param_2113
.annotate 'line', 1211
    set $P102, param_2113
    nqp_decontainerize $P103, $P102
    nqp_get_sc_object $P104, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 8
    repr_get_attr_obj $P105, $P103, $P104, "$!has_type", 2
    unless_null $P105, vivify_950
    new $P105, "Undef"
  vivify_950:
    if $P105, if_2114
    null $P110
    set $P101, $P110
    goto if_2114_end
  if_2114:
    set $P106, param_2113
    nqp_decontainerize $P107, $P106
    nqp_get_sc_object $P108, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 8
    repr_get_attr_obj $P109, $P107, $P108, "$!type", 1
    unless_null $P109, vivify_951
    new $P109, "Undef"
  vivify_951:
    set $P101, $P109
  if_2114_end:
.annotate 'line', 1210
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "has_accessor" :anon :subid("109_1339198188.86") :outer("190_1339198188.86")
    .param pmc param_2116
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1214
    .lex "self", param_2116
    .return (0)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "build_closure" :anon :subid("110_1339198188.86") :outer("190_1339198188.86")
    .param pmc param_2118
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1218
    .lex "self", param_2118
    .return (0)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "box_target" :anon :subid("111_1339198188.86") :outer("190_1339198188.86")
    .param pmc param_2120
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1222
    .lex "self", param_2120
.annotate 'line', 1223
    set $P102, param_2120
    nqp_decontainerize $P103, $P102
    nqp_get_sc_object $P104, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 8
    repr_get_attr_obj $P105, $P103, $P104, "$!box_target", 3
    unless_null $P105, vivify_952
    new $P105, "Undef"
  vivify_952:
    if $P105, if_2121
    new $P107, "Float"
    assign $P107, 0
    set $P101, $P107
    goto if_2121_end
  if_2121:
    new $P106, "Float"
    assign $P106, 1
    set $P101, $P106
  if_2121_end:
.annotate 'line', 1222
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "compose" :anon :subid("112_1339198188.86") :outer("190_1339198188.86")
    .param pmc param_2123
    .param pmc param_2124
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1226
    .lex "self", param_2123
    .lex "$obj", param_2124
    set $P101, param_2124
    unless_null $P101, vivify_953
    new $P101, "Undef"
  vivify_953:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "has_mutator" :anon :subid("113_1339198188.86") :outer("190_1339198188.86")
    .param pmc param_2126
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1253
    .lex "self", param_2126
.annotate 'line', 1254
    set $P101, param_2126
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 8
    repr_get_attr_obj $P104, $P102, $P103, "$!name", 0
    unless_null $P104, vivify_954
    new $P104, "Undef"
  vivify_954:
    set $S100, $P104
    substr $S101, $S100, 1, 1
    isne $I100, $S101, "!"
.annotate 'line', 1253
    .return ($I100)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "_block2127"  :subid("193_1339198188.86") :outer("123_1339198188.86")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1268
    .const 'Sub' $P2163 = "122_1339198188.86" 
    capture_lex $P2163
    .const 'Sub' $P2160 = "121_1339198188.86" 
    capture_lex $P2160
    .const 'Sub' $P2156 = "120_1339198188.86" 
    capture_lex $P2156
    .const 'Sub' $P2151 = "119_1339198188.86" 
    capture_lex $P2151
    .const 'Sub' $P2146 = "118_1339198188.86" 
    capture_lex $P2146
    .const 'Sub' $P2141 = "117_1339198188.86" 
    capture_lex $P2141
    .const 'Sub' $P2138 = "116_1339198188.86" 
    capture_lex $P2138
    .const 'Sub' $P2134 = "115_1339198188.86" 
    capture_lex $P2134
    .const 'Sub' $P2132 = "114_1339198188.86" 
    capture_lex $P2132
.annotate 'line', 1272
    new $P100, "Undef"
    set $P2129, $P100
    .lex "$archetypes", $P2129
    .lex "$?PACKAGE", $P2130
    .lex "$?CLASS", $P2131
    find_lex $P101, "Archetypes"
    $P102 = $P101."new"()
    set $P2129, $P102
.annotate 'line', 1314
    .const 'Sub' $P2163 = "122_1339198188.86" 
    newclosure $P2166, $P2163
.annotate 'line', 1268
    .return ($P2166)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "archetypes" :anon :subid("114_1339198188.86") :outer("193_1339198188.86")
    .param pmc param_2133
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1273
    .lex "self", param_2133
    find_lex $P101, "$archetypes"
    unless_null $P101, vivify_955
    new $P101, "Undef"
  vivify_955:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "new" :anon :subid("115_1339198188.86") :outer("193_1339198188.86")
    .param pmc param_2135
    .param pmc param_2136 :optional :named("name")
    .param int has_param_2136 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1277
    .lex "self", param_2135
    if has_param_2136, optparam_956
    new $P101, "Undef"
    set param_2136, $P101
  optparam_956:
    .lex "$name", param_2136
.annotate 'line', 1278
    new $P102, "Undef"
    set $P2137, $P102
    .lex "$obj", $P2137
    set $P103, param_2135
    nqp_decontainerize $P104, $P103
    repr_instance_of $P105, $P104
    set $P2137, $P105
.annotate 'line', 1279
    set $P103, $P2137
    unless_null $P103, vivify_957
    new $P103, "Undef"
  vivify_957:
    set $P104, param_2136
    unless_null $P104, vivify_958
    new $P104, "Undef"
  vivify_958:
    $P103."BUILD"($P104 :named("name"))
.annotate 'line', 1277
    set $P103, $P2137
    unless_null $P103, vivify_959
    new $P103, "Undef"
  vivify_959:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "BUILD" :anon :subid("116_1339198188.86") :outer("193_1339198188.86")
    .param pmc param_2139
    .param pmc param_2140 :optional :named("name")
    .param int has_param_2140 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1283
    .lex "self", param_2139
    if has_param_2140, optparam_960
    new $P101, "Undef"
    set param_2140, $P101
  optparam_960:
    .lex "$name", param_2140
.annotate 'line', 1284
    set $P102, param_2140
    unless_null $P102, vivify_961
    new $P102, "Undef"
  vivify_961:
    set $P103, param_2139
    nqp_decontainerize $P104, $P103
    nqp_get_sc_object $P105, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 9
    repr_bind_attr_obj $P104, $P105, "$!name", 0, $P102
.annotate 'line', 1283
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "new_type" :anon :subid("117_1339198188.86") :outer("193_1339198188.86")
    .param pmc param_2142
    .param pmc param_2143 :optional :named("name")
    .param int has_param_2143 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1289
    .lex "self", param_2142
    if has_param_2143, optparam_962
    new $P101, "String"
    assign $P101, "<anon>"
    set param_2143, $P101
  optparam_962:
    .lex "$name", param_2143
.annotate 'line', 1290
    new $P102, "Undef"
    set $P2144, $P102
    .lex "$metaclass", $P2144
    set $P103, param_2142
    nqp_decontainerize $P104, $P103
    set $P105, param_2143
    unless_null $P105, vivify_963
    new $P105, "Undef"
  vivify_963:
    $P106 = $P104."new"($P105 :named("name"))
    set $P2144, $P106
.annotate 'line', 1292
    set $P103, $P2144
    unless_null $P103, vivify_964
    new $P103, "Undef"
  vivify_964:
    new $P104, "String"
    assign $P104, "Uninstantiable"
    set $S100, $P104
    repr_type_object_for $P105, $P103, $S100
    $P2145 = root_new ['parrot';'Hash']
    set_who $P105, $P2145
.annotate 'line', 1289
    .return ($P105)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_method" :anon :subid("118_1339198188.86") :outer("193_1339198188.86")
    .param pmc param_2147
    .param pmc param_2148
    .param pmc param_2149
    .param pmc param_2150
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1296
    .lex "self", param_2147
    .lex "$obj", param_2148
    .lex "$name", param_2149
    .lex "$code_obj", param_2150
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_multi_method" :anon :subid("119_1339198188.86") :outer("193_1339198188.86")
    .param pmc param_2152
    .param pmc param_2153
    .param pmc param_2154
    .param pmc param_2155
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1302
    .lex "self", param_2152
    .lex "$obj", param_2153
    .lex "$name", param_2154
    .lex "$code_obj", param_2155
.annotate 'line', 1303
    new $P101, "String"
    assign $P101, "Modules may not have methods"
    die $P101
.annotate 'line', 1302
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_attribute" :anon :subid("120_1339198188.86") :outer("193_1339198188.86")
    .param pmc param_2157
    .param pmc param_2158
    .param pmc param_2159
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1306
    .lex "self", param_2157
    .lex "$obj", param_2158
    .lex "$meta_attr", param_2159
.annotate 'line', 1307
    new $P101, "String"
    assign $P101, "Modules may not have attributes"
    die $P101
.annotate 'line', 1306
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "compose" :anon :subid("121_1339198188.86") :outer("193_1339198188.86")
    .param pmc param_2161
    .param pmc param_2162
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1310
    .lex "self", param_2161
    .lex "$obj", param_2162
.annotate 'line', 1311
    new $P101, "Float"
    assign $P101, 1
    set $P102, param_2161
    nqp_decontainerize $P103, $P102
    nqp_get_sc_object $P104, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 9
    repr_bind_attr_obj $P103, $P104, "$!composed", 1, $P101
.annotate 'line', 1310
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "name" :anon :subid("122_1339198188.86") :outer("193_1339198188.86")
    .param pmc param_2164
    .param pmc param_2165
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1314
    .lex "self", param_2164
    .lex "$obj", param_2165
    set $P101, param_2164
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799", 9
    repr_get_attr_obj $P104, $P102, $P103, "$!name", 0
    unless_null $P104, vivify_965
    new $P104, "Undef"
  vivify_965:
    .return ($P104)
.end


.HLL "nqp"

.namespace []
.sub "_block2167"  :anon :subid("194_1339198188.86") :outer("123_1339198188.86")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1322
    .lex "$?PACKAGE", $P2169
    .lex "$?CLASS", $P2170
.annotate 'line', 1323
    find_lex $P100, "NQPModuleHOW"
    set $P101, $P2169
    unless_null $P101, vivify_966
    new $P101, "Undef"
    set $P2169, $P101
  vivify_966:
    get_who $P102, $P101
    set $P102["module"], $P100
.annotate 'line', 1324
    find_lex $P100, "NQPClassHOW"
    set $P101, $P2169
    unless_null $P101, vivify_967
    new $P101, "Undef"
    set $P2169, $P101
  vivify_967:
    get_who $P102, $P101
    set $P102["class"], $P100
.annotate 'line', 1325
    find_lex $P100, "NQPAttribute"
    set $P101, $P2169
    unless_null $P101, vivify_968
    new $P101, "Undef"
    set $P2169, $P101
  vivify_968:
    get_who $P102, $P101
    set $P102["class-attr"], $P100
.annotate 'line', 1326
    find_lex $P100, "NQPClassHOW"
    set $P101, $P2169
    unless_null $P101, vivify_969
    new $P101, "Undef"
    set $P2169, $P101
  vivify_969:
    get_who $P102, $P101
    set $P102["grammar"], $P100
.annotate 'line', 1327
    find_lex $P100, "NQPAttribute"
    set $P101, $P2169
    unless_null $P101, vivify_970
    new $P101, "Undef"
    set $P2169, $P101
  vivify_970:
    get_who $P102, $P101
    set $P102["grammar-attr"], $P100
.annotate 'line', 1328
    find_lex $P100, "NQPParametricRoleHOW"
    set $P101, $P2169
    unless_null $P101, vivify_971
    new $P101, "Undef"
    set $P2169, $P101
  vivify_971:
    get_who $P102, $P101
    set $P102["role"], $P100
.annotate 'line', 1329
    find_lex $P100, "NQPAttribute"
    set $P101, $P2169
    unless_null $P101, vivify_972
    new $P101, "Undef"
    set $P2169, $P101
  vivify_972:
    get_who $P102, $P101
    set $P102["role-attr"], $P100
.annotate 'line', 1330
    find_lex $P100, "NQPNativeHOW"
    set $P101, $P2169
    unless_null $P101, vivify_973
    new $P101, "Undef"
    set $P2169, $P101
  vivify_973:
    get_who $P102, $P101
    set $P102["native"], $P100
.annotate 'line', 1322
    .return ($P100)
.end


.HLL "nqp"

.namespace []
.sub "_block2172" :load :anon :subid("195_1339198188.86")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1
    .const '' $P2174 = "123_1339198188.86" 
    $P106 = $P2174()
    .return ($P106)
.end

