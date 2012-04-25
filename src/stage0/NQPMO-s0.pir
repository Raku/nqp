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
.sub "_block1000"  :anon :subid("119_1335114075.00898")
    .param pmc param_1002 :slurpy
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 0
    .const 'Sub' $P2131 = "189_1335114075.00898" 
    capture_lex $P2131
    .const 'Sub' $P2123 = "187_1335114075.00898" 
    capture_lex $P2123
    .const 'Sub' $P2083 = "186_1335114075.00898" 
    capture_lex $P2083
    .const 'Sub' $P2032 = "183_1335114075.00898" 
    capture_lex $P2032
    .const 'Sub' $P1991 = "182_1335114075.00898" 
    capture_lex $P1991
    .const 'Sub' $P1491 = "149_1335114075.00898" 
    capture_lex $P1491
    .const 'Sub' $P1353 = "142_1335114075.00898" 
    capture_lex $P1353
    .const 'Sub' $P1282 = "134_1335114075.00898" 
    capture_lex $P1282
    .const 'Sub' $P1150 = "130_1335114075.00898" 
    capture_lex $P1150
    .const 'Sub' $P1050 = "121_1335114075.00898" 
    capture_lex $P1050
    .const 'Sub' $P1016 = "120_1335114075.00898" 
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
    .const 'Sub' $P1016 = "120_1335114075.00898" 
    capture_lex $P1016
    $P1016()
.annotate 'line', 72
    .const 'Sub' $P1050 = "121_1335114075.00898" 
    capture_lex $P1050
    $P1050()
.annotate 'line', 164
    .const 'Sub' $P1150 = "130_1335114075.00898" 
    capture_lex $P1150
    $P1150()
.annotate 'line', 317
    .const 'Sub' $P1282 = "134_1335114075.00898" 
    capture_lex $P1282
    $P1282()
.annotate 'line', 390
    .const 'Sub' $P1353 = "142_1335114075.00898" 
    capture_lex $P1353
    $P1353()
.annotate 'line', 567
    .const 'Sub' $P1491 = "149_1335114075.00898" 
    capture_lex $P1491
    $P1491()
.annotate 'line', 1090
    .const 'Sub' $P1991 = "182_1335114075.00898" 
    capture_lex $P1991
    $P1991()
.annotate 'line', 1141
    .const 'Sub' $P2032 = "183_1335114075.00898" 
    capture_lex $P2032
    $P2032()
.annotate 'line', 1223
    .const 'Sub' $P2083 = "186_1335114075.00898" 
    capture_lex $P2083
    $P2083()
.annotate 'line', 1277
    .const 'Sub' $P2123 = "187_1335114075.00898" 
    capture_lex $P2123
    $P2123()
.annotate 'line', 1
    set $P101, param_1002
    if $P101, if_2126
    set $P100, $P101
    goto if_2126_end
  if_2126:
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P102, "ModuleLoader"
    getinterp $P103
    set $P104, $P103["context"]
    $P105 = $P102."set_mainline_module"($P104)
    set $P100, $P105
  if_2126_end:
    .return ($P100)
    .const 'Sub' $P2128 = "188_1335114075.00898" 
    .return ($P2128)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post190") :outer("119_1335114075.00898")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 0
    .const 'Sub' $P1001 = "119_1335114075.00898" 
    .local pmc block
    set block, $P1001
    nqp_dynop_setup 
    nqp_bigint_setup 
    getinterp $P107
    get_class $P108, "LexPad"
    get_class $P109, "NQPLexPad"
    $P107."hll_map"($P108, $P109)
    nqp_create_sc $P110, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126"
    .local pmc cur_sc
    set cur_sc, $P110
    cur_sc."set_description"("src/stage2/gen/nqp-mo.pm")
    set $S100, "AQAAAEAAAAABAAAASAAAAAsAAACgAAAAyhEAAEUAAAAaFgAAUh8AAAAAAABSHwAAAAAAAFIfAABSHwAAAAAAALAAAAAAAAAAAQAAAAAAAAAKAAAACgEAAB0AAADkAgAAHwAAAIwDAAA8AAAA+gUAAD4AAACiBgAAWAAAANYIAACJAAAAjAwAAJUAAADUDQAAowAAAEgPAACvAAAAkBAAAAAAAAALAAAAAAAAAAAAAAAKAAgAAAACAAAAAgAAAAAAAgAAAAMAAAACAAAAAAADAAAABAAAAAIAAAAAAAQAAAAFAAAAAgAAAAAABQAAAAYAAAACAAAAAAAGAAAABwAAAAIAAAAAAAcAAAAIAAAAAgAAAAAACAAAAAkAAAACAAAAAAAJAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAAAAAAMAAAAAAAwAAAAAAAAAAQAAAAoAAAAAAAoACgAAAAsAAAALAAAAAAAAAAAADAAAAAsAAAAAAAEAAAANAAAACwAAAAAAAgAAAA4AAAALAAAAAAADAAAADwAAAAsAAAAAAAQAAAAQAAAACwAAAAAABQAAABEAAAALAAAAAAAGAAAAEgAAAAsAAAAAAAcAAAATAAAACwAAAAAACAAAABQAAAALAAAAAAAJAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAEAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAEAAAAKAAgAAAAVAAAABAAAAAAAAAAAABYAAAAEAAEAAAAAAAAAFwAAAAQAAgAAAAAAAAAYAAAABAADAAAAAAAAABkAAAAEAAQAAAAAAAAAGgAAAAQABQAAAAAAAAAbAAAABAAGAAAAAAAAABwAAAAEAAcAAAAAAAAAAAAAAA0AAAAAAAAAAgAAAAoAAAAAAAoAAQAAAB4AAAALAAAAAAAKAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAIAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAgAAAAMAAAAAAA4AAAAAAAAAAwAAAAoAAAAAAAoAEwAAACAAAAALAAAAAAALAAAAIQAAAAsAAAAAAAwAAAAiAAAACwAAAAAADQAAACMAAAALAAAAAAAOAAAAJAAAAAsAAAAAAA8AAAAlAAAACwAAAAAAEAAAACYAAAALAAAAAAARAAAAJwAAAAsAAAAAABIAAAAoAAAACwAAAAAAEwAAACkAAAALAAAAAAAUAAAAKgAAAAsAAAAAABUAAAArAAAACwAAAAAAFgAAACwAAAALAAAAAAAXAAAALQAAAAsAAAAAABgAAAAuAAAACwAAAAAAGQAAAC8AAAALAAAAAAAaAAAAMAAAAAsAAAAAABsAAAAxAAAACwAAAAAAHAAAADIAAAALAAAAAAAdAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAMAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAJAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAwAAAAoACQAAADMAAAAEAAAAAAAAAAAANAAAAAQAAQAAAAAAAAA1AAAABAACAAAAAAAAADYAAAAEAAMAAAAAAAAANwAAAAQABAAAAAAAAAA4AAAABAAFAAAAAAAAADkAAAAEAAYAAAAAAAAAOgAAAAQABwAAAAAAAAA7AAAABAAIAAAAAAAAAAAAAAAPAAAAAAAAAAQAAAAKAAAAAAAKAAEAAAA9AAAACwAAAAAAHgAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAAEAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAQAAAADAAAAAAAQAAAAAAAAAAUAAAAKAAAAAAAKABIAAAA/AAAACwAAAAAAHwAAAEAAAAALAAAAAAAgAAAAQQAAAAsAAAAAACEAAABCAAAACwAAAAAAIgAAAEMAAAALAAAAAAAjAAAARAAAAAsAAAAAACQAAABFAAAACwAAAAAAJQAAAEYAAAALAAAAAAAmAAAARwAAAAsAAAAAACcAAABIAAAACwAAAAAAKAAAAEkAAAALAAAAAAApAAAASgAAAAsAAAAAACoAAABLAAAACwAAAAAAKwAAAEwAAAALAAAAAAAsAAAATQAAAAsAAAAAAC0AAABOAAAACwAAAAAALgAAAE8AAAALAAAAAAAvAAAAUAAAAAsAAAAAADAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAABQAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAUAAAAKAAcAAABRAAAABAAAAAAAAAAAAFIAAAAEAAEAAAAAAAAAUwAAAAQAAgAAAAAAAABUAAAABAADAAAAAAAAAFUAAAAEAAQAAAAAAAAAVgAAAAQABQAAAAAAAABXAAAABAAGAAAAAAAAAAAAAAARAAAAAAAAAAYAAAAKAAAAAAAKACEAAABZAAAACwAAAAAAMQAAAFoAAAALAAAAAAAyAAAAWwAAAAsAAAAAADMAAABcAAAACwAAAAAANAAAAF0AAAALAAAAAAA1AAAAXgAAAAsAAAAAADYAAABfAAAACwAAAAAANwAAAGAAAAALAAAAAAA4AAAAYQAAAAsAAAAAADkAAABiAAAACwAAAAAAOgAAAGMAAAALAAAAAAA7AAAAZAAAAAsAAAAAADwAAABlAAAACwAAAAAAPQAAAGYAAAALAAAAAAA+AAAAZwAAAAsAAAAAAD8AAABoAAAACwAAAAAAQAAAAGkAAAALAAAAAABBAAAAagAAAAsAAAAAAEIAAABrAAAACwAAAAAAQwAAAGwAAAALAAAAAABEAAAAbQAAAAsAAAAAAEUAAABuAAAACwAAAAAARgAAAG8AAAALAAAAAABHAAAAcAAAAAsAAAAAAEgAAABxAAAACwAAAAAASQAAAHIAAAALAAAAAABKAAAAcwAAAAsAAAAAAEsAAAB0AAAACwAAAAAATAAAAHUAAAALAAAAAABNAAAAdgAAAAsAAAAAAE4AAAB3AAAACwAAAAAATwAAAHgAAAALAAAAAABQAAAAeQAAAAsAAAAAAFEAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAABgAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA8AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAAGAAAACgAPAAAAegAAAAQAAAAAAAAAAAB7AAAABAABAAAAAAAAAHwAAAAEAAIAAAAAAAAAfQAAAAQAAwAAAAAAAAB+AAAABAAEAAAAAAAAAH8AAAAEAAUAAAAAAAAAgAAAAAQABgAAAAAAAACBAAAABAAHAAAAAAAAAIIAAAAEAAgAAAAAAAAAgwAAAAQACQAAAAAAAACEAAAABAAKAAAAAAAAAIUAAAAEAAsAAAAAAAAAhgAAAAQADAAAAAAAAACHAAAABAANAAAAAAAAAIgAAAAEAA4AAAAAAAAAAAAAABIAAAAAAAAABwAAAAoAAAAAAAoACQAAAIoAAAALAAAAAABSAAAAiwAAAAsAAAAAAFMAAACMAAAACwAAAAAAVAAAAI0AAAALAAAAAABVAAAAjgAAAAsAAAAAAFYAAACPAAAACwAAAAAAVwAAAJAAAAALAAAAAABYAAAAkQAAAAsAAAAAAFkAAACSAAAACwAAAAAAWgAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAAHAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAAHAAAACgACAAAAkwAAAAQAAAAAAAAAAACUAAAABAABAAAAAAAAAAAAAAATAAAAAAAAAAgAAAAKAAAAAAAKAAkAAACWAAAACwAAAAAAWwAAAJcAAAALAAAAAABcAAAAmAAAAAsAAAAAAF0AAACZAAAACwAAAAAAXgAAAJoAAAALAAAAAABfAAAAmwAAAAsAAAAAAGAAAACcAAAACwAAAAAAYQAAAJ0AAAALAAAAAABiAAAAngAAAAsAAAAAAGMAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAACAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAgAAAAKAAQAAACfAAAABAAAAAAAAAAAAKAAAAAEAAEAAAAAAAAAoQAAAAQAAgAAAAAAAACiAAAABAADAAAAAAAAAAAAAAAUAAAAAAAAAAkAAAAKAAAAAAAKAAkAAACkAAAACwAAAAAAZAAAAKUAAAALAAAAAABlAAAApgAAAAsAAAAAAGYAAACnAAAACwAAAAAAZwAAAKgAAAALAAAAAABoAAAAqQAAAAsAAAAAAGkAAACqAAAACwAAAAAAagAAAKsAAAALAAAAAABrAAAArAAAAAsAAAAAAGwAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAACQAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAACQAAAAoAAgAAAK0AAAAEAAAAAAAAAAAArgAAAAQAAQAAAAAAAAAAAAAAFQAAAAAAAAAKAAAACgAAAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAoAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAACgAAAAMAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAgAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAABQAAAAAAAAAAAAAAAAAAAAYAAAAAAAAAAAAAAAAAAAAHAAAAAAAAAAAAAAAAAAAACAAAAAAAAAAAAAAAAAAAAAkAAAAAAAAAAAAAAAAAAAAKAAAAAAAAAAAAAAABAAAAAAAAAAAAAAABAAAAAQAAAAAAAAAQAAAAAQAAAAEAAAAAAAAA/AAAAAEAAAABAAAAAAAAABoBAAABAAAAAQAAAAAAAACOAgAAAQAAAAEAAAAAAAAArAIAAAEAAAABAAAAAAAAAP4DAAABAAAAAQAAAAAAAAByBgAAAQAAAAEAAAAAAAAAFAcAAAEAAAABAAAAAAAAAMoHAAABAAAAAQAAAAAAAABsCAAAAQAAAAEAAAACAAAAfAgAAAEAAAABAAAAAgAAAIAIAAABAAAAAQAAAAIAAACECAAAAQAAAAEAAAACAAAAiAgAAAEAAAABAAAAAgAAAIwIAAABAAAAAQAAAAIAAACQCAAAAQAAAAEAAAACAAAAlAgAAAEAAAABAAAAAgAAAJgIAAABAAAAAQAAAAIAAACcCAAAAQAAAAEAAAACAAAAoAgAAAEAAAABAAAAAgAAAKQIAAABAAAAAQAAAAIAAACoCAAAAQAAAAEAAAACAAAArAgAAAEAAAABAAAAAgAAALAIAAABAAAAAQAAAAIAAAC0CAAAAQAAAAEAAAACAAAAuAgAAAEAAAABAAAAAgAAALwIAAABAAAAAQAAAAIAAADACAAAAQAAAAEAAAACAAAAxAgAAAEAAAABAAAAAgAAAMgIAAABAAAAAQAAAAIAAADMCAAAAQAAAAEAAAACAAAA0AgAAAEAAAABAAAAAgAAANQIAAABAAAAAQAAAAIAAADYCAAAAQAAAAEAAAACAAAA3AgAAAEAAAABAAAAAgAAAOAIAAABAAAAAQAAAAIAAADkCAAAAQAAAAEAAAACAAAA6AgAAAEAAAABAAAAAgAAAOwIAAABAAAAAQAAAAIAAADwCAAAAQAAAAEAAAACAAAA9AgAAAEAAAABAAAAAgAAAPgIAAABAAAAAQAAAAIAAAD8CAAAAQAAAAEAAAACAAAAAAkAAAEAAAABAAAAAgAAAAQJAAABAAAAAQAAAAIAAAAICQAAAQAAAAEAAAACAAAADAkAAAEAAAABAAAAAgAAABAJAAABAAAAAQAAAAIAAAAUCQAAAQAAAAEAAAACAAAAGAkAAAEAAAABAAAAAgAAABwJAAABAAAAAQAAAAIAAAAgCQAAAQAAAAEAAAACAAAAJAkAAAEAAAABAAAAAgAAACgJAAABAAAAAQAAAAIAAAAsCQAAAQAAAAEAAAACAAAAMAkAAAEAAAABAAAAAgAAADQJAAABAAAAsQAAAAcAAAAAAAoAAAAAALIAAAAHAAgAAAACAAAAAAAWAAAAAgAAAAAAFwAAAAIAAAAAABgAAAACAAAAAAAZAAAAAgAAAAAAGgAAAAIAAAAAABsAAAACAAAAAAAcAAAAAgAAAAAAHQAAAAoACgAAALMAAAALAAAAAAAAAAAAtAAAAAsAAAAAAAEAAAC1AAAACwAAAAAAAgAAALYAAAALAAAAAAADAAAAtwAAAAsAAAAAAAQAAAC4AAAACwAAAAAABQAAALkAAAALAAAAAAAGAAAAugAAAAsAAAAAAAcAAAC7AAAACwAAAAAACAAAALwAAAALAAAAAAAJAAAAvQAAAAcAAAAAAAoAAQAAAL4AAAALAAAAAAAKAAAAvwAAAAcACQAAAAIAAAAAAB4AAAACAAAAAAAfAAAAAgAAAAAAIAAAAAIAAAAAACEAAAACAAAAAAAiAAAAAgAAAAAAIwAAAAIAAAAAACQAAAACAAAAAAAlAAAAAgAAAAAAJgAAAAoAEwAAAMAAAAALAAAAAAALAAAAwQAAAAsAAAAAAAwAAADCAAAACwAAAAAADQAAAMMAAAALAAAAAAAOAAAAxAAAAAsAAAAAAA8AAADFAAAACwAAAAAAEAAAAMYAAAALAAAAAAARAAAAxwAAAAsAAAAAABIAAADIAAAACwAAAAAAEwAAAMkAAAALAAAAAAAUAAAAygAAAAsAAAAAABUAAADLAAAACwAAAAAAFgAAAMwAAAALAAAAAAAXAAAAzQAAAAsAAAAAABgAAADOAAAACwAAAAAAGQAAAM8AAAALAAAAAAAaAAAA0AAAAAsAAAAAABsAAADRAAAACwAAAAAAHAAAANIAAAALAAAAAAAdAAAA0wAAAAcAAAAAAAoAAQAAANQAAAALAAAAAAAeAAAA1QAAAAcABwAAAAIAAAAAACcAAAACAAAAAAAoAAAAAgAAAAAAKQAAAAIAAAAAACoAAAACAAAAAAArAAAAAgAAAAAALAAAAAIAAAAAAC0AAAAKABIAAADWAAAACwAAAAAAHwAAANcAAAALAAAAAAAgAAAA2AAAAAsAAAAAACEAAADZAAAACwAAAAAAIgAAANoAAAALAAAAAAAjAAAA2wAAAAsAAAAAACQAAADcAAAACwAAAAAAJQAAAN0AAAALAAAAAAAmAAAA3gAAAAsAAAAAACcAAADfAAAACwAAAAAAKAAAAOAAAAALAAAAAAApAAAA4QAAAAsAAAAAACoAAADiAAAACwAAAAAAKwAAAOMAAAALAAAAAAAsAAAA5AAAAAsAAAAAAC0AAADlAAAACwAAAAAALgAAAOYAAAALAAAAAAAvAAAA5wAAAAsAAAAAADAAAADoAAAABwAPAAAAAgAAAAAALgAAAAIAAAAAAC8AAAACAAAAAAAwAAAAAgAAAAAAMQAAAAIAAAAAADIAAAACAAAAAAAzAAAAAgAAAAAANAAAAAIAAAAAADUAAAACAAAAAAA2AAAAAgAAAAAANwAAAAIAAAAAADgAAAACAAAAAAA5AAAAAgAAAAAAOgAAAAIAAAAAADsAAAACAAAAAAA8AAAACgAhAAAA6QAAAAsAAAAAADEAAADqAAAACwAAAAAAMgAAAOsAAAALAAAAAAAzAAAA7AAAAAsAAAAAADQAAADtAAAACwAAAAAANQAAAO4AAAALAAAAAAA2AAAA7wAAAAsAAAAAADcAAADwAAAACwAAAAAAOAAAAPEAAAALAAAAAAA5AAAA8gAAAAsAAAAAADoAAADzAAAACwAAAAAAOwAAAPQAAAALAAAAAAA8AAAA9QAAAAsAAAAAAD0AAAD2AAAACwAAAAAAPgAAAPcAAAALAAAAAAA/AAAA+AAAAAsAAAAAAEAAAAD5AAAACwAAAAAAQQAAAPoAAAALAAAAAABCAAAA+wAAAAsAAAAAAEMAAAD8AAAACwAAAAAARAAAAP0AAAALAAAAAABFAAAA/gAAAAsAAAAAAEYAAAD/AAAACwAAAAAARwAAAAABAAALAAAAAABIAAAAAQEAAAsAAAAAAEkAAAACAQAACwAAAAAASgAAAAMBAAALAAAAAABLAAAABAEAAAsAAAAAAEwAAAAFAQAACwAAAAAATQAAAAYBAAALAAAAAABOAAAABwEAAAsAAAAAAE8AAAAIAQAACwAAAAAAUAAAAAkBAAALAAAAAABRAAAACgEAAAcAAgAAAAIAAAAAAD0AAAACAAAAAAA+AAAACgAJAAAACwEAAAsAAAAAAFIAAAAMAQAACwAAAAAAUwAAAA0BAAALAAAAAABUAAAADgEAAAsAAAAAAFUAAAAPAQAACwAAAAAAVgAAABABAAALAAAAAABXAAAAEQEAAAsAAAAAAFgAAAASAQAACwAAAAAAWQAAABMBAAALAAAAAABaAAAAFAEAAAcABAAAAAIAAAAAAD8AAAACAAAAAABAAAAAAgAAAAAAQQAAAAIAAAAAAEIAAAAKAAkAAAAVAQAACwAAAAAAWwAAABYBAAALAAAAAABcAAAAFwEAAAsAAAAAAF0AAAAYAQAACwAAAAAAXgAAABkBAAALAAAAAABfAAAAGgEAAAsAAAAAAGAAAAAbAQAACwAAAAAAYQAAABwBAAALAAAAAABiAAAAHQEAAAsAAAAAAGMAAAAeAQAABwACAAAAAgAAAAAAQwAAAAIAAAAAAEQAAAAKAAkAAAAfAQAACwAAAAAAZAAAACABAAALAAAAAABlAAAAIQEAAAsAAAAAAGYAAAAiAQAACwAAAAAAZwAAACMBAAALAAAAAABoAAAAJAEAAAsAAAAAAGkAAAAlAQAACwAAAAAAagAAACYBAAALAAAAAABrAAAAJwEAAAsAAAAAAGwAAAAoAQAABwAAAAAACgAAAAAAKQEAACoBAAArAQAALAEAAC0BAAAuAQAALwEAADABAAAxAQAAMgEAADMBAAA0AQAANQEAADYBAAA3AQAAOAEAADkBAAA6AQAAOwEAADwBAAA9AQAAPgEAAD8BAABAAQAAQQEAAEIBAABDAQAARAEAAEUBAABGAQAARwEAAEgBAABJAQAASgEAAEsBAABMAQAATQEAAE4BAABPAQAAUAEAAFEBAABSAQAAUwEAAFQBAABVAQAAVgEAAFcBAAA="
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
    push string_heap, "%!cache"
    push string_heap, "%!parrot_vtable_mapping"
    push string_heap, "%!parrot_vtable_handler_mapping"
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
    push string_heap, "postcircumfix.toklen"
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
    push string_heap, ":"
    push string_heap, "apply"
    push string_heap, "NQPConcreteRoleHOW"
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
    push string_heap, "RoleToClassApplier"
    push string_heap, "apply"
    push string_heap, "NQPParametricRoleHOW"
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
    push string_heap, "%!cache"
    push string_heap, "%!parrot_vtable_mapping"
    push string_heap, "%!parrot_vtable_handler_mapping"
    push string_heap, "$!name"
    push string_heap, "$!composed"
    push string_heap, "$!name"
    push string_heap, "$!type"
    push string_heap, "$!has_type"
    push string_heap, "$!box_target"
    push string_heap, "$!name"
    push string_heap, "$!composed"
    .const 'Sub' $P2131 = "189_1335114075.00898" 
    capture_lex $P2131
    $P113 = $P2131()
    nqp_deserialize_sc $S100, cur_sc, string_heap, $P113
    .const 'LexInfo' $P2241 = "119_1335114075.00898" 
    nqp_get_sc_object $P114, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 0
    $P2241."set_static_lexpad_value"("GLOBALish", $P114)
    .const 'LexInfo' $P2242 = "119_1335114075.00898" 
    $P2242."finish_static_lexpad"()
    .const 'LexInfo' $P2243 = "119_1335114075.00898" 
    nqp_get_sc_object $P114, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 0
    $P2243."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'LexInfo' $P2244 = "119_1335114075.00898" 
    $P2244."finish_static_lexpad"()
    .const 'LexInfo' $P2245 = "119_1335114075.00898" 
    nqp_get_sc_object $P114, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 1
    $P2245."set_static_lexpad_value"("Archetypes", $P114)
    .const 'LexInfo' $P2246 = "119_1335114075.00898" 
    $P2246."finish_static_lexpad"()
    .const 'LexInfo' $P2247 = "120_1335114075.00898" 
    nqp_get_sc_object $P114, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 1
    $P2247."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'LexInfo' $P2248 = "120_1335114075.00898" 
    $P2248."finish_static_lexpad"()
    .const 'LexInfo' $P2249 = "120_1335114075.00898" 
    nqp_get_sc_object $P114, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 1
    $P2249."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'LexInfo' $P2250 = "120_1335114075.00898" 
    $P2250."finish_static_lexpad"()
    .const 'LexInfo' $P2251 = "119_1335114075.00898" 
    nqp_get_sc_object $P114, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 2
    $P2251."set_static_lexpad_value"("RoleToRoleApplier", $P114)
    .const 'LexInfo' $P2252 = "119_1335114075.00898" 
    $P2252."finish_static_lexpad"()
    .const 'LexInfo' $P2253 = "121_1335114075.00898" 
    nqp_get_sc_object $P114, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 2
    $P2253."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'LexInfo' $P2254 = "121_1335114075.00898" 
    $P2254."finish_static_lexpad"()
    .const 'LexInfo' $P2255 = "121_1335114075.00898" 
    nqp_get_sc_object $P114, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 2
    $P2255."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'LexInfo' $P2256 = "121_1335114075.00898" 
    $P2256."finish_static_lexpad"()
    .const 'LexInfo' $P2257 = "119_1335114075.00898" 
    nqp_get_sc_object $P114, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 3
    $P2257."set_static_lexpad_value"("NQPConcreteRoleHOW", $P114)
    .const 'LexInfo' $P2258 = "119_1335114075.00898" 
    $P2258."finish_static_lexpad"()
    .const 'LexInfo' $P2259 = "130_1335114075.00898" 
    nqp_get_sc_object $P114, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 3
    $P2259."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'LexInfo' $P2260 = "130_1335114075.00898" 
    $P2260."finish_static_lexpad"()
    .const 'LexInfo' $P2261 = "130_1335114075.00898" 
    nqp_get_sc_object $P114, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 3
    $P2261."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'LexInfo' $P2262 = "130_1335114075.00898" 
    $P2262."finish_static_lexpad"()
    .const 'LexInfo' $P2263 = "119_1335114075.00898" 
    nqp_get_sc_object $P114, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 4
    $P2263."set_static_lexpad_value"("RoleToClassApplier", $P114)
    .const 'LexInfo' $P2264 = "119_1335114075.00898" 
    $P2264."finish_static_lexpad"()
    .const 'LexInfo' $P2265 = "134_1335114075.00898" 
    nqp_get_sc_object $P114, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 4
    $P2265."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'LexInfo' $P2266 = "134_1335114075.00898" 
    $P2266."finish_static_lexpad"()
    .const 'LexInfo' $P2267 = "134_1335114075.00898" 
    nqp_get_sc_object $P114, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 4
    $P2267."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'LexInfo' $P2268 = "134_1335114075.00898" 
    $P2268."finish_static_lexpad"()
    .const 'LexInfo' $P2269 = "119_1335114075.00898" 
    nqp_get_sc_object $P114, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 5
    $P2269."set_static_lexpad_value"("NQPParametricRoleHOW", $P114)
    .const 'LexInfo' $P2270 = "119_1335114075.00898" 
    $P2270."finish_static_lexpad"()
    .const 'LexInfo' $P2271 = "142_1335114075.00898" 
    nqp_get_sc_object $P114, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 5
    $P2271."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'LexInfo' $P2272 = "142_1335114075.00898" 
    $P2272."finish_static_lexpad"()
    .const 'LexInfo' $P2273 = "142_1335114075.00898" 
    nqp_get_sc_object $P114, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 5
    $P2273."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'LexInfo' $P2274 = "142_1335114075.00898" 
    $P2274."finish_static_lexpad"()
    .const 'LexInfo' $P2275 = "119_1335114075.00898" 
    nqp_get_sc_object $P114, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    $P2275."set_static_lexpad_value"("NQPClassHOW", $P114)
    .const 'LexInfo' $P2276 = "119_1335114075.00898" 
    $P2276."finish_static_lexpad"()
    .const 'LexInfo' $P2277 = "149_1335114075.00898" 
    nqp_get_sc_object $P114, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    $P2277."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'LexInfo' $P2278 = "149_1335114075.00898" 
    $P2278."finish_static_lexpad"()
    .const 'LexInfo' $P2279 = "149_1335114075.00898" 
    nqp_get_sc_object $P114, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    $P2279."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'LexInfo' $P2280 = "149_1335114075.00898" 
    $P2280."finish_static_lexpad"()
    .const 'LexInfo' $P2281 = "119_1335114075.00898" 
    nqp_get_sc_object $P114, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 7
    $P2281."set_static_lexpad_value"("NQPNativeHOW", $P114)
    .const 'LexInfo' $P2282 = "119_1335114075.00898" 
    $P2282."finish_static_lexpad"()
    .const 'LexInfo' $P2283 = "182_1335114075.00898" 
    nqp_get_sc_object $P114, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 7
    $P2283."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'LexInfo' $P2284 = "182_1335114075.00898" 
    $P2284."finish_static_lexpad"()
    .const 'LexInfo' $P2285 = "182_1335114075.00898" 
    nqp_get_sc_object $P114, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 7
    $P2285."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'LexInfo' $P2286 = "182_1335114075.00898" 
    $P2286."finish_static_lexpad"()
    .const 'LexInfo' $P2287 = "119_1335114075.00898" 
    nqp_get_sc_object $P114, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 8
    $P2287."set_static_lexpad_value"("NQPAttribute", $P114)
    .const 'LexInfo' $P2288 = "119_1335114075.00898" 
    $P2288."finish_static_lexpad"()
    .const 'LexInfo' $P2289 = "183_1335114075.00898" 
    nqp_get_sc_object $P114, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 8
    $P2289."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'LexInfo' $P2290 = "183_1335114075.00898" 
    $P2290."finish_static_lexpad"()
    .const 'LexInfo' $P2291 = "183_1335114075.00898" 
    nqp_get_sc_object $P114, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 8
    $P2291."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'LexInfo' $P2292 = "183_1335114075.00898" 
    $P2292."finish_static_lexpad"()
    .const 'LexInfo' $P2293 = "119_1335114075.00898" 
    nqp_get_sc_object $P114, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 9
    $P2293."set_static_lexpad_value"("NQPModuleHOW", $P114)
    .const 'LexInfo' $P2294 = "119_1335114075.00898" 
    $P2294."finish_static_lexpad"()
    .const 'LexInfo' $P2295 = "186_1335114075.00898" 
    nqp_get_sc_object $P114, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 9
    $P2295."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'LexInfo' $P2296 = "186_1335114075.00898" 
    $P2296."finish_static_lexpad"()
    .const 'LexInfo' $P2297 = "186_1335114075.00898" 
    nqp_get_sc_object $P114, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 9
    $P2297."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'LexInfo' $P2298 = "186_1335114075.00898" 
    $P2298."finish_static_lexpad"()
    .const 'LexInfo' $P2299 = "119_1335114075.00898" 
    nqp_get_sc_object $P114, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 10
    $P2299."set_static_lexpad_value"("EXPORTHOW", $P114)
    .const 'LexInfo' $P2300 = "119_1335114075.00898" 
    $P2300."finish_static_lexpad"()
    .const 'LexInfo' $P2301 = "187_1335114075.00898" 
    nqp_get_sc_object $P114, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 10
    $P2301."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'LexInfo' $P2302 = "187_1335114075.00898" 
    $P2302."finish_static_lexpad"()
    .const 'LexInfo' $P2303 = "187_1335114075.00898" 
    nqp_get_sc_object $P114, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 10
    $P2303."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'LexInfo' $P2304 = "187_1335114075.00898" 
    $P2304."finish_static_lexpad"()
    nqp_get_sc_object $P114, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 0
    set_hll_global "GLOBAL", $P114
.end


.HLL "nqp"

.namespace []
.sub "_block2130"  :anon :subid("189_1335114075.00898") :outer("119_1335114075.00898")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 0
    .const 'Sub' $P2132 = "10_1335114075.00898" 
    .const 'Sub' $P2133 = "11_1335114075.00898" 
    .const 'Sub' $P2134 = "12_1335114075.00898" 
    .const 'Sub' $P2135 = "13_1335114075.00898" 
    .const 'Sub' $P2136 = "14_1335114075.00898" 
    .const 'Sub' $P2137 = "15_1335114075.00898" 
    .const 'Sub' $P2138 = "16_1335114075.00898" 
    .const 'Sub' $P2139 = "17_1335114075.00898" 
    .const 'Sub' $P2140 = "18_1335114075.00898" 
    .const 'Sub' $P2141 = "19_1335114075.00898" 
    .const 'Sub' $P2142 = "20_1335114075.00898" 
    .const 'Sub' $P2143 = "21_1335114075.00898" 
    .const 'Sub' $P2144 = "22_1335114075.00898" 
    .const 'Sub' $P2145 = "23_1335114075.00898" 
    .const 'Sub' $P2146 = "24_1335114075.00898" 
    .const 'Sub' $P2147 = "25_1335114075.00898" 
    .const 'Sub' $P2148 = "26_1335114075.00898" 
    .const 'Sub' $P2149 = "27_1335114075.00898" 
    .const 'Sub' $P2150 = "28_1335114075.00898" 
    .const 'Sub' $P2151 = "29_1335114075.00898" 
    .const 'Sub' $P2152 = "30_1335114075.00898" 
    .const 'Sub' $P2153 = "31_1335114075.00898" 
    .const 'Sub' $P2154 = "32_1335114075.00898" 
    .const 'Sub' $P2155 = "33_1335114075.00898" 
    .const 'Sub' $P2156 = "34_1335114075.00898" 
    .const 'Sub' $P2157 = "35_1335114075.00898" 
    .const 'Sub' $P2158 = "36_1335114075.00898" 
    .const 'Sub' $P2159 = "37_1335114075.00898" 
    .const 'Sub' $P2160 = "38_1335114075.00898" 
    .const 'Sub' $P2161 = "39_1335114075.00898" 
    .const 'Sub' $P2162 = "40_1335114075.00898" 
    .const 'Sub' $P2163 = "41_1335114075.00898" 
    .const 'Sub' $P2164 = "42_1335114075.00898" 
    .const 'Sub' $P2165 = "43_1335114075.00898" 
    .const 'Sub' $P2166 = "44_1335114075.00898" 
    .const 'Sub' $P2167 = "45_1335114075.00898" 
    .const 'Sub' $P2168 = "46_1335114075.00898" 
    .const 'Sub' $P2169 = "47_1335114075.00898" 
    .const 'Sub' $P2170 = "48_1335114075.00898" 
    .const 'Sub' $P2171 = "49_1335114075.00898" 
    .const 'Sub' $P2172 = "50_1335114075.00898" 
    .const 'Sub' $P2173 = "51_1335114075.00898" 
    .const 'Sub' $P2174 = "52_1335114075.00898" 
    .const 'Sub' $P2175 = "53_1335114075.00898" 
    .const 'Sub' $P2176 = "54_1335114075.00898" 
    .const 'Sub' $P2177 = "55_1335114075.00898" 
    .const 'Sub' $P2178 = "56_1335114075.00898" 
    .const 'Sub' $P2179 = "57_1335114075.00898" 
    .const 'Sub' $P2180 = "58_1335114075.00898" 
    .const 'Sub' $P2181 = "59_1335114075.00898" 
    .const 'Sub' $P2182 = "60_1335114075.00898" 
    .const 'Sub' $P2183 = "61_1335114075.00898" 
    .const 'Sub' $P2184 = "62_1335114075.00898" 
    .const 'Sub' $P2185 = "63_1335114075.00898" 
    .const 'Sub' $P2186 = "64_1335114075.00898" 
    .const 'Sub' $P2187 = "65_1335114075.00898" 
    .const 'Sub' $P2188 = "66_1335114075.00898" 
    .const 'Sub' $P2189 = "67_1335114075.00898" 
    .const 'Sub' $P2190 = "68_1335114075.00898" 
    .const 'Sub' $P2191 = "69_1335114075.00898" 
    .const 'Sub' $P2192 = "70_1335114075.00898" 
    .const 'Sub' $P2193 = "71_1335114075.00898" 
    .const 'Sub' $P2194 = "72_1335114075.00898" 
    .const 'Sub' $P2195 = "73_1335114075.00898" 
    .const 'Sub' $P2196 = "74_1335114075.00898" 
    .const 'Sub' $P2197 = "75_1335114075.00898" 
    .const 'Sub' $P2198 = "76_1335114075.00898" 
    .const 'Sub' $P2199 = "77_1335114075.00898" 
    .const 'Sub' $P2200 = "78_1335114075.00898" 
    .const 'Sub' $P2201 = "79_1335114075.00898" 
    .const 'Sub' $P2202 = "80_1335114075.00898" 
    .const 'Sub' $P2203 = "81_1335114075.00898" 
    .const 'Sub' $P2204 = "82_1335114075.00898" 
    .const 'Sub' $P2205 = "83_1335114075.00898" 
    .const 'Sub' $P2206 = "84_1335114075.00898" 
    .const 'Sub' $P2207 = "85_1335114075.00898" 
    .const 'Sub' $P2208 = "86_1335114075.00898" 
    .const 'Sub' $P2209 = "87_1335114075.00898" 
    .const 'Sub' $P2210 = "88_1335114075.00898" 
    .const 'Sub' $P2211 = "89_1335114075.00898" 
    .const 'Sub' $P2212 = "90_1335114075.00898" 
    .const 'Sub' $P2213 = "91_1335114075.00898" 
    .const 'Sub' $P2214 = "92_1335114075.00898" 
    .const 'Sub' $P2215 = "93_1335114075.00898" 
    .const 'Sub' $P2216 = "94_1335114075.00898" 
    .const 'Sub' $P2217 = "95_1335114075.00898" 
    .const 'Sub' $P2218 = "96_1335114075.00898" 
    .const 'Sub' $P2219 = "97_1335114075.00898" 
    .const 'Sub' $P2220 = "98_1335114075.00898" 
    .const 'Sub' $P2221 = "99_1335114075.00898" 
    .const 'Sub' $P2222 = "100_1335114075.00898" 
    .const 'Sub' $P2223 = "101_1335114075.00898" 
    .const 'Sub' $P2224 = "102_1335114075.00898" 
    .const 'Sub' $P2225 = "103_1335114075.00898" 
    .const 'Sub' $P2226 = "104_1335114075.00898" 
    .const 'Sub' $P2227 = "105_1335114075.00898" 
    .const 'Sub' $P2228 = "106_1335114075.00898" 
    .const 'Sub' $P2229 = "107_1335114075.00898" 
    .const 'Sub' $P2230 = "108_1335114075.00898" 
    .const 'Sub' $P2231 = "109_1335114075.00898" 
    .const 'Sub' $P2232 = "110_1335114075.00898" 
    .const 'Sub' $P2233 = "111_1335114075.00898" 
    .const 'Sub' $P2234 = "112_1335114075.00898" 
    .const 'Sub' $P2235 = "113_1335114075.00898" 
    .const 'Sub' $P2236 = "114_1335114075.00898" 
    .const 'Sub' $P2237 = "115_1335114075.00898" 
    .const 'Sub' $P2238 = "116_1335114075.00898" 
    .const 'Sub' $P2239 = "117_1335114075.00898" 
    .const 'Sub' $P2240 = "118_1335114075.00898" 
    new $P112, "ResizablePMCArray"
    push $P112, $P2132
    push $P112, $P2133
    push $P112, $P2134
    push $P112, $P2135
    push $P112, $P2136
    push $P112, $P2137
    push $P112, $P2138
    push $P112, $P2139
    push $P112, $P2140
    push $P112, $P2141
    push $P112, $P2142
    push $P112, $P2143
    push $P112, $P2144
    push $P112, $P2145
    push $P112, $P2146
    push $P112, $P2147
    push $P112, $P2148
    push $P112, $P2149
    push $P112, $P2150
    push $P112, $P2151
    push $P112, $P2152
    push $P112, $P2153
    push $P112, $P2154
    push $P112, $P2155
    push $P112, $P2156
    push $P112, $P2157
    push $P112, $P2158
    push $P112, $P2159
    push $P112, $P2160
    push $P112, $P2161
    push $P112, $P2162
    push $P112, $P2163
    push $P112, $P2164
    push $P112, $P2165
    push $P112, $P2166
    push $P112, $P2167
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
    .return ($P112)
