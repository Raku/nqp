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
.sub "_block1000"  :anon :subid("121_1337966777.064")
    .param pmc param_1002 :slurpy
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 0
    .const 'Sub' $P2167 = "194_1337966777.064" 
    capture_lex $P2167
    .const 'Sub' $P2159 = "192_1337966777.064" 
    capture_lex $P2159
    .const 'Sub' $P2119 = "191_1337966777.064" 
    capture_lex $P2119
    .const 'Sub' $P2068 = "188_1337966777.064" 
    capture_lex $P2068
    .const 'Sub' $P2027 = "187_1337966777.064" 
    capture_lex $P2027
    .const 'Sub' $P1491 = "151_1337966777.064" 
    capture_lex $P1491
    .const 'Sub' $P1353 = "144_1337966777.064" 
    capture_lex $P1353
    .const 'Sub' $P1282 = "136_1337966777.064" 
    capture_lex $P1282
    .const 'Sub' $P1150 = "132_1337966777.064" 
    capture_lex $P1150
    .const 'Sub' $P1050 = "123_1337966777.064" 
    capture_lex $P1050
    .const 'Sub' $P1016 = "122_1337966777.064" 
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
    .const 'Sub' $P1016 = "122_1337966777.064" 
    capture_lex $P1016
    $P1016()
.annotate 'line', 72
    .const 'Sub' $P1050 = "123_1337966777.064" 
    capture_lex $P1050
    $P1050()
.annotate 'line', 164
    .const 'Sub' $P1150 = "132_1337966777.064" 
    capture_lex $P1150
    $P1150()
.annotate 'line', 317
    .const 'Sub' $P1282 = "136_1337966777.064" 
    capture_lex $P1282
    $P1282()
.annotate 'line', 390
    .const 'Sub' $P1353 = "144_1337966777.064" 
    capture_lex $P1353
    $P1353()
.annotate 'line', 567
    .const 'Sub' $P1491 = "151_1337966777.064" 
    capture_lex $P1491
    $P1491()
.annotate 'line', 1128
    .const 'Sub' $P2027 = "187_1337966777.064" 
    capture_lex $P2027
    $P2027()
.annotate 'line', 1179
    .const 'Sub' $P2068 = "188_1337966777.064" 
    capture_lex $P2068
    $P2068()
.annotate 'line', 1261
    .const 'Sub' $P2119 = "191_1337966777.064" 
    capture_lex $P2119
    $P2119()
.annotate 'line', 1315
    .const 'Sub' $P2159 = "192_1337966777.064" 
    capture_lex $P2159
    $P2159()
.annotate 'line', 1
    set $P101, param_1002
    if $P101, if_2162
    set $P100, $P101
    goto if_2162_end
  if_2162:
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P102, "ModuleLoader"
    getinterp $P103
    set $P104, $P103["context"]
    $P105 = $P102."set_mainline_module"($P104)
    set $P100, $P105
  if_2162_end:
    .return ($P100)
    .const 'Sub' $P2164 = "193_1337966777.064" 
    .return ($P2164)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post195") :outer("121_1337966777.064")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 0
    .const 'Sub' $P1001 = "121_1337966777.064" 
    .local pmc block
    set block, $P1001
    nqp_dynop_setup 
    nqp_bigint_setup 
    getinterp $P107
    get_class $P108, "LexPad"
    get_class $P109, "NQPLexPad"
    $P107."hll_map"($P108, $P109)
    nqp_create_sc $P110, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937"
    .local pmc cur_sc
    set cur_sc, $P110
    cur_sc."set_description"("src\\stage2\\gen\\nqp-mo.pm")
    set $S100, "AQAAAEAAAAABAAAASAAAAAsAAACgAAAA/BEAAEYAAABcFgAAvh8AAAAAAAC+HwAAAAAAAL4fAAC+HwAAAAAAALMAAAAAAAAAAQAAAAAAAAAKAAAACgEAAB0AAADkAgAAHwAAAIwDAAA8AAAA+gUAAD4AAACiBgAAWAAAANYIAACMAAAAvgwAAJgAAAAGDgAApgAAAHoPAACyAAAAwhAAAAAAAAALAAAAAAAAAAAAAAAKAAgAAAACAAAAAgAAAAAAAgAAAAMAAAACAAAAAAADAAAABAAAAAIAAAAAAAQAAAAFAAAAAgAAAAAABQAAAAYAAAACAAAAAAAGAAAABwAAAAIAAAAAAAcAAAAIAAAAAgAAAAAACAAAAAkAAAACAAAAAAAJAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAAAAAAMAAAAAAAwAAAAAAAAAAQAAAAoAAAAAAAoACgAAAAsAAAALAAAAAAAAAAAADAAAAAsAAAAAAAEAAAANAAAACwAAAAAAAgAAAA4AAAALAAAAAAADAAAADwAAAAsAAAAAAAQAAAAQAAAACwAAAAAABQAAABEAAAALAAAAAAAGAAAAEgAAAAsAAAAAAAcAAAATAAAACwAAAAAACAAAABQAAAALAAAAAAAJAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAEAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAEAAAAKAAgAAAAVAAAABAAAAAAAAAAAABYAAAAEAAEAAAAAAAAAFwAAAAQAAgAAAAAAAAAYAAAABAADAAAAAAAAABkAAAAEAAQAAAAAAAAAGgAAAAQABQAAAAAAAAAbAAAABAAGAAAAAAAAABwAAAAEAAcAAAAAAAAAAAAAAA0AAAAAAAAAAgAAAAoAAAAAAAoAAQAAAB4AAAALAAAAAAAKAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAIAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAgAAAAMAAAAAAA4AAAAAAAAAAwAAAAoAAAAAAAoAEwAAACAAAAALAAAAAAALAAAAIQAAAAsAAAAAAAwAAAAiAAAACwAAAAAADQAAACMAAAALAAAAAAAOAAAAJAAAAAsAAAAAAA8AAAAlAAAACwAAAAAAEAAAACYAAAALAAAAAAARAAAAJwAAAAsAAAAAABIAAAAoAAAACwAAAAAAEwAAACkAAAALAAAAAAAUAAAAKgAAAAsAAAAAABUAAAArAAAACwAAAAAAFgAAACwAAAALAAAAAAAXAAAALQAAAAsAAAAAABgAAAAuAAAACwAAAAAAGQAAAC8AAAALAAAAAAAaAAAAMAAAAAsAAAAAABsAAAAxAAAACwAAAAAAHAAAADIAAAALAAAAAAAdAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAMAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAJAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAwAAAAoACQAAADMAAAAEAAAAAAAAAAAANAAAAAQAAQAAAAAAAAA1AAAABAACAAAAAAAAADYAAAAEAAMAAAAAAAAANwAAAAQABAAAAAAAAAA4AAAABAAFAAAAAAAAADkAAAAEAAYAAAAAAAAAOgAAAAQABwAAAAAAAAA7AAAABAAIAAAAAAAAAAAAAAAPAAAAAAAAAAQAAAAKAAAAAAAKAAEAAAA9AAAACwAAAAAAHgAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAAEAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAQAAAADAAAAAAAQAAAAAAAAAAUAAAAKAAAAAAAKABIAAAA/AAAACwAAAAAAHwAAAEAAAAALAAAAAAAgAAAAQQAAAAsAAAAAACEAAABCAAAACwAAAAAAIgAAAEMAAAALAAAAAAAjAAAARAAAAAsAAAAAACQAAABFAAAACwAAAAAAJQAAAEYAAAALAAAAAAAmAAAARwAAAAsAAAAAACcAAABIAAAACwAAAAAAKAAAAEkAAAALAAAAAAApAAAASgAAAAsAAAAAACoAAABLAAAACwAAAAAAKwAAAEwAAAALAAAAAAAsAAAATQAAAAsAAAAAAC0AAABOAAAACwAAAAAALgAAAE8AAAALAAAAAAAvAAAAUAAAAAsAAAAAADAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAABQAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAUAAAAKAAcAAABRAAAABAAAAAAAAAAAAFIAAAAEAAEAAAAAAAAAUwAAAAQAAgAAAAAAAABUAAAABAADAAAAAAAAAFUAAAAEAAQAAAAAAAAAVgAAAAQABQAAAAAAAABXAAAABAAGAAAAAAAAAAAAAAARAAAAAAAAAAYAAAAKAAAAAAAKACMAAABZAAAACwAAAAAAMQAAAFoAAAALAAAAAAAyAAAAWwAAAAsAAAAAADMAAABcAAAACwAAAAAANAAAAF0AAAALAAAAAAA1AAAAXgAAAAsAAAAAADYAAABfAAAACwAAAAAANwAAAGAAAAALAAAAAAA4AAAAYQAAAAsAAAAAADkAAABiAAAACwAAAAAAOgAAAGMAAAALAAAAAAA7AAAAZAAAAAsAAAAAADwAAABlAAAACwAAAAAAPQAAAGYAAAALAAAAAAA+AAAAZwAAAAsAAAAAAD8AAABoAAAACwAAAAAAQAAAAGkAAAALAAAAAABBAAAAagAAAAsAAAAAAEIAAABrAAAACwAAAAAAQwAAAGwAAAALAAAAAABEAAAAbQAAAAsAAAAAAEUAAABuAAAACwAAAAAARgAAAG8AAAALAAAAAABHAAAAcAAAAAsAAAAAAEgAAABxAAAACwAAAAAASQAAAHIAAAALAAAAAABKAAAAcwAAAAsAAAAAAEsAAAB0AAAACwAAAAAATAAAAHUAAAALAAAAAABNAAAAdgAAAAsAAAAAAE4AAAB3AAAACwAAAAAATwAAAHgAAAALAAAAAABQAAAAeQAAAAsAAAAAAFEAAAB6AAAACwAAAAAAUgAAAHsAAAALAAAAAABTAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAYAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAAGAAAACgAQAAAAfAAAAAQAAAAAAAAAAAB9AAAABAABAAAAAAAAAH4AAAAEAAIAAAAAAAAAfwAAAAQAAwAAAAAAAACAAAAABAAEAAAAAAAAAIEAAAAEAAUAAAAAAAAAggAAAAQABgAAAAAAAACDAAAABAAHAAAAAAAAAIQAAAAEAAgAAAAAAAAAhQAAAAQACQAAAAAAAACGAAAABAAKAAAAAAAAAIcAAAAEAAsAAAAAAAAAiAAAAAQADAAAAAAAAACJAAAABAANAAAAAAAAAIoAAAAEAA4AAAAAAAAAiwAAAAQADwAAAAAAAAAAAAAAEgAAAAAAAAAHAAAACgAAAAAACgAJAAAAjQAAAAsAAAAAAFQAAACOAAAACwAAAAAAVQAAAI8AAAALAAAAAABWAAAAkAAAAAsAAAAAAFcAAACRAAAACwAAAAAAWAAAAJIAAAALAAAAAABZAAAAkwAAAAsAAAAAAFoAAACUAAAACwAAAAAAWwAAAJUAAAALAAAAAABcAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAcAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAcAAAAKAAIAAACWAAAABAAAAAAAAAAAAJcAAAAEAAEAAAAAAAAAAAAAABMAAAAAAAAACAAAAAoAAAAAAAoACQAAAJkAAAALAAAAAABdAAAAmgAAAAsAAAAAAF4AAACbAAAACwAAAAAAXwAAAJwAAAALAAAAAABgAAAAnQAAAAsAAAAAAGEAAACeAAAACwAAAAAAYgAAAJ8AAAALAAAAAABjAAAAoAAAAAsAAAAAAGQAAAChAAAACwAAAAAAZQAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAAIAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAACAAAAAoABAAAAKIAAAAEAAAAAAAAAAAAowAAAAQAAQAAAAAAAACkAAAABAACAAAAAAAAAKUAAAAEAAMAAAAAAAAAAAAAABQAAAAAAAAACQAAAAoAAAAAAAoACQAAAKcAAAALAAAAAABmAAAAqAAAAAsAAAAAAGcAAACpAAAACwAAAAAAaAAAAKoAAAALAAAAAABpAAAAqwAAAAsAAAAAAGoAAACsAAAACwAAAAAAawAAAK0AAAALAAAAAABsAAAArgAAAAsAAAAAAG0AAACvAAAACwAAAAAAbgAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAAJAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAAJAAAACgACAAAAsAAAAAQAAAAAAAAAAACxAAAABAABAAAAAAAAAAAAAAAVAAAAAAAAAAoAAAAKAAAAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAACgAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAAKAAAAAwAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAACAAAAAAAAAAAAAAAAAAAAAwAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAFAAAAAAAAAAAAAAAAAAAABgAAAAAAAAAAAAAAAAAAAAcAAAAAAAAAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAACQAAAAAAAAAAAAAAAAAAAAoAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAEAAAABAAAAAAAAABAAAAABAAAAAQAAAAAAAAD8AAAAAQAAAAEAAAAAAAAAGgEAAAEAAAABAAAAAAAAAI4CAAABAAAAAQAAAAAAAACsAgAAAQAAAAEAAAAAAAAA/gMAAAEAAAABAAAAAAAAAJgGAAABAAAAAQAAAAAAAAA6BwAAAQAAAAEAAAAAAAAA8AcAAAEAAAABAAAAAAAAAJIIAAABAAAAAQAAAAIAAACiCAAAAQAAAAEAAAACAAAApggAAAEAAAABAAAAAgAAAKoIAAABAAAAAQAAAAIAAACuCAAAAQAAAAEAAAACAAAAsggAAAEAAAABAAAAAgAAALYIAAABAAAAAQAAAAIAAAC6CAAAAQAAAAEAAAACAAAAvggAAAEAAAABAAAAAgAAAMIIAAABAAAAAQAAAAIAAADGCAAAAQAAAAEAAAACAAAAyggAAAEAAAABAAAAAgAAAM4IAAABAAAAAQAAAAIAAADSCAAAAQAAAAEAAAACAAAA1ggAAAEAAAABAAAAAgAAANoIAAABAAAAAQAAAAIAAADeCAAAAQAAAAEAAAACAAAA4ggAAAEAAAABAAAAAgAAAOYIAAABAAAAAQAAAAIAAADqCAAAAQAAAAEAAAACAAAA7ggAAAEAAAABAAAAAgAAAPIIAAABAAAAAQAAAAIAAAD2CAAAAQAAAAEAAAACAAAA+ggAAAEAAAABAAAAAgAAAP4IAAABAAAAAQAAAAIAAAACCQAAAQAAAAEAAAACAAAABgkAAAEAAAABAAAAAgAAAAoJAAABAAAAAQAAAAIAAAAOCQAAAQAAAAEAAAACAAAAEgkAAAEAAAABAAAAAgAAABYJAAABAAAAAQAAAAIAAAAaCQAAAQAAAAEAAAACAAAAHgkAAAEAAAABAAAAAgAAACIJAAABAAAAAQAAAAIAAAAmCQAAAQAAAAEAAAACAAAAKgkAAAEAAAABAAAAAgAAAC4JAAABAAAAAQAAAAIAAAAyCQAAAQAAAAEAAAACAAAANgkAAAEAAAABAAAAAgAAADoJAAABAAAAAQAAAAIAAAA+CQAAAQAAAAEAAAACAAAAQgkAAAEAAAABAAAAAgAAAEYJAAABAAAAAQAAAAIAAABKCQAAAQAAAAEAAAACAAAATgkAAAEAAAABAAAAAgAAAFIJAAABAAAAAQAAAAIAAABWCQAAAQAAAAEAAAACAAAAWgkAAAEAAAABAAAAAgAAAF4JAAABAAAAtAAAAAcAAAAAAAoAAAAAALUAAAAHAAgAAAACAAAAAAAWAAAAAgAAAAAAFwAAAAIAAAAAABgAAAACAAAAAAAZAAAAAgAAAAAAGgAAAAIAAAAAABsAAAACAAAAAAAcAAAAAgAAAAAAHQAAAAoACgAAALYAAAALAAAAAAAAAAAAtwAAAAsAAAAAAAEAAAC4AAAACwAAAAAAAgAAALkAAAALAAAAAAADAAAAugAAAAsAAAAAAAQAAAC7AAAACwAAAAAABQAAALwAAAALAAAAAAAGAAAAvQAAAAsAAAAAAAcAAAC+AAAACwAAAAAACAAAAL8AAAALAAAAAAAJAAAAwAAAAAcAAAAAAAoAAQAAAMEAAAALAAAAAAAKAAAAwgAAAAcACQAAAAIAAAAAAB4AAAACAAAAAAAfAAAAAgAAAAAAIAAAAAIAAAAAACEAAAACAAAAAAAiAAAAAgAAAAAAIwAAAAIAAAAAACQAAAACAAAAAAAlAAAAAgAAAAAAJgAAAAoAEwAAAMMAAAALAAAAAAALAAAAxAAAAAsAAAAAAAwAAADFAAAACwAAAAAADQAAAMYAAAALAAAAAAAOAAAAxwAAAAsAAAAAAA8AAADIAAAACwAAAAAAEAAAAMkAAAALAAAAAAARAAAAygAAAAsAAAAAABIAAADLAAAACwAAAAAAEwAAAMwAAAALAAAAAAAUAAAAzQAAAAsAAAAAABUAAADOAAAACwAAAAAAFgAAAM8AAAALAAAAAAAXAAAA0AAAAAsAAAAAABgAAADRAAAACwAAAAAAGQAAANIAAAALAAAAAAAaAAAA0wAAAAsAAAAAABsAAADUAAAACwAAAAAAHAAAANUAAAALAAAAAAAdAAAA1gAAAAcAAAAAAAoAAQAAANcAAAALAAAAAAAeAAAA2AAAAAcABwAAAAIAAAAAACcAAAACAAAAAAAoAAAAAgAAAAAAKQAAAAIAAAAAACoAAAACAAAAAAArAAAAAgAAAAAALAAAAAIAAAAAAC0AAAAKABIAAADZAAAACwAAAAAAHwAAANoAAAALAAAAAAAgAAAA2wAAAAsAAAAAACEAAADcAAAACwAAAAAAIgAAAN0AAAALAAAAAAAjAAAA3gAAAAsAAAAAACQAAADfAAAACwAAAAAAJQAAAOAAAAALAAAAAAAmAAAA4QAAAAsAAAAAACcAAADiAAAACwAAAAAAKAAAAOMAAAALAAAAAAApAAAA5AAAAAsAAAAAACoAAADlAAAACwAAAAAAKwAAAOYAAAALAAAAAAAsAAAA5wAAAAsAAAAAAC0AAADoAAAACwAAAAAALgAAAOkAAAALAAAAAAAvAAAA6gAAAAsAAAAAADAAAADrAAAABwAQAAAAAgAAAAAALgAAAAIAAAAAAC8AAAACAAAAAAAwAAAAAgAAAAAAMQAAAAIAAAAAADIAAAACAAAAAAAzAAAAAgAAAAAANAAAAAIAAAAAADUAAAACAAAAAAA2AAAAAgAAAAAANwAAAAIAAAAAADgAAAACAAAAAAA5AAAAAgAAAAAAOgAAAAIAAAAAADsAAAACAAAAAAA8AAAAAgAAAAAAPQAAAAoAIwAAAOwAAAALAAAAAAAxAAAA7QAAAAsAAAAAADIAAADuAAAACwAAAAAAMwAAAO8AAAALAAAAAAA0AAAA8AAAAAsAAAAAADUAAADxAAAACwAAAAAANgAAAPIAAAALAAAAAAA3AAAA8wAAAAsAAAAAADgAAAD0AAAACwAAAAAAOQAAAPUAAAALAAAAAAA6AAAA9gAAAAsAAAAAADsAAAD3AAAACwAAAAAAPAAAAPgAAAALAAAAAAA9AAAA+QAAAAsAAAAAAD4AAAD6AAAACwAAAAAAPwAAAPsAAAALAAAAAABAAAAA/AAAAAsAAAAAAEEAAAD9AAAACwAAAAAAQgAAAP4AAAALAAAAAABDAAAA/wAAAAsAAAAAAEQAAAAAAQAACwAAAAAARQAAAAEBAAALAAAAAABGAAAAAgEAAAsAAAAAAEcAAAADAQAACwAAAAAASAAAAAQBAAALAAAAAABJAAAABQEAAAsAAAAAAEoAAAAGAQAACwAAAAAASwAAAAcBAAALAAAAAABMAAAACAEAAAsAAAAAAE0AAAAJAQAACwAAAAAATgAAAAoBAAALAAAAAABPAAAACwEAAAsAAAAAAFAAAAAMAQAACwAAAAAAUQAAAA0BAAALAAAAAABSAAAADgEAAAsAAAAAAFMAAAAPAQAABwACAAAAAgAAAAAAPgAAAAIAAAAAAD8AAAAKAAkAAAAQAQAACwAAAAAAVAAAABEBAAALAAAAAABVAAAAEgEAAAsAAAAAAFYAAAATAQAACwAAAAAAVwAAABQBAAALAAAAAABYAAAAFQEAAAsAAAAAAFkAAAAWAQAACwAAAAAAWgAAABcBAAALAAAAAABbAAAAGAEAAAsAAAAAAFwAAAAZAQAABwAEAAAAAgAAAAAAQAAAAAIAAAAAAEEAAAACAAAAAABCAAAAAgAAAAAAQwAAAAoACQAAABoBAAALAAAAAABdAAAAGwEAAAsAAAAAAF4AAAAcAQAACwAAAAAAXwAAAB0BAAALAAAAAABgAAAAHgEAAAsAAAAAAGEAAAAfAQAACwAAAAAAYgAAACABAAALAAAAAABjAAAAIQEAAAsAAAAAAGQAAAAiAQAACwAAAAAAZQAAACMBAAAHAAIAAAACAAAAAABEAAAAAgAAAAAARQAAAAoACQAAACQBAAALAAAAAABmAAAAJQEAAAsAAAAAAGcAAAAmAQAACwAAAAAAaAAAACcBAAALAAAAAABpAAAAKAEAAAsAAAAAAGoAAAApAQAACwAAAAAAawAAACoBAAALAAAAAABsAAAAKwEAAAsAAAAAAG0AAAAsAQAACwAAAAAAbgAAAC0BAAAHAAAAAAAKAAAAAAAuAQAALwEAADABAAAxAQAAMgEAADMBAAA0AQAANQEAADYBAAA3AQAAOAEAADkBAAA6AQAAOwEAADwBAAA9AQAAPgEAAD8BAABAAQAAQQEAAEIBAABDAQAARAEAAEUBAABGAQAARwEAAEgBAABJAQAASgEAAEsBAABMAQAATQEAAE4BAABPAQAAUAEAAFEBAABSAQAAUwEAAFQBAABVAQAAVgEAAFcBAABYAQAAWQEAAFoBAABbAQAAXAEAAF0BAAA="
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
    push string_heap, " "
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
    push string_heap, "136_1337966764.291_"
    push string_heap, "apply"
    push string_heap, "3932316383206658919"
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
    push string_heap, "m"
    push string_heap, "apply"
    push string_heap, " "
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
    .const 'Sub' $P2167 = "194_1337966777.064" 
    capture_lex $P2167
    $P113 = $P2167()
    nqp_deserialize_sc $S100, cur_sc, string_heap, $P113
    .const 'LexInfo' $P2279 = "121_1337966777.064" 
    nqp_get_sc_object $P114, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 0
    $P2279."set_static_lexpad_value"("GLOBALish", $P114)
    .const 'LexInfo' $P2280 = "121_1337966777.064" 
    $P2280."finish_static_lexpad"()
    .const 'LexInfo' $P2281 = "121_1337966777.064" 
    nqp_get_sc_object $P114, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 0
    $P2281."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'LexInfo' $P2282 = "121_1337966777.064" 
    $P2282."finish_static_lexpad"()
    .const 'LexInfo' $P2283 = "121_1337966777.064" 
    nqp_get_sc_object $P114, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 1
    $P2283."set_static_lexpad_value"("Archetypes", $P114)
    .const 'LexInfo' $P2284 = "121_1337966777.064" 
    $P2284."finish_static_lexpad"()
    .const 'LexInfo' $P2285 = "122_1337966777.064" 
    nqp_get_sc_object $P114, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 1
    $P2285."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'LexInfo' $P2286 = "122_1337966777.064" 
    $P2286."finish_static_lexpad"()
    .const 'LexInfo' $P2287 = "122_1337966777.064" 
    nqp_get_sc_object $P114, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 1
    $P2287."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'LexInfo' $P2288 = "122_1337966777.064" 
    $P2288."finish_static_lexpad"()
    .const 'LexInfo' $P2289 = "121_1337966777.064" 
    nqp_get_sc_object $P114, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 2
    $P2289."set_static_lexpad_value"("RoleToRoleApplier", $P114)
    .const 'LexInfo' $P2290 = "121_1337966777.064" 
    $P2290."finish_static_lexpad"()
    .const 'LexInfo' $P2291 = "123_1337966777.064" 
    nqp_get_sc_object $P114, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 2
    $P2291."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'LexInfo' $P2292 = "123_1337966777.064" 
    $P2292."finish_static_lexpad"()
    .const 'LexInfo' $P2293 = "123_1337966777.064" 
    nqp_get_sc_object $P114, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 2
    $P2293."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'LexInfo' $P2294 = "123_1337966777.064" 
    $P2294."finish_static_lexpad"()
    .const 'LexInfo' $P2295 = "121_1337966777.064" 
    nqp_get_sc_object $P114, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 3
    $P2295."set_static_lexpad_value"("NQPConcreteRoleHOW", $P114)
    .const 'LexInfo' $P2296 = "121_1337966777.064" 
    $P2296."finish_static_lexpad"()
    .const 'LexInfo' $P2297 = "132_1337966777.064" 
    nqp_get_sc_object $P114, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 3
    $P2297."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'LexInfo' $P2298 = "132_1337966777.064" 
    $P2298."finish_static_lexpad"()
    .const 'LexInfo' $P2299 = "132_1337966777.064" 
    nqp_get_sc_object $P114, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 3
    $P2299."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'LexInfo' $P2300 = "132_1337966777.064" 
    $P2300."finish_static_lexpad"()
    .const 'LexInfo' $P2301 = "121_1337966777.064" 
    nqp_get_sc_object $P114, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 4
    $P2301."set_static_lexpad_value"("RoleToClassApplier", $P114)
    .const 'LexInfo' $P2302 = "121_1337966777.064" 
    $P2302."finish_static_lexpad"()
    .const 'LexInfo' $P2303 = "136_1337966777.064" 
    nqp_get_sc_object $P114, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 4
    $P2303."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'LexInfo' $P2304 = "136_1337966777.064" 
    $P2304."finish_static_lexpad"()
    .const 'LexInfo' $P2305 = "136_1337966777.064" 
    nqp_get_sc_object $P114, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 4
    $P2305."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'LexInfo' $P2306 = "136_1337966777.064" 
    $P2306."finish_static_lexpad"()
    .const 'LexInfo' $P2307 = "121_1337966777.064" 
    nqp_get_sc_object $P114, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 5
    $P2307."set_static_lexpad_value"("NQPParametricRoleHOW", $P114)
    .const 'LexInfo' $P2308 = "121_1337966777.064" 
    $P2308."finish_static_lexpad"()
    .const 'LexInfo' $P2309 = "144_1337966777.064" 
    nqp_get_sc_object $P114, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 5
    $P2309."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'LexInfo' $P2310 = "144_1337966777.064" 
    $P2310."finish_static_lexpad"()
    .const 'LexInfo' $P2311 = "144_1337966777.064" 
    nqp_get_sc_object $P114, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 5
    $P2311."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'LexInfo' $P2312 = "144_1337966777.064" 
    $P2312."finish_static_lexpad"()
    .const 'LexInfo' $P2313 = "121_1337966777.064" 
    nqp_get_sc_object $P114, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    $P2313."set_static_lexpad_value"("NQPClassHOW", $P114)
    .const 'LexInfo' $P2314 = "121_1337966777.064" 
    $P2314."finish_static_lexpad"()
    .const 'LexInfo' $P2315 = "151_1337966777.064" 
    nqp_get_sc_object $P114, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    $P2315."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'LexInfo' $P2316 = "151_1337966777.064" 
    $P2316."finish_static_lexpad"()
    .const 'LexInfo' $P2317 = "151_1337966777.064" 
    nqp_get_sc_object $P114, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    $P2317."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'LexInfo' $P2318 = "151_1337966777.064" 
    $P2318."finish_static_lexpad"()
    .const 'LexInfo' $P2319 = "121_1337966777.064" 
    nqp_get_sc_object $P114, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 7
    $P2319."set_static_lexpad_value"("NQPNativeHOW", $P114)
    .const 'LexInfo' $P2320 = "121_1337966777.064" 
    $P2320."finish_static_lexpad"()
    .const 'LexInfo' $P2321 = "187_1337966777.064" 
    nqp_get_sc_object $P114, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 7
    $P2321."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'LexInfo' $P2322 = "187_1337966777.064" 
    $P2322."finish_static_lexpad"()
    .const 'LexInfo' $P2323 = "187_1337966777.064" 
    nqp_get_sc_object $P114, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 7
    $P2323."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'LexInfo' $P2324 = "187_1337966777.064" 
    $P2324."finish_static_lexpad"()
    .const 'LexInfo' $P2325 = "121_1337966777.064" 
    nqp_get_sc_object $P114, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 8
    $P2325."set_static_lexpad_value"("NQPAttribute", $P114)
    .const 'LexInfo' $P2326 = "121_1337966777.064" 
    $P2326."finish_static_lexpad"()
    .const 'LexInfo' $P2327 = "188_1337966777.064" 
    nqp_get_sc_object $P114, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 8
    $P2327."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'LexInfo' $P2328 = "188_1337966777.064" 
    $P2328."finish_static_lexpad"()
    .const 'LexInfo' $P2329 = "188_1337966777.064" 
    nqp_get_sc_object $P114, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 8
    $P2329."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'LexInfo' $P2330 = "188_1337966777.064" 
    $P2330."finish_static_lexpad"()
    .const 'LexInfo' $P2331 = "121_1337966777.064" 
    nqp_get_sc_object $P114, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 9
    $P2331."set_static_lexpad_value"("NQPModuleHOW", $P114)
    .const 'LexInfo' $P2332 = "121_1337966777.064" 
    $P2332."finish_static_lexpad"()
    .const 'LexInfo' $P2333 = "191_1337966777.064" 
    nqp_get_sc_object $P114, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 9
    $P2333."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'LexInfo' $P2334 = "191_1337966777.064" 
    $P2334."finish_static_lexpad"()
    .const 'LexInfo' $P2335 = "191_1337966777.064" 
    nqp_get_sc_object $P114, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 9
    $P2335."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'LexInfo' $P2336 = "191_1337966777.064" 
    $P2336."finish_static_lexpad"()
    .const 'LexInfo' $P2337 = "121_1337966777.064" 
    nqp_get_sc_object $P114, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 10
    $P2337."set_static_lexpad_value"("EXPORTHOW", $P114)
    .const 'LexInfo' $P2338 = "121_1337966777.064" 
    $P2338."finish_static_lexpad"()
    .const 'LexInfo' $P2339 = "192_1337966777.064" 
    nqp_get_sc_object $P114, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 10
    $P2339."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'LexInfo' $P2340 = "192_1337966777.064" 
    $P2340."finish_static_lexpad"()
    .const 'LexInfo' $P2341 = "192_1337966777.064" 
    nqp_get_sc_object $P114, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 10
    $P2341."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'LexInfo' $P2342 = "192_1337966777.064" 
    $P2342."finish_static_lexpad"()
    nqp_get_sc_object $P114, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 0
    set_hll_global "GLOBAL", $P114
.end


.HLL "nqp"

.namespace []
.sub "_block2166"  :anon :subid("194_1337966777.064") :outer("121_1337966777.064")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 0
    .const 'Sub' $P2168 = "10_1337966777.064" 
    .const 'Sub' $P2169 = "11_1337966777.064" 
    .const 'Sub' $P2170 = "12_1337966777.064" 
    .const 'Sub' $P2171 = "13_1337966777.064" 
    .const 'Sub' $P2172 = "14_1337966777.064" 
    .const 'Sub' $P2173 = "15_1337966777.064" 
    .const 'Sub' $P2174 = "16_1337966777.064" 
    .const 'Sub' $P2175 = "17_1337966777.064" 
    .const 'Sub' $P2176 = "18_1337966777.064" 
    .const 'Sub' $P2177 = "19_1337966777.064" 
    .const 'Sub' $P2178 = "20_1337966777.064" 
    .const 'Sub' $P2179 = "21_1337966777.064" 
    .const 'Sub' $P2180 = "22_1337966777.064" 
    .const 'Sub' $P2181 = "23_1337966777.064" 
    .const 'Sub' $P2182 = "24_1337966777.064" 
    .const 'Sub' $P2183 = "25_1337966777.064" 
    .const 'Sub' $P2184 = "26_1337966777.064" 
    .const 'Sub' $P2185 = "27_1337966777.064" 
    .const 'Sub' $P2186 = "28_1337966777.064" 
    .const 'Sub' $P2187 = "29_1337966777.064" 
    .const 'Sub' $P2188 = "30_1337966777.064" 
    .const 'Sub' $P2189 = "31_1337966777.064" 
    .const 'Sub' $P2190 = "32_1337966777.064" 
    .const 'Sub' $P2191 = "33_1337966777.064" 
    .const 'Sub' $P2192 = "34_1337966777.064" 
    .const 'Sub' $P2193 = "35_1337966777.064" 
    .const 'Sub' $P2194 = "36_1337966777.064" 
    .const 'Sub' $P2195 = "37_1337966777.064" 
    .const 'Sub' $P2196 = "38_1337966777.064" 
    .const 'Sub' $P2197 = "39_1337966777.064" 
    .const 'Sub' $P2198 = "40_1337966777.064" 
    .const 'Sub' $P2199 = "41_1337966777.064" 
    .const 'Sub' $P2200 = "42_1337966777.064" 
    .const 'Sub' $P2201 = "43_1337966777.064" 
    .const 'Sub' $P2202 = "44_1337966777.064" 
    .const 'Sub' $P2203 = "45_1337966777.064" 
    .const 'Sub' $P2204 = "46_1337966777.064" 
    .const 'Sub' $P2205 = "47_1337966777.064" 
    .const 'Sub' $P2206 = "48_1337966777.064" 
    .const 'Sub' $P2207 = "49_1337966777.064" 
    .const 'Sub' $P2208 = "50_1337966777.064" 
    .const 'Sub' $P2209 = "51_1337966777.064" 
    .const 'Sub' $P2210 = "52_1337966777.064" 
    .const 'Sub' $P2211 = "53_1337966777.064" 
    .const 'Sub' $P2212 = "54_1337966777.064" 
    .const 'Sub' $P2213 = "55_1337966777.064" 
    .const 'Sub' $P2214 = "56_1337966777.064" 
    .const 'Sub' $P2215 = "57_1337966777.064" 
    .const 'Sub' $P2216 = "58_1337966777.064" 
    .const 'Sub' $P2217 = "59_1337966777.064" 
    .const 'Sub' $P2218 = "60_1337966777.064" 
    .const 'Sub' $P2219 = "61_1337966777.064" 
    .const 'Sub' $P2220 = "62_1337966777.064" 
    .const 'Sub' $P2221 = "63_1337966777.064" 
    .const 'Sub' $P2222 = "64_1337966777.064" 
    .const 'Sub' $P2223 = "65_1337966777.064" 
    .const 'Sub' $P2224 = "66_1337966777.064" 
    .const 'Sub' $P2225 = "67_1337966777.064" 
    .const 'Sub' $P2226 = "68_1337966777.064" 
    .const 'Sub' $P2227 = "69_1337966777.064" 
    .const 'Sub' $P2228 = "70_1337966777.064" 
    .const 'Sub' $P2229 = "71_1337966777.064" 
    .const 'Sub' $P2230 = "72_1337966777.064" 
    .const 'Sub' $P2231 = "73_1337966777.064" 
    .const 'Sub' $P2232 = "74_1337966777.064" 
    .const 'Sub' $P2233 = "75_1337966777.064" 
    .const 'Sub' $P2234 = "76_1337966777.064" 
    .const 'Sub' $P2235 = "77_1337966777.064" 
    .const 'Sub' $P2236 = "78_1337966777.064" 
    .const 'Sub' $P2237 = "79_1337966777.064" 
    .const 'Sub' $P2238 = "80_1337966777.064" 
    .const 'Sub' $P2239 = "81_1337966777.064" 
    .const 'Sub' $P2240 = "82_1337966777.064" 
    .const 'Sub' $P2241 = "83_1337966777.064" 
    .const 'Sub' $P2242 = "84_1337966777.064" 
    .const 'Sub' $P2243 = "85_1337966777.064" 
    .const 'Sub' $P2244 = "86_1337966777.064" 
    .const 'Sub' $P2245 = "87_1337966777.064" 
    .const 'Sub' $P2246 = "88_1337966777.064" 
    .const 'Sub' $P2247 = "89_1337966777.064" 
    .const 'Sub' $P2248 = "90_1337966777.064" 
    .const 'Sub' $P2249 = "91_1337966777.064" 
    .const 'Sub' $P2250 = "92_1337966777.064" 
    .const 'Sub' $P2251 = "93_1337966777.064" 
    .const 'Sub' $P2252 = "94_1337966777.064" 
    .const 'Sub' $P2253 = "95_1337966777.064" 
    .const 'Sub' $P2254 = "96_1337966777.064" 
    .const 'Sub' $P2255 = "97_1337966777.064" 
    .const 'Sub' $P2256 = "98_1337966777.064" 
    .const 'Sub' $P2257 = "99_1337966777.064" 
    .const 'Sub' $P2258 = "100_1337966777.064" 
    .const 'Sub' $P2259 = "101_1337966777.064" 
    .const 'Sub' $P2260 = "102_1337966777.064" 
    .const 'Sub' $P2261 = "103_1337966777.064" 
    .const 'Sub' $P2262 = "104_1337966777.064" 
    .const 'Sub' $P2263 = "105_1337966777.064" 
    .const 'Sub' $P2264 = "106_1337966777.064" 
    .const 'Sub' $P2265 = "107_1337966777.064" 
    .const 'Sub' $P2266 = "108_1337966777.064" 
    .const 'Sub' $P2267 = "109_1337966777.064" 
    .const 'Sub' $P2268 = "110_1337966777.064" 
    .const 'Sub' $P2269 = "111_1337966777.064" 
    .const 'Sub' $P2270 = "112_1337966777.064" 
    .const 'Sub' $P2271 = "113_1337966777.064" 
    .const 'Sub' $P2272 = "114_1337966777.064" 
    .const 'Sub' $P2273 = "115_1337966777.064" 
    .const 'Sub' $P2274 = "116_1337966777.064" 
    .const 'Sub' $P2275 = "117_1337966777.064" 
    .const 'Sub' $P2276 = "118_1337966777.064" 
    .const 'Sub' $P2277 = "119_1337966777.064" 
    .const 'Sub' $P2278 = "120_1337966777.064" 
    new $P112, "ResizablePMCArray"
    push $P112, $P2168
    push $P112, $P2169
    push $P112, $P2170
    push $P112, $P2171
    push $P112, $P2172
    push $P112, $P2173
    push $P112, $P2174
    push $P112, $P2175
    push $P112, $P2176
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
    .return ($P112)
.end


.HLL "nqp"

.namespace []
.sub "_block1015"  :anon :subid("122_1337966777.064") :outer("121_1337966777.064")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 9
    .const 'Sub' $P1046 = "19_1337966777.064" 
    capture_lex $P1046
    .const 'Sub' $P1044 = "18_1337966777.064" 
    capture_lex $P1044
    .const 'Sub' $P1042 = "17_1337966777.064" 
    capture_lex $P1042
    .const 'Sub' $P1040 = "16_1337966777.064" 
    capture_lex $P1040
    .const 'Sub' $P1038 = "15_1337966777.064" 
    capture_lex $P1038
    .const 'Sub' $P1036 = "14_1337966777.064" 
    capture_lex $P1036
    .const 'Sub' $P1034 = "13_1337966777.064" 
    capture_lex $P1034
    .const 'Sub' $P1032 = "12_1337966777.064" 
    capture_lex $P1032
    .const 'Sub' $P1026 = "11_1337966777.064" 
    capture_lex $P1026
    .const 'Sub' $P1019 = "10_1337966777.064" 
    capture_lex $P1019
    .lex "$?PACKAGE", $P1017
    .lex "$?CLASS", $P1018
.annotate 'line', 68
    .const 'Sub' $P1046 = "19_1337966777.064" 
    newclosure $P1048, $P1046
.annotate 'line', 9
    .return ($P1048)
.end


.HLL "nqp"

.namespace []
.sub "new" :anon :subid("10_1337966777.064") :outer("122_1337966777.064")
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
    if has_param_1021, optparam_196
    new $P100, "Undef"
    set param_1021, $P100
  optparam_196:
    .lex "$nominal", param_1021
    if has_param_1022, optparam_197
    new $P101, "Undef"
    set param_1022, $P101
  optparam_197:
    .lex "$inheritable", param_1022
    if has_param_1023, optparam_198
    new $P102, "Undef"
    set param_1023, $P102
  optparam_198:
    .lex "$composable", param_1023
    if has_param_1024, optparam_199
    new $P103, "Undef"
    set param_1024, $P103
  optparam_199:
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
    unless_null $P105, vivify_200
    new $P105, "Undef"
  vivify_200:
    set $P106, param_1021
    unless_null $P106, vivify_201
    new $P106, "Undef"
  vivify_201:
    set $P107, param_1022
    unless_null $P107, vivify_202
    new $P107, "Undef"
  vivify_202:
    set $P108, param_1023
    unless_null $P108, vivify_203
    new $P108, "Undef"
  vivify_203:
    set $P109, param_1024
    unless_null $P109, vivify_204
    new $P109, "Undef"
  vivify_204:
    $P105."BUILD"($P106 :named("nominal"), $P107 :named("inheritable"), $P108 :named("composable"), $P109 :named("parametric"))
.annotate 'line', 47
    set $P105, $P1025
    unless_null $P105, vivify_205
    new $P105, "Undef"
  vivify_205:
    .return ($P105)
.end


.HLL "nqp"

.namespace []
.sub "BUILD" :anon :subid("11_1337966777.064") :outer("122_1337966777.064")
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
    if has_param_1028, optparam_206
    new $P100, "Undef"
    set param_1028, $P100
  optparam_206:
    .lex "$nominal", param_1028
    if has_param_1029, optparam_207
    new $P101, "Undef"
    set param_1029, $P101
  optparam_207:
    .lex "$inheritable", param_1029
    if has_param_1030, optparam_208
    new $P102, "Undef"
    set param_1030, $P102
  optparam_208:
    .lex "$composable", param_1030
    if has_param_1031, optparam_209
    new $P103, "Undef"
    set param_1031, $P103
  optparam_209:
    .lex "$parametric", param_1031
.annotate 'line', 55
    set $P104, param_1028
    unless_null $P104, vivify_210
    new $P104, "Undef"
  vivify_210:
    set $P105, param_1027
    nqp_decontainerize $P106, $P105
    nqp_get_sc_object $P107, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 1
    repr_bind_attr_obj $P106, $P107, "$!nominal", 0, $P104
.annotate 'line', 56
    set $P104, param_1029
    unless_null $P104, vivify_211
    new $P104, "Undef"
  vivify_211:
    set $P105, param_1027
    nqp_decontainerize $P106, $P105
    nqp_get_sc_object $P107, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 1
    repr_bind_attr_obj $P106, $P107, "$!inheritable", 2, $P104
.annotate 'line', 57
    set $P104, param_1030
    unless_null $P104, vivify_212
    new $P104, "Undef"
  vivify_212:
    set $P105, param_1027
    nqp_decontainerize $P106, $P105
    nqp_get_sc_object $P107, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 1
    repr_bind_attr_obj $P106, $P107, "$!composable", 4, $P104
.annotate 'line', 58
    set $P104, param_1031
    unless_null $P104, vivify_213
    new $P104, "Undef"
  vivify_213:
    set $P105, param_1027
    nqp_decontainerize $P106, $P105
    nqp_get_sc_object $P107, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 1
    repr_bind_attr_obj $P106, $P107, "$!parametric", 7, $P104
.annotate 'line', 54
    .return ($P104)
.end


.HLL "nqp"

.namespace []
.sub "nominal" :anon :subid("12_1337966777.064") :outer("122_1337966777.064")
    .param pmc param_1033
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 61
    .lex "self", param_1033
    set $P100, param_1033
    nqp_decontainerize $P101, $P100
    nqp_get_sc_object $P102, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 1
    repr_get_attr_obj $P103, $P101, $P102, "$!nominal", 0
    unless_null $P103, vivify_214
    new $P103, "Undef"
  vivify_214:
    .return ($P103)
.end


.HLL "nqp"

.namespace []
.sub "nominalizable" :anon :subid("13_1337966777.064") :outer("122_1337966777.064")
    .param pmc param_1035
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 62
    .lex "self", param_1035
    set $P100, param_1035
    nqp_decontainerize $P101, $P100
    nqp_get_sc_object $P102, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 1
    repr_get_attr_obj $P103, $P101, $P102, "$!nominalizable", 1
    unless_null $P103, vivify_215
    new $P103, "Undef"
  vivify_215:
    .return ($P103)
.end


.HLL "nqp"

.namespace []
.sub "inheritable" :anon :subid("14_1337966777.064") :outer("122_1337966777.064")
    .param pmc param_1037
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 63
    .lex "self", param_1037
    set $P100, param_1037
    nqp_decontainerize $P101, $P100
    nqp_get_sc_object $P102, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 1
    repr_get_attr_obj $P103, $P101, $P102, "$!inheritable", 2
    unless_null $P103, vivify_216
    new $P103, "Undef"
  vivify_216:
    .return ($P103)
.end


.HLL "nqp"

.namespace []
.sub "inheritalizable" :anon :subid("15_1337966777.064") :outer("122_1337966777.064")
    .param pmc param_1039
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 64
    .lex "self", param_1039
    set $P100, param_1039
    nqp_decontainerize $P101, $P100
    nqp_get_sc_object $P102, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 1
    repr_get_attr_obj $P103, $P101, $P102, "$!inheritalizable", 3
    unless_null $P103, vivify_217
    new $P103, "Undef"
  vivify_217:
    .return ($P103)
.end


.HLL "nqp"

.namespace []
.sub "composable" :anon :subid("16_1337966777.064") :outer("122_1337966777.064")
    .param pmc param_1041
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 65
    .lex "self", param_1041
    set $P100, param_1041
    nqp_decontainerize $P101, $P100
    nqp_get_sc_object $P102, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 1
    repr_get_attr_obj $P103, $P101, $P102, "$!composable", 4
    unless_null $P103, vivify_218
    new $P103, "Undef"
  vivify_218:
    .return ($P103)
.end


.HLL "nqp"

.namespace []
.sub "composalizable" :anon :subid("17_1337966777.064") :outer("122_1337966777.064")
    .param pmc param_1043
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 66
    .lex "self", param_1043
    set $P100, param_1043
    nqp_decontainerize $P101, $P100
    nqp_get_sc_object $P102, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 1
    repr_get_attr_obj $P103, $P101, $P102, "$!composalizable", 5
    unless_null $P103, vivify_219
    new $P103, "Undef"
  vivify_219:
    .return ($P103)
.end


.HLL "nqp"

.namespace []
.sub "generic" :anon :subid("18_1337966777.064") :outer("122_1337966777.064")
    .param pmc param_1045
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 67
    .lex "self", param_1045
    set $P100, param_1045
    nqp_decontainerize $P101, $P100
    nqp_get_sc_object $P102, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 1
    repr_get_attr_obj $P103, $P101, $P102, "$!generic", 6
    unless_null $P103, vivify_220
    new $P103, "Undef"
  vivify_220:
    .return ($P103)
.end


.HLL "nqp"

.namespace []
.sub "parametric" :anon :subid("19_1337966777.064") :outer("122_1337966777.064")
    .param pmc param_1047
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 68
    .lex "self", param_1047
    set $P100, param_1047
    nqp_decontainerize $P101, $P100
    nqp_get_sc_object $P102, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 1
    repr_get_attr_obj $P103, $P101, $P102, "$!parametric", 7
    unless_null $P103, vivify_221
    new $P103, "Undef"
  vivify_221:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block1049"  :subid("123_1337966777.064") :outer("121_1337966777.064")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 72
    .const 'Sub' $P1053 = "20_1337966777.064" 
    capture_lex $P1053
    .lex "$?PACKAGE", $P1051
    .lex "$?CLASS", $P1052
.annotate 'line', 73
    .const 'Sub' $P1053 = "20_1337966777.064" 
    newclosure $P1148, $P1053
.annotate 'line', 72
    .return ($P1148)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "apply" :anon :subid("20_1337966777.064") :outer("123_1337966777.064")
    .param pmc param_1056
    .param pmc param_1057
    .param pmc param_1058
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 73
    .const 'Sub' $P1123 = "129_1337966777.064" 
    capture_lex $P1123
    .const 'Sub' $P1108 = "128_1337966777.064" 
    capture_lex $P1108
    .const 'Sub' $P1102 = "127_1337966777.064" 
    capture_lex $P1102
    .const 'Sub' $P1070 = "124_1337966777.064" 
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
    unless_null $P1067, vivify_222
    $P1067 = root_new ['parrot';'Hash']
  vivify_222:
.annotate 'line', 76
    set $P1068, param_1058
    unless_null $P1068, vivify_223
    $P1068 = root_new ['parrot';'ResizablePMCArray']
  vivify_223:
    defined $I100, $P1068
    unless $I100, for_undef_224
    iter $P100, $P1068
    new $P103, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P103, loop1098_handler
    push_eh $P103
  loop1098_test:
    unless $P100, loop1098_done
    shift $P101, $P100
  loop1098_redo:
    .const 'Sub' $P1070 = "124_1337966777.064" 
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
  for_undef_224:
.annotate 'line', 73
    set $P1099, $P1061
    unless_null $P1099, vivify_248
    $P1099 = root_new ['parrot';'Hash']
  vivify_248:
.annotate 'line', 102
    set $P100, param_1057
    unless_null $P100, vivify_249
    new $P100, "Undef"
  vivify_249:
    get_how $P101, $P100
    set $P102, param_1057
    unless_null $P102, vivify_250
    new $P102, "Undef"
  vivify_250:
    $P103 = $P101."methods"($P102)
    set $P1063, $P103
.annotate 'line', 103
    set $P1100, $P1063
    unless_null $P1100, vivify_251
    $P1100 = root_new ['parrot';'ResizablePMCArray']
  vivify_251:
    defined $I100, $P1100
    unless $I100, for_undef_252
    iter $P100, $P1100
    new $P103, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P103, loop1105_handler
    push_eh $P103
  loop1105_test:
    unless $P100, loop1105_done
    shift $P101, $P100
  loop1105_redo:
    .const 'Sub' $P1102 = "127_1337966777.064" 
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
  for_undef_252:
.annotate 'line', 108
    set $P1106, $P1059
    unless_null $P1106, vivify_256
    $P1106 = root_new ['parrot';'Hash']
  vivify_256:
    defined $I100, $P1106
    unless $I100, for_undef_257
    iter $P100, $P1106
    new $P104, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P104, loop1119_handler
    push_eh $P104
  loop1119_test:
    unless $P100, loop1119_done
    shift $P101, $P100
  loop1119_redo:
    .const 'Sub' $P1108 = "128_1337966777.064" 
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
  for_undef_257:
.annotate 'line', 73
    set $P1120, $P1065
    unless_null $P1120, vivify_274
    $P1120 = root_new ['parrot';'ResizablePMCArray']
  vivify_274:
.annotate 'line', 128
    set $P1121, param_1058
    unless_null $P1121, vivify_275
    $P1121 = root_new ['parrot';'ResizablePMCArray']
  vivify_275:
    defined $I100, $P1121
    unless $I100, for_undef_276
    iter $P100, $P1121
    new $P103, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P103, loop1146_handler
    push_eh $P103
  loop1146_test:
    unless $P100, loop1146_done
    shift $P101, $P100
  loop1146_redo:
    .const 'Sub' $P1123 = "129_1337966777.064" 
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
  for_undef_276:
.annotate 'line', 157
    new $P100, "Exception"
    set $P100['type'], .CONTROL_RETURN
    set $P1147, $P1065
    unless_null $P1147, vivify_298
    $P1147 = root_new ['parrot';'ResizablePMCArray']
  vivify_298:
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
.sub "_block1069"  :anon :subid("124_1337966777.064") :outer("20_1337966777.064")
    .param pmc param_1073
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 76
    .const 'Sub' $P1076 = "125_1337966777.064" 
    capture_lex $P1076
.annotate 'line', 77
    $P1072 = root_new ['parrot';'ResizablePMCArray']
    set $P1071, $P1072
    .lex "@methods", $P1071
    .lex "$_", param_1073
    find_lex $P102, "$_"
    unless_null $P102, vivify_225
    new $P102, "Undef"
  vivify_225:
    get_how $P103, $P102
    find_lex $P104, "$_"
    unless_null $P104, vivify_226
    new $P104, "Undef"
  vivify_226:
    $P105 = $P103."methods"($P104)
    set $P1071, $P105
.annotate 'line', 78
    set $P1074, $P1071
    unless_null $P1074, vivify_227
    $P1074 = root_new ['parrot';'ResizablePMCArray']
  vivify_227:
    defined $I101, $P1074
    unless $I101, for_undef_228
    iter $P102, $P1074
    new $P108, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P108, loop1097_handler
    push_eh $P108
  loop1097_test:
    unless $P102, loop1097_done
    shift $P103, $P102
  loop1097_redo:
    .const 'Sub' $P1076 = "125_1337966777.064" 
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
  for_undef_228:
.annotate 'line', 76
    .return ($P102)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block1075"  :anon :subid("125_1337966777.064") :outer("124_1337966777.064")
    .param pmc param_1082
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 78
    .const 'Sub' $P1091 = "126_1337966777.064" 
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
    unless_null $P107, vivify_229
    new $P107, "Undef"
  vivify_229:
    set $S100, $P107
    new $P108, 'String'
    set $P108, $S100
    set $P1077, $P108
.annotate 'line', 80
    find_lex $P107, "$_"
    unless_null $P107, vivify_230
    new $P107, "Undef"
  vivify_230:
    set $P1078, $P107
.annotate 'line', 78
    set $P1083, $P1079
    unless_null $P1083, vivify_231
    $P1083 = root_new ['parrot';'ResizablePMCArray']
  vivify_231:
.annotate 'line', 82
    set $P107, $P1077
    unless_null $P107, vivify_232
    new $P107, "Undef"
  vivify_232:
    find_lex $P1085, "%meth_info"
    unless_null $P1085, vivify_233
    $P1085 = root_new ['parrot';'Hash']
  vivify_233:
    set $P108, $P1085[$P107]
    unless_null $P108, vivify_234
    new $P108, "Undef"
  vivify_234:
    defined $I102, $P108
    if $I102, if_1084
.annotate 'line', 86
    set $P1087, $P1079
    unless_null $P1087, vivify_235
    $P1087 = root_new ['parrot';'ResizablePMCArray']
  vivify_235:
    set $P109, $P1077
    unless_null $P109, vivify_236
    new $P109, "Undef"
  vivify_236:
    find_lex $P1088, "%meth_info"
    unless_null $P1088, vivify_237
    $P1088 = root_new ['parrot';'Hash']
    store_lex "%meth_info", $P1088
  vivify_237:
    set $P1088[$P109], $P1087
.annotate 'line', 85
    goto if_1084_end
  if_1084:
.annotate 'line', 83
    set $P109, $P1077
    unless_null $P109, vivify_238
    new $P109, "Undef"
  vivify_238:
    find_lex $P1086, "%meth_info"
    unless_null $P1086, vivify_239
    $P1086 = root_new ['parrot';'Hash']
  vivify_239:
    set $P110, $P1086[$P109]
    unless_null $P110, vivify_240
    new $P110, "Undef"
  vivify_240:
    set $P1079, $P110
  if_1084_end:
.annotate 'line', 88
    new $P107, "Float"
    assign $P107, 0
    set $P1081, $P107
.annotate 'line', 89
    set $P1089, $P1079
    unless_null $P1089, vivify_241
    $P1089 = root_new ['parrot';'ResizablePMCArray']
  vivify_241:
    defined $I102, $P1089
    unless $I102, for_undef_242
    iter $P107, $P1089
    new $P110, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P110, loop1094_handler
    push_eh $P110
  loop1094_test:
    unless $P107, loop1094_done
    shift $P108, $P107
  loop1094_redo:
    .const 'Sub' $P1091 = "126_1337966777.064" 
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
  for_undef_242:
.annotate 'line', 94
    set $P108, $P1081
    unless_null $P108, vivify_245
    new $P108, "Undef"
  vivify_245:
    unless $P108, unless_1095
    set $P107, $P108
    goto unless_1095_end
  unless_1095:
.annotate 'line', 95
    set $P1096, $P1079
    unless_null $P1096, vivify_246
    $P1096 = root_new ['parrot';'ResizablePMCArray']
  vivify_246:
    set $P109, $P1078
    unless_null $P109, vivify_247
    new $P109, "Undef"
  vivify_247:
    $P110 = $P1096."push"($P109)
.annotate 'line', 94
    set $P107, $P110
  unless_1095_end:
.annotate 'line', 78
    .return ($P107)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block1090"  :anon :subid("126_1337966777.064") :outer("125_1337966777.064")
    .param pmc param_1092
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 89
    .lex "$_", param_1092
.annotate 'line', 90
    find_lex $P110, "$meth"
    unless_null $P110, vivify_243
    new $P110, "Undef"
  vivify_243:
    find_lex $P111, "$_"
    unless_null $P111, vivify_244
    new $P111, "Undef"
  vivify_244:
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
.sub "_block1101"  :anon :subid("127_1337966777.064") :outer("20_1337966777.064")
    .param pmc param_1103
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 103
    .lex "$_", param_1103
.annotate 'line', 104
    find_lex $P102, "$_"
    unless_null $P102, vivify_253
    new $P102, "Undef"
  vivify_253:
    find_lex $P103, "$_"
    unless_null $P103, vivify_254
    new $P103, "Undef"
  vivify_254:
    set $S100, $P103
    find_lex $P1104, "%target_meth_info"
    unless_null $P1104, vivify_255
    $P1104 = root_new ['parrot';'Hash']
    store_lex "%target_meth_info", $P1104
  vivify_255:
    set $P1104[$S100], $P102
.annotate 'line', 103
    .return ($P102)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block1107"  :anon :subid("128_1337966777.064") :outer("20_1337966777.064")
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
    unless_null $P103, vivify_258
    new $P103, "Undef"
  vivify_258:
    set $S100, $P103
    new $P104, 'String'
    set $P104, $S100
    set $P1109, $P104
.annotate 'line', 110
    set $P103, $P1109
    unless_null $P103, vivify_259
    new $P103, "Undef"
  vivify_259:
    find_lex $P1113, "%meth_info"
    unless_null $P1113, vivify_260
    $P1113 = root_new ['parrot';'Hash']
  vivify_260:
    set $P104, $P1113[$P103]
    unless_null $P104, vivify_261
    new $P104, "Undef"
  vivify_261:
    set $P1110, $P104
.annotate 'line', 114
    set $P104, $P1109
    unless_null $P104, vivify_262
    new $P104, "Undef"
  vivify_262:
    find_lex $P1115, "%target_meth_info"
    unless_null $P1115, vivify_263
    $P1115 = root_new ['parrot';'Hash']
  vivify_263:
    set $P105, $P1115[$P104]
    unless_null $P105, vivify_264
    new $P105, "Undef"
  vivify_264:
    defined $I101, $P105
    unless $I101, unless_1114
    new $P103, 'Integer'
    set $P103, $I101
    goto unless_1114_end
  unless_1114:
.annotate 'line', 116
    set $P1117, $P1110
    unless_null $P1117, vivify_265
    $P1117 = root_new ['parrot';'ResizablePMCArray']
  vivify_265:
    set $N100, $P1117
    set $N101, 1
    iseq $I102, $N100, $N101
    if $I102, if_1116
.annotate 'line', 121
    find_lex $P107, "$target"
    unless_null $P107, vivify_266
    new $P107, "Undef"
  vivify_266:
    get_how $P108, $P107
    find_lex $P109, "$target"
    unless_null $P109, vivify_267
    new $P109, "Undef"
  vivify_267:
    set $P110, $P1109
    unless_null $P110, vivify_268
    new $P110, "Undef"
  vivify_268:
    $P111 = $P108."add_collision"($P109, $P110)
.annotate 'line', 119
    set $P106, $P111
.annotate 'line', 116
    goto if_1116_end
  if_1116:
.annotate 'line', 117
    find_lex $P107, "$target"
    unless_null $P107, vivify_269
    new $P107, "Undef"
  vivify_269:
    get_how $P108, $P107
    find_lex $P109, "$target"
    unless_null $P109, vivify_270
    new $P109, "Undef"
  vivify_270:
    set $P110, $P1109
    unless_null $P110, vivify_271
    new $P110, "Undef"
  vivify_271:
    set $P1118, $P1110
    unless_null $P1118, vivify_272
    $P1118 = root_new ['parrot';'ResizablePMCArray']
  vivify_272:
    set $P111, $P1118[0]
    unless_null $P111, vivify_273
    new $P111, "Undef"
  vivify_273:
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
.sub "_block1122"  :anon :subid("129_1337966777.064") :outer("20_1337966777.064")
    .param pmc param_1127
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 128
    .const 'Sub' $P1130 = "130_1337966777.064" 
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
    unless_null $P103, vivify_277
    new $P103, "Undef"
  vivify_277:
    get_how $P104, $P103
    set $P1124, $P104
.annotate 'line', 132
    set $P103, $P1124
    unless_null $P103, vivify_278
    new $P103, "Undef"
  vivify_278:
    find_lex $P104, "$_"
    unless_null $P104, vivify_279
    new $P104, "Undef"
  vivify_279:
    $P105 = $P103."attributes"($P104)
    set $P1125, $P105
.annotate 'line', 133
    set $P1128, $P1125
    unless_null $P1128, vivify_280
    $P1128 = root_new ['parrot';'ResizablePMCArray']
  vivify_280:
    defined $I101, $P1128
    unless $I101, for_undef_281
    iter $P103, $P1128
    new $P108, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P108, loop1144_handler
    push_eh $P108
  loop1144_test:
    unless $P103, loop1144_done
    shift $P104, $P103
  loop1144_redo:
    .const 'Sub' $P1130 = "130_1337966777.064" 
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
  for_undef_281:
.annotate 'line', 154
    find_lex $P1145, "@all_roles"
    unless_null $P1145, vivify_296
    $P1145 = root_new ['parrot';'ResizablePMCArray']
  vivify_296:
    find_lex $P103, "$_"
    unless_null $P103, vivify_297
    new $P103, "Undef"
  vivify_297:
    $P104 = $P1145."push"($P103)
.annotate 'line', 128
    .return ($P104)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block1129"  :anon :subid("130_1337966777.064") :outer("129_1337966777.064")
    .param pmc param_1135
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 133
    .const 'Sub' $P1138 = "131_1337966777.064" 
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
    unless_null $P107, vivify_282
    new $P107, "Undef"
  vivify_282:
    set $P1131, $P107
.annotate 'line', 135
    new $P107, "Float"
    assign $P107, 0
    set $P1132, $P107
.annotate 'line', 136
    find_lex $P107, "$target"
    unless_null $P107, vivify_283
    new $P107, "Undef"
  vivify_283:
    get_how $P108, $P107
    find_lex $P109, "$target"
    unless_null $P109, vivify_284
    new $P109, "Undef"
  vivify_284:
    $P110 = $P108."attributes"($P109)
    set $P1133, $P110
.annotate 'line', 137
    set $P1136, $P1133
    unless_null $P1136, vivify_285
    $P1136 = root_new ['parrot';'ResizablePMCArray']
  vivify_285:
    defined $I102, $P1136
    unless $I102, for_undef_286
    iter $P107, $P1136
    new $P110, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P110, loop1142_handler
    push_eh $P110
  loop1142_test:
    unless $P107, loop1142_done
    shift $P108, $P107
  loop1142_redo:
    .const 'Sub' $P1138 = "131_1337966777.064" 
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
  for_undef_286:
.annotate 'line', 147
    set $P108, $P1132
    unless_null $P108, vivify_292
    new $P108, "Undef"
  vivify_292:
    unless $P108, unless_1143
    set $P107, $P108
    goto unless_1143_end
  unless_1143:
.annotate 'line', 148
    find_lex $P109, "$target"
    unless_null $P109, vivify_293
    new $P109, "Undef"
  vivify_293:
    get_how $P110, $P109
    find_lex $P111, "$target"
    unless_null $P111, vivify_294
    new $P111, "Undef"
  vivify_294:
    set $P112, $P1131
    unless_null $P112, vivify_295
    new $P112, "Undef"
  vivify_295:
    $P113 = $P110."add_attribute"($P111, $P112)
.annotate 'line', 147
    set $P107, $P113
  unless_1143_end:
.annotate 'line', 133
    .return ($P107)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block1137"  :anon :subid("131_1337966777.064") :outer("130_1337966777.064")
    .param pmc param_1139
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 137
    .lex "$_", param_1139
.annotate 'line', 138
    find_lex $P110, "$_"
    unless_null $P110, vivify_287
    new $P110, "Undef"
  vivify_287:
    find_lex $P111, "$add_attr"
    unless_null $P111, vivify_288
    new $P111, "Undef"
  vivify_288:
    issame $I103, $P110, $P111
    if $I103, if_1140
.annotate 'line', 142
    find_lex $P114, "$_"
    unless_null $P114, vivify_289
    new $P114, "Undef"
  vivify_289:
    $S100 = $P114."name"()
    find_lex $P115, "$add_attr"
    unless_null $P115, vivify_290
    new $P115, "Undef"
  vivify_290:
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
    unless_null $P117, vivify_291
    new $P117, "Undef"
  vivify_291:
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
.sub "_block1149"  :subid("132_1337966777.064") :outer("121_1337966777.064")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 164
    .const 'Sub' $P1277 = "39_1337966777.064" 
    capture_lex $P1277
    .const 'Sub' $P1273 = "38_1337966777.064" 
    capture_lex $P1273
    .const 'Sub' $P1269 = "37_1337966777.064" 
    capture_lex $P1269
    .const 'Sub' $P1255 = "36_1337966777.064" 
    capture_lex $P1255
    .const 'Sub' $P1252 = "35_1337966777.064" 
    capture_lex $P1252
    .const 'Sub' $P1248 = "34_1337966777.064" 
    capture_lex $P1248
    .const 'Sub' $P1244 = "33_1337966777.064" 
    capture_lex $P1244
    .const 'Sub' $P1230 = "32_1337966777.064" 
    capture_lex $P1230
    .const 'Sub' $P1215 = "31_1337966777.064" 
    capture_lex $P1215
    .const 'Sub' $P1209 = "30_1337966777.064" 
    capture_lex $P1209
    .const 'Sub' $P1203 = "29_1337966777.064" 
    capture_lex $P1203
    .const 'Sub' $P1199 = "28_1337966777.064" 
    capture_lex $P1199
    .const 'Sub' $P1191 = "27_1337966777.064" 
    capture_lex $P1191
    .const 'Sub' $P1178 = "26_1337966777.064" 
    capture_lex $P1178
    .const 'Sub' $P1170 = "25_1337966777.064" 
    capture_lex $P1170
    .const 'Sub' $P1165 = "24_1337966777.064" 
    capture_lex $P1165
    .const 'Sub' $P1161 = "23_1337966777.064" 
    capture_lex $P1161
    .const 'Sub' $P1156 = "22_1337966777.064" 
    capture_lex $P1156
    .const 'Sub' $P1154 = "21_1337966777.064" 
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
    .const 'Sub' $P1277 = "39_1337966777.064" 
    newclosure $P1280, $P1277
.annotate 'line', 164
    .return ($P1280)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "archetypes" :anon :subid("21_1337966777.064") :outer("132_1337966777.064")
    .param pmc param_1155
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 191
    .lex "self", param_1155
    find_lex $P101, "$archetypes"
    unless_null $P101, vivify_299
    new $P101, "Undef"
  vivify_299:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "new" :anon :subid("22_1337966777.064") :outer("132_1337966777.064")
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
    unless_null $P102, vivify_300
    new $P102, "Undef"
  vivify_300:
    set $P103, param_1158
    unless_null $P103, vivify_301
    new $P103, "Undef"
  vivify_301:
    set $P104, param_1159
    unless_null $P104, vivify_302
    new $P104, "Undef"
  vivify_302:
    $P102."BUILD"($P103 :named("name"), $P104 :named("instance_of"))
.annotate 'line', 200
    set $P102, $P1160
    unless_null $P102, vivify_303
    new $P102, "Undef"
  vivify_303:
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "BUILD" :anon :subid("23_1337966777.064") :outer("132_1337966777.064")
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
    unless_null $P101, vivify_304
    new $P101, "Undef"
  vivify_304:
    set $P102, param_1162
    nqp_decontainerize $P103, $P102
    nqp_get_sc_object $P104, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 3
    repr_bind_attr_obj $P103, $P104, "$!name", 0, $P101
.annotate 'line', 208
    set $P101, param_1164
    unless_null $P101, vivify_305
    new $P101, "Undef"
  vivify_305:
    set $P102, param_1162
    nqp_decontainerize $P103, $P102
    nqp_get_sc_object $P104, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 3
    repr_bind_attr_obj $P103, $P104, "$!instance_of", 1, $P101
.annotate 'line', 206
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "new_type" :anon :subid("24_1337966777.064") :outer("132_1337966777.064")
    .param pmc param_1166
    .param pmc param_1168 :named("instance_of")
    .param pmc param_1167 :optional :named("name")
    .param int has_param_1167 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 213
    .lex "self", param_1166
    if has_param_1167, optparam_306
    new $P101, "String"
    assign $P101, "<anon>"
    set param_1167, $P101
  optparam_306:
    .lex "$name", param_1167
    .lex "$instance_of", param_1168
.annotate 'line', 214
    new $P102, "Undef"
    set $P1169, $P102
    .lex "$metarole", $P1169
    set $P103, param_1166
    nqp_decontainerize $P104, $P103
    set $P105, param_1167
    unless_null $P105, vivify_307
    new $P105, "Undef"
  vivify_307:
    set $P106, param_1168
    unless_null $P106, vivify_308
    new $P106, "Undef"
  vivify_308:
    $P107 = $P104."new"($P105 :named("name"), $P106 :named("instance_of"))
    set $P1169, $P107
.annotate 'line', 215
    set $P103, $P1169
    unless_null $P103, vivify_309
    new $P103, "Undef"
  vivify_309:
    new $P104, "String"
    assign $P104, "Uninstantiable"
    set $S100, $P104
    repr_type_object_for $P105, $P103, $S100
.annotate 'line', 213
    .return ($P105)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_method" :anon :subid("25_1337966777.064") :outer("132_1337966777.064")
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
    unless_null $P101, vivify_310
    new $P101, "Undef"
  vivify_310:
    set $P102, param_1171
    nqp_decontainerize $P103, $P102
    nqp_get_sc_object $P104, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 3
    repr_get_attr_obj $P1176, $P103, $P104, "%!methods", 3
    unless_null $P1176, vivify_311
    $P1176 = root_new ['parrot';'Hash']
  vivify_311:
    set $P105, $P1176[$P101]
    unless_null $P105, vivify_312
    new $P105, "Undef"
  vivify_312:
    unless $P105, if_1175_end
.annotate 'line', 220
    new $P106, "String"
    assign $P106, "This role already has a method named "
    set $P107, param_1173
    unless_null $P107, vivify_313
    new $P107, "Undef"
  vivify_313:
    concat $P108, $P106, $P107
    die $P108
  if_1175_end:
.annotate 'line', 222
    set $P101, param_1174
    unless_null $P101, vivify_314
    new $P101, "Undef"
  vivify_314:
    set $P102, param_1173
    unless_null $P102, vivify_315
    new $P102, "Undef"
  vivify_315:
    set $P103, param_1171
    nqp_decontainerize $P104, $P103
    nqp_get_sc_object $P105, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 3
    repr_get_attr_obj $P1177, $P104, $P105, "%!methods", 3
    unless_null $P1177, vivify_316
    $P1177 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P104, $P105, "%!methods", 3, $P1177
  vivify_316:
    set $P1177[$P102], $P101
.annotate 'line', 218
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_multi_method" :anon :subid("26_1337966777.064") :outer("132_1337966777.064")
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
    unless_null $P1185, vivify_317
    $P1185 = root_new ['parrot';'Hash']
  vivify_317:
.annotate 'line', 227
    set $P101, param_1181
    unless_null $P101, vivify_318
    new $P101, "Undef"
  vivify_318:
    set $P1186, $P1183
    unless_null $P1186, vivify_319
    $P1186 = root_new ['parrot';'Hash']
    set $P1183, $P1186
  vivify_319:
    set $P1186["name"], $P101
.annotate 'line', 228
    set $P101, param_1182
    unless_null $P101, vivify_320
    new $P101, "Undef"
  vivify_320:
    set $P1187, $P1183
    unless_null $P1187, vivify_321
    $P1187 = root_new ['parrot';'Hash']
    set $P1183, $P1187
  vivify_321:
    set $P1187["code"], $P101