.end


.HLL "nqp"

.namespace []
.sub "_block1015"  :anon :subid("120_1335114075.00898") :outer("119_1335114075.00898")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 9
    .const 'Sub' $P1046 = "19_1335114075.00898" 
    capture_lex $P1046
    .const 'Sub' $P1044 = "18_1335114075.00898" 
    capture_lex $P1044
    .const 'Sub' $P1042 = "17_1335114075.00898" 
    capture_lex $P1042
    .const 'Sub' $P1040 = "16_1335114075.00898" 
    capture_lex $P1040
    .const 'Sub' $P1038 = "15_1335114075.00898" 
    capture_lex $P1038
    .const 'Sub' $P1036 = "14_1335114075.00898" 
    capture_lex $P1036
    .const 'Sub' $P1034 = "13_1335114075.00898" 
    capture_lex $P1034
    .const 'Sub' $P1032 = "12_1335114075.00898" 
    capture_lex $P1032
    .const 'Sub' $P1026 = "11_1335114075.00898" 
    capture_lex $P1026
    .const 'Sub' $P1019 = "10_1335114075.00898" 
    capture_lex $P1019
    .lex "$?PACKAGE", $P1017
    .lex "$?CLASS", $P1018
.annotate 'line', 68
    .const 'Sub' $P1046 = "19_1335114075.00898" 
    newclosure $P1048, $P1046
.annotate 'line', 9
    .return ($P1048)
.end


.HLL "nqp"

.namespace []
.sub "new" :anon :subid("10_1335114075.00898") :outer("120_1335114075.00898")
    .param pmc param_1020
    .param pmc param_1021 :optional :named("nominal")
    .param int has_param_1021 :opt_flag
    .param pmc param_1022 :optional :named("inheritable")
    .param int has_param_1022 :opt_flag
    .param pmc param_1023 :optional :named("composable")
    .param int has_param_1023 :opt_flag
    .param pmc param_1024 :optional :named("parametric")
    .param int has_param_1024 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 47
    .lex "self", param_1020
    if has_param_1021, optparam_191
    new $P100, "Undef"
    set param_1021, $P100
  optparam_191:
    .lex "$nominal", param_1021
    if has_param_1022, optparam_192
    new $P101, "Undef"
    set param_1022, $P101
  optparam_192:
    .lex "$inheritable", param_1022
    if has_param_1023, optparam_193
    new $P102, "Undef"
    set param_1023, $P102
  optparam_193:
    .lex "$composable", param_1023
    if has_param_1024, optparam_194
    new $P103, "Undef"
    set param_1024, $P103
  optparam_194:
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
    unless_null $P105, vivify_195
    new $P105, "Undef"
  vivify_195:
    set $P106, param_1021
    unless_null $P106, vivify_196
    new $P106, "Undef"
  vivify_196:
    set $P107, param_1022
    unless_null $P107, vivify_197
    new $P107, "Undef"
  vivify_197:
    set $P108, param_1023
    unless_null $P108, vivify_198
    new $P108, "Undef"
  vivify_198:
    set $P109, param_1024
    unless_null $P109, vivify_199
    new $P109, "Undef"
  vivify_199:
    $P105."BUILD"($P106 :named("nominal"), $P107 :named("inheritable"), $P108 :named("composable"), $P109 :named("parametric"))
.annotate 'line', 47
    set $P105, $P1025
    unless_null $P105, vivify_200
    new $P105, "Undef"
  vivify_200:
    .return ($P105)
.end


.HLL "nqp"

.namespace []
.sub "BUILD" :anon :subid("11_1335114075.00898") :outer("120_1335114075.00898")
    .param pmc param_1027
    .param pmc param_1028 :optional :named("nominal")
    .param int has_param_1028 :opt_flag
    .param pmc param_1029 :optional :named("inheritable")
    .param int has_param_1029 :opt_flag
    .param pmc param_1030 :optional :named("composable")
    .param int has_param_1030 :opt_flag
    .param pmc param_1031 :optional :named("parametric")
    .param int has_param_1031 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 54
    .lex "self", param_1027
    if has_param_1028, optparam_201
    new $P100, "Undef"
    set param_1028, $P100
  optparam_201:
    .lex "$nominal", param_1028
    if has_param_1029, optparam_202
    new $P101, "Undef"
    set param_1029, $P101
  optparam_202:
    .lex "$inheritable", param_1029
    if has_param_1030, optparam_203
    new $P102, "Undef"
    set param_1030, $P102
  optparam_203:
    .lex "$composable", param_1030
    if has_param_1031, optparam_204
    new $P103, "Undef"
    set param_1031, $P103
  optparam_204:
    .lex "$parametric", param_1031
.annotate 'line', 55
    set $P104, param_1028
    unless_null $P104, vivify_205
    new $P104, "Undef"
  vivify_205:
    set $P105, param_1027
    nqp_decontainerize $P106, $P105
    nqp_get_sc_object $P107, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 1
    repr_bind_attr_obj $P106, $P107, "$!nominal", 0, $P104
.annotate 'line', 56
    set $P104, param_1029
    unless_null $P104, vivify_206
    new $P104, "Undef"
  vivify_206:
    set $P105, param_1027
    nqp_decontainerize $P106, $P105
    nqp_get_sc_object $P107, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 1
    repr_bind_attr_obj $P106, $P107, "$!inheritable", 2, $P104
.annotate 'line', 57
    set $P104, param_1030
    unless_null $P104, vivify_207
    new $P104, "Undef"
  vivify_207:
    set $P105, param_1027
    nqp_decontainerize $P106, $P105
    nqp_get_sc_object $P107, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 1
    repr_bind_attr_obj $P106, $P107, "$!composable", 4, $P104
.annotate 'line', 58
    set $P104, param_1031
    unless_null $P104, vivify_208
    new $P104, "Undef"
  vivify_208:
    set $P105, param_1027
    nqp_decontainerize $P106, $P105
    nqp_get_sc_object $P107, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 1
    repr_bind_attr_obj $P106, $P107, "$!parametric", 7, $P104
.annotate 'line', 54
    .return ($P104)
.end


.HLL "nqp"

.namespace []
.sub "nominal" :anon :subid("12_1335114075.00898") :outer("120_1335114075.00898")
    .param pmc param_1033
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 61
    .lex "self", param_1033
    set $P100, param_1033
    nqp_decontainerize $P101, $P100
    nqp_get_sc_object $P102, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 1
    repr_get_attr_obj $P103, $P101, $P102, "$!nominal", 0
    unless_null $P103, vivify_209
    new $P103, "Undef"
  vivify_209:
    .return ($P103)
.end


.HLL "nqp"

.namespace []
.sub "nominalizable" :anon :subid("13_1335114075.00898") :outer("120_1335114075.00898")
    .param pmc param_1035
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 62
    .lex "self", param_1035
    set $P100, param_1035
    nqp_decontainerize $P101, $P100
    nqp_get_sc_object $P102, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 1
    repr_get_attr_obj $P103, $P101, $P102, "$!nominalizable", 1
    unless_null $P103, vivify_210
    new $P103, "Undef"
  vivify_210:
    .return ($P103)
.end


.HLL "nqp"

.namespace []
.sub "inheritable" :anon :subid("14_1335114075.00898") :outer("120_1335114075.00898")
    .param pmc param_1037
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 63
    .lex "self", param_1037
    set $P100, param_1037
    nqp_decontainerize $P101, $P100
    nqp_get_sc_object $P102, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 1
    repr_get_attr_obj $P103, $P101, $P102, "$!inheritable", 2
    unless_null $P103, vivify_211
    new $P103, "Undef"
  vivify_211:
    .return ($P103)
.end


.HLL "nqp"

.namespace []
.sub "inheritalizable" :anon :subid("15_1335114075.00898") :outer("120_1335114075.00898")
    .param pmc param_1039
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 64
    .lex "self", param_1039
    set $P100, param_1039
    nqp_decontainerize $P101, $P100
    nqp_get_sc_object $P102, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 1
    repr_get_attr_obj $P103, $P101, $P102, "$!inheritalizable", 3
    unless_null $P103, vivify_212
    new $P103, "Undef"
  vivify_212:
    .return ($P103)
.end


.HLL "nqp"

.namespace []
.sub "composable" :anon :subid("16_1335114075.00898") :outer("120_1335114075.00898")
    .param pmc param_1041
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 65
    .lex "self", param_1041
    set $P100, param_1041
    nqp_decontainerize $P101, $P100
    nqp_get_sc_object $P102, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 1
    repr_get_attr_obj $P103, $P101, $P102, "$!composable", 4
    unless_null $P103, vivify_213
    new $P103, "Undef"
  vivify_213:
    .return ($P103)
.end


.HLL "nqp"

.namespace []
.sub "composalizable" :anon :subid("17_1335114075.00898") :outer("120_1335114075.00898")
    .param pmc param_1043
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 66
    .lex "self", param_1043
    set $P100, param_1043
    nqp_decontainerize $P101, $P100
    nqp_get_sc_object $P102, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 1
    repr_get_attr_obj $P103, $P101, $P102, "$!composalizable", 5
    unless_null $P103, vivify_214
    new $P103, "Undef"
  vivify_214:
    .return ($P103)
.end


.HLL "nqp"

.namespace []
.sub "generic" :anon :subid("18_1335114075.00898") :outer("120_1335114075.00898")
    .param pmc param_1045
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 67
    .lex "self", param_1045
    set $P100, param_1045
    nqp_decontainerize $P101, $P100
    nqp_get_sc_object $P102, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 1
    repr_get_attr_obj $P103, $P101, $P102, "$!generic", 6
    unless_null $P103, vivify_215
    new $P103, "Undef"
  vivify_215:
    .return ($P103)
.end


.HLL "nqp"

.namespace []
.sub "parametric" :anon :subid("19_1335114075.00898") :outer("120_1335114075.00898")
    .param pmc param_1047
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 68
    .lex "self", param_1047
    set $P100, param_1047
    nqp_decontainerize $P101, $P100
    nqp_get_sc_object $P102, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 1
    repr_get_attr_obj $P103, $P101, $P102, "$!parametric", 7
    unless_null $P103, vivify_216
    new $P103, "Undef"
  vivify_216:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block1049"  :subid("121_1335114075.00898") :outer("119_1335114075.00898")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 72
    .const 'Sub' $P1053 = "20_1335114075.00898" 
    capture_lex $P1053
    .lex "$?PACKAGE", $P1051
    .lex "$?CLASS", $P1052
.annotate 'line', 73
    .const 'Sub' $P1053 = "20_1335114075.00898" 
    newclosure $P1148, $P1053
.annotate 'line', 72
    .return ($P1148)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "apply" :anon :subid("20_1335114075.00898") :outer("121_1335114075.00898")
    .param pmc param_1056
    .param pmc param_1057
    .param pmc param_1058
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 73
    .const 'Sub' $P1123 = "127_1335114075.00898" 
    capture_lex $P1123
    .const 'Sub' $P1108 = "126_1335114075.00898" 
    capture_lex $P1108
    .const 'Sub' $P1102 = "125_1335114075.00898" 
    capture_lex $P1102
    .const 'Sub' $P1070 = "122_1335114075.00898" 
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
    unless_null $P1067, vivify_217
    $P1067 = root_new ['parrot';'Hash']
  vivify_217:
.annotate 'line', 76
    set $P1068, param_1058
    unless_null $P1068, vivify_218
    $P1068 = root_new ['parrot';'ResizablePMCArray']
  vivify_218:
    defined $I100, $P1068
    unless $I100, for_undef_219
    iter $P100, $P1068
    new $P103, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P103, loop1098_handler
    push_eh $P103
  loop1098_test:
    unless $P100, loop1098_done
    shift $P101, $P100
  loop1098_redo:
    .const 'Sub' $P1070 = "122_1335114075.00898" 
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
  for_undef_219:
.annotate 'line', 73
    set $P1099, $P1061
    unless_null $P1099, vivify_243
    $P1099 = root_new ['parrot';'Hash']
  vivify_243:
.annotate 'line', 102
    set $P100, param_1057
    unless_null $P100, vivify_244
    new $P100, "Undef"
  vivify_244:
    get_how $P101, $P100
    set $P102, param_1057
    unless_null $P102, vivify_245
    new $P102, "Undef"
  vivify_245:
    $P103 = $P101."methods"($P102)
    set $P1063, $P103
.annotate 'line', 103
    set $P1100, $P1063
    unless_null $P1100, vivify_246
    $P1100 = root_new ['parrot';'ResizablePMCArray']
  vivify_246:
    defined $I100, $P1100
    unless $I100, for_undef_247
    iter $P100, $P1100
    new $P103, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P103, loop1105_handler
    push_eh $P103
  loop1105_test:
    unless $P100, loop1105_done
    shift $P101, $P100
  loop1105_redo:
    .const 'Sub' $P1102 = "125_1335114075.00898" 
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
  for_undef_247:
.annotate 'line', 108
    set $P1106, $P1059
    unless_null $P1106, vivify_251
    $P1106 = root_new ['parrot';'Hash']
  vivify_251:
    defined $I100, $P1106
    unless $I100, for_undef_252
    iter $P100, $P1106
    new $P104, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P104, loop1119_handler
    push_eh $P104
  loop1119_test:
    unless $P100, loop1119_done
    shift $P101, $P100
  loop1119_redo:
    .const 'Sub' $P1108 = "126_1335114075.00898" 
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
  for_undef_252:
.annotate 'line', 73
    set $P1120, $P1065
    unless_null $P1120, vivify_269
    $P1120 = root_new ['parrot';'ResizablePMCArray']
  vivify_269:
.annotate 'line', 128
    set $P1121, param_1058
    unless_null $P1121, vivify_270
    $P1121 = root_new ['parrot';'ResizablePMCArray']
  vivify_270:
    defined $I100, $P1121
    unless $I100, for_undef_271
    iter $P100, $P1121
    new $P103, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P103, loop1146_handler
    push_eh $P103
  loop1146_test:
    unless $P100, loop1146_done
    shift $P101, $P100
  loop1146_redo:
    .const 'Sub' $P1123 = "127_1335114075.00898" 
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
  for_undef_271:
.annotate 'line', 157
    new $P100, "Exception"
    set $P100['type'], .CONTROL_RETURN
    set $P1147, $P1065
    unless_null $P1147, vivify_293
    $P1147 = root_new ['parrot';'ResizablePMCArray']
  vivify_293:
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
.sub "_block1069"  :anon :subid("122_1335114075.00898") :outer("20_1335114075.00898")
    .param pmc param_1073
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 76
    .const 'Sub' $P1076 = "123_1335114075.00898" 
    capture_lex $P1076
.annotate 'line', 77
    $P1072 = root_new ['parrot';'ResizablePMCArray']
    set $P1071, $P1072
    .lex "@methods", $P1071
    .lex "$_", param_1073
    find_lex $P102, "$_"
    unless_null $P102, vivify_220
    new $P102, "Undef"
  vivify_220:
    get_how $P103, $P102
    find_lex $P104, "$_"
    unless_null $P104, vivify_221
    new $P104, "Undef"
  vivify_221:
    $P105 = $P103."methods"($P104)
    set $P1071, $P105
.annotate 'line', 78
    set $P1074, $P1071
    unless_null $P1074, vivify_222
    $P1074 = root_new ['parrot';'ResizablePMCArray']
  vivify_222:
    defined $I101, $P1074
    unless $I101, for_undef_223
    iter $P102, $P1074
    new $P108, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P108, loop1097_handler
    push_eh $P108
  loop1097_test:
    unless $P102, loop1097_done
    shift $P103, $P102
  loop1097_redo:
    .const 'Sub' $P1076 = "123_1335114075.00898" 
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
  for_undef_223:
.annotate 'line', 76
    .return ($P102)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block1075"  :anon :subid("123_1335114075.00898") :outer("122_1335114075.00898")
    .param pmc param_1082
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 78
    .const 'Sub' $P1091 = "124_1335114075.00898" 
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
    unless_null $P107, vivify_224
    new $P107, "Undef"
  vivify_224:
    set $S100, $P107
    new $P108, 'String'
    set $P108, $S100
    set $P1077, $P108
.annotate 'line', 80
    find_lex $P107, "$_"
    unless_null $P107, vivify_225
    new $P107, "Undef"
  vivify_225:
    set $P1078, $P107
.annotate 'line', 78
    set $P1083, $P1079
    unless_null $P1083, vivify_226
    $P1083 = root_new ['parrot';'ResizablePMCArray']
  vivify_226:
.annotate 'line', 82
    set $P107, $P1077
    unless_null $P107, vivify_227
    new $P107, "Undef"
  vivify_227:
    find_lex $P1085, "%meth_info"
    unless_null $P1085, vivify_228
    $P1085 = root_new ['parrot';'Hash']
  vivify_228:
    set $P108, $P1085[$P107]
    unless_null $P108, vivify_229
    new $P108, "Undef"
  vivify_229:
    defined $I102, $P108
    if $I102, if_1084
.annotate 'line', 86
    set $P1087, $P1079
    unless_null $P1087, vivify_230
    $P1087 = root_new ['parrot';'ResizablePMCArray']
  vivify_230:
    set $P109, $P1077
    unless_null $P109, vivify_231
    new $P109, "Undef"
  vivify_231:
    find_lex $P1088, "%meth_info"
    unless_null $P1088, vivify_232
    $P1088 = root_new ['parrot';'Hash']
    store_lex "%meth_info", $P1088
  vivify_232:
    set $P1088[$P109], $P1087
.annotate 'line', 85
    goto if_1084_end
  if_1084:
.annotate 'line', 83
    set $P109, $P1077
    unless_null $P109, vivify_233
    new $P109, "Undef"
  vivify_233:
    find_lex $P1086, "%meth_info"
    unless_null $P1086, vivify_234
    $P1086 = root_new ['parrot';'Hash']
  vivify_234:
    set $P110, $P1086[$P109]
    unless_null $P110, vivify_235
    new $P110, "Undef"
  vivify_235:
    set $P1079, $P110
  if_1084_end:
.annotate 'line', 88
    new $P107, "Float"
    assign $P107, 0
    set $P1081, $P107
.annotate 'line', 89
    set $P1089, $P1079
    unless_null $P1089, vivify_236
    $P1089 = root_new ['parrot';'ResizablePMCArray']
  vivify_236:
    defined $I102, $P1089
    unless $I102, for_undef_237
    iter $P107, $P1089
    new $P110, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P110, loop1094_handler
    push_eh $P110
  loop1094_test:
    unless $P107, loop1094_done
    shift $P108, $P107
  loop1094_redo:
    .const 'Sub' $P1091 = "124_1335114075.00898" 
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
  for_undef_237:
.annotate 'line', 94
    set $P108, $P1081
    unless_null $P108, vivify_240
    new $P108, "Undef"
  vivify_240:
    unless $P108, unless_1095
    set $P107, $P108
    goto unless_1095_end
  unless_1095:
.annotate 'line', 95
    set $P1096, $P1079
    unless_null $P1096, vivify_241
    $P1096 = root_new ['parrot';'ResizablePMCArray']
  vivify_241:
    set $P109, $P1078
    unless_null $P109, vivify_242
    new $P109, "Undef"
  vivify_242:
    $P110 = $P1096."push"($P109)
.annotate 'line', 94
    set $P107, $P110
  unless_1095_end:
.annotate 'line', 78
    .return ($P107)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block1090"  :anon :subid("124_1335114075.00898") :outer("123_1335114075.00898")
    .param pmc param_1092
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 89
    .lex "$_", param_1092
.annotate 'line', 90
    find_lex $P110, "$meth"
    unless_null $P110, vivify_238
    new $P110, "Undef"
  vivify_238:
    find_lex $P111, "$_"
    unless_null $P111, vivify_239
    new $P111, "Undef"
  vivify_239:
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
.sub "_block1101"  :anon :subid("125_1335114075.00898") :outer("20_1335114075.00898")
    .param pmc param_1103
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 103
    .lex "$_", param_1103
.annotate 'line', 104
    find_lex $P102, "$_"
    unless_null $P102, vivify_248
    new $P102, "Undef"
  vivify_248:
    find_lex $P103, "$_"
    unless_null $P103, vivify_249
    new $P103, "Undef"
  vivify_249:
    set $S100, $P103
    find_lex $P1104, "%target_meth_info"
    unless_null $P1104, vivify_250
    $P1104 = root_new ['parrot';'Hash']
    store_lex "%target_meth_info", $P1104
  vivify_250:
    set $P1104[$S100], $P102
.annotate 'line', 103
    .return ($P102)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block1107"  :anon :subid("126_1335114075.00898") :outer("20_1335114075.00898")
    .param pmc param_1112
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
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
    unless_null $P103, vivify_253
    new $P103, "Undef"
  vivify_253:
    set $S100, $P103
    new $P104, 'String'
    set $P104, $S100
    set $P1109, $P104
.annotate 'line', 110
    set $P103, $P1109
    unless_null $P103, vivify_254
    new $P103, "Undef"
  vivify_254:
    find_lex $P1113, "%meth_info"
    unless_null $P1113, vivify_255
    $P1113 = root_new ['parrot';'Hash']
  vivify_255:
    set $P104, $P1113[$P103]
    unless_null $P104, vivify_256
    new $P104, "Undef"
  vivify_256:
    set $P1110, $P104
.annotate 'line', 114
    set $P104, $P1109
    unless_null $P104, vivify_257
    new $P104, "Undef"
  vivify_257:
    find_lex $P1115, "%target_meth_info"
    unless_null $P1115, vivify_258
    $P1115 = root_new ['parrot';'Hash']
  vivify_258:
    set $P105, $P1115[$P104]
    unless_null $P105, vivify_259
    new $P105, "Undef"
  vivify_259:
    defined $I101, $P105
    unless $I101, unless_1114
    new $P103, 'Integer'
    set $P103, $I101
    goto unless_1114_end
  unless_1114:
.annotate 'line', 116
    set $P1117, $P1110
    unless_null $P1117, vivify_260
    $P1117 = root_new ['parrot';'ResizablePMCArray']
  vivify_260:
    set $N100, $P1117
    set $N101, 1
    iseq $I102, $N100, $N101
    if $I102, if_1116
.annotate 'line', 121
    find_lex $P107, "$target"
    unless_null $P107, vivify_261
    new $P107, "Undef"
  vivify_261:
    get_how $P108, $P107
    find_lex $P109, "$target"
    unless_null $P109, vivify_262
    new $P109, "Undef"
  vivify_262:
    set $P110, $P1109
    unless_null $P110, vivify_263
    new $P110, "Undef"
  vivify_263:
    $P111 = $P108."add_collision"($P109, $P110)
.annotate 'line', 119
    set $P106, $P111
.annotate 'line', 116
    goto if_1116_end
  if_1116:
.annotate 'line', 117
    find_lex $P107, "$target"
    unless_null $P107, vivify_264
    new $P107, "Undef"
  vivify_264:
    get_how $P108, $P107
    find_lex $P109, "$target"
    unless_null $P109, vivify_265
    new $P109, "Undef"
  vivify_265:
    set $P110, $P1109
    unless_null $P110, vivify_266
    new $P110, "Undef"
  vivify_266:
    new $P111, "Float"
    assign $P111, 0
    set $I103, $P111
    set $P1118, $P1110
    unless_null $P1118, vivify_267
    $P1118 = root_new ['parrot';'ResizablePMCArray']
  vivify_267:
    set $P112, $P1118[$I103]
    unless_null $P112, vivify_268
    new $P112, "Undef"
  vivify_268:
    $P113 = $P108."add_method"($P109, $P110, $P112)
.annotate 'line', 116
    set $P106, $P113
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
.sub "_block1122"  :anon :subid("127_1335114075.00898") :outer("20_1335114075.00898")
    .param pmc param_1127
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 128
    .const 'Sub' $P1130 = "128_1335114075.00898" 
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
    unless_null $P103, vivify_272
    new $P103, "Undef"
  vivify_272:
    get_how $P104, $P103
    set $P1124, $P104
.annotate 'line', 132
    set $P103, $P1124
    unless_null $P103, vivify_273
    new $P103, "Undef"
  vivify_273:
    find_lex $P104, "$_"
    unless_null $P104, vivify_274
    new $P104, "Undef"
  vivify_274:
    $P105 = $P103."attributes"($P104)
    set $P1125, $P105
.annotate 'line', 133
    set $P1128, $P1125
    unless_null $P1128, vivify_275
    $P1128 = root_new ['parrot';'ResizablePMCArray']
  vivify_275:
    defined $I101, $P1128
    unless $I101, for_undef_276
    iter $P103, $P1128
    new $P108, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P108, loop1144_handler
    push_eh $P108
  loop1144_test:
    unless $P103, loop1144_done
    shift $P104, $P103
  loop1144_redo:
    .const 'Sub' $P1130 = "128_1335114075.00898" 
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
  for_undef_276:
.annotate 'line', 154
    find_lex $P1145, "@all_roles"
    unless_null $P1145, vivify_291
    $P1145 = root_new ['parrot';'ResizablePMCArray']
  vivify_291:
    find_lex $P103, "$_"
    unless_null $P103, vivify_292
    new $P103, "Undef"
  vivify_292:
    $P104 = $P1145."push"($P103)
.annotate 'line', 128
    .return ($P104)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block1129"  :anon :subid("128_1335114075.00898") :outer("127_1335114075.00898")
    .param pmc param_1135
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 133
    .const 'Sub' $P1138 = "129_1335114075.00898" 
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
    unless_null $P107, vivify_277
    new $P107, "Undef"
  vivify_277:
    set $P1131, $P107
.annotate 'line', 135
    new $P107, "Float"
    assign $P107, 0
    set $P1132, $P107
.annotate 'line', 136
    find_lex $P107, "$target"
    unless_null $P107, vivify_278
    new $P107, "Undef"
  vivify_278:
    get_how $P108, $P107
    find_lex $P109, "$target"
    unless_null $P109, vivify_279
    new $P109, "Undef"
  vivify_279:
    $P110 = $P108."attributes"($P109)
    set $P1133, $P110
.annotate 'line', 137
    set $P1136, $P1133
    unless_null $P1136, vivify_280
    $P1136 = root_new ['parrot';'ResizablePMCArray']
  vivify_280:
    defined $I102, $P1136
    unless $I102, for_undef_281
    iter $P107, $P1136
    new $P110, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P110, loop1142_handler
    push_eh $P110
  loop1142_test:
    unless $P107, loop1142_done
    shift $P108, $P107
  loop1142_redo:
    .const 'Sub' $P1138 = "129_1335114075.00898" 
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
  for_undef_281:
.annotate 'line', 147
    set $P108, $P1132
    unless_null $P108, vivify_287
    new $P108, "Undef"
  vivify_287:
    unless $P108, unless_1143
    set $P107, $P108
    goto unless_1143_end
  unless_1143:
.annotate 'line', 148
    find_lex $P109, "$target"
    unless_null $P109, vivify_288
    new $P109, "Undef"
  vivify_288:
    get_how $P110, $P109
    find_lex $P111, "$target"
    unless_null $P111, vivify_289
    new $P111, "Undef"
  vivify_289:
    set $P112, $P1131
    unless_null $P112, vivify_290
    new $P112, "Undef"
  vivify_290:
    $P113 = $P110."add_attribute"($P111, $P112)
.annotate 'line', 147
    set $P107, $P113
  unless_1143_end:
.annotate 'line', 133
    .return ($P107)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block1137"  :anon :subid("129_1335114075.00898") :outer("128_1335114075.00898")
    .param pmc param_1139
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 137
    .lex "$_", param_1139
.annotate 'line', 138
    find_lex $P110, "$_"
    unless_null $P110, vivify_282
    new $P110, "Undef"
  vivify_282:
    find_lex $P111, "$add_attr"
    unless_null $P111, vivify_283
    new $P111, "Undef"
  vivify_283:
    issame $I103, $P110, $P111
    if $I103, if_1140
.annotate 'line', 142
    find_lex $P114, "$_"
    unless_null $P114, vivify_284
    new $P114, "Undef"
  vivify_284:
    $S100 = $P114."name"()
    find_lex $P115, "$add_attr"
    unless_null $P115, vivify_285
    new $P115, "Undef"
  vivify_285:
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
    unless_null $P117, vivify_286
    new $P117, "Undef"
  vivify_286:
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
.sub "_block1149"  :subid("130_1335114075.00898") :outer("119_1335114075.00898")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 164
    .const 'Sub' $P1277 = "39_1335114075.00898" 
    capture_lex $P1277
    .const 'Sub' $P1273 = "38_1335114075.00898" 
    capture_lex $P1273
    .const 'Sub' $P1269 = "37_1335114075.00898" 
    capture_lex $P1269
    .const 'Sub' $P1255 = "36_1335114075.00898" 
    capture_lex $P1255
    .const 'Sub' $P1252 = "35_1335114075.00898" 
    capture_lex $P1252
    .const 'Sub' $P1248 = "34_1335114075.00898" 
    capture_lex $P1248
    .const 'Sub' $P1244 = "33_1335114075.00898" 
    capture_lex $P1244
    .const 'Sub' $P1230 = "32_1335114075.00898" 
    capture_lex $P1230
    .const 'Sub' $P1215 = "31_1335114075.00898" 
    capture_lex $P1215
    .const 'Sub' $P1209 = "30_1335114075.00898" 
    capture_lex $P1209
    .const 'Sub' $P1203 = "29_1335114075.00898" 
    capture_lex $P1203
    .const 'Sub' $P1199 = "28_1335114075.00898" 
    capture_lex $P1199
    .const 'Sub' $P1191 = "27_1335114075.00898" 
    capture_lex $P1191
    .const 'Sub' $P1178 = "26_1335114075.00898" 
    capture_lex $P1178
    .const 'Sub' $P1170 = "25_1335114075.00898" 
    capture_lex $P1170
    .const 'Sub' $P1165 = "24_1335114075.00898" 
    capture_lex $P1165
    .const 'Sub' $P1161 = "23_1335114075.00898" 
    capture_lex $P1161
    .const 'Sub' $P1156 = "22_1335114075.00898" 
    capture_lex $P1156
    .const 'Sub' $P1154 = "21_1335114075.00898" 
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
    .const 'Sub' $P1277 = "39_1335114075.00898" 
    newclosure $P1280, $P1277
.annotate 'line', 164
    .return ($P1280)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "archetypes" :anon :subid("21_1335114075.00898") :outer("130_1335114075.00898")
    .param pmc param_1155
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 191
    .lex "self", param_1155
    find_lex $P101, "$archetypes"
    unless_null $P101, vivify_294
    new $P101, "Undef"
  vivify_294:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "new" :anon :subid("22_1335114075.00898") :outer("130_1335114075.00898")
    .param pmc param_1157
    .param pmc param_1158 :named("name")
    .param pmc param_1159 :named("instance_of")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
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
    unless_null $P102, vivify_295
    new $P102, "Undef"
  vivify_295:
    set $P103, param_1158
    unless_null $P103, vivify_296
    new $P103, "Undef"
  vivify_296:
    set $P104, param_1159
    unless_null $P104, vivify_297
    new $P104, "Undef"
  vivify_297:
    $P102."BUILD"($P103 :named("name"), $P104 :named("instance_of"))
.annotate 'line', 200
    set $P102, $P1160
    unless_null $P102, vivify_298
    new $P102, "Undef"
  vivify_298:
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "BUILD" :anon :subid("23_1335114075.00898") :outer("130_1335114075.00898")
    .param pmc param_1162
    .param pmc param_1163 :named("name")
    .param pmc param_1164 :named("instance_of")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 206
    .lex "self", param_1162
    .lex "$name", param_1163
    .lex "$instance_of", param_1164
.annotate 'line', 207
    set $P101, param_1163
    unless_null $P101, vivify_299
    new $P101, "Undef"
  vivify_299:
    set $P102, param_1162
    nqp_decontainerize $P103, $P102
    nqp_get_sc_object $P104, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 3
    repr_bind_attr_obj $P103, $P104, "$!name", 0, $P101
.annotate 'line', 208
    set $P101, param_1164
    unless_null $P101, vivify_300
    new $P101, "Undef"
  vivify_300:
    set $P102, param_1162
    nqp_decontainerize $P103, $P102
    nqp_get_sc_object $P104, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 3
    repr_bind_attr_obj $P103, $P104, "$!instance_of", 1, $P101