.annotate 'line', 229
    set $P1188, $P1183
    unless_null $P1188, vivify_322
    $P1188 = root_new ['parrot';'Hash']
  vivify_322:
    set $P101, param_1179
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 3
    repr_get_attr_obj $P1189, $P102, $P103, "@!multi_methods_to_incorporate", 4
    unless_null $P1189, vivify_323
    $P1189 = root_new ['parrot';'ResizablePMCArray']
  vivify_323:
    set $N100, $P1189
    set $I100, $N100
    set $P104, param_1179
    nqp_decontainerize $P105, $P104
    nqp_get_sc_object $P106, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 3
    repr_get_attr_obj $P1190, $P105, $P106, "@!multi_methods_to_incorporate", 4
    unless_null $P1190, vivify_324
    $P1190 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P105, $P106, "@!multi_methods_to_incorporate", 4, $P1190
  vivify_324:
    set $P1190[$I100], $P1188
.annotate 'line', 225
    set $P101, param_1182
    unless_null $P101, vivify_325
    new $P101, "Undef"
  vivify_325:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_attribute" :anon :subid("27_1337966777.064") :outer("132_1337966777.064")
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
    unless_null $P102, vivify_326
    new $P102, "Undef"
  vivify_326:
    $P103 = $P102."name"()
    set $P1195, $P103
.annotate 'line', 235
    set $P102, $P1195
    unless_null $P102, vivify_327
    new $P102, "Undef"
  vivify_327:
    set $P103, param_1192
    nqp_decontainerize $P104, $P103
    nqp_get_sc_object $P105, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 3
    repr_get_attr_obj $P1197, $P104, $P105, "%!attributes", 2
    unless_null $P1197, vivify_328
    $P1197 = root_new ['parrot';'Hash']
  vivify_328:
    set $P106, $P1197[$P102]
    unless_null $P106, vivify_329
    new $P106, "Undef"
  vivify_329:
    unless $P106, if_1196_end
.annotate 'line', 236
    new $P107, "String"
    assign $P107, "This role already has an attribute named "
    set $P108, $P1195
    unless_null $P108, vivify_330
    new $P108, "Undef"
  vivify_330:
    concat $P109, $P107, $P108
    die $P109
  if_1196_end:
.annotate 'line', 238
    set $P102, param_1194
    unless_null $P102, vivify_331
    new $P102, "Undef"
  vivify_331:
    set $P103, $P1195
    unless_null $P103, vivify_332
    new $P103, "Undef"
  vivify_332:
    set $P104, param_1192
    nqp_decontainerize $P105, $P104
    nqp_get_sc_object $P106, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 3
    repr_get_attr_obj $P1198, $P105, $P106, "%!attributes", 2
    unless_null $P1198, vivify_333
    $P1198 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P105, $P106, "%!attributes", 2, $P1198
  vivify_333:
    set $P1198[$P103], $P102
.annotate 'line', 233
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_parent" :anon :subid("28_1337966777.064") :outer("132_1337966777.064")
    .param pmc param_1200
    .param pmc param_1201
    .param pmc param_1202
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 241
    .lex "self", param_1200
    .lex "$obj", param_1201
    .lex "$parent", param_1202
.annotate 'line', 242
    die "A role cannot inherit from a class in NQP"
.annotate 'line', 241
    .return ()
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_role" :anon :subid("29_1337966777.064") :outer("132_1337966777.064")
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
    unless_null $P101, vivify_334
    new $P101, "Undef"
  vivify_334:
    set $P102, param_1204
    nqp_decontainerize $P103, $P102
    nqp_get_sc_object $P104, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 3
    repr_get_attr_obj $P1207, $P103, $P104, "@!roles", 6
    unless_null $P1207, vivify_335
    $P1207 = root_new ['parrot';'ResizablePMCArray']
  vivify_335:
    set $N100, $P1207
    set $I100, $N100
    set $P105, param_1204
    nqp_decontainerize $P106, $P105
    nqp_get_sc_object $P107, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 3
    repr_get_attr_obj $P1208, $P106, $P107, "@!roles", 6
    unless_null $P1208, vivify_336
    $P1208 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P106, $P107, "@!roles", 6, $P1208
  vivify_336:
    set $P1208[$I100], $P101
.annotate 'line', 245
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_collision" :anon :subid("30_1337966777.064") :outer("132_1337966777.064")
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
    unless_null $P101, vivify_337
    new $P101, "Undef"
  vivify_337:
    set $P102, param_1210
    nqp_decontainerize $P103, $P102
    nqp_get_sc_object $P104, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 3
    repr_get_attr_obj $P1213, $P103, $P104, "@!collisions", 5
    unless_null $P1213, vivify_338
    $P1213 = root_new ['parrot';'ResizablePMCArray']
  vivify_338:
    set $N100, $P1213
    set $I100, $N100
    set $P105, param_1210
    nqp_decontainerize $P106, $P105
    nqp_get_sc_object $P107, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 3
    repr_get_attr_obj $P1214, $P106, $P107, "@!collisions", 5
    unless_null $P1214, vivify_339
    $P1214 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P106, $P107, "@!collisions", 5, $P1214
  vivify_339:
    set $P1214[$I100], $P101
.annotate 'line', 249
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "compose" :anon :subid("31_1337966777.064") :outer("132_1337966777.064")
    .param pmc param_1216
    .param pmc param_1217
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 254
    .const 'Sub' $P1222 = "133_1337966777.064" 
    capture_lex $P1222
    .lex "self", param_1216
    .lex "$obj", param_1217
.annotate 'line', 257
    set $P101, param_1216
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 3
    repr_get_attr_obj $P1219, $P102, $P103, "@!roles", 6
    unless_null $P1219, vivify_340
    $P1219 = root_new ['parrot';'ResizablePMCArray']
  vivify_340:
    unless $P1219, if_1218_end
.annotate 'line', 258
    set $P105, param_1216
    nqp_decontainerize $P106, $P105
    nqp_get_sc_object $P107, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 3
    repr_get_attr_obj $P1220, $P106, $P107, "@!roles", 6
    unless_null $P1220, vivify_341
    $P1220 = root_new ['parrot';'ResizablePMCArray']
  vivify_341:
    defined $I100, $P1220
    unless $I100, for_undef_342
    iter $P104, $P1220
    new $P109, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P109, loop1228_handler
    push_eh $P109
  loop1228_test:
    unless $P104, loop1228_done
    shift $P108, $P104
  loop1228_redo:
    .const 'Sub' $P1222 = "133_1337966777.064" 
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
  for_undef_342:
.annotate 'line', 262
    find_lex $P104, "RoleToRoleApplier"
    set $P105, param_1217
    unless_null $P105, vivify_350
    new $P105, "Undef"
  vivify_350:
    set $P106, param_1216
    nqp_decontainerize $P107, $P106
    nqp_get_sc_object $P108, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 3
    repr_get_attr_obj $P1229, $P107, $P108, "@!roles", 6
    unless_null $P1229, vivify_351
    $P1229 = root_new ['parrot';'ResizablePMCArray']
  vivify_351:
    $P104."apply"($P105, $P1229)
  if_1218_end:
.annotate 'line', 266
    new $P101, "Float"
    assign $P101, 1
    set $P102, param_1216
    nqp_decontainerize $P103, $P102
    nqp_get_sc_object $P104, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 3
    repr_bind_attr_obj $P103, $P104, "$!composed", 8, $P101
.annotate 'line', 254
    set $P101, param_1217
    unless_null $P101, vivify_352
    new $P101, "Undef"
  vivify_352:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1221"  :anon :subid("133_1337966777.064") :outer("31_1337966777.064")
    .param pmc param_1223
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 258
    .lex "$_", param_1223
.annotate 'line', 259
    find_lex $P109, "$_"
    unless_null $P109, vivify_343
    new $P109, "Undef"
  vivify_343:
    find_lex $P110, "self"
    nqp_decontainerize $P111, $P110
    nqp_get_sc_object $P112, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 3
    repr_get_attr_obj $P1224, $P111, $P112, "@!role_typecheck_list", 7
    unless_null $P1224, vivify_344
    $P1224 = root_new ['parrot';'ResizablePMCArray']
  vivify_344:
    set $N100, $P1224
    set $I101, $N100
    find_lex $P113, "self"
    nqp_decontainerize $P114, $P113
    nqp_get_sc_object $P115, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 3
    repr_get_attr_obj $P1225, $P114, $P115, "@!role_typecheck_list", 7
    unless_null $P1225, vivify_345
    $P1225 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P114, $P115, "@!role_typecheck_list", 7, $P1225
  vivify_345:
    set $P1225[$I101], $P109
.annotate 'line', 260
    find_lex $P109, "$_"
    unless_null $P109, vivify_346
    new $P109, "Undef"
  vivify_346:
    get_how $P110, $P109
    find_lex $P111, "$_"
    unless_null $P111, vivify_347
    new $P111, "Undef"
  vivify_347:
    $P112 = $P110."instance_of"($P111)
    find_lex $P113, "self"
    nqp_decontainerize $P114, $P113
    nqp_get_sc_object $P115, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 3
    repr_get_attr_obj $P1226, $P114, $P115, "@!role_typecheck_list", 7
    unless_null $P1226, vivify_348
    $P1226 = root_new ['parrot';'ResizablePMCArray']
  vivify_348:
    set $N100, $P1226
    set $I101, $N100
    find_lex $P116, "self"
    nqp_decontainerize $P117, $P116
    nqp_get_sc_object $P118, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 3
    repr_get_attr_obj $P1227, $P117, $P118, "@!role_typecheck_list", 7
    unless_null $P1227, vivify_349
    $P1227 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P117, $P118, "@!role_typecheck_list", 7, $P1227
  vivify_349:
    set $P1227[$I101], $P112
.annotate 'line', 258
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "methods" :anon :subid("32_1337966777.064") :outer("132_1337966777.064")
    .param pmc param_1231
    .param pmc param_1232
    .param pmc param_1233 :optional :named("local")
    .param int has_param_1233 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 275
    .const 'Sub' $P1239 = "134_1337966777.064" 
    capture_lex $P1239
    .lex "self", param_1231
    .lex "$obj", param_1232
    if has_param_1233, optparam_353
    new $P101, "Undef"
    set param_1233, $P101
  optparam_353:
    .lex "$local", param_1233
.annotate 'line', 276
    $P1235 = root_new ['parrot';'ResizablePMCArray']
    set $P1234, $P1235
    .lex "@meths", $P1234
.annotate 'line', 275
    set $P1236, $P1234
    unless_null $P1236, vivify_354
    $P1236 = root_new ['parrot';'ResizablePMCArray']
  vivify_354:
.annotate 'line', 277
    set $P103, param_1231
    nqp_decontainerize $P104, $P103
    nqp_get_sc_object $P105, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 3
    repr_get_attr_obj $P1237, $P104, $P105, "%!methods", 3
    unless_null $P1237, vivify_355
    $P1237 = root_new ['parrot';'Hash']
  vivify_355:
    defined $I100, $P1237
    unless $I100, for_undef_356
    iter $P102, $P1237
    new $P107, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P107, loop1242_handler
    push_eh $P107
  loop1242_test:
    unless $P102, loop1242_done
    shift $P106, $P102
  loop1242_redo:
    .const 'Sub' $P1239 = "134_1337966777.064" 
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
  for_undef_356:
.annotate 'line', 275
    set $P1243, $P1234
    unless_null $P1243, vivify_359
    $P1243 = root_new ['parrot';'ResizablePMCArray']
  vivify_359:
    .return ($P1243)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1238"  :anon :subid("134_1337966777.064") :outer("32_1337966777.064")
    .param pmc param_1240
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 277
    .lex "$_", param_1240
.annotate 'line', 278
    find_lex $P1241, "@meths"
    unless_null $P1241, vivify_357
    $P1241 = root_new ['parrot';'ResizablePMCArray']
  vivify_357:
    find_lex $P107, "$_"
    unless_null $P107, vivify_358
    new $P107, "Undef"
  vivify_358:
    $P108 = $P107."value"()
    $P109 = $P1241."push"($P108)
.annotate 'line', 277
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "method_table" :anon :subid("33_1337966777.064") :outer("132_1337966777.064")
    .param pmc param_1245
    .param pmc param_1246
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 283
    .lex "self", param_1245
    .lex "$obj", param_1246
    set $P101, param_1245
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 3
    repr_get_attr_obj $P1247, $P102, $P103, "%!methods", 3
    unless_null $P1247, vivify_360
    $P1247 = root_new ['parrot';'Hash']
  vivify_360:
    .return ($P1247)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "collisions" :anon :subid("34_1337966777.064") :outer("132_1337966777.064")
    .param pmc param_1249
    .param pmc param_1250
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 287
    .lex "self", param_1249
    .lex "$obj", param_1250
    set $P101, param_1249
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 3
    repr_get_attr_obj $P1251, $P102, $P103, "@!collisions", 5
    unless_null $P1251, vivify_361
    $P1251 = root_new ['parrot';'ResizablePMCArray']
  vivify_361:
    .return ($P1251)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "name" :anon :subid("35_1337966777.064") :outer("132_1337966777.064")
    .param pmc param_1253
    .param pmc param_1254
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 291
    .lex "self", param_1253
    .lex "$obj", param_1254
    set $P101, param_1253
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 3
    repr_get_attr_obj $P104, $P102, $P103, "$!name", 0
    unless_null $P104, vivify_362
    new $P104, "Undef"
  vivify_362:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "attributes" :anon :subid("36_1337966777.064") :outer("132_1337966777.064")
    .param pmc param_1256
    .param pmc param_1257
    .param pmc param_1258 :optional :named("local")
    .param int has_param_1258 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 295
    .const 'Sub' $P1264 = "135_1337966777.064" 
    capture_lex $P1264
    .lex "self", param_1256
    .lex "$obj", param_1257
    if has_param_1258, optparam_363
    new $P101, "Undef"
    set param_1258, $P101
  optparam_363:
    .lex "$local", param_1258
.annotate 'line', 296
    $P1260 = root_new ['parrot';'ResizablePMCArray']
    set $P1259, $P1260
    .lex "@attrs", $P1259
.annotate 'line', 295
    set $P1261, $P1259
    unless_null $P1261, vivify_364
    $P1261 = root_new ['parrot';'ResizablePMCArray']
  vivify_364:
.annotate 'line', 297
    set $P103, param_1256
    nqp_decontainerize $P104, $P103
    nqp_get_sc_object $P105, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 3
    repr_get_attr_obj $P1262, $P104, $P105, "%!attributes", 2
    unless_null $P1262, vivify_365
    $P1262 = root_new ['parrot';'Hash']
  vivify_365:
    defined $I100, $P1262
    unless $I100, for_undef_366
    iter $P102, $P1262
    new $P107, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P107, loop1267_handler
    push_eh $P107
  loop1267_test:
    unless $P102, loop1267_done
    shift $P106, $P102
  loop1267_redo:
    .const 'Sub' $P1264 = "135_1337966777.064" 
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
  for_undef_366:
.annotate 'line', 295
    set $P1268, $P1259
    unless_null $P1268, vivify_369
    $P1268 = root_new ['parrot';'ResizablePMCArray']
  vivify_369:
    .return ($P1268)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1263"  :anon :subid("135_1337966777.064") :outer("36_1337966777.064")
    .param pmc param_1265
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 297
    .lex "$_", param_1265
.annotate 'line', 298
    find_lex $P1266, "@attrs"
    unless_null $P1266, vivify_367
    $P1266 = root_new ['parrot';'ResizablePMCArray']
  vivify_367:
    find_lex $P107, "$_"
    unless_null $P107, vivify_368
    new $P107, "Undef"
  vivify_368:
    $P108 = $P107."value"()
    $P109 = $P1266."push"($P108)
.annotate 'line', 297
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "roles" :anon :subid("37_1337966777.064") :outer("132_1337966777.064")
    .param pmc param_1270
    .param pmc param_1271
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 303
    .lex "self", param_1270
    .lex "$obj", param_1271
    set $P101, param_1270
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 3
    repr_get_attr_obj $P1272, $P102, $P103, "@!roles", 6
    unless_null $P1272, vivify_370
    $P1272 = root_new ['parrot';'ResizablePMCArray']
  vivify_370:
    .return ($P1272)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "role_typecheck_list" :anon :subid("38_1337966777.064") :outer("132_1337966777.064")
    .param pmc param_1274
    .param pmc param_1275
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 307
    .lex "self", param_1274
    .lex "$obj", param_1275
    set $P101, param_1274
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 3
    repr_get_attr_obj $P1276, $P102, $P103, "@!role_typecheck_list", 7
    unless_null $P1276, vivify_371
    $P1276 = root_new ['parrot';'ResizablePMCArray']
  vivify_371:
    .return ($P1276)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "instance_of" :anon :subid("39_1337966777.064") :outer("132_1337966777.064")
    .param pmc param_1278
    .param pmc param_1279
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 311
    .lex "self", param_1278
    .lex "$obj", param_1279
    set $P101, param_1278
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 3
    repr_get_attr_obj $P104, $P102, $P103, "$!instance_of", 1
    unless_null $P104, vivify_372
    new $P104, "Undef"
  vivify_372:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block1281"  :subid("136_1337966777.064") :outer("121_1337966777.064")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 317
    .const 'Sub' $P1309 = "40_1337966777.064" 
    capture_lex $P1309
    .const 'Sub' $P1293 = "138_1337966777.064" 
    capture_lex $P1293
    .const 'Sub' $P1284 = "137_1337966777.064" 
    capture_lex $P1284
.annotate 'line', 319
    .const 'Sub' $P1284 = "137_1337966777.064" 
    newclosure $P1291, $P1284
    set $P1283, $P1291
    .lex "has_method", $P1283
.annotate 'line', 324
    .const 'Sub' $P1293 = "138_1337966777.064" 
    newclosure $P1306, $P1293
    set $P1292, $P1306
    .lex "has_attribute", $P1292
.annotate 'line', 317
    .lex "$?PACKAGE", $P1307
    .lex "$?CLASS", $P1308
    set $P101, $P1283
    set $P101, $P1292
.annotate 'line', 332
    .const 'Sub' $P1309 = "40_1337966777.064" 
    newclosure $P1351, $P1309
.annotate 'line', 317
    .return ($P1351)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "has_method"  :subid("137_1337966777.064") :outer("136_1337966777.064")
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
    unless_null $P100, vivify_373
    new $P100, "Undef"
  vivify_373:
    get_how $P101, $P100
    set $P102, param_1285
    unless_null $P102, vivify_374
    new $P102, "Undef"
  vivify_374:
    $P103 = $P101."method_table"($P102)
    set $P1288, $P103
.annotate 'line', 321
    set $P100, param_1286
    unless_null $P100, vivify_375
    new $P100, "Undef"
  vivify_375:
    set $P1290, $P1288
    unless_null $P1290, vivify_376
    $P1290 = root_new ['parrot';'Hash']
  vivify_376:
    exists $I100, $P1290[$P100]
.annotate 'line', 319
    .return ($I100)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "has_attribute"  :subid("138_1337966777.064") :outer("136_1337966777.064")
    .param pmc param_1296
    .param pmc param_1297
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 324
    .const 'Sub' $P1302 = "139_1337966777.064" 
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
    unless_null $P100, vivify_377
    new $P100, "Undef"
  vivify_377:
    get_how $P101, $P100
    set $P102, param_1296
    unless_null $P102, vivify_378
    new $P102, "Undef"
  vivify_378:
    $P103 = $P101."attributes"($P102, 1 :named("local"))
    set $P1298, $P103
.annotate 'line', 326
    set $P1300, $P1298
    unless_null $P1300, vivify_379
    $P1300 = root_new ['parrot';'ResizablePMCArray']
  vivify_379:
    defined $I101, $P1300
    unless $I101, for_undef_380
    iter $P100, $P1300
    new $P103, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P103, loop1305_handler
    push_eh $P103
  loop1305_test:
    unless $P100, loop1305_done
    shift $P101, $P100
  loop1305_redo:
    .const 'Sub' $P1302 = "139_1337966777.064" 
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
  for_undef_380:
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
.sub "_block1301"  :anon :subid("139_1337966777.064") :outer("138_1337966777.064")
    .param pmc param_1303
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 326
    .lex "$_", param_1303
.annotate 'line', 327
    find_lex $P103, "$_"
    unless_null $P103, vivify_381
    new $P103, "Undef"
  vivify_381:
    $S100 = $P103."name"()
    find_lex $P104, "$name"
    unless_null $P104, vivify_382
    new $P104, "Undef"
  vivify_382:
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
.sub "apply" :anon :subid("40_1337966777.064") :outer("136_1337966777.064")
    .param pmc param_1310
    .param pmc param_1311
    .param pmc param_1312
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 332
    .const 'Sub' $P1345 = "143_1337966777.064" 
    capture_lex $P1345
    .const 'Sub' $P1339 = "142_1337966777.064" 
    capture_lex $P1339
    .const 'Sub' $P1333 = "141_1337966777.064" 
    capture_lex $P1333
    .const 'Sub' $P1328 = "140_1337966777.064" 
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
    unless_null $P103, vivify_383
    new $P103, "Undef"
  vivify_383:
    set $P103, $P1314
    unless_null $P103, vivify_384
    new $P103, "Undef"
  vivify_384:
.annotate 'line', 337
    set $P1324, param_1312
    unless_null $P1324, vivify_385
    $P1324 = root_new ['parrot';'ResizablePMCArray']
  vivify_385:
    set $N100, $P1324
    set $N101, 1
    iseq $I101, $N100, $N101
    if $I101, if_1323
.annotate 'line', 342
    find_lex $P103, "NQPConcreteRoleHOW"
    find_lex $P104, "$?PACKAGE"
    get_who $P105, $P104
    set $P108, $P105["NQPMu"]
    unless_null $P108, vivify_386
    get_hll_global $P106, "GLOBAL"
    get_who $P107, $P106
    set $P108, $P107["NQPMu"]
  vivify_386:
    $P109 = $P103."new_type"($P108 :named("instance_of"))
    set $P1313, $P109
.annotate 'line', 343
    set $P103, $P1313
    unless_null $P103, vivify_387
    new $P103, "Undef"
  vivify_387:
    get_how $P104, $P103
    set $P1314, $P104
.annotate 'line', 344
    set $P1326, param_1312
    unless_null $P1326, vivify_388
    $P1326 = root_new ['parrot';'ResizablePMCArray']
  vivify_388:
    defined $I102, $P1326
    unless $I102, for_undef_389
    iter $P103, $P1326
    new $P105, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P105, loop1330_handler
    push_eh $P105
  loop1330_test:
    unless $P103, loop1330_done
    shift $P104, $P103
  loop1330_redo:
    .const 'Sub' $P1328 = "140_1337966777.064" 
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
  for_undef_389:
.annotate 'line', 347
    set $P103, $P1314
    unless_null $P103, vivify_393
    new $P103, "Undef"
  vivify_393:
    set $P104, $P1313
    unless_null $P104, vivify_394
    new $P104, "Undef"
  vivify_394:
    $P105 = $P103."compose"($P104)
    set $P1313, $P105
.annotate 'line', 341
    goto if_1323_end
  if_1323:
.annotate 'line', 338
    set $P1325, param_1312
    unless_null $P1325, vivify_395
    $P1325 = root_new ['parrot';'ResizablePMCArray']
  vivify_395:
    set $P103, $P1325[0]
    unless_null $P103, vivify_396
    new $P103, "Undef"
  vivify_396:
    set $P1313, $P103
.annotate 'line', 339
    set $P103, $P1313
    unless_null $P103, vivify_397
    new $P103, "Undef"
  vivify_397:
    get_how $P104, $P103
    set $P1314, $P104
  if_1323_end:
.annotate 'line', 351
    set $P103, $P1314
    unless_null $P103, vivify_398
    new $P103, "Undef"
  vivify_398:
    set $P104, $P1313
    unless_null $P104, vivify_399
    new $P104, "Undef"
  vivify_399:
    $P105 = $P103."collisions"($P104)
    set $P1315, $P105
.annotate 'line', 352
    set $P1331, $P1315
    unless_null $P1331, vivify_400
    $P1331 = root_new ['parrot';'ResizablePMCArray']
  vivify_400:
    defined $I101, $P1331
    unless $I101, for_undef_401
    iter $P103, $P1331
    new $P106, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P106, loop1336_handler
    push_eh $P106
  loop1336_test:
    unless $P103, loop1336_done
    shift $P104, $P103
  loop1336_redo:
    .const 'Sub' $P1333 = "141_1337966777.064" 
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
  for_undef_401:
.annotate 'line', 360
    set $P103, $P1314
    unless_null $P103, vivify_407
    new $P103, "Undef"
  vivify_407:
    set $P104, $P1313
    unless_null $P104, vivify_408
    new $P104, "Undef"
  vivify_408:
    $P105 = $P103."methods"($P104)
    set $P1317, $P105
.annotate 'line', 361
    set $P1337, $P1317
    unless_null $P1337, vivify_409
    $P1337 = root_new ['parrot';'ResizablePMCArray']
  vivify_409:
    defined $I101, $P1337
    unless $I101, for_undef_410
    iter $P103, $P1337
    new $P106, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P106, loop1342_handler
    push_eh $P106
  loop1342_test:
    unless $P103, loop1342_done
    shift $P104, $P103
  loop1342_redo:
    .const 'Sub' $P1339 = "142_1337966777.064" 
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
  for_undef_410:
.annotate 'line', 368
    set $P103, $P1314
    unless_null $P103, vivify_417
    new $P103, "Undef"
  vivify_417:
    set $P104, $P1313
    unless_null $P104, vivify_418
    new $P104, "Undef"
  vivify_418:
    $P105 = $P103."attributes"($P104)
    set $P1319, $P105
.annotate 'line', 369
    set $P1343, $P1319
    unless_null $P1343, vivify_419
    $P1343 = root_new ['parrot';'ResizablePMCArray']
  vivify_419:
    defined $I101, $P1343
    unless $I101, for_undef_420
    iter $P103, $P1343
    new $P105, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P105, loop1348_handler
    push_eh $P105
  loop1348_test:
    unless $P103, loop1348_done
    shift $P104, $P103
  loop1348_redo:
    .const 'Sub' $P1345 = "143_1337966777.064" 
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
  for_undef_420:
.annotate 'line', 332
    set $P1349, $P1321
    unless_null $P1349, vivify_429
    $P1349 = root_new ['parrot';'ResizablePMCArray']
  vivify_429:
.annotate 'line', 381
    set $P103, $P1313
    unless_null $P103, vivify_430
    new $P103, "Undef"
  vivify_430:
    set $P1350, $P1321
    unless_null $P1350, vivify_431
    $P1350 = root_new ['parrot';'ResizablePMCArray']
    set $P1321, $P1350
  vivify_431:
    set $P1350[0], $P103
.annotate 'line', 332
    .return ($P103)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block1327"  :anon :subid("140_1337966777.064") :outer("40_1337966777.064")
    .param pmc param_1329
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 344
    .lex "$_", param_1329
.annotate 'line', 345
    find_lex $P105, "$to_compose_meta"
    unless_null $P105, vivify_390
    new $P105, "Undef"
  vivify_390:
    find_lex $P106, "$to_compose"
    unless_null $P106, vivify_391
    new $P106, "Undef"
  vivify_391:
    find_lex $P107, "$_"
    unless_null $P107, vivify_392
    new $P107, "Undef"
  vivify_392:
    $P108 = $P105."add_role"($P106, $P107)
.annotate 'line', 344
    .return ($P108)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block1332"  :anon :subid("141_1337966777.064") :outer("40_1337966777.064")
    .param pmc param_1334
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 352
    .lex "$_", param_1334
.annotate 'line', 353
    find_lex $P106, "$target"
    unless_null $P106, vivify_402
    new $P106, "Undef"
  vivify_402:
    find_lex $P107, "$_"
    unless_null $P107, vivify_403
    new $P107, "Undef"
  vivify_403:
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
    unless_null $P110, vivify_404
    new $P110, "Undef"
  vivify_404:
    concat $P111, $P109, $P110
    concat $P112, $P111, "' collides and a resolution must be provided by the class '"
.annotate 'line', 355
    find_lex $P113, "$target"
    unless_null $P113, vivify_405
    new $P113, "Undef"
  vivify_405:
    get_how $P114, $P113
    find_lex $P115, "$target"
    unless_null $P115, vivify_406
    new $P115, "Undef"
  vivify_406:
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
.sub "_block1338"  :anon :subid("142_1337966777.064") :outer("40_1337966777.064")
    .param pmc param_1340
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 361
    .lex "$_", param_1340
.annotate 'line', 362
    find_lex $P106, "$target"
    unless_null $P106, vivify_411
    new $P106, "Undef"
  vivify_411:
    find_lex $P107, "$_"
    unless_null $P107, vivify_412
    new $P107, "Undef"
  vivify_412:
    set $S100, $P107
    $P108 = "has_method"($P106, $S100, 0)
    unless $P108, unless_1341
    set $P105, $P108
    goto unless_1341_end
  unless_1341:
.annotate 'line', 363
    find_lex $P109, "$target"
    unless_null $P109, vivify_413
    new $P109, "Undef"
  vivify_413:
    get_how $P110, $P109
    find_lex $P111, "$target"
    unless_null $P111, vivify_414
    new $P111, "Undef"
  vivify_414:
    find_lex $P112, "$_"
    unless_null $P112, vivify_415
    new $P112, "Undef"
  vivify_415:
    set $S101, $P112
    find_lex $P113, "$_"
    unless_null $P113, vivify_416
    new $P113, "Undef"
  vivify_416:
    $P114 = $P110."add_method"($P111, $S101, $P113)
.annotate 'line', 362
    set $P105, $P114
  unless_1341_end:
.annotate 'line', 361
    .return ($P105)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block1344"  :anon :subid("143_1337966777.064") :outer("40_1337966777.064")
    .param pmc param_1346
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 369
    .lex "$_", param_1346
.annotate 'line', 370
    find_lex $P105, "$target"
    unless_null $P105, vivify_421
    new $P105, "Undef"
  vivify_421:
    find_lex $P106, "$_"
    unless_null $P106, vivify_422
    new $P106, "Undef"
  vivify_422:
    $P107 = $P106."name"()
    $P108 = "has_attribute"($P105, $P107)
    unless $P108, if_1347_end
.annotate 'line', 371
    new $P109, "String"
    assign $P109, "Attribute '"
    find_lex $P110, "$_"
    unless_null $P110, vivify_423
    new $P110, "Undef"
  vivify_423:
    $S100 = $P110."name"()
    concat $P111, $P109, $S100
    concat $P112, $P111, "' already exists in the class '"
.annotate 'line', 372
    find_lex $P113, "$target"
    unless_null $P113, vivify_424
    new $P113, "Undef"
  vivify_424:
    get_how $P114, $P113
    find_lex $P115, "$target"
    unless_null $P115, vivify_425
    new $P115, "Undef"
  vivify_425:
    $S101 = $P114."name"($P115)
    concat $P116, $P112, $S101
.annotate 'line', 371
    concat $P117, $P116, "', but a role also wishes to compose it"
.annotate 'line', 372
    die $P117
  if_1347_end:
.annotate 'line', 374
    find_lex $P105, "$target"
    unless_null $P105, vivify_426
    new $P105, "Undef"
  vivify_426:
    get_how $P106, $P105
    find_lex $P107, "$target"
    unless_null $P107, vivify_427
    new $P107, "Undef"
  vivify_427:
    find_lex $P108, "$_"
    unless_null $P108, vivify_428
    new $P108, "Undef"
  vivify_428:
    $P109 = $P106."add_attribute"($P107, $P108)
.annotate 'line', 369
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1352"  :subid("144_1337966777.064") :outer("121_1337966777.064")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 390
    .const 'Sub' $P1485 = "58_1337966777.064" 
    capture_lex $P1485
    .const 'Sub' $P1471 = "57_1337966777.064" 
    capture_lex $P1471
    .const 'Sub' $P1468 = "56_1337966777.064" 
    capture_lex $P1468
    .const 'Sub' $P1464 = "55_1337966777.064" 
    capture_lex $P1464
    .const 'Sub' $P1450 = "54_1337966777.064" 
    capture_lex $P1450
    .const 'Sub' $P1420 = "53_1337966777.064" 
    capture_lex $P1420
    .const 'Sub' $P1417 = "52_1337966777.064" 
    capture_lex $P1417
    .const 'Sub' $P1414 = "51_1337966777.064" 
    capture_lex $P1414
    .const 'Sub' $P1408 = "50_1337966777.064" 
    capture_lex $P1408
    .const 'Sub' $P1404 = "49_1337966777.064" 
    capture_lex $P1404
    .const 'Sub' $P1396 = "48_1337966777.064" 
    capture_lex $P1396
    .const 'Sub' $P1383 = "47_1337966777.064" 
    capture_lex $P1383
    .const 'Sub' $P1375 = "46_1337966777.064" 
    capture_lex $P1375
    .const 'Sub' $P1371 = "45_1337966777.064" 
    capture_lex $P1371
    .const 'Sub' $P1366 = "44_1337966777.064" 
    capture_lex $P1366
    .const 'Sub' $P1363 = "43_1337966777.064" 
    capture_lex $P1363
    .const 'Sub' $P1359 = "42_1337966777.064" 
    capture_lex $P1359
    .const 'Sub' $P1357 = "41_1337966777.064" 
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
    .const 'Sub' $P1485 = "58_1337966777.064" 
    newclosure $P1489, $P1485
.annotate 'line', 390
    .return ($P1489)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "archetypes" :anon :subid("41_1337966777.064") :outer("144_1337966777.064")
    .param pmc param_1358
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 415
    .lex "self", param_1358
    find_lex $P101, "$archetypes"
    unless_null $P101, vivify_432
    new $P101, "Undef"
  vivify_432:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "new" :anon :subid("42_1337966777.064") :outer("144_1337966777.064")
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
    unless_null $P102, vivify_433
    new $P102, "Undef"
  vivify_433:
    set $P103, param_1361
    unless_null $P103, vivify_434
    new $P103, "Undef"
  vivify_434:
    $P102."BUILD"($P103 :named("name"))
.annotate 'line', 424
    set $P102, $P1362
    unless_null $P102, vivify_435
    new $P102, "Undef"
  vivify_435:
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "BUILD" :anon :subid("43_1337966777.064") :outer("144_1337966777.064")
    .param pmc param_1364
    .param pmc param_1365 :named("name")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 430
    .lex "self", param_1364
    .lex "$name", param_1365
.annotate 'line', 431
    set $P101, param_1365
    unless_null $P101, vivify_436
    new $P101, "Undef"
  vivify_436:
    set $P102, param_1364
    nqp_decontainerize $P103, $P102
    nqp_get_sc_object $P104, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 5
    repr_bind_attr_obj $P103, $P104, "$!name", 0, $P101
.annotate 'line', 430
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "new_type" :anon :subid("44_1337966777.064") :outer("144_1337966777.064")
    .param pmc param_1367
    .param pmc param_1368 :optional :named("name")
    .param int has_param_1368 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 436
    .lex "self", param_1367
    if has_param_1368, optparam_437
    new $P101, "String"
    assign $P101, "<anon>"
    set param_1368, $P101
  optparam_437:
    .lex "$name", param_1368
.annotate 'line', 437
    new $P102, "Undef"
    set $P1369, $P102
    .lex "$metarole", $P1369
    set $P103, param_1367
    nqp_decontainerize $P104, $P103
    set $P105, param_1368
    unless_null $P105, vivify_438
    new $P105, "Undef"
  vivify_438:
    $P106 = $P104."new"($P105 :named("name"))
    set $P1369, $P106
.annotate 'line', 439
    set $P103, $P1369
    unless_null $P103, vivify_439
    new $P103, "Undef"
  vivify_439:
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
.sub "set_body_block" :anon :subid("45_1337966777.064") :outer("144_1337966777.064")
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
    unless_null $P101, vivify_440
    new $P101, "Undef"
  vivify_440:
    set $P102, param_1372
    nqp_decontainerize $P103, $P102
    nqp_get_sc_object $P104, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 5
    repr_bind_attr_obj $P103, $P104, "$!body_block", 6, $P101
.annotate 'line', 443
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_method" :anon :subid("46_1337966777.064") :outer("144_1337966777.064")
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
    unless_null $P101, vivify_441
    new $P101, "Undef"
  vivify_441:
    set $P102, param_1376
    nqp_decontainerize $P103, $P102
    nqp_get_sc_object $P104, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 5
    repr_get_attr_obj $P1381, $P103, $P104, "%!methods", 2
    unless_null $P1381, vivify_442
    $P1381 = root_new ['parrot';'Hash']
  vivify_442:
    set $P105, $P1381[$P101]
    unless_null $P105, vivify_443
    new $P105, "Undef"
  vivify_443:
    unless $P105, if_1380_end
.annotate 'line', 449
    new $P106, "String"
    assign $P106, "This role already has a method named "
    set $P107, param_1378
    unless_null $P107, vivify_444
    new $P107, "Undef"
  vivify_444:
    concat $P108, $P106, $P107
    die $P108
  if_1380_end:
.annotate 'line', 451
    set $P101, param_1379
    unless_null $P101, vivify_445
    new $P101, "Undef"
  vivify_445:
    set $P102, param_1378
    unless_null $P102, vivify_446
    new $P102, "Undef"
  vivify_446:
    set $P103, param_1376
    nqp_decontainerize $P104, $P103
    nqp_get_sc_object $P105, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 5
    repr_get_attr_obj $P1382, $P104, $P105, "%!methods", 2
    unless_null $P1382, vivify_447
    $P1382 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P104, $P105, "%!methods", 2, $P1382
  vivify_447:
    set $P1382[$P102], $P101
.annotate 'line', 447
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_multi_method" :anon :subid("47_1337966777.064") :outer("144_1337966777.064")
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
    unless_null $P1390, vivify_448
    $P1390 = root_new ['parrot';'Hash']
  vivify_448:
.annotate 'line', 456
    set $P101, param_1386
    unless_null $P101, vivify_449
    new $P101, "Undef"
  vivify_449:
    set $P1391, $P1388
    unless_null $P1391, vivify_450
    $P1391 = root_new ['parrot';'Hash']
    set $P1388, $P1391
  vivify_450:
    set $P1391["name"], $P101
.annotate 'line', 457
    set $P101, param_1387
    unless_null $P101, vivify_451
    new $P101, "Undef"
  vivify_451:
    set $P1392, $P1388
    unless_null $P1392, vivify_452
    $P1392 = root_new ['parrot';'Hash']
    set $P1388, $P1392
  vivify_452:
    set $P1392["code"], $P101
.annotate 'line', 458
    set $P1393, $P1388
    unless_null $P1393, vivify_453
    $P1393 = root_new ['parrot';'Hash']
  vivify_453:
    set $P101, param_1384
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 5
    repr_get_attr_obj $P1394, $P102, $P103, "@!multi_methods_to_incorporate", 3
    unless_null $P1394, vivify_454
    $P1394 = root_new ['parrot';'ResizablePMCArray']
  vivify_454:
    set $N100, $P1394
    set $I100, $N100
    set $P104, param_1384
    nqp_decontainerize $P105, $P104
    nqp_get_sc_object $P106, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 5
    repr_get_attr_obj $P1395, $P105, $P106, "@!multi_methods_to_incorporate", 3
    unless_null $P1395, vivify_455
    $P1395 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P105, $P106, "@!multi_methods_to_incorporate", 3, $P1395
  vivify_455:
    set $P1395[$I100], $P1393
.annotate 'line', 454
    set $P101, param_1387
    unless_null $P101, vivify_456
    new $P101, "Undef"
  vivify_456:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_attribute" :anon :subid("48_1337966777.064") :outer("144_1337966777.064")
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
    unless_null $P102, vivify_457
    new $P102, "Undef"
  vivify_457:
    $P103 = $P102."name"()
    set $P1400, $P103
.annotate 'line', 464
    set $P102, $P1400
    unless_null $P102, vivify_458
    new $P102, "Undef"
  vivify_458:
    set $P103, param_1397
    nqp_decontainerize $P104, $P103
    nqp_get_sc_object $P105, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 5
    repr_get_attr_obj $P1402, $P104, $P105, "%!attributes", 1
    unless_null $P1402, vivify_459
    $P1402 = root_new ['parrot';'Hash']
  vivify_459:
    set $P106, $P1402[$P102]
    unless_null $P106, vivify_460
    new $P106, "Undef"
  vivify_460:
    unless $P106, if_1401_end
.annotate 'line', 465
    new $P107, "String"
    assign $P107, "This role already has an attribute named "
    set $P108, $P1400
    unless_null $P108, vivify_461
    new $P108, "Undef"
  vivify_461:
    concat $P109, $P107, $P108
    die $P109
  if_1401_end:
.annotate 'line', 467
    set $P102, param_1399
    unless_null $P102, vivify_462
    new $P102, "Undef"
  vivify_462:
    set $P103, $P1400
    unless_null $P103, vivify_463
    new $P103, "Undef"
  vivify_463:
    set $P104, param_1397
    nqp_decontainerize $P105, $P104
    nqp_get_sc_object $P106, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 5
    repr_get_attr_obj $P1403, $P105, $P106, "%!attributes", 1
    unless_null $P1403, vivify_464
    $P1403 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P105, $P106, "%!attributes", 1, $P1403
  vivify_464:
    set $P1403[$P103], $P102
.annotate 'line', 462
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_parent" :anon :subid("49_1337966777.064") :outer("144_1337966777.064")
    .param pmc param_1405
    .param pmc param_1406
    .param pmc param_1407
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 470
    .lex "self", param_1405
    .lex "$obj", param_1406
    .lex "$parent", param_1407
.annotate 'line', 471
    die "A role cannot inherit from a class"
.annotate 'line', 470
    .return ()
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_role" :anon :subid("50_1337966777.064") :outer("144_1337966777.064")
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
    unless_null $P101, vivify_465
    new $P101, "Undef"
  vivify_465:
    set $P102, param_1409
    nqp_decontainerize $P103, $P102
    nqp_get_sc_object $P104, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 5
    repr_get_attr_obj $P1412, $P103, $P104, "@!roles", 4
    unless_null $P1412, vivify_466
    $P1412 = root_new ['parrot';'ResizablePMCArray']
  vivify_466:
    set $N100, $P1412
    set $I100, $N100
    set $P105, param_1409
    nqp_decontainerize $P106, $P105
    nqp_get_sc_object $P107, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 5
    repr_get_attr_obj $P1413, $P106, $P107, "@!roles", 4
    unless_null $P1413, vivify_467
    $P1413 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P106, $P107, "@!roles", 4, $P1413
  vivify_467:
    set $P1413[$I100], $P101
.annotate 'line', 474
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "compose" :anon :subid("51_1337966777.064") :outer("144_1337966777.064")
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
    nqp_get_sc_object $P104, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 5
    repr_bind_attr_obj $P103, $P104, "$!composed", 5, $P101
.annotate 'line', 479
    set $P101, param_1416
    unless_null $P101, vivify_468
    new $P101, "Undef"
  vivify_468:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "parametric" :anon :subid("52_1337966777.064") :outer("144_1337966777.064")
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
.sub "specialize" :anon :subid("53_1337966777.064") :outer("144_1337966777.064")
    .param pmc param_1423
    .param pmc param_1424
    .param pmc param_1425
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 496
    .const 'Sub' $P1446 = "148_1337966777.064" 
    capture_lex $P1446
    .const 'Sub' $P1439 = "147_1337966777.064" 
    capture_lex $P1439
    .const 'Sub' $P1434 = "146_1337966777.064" 
    capture_lex $P1434
    .const 'Sub' $P1429 = "145_1337966777.064" 
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
    nqp_get_sc_object $P104, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 5
    repr_get_attr_obj $P105, $P103, $P104, "$!body_block", 6
    unless_null $P105, vivify_469
    new $P105, "Undef"
  vivify_469:
    set $P106, param_1425
    unless_null $P106, vivify_470
    new $P106, "Undef"
  vivify_470:
    $P105($P106)
.annotate 'line', 502
    find_lex $P102, "NQPConcreteRoleHOW"
    set $P103, param_1423
    nqp_decontainerize $P104, $P103
    nqp_get_sc_object $P105, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 5
    repr_get_attr_obj $P106, $P104, $P105, "$!name", 0
    unless_null $P106, vivify_471
    new $P106, "Undef"
  vivify_471:
    set $P107, param_1424
    unless_null $P107, vivify_472
    new $P107, "Undef"
  vivify_472:
    $P108 = $P102."new_type"($P106 :named("name"), $P107 :named("instance_of"))
    set $P1426, $P108
.annotate 'line', 506
    set $P103, param_1423
    nqp_decontainerize $P104, $P103
    nqp_get_sc_object $P105, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 5
    repr_get_attr_obj $P1427, $P104, $P105, "%!attributes", 1
    unless_null $P1427, vivify_473
    $P1427 = root_new ['parrot';'Hash']
  vivify_473:
    defined $I100, $P1427
    unless $I100, for_undef_474
    iter $P102, $P1427
    new $P107, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P107, loop1431_handler
    push_eh $P107
  loop1431_test:
    unless $P102, loop1431_done
    shift $P106, $P102
  loop1431_redo:
    .const 'Sub' $P1429 = "145_1337966777.064" 
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
  for_undef_474:
.annotate 'line', 511
    set $P103, param_1423
    nqp_decontainerize $P104, $P103
    nqp_get_sc_object $P105, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 5
    repr_get_attr_obj $P1432, $P104, $P105, "%!methods", 2
    unless_null $P1432, vivify_478
    $P1432 = root_new ['parrot';'Hash']
  vivify_478:
    defined $I100, $P1432
    unless $I100, for_undef_479
    iter $P102, $P1432
    new $P107, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P107, loop1436_handler
    push_eh $P107
  loop1436_test:
    unless $P102, loop1436_done
    shift $P106, $P102
  loop1436_redo:
    .const 'Sub' $P1434 = "146_1337966777.064" 
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
  for_undef_479:
.annotate 'line', 514
    set $P103, param_1423
    nqp_decontainerize $P104, $P103
    nqp_get_sc_object $P105, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 5
    repr_get_attr_obj $P1437, $P104, $P105, "@!multi_methods_to_incorporate", 3
    unless_null $P1437, vivify_484
    $P1437 = root_new ['parrot';'ResizablePMCArray']
  vivify_484:
    defined $I100, $P1437
    unless $I100, for_undef_485
    iter $P102, $P1437
    new $P107, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P107, loop1443_handler
    push_eh $P107
  loop1443_test:
    unless $P102, loop1443_done
    shift $P106, $P102
  loop1443_redo:
    .const 'Sub' $P1439 = "147_1337966777.064" 
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
  for_undef_485:
.annotate 'line', 519
    set $P103, param_1423
    nqp_decontainerize $P104, $P103
    nqp_get_sc_object $P105, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 5
    repr_get_attr_obj $P1444, $P104, $P105, "@!roles", 4
    unless_null $P1444, vivify_492
    $P1444 = root_new ['parrot';'ResizablePMCArray']
  vivify_492:
    defined $I100, $P1444
    unless $I100, for_undef_493
    iter $P102, $P1444
    new $P108, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P108, loop1449_handler
    push_eh $P108
  loop1449_test:
    unless $P102, loop1449_done
    shift $P106, $P102
  loop1449_redo:
    .const 'Sub' $P1446 = "148_1337966777.064" 
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
  for_undef_493:
.annotate 'line', 525
    set $P102, $P1426
    unless_null $P102, vivify_500
    new $P102, "Undef"
  vivify_500:
    get_how $P103, $P102
    set $P104, $P1426
    unless_null $P104, vivify_501
    new $P104, "Undef"
  vivify_501:
    $P103."compose"($P104)
.annotate 'line', 526
    new $P102, "Exception"
    set $P102['type'], .CONTROL_RETURN
    set $P103, $P1426
    unless_null $P103, vivify_502
    new $P103, "Undef"
  vivify_502:
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
.sub "_block1428"  :anon :subid("145_1337966777.064") :outer("53_1337966777.064")
    .param pmc param_1430
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 506
    .lex "$_", param_1430
.annotate 'line', 507
    find_lex $P107, "$irole"
    unless_null $P107, vivify_475
    new $P107, "Undef"
  vivify_475:
    get_how $P108, $P107
    find_lex $P109, "$irole"
    unless_null $P109, vivify_476
    new $P109, "Undef"
  vivify_476:
    find_lex $P110, "$_"
    unless_null $P110, vivify_477
    new $P110, "Undef"
  vivify_477:
    $P111 = $P110."value"()
    $P112 = $P108."add_attribute"($P109, $P111)
.annotate 'line', 506
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1433"  :anon :subid("146_1337966777.064") :outer("53_1337966777.064")
    .param pmc param_1435
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 511
    .lex "$_", param_1435
.annotate 'line', 512
    find_lex $P107, "$irole"
    unless_null $P107, vivify_480
    new $P107, "Undef"
  vivify_480:
    get_how $P108, $P107
    find_lex $P109, "$irole"
    unless_null $P109, vivify_481
    new $P109, "Undef"
  vivify_481:
    find_lex $P110, "$_"
    unless_null $P110, vivify_482
    new $P110, "Undef"
  vivify_482:
    $P111 = $P110."key"()
    find_lex $P112, "$_"
    unless_null $P112, vivify_483
    new $P112, "Undef"
  vivify_483:
    $P113 = $P112."value"()
    $P114 = $P113."clone"()
    $P115 = $P108."add_method"($P109, $P111, $P114)
.annotate 'line', 511
    .return ($P115)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1438"  :anon :subid("147_1337966777.064") :outer("53_1337966777.064")
    .param pmc param_1440
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 514
    .lex "$_", param_1440
.annotate 'line', 515
    find_lex $P107, "$irole"
    unless_null $P107, vivify_486
    new $P107, "Undef"
  vivify_486:
    get_how $P108, $P107
    find_lex $P109, "$irole"
    unless_null $P109, vivify_487
    new $P109, "Undef"
  vivify_487:
    find_lex $P1441, "$_"
    unless_null $P1441, vivify_488
    $P1441 = root_new ['parrot';'Hash']
  vivify_488:
    set $P110, $P1441["name"]
    unless_null $P110, vivify_489
    new $P110, "Undef"
  vivify_489:
    find_lex $P1442, "$_"
    unless_null $P1442, vivify_490
    $P1442 = root_new ['parrot';'Hash']
  vivify_490:
    set $P111, $P1442["code"]
    unless_null $P111, vivify_491
    new $P111, "Undef"
  vivify_491:
    $P112 = "reify_method"($P111)
    $P113 = $P108."add_multi_method"($P109, $P110, $P112)
.annotate 'line', 514
    .return ($P113)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1445"  :anon :subid("148_1337966777.064") :outer("53_1337966777.064")
    .param pmc param_1448
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 520
    new $P107, "Undef"
    set $P1447, $P107
    .lex "$specialized", $P1447
    .lex "$_", param_1448
    find_lex $P108, "$irole"
    unless_null $P108, vivify_494
    new $P108, "Undef"
  vivify_494:
    get_how $P109, $P108
    find_lex $P110, "$irole"
    unless_null $P110, vivify_495
    new $P110, "Undef"
  vivify_495:
    find_lex $P111, "$class_arg"
    unless_null $P111, vivify_496
    new $P111, "Undef"
  vivify_496:
    $P112 = $P109."specialize"($P110, $P111)
    set $P1447, $P112
.annotate 'line', 521
    find_lex $P108, "$irole"
    unless_null $P108, vivify_497
    new $P108, "Undef"
  vivify_497:
    get_how $P109, $P108
    find_lex $P110, "$irole"
    unless_null $P110, vivify_498
    new $P110, "Undef"
  vivify_498:
    set $P111, $P1447
    unless_null $P111, vivify_499
    new $P111, "Undef"
  vivify_499:
    $P112 = $P109."add_role"($P110, $P111)
.annotate 'line', 519
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "methods" :anon :subid("54_1337966777.064") :outer("144_1337966777.064")
    .param pmc param_1451
    .param pmc param_1452
    .param pmc param_1453 :optional :named("local")
    .param int has_param_1453 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 533
    .const 'Sub' $P1459 = "149_1337966777.064" 
    capture_lex $P1459
    .lex "self", param_1451
    .lex "$obj", param_1452
    if has_param_1453, optparam_503
    new $P101, "Undef"
    set param_1453, $P101
  optparam_503:
    .lex "$local", param_1453
.annotate 'line', 534
    $P1455 = root_new ['parrot';'ResizablePMCArray']
    set $P1454, $P1455
    .lex "@meths", $P1454
.annotate 'line', 533
    set $P1456, $P1454
    unless_null $P1456, vivify_504
    $P1456 = root_new ['parrot';'ResizablePMCArray']
  vivify_504:
.annotate 'line', 535
    set $P103, param_1451
    nqp_decontainerize $P104, $P103
    nqp_get_sc_object $P105, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 5
    repr_get_attr_obj $P1457, $P104, $P105, "%!methods", 2
    unless_null $P1457, vivify_505
    $P1457 = root_new ['parrot';'Hash']
  vivify_505:
    defined $I100, $P1457
    unless $I100, for_undef_506
    iter $P102, $P1457
    new $P107, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P107, loop1462_handler
    push_eh $P107
  loop1462_test:
    unless $P102, loop1462_done
    shift $P106, $P102
  loop1462_redo:
    .const 'Sub' $P1459 = "149_1337966777.064" 
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
  for_undef_506:
.annotate 'line', 533
    set $P1463, $P1454
    unless_null $P1463, vivify_509
    $P1463 = root_new ['parrot';'ResizablePMCArray']
  vivify_509:
    .return ($P1463)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1458"  :anon :subid("149_1337966777.064") :outer("54_1337966777.064")
    .param pmc param_1460
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 535
    .lex "$_", param_1460
.annotate 'line', 536
    find_lex $P1461, "@meths"
    unless_null $P1461, vivify_507
    $P1461 = root_new ['parrot';'ResizablePMCArray']
  vivify_507:
    find_lex $P107, "$_"
    unless_null $P107, vivify_508
    new $P107, "Undef"
  vivify_508:
    $P108 = $P107."value"()
    $P109 = $P1461."push"($P108)
.annotate 'line', 535
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "method_table" :anon :subid("55_1337966777.064") :outer("144_1337966777.064")
    .param pmc param_1465
    .param pmc param_1466
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 541
    .lex "self", param_1465
    .lex "$obj", param_1466
    set $P101, param_1465
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 5
    repr_get_attr_obj $P1467, $P102, $P103, "%!methods", 2
    unless_null $P1467, vivify_510
    $P1467 = root_new ['parrot';'Hash']
  vivify_510:
    .return ($P1467)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "name" :anon :subid("56_1337966777.064") :outer("144_1337966777.064")
    .param pmc param_1469
    .param pmc param_1470
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 545
    .lex "self", param_1469
    .lex "$obj", param_1470
    set $P101, param_1469
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 5
    repr_get_attr_obj $P104, $P102, $P103, "$!name", 0
    unless_null $P104, vivify_511
    new $P104, "Undef"
  vivify_511:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "attributes" :anon :subid("57_1337966777.064") :outer("144_1337966777.064")
    .param pmc param_1472
    .param pmc param_1473
    .param pmc param_1474 :optional :named("local")
    .param int has_param_1474 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 549
    .const 'Sub' $P1480 = "150_1337966777.064" 
    capture_lex $P1480
    .lex "self", param_1472
    .lex "$obj", param_1473
    if has_param_1474, optparam_512
    new $P101, "Undef"
    set param_1474, $P101
  optparam_512:
    .lex "$local", param_1474
.annotate 'line', 550
    $P1476 = root_new ['parrot';'ResizablePMCArray']
    set $P1475, $P1476
    .lex "@attrs", $P1475
.annotate 'line', 549
    set $P1477, $P1475
    unless_null $P1477, vivify_513
    $P1477 = root_new ['parrot';'ResizablePMCArray']
  vivify_513:
.annotate 'line', 551
    set $P103, param_1472
    nqp_decontainerize $P104, $P103
    nqp_get_sc_object $P105, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 5
    repr_get_attr_obj $P1478, $P104, $P105, "%!attributes", 1
    unless_null $P1478, vivify_514
    $P1478 = root_new ['parrot';'Hash']
  vivify_514:
    defined $I100, $P1478
    unless $I100, for_undef_515
    iter $P102, $P1478
    new $P107, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P107, loop1483_handler
    push_eh $P107
  loop1483_test:
    unless $P102, loop1483_done
    shift $P106, $P102
  loop1483_redo:
    .const 'Sub' $P1480 = "150_1337966777.064" 
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
  for_undef_515:
.annotate 'line', 549
    set $P1484, $P1475
    unless_null $P1484, vivify_518
    $P1484 = root_new ['parrot';'ResizablePMCArray']
  vivify_518:
    .return ($P1484)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1479"  :anon :subid("150_1337966777.064") :outer("57_1337966777.064")
    .param pmc param_1481
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 551
    .lex "$_", param_1481
.annotate 'line', 552
    find_lex $P1482, "@attrs"
    unless_null $P1482, vivify_516
    $P1482 = root_new ['parrot';'ResizablePMCArray']
  vivify_516:
    find_lex $P107, "$_"
    unless_null $P107, vivify_517
    new $P107, "Undef"
  vivify_517:
    $P108 = $P107."value"()
    $P109 = $P1482."push"($P108)
.annotate 'line', 551
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "roles" :anon :subid("58_1337966777.064") :outer("144_1337966777.064")
    .param pmc param_1486
    .param pmc param_1487
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 557
    .lex "self", param_1486
    .lex "$obj", param_1487
    set $P101, param_1486
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 5
    repr_get_attr_obj $P1488, $P102, $P103, "@!roles", 4
    unless_null $P1488, vivify_519
    $P1488 = root_new ['parrot';'ResizablePMCArray']
  vivify_519:
    .return ($P1488)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1490"  :subid("151_1337966777.064") :outer("121_1337966777.064")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 567
    .const 'Sub' $P2022 = "93_1337966777.064" 
    capture_lex $P2022
    .const 'Sub' $P2019 = "92_1337966777.064" 
    capture_lex $P2019
    .const 'Sub' $P2004 = "91_1337966777.064" 
    capture_lex $P2004
    .const 'Sub' $P1975 = "90_1337966777.064" 
    capture_lex $P1975
    .const 'Sub' $P1959 = "89_1337966777.064" 
    capture_lex $P1959
    .const 'Sub' $P1948 = "88_1337966777.064" 
    capture_lex $P1948
    .const 'Sub' $P1936 = "87_1337966777.064" 
    capture_lex $P1936
    .const 'Sub' $P1931 = "86_1337966777.064" 
    capture_lex $P1931
    .const 'Sub' $P1926 = "85_1337966777.064" 
    capture_lex $P1926
    .const 'Sub' $P1912 = "84_1337966777.064" 
    capture_lex $P1912
    .const 'Sub' $P1909 = "83_1337966777.064" 
    capture_lex $P1909
    .const 'Sub' $P1905 = "82_1337966777.064" 
    capture_lex $P1905
    .const 'Sub' $P1880 = "81_1337966777.064" 
    capture_lex $P1880
    .const 'Sub' $P1875 = "80_1337966777.064" 
    capture_lex $P1875
    .const 'Sub' $P1871 = "79_1337966777.064" 
    capture_lex $P1871
    .const 'Sub' $P1864 = "78_1337966777.064" 
    capture_lex $P1864
    .const 'Sub' $P1841 = "77_1337966777.064" 
    capture_lex $P1841
    .const 'Sub' $P1818 = "76_1337966777.064" 
    capture_lex $P1818
    .const 'Sub' $P1813 = "75_1337966777.064" 
    capture_lex $P1813
    .const 'Sub' $P1792 = "74_1337966777.064" 
    capture_lex $P1792
    .const 'Sub' $P1773 = "73_1337966777.064" 
    capture_lex $P1773
    .const 'Sub' $P1717 = "72_1337966777.064" 
    capture_lex $P1717
    .const 'Sub' $P1687 = "71_1337966777.064" 
    capture_lex $P1687
    .const 'Sub' $P1679 = "70_1337966777.064" 
    capture_lex $P1679
    .const 'Sub' $P1671 = "69_1337966777.064" 
    capture_lex $P1671
    .const 'Sub' $P1659 = "68_1337966777.064" 
    capture_lex $P1659
    .const 'Sub' $P1655 = "67_1337966777.064" 
    capture_lex $P1655
    .const 'Sub' $P1641 = "66_1337966777.064" 
    capture_lex $P1641
    .const 'Sub' $P1633 = "65_1337966777.064" 
    capture_lex $P1633
    .const 'Sub' $P1620 = "64_1337966777.064" 
    capture_lex $P1620
    .const 'Sub' $P1608 = "63_1337966777.064" 
    capture_lex $P1608
    .const 'Sub' $P1602 = "62_1337966777.064" 
    capture_lex $P1602
    .const 'Sub' $P1599 = "61_1337966777.064" 
    capture_lex $P1599
    .const 'Sub' $P1595 = "60_1337966777.064" 
    capture_lex $P1595
    .const 'Sub' $P1593 = "59_1337966777.064" 
    capture_lex $P1593
    .const 'Sub' $P1528 = "155_1337966777.064" 
    capture_lex $P1528
    .const 'Sub' $P1496 = "152_1337966777.064" 
    capture_lex $P1496
.annotate 'line', 601
    $P1493 = root_new ['parrot';'Hash']
    set $P1492, $P1493
    .lex "%caches", $P1492
.annotate 'line', 611
    new $P100, "Undef"
    set $P1494, $P100
    .lex "$archetypes", $P1494
.annotate 'line', 834
    .const 'Sub' $P1496 = "152_1337966777.064" 
    newclosure $P1526, $P1496
    set $P1495, $P1526
    .lex "compute_c3_mro", $P1495
.annotate 'line', 860
    .const 'Sub' $P1528 = "155_1337966777.064" 
    newclosure $P1589, $P1528
    set $P1527, $P1589
    .lex "c3_merge", $P1527
.annotate 'line', 611
    .lex "$?PACKAGE", $P1590
    .lex "$?CLASS", $P1591
.annotate 'line', 567
    set $P1592, $P1492
    unless_null $P1592, vivify_582
    $P1592 = root_new ['parrot';'Hash']
  vivify_582:
.annotate 'line', 611
    find_lex $P107, "Archetypes"
    $P108 = $P107."new"(1 :named("nominal"), 1 :named("inheritable"))
    set $P1494, $P108
.annotate 'line', 567
    set $P107, $P1495
    set $P107, $P1527
.annotate 'line', 1122
    .const 'Sub' $P2022 = "93_1337966777.064" 
    newclosure $P2025, $P2022
.annotate 'line', 567
    .return ($P2025)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "compute_c3_mro"  :subid("152_1337966777.064") :outer("151_1337966777.064")
    .param pmc param_1499
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 834
    .const 'Sub' $P1511 = "153_1337966777.064" 
    capture_lex $P1511
    new $P1498, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P1498, control_1497
    push_eh $P1498
    .lex "$class", param_1499
.annotate 'line', 835
    $P1501 = root_new ['parrot';'ResizablePMCArray']
    set $P1500, $P1501
    .lex "@immediate_parents", $P1500
.annotate 'line', 838
    $P1503 = root_new ['parrot';'ResizablePMCArray']
    set $P1502, $P1503
    .lex "@result", $P1502
.annotate 'line', 835
    set $P101, param_1499
    unless_null $P101, vivify_520
    new $P101, "Undef"
  vivify_520:
    get_how $P102, $P101
    set $P103, param_1499
    unless_null $P103, vivify_521
    new $P103, "Undef"
  vivify_521:
    $P104 = $P102."parents"($P103, 1 :named("local"))
    set $P1500, $P104
.annotate 'line', 834
    set $P1504, $P1502
    unless_null $P1504, vivify_522
    $P1504 = root_new ['parrot';'ResizablePMCArray']
  vivify_522:
.annotate 'line', 839
    set $P1506, $P1500
    unless_null $P1506, vivify_523
    $P1506 = root_new ['parrot';'ResizablePMCArray']
  vivify_523:
    set $N100, $P1506
    unless $N100, if_1505_end
.annotate 'line', 840
    set $P1508, $P1500
    unless_null $P1508, vivify_524
    $P1508 = root_new ['parrot';'ResizablePMCArray']
  vivify_524:
    set $N101, $P1508
    set $N102, 1
    iseq $I100, $N101, $N102
    if $I100, if_1507
.annotate 'line', 842
    .const 'Sub' $P1511 = "153_1337966777.064" 
    capture_lex $P1511
    $P1511()
    goto if_1507_end
  if_1507:
.annotate 'line', 841
    set $P1509, $P1500
    unless_null $P1509, vivify_533
    $P1509 = root_new ['parrot';'ResizablePMCArray']
  vivify_533:
    set $P101, $P1509[0]
    unless_null $P101, vivify_534
    new $P101, "Undef"
  vivify_534:
    $P102 = "compute_c3_mro"($P101)
    set $P1502, $P102
  if_1507_end:
  if_1505_end:
.annotate 'line', 855
    set $P1524, $P1502
    unless_null $P1524, vivify_535
    $P1524 = root_new ['parrot';'ResizablePMCArray']
  vivify_535:
    set $P101, param_1499
    unless_null $P101, vivify_536
    new $P101, "Undef"
  vivify_536:
    $P1524."unshift"($P101)
.annotate 'line', 856
    new $P101, "Exception"
    set $P101['type'], .CONTROL_RETURN
    set $P1525, $P1502
    unless_null $P1525, vivify_537
    $P1525 = root_new ['parrot';'ResizablePMCArray']
  vivify_537:
    setattribute $P101, 'payload', $P1525
    throw $P101
.annotate 'line', 834
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
.sub "_block1510"  :anon :subid("153_1337966777.064") :outer("152_1337966777.064")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 842
    .const 'Sub' $P1517 = "154_1337966777.064" 
    capture_lex $P1517
.annotate 'line', 845
    $P1513 = root_new ['parrot';'ResizablePMCArray']
    set $P1512, $P1513
    .lex "@merge_list", $P1512
.annotate 'line', 842
    set $P1514, $P1512
    unless_null $P1514, vivify_525
    $P1514 = root_new ['parrot';'ResizablePMCArray']
  vivify_525:
.annotate 'line', 846
    find_lex $P1515, "@immediate_parents"
    unless_null $P1515, vivify_526
    $P1515 = root_new ['parrot';'ResizablePMCArray']
  vivify_526:
    defined $I101, $P1515
    unless $I101, for_undef_527
    iter $P101, $P1515
    new $P103, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P103, loop1520_handler
    push_eh $P103
  loop1520_test:
    unless $P101, loop1520_done
    shift $P102, $P101
  loop1520_redo:
    .const 'Sub' $P1517 = "154_1337966777.064" 
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
  for_undef_527:
.annotate 'line', 849
    set $P1521, $P1512
    unless_null $P1521, vivify_530
    $P1521 = root_new ['parrot';'ResizablePMCArray']
  vivify_530:
    find_lex $P1522, "@immediate_parents"
    unless_null $P1522, vivify_531
    $P1522 = root_new ['parrot';'ResizablePMCArray']
  vivify_531:
    $P1521."push"($P1522)
.annotate 'line', 850
    set $P1523, $P1512
    unless_null $P1523, vivify_532
    $P1523 = root_new ['parrot';'ResizablePMCArray']
  vivify_532:
    $P101 = "c3_merge"($P1523)
    store_lex "@result", $P101
.annotate 'line', 842
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1516"  :anon :subid("154_1337966777.064") :outer("153_1337966777.064")
    .param pmc param_1518
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 846
    .lex "$_", param_1518
.annotate 'line', 847
    find_lex $P1519, "@merge_list"
    unless_null $P1519, vivify_528
    $P1519 = root_new ['parrot';'ResizablePMCArray']
  vivify_528:
    find_lex $P103, "$_"
    unless_null $P103, vivify_529
    new $P103, "Undef"
  vivify_529:
    $P104 = "compute_c3_mro"($P103)
    $P105 = $P1519."push"($P104)
.annotate 'line', 846
    .return ($P105)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "c3_merge"  :subid("155_1337966777.064") :outer("151_1337966777.064")
    .param pmc param_1531
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 860
    .const 'Sub' $P1572 = "160_1337966777.064" 
    capture_lex $P1572
    .const 'Sub' $P1541 = "156_1337966777.064" 
    capture_lex $P1541
    new $P1530, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P1530, control_1529
    push_eh $P1530
    .lex "@merge_list", param_1531
.annotate 'line', 861
    $P1533 = root_new ['parrot';'ResizablePMCArray']
    set $P1532, $P1533
    .lex "@result", $P1532
.annotate 'line', 862
    new $P102, "Undef"
    set $P1534, $P102
    .lex "$accepted", $P1534
.annotate 'line', 863
    new $P103, "Undef"
    set $P1535, $P103
    .lex "$something_accepted", $P1535
.annotate 'line', 864
    new $P104, "Undef"
    set $P1536, $P104
    .lex "$cand_count", $P1536
.annotate 'line', 907
    new $P105, "Undef"
    set $P1537, $P105
    .lex "$i", $P1537
.annotate 'line', 860
    set $P1538, $P1532
    unless_null $P1538, vivify_538
    $P1538 = root_new ['parrot';'ResizablePMCArray']
  vivify_538:
    set $P106, $P1534
    unless_null $P106, vivify_539
    new $P106, "Undef"
  vivify_539:
.annotate 'line', 863
    new $P106, "Float"
    assign $P106, 0
    set $P1535, $P106
.annotate 'line', 864
    new $P106, "Float"
    assign $P106, 0
    set $P1536, $P106
.annotate 'line', 867
    set $P1539, param_1531
    unless_null $P1539, vivify_540
    $P1539 = root_new ['parrot';'ResizablePMCArray']
  vivify_540:
    defined $I100, $P1539
    unless $I100, for_undef_541
    iter $P106, $P1539
    new $P109, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P109, loop1566_handler
    push_eh $P109
  loop1566_test:
    unless $P106, loop1566_done
    shift $P107, $P106
  loop1566_redo:
    .const 'Sub' $P1541 = "156_1337966777.064" 
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
  for_undef_541:
.annotate 'line', 897
    set $P106, $P1536
    unless_null $P106, vivify_560
    new $P106, "Undef"
  vivify_560:
    set $N100, $P106
    set $N101, 0
    iseq $I100, $N100, $N101
    unless $I100, if_1567_end
.annotate 'line', 898
    new $P107, "Exception"
    set $P107['type'], .CONTROL_RETURN
    set $P1568, $P1532
    unless_null $P1568, vivify_561
    $P1568 = root_new ['parrot';'ResizablePMCArray']
  vivify_561:
    setattribute $P107, 'payload', $P1568
    throw $P107
  if_1567_end:
.annotate 'line', 902
    set $P106, $P1535
    unless_null $P106, vivify_562
    new $P106, "Undef"
  vivify_562:
    if $P106, unless_1569_end
.annotate 'line', 903
    die "Could not build C3 linearization: ambiguous hierarchy"
  unless_1569_end:
.annotate 'line', 907
    new $P106, "Float"
    assign $P106, 0
    set $P1537, $P106
.annotate 'line', 908
    new $P107, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P107, loop1585_handler
    push_eh $P107
  loop1585_test:
    set $P106, $P1537
    unless_null $P106, vivify_563
    new $P106, "Undef"
  vivify_563:
    set $N100, $P106
    set $P1570, param_1531
    unless_null $P1570, vivify_564
    $P1570 = root_new ['parrot';'ResizablePMCArray']
  vivify_564:
    set $N101, $P1570
    islt $I100, $N100, $N101
    unless $I100, loop1585_done
  loop1585_redo:
    .const 'Sub' $P1572 = "160_1337966777.064" 
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
.annotate 'line', 921
    set $P1586, param_1531
    unless_null $P1586, vivify_578
    $P1586 = root_new ['parrot';'ResizablePMCArray']
  vivify_578:
    $P106 = "c3_merge"($P1586)
    set $P1532, $P106
.annotate 'line', 922
    set $P1587, $P1532
    unless_null $P1587, vivify_579
    $P1587 = root_new ['parrot';'ResizablePMCArray']
  vivify_579:
    set $P106, $P1534
    unless_null $P106, vivify_580
    new $P106, "Undef"
  vivify_580:
    $P1587."unshift"($P106)
.annotate 'line', 923
    new $P106, "Exception"
    set $P106['type'], .CONTROL_RETURN
    set $P1588, $P1532
    unless_null $P1588, vivify_581
    $P1588 = root_new ['parrot';'ResizablePMCArray']
  vivify_581:
    setattribute $P106, 'payload', $P1588
    throw $P106
.annotate 'line', 860
    .return ()
  control_1529:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P106, exception, "payload"
    .return ($P106)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1540"  :anon :subid("156_1337966777.064") :outer("155_1337966777.064")
    .param pmc param_1544
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 867
    .const 'Sub' $P1548 = "157_1337966777.064" 
    capture_lex $P1548
.annotate 'line', 868
    $P1543 = root_new ['parrot';'ResizablePMCArray']
    set $P1542, $P1543
    .lex "@cand_list", $P1542
    .lex "$_", param_1544
    find_lex $P108, "$_"
    unless_null $P108, vivify_542
    new $P108, "Undef"
  vivify_542:
    set $P1542, $P108