.annotate 'line', 206
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "new_type" :anon :subid("24_1335114075.00898") :outer("130_1335114075.00898")
    .param pmc param_1166
    .param pmc param_1168 :named("instance_of")
    .param pmc param_1167 :optional :named("name")
    .param int has_param_1167 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 213
    .lex "self", param_1166
    if has_param_1167, optparam_301
    new $P101, "String"
    assign $P101, "<anon>"
    set param_1167, $P101
  optparam_301:
    .lex "$name", param_1167
    .lex "$instance_of", param_1168
.annotate 'line', 214
    new $P102, "Undef"
    set $P1169, $P102
    .lex "$metarole", $P1169
    set $P103, param_1166
    nqp_decontainerize $P104, $P103
    set $P105, param_1167
    unless_null $P105, vivify_302
    new $P105, "Undef"
  vivify_302:
    set $P106, param_1168
    unless_null $P106, vivify_303
    new $P106, "Undef"
  vivify_303:
    $P107 = $P104."new"($P105 :named("name"), $P106 :named("instance_of"))
    set $P1169, $P107
.annotate 'line', 215
    set $P103, $P1169
    unless_null $P103, vivify_304
    new $P103, "Undef"
  vivify_304:
    new $P104, "String"
    assign $P104, "Uninstantiable"
    set $S100, $P104
    repr_type_object_for $P105, $P103, $S100
.annotate 'line', 213
    .return ($P105)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_method" :anon :subid("25_1335114075.00898") :outer("130_1335114075.00898")
    .param pmc param_1171
    .param pmc param_1172
    .param pmc param_1173
    .param pmc param_1174
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 218
    .lex "self", param_1171
    .lex "$obj", param_1172
    .lex "$name", param_1173
    .lex "$code_obj", param_1174
.annotate 'line', 219
    set $P101, param_1173
    unless_null $P101, vivify_305
    new $P101, "Undef"
  vivify_305:
    set $P102, param_1171
    nqp_decontainerize $P103, $P102
    nqp_get_sc_object $P104, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 3
    repr_get_attr_obj $P1176, $P103, $P104, "%!methods", 3
    unless_null $P1176, vivify_306
    $P1176 = root_new ['parrot';'Hash']
  vivify_306:
    set $P105, $P1176[$P101]
    unless_null $P105, vivify_307
    new $P105, "Undef"
  vivify_307:
    unless $P105, if_1175_end
.annotate 'line', 220
    new $P106, "String"
    assign $P106, "This role already has a method named "
    set $P107, param_1173
    unless_null $P107, vivify_308
    new $P107, "Undef"
  vivify_308:
    concat $P108, $P106, $P107
    die $P108
  if_1175_end:
.annotate 'line', 222
    set $P101, param_1174
    unless_null $P101, vivify_309
    new $P101, "Undef"
  vivify_309:
    set $P102, param_1173
    unless_null $P102, vivify_310
    new $P102, "Undef"
  vivify_310:
    set $P103, param_1171
    nqp_decontainerize $P104, $P103
    nqp_get_sc_object $P105, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 3
    repr_get_attr_obj $P1177, $P104, $P105, "%!methods", 3
    unless_null $P1177, vivify_311
    $P1177 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P104, $P105, "%!methods", 3, $P1177
  vivify_311:
    set $P1177[$P102], $P101
.annotate 'line', 218
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_multi_method" :anon :subid("26_1335114075.00898") :outer("130_1335114075.00898")
    .param pmc param_1179
    .param pmc param_1180
    .param pmc param_1181
    .param pmc param_1182
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
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
    unless_null $P1185, vivify_312
    $P1185 = root_new ['parrot';'Hash']
  vivify_312:
.annotate 'line', 227
    set $P101, param_1181
    unless_null $P101, vivify_313
    new $P101, "Undef"
  vivify_313:
    set $P1186, $P1183
    unless_null $P1186, vivify_314
    $P1186 = root_new ['parrot';'Hash']
    set $P1183, $P1186
  vivify_314:
    set $P1186["name"], $P101
.annotate 'line', 228
    set $P101, param_1182
    unless_null $P101, vivify_315
    new $P101, "Undef"
  vivify_315:
    set $P1187, $P1183
    unless_null $P1187, vivify_316
    $P1187 = root_new ['parrot';'Hash']
    set $P1183, $P1187
  vivify_316:
    set $P1187["code"], $P101
.annotate 'line', 229
    set $P1188, $P1183
    unless_null $P1188, vivify_317
    $P1188 = root_new ['parrot';'Hash']
  vivify_317:
    set $P101, param_1179
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 3
    repr_get_attr_obj $P1189, $P102, $P103, "@!multi_methods_to_incorporate", 4
    unless_null $P1189, vivify_318
    $P1189 = root_new ['parrot';'ResizablePMCArray']
  vivify_318:
    set $N100, $P1189
    set $I100, $N100
    set $P104, param_1179
    nqp_decontainerize $P105, $P104
    nqp_get_sc_object $P106, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 3
    repr_get_attr_obj $P1190, $P105, $P106, "@!multi_methods_to_incorporate", 4
    unless_null $P1190, vivify_319
    $P1190 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P105, $P106, "@!multi_methods_to_incorporate", 4, $P1190
  vivify_319:
    set $P1190[$I100], $P1188
.annotate 'line', 225
    set $P101, param_1182
    unless_null $P101, vivify_320
    new $P101, "Undef"
  vivify_320:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_attribute" :anon :subid("27_1335114075.00898") :outer("130_1335114075.00898")
    .param pmc param_1192
    .param pmc param_1193
    .param pmc param_1194
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 233
    .lex "self", param_1192
    .lex "$obj", param_1193
    .lex "$meta_attr", param_1194
.annotate 'line', 234
    new $P101, "Undef"
    set $P1195, $P101
    .lex "$name", $P1195
    set $P102, param_1194
    unless_null $P102, vivify_321
    new $P102, "Undef"
  vivify_321:
    $P103 = $P102."name"()
    set $P1195, $P103
.annotate 'line', 235
    set $P102, $P1195
    unless_null $P102, vivify_322
    new $P102, "Undef"
  vivify_322:
    set $P103, param_1192
    nqp_decontainerize $P104, $P103
    nqp_get_sc_object $P105, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 3
    repr_get_attr_obj $P1197, $P104, $P105, "%!attributes", 2
    unless_null $P1197, vivify_323
    $P1197 = root_new ['parrot';'Hash']
  vivify_323:
    set $P106, $P1197[$P102]
    unless_null $P106, vivify_324
    new $P106, "Undef"
  vivify_324:
    unless $P106, if_1196_end
.annotate 'line', 236
    new $P107, "String"
    assign $P107, "This role already has an attribute named "
    set $P108, $P1195
    unless_null $P108, vivify_325
    new $P108, "Undef"
  vivify_325:
    concat $P109, $P107, $P108
    die $P109
  if_1196_end:
.annotate 'line', 238
    set $P102, param_1194
    unless_null $P102, vivify_326
    new $P102, "Undef"
  vivify_326:
    set $P103, $P1195
    unless_null $P103, vivify_327
    new $P103, "Undef"
  vivify_327:
    set $P104, param_1192
    nqp_decontainerize $P105, $P104
    nqp_get_sc_object $P106, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 3
    repr_get_attr_obj $P1198, $P105, $P106, "%!attributes", 2
    unless_null $P1198, vivify_328
    $P1198 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P105, $P106, "%!attributes", 2, $P1198
  vivify_328:
    set $P1198[$P103], $P102
.annotate 'line', 233
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_parent" :anon :subid("28_1335114075.00898") :outer("130_1335114075.00898")
    .param pmc param_1200
    .param pmc param_1201
    .param pmc param_1202
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
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
.sub "add_role" :anon :subid("29_1335114075.00898") :outer("130_1335114075.00898")
    .param pmc param_1204
    .param pmc param_1205
    .param pmc param_1206
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 245
    .lex "self", param_1204
    .lex "$obj", param_1205
    .lex "$role", param_1206
.annotate 'line', 246
    set $P101, param_1206
    unless_null $P101, vivify_329
    new $P101, "Undef"
  vivify_329:
    set $P102, param_1204
    nqp_decontainerize $P103, $P102
    nqp_get_sc_object $P104, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 3
    repr_get_attr_obj $P1207, $P103, $P104, "@!roles", 6
    unless_null $P1207, vivify_330
    $P1207 = root_new ['parrot';'ResizablePMCArray']
  vivify_330:
    set $N100, $P1207
    set $I100, $N100
    set $P105, param_1204
    nqp_decontainerize $P106, $P105
    nqp_get_sc_object $P107, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 3
    repr_get_attr_obj $P1208, $P106, $P107, "@!roles", 6
    unless_null $P1208, vivify_331
    $P1208 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P106, $P107, "@!roles", 6, $P1208
  vivify_331:
    set $P1208[$I100], $P101
.annotate 'line', 245
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_collision" :anon :subid("30_1335114075.00898") :outer("130_1335114075.00898")
    .param pmc param_1210
    .param pmc param_1211
    .param pmc param_1212
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 249
    .lex "self", param_1210
    .lex "$obj", param_1211
    .lex "$colliding_name", param_1212
.annotate 'line', 250
    set $P101, param_1212
    unless_null $P101, vivify_332
    new $P101, "Undef"
  vivify_332:
    set $P102, param_1210
    nqp_decontainerize $P103, $P102
    nqp_get_sc_object $P104, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 3
    repr_get_attr_obj $P1213, $P103, $P104, "@!collisions", 5
    unless_null $P1213, vivify_333
    $P1213 = root_new ['parrot';'ResizablePMCArray']
  vivify_333:
    set $N100, $P1213
    set $I100, $N100
    set $P105, param_1210
    nqp_decontainerize $P106, $P105
    nqp_get_sc_object $P107, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 3
    repr_get_attr_obj $P1214, $P106, $P107, "@!collisions", 5
    unless_null $P1214, vivify_334
    $P1214 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P106, $P107, "@!collisions", 5, $P1214
  vivify_334:
    set $P1214[$I100], $P101
.annotate 'line', 249
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "compose" :anon :subid("31_1335114075.00898") :outer("130_1335114075.00898")
    .param pmc param_1216
    .param pmc param_1217
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 254
    .const 'Sub' $P1222 = "131_1335114075.00898" 
    capture_lex $P1222
    .lex "self", param_1216
    .lex "$obj", param_1217
.annotate 'line', 257
    set $P101, param_1216
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 3
    repr_get_attr_obj $P1219, $P102, $P103, "@!roles", 6
    unless_null $P1219, vivify_335
    $P1219 = root_new ['parrot';'ResizablePMCArray']
  vivify_335:
    unless $P1219, if_1218_end
.annotate 'line', 258
    set $P105, param_1216
    nqp_decontainerize $P106, $P105
    nqp_get_sc_object $P107, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 3
    repr_get_attr_obj $P1220, $P106, $P107, "@!roles", 6
    unless_null $P1220, vivify_336
    $P1220 = root_new ['parrot';'ResizablePMCArray']
  vivify_336:
    defined $I100, $P1220
    unless $I100, for_undef_337
    iter $P104, $P1220
    new $P109, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P109, loop1228_handler
    push_eh $P109
  loop1228_test:
    unless $P104, loop1228_done
    shift $P108, $P104
  loop1228_redo:
    .const 'Sub' $P1222 = "131_1335114075.00898" 
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
  for_undef_337:
.annotate 'line', 262
    find_lex $P104, "RoleToRoleApplier"
    set $P105, param_1217
    unless_null $P105, vivify_345
    new $P105, "Undef"
  vivify_345:
    set $P106, param_1216
    nqp_decontainerize $P107, $P106
    nqp_get_sc_object $P108, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 3
    repr_get_attr_obj $P1229, $P107, $P108, "@!roles", 6
    unless_null $P1229, vivify_346
    $P1229 = root_new ['parrot';'ResizablePMCArray']
  vivify_346:
    $P104."apply"($P105, $P1229)
  if_1218_end:
.annotate 'line', 266
    new $P101, "Float"
    assign $P101, 1
    set $P102, param_1216
    nqp_decontainerize $P103, $P102
    nqp_get_sc_object $P104, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 3
    repr_bind_attr_obj $P103, $P104, "$!composed", 8, $P101
.annotate 'line', 254
    set $P101, param_1217
    unless_null $P101, vivify_347
    new $P101, "Undef"
  vivify_347:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1221"  :anon :subid("131_1335114075.00898") :outer("31_1335114075.00898")
    .param pmc param_1223
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 258
    .lex "$_", param_1223
.annotate 'line', 259
    find_lex $P109, "$_"
    unless_null $P109, vivify_338
    new $P109, "Undef"
  vivify_338:
    find_lex $P110, "self"
    nqp_decontainerize $P111, $P110
    nqp_get_sc_object $P112, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 3
    repr_get_attr_obj $P1224, $P111, $P112, "@!role_typecheck_list", 7
    unless_null $P1224, vivify_339
    $P1224 = root_new ['parrot';'ResizablePMCArray']
  vivify_339:
    set $N100, $P1224
    set $I101, $N100
    find_lex $P113, "self"
    nqp_decontainerize $P114, $P113
    nqp_get_sc_object $P115, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 3
    repr_get_attr_obj $P1225, $P114, $P115, "@!role_typecheck_list", 7
    unless_null $P1225, vivify_340
    $P1225 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P114, $P115, "@!role_typecheck_list", 7, $P1225
  vivify_340:
    set $P1225[$I101], $P109
.annotate 'line', 260
    find_lex $P109, "$_"
    unless_null $P109, vivify_341
    new $P109, "Undef"
  vivify_341:
    get_how $P110, $P109
    find_lex $P111, "$_"
    unless_null $P111, vivify_342
    new $P111, "Undef"
  vivify_342:
    $P112 = $P110."instance_of"($P111)
    find_lex $P113, "self"
    nqp_decontainerize $P114, $P113
    nqp_get_sc_object $P115, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 3
    repr_get_attr_obj $P1226, $P114, $P115, "@!role_typecheck_list", 7
    unless_null $P1226, vivify_343
    $P1226 = root_new ['parrot';'ResizablePMCArray']
  vivify_343:
    set $N100, $P1226
    set $I101, $N100
    find_lex $P116, "self"
    nqp_decontainerize $P117, $P116
    nqp_get_sc_object $P118, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 3
    repr_get_attr_obj $P1227, $P117, $P118, "@!role_typecheck_list", 7
    unless_null $P1227, vivify_344
    $P1227 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P117, $P118, "@!role_typecheck_list", 7, $P1227
  vivify_344:
    set $P1227[$I101], $P112
.annotate 'line', 258
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "methods" :anon :subid("32_1335114075.00898") :outer("130_1335114075.00898")
    .param pmc param_1231
    .param pmc param_1232
    .param pmc param_1233 :optional :named("local")
    .param int has_param_1233 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 275
    .const 'Sub' $P1239 = "132_1335114075.00898" 
    capture_lex $P1239
    .lex "self", param_1231
    .lex "$obj", param_1232
    if has_param_1233, optparam_348
    new $P101, "Undef"
    set param_1233, $P101
  optparam_348:
    .lex "$local", param_1233
.annotate 'line', 276
    $P1235 = root_new ['parrot';'ResizablePMCArray']
    set $P1234, $P1235
    .lex "@meths", $P1234
.annotate 'line', 275
    set $P1236, $P1234
    unless_null $P1236, vivify_349
    $P1236 = root_new ['parrot';'ResizablePMCArray']
  vivify_349:
.annotate 'line', 277
    set $P103, param_1231
    nqp_decontainerize $P104, $P103
    nqp_get_sc_object $P105, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 3
    repr_get_attr_obj $P1237, $P104, $P105, "%!methods", 3
    unless_null $P1237, vivify_350
    $P1237 = root_new ['parrot';'Hash']
  vivify_350:
    defined $I100, $P1237
    unless $I100, for_undef_351
    iter $P102, $P1237
    new $P107, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P107, loop1242_handler
    push_eh $P107
  loop1242_test:
    unless $P102, loop1242_done
    shift $P106, $P102
  loop1242_redo:
    .const 'Sub' $P1239 = "132_1335114075.00898" 
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
  for_undef_351:
.annotate 'line', 275
    set $P1243, $P1234
    unless_null $P1243, vivify_354
    $P1243 = root_new ['parrot';'ResizablePMCArray']
  vivify_354:
    .return ($P1243)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1238"  :anon :subid("132_1335114075.00898") :outer("32_1335114075.00898")
    .param pmc param_1240
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 277
    .lex "$_", param_1240
.annotate 'line', 278
    find_lex $P1241, "@meths"
    unless_null $P1241, vivify_352
    $P1241 = root_new ['parrot';'ResizablePMCArray']
  vivify_352:
    find_lex $P107, "$_"
    unless_null $P107, vivify_353
    new $P107, "Undef"
  vivify_353:
    $P108 = $P107."value"()
    $P109 = $P1241."push"($P108)
.annotate 'line', 277
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "method_table" :anon :subid("33_1335114075.00898") :outer("130_1335114075.00898")
    .param pmc param_1245
    .param pmc param_1246
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 283
    .lex "self", param_1245
    .lex "$obj", param_1246
    set $P101, param_1245
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 3
    repr_get_attr_obj $P1247, $P102, $P103, "%!methods", 3
    unless_null $P1247, vivify_355
    $P1247 = root_new ['parrot';'Hash']
  vivify_355:
    .return ($P1247)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "collisions" :anon :subid("34_1335114075.00898") :outer("130_1335114075.00898")
    .param pmc param_1249
    .param pmc param_1250
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 287
    .lex "self", param_1249
    .lex "$obj", param_1250
    set $P101, param_1249
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 3
    repr_get_attr_obj $P1251, $P102, $P103, "@!collisions", 5
    unless_null $P1251, vivify_356
    $P1251 = root_new ['parrot';'ResizablePMCArray']
  vivify_356:
    .return ($P1251)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "name" :anon :subid("35_1335114075.00898") :outer("130_1335114075.00898")
    .param pmc param_1253
    .param pmc param_1254
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 291
    .lex "self", param_1253
    .lex "$obj", param_1254
    set $P101, param_1253
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 3
    repr_get_attr_obj $P104, $P102, $P103, "$!name", 0
    unless_null $P104, vivify_357
    new $P104, "Undef"
  vivify_357:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "attributes" :anon :subid("36_1335114075.00898") :outer("130_1335114075.00898")
    .param pmc param_1256
    .param pmc param_1257
    .param pmc param_1258 :optional :named("local")
    .param int has_param_1258 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 295
    .const 'Sub' $P1264 = "133_1335114075.00898" 
    capture_lex $P1264
    .lex "self", param_1256
    .lex "$obj", param_1257
    if has_param_1258, optparam_358
    new $P101, "Undef"
    set param_1258, $P101
  optparam_358:
    .lex "$local", param_1258
.annotate 'line', 296
    $P1260 = root_new ['parrot';'ResizablePMCArray']
    set $P1259, $P1260
    .lex "@attrs", $P1259
.annotate 'line', 295
    set $P1261, $P1259
    unless_null $P1261, vivify_359
    $P1261 = root_new ['parrot';'ResizablePMCArray']
  vivify_359:
.annotate 'line', 297
    set $P103, param_1256
    nqp_decontainerize $P104, $P103
    nqp_get_sc_object $P105, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 3
    repr_get_attr_obj $P1262, $P104, $P105, "%!attributes", 2
    unless_null $P1262, vivify_360
    $P1262 = root_new ['parrot';'Hash']
  vivify_360:
    defined $I100, $P1262
    unless $I100, for_undef_361
    iter $P102, $P1262
    new $P107, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P107, loop1267_handler
    push_eh $P107
  loop1267_test:
    unless $P102, loop1267_done
    shift $P106, $P102
  loop1267_redo:
    .const 'Sub' $P1264 = "133_1335114075.00898" 
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
  for_undef_361:
.annotate 'line', 295
    set $P1268, $P1259
    unless_null $P1268, vivify_364
    $P1268 = root_new ['parrot';'ResizablePMCArray']
  vivify_364:
    .return ($P1268)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1263"  :anon :subid("133_1335114075.00898") :outer("36_1335114075.00898")
    .param pmc param_1265
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 297
    .lex "$_", param_1265
.annotate 'line', 298
    find_lex $P1266, "@attrs"
    unless_null $P1266, vivify_362
    $P1266 = root_new ['parrot';'ResizablePMCArray']
  vivify_362:
    find_lex $P107, "$_"
    unless_null $P107, vivify_363
    new $P107, "Undef"
  vivify_363:
    $P108 = $P107."value"()
    $P109 = $P1266."push"($P108)
.annotate 'line', 297
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "roles" :anon :subid("37_1335114075.00898") :outer("130_1335114075.00898")
    .param pmc param_1270
    .param pmc param_1271
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 303
    .lex "self", param_1270
    .lex "$obj", param_1271
    set $P101, param_1270
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 3
    repr_get_attr_obj $P1272, $P102, $P103, "@!roles", 6
    unless_null $P1272, vivify_365
    $P1272 = root_new ['parrot';'ResizablePMCArray']
  vivify_365:
    .return ($P1272)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "role_typecheck_list" :anon :subid("38_1335114075.00898") :outer("130_1335114075.00898")
    .param pmc param_1274
    .param pmc param_1275
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 307
    .lex "self", param_1274
    .lex "$obj", param_1275
    set $P101, param_1274
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 3
    repr_get_attr_obj $P1276, $P102, $P103, "@!role_typecheck_list", 7
    unless_null $P1276, vivify_366
    $P1276 = root_new ['parrot';'ResizablePMCArray']
  vivify_366:
    .return ($P1276)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "instance_of" :anon :subid("39_1335114075.00898") :outer("130_1335114075.00898")
    .param pmc param_1278
    .param pmc param_1279
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 311
    .lex "self", param_1278
    .lex "$obj", param_1279
    set $P101, param_1278
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 3
    repr_get_attr_obj $P104, $P102, $P103, "$!instance_of", 1
    unless_null $P104, vivify_367
    new $P104, "Undef"
  vivify_367:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block1281"  :subid("134_1335114075.00898") :outer("119_1335114075.00898")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 317
    .const 'Sub' $P1309 = "40_1335114075.00898" 
    capture_lex $P1309
    .const 'Sub' $P1293 = "136_1335114075.00898" 
    capture_lex $P1293
    .const 'Sub' $P1284 = "135_1335114075.00898" 
    capture_lex $P1284
.annotate 'line', 319
    .const 'Sub' $P1284 = "135_1335114075.00898" 
    newclosure $P1291, $P1284
    set $P1283, $P1291
    .lex "has_method", $P1283
.annotate 'line', 324
    .const 'Sub' $P1293 = "136_1335114075.00898" 
    newclosure $P1306, $P1293
    set $P1292, $P1306
    .lex "has_attribute", $P1292
.annotate 'line', 317
    .lex "$?PACKAGE", $P1307
    .lex "$?CLASS", $P1308
    set $P101, $P1283
    set $P101, $P1292
.annotate 'line', 332
    .const 'Sub' $P1309 = "40_1335114075.00898" 
    newclosure $P1351, $P1309
.annotate 'line', 317
    .return ($P1351)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "has_method"  :subid("135_1335114075.00898") :outer("134_1335114075.00898")
    .param pmc param_1285
    .param pmc param_1286
    .param pmc param_1287
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 319
    .lex "$target", param_1285
    .lex "$name", param_1286
    .lex "$local", param_1287
.annotate 'line', 320
    $P1289 = root_new ['parrot';'Hash']
    set $P1288, $P1289
    .lex "%mt", $P1288
    set $P100, param_1285
    unless_null $P100, vivify_368
    new $P100, "Undef"
  vivify_368:
    get_how $P101, $P100
    set $P102, param_1285
    unless_null $P102, vivify_369
    new $P102, "Undef"
  vivify_369:
    $P103 = $P101."method_table"($P102)
    set $P1288, $P103
.annotate 'line', 321
    set $P100, param_1286
    unless_null $P100, vivify_370
    new $P100, "Undef"
  vivify_370:
    set $P1290, $P1288
    unless_null $P1290, vivify_371
    $P1290 = root_new ['parrot';'Hash']
  vivify_371:
    exists $I100, $P1290[$P100]
.annotate 'line', 319
    .return ($I100)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "has_attribute"  :subid("136_1335114075.00898") :outer("134_1335114075.00898")
    .param pmc param_1296
    .param pmc param_1297
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 324
    .const 'Sub' $P1302 = "137_1335114075.00898" 
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
    unless_null $P100, vivify_372
    new $P100, "Undef"
  vivify_372:
    get_how $P101, $P100
    set $P102, param_1296
    unless_null $P102, vivify_373
    new $P102, "Undef"
  vivify_373:
    $P103 = $P101."attributes"($P102, 1 :named("local"))
    set $P1298, $P103
.annotate 'line', 326
    set $P1300, $P1298
    unless_null $P1300, vivify_374
    $P1300 = root_new ['parrot';'ResizablePMCArray']
  vivify_374:
    defined $I101, $P1300
    unless $I101, for_undef_375
    iter $P100, $P1300
    new $P103, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P103, loop1305_handler
    push_eh $P103
  loop1305_test:
    unless $P100, loop1305_done
    shift $P101, $P100
  loop1305_redo:
    .const 'Sub' $P1302 = "137_1335114075.00898" 
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
  for_undef_375:
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
.sub "_block1301"  :anon :subid("137_1335114075.00898") :outer("136_1335114075.00898")
    .param pmc param_1303
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 326
    .lex "$_", param_1303
.annotate 'line', 327
    find_lex $P103, "$_"
    unless_null $P103, vivify_376
    new $P103, "Undef"
  vivify_376:
    $S100 = $P103."name"()
    find_lex $P104, "$name"
    unless_null $P104, vivify_377
    new $P104, "Undef"
  vivify_377:
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
.sub "apply" :anon :subid("40_1335114075.00898") :outer("134_1335114075.00898")
    .param pmc param_1310
    .param pmc param_1311
    .param pmc param_1312
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 332
    .const 'Sub' $P1345 = "141_1335114075.00898" 
    capture_lex $P1345
    .const 'Sub' $P1339 = "140_1335114075.00898" 
    capture_lex $P1339
    .const 'Sub' $P1333 = "139_1335114075.00898" 
    capture_lex $P1333
    .const 'Sub' $P1328 = "138_1335114075.00898" 
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
    unless_null $P103, vivify_378
    new $P103, "Undef"
  vivify_378:
    set $P103, $P1314
    unless_null $P103, vivify_379
    new $P103, "Undef"
  vivify_379:
.annotate 'line', 337
    set $P1324, param_1312
    unless_null $P1324, vivify_380
    $P1324 = root_new ['parrot';'ResizablePMCArray']
  vivify_380:
    set $N100, $P1324
    set $N101, 1
    iseq $I101, $N100, $N101
    if $I101, if_1323
.annotate 'line', 342
    find_lex $P103, "NQPConcreteRoleHOW"
    find_lex $P104, "$?PACKAGE"
    get_who $P105, $P104
    set $P108, $P105["NQPMu"]
    unless_null $P108, vivify_381
    get_hll_global $P106, "GLOBAL"
    get_who $P107, $P106
    set $P108, $P107["NQPMu"]
  vivify_381:
    $P109 = $P103."new_type"($P108 :named("instance_of"))
    set $P1313, $P109
.annotate 'line', 343
    set $P103, $P1313
    unless_null $P103, vivify_382
    new $P103, "Undef"
  vivify_382:
    get_how $P104, $P103
    set $P1314, $P104
.annotate 'line', 344
    set $P1326, param_1312
    unless_null $P1326, vivify_383
    $P1326 = root_new ['parrot';'ResizablePMCArray']
  vivify_383:
    defined $I102, $P1326
    unless $I102, for_undef_384
    iter $P103, $P1326
    new $P105, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P105, loop1330_handler
    push_eh $P105
  loop1330_test:
    unless $P103, loop1330_done
    shift $P104, $P103
  loop1330_redo:
    .const 'Sub' $P1328 = "138_1335114075.00898" 
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
  for_undef_384:
.annotate 'line', 347
    set $P103, $P1314
    unless_null $P103, vivify_388
    new $P103, "Undef"
  vivify_388:
    set $P104, $P1313
    unless_null $P104, vivify_389
    new $P104, "Undef"
  vivify_389:
    $P105 = $P103."compose"($P104)
    set $P1313, $P105
.annotate 'line', 341
    goto if_1323_end
  if_1323:
.annotate 'line', 338
    new $P103, "Float"
    assign $P103, 0
    set $I102, $P103
    set $P1325, param_1312
    unless_null $P1325, vivify_390
    $P1325 = root_new ['parrot';'ResizablePMCArray']
  vivify_390:
    set $P104, $P1325[$I102]
    unless_null $P104, vivify_391
    new $P104, "Undef"
  vivify_391:
    set $P1313, $P104
.annotate 'line', 339
    set $P103, $P1313
    unless_null $P103, vivify_392
    new $P103, "Undef"
  vivify_392:
    get_how $P104, $P103
    set $P1314, $P104
  if_1323_end:
.annotate 'line', 351
    set $P103, $P1314
    unless_null $P103, vivify_393
    new $P103, "Undef"
  vivify_393:
    set $P104, $P1313
    unless_null $P104, vivify_394
    new $P104, "Undef"
  vivify_394:
    $P105 = $P103."collisions"($P104)
    set $P1315, $P105
.annotate 'line', 352
    set $P1331, $P1315
    unless_null $P1331, vivify_395
    $P1331 = root_new ['parrot';'ResizablePMCArray']
  vivify_395:
    defined $I101, $P1331
    unless $I101, for_undef_396
    iter $P103, $P1331
    new $P106, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P106, loop1336_handler
    push_eh $P106
  loop1336_test:
    unless $P103, loop1336_done
    shift $P104, $P103
  loop1336_redo:
    .const 'Sub' $P1333 = "139_1335114075.00898" 
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
  for_undef_396:
.annotate 'line', 360
    set $P103, $P1314
    unless_null $P103, vivify_402
    new $P103, "Undef"
  vivify_402:
    set $P104, $P1313
    unless_null $P104, vivify_403
    new $P104, "Undef"
  vivify_403:
    $P105 = $P103."methods"($P104)
    set $P1317, $P105
.annotate 'line', 361
    set $P1337, $P1317
    unless_null $P1337, vivify_404
    $P1337 = root_new ['parrot';'ResizablePMCArray']
  vivify_404:
    defined $I101, $P1337
    unless $I101, for_undef_405
    iter $P103, $P1337
    new $P106, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P106, loop1342_handler
    push_eh $P106
  loop1342_test:
    unless $P103, loop1342_done
    shift $P104, $P103
  loop1342_redo:
    .const 'Sub' $P1339 = "140_1335114075.00898" 
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
  for_undef_405:
.annotate 'line', 368
    set $P103, $P1314
    unless_null $P103, vivify_412
    new $P103, "Undef"
  vivify_412:
    set $P104, $P1313
    unless_null $P104, vivify_413
    new $P104, "Undef"
  vivify_413:
    $P105 = $P103."attributes"($P104)
    set $P1319, $P105
.annotate 'line', 369
    set $P1343, $P1319
    unless_null $P1343, vivify_414
    $P1343 = root_new ['parrot';'ResizablePMCArray']
  vivify_414:
    defined $I101, $P1343
    unless $I101, for_undef_415
    iter $P103, $P1343
    new $P105, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P105, loop1348_handler
    push_eh $P105
  loop1348_test:
    unless $P103, loop1348_done
    shift $P104, $P103
  loop1348_redo:
    .const 'Sub' $P1345 = "141_1335114075.00898" 
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
  for_undef_415:
.annotate 'line', 332
    set $P1349, $P1321
    unless_null $P1349, vivify_424
    $P1349 = root_new ['parrot';'ResizablePMCArray']
  vivify_424:
.annotate 'line', 381
    set $P103, $P1313
    unless_null $P103, vivify_425
    new $P103, "Undef"
  vivify_425:
    new $P104, "Float"
    assign $P104, 0
    set $I101, $P104
    set $P1350, $P1321
    unless_null $P1350, vivify_426
    $P1350 = root_new ['parrot';'ResizablePMCArray']
    set $P1321, $P1350
  vivify_426:
    set $P1350[$I101], $P103
.annotate 'line', 332
    .return ($P103)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block1327"  :anon :subid("138_1335114075.00898") :outer("40_1335114075.00898")
    .param pmc param_1329
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 344
    .lex "$_", param_1329
.annotate 'line', 345
    find_lex $P105, "$to_compose_meta"
    unless_null $P105, vivify_385
    new $P105, "Undef"
  vivify_385:
    find_lex $P106, "$to_compose"
    unless_null $P106, vivify_386
    new $P106, "Undef"
  vivify_386:
    find_lex $P107, "$_"
    unless_null $P107, vivify_387
    new $P107, "Undef"
  vivify_387:
    $P108 = $P105."add_role"($P106, $P107)
.annotate 'line', 344
    .return ($P108)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block1332"  :anon :subid("139_1335114075.00898") :outer("40_1335114075.00898")
    .param pmc param_1334
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 352
    .lex "$_", param_1334
.annotate 'line', 353
    find_lex $P106, "$target"
    unless_null $P106, vivify_397
    new $P106, "Undef"
  vivify_397:
    find_lex $P107, "$_"
    unless_null $P107, vivify_398
    new $P107, "Undef"
  vivify_398:
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
    unless_null $P110, vivify_399
    new $P110, "Undef"
  vivify_399:
    concat $P111, $P109, $P110
    concat $P112, $P111, "' collides and a resolution must be provided by the class '"
.annotate 'line', 355
    find_lex $P113, "$target"
    unless_null $P113, vivify_400
    new $P113, "Undef"
  vivify_400:
    get_how $P114, $P113
    find_lex $P115, "$target"
    unless_null $P115, vivify_401
    new $P115, "Undef"
  vivify_401:
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
.sub "_block1338"  :anon :subid("140_1335114075.00898") :outer("40_1335114075.00898")
    .param pmc param_1340
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 361
    .lex "$_", param_1340
.annotate 'line', 362
    find_lex $P106, "$target"
    unless_null $P106, vivify_406
    new $P106, "Undef"
  vivify_406:
    find_lex $P107, "$_"
    unless_null $P107, vivify_407
    new $P107, "Undef"
  vivify_407:
    set $S100, $P107
    $P108 = "has_method"($P106, $S100, 0)
    unless $P108, unless_1341
    set $P105, $P108
    goto unless_1341_end
  unless_1341:
.annotate 'line', 363
    find_lex $P109, "$target"
    unless_null $P109, vivify_408
    new $P109, "Undef"
  vivify_408:
    get_how $P110, $P109
    find_lex $P111, "$target"
    unless_null $P111, vivify_409
    new $P111, "Undef"
  vivify_409:
    find_lex $P112, "$_"
    unless_null $P112, vivify_410
    new $P112, "Undef"
  vivify_410:
    set $S101, $P112
    find_lex $P113, "$_"
    unless_null $P113, vivify_411
    new $P113, "Undef"
  vivify_411:
    $P114 = $P110."add_method"($P111, $S101, $P113)
.annotate 'line', 362
    set $P105, $P114
  unless_1341_end:
.annotate 'line', 361
    .return ($P105)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block1344"  :anon :subid("141_1335114075.00898") :outer("40_1335114075.00898")
    .param pmc param_1346
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 369
    .lex "$_", param_1346
.annotate 'line', 370
    find_lex $P105, "$target"
    unless_null $P105, vivify_416
    new $P105, "Undef"
  vivify_416:
    find_lex $P106, "$_"
    unless_null $P106, vivify_417
    new $P106, "Undef"
  vivify_417:
    $P107 = $P106."name"()
    $P108 = "has_attribute"($P105, $P107)
    unless $P108, if_1347_end
.annotate 'line', 371
    new $P109, "String"
    assign $P109, "Attribute '"
    find_lex $P110, "$_"
    unless_null $P110, vivify_418
    new $P110, "Undef"
  vivify_418:
    $S100 = $P110."name"()
    concat $P111, $P109, $S100
    concat $P112, $P111, "' already exists in the class '"
.annotate 'line', 372
    find_lex $P113, "$target"
    unless_null $P113, vivify_419
    new $P113, "Undef"
  vivify_419:
    get_how $P114, $P113
    find_lex $P115, "$target"
    unless_null $P115, vivify_420
    new $P115, "Undef"
  vivify_420:
    $S101 = $P114."name"($P115)
    concat $P116, $P112, $S101
.annotate 'line', 371
    concat $P117, $P116, "', but a role also wishes to compose it"
.annotate 'line', 372
    die $P117
  if_1347_end:
.annotate 'line', 374
    find_lex $P105, "$target"
    unless_null $P105, vivify_421
    new $P105, "Undef"
  vivify_421:
    get_how $P106, $P105
    find_lex $P107, "$target"
    unless_null $P107, vivify_422
    new $P107, "Undef"
  vivify_422:
    find_lex $P108, "$_"
    unless_null $P108, vivify_423
    new $P108, "Undef"
  vivify_423:
    $P109 = $P106."add_attribute"($P107, $P108)
.annotate 'line', 369
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1352"  :subid("142_1335114075.00898") :outer("119_1335114075.00898")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 390
    .const 'Sub' $P1485 = "58_1335114075.00898" 
    capture_lex $P1485
    .const 'Sub' $P1471 = "57_1335114075.00898" 
    capture_lex $P1471
    .const 'Sub' $P1468 = "56_1335114075.00898" 
    capture_lex $P1468
    .const 'Sub' $P1464 = "55_1335114075.00898" 
    capture_lex $P1464
    .const 'Sub' $P1450 = "54_1335114075.00898" 
    capture_lex $P1450
    .const 'Sub' $P1420 = "53_1335114075.00898" 
    capture_lex $P1420
    .const 'Sub' $P1417 = "52_1335114075.00898" 
    capture_lex $P1417
    .const 'Sub' $P1414 = "51_1335114075.00898" 
    capture_lex $P1414
    .const 'Sub' $P1408 = "50_1335114075.00898" 
    capture_lex $P1408
    .const 'Sub' $P1404 = "49_1335114075.00898" 
    capture_lex $P1404
    .const 'Sub' $P1396 = "48_1335114075.00898" 
    capture_lex $P1396
    .const 'Sub' $P1383 = "47_1335114075.00898" 
    capture_lex $P1383
    .const 'Sub' $P1375 = "46_1335114075.00898" 
    capture_lex $P1375
    .const 'Sub' $P1371 = "45_1335114075.00898" 
    capture_lex $P1371
    .const 'Sub' $P1366 = "44_1335114075.00898" 
    capture_lex $P1366
    .const 'Sub' $P1363 = "43_1335114075.00898" 
    capture_lex $P1363
    .const 'Sub' $P1359 = "42_1335114075.00898" 
    capture_lex $P1359
    .const 'Sub' $P1357 = "41_1335114075.00898" 
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
    .const 'Sub' $P1485 = "58_1335114075.00898" 
    newclosure $P1489, $P1485
.annotate 'line', 390
    .return ($P1489)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "archetypes" :anon :subid("41_1335114075.00898") :outer("142_1335114075.00898")
    .param pmc param_1358
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 415
    .lex "self", param_1358
    find_lex $P101, "$archetypes"
    unless_null $P101, vivify_427
    new $P101, "Undef"
  vivify_427:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "new" :anon :subid("42_1335114075.00898") :outer("142_1335114075.00898")
    .param pmc param_1360
    .param pmc param_1361 :named("name")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
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
    unless_null $P102, vivify_428
    new $P102, "Undef"
  vivify_428:
    set $P103, param_1361
    unless_null $P103, vivify_429
    new $P103, "Undef"
  vivify_429:
    $P102."BUILD"($P103 :named("name"))
.annotate 'line', 424
    set $P102, $P1362
    unless_null $P102, vivify_430
    new $P102, "Undef"
  vivify_430:
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "BUILD" :anon :subid("43_1335114075.00898") :outer("142_1335114075.00898")
    .param pmc param_1364
    .param pmc param_1365 :named("name")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 430
    .lex "self", param_1364
    .lex "$name", param_1365
.annotate 'line', 431
    set $P101, param_1365
    unless_null $P101, vivify_431
    new $P101, "Undef"
  vivify_431:
    set $P102, param_1364
    nqp_decontainerize $P103, $P102
    nqp_get_sc_object $P104, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 5
    repr_bind_attr_obj $P103, $P104, "$!name", 0, $P101
.annotate 'line', 430
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "new_type" :anon :subid("44_1335114075.00898") :outer("142_1335114075.00898")
    .param pmc param_1367
    .param pmc param_1368 :optional :named("name")
    .param int has_param_1368 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 436
    .lex "self", param_1367
    if has_param_1368, optparam_432
    new $P101, "String"
    assign $P101, "<anon>"
    set param_1368, $P101
  optparam_432:
    .lex "$name", param_1368
.annotate 'line', 437
    new $P102, "Undef"
    set $P1369, $P102
    .lex "$metarole", $P1369
    set $P103, param_1367
    nqp_decontainerize $P104, $P103
    set $P105, param_1368
    unless_null $P105, vivify_433
    new $P105, "Undef"
  vivify_433:
    $P106 = $P104."new"($P105 :named("name"))
    set $P1369, $P106
.annotate 'line', 439
    set $P103, $P1369
    unless_null $P103, vivify_434
    new $P103, "Undef"
  vivify_434:
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
.sub "set_body_block" :anon :subid("45_1335114075.00898") :outer("142_1335114075.00898")
    .param pmc param_1372
    .param pmc param_1373
    .param pmc param_1374
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 443
    .lex "self", param_1372
    .lex "$obj", param_1373
    .lex "$body_block", param_1374
.annotate 'line', 444
    set $P101, param_1374
    unless_null $P101, vivify_435
    new $P101, "Undef"
  vivify_435:
    set $P102, param_1372
    nqp_decontainerize $P103, $P102
    nqp_get_sc_object $P104, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 5
    repr_bind_attr_obj $P103, $P104, "$!body_block", 6, $P101
.annotate 'line', 443
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_method" :anon :subid("46_1335114075.00898") :outer("142_1335114075.00898")
    .param pmc param_1376
    .param pmc param_1377
    .param pmc param_1378
    .param pmc param_1379
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 447
    .lex "self", param_1376
    .lex "$obj", param_1377
    .lex "$name", param_1378
    .lex "$code_obj", param_1379
.annotate 'line', 448
    set $P101, param_1378
    unless_null $P101, vivify_436
    new $P101, "Undef"
  vivify_436:
    set $P102, param_1376
    nqp_decontainerize $P103, $P102
    nqp_get_sc_object $P104, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 5
    repr_get_attr_obj $P1381, $P103, $P104, "%!methods", 2
    unless_null $P1381, vivify_437
    $P1381 = root_new ['parrot';'Hash']
  vivify_437:
    set $P105, $P1381[$P101]
    unless_null $P105, vivify_438
    new $P105, "Undef"
  vivify_438:
    unless $P105, if_1380_end
.annotate 'line', 449
    new $P106, "String"
    assign $P106, "This role already has a method named "
    set $P107, param_1378
    unless_null $P107, vivify_439
    new $P107, "Undef"
  vivify_439:
    concat $P108, $P106, $P107
    die $P108
  if_1380_end:
.annotate 'line', 451
    set $P101, param_1379
    unless_null $P101, vivify_440
    new $P101, "Undef"
  vivify_440:
    set $P102, param_1378
    unless_null $P102, vivify_441
    new $P102, "Undef"
  vivify_441:
    set $P103, param_1376
    nqp_decontainerize $P104, $P103
    nqp_get_sc_object $P105, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 5
    repr_get_attr_obj $P1382, $P104, $P105, "%!methods", 2
    unless_null $P1382, vivify_442
    $P1382 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P104, $P105, "%!methods", 2, $P1382
  vivify_442:
    set $P1382[$P102], $P101
.annotate 'line', 447
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_multi_method" :anon :subid("47_1335114075.00898") :outer("142_1335114075.00898")
    .param pmc param_1384
    .param pmc param_1385
    .param pmc param_1386
    .param pmc param_1387
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
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
    unless_null $P1390, vivify_443
    $P1390 = root_new ['parrot';'Hash']
  vivify_443:
.annotate 'line', 456
    set $P101, param_1386
    unless_null $P101, vivify_444
    new $P101, "Undef"
  vivify_444:
    set $P1391, $P1388
    unless_null $P1391, vivify_445
    $P1391 = root_new ['parrot';'Hash']
    set $P1388, $P1391
  vivify_445:
    set $P1391["name"], $P101
.annotate 'line', 457
    set $P101, param_1387
    unless_null $P101, vivify_446
    new $P101, "Undef"
  vivify_446:
    set $P1392, $P1388
    unless_null $P1392, vivify_447
    $P1392 = root_new ['parrot';'Hash']
    set $P1388, $P1392
  vivify_447:
    set $P1392["code"], $P101
.annotate 'line', 458
    set $P1393, $P1388
    unless_null $P1393, vivify_448
    $P1393 = root_new ['parrot';'Hash']
  vivify_448:
    set $P101, param_1384
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 5
    repr_get_attr_obj $P1394, $P102, $P103, "@!multi_methods_to_incorporate", 3
    unless_null $P1394, vivify_449
    $P1394 = root_new ['parrot';'ResizablePMCArray']
  vivify_449:
    set $N100, $P1394
    set $I100, $N100
    set $P104, param_1384
    nqp_decontainerize $P105, $P104
    nqp_get_sc_object $P106, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 5
    repr_get_attr_obj $P1395, $P105, $P106, "@!multi_methods_to_incorporate", 3
    unless_null $P1395, vivify_450
    $P1395 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P105, $P106, "@!multi_methods_to_incorporate", 3, $P1395
  vivify_450:
    set $P1395[$I100], $P1393
.annotate 'line', 454
    set $P101, param_1387
    unless_null $P101, vivify_451
    new $P101, "Undef"
  vivify_451:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_attribute" :anon :subid("48_1335114075.00898") :outer("142_1335114075.00898")
    .param pmc param_1397
    .param pmc param_1398
    .param pmc param_1399
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 462
    .lex "self", param_1397
    .lex "$obj", param_1398
    .lex "$meta_attr", param_1399
.annotate 'line', 463
    new $P101, "Undef"
    set $P1400, $P101
    .lex "$name", $P1400
    set $P102, param_1399
    unless_null $P102, vivify_452
    new $P102, "Undef"
  vivify_452:
    $P103 = $P102."name"()
    set $P1400, $P103
.annotate 'line', 464
    set $P102, $P1400
    unless_null $P102, vivify_453
    new $P102, "Undef"
  vivify_453:
    set $P103, param_1397
    nqp_decontainerize $P104, $P103
    nqp_get_sc_object $P105, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 5
    repr_get_attr_obj $P1402, $P104, $P105, "%!attributes", 1
    unless_null $P1402, vivify_454
    $P1402 = root_new ['parrot';'Hash']
  vivify_454:
    set $P106, $P1402[$P102]
    unless_null $P106, vivify_455
    new $P106, "Undef"
  vivify_455:
    unless $P106, if_1401_end
.annotate 'line', 465
    new $P107, "String"
    assign $P107, "This role already has an attribute named "
    set $P108, $P1400
    unless_null $P108, vivify_456
    new $P108, "Undef"
  vivify_456:
    concat $P109, $P107, $P108
    die $P109
  if_1401_end:
.annotate 'line', 467
    set $P102, param_1399
    unless_null $P102, vivify_457
    new $P102, "Undef"
  vivify_457:
    set $P103, $P1400
    unless_null $P103, vivify_458
    new $P103, "Undef"
  vivify_458:
    set $P104, param_1397
    nqp_decontainerize $P105, $P104
    nqp_get_sc_object $P106, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 5
    repr_get_attr_obj $P1403, $P105, $P106, "%!attributes", 1
    unless_null $P1403, vivify_459
    $P1403 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P105, $P106, "%!attributes", 1, $P1403
  vivify_459:
    set $P1403[$P103], $P102
.annotate 'line', 462
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_parent" :anon :subid("49_1335114075.00898") :outer("142_1335114075.00898")
    .param pmc param_1405
    .param pmc param_1406
    .param pmc param_1407
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
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
.sub "add_role" :anon :subid("50_1335114075.00898") :outer("142_1335114075.00898")
    .param pmc param_1409
    .param pmc param_1410
    .param pmc param_1411
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 474
    .lex "self", param_1409
    .lex "$obj", param_1410
    .lex "$role", param_1411
.annotate 'line', 475
    set $P101, param_1411
    unless_null $P101, vivify_460
    new $P101, "Undef"
  vivify_460:
    set $P102, param_1409
    nqp_decontainerize $P103, $P102
    nqp_get_sc_object $P104, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 5
    repr_get_attr_obj $P1412, $P103, $P104, "@!roles", 4
    unless_null $P1412, vivify_461
    $P1412 = root_new ['parrot';'ResizablePMCArray']
  vivify_461:
    set $N100, $P1412
    set $I100, $N100
    set $P105, param_1409
    nqp_decontainerize $P106, $P105
    nqp_get_sc_object $P107, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 5
    repr_get_attr_obj $P1413, $P106, $P107, "@!roles", 4
    unless_null $P1413, vivify_462
    $P1413 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P106, $P107, "@!roles", 4, $P1413
  vivify_462:
    set $P1413[$I100], $P101
.annotate 'line', 474
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "compose" :anon :subid("51_1335114075.00898") :outer("142_1335114075.00898")
    .param pmc param_1415
    .param pmc param_1416
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 479
    .lex "self", param_1415
    .lex "$obj", param_1416
.annotate 'line', 480
    new $P101, "Float"
    assign $P101, 1
    set $P102, param_1415
    nqp_decontainerize $P103, $P102
    nqp_get_sc_object $P104, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 5
    repr_bind_attr_obj $P103, $P104, "$!composed", 5, $P101
.annotate 'line', 479
    set $P101, param_1416
    unless_null $P101, vivify_463
    new $P101, "Undef"
  vivify_463:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "parametric" :anon :subid("52_1335114075.00898") :outer("142_1335114075.00898")
    .param pmc param_1418
    .param pmc param_1419
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 490
    .lex "self", param_1418
    .lex "$obj", param_1419
    .return (1)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "specialize" :anon :subid("53_1335114075.00898") :outer("142_1335114075.00898")
    .param pmc param_1423
    .param pmc param_1424
    .param pmc param_1425
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 496
    .const 'Sub' $P1446 = "146_1335114075.00898" 
    capture_lex $P1446
    .const 'Sub' $P1439 = "145_1335114075.00898" 
    capture_lex $P1439
    .const 'Sub' $P1434 = "144_1335114075.00898" 
    capture_lex $P1434
    .const 'Sub' $P1429 = "143_1335114075.00898" 
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
    nqp_get_sc_object $P104, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 5
    repr_get_attr_obj $P105, $P103, $P104, "$!body_block", 6
    unless_null $P105, vivify_464
    new $P105, "Undef"
  vivify_464:
    set $P106, param_1425
    unless_null $P106, vivify_465
    new $P106, "Undef"
  vivify_465:
    $P105($P106)
.annotate 'line', 502
    find_lex $P102, "NQPConcreteRoleHOW"
    set $P103, param_1423
    nqp_decontainerize $P104, $P103
    nqp_get_sc_object $P105, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 5
    repr_get_attr_obj $P106, $P104, $P105, "$!name", 0
    unless_null $P106, vivify_466
    new $P106, "Undef"
  vivify_466:
    set $P107, param_1424
    unless_null $P107, vivify_467
    new $P107, "Undef"
  vivify_467:
    $P108 = $P102."new_type"($P106 :named("name"), $P107 :named("instance_of"))
    set $P1426, $P108
.annotate 'line', 506
    set $P103, param_1423
    nqp_decontainerize $P104, $P103
    nqp_get_sc_object $P105, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 5
    repr_get_attr_obj $P1427, $P104, $P105, "%!attributes", 1
    unless_null $P1427, vivify_468
    $P1427 = root_new ['parrot';'Hash']
  vivify_468:
    defined $I100, $P1427
    unless $I100, for_undef_469
    iter $P102, $P1427
    new $P107, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P107, loop1431_handler
    push_eh $P107
  loop1431_test:
    unless $P102, loop1431_done
    shift $P106, $P102
  loop1431_redo:
    .const 'Sub' $P1429 = "143_1335114075.00898" 
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
  for_undef_469:
.annotate 'line', 511
    set $P103, param_1423
    nqp_decontainerize $P104, $P103
    nqp_get_sc_object $P105, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 5
    repr_get_attr_obj $P1432, $P104, $P105, "%!methods", 2
    unless_null $P1432, vivify_473
    $P1432 = root_new ['parrot';'Hash']
  vivify_473:
    defined $I100, $P1432
    unless $I100, for_undef_474
    iter $P102, $P1432
    new $P107, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P107, loop1436_handler
    push_eh $P107
  loop1436_test:
    unless $P102, loop1436_done
    shift $P106, $P102
  loop1436_redo:
    .const 'Sub' $P1434 = "144_1335114075.00898" 
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
  for_undef_474:
.annotate 'line', 514
    set $P103, param_1423
    nqp_decontainerize $P104, $P103
    nqp_get_sc_object $P105, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 5
    repr_get_attr_obj $P1437, $P104, $P105, "@!multi_methods_to_incorporate", 3
    unless_null $P1437, vivify_479
    $P1437 = root_new ['parrot';'ResizablePMCArray']
  vivify_479:
    defined $I100, $P1437
    unless $I100, for_undef_480
    iter $P102, $P1437
    new $P107, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P107, loop1443_handler
    push_eh $P107
  loop1443_test:
    unless $P102, loop1443_done
    shift $P106, $P102
  loop1443_redo:
    .const 'Sub' $P1439 = "145_1335114075.00898" 
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
  for_undef_480:
.annotate 'line', 519
    set $P103, param_1423
    nqp_decontainerize $P104, $P103
    nqp_get_sc_object $P105, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 5
    repr_get_attr_obj $P1444, $P104, $P105, "@!roles", 4
    unless_null $P1444, vivify_487
    $P1444 = root_new ['parrot';'ResizablePMCArray']
  vivify_487:
    defined $I100, $P1444
    unless $I100, for_undef_488
    iter $P102, $P1444
    new $P108, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P108, loop1449_handler
    push_eh $P108
  loop1449_test:
    unless $P102, loop1449_done
    shift $P106, $P102
  loop1449_redo:
    .const 'Sub' $P1446 = "146_1335114075.00898" 
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
  for_undef_488:
.annotate 'line', 525
    set $P102, $P1426
    unless_null $P102, vivify_495
    new $P102, "Undef"
  vivify_495:
    get_how $P103, $P102
    set $P104, $P1426
    unless_null $P104, vivify_496
    new $P104, "Undef"
  vivify_496:
    $P103."compose"($P104)
.annotate 'line', 526
    new $P102, "Exception"
    set $P102['type'], .CONTROL_RETURN
    set $P103, $P1426
    unless_null $P103, vivify_497
    new $P103, "Undef"
  vivify_497:
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
.sub "_block1428"  :anon :subid("143_1335114075.00898") :outer("53_1335114075.00898")
    .param pmc param_1430
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 506
    .lex "$_", param_1430
.annotate 'line', 507
    find_lex $P107, "$irole"
    unless_null $P107, vivify_470
    new $P107, "Undef"
  vivify_470:
    get_how $P108, $P107
    find_lex $P109, "$irole"
    unless_null $P109, vivify_471
    new $P109, "Undef"
  vivify_471:
    find_lex $P110, "$_"
    unless_null $P110, vivify_472
    new $P110, "Undef"
  vivify_472:
    $P111 = $P110."value"()
    $P112 = $P108."add_attribute"($P109, $P111)
.annotate 'line', 506
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1433"  :anon :subid("144_1335114075.00898") :outer("53_1335114075.00898")
    .param pmc param_1435
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 511
    .lex "$_", param_1435
.annotate 'line', 512
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
    $P111 = $P110."key"()
    find_lex $P112, "$_"
    unless_null $P112, vivify_478
    new $P112, "Undef"
  vivify_478:
    $P113 = $P112."value"()
    $P114 = $P113."clone"()
    $P115 = $P108."add_method"($P109, $P111, $P114)
.annotate 'line', 511
    .return ($P115)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1438"  :anon :subid("145_1335114075.00898") :outer("53_1335114075.00898")
    .param pmc param_1440
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 514
    .lex "$_", param_1440
.annotate 'line', 515
    find_lex $P107, "$irole"
    unless_null $P107, vivify_481
    new $P107, "Undef"
  vivify_481:
    get_how $P108, $P107
    find_lex $P109, "$irole"
    unless_null $P109, vivify_482
    new $P109, "Undef"
  vivify_482:
    find_lex $P1441, "$_"
    unless_null $P1441, vivify_483
    $P1441 = root_new ['parrot';'Hash']
  vivify_483:
    set $P110, $P1441["name"]
    unless_null $P110, vivify_484
    new $P110, "Undef"
  vivify_484:
    find_lex $P1442, "$_"
    unless_null $P1442, vivify_485
    $P1442 = root_new ['parrot';'Hash']
  vivify_485:
    set $P111, $P1442["code"]
    unless_null $P111, vivify_486
    new $P111, "Undef"
  vivify_486:
    $P112 = "reify_method"($P111)
    $P113 = $P108."add_multi_method"($P109, $P110, $P112)
.annotate 'line', 514
    .return ($P113)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1445"  :anon :subid("146_1335114075.00898") :outer("53_1335114075.00898")
    .param pmc param_1448
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 520
    new $P107, "Undef"
    set $P1447, $P107
    .lex "$specialized", $P1447
    .lex "$_", param_1448
    find_lex $P108, "$irole"
    unless_null $P108, vivify_489
    new $P108, "Undef"
  vivify_489:
    get_how $P109, $P108
    find_lex $P110, "$irole"
    unless_null $P110, vivify_490
    new $P110, "Undef"
  vivify_490:
    find_lex $P111, "$class_arg"
    unless_null $P111, vivify_491
    new $P111, "Undef"
  vivify_491:
    $P112 = $P109."specialize"($P110, $P111)
    set $P1447, $P112
.annotate 'line', 521
    find_lex $P108, "$irole"
    unless_null $P108, vivify_492
    new $P108, "Undef"
  vivify_492:
    get_how $P109, $P108
    find_lex $P110, "$irole"
    unless_null $P110, vivify_493
    new $P110, "Undef"
  vivify_493:
    set $P111, $P1447
    unless_null $P111, vivify_494
    new $P111, "Undef"
  vivify_494:
    $P112 = $P109."add_role"($P110, $P111)
.annotate 'line', 519
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "methods" :anon :subid("54_1335114075.00898") :outer("142_1335114075.00898")
    .param pmc param_1451
    .param pmc param_1452
    .param pmc param_1453 :optional :named("local")
    .param int has_param_1453 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 533
    .const 'Sub' $P1459 = "147_1335114075.00898" 
    capture_lex $P1459
    .lex "self", param_1451
    .lex "$obj", param_1452
    if has_param_1453, optparam_498
    new $P101, "Undef"
    set param_1453, $P101
  optparam_498:
    .lex "$local", param_1453
.annotate 'line', 534
    $P1455 = root_new ['parrot';'ResizablePMCArray']
    set $P1454, $P1455
    .lex "@meths", $P1454
.annotate 'line', 533
    set $P1456, $P1454
    unless_null $P1456, vivify_499
    $P1456 = root_new ['parrot';'ResizablePMCArray']
  vivify_499:
.annotate 'line', 535
    set $P103, param_1451
    nqp_decontainerize $P104, $P103
    nqp_get_sc_object $P105, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 5
    repr_get_attr_obj $P1457, $P104, $P105, "%!methods", 2
    unless_null $P1457, vivify_500
    $P1457 = root_new ['parrot';'Hash']
  vivify_500:
    defined $I100, $P1457
    unless $I100, for_undef_501
    iter $P102, $P1457
    new $P107, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P107, loop1462_handler
    push_eh $P107
  loop1462_test:
    unless $P102, loop1462_done
    shift $P106, $P102
  loop1462_redo:
    .const 'Sub' $P1459 = "147_1335114075.00898" 
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
  for_undef_501:
.annotate 'line', 533
    set $P1463, $P1454
    unless_null $P1463, vivify_504
    $P1463 = root_new ['parrot';'ResizablePMCArray']
  vivify_504:
    .return ($P1463)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1458"  :anon :subid("147_1335114075.00898") :outer("54_1335114075.00898")
    .param pmc param_1460
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 535
    .lex "$_", param_1460
.annotate 'line', 536
    find_lex $P1461, "@meths"
    unless_null $P1461, vivify_502
    $P1461 = root_new ['parrot';'ResizablePMCArray']
  vivify_502:
    find_lex $P107, "$_"
    unless_null $P107, vivify_503
    new $P107, "Undef"
  vivify_503:
    $P108 = $P107."value"()
    $P109 = $P1461."push"($P108)
.annotate 'line', 535
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "method_table" :anon :subid("55_1335114075.00898") :outer("142_1335114075.00898")
    .param pmc param_1465
    .param pmc param_1466
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 541
    .lex "self", param_1465
    .lex "$obj", param_1466
    set $P101, param_1465
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 5
    repr_get_attr_obj $P1467, $P102, $P103, "%!methods", 2
    unless_null $P1467, vivify_505
    $P1467 = root_new ['parrot';'Hash']
  vivify_505:
    .return ($P1467)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "name" :anon :subid("56_1335114075.00898") :outer("142_1335114075.00898")
    .param pmc param_1469
    .param pmc param_1470
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 545
    .lex "self", param_1469
    .lex "$obj", param_1470
    set $P101, param_1469
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 5
    repr_get_attr_obj $P104, $P102, $P103, "$!name", 0
    unless_null $P104, vivify_506
    new $P104, "Undef"
  vivify_506:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "attributes" :anon :subid("57_1335114075.00898") :outer("142_1335114075.00898")
    .param pmc param_1472
    .param pmc param_1473
    .param pmc param_1474 :optional :named("local")
    .param int has_param_1474 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 549
    .const 'Sub' $P1480 = "148_1335114075.00898" 
    capture_lex $P1480
    .lex "self", param_1472
    .lex "$obj", param_1473
    if has_param_1474, optparam_507
    new $P101, "Undef"
    set param_1474, $P101
  optparam_507:
    .lex "$local", param_1474
.annotate 'line', 550
    $P1476 = root_new ['parrot';'ResizablePMCArray']
    set $P1475, $P1476
    .lex "@attrs", $P1475
.annotate 'line', 549
    set $P1477, $P1475
    unless_null $P1477, vivify_508
    $P1477 = root_new ['parrot';'ResizablePMCArray']
  vivify_508:
.annotate 'line', 551
    set $P103, param_1472
    nqp_decontainerize $P104, $P103
    nqp_get_sc_object $P105, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 5
    repr_get_attr_obj $P1478, $P104, $P105, "%!attributes", 1
    unless_null $P1478, vivify_509
    $P1478 = root_new ['parrot';'Hash']
  vivify_509:
    defined $I100, $P1478
    unless $I100, for_undef_510
    iter $P102, $P1478
    new $P107, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P107, loop1483_handler
    push_eh $P107
  loop1483_test:
    unless $P102, loop1483_done
    shift $P106, $P102
  loop1483_redo:
    .const 'Sub' $P1480 = "148_1335114075.00898" 
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
  for_undef_510:
.annotate 'line', 549
    set $P1484, $P1475
    unless_null $P1484, vivify_513
    $P1484 = root_new ['parrot';'ResizablePMCArray']
  vivify_513:
    .return ($P1484)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1479"  :anon :subid("148_1335114075.00898") :outer("57_1335114075.00898")
    .param pmc param_1481
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 551
    .lex "$_", param_1481
.annotate 'line', 552
    find_lex $P1482, "@attrs"
    unless_null $P1482, vivify_511
    $P1482 = root_new ['parrot';'ResizablePMCArray']
  vivify_511:
    find_lex $P107, "$_"
    unless_null $P107, vivify_512
    new $P107, "Undef"
  vivify_512:
    $P108 = $P107."value"()
    $P109 = $P1482."push"($P108)
.annotate 'line', 551
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "roles" :anon :subid("58_1335114075.00898") :outer("142_1335114075.00898")
    .param pmc param_1486
    .param pmc param_1487
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 557
    .lex "self", param_1486
    .lex "$obj", param_1487
    set $P101, param_1486
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 5
    repr_get_attr_obj $P1488, $P102, $P103, "@!roles", 4
    unless_null $P1488, vivify_514
    $P1488 = root_new ['parrot';'ResizablePMCArray']
  vivify_514:
    .return ($P1488)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1490"  :subid("149_1335114075.00898") :outer("119_1335114075.00898")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 567
    .const 'Sub' $P1977 = "91_1335114075.00898" 
    capture_lex $P1977
    .const 'Sub' $P1960 = "90_1335114075.00898" 
    capture_lex $P1960
    .const 'Sub' $P1944 = "89_1335114075.00898" 
    capture_lex $P1944
    .const 'Sub' $P1933 = "88_1335114075.00898" 
    capture_lex $P1933
    .const 'Sub' $P1921 = "87_1335114075.00898" 
    capture_lex $P1921
    .const 'Sub' $P1916 = "86_1335114075.00898" 
    capture_lex $P1916
    .const 'Sub' $P1911 = "85_1335114075.00898" 
    capture_lex $P1911
    .const 'Sub' $P1897 = "84_1335114075.00898" 
    capture_lex $P1897
    .const 'Sub' $P1894 = "83_1335114075.00898" 
    capture_lex $P1894
    .const 'Sub' $P1890 = "82_1335114075.00898" 
    capture_lex $P1890
    .const 'Sub' $P1876 = "81_1335114075.00898" 
    capture_lex $P1876
    .const 'Sub' $P1871 = "80_1335114075.00898" 
    capture_lex $P1871
    .const 'Sub' $P1867 = "79_1335114075.00898" 
    capture_lex $P1867
    .const 'Sub' $P1860 = "78_1335114075.00898" 
    capture_lex $P1860
    .const 'Sub' $P1837 = "77_1335114075.00898" 
    capture_lex $P1837
    .const 'Sub' $P1814 = "76_1335114075.00898" 
    capture_lex $P1814
    .const 'Sub' $P1809 = "75_1335114075.00898" 
    capture_lex $P1809
    .const 'Sub' $P1788 = "74_1335114075.00898" 
    capture_lex $P1788
    .const 'Sub' $P1769 = "73_1335114075.00898" 
    capture_lex $P1769
    .const 'Sub' $P1713 = "72_1335114075.00898" 
    capture_lex $P1713
    .const 'Sub' $P1683 = "71_1335114075.00898" 
    capture_lex $P1683
    .const 'Sub' $P1675 = "70_1335114075.00898" 
    capture_lex $P1675
    .const 'Sub' $P1667 = "69_1335114075.00898" 
    capture_lex $P1667
    .const 'Sub' $P1655 = "68_1335114075.00898" 
    capture_lex $P1655
    .const 'Sub' $P1651 = "67_1335114075.00898" 
    capture_lex $P1651
    .const 'Sub' $P1637 = "66_1335114075.00898" 
    capture_lex $P1637
    .const 'Sub' $P1629 = "65_1335114075.00898" 
    capture_lex $P1629
    .const 'Sub' $P1616 = "64_1335114075.00898" 
    capture_lex $P1616
    .const 'Sub' $P1605 = "63_1335114075.00898" 
    capture_lex $P1605
    .const 'Sub' $P1599 = "62_1335114075.00898" 
    capture_lex $P1599
    .const 'Sub' $P1596 = "61_1335114075.00898" 
    capture_lex $P1596
    .const 'Sub' $P1592 = "60_1335114075.00898" 
    capture_lex $P1592
    .const 'Sub' $P1590 = "59_1335114075.00898" 
    capture_lex $P1590
    .const 'Sub' $P1526 = "153_1335114075.00898" 
    capture_lex $P1526
    .const 'Sub' $P1494 = "150_1335114075.00898" 
    capture_lex $P1494
.annotate 'line', 603
    new $P100, "Undef"
    set $P1492, $P100
    .lex "$archetypes", $P1492
.annotate 'line', 826
    .const 'Sub' $P1494 = "150_1335114075.00898" 
    newclosure $P1524, $P1494
    set $P1493, $P1524
    .lex "compute_c3_mro", $P1493
.annotate 'line', 852
    .const 'Sub' $P1526 = "153_1335114075.00898" 
    newclosure $P1587, $P1526
    set $P1525, $P1587
    .lex "c3_merge", $P1525
.annotate 'line', 603
    .lex "$?PACKAGE", $P1588
    .lex "$?CLASS", $P1589
    find_lex $P107, "Archetypes"
    $P108 = $P107."new"(1 :named("nominal"), 1 :named("inheritable"))
    set $P1492, $P108
.annotate 'line', 567
    set $P107, $P1493
    set $P107, $P1525
.annotate 'line', 1081
    .const 'Sub' $P1977 = "91_1335114075.00898" 
    newclosure $P1989, $P1977
.annotate 'line', 567
    .return ($P1989)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "compute_c3_mro"  :subid("150_1335114075.00898") :outer("149_1335114075.00898")
    .param pmc param_1497
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 826
    .const 'Sub' $P1509 = "151_1335114075.00898" 
    capture_lex $P1509
    new $P1496, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P1496, control_1495
    push_eh $P1496
    .lex "$class", param_1497
.annotate 'line', 827
    $P1499 = root_new ['parrot';'ResizablePMCArray']
    set $P1498, $P1499
    .lex "@immediate_parents", $P1498
.annotate 'line', 830
    $P1501 = root_new ['parrot';'ResizablePMCArray']
    set $P1500, $P1501
    .lex "@result", $P1500
.annotate 'line', 827
    set $P101, param_1497
    unless_null $P101, vivify_515
    new $P101, "Undef"
  vivify_515:
    get_how $P102, $P101
    set $P103, param_1497
    unless_null $P103, vivify_516
    new $P103, "Undef"
  vivify_516:
    $P104 = $P102."parents"($P103, 1 :named("local"))
    set $P1498, $P104
.annotate 'line', 826
    set $P1502, $P1500
    unless_null $P1502, vivify_517
    $P1502 = root_new ['parrot';'ResizablePMCArray']
  vivify_517:
.annotate 'line', 831
    set $P1504, $P1498
    unless_null $P1504, vivify_518
    $P1504 = root_new ['parrot';'ResizablePMCArray']
  vivify_518:
    set $N100, $P1504
    unless $N100, if_1503_end
.annotate 'line', 832
    set $P1506, $P1498
    unless_null $P1506, vivify_519
    $P1506 = root_new ['parrot';'ResizablePMCArray']
  vivify_519:
    set $N101, $P1506
    set $N102, 1
    iseq $I100, $N101, $N102
    if $I100, if_1505
.annotate 'line', 834
    .const 'Sub' $P1509 = "151_1335114075.00898" 
    capture_lex $P1509
    $P1509()
    goto if_1505_end
  if_1505:
.annotate 'line', 833
    new $P101, "Float"
    assign $P101, 0
    set $I101, $P101
    set $P1507, $P1498
    unless_null $P1507, vivify_528
    $P1507 = root_new ['parrot';'ResizablePMCArray']
  vivify_528:
    set $P102, $P1507[$I101]
    unless_null $P102, vivify_529
    new $P102, "Undef"
  vivify_529:
    $P103 = "compute_c3_mro"($P102)
    set $P1500, $P103
  if_1505_end:
  if_1503_end:
.annotate 'line', 847
    set $P1522, $P1500
    unless_null $P1522, vivify_530
    $P1522 = root_new ['parrot';'ResizablePMCArray']
  vivify_530:
    set $P101, param_1497
    unless_null $P101, vivify_531
    new $P101, "Undef"
  vivify_531:
    $P1522."unshift"($P101)
.annotate 'line', 848
    new $P101, "Exception"
    set $P101['type'], .CONTROL_RETURN
    set $P1523, $P1500
    unless_null $P1523, vivify_532
    $P1523 = root_new ['parrot';'ResizablePMCArray']
  vivify_532:
    setattribute $P101, 'payload', $P1523
    throw $P101
.annotate 'line', 826
    .return ()
  control_1495:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P101, exception, "payload"
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1508"  :anon :subid("151_1335114075.00898") :outer("150_1335114075.00898")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 834
    .const 'Sub' $P1515 = "152_1335114075.00898" 
    capture_lex $P1515
.annotate 'line', 837
    $P1511 = root_new ['parrot';'ResizablePMCArray']
    set $P1510, $P1511
    .lex "@merge_list", $P1510
.annotate 'line', 834
    set $P1512, $P1510
    unless_null $P1512, vivify_520
    $P1512 = root_new ['parrot';'ResizablePMCArray']
  vivify_520:
.annotate 'line', 838
    find_lex $P1513, "@immediate_parents"
    unless_null $P1513, vivify_521
    $P1513 = root_new ['parrot';'ResizablePMCArray']
  vivify_521:
    defined $I101, $P1513
    unless $I101, for_undef_522
    iter $P101, $P1513
    new $P103, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P103, loop1518_handler
    push_eh $P103
  loop1518_test:
    unless $P101, loop1518_done
    shift $P102, $P101
  loop1518_redo:
    .const 'Sub' $P1515 = "152_1335114075.00898" 
    capture_lex $P1515
    $P1515($P102)
  loop1518_next:
    goto loop1518_test
  loop1518_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P104, exception, 'type'
    eq $P104, .CONTROL_LOOP_NEXT, loop1518_next
    eq $P104, .CONTROL_LOOP_REDO, loop1518_redo
  loop1518_done:
    pop_eh 
  for_undef_522:
.annotate 'line', 841
    set $P1519, $P1510
    unless_null $P1519, vivify_525
    $P1519 = root_new ['parrot';'ResizablePMCArray']
  vivify_525:
    find_lex $P1520, "@immediate_parents"
    unless_null $P1520, vivify_526
    $P1520 = root_new ['parrot';'ResizablePMCArray']
  vivify_526:
    $P1519."push"($P1520)
.annotate 'line', 842
    set $P1521, $P1510
    unless_null $P1521, vivify_527
    $P1521 = root_new ['parrot';'ResizablePMCArray']
  vivify_527:
    $P101 = "c3_merge"($P1521)
    store_lex "@result", $P101
.annotate 'line', 834
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1514"  :anon :subid("152_1335114075.00898") :outer("151_1335114075.00898")
    .param pmc param_1516
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 838
    .lex "$_", param_1516
.annotate 'line', 839
    find_lex $P1517, "@merge_list"
    unless_null $P1517, vivify_523
    $P1517 = root_new ['parrot';'ResizablePMCArray']
  vivify_523:
    find_lex $P103, "$_"
    unless_null $P103, vivify_524
    new $P103, "Undef"
  vivify_524:
    $P104 = "compute_c3_mro"($P103)
    $P105 = $P1517."push"($P104)
.annotate 'line', 838
    .return ($P105)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "c3_merge"  :subid("153_1335114075.00898") :outer("149_1335114075.00898")
    .param pmc param_1529
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 852
    .const 'Sub' $P1570 = "158_1335114075.00898" 
    capture_lex $P1570
    .const 'Sub' $P1539 = "154_1335114075.00898" 
    capture_lex $P1539
    new $P1528, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P1528, control_1527
    push_eh $P1528
    .lex "@merge_list", param_1529
.annotate 'line', 853
    $P1531 = root_new ['parrot';'ResizablePMCArray']
    set $P1530, $P1531
    .lex "@result", $P1530
.annotate 'line', 854
    new $P102, "Undef"
    set $P1532, $P102
    .lex "$accepted", $P1532
.annotate 'line', 855
    new $P103, "Undef"
    set $P1533, $P103
    .lex "$something_accepted", $P1533
.annotate 'line', 856
    new $P104, "Undef"
    set $P1534, $P104
    .lex "$cand_count", $P1534
.annotate 'line', 899
    new $P105, "Undef"
    set $P1535, $P105
    .lex "$i", $P1535
.annotate 'line', 852
    set $P1536, $P1530
    unless_null $P1536, vivify_533
    $P1536 = root_new ['parrot';'ResizablePMCArray']
  vivify_533:
    set $P106, $P1532
    unless_null $P106, vivify_534
    new $P106, "Undef"
  vivify_534:
.annotate 'line', 855
    new $P106, "Float"
    assign $P106, 0
    set $P1533, $P106
.annotate 'line', 856
    new $P106, "Float"
    assign $P106, 0
    set $P1534, $P106
.annotate 'line', 859
    set $P1537, param_1529
    unless_null $P1537, vivify_535
    $P1537 = root_new ['parrot';'ResizablePMCArray']
  vivify_535:
    defined $I100, $P1537
    unless $I100, for_undef_536
    iter $P106, $P1537
    new $P109, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P109, loop1564_handler
    push_eh $P109
  loop1564_test:
    unless $P106, loop1564_done
    shift $P107, $P106
  loop1564_redo:
    .const 'Sub' $P1539 = "154_1335114075.00898" 
    capture_lex $P1539
    $P1539($P107)
  loop1564_next:
    goto loop1564_test
  loop1564_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P110, exception, 'type'
    eq $P110, .CONTROL_LOOP_NEXT, loop1564_next
    eq $P110, .CONTROL_LOOP_REDO, loop1564_redo
  loop1564_done:
    pop_eh 
  for_undef_536:
.annotate 'line', 889
    set $P106, $P1534
    unless_null $P106, vivify_555
    new $P106, "Undef"
  vivify_555:
    set $N100, $P106
    set $N101, 0
    iseq $I100, $N100, $N101
    unless $I100, if_1565_end
.annotate 'line', 890
    new $P107, "Exception"
    set $P107['type'], .CONTROL_RETURN
    set $P1566, $P1530
    unless_null $P1566, vivify_556
    $P1566 = root_new ['parrot';'ResizablePMCArray']
  vivify_556:
    setattribute $P107, 'payload', $P1566
    throw $P107
  if_1565_end:
.annotate 'line', 894
    set $P106, $P1533
    unless_null $P106, vivify_557
    new $P106, "Undef"
  vivify_557:
    if $P106, unless_1567_end
.annotate 'line', 895
    die "Could not build C3 linearization: ambiguous hierarchy"
  unless_1567_end:
.annotate 'line', 899
    new $P106, "Float"
    assign $P106, 0
    set $P1535, $P106
.annotate 'line', 900
    new $P107, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P107, loop1583_handler
    push_eh $P107
  loop1583_test:
    set $P106, $P1535
    unless_null $P106, vivify_558
    new $P106, "Undef"
  vivify_558:
    set $N100, $P106
    set $P1568, param_1529
    unless_null $P1568, vivify_559
    $P1568 = root_new ['parrot';'ResizablePMCArray']
  vivify_559:
    set $N101, $P1568
    islt $I100, $N100, $N101
    unless $I100, loop1583_done
  loop1583_redo:
    .const 'Sub' $P1570 = "158_1335114075.00898" 
    capture_lex $P1570
    $P1570()
  loop1583_next:
    goto loop1583_test
  loop1583_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P109, exception, 'type'
    eq $P109, .CONTROL_LOOP_NEXT, loop1583_next
    eq $P109, .CONTROL_LOOP_REDO, loop1583_redo
  loop1583_done:
    pop_eh 
.annotate 'line', 913
    set $P1584, param_1529
    unless_null $P1584, vivify_573
    $P1584 = root_new ['parrot';'ResizablePMCArray']
  vivify_573:
    $P106 = "c3_merge"($P1584)
    set $P1530, $P106
.annotate 'line', 914
    set $P1585, $P1530
    unless_null $P1585, vivify_574
    $P1585 = root_new ['parrot';'ResizablePMCArray']
  vivify_574:
    set $P106, $P1532
    unless_null $P106, vivify_575
    new $P106, "Undef"
  vivify_575:
    $P1585."unshift"($P106)
.annotate 'line', 915
    new $P106, "Exception"
    set $P106['type'], .CONTROL_RETURN
    set $P1586, $P1530
    unless_null $P1586, vivify_576
    $P1586 = root_new ['parrot';'ResizablePMCArray']
  vivify_576:
    setattribute $P106, 'payload', $P1586
    throw $P106
.annotate 'line', 852
    .return ()
  control_1527:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P106, exception, "payload"
    .return ($P106)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1538"  :anon :subid("154_1335114075.00898") :outer("153_1335114075.00898")
    .param pmc param_1542
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 859
    .const 'Sub' $P1546 = "155_1335114075.00898" 
    capture_lex $P1546
.annotate 'line', 860
    $P1541 = root_new ['parrot';'ResizablePMCArray']
    set $P1540, $P1541
    .lex "@cand_list", $P1540
    .lex "$_", param_1542
    find_lex $P108, "$_"
    unless_null $P108, vivify_537
    new $P108, "Undef"
  vivify_537:
    set $P1540, $P108
.annotate 'line', 861
    set $P1544, $P1540
    unless_null $P1544, vivify_538
    $P1544 = root_new ['parrot';'ResizablePMCArray']
  vivify_538:
    set $N100, $P1544
    if $N100, if_1543
    new $P108, 'Float'
    set $P108, $N100
    goto if_1543_end
  if_1543:
    .const 'Sub' $P1546 = "155_1335114075.00898" 
    capture_lex $P1546
    $P112 = $P1546()
    set $P108, $P112
  if_1543_end:
.annotate 'line', 859
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1545"  :anon :subid("155_1335114075.00898") :outer("154_1335114075.00898")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 861
    .const 'Sub' $P1552 = "156_1335114075.00898" 
    capture_lex $P1552
.annotate 'line', 862
    new $P109, "Undef"
    set $P1547, $P109
    .lex "$rejected", $P1547
.annotate 'line', 863
    new $P110, "Undef"
    set $P1548, $P110
    .lex "$cand_class", $P1548
.annotate 'line', 862
    new $P111, "Float"
    assign $P111, 0
    set $P1547, $P111
.annotate 'line', 863
    new $P111, "Float"
    assign $P111, 0
    set $I101, $P111
    find_lex $P1549, "@cand_list"
    unless_null $P1549, vivify_539
    $P1549 = root_new ['parrot';'ResizablePMCArray']
  vivify_539:
    set $P112, $P1549[$I101]
    unless_null $P112, vivify_540
    new $P112, "Undef"
  vivify_540:
    set $P1548, $P112
.annotate 'line', 864
    find_lex $P111, "$cand_count"
    unless_null $P111, vivify_541
    new $P111, "Undef"
  vivify_541:
    add $P112, $P111, 1
    store_lex "$cand_count", $P112
.annotate 'line', 865
    find_lex $P1550, "@merge_list"
    unless_null $P1550, vivify_542
    $P1550 = root_new ['parrot';'ResizablePMCArray']
  vivify_542:
    defined $I101, $P1550
    unless $I101, for_undef_543
    iter $P111, $P1550
    new $P114, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P114, loop1562_handler
    push_eh $P114
  loop1562_test:
    unless $P111, loop1562_done
    shift $P112, $P111
  loop1562_redo:
    .const 'Sub' $P1552 = "156_1335114075.00898" 
    capture_lex $P1552
    $P1552($P112)
  loop1562_next:
    goto loop1562_test
  loop1562_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P115, exception, 'type'
    eq $P115, .CONTROL_LOOP_NEXT, loop1562_next
    eq $P115, .CONTROL_LOOP_REDO, loop1562_redo
  loop1562_done:
    pop_eh 
  for_undef_543:
.annotate 'line', 880
    set $P112, $P1547
    unless_null $P112, vivify_553
    new $P112, "Undef"
  vivify_553:
    unless $P112, unless_1563
    set $P111, $P112
    goto unless_1563_end
  unless_1563:
.annotate 'line', 881
    set $P113, $P1548
    unless_null $P113, vivify_554
    new $P113, "Undef"
  vivify_554:
    store_lex "$accepted", $P113
.annotate 'line', 882
    new $P113, "Float"
    assign $P113, 1
    store_lex "$something_accepted", $P113
.annotate 'line', 883
    die 0, .CONTROL_LOOP_LAST
  unless_1563_end:
.annotate 'line', 861
    .return ($P111)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1551"  :anon :subid("156_1335114075.00898") :outer("155_1335114075.00898")
    .param pmc param_1553
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 865
    .const 'Sub' $P1557 = "157_1335114075.00898" 
    capture_lex $P1557
    .lex "$_", param_1553
.annotate 'line', 867
    find_lex $P114, "$_"
    unless_null $P114, vivify_544
    new $P114, "Undef"
  vivify_544:
    find_lex $P1555, "@cand_list"
    unless_null $P1555, vivify_545
    $P1555 = root_new ['parrot';'ResizablePMCArray']
  vivify_545:
    issame $I102, $P114, $P1555
    unless $I102, unless_1554
    new $P113, 'Integer'
    set $P113, $I102
    goto unless_1554_end
  unless_1554:
    .const 'Sub' $P1557 = "157_1335114075.00898" 
    capture_lex $P1557
    $P116 = $P1557()
    set $P113, $P116
  unless_1554_end:
.annotate 'line', 865
    .return ($P113)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1556"  :anon :subid("157_1335114075.00898") :outer("156_1335114075.00898")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 869
    new $P115, "Undef"
    set $P1558, $P115
    .lex "$cur_pos", $P1558
    new $P116, "Float"
    assign $P116, 1
    set $P1558, $P116
.annotate 'line', 870
    new $P118, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P118, loop1561_handler
    push_eh $P118
  loop1561_test:
    set $P116, $P1558
    unless_null $P116, vivify_546
    new $P116, "Undef"
  vivify_546:
    set $N101, $P116
    find_lex $P117, "$_"
    unless_null $P117, vivify_547
    new $P117, "Undef"
  vivify_547:
    set $N102, $P117
    isle $I103, $N101, $N102
    unless $I103, loop1561_done
  loop1561_redo:
.annotate 'line', 871
    set $P118, $P1558
    unless_null $P118, vivify_548
    new $P118, "Undef"
  vivify_548:
    set $I104, $P118
    find_lex $P1560, "$_"
    unless_null $P1560, vivify_549
    $P1560 = root_new ['parrot';'ResizablePMCArray']
  vivify_549:
    set $P119, $P1560[$I104]
    unless_null $P119, vivify_550
    new $P119, "Undef"
  vivify_550:
    find_lex $P120, "$cand_class"
    unless_null $P120, vivify_551
    new $P120, "Undef"
  vivify_551:
    issame $I105, $P119, $P120
    unless $I105, if_1559_end
.annotate 'line', 872
    new $P121, "Float"
    assign $P121, 1
    store_lex "$rejected", $P121
  if_1559_end:
.annotate 'line', 874
    set $P118, $P1558
    unless_null $P118, vivify_552
    new $P118, "Undef"
  vivify_552:
    add $P119, $P118, 1
    set $P1558, $P119
  loop1561_next:
.annotate 'line', 870
    goto loop1561_test
  loop1561_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P119, exception, 'type'
    eq $P119, .CONTROL_LOOP_NEXT, loop1561_next
    eq $P119, .CONTROL_LOOP_REDO, loop1561_redo
  loop1561_done:
    pop_eh 
.annotate 'line', 867
    .return ($I103)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1569"  :anon :subid("158_1335114075.00898") :outer("153_1335114075.00898")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 900
    .const 'Sub' $P1576 = "159_1335114075.00898" 
    capture_lex $P1576
.annotate 'line', 901
    $P1572 = root_new ['parrot';'ResizablePMCArray']
    set $P1571, $P1572
    .lex "@new_list", $P1571
.annotate 'line', 900
    set $P1573, $P1571
    unless_null $P1573, vivify_560
    $P1573 = root_new ['parrot';'ResizablePMCArray']
  vivify_560:
.annotate 'line', 902
    find_lex $P108, "$i"
    unless_null $P108, vivify_561
    new $P108, "Undef"
  vivify_561:
    set $I101, $P108
    find_lex $P1574, "@merge_list"
    unless_null $P1574, vivify_562
    $P1574 = root_new ['parrot';'ResizablePMCArray']
  vivify_562:
    set $P109, $P1574[$I101]
    unless_null $P109, vivify_563
    new $P109, "Undef"
  vivify_563:
    defined $I102, $P109
    unless $I102, for_undef_564
    iter $P107, $P109
    new $P112, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P112, loop1580_handler
    push_eh $P112
  loop1580_test:
    unless $P107, loop1580_done
    shift $P110, $P107
  loop1580_redo:
    .const 'Sub' $P1576 = "159_1335114075.00898" 
    capture_lex $P1576
    $P1576($P110)
  loop1580_next:
    goto loop1580_test
  loop1580_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P113, exception, 'type'
    eq $P113, .CONTROL_LOOP_NEXT, loop1580_next
    eq $P113, .CONTROL_LOOP_REDO, loop1580_redo
  loop1580_done:
    pop_eh 
  for_undef_564:
.annotate 'line', 907
    set $P1581, $P1571
    unless_null $P1581, vivify_569
    $P1581 = root_new ['parrot';'ResizablePMCArray']
  vivify_569:
    find_lex $P107, "$i"
    unless_null $P107, vivify_570
    new $P107, "Undef"
  vivify_570:
    set $I101, $P107
    find_lex $P1582, "@merge_list"
    unless_null $P1582, vivify_571
    $P1582 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@merge_list", $P1582
  vivify_571:
    set $P1582[$I101], $P1581
.annotate 'line', 908
    find_lex $P107, "$i"
    unless_null $P107, vivify_572
    new $P107, "Undef"
  vivify_572:
    add $P108, $P107, 1
    store_lex "$i", $P108
.annotate 'line', 900
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1575"  :anon :subid("159_1335114075.00898") :outer("158_1335114075.00898")
    .param pmc param_1577
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 902
    .lex "$_", param_1577
.annotate 'line', 903
    find_lex $P112, "$_"
    unless_null $P112, vivify_565
    new $P112, "Undef"
  vivify_565:
    find_lex $P113, "$accepted"
    unless_null $P113, vivify_566
    new $P113, "Undef"
  vivify_566:
    issame $I103, $P112, $P113
    unless $I103, unless_1578
    new $P111, 'Integer'
    set $P111, $I103
    goto unless_1578_end
  unless_1578:
.annotate 'line', 904
    find_lex $P1579, "@new_list"
    unless_null $P1579, vivify_567
    $P1579 = root_new ['parrot';'ResizablePMCArray']
  vivify_567:
    find_lex $P114, "$_"
    unless_null $P114, vivify_568
    new $P114, "Undef"
  vivify_568:
    $P115 = $P1579."push"($P114)
.annotate 'line', 903
    set $P111, $P115
  unless_1578_end:
.annotate 'line', 902
    .return ($P111)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "archetypes" :anon :subid("59_1335114075.00898") :outer("149_1335114075.00898")
    .param pmc param_1591
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 604
    .lex "self", param_1591
    find_lex $P107, "$archetypes"
    unless_null $P107, vivify_577
    new $P107, "Undef"
  vivify_577:
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "new" :anon :subid("60_1335114075.00898") :outer("149_1335114075.00898")
    .param pmc param_1593
    .param pmc param_1594 :optional :named("name")
    .param int has_param_1594 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 613
    .lex "self", param_1593
    if has_param_1594, optparam_578
    new $P107, "Undef"
    set param_1594, $P107
  optparam_578:
    .lex "$name", param_1594
.annotate 'line', 614
    new $P108, "Undef"
    set $P1595, $P108
    .lex "$obj", $P1595
    set $P109, param_1593
    nqp_decontainerize $P110, $P109
    repr_instance_of $P111, $P110
    set $P1595, $P111
.annotate 'line', 615
    set $P109, $P1595
    unless_null $P109, vivify_579
    new $P109, "Undef"
  vivify_579:
    set $P110, param_1594
    unless_null $P110, vivify_580
    new $P110, "Undef"
  vivify_580:
    $P109."BUILD"($P110 :named("name"))
.annotate 'line', 613
    set $P109, $P1595
    unless_null $P109, vivify_581
    new $P109, "Undef"
  vivify_581:
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "BUILD" :anon :subid("61_1335114075.00898") :outer("149_1335114075.00898")
    .param pmc param_1597
    .param pmc param_1598 :optional :named("name")
    .param int has_param_1598 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 619
    .lex "self", param_1597
    if has_param_1598, optparam_582
    new $P107, "Undef"
    set param_1598, $P107
  optparam_582:
    .lex "$name", param_1598
.annotate 'line', 620
    set $P108, param_1598
    unless_null $P108, vivify_583
    new $P108, "Undef"
  vivify_583:
    set $P109, param_1597
    nqp_decontainerize $P110, $P109
    nqp_get_sc_object $P111, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_bind_attr_obj $P110, $P111, "$!name", 0, $P108
.annotate 'line', 619
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "new_type" :anon :subid("62_1335114075.00898") :outer("149_1335114075.00898")
    .param pmc param_1600
    .param pmc param_1601 :optional :named("name")
    .param int has_param_1601 :opt_flag
    .param pmc param_1602 :optional :named("repr")
    .param int has_param_1602 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 625
    .lex "self", param_1600
    if has_param_1601, optparam_584
    new $P107, "String"
    assign $P107, "<anon>"
    set param_1601, $P107
  optparam_584:
    .lex "$name", param_1601
    if has_param_1602, optparam_585
    new $P108, "String"
    assign $P108, "P6opaque"
    set param_1602, $P108
  optparam_585:
    .lex "$repr", param_1602
.annotate 'line', 626
    new $P109, "Undef"
    set $P1603, $P109
    .lex "$metaclass", $P1603
    set $P110, param_1600
    nqp_decontainerize $P111, $P110
    set $P112, param_1601
    unless_null $P112, vivify_586
    new $P112, "Undef"
  vivify_586:
    $P113 = $P111."new"($P112 :named("name"))
    set $P1603, $P113
.annotate 'line', 628
    set $P110, $P1603
    unless_null $P110, vivify_587
    new $P110, "Undef"
  vivify_587:
    set $P111, param_1602
    unless_null $P111, vivify_588
    new $P111, "Undef"
  vivify_588:
    set $S100, $P111
    repr_type_object_for $P112, $P110, $S100
    $P1604 = root_new ['parrot';'Hash']
    set_who $P112, $P1604
.annotate 'line', 625
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_method" :anon :subid("63_1335114075.00898") :outer("149_1335114075.00898")
    .param pmc param_1606
    .param pmc param_1607
    .param pmc param_1608
    .param pmc param_1609
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 632
    .lex "self", param_1606
    .lex "$obj", param_1607
    .lex "$name", param_1608
    .lex "$code_obj", param_1609
.annotate 'line', 633
    set $P107, param_1608
    unless_null $P107, vivify_589
    new $P107, "Undef"
  vivify_589:
    set $P108, param_1606
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P1611, $P109, $P110, "%!methods", 2
    unless_null $P1611, vivify_590
    $P1611 = root_new ['parrot';'Hash']
  vivify_590:
    set $P111, $P1611[$P107]
    unless_null $P111, vivify_591
    new $P111, "Undef"
  vivify_591:
    unless $P111, if_1610_end
.annotate 'line', 634
    new $P112, "String"
    assign $P112, "This class already has a method named "
    set $P113, param_1608
    unless_null $P113, vivify_592
    new $P113, "Undef"
  vivify_592:
    concat $P114, $P112, $P113
    die $P114
  if_1610_end:
.annotate 'line', 636
    set $P108, param_1609
    unless_null $P108, vivify_593
    new $P108, "Undef"
  vivify_593:
    isnull $I100, $P108
    unless $I100, unless_1613
    new $P107, 'Integer'
    set $P107, $I100
    goto unless_1613_end
  unless_1613:
    set $P109, param_1609
    unless_null $P109, vivify_594
    new $P109, "Undef"
  vivify_594:
    isa $I101, $P109, "Undef"
    new $P107, 'Integer'
    set $P107, $I101
  unless_1613_end:
    unless $P107, if_1612_end
.annotate 'line', 637
    new $P110, 'String'
    set $P110, "Cannot add a null method '"
    set $P111, param_1608
    unless_null $P111, vivify_595
    new $P111, "Undef"
  vivify_595:
    concat $P112, $P110, $P111
    concat $P113, $P112, "' to class '"
    set $P114, param_1606
    nqp_decontainerize $P115, $P114
    nqp_get_sc_object $P116, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P117, $P115, $P116, "$!name", 0
    unless_null $P117, vivify_596
    new $P117, "Undef"
  vivify_596:
    concat $P118, $P113, $P117
    concat $P119, $P118, "'"
    die $P119
  if_1612_end:
.annotate 'line', 639
    set $P107, param_1607
    unless_null $P107, vivify_597
    new $P107, "Undef"
  vivify_597:
    new $P108, "Float"
    assign $P108, 0
    set $I100, $P108
    set_method_cache_authoritativeness $P107, $I100
.annotate 'line', 640
    $P1614 = root_new ['parrot';'Hash']
    set $P107, param_1606
    nqp_decontainerize $P108, $P107
    nqp_get_sc_object $P109, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_bind_attr_obj $P108, $P109, "%!cache", 12, $P1614
.annotate 'line', 641
    set $P107, param_1609
    unless_null $P107, vivify_598
    new $P107, "Undef"
  vivify_598:
    set $P108, param_1608
    unless_null $P108, vivify_599
    new $P108, "Undef"
  vivify_599:
    set $P109, param_1606
    nqp_decontainerize $P110, $P109
    nqp_get_sc_object $P111, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P1615, $P110, $P111, "%!methods", 2
    unless_null $P1615, vivify_600
    $P1615 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P110, $P111, "%!methods", 2, $P1615
  vivify_600:
    set $P1615[$P108], $P107
.annotate 'line', 632
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_multi_method" :anon :subid("64_1335114075.00898") :outer("149_1335114075.00898")
    .param pmc param_1617
    .param pmc param_1618
    .param pmc param_1619
    .param pmc param_1620
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 644
    .lex "self", param_1617
    .lex "$obj", param_1618
    .lex "$name", param_1619
    .lex "$code_obj", param_1620
.annotate 'line', 650
    $P1622 = root_new ['parrot';'Hash']
    set $P1621, $P1622
    .lex "%todo", $P1621
.annotate 'line', 644
    set $P1623, $P1621
    unless_null $P1623, vivify_601
    $P1623 = root_new ['parrot';'Hash']
  vivify_601:
.annotate 'line', 651
    set $P107, param_1619
    unless_null $P107, vivify_602
    new $P107, "Undef"
  vivify_602:
    set $P1624, $P1621
    unless_null $P1624, vivify_603
    $P1624 = root_new ['parrot';'Hash']
    set $P1621, $P1624
  vivify_603:
    set $P1624["name"], $P107
.annotate 'line', 652
    set $P107, param_1620
    unless_null $P107, vivify_604
    new $P107, "Undef"
  vivify_604:
    set $P1625, $P1621
    unless_null $P1625, vivify_605
    $P1625 = root_new ['parrot';'Hash']
    set $P1621, $P1625
  vivify_605:
    set $P1625["code"], $P107
.annotate 'line', 653
    set $P1626, $P1621
    unless_null $P1626, vivify_606
    $P1626 = root_new ['parrot';'Hash']
  vivify_606:
    set $P107, param_1617
    nqp_decontainerize $P108, $P107
    nqp_get_sc_object $P109, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P1627, $P108, $P109, "@!multi_methods_to_incorporate", 3
    unless_null $P1627, vivify_607
    $P1627 = root_new ['parrot';'ResizablePMCArray']
  vivify_607:
    set $N100, $P1627
    set $I100, $N100
    set $P110, param_1617
    nqp_decontainerize $P111, $P110
    nqp_get_sc_object $P112, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P1628, $P111, $P112, "@!multi_methods_to_incorporate", 3
    unless_null $P1628, vivify_608
    $P1628 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P111, $P112, "@!multi_methods_to_incorporate", 3, $P1628
  vivify_608:
    set $P1628[$I100], $P1626
.annotate 'line', 654
    set $P107, param_1618
    unless_null $P107, vivify_609
    new $P107, "Undef"
  vivify_609:
    new $P108, "Float"
    assign $P108, 0
    set $I100, $P108
    set_method_cache_authoritativeness $P107, $I100
.annotate 'line', 644
    set $P107, param_1620
    unless_null $P107, vivify_610
    new $P107, "Undef"
  vivify_610:
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_attribute" :anon :subid("65_1335114075.00898") :outer("149_1335114075.00898")
    .param pmc param_1630
    .param pmc param_1631
    .param pmc param_1632
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 658
    .lex "self", param_1630
    .lex "$obj", param_1631
    .lex "$meta_attr", param_1632
.annotate 'line', 659
    new $P107, "Undef"
    set $P1633, $P107
    .lex "$name", $P1633
    set $P108, param_1632
    unless_null $P108, vivify_611
    new $P108, "Undef"
  vivify_611:
    $P109 = $P108."name"()
    set $P1633, $P109
.annotate 'line', 660
    set $P108, $P1633
    unless_null $P108, vivify_612
    new $P108, "Undef"
  vivify_612:
    set $P109, param_1630
    nqp_decontainerize $P110, $P109
    nqp_get_sc_object $P111, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P1635, $P110, $P111, "%!attributes", 1
    unless_null $P1635, vivify_613
    $P1635 = root_new ['parrot';'Hash']
  vivify_613:
    set $P112, $P1635[$P108]
    unless_null $P112, vivify_614
    new $P112, "Undef"
  vivify_614:
    unless $P112, if_1634_end
.annotate 'line', 661
    new $P113, "String"
    assign $P113, "This class already has an attribute named "
    set $P114, $P1633
    unless_null $P114, vivify_615
    new $P114, "Undef"
  vivify_615:
    concat $P115, $P113, $P114
    die $P115
  if_1634_end:
.annotate 'line', 663
    set $P108, param_1632
    unless_null $P108, vivify_616
    new $P108, "Undef"
  vivify_616:
    set $P109, $P1633
    unless_null $P109, vivify_617
    new $P109, "Undef"
  vivify_617:
    set $P110, param_1630
    nqp_decontainerize $P111, $P110
    nqp_get_sc_object $P112, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P1636, $P111, $P112, "%!attributes", 1
    unless_null $P1636, vivify_618
    $P1636 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P111, $P112, "%!attributes", 1, $P1636
  vivify_618:
    set $P1636[$P109], $P108
.annotate 'line', 658
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_parent" :anon :subid("66_1335114075.00898") :outer("149_1335114075.00898")
    .param pmc param_1638
    .param pmc param_1639
    .param pmc param_1640
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 666
    .const 'Sub' $P1645 = "160_1335114075.00898" 
    capture_lex $P1645
    .lex "self", param_1638
    .lex "$obj", param_1639
    .lex "$parent", param_1640
.annotate 'line', 667
    set $P107, param_1638
    nqp_decontainerize $P108, $P107
    nqp_get_sc_object $P109, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P110, $P108, $P109, "$!composed", 9
    unless_null $P110, vivify_619
    new $P110, "Undef"
  vivify_619:
    unless $P110, if_1641_end
.annotate 'line', 668
    die "NQPClassHOW does not support adding parents after being composed."
  if_1641_end:
.annotate 'line', 670
    set $P107, param_1639
    unless_null $P107, vivify_620
    new $P107, "Undef"
  vivify_620:
    set $P108, param_1640
    unless_null $P108, vivify_621
    new $P108, "Undef"
  vivify_621:
    issame $I100, $P107, $P108
    unless $I100, if_1642_end
.annotate 'line', 671
    new $P109, 'String'
    set $P109, "Class '"
    set $P110, param_1638
    nqp_decontainerize $P111, $P110
    nqp_get_sc_object $P112, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P113, $P111, $P112, "$!name", 0
    unless_null $P113, vivify_622
    new $P113, "Undef"
  vivify_622:
    concat $P114, $P109, $P113
    concat $P115, $P114, "' cannot inherit from itself."
    die $P115
  if_1642_end:
.annotate 'line', 673
    set $P108, param_1638
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P1643, $P109, $P110, "@!parents", 4
    unless_null $P1643, vivify_623
    $P1643 = root_new ['parrot';'ResizablePMCArray']
  vivify_623:
    defined $I100, $P1643
    unless $I100, for_undef_624
    iter $P107, $P1643
    new $P113, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P113, loop1648_handler
    push_eh $P113
  loop1648_test:
    unless $P107, loop1648_done
    shift $P111, $P107
  loop1648_redo:
    .const 'Sub' $P1645 = "160_1335114075.00898" 
    capture_lex $P1645
    $P1645($P111)
  loop1648_next:
    goto loop1648_test
  loop1648_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P114, exception, 'type'
    eq $P114, .CONTROL_LOOP_NEXT, loop1648_next
    eq $P114, .CONTROL_LOOP_REDO, loop1648_redo
  loop1648_done:
    pop_eh 
  for_undef_624:
.annotate 'line', 678
    set $P107, param_1640
    unless_null $P107, vivify_628
    new $P107, "Undef"
  vivify_628:
    set $P108, param_1638
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P1649, $P109, $P110, "@!parents", 4
    unless_null $P1649, vivify_629
    $P1649 = root_new ['parrot';'ResizablePMCArray']
  vivify_629:
    set $N100, $P1649
    set $I100, $N100
    set $P111, param_1638
    nqp_decontainerize $P112, $P111
    nqp_get_sc_object $P113, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P1650, $P112, $P113, "@!parents", 4
    unless_null $P1650, vivify_630
    $P1650 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P112, $P113, "@!parents", 4, $P1650
  vivify_630:
    set $P1650[$I100], $P107
.annotate 'line', 666
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1644"  :anon :subid("160_1335114075.00898") :outer("66_1335114075.00898")
    .param pmc param_1646
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 673
    .lex "$_", param_1646
.annotate 'line', 674
    find_lex $P113, "$_"
    unless_null $P113, vivify_625
    new $P113, "Undef"
  vivify_625:
    find_lex $P114, "$parent"
    unless_null $P114, vivify_626
    new $P114, "Undef"
  vivify_626:
    issame $I101, $P113, $P114
    if $I101, if_1647
    new $P112, 'Integer'
    set $P112, $I101
    goto if_1647_end
  if_1647:
.annotate 'line', 675
    new $P115, "String"
    assign $P115, "Already have "
    find_lex $P116, "$parent"
    unless_null $P116, vivify_627
    new $P116, "Undef"
  vivify_627:
    concat $P117, $P115, $P116
    concat $P118, $P117, " as a parent class."
    die $P118
  if_1647_end:
.annotate 'line', 673
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "set_default_parent" :anon :subid("67_1335114075.00898") :outer("149_1335114075.00898")
    .param pmc param_1652
    .param pmc param_1653
    .param pmc param_1654
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 681
    .lex "self", param_1652
    .lex "$obj", param_1653
    .lex "$parent", param_1654
.annotate 'line', 682
    set $P107, param_1654
    unless_null $P107, vivify_631
    new $P107, "Undef"
  vivify_631:
    set $P108, param_1652
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_bind_attr_obj $P109, $P110, "$!default_parent", 6, $P107
.annotate 'line', 681
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_role" :anon :subid("68_1335114075.00898") :outer("149_1335114075.00898")
    .param pmc param_1656
    .param pmc param_1657
    .param pmc param_1658
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 685
    .const 'Sub' $P1661 = "161_1335114075.00898" 
    capture_lex $P1661
    .lex "self", param_1656
    .lex "$obj", param_1657
    .lex "$role", param_1658
.annotate 'line', 686
    set $P108, param_1656
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P1659, $P109, $P110, "@!roles", 5
    unless_null $P1659, vivify_632
    $P1659 = root_new ['parrot';'ResizablePMCArray']
  vivify_632:
    defined $I100, $P1659
    unless $I100, for_undef_633
    iter $P107, $P1659
    new $P113, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P113, loop1664_handler
    push_eh $P113
  loop1664_test:
    unless $P107, loop1664_done
    shift $P111, $P107
  loop1664_redo:
    .const 'Sub' $P1661 = "161_1335114075.00898" 
    capture_lex $P1661
    $P1661($P111)
  loop1664_next:
    goto loop1664_test
  loop1664_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P114, exception, 'type'
    eq $P114, .CONTROL_LOOP_NEXT, loop1664_next
    eq $P114, .CONTROL_LOOP_REDO, loop1664_redo
  loop1664_done:
    pop_eh 
  for_undef_633:
.annotate 'line', 691
    set $P107, param_1658
    unless_null $P107, vivify_637
    new $P107, "Undef"
  vivify_637:
    set $P108, param_1656
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P1665, $P109, $P110, "@!roles", 5
    unless_null $P1665, vivify_638
    $P1665 = root_new ['parrot';'ResizablePMCArray']
  vivify_638:
    set $N100, $P1665
    set $I100, $N100
    set $P111, param_1656
    nqp_decontainerize $P112, $P111
    nqp_get_sc_object $P113, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P1666, $P112, $P113, "@!roles", 5
    unless_null $P1666, vivify_639
    $P1666 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P112, $P113, "@!roles", 5, $P1666
  vivify_639:
    set $P1666[$I100], $P107
.annotate 'line', 685
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1660"  :anon :subid("161_1335114075.00898") :outer("68_1335114075.00898")
    .param pmc param_1662
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 686
    .lex "$_", param_1662
.annotate 'line', 687
    find_lex $P113, "$_"
    unless_null $P113, vivify_634
    new $P113, "Undef"
  vivify_634:
    find_lex $P114, "$role"
    unless_null $P114, vivify_635
    new $P114, "Undef"
  vivify_635:
    issame $I101, $P113, $P114
    if $I101, if_1663
    new $P112, 'Integer'
    set $P112, $I101
    goto if_1663_end
  if_1663:
.annotate 'line', 688
    new $P115, "String"
    assign $P115, "The role "
    find_lex $P116, "$role"
    unless_null $P116, vivify_636
    new $P116, "Undef"
  vivify_636:
    concat $P117, $P115, $P116
    concat $P118, $P117, " has already been added."
    die $P118
  if_1663_end:
.annotate 'line', 686
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_parrot_vtable_mapping" :anon :subid("69_1335114075.00898") :outer("149_1335114075.00898")
    .param pmc param_1668
    .param pmc param_1669
    .param pmc param_1670
    .param pmc param_1671
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 694
    .lex "self", param_1668
    .lex "$obj", param_1669
    .lex "$name", param_1670
    .lex "$meth", param_1671
.annotate 'line', 695
    set $P107, param_1670
    unless_null $P107, vivify_640
    new $P107, "Undef"
  vivify_640:
    set $P108, param_1668
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P1673, $P109, $P110, "%!parrot_vtable_mapping", 13
    unless_null $P1673, vivify_641
    $P1673 = root_new ['parrot';'Hash']
  vivify_641:
    set $P111, $P1673[$P107]
    unless_null $P111, vivify_642
    new $P111, "Undef"
  vivify_642:
    defined $I100, $P111
    unless $I100, if_1672_end
.annotate 'line', 696
    new $P112, "String"
    assign $P112, "Class '"
    set $P113, param_1668
    nqp_decontainerize $P114, $P113
    nqp_get_sc_object $P115, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P116, $P114, $P115, "$!name", 0
    unless_null $P116, vivify_643
    new $P116, "Undef"
  vivify_643:
    concat $P117, $P112, $P116
    concat $P118, $P117, "' already has a Parrot v-table override for '"
    set $P119, param_1670
    unless_null $P119, vivify_644
    new $P119, "Undef"
  vivify_644:
    concat $P120, $P118, $P119
.annotate 'line', 697
    concat $P121, $P120, "'"
.annotate 'line', 698
    die $P121
  if_1672_end:
.annotate 'line', 700
    set $P107, param_1671
    unless_null $P107, vivify_645
    new $P107, "Undef"
  vivify_645:
    set $P108, param_1670
    unless_null $P108, vivify_646
    new $P108, "Undef"
  vivify_646:
    set $P109, param_1668
    nqp_decontainerize $P110, $P109
    nqp_get_sc_object $P111, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P1674, $P110, $P111, "%!parrot_vtable_mapping", 13
    unless_null $P1674, vivify_647
    $P1674 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P110, $P111, "%!parrot_vtable_mapping", 13, $P1674
  vivify_647:
    set $P1674[$P108], $P107
.annotate 'line', 694
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_parrot_vtable_handler_mapping" :anon :subid("70_1335114075.00898") :outer("149_1335114075.00898")
    .param pmc param_1676
    .param pmc param_1677
    .param pmc param_1678
    .param pmc param_1679
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 703
    .lex "self", param_1676
    .lex "$obj", param_1677
    .lex "$name", param_1678
    .lex "$att_name", param_1679
.annotate 'line', 704
    set $P107, param_1678
    unless_null $P107, vivify_648
    new $P107, "Undef"
  vivify_648:
    set $P108, param_1676
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P1681, $P109, $P110, "%!parrot_vtable_handler_mapping", 14
    unless_null $P1681, vivify_649
    $P1681 = root_new ['parrot';'Hash']
  vivify_649:
    set $P111, $P1681[$P107]
    unless_null $P111, vivify_650
    new $P111, "Undef"
  vivify_650:
    defined $I100, $P111
    unless $I100, if_1680_end
.annotate 'line', 705
    new $P112, "String"
    assign $P112, "Class '"
    set $P113, param_1676
    nqp_decontainerize $P114, $P113
    nqp_get_sc_object $P115, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P116, $P114, $P115, "$!name", 0
    unless_null $P116, vivify_651
    new $P116, "Undef"
  vivify_651:
    concat $P117, $P112, $P116
    concat $P118, $P117, "' already has a Parrot v-table handler for '"
    set $P119, param_1678
    unless_null $P119, vivify_652
    new $P119, "Undef"
  vivify_652:
    concat $P120, $P118, $P119
.annotate 'line', 706
    concat $P121, $P120, "'"
.annotate 'line', 707
    die $P121
  if_1680_end:
.annotate 'line', 709
    set $P107, param_1677
    unless_null $P107, vivify_653
    new $P107, "Undef"
  vivify_653:
    set $P108, param_1679
    unless_null $P108, vivify_654
    new $P108, "Undef"
  vivify_654:
    new $P109, "ResizablePMCArray"
    push $P109, $P107
    push $P109, $P108
    set $P110, param_1678
    unless_null $P110, vivify_655
    new $P110, "Undef"
  vivify_655:
    set $P111, param_1676
    nqp_decontainerize $P112, $P111
    nqp_get_sc_object $P113, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P1682, $P112, $P113, "%!parrot_vtable_handler_mapping", 14
    unless_null $P1682, vivify_656
    $P1682 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P112, $P113, "%!parrot_vtable_handler_mapping", 14, $P1682
  vivify_656:
    set $P1682[$P110], $P109
.annotate 'line', 703
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "compose" :anon :subid("71_1335114075.00898") :outer("149_1335114075.00898")
    .param pmc param_1684
    .param pmc param_1685
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 712
    .const 'Sub' $P1710 = "164_1335114075.00898" 
    capture_lex $P1710
    .const 'Sub' $P1689 = "162_1335114075.00898" 
    capture_lex $P1689
    .lex "self", param_1684
    .lex "$obj", param_1685
.annotate 'line', 716
    set $P107, param_1684
    nqp_decontainerize $P108, $P107
    nqp_get_sc_object $P109, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P1687, $P108, $P109, "@!roles", 5
    unless_null $P1687, vivify_657
    $P1687 = root_new ['parrot';'ResizablePMCArray']
  vivify_657:
    unless $P1687, if_1686_end
    .const 'Sub' $P1689 = "162_1335114075.00898" 
    capture_lex $P1689
    $P1689()
  if_1686_end:
.annotate 'line', 729
    set $P108, param_1684
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P1707, $P109, $P110, "@!parents", 4
    unless_null $P1707, vivify_674
    $P1707 = root_new ['parrot';'ResizablePMCArray']
  vivify_674:
    set $N100, $P1707
    set $N101, 0
    iseq $I100, $N100, $N101
    if $I100, if_1706
    new $P107, 'Integer'
    set $P107, $I100
    goto if_1706_end
  if_1706:
    set $P111, param_1684
    nqp_decontainerize $P112, $P111
    nqp_get_sc_object $P113, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P114, $P112, $P113, "$!name", 0
    unless_null $P114, vivify_675
    new $P114, "Undef"
  vivify_675:
    set $S100, $P114
    isne $I101, $S100, "NQPMu"
    new $P107, 'Integer'
    set $P107, $I101
  if_1706_end:
    unless $P107, if_1705_end
.annotate 'line', 730
    set $P115, param_1684
    nqp_decontainerize $P116, $P115
    set $P117, param_1685
    unless_null $P117, vivify_676
    new $P117, "Undef"
  vivify_676:
    set $P118, param_1684
    nqp_decontainerize $P119, $P118
    nqp_get_sc_object $P120, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P121, $P119, $P120, "$!default_parent", 6
    unless_null $P121, vivify_677
    new $P121, "Undef"
  vivify_677:
    $P116."add_parent"($P117, $P121)
  if_1705_end:
.annotate 'line', 735
    set $P107, param_1684
    nqp_decontainerize $P108, $P107
    nqp_get_sc_object $P109, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P110, $P108, $P109, "$!composed", 9
    unless_null $P110, vivify_678
    new $P110, "Undef"
  vivify_678:
    if $P110, unless_1708_end
.annotate 'line', 736
    set $P111, param_1685
    unless_null $P111, vivify_679
    new $P111, "Undef"
  vivify_679:
    $P112 = "compute_c3_mro"($P111)
    set $P113, param_1684
    nqp_decontainerize $P114, $P113
    nqp_get_sc_object $P115, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_bind_attr_obj $P114, $P115, "@!mro", 10, $P112
.annotate 'line', 737
    new $P111, "Float"
    assign $P111, 1
    set $P112, param_1684
    nqp_decontainerize $P113, $P112
    nqp_get_sc_object $P114, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_bind_attr_obj $P113, $P114, "$!composed", 9, $P111
  unless_1708_end:
.annotate 'line', 741
    set $P107, param_1684
    nqp_decontainerize $P108, $P107
    set $P109, param_1685
    unless_null $P109, vivify_680
    new $P109, "Undef"
  vivify_680:
    $P108."incorporate_multi_candidates"($P109)
.annotate 'line', 744
    set $P108, param_1684
    nqp_decontainerize $P109, $P108
    set $P110, param_1685
    unless_null $P110, vivify_681
    new $P110, "Undef"
  vivify_681:
    $P111 = $P109."attributes"($P110, "0" :named("local"))
    defined $I100, $P111
    unless $I100, for_undef_682
    iter $P107, $P111
    new $P113, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P113, loop1712_handler
    push_eh $P113
  loop1712_test:
    unless $P107, loop1712_done
    shift $P112, $P107
  loop1712_redo:
    .const 'Sub' $P1710 = "164_1335114075.00898" 
    capture_lex $P1710
    $P1710($P112)
  loop1712_next:
    goto loop1712_test
  loop1712_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P114, exception, 'type'
    eq $P114, .CONTROL_LOOP_NEXT, loop1712_next
    eq $P114, .CONTROL_LOOP_REDO, loop1712_redo
  loop1712_done:
    pop_eh 
  for_undef_682:
.annotate 'line', 747
    set $P107, param_1684
    nqp_decontainerize $P108, $P107
    set $P109, param_1685
    unless_null $P109, vivify_685
    new $P109, "Undef"
  vivify_685:
    $P108."publish_type_cache"($P109)
.annotate 'line', 748
    set $P107, param_1684
    nqp_decontainerize $P108, $P107
    set $P109, param_1685
    unless_null $P109, vivify_686
    new $P109, "Undef"
  vivify_686:
    $P108."publish_method_cache"($P109)
.annotate 'line', 749
    set $P107, param_1684
    nqp_decontainerize $P108, $P107
    set $P109, param_1685
    unless_null $P109, vivify_687
    new $P109, "Undef"
  vivify_687:
    $P108."publish_boolification_spec"($P109)
.annotate 'line', 752
    set $P107, param_1684
    nqp_decontainerize $P108, $P107
    set $P109, param_1685
    unless_null $P109, vivify_688
    new $P109, "Undef"
  vivify_688:
    $P108."publish_parrot_vtable_mapping"($P109)
.annotate 'line', 753
    set $P107, param_1684
    nqp_decontainerize $P108, $P107
    set $P109, param_1685
    unless_null $P109, vivify_689
    new $P109, "Undef"
  vivify_689:
    $P108."publish_parrot_vtablee_handler_mapping"($P109)
.annotate 'line', 712
    set $P107, param_1685
    unless_null $P107, vivify_690
    new $P107, "Undef"
  vivify_690:
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1688"  :anon :subid("162_1335114075.00898") :outer("71_1335114075.00898")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 716
    .const 'Sub' $P1695 = "163_1335114075.00898" 
    capture_lex $P1695
.annotate 'line', 717
    $P1691 = root_new ['parrot';'ResizablePMCArray']
    set $P1690, $P1691
    .lex "@specialized_roles", $P1690
.annotate 'line', 716
    set $P1692, $P1690
    unless_null $P1692, vivify_658
    $P1692 = root_new ['parrot';'ResizablePMCArray']
  vivify_658:
.annotate 'line', 718
    find_lex $P111, "self"
    nqp_decontainerize $P112, $P111
    nqp_get_sc_object $P113, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P1693, $P112, $P113, "@!roles", 5
    unless_null $P1693, vivify_659
    $P1693 = root_new ['parrot';'ResizablePMCArray']
  vivify_659:
    defined $I100, $P1693
    unless $I100, for_undef_660
    iter $P110, $P1693
    new $P117, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P117, loop1703_handler
    push_eh $P117
  loop1703_test:
    unless $P110, loop1703_done
    shift $P114, $P110
  loop1703_redo:
    .const 'Sub' $P1695 = "163_1335114075.00898" 
    capture_lex $P1695
    $P1695($P114)
  loop1703_next:
    goto loop1703_test
  loop1703_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P118, exception, 'type'
    eq $P118, .CONTROL_LOOP_NEXT, loop1703_next
    eq $P118, .CONTROL_LOOP_REDO, loop1703_redo
  loop1703_done:
    pop_eh 
  for_undef_660:
.annotate 'line', 724
    find_lex $P110, "RoleToClassApplier"
    find_lex $P111, "$obj"
    unless_null $P111, vivify_672
    new $P111, "Undef"
  vivify_672:
    set $P1704, $P1690
    unless_null $P1704, vivify_673
    $P1704 = root_new ['parrot';'ResizablePMCArray']
  vivify_673:
    $P112 = $P110."apply"($P111, $P1704)
.annotate 'line', 716
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1694"  :anon :subid("163_1335114075.00898") :outer("162_1335114075.00898")
    .param pmc param_1697
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 719
    new $P115, "Undef"
    set $P1696, $P115
    .lex "$ins", $P1696
    .lex "$_", param_1697
    find_lex $P116, "$_"
    unless_null $P116, vivify_661
    new $P116, "Undef"
  vivify_661:
    get_how $P117, $P116
    find_lex $P118, "$_"
    unless_null $P118, vivify_662
    new $P118, "Undef"
  vivify_662:
    find_lex $P119, "$obj"
    unless_null $P119, vivify_663
    new $P119, "Undef"
  vivify_663:
    $P120 = $P117."specialize"($P118, $P119)
    set $P1696, $P120
.annotate 'line', 720
    find_lex $P1698, "@specialized_roles"
    unless_null $P1698, vivify_664
    $P1698 = root_new ['parrot';'ResizablePMCArray']
  vivify_664:
    set $P116, $P1696
    unless_null $P116, vivify_665
    new $P116, "Undef"
  vivify_665:
    $P1698."push"($P116)
.annotate 'line', 721
    find_lex $P116, "$_"
    unless_null $P116, vivify_666
    new $P116, "Undef"
  vivify_666:
    find_lex $P117, "self"
    nqp_decontainerize $P118, $P117
    nqp_get_sc_object $P119, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P1699, $P118, $P119, "@!done", 11
    unless_null $P1699, vivify_667
    $P1699 = root_new ['parrot';'ResizablePMCArray']
  vivify_667:
    set $N100, $P1699
    set $I101, $N100
    find_lex $P120, "self"
    nqp_decontainerize $P121, $P120
    nqp_get_sc_object $P122, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P1700, $P121, $P122, "@!done", 11
    unless_null $P1700, vivify_668
    $P1700 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P121, $P122, "@!done", 11, $P1700
  vivify_668:
    set $P1700[$I101], $P116
.annotate 'line', 722
    set $P116, $P1696
    unless_null $P116, vivify_669
    new $P116, "Undef"
  vivify_669:
    find_lex $P117, "self"
    nqp_decontainerize $P118, $P117
    nqp_get_sc_object $P119, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P1701, $P118, $P119, "@!done", 11
    unless_null $P1701, vivify_670
    $P1701 = root_new ['parrot';'ResizablePMCArray']
  vivify_670:
    set $N100, $P1701
    set $I101, $N100
    find_lex $P120, "self"
    nqp_decontainerize $P121, $P120
    nqp_get_sc_object $P122, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P1702, $P121, $P122, "@!done", 11
    unless_null $P1702, vivify_671
    $P1702 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P121, $P122, "@!done", 11, $P1702
  vivify_671:
    set $P1702[$I101], $P116
.annotate 'line', 718
    .return ($P116)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1709"  :anon :subid("164_1335114075.00898") :outer("71_1335114075.00898")
    .param pmc param_1711
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 744
    .lex "$_", param_1711
    find_lex $P113, "$_"
    unless_null $P113, vivify_683
    new $P113, "Undef"
  vivify_683:
    find_lex $P114, "$obj"
    unless_null $P114, vivify_684
    new $P114, "Undef"
  vivify_684:
    $P115 = $P113."compose"($P114)
    .return ($P115)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "incorporate_multi_candidates" :anon :subid("72_1335114075.00898") :outer("149_1335114075.00898")
    .param pmc param_1714
    .param pmc param_1715
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 758
    .const 'Sub' $P1720 = "165_1335114075.00898" 
    capture_lex $P1720
    .lex "self", param_1714
    .lex "$obj", param_1715
.annotate 'line', 759
    new $P107, "Undef"
    set $P1716, $P107
    .lex "$num_todo", $P1716
.annotate 'line', 760
    new $P108, "Undef"
    set $P1717, $P108
    .lex "$i", $P1717
.annotate 'line', 759
    set $P109, param_1714
    nqp_decontainerize $P110, $P109
    nqp_get_sc_object $P111, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P1718, $P110, $P111, "@!multi_methods_to_incorporate", 3
    unless_null $P1718, vivify_691
    $P1718 = root_new ['parrot';'ResizablePMCArray']
  vivify_691:
    set $N100, $P1718
    new $P112, 'Float'
    set $P112, $N100
    set $P1716, $P112
.annotate 'line', 760
    new $P109, "Float"
    assign $P109, 0
    set $P1717, $P109
.annotate 'line', 761
    new $P114, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P114, loop1768_handler
    push_eh $P114
  loop1768_test:
    set $P109, $P1717
    unless_null $P109, vivify_692
    new $P109, "Undef"
  vivify_692:
    set $N100, $P109
    set $P110, $P1716
    unless_null $P110, vivify_693
    new $P110, "Undef"
  vivify_693:
    set $N101, $P110
    isne $I100, $N100, $N101
    unless $I100, loop1768_done
  loop1768_redo:
    .const 'Sub' $P1720 = "165_1335114075.00898" 
    capture_lex $P1720
    $P1720()
  loop1768_next:
    goto loop1768_test
  loop1768_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P116, exception, 'type'
    eq $P116, .CONTROL_LOOP_NEXT, loop1768_next
    eq $P116, .CONTROL_LOOP_REDO, loop1768_redo
  loop1768_done:
    pop_eh 
.annotate 'line', 758
    .return ($I100)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1719"  :anon :subid("165_1335114075.00898") :outer("72_1335114075.00898")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 761
    .const 'Sub' $P1734 = "166_1335114075.00898" 
    capture_lex $P1734
.annotate 'line', 763
    new $P111, "Undef"
    set $P1721, $P111
    .lex "$name", $P1721
.annotate 'line', 764
    new $P112, "Undef"
    set $P1722, $P112
    .lex "$code", $P1722
.annotate 'line', 768
    new $P113, "Undef"
    set $P1723, $P113
    .lex "$dispatcher", $P1723
.annotate 'line', 763
    find_lex $P114, "$i"
    unless_null $P114, vivify_694
    new $P114, "Undef"
  vivify_694:
    set $I101, $P114
    find_lex $P115, "self"
    nqp_decontainerize $P116, $P115
    nqp_get_sc_object $P117, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P1724, $P116, $P117, "@!multi_methods_to_incorporate", 3
    unless_null $P1724, vivify_695
    $P1724 = root_new ['parrot';'ResizablePMCArray']
  vivify_695:
    set $P1725, $P1724[$I101]
    unless_null $P1725, vivify_696
    $P1725 = root_new ['parrot';'Hash']
  vivify_696:
    set $P118, $P1725["name"]
    unless_null $P118, vivify_697
    new $P118, "Undef"
  vivify_697:
    set $P1721, $P118
.annotate 'line', 764
    find_lex $P114, "$i"
    unless_null $P114, vivify_698
    new $P114, "Undef"
  vivify_698:
    set $I101, $P114
    find_lex $P115, "self"
    nqp_decontainerize $P116, $P115
    nqp_get_sc_object $P117, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P1726, $P116, $P117, "@!multi_methods_to_incorporate", 3
    unless_null $P1726, vivify_699
    $P1726 = root_new ['parrot';'ResizablePMCArray']
  vivify_699:
    set $P1727, $P1726[$I101]
    unless_null $P1727, vivify_700
    $P1727 = root_new ['parrot';'Hash']
  vivify_700:
    set $P118, $P1727["code"]
    unless_null $P118, vivify_701
    new $P118, "Undef"
  vivify_701:
    set $P1722, $P118
.annotate 'line', 768
    set $P114, $P1721
    unless_null $P114, vivify_702
    new $P114, "Undef"
  vivify_702:
    find_lex $P115, "self"
    nqp_decontainerize $P116, $P115
    nqp_get_sc_object $P117, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P1728, $P116, $P117, "%!methods", 2
    unless_null $P1728, vivify_703
    $P1728 = root_new ['parrot';'Hash']
  vivify_703:
    set $P118, $P1728[$P114]
    unless_null $P118, vivify_704
    new $P118, "Undef"
  vivify_704:
    set $P1723, $P118
.annotate 'line', 769
    set $P114, $P1723
    unless_null $P114, vivify_705
    new $P114, "Undef"
  vivify_705:
    defined $I101, $P114
    if $I101, if_1729
.annotate 'line', 782
    .const 'Sub' $P1734 = "166_1335114075.00898" 
    capture_lex $P1734
    $P1734()
    goto if_1729_end
  if_1729:
.annotate 'line', 772
    set $P115, $P1723
    unless_null $P115, vivify_744
    new $P115, "Undef"
  vivify_744:
    is_dispatcher $I102, $P115
    if $I102, if_1730
.annotate 'line', 775
    set $P117, $P1723
    unless_null $P117, vivify_745
    new $P117, "Undef"
  vivify_745:
    can $I103, $P117, "is_dispatcher"
    if $I103, if_1732
    new $P116, 'Integer'
    set $P116, $I103
    goto if_1732_end
  if_1732:
    set $P118, $P1723
    unless_null $P118, vivify_746
    new $P118, "Undef"
  vivify_746:
    $P119 = $P118."is_dispatcher"()
    set $P116, $P119
  if_1732_end:
    if $P116, if_1731
.annotate 'line', 779
    new $P120, 'String'
    set $P120, "Cannot have a multi candidate for "
    set $P121, $P1721
    unless_null $P121, vivify_747
    new $P121, "Undef"
  vivify_747:
    concat $P122, $P120, $P121
    concat $P123, $P122, " when an only method is also in the class"
    die $P123
.annotate 'line', 778
    goto if_1731_end
  if_1731:
.annotate 'line', 776
    set $P120, $P1723
    unless_null $P120, vivify_748
    new $P120, "Undef"
  vivify_748:
    set $P121, $P1722
    unless_null $P121, vivify_749
    new $P121, "Undef"
  vivify_749:
    $P120."add_dispatchee"($P121)
  if_1731_end:
.annotate 'line', 775
    goto if_1730_end
  if_1730:
.annotate 'line', 773
    set $P116, $P1723
    unless_null $P116, vivify_750
    new $P116, "Undef"
  vivify_750:
    set $P117, $P1722
    unless_null $P117, vivify_751
    new $P117, "Undef"
  vivify_751:
    push_dispatchee $P116, $P117
  if_1730_end:
  if_1729_end:
.annotate 'line', 821
    find_lex $P114, "$i"
    unless_null $P114, vivify_752
    new $P114, "Undef"
  vivify_752:
    add $P115, $P114, 1
    store_lex "$i", $P115
.annotate 'line', 761
    .return ($P115)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1733"  :anon :subid("166_1335114075.00898") :outer("165_1335114075.00898")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 782
    .const 'Sub' $P1740 = "167_1335114075.00898" 
    capture_lex $P1740
.annotate 'line', 784
    new $P115, "Undef"
    set $P1735, $P115
    .lex "$j", $P1735
.annotate 'line', 785
    new $P116, "Undef"
    set $P1736, $P116
    .lex "$found", $P1736
.annotate 'line', 784
    new $P117, "Float"
    assign $P117, 1
    set $P1735, $P117
.annotate 'line', 785
    new $P117, "Float"
    assign $P117, 0
    set $P1736, $P117
.annotate 'line', 786
    new $P125, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P125, loop1766_handler
    push_eh $P125
  loop1766_test:
    set $P118, $P1735
    unless_null $P118, vivify_706
    new $P118, "Undef"
  vivify_706:
    set $N102, $P118
    find_lex $P119, "self"
    nqp_decontainerize $P120, $P119
    nqp_get_sc_object $P121, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P1738, $P120, $P121, "@!mro", 10
    unless_null $P1738, vivify_707
    $P1738 = root_new ['parrot';'ResizablePMCArray']
  vivify_707:
    set $N103, $P1738
    isne $I102, $N102, $N103
    if $I102, if_1737
    new $P117, 'Integer'
    set $P117, $I102
    goto if_1737_end
  if_1737:
    set $P122, $P1736
    unless_null $P122, vivify_708
    new $P122, "Undef"
  vivify_708:
    isfalse $I103, $P122
    new $P117, 'Integer'
    set $P117, $I103
  if_1737_end:
    unless $P117, loop1766_done
  loop1766_redo:
    .const 'Sub' $P1740 = "167_1335114075.00898" 
    capture_lex $P1740
    $P1740()
  loop1766_next:
    goto loop1766_test
  loop1766_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P127, exception, 'type'
    eq $P127, .CONTROL_LOOP_NEXT, loop1766_next
    eq $P127, .CONTROL_LOOP_REDO, loop1766_redo
  loop1766_done:
    pop_eh 
.annotate 'line', 817
    set $P118, $P1736
    unless_null $P118, vivify_742
    new $P118, "Undef"
  vivify_742:
    unless $P118, unless_1767
    set $P117, $P118
    goto unless_1767_end
  unless_1767:
.annotate 'line', 818
    new $P119, 'String'
    set $P119, "Could not find a proto for multi "
    find_lex $P120, "$name"
    unless_null $P120, vivify_743
    new $P120, "Undef"
  vivify_743:
    concat $P121, $P119, $P120
    concat $P122, $P121, ", and proto generation is NYI"
    die $P122
  unless_1767_end:
.annotate 'line', 782
    .return ($P117)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1739"  :anon :subid("167_1335114075.00898") :outer("166_1335114075.00898")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 786
    .const 'Sub' $P1763 = "169_1335114075.00898" 
    capture_lex $P1763
    .const 'Sub' $P1750 = "168_1335114075.00898" 
    capture_lex $P1750
.annotate 'line', 787
    new $P123, "Undef"
    set $P1741, $P123
    .lex "$parent", $P1741
.annotate 'line', 788
    $P1743 = root_new ['parrot';'Hash']
    set $P1742, $P1743
    .lex "%meths", $P1742
.annotate 'line', 789
    new $P124, "Undef"
    set $P1744, $P124
    .lex "$dispatcher", $P1744
.annotate 'line', 787
    find_lex $P125, "$j"
    unless_null $P125, vivify_709
    new $P125, "Undef"
  vivify_709:
    set $I104, $P125
    find_lex $P126, "self"
    nqp_decontainerize $P127, $P126
    nqp_get_sc_object $P128, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P1745, $P127, $P128, "@!mro", 10
    unless_null $P1745, vivify_710
    $P1745 = root_new ['parrot';'ResizablePMCArray']
  vivify_710:
    set $P129, $P1745[$I104]
    unless_null $P129, vivify_711
    new $P129, "Undef"
  vivify_711:
    set $P1741, $P129
.annotate 'line', 788
    set $P125, $P1741
    unless_null $P125, vivify_712
    new $P125, "Undef"
  vivify_712:
    get_how $P126, $P125
    set $P127, $P1741
    unless_null $P127, vivify_713
    new $P127, "Undef"
  vivify_713:
    $P128 = $P126."method_table"($P127)
    set $P1742, $P128
.annotate 'line', 789
    find_lex $P125, "$name"
    unless_null $P125, vivify_714
    new $P125, "Undef"
  vivify_714:
    set $P1746, $P1742
    unless_null $P1746, vivify_715
    $P1746 = root_new ['parrot';'Hash']
  vivify_715:
    set $P126, $P1746[$P125]
    unless_null $P126, vivify_716
    new $P126, "Undef"
  vivify_716:
    set $P1744, $P126
.annotate 'line', 790
    set $P125, $P1744
    unless_null $P125, vivify_717
    new $P125, "Undef"
  vivify_717:
    defined $I104, $P125
    unless $I104, if_1747_end
.annotate 'line', 793
    set $P126, $P1744
    unless_null $P126, vivify_718
    new $P126, "Undef"
  vivify_718:
    is_dispatcher $I105, $P126
    if $I105, if_1748
.annotate 'line', 805
    set $P131, $P1744
    unless_null $P131, vivify_719
    new $P131, "Undef"
  vivify_719:
    can $I106, $P131, "is_dispatcher"
    if $I106, if_1761
    new $P130, 'Integer'
    set $P130, $I106
    goto if_1761_end
  if_1761:
    set $P132, $P1744
    unless_null $P132, vivify_720
    new $P132, "Undef"
  vivify_720:
    $P133 = $P132."is_dispatcher"()
    set $P130, $P133
  if_1761_end:
    if $P130, if_1760
.annotate 'line', 812
    new $P136, 'String'
    set $P136, "Could not find a proto for multi "
    find_lex $P137, "$name"
    unless_null $P137, vivify_721
    new $P137, "Undef"
  vivify_721:
    concat $P138, $P136, $P137
    concat $P139, $P138, " (it may exist, but an only is hiding it if so)"
    die $P139
.annotate 'line', 811
    goto if_1760_end
  if_1760:
.annotate 'line', 805
    .const 'Sub' $P1763 = "169_1335114075.00898" 
    capture_lex $P1763
    $P1763()
  if_1760_end:
    goto if_1748_end
  if_1748:
.annotate 'line', 793
    .const 'Sub' $P1750 = "168_1335114075.00898" 
    capture_lex $P1750
    $P1750()
  if_1748_end:
  if_1747_end:
.annotate 'line', 815
    find_lex $P125, "$j"
    unless_null $P125, vivify_741
    new $P125, "Undef"
  vivify_741:
    add $P126, $P125, 1
    store_lex "$j", $P126
.annotate 'line', 786
    .return ($P126)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1762"  :anon :subid("169_1335114075.00898") :outer("167_1335114075.00898")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 806
    new $P134, "Undef"
    set $P1764, $P134
    .lex "$new_disp", $P1764
    find_lex $P135, "$dispatcher"
    unless_null $P135, vivify_722
    new $P135, "Undef"
  vivify_722:
    $P136 = $P135."derive_dispatcher"()
    set $P1764, $P136
.annotate 'line', 807
    set $P135, $P1764
    unless_null $P135, vivify_723
    new $P135, "Undef"
  vivify_723:
    find_lex $P136, "$code"
    unless_null $P136, vivify_724
    new $P136, "Undef"
  vivify_724:
    $P135."add_dispatchee"($P136)
.annotate 'line', 808
    set $P135, $P1764
    unless_null $P135, vivify_725
    new $P135, "Undef"
  vivify_725:
    find_lex $P136, "$name"
    unless_null $P136, vivify_726
    new $P136, "Undef"
  vivify_726:
    find_lex $P137, "self"
    nqp_decontainerize $P138, $P137
    nqp_get_sc_object $P139, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P1765, $P138, $P139, "%!methods", 2
    unless_null $P1765, vivify_727
    $P1765 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P138, $P139, "%!methods", 2, $P1765
  vivify_727:
    set $P1765[$P136], $P135
.annotate 'line', 809
    new $P135, "Float"
    assign $P135, 1
    store_lex "$found", $P135
.annotate 'line', 805
    .return ($P135)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1749"  :anon :subid("168_1335114075.00898") :outer("167_1335114075.00898")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 795
    $P1752 = root_new ['parrot';'ResizablePMCArray']
    set $P1751, $P1752
    .lex "@new_dispatchees", $P1751
.annotate 'line', 797
    new $P127, "Undef"
    set $P1753, $P127
    .lex "$new_disp", $P1753
.annotate 'line', 798
    new $P128, "Undef"
    set $P1754, $P128
    .lex "$clone_callback", $P1754
.annotate 'line', 793
    set $P1755, $P1751
    unless_null $P1755, vivify_728
    $P1755 = root_new ['parrot';'ResizablePMCArray']
  vivify_728:
.annotate 'line', 796
    find_lex $P129, "$code"
    unless_null $P129, vivify_729
    new $P129, "Undef"
  vivify_729:
    new $P130, "Float"
    assign $P130, 0
    set $I106, $P130
    set $P1756, $P1751
    unless_null $P1756, vivify_730
    $P1756 = root_new ['parrot';'ResizablePMCArray']
    set $P1751, $P1756
  vivify_730:
    set $P1756[$I106], $P129
.annotate 'line', 797
    find_lex $P129, "$dispatcher"
    unless_null $P129, vivify_731
    new $P129, "Undef"
  vivify_731:
    set $P1757, $P1751
    unless_null $P1757, vivify_732
    $P1757 = root_new ['parrot';'ResizablePMCArray']
  vivify_732:
    create_dispatch_and_add_candidates $P130, $P129, $P1757
    set $P1753, $P130
.annotate 'line', 798
    find_lex $P129, "$dispatcher"
    unless_null $P129, vivify_733
    new $P129, "Undef"
  vivify_733:
    getprop $P130, $P129, "CLONE_CALLBACK"
    set $P1754, $P130
.annotate 'line', 799
    set $P129, $P1754
    unless_null $P129, vivify_734
    new $P129, "Undef"
  vivify_734:
    defined $I106, $P129
    unless $I106, if_1758_end
.annotate 'line', 800
    set $P130, $P1754
    unless_null $P130, vivify_735
    new $P130, "Undef"
  vivify_735:
    find_lex $P131, "$dispatcher"
    unless_null $P131, vivify_736
    new $P131, "Undef"
  vivify_736:
    set $P132, $P1753
    unless_null $P132, vivify_737
    new $P132, "Undef"
  vivify_737:
    $P130($P131, $P132)
  if_1758_end:
.annotate 'line', 802
    set $P129, $P1753
    unless_null $P129, vivify_738
    new $P129, "Undef"
  vivify_738:
    find_lex $P130, "$name"
    unless_null $P130, vivify_739
    new $P130, "Undef"
  vivify_739:
    find_lex $P131, "self"
    nqp_decontainerize $P132, $P131
    nqp_get_sc_object $P133, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P1759, $P132, $P133, "%!methods", 2
    unless_null $P1759, vivify_740
    $P1759 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P132, $P133, "%!methods", 2, $P1759
  vivify_740:
    set $P1759[$P130], $P129
.annotate 'line', 803
    new $P129, "Float"
    assign $P129, 1
    store_lex "$found", $P129
.annotate 'line', 793
    .return ($P129)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_type_cache" :anon :subid("73_1335114075.00898") :outer("149_1335114075.00898")
    .param pmc param_1770
    .param pmc param_1771
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 918
    .const 'Sub' $P1783 = "171_1335114075.00898" 
    capture_lex $P1783
    .const 'Sub' $P1777 = "170_1335114075.00898" 
    capture_lex $P1777
    .lex "self", param_1770
    .lex "$obj", param_1771
.annotate 'line', 919
    $P1773 = root_new ['parrot';'ResizablePMCArray']
    set $P1772, $P1773
    .lex "@tc", $P1772
.annotate 'line', 918
    set $P1774, $P1772
    unless_null $P1774, vivify_753
    $P1774 = root_new ['parrot';'ResizablePMCArray']
  vivify_753:
.annotate 'line', 920
    set $P108, param_1770
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P1775, $P109, $P110, "@!mro", 10
    unless_null $P1775, vivify_754
    $P1775 = root_new ['parrot';'ResizablePMCArray']
  vivify_754:
    defined $I100, $P1775
    unless $I100, for_undef_755
    iter $P107, $P1775
    new $P112, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P112, loop1780_handler
    push_eh $P112
  loop1780_test:
    unless $P107, loop1780_done
    shift $P111, $P107
  loop1780_redo:
    .const 'Sub' $P1777 = "170_1335114075.00898" 
    capture_lex $P1777
    $P1777($P111)
  loop1780_next:
    goto loop1780_test
  loop1780_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P114, exception, 'type'
    eq $P114, .CONTROL_LOOP_NEXT, loop1780_next
    eq $P114, .CONTROL_LOOP_REDO, loop1780_redo
  loop1780_done:
    pop_eh 
  for_undef_755:
.annotate 'line', 921
    set $P108, param_1770
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P1781, $P109, $P110, "@!done", 11
    unless_null $P1781, vivify_758
    $P1781 = root_new ['parrot';'ResizablePMCArray']
  vivify_758:
    defined $I100, $P1781
    unless $I100, for_undef_759
    iter $P107, $P1781
    new $P112, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P112, loop1786_handler
    push_eh $P112
  loop1786_test:
    unless $P107, loop1786_done
    shift $P111, $P107
  loop1786_redo:
    .const 'Sub' $P1783 = "171_1335114075.00898" 
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
  for_undef_759:
.annotate 'line', 922
    set $P107, param_1771
    unless_null $P107, vivify_762
    new $P107, "Undef"
  vivify_762:
    set $P1787, $P1772
    unless_null $P1787, vivify_763
    $P1787 = root_new ['parrot';'ResizablePMCArray']
  vivify_763:
    publish_type_check_cache $P107, $P1787
.annotate 'line', 918
    .return ()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1776"  :anon :subid("170_1335114075.00898") :outer("73_1335114075.00898")
    .param pmc param_1778
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 920
    .lex "$_", param_1778
    find_lex $P1779, "@tc"
    unless_null $P1779, vivify_756
    $P1779 = root_new ['parrot';'ResizablePMCArray']
  vivify_756:
    find_lex $P112, "$_"
    unless_null $P112, vivify_757
    new $P112, "Undef"
  vivify_757:
    $P113 = $P1779."push"($P112)
    .return ($P113)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1782"  :anon :subid("171_1335114075.00898") :outer("73_1335114075.00898")
    .param pmc param_1784
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 921
    .lex "$_", param_1784
    find_lex $P1785, "@tc"
    unless_null $P1785, vivify_760
    $P1785 = root_new ['parrot';'ResizablePMCArray']
  vivify_760:
    find_lex $P112, "$_"
    unless_null $P112, vivify_761
    new $P112, "Undef"
  vivify_761:
    $P113 = $P1785."push"($P112)
    .return ($P113)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_method_cache" :anon :subid("74_1335114075.00898") :outer("149_1335114075.00898")
    .param pmc param_1789
    .param pmc param_1790
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 925
    .const 'Sub' $P1800 = "172_1335114075.00898" 
    capture_lex $P1800
    .lex "self", param_1789
    .lex "$obj", param_1790
.annotate 'line', 928
    $P1792 = root_new ['parrot';'Hash']
    set $P1791, $P1792
    .lex "%cache", $P1791
.annotate 'line', 929
    $P1794 = root_new ['parrot';'ResizablePMCArray']
    set $P1793, $P1794
    .lex "@mro_reversed", $P1793
.annotate 'line', 925
    set $P1795, $P1791
    unless_null $P1795, vivify_764
    $P1795 = root_new ['parrot';'Hash']
  vivify_764:
.annotate 'line', 929
    set $P107, param_1789
    nqp_decontainerize $P108, $P107
    nqp_get_sc_object $P109, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P1796, $P108, $P109, "@!mro", 10
    unless_null $P1796, vivify_765
    $P1796 = root_new ['parrot';'ResizablePMCArray']
  vivify_765:
    clone $P110, $P1796
    set $P1793, $P110
.annotate 'line', 930
    set $P1797, $P1793
    unless_null $P1797, vivify_766
    $P1797 = root_new ['parrot';'ResizablePMCArray']
  vivify_766:
    $P1797."reverse"()
.annotate 'line', 931
    set $P1798, $P1793
    unless_null $P1798, vivify_767
    $P1798 = root_new ['parrot';'ResizablePMCArray']
  vivify_767:
    defined $I100, $P1798
    unless $I100, for_undef_768
    iter $P107, $P1798
    new $P110, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P110, loop1807_handler
    push_eh $P110
  loop1807_test:
    unless $P107, loop1807_done
    shift $P108, $P107
  loop1807_redo:
    .const 'Sub' $P1800 = "172_1335114075.00898" 
    capture_lex $P1800
    $P1800($P108)
  loop1807_next:
    goto loop1807_test
  loop1807_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P111, exception, 'type'
    eq $P111, .CONTROL_LOOP_NEXT, loop1807_next
    eq $P111, .CONTROL_LOOP_REDO, loop1807_redo
  loop1807_done:
    pop_eh 
  for_undef_768:
.annotate 'line', 936
    set $P107, param_1790
    unless_null $P107, vivify_775
    new $P107, "Undef"
  vivify_775:
    set $P1808, $P1791
    unless_null $P1808, vivify_776
    $P1808 = root_new ['parrot';'Hash']
  vivify_776:
    publish_method_cache $P107, $P1808
.annotate 'line', 937
    set $P107, param_1790
    unless_null $P107, vivify_777
    new $P107, "Undef"
  vivify_777:
    new $P108, "Float"
    assign $P108, 1
    set $I100, $P108
    set_method_cache_authoritativeness $P107, $I100
.annotate 'line', 925
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1799"  :anon :subid("172_1335114075.00898") :outer("74_1335114075.00898")
    .param pmc param_1801
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 931
    .const 'Sub' $P1803 = "173_1335114075.00898" 
    capture_lex $P1803
    .lex "$_", param_1801
.annotate 'line', 932
    find_lex $P110, "$_"
    unless_null $P110, vivify_769
    new $P110, "Undef"
  vivify_769:
    get_how $P111, $P110
    find_lex $P112, "$_"
    unless_null $P112, vivify_770
    new $P112, "Undef"
  vivify_770:
    $P113 = $P111."method_table"($P112)
    defined $I101, $P113
    unless $I101, for_undef_771
    iter $P109, $P113
    new $P115, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P115, loop1806_handler
    push_eh $P115
  loop1806_test:
    unless $P109, loop1806_done
    shift $P114, $P109
  loop1806_redo:
    .const 'Sub' $P1803 = "173_1335114075.00898" 
    capture_lex $P1803
    $P1803($P114)
  loop1806_next:
    goto loop1806_test
  loop1806_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P117, exception, 'type'
    eq $P117, .CONTROL_LOOP_NEXT, loop1806_next
    eq $P117, .CONTROL_LOOP_REDO, loop1806_redo
  loop1806_done:
    pop_eh 
  for_undef_771:
.annotate 'line', 931
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1802"  :anon :subid("173_1335114075.00898") :outer("172_1335114075.00898")
    .param pmc param_1804
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 932
    .lex "$_", param_1804
.annotate 'line', 933
    find_lex $P115, "$_"
    unless_null $P115, vivify_772
    new $P115, "Undef"
  vivify_772:
    $P116 = $P115."value"()
    find_lex $P117, "$_"
    unless_null $P117, vivify_773
    new $P117, "Undef"
  vivify_773:
    $P118 = $P117."key"()
    find_lex $P1805, "%cache"
    unless_null $P1805, vivify_774
    $P1805 = root_new ['parrot';'Hash']
    store_lex "%cache", $P1805
  vivify_774:
    set $P1805[$P118], $P116
.annotate 'line', 932
    .return ($P116)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "publish_boolification_spec" :anon :subid("75_1335114075.00898") :outer("149_1335114075.00898")
    .param pmc param_1810
    .param pmc param_1811
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 940
    .lex "self", param_1810
    .lex "$obj", param_1811
.annotate 'line', 941
    new $P107, "Undef"
    set $P1812, $P107
    .lex "$bool_meth", $P1812
    set $P108, param_1810
    nqp_decontainerize $P109, $P108
    set $P110, param_1811
    unless_null $P110, vivify_778
    new $P110, "Undef"
  vivify_778:
    $P111 = $P109."find_method"($P110, "Bool")
    set $P1812, $P111
.annotate 'line', 942
    set $P109, $P1812
    unless_null $P109, vivify_779
    new $P109, "Undef"
  vivify_779:
    defined $I100, $P109
    if $I100, if_1813
.annotate 'line', 946
    set $P111, param_1811
    unless_null $P111, vivify_780
    new $P111, "Undef"
  vivify_780:
    new $P112, "Float"
    assign $P112, 5
    set $I101, $P112
    null $P113
    set_boolification_spec $P111, $I101, $P113
.annotate 'line', 945
    set $P108, $P111
.annotate 'line', 942
    goto if_1813_end
  if_1813:
.annotate 'line', 943
    set $P110, param_1811
    unless_null $P110, vivify_781
    new $P110, "Undef"
  vivify_781:
    new $P111, "Float"
    assign $P111, 0
    set $I101, $P111
    set $P112, $P1812
    unless_null $P112, vivify_782
    new $P112, "Undef"
  vivify_782:
    set_boolification_spec $P110, $I101, $P112
.annotate 'line', 942
    set $P108, $P110
  if_1813_end:
.annotate 'line', 940
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_parrot_vtable_mapping" :anon :subid("76_1335114075.00898") :outer("149_1335114075.00898")
    .param pmc param_1815
    .param pmc param_1816
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 950
    .const 'Sub' $P1826 = "174_1335114075.00898" 
    capture_lex $P1826
    .lex "self", param_1815
    .lex "$obj", param_1816
.annotate 'line', 951
    $P1818 = root_new ['parrot';'Hash']
    set $P1817, $P1818
    .lex "%mapping", $P1817
.annotate 'line', 952
    $P1820 = root_new ['parrot';'ResizablePMCArray']
    set $P1819, $P1820
    .lex "@mro_reversed", $P1819
.annotate 'line', 950
    set $P1821, $P1817
    unless_null $P1821, vivify_783
    $P1821 = root_new ['parrot';'Hash']
  vivify_783:
.annotate 'line', 952
    set $P107, param_1815
    nqp_decontainerize $P108, $P107
    nqp_get_sc_object $P109, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P1822, $P108, $P109, "@!mro", 10
    unless_null $P1822, vivify_784
    $P1822 = root_new ['parrot';'ResizablePMCArray']
  vivify_784:
    clone $P110, $P1822
    set $P1819, $P110
.annotate 'line', 953
    set $P1823, $P1819
    unless_null $P1823, vivify_785
    $P1823 = root_new ['parrot';'ResizablePMCArray']
  vivify_785:
    $P1823."reverse"()
.annotate 'line', 954
    set $P1824, $P1819
    unless_null $P1824, vivify_786
    $P1824 = root_new ['parrot';'ResizablePMCArray']
  vivify_786:
    defined $I100, $P1824
    unless $I100, for_undef_787
    iter $P107, $P1824
    new $P110, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P110, loop1833_handler
    push_eh $P110
  loop1833_test:
    unless $P107, loop1833_done
    shift $P108, $P107
  loop1833_redo:
    .const 'Sub' $P1826 = "174_1335114075.00898" 
    capture_lex $P1826
    $P1826($P108)
  loop1833_next:
    goto loop1833_test
  loop1833_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P111, exception, 'type'
    eq $P111, .CONTROL_LOOP_NEXT, loop1833_next
    eq $P111, .CONTROL_LOOP_REDO, loop1833_redo
  loop1833_done:
    pop_eh 
  for_undef_787:
.annotate 'line', 959
    set $P1835, $P1817
    unless_null $P1835, vivify_794
    $P1835 = root_new ['parrot';'Hash']
  vivify_794:
    set $N100, $P1835
    if $N100, if_1834
    new $P107, 'Float'
    set $P107, $N100
    goto if_1834_end
  if_1834:
.annotate 'line', 960
    set $P108, param_1816
    unless_null $P108, vivify_795
    new $P108, "Undef"
  vivify_795:
    set $P1836, $P1817
    unless_null $P1836, vivify_796
    $P1836 = root_new ['parrot';'Hash']
  vivify_796:
    stable_publish_vtable_mapping $P108, $P1836
  if_1834_end:
.annotate 'line', 950
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1825"  :anon :subid("174_1335114075.00898") :outer("76_1335114075.00898")
    .param pmc param_1827
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 954
    .const 'Sub' $P1829 = "175_1335114075.00898" 
    capture_lex $P1829
    .lex "$_", param_1827
.annotate 'line', 955
    find_lex $P110, "$_"
    unless_null $P110, vivify_788
    new $P110, "Undef"
  vivify_788:
    get_how $P111, $P110
    find_lex $P112, "$_"
    unless_null $P112, vivify_789
    new $P112, "Undef"
  vivify_789:
    $P113 = $P111."parrot_vtable_mappings"($P112, 1 :named("local"))
    defined $I101, $P113
    unless $I101, for_undef_790
    iter $P109, $P113
    new $P115, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P115, loop1832_handler
    push_eh $P115
  loop1832_test:
    unless $P109, loop1832_done
    shift $P114, $P109
  loop1832_redo:
    .const 'Sub' $P1829 = "175_1335114075.00898" 
    capture_lex $P1829
    $P1829($P114)
  loop1832_next:
    goto loop1832_test
  loop1832_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P117, exception, 'type'
    eq $P117, .CONTROL_LOOP_NEXT, loop1832_next
    eq $P117, .CONTROL_LOOP_REDO, loop1832_redo
  loop1832_done:
    pop_eh 
  for_undef_790:
.annotate 'line', 954
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1828"  :anon :subid("175_1335114075.00898") :outer("174_1335114075.00898")
    .param pmc param_1830
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 955
    .lex "$_", param_1830
.annotate 'line', 956
    find_lex $P115, "$_"
    unless_null $P115, vivify_791
    new $P115, "Undef"
  vivify_791:
    $P116 = $P115."value"()
    find_lex $P117, "$_"
    unless_null $P117, vivify_792
    new $P117, "Undef"
  vivify_792:
    $P118 = $P117."key"()
    find_lex $P1831, "%mapping"
    unless_null $P1831, vivify_793
    $P1831 = root_new ['parrot';'Hash']
    store_lex "%mapping", $P1831
  vivify_793:
    set $P1831[$P118], $P116
.annotate 'line', 955
    .return ($P116)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_parrot_vtablee_handler_mapping" :anon :subid("77_1335114075.00898") :outer("149_1335114075.00898")
    .param pmc param_1838
    .param pmc param_1839
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 964
    .const 'Sub' $P1849 = "176_1335114075.00898" 
    capture_lex $P1849
    .lex "self", param_1838
    .lex "$obj", param_1839
.annotate 'line', 965
    $P1841 = root_new ['parrot';'Hash']
    set $P1840, $P1841
    .lex "%mapping", $P1840
.annotate 'line', 966
    $P1843 = root_new ['parrot';'ResizablePMCArray']
    set $P1842, $P1843
    .lex "@mro_reversed", $P1842
.annotate 'line', 964
    set $P1844, $P1840
    unless_null $P1844, vivify_797
    $P1844 = root_new ['parrot';'Hash']
  vivify_797:
.annotate 'line', 966
    set $P107, param_1838
    nqp_decontainerize $P108, $P107
    nqp_get_sc_object $P109, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P1845, $P108, $P109, "@!mro", 10
    unless_null $P1845, vivify_798
    $P1845 = root_new ['parrot';'ResizablePMCArray']
  vivify_798:
    clone $P110, $P1845
    set $P1842, $P110
.annotate 'line', 967
    set $P1846, $P1842
    unless_null $P1846, vivify_799
    $P1846 = root_new ['parrot';'ResizablePMCArray']
  vivify_799:
    $P1846."reverse"()
.annotate 'line', 968
    set $P1847, $P1842
    unless_null $P1847, vivify_800
    $P1847 = root_new ['parrot';'ResizablePMCArray']
  vivify_800:
    defined $I100, $P1847
    unless $I100, for_undef_801
    iter $P107, $P1847
    new $P110, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P110, loop1856_handler
    push_eh $P110
  loop1856_test:
    unless $P107, loop1856_done
    shift $P108, $P107
  loop1856_redo:
    .const 'Sub' $P1849 = "176_1335114075.00898" 
    capture_lex $P1849
    $P1849($P108)
  loop1856_next:
    goto loop1856_test
  loop1856_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P111, exception, 'type'
    eq $P111, .CONTROL_LOOP_NEXT, loop1856_next
    eq $P111, .CONTROL_LOOP_REDO, loop1856_redo
  loop1856_done:
    pop_eh 
  for_undef_801:
.annotate 'line', 973
    set $P1858, $P1840
    unless_null $P1858, vivify_808
    $P1858 = root_new ['parrot';'Hash']
  vivify_808:
    set $N100, $P1858
    if $N100, if_1857
    new $P107, 'Float'
    set $P107, $N100
    goto if_1857_end
  if_1857:
.annotate 'line', 974
    set $P108, param_1839
    unless_null $P108, vivify_809
    new $P108, "Undef"
  vivify_809:
    set $P1859, $P1840
    unless_null $P1859, vivify_810
    $P1859 = root_new ['parrot';'Hash']
  vivify_810:
    stable_publish_vtable_handler_mapping $P108, $P1859
  if_1857_end:
.annotate 'line', 964
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1848"  :anon :subid("176_1335114075.00898") :outer("77_1335114075.00898")
    .param pmc param_1850
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 968
    .const 'Sub' $P1852 = "177_1335114075.00898" 
    capture_lex $P1852
    .lex "$_", param_1850
.annotate 'line', 969
    find_lex $P110, "$_"
    unless_null $P110, vivify_802
    new $P110, "Undef"
  vivify_802:
    get_how $P111, $P110
    find_lex $P112, "$_"
    unless_null $P112, vivify_803
    new $P112, "Undef"
  vivify_803:
    $P113 = $P111."parrot_vtable_handler_mappings"($P112, 1 :named("local"))
    defined $I101, $P113
    unless $I101, for_undef_804
    iter $P109, $P113
    new $P115, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P115, loop1855_handler
    push_eh $P115
  loop1855_test:
    unless $P109, loop1855_done
    shift $P114, $P109
  loop1855_redo:
    .const 'Sub' $P1852 = "177_1335114075.00898" 
    capture_lex $P1852
    $P1852($P114)
  loop1855_next:
    goto loop1855_test
  loop1855_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P117, exception, 'type'
    eq $P117, .CONTROL_LOOP_NEXT, loop1855_next
    eq $P117, .CONTROL_LOOP_REDO, loop1855_redo
  loop1855_done:
    pop_eh 
  for_undef_804:
.annotate 'line', 968
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1851"  :anon :subid("177_1335114075.00898") :outer("176_1335114075.00898")
    .param pmc param_1853
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 969
    .lex "$_", param_1853
.annotate 'line', 970
    find_lex $P115, "$_"
    unless_null $P115, vivify_805
    new $P115, "Undef"
  vivify_805:
    $P116 = $P115."value"()
    find_lex $P117, "$_"
    unless_null $P117, vivify_806
    new $P117, "Undef"
  vivify_806:
    $P118 = $P117."key"()
    find_lex $P1854, "%mapping"
    unless_null $P1854, vivify_807
    $P1854 = root_new ['parrot';'Hash']
    store_lex "%mapping", $P1854
  vivify_807:
    set $P1854[$P118], $P116
.annotate 'line', 969
    .return ($P116)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parents" :anon :subid("78_1335114075.00898") :outer("149_1335114075.00898")
    .param pmc param_1861
    .param pmc param_1862
    .param pmc param_1863 :optional :named("local")
    .param int has_param_1863 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 982
    .lex "self", param_1861
    .lex "$obj", param_1862
    if has_param_1863, optparam_811
    new $P107, "Undef"
    set param_1863, $P107
  optparam_811:
    .lex "$local", param_1863
.annotate 'line', 983
    set $P109, param_1863
    unless_null $P109, vivify_812
    new $P109, "Undef"
  vivify_812:
    if $P109, if_1864
    set $P113, param_1861
    nqp_decontainerize $P114, $P113
    nqp_get_sc_object $P115, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P1866, $P114, $P115, "@!mro", 10
    unless_null $P1866, vivify_813
    $P1866 = root_new ['parrot';'ResizablePMCArray']
  vivify_813:
    set $P108, $P1866
    goto if_1864_end
  if_1864:
    set $P110, param_1861
    nqp_decontainerize $P111, $P110
    nqp_get_sc_object $P112, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P1865, $P111, $P112, "@!parents", 4
    unless_null $P1865, vivify_814
    $P1865 = root_new ['parrot';'ResizablePMCArray']
  vivify_814:
    set $P108, $P1865
  if_1864_end:
.annotate 'line', 982
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "mro" :anon :subid("79_1335114075.00898") :outer("149_1335114075.00898")
    .param pmc param_1868
    .param pmc param_1869
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 986
    .lex "self", param_1868
    .lex "$obj", param_1869
    set $P107, param_1868
    nqp_decontainerize $P108, $P107
    nqp_get_sc_object $P109, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P1870, $P108, $P109, "@!mro", 10
    unless_null $P1870, vivify_815
    $P1870 = root_new ['parrot';'ResizablePMCArray']
  vivify_815:
    .return ($P1870)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "roles" :anon :subid("80_1335114075.00898") :outer("149_1335114075.00898")
    .param pmc param_1872
    .param pmc param_1873
    .param pmc param_1874 :named("local")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 990
    .lex "self", param_1872
    .lex "$obj", param_1873
    .lex "$local", param_1874
    set $P107, param_1872
    nqp_decontainerize $P108, $P107
    nqp_get_sc_object $P109, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P1875, $P108, $P109, "@!roles", 5
    unless_null $P1875, vivify_816
    $P1875 = root_new ['parrot';'ResizablePMCArray']
  vivify_816:
    .return ($P1875)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "methods" :anon :subid("81_1335114075.00898") :outer("149_1335114075.00898")
    .param pmc param_1877
    .param pmc param_1878
    .param pmc param_1879 :named("local")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 994
    .const 'Sub' $P1885 = "178_1335114075.00898" 
    capture_lex $P1885
    .lex "self", param_1877
    .lex "$obj", param_1878
    .lex "$local", param_1879
.annotate 'line', 995
    $P1881 = root_new ['parrot';'ResizablePMCArray']
    set $P1880, $P1881
    .lex "@meths", $P1880
.annotate 'line', 994
    set $P1882, $P1880
    unless_null $P1882, vivify_817
    $P1882 = root_new ['parrot';'ResizablePMCArray']
  vivify_817:
.annotate 'line', 996
    set $P108, param_1877
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P1883, $P109, $P110, "%!methods", 2
    unless_null $P1883, vivify_818
    $P1883 = root_new ['parrot';'Hash']
  vivify_818:
    defined $I100, $P1883
    unless $I100, for_undef_819
    iter $P107, $P1883
    new $P112, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P112, loop1888_handler
    push_eh $P112
  loop1888_test:
    unless $P107, loop1888_done
    shift $P111, $P107
  loop1888_redo:
    .const 'Sub' $P1885 = "178_1335114075.00898" 
    capture_lex $P1885
    $P1885($P111)
  loop1888_next:
    goto loop1888_test
  loop1888_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P113, exception, 'type'
    eq $P113, .CONTROL_LOOP_NEXT, loop1888_next
    eq $P113, .CONTROL_LOOP_REDO, loop1888_redo
  loop1888_done:
    pop_eh 
  for_undef_819:
.annotate 'line', 994
    set $P1889, $P1880
    unless_null $P1889, vivify_822
    $P1889 = root_new ['parrot';'ResizablePMCArray']
  vivify_822:
    .return ($P1889)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1884"  :anon :subid("178_1335114075.00898") :outer("81_1335114075.00898")
    .param pmc param_1886
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 996
    .lex "$_", param_1886
.annotate 'line', 997
    find_lex $P1887, "@meths"
    unless_null $P1887, vivify_820
    $P1887 = root_new ['parrot';'ResizablePMCArray']
  vivify_820:
    find_lex $P112, "$_"
    unless_null $P112, vivify_821
    new $P112, "Undef"
  vivify_821:
    $P113 = $P112."value"()
    $P114 = $P1887."push"($P113)
.annotate 'line', 996
    .return ($P114)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "method_table" :anon :subid("82_1335114075.00898") :outer("149_1335114075.00898")
    .param pmc param_1891
    .param pmc param_1892
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1002
    .lex "self", param_1891
    .lex "$obj", param_1892
    set $P107, param_1891
    nqp_decontainerize $P108, $P107
    nqp_get_sc_object $P109, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P1893, $P108, $P109, "%!methods", 2
    unless_null $P1893, vivify_823
    $P1893 = root_new ['parrot';'Hash']
  vivify_823:
    .return ($P1893)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "name" :anon :subid("83_1335114075.00898") :outer("149_1335114075.00898")
    .param pmc param_1895
    .param pmc param_1896
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1006
    .lex "self", param_1895
    .lex "$obj", param_1896
    set $P107, param_1895
    nqp_decontainerize $P108, $P107
    nqp_get_sc_object $P109, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P110, $P108, $P109, "$!name", 0
    unless_null $P110, vivify_824
    new $P110, "Undef"
  vivify_824:
    .return ($P110)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "attributes" :anon :subid("84_1335114075.00898") :outer("149_1335114075.00898")
    .param pmc param_1898
    .param pmc param_1899
    .param pmc param_1900 :named("local")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1010
    .const 'Sub' $P1906 = "179_1335114075.00898" 
    capture_lex $P1906
    .lex "self", param_1898
    .lex "$obj", param_1899
    .lex "$local", param_1900
.annotate 'line', 1011
    $P1902 = root_new ['parrot';'ResizablePMCArray']
    set $P1901, $P1902
    .lex "@attrs", $P1901
.annotate 'line', 1010
    set $P1903, $P1901
    unless_null $P1903, vivify_825
    $P1903 = root_new ['parrot';'ResizablePMCArray']
  vivify_825:
.annotate 'line', 1012
    set $P108, param_1898
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P1904, $P109, $P110, "%!attributes", 1
    unless_null $P1904, vivify_826
    $P1904 = root_new ['parrot';'Hash']
  vivify_826:
    defined $I100, $P1904
    unless $I100, for_undef_827
    iter $P107, $P1904
    new $P112, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P112, loop1909_handler
    push_eh $P112
  loop1909_test:
    unless $P107, loop1909_done
    shift $P111, $P107
  loop1909_redo:
    .const 'Sub' $P1906 = "179_1335114075.00898" 
    capture_lex $P1906
    $P1906($P111)
  loop1909_next:
    goto loop1909_test
  loop1909_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P113, exception, 'type'
    eq $P113, .CONTROL_LOOP_NEXT, loop1909_next
    eq $P113, .CONTROL_LOOP_REDO, loop1909_redo
  loop1909_done:
    pop_eh 
  for_undef_827:
.annotate 'line', 1010
    set $P1910, $P1901
    unless_null $P1910, vivify_830
    $P1910 = root_new ['parrot';'ResizablePMCArray']
  vivify_830:
    .return ($P1910)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1905"  :anon :subid("179_1335114075.00898") :outer("84_1335114075.00898")
    .param pmc param_1907
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1012
    .lex "$_", param_1907
.annotate 'line', 1013
    find_lex $P1908, "@attrs"
    unless_null $P1908, vivify_828
    $P1908 = root_new ['parrot';'ResizablePMCArray']
  vivify_828:
    find_lex $P112, "$_"
    unless_null $P112, vivify_829
    new $P112, "Undef"
  vivify_829:
    $P113 = $P112."value"()
    $P114 = $P1908."push"($P113)
.annotate 'line', 1012
    .return ($P114)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parrot_vtable_mappings" :anon :subid("85_1335114075.00898") :outer("149_1335114075.00898")
    .param pmc param_1912
    .param pmc param_1913
    .param pmc param_1914 :named("local")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1018
    .lex "self", param_1912
    .lex "$obj", param_1913
    .lex "$local", param_1914
    set $P107, param_1912
    nqp_decontainerize $P108, $P107
    nqp_get_sc_object $P109, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P1915, $P108, $P109, "%!parrot_vtable_mapping", 13
    unless_null $P1915, vivify_831
    $P1915 = root_new ['parrot';'Hash']
  vivify_831:
    .return ($P1915)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parrot_vtable_handler_mappings" :anon :subid("86_1335114075.00898") :outer("149_1335114075.00898")
    .param pmc param_1917
    .param pmc param_1918
    .param pmc param_1919 :named("local")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1022
    .lex "self", param_1917
    .lex "$obj", param_1918
    .lex "$local", param_1919
    set $P107, param_1917
    nqp_decontainerize $P108, $P107
    nqp_get_sc_object $P109, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P1920, $P108, $P109, "%!parrot_vtable_handler_mapping", 14
    unless_null $P1920, vivify_832
    $P1920 = root_new ['parrot';'Hash']
  vivify_832:
    .return ($P1920)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "isa" :anon :subid("87_1335114075.00898") :outer("149_1335114075.00898")
    .param pmc param_1924
    .param pmc param_1925
    .param pmc param_1926
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1030
    new $P1923, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P1923, control_1922
    push_eh $P1923
    .lex "self", param_1924
    .lex "$obj", param_1925
    .lex "$check", param_1926
.annotate 'line', 1031
    new $P107, "Undef"
    set $P1927, $P107
    .lex "$check-class", $P1927
.annotate 'line', 1032
    new $P108, "Undef"
    set $P1928, $P108
    .lex "$i", $P1928
.annotate 'line', 1031
    set $P109, param_1926
    unless_null $P109, vivify_833
    new $P109, "Undef"
  vivify_833:
    get_what $P110, $P109
    set $P1927, $P110
.annotate 'line', 1032
    set $P109, param_1924
    nqp_decontainerize $P110, $P109
    nqp_get_sc_object $P111, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P1929, $P110, $P111, "@!mro", 10
    unless_null $P1929, vivify_834
    $P1929 = root_new ['parrot';'ResizablePMCArray']
  vivify_834:
    set $N100, $P1929
    new $P112, 'Float'
    set $P112, $N100
    set $P1928, $P112
.annotate 'line', 1033
    new $P110, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P110, loop1932_handler
    push_eh $P110
  loop1932_test:
    set $P109, $P1928
    unless_null $P109, vivify_835
    new $P109, "Undef"
  vivify_835:
    set $N100, $P109
    set $N101, 0
    isgt $I100, $N100, $N101
    unless $I100, loop1932_done
  loop1932_redo:
.annotate 'line', 1034
    set $P110, $P1928
    unless_null $P110, vivify_836
    new $P110, "Undef"
  vivify_836:
    sub $P111, $P110, 1
    set $P1928, $P111
.annotate 'line', 1035
    set $P110, $P1928
    unless_null $P110, vivify_837
    new $P110, "Undef"
  vivify_837:
    set $I101, $P110
    set $P111, param_1924
    nqp_decontainerize $P112, $P111
    nqp_get_sc_object $P113, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P1931, $P112, $P113, "@!mro", 10
    unless_null $P1931, vivify_838
    $P1931 = root_new ['parrot';'ResizablePMCArray']
  vivify_838:
    set $P114, $P1931[$I101]
    unless_null $P114, vivify_839
    new $P114, "Undef"
  vivify_839:
    set $P115, $P1927
    unless_null $P115, vivify_840
    new $P115, "Undef"
  vivify_840:
    issame $I102, $P114, $P115
    unless $I102, if_1930_end
.annotate 'line', 1036
    new $P116, "Exception"
    set $P116['type'], .CONTROL_RETURN
    new $P117, "Float"
    assign $P117, 1
    setattribute $P116, 'payload', $P117
    throw $P116
  if_1930_end:
  loop1932_next:
.annotate 'line', 1033
    goto loop1932_test
  loop1932_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P111, exception, 'type'
    eq $P111, .CONTROL_LOOP_NEXT, loop1932_next
    eq $P111, .CONTROL_LOOP_REDO, loop1932_redo
  loop1932_done:
    pop_eh 
.annotate 'line', 1039
    new $P109, "Exception"
    set $P109['type'], .CONTROL_RETURN
    new $P110, "Float"
    assign $P110, 0
    setattribute $P109, 'payload', $P110
    throw $P109
.annotate 'line', 1030
    .return ()
  control_1922:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P109, exception, "payload"
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "does" :anon :subid("88_1335114075.00898") :outer("149_1335114075.00898")
    .param pmc param_1936
    .param pmc param_1937
    .param pmc param_1938
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1042
    new $P1935, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P1935, control_1934
    push_eh $P1935
    .lex "self", param_1936
    .lex "$obj", param_1937
    .lex "$check", param_1938
.annotate 'line', 1043
    new $P107, "Undef"
    set $P1939, $P107
    .lex "$i", $P1939
    set $P108, param_1936
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P1940, $P109, $P110, "@!done", 11
    unless_null $P1940, vivify_841
    $P1940 = root_new ['parrot';'ResizablePMCArray']
  vivify_841:
    set $N100, $P1940
    new $P111, 'Float'
    set $P111, $N100
    set $P1939, $P111
.annotate 'line', 1044
    new $P109, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P109, loop1943_handler
    push_eh $P109
  loop1943_test:
    set $P108, $P1939
    unless_null $P108, vivify_842
    new $P108, "Undef"
  vivify_842:
    set $N100, $P108
    set $N101, 0
    isgt $I100, $N100, $N101
    unless $I100, loop1943_done
  loop1943_redo:
.annotate 'line', 1045
    set $P109, $P1939
    unless_null $P109, vivify_843
    new $P109, "Undef"
  vivify_843:
    sub $P110, $P109, 1
    set $P1939, $P110
.annotate 'line', 1046
    set $P109, $P1939
    unless_null $P109, vivify_844
    new $P109, "Undef"
  vivify_844:
    set $I101, $P109
    set $P110, param_1936
    nqp_decontainerize $P111, $P110
    nqp_get_sc_object $P112, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P1942, $P111, $P112, "@!done", 11
    unless_null $P1942, vivify_845
    $P1942 = root_new ['parrot';'ResizablePMCArray']
  vivify_845:
    set $P113, $P1942[$I101]
    unless_null $P113, vivify_846
    new $P113, "Undef"
  vivify_846:
    set $P114, param_1938
    unless_null $P114, vivify_847
    new $P114, "Undef"
  vivify_847:
    issame $I102, $P113, $P114
    unless $I102, if_1941_end
.annotate 'line', 1047
    new $P115, "Exception"
    set $P115['type'], .CONTROL_RETURN
    new $P116, "Float"
    assign $P116, 1
    setattribute $P115, 'payload', $P116
    throw $P115
  if_1941_end:
  loop1943_next:
.annotate 'line', 1044
    goto loop1943_test
  loop1943_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P110, exception, 'type'
    eq $P110, .CONTROL_LOOP_NEXT, loop1943_next
    eq $P110, .CONTROL_LOOP_REDO, loop1943_redo
  loop1943_done:
    pop_eh 
.annotate 'line', 1050
    new $P108, "Exception"
    set $P108['type'], .CONTROL_RETURN
    new $P109, "Float"
    assign $P109, 0
    setattribute $P108, 'payload', $P109
    throw $P108
.annotate 'line', 1042
    .return ()
  control_1934:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, "payload"
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "can" :anon :subid("89_1335114075.00898") :outer("149_1335114075.00898")
    .param pmc param_1947
    .param pmc param_1948
    .param pmc param_1949
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1053
    .const 'Sub' $P1952 = "180_1335114075.00898" 
    capture_lex $P1952
    new $P1946, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P1946, control_1945
    push_eh $P1946
    .lex "self", param_1947
    .lex "$obj", param_1948
    .lex "$name", param_1949
.annotate 'line', 1054
    set $P108, param_1947
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P1950, $P109, $P110, "@!mro", 10
    unless_null $P1950, vivify_848
    $P1950 = root_new ['parrot';'ResizablePMCArray']
  vivify_848:
    defined $I100, $P1950
    unless $I100, for_undef_849
    iter $P107, $P1950
    new $P114, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P114, loop1959_handler
    push_eh $P114
  loop1959_test:
    unless $P107, loop1959_done
    shift $P111, $P107
  loop1959_redo:
    .const 'Sub' $P1952 = "180_1335114075.00898" 
    capture_lex $P1952
    $P1952($P111)
  loop1959_next:
    goto loop1959_test
  loop1959_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P115, exception, 'type'
    eq $P115, .CONTROL_LOOP_NEXT, loop1959_next
    eq $P115, .CONTROL_LOOP_REDO, loop1959_redo
  loop1959_done:
    pop_eh 
  for_undef_849:
.annotate 'line', 1061
    new $P107, "Exception"
    set $P107['type'], .CONTROL_RETURN
    new $P108, "Float"
    assign $P108, 0
    setattribute $P107, 'payload', $P108
    throw $P107
.annotate 'line', 1053
    .return ()
  control_1945:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P107, exception, "payload"
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1951"  :anon :subid("180_1335114075.00898") :outer("89_1335114075.00898")
    .param pmc param_1956
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1055
    $P1954 = root_new ['parrot';'Hash']
    set $P1953, $P1954
    .lex "%meths", $P1953
.annotate 'line', 1056
    new $P112, "Undef"
    set $P1955, $P112
    .lex "$can", $P1955
    .lex "$_", param_1956
.annotate 'line', 1055
    find_lex $P113, "$_"
    unless_null $P113, vivify_850
    new $P113, "Undef"
  vivify_850:
    get_how $P114, $P113
    find_lex $P115, "$obj"
    unless_null $P115, vivify_851
    new $P115, "Undef"
  vivify_851:
    $P116 = $P114."method_table"($P115)
    set $P1953, $P116