.annotate 'line', 869
    set $P1546, $P1542
    unless_null $P1546, vivify_543
    $P1546 = root_new ['parrot';'ResizablePMCArray']
  vivify_543:
    set $N100, $P1546
    if $N100, if_1545
    new $P108, 'Float'
    set $P108, $N100
    goto if_1545_end
  if_1545:
    .const 'Sub' $P1548 = "157_1337966777.064" 
    capture_lex $P1548
    $P112 = $P1548()
    set $P108, $P112
  if_1545_end:
.annotate 'line', 867
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1547"  :anon :subid("157_1337966777.064") :outer("156_1337966777.064")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 869
    .const 'Sub' $P1554 = "158_1337966777.064" 
    capture_lex $P1554
.annotate 'line', 870
    new $P109, "Undef"
    set $P1549, $P109
    .lex "$rejected", $P1549
.annotate 'line', 871
    new $P110, "Undef"
    set $P1550, $P110
    .lex "$cand_class", $P1550
.annotate 'line', 870
    new $P111, "Float"
    assign $P111, 0
    set $P1549, $P111
.annotate 'line', 871
    find_lex $P1551, "@cand_list"
    unless_null $P1551, vivify_544
    $P1551 = root_new ['parrot';'ResizablePMCArray']
  vivify_544:
    set $P111, $P1551[0]
    unless_null $P111, vivify_545
    new $P111, "Undef"
  vivify_545:
    set $P1550, $P111
.annotate 'line', 872
    find_lex $P111, "$cand_count"
    unless_null $P111, vivify_546
    new $P111, "Undef"
  vivify_546:
    add $P112, $P111, 1
    store_lex "$cand_count", $P112
.annotate 'line', 873
    find_lex $P1552, "@merge_list"
    unless_null $P1552, vivify_547
    $P1552 = root_new ['parrot';'ResizablePMCArray']
  vivify_547:
    defined $I101, $P1552
    unless $I101, for_undef_548
    iter $P111, $P1552
    new $P114, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P114, loop1564_handler
    push_eh $P114
  loop1564_test:
    unless $P111, loop1564_done
    shift $P112, $P111
  loop1564_redo:
    .const 'Sub' $P1554 = "158_1337966777.064" 
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
  for_undef_548:
.annotate 'line', 888
    set $P112, $P1549
    unless_null $P112, vivify_558
    new $P112, "Undef"
  vivify_558:
    unless $P112, unless_1565
    set $P111, $P112
    goto unless_1565_end
  unless_1565:
.annotate 'line', 889
    set $P113, $P1550
    unless_null $P113, vivify_559
    new $P113, "Undef"
  vivify_559:
    store_lex "$accepted", $P113
.annotate 'line', 890
    new $P113, "Float"
    assign $P113, 1
    store_lex "$something_accepted", $P113
.annotate 'line', 891
    die 0, .CONTROL_LOOP_LAST
  unless_1565_end:
.annotate 'line', 869
    .return ($P111)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1553"  :anon :subid("158_1337966777.064") :outer("157_1337966777.064")
    .param pmc param_1555
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 873
    .const 'Sub' $P1559 = "159_1337966777.064" 
    capture_lex $P1559
    .lex "$_", param_1555
.annotate 'line', 875
    find_lex $P114, "$_"
    unless_null $P114, vivify_549
    new $P114, "Undef"
  vivify_549:
    find_lex $P1557, "@cand_list"
    unless_null $P1557, vivify_550
    $P1557 = root_new ['parrot';'ResizablePMCArray']
  vivify_550:
    issame $I102, $P114, $P1557
    unless $I102, unless_1556
    new $P113, 'Integer'
    set $P113, $I102
    goto unless_1556_end
  unless_1556:
    .const 'Sub' $P1559 = "159_1337966777.064" 
    capture_lex $P1559
    $P116 = $P1559()
    set $P113, $P116
  unless_1556_end:
.annotate 'line', 873
    .return ($P113)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1558"  :anon :subid("159_1337966777.064") :outer("158_1337966777.064")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 877
    new $P115, "Undef"
    set $P1560, $P115
    .lex "$cur_pos", $P1560
    new $P116, "Float"
    assign $P116, 1
    set $P1560, $P116
.annotate 'line', 878
    new $P118, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P118, loop1563_handler
    push_eh $P118
  loop1563_test:
    set $P116, $P1560
    unless_null $P116, vivify_551
    new $P116, "Undef"
  vivify_551:
    set $N101, $P116
    find_lex $P117, "$_"
    unless_null $P117, vivify_552
    new $P117, "Undef"
  vivify_552:
    set $N102, $P117
    isle $I103, $N101, $N102
    unless $I103, loop1563_done
  loop1563_redo:
.annotate 'line', 879
    set $P118, $P1560
    unless_null $P118, vivify_553
    new $P118, "Undef"
  vivify_553:
    set $I104, $P118
    find_lex $P1562, "$_"
    unless_null $P1562, vivify_554
    $P1562 = root_new ['parrot';'ResizablePMCArray']
  vivify_554:
    set $P119, $P1562[$I104]
    unless_null $P119, vivify_555
    new $P119, "Undef"
  vivify_555:
    find_lex $P120, "$cand_class"
    unless_null $P120, vivify_556
    new $P120, "Undef"
  vivify_556:
    issame $I105, $P119, $P120
    unless $I105, if_1561_end
.annotate 'line', 880
    new $P121, "Float"
    assign $P121, 1
    store_lex "$rejected", $P121
  if_1561_end:
.annotate 'line', 882
    set $P118, $P1560
    unless_null $P118, vivify_557
    new $P118, "Undef"
  vivify_557:
    add $P119, $P118, 1
    set $P1560, $P119
  loop1563_next:
.annotate 'line', 878
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
.annotate 'line', 875
    .return ($I103)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1571"  :anon :subid("160_1337966777.064") :outer("155_1337966777.064")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 908
    .const 'Sub' $P1578 = "161_1337966777.064" 
    capture_lex $P1578
.annotate 'line', 909
    $P1574 = root_new ['parrot';'ResizablePMCArray']
    set $P1573, $P1574
    .lex "@new_list", $P1573
.annotate 'line', 908
    set $P1575, $P1573
    unless_null $P1575, vivify_565
    $P1575 = root_new ['parrot';'ResizablePMCArray']
  vivify_565:
.annotate 'line', 910
    find_lex $P108, "$i"
    unless_null $P108, vivify_566
    new $P108, "Undef"
  vivify_566:
    set $I101, $P108
    find_lex $P1576, "@merge_list"
    unless_null $P1576, vivify_567
    $P1576 = root_new ['parrot';'ResizablePMCArray']
  vivify_567:
    set $P109, $P1576[$I101]
    unless_null $P109, vivify_568
    new $P109, "Undef"
  vivify_568:
    defined $I102, $P109
    unless $I102, for_undef_569
    iter $P107, $P109
    new $P112, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P112, loop1582_handler
    push_eh $P112
  loop1582_test:
    unless $P107, loop1582_done
    shift $P110, $P107
  loop1582_redo:
    .const 'Sub' $P1578 = "161_1337966777.064" 
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
  for_undef_569:
.annotate 'line', 915
    set $P1583, $P1573
    unless_null $P1583, vivify_574
    $P1583 = root_new ['parrot';'ResizablePMCArray']
  vivify_574:
    find_lex $P107, "$i"
    unless_null $P107, vivify_575
    new $P107, "Undef"
  vivify_575:
    set $I101, $P107
    find_lex $P1584, "@merge_list"
    unless_null $P1584, vivify_576
    $P1584 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@merge_list", $P1584
  vivify_576:
    set $P1584[$I101], $P1583
.annotate 'line', 916
    find_lex $P107, "$i"
    unless_null $P107, vivify_577
    new $P107, "Undef"
  vivify_577:
    add $P108, $P107, 1
    store_lex "$i", $P108
.annotate 'line', 908
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1577"  :anon :subid("161_1337966777.064") :outer("160_1337966777.064")
    .param pmc param_1579
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 910
    .lex "$_", param_1579
.annotate 'line', 911
    find_lex $P112, "$_"
    unless_null $P112, vivify_570
    new $P112, "Undef"
  vivify_570:
    find_lex $P113, "$accepted"
    unless_null $P113, vivify_571
    new $P113, "Undef"
  vivify_571:
    issame $I103, $P112, $P113
    unless $I103, unless_1580
    new $P111, 'Integer'
    set $P111, $I103
    goto unless_1580_end
  unless_1580:
.annotate 'line', 912
    find_lex $P1581, "@new_list"
    unless_null $P1581, vivify_572
    $P1581 = root_new ['parrot';'ResizablePMCArray']
  vivify_572:
    find_lex $P114, "$_"
    unless_null $P114, vivify_573
    new $P114, "Undef"
  vivify_573:
    $P115 = $P1581."push"($P114)
.annotate 'line', 911
    set $P111, $P115
  unless_1580_end:
.annotate 'line', 910
    .return ($P111)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "archetypes" :anon :subid("59_1337966777.064") :outer("151_1337966777.064")
    .param pmc param_1594
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 612
    .lex "self", param_1594
    find_lex $P107, "$archetypes"
    unless_null $P107, vivify_583
    new $P107, "Undef"
  vivify_583:
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "new" :anon :subid("60_1337966777.064") :outer("151_1337966777.064")
    .param pmc param_1596
    .param pmc param_1597 :optional :named("name")
    .param int has_param_1597 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 621
    .lex "self", param_1596
    if has_param_1597, optparam_584
    new $P107, "Undef"
    set param_1597, $P107
  optparam_584:
    .lex "$name", param_1597
.annotate 'line', 622
    new $P108, "Undef"
    set $P1598, $P108
    .lex "$obj", $P1598
    set $P109, param_1596
    nqp_decontainerize $P110, $P109
    repr_instance_of $P111, $P110
    set $P1598, $P111
.annotate 'line', 623
    set $P109, $P1598
    unless_null $P109, vivify_585
    new $P109, "Undef"
  vivify_585:
    set $P110, param_1597
    unless_null $P110, vivify_586
    new $P110, "Undef"
  vivify_586:
    $P109."BUILD"($P110 :named("name"))
.annotate 'line', 621
    set $P109, $P1598
    unless_null $P109, vivify_587
    new $P109, "Undef"
  vivify_587:
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "BUILD" :anon :subid("61_1337966777.064") :outer("151_1337966777.064")
    .param pmc param_1600
    .param pmc param_1601 :optional :named("name")
    .param int has_param_1601 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 627
    .lex "self", param_1600
    if has_param_1601, optparam_588
    new $P107, "Undef"
    set param_1601, $P107
  optparam_588:
    .lex "$name", param_1601
.annotate 'line', 628
    set $P108, param_1601
    unless_null $P108, vivify_589
    new $P108, "Undef"
  vivify_589:
    set $P109, param_1600
    nqp_decontainerize $P110, $P109
    nqp_get_sc_object $P111, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_bind_attr_obj $P110, $P111, "$!name", 0, $P108
.annotate 'line', 627
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "new_type" :anon :subid("62_1337966777.064") :outer("151_1337966777.064")
    .param pmc param_1603
    .param pmc param_1604 :optional :named("name")
    .param int has_param_1604 :opt_flag
    .param pmc param_1605 :optional :named("repr")
    .param int has_param_1605 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 633
    .lex "self", param_1603
    if has_param_1604, optparam_590
    new $P107, "String"
    assign $P107, "<anon>"
    set param_1604, $P107
  optparam_590:
    .lex "$name", param_1604
    if has_param_1605, optparam_591
    new $P108, "String"
    assign $P108, "P6opaque"
    set param_1605, $P108
  optparam_591:
    .lex "$repr", param_1605
.annotate 'line', 634
    new $P109, "Undef"
    set $P1606, $P109
    .lex "$metaclass", $P1606
    set $P110, param_1603
    nqp_decontainerize $P111, $P110
    set $P112, param_1604
    unless_null $P112, vivify_592
    new $P112, "Undef"
  vivify_592:
    $P113 = $P111."new"($P112 :named("name"))
    set $P1606, $P113
.annotate 'line', 636
    set $P110, $P1606
    unless_null $P110, vivify_593
    new $P110, "Undef"
  vivify_593:
    set $P111, param_1605
    unless_null $P111, vivify_594
    new $P111, "Undef"
  vivify_594:
    set $S100, $P111
    repr_type_object_for $P112, $P110, $S100
    $P1607 = root_new ['parrot';'Hash']
    set_who $P112, $P1607
.annotate 'line', 633
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_method" :anon :subid("63_1337966777.064") :outer("151_1337966777.064")
    .param pmc param_1609
    .param pmc param_1610
    .param pmc param_1611
    .param pmc param_1612
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 640
    .lex "self", param_1609
    .lex "$obj", param_1610
    .lex "$name", param_1611
    .lex "$code_obj", param_1612
.annotate 'line', 641
    set $P107, param_1611
    unless_null $P107, vivify_595
    new $P107, "Undef"
  vivify_595:
    set $P108, param_1609
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P1614, $P109, $P110, "%!methods", 2
    unless_null $P1614, vivify_596
    $P1614 = root_new ['parrot';'Hash']
  vivify_596:
    set $P111, $P1614[$P107]
    unless_null $P111, vivify_597
    new $P111, "Undef"
  vivify_597:
    unless $P111, if_1613_end
.annotate 'line', 642
    new $P112, "String"
    assign $P112, "This class already has a method named "
    set $P113, param_1611
    unless_null $P113, vivify_598
    new $P113, "Undef"
  vivify_598:
    concat $P114, $P112, $P113
    die $P114
  if_1613_end:
.annotate 'line', 644
    set $P108, param_1612
    unless_null $P108, vivify_599
    new $P108, "Undef"
  vivify_599:
    isnull $I100, $P108
    unless $I100, unless_1616
    new $P107, 'Integer'
    set $P107, $I100
    goto unless_1616_end
  unless_1616:
    set $P109, param_1612
    unless_null $P109, vivify_600
    new $P109, "Undef"
  vivify_600:
    isa $I101, $P109, "Undef"
    new $P107, 'Integer'
    set $P107, $I101
  unless_1616_end:
    unless $P107, if_1615_end
.annotate 'line', 645
    new $P110, 'String'
    set $P110, "Cannot add a null method '"
    set $P111, param_1611
    unless_null $P111, vivify_601
    new $P111, "Undef"
  vivify_601:
    concat $P112, $P110, $P111
    concat $P113, $P112, "' to class '"
    set $P114, param_1609
    nqp_decontainerize $P115, $P114
    nqp_get_sc_object $P116, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P117, $P115, $P116, "$!name", 0
    unless_null $P117, vivify_602
    new $P117, "Undef"
  vivify_602:
    concat $P118, $P113, $P117
    concat $P119, $P118, "'"
    die $P119
  if_1615_end:
.annotate 'line', 647
    set $P107, param_1610
    unless_null $P107, vivify_603
    new $P107, "Undef"
  vivify_603:
    set_method_cache_authoritativeness $P107, 0
.annotate 'line', 648
    $P1617 = root_new ['parrot';'Hash']
    set $P107, param_1609
    nqp_decontainerize $P108, $P107
    get_id $I100, $P108
    find_lex $P1618, "%caches"
    unless_null $P1618, vivify_604
    $P1618 = root_new ['parrot';'Hash']
    store_lex "%caches", $P1618
  vivify_604:
    set $P1618[$I100], $P1617
.annotate 'line', 649
    set $P107, param_1612
    unless_null $P107, vivify_605
    new $P107, "Undef"
  vivify_605:
    set $P108, param_1611
    unless_null $P108, vivify_606
    new $P108, "Undef"
  vivify_606:
    set $P109, param_1609
    nqp_decontainerize $P110, $P109
    nqp_get_sc_object $P111, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P1619, $P110, $P111, "%!methods", 2
    unless_null $P1619, vivify_607
    $P1619 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P110, $P111, "%!methods", 2, $P1619
  vivify_607:
    set $P1619[$P108], $P107
.annotate 'line', 640
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_multi_method" :anon :subid("64_1337966777.064") :outer("151_1337966777.064")
    .param pmc param_1621
    .param pmc param_1622
    .param pmc param_1623
    .param pmc param_1624
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 652
    .lex "self", param_1621
    .lex "$obj", param_1622
    .lex "$name", param_1623
    .lex "$code_obj", param_1624
.annotate 'line', 658
    $P1626 = root_new ['parrot';'Hash']
    set $P1625, $P1626
    .lex "%todo", $P1625
.annotate 'line', 652
    set $P1627, $P1625
    unless_null $P1627, vivify_608
    $P1627 = root_new ['parrot';'Hash']
  vivify_608:
.annotate 'line', 659
    set $P107, param_1623
    unless_null $P107, vivify_609
    new $P107, "Undef"
  vivify_609:
    set $P1628, $P1625
    unless_null $P1628, vivify_610
    $P1628 = root_new ['parrot';'Hash']
    set $P1625, $P1628
  vivify_610:
    set $P1628["name"], $P107
.annotate 'line', 660
    set $P107, param_1624
    unless_null $P107, vivify_611
    new $P107, "Undef"
  vivify_611:
    set $P1629, $P1625
    unless_null $P1629, vivify_612
    $P1629 = root_new ['parrot';'Hash']
    set $P1625, $P1629
  vivify_612:
    set $P1629["code"], $P107
.annotate 'line', 661
    set $P1630, $P1625
    unless_null $P1630, vivify_613
    $P1630 = root_new ['parrot';'Hash']
  vivify_613:
    set $P107, param_1621
    nqp_decontainerize $P108, $P107
    nqp_get_sc_object $P109, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P1631, $P108, $P109, "@!multi_methods_to_incorporate", 3
    unless_null $P1631, vivify_614
    $P1631 = root_new ['parrot';'ResizablePMCArray']
  vivify_614:
    set $N100, $P1631
    set $I100, $N100
    set $P110, param_1621
    nqp_decontainerize $P111, $P110
    nqp_get_sc_object $P112, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P1632, $P111, $P112, "@!multi_methods_to_incorporate", 3
    unless_null $P1632, vivify_615
    $P1632 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P111, $P112, "@!multi_methods_to_incorporate", 3, $P1632
  vivify_615:
    set $P1632[$I100], $P1630
.annotate 'line', 662
    set $P107, param_1622
    unless_null $P107, vivify_616
    new $P107, "Undef"
  vivify_616:
    set_method_cache_authoritativeness $P107, 0
.annotate 'line', 652
    set $P107, param_1624
    unless_null $P107, vivify_617
    new $P107, "Undef"
  vivify_617:
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_attribute" :anon :subid("65_1337966777.064") :outer("151_1337966777.064")
    .param pmc param_1634
    .param pmc param_1635
    .param pmc param_1636
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 666
    .lex "self", param_1634
    .lex "$obj", param_1635
    .lex "$meta_attr", param_1636
.annotate 'line', 667
    new $P107, "Undef"
    set $P1637, $P107
    .lex "$name", $P1637
    set $P108, param_1636
    unless_null $P108, vivify_618
    new $P108, "Undef"
  vivify_618:
    $P109 = $P108."name"()
    set $P1637, $P109
.annotate 'line', 668
    set $P108, $P1637
    unless_null $P108, vivify_619
    new $P108, "Undef"
  vivify_619:
    set $P109, param_1634
    nqp_decontainerize $P110, $P109
    nqp_get_sc_object $P111, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P1639, $P110, $P111, "%!attributes", 1
    unless_null $P1639, vivify_620
    $P1639 = root_new ['parrot';'Hash']
  vivify_620:
    set $P112, $P1639[$P108]
    unless_null $P112, vivify_621
    new $P112, "Undef"
  vivify_621:
    unless $P112, if_1638_end
.annotate 'line', 669
    new $P113, "String"
    assign $P113, "This class already has an attribute named "
    set $P114, $P1637
    unless_null $P114, vivify_622
    new $P114, "Undef"
  vivify_622:
    concat $P115, $P113, $P114
    die $P115
  if_1638_end:
.annotate 'line', 671
    set $P108, param_1636
    unless_null $P108, vivify_623
    new $P108, "Undef"
  vivify_623:
    set $P109, $P1637
    unless_null $P109, vivify_624
    new $P109, "Undef"
  vivify_624:
    set $P110, param_1634
    nqp_decontainerize $P111, $P110
    nqp_get_sc_object $P112, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P1640, $P111, $P112, "%!attributes", 1
    unless_null $P1640, vivify_625
    $P1640 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P111, $P112, "%!attributes", 1, $P1640
  vivify_625:
    set $P1640[$P109], $P108
.annotate 'line', 666
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_parent" :anon :subid("66_1337966777.064") :outer("151_1337966777.064")
    .param pmc param_1642
    .param pmc param_1643
    .param pmc param_1644
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 674
    .const 'Sub' $P1649 = "162_1337966777.064" 
    capture_lex $P1649
    .lex "self", param_1642
    .lex "$obj", param_1643
    .lex "$parent", param_1644
.annotate 'line', 675
    set $P107, param_1642
    nqp_decontainerize $P108, $P107
    nqp_get_sc_object $P109, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P110, $P108, $P109, "$!composed", 9
    unless_null $P110, vivify_626
    new $P110, "Undef"
  vivify_626:
    unless $P110, if_1645_end
.annotate 'line', 676
    die "NQPClassHOW does not support adding parents after being composed."
  if_1645_end:
.annotate 'line', 678
    set $P107, param_1643
    unless_null $P107, vivify_627
    new $P107, "Undef"
  vivify_627:
    set $P108, param_1644
    unless_null $P108, vivify_628
    new $P108, "Undef"
  vivify_628:
    issame $I100, $P107, $P108
    unless $I100, if_1646_end
.annotate 'line', 679
    new $P109, 'String'
    set $P109, "Class '"
    set $P110, param_1642
    nqp_decontainerize $P111, $P110
    nqp_get_sc_object $P112, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P113, $P111, $P112, "$!name", 0
    unless_null $P113, vivify_629
    new $P113, "Undef"
  vivify_629:
    concat $P114, $P109, $P113
    concat $P115, $P114, "' cannot inherit from itself."
    die $P115
  if_1646_end:
.annotate 'line', 681
    set $P108, param_1642
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P1647, $P109, $P110, "@!parents", 4
    unless_null $P1647, vivify_630
    $P1647 = root_new ['parrot';'ResizablePMCArray']
  vivify_630:
    defined $I100, $P1647
    unless $I100, for_undef_631
    iter $P107, $P1647
    new $P113, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P113, loop1652_handler
    push_eh $P113
  loop1652_test:
    unless $P107, loop1652_done
    shift $P111, $P107
  loop1652_redo:
    .const 'Sub' $P1649 = "162_1337966777.064" 
    capture_lex $P1649
    $P1649($P111)
  loop1652_next:
    goto loop1652_test
  loop1652_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P114, exception, 'type'
    eq $P114, .CONTROL_LOOP_NEXT, loop1652_next
    eq $P114, .CONTROL_LOOP_REDO, loop1652_redo
  loop1652_done:
    pop_eh 
  for_undef_631:
.annotate 'line', 686
    set $P107, param_1644
    unless_null $P107, vivify_635
    new $P107, "Undef"
  vivify_635:
    set $P108, param_1642
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P1653, $P109, $P110, "@!parents", 4
    unless_null $P1653, vivify_636
    $P1653 = root_new ['parrot';'ResizablePMCArray']
  vivify_636:
    set $N100, $P1653
    set $I100, $N100
    set $P111, param_1642
    nqp_decontainerize $P112, $P111
    nqp_get_sc_object $P113, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P1654, $P112, $P113, "@!parents", 4
    unless_null $P1654, vivify_637
    $P1654 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P112, $P113, "@!parents", 4, $P1654
  vivify_637:
    set $P1654[$I100], $P107
.annotate 'line', 674
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1648"  :anon :subid("162_1337966777.064") :outer("66_1337966777.064")
    .param pmc param_1650
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 681
    .lex "$_", param_1650
.annotate 'line', 682
    find_lex $P113, "$_"
    unless_null $P113, vivify_632
    new $P113, "Undef"
  vivify_632:
    find_lex $P114, "$parent"
    unless_null $P114, vivify_633
    new $P114, "Undef"
  vivify_633:
    issame $I101, $P113, $P114
    if $I101, if_1651
    new $P112, 'Integer'
    set $P112, $I101
    goto if_1651_end
  if_1651:
.annotate 'line', 683
    new $P115, "String"
    assign $P115, "Already have "
    find_lex $P116, "$parent"
    unless_null $P116, vivify_634
    new $P116, "Undef"
  vivify_634:
    concat $P117, $P115, $P116
    concat $P118, $P117, " as a parent class."
    die $P118
  if_1651_end:
.annotate 'line', 681
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "set_default_parent" :anon :subid("67_1337966777.064") :outer("151_1337966777.064")
    .param pmc param_1656
    .param pmc param_1657
    .param pmc param_1658
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 689
    .lex "self", param_1656
    .lex "$obj", param_1657
    .lex "$parent", param_1658
.annotate 'line', 690
    set $P107, param_1658
    unless_null $P107, vivify_638
    new $P107, "Undef"
  vivify_638:
    set $P108, param_1656
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_bind_attr_obj $P109, $P110, "$!default_parent", 6, $P107
.annotate 'line', 689
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_role" :anon :subid("68_1337966777.064") :outer("151_1337966777.064")
    .param pmc param_1660
    .param pmc param_1661
    .param pmc param_1662
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 693
    .const 'Sub' $P1665 = "163_1337966777.064" 
    capture_lex $P1665
    .lex "self", param_1660
    .lex "$obj", param_1661
    .lex "$role", param_1662
.annotate 'line', 694
    set $P108, param_1660
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P1663, $P109, $P110, "@!roles", 5
    unless_null $P1663, vivify_639
    $P1663 = root_new ['parrot';'ResizablePMCArray']
  vivify_639:
    defined $I100, $P1663
    unless $I100, for_undef_640
    iter $P107, $P1663
    new $P113, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P113, loop1668_handler
    push_eh $P113
  loop1668_test:
    unless $P107, loop1668_done
    shift $P111, $P107
  loop1668_redo:
    .const 'Sub' $P1665 = "163_1337966777.064" 
    capture_lex $P1665
    $P1665($P111)
  loop1668_next:
    goto loop1668_test
  loop1668_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P114, exception, 'type'
    eq $P114, .CONTROL_LOOP_NEXT, loop1668_next
    eq $P114, .CONTROL_LOOP_REDO, loop1668_redo
  loop1668_done:
    pop_eh 
  for_undef_640:
.annotate 'line', 699
    set $P107, param_1662
    unless_null $P107, vivify_644
    new $P107, "Undef"
  vivify_644:
    set $P108, param_1660
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P1669, $P109, $P110, "@!roles", 5
    unless_null $P1669, vivify_645
    $P1669 = root_new ['parrot';'ResizablePMCArray']
  vivify_645:
    set $N100, $P1669
    set $I100, $N100
    set $P111, param_1660
    nqp_decontainerize $P112, $P111
    nqp_get_sc_object $P113, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P1670, $P112, $P113, "@!roles", 5
    unless_null $P1670, vivify_646
    $P1670 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P112, $P113, "@!roles", 5, $P1670
  vivify_646:
    set $P1670[$I100], $P107
.annotate 'line', 693
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1664"  :anon :subid("163_1337966777.064") :outer("68_1337966777.064")
    .param pmc param_1666
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 694
    .lex "$_", param_1666
.annotate 'line', 695
    find_lex $P113, "$_"
    unless_null $P113, vivify_641
    new $P113, "Undef"
  vivify_641:
    find_lex $P114, "$role"
    unless_null $P114, vivify_642
    new $P114, "Undef"
  vivify_642:
    issame $I101, $P113, $P114
    if $I101, if_1667
    new $P112, 'Integer'
    set $P112, $I101
    goto if_1667_end
  if_1667:
.annotate 'line', 696
    new $P115, "String"
    assign $P115, "The role "
    find_lex $P116, "$role"
    unless_null $P116, vivify_643
    new $P116, "Undef"
  vivify_643:
    concat $P117, $P115, $P116
    concat $P118, $P117, " has already been added."
    die $P118
  if_1667_end:
.annotate 'line', 694
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_parrot_vtable_mapping" :anon :subid("69_1337966777.064") :outer("151_1337966777.064")
    .param pmc param_1672
    .param pmc param_1673
    .param pmc param_1674
    .param pmc param_1675
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 702
    .lex "self", param_1672
    .lex "$obj", param_1673
    .lex "$name", param_1674
    .lex "$meth", param_1675
.annotate 'line', 703
    set $P107, param_1674
    unless_null $P107, vivify_647
    new $P107, "Undef"
  vivify_647:
    set $P108, param_1672
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P1677, $P109, $P110, "%!parrot_vtable_mapping", 12
    unless_null $P1677, vivify_648
    $P1677 = root_new ['parrot';'Hash']
  vivify_648:
    set $P111, $P1677[$P107]
    unless_null $P111, vivify_649
    new $P111, "Undef"
  vivify_649:
    defined $I100, $P111
    unless $I100, if_1676_end
.annotate 'line', 704
    new $P112, "String"
    assign $P112, "Class '"
    set $P113, param_1672
    nqp_decontainerize $P114, $P113
    nqp_get_sc_object $P115, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P116, $P114, $P115, "$!name", 0
    unless_null $P116, vivify_650
    new $P116, "Undef"
  vivify_650:
    concat $P117, $P112, $P116
    concat $P118, $P117, "' already has a Parrot v-table override for '"
    set $P119, param_1674
    unless_null $P119, vivify_651
    new $P119, "Undef"
  vivify_651:
    concat $P120, $P118, $P119
.annotate 'line', 705
    concat $P121, $P120, "'"
.annotate 'line', 706
    die $P121
  if_1676_end:
.annotate 'line', 708
    set $P107, param_1675
    unless_null $P107, vivify_652
    new $P107, "Undef"
  vivify_652:
    set $P108, param_1674
    unless_null $P108, vivify_653
    new $P108, "Undef"
  vivify_653:
    set $P109, param_1672
    nqp_decontainerize $P110, $P109
    nqp_get_sc_object $P111, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P1678, $P110, $P111, "%!parrot_vtable_mapping", 12
    unless_null $P1678, vivify_654
    $P1678 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P110, $P111, "%!parrot_vtable_mapping", 12, $P1678
  vivify_654:
    set $P1678[$P108], $P107
.annotate 'line', 702
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_parrot_vtable_handler_mapping" :anon :subid("70_1337966777.064") :outer("151_1337966777.064")
    .param pmc param_1680
    .param pmc param_1681
    .param pmc param_1682
    .param pmc param_1683
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 711
    .lex "self", param_1680
    .lex "$obj", param_1681
    .lex "$name", param_1682
    .lex "$att_name", param_1683
.annotate 'line', 712
    set $P107, param_1682
    unless_null $P107, vivify_655
    new $P107, "Undef"
  vivify_655:
    set $P108, param_1680
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P1685, $P109, $P110, "%!parrot_vtable_handler_mapping", 13
    unless_null $P1685, vivify_656
    $P1685 = root_new ['parrot';'Hash']
  vivify_656:
    set $P111, $P1685[$P107]
    unless_null $P111, vivify_657
    new $P111, "Undef"
  vivify_657:
    defined $I100, $P111
    unless $I100, if_1684_end
.annotate 'line', 713
    new $P112, "String"
    assign $P112, "Class '"
    set $P113, param_1680
    nqp_decontainerize $P114, $P113
    nqp_get_sc_object $P115, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P116, $P114, $P115, "$!name", 0
    unless_null $P116, vivify_658
    new $P116, "Undef"
  vivify_658:
    concat $P117, $P112, $P116
    concat $P118, $P117, "' already has a Parrot v-table handler for '"
    set $P119, param_1682
    unless_null $P119, vivify_659
    new $P119, "Undef"
  vivify_659:
    concat $P120, $P118, $P119
.annotate 'line', 714
    concat $P121, $P120, "'"
.annotate 'line', 715
    die $P121
  if_1684_end:
.annotate 'line', 717
    set $P107, param_1681
    unless_null $P107, vivify_660
    new $P107, "Undef"
  vivify_660:
    set $P108, param_1683
    unless_null $P108, vivify_661
    new $P108, "Undef"
  vivify_661:
    new $P109, "ResizablePMCArray"
    push $P109, $P107
    push $P109, $P108
    set $P110, param_1682
    unless_null $P110, vivify_662
    new $P110, "Undef"
  vivify_662:
    set $P111, param_1680
    nqp_decontainerize $P112, $P111
    nqp_get_sc_object $P113, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P1686, $P112, $P113, "%!parrot_vtable_handler_mapping", 13
    unless_null $P1686, vivify_663
    $P1686 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P112, $P113, "%!parrot_vtable_handler_mapping", 13, $P1686
  vivify_663:
    set $P1686[$P110], $P109
.annotate 'line', 711
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "compose" :anon :subid("71_1337966777.064") :outer("151_1337966777.064")
    .param pmc param_1688
    .param pmc param_1689
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 720
    .const 'Sub' $P1714 = "166_1337966777.064" 
    capture_lex $P1714
    .const 'Sub' $P1693 = "164_1337966777.064" 
    capture_lex $P1693
    .lex "self", param_1688
    .lex "$obj", param_1689
.annotate 'line', 724
    set $P107, param_1688
    nqp_decontainerize $P108, $P107
    nqp_get_sc_object $P109, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P1691, $P108, $P109, "@!roles", 5
    unless_null $P1691, vivify_664
    $P1691 = root_new ['parrot';'ResizablePMCArray']
  vivify_664:
    unless $P1691, if_1690_end
    .const 'Sub' $P1693 = "164_1337966777.064" 
    capture_lex $P1693
    $P1693()
  if_1690_end:
.annotate 'line', 737
    set $P108, param_1688
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P1711, $P109, $P110, "@!parents", 4
    unless_null $P1711, vivify_681
    $P1711 = root_new ['parrot';'ResizablePMCArray']
  vivify_681:
    set $N100, $P1711
    set $N101, 0
    iseq $I100, $N100, $N101
    if $I100, if_1710
    new $P107, 'Integer'
    set $P107, $I100
    goto if_1710_end
  if_1710:
    set $P111, param_1688
    nqp_decontainerize $P112, $P111
    nqp_get_sc_object $P113, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P114, $P112, $P113, "$!name", 0
    unless_null $P114, vivify_682
    new $P114, "Undef"
  vivify_682:
    set $S100, $P114
    isne $I101, $S100, "NQPMu"
    new $P107, 'Integer'
    set $P107, $I101
  if_1710_end:
    unless $P107, if_1709_end
.annotate 'line', 738
    set $P115, param_1688
    nqp_decontainerize $P116, $P115
    set $P117, param_1689
    unless_null $P117, vivify_683
    new $P117, "Undef"
  vivify_683:
    set $P118, param_1688
    nqp_decontainerize $P119, $P118
    nqp_get_sc_object $P120, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P121, $P119, $P120, "$!default_parent", 6
    unless_null $P121, vivify_684
    new $P121, "Undef"
  vivify_684:
    $P116."add_parent"($P117, $P121)
  if_1709_end:
.annotate 'line', 743
    set $P107, param_1688
    nqp_decontainerize $P108, $P107
    nqp_get_sc_object $P109, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P110, $P108, $P109, "$!composed", 9
    unless_null $P110, vivify_685
    new $P110, "Undef"
  vivify_685:
    if $P110, unless_1712_end
.annotate 'line', 744
    set $P111, param_1689
    unless_null $P111, vivify_686
    new $P111, "Undef"
  vivify_686:
    $P112 = "compute_c3_mro"($P111)
    set $P113, param_1688
    nqp_decontainerize $P114, $P113
    nqp_get_sc_object $P115, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_bind_attr_obj $P114, $P115, "@!mro", 10, $P112
.annotate 'line', 745
    new $P111, "Float"
    assign $P111, 1
    set $P112, param_1688
    nqp_decontainerize $P113, $P112
    nqp_get_sc_object $P114, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_bind_attr_obj $P113, $P114, "$!composed", 9, $P111
  unless_1712_end:
.annotate 'line', 749
    set $P107, param_1688
    nqp_decontainerize $P108, $P107
    set $P109, param_1689
    unless_null $P109, vivify_687
    new $P109, "Undef"
  vivify_687:
    $P108."incorporate_multi_candidates"($P109)
.annotate 'line', 752
    set $P108, param_1688
    nqp_decontainerize $P109, $P108
    set $P110, param_1689
    unless_null $P110, vivify_688
    new $P110, "Undef"
  vivify_688:
    $P111 = $P109."attributes"($P110, "0" :named("local"))
    defined $I100, $P111
    unless $I100, for_undef_689
    iter $P107, $P111
    new $P113, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P113, loop1716_handler
    push_eh $P113
  loop1716_test:
    unless $P107, loop1716_done
    shift $P112, $P107
  loop1716_redo:
    .const 'Sub' $P1714 = "166_1337966777.064" 
    capture_lex $P1714
    $P1714($P112)
  loop1716_next:
    goto loop1716_test
  loop1716_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P114, exception, 'type'
    eq $P114, .CONTROL_LOOP_NEXT, loop1716_next
    eq $P114, .CONTROL_LOOP_REDO, loop1716_redo
  loop1716_done:
    pop_eh 
  for_undef_689:
.annotate 'line', 755
    set $P107, param_1688
    nqp_decontainerize $P108, $P107
    set $P109, param_1689
    unless_null $P109, vivify_692
    new $P109, "Undef"
  vivify_692:
    $P108."publish_type_cache"($P109)
.annotate 'line', 756
    set $P107, param_1688
    nqp_decontainerize $P108, $P107
    set $P109, param_1689
    unless_null $P109, vivify_693
    new $P109, "Undef"
  vivify_693:
    $P108."publish_method_cache"($P109)
.annotate 'line', 757
    set $P107, param_1688
    nqp_decontainerize $P108, $P107
    set $P109, param_1689
    unless_null $P109, vivify_694
    new $P109, "Undef"
  vivify_694:
    $P108."publish_boolification_spec"($P109)
.annotate 'line', 760
    set $P107, param_1688
    nqp_decontainerize $P108, $P107
    set $P109, param_1689
    unless_null $P109, vivify_695
    new $P109, "Undef"
  vivify_695:
    $P108."publish_parrot_vtable_mapping"($P109)
.annotate 'line', 761
    set $P107, param_1688
    nqp_decontainerize $P108, $P107
    set $P109, param_1689
    unless_null $P109, vivify_696
    new $P109, "Undef"
  vivify_696:
    $P108."publish_parrot_vtablee_handler_mapping"($P109)
.annotate 'line', 720
    set $P107, param_1689
    unless_null $P107, vivify_697
    new $P107, "Undef"
  vivify_697:
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1692"  :anon :subid("164_1337966777.064") :outer("71_1337966777.064")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 724
    .const 'Sub' $P1699 = "165_1337966777.064" 
    capture_lex $P1699
.annotate 'line', 725
    $P1695 = root_new ['parrot';'ResizablePMCArray']
    set $P1694, $P1695
    .lex "@specialized_roles", $P1694
.annotate 'line', 724
    set $P1696, $P1694
    unless_null $P1696, vivify_665
    $P1696 = root_new ['parrot';'ResizablePMCArray']
  vivify_665:
.annotate 'line', 726
    find_lex $P111, "self"
    nqp_decontainerize $P112, $P111
    nqp_get_sc_object $P113, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P1697, $P112, $P113, "@!roles", 5
    unless_null $P1697, vivify_666
    $P1697 = root_new ['parrot';'ResizablePMCArray']
  vivify_666:
    defined $I100, $P1697
    unless $I100, for_undef_667
    iter $P110, $P1697
    new $P117, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P117, loop1707_handler
    push_eh $P117
  loop1707_test:
    unless $P110, loop1707_done
    shift $P114, $P110
  loop1707_redo:
    .const 'Sub' $P1699 = "165_1337966777.064" 
    capture_lex $P1699
    $P1699($P114)
  loop1707_next:
    goto loop1707_test
  loop1707_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P118, exception, 'type'
    eq $P118, .CONTROL_LOOP_NEXT, loop1707_next
    eq $P118, .CONTROL_LOOP_REDO, loop1707_redo
  loop1707_done:
    pop_eh 
  for_undef_667:
.annotate 'line', 732
    find_lex $P110, "RoleToClassApplier"
    find_lex $P111, "$obj"
    unless_null $P111, vivify_679
    new $P111, "Undef"
  vivify_679:
    set $P1708, $P1694
    unless_null $P1708, vivify_680
    $P1708 = root_new ['parrot';'ResizablePMCArray']
  vivify_680:
    $P112 = $P110."apply"($P111, $P1708)
.annotate 'line', 724
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1698"  :anon :subid("165_1337966777.064") :outer("164_1337966777.064")
    .param pmc param_1701
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 727
    new $P115, "Undef"
    set $P1700, $P115
    .lex "$ins", $P1700
    .lex "$_", param_1701
    find_lex $P116, "$_"
    unless_null $P116, vivify_668
    new $P116, "Undef"
  vivify_668:
    get_how $P117, $P116
    find_lex $P118, "$_"
    unless_null $P118, vivify_669
    new $P118, "Undef"
  vivify_669:
    find_lex $P119, "$obj"
    unless_null $P119, vivify_670
    new $P119, "Undef"
  vivify_670:
    $P120 = $P117."specialize"($P118, $P119)
    set $P1700, $P120
.annotate 'line', 728
    find_lex $P1702, "@specialized_roles"
    unless_null $P1702, vivify_671
    $P1702 = root_new ['parrot';'ResizablePMCArray']
  vivify_671:
    set $P116, $P1700
    unless_null $P116, vivify_672
    new $P116, "Undef"
  vivify_672:
    $P1702."push"($P116)
.annotate 'line', 729
    find_lex $P116, "$_"
    unless_null $P116, vivify_673
    new $P116, "Undef"
  vivify_673:
    find_lex $P117, "self"
    nqp_decontainerize $P118, $P117
    nqp_get_sc_object $P119, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P1703, $P118, $P119, "@!done", 11
    unless_null $P1703, vivify_674
    $P1703 = root_new ['parrot';'ResizablePMCArray']
  vivify_674:
    set $N100, $P1703
    set $I101, $N100
    find_lex $P120, "self"
    nqp_decontainerize $P121, $P120
    nqp_get_sc_object $P122, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P1704, $P121, $P122, "@!done", 11
    unless_null $P1704, vivify_675
    $P1704 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P121, $P122, "@!done", 11, $P1704
  vivify_675:
    set $P1704[$I101], $P116
.annotate 'line', 730
    set $P116, $P1700
    unless_null $P116, vivify_676
    new $P116, "Undef"
  vivify_676:
    find_lex $P117, "self"
    nqp_decontainerize $P118, $P117
    nqp_get_sc_object $P119, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P1705, $P118, $P119, "@!done", 11
    unless_null $P1705, vivify_677
    $P1705 = root_new ['parrot';'ResizablePMCArray']
  vivify_677:
    set $N100, $P1705
    set $I101, $N100
    find_lex $P120, "self"
    nqp_decontainerize $P121, $P120
    nqp_get_sc_object $P122, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P1706, $P121, $P122, "@!done", 11
    unless_null $P1706, vivify_678
    $P1706 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P121, $P122, "@!done", 11, $P1706
  vivify_678:
    set $P1706[$I101], $P116
.annotate 'line', 726
    .return ($P116)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1713"  :anon :subid("166_1337966777.064") :outer("71_1337966777.064")
    .param pmc param_1715
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 752
    .lex "$_", param_1715
    find_lex $P113, "$_"
    unless_null $P113, vivify_690
    new $P113, "Undef"
  vivify_690:
    find_lex $P114, "$obj"
    unless_null $P114, vivify_691
    new $P114, "Undef"
  vivify_691:
    $P115 = $P113."compose"($P114)
    .return ($P115)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "incorporate_multi_candidates" :anon :subid("72_1337966777.064") :outer("151_1337966777.064")
    .param pmc param_1718
    .param pmc param_1719
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 766
    .const 'Sub' $P1724 = "167_1337966777.064" 
    capture_lex $P1724
    .lex "self", param_1718
    .lex "$obj", param_1719
.annotate 'line', 767
    new $P107, "Undef"
    set $P1720, $P107
    .lex "$num_todo", $P1720
.annotate 'line', 768
    new $P108, "Undef"
    set $P1721, $P108
    .lex "$i", $P1721
.annotate 'line', 767
    set $P109, param_1718
    nqp_decontainerize $P110, $P109
    nqp_get_sc_object $P111, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P1722, $P110, $P111, "@!multi_methods_to_incorporate", 3
    unless_null $P1722, vivify_698
    $P1722 = root_new ['parrot';'ResizablePMCArray']
  vivify_698:
    set $N100, $P1722
    new $P112, 'Float'
    set $P112, $N100
    set $P1720, $P112
.annotate 'line', 768
    new $P109, "Float"
    assign $P109, 0
    set $P1721, $P109
.annotate 'line', 769
    new $P114, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P114, loop1772_handler
    push_eh $P114
  loop1772_test:
    set $P109, $P1721
    unless_null $P109, vivify_699
    new $P109, "Undef"
  vivify_699:
    set $N100, $P109
    set $P110, $P1720
    unless_null $P110, vivify_700
    new $P110, "Undef"
  vivify_700:
    set $N101, $P110
    isne $I100, $N100, $N101
    unless $I100, loop1772_done
  loop1772_redo:
    .const 'Sub' $P1724 = "167_1337966777.064" 
    capture_lex $P1724
    $P1724()
  loop1772_next:
    goto loop1772_test
  loop1772_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P116, exception, 'type'
    eq $P116, .CONTROL_LOOP_NEXT, loop1772_next
    eq $P116, .CONTROL_LOOP_REDO, loop1772_redo
  loop1772_done:
    pop_eh 
.annotate 'line', 766
    .return ($I100)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1723"  :anon :subid("167_1337966777.064") :outer("72_1337966777.064")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 769
    .const 'Sub' $P1738 = "168_1337966777.064" 
    capture_lex $P1738
.annotate 'line', 771
    new $P111, "Undef"
    set $P1725, $P111
    .lex "$name", $P1725
.annotate 'line', 772
    new $P112, "Undef"
    set $P1726, $P112
    .lex "$code", $P1726
.annotate 'line', 776
    new $P113, "Undef"
    set $P1727, $P113
    .lex "$dispatcher", $P1727
.annotate 'line', 771
    find_lex $P114, "$i"
    unless_null $P114, vivify_701
    new $P114, "Undef"
  vivify_701:
    set $I101, $P114
    find_lex $P115, "self"
    nqp_decontainerize $P116, $P115
    nqp_get_sc_object $P117, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P1728, $P116, $P117, "@!multi_methods_to_incorporate", 3
    unless_null $P1728, vivify_702
    $P1728 = root_new ['parrot';'ResizablePMCArray']
  vivify_702:
    set $P1729, $P1728[$I101]
    unless_null $P1729, vivify_703
    $P1729 = root_new ['parrot';'Hash']
  vivify_703:
    set $P118, $P1729["name"]
    unless_null $P118, vivify_704
    new $P118, "Undef"
  vivify_704:
    set $P1725, $P118
.annotate 'line', 772
    find_lex $P114, "$i"
    unless_null $P114, vivify_705
    new $P114, "Undef"
  vivify_705:
    set $I101, $P114
    find_lex $P115, "self"
    nqp_decontainerize $P116, $P115
    nqp_get_sc_object $P117, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P1730, $P116, $P117, "@!multi_methods_to_incorporate", 3
    unless_null $P1730, vivify_706
    $P1730 = root_new ['parrot';'ResizablePMCArray']
  vivify_706:
    set $P1731, $P1730[$I101]
    unless_null $P1731, vivify_707
    $P1731 = root_new ['parrot';'Hash']
  vivify_707:
    set $P118, $P1731["code"]
    unless_null $P118, vivify_708
    new $P118, "Undef"
  vivify_708:
    set $P1726, $P118
.annotate 'line', 776
    set $P114, $P1725
    unless_null $P114, vivify_709
    new $P114, "Undef"
  vivify_709:
    find_lex $P115, "self"
    nqp_decontainerize $P116, $P115
    nqp_get_sc_object $P117, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P1732, $P116, $P117, "%!methods", 2
    unless_null $P1732, vivify_710
    $P1732 = root_new ['parrot';'Hash']
  vivify_710:
    set $P118, $P1732[$P114]
    unless_null $P118, vivify_711
    new $P118, "Undef"
  vivify_711:
    set $P1727, $P118
.annotate 'line', 777
    set $P114, $P1727
    unless_null $P114, vivify_712
    new $P114, "Undef"
  vivify_712:
    defined $I101, $P114
    if $I101, if_1733
.annotate 'line', 790
    .const 'Sub' $P1738 = "168_1337966777.064" 
    capture_lex $P1738
    $P1738()
    goto if_1733_end
  if_1733:
.annotate 'line', 780
    set $P115, $P1727
    unless_null $P115, vivify_751
    new $P115, "Undef"
  vivify_751:
    is_dispatcher $I102, $P115
    if $I102, if_1734
.annotate 'line', 783
    set $P117, $P1727
    unless_null $P117, vivify_752
    new $P117, "Undef"
  vivify_752:
    can $I103, $P117, "is_dispatcher"
    if $I103, if_1736
    new $P116, 'Integer'
    set $P116, $I103
    goto if_1736_end
  if_1736:
    set $P118, $P1727
    unless_null $P118, vivify_753
    new $P118, "Undef"
  vivify_753:
    $P119 = $P118."is_dispatcher"()
    set $P116, $P119
  if_1736_end:
    if $P116, if_1735
.annotate 'line', 787
    new $P120, 'String'
    set $P120, "Cannot have a multi candidate for "
    set $P121, $P1725
    unless_null $P121, vivify_754
    new $P121, "Undef"
  vivify_754:
    concat $P122, $P120, $P121
    concat $P123, $P122, " when an only method is also in the class"
    die $P123
.annotate 'line', 786
    goto if_1735_end
  if_1735:
.annotate 'line', 784
    set $P120, $P1727
    unless_null $P120, vivify_755
    new $P120, "Undef"
  vivify_755:
    set $P121, $P1726
    unless_null $P121, vivify_756
    new $P121, "Undef"
  vivify_756:
    $P120."add_dispatchee"($P121)
  if_1735_end:
.annotate 'line', 783
    goto if_1734_end
  if_1734:
.annotate 'line', 781
    set $P116, $P1727
    unless_null $P116, vivify_757
    new $P116, "Undef"
  vivify_757:
    set $P117, $P1726
    unless_null $P117, vivify_758
    new $P117, "Undef"
  vivify_758:
    push_dispatchee $P116, $P117
  if_1734_end:
  if_1733_end:
.annotate 'line', 829
    find_lex $P114, "$i"
    unless_null $P114, vivify_759
    new $P114, "Undef"
  vivify_759:
    add $P115, $P114, 1
    store_lex "$i", $P115
.annotate 'line', 769
    .return ($P115)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1737"  :anon :subid("168_1337966777.064") :outer("167_1337966777.064")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 790
    .const 'Sub' $P1744 = "169_1337966777.064" 
    capture_lex $P1744
.annotate 'line', 792
    new $P115, "Undef"
    set $P1739, $P115
    .lex "$j", $P1739
.annotate 'line', 793
    new $P116, "Undef"
    set $P1740, $P116
    .lex "$found", $P1740
.annotate 'line', 792
    new $P117, "Float"
    assign $P117, 1
    set $P1739, $P117
.annotate 'line', 793
    new $P117, "Float"
    assign $P117, 0
    set $P1740, $P117
.annotate 'line', 794
    new $P125, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P125, loop1770_handler
    push_eh $P125
  loop1770_test:
    set $P118, $P1739
    unless_null $P118, vivify_713
    new $P118, "Undef"
  vivify_713:
    set $N102, $P118
    find_lex $P119, "self"
    nqp_decontainerize $P120, $P119
    nqp_get_sc_object $P121, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P1742, $P120, $P121, "@!mro", 10
    unless_null $P1742, vivify_714
    $P1742 = root_new ['parrot';'ResizablePMCArray']
  vivify_714:
    set $N103, $P1742
    isne $I102, $N102, $N103
    if $I102, if_1741
    new $P117, 'Integer'
    set $P117, $I102
    goto if_1741_end
  if_1741:
    set $P122, $P1740
    unless_null $P122, vivify_715
    new $P122, "Undef"
  vivify_715:
    isfalse $I103, $P122
    new $P117, 'Integer'
    set $P117, $I103
  if_1741_end:
    unless $P117, loop1770_done
  loop1770_redo:
    .const 'Sub' $P1744 = "169_1337966777.064" 
    capture_lex $P1744
    $P1744()
  loop1770_next:
    goto loop1770_test
  loop1770_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P127, exception, 'type'
    eq $P127, .CONTROL_LOOP_NEXT, loop1770_next
    eq $P127, .CONTROL_LOOP_REDO, loop1770_redo
  loop1770_done:
    pop_eh 
.annotate 'line', 825
    set $P118, $P1740
    unless_null $P118, vivify_749
    new $P118, "Undef"
  vivify_749:
    unless $P118, unless_1771
    set $P117, $P118
    goto unless_1771_end
  unless_1771:
.annotate 'line', 826
    new $P119, 'String'
    set $P119, "Could not find a proto for multi "
    find_lex $P120, "$name"
    unless_null $P120, vivify_750
    new $P120, "Undef"
  vivify_750:
    concat $P121, $P119, $P120
    concat $P122, $P121, ", and proto generation is NYI"
    die $P122
  unless_1771_end:
.annotate 'line', 790
    .return ($P117)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1743"  :anon :subid("169_1337966777.064") :outer("168_1337966777.064")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 794
    .const 'Sub' $P1767 = "171_1337966777.064" 
    capture_lex $P1767
    .const 'Sub' $P1754 = "170_1337966777.064" 
    capture_lex $P1754
.annotate 'line', 795
    new $P123, "Undef"
    set $P1745, $P123
    .lex "$parent", $P1745
.annotate 'line', 796
    $P1747 = root_new ['parrot';'Hash']
    set $P1746, $P1747
    .lex "%meths", $P1746
.annotate 'line', 797
    new $P124, "Undef"
    set $P1748, $P124
    .lex "$dispatcher", $P1748
.annotate 'line', 795
    find_lex $P125, "$j"
    unless_null $P125, vivify_716
    new $P125, "Undef"
  vivify_716:
    set $I104, $P125
    find_lex $P126, "self"
    nqp_decontainerize $P127, $P126
    nqp_get_sc_object $P128, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P1749, $P127, $P128, "@!mro", 10
    unless_null $P1749, vivify_717
    $P1749 = root_new ['parrot';'ResizablePMCArray']
  vivify_717:
    set $P129, $P1749[$I104]
    unless_null $P129, vivify_718
    new $P129, "Undef"
  vivify_718:
    set $P1745, $P129
.annotate 'line', 796
    set $P125, $P1745
    unless_null $P125, vivify_719
    new $P125, "Undef"
  vivify_719:
    get_how $P126, $P125
    set $P127, $P1745
    unless_null $P127, vivify_720
    new $P127, "Undef"
  vivify_720:
    $P128 = $P126."method_table"($P127)
    set $P1746, $P128
.annotate 'line', 797
    find_lex $P125, "$name"
    unless_null $P125, vivify_721
    new $P125, "Undef"
  vivify_721:
    set $P1750, $P1746
    unless_null $P1750, vivify_722
    $P1750 = root_new ['parrot';'Hash']
  vivify_722:
    set $P126, $P1750[$P125]
    unless_null $P126, vivify_723
    new $P126, "Undef"
  vivify_723:
    set $P1748, $P126
.annotate 'line', 798
    set $P125, $P1748
    unless_null $P125, vivify_724
    new $P125, "Undef"
  vivify_724:
    defined $I104, $P125
    unless $I104, if_1751_end
.annotate 'line', 801
    set $P126, $P1748
    unless_null $P126, vivify_725
    new $P126, "Undef"
  vivify_725:
    is_dispatcher $I105, $P126
    if $I105, if_1752
.annotate 'line', 813
    set $P131, $P1748
    unless_null $P131, vivify_726
    new $P131, "Undef"
  vivify_726:
    can $I106, $P131, "is_dispatcher"
    if $I106, if_1765
    new $P130, 'Integer'
    set $P130, $I106
    goto if_1765_end
  if_1765:
    set $P132, $P1748
    unless_null $P132, vivify_727
    new $P132, "Undef"
  vivify_727:
    $P133 = $P132."is_dispatcher"()
    set $P130, $P133
  if_1765_end:
    if $P130, if_1764
.annotate 'line', 820
    new $P136, 'String'
    set $P136, "Could not find a proto for multi "
    find_lex $P137, "$name"
    unless_null $P137, vivify_728
    new $P137, "Undef"
  vivify_728:
    concat $P138, $P136, $P137
    concat $P139, $P138, " (it may exist, but an only is hiding it if so)"
    die $P139
.annotate 'line', 819
    goto if_1764_end
  if_1764:
.annotate 'line', 813
    .const 'Sub' $P1767 = "171_1337966777.064" 
    capture_lex $P1767
    $P1767()
  if_1764_end:
    goto if_1752_end
  if_1752:
.annotate 'line', 801
    .const 'Sub' $P1754 = "170_1337966777.064" 
    capture_lex $P1754
    $P1754()
  if_1752_end:
  if_1751_end:
.annotate 'line', 823
    find_lex $P125, "$j"
    unless_null $P125, vivify_748
    new $P125, "Undef"
  vivify_748:
    add $P126, $P125, 1
    store_lex "$j", $P126
.annotate 'line', 794
    .return ($P126)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1766"  :anon :subid("171_1337966777.064") :outer("169_1337966777.064")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 814
    new $P134, "Undef"
    set $P1768, $P134
    .lex "$new_disp", $P1768
    find_lex $P135, "$dispatcher"
    unless_null $P135, vivify_729
    new $P135, "Undef"
  vivify_729:
    $P136 = $P135."derive_dispatcher"()
    set $P1768, $P136
.annotate 'line', 815
    set $P135, $P1768
    unless_null $P135, vivify_730
    new $P135, "Undef"
  vivify_730:
    find_lex $P136, "$code"
    unless_null $P136, vivify_731
    new $P136, "Undef"
  vivify_731:
    $P135."add_dispatchee"($P136)
.annotate 'line', 816
    set $P135, $P1768
    unless_null $P135, vivify_732
    new $P135, "Undef"
  vivify_732:
    find_lex $P136, "$name"
    unless_null $P136, vivify_733
    new $P136, "Undef"
  vivify_733:
    find_lex $P137, "self"
    nqp_decontainerize $P138, $P137
    nqp_get_sc_object $P139, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P1769, $P138, $P139, "%!methods", 2
    unless_null $P1769, vivify_734
    $P1769 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P138, $P139, "%!methods", 2, $P1769
  vivify_734:
    set $P1769[$P136], $P135
.annotate 'line', 817
    new $P135, "Float"
    assign $P135, 1
    store_lex "$found", $P135
.annotate 'line', 813
    .return ($P135)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1753"  :anon :subid("170_1337966777.064") :outer("169_1337966777.064")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 803
    $P1756 = root_new ['parrot';'ResizablePMCArray']
    set $P1755, $P1756
    .lex "@new_dispatchees", $P1755
.annotate 'line', 805
    new $P127, "Undef"
    set $P1757, $P127
    .lex "$new_disp", $P1757
.annotate 'line', 806
    new $P128, "Undef"
    set $P1758, $P128
    .lex "$clone_callback", $P1758
.annotate 'line', 801
    set $P1759, $P1755
    unless_null $P1759, vivify_735
    $P1759 = root_new ['parrot';'ResizablePMCArray']
  vivify_735:
.annotate 'line', 804
    find_lex $P129, "$code"
    unless_null $P129, vivify_736
    new $P129, "Undef"
  vivify_736:
    set $P1760, $P1755
    unless_null $P1760, vivify_737
    $P1760 = root_new ['parrot';'ResizablePMCArray']
    set $P1755, $P1760
  vivify_737:
    set $P1760[0], $P129
.annotate 'line', 805
    find_lex $P129, "$dispatcher"
    unless_null $P129, vivify_738
    new $P129, "Undef"
  vivify_738:
    set $P1761, $P1755
    unless_null $P1761, vivify_739
    $P1761 = root_new ['parrot';'ResizablePMCArray']
  vivify_739:
    create_dispatch_and_add_candidates $P130, $P129, $P1761
    set $P1757, $P130
.annotate 'line', 806
    find_lex $P129, "$dispatcher"
    unless_null $P129, vivify_740
    new $P129, "Undef"
  vivify_740:
    getprop $P130, $P129, "CLONE_CALLBACK"
    set $P1758, $P130
.annotate 'line', 807
    set $P129, $P1758
    unless_null $P129, vivify_741
    new $P129, "Undef"
  vivify_741:
    defined $I106, $P129
    unless $I106, if_1762_end
.annotate 'line', 808
    set $P130, $P1758
    unless_null $P130, vivify_742
    new $P130, "Undef"
  vivify_742:
    find_lex $P131, "$dispatcher"
    unless_null $P131, vivify_743
    new $P131, "Undef"
  vivify_743:
    set $P132, $P1757
    unless_null $P132, vivify_744
    new $P132, "Undef"
  vivify_744:
    $P130($P131, $P132)
  if_1762_end:
.annotate 'line', 810
    set $P129, $P1757
    unless_null $P129, vivify_745
    new $P129, "Undef"
  vivify_745:
    find_lex $P130, "$name"
    unless_null $P130, vivify_746
    new $P130, "Undef"
  vivify_746:
    find_lex $P131, "self"
    nqp_decontainerize $P132, $P131
    nqp_get_sc_object $P133, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P1763, $P132, $P133, "%!methods", 2
    unless_null $P1763, vivify_747
    $P1763 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P132, $P133, "%!methods", 2, $P1763
  vivify_747:
    set $P1763[$P130], $P129
.annotate 'line', 811
    new $P129, "Float"
    assign $P129, 1
    store_lex "$found", $P129
.annotate 'line', 801
    .return ($P129)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_type_cache" :anon :subid("73_1337966777.064") :outer("151_1337966777.064")
    .param pmc param_1774
    .param pmc param_1775
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 926
    .const 'Sub' $P1787 = "173_1337966777.064" 
    capture_lex $P1787
    .const 'Sub' $P1781 = "172_1337966777.064" 
    capture_lex $P1781
    .lex "self", param_1774
    .lex "$obj", param_1775
.annotate 'line', 927
    $P1777 = root_new ['parrot';'ResizablePMCArray']
    set $P1776, $P1777
    .lex "@tc", $P1776
.annotate 'line', 926
    set $P1778, $P1776
    unless_null $P1778, vivify_760
    $P1778 = root_new ['parrot';'ResizablePMCArray']
  vivify_760:
.annotate 'line', 928
    set $P108, param_1774
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P1779, $P109, $P110, "@!mro", 10
    unless_null $P1779, vivify_761
    $P1779 = root_new ['parrot';'ResizablePMCArray']
  vivify_761:
    defined $I100, $P1779
    unless $I100, for_undef_762
    iter $P107, $P1779
    new $P112, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P112, loop1784_handler
    push_eh $P112
  loop1784_test:
    unless $P107, loop1784_done
    shift $P111, $P107
  loop1784_redo:
    .const 'Sub' $P1781 = "172_1337966777.064" 
    capture_lex $P1781
    $P1781($P111)
  loop1784_next:
    goto loop1784_test
  loop1784_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P114, exception, 'type'
    eq $P114, .CONTROL_LOOP_NEXT, loop1784_next
    eq $P114, .CONTROL_LOOP_REDO, loop1784_redo
  loop1784_done:
    pop_eh 
  for_undef_762:
.annotate 'line', 929
    set $P108, param_1774
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P1785, $P109, $P110, "@!done", 11
    unless_null $P1785, vivify_765
    $P1785 = root_new ['parrot';'ResizablePMCArray']
  vivify_765:
    defined $I100, $P1785
    unless $I100, for_undef_766
    iter $P107, $P1785
    new $P112, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P112, loop1790_handler
    push_eh $P112
  loop1790_test:
    unless $P107, loop1790_done
    shift $P111, $P107
  loop1790_redo:
    .const 'Sub' $P1787 = "173_1337966777.064" 
    capture_lex $P1787
    $P1787($P111)
  loop1790_next:
    goto loop1790_test
  loop1790_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P114, exception, 'type'
    eq $P114, .CONTROL_LOOP_NEXT, loop1790_next
    eq $P114, .CONTROL_LOOP_REDO, loop1790_redo
  loop1790_done:
    pop_eh 
  for_undef_766:
.annotate 'line', 930
    set $P107, param_1775
    unless_null $P107, vivify_769
    new $P107, "Undef"
  vivify_769:
    set $P1791, $P1776
    unless_null $P1791, vivify_770
    $P1791 = root_new ['parrot';'ResizablePMCArray']
  vivify_770:
    publish_type_check_cache $P107, $P1791
.annotate 'line', 926
    .return ()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1780"  :anon :subid("172_1337966777.064") :outer("73_1337966777.064")
    .param pmc param_1782
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 928
    .lex "$_", param_1782
    find_lex $P1783, "@tc"
    unless_null $P1783, vivify_763
    $P1783 = root_new ['parrot';'ResizablePMCArray']
  vivify_763:
    find_lex $P112, "$_"
    unless_null $P112, vivify_764
    new $P112, "Undef"
  vivify_764:
    $P113 = $P1783."push"($P112)
    .return ($P113)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1786"  :anon :subid("173_1337966777.064") :outer("73_1337966777.064")
    .param pmc param_1788
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 929
    .lex "$_", param_1788
    find_lex $P1789, "@tc"
    unless_null $P1789, vivify_767
    $P1789 = root_new ['parrot';'ResizablePMCArray']
  vivify_767:
    find_lex $P112, "$_"
    unless_null $P112, vivify_768
    new $P112, "Undef"
  vivify_768:
    $P113 = $P1789."push"($P112)
    .return ($P113)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_method_cache" :anon :subid("74_1337966777.064") :outer("151_1337966777.064")
    .param pmc param_1793
    .param pmc param_1794
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 933
    .const 'Sub' $P1804 = "174_1337966777.064" 
    capture_lex $P1804
    .lex "self", param_1793
    .lex "$obj", param_1794
.annotate 'line', 936
    $P1796 = root_new ['parrot';'Hash']
    set $P1795, $P1796
    .lex "%cache", $P1795
.annotate 'line', 937
    $P1798 = root_new ['parrot';'ResizablePMCArray']
    set $P1797, $P1798
    .lex "@mro_reversed", $P1797
.annotate 'line', 933
    set $P1799, $P1795
    unless_null $P1799, vivify_771
    $P1799 = root_new ['parrot';'Hash']
  vivify_771:
.annotate 'line', 937
    set $P107, param_1793
    nqp_decontainerize $P108, $P107
    nqp_get_sc_object $P109, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P1800, $P108, $P109, "@!mro", 10
    unless_null $P1800, vivify_772
    $P1800 = root_new ['parrot';'ResizablePMCArray']
  vivify_772:
    clone $P110, $P1800
    set $P1797, $P110
.annotate 'line', 938
    set $P1801, $P1797
    unless_null $P1801, vivify_773
    $P1801 = root_new ['parrot';'ResizablePMCArray']
  vivify_773:
    $P1801."reverse"()
.annotate 'line', 939
    set $P1802, $P1797
    unless_null $P1802, vivify_774
    $P1802 = root_new ['parrot';'ResizablePMCArray']
  vivify_774:
    defined $I100, $P1802
    unless $I100, for_undef_775
    iter $P107, $P1802
    new $P110, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P110, loop1811_handler
    push_eh $P110
  loop1811_test:
    unless $P107, loop1811_done
    shift $P108, $P107
  loop1811_redo:
    .const 'Sub' $P1804 = "174_1337966777.064" 
    capture_lex $P1804
    $P1804($P108)
  loop1811_next:
    goto loop1811_test
  loop1811_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P111, exception, 'type'
    eq $P111, .CONTROL_LOOP_NEXT, loop1811_next
    eq $P111, .CONTROL_LOOP_REDO, loop1811_redo
  loop1811_done:
    pop_eh 
  for_undef_775:
.annotate 'line', 944
    set $P107, param_1794
    unless_null $P107, vivify_782
    new $P107, "Undef"
  vivify_782:
    set $P1812, $P1795
    unless_null $P1812, vivify_783
    $P1812 = root_new ['parrot';'Hash']
  vivify_783:
    publish_method_cache $P107, $P1812
.annotate 'line', 945
    set $P107, param_1794
    unless_null $P107, vivify_784
    new $P107, "Undef"
  vivify_784:
    set_method_cache_authoritativeness $P107, 1
.annotate 'line', 933
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1803"  :anon :subid("174_1337966777.064") :outer("74_1337966777.064")
    .param pmc param_1805
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 939
    .const 'Sub' $P1807 = "175_1337966777.064" 
    capture_lex $P1807
    .lex "$_", param_1805
.annotate 'line', 940
    find_lex $P110, "$_"
    unless_null $P110, vivify_776
    new $P110, "Undef"
  vivify_776:
    get_how $P111, $P110
    find_lex $P112, "$_"
    unless_null $P112, vivify_777
    new $P112, "Undef"
  vivify_777:
    $P113 = $P111."method_table"($P112)
    defined $I101, $P113
    unless $I101, for_undef_778
    iter $P109, $P113
    new $P115, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P115, loop1810_handler
    push_eh $P115
  loop1810_test:
    unless $P109, loop1810_done
    shift $P114, $P109
  loop1810_redo:
    .const 'Sub' $P1807 = "175_1337966777.064" 
    capture_lex $P1807
    $P1807($P114)
  loop1810_next:
    goto loop1810_test
  loop1810_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P117, exception, 'type'
    eq $P117, .CONTROL_LOOP_NEXT, loop1810_next
    eq $P117, .CONTROL_LOOP_REDO, loop1810_redo
  loop1810_done:
    pop_eh 
  for_undef_778:
.annotate 'line', 939
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1806"  :anon :subid("175_1337966777.064") :outer("174_1337966777.064")
    .param pmc param_1808
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 940
    .lex "$_", param_1808
.annotate 'line', 941
    find_lex $P115, "$_"
    unless_null $P115, vivify_779
    new $P115, "Undef"
  vivify_779:
    $P116 = $P115."value"()
    find_lex $P117, "$_"
    unless_null $P117, vivify_780
    new $P117, "Undef"
  vivify_780:
    $P118 = $P117."key"()
    find_lex $P1809, "%cache"
    unless_null $P1809, vivify_781
    $P1809 = root_new ['parrot';'Hash']
    store_lex "%cache", $P1809
  vivify_781:
    set $P1809[$P118], $P116
.annotate 'line', 940
    .return ($P116)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "publish_boolification_spec" :anon :subid("75_1337966777.064") :outer("151_1337966777.064")
    .param pmc param_1814
    .param pmc param_1815
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 948
    .lex "self", param_1814
    .lex "$obj", param_1815
.annotate 'line', 949
    new $P107, "Undef"
    set $P1816, $P107
    .lex "$bool_meth", $P1816
    set $P108, param_1814
    nqp_decontainerize $P109, $P108
    set $P110, param_1815
    unless_null $P110, vivify_785
    new $P110, "Undef"
  vivify_785:
    $P111 = $P109."find_method"($P110, "Bool")
    set $P1816, $P111
.annotate 'line', 950
    set $P109, $P1816
    unless_null $P109, vivify_786
    new $P109, "Undef"
  vivify_786:
    defined $I100, $P109
    if $I100, if_1817
.annotate 'line', 954
    set $P111, param_1815
    unless_null $P111, vivify_787
    new $P111, "Undef"
  vivify_787:
    null $P112
    set_boolification_spec $P111, 5, $P112
.annotate 'line', 953
    set $P108, $P111
.annotate 'line', 950
    goto if_1817_end
  if_1817:
.annotate 'line', 951
    set $P110, param_1815
    unless_null $P110, vivify_788
    new $P110, "Undef"
  vivify_788:
    set $P111, $P1816
    unless_null $P111, vivify_789
    new $P111, "Undef"
  vivify_789:
    set_boolification_spec $P110, 0, $P111
.annotate 'line', 950
    set $P108, $P110
  if_1817_end:
.annotate 'line', 948
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_parrot_vtable_mapping" :anon :subid("76_1337966777.064") :outer("151_1337966777.064")
    .param pmc param_1819
    .param pmc param_1820
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 958
    .const 'Sub' $P1830 = "176_1337966777.064" 
    capture_lex $P1830
    .lex "self", param_1819
    .lex "$obj", param_1820
.annotate 'line', 959
    $P1822 = root_new ['parrot';'Hash']
    set $P1821, $P1822
    .lex "%mapping", $P1821
.annotate 'line', 960
    $P1824 = root_new ['parrot';'ResizablePMCArray']
    set $P1823, $P1824
    .lex "@mro_reversed", $P1823
.annotate 'line', 958
    set $P1825, $P1821
    unless_null $P1825, vivify_790
    $P1825 = root_new ['parrot';'Hash']
  vivify_790:
.annotate 'line', 960
    set $P107, param_1819
    nqp_decontainerize $P108, $P107
    nqp_get_sc_object $P109, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P1826, $P108, $P109, "@!mro", 10
    unless_null $P1826, vivify_791
    $P1826 = root_new ['parrot';'ResizablePMCArray']
  vivify_791:
    clone $P110, $P1826
    set $P1823, $P110
.annotate 'line', 961
    set $P1827, $P1823
    unless_null $P1827, vivify_792
    $P1827 = root_new ['parrot';'ResizablePMCArray']
  vivify_792:
    $P1827."reverse"()
.annotate 'line', 962
    set $P1828, $P1823
    unless_null $P1828, vivify_793
    $P1828 = root_new ['parrot';'ResizablePMCArray']
  vivify_793:
    defined $I100, $P1828
    unless $I100, for_undef_794
    iter $P107, $P1828
    new $P110, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P110, loop1837_handler
    push_eh $P110
  loop1837_test:
    unless $P107, loop1837_done
    shift $P108, $P107
  loop1837_redo:
    .const 'Sub' $P1830 = "176_1337966777.064" 
    capture_lex $P1830
    $P1830($P108)
  loop1837_next:
    goto loop1837_test
  loop1837_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P111, exception, 'type'
    eq $P111, .CONTROL_LOOP_NEXT, loop1837_next
    eq $P111, .CONTROL_LOOP_REDO, loop1837_redo
  loop1837_done:
    pop_eh 
  for_undef_794:
.annotate 'line', 967
    set $P1839, $P1821
    unless_null $P1839, vivify_801
    $P1839 = root_new ['parrot';'Hash']
  vivify_801:
    set $N100, $P1839
    if $N100, if_1838
    new $P107, 'Float'
    set $P107, $N100
    goto if_1838_end
  if_1838:
.annotate 'line', 968
    set $P108, param_1820
    unless_null $P108, vivify_802
    new $P108, "Undef"
  vivify_802:
    set $P1840, $P1821
    unless_null $P1840, vivify_803
    $P1840 = root_new ['parrot';'Hash']
  vivify_803:
    stable_publish_vtable_mapping $P108, $P1840
  if_1838_end:
.annotate 'line', 958
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1829"  :anon :subid("176_1337966777.064") :outer("76_1337966777.064")
    .param pmc param_1831
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 962
    .const 'Sub' $P1833 = "177_1337966777.064" 
    capture_lex $P1833
    .lex "$_", param_1831
.annotate 'line', 963
    find_lex $P110, "$_"
    unless_null $P110, vivify_795
    new $P110, "Undef"
  vivify_795:
    get_how $P111, $P110
    find_lex $P112, "$_"
    unless_null $P112, vivify_796
    new $P112, "Undef"
  vivify_796:
    $P113 = $P111."parrot_vtable_mappings"($P112, 1 :named("local"))
    defined $I101, $P113
    unless $I101, for_undef_797
    iter $P109, $P113
    new $P115, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P115, loop1836_handler
    push_eh $P115
  loop1836_test:
    unless $P109, loop1836_done
    shift $P114, $P109
  loop1836_redo:
    .const 'Sub' $P1833 = "177_1337966777.064" 
    capture_lex $P1833
    $P1833($P114)
  loop1836_next:
    goto loop1836_test
  loop1836_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P117, exception, 'type'
    eq $P117, .CONTROL_LOOP_NEXT, loop1836_next
    eq $P117, .CONTROL_LOOP_REDO, loop1836_redo
  loop1836_done:
    pop_eh 
  for_undef_797:
.annotate 'line', 962
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1832"  :anon :subid("177_1337966777.064") :outer("176_1337966777.064")
    .param pmc param_1834
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 963
    .lex "$_", param_1834
.annotate 'line', 964
    find_lex $P115, "$_"
    unless_null $P115, vivify_798
    new $P115, "Undef"
  vivify_798:
    $P116 = $P115."value"()
    find_lex $P117, "$_"
    unless_null $P117, vivify_799
    new $P117, "Undef"
  vivify_799:
    $P118 = $P117."key"()
    find_lex $P1835, "%mapping"
    unless_null $P1835, vivify_800
    $P1835 = root_new ['parrot';'Hash']
    store_lex "%mapping", $P1835
  vivify_800:
    set $P1835[$P118], $P116
.annotate 'line', 963
    .return ($P116)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_parrot_vtablee_handler_mapping" :anon :subid("77_1337966777.064") :outer("151_1337966777.064")
    .param pmc param_1842
    .param pmc param_1843
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 972
    .const 'Sub' $P1853 = "178_1337966777.064" 
    capture_lex $P1853
    .lex "self", param_1842
    .lex "$obj", param_1843
.annotate 'line', 973
    $P1845 = root_new ['parrot';'Hash']
    set $P1844, $P1845
    .lex "%mapping", $P1844
.annotate 'line', 974
    $P1847 = root_new ['parrot';'ResizablePMCArray']
    set $P1846, $P1847
    .lex "@mro_reversed", $P1846
.annotate 'line', 972
    set $P1848, $P1844
    unless_null $P1848, vivify_804
    $P1848 = root_new ['parrot';'Hash']
  vivify_804:
.annotate 'line', 974
    set $P107, param_1842
    nqp_decontainerize $P108, $P107
    nqp_get_sc_object $P109, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P1849, $P108, $P109, "@!mro", 10
    unless_null $P1849, vivify_805
    $P1849 = root_new ['parrot';'ResizablePMCArray']
  vivify_805:
    clone $P110, $P1849
    set $P1846, $P110
.annotate 'line', 975
    set $P1850, $P1846
    unless_null $P1850, vivify_806
    $P1850 = root_new ['parrot';'ResizablePMCArray']
  vivify_806:
    $P1850."reverse"()
.annotate 'line', 976
    set $P1851, $P1846
    unless_null $P1851, vivify_807
    $P1851 = root_new ['parrot';'ResizablePMCArray']
  vivify_807:
    defined $I100, $P1851
    unless $I100, for_undef_808
    iter $P107, $P1851
    new $P110, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P110, loop1860_handler
    push_eh $P110
  loop1860_test:
    unless $P107, loop1860_done
    shift $P108, $P107
  loop1860_redo:
    .const 'Sub' $P1853 = "178_1337966777.064" 
    capture_lex $P1853
    $P1853($P108)
  loop1860_next:
    goto loop1860_test
  loop1860_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P111, exception, 'type'
    eq $P111, .CONTROL_LOOP_NEXT, loop1860_next
    eq $P111, .CONTROL_LOOP_REDO, loop1860_redo
  loop1860_done:
    pop_eh 
  for_undef_808:
.annotate 'line', 981
    set $P1862, $P1844
    unless_null $P1862, vivify_815
    $P1862 = root_new ['parrot';'Hash']
  vivify_815:
    set $N100, $P1862
    if $N100, if_1861
    new $P107, 'Float'
    set $P107, $N100
    goto if_1861_end
  if_1861:
.annotate 'line', 982
    set $P108, param_1843
    unless_null $P108, vivify_816
    new $P108, "Undef"
  vivify_816:
    set $P1863, $P1844
    unless_null $P1863, vivify_817
    $P1863 = root_new ['parrot';'Hash']
  vivify_817:
    stable_publish_vtable_handler_mapping $P108, $P1863
  if_1861_end:
.annotate 'line', 972
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1852"  :anon :subid("178_1337966777.064") :outer("77_1337966777.064")
    .param pmc param_1854
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 976
    .const 'Sub' $P1856 = "179_1337966777.064" 
    capture_lex $P1856
    .lex "$_", param_1854
.annotate 'line', 977
    find_lex $P110, "$_"
    unless_null $P110, vivify_809
    new $P110, "Undef"
  vivify_809:
    get_how $P111, $P110
    find_lex $P112, "$_"
    unless_null $P112, vivify_810
    new $P112, "Undef"
  vivify_810:
    $P113 = $P111."parrot_vtable_handler_mappings"($P112, 1 :named("local"))
    defined $I101, $P113
    unless $I101, for_undef_811
    iter $P109, $P113
    new $P115, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P115, loop1859_handler
    push_eh $P115
  loop1859_test:
    unless $P109, loop1859_done
    shift $P114, $P109
  loop1859_redo:
    .const 'Sub' $P1856 = "179_1337966777.064" 
    capture_lex $P1856
    $P1856($P114)
  loop1859_next:
    goto loop1859_test
  loop1859_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P117, exception, 'type'
    eq $P117, .CONTROL_LOOP_NEXT, loop1859_next
    eq $P117, .CONTROL_LOOP_REDO, loop1859_redo
  loop1859_done:
    pop_eh 
  for_undef_811:
.annotate 'line', 976
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1855"  :anon :subid("179_1337966777.064") :outer("178_1337966777.064")
    .param pmc param_1857
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 977
    .lex "$_", param_1857
.annotate 'line', 978
    find_lex $P115, "$_"
    unless_null $P115, vivify_812
    new $P115, "Undef"
  vivify_812:
    $P116 = $P115."value"()
    find_lex $P117, "$_"
    unless_null $P117, vivify_813
    new $P117, "Undef"
  vivify_813:
    $P118 = $P117."key"()
    find_lex $P1858, "%mapping"
    unless_null $P1858, vivify_814
    $P1858 = root_new ['parrot';'Hash']
    store_lex "%mapping", $P1858
  vivify_814:
    set $P1858[$P118], $P116
.annotate 'line', 977
    .return ($P116)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parents" :anon :subid("78_1337966777.064") :outer("151_1337966777.064")
    .param pmc param_1865
    .param pmc param_1866
    .param pmc param_1867 :optional :named("local")
    .param int has_param_1867 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 990
    .lex "self", param_1865
    .lex "$obj", param_1866
    if has_param_1867, optparam_818
    new $P107, "Undef"
    set param_1867, $P107
  optparam_818:
    .lex "$local", param_1867
.annotate 'line', 991
    set $P109, param_1867
    unless_null $P109, vivify_819
    new $P109, "Undef"
  vivify_819:
    if $P109, if_1868
    set $P113, param_1865
    nqp_decontainerize $P114, $P113
    nqp_get_sc_object $P115, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P1870, $P114, $P115, "@!mro", 10
    unless_null $P1870, vivify_820
    $P1870 = root_new ['parrot';'ResizablePMCArray']
  vivify_820:
    set $P108, $P1870
    goto if_1868_end
  if_1868:
    set $P110, param_1865
    nqp_decontainerize $P111, $P110
    nqp_get_sc_object $P112, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P1869, $P111, $P112, "@!parents", 4
    unless_null $P1869, vivify_821
    $P1869 = root_new ['parrot';'ResizablePMCArray']
  vivify_821:
    set $P108, $P1869
  if_1868_end:
.annotate 'line', 990
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "mro" :anon :subid("79_1337966777.064") :outer("151_1337966777.064")
    .param pmc param_1872
    .param pmc param_1873
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 994
    .lex "self", param_1872
    .lex "$obj", param_1873
    set $P107, param_1872
    nqp_decontainerize $P108, $P107
    nqp_get_sc_object $P109, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P1874, $P108, $P109, "@!mro", 10
    unless_null $P1874, vivify_822
    $P1874 = root_new ['parrot';'ResizablePMCArray']
  vivify_822:
    .return ($P1874)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "roles" :anon :subid("80_1337966777.064") :outer("151_1337966777.064")
    .param pmc param_1876
    .param pmc param_1877
    .param pmc param_1878 :named("local")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 998
    .lex "self", param_1876
    .lex "$obj", param_1877
    .lex "$local", param_1878
    set $P107, param_1876
    nqp_decontainerize $P108, $P107
    nqp_get_sc_object $P109, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P1879, $P108, $P109, "@!roles", 5
    unless_null $P1879, vivify_823
    $P1879 = root_new ['parrot';'ResizablePMCArray']
  vivify_823:
    .return ($P1879)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "methods" :anon :subid("81_1337966777.064") :outer("151_1337966777.064")
    .param pmc param_1881
    .param pmc param_1882
    .param pmc param_1883 :optional :named("local")
    .param int has_param_1883 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1002
    .const 'Sub' $P1896 = "181_1337966777.064" 
    capture_lex $P1896
    .const 'Sub' $P1890 = "180_1337966777.064" 
    capture_lex $P1890
    .lex "self", param_1881
    .lex "$obj", param_1882
    if has_param_1883, optparam_824
    new $P107, "Undef"
    set param_1883, $P107
  optparam_824:
    .lex "$local", param_1883
.annotate 'line', 1003
    $P1885 = root_new ['parrot';'ResizablePMCArray']
    set $P1884, $P1885
    .lex "@meths", $P1884
.annotate 'line', 1002
    set $P1886, $P1884
    unless_null $P1886, vivify_825
    $P1886 = root_new ['parrot';'ResizablePMCArray']
  vivify_825:
.annotate 'line', 1004
    set $P108, param_1883
    unless_null $P108, vivify_826
    new $P108, "Undef"
  vivify_826:
    if $P108, if_1887
.annotate 'line', 1010
    set $P110, param_1881
    nqp_decontainerize $P111, $P110
    nqp_get_sc_object $P112, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P1894, $P111, $P112, "@!mro", 10
    unless_null $P1894, vivify_827
    $P1894 = root_new ['parrot';'ResizablePMCArray']
  vivify_827:
    defined $I100, $P1894
    unless $I100, for_undef_828
    iter $P109, $P1894
    new $P115, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P115, loop1903_handler
    push_eh $P115
  loop1903_test:
    unless $P109, loop1903_done
    shift $P113, $P109
  loop1903_redo:
    .const 'Sub' $P1896 = "181_1337966777.064" 
    capture_lex $P1896
    $P1896($P113)
  loop1903_next:
    goto loop1903_test
  loop1903_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P116, exception, 'type'
    eq $P116, .CONTROL_LOOP_NEXT, loop1903_next
    eq $P116, .CONTROL_LOOP_REDO, loop1903_redo
  loop1903_done:
    pop_eh 
  for_undef_828:
.annotate 'line', 1009
    goto if_1887_end
  if_1887:
.annotate 'line', 1005
    set $P110, param_1881
    nqp_decontainerize $P111, $P110
    nqp_get_sc_object $P112, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P1888, $P111, $P112, "%!methods", 2
    unless_null $P1888, vivify_834
    $P1888 = root_new ['parrot';'Hash']
  vivify_834:
    defined $I100, $P1888
    unless $I100, for_undef_835
    iter $P109, $P1888
    new $P114, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P114, loop1893_handler
    push_eh $P114
  loop1893_test:
    unless $P109, loop1893_done
    shift $P113, $P109
  loop1893_redo:
    .const 'Sub' $P1890 = "180_1337966777.064" 
    capture_lex $P1890
    $P1890($P113)
  loop1893_next:
    goto loop1893_test
  loop1893_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P115, exception, 'type'
    eq $P115, .CONTROL_LOOP_NEXT, loop1893_next
    eq $P115, .CONTROL_LOOP_REDO, loop1893_redo
  loop1893_done:
    pop_eh 
  for_undef_835:
  if_1887_end:
.annotate 'line', 1002
    set $P1904, $P1884
    unless_null $P1904, vivify_838
    $P1904 = root_new ['parrot';'ResizablePMCArray']
  vivify_838:
    .return ($P1904)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1895"  :anon :subid("181_1337966777.064") :outer("81_1337966777.064")
    .param pmc param_1897
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1010
    .const 'Sub' $P1899 = "182_1337966777.064" 
    capture_lex $P1899
    .lex "$_", param_1897
.annotate 'line', 1011
    find_lex $P115, "$_"
    unless_null $P115, vivify_829
    new $P115, "Undef"
  vivify_829:
    get_how $P116, $P115
    find_lex $P117, "$_"
    unless_null $P117, vivify_830
    new $P117, "Undef"
  vivify_830:
    $P118 = $P116."method_table"($P117)
    defined $I101, $P118
    unless $I101, for_undef_831
    iter $P114, $P118
    new $P120, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P120, loop1902_handler
    push_eh $P120
  loop1902_test:
    unless $P114, loop1902_done
    shift $P119, $P114
  loop1902_redo:
    .const 'Sub' $P1899 = "182_1337966777.064" 
    capture_lex $P1899
    $P1899($P119)
  loop1902_next:
    goto loop1902_test
  loop1902_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P121, exception, 'type'
    eq $P121, .CONTROL_LOOP_NEXT, loop1902_next
    eq $P121, .CONTROL_LOOP_REDO, loop1902_redo
  loop1902_done:
    pop_eh 
  for_undef_831:
.annotate 'line', 1010
    .return ($P114)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1898"  :anon :subid("182_1337966777.064") :outer("181_1337966777.064")
    .param pmc param_1900
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1011
    .lex "$_", param_1900
.annotate 'line', 1012
    find_lex $P1901, "@meths"
    unless_null $P1901, vivify_832
    $P1901 = root_new ['parrot';'ResizablePMCArray']
  vivify_832:
    find_lex $P120, "$_"
    unless_null $P120, vivify_833
    new $P120, "Undef"
  vivify_833:
    $P121 = $P120."value"()
    $P122 = $P1901."push"($P121)
.annotate 'line', 1011
    .return ($P122)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1889"  :anon :subid("180_1337966777.064") :outer("81_1337966777.064")
    .param pmc param_1891
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1005
    .lex "$_", param_1891
.annotate 'line', 1006
    find_lex $P1892, "@meths"
    unless_null $P1892, vivify_836
    $P1892 = root_new ['parrot';'ResizablePMCArray']
  vivify_836:
    find_lex $P114, "$_"
    unless_null $P114, vivify_837
    new $P114, "Undef"
  vivify_837:
    $P115 = $P114."value"()
    $P116 = $P1892."push"($P115)
.annotate 'line', 1005
    .return ($P116)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "method_table" :anon :subid("82_1337966777.064") :outer("151_1337966777.064")
    .param pmc param_1906
    .param pmc param_1907
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1019
    .lex "self", param_1906
    .lex "$obj", param_1907
    set $P107, param_1906
    nqp_decontainerize $P108, $P107
    nqp_get_sc_object $P109, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P1908, $P108, $P109, "%!methods", 2
    unless_null $P1908, vivify_839
    $P1908 = root_new ['parrot';'Hash']
  vivify_839:
    .return ($P1908)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "name" :anon :subid("83_1337966777.064") :outer("151_1337966777.064")
    .param pmc param_1910
    .param pmc param_1911
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1023
    .lex "self", param_1910
    .lex "$obj", param_1911
    set $P107, param_1910
    nqp_decontainerize $P108, $P107
    nqp_get_sc_object $P109, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P110, $P108, $P109, "$!name", 0
    unless_null $P110, vivify_840
    new $P110, "Undef"
  vivify_840:
    .return ($P110)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "attributes" :anon :subid("84_1337966777.064") :outer("151_1337966777.064")
    .param pmc param_1913
    .param pmc param_1914
    .param pmc param_1915 :named("local")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1027
    .const 'Sub' $P1921 = "183_1337966777.064" 
    capture_lex $P1921
    .lex "self", param_1913
    .lex "$obj", param_1914
    .lex "$local", param_1915
.annotate 'line', 1028
    $P1917 = root_new ['parrot';'ResizablePMCArray']
    set $P1916, $P1917
    .lex "@attrs", $P1916
.annotate 'line', 1027
    set $P1918, $P1916
    unless_null $P1918, vivify_841
    $P1918 = root_new ['parrot';'ResizablePMCArray']
  vivify_841:
.annotate 'line', 1029
    set $P108, param_1913
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P1919, $P109, $P110, "%!attributes", 1
    unless_null $P1919, vivify_842
    $P1919 = root_new ['parrot';'Hash']
  vivify_842:
    defined $I100, $P1919
    unless $I100, for_undef_843
    iter $P107, $P1919
    new $P112, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P112, loop1924_handler
    push_eh $P112
  loop1924_test:
    unless $P107, loop1924_done
    shift $P111, $P107
  loop1924_redo:
    .const 'Sub' $P1921 = "183_1337966777.064" 
    capture_lex $P1921
    $P1921($P111)
  loop1924_next:
    goto loop1924_test
  loop1924_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P113, exception, 'type'
    eq $P113, .CONTROL_LOOP_NEXT, loop1924_next
    eq $P113, .CONTROL_LOOP_REDO, loop1924_redo
  loop1924_done:
    pop_eh 
  for_undef_843:
.annotate 'line', 1027
    set $P1925, $P1916
    unless_null $P1925, vivify_846
    $P1925 = root_new ['parrot';'ResizablePMCArray']
  vivify_846:
    .return ($P1925)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1920"  :anon :subid("183_1337966777.064") :outer("84_1337966777.064")
    .param pmc param_1922
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1029
    .lex "$_", param_1922
.annotate 'line', 1030
    find_lex $P1923, "@attrs"
    unless_null $P1923, vivify_844
    $P1923 = root_new ['parrot';'ResizablePMCArray']
  vivify_844:
    find_lex $P112, "$_"
    unless_null $P112, vivify_845
    new $P112, "Undef"
  vivify_845:
    $P113 = $P112."value"()
    $P114 = $P1923."push"($P113)
.annotate 'line', 1029
    .return ($P114)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parrot_vtable_mappings" :anon :subid("85_1337966777.064") :outer("151_1337966777.064")
    .param pmc param_1927
    .param pmc param_1928
    .param pmc param_1929 :named("local")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1035
    .lex "self", param_1927
    .lex "$obj", param_1928
    .lex "$local", param_1929
    set $P107, param_1927
    nqp_decontainerize $P108, $P107
    nqp_get_sc_object $P109, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P1930, $P108, $P109, "%!parrot_vtable_mapping", 12
    unless_null $P1930, vivify_847
    $P1930 = root_new ['parrot';'Hash']
  vivify_847:
    .return ($P1930)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parrot_vtable_handler_mappings" :anon :subid("86_1337966777.064") :outer("151_1337966777.064")
    .param pmc param_1932
    .param pmc param_1933
    .param pmc param_1934 :named("local")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1039
    .lex "self", param_1932
    .lex "$obj", param_1933
    .lex "$local", param_1934
    set $P107, param_1932
    nqp_decontainerize $P108, $P107
    nqp_get_sc_object $P109, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P1935, $P108, $P109, "%!parrot_vtable_handler_mapping", 13
    unless_null $P1935, vivify_848
    $P1935 = root_new ['parrot';'Hash']
  vivify_848:
    .return ($P1935)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "isa" :anon :subid("87_1337966777.064") :outer("151_1337966777.064")
    .param pmc param_1939
    .param pmc param_1940
    .param pmc param_1941
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1047
    new $P1938, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P1938, control_1937
    push_eh $P1938
    .lex "self", param_1939
    .lex "$obj", param_1940
    .lex "$check", param_1941
.annotate 'line', 1048
    new $P107, "Undef"
    set $P1942, $P107
    .lex "$check-class", $P1942
.annotate 'line', 1049
    new $P108, "Undef"
    set $P1943, $P108
    .lex "$i", $P1943
.annotate 'line', 1048
    set $P109, param_1941
    unless_null $P109, vivify_849
    new $P109, "Undef"
  vivify_849:
    get_what $P110, $P109
    set $P1942, $P110
.annotate 'line', 1049
    set $P109, param_1939
    nqp_decontainerize $P110, $P109
    nqp_get_sc_object $P111, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P1944, $P110, $P111, "@!mro", 10
    unless_null $P1944, vivify_850
    $P1944 = root_new ['parrot';'ResizablePMCArray']
  vivify_850:
    set $N100, $P1944
    new $P112, 'Float'
    set $P112, $N100
    set $P1943, $P112
.annotate 'line', 1050
    new $P110, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P110, loop1947_handler
    push_eh $P110
  loop1947_test:
    set $P109, $P1943
    unless_null $P109, vivify_851
    new $P109, "Undef"
  vivify_851:
    set $N100, $P109
    set $N101, 0
    isgt $I100, $N100, $N101
    unless $I100, loop1947_done
  loop1947_redo:
.annotate 'line', 1051
    set $P110, $P1943
    unless_null $P110, vivify_852
    new $P110, "Undef"
  vivify_852:
    sub $P111, $P110, 1
    set $P1943, $P111
.annotate 'line', 1052
    set $P110, $P1943
    unless_null $P110, vivify_853
    new $P110, "Undef"
  vivify_853:
    set $I101, $P110
    set $P111, param_1939
    nqp_decontainerize $P112, $P111
    nqp_get_sc_object $P113, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P1946, $P112, $P113, "@!mro", 10
    unless_null $P1946, vivify_854
    $P1946 = root_new ['parrot';'ResizablePMCArray']
  vivify_854:
    set $P114, $P1946[$I101]
    unless_null $P114, vivify_855
    new $P114, "Undef"
  vivify_855:
    set $P115, $P1942
    unless_null $P115, vivify_856
    new $P115, "Undef"
  vivify_856:
    issame $I102, $P114, $P115
    unless $I102, if_1945_end
.annotate 'line', 1053
    new $P116, "Exception"
    set $P116['type'], .CONTROL_RETURN
    new $P117, "Float"
    assign $P117, 1
    setattribute $P116, 'payload', $P117
    throw $P116
  if_1945_end:
  loop1947_next:
.annotate 'line', 1050
    goto loop1947_test
  loop1947_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P111, exception, 'type'
    eq $P111, .CONTROL_LOOP_NEXT, loop1947_next
    eq $P111, .CONTROL_LOOP_REDO, loop1947_redo
  loop1947_done:
    pop_eh 
.annotate 'line', 1056
    new $P109, "Exception"
    set $P109['type'], .CONTROL_RETURN
    new $P110, "Float"
    assign $P110, 0
    setattribute $P109, 'payload', $P110
    throw $P109
.annotate 'line', 1047
    .return ()
  control_1937:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P109, exception, "payload"
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "does" :anon :subid("88_1337966777.064") :outer("151_1337966777.064")
    .param pmc param_1951
    .param pmc param_1952
    .param pmc param_1953
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1059
    new $P1950, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P1950, control_1949
    push_eh $P1950
    .lex "self", param_1951
    .lex "$obj", param_1952
    .lex "$check", param_1953
.annotate 'line', 1060
    new $P107, "Undef"
    set $P1954, $P107
    .lex "$i", $P1954
    set $P108, param_1951
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P1955, $P109, $P110, "@!done", 11
    unless_null $P1955, vivify_857
    $P1955 = root_new ['parrot';'ResizablePMCArray']
  vivify_857:
    set $N100, $P1955
    new $P111, 'Float'
    set $P111, $N100
    set $P1954, $P111
.annotate 'line', 1061
    new $P109, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P109, loop1958_handler
    push_eh $P109
  loop1958_test:
    set $P108, $P1954
    unless_null $P108, vivify_858
    new $P108, "Undef"
  vivify_858:
    set $N100, $P108
    set $N101, 0
    isgt $I100, $N100, $N101
    unless $I100, loop1958_done
  loop1958_redo:
.annotate 'line', 1062
    set $P109, $P1954
    unless_null $P109, vivify_859
    new $P109, "Undef"
  vivify_859:
    sub $P110, $P109, 1
    set $P1954, $P110
.annotate 'line', 1063
    set $P109, $P1954
    unless_null $P109, vivify_860
    new $P109, "Undef"
  vivify_860:
    set $I101, $P109
    set $P110, param_1951
    nqp_decontainerize $P111, $P110
    nqp_get_sc_object $P112, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P1957, $P111, $P112, "@!done", 11
    unless_null $P1957, vivify_861
    $P1957 = root_new ['parrot';'ResizablePMCArray']
  vivify_861:
    set $P113, $P1957[$I101]
    unless_null $P113, vivify_862
    new $P113, "Undef"
  vivify_862:
    set $P114, param_1953
    unless_null $P114, vivify_863
    new $P114, "Undef"
  vivify_863:
    issame $I102, $P113, $P114
    unless $I102, if_1956_end
.annotate 'line', 1064
    new $P115, "Exception"
    set $P115['type'], .CONTROL_RETURN
    new $P116, "Float"
    assign $P116, 1
    setattribute $P115, 'payload', $P116
    throw $P115
  if_1956_end:
  loop1958_next:
.annotate 'line', 1061
    goto loop1958_test
  loop1958_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P110, exception, 'type'
    eq $P110, .CONTROL_LOOP_NEXT, loop1958_next
    eq $P110, .CONTROL_LOOP_REDO, loop1958_redo
  loop1958_done:
    pop_eh 
.annotate 'line', 1067
    new $P108, "Exception"
    set $P108['type'], .CONTROL_RETURN
    new $P109, "Float"
    assign $P109, 0
    setattribute $P108, 'payload', $P109
    throw $P108
.annotate 'line', 1059
    .return ()
  control_1949:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, "payload"
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "can" :anon :subid("89_1337966777.064") :outer("151_1337966777.064")
    .param pmc param_1962
    .param pmc param_1963
    .param pmc param_1964
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1070
    .const 'Sub' $P1967 = "184_1337966777.064" 
    capture_lex $P1967
    new $P1961, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P1961, control_1960
    push_eh $P1961
    .lex "self", param_1962
    .lex "$obj", param_1963
    .lex "$name", param_1964
.annotate 'line', 1071
    set $P108, param_1962
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P1965, $P109, $P110, "@!mro", 10
    unless_null $P1965, vivify_864
    $P1965 = root_new ['parrot';'ResizablePMCArray']
  vivify_864:
    defined $I100, $P1965
    unless $I100, for_undef_865
    iter $P107, $P1965
    new $P114, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P114, loop1974_handler
    push_eh $P114
  loop1974_test:
    unless $P107, loop1974_done
    shift $P111, $P107
  loop1974_redo:
    .const 'Sub' $P1967 = "184_1337966777.064" 
    capture_lex $P1967
    $P1967($P111)
  loop1974_next:
    goto loop1974_test
  loop1974_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P115, exception, 'type'
    eq $P115, .CONTROL_LOOP_NEXT, loop1974_next
    eq $P115, .CONTROL_LOOP_REDO, loop1974_redo
  loop1974_done:
    pop_eh 
  for_undef_865:
.annotate 'line', 1078
    new $P107, "Exception"
    set $P107['type'], .CONTROL_RETURN
    new $P108, "Float"
    assign $P108, 0
    setattribute $P107, 'payload', $P108
    throw $P107
.annotate 'line', 1070
    .return ()
  control_1960:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P107, exception, "payload"
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1966"  :anon :subid("184_1337966777.064") :outer("89_1337966777.064")
    .param pmc param_1971
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1072
    $P1969 = root_new ['parrot';'Hash']
    set $P1968, $P1969
    .lex "%meths", $P1968
.annotate 'line', 1073
    new $P112, "Undef"
    set $P1970, $P112
    .lex "$can", $P1970
    .lex "$_", param_1971
.annotate 'line', 1072
    find_lex $P113, "$_"
    unless_null $P113, vivify_866
    new $P113, "Undef"
  vivify_866:
    get_how $P114, $P113
    find_lex $P115, "$obj"
    unless_null $P115, vivify_867
    new $P115, "Undef"
  vivify_867:
    $P116 = $P114."method_table"($P115)
    set $P1968, $P116
.annotate 'line', 1073
    find_lex $P113, "$name"
    unless_null $P113, vivify_868
    new $P113, "Undef"
  vivify_868:
    set $P1972, $P1968
    unless_null $P1972, vivify_869
    $P1972 = root_new ['parrot';'Hash']
  vivify_869:
    set $P114, $P1972[$P113]
    unless_null $P114, vivify_870
    new $P114, "Undef"
  vivify_870:
    set $P1970, $P114
.annotate 'line', 1074
    set $P114, $P1970
    unless_null $P114, vivify_871
    new $P114, "Undef"
  vivify_871:
    defined $I101, $P114
    if $I101, if_1973
    new $P113, 'Integer'
    set $P113, $I101
    goto if_1973_end
  if_1973:
.annotate 'line', 1075
    new $P115, "Exception"
    set $P115['type'], .CONTROL_RETURN
    set $P116, $P1970
    unless_null $P116, vivify_872
    new $P116, "Undef"
  vivify_872:
    setattribute $P115, 'payload', $P116
    throw $P115
  if_1973_end:
.annotate 'line', 1071
    .return ($P113)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "find_method" :anon :subid("90_1337966777.064") :outer("151_1337966777.064")
    .param pmc param_1978
    .param pmc param_1979
    .param pmc param_1980
    .param pmc param_1981 :optional :named("no_fallback")
    .param int has_param_1981 :opt_flag
    .param pmc param_1982 :optional :named("no_trace")
    .param int has_param_1982 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1084
    .const 'Sub' $P1985 = "185_1337966777.064" 
    capture_lex $P1985
    new $P1977, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P1977, control_1976
    push_eh $P1977
    .lex "self", param_1978
    .lex "$obj", param_1979
    .lex "$name", param_1980
    if has_param_1981, optparam_873
    new $P107, "Undef"
    set param_1981, $P107
  optparam_873:
    .lex "$no_fallback", param_1981
    if has_param_1982, optparam_874
    new $P108, "Undef"
    set param_1982, $P108
  optparam_874:
    .lex "$no_trace", param_1982
.annotate 'line', 1085
    set $P110, param_1978
    nqp_decontainerize $P111, $P110
    nqp_get_sc_object $P112, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P1983, $P111, $P112, "@!mro", 10
    unless_null $P1983, vivify_875
    $P1983 = root_new ['parrot';'ResizablePMCArray']
  vivify_875:
    defined $I100, $P1983
    unless $I100, for_undef_876
    iter $P109, $P1983
    new $P116, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P116, loop2003_handler
    push_eh $P116
  loop2003_test:
    unless $P109, loop2003_done
    shift $P113, $P109
  loop2003_redo:
    .const 'Sub' $P1985 = "185_1337966777.064" 
    capture_lex $P1985
    $P1985($P113)
  loop2003_next:
    goto loop2003_test
  loop2003_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P117, exception, 'type'
    eq $P117, .CONTROL_LOOP_NEXT, loop2003_next
    eq $P117, .CONTROL_LOOP_REDO, loop2003_redo
  loop2003_done:
    pop_eh 
  for_undef_876:
.annotate 'line', 1100
    null $P109
.annotate 'line', 1084
    .return ($P109)
  control_1976:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P110, exception, "payload"
    .return ($P110)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1984"  :anon :subid("185_1337966777.064") :outer("90_1337966777.064")
    .param pmc param_1989
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1085
    .const 'Sub' $P1996 = "186_1337966777.064" 
    capture_lex $P1996
.annotate 'line', 1086
    $P1987 = root_new ['parrot';'Hash']
    set $P1986, $P1987
    .lex "%meths", $P1986
.annotate 'line', 1087
    new $P114, "Undef"
    set $P1988, $P114
    .lex "$found", $P1988
    .lex "$_", param_1989
.annotate 'line', 1086
    find_lex $P115, "$_"
    unless_null $P115, vivify_877
    new $P115, "Undef"
  vivify_877:
    get_how $P116, $P115
    find_lex $P117, "$obj"
    unless_null $P117, vivify_878
    new $P117, "Undef"
  vivify_878:
    $P118 = $P116."method_table"($P117)
    set $P1986, $P118
.annotate 'line', 1087
    find_lex $P115, "$name"
    unless_null $P115, vivify_879
    new $P115, "Undef"
  vivify_879:
    set $P1990, $P1986
    unless_null $P1990, vivify_880
    $P1990 = root_new ['parrot';'Hash']
  vivify_880:
    set $P116, $P1990[$P115]
    unless_null $P116, vivify_881
    new $P116, "Undef"
  vivify_881:
    set $P1988, $P116
.annotate 'line', 1088
    set $P116, $P1988
    unless_null $P116, vivify_882
    new $P116, "Undef"
  vivify_882:
    defined $I101, $P116
    if $I101, if_1991
    new $P115, 'Integer'
    set $P115, $I101
    goto if_1991_end
  if_1991:
.annotate 'line', 1089
    new $P117, "Exception"
    set $P117['type'], .CONTROL_RETURN
    find_lex $P121, "self"
    nqp_decontainerize $P122, $P121
    nqp_get_sc_object $P123, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P124, $P122, $P123, "$!trace", 14
    unless_null $P124, vivify_883
    new $P124, "Undef"
  vivify_883:
    if $P124, if_1994
    set $P120, $P124
    goto if_1994_end
  if_1994:
    find_lex $P125, "$no_trace"
    unless_null $P125, vivify_884
    new $P125, "Undef"
  vivify_884:
    isfalse $I102, $P125
    new $P120, 'Integer'
    set $P120, $I102
  if_1994_end:
    if $P120, if_1993
    set $P119, $P120
    goto if_1993_end
  if_1993:
    find_lex $P126, "$name"
    unless_null $P126, vivify_885
    new $P126, "Undef"
  vivify_885:
    set $S100, $P126
    substr $S101, $S100, 0, 1
    isne $I103, $S101, "!"
    new $P119, 'Integer'
    set $P119, $I103
  if_1993_end:
    if $P119, if_1992
    set $P129, $P1988
    unless_null $P129, vivify_886
    new $P129, "Undef"
  vivify_886:
    set $P118, $P129
    goto if_1992_end
  if_1992:
.annotate 'line', 1090
    .const 'Sub' $P1996 = "186_1337966777.064" 
    newclosure $P2002, $P1996
    set $P118, $P2002
  if_1992_end:
.annotate 'line', 1089
    setattribute $P117, 'payload', $P118
    throw $P117
  if_1991_end:
.annotate 'line', 1085
    .return ($P115)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1995"  :anon :subid("186_1337966777.064") :outer("185_1337966777.064")
    .param pmc param_1997 :slurpy
    .param pmc param_1998 :slurpy :named
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1090
    .lex "@pos", param_1997
    .lex "%named", param_1998
.annotate 'line', 1093
    new $P127, "Undef"
    set $P1999, $P127
    .lex "$result", $P1999
.annotate 'line', 1091
    find_lex $P128, "self"
    nqp_decontainerize $P129, $P128
    nqp_get_sc_object $P130, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P131, $P129, $P130, "$!trace_depth", 15
    unless_null $P131, vivify_887
    new $P131, "Undef"
  vivify_887:
    set $I104, $P131
    repeat $S102, "  ", $I104
    new $P132, 'String'
    set $P132, $S102
    new $P133, 'String'
    set $P133, "Calling "
    find_lex $P134, "$name"
    unless_null $P134, vivify_888
    new $P134, "Undef"
  vivify_888:
    concat $P135, $P133, $P134
    concat $P136, $P132, $P135
    "say"($P136)
.annotate 'line', 1092
    find_lex $P128, "self"
    nqp_decontainerize $P129, $P128
    nqp_get_sc_object $P130, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P131, $P129, $P130, "$!trace_depth", 15
    unless_null $P131, vivify_889
    new $P131, "Undef"
  vivify_889:
    add $P132, $P131, 1
    find_lex $P133, "self"
    nqp_decontainerize $P134, $P133
    nqp_get_sc_object $P135, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_bind_attr_obj $P134, $P135, "$!trace_depth", 15, $P132
.annotate 'line', 1093
    find_lex $P128, "$found"
    unless_null $P128, vivify_890
    new $P128, "Undef"
  vivify_890:
    set $P2000, param_1997
    unless_null $P2000, vivify_891
    $P2000 = root_new ['parrot';'ResizablePMCArray']
  vivify_891:
    set $P2001, param_1998
    unless_null $P2001, vivify_892
    $P2001 = root_new ['parrot';'Hash']
  vivify_892:
    $P129 = $P128($P2000 :flat, $P2001 :flat)
    set $P1999, $P129
.annotate 'line', 1094
    find_lex $P128, "self"
    nqp_decontainerize $P129, $P128
    nqp_get_sc_object $P130, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_get_attr_obj $P131, $P129, $P130, "$!trace_depth", 15
    unless_null $P131, vivify_893
    new $P131, "Undef"
  vivify_893:
    sub $P132, $P131, 1
    find_lex $P133, "self"
    nqp_decontainerize $P134, $P133
    nqp_get_sc_object $P135, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_bind_attr_obj $P134, $P135, "$!trace_depth", 15, $P132
.annotate 'line', 1090
    set $P128, $P1999
    unless_null $P128, vivify_894
    new $P128, "Undef"
  vivify_894:
    .return ($P128)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "cache" :anon :subid("91_1337966777.064") :outer("151_1337966777.064")
    .param pmc param_2005
    .param pmc param_2006
    .param pmc param_2007
    .param pmc param_2008
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1106
    .lex "self", param_2005
    .lex "$obj", param_2006
    .lex "$key", param_2007
    .lex "$value_generator", param_2008
.annotate 'line', 1107
    set $P107, param_2005
    nqp_decontainerize $P108, $P107
    get_id $I100, $P108
    set $S100, $I100
    find_lex $P2010, "%caches"
    unless_null $P2010, vivify_895
    $P2010 = root_new ['parrot';'Hash']
  vivify_895:
    exists $I101, $P2010[$S100]
    if $I101, unless_2009_end
    $P2011 = root_new ['parrot';'Hash']
    set $P109, param_2005
    nqp_decontainerize $P110, $P109
    get_id $I102, $P110
    find_lex $P2012, "%caches"
    unless_null $P2012, vivify_896
    $P2012 = root_new ['parrot';'Hash']
    store_lex "%caches", $P2012
  vivify_896:
    set $P2012[$I102], $P2011
  unless_2009_end:
.annotate 'line', 1108
    set $P111, param_2007
    unless_null $P111, vivify_897
    new $P111, "Undef"
  vivify_897:
    set $P108, param_2005
    nqp_decontainerize $P109, $P108
    get_id $I100, $P109
    find_lex $P2014, "%caches"
    unless_null $P2014, vivify_898
    $P2014 = root_new ['parrot';'Hash']
  vivify_898:
    set $P110, $P2014[$I100]
    unless_null $P110, vivify_899
    new $P110, "Undef"
  vivify_899:
    exists $I101, $P110[$P111]
    if $I101, if_2013
.annotate 'line', 1110
    set $P116, param_2008
    unless_null $P116, vivify_900
    new $P116, "Undef"
  vivify_900:
    $P117 = $P116()
    set $P118, param_2007
    unless_null $P118, vivify_901
    new $P118, "Undef"
  vivify_901:
    set $P119, param_2005
    nqp_decontainerize $P120, $P119
    get_id $I103, $P120
    find_lex $P2017, "%caches"
    unless_null $P2017, vivify_902
    $P2017 = root_new ['parrot';'Hash']
    store_lex "%caches", $P2017
  vivify_902:
    set $P2018, $P2017[$I103]
    unless_null $P2018, vivify_903
    $P2018 = root_new ['parrot';'Hash']
    set $P2017[$I103], $P2018
  vivify_903:
    set $P2018[$P118], $P117
    set $P107, $P117
.annotate 'line', 1108
    goto if_2013_end
  if_2013:
    set $P112, param_2007
    unless_null $P112, vivify_904
    new $P112, "Undef"
  vivify_904:
.annotate 'line', 1109
    set $P113, param_2005
    nqp_decontainerize $P114, $P113
    get_id $I102, $P114
    find_lex $P2015, "%caches"
    unless_null $P2015, vivify_905
    $P2015 = root_new ['parrot';'Hash']
  vivify_905:
    set $P2016, $P2015[$I102]
    unless_null $P2016, vivify_906
    $P2016 = root_new ['parrot';'Hash']
  vivify_906:
.annotate 'line', 1108
    set $P115, $P2016[$P112]
    unless_null $P115, vivify_907
    new $P115, "Undef"
  vivify_907:
    set $P107, $P115
  if_2013_end:
.annotate 'line', 1106
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "trace-on" :anon :subid("92_1337966777.064") :outer("151_1337966777.064")
    .param pmc param_2020
    .param pmc param_2021
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1116
    .lex "self", param_2020
    .lex "$obj", param_2021
.annotate 'line', 1117
    new $P107, "Float"
    assign $P107, 1
    set $P108, param_2020
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_bind_attr_obj $P109, $P110, "$!trace", 14, $P107
.annotate 'line', 1118
    new $P107, "Float"
    assign $P107, 0
    set $P108, param_2020
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_bind_attr_obj $P109, $P110, "$!trace_depth", 15, $P107
.annotate 'line', 1119
    set $P107, param_2021
    unless_null $P107, vivify_908
    new $P107, "Undef"
  vivify_908:
    set_method_cache_authoritativeness $P107, 0
.annotate 'line', 1120
    set $P107, param_2021
    unless_null $P107, vivify_909
    new $P107, "Undef"
  vivify_909:
    new $P108, "Hash"
    publish_method_cache $P107, $P108
.annotate 'line', 1116
    .return ()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "trace-off" :anon :subid("93_1337966777.064") :outer("151_1337966777.064")
    .param pmc param_2023
    .param pmc param_2024
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1122
    .lex "self", param_2023
    .lex "$obj", param_2024
.annotate 'line', 1123
    new $P107, "Float"
    assign $P107, 0
    set $P108, param_2023
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 6
    repr_bind_attr_obj $P109, $P110, "$!trace", 14, $P107
.annotate 'line', 1122
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "_block2026"  :subid("187_1337966777.064") :outer("121_1337966777.064")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1128
    .const 'Sub' $P2063 = "102_1337966777.064" 
    capture_lex $P2063
    .const 'Sub' $P2060 = "101_1337966777.064" 
    capture_lex $P2060
    .const 'Sub' $P2056 = "100_1337966777.064" 
    capture_lex $P2056
    .const 'Sub' $P2051 = "99_1337966777.064" 
    capture_lex $P2051
    .const 'Sub' $P2046 = "98_1337966777.064" 
    capture_lex $P2046
    .const 'Sub' $P2040 = "97_1337966777.064" 
    capture_lex $P2040
    .const 'Sub' $P2037 = "96_1337966777.064" 
    capture_lex $P2037
    .const 'Sub' $P2033 = "95_1337966777.064" 
    capture_lex $P2033
    .const 'Sub' $P2031 = "94_1337966777.064" 
    capture_lex $P2031
.annotate 'line', 1132
    new $P100, "Undef"
    set $P2028, $P100
    .lex "$archetypes", $P2028
    .lex "$?PACKAGE", $P2029
    .lex "$?CLASS", $P2030
    find_lex $P101, "Archetypes"
    $P102 = $P101."new"(1 :named("nominal"))
    set $P2028, $P102
.annotate 'line', 1173
    .const 'Sub' $P2063 = "102_1337966777.064" 
    newclosure $P2066, $P2063
.annotate 'line', 1128
    .return ($P2066)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "archetypes" :anon :subid("94_1337966777.064") :outer("187_1337966777.064")
    .param pmc param_2032
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1133
    .lex "self", param_2032
    find_lex $P101, "$archetypes"
    unless_null $P101, vivify_910
    new $P101, "Undef"
  vivify_910:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "new" :anon :subid("95_1337966777.064") :outer("187_1337966777.064")
    .param pmc param_2034
    .param pmc param_2035 :optional :named("name")
    .param int has_param_2035 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1137
    .lex "self", param_2034
    if has_param_2035, optparam_911
    new $P101, "Undef"
    set param_2035, $P101
  optparam_911:
    .lex "$name", param_2035
.annotate 'line', 1138
    new $P102, "Undef"
    set $P2036, $P102
    .lex "$obj", $P2036
    set $P103, param_2034
    nqp_decontainerize $P104, $P103
    repr_instance_of $P105, $P104
    set $P2036, $P105
.annotate 'line', 1139
    set $P103, $P2036
    unless_null $P103, vivify_912
    new $P103, "Undef"
  vivify_912:
    set $P104, param_2035
    unless_null $P104, vivify_913
    new $P104, "Undef"
  vivify_913:
    $P103."BUILD"($P104 :named("name"))
.annotate 'line', 1137
    set $P103, $P2036
    unless_null $P103, vivify_914
    new $P103, "Undef"
  vivify_914:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "BUILD" :anon :subid("96_1337966777.064") :outer("187_1337966777.064")
    .param pmc param_2038
    .param pmc param_2039 :optional :named("name")
    .param int has_param_2039 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1143
    .lex "self", param_2038
    if has_param_2039, optparam_915
    new $P101, "Undef"
    set param_2039, $P101
  optparam_915:
    .lex "$name", param_2039
.annotate 'line', 1144
    set $P102, param_2039
    unless_null $P102, vivify_916
    new $P102, "Undef"
  vivify_916:
    set $P103, param_2038
    nqp_decontainerize $P104, $P103
    nqp_get_sc_object $P105, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 7
    repr_bind_attr_obj $P104, $P105, "$!name", 0, $P102
.annotate 'line', 1143
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "new_type" :anon :subid("97_1337966777.064") :outer("187_1337966777.064")
    .param pmc param_2041
    .param pmc param_2043 :named("repr")
    .param pmc param_2042 :optional :named("name")
    .param int has_param_2042 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1150
    .lex "self", param_2041
    if has_param_2042, optparam_917
    new $P101, "String"
    assign $P101, "<anon>"
    set param_2042, $P101
  optparam_917:
    .lex "$name", param_2042
    .lex "$repr", param_2043
.annotate 'line', 1151
    new $P102, "Undef"
    set $P2044, $P102
    .lex "$metaclass", $P2044
    set $P103, param_2041
    nqp_decontainerize $P104, $P103
    set $P105, param_2042
    unless_null $P105, vivify_918
    new $P105, "Undef"
  vivify_918:
    $P106 = $P104."new"($P105 :named("name"))
    set $P2044, $P106
.annotate 'line', 1153
    set $P103, $P2044
    unless_null $P103, vivify_919
    new $P103, "Undef"
  vivify_919:
    set $P104, param_2043
    unless_null $P104, vivify_920
    new $P104, "Undef"
  vivify_920:
    set $S100, $P104
    repr_type_object_for $P105, $P103, $S100
    $P2045 = root_new ['parrot';'Hash']
    set_who $P105, $P2045
.annotate 'line', 1150
    .return ($P105)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_method" :anon :subid("98_1337966777.064") :outer("187_1337966777.064")
    .param pmc param_2047
    .param pmc param_2048
    .param pmc param_2049
    .param pmc param_2050
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1157
    .lex "self", param_2047
    .lex "$obj", param_2048
    .lex "$name", param_2049
    .lex "$code_obj", param_2050
.annotate 'line', 1158
    die "Native types may not have methods (must be boxed to call method)"
.annotate 'line', 1157
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_multi_method" :anon :subid("99_1337966777.064") :outer("187_1337966777.064")
    .param pmc param_2052
    .param pmc param_2053
    .param pmc param_2054
    .param pmc param_2055
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1161
    .lex "self", param_2052
    .lex "$obj", param_2053
    .lex "$name", param_2054
    .lex "$code_obj", param_2055
.annotate 'line', 1162
    die "Native types may not have methods (must be boxed to call method)"
.annotate 'line', 1161
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_attribute" :anon :subid("100_1337966777.064") :outer("187_1337966777.064")
    .param pmc param_2057
    .param pmc param_2058
    .param pmc param_2059
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1165
    .lex "self", param_2057
    .lex "$obj", param_2058
    .lex "$meta_attr", param_2059
.annotate 'line', 1166
    die "Native types may not have attributes"
.annotate 'line', 1165
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "compose" :anon :subid("101_1337966777.064") :outer("187_1337966777.064")
    .param pmc param_2061
    .param pmc param_2062
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1169
    .lex "self", param_2061
    .lex "$obj", param_2062
.annotate 'line', 1170
    new $P101, "Float"
    assign $P101, 1
    set $P102, param_2061
    nqp_decontainerize $P103, $P102
    nqp_get_sc_object $P104, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 7
    repr_bind_attr_obj $P103, $P104, "$!composed", 1, $P101
.annotate 'line', 1169
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "name" :anon :subid("102_1337966777.064") :outer("187_1337966777.064")
    .param pmc param_2064
    .param pmc param_2065
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1173
    .lex "self", param_2064
    .lex "$obj", param_2065
    set $P101, param_2064
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 7
    repr_get_attr_obj $P104, $P102, $P103, "$!name", 0
    unless_null $P104, vivify_921
    new $P104, "Undef"
  vivify_921:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2067"  :subid("188_1337966777.064") :outer("121_1337966777.064")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1179
    .const 'Sub' $P2116 = "111_1337966777.064" 
    capture_lex $P2116
    .const 'Sub' $P2113 = "110_1337966777.064" 
    capture_lex $P2113
    .const 'Sub' $P2110 = "109_1337966777.064" 
    capture_lex $P2110
    .const 'Sub' $P2108 = "108_1337966777.064" 
    capture_lex $P2108
    .const 'Sub' $P2106 = "107_1337966777.064" 
    capture_lex $P2106
    .const 'Sub' $P2103 = "106_1337966777.064" 
    capture_lex $P2103
    .const 'Sub' $P2101 = "105_1337966777.064" 
    capture_lex $P2101
    .const 'Sub' $P2095 = "104_1337966777.064" 
    capture_lex $P2095
    .const 'Sub' $P2087 = "103_1337966777.064" 
    capture_lex $P2087
    .const 'Sub' $P2070 = "189_1337966777.064" 
    capture_lex $P2070
.annotate 'line', 1250
    .const 'Sub' $P2070 = "189_1337966777.064" 
    newclosure $P2084, $P2070
    set $P2069, $P2084
    .lex "has_method", $P2069
.annotate 'line', 1179
    .lex "$?PACKAGE", $P2085
    .lex "$?CLASS", $P2086
    set $P101, $P2069
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "has_method"  :subid("189_1337966777.064") :outer("188_1337966777.064")
    .param pmc param_2073
    .param pmc param_2074
    .param pmc param_2075
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1250
    .const 'Sub' $P2080 = "190_1337966777.064" 
    capture_lex $P2080
    new $P2072, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P2072, control_2071
    push_eh $P2072
    .lex "$target", param_2073
    .lex "$name", param_2074
    .lex "$local", param_2075
.annotate 'line', 1251
    $P2077 = root_new ['parrot';'ResizablePMCArray']
    set $P2076, $P2077
    .lex "@methods", $P2076
    set $P100, param_2073
    unless_null $P100, vivify_922
    new $P100, "Undef"
  vivify_922:
    get_how $P101, $P100
    set $P102, param_2073
    unless_null $P102, vivify_923
    new $P102, "Undef"
  vivify_923:
    set $P103, param_2075
    unless_null $P103, vivify_924
    new $P103, "Undef"
  vivify_924:
    $P104 = $P101."methods"($P102, $P103 :named("local"))
    set $P2076, $P104
.annotate 'line', 1252
    set $P2078, $P2076
    unless_null $P2078, vivify_925
    $P2078 = root_new ['parrot';'ResizablePMCArray']
  vivify_925:
    defined $I100, $P2078
    unless $I100, for_undef_926
    iter $P100, $P2078
    new $P103, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P103, loop2083_handler
    push_eh $P103
  loop2083_test:
    unless $P100, loop2083_done
    shift $P101, $P100
  loop2083_redo:
    .const 'Sub' $P2080 = "190_1337966777.064" 
    capture_lex $P2080
    $P2080($P101)
  loop2083_next:
    goto loop2083_test
  loop2083_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P104, exception, 'type'
    eq $P104, .CONTROL_LOOP_NEXT, loop2083_next
    eq $P104, .CONTROL_LOOP_REDO, loop2083_redo
  loop2083_done:
    pop_eh 
  for_undef_926:
.annotate 'line', 1255
    new $P100, "Exception"
    set $P100['type'], .CONTROL_RETURN
    new $P101, "Float"
    assign $P101, 0
    setattribute $P100, 'payload', $P101
    throw $P100
.annotate 'line', 1250
    .return ()
  control_2071:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P100, exception, "payload"
    .return ($P100)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "_block2079"  :anon :subid("190_1337966777.064") :outer("189_1337966777.064")
    .param pmc param_2081
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1252
    .lex "$_", param_2081
.annotate 'line', 1253
    find_lex $P103, "$_"
    unless_null $P103, vivify_927
    new $P103, "Undef"
  vivify_927:
    set $S100, $P103
    find_lex $P104, "$name"
    unless_null $P104, vivify_928
    new $P104, "Undef"
  vivify_928:
    set $S101, $P104
    iseq $I101, $S100, $S101
    if $I101, if_2082
    new $P102, 'Integer'
    set $P102, $I101
    goto if_2082_end
  if_2082:
    new $P105, "Exception"
    set $P105['type'], .CONTROL_RETURN
    new $P106, "Float"
    assign $P106, 1
    setattribute $P105, 'payload', $P106
    throw $P105
  if_2082_end:
.annotate 'line', 1252
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "new" :anon :subid("103_1337966777.064") :outer("188_1337966777.064")
    .param pmc param_2088
    .param pmc param_2089 :named("name")
    .param pmc param_2090 :optional :named("box_target")
    .param int has_param_2090 :opt_flag
    .param pmc param_2091 :slurpy :named
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1185
    .lex "self", param_2088
    .lex "$name", param_2089
    if has_param_2090, optparam_929
    new $P101, "Undef"
    set param_2090, $P101
  optparam_929:
    .lex "$box_target", param_2090
    .lex "%extra", param_2091
.annotate 'line', 1186
    new $P102, "Undef"
    set $P2092, $P102
    .lex "$attr", $P2092
    set $P103, param_2088
    nqp_decontainerize $P104, $P103
    repr_instance_of $P105, $P104
    set $P2092, $P105
.annotate 'line', 1187
    set $P103, $P2092
    unless_null $P103, vivify_930
    new $P103, "Undef"
  vivify_930:
    set $P104, param_2089
    unless_null $P104, vivify_931
    new $P104, "Undef"
  vivify_931:
    set $P2093, param_2091
    unless_null $P2093, vivify_932
    $P2093 = root_new ['parrot';'Hash']
  vivify_932:
    set $P105, param_2090
    unless_null $P105, vivify_933
    new $P105, "Undef"
  vivify_933:
.annotate 'line', 1188
    set $P2094, param_2091
    unless_null $P2094, vivify_934
    $P2094 = root_new ['parrot';'Hash']
  vivify_934:
    exists $I100, $P2094["type"]
.annotate 'line', 1187
    $P103."BUILD"($P2093 :flat, $P104 :named("name"), $P105 :named("box_target"), $I100 :named("has_type"))
.annotate 'line', 1185
    set $P103, $P2092
    unless_null $P103, vivify_935
    new $P103, "Undef"
  vivify_935:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "BUILD" :anon :subid("104_1337966777.064") :outer("188_1337966777.064")
    .param pmc param_2096
    .param pmc param_2097 :optional :named("name")
    .param int has_param_2097 :opt_flag
    .param pmc param_2098 :optional :named("type")
    .param int has_param_2098 :opt_flag
    .param pmc param_2099 :optional :named("has_type")
    .param int has_param_2099 :opt_flag
    .param pmc param_2100 :optional :named("box_target")
    .param int has_param_2100 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1192
    .lex "self", param_2096
    if has_param_2097, optparam_936
    new $P101, "Undef"
    set param_2097, $P101
  optparam_936:
    .lex "$name", param_2097
    if has_param_2098, optparam_937
    new $P102, "Undef"
    set param_2098, $P102
  optparam_937:
    .lex "$type", param_2098
    if has_param_2099, optparam_938
    new $P103, "Undef"
    set param_2099, $P103
  optparam_938:
    .lex "$has_type", param_2099
    if has_param_2100, optparam_939
    new $P104, "Undef"
    set param_2100, $P104
  optparam_939:
    .lex "$box_target", param_2100
.annotate 'line', 1193
    set $P105, param_2097
    unless_null $P105, vivify_940
    new $P105, "Undef"
  vivify_940:
    set $P106, param_2096
    nqp_decontainerize $P107, $P106
    nqp_get_sc_object $P108, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 8
    repr_bind_attr_obj $P107, $P108, "$!name", 0, $P105
.annotate 'line', 1194
    set $P105, param_2098
    unless_null $P105, vivify_941
    new $P105, "Undef"
  vivify_941:
    set $P106, param_2096
    nqp_decontainerize $P107, $P106
    nqp_get_sc_object $P108, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 8
    repr_bind_attr_obj $P107, $P108, "$!type", 1, $P105
.annotate 'line', 1195
    set $P105, param_2099
    unless_null $P105, vivify_942
    new $P105, "Undef"
  vivify_942:
    set $P106, param_2096
    nqp_decontainerize $P107, $P106
    nqp_get_sc_object $P108, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 8
    repr_bind_attr_obj $P107, $P108, "$!has_type", 2, $P105
.annotate 'line', 1196
    set $P105, param_2100
    unless_null $P105, vivify_943
    new $P105, "Undef"
  vivify_943:
    set $P106, param_2096
    nqp_decontainerize $P107, $P106
    nqp_get_sc_object $P108, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 8
    repr_bind_attr_obj $P107, $P108, "$!box_target", 3, $P105
.annotate 'line', 1192
    .return ($P105)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "name" :anon :subid("105_1337966777.064") :outer("188_1337966777.064")
    .param pmc param_2102
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1199
    .lex "self", param_2102
    set $P101, param_2102
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 8
    repr_get_attr_obj $P104, $P102, $P103, "$!name", 0
    unless_null $P104, vivify_944
    new $P104, "Undef"
  vivify_944:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "type" :anon :subid("106_1337966777.064") :outer("188_1337966777.064")
    .param pmc param_2104
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1203
    .lex "self", param_2104
.annotate 'line', 1204
    set $P102, param_2104
    nqp_decontainerize $P103, $P102
    nqp_get_sc_object $P104, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 8
    repr_get_attr_obj $P105, $P103, $P104, "$!has_type", 2
    unless_null $P105, vivify_945
    new $P105, "Undef"
  vivify_945:
    if $P105, if_2105
    null $P110
    set $P101, $P110
    goto if_2105_end
  if_2105:
    set $P106, param_2104
    nqp_decontainerize $P107, $P106
    nqp_get_sc_object $P108, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 8
    repr_get_attr_obj $P109, $P107, $P108, "$!type", 1
    unless_null $P109, vivify_946
    new $P109, "Undef"
  vivify_946:
    set $P101, $P109
  if_2105_end:
.annotate 'line', 1203
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "has_accessor" :anon :subid("107_1337966777.064") :outer("188_1337966777.064")
    .param pmc param_2107
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1207
    .lex "self", param_2107
    .return (0)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "build_closure" :anon :subid("108_1337966777.064") :outer("188_1337966777.064")
    .param pmc param_2109
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1211
    .lex "self", param_2109
    .return (0)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "box_target" :anon :subid("109_1337966777.064") :outer("188_1337966777.064")
    .param pmc param_2111
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1215
    .lex "self", param_2111
.annotate 'line', 1216
    set $P102, param_2111
    nqp_decontainerize $P103, $P102
    nqp_get_sc_object $P104, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 8
    repr_get_attr_obj $P105, $P103, $P104, "$!box_target", 3
    unless_null $P105, vivify_947
    new $P105, "Undef"
  vivify_947:
    if $P105, if_2112
    new $P107, "Float"
    assign $P107, 0
    set $P101, $P107
    goto if_2112_end
  if_2112:
    new $P106, "Float"
    assign $P106, 1
    set $P101, $P106
  if_2112_end:
.annotate 'line', 1215
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "compose" :anon :subid("110_1337966777.064") :outer("188_1337966777.064")
    .param pmc param_2114
    .param pmc param_2115
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1219
    .lex "self", param_2114
    .lex "$obj", param_2115
    set $P101, param_2115
    unless_null $P101, vivify_948
    new $P101, "Undef"
  vivify_948:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "has_mutator" :anon :subid("111_1337966777.064") :outer("188_1337966777.064")
    .param pmc param_2117
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1246
    .lex "self", param_2117
.annotate 'line', 1247
    set $P101, param_2117
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 8
    repr_get_attr_obj $P104, $P102, $P103, "$!name", 0
    unless_null $P104, vivify_949
    new $P104, "Undef"
  vivify_949:
    set $S100, $P104
    substr $S101, $S100, 1, 1
    isne $I100, $S101, "!"
.annotate 'line', 1246
    .return ($I100)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "_block2118"  :subid("191_1337966777.064") :outer("121_1337966777.064")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1261
    .const 'Sub' $P2154 = "120_1337966777.064" 
    capture_lex $P2154
    .const 'Sub' $P2151 = "119_1337966777.064" 
    capture_lex $P2151
    .const 'Sub' $P2147 = "118_1337966777.064" 
    capture_lex $P2147
    .const 'Sub' $P2142 = "117_1337966777.064" 
    capture_lex $P2142
    .const 'Sub' $P2137 = "116_1337966777.064" 
    capture_lex $P2137
    .const 'Sub' $P2132 = "115_1337966777.064" 
    capture_lex $P2132
    .const 'Sub' $P2129 = "114_1337966777.064" 
    capture_lex $P2129
    .const 'Sub' $P2125 = "113_1337966777.064" 
    capture_lex $P2125
    .const 'Sub' $P2123 = "112_1337966777.064" 
    capture_lex $P2123
.annotate 'line', 1265
    new $P100, "Undef"
    set $P2120, $P100
    .lex "$archetypes", $P2120
    .lex "$?PACKAGE", $P2121
    .lex "$?CLASS", $P2122
    find_lex $P101, "Archetypes"
    $P102 = $P101."new"()
    set $P2120, $P102
.annotate 'line', 1307
    .const 'Sub' $P2154 = "120_1337966777.064" 
    newclosure $P2157, $P2154
.annotate 'line', 1261
    .return ($P2157)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "archetypes" :anon :subid("112_1337966777.064") :outer("191_1337966777.064")
    .param pmc param_2124
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1266
    .lex "self", param_2124
    find_lex $P101, "$archetypes"
    unless_null $P101, vivify_950
    new $P101, "Undef"
  vivify_950:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "new" :anon :subid("113_1337966777.064") :outer("191_1337966777.064")
    .param pmc param_2126
    .param pmc param_2127 :optional :named("name")
    .param int has_param_2127 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1270
    .lex "self", param_2126
    if has_param_2127, optparam_951
    new $P101, "Undef"
    set param_2127, $P101
  optparam_951:
    .lex "$name", param_2127
.annotate 'line', 1271
    new $P102, "Undef"
    set $P2128, $P102
    .lex "$obj", $P2128
    set $P103, param_2126
    nqp_decontainerize $P104, $P103
    repr_instance_of $P105, $P104
    set $P2128, $P105
.annotate 'line', 1272
    set $P103, $P2128
    unless_null $P103, vivify_952
    new $P103, "Undef"
  vivify_952:
    set $P104, param_2127
    unless_null $P104, vivify_953
    new $P104, "Undef"
  vivify_953:
    $P103."BUILD"($P104 :named("name"))
.annotate 'line', 1270
    set $P103, $P2128
    unless_null $P103, vivify_954
    new $P103, "Undef"
  vivify_954:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "BUILD" :anon :subid("114_1337966777.064") :outer("191_1337966777.064")
    .param pmc param_2130
    .param pmc param_2131 :optional :named("name")
    .param int has_param_2131 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1276
    .lex "self", param_2130
    if has_param_2131, optparam_955
    new $P101, "Undef"
    set param_2131, $P101
  optparam_955:
    .lex "$name", param_2131
.annotate 'line', 1277
    set $P102, param_2131
    unless_null $P102, vivify_956
    new $P102, "Undef"
  vivify_956:
    set $P103, param_2130
    nqp_decontainerize $P104, $P103
    nqp_get_sc_object $P105, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 9
    repr_bind_attr_obj $P104, $P105, "$!name", 0, $P102
.annotate 'line', 1276
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "new_type" :anon :subid("115_1337966777.064") :outer("191_1337966777.064")
    .param pmc param_2133
    .param pmc param_2134 :optional :named("name")
    .param int has_param_2134 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1282
    .lex "self", param_2133
    if has_param_2134, optparam_957
    new $P101, "String"
    assign $P101, "<anon>"
    set param_2134, $P101
  optparam_957:
    .lex "$name", param_2134
.annotate 'line', 1283
    new $P102, "Undef"
    set $P2135, $P102
    .lex "$metaclass", $P2135
    set $P103, param_2133
    nqp_decontainerize $P104, $P103
    set $P105, param_2134
    unless_null $P105, vivify_958
    new $P105, "Undef"
  vivify_958:
    $P106 = $P104."new"($P105 :named("name"))
    set $P2135, $P106
.annotate 'line', 1285
    set $P103, $P2135
    unless_null $P103, vivify_959
    new $P103, "Undef"
  vivify_959:
    new $P104, "String"
    assign $P104, "Uninstantiable"
    set $S100, $P104
    repr_type_object_for $P105, $P103, $S100
    $P2136 = root_new ['parrot';'Hash']
    set_who $P105, $P2136
.annotate 'line', 1282
    .return ($P105)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_method" :anon :subid("116_1337966777.064") :outer("191_1337966777.064")
    .param pmc param_2138
    .param pmc param_2139
    .param pmc param_2140
    .param pmc param_2141
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1289
    .lex "self", param_2138
    .lex "$obj", param_2139
    .lex "$name", param_2140
    .lex "$code_obj", param_2141
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_multi_method" :anon :subid("117_1337966777.064") :outer("191_1337966777.064")
    .param pmc param_2143
    .param pmc param_2144
    .param pmc param_2145
    .param pmc param_2146
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1295
    .lex "self", param_2143
    .lex "$obj", param_2144
    .lex "$name", param_2145
    .lex "$code_obj", param_2146
.annotate 'line', 1296
    die "Modules may not have methods"
.annotate 'line', 1295
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_attribute" :anon :subid("118_1337966777.064") :outer("191_1337966777.064")
    .param pmc param_2148
    .param pmc param_2149
    .param pmc param_2150
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1299
    .lex "self", param_2148
    .lex "$obj", param_2149
    .lex "$meta_attr", param_2150
.annotate 'line', 1300
    die "Modules may not have attributes"
.annotate 'line', 1299
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "compose" :anon :subid("119_1337966777.064") :outer("191_1337966777.064")
    .param pmc param_2152
    .param pmc param_2153
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1303
    .lex "self", param_2152
    .lex "$obj", param_2153
.annotate 'line', 1304
    new $P101, "Float"
    assign $P101, 1
    set $P102, param_2152
    nqp_decontainerize $P103, $P102
    nqp_get_sc_object $P104, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 9
    repr_bind_attr_obj $P103, $P104, "$!composed", 1, $P101
.annotate 'line', 1303
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "name" :anon :subid("120_1337966777.064") :outer("191_1337966777.064")
    .param pmc param_2155
    .param pmc param_2156
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1307
    .lex "self", param_2155
    .lex "$obj", param_2156
    set $P101, param_2155
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1337966776.937", 9
    repr_get_attr_obj $P104, $P102, $P103, "$!name", 0
    unless_null $P104, vivify_960
    new $P104, "Undef"
  vivify_960:
    .return ($P104)
.end


.HLL "nqp"

.namespace []
.sub "_block2158"  :anon :subid("192_1337966777.064") :outer("121_1337966777.064")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1315
    .lex "$?PACKAGE", $P2160
    .lex "$?CLASS", $P2161
.annotate 'line', 1316
    find_lex $P100, "NQPModuleHOW"
    set $P101, $P2160
    unless_null $P101, vivify_961
    new $P101, "Undef"
    set $P2160, $P101
  vivify_961:
    get_who $P102, $P101
    set $P102["module"], $P100
.annotate 'line', 1317
    find_lex $P100, "NQPClassHOW"
    set $P101, $P2160
    unless_null $P101, vivify_962
    new $P101, "Undef"
    set $P2160, $P101
  vivify_962:
    get_who $P102, $P101
    set $P102["class"], $P100
.annotate 'line', 1318
    find_lex $P100, "NQPAttribute"
    set $P101, $P2160
    unless_null $P101, vivify_963
    new $P101, "Undef"
    set $P2160, $P101
  vivify_963:
    get_who $P102, $P101
    set $P102["class-attr"], $P100
.annotate 'line', 1319
    find_lex $P100, "NQPClassHOW"
    set $P101, $P2160
    unless_null $P101, vivify_964
    new $P101, "Undef"
    set $P2160, $P101
  vivify_964:
    get_who $P102, $P101
    set $P102["grammar"], $P100
.annotate 'line', 1320
    find_lex $P100, "NQPAttribute"
    set $P101, $P2160
    unless_null $P101, vivify_965
    new $P101, "Undef"
    set $P2160, $P101
  vivify_965:
    get_who $P102, $P101
    set $P102["grammar-attr"], $P100
.annotate 'line', 1321
    find_lex $P100, "NQPParametricRoleHOW"
    set $P101, $P2160
    unless_null $P101, vivify_966
    new $P101, "Undef"
    set $P2160, $P101
  vivify_966:
    get_who $P102, $P101
    set $P102["role"], $P100
.annotate 'line', 1322
    find_lex $P100, "NQPAttribute"
    set $P101, $P2160
    unless_null $P101, vivify_967
    new $P101, "Undef"
    set $P2160, $P101
  vivify_967:
    get_who $P102, $P101
    set $P102["role-attr"], $P100
.annotate 'line', 1323
    find_lex $P100, "NQPNativeHOW"
    set $P101, $P2160
    unless_null $P101, vivify_968
    new $P101, "Undef"
    set $P2160, $P101
  vivify_968:
    get_who $P102, $P101
    set $P102["native"], $P100
.annotate 'line', 1315
    .return ($P100)
.end


.HLL "nqp"

.namespace []
.sub "_block2163" :load :anon :subid("193_1337966777.064")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1
    .const '' $P2165 = "121_1337966777.064" 
    $P106 = $P2165()
    .return ($P106)
.end