.annotate 'line', 1056
    find_lex $P113, "$name"
    unless_null $P113, vivify_852
    new $P113, "Undef"
  vivify_852:
    set $P1957, $P1953
    unless_null $P1957, vivify_853
    $P1957 = root_new ['parrot';'Hash']
  vivify_853:
    set $P114, $P1957[$P113]
    unless_null $P114, vivify_854
    new $P114, "Undef"
  vivify_854:
    set $P1955, $P114
.annotate 'line', 1057
    set $P114, $P1955
    unless_null $P114, vivify_855
    new $P114, "Undef"
  vivify_855:
    defined $I101, $P114
    if $I101, if_1958
    new $P113, 'Integer'
    set $P113, $I101
    goto if_1958_end
  if_1958:
.annotate 'line', 1058
    new $P115, "Exception"
    set $P115['type'], .CONTROL_RETURN
    set $P116, $P1955
    unless_null $P116, vivify_856
    new $P116, "Undef"
  vivify_856:
    setattribute $P115, 'payload', $P116
    throw $P115
  if_1958_end:
.annotate 'line', 1054
    .return ($P113)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "find_method" :anon :subid("90_1335114075.00898") :outer("149_1335114075.00898")
    .param pmc param_1963
    .param pmc param_1964
    .param pmc param_1965
    .param pmc param_1966 :optional :named("no_fallback")
    .param int has_param_1966 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1067
    .const 'Sub' $P1969 = "181_1335114075.00898" 
    capture_lex $P1969
    new $P1962, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P1962, control_1961
    push_eh $P1962
    .lex "self", param_1963
    .lex "$obj", param_1964
    .lex "$name", param_1965
    if has_param_1966, optparam_857
    new $P107, "Undef"
    set param_1966, $P107
  optparam_857:
    .lex "$no_fallback", param_1966
.annotate 'line', 1068
    set $P109, param_1963
    nqp_decontainerize $P110, $P109
    nqp_get_sc_object $P111, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P1967, $P110, $P111, "@!mro", 10
    unless_null $P1967, vivify_858
    $P1967 = root_new ['parrot';'ResizablePMCArray']
  vivify_858:
    defined $I100, $P1967
    unless $I100, for_undef_859
    iter $P108, $P1967
    new $P115, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P115, loop1976_handler
    push_eh $P115
  loop1976_test:
    unless $P108, loop1976_done
    shift $P112, $P108
  loop1976_redo:
    .const 'Sub' $P1969 = "181_1335114075.00898" 
    capture_lex $P1969
    $P1969($P112)
  loop1976_next:
    goto loop1976_test
  loop1976_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P116, exception, 'type'
    eq $P116, .CONTROL_LOOP_NEXT, loop1976_next
    eq $P116, .CONTROL_LOOP_REDO, loop1976_redo
  loop1976_done:
    pop_eh 
  for_undef_859:
.annotate 'line', 1075
    null $P108
.annotate 'line', 1067
    .return ($P108)
  control_1961:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P109, exception, "payload"
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1968"  :anon :subid("181_1335114075.00898") :outer("90_1335114075.00898")
    .param pmc param_1973
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1069
    $P1971 = root_new ['parrot';'Hash']
    set $P1970, $P1971
    .lex "%meths", $P1970
.annotate 'line', 1070
    new $P113, "Undef"
    set $P1972, $P113
    .lex "$found", $P1972
    .lex "$_", param_1973
.annotate 'line', 1069
    find_lex $P114, "$_"
    unless_null $P114, vivify_860
    new $P114, "Undef"
  vivify_860:
    get_how $P115, $P114
    find_lex $P116, "$obj"
    unless_null $P116, vivify_861
    new $P116, "Undef"
  vivify_861:
    $P117 = $P115."method_table"($P116)
    set $P1970, $P117
.annotate 'line', 1070
    find_lex $P114, "$name"
    unless_null $P114, vivify_862
    new $P114, "Undef"
  vivify_862:
    set $P1974, $P1970
    unless_null $P1974, vivify_863
    $P1974 = root_new ['parrot';'Hash']
  vivify_863:
    set $P115, $P1974[$P114]
    unless_null $P115, vivify_864
    new $P115, "Undef"
  vivify_864:
    set $P1972, $P115
.annotate 'line', 1071
    set $P115, $P1972
    unless_null $P115, vivify_865
    new $P115, "Undef"
  vivify_865:
    defined $I101, $P115
    if $I101, if_1975
    new $P114, 'Integer'
    set $P114, $I101
    goto if_1975_end
  if_1975:
.annotate 'line', 1072
    new $P116, "Exception"
    set $P116['type'], .CONTROL_RETURN
    set $P117, $P1972
    unless_null $P117, vivify_866
    new $P117, "Undef"
  vivify_866:
    setattribute $P116, 'payload', $P117
    throw $P116
  if_1975_end:
.annotate 'line', 1068
    .return ($P114)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "cache" :anon :subid("91_1335114075.00898") :outer("149_1335114075.00898")
    .param pmc param_1978
    .param pmc param_1979
    .param pmc param_1980
    .param pmc param_1981
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1081
    .lex "self", param_1978
    .lex "$obj", param_1979
    .lex "$key", param_1980
    .lex "$value_generator", param_1981
.annotate 'line', 1082
    set $P107, param_1978
    nqp_decontainerize $P108, $P107
    nqp_get_sc_object $P109, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P1983, $P108, $P109, "%!cache", 12
    unless_null $P1983, vivify_867
    $P1983 = root_new ['parrot';'Hash']
  vivify_867:
    if $P1983, unless_1982_end
    $P1984 = root_new ['parrot';'Hash']
    set $P110, param_1978
    nqp_decontainerize $P111, $P110
    nqp_get_sc_object $P112, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_bind_attr_obj $P111, $P112, "%!cache", 12, $P1984
  unless_1982_end:
.annotate 'line', 1083
    set $P111, param_1980
    unless_null $P111, vivify_868
    new $P111, "Undef"
  vivify_868:
    set $P108, param_1978
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P1986, $P109, $P110, "%!cache", 12
    unless_null $P1986, vivify_869
    $P1986 = root_new ['parrot';'Hash']
  vivify_869:
    exists $I100, $P1986[$P111]
    if $I100, if_1985
.annotate 'line', 1085
    set $P117, param_1981
    unless_null $P117, vivify_870
    new $P117, "Undef"
  vivify_870:
    $P118 = $P117()
    set $P119, param_1980
    unless_null $P119, vivify_871
    new $P119, "Undef"
  vivify_871:
    set $P120, param_1978
    nqp_decontainerize $P121, $P120
    nqp_get_sc_object $P122, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P1988, $P121, $P122, "%!cache", 12
    unless_null $P1988, vivify_872
    $P1988 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P121, $P122, "%!cache", 12, $P1988
  vivify_872:
    set $P1988[$P119], $P118
    set $P107, $P118
.annotate 'line', 1083
    goto if_1985_end
  if_1985:
    set $P112, param_1980
    unless_null $P112, vivify_873
    new $P112, "Undef"
  vivify_873:
    set $P113, param_1978
    nqp_decontainerize $P114, $P113
    nqp_get_sc_object $P115, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 6
    repr_get_attr_obj $P1987, $P114, $P115, "%!cache", 12
    unless_null $P1987, vivify_874
    $P1987 = root_new ['parrot';'Hash']
  vivify_874:
    set $P116, $P1987[$P112]
    unless_null $P116, vivify_875
    new $P116, "Undef"
  vivify_875:
    set $P107, $P116
  if_1985_end:
.annotate 'line', 1081
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "_block1990"  :subid("182_1335114075.00898") :outer("119_1335114075.00898")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1090
    .const 'Sub' $P2027 = "100_1335114075.00898" 
    capture_lex $P2027
    .const 'Sub' $P2024 = "99_1335114075.00898" 
    capture_lex $P2024
    .const 'Sub' $P2020 = "98_1335114075.00898" 
    capture_lex $P2020
    .const 'Sub' $P2015 = "97_1335114075.00898" 
    capture_lex $P2015
    .const 'Sub' $P2010 = "96_1335114075.00898" 
    capture_lex $P2010
    .const 'Sub' $P2004 = "95_1335114075.00898" 
    capture_lex $P2004
    .const 'Sub' $P2001 = "94_1335114075.00898" 
    capture_lex $P2001
    .const 'Sub' $P1997 = "93_1335114075.00898" 
    capture_lex $P1997
    .const 'Sub' $P1995 = "92_1335114075.00898" 
    capture_lex $P1995
.annotate 'line', 1094
    new $P100, "Undef"
    set $P1992, $P100
    .lex "$archetypes", $P1992
    .lex "$?PACKAGE", $P1993
    .lex "$?CLASS", $P1994
    find_lex $P101, "Archetypes"
    $P102 = $P101."new"(1 :named("nominal"))
    set $P1992, $P102
.annotate 'line', 1135
    .const 'Sub' $P2027 = "100_1335114075.00898" 
    newclosure $P2030, $P2027
.annotate 'line', 1090
    .return ($P2030)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "archetypes" :anon :subid("92_1335114075.00898") :outer("182_1335114075.00898")
    .param pmc param_1996
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1095
    .lex "self", param_1996
    find_lex $P101, "$archetypes"
    unless_null $P101, vivify_876
    new $P101, "Undef"
  vivify_876:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "new" :anon :subid("93_1335114075.00898") :outer("182_1335114075.00898")
    .param pmc param_1998
    .param pmc param_1999 :optional :named("name")
    .param int has_param_1999 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1099
    .lex "self", param_1998
    if has_param_1999, optparam_877
    new $P101, "Undef"
    set param_1999, $P101
  optparam_877:
    .lex "$name", param_1999
.annotate 'line', 1100
    new $P102, "Undef"
    set $P2000, $P102
    .lex "$obj", $P2000
    set $P103, param_1998
    nqp_decontainerize $P104, $P103
    repr_instance_of $P105, $P104
    set $P2000, $P105
.annotate 'line', 1101
    set $P103, $P2000
    unless_null $P103, vivify_878
    new $P103, "Undef"
  vivify_878:
    set $P104, param_1999
    unless_null $P104, vivify_879
    new $P104, "Undef"
  vivify_879:
    $P103."BUILD"($P104 :named("name"))
.annotate 'line', 1099
    set $P103, $P2000
    unless_null $P103, vivify_880
    new $P103, "Undef"
  vivify_880:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "BUILD" :anon :subid("94_1335114075.00898") :outer("182_1335114075.00898")
    .param pmc param_2002
    .param pmc param_2003 :optional :named("name")
    .param int has_param_2003 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1105
    .lex "self", param_2002
    if has_param_2003, optparam_881
    new $P101, "Undef"
    set param_2003, $P101
  optparam_881:
    .lex "$name", param_2003
.annotate 'line', 1106
    set $P102, param_2003
    unless_null $P102, vivify_882
    new $P102, "Undef"
  vivify_882:
    set $P103, param_2002
    nqp_decontainerize $P104, $P103
    nqp_get_sc_object $P105, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 7
    repr_bind_attr_obj $P104, $P105, "$!name", 0, $P102
.annotate 'line', 1105
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "new_type" :anon :subid("95_1335114075.00898") :outer("182_1335114075.00898")
    .param pmc param_2005
    .param pmc param_2007 :named("repr")
    .param pmc param_2006 :optional :named("name")
    .param int has_param_2006 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1112
    .lex "self", param_2005
    if has_param_2006, optparam_883
    new $P101, "String"
    assign $P101, "<anon>"
    set param_2006, $P101
  optparam_883:
    .lex "$name", param_2006
    .lex "$repr", param_2007
.annotate 'line', 1113
    new $P102, "Undef"
    set $P2008, $P102
    .lex "$metaclass", $P2008
    set $P103, param_2005
    nqp_decontainerize $P104, $P103
    set $P105, param_2006
    unless_null $P105, vivify_884
    new $P105, "Undef"
  vivify_884:
    $P106 = $P104."new"($P105 :named("name"))
    set $P2008, $P106
.annotate 'line', 1115
    set $P103, $P2008
    unless_null $P103, vivify_885
    new $P103, "Undef"
  vivify_885:
    set $P104, param_2007
    unless_null $P104, vivify_886
    new $P104, "Undef"
  vivify_886:
    set $S100, $P104
    repr_type_object_for $P105, $P103, $S100
    $P2009 = root_new ['parrot';'Hash']
    set_who $P105, $P2009
.annotate 'line', 1112
    .return ($P105)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_method" :anon :subid("96_1335114075.00898") :outer("182_1335114075.00898")
    .param pmc param_2011
    .param pmc param_2012
    .param pmc param_2013
    .param pmc param_2014
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1119
    .lex "self", param_2011
    .lex "$obj", param_2012
    .lex "$name", param_2013
    .lex "$code_obj", param_2014
.annotate 'line', 1120
    die "Native types may not have methods (must be boxed to call method)"
.annotate 'line', 1119
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_multi_method" :anon :subid("97_1335114075.00898") :outer("182_1335114075.00898")
    .param pmc param_2016
    .param pmc param_2017
    .param pmc param_2018
    .param pmc param_2019
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1123
    .lex "self", param_2016
    .lex "$obj", param_2017
    .lex "$name", param_2018
    .lex "$code_obj", param_2019
.annotate 'line', 1124
    die "Native types may not have methods (must be boxed to call method)"
.annotate 'line', 1123
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_attribute" :anon :subid("98_1335114075.00898") :outer("182_1335114075.00898")
    .param pmc param_2021
    .param pmc param_2022
    .param pmc param_2023
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1127
    .lex "self", param_2021
    .lex "$obj", param_2022
    .lex "$meta_attr", param_2023
.annotate 'line', 1128
    die "Native types may not have attributes"
.annotate 'line', 1127
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "compose" :anon :subid("99_1335114075.00898") :outer("182_1335114075.00898")
    .param pmc param_2025
    .param pmc param_2026
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1131
    .lex "self", param_2025
    .lex "$obj", param_2026
.annotate 'line', 1132
    new $P101, "Float"
    assign $P101, 1
    set $P102, param_2025
    nqp_decontainerize $P103, $P102
    nqp_get_sc_object $P104, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 7
    repr_bind_attr_obj $P103, $P104, "$!composed", 1, $P101
.annotate 'line', 1131
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "name" :anon :subid("100_1335114075.00898") :outer("182_1335114075.00898")
    .param pmc param_2028
    .param pmc param_2029
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1135
    .lex "self", param_2028
    .lex "$obj", param_2029
    set $P101, param_2028
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 7
    repr_get_attr_obj $P104, $P102, $P103, "$!name", 0
    unless_null $P104, vivify_887
    new $P104, "Undef"
  vivify_887:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2031"  :subid("183_1335114075.00898") :outer("119_1335114075.00898")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1141
    .const 'Sub' $P2080 = "109_1335114075.00898" 
    capture_lex $P2080
    .const 'Sub' $P2077 = "108_1335114075.00898" 
    capture_lex $P2077
    .const 'Sub' $P2074 = "107_1335114075.00898" 
    capture_lex $P2074
    .const 'Sub' $P2072 = "106_1335114075.00898" 
    capture_lex $P2072
    .const 'Sub' $P2070 = "105_1335114075.00898" 
    capture_lex $P2070
    .const 'Sub' $P2067 = "104_1335114075.00898" 
    capture_lex $P2067
    .const 'Sub' $P2065 = "103_1335114075.00898" 
    capture_lex $P2065
    .const 'Sub' $P2059 = "102_1335114075.00898" 
    capture_lex $P2059
    .const 'Sub' $P2051 = "101_1335114075.00898" 
    capture_lex $P2051
    .const 'Sub' $P2034 = "184_1335114075.00898" 
    capture_lex $P2034
.annotate 'line', 1212
    .const 'Sub' $P2034 = "184_1335114075.00898" 
    newclosure $P2048, $P2034
    set $P2033, $P2048
    .lex "has_method", $P2033
.annotate 'line', 1141
    .lex "$?PACKAGE", $P2049
    .lex "$?CLASS", $P2050
    set $P101, $P2033
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "has_method"  :subid("184_1335114075.00898") :outer("183_1335114075.00898")
    .param pmc param_2037
    .param pmc param_2038
    .param pmc param_2039
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1212
    .const 'Sub' $P2044 = "185_1335114075.00898" 
    capture_lex $P2044
    new $P2036, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P2036, control_2035
    push_eh $P2036
    .lex "$target", param_2037
    .lex "$name", param_2038
    .lex "$local", param_2039
.annotate 'line', 1213
    $P2041 = root_new ['parrot';'ResizablePMCArray']
    set $P2040, $P2041
    .lex "@methods", $P2040
    set $P100, param_2037
    unless_null $P100, vivify_888
    new $P100, "Undef"
  vivify_888:
    get_how $P101, $P100
    set $P102, param_2037
    unless_null $P102, vivify_889
    new $P102, "Undef"
  vivify_889:
    set $P103, param_2039
    unless_null $P103, vivify_890
    new $P103, "Undef"
  vivify_890:
    $P104 = $P101."methods"($P102, $P103 :named("local"))
    set $P2040, $P104
.annotate 'line', 1214
    set $P2042, $P2040
    unless_null $P2042, vivify_891
    $P2042 = root_new ['parrot';'ResizablePMCArray']
  vivify_891:
    defined $I100, $P2042
    unless $I100, for_undef_892
    iter $P100, $P2042
    new $P103, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P103, loop2047_handler
    push_eh $P103
  loop2047_test:
    unless $P100, loop2047_done
    shift $P101, $P100
  loop2047_redo:
    .const 'Sub' $P2044 = "185_1335114075.00898" 
    capture_lex $P2044
    $P2044($P101)
  loop2047_next:
    goto loop2047_test
  loop2047_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P104, exception, 'type'
    eq $P104, .CONTROL_LOOP_NEXT, loop2047_next
    eq $P104, .CONTROL_LOOP_REDO, loop2047_redo
  loop2047_done:
    pop_eh 
  for_undef_892:
.annotate 'line', 1217
    new $P100, "Exception"
    set $P100['type'], .CONTROL_RETURN
    new $P101, "Float"
    assign $P101, 0
    setattribute $P100, 'payload', $P101
    throw $P100
.annotate 'line', 1212
    .return ()
  control_2035:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P100, exception, "payload"
    .return ($P100)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "_block2043"  :anon :subid("185_1335114075.00898") :outer("184_1335114075.00898")
    .param pmc param_2045
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1214
    .lex "$_", param_2045
.annotate 'line', 1215
    find_lex $P103, "$_"
    unless_null $P103, vivify_893
    new $P103, "Undef"
  vivify_893:
    set $S100, $P103
    find_lex $P104, "$name"
    unless_null $P104, vivify_894
    new $P104, "Undef"
  vivify_894:
    set $S101, $P104
    iseq $I101, $S100, $S101
    if $I101, if_2046
    new $P102, 'Integer'
    set $P102, $I101
    goto if_2046_end
  if_2046:
    new $P105, "Exception"
    set $P105['type'], .CONTROL_RETURN
    new $P106, "Float"
    assign $P106, 1
    setattribute $P105, 'payload', $P106
    throw $P105
  if_2046_end:
.annotate 'line', 1214
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "new" :anon :subid("101_1335114075.00898") :outer("183_1335114075.00898")
    .param pmc param_2052
    .param pmc param_2053 :named("name")
    .param pmc param_2054 :optional :named("box_target")
    .param int has_param_2054 :opt_flag
    .param pmc param_2055 :slurpy :named
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1147
    .lex "self", param_2052
    .lex "$name", param_2053
    if has_param_2054, optparam_895
    new $P101, "Undef"
    set param_2054, $P101
  optparam_895:
    .lex "$box_target", param_2054
    .lex "%extra", param_2055
.annotate 'line', 1148
    new $P102, "Undef"
    set $P2056, $P102
    .lex "$attr", $P2056
    set $P103, param_2052
    nqp_decontainerize $P104, $P103
    repr_instance_of $P105, $P104
    set $P2056, $P105
.annotate 'line', 1149
    set $P103, $P2056
    unless_null $P103, vivify_896
    new $P103, "Undef"
  vivify_896:
    set $P104, param_2053
    unless_null $P104, vivify_897
    new $P104, "Undef"
  vivify_897:
    set $P2057, param_2055
    unless_null $P2057, vivify_898
    $P2057 = root_new ['parrot';'Hash']
  vivify_898:
    set $P105, param_2054
    unless_null $P105, vivify_899
    new $P105, "Undef"
  vivify_899:
.annotate 'line', 1150
    set $P2058, param_2055
    unless_null $P2058, vivify_900
    $P2058 = root_new ['parrot';'Hash']
  vivify_900:
    exists $I100, $P2058["type"]
.annotate 'line', 1149
    $P103."BUILD"($P2057 :flat, $P104 :named("name"), $P105 :named("box_target"), $I100 :named("has_type"))
.annotate 'line', 1147
    set $P103, $P2056
    unless_null $P103, vivify_901
    new $P103, "Undef"
  vivify_901:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "BUILD" :anon :subid("102_1335114075.00898") :outer("183_1335114075.00898")
    .param pmc param_2060
    .param pmc param_2061 :optional :named("name")
    .param int has_param_2061 :opt_flag
    .param pmc param_2062 :optional :named("type")
    .param int has_param_2062 :opt_flag
    .param pmc param_2063 :optional :named("has_type")
    .param int has_param_2063 :opt_flag
    .param pmc param_2064 :optional :named("box_target")
    .param int has_param_2064 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1154
    .lex "self", param_2060
    if has_param_2061, optparam_902
    new $P101, "Undef"
    set param_2061, $P101
  optparam_902:
    .lex "$name", param_2061
    if has_param_2062, optparam_903
    new $P102, "Undef"
    set param_2062, $P102
  optparam_903:
    .lex "$type", param_2062
    if has_param_2063, optparam_904
    new $P103, "Undef"
    set param_2063, $P103
  optparam_904:
    .lex "$has_type", param_2063
    if has_param_2064, optparam_905
    new $P104, "Undef"
    set param_2064, $P104
  optparam_905:
    .lex "$box_target", param_2064
.annotate 'line', 1155
    set $P105, param_2061
    unless_null $P105, vivify_906
    new $P105, "Undef"
  vivify_906:
    set $P106, param_2060
    nqp_decontainerize $P107, $P106
    nqp_get_sc_object $P108, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 8
    repr_bind_attr_obj $P107, $P108, "$!name", 0, $P105
.annotate 'line', 1156
    set $P105, param_2062
    unless_null $P105, vivify_907
    new $P105, "Undef"
  vivify_907:
    set $P106, param_2060
    nqp_decontainerize $P107, $P106
    nqp_get_sc_object $P108, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 8
    repr_bind_attr_obj $P107, $P108, "$!type", 1, $P105
.annotate 'line', 1157
    set $P105, param_2063
    unless_null $P105, vivify_908
    new $P105, "Undef"
  vivify_908:
    set $P106, param_2060
    nqp_decontainerize $P107, $P106
    nqp_get_sc_object $P108, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 8
    repr_bind_attr_obj $P107, $P108, "$!has_type", 2, $P105
.annotate 'line', 1158
    set $P105, param_2064
    unless_null $P105, vivify_909
    new $P105, "Undef"
  vivify_909:
    set $P106, param_2060
    nqp_decontainerize $P107, $P106
    nqp_get_sc_object $P108, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 8
    repr_bind_attr_obj $P107, $P108, "$!box_target", 3, $P105
.annotate 'line', 1154
    .return ($P105)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "name" :anon :subid("103_1335114075.00898") :outer("183_1335114075.00898")
    .param pmc param_2066
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1161
    .lex "self", param_2066
    set $P101, param_2066
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 8
    repr_get_attr_obj $P104, $P102, $P103, "$!name", 0
    unless_null $P104, vivify_910
    new $P104, "Undef"
  vivify_910:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "type" :anon :subid("104_1335114075.00898") :outer("183_1335114075.00898")
    .param pmc param_2068
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1165
    .lex "self", param_2068
.annotate 'line', 1166
    set $P102, param_2068
    nqp_decontainerize $P103, $P102
    nqp_get_sc_object $P104, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 8
    repr_get_attr_obj $P105, $P103, $P104, "$!has_type", 2
    unless_null $P105, vivify_911
    new $P105, "Undef"
  vivify_911:
    if $P105, if_2069
    null $P110
    set $P101, $P110
    goto if_2069_end
  if_2069:
    set $P106, param_2068
    nqp_decontainerize $P107, $P106
    nqp_get_sc_object $P108, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 8
    repr_get_attr_obj $P109, $P107, $P108, "$!type", 1
    unless_null $P109, vivify_912
    new $P109, "Undef"
  vivify_912:
    set $P101, $P109
  if_2069_end:
.annotate 'line', 1165
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "has_accessor" :anon :subid("105_1335114075.00898") :outer("183_1335114075.00898")
    .param pmc param_2071
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1169
    .lex "self", param_2071
    .return (0)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "build_closure" :anon :subid("106_1335114075.00898") :outer("183_1335114075.00898")
    .param pmc param_2073
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1173
    .lex "self", param_2073
    .return (0)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "box_target" :anon :subid("107_1335114075.00898") :outer("183_1335114075.00898")
    .param pmc param_2075
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1177
    .lex "self", param_2075
.annotate 'line', 1178
    set $P102, param_2075
    nqp_decontainerize $P103, $P102
    nqp_get_sc_object $P104, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 8
    repr_get_attr_obj $P105, $P103, $P104, "$!box_target", 3
    unless_null $P105, vivify_913
    new $P105, "Undef"
  vivify_913:
    if $P105, if_2076
    new $P107, "Float"
    assign $P107, 0
    set $P101, $P107
    goto if_2076_end
  if_2076:
    new $P106, "Float"
    assign $P106, 1
    set $P101, $P106
  if_2076_end:
.annotate 'line', 1177
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "compose" :anon :subid("108_1335114075.00898") :outer("183_1335114075.00898")
    .param pmc param_2078
    .param pmc param_2079
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1181
    .lex "self", param_2078
    .lex "$obj", param_2079
    set $P101, param_2079
    unless_null $P101, vivify_914
    new $P101, "Undef"
  vivify_914:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "has_mutator" :anon :subid("109_1335114075.00898") :outer("183_1335114075.00898")
    .param pmc param_2081
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1208
    .lex "self", param_2081
.annotate 'line', 1209
    set $P101, param_2081
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 8
    repr_get_attr_obj $P104, $P102, $P103, "$!name", 0
    unless_null $P104, vivify_915
    new $P104, "Undef"
  vivify_915:
    set $S100, $P104
    new $P105, "Float"
    assign $P105, 1
    set $I100, $P105
    new $P106, "Float"
    assign $P106, 1
    set $I101, $P106
    substr $S101, $S100, $I100, $I101
    isne $I102, $S101, "!"
.annotate 'line', 1208
    .return ($I102)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "_block2082"  :subid("186_1335114075.00898") :outer("119_1335114075.00898")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1223
    .const 'Sub' $P2118 = "118_1335114075.00898" 
    capture_lex $P2118
    .const 'Sub' $P2115 = "117_1335114075.00898" 
    capture_lex $P2115
    .const 'Sub' $P2111 = "116_1335114075.00898" 
    capture_lex $P2111
    .const 'Sub' $P2106 = "115_1335114075.00898" 
    capture_lex $P2106
    .const 'Sub' $P2101 = "114_1335114075.00898" 
    capture_lex $P2101
    .const 'Sub' $P2096 = "113_1335114075.00898" 
    capture_lex $P2096
    .const 'Sub' $P2093 = "112_1335114075.00898" 
    capture_lex $P2093
    .const 'Sub' $P2089 = "111_1335114075.00898" 
    capture_lex $P2089
    .const 'Sub' $P2087 = "110_1335114075.00898" 
    capture_lex $P2087
.annotate 'line', 1227
    new $P100, "Undef"
    set $P2084, $P100
    .lex "$archetypes", $P2084
    .lex "$?PACKAGE", $P2085
    .lex "$?CLASS", $P2086
    find_lex $P101, "Archetypes"
    $P102 = $P101."new"()
    set $P2084, $P102
.annotate 'line', 1269
    .const 'Sub' $P2118 = "118_1335114075.00898" 
    newclosure $P2121, $P2118
.annotate 'line', 1223
    .return ($P2121)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "archetypes" :anon :subid("110_1335114075.00898") :outer("186_1335114075.00898")
    .param pmc param_2088
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1228
    .lex "self", param_2088
    find_lex $P101, "$archetypes"
    unless_null $P101, vivify_916
    new $P101, "Undef"
  vivify_916:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "new" :anon :subid("111_1335114075.00898") :outer("186_1335114075.00898")
    .param pmc param_2090
    .param pmc param_2091 :optional :named("name")
    .param int has_param_2091 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1232
    .lex "self", param_2090
    if has_param_2091, optparam_917
    new $P101, "Undef"
    set param_2091, $P101
  optparam_917:
    .lex "$name", param_2091
.annotate 'line', 1233
    new $P102, "Undef"
    set $P2092, $P102
    .lex "$obj", $P2092
    set $P103, param_2090
    nqp_decontainerize $P104, $P103
    repr_instance_of $P105, $P104
    set $P2092, $P105
.annotate 'line', 1234
    set $P103, $P2092
    unless_null $P103, vivify_918
    new $P103, "Undef"
  vivify_918:
    set $P104, param_2091
    unless_null $P104, vivify_919
    new $P104, "Undef"
  vivify_919:
    $P103."BUILD"($P104 :named("name"))
.annotate 'line', 1232
    set $P103, $P2092
    unless_null $P103, vivify_920
    new $P103, "Undef"
  vivify_920:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "BUILD" :anon :subid("112_1335114075.00898") :outer("186_1335114075.00898")
    .param pmc param_2094
    .param pmc param_2095 :optional :named("name")
    .param int has_param_2095 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1238
    .lex "self", param_2094
    if has_param_2095, optparam_921
    new $P101, "Undef"
    set param_2095, $P101
  optparam_921:
    .lex "$name", param_2095
.annotate 'line', 1239
    set $P102, param_2095
    unless_null $P102, vivify_922
    new $P102, "Undef"
  vivify_922:
    set $P103, param_2094
    nqp_decontainerize $P104, $P103
    nqp_get_sc_object $P105, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 9
    repr_bind_attr_obj $P104, $P105, "$!name", 0, $P102
.annotate 'line', 1238
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "new_type" :anon :subid("113_1335114075.00898") :outer("186_1335114075.00898")
    .param pmc param_2097
    .param pmc param_2098 :optional :named("name")
    .param int has_param_2098 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1244
    .lex "self", param_2097
    if has_param_2098, optparam_923
    new $P101, "String"
    assign $P101, "<anon>"
    set param_2098, $P101
  optparam_923:
    .lex "$name", param_2098
.annotate 'line', 1245
    new $P102, "Undef"
    set $P2099, $P102
    .lex "$metaclass", $P2099
    set $P103, param_2097
    nqp_decontainerize $P104, $P103
    set $P105, param_2098
    unless_null $P105, vivify_924
    new $P105, "Undef"
  vivify_924:
    $P106 = $P104."new"($P105 :named("name"))
    set $P2099, $P106
.annotate 'line', 1247
    set $P103, $P2099
    unless_null $P103, vivify_925
    new $P103, "Undef"
  vivify_925:
    new $P104, "String"
    assign $P104, "Uninstantiable"
    set $S100, $P104
    repr_type_object_for $P105, $P103, $S100
    $P2100 = root_new ['parrot';'Hash']
    set_who $P105, $P2100
.annotate 'line', 1244
    .return ($P105)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_method" :anon :subid("114_1335114075.00898") :outer("186_1335114075.00898")
    .param pmc param_2102
    .param pmc param_2103
    .param pmc param_2104
    .param pmc param_2105
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1251
    .lex "self", param_2102
    .lex "$obj", param_2103
    .lex "$name", param_2104
    .lex "$code_obj", param_2105
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_multi_method" :anon :subid("115_1335114075.00898") :outer("186_1335114075.00898")
    .param pmc param_2107
    .param pmc param_2108
    .param pmc param_2109
    .param pmc param_2110
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1257
    .lex "self", param_2107
    .lex "$obj", param_2108
    .lex "$name", param_2109
    .lex "$code_obj", param_2110
.annotate 'line', 1258
    die "Modules may not have methods"
.annotate 'line', 1257
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_attribute" :anon :subid("116_1335114075.00898") :outer("186_1335114075.00898")
    .param pmc param_2112
    .param pmc param_2113
    .param pmc param_2114
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1261
    .lex "self", param_2112
    .lex "$obj", param_2113
    .lex "$meta_attr", param_2114
.annotate 'line', 1262
    die "Modules may not have attributes"
.annotate 'line', 1261
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "compose" :anon :subid("117_1335114075.00898") :outer("186_1335114075.00898")
    .param pmc param_2116
    .param pmc param_2117
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1265
    .lex "self", param_2116
    .lex "$obj", param_2117
.annotate 'line', 1266
    new $P101, "Float"
    assign $P101, 1
    set $P102, param_2116
    nqp_decontainerize $P103, $P102
    nqp_get_sc_object $P104, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 9
    repr_bind_attr_obj $P103, $P104, "$!composed", 1, $P101
.annotate 'line', 1265
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "name" :anon :subid("118_1335114075.00898") :outer("186_1335114075.00898")
    .param pmc param_2119
    .param pmc param_2120
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1269
    .lex "self", param_2119
    .lex "$obj", param_2120
    set $P101, param_2119
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "02EC37F1F019DB2DB829D804DB1E78E43B247036-1335114074.72126", 9
    repr_get_attr_obj $P104, $P102, $P103, "$!name", 0
    unless_null $P104, vivify_926
    new $P104, "Undef"
  vivify_926:
    .return ($P104)
.end


.HLL "nqp"

.namespace []
.sub "_block2122"  :anon :subid("187_1335114075.00898") :outer("119_1335114075.00898")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1277
    .lex "$?PACKAGE", $P2124
    .lex "$?CLASS", $P2125
.annotate 'line', 1278
    find_lex $P100, "NQPModuleHOW"
    set $P101, $P2124
    unless_null $P101, vivify_927
    new $P101, "Undef"
    set $P2124, $P101
  vivify_927:
    get_who $P102, $P101
    set $P102["module"], $P100
.annotate 'line', 1279
    find_lex $P100, "NQPClassHOW"
    set $P101, $P2124
    unless_null $P101, vivify_928
    new $P101, "Undef"
    set $P2124, $P101
  vivify_928:
    get_who $P102, $P101
    set $P102["class"], $P100
.annotate 'line', 1280
    find_lex $P100, "NQPAttribute"
    set $P101, $P2124
    unless_null $P101, vivify_929
    new $P101, "Undef"
    set $P2124, $P101
  vivify_929:
    get_who $P102, $P101
    set $P102["class-attr"], $P100
.annotate 'line', 1281
    find_lex $P100, "NQPClassHOW"
    set $P101, $P2124
    unless_null $P101, vivify_930
    new $P101, "Undef"
    set $P2124, $P101
  vivify_930:
    get_who $P102, $P101
    set $P102["grammar"], $P100
.annotate 'line', 1282
    find_lex $P100, "NQPAttribute"
    set $P101, $P2124
    unless_null $P101, vivify_931
    new $P101, "Undef"
    set $P2124, $P101
  vivify_931:
    get_who $P102, $P101
    set $P102["grammar-attr"], $P100
.annotate 'line', 1283
    find_lex $P100, "NQPParametricRoleHOW"
    set $P101, $P2124
    unless_null $P101, vivify_932
    new $P101, "Undef"
    set $P2124, $P101
  vivify_932:
    get_who $P102, $P101
    set $P102["role"], $P100
.annotate 'line', 1284
    find_lex $P100, "NQPAttribute"
    set $P101, $P2124
    unless_null $P101, vivify_933
    new $P101, "Undef"
    set $P2124, $P101
  vivify_933:
    get_who $P102, $P101
    set $P102["role-attr"], $P100
.annotate 'line', 1285
    find_lex $P100, "NQPNativeHOW"
    set $P101, $P2124
    unless_null $P101, vivify_934
    new $P101, "Undef"
    set $P2124, $P101
  vivify_934:
    get_who $P102, $P101
    set $P102["native"], $P100
.annotate 'line', 1277
    .return ($P100)
.end


.HLL "nqp"

.namespace []
.sub "_block2127" :load :anon :subid("188_1335114075.00898")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1
    .const '' $P2129 = "119_1335114075.00898" 
    $P106 = $P2129()
    .return ($P106)
.end

