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
.sub "_block1000"  :anon :subid("119_1334918351.99")
    .param pmc param_1002 :slurpy
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 0
    .const 'Sub' $P2123 = "187_1334918351.99" 
    capture_lex $P2123
    .const 'Sub' $P2115 = "185_1334918351.99" 
    capture_lex $P2115
    .const 'Sub' $P2075 = "184_1334918351.99" 
    capture_lex $P2075
    .const 'Sub' $P2024 = "181_1334918351.99" 
    capture_lex $P2024
    .const 'Sub' $P1983 = "180_1334918351.99" 
    capture_lex $P1983
    .const 'Sub' $P1491 = "149_1334918351.99" 
    capture_lex $P1491
    .const 'Sub' $P1353 = "142_1334918351.99" 
    capture_lex $P1353
    .const 'Sub' $P1282 = "134_1334918351.99" 
    capture_lex $P1282
    .const 'Sub' $P1150 = "130_1334918351.99" 
    capture_lex $P1150
    .const 'Sub' $P1050 = "121_1334918351.99" 
    capture_lex $P1050
    .const 'Sub' $P1016 = "120_1334918351.99" 
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
    .const 'Sub' $P1016 = "120_1334918351.99" 
    capture_lex $P1016
    $P1016()
.annotate 'line', 72
    .const 'Sub' $P1050 = "121_1334918351.99" 
    capture_lex $P1050
    $P1050()
.annotate 'line', 164
    .const 'Sub' $P1150 = "130_1334918351.99" 
    capture_lex $P1150
    $P1150()
.annotate 'line', 317
    .const 'Sub' $P1282 = "134_1334918351.99" 
    capture_lex $P1282
    $P1282()
.annotate 'line', 390
    .const 'Sub' $P1353 = "142_1334918351.99" 
    capture_lex $P1353
    $P1353()
.annotate 'line', 567
    .const 'Sub' $P1491 = "149_1334918351.99" 
    capture_lex $P1491
    $P1491()
.annotate 'line', 1086
    .const 'Sub' $P1983 = "180_1334918351.99" 
    capture_lex $P1983
    $P1983()
.annotate 'line', 1137
    .const 'Sub' $P2024 = "181_1334918351.99" 
    capture_lex $P2024
    $P2024()
.annotate 'line', 1219
    .const 'Sub' $P2075 = "184_1334918351.99" 
    capture_lex $P2075
    $P2075()
.annotate 'line', 1273
    .const 'Sub' $P2115 = "185_1334918351.99" 
    capture_lex $P2115
    $P2115()
.annotate 'line', 1
    set $P101, param_1002
    if $P101, if_2118
    set $P100, $P101
    goto if_2118_end
  if_2118:
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P102, "ModuleLoader"
    getinterp $P103
    set $P104, $P103["context"]
    $P105 = $P102."set_mainline_module"($P104)
    set $P100, $P105
  if_2118_end:
    .return ($P100)
    .const 'Sub' $P2120 = "186_1334918351.99" 
    .return ($P2120)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post188") :outer("119_1334918351.99")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 0
    .const 'Sub' $P1001 = "119_1334918351.99" 
    .local pmc block
    set block, $P1001
    nqp_dynop_setup 
    nqp_bigint_setup 
    getinterp $P107
    get_class $P108, "LexPad"
    get_class $P109, "NQPLexPad"
    $P107."hll_map"($P108, $P109)
    nqp_create_sc $P110, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944"
    .local pmc cur_sc
    set cur_sc, $P110
    cur_sc."set_description"("src\\stage2\\gen\\nqp-mo.pm")
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
    push string_heap, "vv"
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
    push string_heap, "P"
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
    push string_heap, "Captureproxy"
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
    push string_heap, "Captureproxy"
    push string_heap, "archetypes"
    push string_heap, "new"
    push string_heap, "BUILD"
    push string_heap, "new_type"
    push string_heap, "add_method"
    push string_heap, "add_multi_method"
    push string_heap, "add_attribute"
    push string_heap, "compose"
    push string_heap, "name"
    push string_heap, "@attributes"
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
    .const 'Sub' $P2123 = "187_1334918351.99" 
    capture_lex $P2123
    $P113 = $P2123()
    nqp_deserialize_sc $S100, cur_sc, string_heap, $P113
    .const 'LexInfo' $P2233 = "119_1334918351.99" 
    nqp_get_sc_object $P114, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 0
    $P2233."set_static_lexpad_value"("GLOBALish", $P114)
    .const 'LexInfo' $P2234 = "119_1334918351.99" 
    $P2234."finish_static_lexpad"()
    .const 'LexInfo' $P2235 = "119_1334918351.99" 
    nqp_get_sc_object $P114, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 0
    $P2235."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'LexInfo' $P2236 = "119_1334918351.99" 
    $P2236."finish_static_lexpad"()
    .const 'LexInfo' $P2237 = "119_1334918351.99" 
    nqp_get_sc_object $P114, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 1
    $P2237."set_static_lexpad_value"("Archetypes", $P114)
    .const 'LexInfo' $P2238 = "119_1334918351.99" 
    $P2238."finish_static_lexpad"()
    .const 'LexInfo' $P2239 = "120_1334918351.99" 
    nqp_get_sc_object $P114, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 1
    $P2239."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'LexInfo' $P2240 = "120_1334918351.99" 
    $P2240."finish_static_lexpad"()
    .const 'LexInfo' $P2241 = "120_1334918351.99" 
    nqp_get_sc_object $P114, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 1
    $P2241."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'LexInfo' $P2242 = "120_1334918351.99" 
    $P2242."finish_static_lexpad"()
    .const 'LexInfo' $P2243 = "119_1334918351.99" 
    nqp_get_sc_object $P114, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 2
    $P2243."set_static_lexpad_value"("RoleToRoleApplier", $P114)
    .const 'LexInfo' $P2244 = "119_1334918351.99" 
    $P2244."finish_static_lexpad"()
    .const 'LexInfo' $P2245 = "121_1334918351.99" 
    nqp_get_sc_object $P114, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 2
    $P2245."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'LexInfo' $P2246 = "121_1334918351.99" 
    $P2246."finish_static_lexpad"()
    .const 'LexInfo' $P2247 = "121_1334918351.99" 
    nqp_get_sc_object $P114, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 2
    $P2247."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'LexInfo' $P2248 = "121_1334918351.99" 
    $P2248."finish_static_lexpad"()
    .const 'LexInfo' $P2249 = "119_1334918351.99" 
    nqp_get_sc_object $P114, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 3
    $P2249."set_static_lexpad_value"("NQPConcreteRoleHOW", $P114)
    .const 'LexInfo' $P2250 = "119_1334918351.99" 
    $P2250."finish_static_lexpad"()
    .const 'LexInfo' $P2251 = "130_1334918351.99" 
    nqp_get_sc_object $P114, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 3
    $P2251."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'LexInfo' $P2252 = "130_1334918351.99" 
    $P2252."finish_static_lexpad"()
    .const 'LexInfo' $P2253 = "130_1334918351.99" 
    nqp_get_sc_object $P114, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 3
    $P2253."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'LexInfo' $P2254 = "130_1334918351.99" 
    $P2254."finish_static_lexpad"()
    .const 'LexInfo' $P2255 = "119_1334918351.99" 
    nqp_get_sc_object $P114, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 4
    $P2255."set_static_lexpad_value"("RoleToClassApplier", $P114)
    .const 'LexInfo' $P2256 = "119_1334918351.99" 
    $P2256."finish_static_lexpad"()
    .const 'LexInfo' $P2257 = "134_1334918351.99" 
    nqp_get_sc_object $P114, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 4
    $P2257."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'LexInfo' $P2258 = "134_1334918351.99" 
    $P2258."finish_static_lexpad"()
    .const 'LexInfo' $P2259 = "134_1334918351.99" 
    nqp_get_sc_object $P114, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 4
    $P2259."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'LexInfo' $P2260 = "134_1334918351.99" 
    $P2260."finish_static_lexpad"()
    .const 'LexInfo' $P2261 = "119_1334918351.99" 
    nqp_get_sc_object $P114, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 5
    $P2261."set_static_lexpad_value"("NQPParametricRoleHOW", $P114)
    .const 'LexInfo' $P2262 = "119_1334918351.99" 
    $P2262."finish_static_lexpad"()
    .const 'LexInfo' $P2263 = "142_1334918351.99" 
    nqp_get_sc_object $P114, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 5
    $P2263."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'LexInfo' $P2264 = "142_1334918351.99" 
    $P2264."finish_static_lexpad"()
    .const 'LexInfo' $P2265 = "142_1334918351.99" 
    nqp_get_sc_object $P114, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 5
    $P2265."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'LexInfo' $P2266 = "142_1334918351.99" 
    $P2266."finish_static_lexpad"()
    .const 'LexInfo' $P2267 = "119_1334918351.99" 
    nqp_get_sc_object $P114, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    $P2267."set_static_lexpad_value"("NQPClassHOW", $P114)
    .const 'LexInfo' $P2268 = "119_1334918351.99" 
    $P2268."finish_static_lexpad"()
    .const 'LexInfo' $P2269 = "149_1334918351.99" 
    nqp_get_sc_object $P114, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    $P2269."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'LexInfo' $P2270 = "149_1334918351.99" 
    $P2270."finish_static_lexpad"()
    .const 'LexInfo' $P2271 = "149_1334918351.99" 
    nqp_get_sc_object $P114, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    $P2271."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'LexInfo' $P2272 = "149_1334918351.99" 
    $P2272."finish_static_lexpad"()
    .const 'LexInfo' $P2273 = "119_1334918351.99" 
    nqp_get_sc_object $P114, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 7
    $P2273."set_static_lexpad_value"("NQPNativeHOW", $P114)
    .const 'LexInfo' $P2274 = "119_1334918351.99" 
    $P2274."finish_static_lexpad"()
    .const 'LexInfo' $P2275 = "180_1334918351.99" 
    nqp_get_sc_object $P114, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 7
    $P2275."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'LexInfo' $P2276 = "180_1334918351.99" 
    $P2276."finish_static_lexpad"()
    .const 'LexInfo' $P2277 = "180_1334918351.99" 
    nqp_get_sc_object $P114, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 7
    $P2277."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'LexInfo' $P2278 = "180_1334918351.99" 
    $P2278."finish_static_lexpad"()
    .const 'LexInfo' $P2279 = "119_1334918351.99" 
    nqp_get_sc_object $P114, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 8
    $P2279."set_static_lexpad_value"("NQPAttribute", $P114)
    .const 'LexInfo' $P2280 = "119_1334918351.99" 
    $P2280."finish_static_lexpad"()
    .const 'LexInfo' $P2281 = "181_1334918351.99" 
    nqp_get_sc_object $P114, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 8
    $P2281."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'LexInfo' $P2282 = "181_1334918351.99" 
    $P2282."finish_static_lexpad"()
    .const 'LexInfo' $P2283 = "181_1334918351.99" 
    nqp_get_sc_object $P114, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 8
    $P2283."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'LexInfo' $P2284 = "181_1334918351.99" 
    $P2284."finish_static_lexpad"()
    .const 'LexInfo' $P2285 = "119_1334918351.99" 
    nqp_get_sc_object $P114, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 9
    $P2285."set_static_lexpad_value"("NQPModuleHOW", $P114)
    .const 'LexInfo' $P2286 = "119_1334918351.99" 
    $P2286."finish_static_lexpad"()
    .const 'LexInfo' $P2287 = "184_1334918351.99" 
    nqp_get_sc_object $P114, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 9
    $P2287."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'LexInfo' $P2288 = "184_1334918351.99" 
    $P2288."finish_static_lexpad"()
    .const 'LexInfo' $P2289 = "184_1334918351.99" 
    nqp_get_sc_object $P114, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 9
    $P2289."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'LexInfo' $P2290 = "184_1334918351.99" 
    $P2290."finish_static_lexpad"()
    .const 'LexInfo' $P2291 = "119_1334918351.99" 
    nqp_get_sc_object $P114, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 10
    $P2291."set_static_lexpad_value"("EXPORTHOW", $P114)
    .const 'LexInfo' $P2292 = "119_1334918351.99" 
    $P2292."finish_static_lexpad"()
    .const 'LexInfo' $P2293 = "185_1334918351.99" 
    nqp_get_sc_object $P114, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 10
    $P2293."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'LexInfo' $P2294 = "185_1334918351.99" 
    $P2294."finish_static_lexpad"()
    .const 'LexInfo' $P2295 = "185_1334918351.99" 
    nqp_get_sc_object $P114, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 10
    $P2295."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'LexInfo' $P2296 = "185_1334918351.99" 
    $P2296."finish_static_lexpad"()
    nqp_get_sc_object $P114, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 0
    set_hll_global "GLOBAL", $P114
.end


.HLL "nqp"

.namespace []
.sub "_block2122"  :anon :subid("187_1334918351.99") :outer("119_1334918351.99")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 0
    .const 'Sub' $P2124 = "10_1334918351.99" 
    .const 'Sub' $P2125 = "11_1334918351.99" 
    .const 'Sub' $P2126 = "12_1334918351.99" 
    .const 'Sub' $P2127 = "13_1334918351.99" 
    .const 'Sub' $P2128 = "14_1334918351.99" 
    .const 'Sub' $P2129 = "15_1334918351.99" 
    .const 'Sub' $P2130 = "16_1334918351.99" 
    .const 'Sub' $P2131 = "17_1334918351.99" 
    .const 'Sub' $P2132 = "18_1334918351.99" 
    .const 'Sub' $P2133 = "19_1334918351.99" 
    .const 'Sub' $P2134 = "20_1334918351.99" 
    .const 'Sub' $P2135 = "21_1334918351.99" 
    .const 'Sub' $P2136 = "22_1334918351.99" 
    .const 'Sub' $P2137 = "23_1334918351.99" 
    .const 'Sub' $P2138 = "24_1334918351.99" 
    .const 'Sub' $P2139 = "25_1334918351.99" 
    .const 'Sub' $P2140 = "26_1334918351.99" 
    .const 'Sub' $P2141 = "27_1334918351.99" 
    .const 'Sub' $P2142 = "28_1334918351.99" 
    .const 'Sub' $P2143 = "29_1334918351.99" 
    .const 'Sub' $P2144 = "30_1334918351.99" 
    .const 'Sub' $P2145 = "31_1334918351.99" 
    .const 'Sub' $P2146 = "32_1334918351.99" 
    .const 'Sub' $P2147 = "33_1334918351.99" 
    .const 'Sub' $P2148 = "34_1334918351.99" 
    .const 'Sub' $P2149 = "35_1334918351.99" 
    .const 'Sub' $P2150 = "36_1334918351.99" 
    .const 'Sub' $P2151 = "37_1334918351.99" 
    .const 'Sub' $P2152 = "38_1334918351.99" 
    .const 'Sub' $P2153 = "39_1334918351.99" 
    .const 'Sub' $P2154 = "40_1334918351.99" 
    .const 'Sub' $P2155 = "41_1334918351.99" 
    .const 'Sub' $P2156 = "42_1334918351.99" 
    .const 'Sub' $P2157 = "43_1334918351.99" 
    .const 'Sub' $P2158 = "44_1334918351.99" 
    .const 'Sub' $P2159 = "45_1334918351.99" 
    .const 'Sub' $P2160 = "46_1334918351.99" 
    .const 'Sub' $P2161 = "47_1334918351.99" 
    .const 'Sub' $P2162 = "48_1334918351.99" 
    .const 'Sub' $P2163 = "49_1334918351.99" 
    .const 'Sub' $P2164 = "50_1334918351.99" 
    .const 'Sub' $P2165 = "51_1334918351.99" 
    .const 'Sub' $P2166 = "52_1334918351.99" 
    .const 'Sub' $P2167 = "53_1334918351.99" 
    .const 'Sub' $P2168 = "54_1334918351.99" 
    .const 'Sub' $P2169 = "55_1334918351.99" 
    .const 'Sub' $P2170 = "56_1334918351.99" 
    .const 'Sub' $P2171 = "57_1334918351.99" 
    .const 'Sub' $P2172 = "58_1334918351.99" 
    .const 'Sub' $P2173 = "59_1334918351.99" 
    .const 'Sub' $P2174 = "60_1334918351.99" 
    .const 'Sub' $P2175 = "61_1334918351.99" 
    .const 'Sub' $P2176 = "62_1334918351.99" 
    .const 'Sub' $P2177 = "63_1334918351.99" 
    .const 'Sub' $P2178 = "64_1334918351.99" 
    .const 'Sub' $P2179 = "65_1334918351.99" 
    .const 'Sub' $P2180 = "66_1334918351.99" 
    .const 'Sub' $P2181 = "67_1334918351.99" 
    .const 'Sub' $P2182 = "68_1334918351.99" 
    .const 'Sub' $P2183 = "69_1334918351.99" 
    .const 'Sub' $P2184 = "70_1334918351.99" 
    .const 'Sub' $P2185 = "71_1334918351.99" 
    .const 'Sub' $P2186 = "72_1334918351.99" 
    .const 'Sub' $P2187 = "73_1334918351.99" 
    .const 'Sub' $P2188 = "74_1334918351.99" 
    .const 'Sub' $P2189 = "75_1334918351.99" 
    .const 'Sub' $P2190 = "76_1334918351.99" 
    .const 'Sub' $P2191 = "77_1334918351.99" 
    .const 'Sub' $P2192 = "78_1334918351.99" 
    .const 'Sub' $P2193 = "79_1334918351.99" 
    .const 'Sub' $P2194 = "80_1334918351.99" 
    .const 'Sub' $P2195 = "81_1334918351.99" 
    .const 'Sub' $P2196 = "82_1334918351.99" 
    .const 'Sub' $P2197 = "83_1334918351.99" 
    .const 'Sub' $P2198 = "84_1334918351.99" 
    .const 'Sub' $P2199 = "85_1334918351.99" 
    .const 'Sub' $P2200 = "86_1334918351.99" 
    .const 'Sub' $P2201 = "87_1334918351.99" 
    .const 'Sub' $P2202 = "88_1334918351.99" 
    .const 'Sub' $P2203 = "89_1334918351.99" 
    .const 'Sub' $P2204 = "90_1334918351.99" 
    .const 'Sub' $P2205 = "91_1334918351.99" 
    .const 'Sub' $P2206 = "92_1334918351.99" 
    .const 'Sub' $P2207 = "93_1334918351.99" 
    .const 'Sub' $P2208 = "94_1334918351.99" 
    .const 'Sub' $P2209 = "95_1334918351.99" 
    .const 'Sub' $P2210 = "96_1334918351.99" 
    .const 'Sub' $P2211 = "97_1334918351.99" 
    .const 'Sub' $P2212 = "98_1334918351.99" 
    .const 'Sub' $P2213 = "99_1334918351.99" 
    .const 'Sub' $P2214 = "100_1334918351.99" 
    .const 'Sub' $P2215 = "101_1334918351.99" 
    .const 'Sub' $P2216 = "102_1334918351.99" 
    .const 'Sub' $P2217 = "103_1334918351.99" 
    .const 'Sub' $P2218 = "104_1334918351.99" 
    .const 'Sub' $P2219 = "105_1334918351.99" 
    .const 'Sub' $P2220 = "106_1334918351.99" 
    .const 'Sub' $P2221 = "107_1334918351.99" 
    .const 'Sub' $P2222 = "108_1334918351.99" 
    .const 'Sub' $P2223 = "109_1334918351.99" 
    .const 'Sub' $P2224 = "110_1334918351.99" 
    .const 'Sub' $P2225 = "111_1334918351.99" 
    .const 'Sub' $P2226 = "112_1334918351.99" 
    .const 'Sub' $P2227 = "113_1334918351.99" 
    .const 'Sub' $P2228 = "114_1334918351.99" 
    .const 'Sub' $P2229 = "115_1334918351.99" 
    .const 'Sub' $P2230 = "116_1334918351.99" 
    .const 'Sub' $P2231 = "117_1334918351.99" 
    .const 'Sub' $P2232 = "118_1334918351.99" 
    new $P112, "ResizablePMCArray"
    push $P112, $P2124
    push $P112, $P2125
    push $P112, $P2126
    push $P112, $P2127
    push $P112, $P2128
    push $P112, $P2129
    push $P112, $P2130
    push $P112, $P2131
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
    .return ($P112)
.end


.HLL "nqp"

.namespace []
.sub "_block1015"  :anon :subid("120_1334918351.99") :outer("119_1334918351.99")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 9
    .const 'Sub' $P1046 = "19_1334918351.99" 
    capture_lex $P1046
    .const 'Sub' $P1044 = "18_1334918351.99" 
    capture_lex $P1044
    .const 'Sub' $P1042 = "17_1334918351.99" 
    capture_lex $P1042
    .const 'Sub' $P1040 = "16_1334918351.99" 
    capture_lex $P1040
    .const 'Sub' $P1038 = "15_1334918351.99" 
    capture_lex $P1038
    .const 'Sub' $P1036 = "14_1334918351.99" 
    capture_lex $P1036
    .const 'Sub' $P1034 = "13_1334918351.99" 
    capture_lex $P1034
    .const 'Sub' $P1032 = "12_1334918351.99" 
    capture_lex $P1032
    .const 'Sub' $P1026 = "11_1334918351.99" 
    capture_lex $P1026
    .const 'Sub' $P1019 = "10_1334918351.99" 
    capture_lex $P1019
    .lex "$?PACKAGE", $P1017
    .lex "$?CLASS", $P1018
.annotate 'line', 68
    .const 'Sub' $P1046 = "19_1334918351.99" 
    newclosure $P1048, $P1046
.annotate 'line', 9
    .return ($P1048)
.end


.HLL "nqp"

.namespace []
.sub "new" :anon :subid("10_1334918351.99") :outer("120_1334918351.99")
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
    if has_param_1021, optparam_189
    new $P100, "Undef"
    set param_1021, $P100
  optparam_189:
    .lex "$nominal", param_1021
    if has_param_1022, optparam_190
    new $P101, "Undef"
    set param_1022, $P101
  optparam_190:
    .lex "$inheritable", param_1022
    if has_param_1023, optparam_191
    new $P102, "Undef"
    set param_1023, $P102
  optparam_191:
    .lex "$composable", param_1023
    if has_param_1024, optparam_192
    new $P103, "Undef"
    set param_1024, $P103
  optparam_192:
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
    unless_null $P105, vivify_193
    new $P105, "Undef"
  vivify_193:
    set $P106, param_1021
    unless_null $P106, vivify_194
    new $P106, "Undef"
  vivify_194:
    set $P107, param_1022
    unless_null $P107, vivify_195
    new $P107, "Undef"
  vivify_195:
    set $P108, param_1023
    unless_null $P108, vivify_196
    new $P108, "Undef"
  vivify_196:
    set $P109, param_1024
    unless_null $P109, vivify_197
    new $P109, "Undef"
  vivify_197:
    $P105."BUILD"($P106 :named("nominal"), $P107 :named("inheritable"), $P108 :named("composable"), $P109 :named("parametric"))
.annotate 'line', 47
    set $P105, $P1025
    unless_null $P105, vivify_198
    new $P105, "Undef"
  vivify_198:
    .return ($P105)
.end


.HLL "nqp"

.namespace []
.sub "BUILD" :anon :subid("11_1334918351.99") :outer("120_1334918351.99")
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
    if has_param_1028, optparam_199
    new $P100, "Undef"
    set param_1028, $P100
  optparam_199:
    .lex "$nominal", param_1028
    if has_param_1029, optparam_200
    new $P101, "Undef"
    set param_1029, $P101
  optparam_200:
    .lex "$inheritable", param_1029
    if has_param_1030, optparam_201
    new $P102, "Undef"
    set param_1030, $P102
  optparam_201:
    .lex "$composable", param_1030
    if has_param_1031, optparam_202
    new $P103, "Undef"
    set param_1031, $P103
  optparam_202:
    .lex "$parametric", param_1031
.annotate 'line', 55
    set $P104, param_1028
    unless_null $P104, vivify_203
    new $P104, "Undef"
  vivify_203:
    set $P105, param_1027
    nqp_decontainerize $P106, $P105
    nqp_get_sc_object $P107, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 1
    repr_bind_attr_obj $P106, $P107, "$!nominal", 0, $P104
.annotate 'line', 56
    set $P104, param_1029
    unless_null $P104, vivify_204
    new $P104, "Undef"
  vivify_204:
    set $P105, param_1027
    nqp_decontainerize $P106, $P105
    nqp_get_sc_object $P107, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 1
    repr_bind_attr_obj $P106, $P107, "$!inheritable", 2, $P104
.annotate 'line', 57
    set $P104, param_1030
    unless_null $P104, vivify_205
    new $P104, "Undef"
  vivify_205:
    set $P105, param_1027
    nqp_decontainerize $P106, $P105
    nqp_get_sc_object $P107, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 1
    repr_bind_attr_obj $P106, $P107, "$!composable", 4, $P104
.annotate 'line', 58
    set $P104, param_1031
    unless_null $P104, vivify_206
    new $P104, "Undef"
  vivify_206:
    set $P105, param_1027
    nqp_decontainerize $P106, $P105
    nqp_get_sc_object $P107, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 1
    repr_bind_attr_obj $P106, $P107, "$!parametric", 7, $P104
.annotate 'line', 54
    .return ($P104)
.end


.HLL "nqp"

.namespace []
.sub "nominal" :anon :subid("12_1334918351.99") :outer("120_1334918351.99")
    .param pmc param_1033
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 61
    .lex "self", param_1033
    set $P100, param_1033
    nqp_decontainerize $P101, $P100
    nqp_get_sc_object $P102, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 1
    repr_get_attr_obj $P103, $P101, $P102, "$!nominal", 0
    unless_null $P103, vivify_207
    new $P103, "Undef"
  vivify_207:
    .return ($P103)
.end


.HLL "nqp"

.namespace []
.sub "nominalizable" :anon :subid("13_1334918351.99") :outer("120_1334918351.99")
    .param pmc param_1035
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 62
    .lex "self", param_1035
    set $P100, param_1035
    nqp_decontainerize $P101, $P100
    nqp_get_sc_object $P102, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 1
    repr_get_attr_obj $P103, $P101, $P102, "$!nominalizable", 1
    unless_null $P103, vivify_208
    new $P103, "Undef"
  vivify_208:
    .return ($P103)
.end


.HLL "nqp"

.namespace []
.sub "inheritable" :anon :subid("14_1334918351.99") :outer("120_1334918351.99")
    .param pmc param_1037
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 63
    .lex "self", param_1037
    set $P100, param_1037
    nqp_decontainerize $P101, $P100
    nqp_get_sc_object $P102, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 1
    repr_get_attr_obj $P103, $P101, $P102, "$!inheritable", 2
    unless_null $P103, vivify_209
    new $P103, "Undef"
  vivify_209:
    .return ($P103)
.end


.HLL "nqp"

.namespace []
.sub "inheritalizable" :anon :subid("15_1334918351.99") :outer("120_1334918351.99")
    .param pmc param_1039
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 64
    .lex "self", param_1039
    set $P100, param_1039
    nqp_decontainerize $P101, $P100
    nqp_get_sc_object $P102, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 1
    repr_get_attr_obj $P103, $P101, $P102, "$!inheritalizable", 3
    unless_null $P103, vivify_210
    new $P103, "Undef"
  vivify_210:
    .return ($P103)
.end


.HLL "nqp"

.namespace []
.sub "composable" :anon :subid("16_1334918351.99") :outer("120_1334918351.99")
    .param pmc param_1041
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 65
    .lex "self", param_1041
    set $P100, param_1041
    nqp_decontainerize $P101, $P100
    nqp_get_sc_object $P102, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 1
    repr_get_attr_obj $P103, $P101, $P102, "$!composable", 4
    unless_null $P103, vivify_211
    new $P103, "Undef"
  vivify_211:
    .return ($P103)
.end


.HLL "nqp"

.namespace []
.sub "composalizable" :anon :subid("17_1334918351.99") :outer("120_1334918351.99")
    .param pmc param_1043
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 66
    .lex "self", param_1043
    set $P100, param_1043
    nqp_decontainerize $P101, $P100
    nqp_get_sc_object $P102, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 1
    repr_get_attr_obj $P103, $P101, $P102, "$!composalizable", 5
    unless_null $P103, vivify_212
    new $P103, "Undef"
  vivify_212:
    .return ($P103)
.end


.HLL "nqp"

.namespace []
.sub "generic" :anon :subid("18_1334918351.99") :outer("120_1334918351.99")
    .param pmc param_1045
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 67
    .lex "self", param_1045
    set $P100, param_1045
    nqp_decontainerize $P101, $P100
    nqp_get_sc_object $P102, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 1
    repr_get_attr_obj $P103, $P101, $P102, "$!generic", 6
    unless_null $P103, vivify_213
    new $P103, "Undef"
  vivify_213:
    .return ($P103)
.end


.HLL "nqp"

.namespace []
.sub "parametric" :anon :subid("19_1334918351.99") :outer("120_1334918351.99")
    .param pmc param_1047
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 68
    .lex "self", param_1047
    set $P100, param_1047
    nqp_decontainerize $P101, $P100
    nqp_get_sc_object $P102, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 1
    repr_get_attr_obj $P103, $P101, $P102, "$!parametric", 7
    unless_null $P103, vivify_214
    new $P103, "Undef"
  vivify_214:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block1049"  :subid("121_1334918351.99") :outer("119_1334918351.99")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 72
    .const 'Sub' $P1053 = "20_1334918351.99" 
    capture_lex $P1053
    .lex "$?PACKAGE", $P1051
    .lex "$?CLASS", $P1052
.annotate 'line', 73
    .const 'Sub' $P1053 = "20_1334918351.99" 
    newclosure $P1148, $P1053
.annotate 'line', 72
    .return ($P1148)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "apply" :anon :subid("20_1334918351.99") :outer("121_1334918351.99")
    .param pmc param_1056
    .param pmc param_1057
    .param pmc param_1058
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 73
    .const 'Sub' $P1123 = "127_1334918351.99" 
    capture_lex $P1123
    .const 'Sub' $P1108 = "126_1334918351.99" 
    capture_lex $P1108
    .const 'Sub' $P1102 = "125_1334918351.99" 
    capture_lex $P1102
    .const 'Sub' $P1070 = "122_1334918351.99" 
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
    unless_null $P1067, vivify_215
    $P1067 = root_new ['parrot';'Hash']
  vivify_215:
.annotate 'line', 76
    set $P1068, param_1058
    unless_null $P1068, vivify_216
    $P1068 = root_new ['parrot';'ResizablePMCArray']
  vivify_216:
    defined $I100, $P1068
    unless $I100, for_undef_217
    iter $P100, $P1068
    new $P103, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P103, loop1098_handler
    push_eh $P103
  loop1098_test:
    unless $P100, loop1098_done
    shift $P101, $P100
  loop1098_redo:
    .const 'Sub' $P1070 = "122_1334918351.99" 
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
  for_undef_217:
.annotate 'line', 73
    set $P1099, $P1061
    unless_null $P1099, vivify_241
    $P1099 = root_new ['parrot';'Hash']
  vivify_241:
.annotate 'line', 102
    set $P100, param_1057
    unless_null $P100, vivify_242
    new $P100, "Undef"
  vivify_242:
    get_how $P101, $P100
    set $P102, param_1057
    unless_null $P102, vivify_243
    new $P102, "Undef"
  vivify_243:
    $P103 = $P101."methods"($P102)
    set $P1063, $P103
.annotate 'line', 103
    set $P1100, $P1063
    unless_null $P1100, vivify_244
    $P1100 = root_new ['parrot';'ResizablePMCArray']
  vivify_244:
    defined $I100, $P1100
    unless $I100, for_undef_245
    iter $P100, $P1100
    new $P103, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P103, loop1105_handler
    push_eh $P103
  loop1105_test:
    unless $P100, loop1105_done
    shift $P101, $P100
  loop1105_redo:
    .const 'Sub' $P1102 = "125_1334918351.99" 
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
  for_undef_245:
.annotate 'line', 108
    set $P1106, $P1059
    unless_null $P1106, vivify_249
    $P1106 = root_new ['parrot';'Hash']
  vivify_249:
    defined $I100, $P1106
    unless $I100, for_undef_250
    iter $P100, $P1106
    new $P104, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P104, loop1119_handler
    push_eh $P104
  loop1119_test:
    unless $P100, loop1119_done
    shift $P101, $P100
  loop1119_redo:
    .const 'Sub' $P1108 = "126_1334918351.99" 
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
  for_undef_250:
.annotate 'line', 73
    set $P1120, $P1065
    unless_null $P1120, vivify_267
    $P1120 = root_new ['parrot';'ResizablePMCArray']
  vivify_267:
.annotate 'line', 128
    set $P1121, param_1058
    unless_null $P1121, vivify_268
    $P1121 = root_new ['parrot';'ResizablePMCArray']
  vivify_268:
    defined $I100, $P1121
    unless $I100, for_undef_269
    iter $P100, $P1121
    new $P103, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P103, loop1146_handler
    push_eh $P103
  loop1146_test:
    unless $P100, loop1146_done
    shift $P101, $P100
  loop1146_redo:
    .const 'Sub' $P1123 = "127_1334918351.99" 
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
  for_undef_269:
.annotate 'line', 157
    new $P100, "Exception"
    set $P100['type'], .CONTROL_RETURN
    set $P1147, $P1065
    unless_null $P1147, vivify_291
    $P1147 = root_new ['parrot';'ResizablePMCArray']
  vivify_291:
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
.sub "_block1069"  :anon :subid("122_1334918351.99") :outer("20_1334918351.99")
    .param pmc param_1073
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 76
    .const 'Sub' $P1076 = "123_1334918351.99" 
    capture_lex $P1076
.annotate 'line', 77
    $P1072 = root_new ['parrot';'ResizablePMCArray']
    set $P1071, $P1072
    .lex "@methods", $P1071
    .lex "$_", param_1073
    find_lex $P102, "$_"
    unless_null $P102, vivify_218
    new $P102, "Undef"
  vivify_218:
    get_how $P103, $P102
    find_lex $P104, "$_"
    unless_null $P104, vivify_219
    new $P104, "Undef"
  vivify_219:
    $P105 = $P103."methods"($P104)
    set $P1071, $P105
.annotate 'line', 78
    set $P1074, $P1071
    unless_null $P1074, vivify_220
    $P1074 = root_new ['parrot';'ResizablePMCArray']
  vivify_220:
    defined $I101, $P1074
    unless $I101, for_undef_221
    iter $P102, $P1074
    new $P108, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P108, loop1097_handler
    push_eh $P108
  loop1097_test:
    unless $P102, loop1097_done
    shift $P103, $P102
  loop1097_redo:
    .const 'Sub' $P1076 = "123_1334918351.99" 
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
  for_undef_221:
.annotate 'line', 76
    .return ($P102)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block1075"  :anon :subid("123_1334918351.99") :outer("122_1334918351.99")
    .param pmc param_1082
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 78
    .const 'Sub' $P1091 = "124_1334918351.99" 
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
    unless_null $P107, vivify_222
    new $P107, "Undef"
  vivify_222:
    set $S100, $P107
    new $P108, 'String'
    set $P108, $S100
    set $P1077, $P108
.annotate 'line', 80
    find_lex $P107, "$_"
    unless_null $P107, vivify_223
    new $P107, "Undef"
  vivify_223:
    set $P1078, $P107
.annotate 'line', 78
    set $P1083, $P1079
    unless_null $P1083, vivify_224
    $P1083 = root_new ['parrot';'ResizablePMCArray']
  vivify_224:
.annotate 'line', 82
    set $P107, $P1077
    unless_null $P107, vivify_225
    new $P107, "Undef"
  vivify_225:
    find_lex $P1085, "%meth_info"
    unless_null $P1085, vivify_226
    $P1085 = root_new ['parrot';'Hash']
  vivify_226:
    set $P108, $P1085[$P107]
    unless_null $P108, vivify_227
    new $P108, "Undef"
  vivify_227:
    defined $I102, $P108
    if $I102, if_1084
.annotate 'line', 86
    set $P1087, $P1079
    unless_null $P1087, vivify_228
    $P1087 = root_new ['parrot';'ResizablePMCArray']
  vivify_228:
    set $P109, $P1077
    unless_null $P109, vivify_229
    new $P109, "Undef"
  vivify_229:
    find_lex $P1088, "%meth_info"
    unless_null $P1088, vivify_230
    $P1088 = root_new ['parrot';'Hash']
    store_lex "%meth_info", $P1088
  vivify_230:
    set $P1088[$P109], $P1087
.annotate 'line', 85
    goto if_1084_end
  if_1084:
.annotate 'line', 83
    set $P109, $P1077
    unless_null $P109, vivify_231
    new $P109, "Undef"
  vivify_231:
    find_lex $P1086, "%meth_info"
    unless_null $P1086, vivify_232
    $P1086 = root_new ['parrot';'Hash']
  vivify_232:
    set $P110, $P1086[$P109]
    unless_null $P110, vivify_233
    new $P110, "Undef"
  vivify_233:
    set $P1079, $P110
  if_1084_end:
.annotate 'line', 88
    new $P107, "Float"
    assign $P107, 0
    set $P1081, $P107
.annotate 'line', 89
    set $P1089, $P1079
    unless_null $P1089, vivify_234
    $P1089 = root_new ['parrot';'ResizablePMCArray']
  vivify_234:
    defined $I102, $P1089
    unless $I102, for_undef_235
    iter $P107, $P1089
    new $P110, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P110, loop1094_handler
    push_eh $P110
  loop1094_test:
    unless $P107, loop1094_done
    shift $P108, $P107
  loop1094_redo:
    .const 'Sub' $P1091 = "124_1334918351.99" 
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
  for_undef_235:
.annotate 'line', 94
    set $P108, $P1081
    unless_null $P108, vivify_238
    new $P108, "Undef"
  vivify_238:
    unless $P108, unless_1095
    set $P107, $P108
    goto unless_1095_end
  unless_1095:
.annotate 'line', 95
    set $P1096, $P1079
    unless_null $P1096, vivify_239
    $P1096 = root_new ['parrot';'ResizablePMCArray']
  vivify_239:
    set $P109, $P1078
    unless_null $P109, vivify_240
    new $P109, "Undef"
  vivify_240:
    $P110 = $P1096."push"($P109)
.annotate 'line', 94
    set $P107, $P110
  unless_1095_end:
.annotate 'line', 78
    .return ($P107)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block1090"  :anon :subid("124_1334918351.99") :outer("123_1334918351.99")
    .param pmc param_1092
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 89
    .lex "$_", param_1092
.annotate 'line', 90
    find_lex $P110, "$meth"
    unless_null $P110, vivify_236
    new $P110, "Undef"
  vivify_236:
    find_lex $P111, "$_"
    unless_null $P111, vivify_237
    new $P111, "Undef"
  vivify_237:
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
.sub "_block1101"  :anon :subid("125_1334918351.99") :outer("20_1334918351.99")
    .param pmc param_1103
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 103
    .lex "$_", param_1103
.annotate 'line', 104
    find_lex $P102, "$_"
    unless_null $P102, vivify_246
    new $P102, "Undef"
  vivify_246:
    find_lex $P103, "$_"
    unless_null $P103, vivify_247
    new $P103, "Undef"
  vivify_247:
    set $S100, $P103
    find_lex $P1104, "%target_meth_info"
    unless_null $P1104, vivify_248
    $P1104 = root_new ['parrot';'Hash']
    store_lex "%target_meth_info", $P1104
  vivify_248:
    set $P1104[$S100], $P102
.annotate 'line', 103
    .return ($P102)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block1107"  :anon :subid("126_1334918351.99") :outer("20_1334918351.99")
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
    unless_null $P103, vivify_251
    new $P103, "Undef"
  vivify_251:
    set $S100, $P103
    new $P104, 'String'
    set $P104, $S100
    set $P1109, $P104
.annotate 'line', 110
    set $P103, $P1109
    unless_null $P103, vivify_252
    new $P103, "Undef"
  vivify_252:
    find_lex $P1113, "%meth_info"
    unless_null $P1113, vivify_253
    $P1113 = root_new ['parrot';'Hash']
  vivify_253:
    set $P104, $P1113[$P103]
    unless_null $P104, vivify_254
    new $P104, "Undef"
  vivify_254:
    set $P1110, $P104
.annotate 'line', 114
    set $P104, $P1109
    unless_null $P104, vivify_255
    new $P104, "Undef"
  vivify_255:
    find_lex $P1115, "%target_meth_info"
    unless_null $P1115, vivify_256
    $P1115 = root_new ['parrot';'Hash']
  vivify_256:
    set $P105, $P1115[$P104]
    unless_null $P105, vivify_257
    new $P105, "Undef"
  vivify_257:
    defined $I101, $P105
    unless $I101, unless_1114
    new $P103, 'Integer'
    set $P103, $I101
    goto unless_1114_end
  unless_1114:
.annotate 'line', 116
    set $P1117, $P1110
    unless_null $P1117, vivify_258
    $P1117 = root_new ['parrot';'ResizablePMCArray']
  vivify_258:
    set $N100, $P1117
    set $N101, 1
    iseq $I102, $N100, $N101
    if $I102, if_1116
.annotate 'line', 121
    find_lex $P107, "$target"
    unless_null $P107, vivify_259
    new $P107, "Undef"
  vivify_259:
    get_how $P108, $P107
    find_lex $P109, "$target"
    unless_null $P109, vivify_260
    new $P109, "Undef"
  vivify_260:
    set $P110, $P1109
    unless_null $P110, vivify_261
    new $P110, "Undef"
  vivify_261:
    $P111 = $P108."add_collision"($P109, $P110)
.annotate 'line', 119
    set $P106, $P111
.annotate 'line', 116
    goto if_1116_end
  if_1116:
.annotate 'line', 117
    find_lex $P107, "$target"
    unless_null $P107, vivify_262
    new $P107, "Undef"
  vivify_262:
    get_how $P108, $P107
    find_lex $P109, "$target"
    unless_null $P109, vivify_263
    new $P109, "Undef"
  vivify_263:
    set $P110, $P1109
    unless_null $P110, vivify_264
    new $P110, "Undef"
  vivify_264:
    new $P111, "Float"
    assign $P111, 0
    set $I103, $P111
    set $P1118, $P1110
    unless_null $P1118, vivify_265
    $P1118 = root_new ['parrot';'ResizablePMCArray']
  vivify_265:
    set $P112, $P1118[$I103]
    unless_null $P112, vivify_266
    new $P112, "Undef"
  vivify_266:
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
.sub "_block1122"  :anon :subid("127_1334918351.99") :outer("20_1334918351.99")
    .param pmc param_1127
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 128
    .const 'Sub' $P1130 = "128_1334918351.99" 
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
    unless_null $P103, vivify_270
    new $P103, "Undef"
  vivify_270:
    get_how $P104, $P103
    set $P1124, $P104
.annotate 'line', 132
    set $P103, $P1124
    unless_null $P103, vivify_271
    new $P103, "Undef"
  vivify_271:
    find_lex $P104, "$_"
    unless_null $P104, vivify_272
    new $P104, "Undef"
  vivify_272:
    $P105 = $P103."attributes"($P104)
    set $P1125, $P105
.annotate 'line', 133
    set $P1128, $P1125
    unless_null $P1128, vivify_273
    $P1128 = root_new ['parrot';'ResizablePMCArray']
  vivify_273:
    defined $I101, $P1128
    unless $I101, for_undef_274
    iter $P103, $P1128
    new $P108, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P108, loop1144_handler
    push_eh $P108
  loop1144_test:
    unless $P103, loop1144_done
    shift $P104, $P103
  loop1144_redo:
    .const 'Sub' $P1130 = "128_1334918351.99" 
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
  for_undef_274:
.annotate 'line', 154
    find_lex $P1145, "@all_roles"
    unless_null $P1145, vivify_289
    $P1145 = root_new ['parrot';'ResizablePMCArray']
  vivify_289:
    find_lex $P103, "$_"
    unless_null $P103, vivify_290
    new $P103, "Undef"
  vivify_290:
    $P104 = $P1145."push"($P103)
.annotate 'line', 128
    .return ($P104)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block1129"  :anon :subid("128_1334918351.99") :outer("127_1334918351.99")
    .param pmc param_1135
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 133
    .const 'Sub' $P1138 = "129_1334918351.99" 
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
    unless_null $P107, vivify_275
    new $P107, "Undef"
  vivify_275:
    set $P1131, $P107
.annotate 'line', 135
    new $P107, "Float"
    assign $P107, 0
    set $P1132, $P107
.annotate 'line', 136
    find_lex $P107, "$target"
    unless_null $P107, vivify_276
    new $P107, "Undef"
  vivify_276:
    get_how $P108, $P107
    find_lex $P109, "$target"
    unless_null $P109, vivify_277
    new $P109, "Undef"
  vivify_277:
    $P110 = $P108."attributes"($P109)
    set $P1133, $P110
.annotate 'line', 137
    set $P1136, $P1133
    unless_null $P1136, vivify_278
    $P1136 = root_new ['parrot';'ResizablePMCArray']
  vivify_278:
    defined $I102, $P1136
    unless $I102, for_undef_279
    iter $P107, $P1136
    new $P110, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P110, loop1142_handler
    push_eh $P110
  loop1142_test:
    unless $P107, loop1142_done
    shift $P108, $P107
  loop1142_redo:
    .const 'Sub' $P1138 = "129_1334918351.99" 
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
  for_undef_279:
.annotate 'line', 147
    set $P108, $P1132
    unless_null $P108, vivify_285
    new $P108, "Undef"
  vivify_285:
    unless $P108, unless_1143
    set $P107, $P108
    goto unless_1143_end
  unless_1143:
.annotate 'line', 148
    find_lex $P109, "$target"
    unless_null $P109, vivify_286
    new $P109, "Undef"
  vivify_286:
    get_how $P110, $P109
    find_lex $P111, "$target"
    unless_null $P111, vivify_287
    new $P111, "Undef"
  vivify_287:
    set $P112, $P1131
    unless_null $P112, vivify_288
    new $P112, "Undef"
  vivify_288:
    $P113 = $P110."add_attribute"($P111, $P112)
.annotate 'line', 147
    set $P107, $P113
  unless_1143_end:
.annotate 'line', 133
    .return ($P107)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block1137"  :anon :subid("129_1334918351.99") :outer("128_1334918351.99")
    .param pmc param_1139
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 137
    .lex "$_", param_1139
.annotate 'line', 138
    find_lex $P110, "$_"
    unless_null $P110, vivify_280
    new $P110, "Undef"
  vivify_280:
    find_lex $P111, "$add_attr"
    unless_null $P111, vivify_281
    new $P111, "Undef"
  vivify_281:
    issame $I103, $P110, $P111
    if $I103, if_1140
.annotate 'line', 142
    find_lex $P114, "$_"
    unless_null $P114, vivify_282
    new $P114, "Undef"
  vivify_282:
    $S100 = $P114."name"()
    find_lex $P115, "$add_attr"
    unless_null $P115, vivify_283
    new $P115, "Undef"
  vivify_283:
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
    unless_null $P117, vivify_284
    new $P117, "Undef"
  vivify_284:
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
.sub "_block1149"  :subid("130_1334918351.99") :outer("119_1334918351.99")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 164
    .const 'Sub' $P1277 = "39_1334918351.99" 
    capture_lex $P1277
    .const 'Sub' $P1273 = "38_1334918351.99" 
    capture_lex $P1273
    .const 'Sub' $P1269 = "37_1334918351.99" 
    capture_lex $P1269
    .const 'Sub' $P1255 = "36_1334918351.99" 
    capture_lex $P1255
    .const 'Sub' $P1252 = "35_1334918351.99" 
    capture_lex $P1252
    .const 'Sub' $P1248 = "34_1334918351.99" 
    capture_lex $P1248
    .const 'Sub' $P1244 = "33_1334918351.99" 
    capture_lex $P1244
    .const 'Sub' $P1230 = "32_1334918351.99" 
    capture_lex $P1230
    .const 'Sub' $P1215 = "31_1334918351.99" 
    capture_lex $P1215
    .const 'Sub' $P1209 = "30_1334918351.99" 
    capture_lex $P1209
    .const 'Sub' $P1203 = "29_1334918351.99" 
    capture_lex $P1203
    .const 'Sub' $P1199 = "28_1334918351.99" 
    capture_lex $P1199
    .const 'Sub' $P1191 = "27_1334918351.99" 
    capture_lex $P1191
    .const 'Sub' $P1178 = "26_1334918351.99" 
    capture_lex $P1178
    .const 'Sub' $P1170 = "25_1334918351.99" 
    capture_lex $P1170
    .const 'Sub' $P1165 = "24_1334918351.99" 
    capture_lex $P1165
    .const 'Sub' $P1161 = "23_1334918351.99" 
    capture_lex $P1161
    .const 'Sub' $P1156 = "22_1334918351.99" 
    capture_lex $P1156
    .const 'Sub' $P1154 = "21_1334918351.99" 
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
    .const 'Sub' $P1277 = "39_1334918351.99" 
    newclosure $P1280, $P1277
.annotate 'line', 164
    .return ($P1280)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "archetypes" :anon :subid("21_1334918351.99") :outer("130_1334918351.99")
    .param pmc param_1155
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 191
    .lex "self", param_1155
    find_lex $P101, "$archetypes"
    unless_null $P101, vivify_292
    new $P101, "Undef"
  vivify_292:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "new" :anon :subid("22_1334918351.99") :outer("130_1334918351.99")
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
    unless_null $P102, vivify_293
    new $P102, "Undef"
  vivify_293:
    set $P103, param_1158
    unless_null $P103, vivify_294
    new $P103, "Undef"
  vivify_294:
    set $P104, param_1159
    unless_null $P104, vivify_295
    new $P104, "Undef"
  vivify_295:
    $P102."BUILD"($P103 :named("name"), $P104 :named("instance_of"))
.annotate 'line', 200
    set $P102, $P1160
    unless_null $P102, vivify_296
    new $P102, "Undef"
  vivify_296:
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "BUILD" :anon :subid("23_1334918351.99") :outer("130_1334918351.99")
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
    unless_null $P101, vivify_297
    new $P101, "Undef"
  vivify_297:
    set $P102, param_1162
    nqp_decontainerize $P103, $P102
    nqp_get_sc_object $P104, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 3
    repr_bind_attr_obj $P103, $P104, "$!name", 0, $P101
.annotate 'line', 208
    set $P101, param_1164
    unless_null $P101, vivify_298
    new $P101, "Undef"
  vivify_298:
    set $P102, param_1162
    nqp_decontainerize $P103, $P102
    nqp_get_sc_object $P104, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 3
    repr_bind_attr_obj $P103, $P104, "$!instance_of", 1, $P101
.annotate 'line', 206
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "new_type" :anon :subid("24_1334918351.99") :outer("130_1334918351.99")
    .param pmc param_1166
    .param pmc param_1168 :named("instance_of")
    .param pmc param_1167 :optional :named("name")
    .param int has_param_1167 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 213
    .lex "self", param_1166
    if has_param_1167, optparam_299
    new $P101, "String"
    assign $P101, "<anon>"
    set param_1167, $P101
  optparam_299:
    .lex "$name", param_1167
    .lex "$instance_of", param_1168
.annotate 'line', 214
    new $P102, "Undef"
    set $P1169, $P102
    .lex "$metarole", $P1169
    set $P103, param_1166
    nqp_decontainerize $P104, $P103
    set $P105, param_1167
    unless_null $P105, vivify_300
    new $P105, "Undef"
  vivify_300:
    set $P106, param_1168
    unless_null $P106, vivify_301
    new $P106, "Undef"
  vivify_301:
    $P107 = $P104."new"($P105 :named("name"), $P106 :named("instance_of"))
    set $P1169, $P107
.annotate 'line', 215
    set $P103, $P1169
    unless_null $P103, vivify_302
    new $P103, "Undef"
  vivify_302:
    new $P104, "String"
    assign $P104, "Uninstantiable"
    set $S100, $P104
    repr_type_object_for $P105, $P103, $S100
.annotate 'line', 213
    .return ($P105)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_method" :anon :subid("25_1334918351.99") :outer("130_1334918351.99")
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
    unless_null $P101, vivify_303
    new $P101, "Undef"
  vivify_303:
    set $P102, param_1171
    nqp_decontainerize $P103, $P102
    nqp_get_sc_object $P104, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 3
    repr_get_attr_obj $P1176, $P103, $P104, "%!methods", 3
    unless_null $P1176, vivify_304
    $P1176 = root_new ['parrot';'Hash']
  vivify_304:
    set $P105, $P1176[$P101]
    unless_null $P105, vivify_305
    new $P105, "Undef"
  vivify_305:
    unless $P105, if_1175_end
.annotate 'line', 220
    new $P106, "String"
    assign $P106, "This role already has a method named "
    set $P107, param_1173
    unless_null $P107, vivify_306
    new $P107, "Undef"
  vivify_306:
    concat $P108, $P106, $P107
    die $P108
  if_1175_end:
.annotate 'line', 222
    set $P101, param_1174
    unless_null $P101, vivify_307
    new $P101, "Undef"
  vivify_307:
    set $P102, param_1173
    unless_null $P102, vivify_308
    new $P102, "Undef"
  vivify_308:
    set $P103, param_1171
    nqp_decontainerize $P104, $P103
    nqp_get_sc_object $P105, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 3
    repr_get_attr_obj $P1177, $P104, $P105, "%!methods", 3
    unless_null $P1177, vivify_309
    $P1177 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P104, $P105, "%!methods", 3, $P1177
  vivify_309:
    set $P1177[$P102], $P101
.annotate 'line', 218
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_multi_method" :anon :subid("26_1334918351.99") :outer("130_1334918351.99")
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
    unless_null $P1185, vivify_310
    $P1185 = root_new ['parrot';'Hash']
  vivify_310:
.annotate 'line', 227
    set $P101, param_1181
    unless_null $P101, vivify_311
    new $P101, "Undef"
  vivify_311:
    set $P1186, $P1183
    unless_null $P1186, vivify_312
    $P1186 = root_new ['parrot';'Hash']
    set $P1183, $P1186
  vivify_312:
    set $P1186["name"], $P101
.annotate 'line', 228
    set $P101, param_1182
    unless_null $P101, vivify_313
    new $P101, "Undef"
  vivify_313:
    set $P1187, $P1183
    unless_null $P1187, vivify_314
    $P1187 = root_new ['parrot';'Hash']
    set $P1183, $P1187
  vivify_314:
    set $P1187["code"], $P101
.annotate 'line', 229
    set $P1188, $P1183
    unless_null $P1188, vivify_315
    $P1188 = root_new ['parrot';'Hash']
  vivify_315:
    set $P101, param_1179
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 3
    repr_get_attr_obj $P1189, $P102, $P103, "@!multi_methods_to_incorporate", 4
    unless_null $P1189, vivify_316
    $P1189 = root_new ['parrot';'ResizablePMCArray']
  vivify_316:
    set $N100, $P1189
    set $I100, $N100
    set $P104, param_1179
    nqp_decontainerize $P105, $P104
    nqp_get_sc_object $P106, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 3
    repr_get_attr_obj $P1190, $P105, $P106, "@!multi_methods_to_incorporate", 4
    unless_null $P1190, vivify_317
    $P1190 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P105, $P106, "@!multi_methods_to_incorporate", 4, $P1190
  vivify_317:
    set $P1190[$I100], $P1188
.annotate 'line', 225
    set $P101, param_1182
    unless_null $P101, vivify_318
    new $P101, "Undef"
  vivify_318:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_attribute" :anon :subid("27_1334918351.99") :outer("130_1334918351.99")
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
    unless_null $P102, vivify_319
    new $P102, "Undef"
  vivify_319:
    $P103 = $P102."name"()
    set $P1195, $P103
.annotate 'line', 235
    set $P102, $P1195
    unless_null $P102, vivify_320
    new $P102, "Undef"
  vivify_320:
    set $P103, param_1192
    nqp_decontainerize $P104, $P103
    nqp_get_sc_object $P105, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 3
    repr_get_attr_obj $P1197, $P104, $P105, "%!attributes", 2
    unless_null $P1197, vivify_321
    $P1197 = root_new ['parrot';'Hash']
  vivify_321:
    set $P106, $P1197[$P102]
    unless_null $P106, vivify_322
    new $P106, "Undef"
  vivify_322:
    unless $P106, if_1196_end
.annotate 'line', 236
    new $P107, "String"
    assign $P107, "This role already has an attribute named "
    set $P108, $P1195
    unless_null $P108, vivify_323
    new $P108, "Undef"
  vivify_323:
    concat $P109, $P107, $P108
    die $P109
  if_1196_end:
.annotate 'line', 238
    set $P102, param_1194
    unless_null $P102, vivify_324
    new $P102, "Undef"
  vivify_324:
    set $P103, $P1195
    unless_null $P103, vivify_325
    new $P103, "Undef"
  vivify_325:
    set $P104, param_1192
    nqp_decontainerize $P105, $P104
    nqp_get_sc_object $P106, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 3
    repr_get_attr_obj $P1198, $P105, $P106, "%!attributes", 2
    unless_null $P1198, vivify_326
    $P1198 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P105, $P106, "%!attributes", 2, $P1198
  vivify_326:
    set $P1198[$P103], $P102
.annotate 'line', 233
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_parent" :anon :subid("28_1334918351.99") :outer("130_1334918351.99")
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
.sub "add_role" :anon :subid("29_1334918351.99") :outer("130_1334918351.99")
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
    unless_null $P101, vivify_327
    new $P101, "Undef"
  vivify_327:
    set $P102, param_1204
    nqp_decontainerize $P103, $P102
    nqp_get_sc_object $P104, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 3
    repr_get_attr_obj $P1207, $P103, $P104, "@!roles", 6
    unless_null $P1207, vivify_328
    $P1207 = root_new ['parrot';'ResizablePMCArray']
  vivify_328:
    set $N100, $P1207
    set $I100, $N100
    set $P105, param_1204
    nqp_decontainerize $P106, $P105
    nqp_get_sc_object $P107, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 3
    repr_get_attr_obj $P1208, $P106, $P107, "@!roles", 6
    unless_null $P1208, vivify_329
    $P1208 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P106, $P107, "@!roles", 6, $P1208
  vivify_329:
    set $P1208[$I100], $P101
.annotate 'line', 245
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_collision" :anon :subid("30_1334918351.99") :outer("130_1334918351.99")
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
    unless_null $P101, vivify_330
    new $P101, "Undef"
  vivify_330:
    set $P102, param_1210
    nqp_decontainerize $P103, $P102
    nqp_get_sc_object $P104, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 3
    repr_get_attr_obj $P1213, $P103, $P104, "@!collisions", 5
    unless_null $P1213, vivify_331
    $P1213 = root_new ['parrot';'ResizablePMCArray']
  vivify_331:
    set $N100, $P1213
    set $I100, $N100
    set $P105, param_1210
    nqp_decontainerize $P106, $P105
    nqp_get_sc_object $P107, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 3
    repr_get_attr_obj $P1214, $P106, $P107, "@!collisions", 5
    unless_null $P1214, vivify_332
    $P1214 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P106, $P107, "@!collisions", 5, $P1214
  vivify_332:
    set $P1214[$I100], $P101
.annotate 'line', 249
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "compose" :anon :subid("31_1334918351.99") :outer("130_1334918351.99")
    .param pmc param_1216
    .param pmc param_1217
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 254
    .const 'Sub' $P1222 = "131_1334918351.99" 
    capture_lex $P1222
    .lex "self", param_1216
    .lex "$obj", param_1217
.annotate 'line', 257
    set $P101, param_1216
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 3
    repr_get_attr_obj $P1219, $P102, $P103, "@!roles", 6
    unless_null $P1219, vivify_333
    $P1219 = root_new ['parrot';'ResizablePMCArray']
  vivify_333:
    unless $P1219, if_1218_end
.annotate 'line', 258
    set $P105, param_1216
    nqp_decontainerize $P106, $P105
    nqp_get_sc_object $P107, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 3
    repr_get_attr_obj $P1220, $P106, $P107, "@!roles", 6
    unless_null $P1220, vivify_334
    $P1220 = root_new ['parrot';'ResizablePMCArray']
  vivify_334:
    defined $I100, $P1220
    unless $I100, for_undef_335
    iter $P104, $P1220
    new $P109, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P109, loop1228_handler
    push_eh $P109
  loop1228_test:
    unless $P104, loop1228_done
    shift $P108, $P104
  loop1228_redo:
    .const 'Sub' $P1222 = "131_1334918351.99" 
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
  for_undef_335:
.annotate 'line', 262
    find_lex $P104, "RoleToRoleApplier"
    set $P105, param_1217
    unless_null $P105, vivify_343
    new $P105, "Undef"
  vivify_343:
    set $P106, param_1216
    nqp_decontainerize $P107, $P106
    nqp_get_sc_object $P108, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 3
    repr_get_attr_obj $P1229, $P107, $P108, "@!roles", 6
    unless_null $P1229, vivify_344
    $P1229 = root_new ['parrot';'ResizablePMCArray']
  vivify_344:
    $P104."apply"($P105, $P1229)
  if_1218_end:
.annotate 'line', 266
    new $P101, "Float"
    assign $P101, 1
    set $P102, param_1216
    nqp_decontainerize $P103, $P102
    nqp_get_sc_object $P104, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 3
    repr_bind_attr_obj $P103, $P104, "$!composed", 8, $P101
.annotate 'line', 254
    set $P101, param_1217
    unless_null $P101, vivify_345
    new $P101, "Undef"
  vivify_345:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1221"  :anon :subid("131_1334918351.99") :outer("31_1334918351.99")
    .param pmc param_1223
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 258
    .lex "$_", param_1223
.annotate 'line', 259
    find_lex $P109, "$_"
    unless_null $P109, vivify_336
    new $P109, "Undef"
  vivify_336:
    find_lex $P110, "self"
    nqp_decontainerize $P111, $P110
    nqp_get_sc_object $P112, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 3
    repr_get_attr_obj $P1224, $P111, $P112, "@!role_typecheck_list", 7
    unless_null $P1224, vivify_337
    $P1224 = root_new ['parrot';'ResizablePMCArray']
  vivify_337:
    set $N100, $P1224
    set $I101, $N100
    find_lex $P113, "self"
    nqp_decontainerize $P114, $P113
    nqp_get_sc_object $P115, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 3
    repr_get_attr_obj $P1225, $P114, $P115, "@!role_typecheck_list", 7
    unless_null $P1225, vivify_338
    $P1225 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P114, $P115, "@!role_typecheck_list", 7, $P1225
  vivify_338:
    set $P1225[$I101], $P109
.annotate 'line', 260
    find_lex $P109, "$_"
    unless_null $P109, vivify_339
    new $P109, "Undef"
  vivify_339:
    get_how $P110, $P109
    find_lex $P111, "$_"
    unless_null $P111, vivify_340
    new $P111, "Undef"
  vivify_340:
    $P112 = $P110."instance_of"($P111)
    find_lex $P113, "self"
    nqp_decontainerize $P114, $P113
    nqp_get_sc_object $P115, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 3
    repr_get_attr_obj $P1226, $P114, $P115, "@!role_typecheck_list", 7
    unless_null $P1226, vivify_341
    $P1226 = root_new ['parrot';'ResizablePMCArray']
  vivify_341:
    set $N100, $P1226
    set $I101, $N100
    find_lex $P116, "self"
    nqp_decontainerize $P117, $P116
    nqp_get_sc_object $P118, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 3
    repr_get_attr_obj $P1227, $P117, $P118, "@!role_typecheck_list", 7
    unless_null $P1227, vivify_342
    $P1227 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P117, $P118, "@!role_typecheck_list", 7, $P1227
  vivify_342:
    set $P1227[$I101], $P112
.annotate 'line', 258
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "methods" :anon :subid("32_1334918351.99") :outer("130_1334918351.99")
    .param pmc param_1231
    .param pmc param_1232
    .param pmc param_1233 :optional :named("local")
    .param int has_param_1233 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 275
    .const 'Sub' $P1239 = "132_1334918351.99" 
    capture_lex $P1239
    .lex "self", param_1231
    .lex "$obj", param_1232
    if has_param_1233, optparam_346
    new $P101, "Undef"
    set param_1233, $P101
  optparam_346:
    .lex "$local", param_1233
.annotate 'line', 276
    $P1235 = root_new ['parrot';'ResizablePMCArray']
    set $P1234, $P1235
    .lex "@meths", $P1234
.annotate 'line', 275
    set $P1236, $P1234
    unless_null $P1236, vivify_347
    $P1236 = root_new ['parrot';'ResizablePMCArray']
  vivify_347:
.annotate 'line', 277
    set $P103, param_1231
    nqp_decontainerize $P104, $P103
    nqp_get_sc_object $P105, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 3
    repr_get_attr_obj $P1237, $P104, $P105, "%!methods", 3
    unless_null $P1237, vivify_348
    $P1237 = root_new ['parrot';'Hash']
  vivify_348:
    defined $I100, $P1237
    unless $I100, for_undef_349
    iter $P102, $P1237
    new $P107, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P107, loop1242_handler
    push_eh $P107
  loop1242_test:
    unless $P102, loop1242_done
    shift $P106, $P102
  loop1242_redo:
    .const 'Sub' $P1239 = "132_1334918351.99" 
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
  for_undef_349:
.annotate 'line', 275
    set $P1243, $P1234
    unless_null $P1243, vivify_352
    $P1243 = root_new ['parrot';'ResizablePMCArray']
  vivify_352:
    .return ($P1243)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1238"  :anon :subid("132_1334918351.99") :outer("32_1334918351.99")
    .param pmc param_1240
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 277
    .lex "$_", param_1240
.annotate 'line', 278
    find_lex $P1241, "@meths"
    unless_null $P1241, vivify_350
    $P1241 = root_new ['parrot';'ResizablePMCArray']
  vivify_350:
    find_lex $P107, "$_"
    unless_null $P107, vivify_351
    new $P107, "Undef"
  vivify_351:
    $P108 = $P107."value"()
    $P109 = $P1241."push"($P108)
.annotate 'line', 277
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "method_table" :anon :subid("33_1334918351.99") :outer("130_1334918351.99")
    .param pmc param_1245
    .param pmc param_1246
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 283
    .lex "self", param_1245
    .lex "$obj", param_1246
    set $P101, param_1245
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 3
    repr_get_attr_obj $P1247, $P102, $P103, "%!methods", 3
    unless_null $P1247, vivify_353
    $P1247 = root_new ['parrot';'Hash']
  vivify_353:
    .return ($P1247)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "collisions" :anon :subid("34_1334918351.99") :outer("130_1334918351.99")
    .param pmc param_1249
    .param pmc param_1250
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 287
    .lex "self", param_1249
    .lex "$obj", param_1250
    set $P101, param_1249
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 3
    repr_get_attr_obj $P1251, $P102, $P103, "@!collisions", 5
    unless_null $P1251, vivify_354
    $P1251 = root_new ['parrot';'ResizablePMCArray']
  vivify_354:
    .return ($P1251)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "name" :anon :subid("35_1334918351.99") :outer("130_1334918351.99")
    .param pmc param_1253
    .param pmc param_1254
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 291
    .lex "self", param_1253
    .lex "$obj", param_1254
    set $P101, param_1253
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 3
    repr_get_attr_obj $P104, $P102, $P103, "$!name", 0
    unless_null $P104, vivify_355
    new $P104, "Undef"
  vivify_355:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "attributes" :anon :subid("36_1334918351.99") :outer("130_1334918351.99")
    .param pmc param_1256
    .param pmc param_1257
    .param pmc param_1258 :optional :named("local")
    .param int has_param_1258 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 295
    .const 'Sub' $P1264 = "133_1334918351.99" 
    capture_lex $P1264
    .lex "self", param_1256
    .lex "$obj", param_1257
    if has_param_1258, optparam_356
    new $P101, "Undef"
    set param_1258, $P101
  optparam_356:
    .lex "$local", param_1258
.annotate 'line', 296
    $P1260 = root_new ['parrot';'ResizablePMCArray']
    set $P1259, $P1260
    .lex "@attrs", $P1259
.annotate 'line', 295
    set $P1261, $P1259
    unless_null $P1261, vivify_357
    $P1261 = root_new ['parrot';'ResizablePMCArray']
  vivify_357:
.annotate 'line', 297
    set $P103, param_1256
    nqp_decontainerize $P104, $P103
    nqp_get_sc_object $P105, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 3
    repr_get_attr_obj $P1262, $P104, $P105, "%!attributes", 2
    unless_null $P1262, vivify_358
    $P1262 = root_new ['parrot';'Hash']
  vivify_358:
    defined $I100, $P1262
    unless $I100, for_undef_359
    iter $P102, $P1262
    new $P107, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P107, loop1267_handler
    push_eh $P107
  loop1267_test:
    unless $P102, loop1267_done
    shift $P106, $P102
  loop1267_redo:
    .const 'Sub' $P1264 = "133_1334918351.99" 
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
  for_undef_359:
.annotate 'line', 295
    set $P1268, $P1259
    unless_null $P1268, vivify_362
    $P1268 = root_new ['parrot';'ResizablePMCArray']
  vivify_362:
    .return ($P1268)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1263"  :anon :subid("133_1334918351.99") :outer("36_1334918351.99")
    .param pmc param_1265
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 297
    .lex "$_", param_1265
.annotate 'line', 298
    find_lex $P1266, "@attrs"
    unless_null $P1266, vivify_360
    $P1266 = root_new ['parrot';'ResizablePMCArray']
  vivify_360:
    find_lex $P107, "$_"
    unless_null $P107, vivify_361
    new $P107, "Undef"
  vivify_361:
    $P108 = $P107."value"()
    $P109 = $P1266."push"($P108)
.annotate 'line', 297
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "roles" :anon :subid("37_1334918351.99") :outer("130_1334918351.99")
    .param pmc param_1270
    .param pmc param_1271
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 303
    .lex "self", param_1270
    .lex "$obj", param_1271
    set $P101, param_1270
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 3
    repr_get_attr_obj $P1272, $P102, $P103, "@!roles", 6
    unless_null $P1272, vivify_363
    $P1272 = root_new ['parrot';'ResizablePMCArray']
  vivify_363:
    .return ($P1272)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "role_typecheck_list" :anon :subid("38_1334918351.99") :outer("130_1334918351.99")
    .param pmc param_1274
    .param pmc param_1275
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 307
    .lex "self", param_1274
    .lex "$obj", param_1275
    set $P101, param_1274
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 3
    repr_get_attr_obj $P1276, $P102, $P103, "@!role_typecheck_list", 7
    unless_null $P1276, vivify_364
    $P1276 = root_new ['parrot';'ResizablePMCArray']
  vivify_364:
    .return ($P1276)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "instance_of" :anon :subid("39_1334918351.99") :outer("130_1334918351.99")
    .param pmc param_1278
    .param pmc param_1279
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 311
    .lex "self", param_1278
    .lex "$obj", param_1279
    set $P101, param_1278
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 3
    repr_get_attr_obj $P104, $P102, $P103, "$!instance_of", 1
    unless_null $P104, vivify_365
    new $P104, "Undef"
  vivify_365:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block1281"  :subid("134_1334918351.99") :outer("119_1334918351.99")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 317
    .const 'Sub' $P1309 = "40_1334918351.99" 
    capture_lex $P1309
    .const 'Sub' $P1293 = "136_1334918351.99" 
    capture_lex $P1293
    .const 'Sub' $P1284 = "135_1334918351.99" 
    capture_lex $P1284
.annotate 'line', 319
    .const 'Sub' $P1284 = "135_1334918351.99" 
    newclosure $P1291, $P1284
    set $P1283, $P1291
    .lex "has_method", $P1283
.annotate 'line', 324
    .const 'Sub' $P1293 = "136_1334918351.99" 
    newclosure $P1306, $P1293
    set $P1292, $P1306
    .lex "has_attribute", $P1292
.annotate 'line', 317
    .lex "$?PACKAGE", $P1307
    .lex "$?CLASS", $P1308
    set $P101, $P1283
    set $P101, $P1292
.annotate 'line', 332
    .const 'Sub' $P1309 = "40_1334918351.99" 
    newclosure $P1351, $P1309
.annotate 'line', 317
    .return ($P1351)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "has_method"  :subid("135_1334918351.99") :outer("134_1334918351.99")
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
    unless_null $P100, vivify_366
    new $P100, "Undef"
  vivify_366:
    get_how $P101, $P100
    set $P102, param_1285
    unless_null $P102, vivify_367
    new $P102, "Undef"
  vivify_367:
    $P103 = $P101."method_table"($P102)
    set $P1288, $P103
.annotate 'line', 321
    set $P100, param_1286
    unless_null $P100, vivify_368
    new $P100, "Undef"
  vivify_368:
    set $P1290, $P1288
    unless_null $P1290, vivify_369
    $P1290 = root_new ['parrot';'Hash']
  vivify_369:
    exists $I100, $P1290[$P100]
.annotate 'line', 319
    .return ($I100)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "has_attribute"  :subid("136_1334918351.99") :outer("134_1334918351.99")
    .param pmc param_1296
    .param pmc param_1297
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 324
    .const 'Sub' $P1302 = "137_1334918351.99" 
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
    unless_null $P100, vivify_370
    new $P100, "Undef"
  vivify_370:
    get_how $P101, $P100
    set $P102, param_1296
    unless_null $P102, vivify_371
    new $P102, "Undef"
  vivify_371:
    $P103 = $P101."attributes"($P102, 1 :named("local"))
    set $P1298, $P103
.annotate 'line', 326
    set $P1300, $P1298
    unless_null $P1300, vivify_372
    $P1300 = root_new ['parrot';'ResizablePMCArray']
  vivify_372:
    defined $I101, $P1300
    unless $I101, for_undef_373
    iter $P100, $P1300
    new $P103, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P103, loop1305_handler
    push_eh $P103
  loop1305_test:
    unless $P100, loop1305_done
    shift $P101, $P100
  loop1305_redo:
    .const 'Sub' $P1302 = "137_1334918351.99" 
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
  for_undef_373:
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
.sub "_block1301"  :anon :subid("137_1334918351.99") :outer("136_1334918351.99")
    .param pmc param_1303
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 326
    .lex "$_", param_1303
.annotate 'line', 327
    find_lex $P103, "$_"
    unless_null $P103, vivify_374
    new $P103, "Undef"
  vivify_374:
    $S100 = $P103."name"()
    find_lex $P104, "$name"
    unless_null $P104, vivify_375
    new $P104, "Undef"
  vivify_375:
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
.sub "apply" :anon :subid("40_1334918351.99") :outer("134_1334918351.99")
    .param pmc param_1310
    .param pmc param_1311
    .param pmc param_1312
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 332
    .const 'Sub' $P1345 = "141_1334918351.99" 
    capture_lex $P1345
    .const 'Sub' $P1339 = "140_1334918351.99" 
    capture_lex $P1339
    .const 'Sub' $P1333 = "139_1334918351.99" 
    capture_lex $P1333
    .const 'Sub' $P1328 = "138_1334918351.99" 
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
    unless_null $P103, vivify_376
    new $P103, "Undef"
  vivify_376:
    set $P103, $P1314
    unless_null $P103, vivify_377
    new $P103, "Undef"
  vivify_377:
.annotate 'line', 337
    set $P1324, param_1312
    unless_null $P1324, vivify_378
    $P1324 = root_new ['parrot';'ResizablePMCArray']
  vivify_378:
    set $N100, $P1324
    set $N101, 1
    iseq $I101, $N100, $N101
    if $I101, if_1323
.annotate 'line', 342
    find_lex $P103, "NQPConcreteRoleHOW"
    find_lex $P104, "$?PACKAGE"
    get_who $P105, $P104
    set $P108, $P105["NQPMu"]
    unless_null $P108, vivify_379
    get_hll_global $P106, "GLOBAL"
    get_who $P107, $P106
    set $P108, $P107["NQPMu"]
  vivify_379:
    $P109 = $P103."new_type"($P108 :named("instance_of"))
    set $P1313, $P109
.annotate 'line', 343
    set $P103, $P1313
    unless_null $P103, vivify_380
    new $P103, "Undef"
  vivify_380:
    get_how $P104, $P103
    set $P1314, $P104
.annotate 'line', 344
    set $P1326, param_1312
    unless_null $P1326, vivify_381
    $P1326 = root_new ['parrot';'ResizablePMCArray']
  vivify_381:
    defined $I102, $P1326
    unless $I102, for_undef_382
    iter $P103, $P1326
    new $P105, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P105, loop1330_handler
    push_eh $P105
  loop1330_test:
    unless $P103, loop1330_done
    shift $P104, $P103
  loop1330_redo:
    .const 'Sub' $P1328 = "138_1334918351.99" 
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
  for_undef_382:
.annotate 'line', 347
    set $P103, $P1314
    unless_null $P103, vivify_386
    new $P103, "Undef"
  vivify_386:
    set $P104, $P1313
    unless_null $P104, vivify_387
    new $P104, "Undef"
  vivify_387:
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
    unless_null $P1325, vivify_388
    $P1325 = root_new ['parrot';'ResizablePMCArray']
  vivify_388:
    set $P104, $P1325[$I102]
    unless_null $P104, vivify_389
    new $P104, "Undef"
  vivify_389:
    set $P1313, $P104
.annotate 'line', 339
    set $P103, $P1313
    unless_null $P103, vivify_390
    new $P103, "Undef"
  vivify_390:
    get_how $P104, $P103
    set $P1314, $P104
  if_1323_end:
.annotate 'line', 351
    set $P103, $P1314
    unless_null $P103, vivify_391
    new $P103, "Undef"
  vivify_391:
    set $P104, $P1313
    unless_null $P104, vivify_392
    new $P104, "Undef"
  vivify_392:
    $P105 = $P103."collisions"($P104)
    set $P1315, $P105
.annotate 'line', 352
    set $P1331, $P1315
    unless_null $P1331, vivify_393
    $P1331 = root_new ['parrot';'ResizablePMCArray']
  vivify_393:
    defined $I101, $P1331
    unless $I101, for_undef_394
    iter $P103, $P1331
    new $P106, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P106, loop1336_handler
    push_eh $P106
  loop1336_test:
    unless $P103, loop1336_done
    shift $P104, $P103
  loop1336_redo:
    .const 'Sub' $P1333 = "139_1334918351.99" 
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
  for_undef_394:
.annotate 'line', 360
    set $P103, $P1314
    unless_null $P103, vivify_400
    new $P103, "Undef"
  vivify_400:
    set $P104, $P1313
    unless_null $P104, vivify_401
    new $P104, "Undef"
  vivify_401:
    $P105 = $P103."methods"($P104)
    set $P1317, $P105
.annotate 'line', 361
    set $P1337, $P1317
    unless_null $P1337, vivify_402
    $P1337 = root_new ['parrot';'ResizablePMCArray']
  vivify_402:
    defined $I101, $P1337
    unless $I101, for_undef_403
    iter $P103, $P1337
    new $P106, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P106, loop1342_handler
    push_eh $P106
  loop1342_test:
    unless $P103, loop1342_done
    shift $P104, $P103
  loop1342_redo:
    .const 'Sub' $P1339 = "140_1334918351.99" 
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
  for_undef_403:
.annotate 'line', 368
    set $P103, $P1314
    unless_null $P103, vivify_410
    new $P103, "Undef"
  vivify_410:
    set $P104, $P1313
    unless_null $P104, vivify_411
    new $P104, "Undef"
  vivify_411:
    $P105 = $P103."attributes"($P104)
    set $P1319, $P105
.annotate 'line', 369
    set $P1343, $P1319
    unless_null $P1343, vivify_412
    $P1343 = root_new ['parrot';'ResizablePMCArray']
  vivify_412:
    defined $I101, $P1343
    unless $I101, for_undef_413
    iter $P103, $P1343
    new $P105, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P105, loop1348_handler
    push_eh $P105
  loop1348_test:
    unless $P103, loop1348_done
    shift $P104, $P103
  loop1348_redo:
    .const 'Sub' $P1345 = "141_1334918351.99" 
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
  for_undef_413:
.annotate 'line', 332
    set $P1349, $P1321
    unless_null $P1349, vivify_422
    $P1349 = root_new ['parrot';'ResizablePMCArray']
  vivify_422:
.annotate 'line', 381
    set $P103, $P1313
    unless_null $P103, vivify_423
    new $P103, "Undef"
  vivify_423:
    new $P104, "Float"
    assign $P104, 0
    set $I101, $P104
    set $P1350, $P1321
    unless_null $P1350, vivify_424
    $P1350 = root_new ['parrot';'ResizablePMCArray']
    set $P1321, $P1350
  vivify_424:
    set $P1350[$I101], $P103
.annotate 'line', 332
    .return ($P103)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block1327"  :anon :subid("138_1334918351.99") :outer("40_1334918351.99")
    .param pmc param_1329
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 344
    .lex "$_", param_1329
.annotate 'line', 345
    find_lex $P105, "$to_compose_meta"
    unless_null $P105, vivify_383
    new $P105, "Undef"
  vivify_383:
    find_lex $P106, "$to_compose"
    unless_null $P106, vivify_384
    new $P106, "Undef"
  vivify_384:
    find_lex $P107, "$_"
    unless_null $P107, vivify_385
    new $P107, "Undef"
  vivify_385:
    $P108 = $P105."add_role"($P106, $P107)
.annotate 'line', 344
    .return ($P108)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block1332"  :anon :subid("139_1334918351.99") :outer("40_1334918351.99")
    .param pmc param_1334
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 352
    .lex "$_", param_1334
.annotate 'line', 353
    find_lex $P106, "$target"
    unless_null $P106, vivify_395
    new $P106, "Undef"
  vivify_395:
    find_lex $P107, "$_"
    unless_null $P107, vivify_396
    new $P107, "Undef"
  vivify_396:
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
    unless_null $P110, vivify_397
    new $P110, "Undef"
  vivify_397:
    concat $P111, $P109, $P110
    concat $P112, $P111, "' collides and a resolution must be provided by the class '"
.annotate 'line', 355
    find_lex $P113, "$target"
    unless_null $P113, vivify_398
    new $P113, "Undef"
  vivify_398:
    get_how $P114, $P113
    find_lex $P115, "$target"
    unless_null $P115, vivify_399
    new $P115, "Undef"
  vivify_399:
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
.sub "_block1338"  :anon :subid("140_1334918351.99") :outer("40_1334918351.99")
    .param pmc param_1340
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 361
    .lex "$_", param_1340
.annotate 'line', 362
    find_lex $P106, "$target"
    unless_null $P106, vivify_404
    new $P106, "Undef"
  vivify_404:
    find_lex $P107, "$_"
    unless_null $P107, vivify_405
    new $P107, "Undef"
  vivify_405:
    set $S100, $P107
    $P108 = "has_method"($P106, $S100, 0)
    unless $P108, unless_1341
    set $P105, $P108
    goto unless_1341_end
  unless_1341:
.annotate 'line', 363
    find_lex $P109, "$target"
    unless_null $P109, vivify_406
    new $P109, "Undef"
  vivify_406:
    get_how $P110, $P109
    find_lex $P111, "$target"
    unless_null $P111, vivify_407
    new $P111, "Undef"
  vivify_407:
    find_lex $P112, "$_"
    unless_null $P112, vivify_408
    new $P112, "Undef"
  vivify_408:
    set $S101, $P112
    find_lex $P113, "$_"
    unless_null $P113, vivify_409
    new $P113, "Undef"
  vivify_409:
    $P114 = $P110."add_method"($P111, $S101, $P113)
.annotate 'line', 362
    set $P105, $P114
  unless_1341_end:
.annotate 'line', 361
    .return ($P105)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block1344"  :anon :subid("141_1334918351.99") :outer("40_1334918351.99")
    .param pmc param_1346
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 369
    .lex "$_", param_1346
.annotate 'line', 370
    find_lex $P105, "$target"
    unless_null $P105, vivify_414
    new $P105, "Undef"
  vivify_414:
    find_lex $P106, "$_"
    unless_null $P106, vivify_415
    new $P106, "Undef"
  vivify_415:
    $P107 = $P106."name"()
    $P108 = "has_attribute"($P105, $P107)
    unless $P108, if_1347_end
.annotate 'line', 371
    new $P109, "String"
    assign $P109, "Attribute '"
    find_lex $P110, "$_"
    unless_null $P110, vivify_416
    new $P110, "Undef"
  vivify_416:
    $S100 = $P110."name"()
    concat $P111, $P109, $S100
    concat $P112, $P111, "' already exists in the class '"
.annotate 'line', 372
    find_lex $P113, "$target"
    unless_null $P113, vivify_417
    new $P113, "Undef"
  vivify_417:
    get_how $P114, $P113
    find_lex $P115, "$target"
    unless_null $P115, vivify_418
    new $P115, "Undef"
  vivify_418:
    $S101 = $P114."name"($P115)
    concat $P116, $P112, $S101
.annotate 'line', 371
    concat $P117, $P116, "', but a role also wishes to compose it"
.annotate 'line', 372
    die $P117
  if_1347_end:
.annotate 'line', 374
    find_lex $P105, "$target"
    unless_null $P105, vivify_419
    new $P105, "Undef"
  vivify_419:
    get_how $P106, $P105
    find_lex $P107, "$target"
    unless_null $P107, vivify_420
    new $P107, "Undef"
  vivify_420:
    find_lex $P108, "$_"
    unless_null $P108, vivify_421
    new $P108, "Undef"
  vivify_421:
    $P109 = $P106."add_attribute"($P107, $P108)
.annotate 'line', 369
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1352"  :subid("142_1334918351.99") :outer("119_1334918351.99")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 390
    .const 'Sub' $P1485 = "58_1334918351.99" 
    capture_lex $P1485
    .const 'Sub' $P1471 = "57_1334918351.99" 
    capture_lex $P1471
    .const 'Sub' $P1468 = "56_1334918351.99" 
    capture_lex $P1468
    .const 'Sub' $P1464 = "55_1334918351.99" 
    capture_lex $P1464
    .const 'Sub' $P1450 = "54_1334918351.99" 
    capture_lex $P1450
    .const 'Sub' $P1420 = "53_1334918351.99" 
    capture_lex $P1420
    .const 'Sub' $P1417 = "52_1334918351.99" 
    capture_lex $P1417
    .const 'Sub' $P1414 = "51_1334918351.99" 
    capture_lex $P1414
    .const 'Sub' $P1408 = "50_1334918351.99" 
    capture_lex $P1408
    .const 'Sub' $P1404 = "49_1334918351.99" 
    capture_lex $P1404
    .const 'Sub' $P1396 = "48_1334918351.99" 
    capture_lex $P1396
    .const 'Sub' $P1383 = "47_1334918351.99" 
    capture_lex $P1383
    .const 'Sub' $P1375 = "46_1334918351.99" 
    capture_lex $P1375
    .const 'Sub' $P1371 = "45_1334918351.99" 
    capture_lex $P1371
    .const 'Sub' $P1366 = "44_1334918351.99" 
    capture_lex $P1366
    .const 'Sub' $P1363 = "43_1334918351.99" 
    capture_lex $P1363
    .const 'Sub' $P1359 = "42_1334918351.99" 
    capture_lex $P1359
    .const 'Sub' $P1357 = "41_1334918351.99" 
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
    .const 'Sub' $P1485 = "58_1334918351.99" 
    newclosure $P1489, $P1485
.annotate 'line', 390
    .return ($P1489)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "archetypes" :anon :subid("41_1334918351.99") :outer("142_1334918351.99")
    .param pmc param_1358
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 415
    .lex "self", param_1358
    find_lex $P101, "$archetypes"
    unless_null $P101, vivify_425
    new $P101, "Undef"
  vivify_425:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "new" :anon :subid("42_1334918351.99") :outer("142_1334918351.99")
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
    unless_null $P102, vivify_426
    new $P102, "Undef"
  vivify_426:
    set $P103, param_1361
    unless_null $P103, vivify_427
    new $P103, "Undef"
  vivify_427:
    $P102."BUILD"($P103 :named("name"))
.annotate 'line', 424
    set $P102, $P1362
    unless_null $P102, vivify_428
    new $P102, "Undef"
  vivify_428:
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "BUILD" :anon :subid("43_1334918351.99") :outer("142_1334918351.99")
    .param pmc param_1364
    .param pmc param_1365 :named("name")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 430
    .lex "self", param_1364
    .lex "$name", param_1365
.annotate 'line', 431
    set $P101, param_1365
    unless_null $P101, vivify_429
    new $P101, "Undef"
  vivify_429:
    set $P102, param_1364
    nqp_decontainerize $P103, $P102
    nqp_get_sc_object $P104, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 5
    repr_bind_attr_obj $P103, $P104, "$!name", 0, $P101
.annotate 'line', 430
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "new_type" :anon :subid("44_1334918351.99") :outer("142_1334918351.99")
    .param pmc param_1367
    .param pmc param_1368 :optional :named("name")
    .param int has_param_1368 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 436
    .lex "self", param_1367
    if has_param_1368, optparam_430
    new $P101, "String"
    assign $P101, "<anon>"
    set param_1368, $P101
  optparam_430:
    .lex "$name", param_1368
.annotate 'line', 437
    new $P102, "Undef"
    set $P1369, $P102
    .lex "$metarole", $P1369
    set $P103, param_1367
    nqp_decontainerize $P104, $P103
    set $P105, param_1368
    unless_null $P105, vivify_431
    new $P105, "Undef"
  vivify_431:
    $P106 = $P104."new"($P105 :named("name"))
    set $P1369, $P106
.annotate 'line', 439
    set $P103, $P1369
    unless_null $P103, vivify_432
    new $P103, "Undef"
  vivify_432:
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
.sub "set_body_block" :anon :subid("45_1334918351.99") :outer("142_1334918351.99")
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
    unless_null $P101, vivify_433
    new $P101, "Undef"
  vivify_433:
    set $P102, param_1372
    nqp_decontainerize $P103, $P102
    nqp_get_sc_object $P104, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 5
    repr_bind_attr_obj $P103, $P104, "$!body_block", 6, $P101
.annotate 'line', 443
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_method" :anon :subid("46_1334918351.99") :outer("142_1334918351.99")
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
    unless_null $P101, vivify_434
    new $P101, "Undef"
  vivify_434:
    set $P102, param_1376
    nqp_decontainerize $P103, $P102
    nqp_get_sc_object $P104, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 5
    repr_get_attr_obj $P1381, $P103, $P104, "%!methods", 2
    unless_null $P1381, vivify_435
    $P1381 = root_new ['parrot';'Hash']
  vivify_435:
    set $P105, $P1381[$P101]
    unless_null $P105, vivify_436
    new $P105, "Undef"
  vivify_436:
    unless $P105, if_1380_end
.annotate 'line', 449
    new $P106, "String"
    assign $P106, "This role already has a method named "
    set $P107, param_1378
    unless_null $P107, vivify_437
    new $P107, "Undef"
  vivify_437:
    concat $P108, $P106, $P107
    die $P108
  if_1380_end:
.annotate 'line', 451
    set $P101, param_1379
    unless_null $P101, vivify_438
    new $P101, "Undef"
  vivify_438:
    set $P102, param_1378
    unless_null $P102, vivify_439
    new $P102, "Undef"
  vivify_439:
    set $P103, param_1376
    nqp_decontainerize $P104, $P103
    nqp_get_sc_object $P105, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 5
    repr_get_attr_obj $P1382, $P104, $P105, "%!methods", 2
    unless_null $P1382, vivify_440
    $P1382 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P104, $P105, "%!methods", 2, $P1382
  vivify_440:
    set $P1382[$P102], $P101
.annotate 'line', 447
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_multi_method" :anon :subid("47_1334918351.99") :outer("142_1334918351.99")
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
    unless_null $P1390, vivify_441
    $P1390 = root_new ['parrot';'Hash']
  vivify_441:
.annotate 'line', 456
    set $P101, param_1386
    unless_null $P101, vivify_442
    new $P101, "Undef"
  vivify_442:
    set $P1391, $P1388
    unless_null $P1391, vivify_443
    $P1391 = root_new ['parrot';'Hash']
    set $P1388, $P1391
  vivify_443:
    set $P1391["name"], $P101
.annotate 'line', 457
    set $P101, param_1387
    unless_null $P101, vivify_444
    new $P101, "Undef"
  vivify_444:
    set $P1392, $P1388
    unless_null $P1392, vivify_445
    $P1392 = root_new ['parrot';'Hash']
    set $P1388, $P1392
  vivify_445:
    set $P1392["code"], $P101
.annotate 'line', 458
    set $P1393, $P1388
    unless_null $P1393, vivify_446
    $P1393 = root_new ['parrot';'Hash']
  vivify_446:
    set $P101, param_1384
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 5
    repr_get_attr_obj $P1394, $P102, $P103, "@!multi_methods_to_incorporate", 3
    unless_null $P1394, vivify_447
    $P1394 = root_new ['parrot';'ResizablePMCArray']
  vivify_447:
    set $N100, $P1394
    set $I100, $N100
    set $P104, param_1384
    nqp_decontainerize $P105, $P104
    nqp_get_sc_object $P106, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 5
    repr_get_attr_obj $P1395, $P105, $P106, "@!multi_methods_to_incorporate", 3
    unless_null $P1395, vivify_448
    $P1395 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P105, $P106, "@!multi_methods_to_incorporate", 3, $P1395
  vivify_448:
    set $P1395[$I100], $P1393
.annotate 'line', 454
    set $P101, param_1387
    unless_null $P101, vivify_449
    new $P101, "Undef"
  vivify_449:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_attribute" :anon :subid("48_1334918351.99") :outer("142_1334918351.99")
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
    unless_null $P102, vivify_450
    new $P102, "Undef"
  vivify_450:
    $P103 = $P102."name"()
    set $P1400, $P103
.annotate 'line', 464
    set $P102, $P1400
    unless_null $P102, vivify_451
    new $P102, "Undef"
  vivify_451:
    set $P103, param_1397
    nqp_decontainerize $P104, $P103
    nqp_get_sc_object $P105, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 5
    repr_get_attr_obj $P1402, $P104, $P105, "%!attributes", 1
    unless_null $P1402, vivify_452
    $P1402 = root_new ['parrot';'Hash']
  vivify_452:
    set $P106, $P1402[$P102]
    unless_null $P106, vivify_453
    new $P106, "Undef"
  vivify_453:
    unless $P106, if_1401_end
.annotate 'line', 465
    new $P107, "String"
    assign $P107, "This role already has an attribute named "
    set $P108, $P1400
    unless_null $P108, vivify_454
    new $P108, "Undef"
  vivify_454:
    concat $P109, $P107, $P108
    die $P109
  if_1401_end:
.annotate 'line', 467
    set $P102, param_1399
    unless_null $P102, vivify_455
    new $P102, "Undef"
  vivify_455:
    set $P103, $P1400
    unless_null $P103, vivify_456
    new $P103, "Undef"
  vivify_456:
    set $P104, param_1397
    nqp_decontainerize $P105, $P104
    nqp_get_sc_object $P106, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 5
    repr_get_attr_obj $P1403, $P105, $P106, "%!attributes", 1
    unless_null $P1403, vivify_457
    $P1403 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P105, $P106, "%!attributes", 1, $P1403
  vivify_457:
    set $P1403[$P103], $P102
.annotate 'line', 462
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_parent" :anon :subid("49_1334918351.99") :outer("142_1334918351.99")
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
.sub "add_role" :anon :subid("50_1334918351.99") :outer("142_1334918351.99")
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
    unless_null $P101, vivify_458
    new $P101, "Undef"
  vivify_458:
    set $P102, param_1409
    nqp_decontainerize $P103, $P102
    nqp_get_sc_object $P104, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 5
    repr_get_attr_obj $P1412, $P103, $P104, "@!roles", 4
    unless_null $P1412, vivify_459
    $P1412 = root_new ['parrot';'ResizablePMCArray']
  vivify_459:
    set $N100, $P1412
    set $I100, $N100
    set $P105, param_1409
    nqp_decontainerize $P106, $P105
    nqp_get_sc_object $P107, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 5
    repr_get_attr_obj $P1413, $P106, $P107, "@!roles", 4
    unless_null $P1413, vivify_460
    $P1413 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P106, $P107, "@!roles", 4, $P1413
  vivify_460:
    set $P1413[$I100], $P101
.annotate 'line', 474
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "compose" :anon :subid("51_1334918351.99") :outer("142_1334918351.99")
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
    nqp_get_sc_object $P104, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 5
    repr_bind_attr_obj $P103, $P104, "$!composed", 5, $P101
.annotate 'line', 479
    set $P101, param_1416
    unless_null $P101, vivify_461
    new $P101, "Undef"
  vivify_461:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "parametric" :anon :subid("52_1334918351.99") :outer("142_1334918351.99")
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
.sub "specialize" :anon :subid("53_1334918351.99") :outer("142_1334918351.99")
    .param pmc param_1423
    .param pmc param_1424
    .param pmc param_1425
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 496
    .const 'Sub' $P1446 = "146_1334918351.99" 
    capture_lex $P1446
    .const 'Sub' $P1439 = "145_1334918351.99" 
    capture_lex $P1439
    .const 'Sub' $P1434 = "144_1334918351.99" 
    capture_lex $P1434
    .const 'Sub' $P1429 = "143_1334918351.99" 
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
    nqp_get_sc_object $P104, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 5
    repr_get_attr_obj $P105, $P103, $P104, "$!body_block", 6
    unless_null $P105, vivify_462
    new $P105, "Undef"
  vivify_462:
    set $P106, param_1425
    unless_null $P106, vivify_463
    new $P106, "Undef"
  vivify_463:
    $P105($P106)
.annotate 'line', 502
    find_lex $P102, "NQPConcreteRoleHOW"
    set $P103, param_1423
    nqp_decontainerize $P104, $P103
    nqp_get_sc_object $P105, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 5
    repr_get_attr_obj $P106, $P104, $P105, "$!name", 0
    unless_null $P106, vivify_464
    new $P106, "Undef"
  vivify_464:
    set $P107, param_1424
    unless_null $P107, vivify_465
    new $P107, "Undef"
  vivify_465:
    $P108 = $P102."new_type"($P106 :named("name"), $P107 :named("instance_of"))
    set $P1426, $P108
.annotate 'line', 506
    set $P103, param_1423
    nqp_decontainerize $P104, $P103
    nqp_get_sc_object $P105, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 5
    repr_get_attr_obj $P1427, $P104, $P105, "%!attributes", 1
    unless_null $P1427, vivify_466
    $P1427 = root_new ['parrot';'Hash']
  vivify_466:
    defined $I100, $P1427
    unless $I100, for_undef_467
    iter $P102, $P1427
    new $P107, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P107, loop1431_handler
    push_eh $P107
  loop1431_test:
    unless $P102, loop1431_done
    shift $P106, $P102
  loop1431_redo:
    .const 'Sub' $P1429 = "143_1334918351.99" 
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
  for_undef_467:
.annotate 'line', 511
    set $P103, param_1423
    nqp_decontainerize $P104, $P103
    nqp_get_sc_object $P105, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 5
    repr_get_attr_obj $P1432, $P104, $P105, "%!methods", 2
    unless_null $P1432, vivify_471
    $P1432 = root_new ['parrot';'Hash']
  vivify_471:
    defined $I100, $P1432
    unless $I100, for_undef_472
    iter $P102, $P1432
    new $P107, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P107, loop1436_handler
    push_eh $P107
  loop1436_test:
    unless $P102, loop1436_done
    shift $P106, $P102
  loop1436_redo:
    .const 'Sub' $P1434 = "144_1334918351.99" 
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
  for_undef_472:
.annotate 'line', 514
    set $P103, param_1423
    nqp_decontainerize $P104, $P103
    nqp_get_sc_object $P105, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 5
    repr_get_attr_obj $P1437, $P104, $P105, "@!multi_methods_to_incorporate", 3
    unless_null $P1437, vivify_477
    $P1437 = root_new ['parrot';'ResizablePMCArray']
  vivify_477:
    defined $I100, $P1437
    unless $I100, for_undef_478
    iter $P102, $P1437
    new $P107, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P107, loop1443_handler
    push_eh $P107
  loop1443_test:
    unless $P102, loop1443_done
    shift $P106, $P102
  loop1443_redo:
    .const 'Sub' $P1439 = "145_1334918351.99" 
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
  for_undef_478:
.annotate 'line', 519
    set $P103, param_1423
    nqp_decontainerize $P104, $P103
    nqp_get_sc_object $P105, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 5
    repr_get_attr_obj $P1444, $P104, $P105, "@!roles", 4
    unless_null $P1444, vivify_485
    $P1444 = root_new ['parrot';'ResizablePMCArray']
  vivify_485:
    defined $I100, $P1444
    unless $I100, for_undef_486
    iter $P102, $P1444
    new $P108, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P108, loop1449_handler
    push_eh $P108
  loop1449_test:
    unless $P102, loop1449_done
    shift $P106, $P102
  loop1449_redo:
    .const 'Sub' $P1446 = "146_1334918351.99" 
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
  for_undef_486:
.annotate 'line', 525
    set $P102, $P1426
    unless_null $P102, vivify_493
    new $P102, "Undef"
  vivify_493:
    get_how $P103, $P102
    set $P104, $P1426
    unless_null $P104, vivify_494
    new $P104, "Undef"
  vivify_494:
    $P103."compose"($P104)
.annotate 'line', 526
    new $P102, "Exception"
    set $P102['type'], .CONTROL_RETURN
    set $P103, $P1426
    unless_null $P103, vivify_495
    new $P103, "Undef"
  vivify_495:
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
.sub "_block1428"  :anon :subid("143_1334918351.99") :outer("53_1334918351.99")
    .param pmc param_1430
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 506
    .lex "$_", param_1430
.annotate 'line', 507
    find_lex $P107, "$irole"
    unless_null $P107, vivify_468
    new $P107, "Undef"
  vivify_468:
    get_how $P108, $P107
    find_lex $P109, "$irole"
    unless_null $P109, vivify_469
    new $P109, "Undef"
  vivify_469:
    find_lex $P110, "$_"
    unless_null $P110, vivify_470
    new $P110, "Undef"
  vivify_470:
    $P111 = $P110."value"()
    $P112 = $P108."add_attribute"($P109, $P111)
.annotate 'line', 506
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1433"  :anon :subid("144_1334918351.99") :outer("53_1334918351.99")
    .param pmc param_1435
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 511
    .lex "$_", param_1435
.annotate 'line', 512
    find_lex $P107, "$irole"
    unless_null $P107, vivify_473
    new $P107, "Undef"
  vivify_473:
    get_how $P108, $P107
    find_lex $P109, "$irole"
    unless_null $P109, vivify_474
    new $P109, "Undef"
  vivify_474:
    find_lex $P110, "$_"
    unless_null $P110, vivify_475
    new $P110, "Undef"
  vivify_475:
    $P111 = $P110."key"()
    find_lex $P112, "$_"
    unless_null $P112, vivify_476
    new $P112, "Undef"
  vivify_476:
    $P113 = $P112."value"()
    $P114 = $P113."clone"()
    $P115 = $P108."add_method"($P109, $P111, $P114)
.annotate 'line', 511
    .return ($P115)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1438"  :anon :subid("145_1334918351.99") :outer("53_1334918351.99")
    .param pmc param_1440
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 514
    .lex "$_", param_1440
.annotate 'line', 515
    find_lex $P107, "$irole"
    unless_null $P107, vivify_479
    new $P107, "Undef"
  vivify_479:
    get_how $P108, $P107
    find_lex $P109, "$irole"
    unless_null $P109, vivify_480
    new $P109, "Undef"
  vivify_480:
    find_lex $P1441, "$_"
    unless_null $P1441, vivify_481
    $P1441 = root_new ['parrot';'Hash']
  vivify_481:
    set $P110, $P1441["name"]
    unless_null $P110, vivify_482
    new $P110, "Undef"
  vivify_482:
    find_lex $P1442, "$_"
    unless_null $P1442, vivify_483
    $P1442 = root_new ['parrot';'Hash']
  vivify_483:
    set $P111, $P1442["code"]
    unless_null $P111, vivify_484
    new $P111, "Undef"
  vivify_484:
    $P112 = "reify_method"($P111)
    $P113 = $P108."add_multi_method"($P109, $P110, $P112)
.annotate 'line', 514
    .return ($P113)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1445"  :anon :subid("146_1334918351.99") :outer("53_1334918351.99")
    .param pmc param_1448
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 520
    new $P107, "Undef"
    set $P1447, $P107
    .lex "$specialized", $P1447
    .lex "$_", param_1448
    find_lex $P108, "$irole"
    unless_null $P108, vivify_487
    new $P108, "Undef"
  vivify_487:
    get_how $P109, $P108
    find_lex $P110, "$irole"
    unless_null $P110, vivify_488
    new $P110, "Undef"
  vivify_488:
    find_lex $P111, "$class_arg"
    unless_null $P111, vivify_489
    new $P111, "Undef"
  vivify_489:
    $P112 = $P109."specialize"($P110, $P111)
    set $P1447, $P112
.annotate 'line', 521
    find_lex $P108, "$irole"
    unless_null $P108, vivify_490
    new $P108, "Undef"
  vivify_490:
    get_how $P109, $P108
    find_lex $P110, "$irole"
    unless_null $P110, vivify_491
    new $P110, "Undef"
  vivify_491:
    set $P111, $P1447
    unless_null $P111, vivify_492
    new $P111, "Undef"
  vivify_492:
    $P112 = $P109."add_role"($P110, $P111)
.annotate 'line', 519
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "methods" :anon :subid("54_1334918351.99") :outer("142_1334918351.99")
    .param pmc param_1451
    .param pmc param_1452
    .param pmc param_1453 :optional :named("local")
    .param int has_param_1453 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 533
    .const 'Sub' $P1459 = "147_1334918351.99" 
    capture_lex $P1459
    .lex "self", param_1451
    .lex "$obj", param_1452
    if has_param_1453, optparam_496
    new $P101, "Undef"
    set param_1453, $P101
  optparam_496:
    .lex "$local", param_1453
.annotate 'line', 534
    $P1455 = root_new ['parrot';'ResizablePMCArray']
    set $P1454, $P1455
    .lex "@meths", $P1454
.annotate 'line', 533
    set $P1456, $P1454
    unless_null $P1456, vivify_497
    $P1456 = root_new ['parrot';'ResizablePMCArray']
  vivify_497:
.annotate 'line', 535
    set $P103, param_1451
    nqp_decontainerize $P104, $P103
    nqp_get_sc_object $P105, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 5
    repr_get_attr_obj $P1457, $P104, $P105, "%!methods", 2
    unless_null $P1457, vivify_498
    $P1457 = root_new ['parrot';'Hash']
  vivify_498:
    defined $I100, $P1457
    unless $I100, for_undef_499
    iter $P102, $P1457
    new $P107, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P107, loop1462_handler
    push_eh $P107
  loop1462_test:
    unless $P102, loop1462_done
    shift $P106, $P102
  loop1462_redo:
    .const 'Sub' $P1459 = "147_1334918351.99" 
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
  for_undef_499:
.annotate 'line', 533
    set $P1463, $P1454
    unless_null $P1463, vivify_502
    $P1463 = root_new ['parrot';'ResizablePMCArray']
  vivify_502:
    .return ($P1463)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1458"  :anon :subid("147_1334918351.99") :outer("54_1334918351.99")
    .param pmc param_1460
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 535
    .lex "$_", param_1460
.annotate 'line', 536
    find_lex $P1461, "@meths"
    unless_null $P1461, vivify_500
    $P1461 = root_new ['parrot';'ResizablePMCArray']
  vivify_500:
    find_lex $P107, "$_"
    unless_null $P107, vivify_501
    new $P107, "Undef"
  vivify_501:
    $P108 = $P107."value"()
    $P109 = $P1461."push"($P108)
.annotate 'line', 535
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "method_table" :anon :subid("55_1334918351.99") :outer("142_1334918351.99")
    .param pmc param_1465
    .param pmc param_1466
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 541
    .lex "self", param_1465
    .lex "$obj", param_1466
    set $P101, param_1465
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 5
    repr_get_attr_obj $P1467, $P102, $P103, "%!methods", 2
    unless_null $P1467, vivify_503
    $P1467 = root_new ['parrot';'Hash']
  vivify_503:
    .return ($P1467)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "name" :anon :subid("56_1334918351.99") :outer("142_1334918351.99")
    .param pmc param_1469
    .param pmc param_1470
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 545
    .lex "self", param_1469
    .lex "$obj", param_1470
    set $P101, param_1469
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 5
    repr_get_attr_obj $P104, $P102, $P103, "$!name", 0
    unless_null $P104, vivify_504
    new $P104, "Undef"
  vivify_504:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "attributes" :anon :subid("57_1334918351.99") :outer("142_1334918351.99")
    .param pmc param_1472
    .param pmc param_1473
    .param pmc param_1474 :optional :named("local")
    .param int has_param_1474 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 549
    .const 'Sub' $P1480 = "148_1334918351.99" 
    capture_lex $P1480
    .lex "self", param_1472
    .lex "$obj", param_1473
    if has_param_1474, optparam_505
    new $P101, "Undef"
    set param_1474, $P101
  optparam_505:
    .lex "$local", param_1474
.annotate 'line', 550
    $P1476 = root_new ['parrot';'ResizablePMCArray']
    set $P1475, $P1476
    .lex "@attrs", $P1475
.annotate 'line', 549
    set $P1477, $P1475
    unless_null $P1477, vivify_506
    $P1477 = root_new ['parrot';'ResizablePMCArray']
  vivify_506:
.annotate 'line', 551
    set $P103, param_1472
    nqp_decontainerize $P104, $P103
    nqp_get_sc_object $P105, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 5
    repr_get_attr_obj $P1478, $P104, $P105, "%!attributes", 1
    unless_null $P1478, vivify_507
    $P1478 = root_new ['parrot';'Hash']
  vivify_507:
    defined $I100, $P1478
    unless $I100, for_undef_508
    iter $P102, $P1478
    new $P107, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P107, loop1483_handler
    push_eh $P107
  loop1483_test:
    unless $P102, loop1483_done
    shift $P106, $P102
  loop1483_redo:
    .const 'Sub' $P1480 = "148_1334918351.99" 
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
  for_undef_508:
.annotate 'line', 549
    set $P1484, $P1475
    unless_null $P1484, vivify_511
    $P1484 = root_new ['parrot';'ResizablePMCArray']
  vivify_511:
    .return ($P1484)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1479"  :anon :subid("148_1334918351.99") :outer("57_1334918351.99")
    .param pmc param_1481
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 551
    .lex "$_", param_1481
.annotate 'line', 552
    find_lex $P1482, "@attrs"
    unless_null $P1482, vivify_509
    $P1482 = root_new ['parrot';'ResizablePMCArray']
  vivify_509:
    find_lex $P107, "$_"
    unless_null $P107, vivify_510
    new $P107, "Undef"
  vivify_510:
    $P108 = $P107."value"()
    $P109 = $P1482."push"($P108)
.annotate 'line', 551
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "roles" :anon :subid("58_1334918351.99") :outer("142_1334918351.99")
    .param pmc param_1486
    .param pmc param_1487
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 557
    .lex "self", param_1486
    .lex "$obj", param_1487
    set $P101, param_1486
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 5
    repr_get_attr_obj $P1488, $P102, $P103, "@!roles", 4
    unless_null $P1488, vivify_512
    $P1488 = root_new ['parrot';'ResizablePMCArray']
  vivify_512:
    .return ($P1488)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1490"  :subid("149_1334918351.99") :outer("119_1334918351.99")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 567
    .const 'Sub' $P1969 = "91_1334918351.99" 
    capture_lex $P1969
    .const 'Sub' $P1952 = "90_1334918351.99" 
    capture_lex $P1952
    .const 'Sub' $P1936 = "89_1334918351.99" 
    capture_lex $P1936
    .const 'Sub' $P1925 = "88_1334918351.99" 
    capture_lex $P1925
    .const 'Sub' $P1913 = "87_1334918351.99" 
    capture_lex $P1913
    .const 'Sub' $P1908 = "86_1334918351.99" 
    capture_lex $P1908
    .const 'Sub' $P1903 = "85_1334918351.99" 
    capture_lex $P1903
    .const 'Sub' $P1889 = "84_1334918351.99" 
    capture_lex $P1889
    .const 'Sub' $P1886 = "83_1334918351.99" 
    capture_lex $P1886
    .const 'Sub' $P1882 = "82_1334918351.99" 
    capture_lex $P1882
    .const 'Sub' $P1868 = "81_1334918351.99" 
    capture_lex $P1868
    .const 'Sub' $P1863 = "80_1334918351.99" 
    capture_lex $P1863
    .const 'Sub' $P1859 = "79_1334918351.99" 
    capture_lex $P1859
    .const 'Sub' $P1852 = "78_1334918351.99" 
    capture_lex $P1852
    .const 'Sub' $P1833 = "77_1334918351.99" 
    capture_lex $P1833
    .const 'Sub' $P1814 = "76_1334918351.99" 
    capture_lex $P1814
    .const 'Sub' $P1809 = "75_1334918351.99" 
    capture_lex $P1809
    .const 'Sub' $P1788 = "74_1334918351.99" 
    capture_lex $P1788
    .const 'Sub' $P1769 = "73_1334918351.99" 
    capture_lex $P1769
    .const 'Sub' $P1713 = "72_1334918351.99" 
    capture_lex $P1713
    .const 'Sub' $P1683 = "71_1334918351.99" 
    capture_lex $P1683
    .const 'Sub' $P1675 = "70_1334918351.99" 
    capture_lex $P1675
    .const 'Sub' $P1667 = "69_1334918351.99" 
    capture_lex $P1667
    .const 'Sub' $P1655 = "68_1334918351.99" 
    capture_lex $P1655
    .const 'Sub' $P1651 = "67_1334918351.99" 
    capture_lex $P1651
    .const 'Sub' $P1637 = "66_1334918351.99" 
    capture_lex $P1637
    .const 'Sub' $P1629 = "65_1334918351.99" 
    capture_lex $P1629
    .const 'Sub' $P1616 = "64_1334918351.99" 
    capture_lex $P1616
    .const 'Sub' $P1605 = "63_1334918351.99" 
    capture_lex $P1605
    .const 'Sub' $P1599 = "62_1334918351.99" 
    capture_lex $P1599
    .const 'Sub' $P1596 = "61_1334918351.99" 
    capture_lex $P1596
    .const 'Sub' $P1592 = "60_1334918351.99" 
    capture_lex $P1592
    .const 'Sub' $P1590 = "59_1334918351.99" 
    capture_lex $P1590
    .const 'Sub' $P1526 = "153_1334918351.99" 
    capture_lex $P1526
    .const 'Sub' $P1494 = "150_1334918351.99" 
    capture_lex $P1494
.annotate 'line', 603
    new $P100, "Undef"
    set $P1492, $P100
    .lex "$archetypes", $P1492
.annotate 'line', 826
    .const 'Sub' $P1494 = "150_1334918351.99" 
    newclosure $P1524, $P1494
    set $P1493, $P1524
    .lex "compute_c3_mro", $P1493
.annotate 'line', 852
    .const 'Sub' $P1526 = "153_1334918351.99" 
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
.annotate 'line', 1077
    .const 'Sub' $P1969 = "91_1334918351.99" 
    newclosure $P1981, $P1969
.annotate 'line', 567
    .return ($P1981)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "compute_c3_mro"  :subid("150_1334918351.99") :outer("149_1334918351.99")
    .param pmc param_1497
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 826
    .const 'Sub' $P1509 = "151_1334918351.99" 
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
    unless_null $P101, vivify_513
    new $P101, "Undef"
  vivify_513:
    get_how $P102, $P101
    set $P103, param_1497
    unless_null $P103, vivify_514
    new $P103, "Undef"
  vivify_514:
    $P104 = $P102."parents"($P103, 1 :named("local"))
    set $P1498, $P104
.annotate 'line', 826
    set $P1502, $P1500
    unless_null $P1502, vivify_515
    $P1502 = root_new ['parrot';'ResizablePMCArray']
  vivify_515:
.annotate 'line', 831
    set $P1504, $P1498
    unless_null $P1504, vivify_516
    $P1504 = root_new ['parrot';'ResizablePMCArray']
  vivify_516:
    set $N100, $P1504
    unless $N100, if_1503_end
.annotate 'line', 832
    set $P1506, $P1498
    unless_null $P1506, vivify_517
    $P1506 = root_new ['parrot';'ResizablePMCArray']
  vivify_517:
    set $N101, $P1506
    set $N102, 1
    iseq $I100, $N101, $N102
    if $I100, if_1505
.annotate 'line', 834
    .const 'Sub' $P1509 = "151_1334918351.99" 
    capture_lex $P1509
    $P1509()
    goto if_1505_end
  if_1505:
.annotate 'line', 833
    new $P101, "Float"
    assign $P101, 0
    set $I101, $P101
    set $P1507, $P1498
    unless_null $P1507, vivify_526
    $P1507 = root_new ['parrot';'ResizablePMCArray']
  vivify_526:
    set $P102, $P1507[$I101]
    unless_null $P102, vivify_527
    new $P102, "Undef"
  vivify_527:
    $P103 = "compute_c3_mro"($P102)
    set $P1500, $P103
  if_1505_end:
  if_1503_end:
.annotate 'line', 847
    set $P1522, $P1500
    unless_null $P1522, vivify_528
    $P1522 = root_new ['parrot';'ResizablePMCArray']
  vivify_528:
    set $P101, param_1497
    unless_null $P101, vivify_529
    new $P101, "Undef"
  vivify_529:
    $P1522."unshift"($P101)
.annotate 'line', 848
    new $P101, "Exception"
    set $P101['type'], .CONTROL_RETURN
    set $P1523, $P1500
    unless_null $P1523, vivify_530
    $P1523 = root_new ['parrot';'ResizablePMCArray']
  vivify_530:
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
.sub "_block1508"  :anon :subid("151_1334918351.99") :outer("150_1334918351.99")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 834
    .const 'Sub' $P1515 = "152_1334918351.99" 
    capture_lex $P1515
.annotate 'line', 837
    $P1511 = root_new ['parrot';'ResizablePMCArray']
    set $P1510, $P1511
    .lex "@merge_list", $P1510
.annotate 'line', 834
    set $P1512, $P1510
    unless_null $P1512, vivify_518
    $P1512 = root_new ['parrot';'ResizablePMCArray']
  vivify_518:
.annotate 'line', 838
    find_lex $P1513, "@immediate_parents"
    unless_null $P1513, vivify_519
    $P1513 = root_new ['parrot';'ResizablePMCArray']
  vivify_519:
    defined $I101, $P1513
    unless $I101, for_undef_520
    iter $P101, $P1513
    new $P103, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P103, loop1518_handler
    push_eh $P103
  loop1518_test:
    unless $P101, loop1518_done
    shift $P102, $P101
  loop1518_redo:
    .const 'Sub' $P1515 = "152_1334918351.99" 
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
  for_undef_520:
.annotate 'line', 841
    set $P1519, $P1510
    unless_null $P1519, vivify_523
    $P1519 = root_new ['parrot';'ResizablePMCArray']
  vivify_523:
    find_lex $P1520, "@immediate_parents"
    unless_null $P1520, vivify_524
    $P1520 = root_new ['parrot';'ResizablePMCArray']
  vivify_524:
    $P1519."push"($P1520)
.annotate 'line', 842
    set $P1521, $P1510
    unless_null $P1521, vivify_525
    $P1521 = root_new ['parrot';'ResizablePMCArray']
  vivify_525:
    $P101 = "c3_merge"($P1521)
    store_lex "@result", $P101
.annotate 'line', 834
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1514"  :anon :subid("152_1334918351.99") :outer("151_1334918351.99")
    .param pmc param_1516
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 838
    .lex "$_", param_1516
.annotate 'line', 839
    find_lex $P1517, "@merge_list"
    unless_null $P1517, vivify_521
    $P1517 = root_new ['parrot';'ResizablePMCArray']
  vivify_521:
    find_lex $P103, "$_"
    unless_null $P103, vivify_522
    new $P103, "Undef"
  vivify_522:
    $P104 = "compute_c3_mro"($P103)
    $P105 = $P1517."push"($P104)
.annotate 'line', 838
    .return ($P105)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "c3_merge"  :subid("153_1334918351.99") :outer("149_1334918351.99")
    .param pmc param_1529
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 852
    .const 'Sub' $P1570 = "158_1334918351.99" 
    capture_lex $P1570
    .const 'Sub' $P1539 = "154_1334918351.99" 
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
    unless_null $P1536, vivify_531
    $P1536 = root_new ['parrot';'ResizablePMCArray']
  vivify_531:
    set $P106, $P1532
    unless_null $P106, vivify_532
    new $P106, "Undef"
  vivify_532:
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
    unless_null $P1537, vivify_533
    $P1537 = root_new ['parrot';'ResizablePMCArray']
  vivify_533:
    defined $I100, $P1537
    unless $I100, for_undef_534
    iter $P106, $P1537
    new $P109, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P109, loop1564_handler
    push_eh $P109
  loop1564_test:
    unless $P106, loop1564_done
    shift $P107, $P106
  loop1564_redo:
    .const 'Sub' $P1539 = "154_1334918351.99" 
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
  for_undef_534:
.annotate 'line', 889
    set $P106, $P1534
    unless_null $P106, vivify_553
    new $P106, "Undef"
  vivify_553:
    set $N100, $P106
    set $N101, 0
    iseq $I100, $N100, $N101
    unless $I100, if_1565_end
.annotate 'line', 890
    new $P107, "Exception"
    set $P107['type'], .CONTROL_RETURN
    set $P1566, $P1530
    unless_null $P1566, vivify_554
    $P1566 = root_new ['parrot';'ResizablePMCArray']
  vivify_554:
    setattribute $P107, 'payload', $P1566
    throw $P107
  if_1565_end:
.annotate 'line', 894
    set $P106, $P1533
    unless_null $P106, vivify_555
    new $P106, "Undef"
  vivify_555:
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
    unless_null $P106, vivify_556
    new $P106, "Undef"
  vivify_556:
    set $N100, $P106
    set $P1568, param_1529
    unless_null $P1568, vivify_557
    $P1568 = root_new ['parrot';'ResizablePMCArray']
  vivify_557:
    set $N101, $P1568
    islt $I100, $N100, $N101
    unless $I100, loop1583_done
  loop1583_redo:
    .const 'Sub' $P1570 = "158_1334918351.99" 
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
    unless_null $P1584, vivify_571
    $P1584 = root_new ['parrot';'ResizablePMCArray']
  vivify_571:
    $P106 = "c3_merge"($P1584)
    set $P1530, $P106
.annotate 'line', 914
    set $P1585, $P1530
    unless_null $P1585, vivify_572
    $P1585 = root_new ['parrot';'ResizablePMCArray']
  vivify_572:
    set $P106, $P1532
    unless_null $P106, vivify_573
    new $P106, "Undef"
  vivify_573:
    $P1585."unshift"($P106)
.annotate 'line', 915
    new $P106, "Exception"
    set $P106['type'], .CONTROL_RETURN
    set $P1586, $P1530
    unless_null $P1586, vivify_574
    $P1586 = root_new ['parrot';'ResizablePMCArray']
  vivify_574:
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
.sub "_block1538"  :anon :subid("154_1334918351.99") :outer("153_1334918351.99")
    .param pmc param_1542
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 859
    .const 'Sub' $P1546 = "155_1334918351.99" 
    capture_lex $P1546
.annotate 'line', 860
    $P1541 = root_new ['parrot';'ResizablePMCArray']
    set $P1540, $P1541
    .lex "@cand_list", $P1540
    .lex "$_", param_1542
    find_lex $P108, "$_"
    unless_null $P108, vivify_535
    new $P108, "Undef"
  vivify_535:
    set $P1540, $P108
.annotate 'line', 861
    set $P1544, $P1540
    unless_null $P1544, vivify_536
    $P1544 = root_new ['parrot';'ResizablePMCArray']
  vivify_536:
    set $N100, $P1544
    if $N100, if_1543
    new $P108, 'Float'
    set $P108, $N100
    goto if_1543_end
  if_1543:
    .const 'Sub' $P1546 = "155_1334918351.99" 
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
.sub "_block1545"  :anon :subid("155_1334918351.99") :outer("154_1334918351.99")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 861
    .const 'Sub' $P1552 = "156_1334918351.99" 
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
    unless_null $P1549, vivify_537
    $P1549 = root_new ['parrot';'ResizablePMCArray']
  vivify_537:
    set $P112, $P1549[$I101]
    unless_null $P112, vivify_538
    new $P112, "Undef"
  vivify_538:
    set $P1548, $P112
.annotate 'line', 864
    find_lex $P111, "$cand_count"
    unless_null $P111, vivify_539
    new $P111, "Undef"
  vivify_539:
    add $P112, $P111, 1
    store_lex "$cand_count", $P112
.annotate 'line', 865
    find_lex $P1550, "@merge_list"
    unless_null $P1550, vivify_540
    $P1550 = root_new ['parrot';'ResizablePMCArray']
  vivify_540:
    defined $I101, $P1550
    unless $I101, for_undef_541
    iter $P111, $P1550
    new $P114, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P114, loop1562_handler
    push_eh $P114
  loop1562_test:
    unless $P111, loop1562_done
    shift $P112, $P111
  loop1562_redo:
    .const 'Sub' $P1552 = "156_1334918351.99" 
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
  for_undef_541:
.annotate 'line', 880
    set $P112, $P1547
    unless_null $P112, vivify_551
    new $P112, "Undef"
  vivify_551:
    unless $P112, unless_1563
    set $P111, $P112
    goto unless_1563_end
  unless_1563:
.annotate 'line', 881
    set $P113, $P1548
    unless_null $P113, vivify_552
    new $P113, "Undef"
  vivify_552:
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
.sub "_block1551"  :anon :subid("156_1334918351.99") :outer("155_1334918351.99")
    .param pmc param_1553
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 865
    .const 'Sub' $P1557 = "157_1334918351.99" 
    capture_lex $P1557
    .lex "$_", param_1553
.annotate 'line', 867
    find_lex $P114, "$_"
    unless_null $P114, vivify_542
    new $P114, "Undef"
  vivify_542:
    find_lex $P1555, "@cand_list"
    unless_null $P1555, vivify_543
    $P1555 = root_new ['parrot';'ResizablePMCArray']
  vivify_543:
    issame $I102, $P114, $P1555
    unless $I102, unless_1554
    new $P113, 'Integer'
    set $P113, $I102
    goto unless_1554_end
  unless_1554:
    .const 'Sub' $P1557 = "157_1334918351.99" 
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
.sub "_block1556"  :anon :subid("157_1334918351.99") :outer("156_1334918351.99")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
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
    unless_null $P116, vivify_544
    new $P116, "Undef"
  vivify_544:
    set $N101, $P116
    find_lex $P117, "$_"
    unless_null $P117, vivify_545
    new $P117, "Undef"
  vivify_545:
    set $N102, $P117
    isle $I103, $N101, $N102
    unless $I103, loop1561_done
  loop1561_redo:
.annotate 'line', 871
    set $P118, $P1558
    unless_null $P118, vivify_546
    new $P118, "Undef"
  vivify_546:
    set $I104, $P118
    find_lex $P1560, "$_"
    unless_null $P1560, vivify_547
    $P1560 = root_new ['parrot';'ResizablePMCArray']
  vivify_547:
    set $P119, $P1560[$I104]
    unless_null $P119, vivify_548
    new $P119, "Undef"
  vivify_548:
    find_lex $P120, "$cand_class"
    unless_null $P120, vivify_549
    new $P120, "Undef"
  vivify_549:
    issame $I105, $P119, $P120
    unless $I105, if_1559_end
.annotate 'line', 872
    new $P121, "Float"
    assign $P121, 1
    store_lex "$rejected", $P121
  if_1559_end:
.annotate 'line', 874
    set $P118, $P1558
    unless_null $P118, vivify_550
    new $P118, "Undef"
  vivify_550:
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
.sub "_block1569"  :anon :subid("158_1334918351.99") :outer("153_1334918351.99")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 900
    .const 'Sub' $P1576 = "159_1334918351.99" 
    capture_lex $P1576
.annotate 'line', 901
    $P1572 = root_new ['parrot';'ResizablePMCArray']
    set $P1571, $P1572
    .lex "@new_list", $P1571
.annotate 'line', 900
    set $P1573, $P1571
    unless_null $P1573, vivify_558
    $P1573 = root_new ['parrot';'ResizablePMCArray']
  vivify_558:
.annotate 'line', 902
    find_lex $P108, "$i"
    unless_null $P108, vivify_559
    new $P108, "Undef"
  vivify_559:
    set $I101, $P108
    find_lex $P1574, "@merge_list"
    unless_null $P1574, vivify_560
    $P1574 = root_new ['parrot';'ResizablePMCArray']
  vivify_560:
    set $P109, $P1574[$I101]
    unless_null $P109, vivify_561
    new $P109, "Undef"
  vivify_561:
    defined $I102, $P109
    unless $I102, for_undef_562
    iter $P107, $P109
    new $P112, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P112, loop1580_handler
    push_eh $P112
  loop1580_test:
    unless $P107, loop1580_done
    shift $P110, $P107
  loop1580_redo:
    .const 'Sub' $P1576 = "159_1334918351.99" 
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
  for_undef_562:
.annotate 'line', 907
    set $P1581, $P1571
    unless_null $P1581, vivify_567
    $P1581 = root_new ['parrot';'ResizablePMCArray']
  vivify_567:
    find_lex $P107, "$i"
    unless_null $P107, vivify_568
    new $P107, "Undef"
  vivify_568:
    set $I101, $P107
    find_lex $P1582, "@merge_list"
    unless_null $P1582, vivify_569
    $P1582 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@merge_list", $P1582
  vivify_569:
    set $P1582[$I101], $P1581
.annotate 'line', 908
    find_lex $P107, "$i"
    unless_null $P107, vivify_570
    new $P107, "Undef"
  vivify_570:
    add $P108, $P107, 1
    store_lex "$i", $P108
.annotate 'line', 900
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1575"  :anon :subid("159_1334918351.99") :outer("158_1334918351.99")
    .param pmc param_1577
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 902
    .lex "$_", param_1577
.annotate 'line', 903
    find_lex $P112, "$_"
    unless_null $P112, vivify_563
    new $P112, "Undef"
  vivify_563:
    find_lex $P113, "$accepted"
    unless_null $P113, vivify_564
    new $P113, "Undef"
  vivify_564:
    issame $I103, $P112, $P113
    unless $I103, unless_1578
    new $P111, 'Integer'
    set $P111, $I103
    goto unless_1578_end
  unless_1578:
.annotate 'line', 904
    find_lex $P1579, "@new_list"
    unless_null $P1579, vivify_565
    $P1579 = root_new ['parrot';'ResizablePMCArray']
  vivify_565:
    find_lex $P114, "$_"
    unless_null $P114, vivify_566
    new $P114, "Undef"
  vivify_566:
    $P115 = $P1579."push"($P114)
.annotate 'line', 903
    set $P111, $P115
  unless_1578_end:
.annotate 'line', 902
    .return ($P111)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "archetypes" :anon :subid("59_1334918351.99") :outer("149_1334918351.99")
    .param pmc param_1591
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 604
    .lex "self", param_1591
    find_lex $P107, "$archetypes"
    unless_null $P107, vivify_575
    new $P107, "Undef"
  vivify_575:
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "new" :anon :subid("60_1334918351.99") :outer("149_1334918351.99")
    .param pmc param_1593
    .param pmc param_1594 :optional :named("name")
    .param int has_param_1594 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 613
    .lex "self", param_1593
    if has_param_1594, optparam_576
    new $P107, "Undef"
    set param_1594, $P107
  optparam_576:
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
    unless_null $P109, vivify_577
    new $P109, "Undef"
  vivify_577:
    set $P110, param_1594
    unless_null $P110, vivify_578
    new $P110, "Undef"
  vivify_578:
    $P109."BUILD"($P110 :named("name"))
.annotate 'line', 613
    set $P109, $P1595
    unless_null $P109, vivify_579
    new $P109, "Undef"
  vivify_579:
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "BUILD" :anon :subid("61_1334918351.99") :outer("149_1334918351.99")
    .param pmc param_1597
    .param pmc param_1598 :optional :named("name")
    .param int has_param_1598 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 619
    .lex "self", param_1597
    if has_param_1598, optparam_580
    new $P107, "Undef"
    set param_1598, $P107
  optparam_580:
    .lex "$name", param_1598
.annotate 'line', 620
    set $P108, param_1598
    unless_null $P108, vivify_581
    new $P108, "Undef"
  vivify_581:
    set $P109, param_1597
    nqp_decontainerize $P110, $P109
    nqp_get_sc_object $P111, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_bind_attr_obj $P110, $P111, "$!name", 0, $P108
.annotate 'line', 619
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "new_type" :anon :subid("62_1334918351.99") :outer("149_1334918351.99")
    .param pmc param_1600
    .param pmc param_1601 :optional :named("name")
    .param int has_param_1601 :opt_flag
    .param pmc param_1602 :optional :named("repr")
    .param int has_param_1602 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 625
    .lex "self", param_1600
    if has_param_1601, optparam_582
    new $P107, "String"
    assign $P107, "<anon>"
    set param_1601, $P107
  optparam_582:
    .lex "$name", param_1601
    if has_param_1602, optparam_583
    new $P108, "String"
    assign $P108, "P6opaque"
    set param_1602, $P108
  optparam_583:
    .lex "$repr", param_1602
.annotate 'line', 626
    new $P109, "Undef"
    set $P1603, $P109
    .lex "$metaclass", $P1603
    set $P110, param_1600
    nqp_decontainerize $P111, $P110
    set $P112, param_1601
    unless_null $P112, vivify_584
    new $P112, "Undef"
  vivify_584:
    $P113 = $P111."new"($P112 :named("name"))
    set $P1603, $P113
.annotate 'line', 628
    set $P110, $P1603
    unless_null $P110, vivify_585
    new $P110, "Undef"
  vivify_585:
    set $P111, param_1602
    unless_null $P111, vivify_586
    new $P111, "Undef"
  vivify_586:
    set $S100, $P111
    repr_type_object_for $P112, $P110, $S100
    $P1604 = root_new ['parrot';'Hash']
    set_who $P112, $P1604
.annotate 'line', 625
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_method" :anon :subid("63_1334918351.99") :outer("149_1334918351.99")
    .param pmc param_1606
    .param pmc param_1607
    .param pmc param_1608
    .param pmc param_1609
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 632
    .lex "self", param_1606
    .lex "$obj", param_1607
    .lex "$name", param_1608
    .lex "$code_obj", param_1609
.annotate 'line', 633
    set $P107, param_1608
    unless_null $P107, vivify_587
    new $P107, "Undef"
  vivify_587:
    set $P108, param_1606
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P1611, $P109, $P110, "%!methods", 2
    unless_null $P1611, vivify_588
    $P1611 = root_new ['parrot';'Hash']
  vivify_588:
    set $P111, $P1611[$P107]
    unless_null $P111, vivify_589
    new $P111, "Undef"
  vivify_589:
    unless $P111, if_1610_end
.annotate 'line', 634
    new $P112, "String"
    assign $P112, "This class already has a method named "
    set $P113, param_1608
    unless_null $P113, vivify_590
    new $P113, "Undef"
  vivify_590:
    concat $P114, $P112, $P113
    die $P114
  if_1610_end:
.annotate 'line', 636
    set $P108, param_1609
    unless_null $P108, vivify_591
    new $P108, "Undef"
  vivify_591:
    isnull $I100, $P108
    unless $I100, unless_1613
    new $P107, 'Integer'
    set $P107, $I100
    goto unless_1613_end
  unless_1613:
    set $P109, param_1609
    unless_null $P109, vivify_592
    new $P109, "Undef"
  vivify_592:
    isa $I101, $P109, "Undef"
    new $P107, 'Integer'
    set $P107, $I101
  unless_1613_end:
    unless $P107, if_1612_end
.annotate 'line', 637
    new $P110, 'String'
    set $P110, "Cannot add a null method '"
    set $P111, param_1608
    unless_null $P111, vivify_593
    new $P111, "Undef"
  vivify_593:
    concat $P112, $P110, $P111
    concat $P113, $P112, "' to class '"
    set $P114, param_1606
    nqp_decontainerize $P115, $P114
    nqp_get_sc_object $P116, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P117, $P115, $P116, "$!name", 0
    unless_null $P117, vivify_594
    new $P117, "Undef"
  vivify_594:
    concat $P118, $P113, $P117
    concat $P119, $P118, "'"
    die $P119
  if_1612_end:
.annotate 'line', 639
    set $P107, param_1607
    unless_null $P107, vivify_595
    new $P107, "Undef"
  vivify_595:
    new $P108, "Float"
    assign $P108, 0
    set $I100, $P108
    set_method_cache_authoritativeness $P107, $I100
.annotate 'line', 640
    $P1614 = root_new ['parrot';'Hash']
    set $P107, param_1606
    nqp_decontainerize $P108, $P107
    nqp_get_sc_object $P109, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_bind_attr_obj $P108, $P109, "%!cache", 12, $P1614
.annotate 'line', 641
    set $P107, param_1609
    unless_null $P107, vivify_596
    new $P107, "Undef"
  vivify_596:
    set $P108, param_1608
    unless_null $P108, vivify_597
    new $P108, "Undef"
  vivify_597:
    set $P109, param_1606
    nqp_decontainerize $P110, $P109
    nqp_get_sc_object $P111, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P1615, $P110, $P111, "%!methods", 2
    unless_null $P1615, vivify_598
    $P1615 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P110, $P111, "%!methods", 2, $P1615
  vivify_598:
    set $P1615[$P108], $P107
.annotate 'line', 632
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_multi_method" :anon :subid("64_1334918351.99") :outer("149_1334918351.99")
    .param pmc param_1617
    .param pmc param_1618
    .param pmc param_1619
    .param pmc param_1620
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
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
    unless_null $P1623, vivify_599
    $P1623 = root_new ['parrot';'Hash']
  vivify_599:
.annotate 'line', 651
    set $P107, param_1619
    unless_null $P107, vivify_600
    new $P107, "Undef"
  vivify_600:
    set $P1624, $P1621
    unless_null $P1624, vivify_601
    $P1624 = root_new ['parrot';'Hash']
    set $P1621, $P1624
  vivify_601:
    set $P1624["name"], $P107
.annotate 'line', 652
    set $P107, param_1620
    unless_null $P107, vivify_602
    new $P107, "Undef"
  vivify_602:
    set $P1625, $P1621
    unless_null $P1625, vivify_603
    $P1625 = root_new ['parrot';'Hash']
    set $P1621, $P1625
  vivify_603:
    set $P1625["code"], $P107
.annotate 'line', 653
    set $P1626, $P1621
    unless_null $P1626, vivify_604
    $P1626 = root_new ['parrot';'Hash']
  vivify_604:
    set $P107, param_1617
    nqp_decontainerize $P108, $P107
    nqp_get_sc_object $P109, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P1627, $P108, $P109, "@!multi_methods_to_incorporate", 3
    unless_null $P1627, vivify_605
    $P1627 = root_new ['parrot';'ResizablePMCArray']
  vivify_605:
    set $N100, $P1627
    set $I100, $N100
    set $P110, param_1617
    nqp_decontainerize $P111, $P110
    nqp_get_sc_object $P112, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P1628, $P111, $P112, "@!multi_methods_to_incorporate", 3
    unless_null $P1628, vivify_606
    $P1628 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P111, $P112, "@!multi_methods_to_incorporate", 3, $P1628
  vivify_606:
    set $P1628[$I100], $P1626
.annotate 'line', 654
    set $P107, param_1618
    unless_null $P107, vivify_607
    new $P107, "Undef"
  vivify_607:
    new $P108, "Float"
    assign $P108, 0
    set $I100, $P108
    set_method_cache_authoritativeness $P107, $I100
.annotate 'line', 644
    set $P107, param_1620
    unless_null $P107, vivify_608
    new $P107, "Undef"
  vivify_608:
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_attribute" :anon :subid("65_1334918351.99") :outer("149_1334918351.99")
    .param pmc param_1630
    .param pmc param_1631
    .param pmc param_1632
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 658
    .lex "self", param_1630
    .lex "$obj", param_1631
    .lex "$meta_attr", param_1632
.annotate 'line', 659
    new $P107, "Undef"
    set $P1633, $P107
    .lex "$name", $P1633
    set $P108, param_1632
    unless_null $P108, vivify_609
    new $P108, "Undef"
  vivify_609:
    $P109 = $P108."name"()
    set $P1633, $P109
.annotate 'line', 660
    set $P108, $P1633
    unless_null $P108, vivify_610
    new $P108, "Undef"
  vivify_610:
    set $P109, param_1630
    nqp_decontainerize $P110, $P109
    nqp_get_sc_object $P111, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P1635, $P110, $P111, "%!attributes", 1
    unless_null $P1635, vivify_611
    $P1635 = root_new ['parrot';'Hash']
  vivify_611:
    set $P112, $P1635[$P108]
    unless_null $P112, vivify_612
    new $P112, "Undef"
  vivify_612:
    unless $P112, if_1634_end
.annotate 'line', 661
    new $P113, "String"
    assign $P113, "This class already has an attribute named "
    set $P114, $P1633
    unless_null $P114, vivify_613
    new $P114, "Undef"
  vivify_613:
    concat $P115, $P113, $P114
    die $P115
  if_1634_end:
.annotate 'line', 663
    set $P108, param_1632
    unless_null $P108, vivify_614
    new $P108, "Undef"
  vivify_614:
    set $P109, $P1633
    unless_null $P109, vivify_615
    new $P109, "Undef"
  vivify_615:
    set $P110, param_1630
    nqp_decontainerize $P111, $P110
    nqp_get_sc_object $P112, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P1636, $P111, $P112, "%!attributes", 1
    unless_null $P1636, vivify_616
    $P1636 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P111, $P112, "%!attributes", 1, $P1636
  vivify_616:
    set $P1636[$P109], $P108
.annotate 'line', 658
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_parent" :anon :subid("66_1334918351.99") :outer("149_1334918351.99")
    .param pmc param_1638
    .param pmc param_1639
    .param pmc param_1640
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 666
    .const 'Sub' $P1645 = "160_1334918351.99" 
    capture_lex $P1645
    .lex "self", param_1638
    .lex "$obj", param_1639
    .lex "$parent", param_1640
.annotate 'line', 667
    set $P107, param_1638
    nqp_decontainerize $P108, $P107
    nqp_get_sc_object $P109, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P110, $P108, $P109, "$!composed", 9
    unless_null $P110, vivify_617
    new $P110, "Undef"
  vivify_617:
    unless $P110, if_1641_end
.annotate 'line', 668
    die "NQPClassHOW does not support adding parents after being composed."
  if_1641_end:
.annotate 'line', 670
    set $P107, param_1639
    unless_null $P107, vivify_618
    new $P107, "Undef"
  vivify_618:
    set $P108, param_1640
    unless_null $P108, vivify_619
    new $P108, "Undef"
  vivify_619:
    issame $I100, $P107, $P108
    unless $I100, if_1642_end
.annotate 'line', 671
    new $P109, 'String'
    set $P109, "Class '"
    set $P110, param_1638
    nqp_decontainerize $P111, $P110
    nqp_get_sc_object $P112, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P113, $P111, $P112, "$!name", 0
    unless_null $P113, vivify_620
    new $P113, "Undef"
  vivify_620:
    concat $P114, $P109, $P113
    concat $P115, $P114, "' cannot inherit from itself."
    die $P115
  if_1642_end:
.annotate 'line', 673
    set $P108, param_1638
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P1643, $P109, $P110, "@!parents", 4
    unless_null $P1643, vivify_621
    $P1643 = root_new ['parrot';'ResizablePMCArray']
  vivify_621:
    defined $I100, $P1643
    unless $I100, for_undef_622
    iter $P107, $P1643
    new $P113, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P113, loop1648_handler
    push_eh $P113
  loop1648_test:
    unless $P107, loop1648_done
    shift $P111, $P107
  loop1648_redo:
    .const 'Sub' $P1645 = "160_1334918351.99" 
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
  for_undef_622:
.annotate 'line', 678
    set $P107, param_1640
    unless_null $P107, vivify_626
    new $P107, "Undef"
  vivify_626:
    set $P108, param_1638
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P1649, $P109, $P110, "@!parents", 4
    unless_null $P1649, vivify_627
    $P1649 = root_new ['parrot';'ResizablePMCArray']
  vivify_627:
    set $N100, $P1649
    set $I100, $N100
    set $P111, param_1638
    nqp_decontainerize $P112, $P111
    nqp_get_sc_object $P113, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P1650, $P112, $P113, "@!parents", 4
    unless_null $P1650, vivify_628
    $P1650 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P112, $P113, "@!parents", 4, $P1650
  vivify_628:
    set $P1650[$I100], $P107
.annotate 'line', 666
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1644"  :anon :subid("160_1334918351.99") :outer("66_1334918351.99")
    .param pmc param_1646
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 673
    .lex "$_", param_1646
.annotate 'line', 674
    find_lex $P113, "$_"
    unless_null $P113, vivify_623
    new $P113, "Undef"
  vivify_623:
    find_lex $P114, "$parent"
    unless_null $P114, vivify_624
    new $P114, "Undef"
  vivify_624:
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
    unless_null $P116, vivify_625
    new $P116, "Undef"
  vivify_625:
    concat $P117, $P115, $P116
    concat $P118, $P117, " as a parent class."
    die $P118
  if_1647_end:
.annotate 'line', 673
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "set_default_parent" :anon :subid("67_1334918351.99") :outer("149_1334918351.99")
    .param pmc param_1652
    .param pmc param_1653
    .param pmc param_1654
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 681
    .lex "self", param_1652
    .lex "$obj", param_1653
    .lex "$parent", param_1654
.annotate 'line', 682
    set $P107, param_1654
    unless_null $P107, vivify_629
    new $P107, "Undef"
  vivify_629:
    set $P108, param_1652
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_bind_attr_obj $P109, $P110, "$!default_parent", 6, $P107
.annotate 'line', 681
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_role" :anon :subid("68_1334918351.99") :outer("149_1334918351.99")
    .param pmc param_1656
    .param pmc param_1657
    .param pmc param_1658
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 685
    .const 'Sub' $P1661 = "161_1334918351.99" 
    capture_lex $P1661
    .lex "self", param_1656
    .lex "$obj", param_1657
    .lex "$role", param_1658
.annotate 'line', 686
    set $P108, param_1656
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P1659, $P109, $P110, "@!roles", 5
    unless_null $P1659, vivify_630
    $P1659 = root_new ['parrot';'ResizablePMCArray']
  vivify_630:
    defined $I100, $P1659
    unless $I100, for_undef_631
    iter $P107, $P1659
    new $P113, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P113, loop1664_handler
    push_eh $P113
  loop1664_test:
    unless $P107, loop1664_done
    shift $P111, $P107
  loop1664_redo:
    .const 'Sub' $P1661 = "161_1334918351.99" 
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
  for_undef_631:
.annotate 'line', 691
    set $P107, param_1658
    unless_null $P107, vivify_635
    new $P107, "Undef"
  vivify_635:
    set $P108, param_1656
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P1665, $P109, $P110, "@!roles", 5
    unless_null $P1665, vivify_636
    $P1665 = root_new ['parrot';'ResizablePMCArray']
  vivify_636:
    set $N100, $P1665
    set $I100, $N100
    set $P111, param_1656
    nqp_decontainerize $P112, $P111
    nqp_get_sc_object $P113, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P1666, $P112, $P113, "@!roles", 5
    unless_null $P1666, vivify_637
    $P1666 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P112, $P113, "@!roles", 5, $P1666
  vivify_637:
    set $P1666[$I100], $P107
.annotate 'line', 685
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1660"  :anon :subid("161_1334918351.99") :outer("68_1334918351.99")
    .param pmc param_1662
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 686
    .lex "$_", param_1662
.annotate 'line', 687
    find_lex $P113, "$_"
    unless_null $P113, vivify_632
    new $P113, "Undef"
  vivify_632:
    find_lex $P114, "$role"
    unless_null $P114, vivify_633
    new $P114, "Undef"
  vivify_633:
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
    unless_null $P116, vivify_634
    new $P116, "Undef"
  vivify_634:
    concat $P117, $P115, $P116
    concat $P118, $P117, " has already been added."
    die $P118
  if_1663_end:
.annotate 'line', 686
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_parrot_vtable_mapping" :anon :subid("69_1334918351.99") :outer("149_1334918351.99")
    .param pmc param_1668
    .param pmc param_1669
    .param pmc param_1670
    .param pmc param_1671
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 694
    .lex "self", param_1668
    .lex "$obj", param_1669
    .lex "$name", param_1670
    .lex "$meth", param_1671
.annotate 'line', 695
    set $P107, param_1670
    unless_null $P107, vivify_638
    new $P107, "Undef"
  vivify_638:
    set $P108, param_1668
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P1673, $P109, $P110, "%!parrot_vtable_mapping", 13
    unless_null $P1673, vivify_639
    $P1673 = root_new ['parrot';'Hash']
  vivify_639:
    set $P111, $P1673[$P107]
    unless_null $P111, vivify_640
    new $P111, "Undef"
  vivify_640:
    defined $I100, $P111
    unless $I100, if_1672_end
.annotate 'line', 696
    new $P112, "String"
    assign $P112, "Class '"
    set $P113, param_1668
    nqp_decontainerize $P114, $P113
    nqp_get_sc_object $P115, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P116, $P114, $P115, "$!name", 0
    unless_null $P116, vivify_641
    new $P116, "Undef"
  vivify_641:
    concat $P117, $P112, $P116
    concat $P118, $P117, "' already has a Parrot v-table override for '"
    set $P119, param_1670
    unless_null $P119, vivify_642
    new $P119, "Undef"
  vivify_642:
    concat $P120, $P118, $P119
.annotate 'line', 697
    concat $P121, $P120, "'"
.annotate 'line', 698
    die $P121
  if_1672_end:
.annotate 'line', 700
    set $P107, param_1671
    unless_null $P107, vivify_643
    new $P107, "Undef"
  vivify_643:
    set $P108, param_1670
    unless_null $P108, vivify_644
    new $P108, "Undef"
  vivify_644:
    set $P109, param_1668
    nqp_decontainerize $P110, $P109
    nqp_get_sc_object $P111, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P1674, $P110, $P111, "%!parrot_vtable_mapping", 13
    unless_null $P1674, vivify_645
    $P1674 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P110, $P111, "%!parrot_vtable_mapping", 13, $P1674
  vivify_645:
    set $P1674[$P108], $P107
.annotate 'line', 694
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_parrot_vtable_handler_mapping" :anon :subid("70_1334918351.99") :outer("149_1334918351.99")
    .param pmc param_1676
    .param pmc param_1677
    .param pmc param_1678
    .param pmc param_1679
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 703
    .lex "self", param_1676
    .lex "$obj", param_1677
    .lex "$name", param_1678
    .lex "$att_name", param_1679
.annotate 'line', 704
    set $P107, param_1678
    unless_null $P107, vivify_646
    new $P107, "Undef"
  vivify_646:
    set $P108, param_1676
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P1681, $P109, $P110, "%!parrot_vtable_handler_mapping", 14
    unless_null $P1681, vivify_647
    $P1681 = root_new ['parrot';'Hash']
  vivify_647:
    set $P111, $P1681[$P107]
    unless_null $P111, vivify_648
    new $P111, "Undef"
  vivify_648:
    defined $I100, $P111
    unless $I100, if_1680_end
.annotate 'line', 705
    new $P112, "String"
    assign $P112, "Class '"
    set $P113, param_1676
    nqp_decontainerize $P114, $P113
    nqp_get_sc_object $P115, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P116, $P114, $P115, "$!name", 0
    unless_null $P116, vivify_649
    new $P116, "Undef"
  vivify_649:
    concat $P117, $P112, $P116
    concat $P118, $P117, "' already has a Parrot v-table handler for '"
    set $P119, param_1678
    unless_null $P119, vivify_650
    new $P119, "Undef"
  vivify_650:
    concat $P120, $P118, $P119
.annotate 'line', 706
    concat $P121, $P120, "'"
.annotate 'line', 707
    die $P121
  if_1680_end:
.annotate 'line', 709
    set $P107, param_1677
    unless_null $P107, vivify_651
    new $P107, "Undef"
  vivify_651:
    set $P108, param_1679
    unless_null $P108, vivify_652
    new $P108, "Undef"
  vivify_652:
    new $P109, "ResizablePMCArray"
    push $P109, $P107
    push $P109, $P108
    set $P110, param_1678
    unless_null $P110, vivify_653
    new $P110, "Undef"
  vivify_653:
    set $P111, param_1676
    nqp_decontainerize $P112, $P111
    nqp_get_sc_object $P113, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P1682, $P112, $P113, "%!parrot_vtable_handler_mapping", 14
    unless_null $P1682, vivify_654
    $P1682 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P112, $P113, "%!parrot_vtable_handler_mapping", 14, $P1682
  vivify_654:
    set $P1682[$P110], $P109
.annotate 'line', 703
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "compose" :anon :subid("71_1334918351.99") :outer("149_1334918351.99")
    .param pmc param_1684
    .param pmc param_1685
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 712
    .const 'Sub' $P1710 = "164_1334918351.99" 
    capture_lex $P1710
    .const 'Sub' $P1689 = "162_1334918351.99" 
    capture_lex $P1689
    .lex "self", param_1684
    .lex "$obj", param_1685
.annotate 'line', 716
    set $P107, param_1684
    nqp_decontainerize $P108, $P107
    nqp_get_sc_object $P109, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P1687, $P108, $P109, "@!roles", 5
    unless_null $P1687, vivify_655
    $P1687 = root_new ['parrot';'ResizablePMCArray']
  vivify_655:
    unless $P1687, if_1686_end
    .const 'Sub' $P1689 = "162_1334918351.99" 
    capture_lex $P1689
    $P1689()
  if_1686_end:
.annotate 'line', 729
    set $P108, param_1684
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P1707, $P109, $P110, "@!parents", 4
    unless_null $P1707, vivify_672
    $P1707 = root_new ['parrot';'ResizablePMCArray']
  vivify_672:
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
    nqp_get_sc_object $P113, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P114, $P112, $P113, "$!name", 0
    unless_null $P114, vivify_673
    new $P114, "Undef"
  vivify_673:
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
    unless_null $P117, vivify_674
    new $P117, "Undef"
  vivify_674:
    set $P118, param_1684
    nqp_decontainerize $P119, $P118
    nqp_get_sc_object $P120, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P121, $P119, $P120, "$!default_parent", 6
    unless_null $P121, vivify_675
    new $P121, "Undef"
  vivify_675:
    $P116."add_parent"($P117, $P121)
  if_1705_end:
.annotate 'line', 735
    set $P107, param_1684
    nqp_decontainerize $P108, $P107
    nqp_get_sc_object $P109, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P110, $P108, $P109, "$!composed", 9
    unless_null $P110, vivify_676
    new $P110, "Undef"
  vivify_676:
    if $P110, unless_1708_end
.annotate 'line', 736
    set $P111, param_1685
    unless_null $P111, vivify_677
    new $P111, "Undef"
  vivify_677:
    $P112 = "compute_c3_mro"($P111)
    set $P113, param_1684
    nqp_decontainerize $P114, $P113
    nqp_get_sc_object $P115, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_bind_attr_obj $P114, $P115, "@!mro", 10, $P112
.annotate 'line', 737
    new $P111, "Float"
    assign $P111, 1
    set $P112, param_1684
    nqp_decontainerize $P113, $P112
    nqp_get_sc_object $P114, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_bind_attr_obj $P113, $P114, "$!composed", 9, $P111
  unless_1708_end:
.annotate 'line', 741
    set $P107, param_1684
    nqp_decontainerize $P108, $P107
    set $P109, param_1685
    unless_null $P109, vivify_678
    new $P109, "Undef"
  vivify_678:
    $P108."incorporate_multi_candidates"($P109)
.annotate 'line', 744
    set $P108, param_1684
    nqp_decontainerize $P109, $P108
    set $P110, param_1685
    unless_null $P110, vivify_679
    new $P110, "Undef"
  vivify_679:
    $P111 = $P109."attributes"($P110, "0" :named("local"))
    defined $I100, $P111
    unless $I100, for_undef_680
    iter $P107, $P111
    new $P113, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P113, loop1712_handler
    push_eh $P113
  loop1712_test:
    unless $P107, loop1712_done
    shift $P112, $P107
  loop1712_redo:
    .const 'Sub' $P1710 = "164_1334918351.99" 
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
  for_undef_680:
.annotate 'line', 747
    set $P107, param_1684
    nqp_decontainerize $P108, $P107
    set $P109, param_1685
    unless_null $P109, vivify_683
    new $P109, "Undef"
  vivify_683:
    $P108."publish_type_cache"($P109)
.annotate 'line', 748
    set $P107, param_1684
    nqp_decontainerize $P108, $P107
    set $P109, param_1685
    unless_null $P109, vivify_684
    new $P109, "Undef"
  vivify_684:
    $P108."publish_method_cache"($P109)
.annotate 'line', 749
    set $P107, param_1684
    nqp_decontainerize $P108, $P107
    set $P109, param_1685
    unless_null $P109, vivify_685
    new $P109, "Undef"
  vivify_685:
    $P108."publish_boolification_spec"($P109)
.annotate 'line', 752
    set $P107, param_1684
    nqp_decontainerize $P108, $P107
    set $P109, param_1685
    unless_null $P109, vivify_686
    new $P109, "Undef"
  vivify_686:
    $P108."publish_parrot_vtable_mapping"($P109)
.annotate 'line', 753
    set $P107, param_1684
    nqp_decontainerize $P108, $P107
    set $P109, param_1685
    unless_null $P109, vivify_687
    new $P109, "Undef"
  vivify_687:
    $P108."publish_parrot_vtablee_handler_mapping"($P109)
.annotate 'line', 712
    set $P107, param_1685
    unless_null $P107, vivify_688
    new $P107, "Undef"
  vivify_688:
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1688"  :anon :subid("162_1334918351.99") :outer("71_1334918351.99")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 716
    .const 'Sub' $P1695 = "163_1334918351.99" 
    capture_lex $P1695
.annotate 'line', 717
    $P1691 = root_new ['parrot';'ResizablePMCArray']
    set $P1690, $P1691
    .lex "@specialized_roles", $P1690
.annotate 'line', 716
    set $P1692, $P1690
    unless_null $P1692, vivify_656
    $P1692 = root_new ['parrot';'ResizablePMCArray']
  vivify_656:
.annotate 'line', 718
    find_lex $P111, "self"
    nqp_decontainerize $P112, $P111
    nqp_get_sc_object $P113, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P1693, $P112, $P113, "@!roles", 5
    unless_null $P1693, vivify_657
    $P1693 = root_new ['parrot';'ResizablePMCArray']
  vivify_657:
    defined $I100, $P1693
    unless $I100, for_undef_658
    iter $P110, $P1693
    new $P117, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P117, loop1703_handler
    push_eh $P117
  loop1703_test:
    unless $P110, loop1703_done
    shift $P114, $P110
  loop1703_redo:
    .const 'Sub' $P1695 = "163_1334918351.99" 
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
  for_undef_658:
.annotate 'line', 724
    find_lex $P110, "RoleToClassApplier"
    find_lex $P111, "$obj"
    unless_null $P111, vivify_670
    new $P111, "Undef"
  vivify_670:
    set $P1704, $P1690
    unless_null $P1704, vivify_671
    $P1704 = root_new ['parrot';'ResizablePMCArray']
  vivify_671:
    $P112 = $P110."apply"($P111, $P1704)
.annotate 'line', 716
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1694"  :anon :subid("163_1334918351.99") :outer("162_1334918351.99")
    .param pmc param_1697
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 719
    new $P115, "Undef"
    set $P1696, $P115
    .lex "$ins", $P1696
    .lex "$_", param_1697
    find_lex $P116, "$_"
    unless_null $P116, vivify_659
    new $P116, "Undef"
  vivify_659:
    get_how $P117, $P116
    find_lex $P118, "$_"
    unless_null $P118, vivify_660
    new $P118, "Undef"
  vivify_660:
    find_lex $P119, "$obj"
    unless_null $P119, vivify_661
    new $P119, "Undef"
  vivify_661:
    $P120 = $P117."specialize"($P118, $P119)
    set $P1696, $P120
.annotate 'line', 720
    find_lex $P1698, "@specialized_roles"
    unless_null $P1698, vivify_662
    $P1698 = root_new ['parrot';'ResizablePMCArray']
  vivify_662:
    set $P116, $P1696
    unless_null $P116, vivify_663
    new $P116, "Undef"
  vivify_663:
    $P1698."push"($P116)
.annotate 'line', 721
    find_lex $P116, "$_"
    unless_null $P116, vivify_664
    new $P116, "Undef"
  vivify_664:
    find_lex $P117, "self"
    nqp_decontainerize $P118, $P117
    nqp_get_sc_object $P119, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P1699, $P118, $P119, "@!done", 11
    unless_null $P1699, vivify_665
    $P1699 = root_new ['parrot';'ResizablePMCArray']
  vivify_665:
    set $N100, $P1699
    set $I101, $N100
    find_lex $P120, "self"
    nqp_decontainerize $P121, $P120
    nqp_get_sc_object $P122, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P1700, $P121, $P122, "@!done", 11
    unless_null $P1700, vivify_666
    $P1700 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P121, $P122, "@!done", 11, $P1700
  vivify_666:
    set $P1700[$I101], $P116
.annotate 'line', 722
    set $P116, $P1696
    unless_null $P116, vivify_667
    new $P116, "Undef"
  vivify_667:
    find_lex $P117, "self"
    nqp_decontainerize $P118, $P117
    nqp_get_sc_object $P119, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P1701, $P118, $P119, "@!done", 11
    unless_null $P1701, vivify_668
    $P1701 = root_new ['parrot';'ResizablePMCArray']
  vivify_668:
    set $N100, $P1701
    set $I101, $N100
    find_lex $P120, "self"
    nqp_decontainerize $P121, $P120
    nqp_get_sc_object $P122, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P1702, $P121, $P122, "@!done", 11
    unless_null $P1702, vivify_669
    $P1702 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P121, $P122, "@!done", 11, $P1702
  vivify_669:
    set $P1702[$I101], $P116
.annotate 'line', 718
    .return ($P116)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1709"  :anon :subid("164_1334918351.99") :outer("71_1334918351.99")
    .param pmc param_1711
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 744
    .lex "$_", param_1711
    find_lex $P113, "$_"
    unless_null $P113, vivify_681
    new $P113, "Undef"
  vivify_681:
    find_lex $P114, "$obj"
    unless_null $P114, vivify_682
    new $P114, "Undef"
  vivify_682:
    $P115 = $P113."compose"($P114)
    .return ($P115)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "incorporate_multi_candidates" :anon :subid("72_1334918351.99") :outer("149_1334918351.99")
    .param pmc param_1714
    .param pmc param_1715
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 758
    .const 'Sub' $P1720 = "165_1334918351.99" 
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
    nqp_get_sc_object $P111, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P1718, $P110, $P111, "@!multi_methods_to_incorporate", 3
    unless_null $P1718, vivify_689
    $P1718 = root_new ['parrot';'ResizablePMCArray']
  vivify_689:
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
    unless_null $P109, vivify_690
    new $P109, "Undef"
  vivify_690:
    set $N100, $P109
    set $P110, $P1716
    unless_null $P110, vivify_691
    new $P110, "Undef"
  vivify_691:
    set $N101, $P110
    isne $I100, $N100, $N101
    unless $I100, loop1768_done
  loop1768_redo:
    .const 'Sub' $P1720 = "165_1334918351.99" 
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
.sub "_block1719"  :anon :subid("165_1334918351.99") :outer("72_1334918351.99")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 761
    .const 'Sub' $P1734 = "166_1334918351.99" 
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
    unless_null $P114, vivify_692
    new $P114, "Undef"
  vivify_692:
    set $I101, $P114
    find_lex $P115, "self"
    nqp_decontainerize $P116, $P115
    nqp_get_sc_object $P117, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P1724, $P116, $P117, "@!multi_methods_to_incorporate", 3
    unless_null $P1724, vivify_693
    $P1724 = root_new ['parrot';'ResizablePMCArray']
  vivify_693:
    set $P1725, $P1724[$I101]
    unless_null $P1725, vivify_694
    $P1725 = root_new ['parrot';'Hash']
  vivify_694:
    set $P118, $P1725["name"]
    unless_null $P118, vivify_695
    new $P118, "Undef"
  vivify_695:
    set $P1721, $P118
.annotate 'line', 764
    find_lex $P114, "$i"
    unless_null $P114, vivify_696
    new $P114, "Undef"
  vivify_696:
    set $I101, $P114
    find_lex $P115, "self"
    nqp_decontainerize $P116, $P115
    nqp_get_sc_object $P117, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P1726, $P116, $P117, "@!multi_methods_to_incorporate", 3
    unless_null $P1726, vivify_697
    $P1726 = root_new ['parrot';'ResizablePMCArray']
  vivify_697:
    set $P1727, $P1726[$I101]
    unless_null $P1727, vivify_698
    $P1727 = root_new ['parrot';'Hash']
  vivify_698:
    set $P118, $P1727["code"]
    unless_null $P118, vivify_699
    new $P118, "Undef"
  vivify_699:
    set $P1722, $P118
.annotate 'line', 768
    set $P114, $P1721
    unless_null $P114, vivify_700
    new $P114, "Undef"
  vivify_700:
    find_lex $P115, "self"
    nqp_decontainerize $P116, $P115
    nqp_get_sc_object $P117, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P1728, $P116, $P117, "%!methods", 2
    unless_null $P1728, vivify_701
    $P1728 = root_new ['parrot';'Hash']
  vivify_701:
    set $P118, $P1728[$P114]
    unless_null $P118, vivify_702
    new $P118, "Undef"
  vivify_702:
    set $P1723, $P118
.annotate 'line', 769
    set $P114, $P1723
    unless_null $P114, vivify_703
    new $P114, "Undef"
  vivify_703:
    defined $I101, $P114
    if $I101, if_1729
.annotate 'line', 782
    .const 'Sub' $P1734 = "166_1334918351.99" 
    capture_lex $P1734
    $P1734()
    goto if_1729_end
  if_1729:
.annotate 'line', 772
    set $P115, $P1723
    unless_null $P115, vivify_742
    new $P115, "Undef"
  vivify_742:
    is_dispatcher $I102, $P115
    if $I102, if_1730
.annotate 'line', 775
    set $P117, $P1723
    unless_null $P117, vivify_743
    new $P117, "Undef"
  vivify_743:
    can $I103, $P117, "is_dispatcher"
    if $I103, if_1732
    new $P116, 'Integer'
    set $P116, $I103
    goto if_1732_end
  if_1732:
    set $P118, $P1723
    unless_null $P118, vivify_744
    new $P118, "Undef"
  vivify_744:
    $P119 = $P118."is_dispatcher"()
    set $P116, $P119
  if_1732_end:
    if $P116, if_1731
.annotate 'line', 779
    new $P120, 'String'
    set $P120, "Cannot have a multi candidate for "
    set $P121, $P1721
    unless_null $P121, vivify_745
    new $P121, "Undef"
  vivify_745:
    concat $P122, $P120, $P121
    concat $P123, $P122, " when an only method is also in the class"
    die $P123
.annotate 'line', 778
    goto if_1731_end
  if_1731:
.annotate 'line', 776
    set $P120, $P1723
    unless_null $P120, vivify_746
    new $P120, "Undef"
  vivify_746:
    set $P121, $P1722
    unless_null $P121, vivify_747
    new $P121, "Undef"
  vivify_747:
    $P120."add_dispatchee"($P121)
  if_1731_end:
.annotate 'line', 775
    goto if_1730_end
  if_1730:
.annotate 'line', 773
    set $P116, $P1723
    unless_null $P116, vivify_748
    new $P116, "Undef"
  vivify_748:
    set $P117, $P1722
    unless_null $P117, vivify_749
    new $P117, "Undef"
  vivify_749:
    push_dispatchee $P116, $P117
  if_1730_end:
  if_1729_end:
.annotate 'line', 821
    find_lex $P114, "$i"
    unless_null $P114, vivify_750
    new $P114, "Undef"
  vivify_750:
    add $P115, $P114, 1
    store_lex "$i", $P115
.annotate 'line', 761
    .return ($P115)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1733"  :anon :subid("166_1334918351.99") :outer("165_1334918351.99")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 782
    .const 'Sub' $P1740 = "167_1334918351.99" 
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
    unless_null $P118, vivify_704
    new $P118, "Undef"
  vivify_704:
    set $N102, $P118
    find_lex $P119, "self"
    nqp_decontainerize $P120, $P119
    nqp_get_sc_object $P121, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P1738, $P120, $P121, "@!mro", 10
    unless_null $P1738, vivify_705
    $P1738 = root_new ['parrot';'ResizablePMCArray']
  vivify_705:
    set $N103, $P1738
    isne $I102, $N102, $N103
    if $I102, if_1737
    new $P117, 'Integer'
    set $P117, $I102
    goto if_1737_end
  if_1737:
    set $P122, $P1736
    unless_null $P122, vivify_706
    new $P122, "Undef"
  vivify_706:
    isfalse $I103, $P122
    new $P117, 'Integer'
    set $P117, $I103
  if_1737_end:
    unless $P117, loop1766_done
  loop1766_redo:
    .const 'Sub' $P1740 = "167_1334918351.99" 
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
    unless_null $P118, vivify_740
    new $P118, "Undef"
  vivify_740:
    unless $P118, unless_1767
    set $P117, $P118
    goto unless_1767_end
  unless_1767:
.annotate 'line', 818
    new $P119, 'String'
    set $P119, "Could not find a proto for multi "
    find_lex $P120, "$name"
    unless_null $P120, vivify_741
    new $P120, "Undef"
  vivify_741:
    concat $P121, $P119, $P120
    concat $P122, $P121, ", and proto generation is NYI"
    die $P122
  unless_1767_end:
.annotate 'line', 782
    .return ($P117)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1739"  :anon :subid("167_1334918351.99") :outer("166_1334918351.99")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 786
    .const 'Sub' $P1763 = "169_1334918351.99" 
    capture_lex $P1763
    .const 'Sub' $P1750 = "168_1334918351.99" 
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
    unless_null $P125, vivify_707
    new $P125, "Undef"
  vivify_707:
    set $I104, $P125
    find_lex $P126, "self"
    nqp_decontainerize $P127, $P126
    nqp_get_sc_object $P128, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P1745, $P127, $P128, "@!mro", 10
    unless_null $P1745, vivify_708
    $P1745 = root_new ['parrot';'ResizablePMCArray']
  vivify_708:
    set $P129, $P1745[$I104]
    unless_null $P129, vivify_709
    new $P129, "Undef"
  vivify_709:
    set $P1741, $P129
.annotate 'line', 788
    set $P125, $P1741
    unless_null $P125, vivify_710
    new $P125, "Undef"
  vivify_710:
    get_how $P126, $P125
    set $P127, $P1741
    unless_null $P127, vivify_711
    new $P127, "Undef"
  vivify_711:
    $P128 = $P126."method_table"($P127)
    set $P1742, $P128
.annotate 'line', 789
    find_lex $P125, "$name"
    unless_null $P125, vivify_712
    new $P125, "Undef"
  vivify_712:
    set $P1746, $P1742
    unless_null $P1746, vivify_713
    $P1746 = root_new ['parrot';'Hash']
  vivify_713:
    set $P126, $P1746[$P125]
    unless_null $P126, vivify_714
    new $P126, "Undef"
  vivify_714:
    set $P1744, $P126
.annotate 'line', 790
    set $P125, $P1744
    unless_null $P125, vivify_715
    new $P125, "Undef"
  vivify_715:
    defined $I104, $P125
    unless $I104, if_1747_end
.annotate 'line', 793
    set $P126, $P1744
    unless_null $P126, vivify_716
    new $P126, "Undef"
  vivify_716:
    is_dispatcher $I105, $P126
    if $I105, if_1748
.annotate 'line', 805
    set $P131, $P1744
    unless_null $P131, vivify_717
    new $P131, "Undef"
  vivify_717:
    can $I106, $P131, "is_dispatcher"
    if $I106, if_1761
    new $P130, 'Integer'
    set $P130, $I106
    goto if_1761_end
  if_1761:
    set $P132, $P1744
    unless_null $P132, vivify_718
    new $P132, "Undef"
  vivify_718:
    $P133 = $P132."is_dispatcher"()
    set $P130, $P133
  if_1761_end:
    if $P130, if_1760
.annotate 'line', 812
    new $P136, 'String'
    set $P136, "Could not find a proto for multi "
    find_lex $P137, "$name"
    unless_null $P137, vivify_719
    new $P137, "Undef"
  vivify_719:
    concat $P138, $P136, $P137
    concat $P139, $P138, " (it may exist, but an only is hiding it if so)"
    die $P139
.annotate 'line', 811
    goto if_1760_end
  if_1760:
.annotate 'line', 805
    .const 'Sub' $P1763 = "169_1334918351.99" 
    capture_lex $P1763
    $P1763()
  if_1760_end:
    goto if_1748_end
  if_1748:
.annotate 'line', 793
    .const 'Sub' $P1750 = "168_1334918351.99" 
    capture_lex $P1750
    $P1750()
  if_1748_end:
  if_1747_end:
.annotate 'line', 815
    find_lex $P125, "$j"
    unless_null $P125, vivify_739
    new $P125, "Undef"
  vivify_739:
    add $P126, $P125, 1
    store_lex "$j", $P126
.annotate 'line', 786
    .return ($P126)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1762"  :anon :subid("169_1334918351.99") :outer("167_1334918351.99")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 806
    new $P134, "Undef"
    set $P1764, $P134
    .lex "$new_disp", $P1764
    find_lex $P135, "$dispatcher"
    unless_null $P135, vivify_720
    new $P135, "Undef"
  vivify_720:
    $P136 = $P135."derive_dispatcher"()
    set $P1764, $P136
.annotate 'line', 807
    set $P135, $P1764
    unless_null $P135, vivify_721
    new $P135, "Undef"
  vivify_721:
    find_lex $P136, "$code"
    unless_null $P136, vivify_722
    new $P136, "Undef"
  vivify_722:
    $P135."add_dispatchee"($P136)
.annotate 'line', 808
    set $P135, $P1764
    unless_null $P135, vivify_723
    new $P135, "Undef"
  vivify_723:
    find_lex $P136, "$name"
    unless_null $P136, vivify_724
    new $P136, "Undef"
  vivify_724:
    find_lex $P137, "self"
    nqp_decontainerize $P138, $P137
    nqp_get_sc_object $P139, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P1765, $P138, $P139, "%!methods", 2
    unless_null $P1765, vivify_725
    $P1765 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P138, $P139, "%!methods", 2, $P1765
  vivify_725:
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
.sub "_block1749"  :anon :subid("168_1334918351.99") :outer("167_1334918351.99")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
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
    unless_null $P1755, vivify_726
    $P1755 = root_new ['parrot';'ResizablePMCArray']
  vivify_726:
.annotate 'line', 796
    find_lex $P129, "$code"
    unless_null $P129, vivify_727
    new $P129, "Undef"
  vivify_727:
    new $P130, "Float"
    assign $P130, 0
    set $I106, $P130
    set $P1756, $P1751
    unless_null $P1756, vivify_728
    $P1756 = root_new ['parrot';'ResizablePMCArray']
    set $P1751, $P1756
  vivify_728:
    set $P1756[$I106], $P129
.annotate 'line', 797
    find_lex $P129, "$dispatcher"
    unless_null $P129, vivify_729
    new $P129, "Undef"
  vivify_729:
    set $P1757, $P1751
    unless_null $P1757, vivify_730
    $P1757 = root_new ['parrot';'ResizablePMCArray']
  vivify_730:
    create_dispatch_and_add_candidates $P130, $P129, $P1757
    set $P1753, $P130
.annotate 'line', 798
    find_lex $P129, "$dispatcher"
    unless_null $P129, vivify_731
    new $P129, "Undef"
  vivify_731:
    getprop $P130, $P129, "CLONE_CALLBACK"
    set $P1754, $P130
.annotate 'line', 799
    set $P129, $P1754
    unless_null $P129, vivify_732
    new $P129, "Undef"
  vivify_732:
    defined $I106, $P129
    unless $I106, if_1758_end
.annotate 'line', 800
    set $P130, $P1754
    unless_null $P130, vivify_733
    new $P130, "Undef"
  vivify_733:
    find_lex $P131, "$dispatcher"
    unless_null $P131, vivify_734
    new $P131, "Undef"
  vivify_734:
    set $P132, $P1753
    unless_null $P132, vivify_735
    new $P132, "Undef"
  vivify_735:
    $P130($P131, $P132)
  if_1758_end:
.annotate 'line', 802
    set $P129, $P1753
    unless_null $P129, vivify_736
    new $P129, "Undef"
  vivify_736:
    find_lex $P130, "$name"
    unless_null $P130, vivify_737
    new $P130, "Undef"
  vivify_737:
    find_lex $P131, "self"
    nqp_decontainerize $P132, $P131
    nqp_get_sc_object $P133, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P1759, $P132, $P133, "%!methods", 2
    unless_null $P1759, vivify_738
    $P1759 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P132, $P133, "%!methods", 2, $P1759
  vivify_738:
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
.sub "publish_type_cache" :anon :subid("73_1334918351.99") :outer("149_1334918351.99")
    .param pmc param_1770
    .param pmc param_1771
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 918
    .const 'Sub' $P1783 = "171_1334918351.99" 
    capture_lex $P1783
    .const 'Sub' $P1777 = "170_1334918351.99" 
    capture_lex $P1777
    .lex "self", param_1770
    .lex "$obj", param_1771
.annotate 'line', 919
    $P1773 = root_new ['parrot';'ResizablePMCArray']
    set $P1772, $P1773
    .lex "@tc", $P1772
.annotate 'line', 918
    set $P1774, $P1772
    unless_null $P1774, vivify_751
    $P1774 = root_new ['parrot';'ResizablePMCArray']
  vivify_751:
.annotate 'line', 920
    set $P108, param_1770
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P1775, $P109, $P110, "@!mro", 10
    unless_null $P1775, vivify_752
    $P1775 = root_new ['parrot';'ResizablePMCArray']
  vivify_752:
    defined $I100, $P1775
    unless $I100, for_undef_753
    iter $P107, $P1775
    new $P112, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P112, loop1780_handler
    push_eh $P112
  loop1780_test:
    unless $P107, loop1780_done
    shift $P111, $P107
  loop1780_redo:
    .const 'Sub' $P1777 = "170_1334918351.99" 
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
  for_undef_753:
.annotate 'line', 921
    set $P108, param_1770
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P1781, $P109, $P110, "@!done", 11
    unless_null $P1781, vivify_756
    $P1781 = root_new ['parrot';'ResizablePMCArray']
  vivify_756:
    defined $I100, $P1781
    unless $I100, for_undef_757
    iter $P107, $P1781
    new $P112, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P112, loop1786_handler
    push_eh $P112
  loop1786_test:
    unless $P107, loop1786_done
    shift $P111, $P107
  loop1786_redo:
    .const 'Sub' $P1783 = "171_1334918351.99" 
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
  for_undef_757:
.annotate 'line', 922
    set $P107, param_1771
    unless_null $P107, vivify_760
    new $P107, "Undef"
  vivify_760:
    set $P1787, $P1772
    unless_null $P1787, vivify_761
    $P1787 = root_new ['parrot';'ResizablePMCArray']
  vivify_761:
    publish_type_check_cache $P107, $P1787
.annotate 'line', 918
    .return ()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1776"  :anon :subid("170_1334918351.99") :outer("73_1334918351.99")
    .param pmc param_1778
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 920
    .lex "$_", param_1778
    find_lex $P1779, "@tc"
    unless_null $P1779, vivify_754
    $P1779 = root_new ['parrot';'ResizablePMCArray']
  vivify_754:
    find_lex $P112, "$_"
    unless_null $P112, vivify_755
    new $P112, "Undef"
  vivify_755:
    $P113 = $P1779."push"($P112)
    .return ($P113)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1782"  :anon :subid("171_1334918351.99") :outer("73_1334918351.99")
    .param pmc param_1784
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 921
    .lex "$_", param_1784
    find_lex $P1785, "@tc"
    unless_null $P1785, vivify_758
    $P1785 = root_new ['parrot';'ResizablePMCArray']
  vivify_758:
    find_lex $P112, "$_"
    unless_null $P112, vivify_759
    new $P112, "Undef"
  vivify_759:
    $P113 = $P1785."push"($P112)
    .return ($P113)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_method_cache" :anon :subid("74_1334918351.99") :outer("149_1334918351.99")
    .param pmc param_1789
    .param pmc param_1790
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 925
    .const 'Sub' $P1800 = "172_1334918351.99" 
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
    unless_null $P1795, vivify_762
    $P1795 = root_new ['parrot';'Hash']
  vivify_762:
.annotate 'line', 929
    set $P107, param_1789
    nqp_decontainerize $P108, $P107
    nqp_get_sc_object $P109, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P1796, $P108, $P109, "@!mro", 10
    unless_null $P1796, vivify_763
    $P1796 = root_new ['parrot';'ResizablePMCArray']
  vivify_763:
    clone $P110, $P1796
    set $P1793, $P110
.annotate 'line', 930
    set $P1797, $P1793
    unless_null $P1797, vivify_764
    $P1797 = root_new ['parrot';'ResizablePMCArray']
  vivify_764:
    $P1797."reverse"()
.annotate 'line', 931
    set $P1798, $P1793
    unless_null $P1798, vivify_765
    $P1798 = root_new ['parrot';'ResizablePMCArray']
  vivify_765:
    defined $I100, $P1798
    unless $I100, for_undef_766
    iter $P107, $P1798
    new $P110, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P110, loop1807_handler
    push_eh $P110
  loop1807_test:
    unless $P107, loop1807_done
    shift $P108, $P107
  loop1807_redo:
    .const 'Sub' $P1800 = "172_1334918351.99" 
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
  for_undef_766:
.annotate 'line', 936
    set $P107, param_1790
    unless_null $P107, vivify_773
    new $P107, "Undef"
  vivify_773:
    set $P1808, $P1791
    unless_null $P1808, vivify_774
    $P1808 = root_new ['parrot';'Hash']
  vivify_774:
    publish_method_cache $P107, $P1808
.annotate 'line', 937
    set $P107, param_1790
    unless_null $P107, vivify_775
    new $P107, "Undef"
  vivify_775:
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
.sub "_block1799"  :anon :subid("172_1334918351.99") :outer("74_1334918351.99")
    .param pmc param_1801
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 931
    .const 'Sub' $P1803 = "173_1334918351.99" 
    capture_lex $P1803
    .lex "$_", param_1801
.annotate 'line', 932
    find_lex $P110, "$_"
    unless_null $P110, vivify_767
    new $P110, "Undef"
  vivify_767:
    get_how $P111, $P110
    find_lex $P112, "$_"
    unless_null $P112, vivify_768
    new $P112, "Undef"
  vivify_768:
    $P113 = $P111."method_table"($P112)
    defined $I101, $P113
    unless $I101, for_undef_769
    iter $P109, $P113
    new $P115, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P115, loop1806_handler
    push_eh $P115
  loop1806_test:
    unless $P109, loop1806_done
    shift $P114, $P109
  loop1806_redo:
    .const 'Sub' $P1803 = "173_1334918351.99" 
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
  for_undef_769:
.annotate 'line', 931
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1802"  :anon :subid("173_1334918351.99") :outer("172_1334918351.99")
    .param pmc param_1804
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 932
    .lex "$_", param_1804
.annotate 'line', 933
    find_lex $P115, "$_"
    unless_null $P115, vivify_770
    new $P115, "Undef"
  vivify_770:
    $P116 = $P115."value"()
    find_lex $P117, "$_"
    unless_null $P117, vivify_771
    new $P117, "Undef"
  vivify_771:
    $P118 = $P117."key"()
    find_lex $P1805, "%cache"
    unless_null $P1805, vivify_772
    $P1805 = root_new ['parrot';'Hash']
    store_lex "%cache", $P1805
  vivify_772:
    set $P1805[$P118], $P116
.annotate 'line', 932
    .return ($P116)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "publish_boolification_spec" :anon :subid("75_1334918351.99") :outer("149_1334918351.99")
    .param pmc param_1810
    .param pmc param_1811
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
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
    unless_null $P110, vivify_776
    new $P110, "Undef"
  vivify_776:
    $P111 = $P109."find_method"($P110, "Bool")
    set $P1812, $P111
.annotate 'line', 942
    set $P109, $P1812
    unless_null $P109, vivify_777
    new $P109, "Undef"
  vivify_777:
    defined $I100, $P109
    if $I100, if_1813
.annotate 'line', 946
    set $P111, param_1811
    unless_null $P111, vivify_778
    new $P111, "Undef"
  vivify_778:
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
    unless_null $P110, vivify_779
    new $P110, "Undef"
  vivify_779:
    new $P111, "Float"
    assign $P111, 0
    set $I101, $P111
    set $P112, $P1812
    unless_null $P112, vivify_780
    new $P112, "Undef"
  vivify_780:
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
.sub "publish_parrot_vtable_mapping" :anon :subid("76_1334918351.99") :outer("149_1334918351.99")
    .param pmc param_1815
    .param pmc param_1816
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 950
    .const 'Sub' $P1826 = "174_1334918351.99" 
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
    unless_null $P1821, vivify_781
    $P1821 = root_new ['parrot';'Hash']
  vivify_781:
.annotate 'line', 952
    set $P107, param_1815
    nqp_decontainerize $P108, $P107
    nqp_get_sc_object $P109, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P1822, $P108, $P109, "@!mro", 10
    unless_null $P1822, vivify_782
    $P1822 = root_new ['parrot';'ResizablePMCArray']
  vivify_782:
    clone $P110, $P1822
    set $P1819, $P110
.annotate 'line', 953
    set $P1823, $P1819
    unless_null $P1823, vivify_783
    $P1823 = root_new ['parrot';'ResizablePMCArray']
  vivify_783:
    $P1823."reverse"()
.annotate 'line', 954
    set $P1824, $P1819
    unless_null $P1824, vivify_784
    $P1824 = root_new ['parrot';'ResizablePMCArray']
  vivify_784:
    defined $I100, $P1824
    unless $I100, for_undef_785
    iter $P107, $P1824
    new $P109, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P109, loop1829_handler
    push_eh $P109
  loop1829_test:
    unless $P107, loop1829_done
    shift $P108, $P107
  loop1829_redo:
    .const 'Sub' $P1826 = "174_1334918351.99" 
    capture_lex $P1826
    $P1826($P108)
  loop1829_next:
    goto loop1829_test
  loop1829_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P110, exception, 'type'
    eq $P110, .CONTROL_LOOP_NEXT, loop1829_next
    eq $P110, .CONTROL_LOOP_REDO, loop1829_redo
  loop1829_done:
    pop_eh 
  for_undef_785:
.annotate 'line', 957
    set $P1831, $P1817
    unless_null $P1831, vivify_789
    $P1831 = root_new ['parrot';'Hash']
  vivify_789:
    set $N100, $P1831
    if $N100, if_1830
    new $P107, 'Float'
    set $P107, $N100
    goto if_1830_end
  if_1830:
.annotate 'line', 958
    set $P108, param_1816
    unless_null $P108, vivify_790
    new $P108, "Undef"
  vivify_790:
    set $P1832, $P1817
    unless_null $P1832, vivify_791
    $P1832 = root_new ['parrot';'Hash']
  vivify_791:
    stable_publish_vtable_mapping $P108, $P1832
  if_1830_end:
.annotate 'line', 950
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1825"  :anon :subid("174_1334918351.99") :outer("76_1334918351.99")
    .param pmc param_1827
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 954
    .lex "$_", param_1827
.annotate 'line', 955
    find_lex $P1828, "%mapping"
    unless_null $P1828, vivify_786
    $P1828 = root_new ['parrot';'Hash']
  vivify_786:
    find_lex $P109, "$_"
    unless_null $P109, vivify_787
    new $P109, "Undef"
  vivify_787:
    get_how $P110, $P109
    find_lex $P111, "$_"
    unless_null $P111, vivify_788
    new $P111, "Undef"
  vivify_788:
    $P112 = $P110."parrot_vtable_mappings"($P111, 1 :named("local"))
    $P113 = $P1828."update"($P112)
.annotate 'line', 954
    .return ($P113)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_parrot_vtablee_handler_mapping" :anon :subid("77_1334918351.99") :outer("149_1334918351.99")
    .param pmc param_1834
    .param pmc param_1835
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 962
    .const 'Sub' $P1845 = "175_1334918351.99" 
    capture_lex $P1845
    .lex "self", param_1834
    .lex "$obj", param_1835
.annotate 'line', 963
    $P1837 = root_new ['parrot';'Hash']
    set $P1836, $P1837
    .lex "%mapping", $P1836
.annotate 'line', 964
    $P1839 = root_new ['parrot';'ResizablePMCArray']
    set $P1838, $P1839
    .lex "@mro_reversed", $P1838
.annotate 'line', 962
    set $P1840, $P1836
    unless_null $P1840, vivify_792
    $P1840 = root_new ['parrot';'Hash']
  vivify_792:
.annotate 'line', 964
    set $P107, param_1834
    nqp_decontainerize $P108, $P107
    nqp_get_sc_object $P109, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P1841, $P108, $P109, "@!mro", 10
    unless_null $P1841, vivify_793
    $P1841 = root_new ['parrot';'ResizablePMCArray']
  vivify_793:
    clone $P110, $P1841
    set $P1838, $P110
.annotate 'line', 965
    set $P1842, $P1838
    unless_null $P1842, vivify_794
    $P1842 = root_new ['parrot';'ResizablePMCArray']
  vivify_794:
    $P1842."reverse"()
.annotate 'line', 966
    set $P1843, $P1838
    unless_null $P1843, vivify_795
    $P1843 = root_new ['parrot';'ResizablePMCArray']
  vivify_795:
    defined $I100, $P1843
    unless $I100, for_undef_796
    iter $P107, $P1843
    new $P109, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P109, loop1848_handler
    push_eh $P109
  loop1848_test:
    unless $P107, loop1848_done
    shift $P108, $P107
  loop1848_redo:
    .const 'Sub' $P1845 = "175_1334918351.99" 
    capture_lex $P1845
    $P1845($P108)
  loop1848_next:
    goto loop1848_test
  loop1848_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P110, exception, 'type'
    eq $P110, .CONTROL_LOOP_NEXT, loop1848_next
    eq $P110, .CONTROL_LOOP_REDO, loop1848_redo
  loop1848_done:
    pop_eh 
  for_undef_796:
.annotate 'line', 969
    set $P1850, $P1836
    unless_null $P1850, vivify_800
    $P1850 = root_new ['parrot';'Hash']
  vivify_800:
    set $N100, $P1850
    if $N100, if_1849
    new $P107, 'Float'
    set $P107, $N100
    goto if_1849_end
  if_1849:
.annotate 'line', 970
    set $P108, param_1835
    unless_null $P108, vivify_801
    new $P108, "Undef"
  vivify_801:
    set $P1851, $P1836
    unless_null $P1851, vivify_802
    $P1851 = root_new ['parrot';'Hash']
  vivify_802:
    stable_publish_vtable_handler_mapping $P108, $P1851
  if_1849_end:
.annotate 'line', 962
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1844"  :anon :subid("175_1334918351.99") :outer("77_1334918351.99")
    .param pmc param_1846
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 966
    .lex "$_", param_1846
.annotate 'line', 967
    find_lex $P1847, "%mapping"
    unless_null $P1847, vivify_797
    $P1847 = root_new ['parrot';'Hash']
  vivify_797:
    find_lex $P109, "$_"
    unless_null $P109, vivify_798
    new $P109, "Undef"
  vivify_798:
    get_how $P110, $P109
    find_lex $P111, "$_"
    unless_null $P111, vivify_799
    new $P111, "Undef"
  vivify_799:
    $P112 = $P110."parrot_vtable_handler_mappings"($P111, 1 :named("local"))
    $P113 = $P1847."update"($P112)
.annotate 'line', 966
    .return ($P113)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parents" :anon :subid("78_1334918351.99") :outer("149_1334918351.99")
    .param pmc param_1853
    .param pmc param_1854
    .param pmc param_1855 :optional :named("local")
    .param int has_param_1855 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 978
    .lex "self", param_1853
    .lex "$obj", param_1854
    if has_param_1855, optparam_803
    new $P107, "Undef"
    set param_1855, $P107
  optparam_803:
    .lex "$local", param_1855
.annotate 'line', 979
    set $P109, param_1855
    unless_null $P109, vivify_804
    new $P109, "Undef"
  vivify_804:
    if $P109, if_1856
    set $P113, param_1853
    nqp_decontainerize $P114, $P113
    nqp_get_sc_object $P115, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P1858, $P114, $P115, "@!mro", 10
    unless_null $P1858, vivify_805
    $P1858 = root_new ['parrot';'ResizablePMCArray']
  vivify_805:
    set $P108, $P1858
    goto if_1856_end
  if_1856:
    set $P110, param_1853
    nqp_decontainerize $P111, $P110
    nqp_get_sc_object $P112, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P1857, $P111, $P112, "@!parents", 4
    unless_null $P1857, vivify_806
    $P1857 = root_new ['parrot';'ResizablePMCArray']
  vivify_806:
    set $P108, $P1857
  if_1856_end:
.annotate 'line', 978
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "mro" :anon :subid("79_1334918351.99") :outer("149_1334918351.99")
    .param pmc param_1860
    .param pmc param_1861
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 982
    .lex "self", param_1860
    .lex "$obj", param_1861
    set $P107, param_1860
    nqp_decontainerize $P108, $P107
    nqp_get_sc_object $P109, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P1862, $P108, $P109, "@!mro", 10
    unless_null $P1862, vivify_807
    $P1862 = root_new ['parrot';'ResizablePMCArray']
  vivify_807:
    .return ($P1862)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "roles" :anon :subid("80_1334918351.99") :outer("149_1334918351.99")
    .param pmc param_1864
    .param pmc param_1865
    .param pmc param_1866 :named("local")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 986
    .lex "self", param_1864
    .lex "$obj", param_1865
    .lex "$local", param_1866
    set $P107, param_1864
    nqp_decontainerize $P108, $P107
    nqp_get_sc_object $P109, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P1867, $P108, $P109, "@!roles", 5
    unless_null $P1867, vivify_808
    $P1867 = root_new ['parrot';'ResizablePMCArray']
  vivify_808:
    .return ($P1867)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "methods" :anon :subid("81_1334918351.99") :outer("149_1334918351.99")
    .param pmc param_1869
    .param pmc param_1870
    .param pmc param_1871 :named("local")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 990
    .const 'Sub' $P1877 = "176_1334918351.99" 
    capture_lex $P1877
    .lex "self", param_1869
    .lex "$obj", param_1870
    .lex "$local", param_1871
.annotate 'line', 991
    $P1873 = root_new ['parrot';'ResizablePMCArray']
    set $P1872, $P1873
    .lex "@meths", $P1872
.annotate 'line', 990
    set $P1874, $P1872
    unless_null $P1874, vivify_809
    $P1874 = root_new ['parrot';'ResizablePMCArray']
  vivify_809:
.annotate 'line', 992
    set $P108, param_1869
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P1875, $P109, $P110, "%!methods", 2
    unless_null $P1875, vivify_810
    $P1875 = root_new ['parrot';'Hash']
  vivify_810:
    defined $I100, $P1875
    unless $I100, for_undef_811
    iter $P107, $P1875
    new $P112, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P112, loop1880_handler
    push_eh $P112
  loop1880_test:
    unless $P107, loop1880_done
    shift $P111, $P107
  loop1880_redo:
    .const 'Sub' $P1877 = "176_1334918351.99" 
    capture_lex $P1877
    $P1877($P111)
  loop1880_next:
    goto loop1880_test
  loop1880_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P113, exception, 'type'
    eq $P113, .CONTROL_LOOP_NEXT, loop1880_next
    eq $P113, .CONTROL_LOOP_REDO, loop1880_redo
  loop1880_done:
    pop_eh 
  for_undef_811:
.annotate 'line', 990
    set $P1881, $P1872
    unless_null $P1881, vivify_814
    $P1881 = root_new ['parrot';'ResizablePMCArray']
  vivify_814:
    .return ($P1881)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1876"  :anon :subid("176_1334918351.99") :outer("81_1334918351.99")
    .param pmc param_1878
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 992
    .lex "$_", param_1878
.annotate 'line', 993
    find_lex $P1879, "@meths"
    unless_null $P1879, vivify_812
    $P1879 = root_new ['parrot';'ResizablePMCArray']
  vivify_812:
    find_lex $P112, "$_"
    unless_null $P112, vivify_813
    new $P112, "Undef"
  vivify_813:
    $P113 = $P112."value"()
    $P114 = $P1879."push"($P113)
.annotate 'line', 992
    .return ($P114)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "method_table" :anon :subid("82_1334918351.99") :outer("149_1334918351.99")
    .param pmc param_1883
    .param pmc param_1884
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 998
    .lex "self", param_1883
    .lex "$obj", param_1884
    set $P107, param_1883
    nqp_decontainerize $P108, $P107
    nqp_get_sc_object $P109, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P1885, $P108, $P109, "%!methods", 2
    unless_null $P1885, vivify_815
    $P1885 = root_new ['parrot';'Hash']
  vivify_815:
    .return ($P1885)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "name" :anon :subid("83_1334918351.99") :outer("149_1334918351.99")
    .param pmc param_1887
    .param pmc param_1888
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1002
    .lex "self", param_1887
    .lex "$obj", param_1888
    set $P107, param_1887
    nqp_decontainerize $P108, $P107
    nqp_get_sc_object $P109, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P110, $P108, $P109, "$!name", 0
    unless_null $P110, vivify_816
    new $P110, "Undef"
  vivify_816:
    .return ($P110)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "attributes" :anon :subid("84_1334918351.99") :outer("149_1334918351.99")
    .param pmc param_1890
    .param pmc param_1891
    .param pmc param_1892 :named("local")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1006
    .const 'Sub' $P1898 = "177_1334918351.99" 
    capture_lex $P1898
    .lex "self", param_1890
    .lex "$obj", param_1891
    .lex "$local", param_1892
.annotate 'line', 1007
    $P1894 = root_new ['parrot';'ResizablePMCArray']
    set $P1893, $P1894
    .lex "@attrs", $P1893
.annotate 'line', 1006
    set $P1895, $P1893
    unless_null $P1895, vivify_817
    $P1895 = root_new ['parrot';'ResizablePMCArray']
  vivify_817:
.annotate 'line', 1008
    set $P108, param_1890
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P1896, $P109, $P110, "%!attributes", 1
    unless_null $P1896, vivify_818
    $P1896 = root_new ['parrot';'Hash']
  vivify_818:
    defined $I100, $P1896
    unless $I100, for_undef_819
    iter $P107, $P1896
    new $P112, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P112, loop1901_handler
    push_eh $P112
  loop1901_test:
    unless $P107, loop1901_done
    shift $P111, $P107
  loop1901_redo:
    .const 'Sub' $P1898 = "177_1334918351.99" 
    capture_lex $P1898
    $P1898($P111)
  loop1901_next:
    goto loop1901_test
  loop1901_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P113, exception, 'type'
    eq $P113, .CONTROL_LOOP_NEXT, loop1901_next
    eq $P113, .CONTROL_LOOP_REDO, loop1901_redo
  loop1901_done:
    pop_eh 
  for_undef_819:
.annotate 'line', 1006
    set $P1902, $P1893
    unless_null $P1902, vivify_822
    $P1902 = root_new ['parrot';'ResizablePMCArray']
  vivify_822:
    .return ($P1902)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1897"  :anon :subid("177_1334918351.99") :outer("84_1334918351.99")
    .param pmc param_1899
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1008
    .lex "$_", param_1899
.annotate 'line', 1009
    find_lex $P1900, "@attrs"
    unless_null $P1900, vivify_820
    $P1900 = root_new ['parrot';'ResizablePMCArray']
  vivify_820:
    find_lex $P112, "$_"
    unless_null $P112, vivify_821
    new $P112, "Undef"
  vivify_821:
    $P113 = $P112."value"()
    $P114 = $P1900."push"($P113)
.annotate 'line', 1008
    .return ($P114)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parrot_vtable_mappings" :anon :subid("85_1334918351.99") :outer("149_1334918351.99")
    .param pmc param_1904
    .param pmc param_1905
    .param pmc param_1906 :named("local")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1014
    .lex "self", param_1904
    .lex "$obj", param_1905
    .lex "$local", param_1906
    set $P107, param_1904
    nqp_decontainerize $P108, $P107
    nqp_get_sc_object $P109, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P1907, $P108, $P109, "%!parrot_vtable_mapping", 13
    unless_null $P1907, vivify_823
    $P1907 = root_new ['parrot';'Hash']
  vivify_823:
    .return ($P1907)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parrot_vtable_handler_mappings" :anon :subid("86_1334918351.99") :outer("149_1334918351.99")
    .param pmc param_1909
    .param pmc param_1910
    .param pmc param_1911 :named("local")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1018
    .lex "self", param_1909
    .lex "$obj", param_1910
    .lex "$local", param_1911
    set $P107, param_1909
    nqp_decontainerize $P108, $P107
    nqp_get_sc_object $P109, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P1912, $P108, $P109, "%!parrot_vtable_handler_mapping", 14
    unless_null $P1912, vivify_824
    $P1912 = root_new ['parrot';'Hash']
  vivify_824:
    .return ($P1912)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "isa" :anon :subid("87_1334918351.99") :outer("149_1334918351.99")
    .param pmc param_1916
    .param pmc param_1917
    .param pmc param_1918
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1026
    new $P1915, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P1915, control_1914
    push_eh $P1915
    .lex "self", param_1916
    .lex "$obj", param_1917
    .lex "$check", param_1918
.annotate 'line', 1027
    new $P107, "Undef"
    set $P1919, $P107
    .lex "$check-class", $P1919
.annotate 'line', 1028
    new $P108, "Undef"
    set $P1920, $P108
    .lex "$i", $P1920
.annotate 'line', 1027
    set $P109, param_1918
    unless_null $P109, vivify_825
    new $P109, "Undef"
  vivify_825:
    get_what $P110, $P109
    set $P1919, $P110
.annotate 'line', 1028
    set $P109, param_1916
    nqp_decontainerize $P110, $P109
    nqp_get_sc_object $P111, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P1921, $P110, $P111, "@!mro", 10
    unless_null $P1921, vivify_826
    $P1921 = root_new ['parrot';'ResizablePMCArray']
  vivify_826:
    set $N100, $P1921
    new $P112, 'Float'
    set $P112, $N100
    set $P1920, $P112
.annotate 'line', 1029
    new $P110, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P110, loop1924_handler
    push_eh $P110
  loop1924_test:
    set $P109, $P1920
    unless_null $P109, vivify_827
    new $P109, "Undef"
  vivify_827:
    set $N100, $P109
    set $N101, 0
    isgt $I100, $N100, $N101
    unless $I100, loop1924_done
  loop1924_redo:
.annotate 'line', 1030
    set $P110, $P1920
    unless_null $P110, vivify_828
    new $P110, "Undef"
  vivify_828:
    sub $P111, $P110, 1
    set $P1920, $P111
.annotate 'line', 1031
    set $P110, $P1920
    unless_null $P110, vivify_829
    new $P110, "Undef"
  vivify_829:
    set $I101, $P110
    set $P111, param_1916
    nqp_decontainerize $P112, $P111
    nqp_get_sc_object $P113, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P1923, $P112, $P113, "@!mro", 10
    unless_null $P1923, vivify_830
    $P1923 = root_new ['parrot';'ResizablePMCArray']
  vivify_830:
    set $P114, $P1923[$I101]
    unless_null $P114, vivify_831
    new $P114, "Undef"
  vivify_831:
    set $P115, $P1919
    unless_null $P115, vivify_832
    new $P115, "Undef"
  vivify_832:
    issame $I102, $P114, $P115
    unless $I102, if_1922_end
.annotate 'line', 1032
    new $P116, "Exception"
    set $P116['type'], .CONTROL_RETURN
    new $P117, "Float"
    assign $P117, 1
    setattribute $P116, 'payload', $P117
    throw $P116
  if_1922_end:
  loop1924_next:
.annotate 'line', 1029
    goto loop1924_test
  loop1924_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P111, exception, 'type'
    eq $P111, .CONTROL_LOOP_NEXT, loop1924_next
    eq $P111, .CONTROL_LOOP_REDO, loop1924_redo
  loop1924_done:
    pop_eh 
.annotate 'line', 1035
    new $P109, "Exception"
    set $P109['type'], .CONTROL_RETURN
    new $P110, "Float"
    assign $P110, 0
    setattribute $P109, 'payload', $P110
    throw $P109
.annotate 'line', 1026
    .return ()
  control_1914:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P109, exception, "payload"
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "does" :anon :subid("88_1334918351.99") :outer("149_1334918351.99")
    .param pmc param_1928
    .param pmc param_1929
    .param pmc param_1930
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1038
    new $P1927, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P1927, control_1926
    push_eh $P1927
    .lex "self", param_1928
    .lex "$obj", param_1929
    .lex "$check", param_1930
.annotate 'line', 1039
    new $P107, "Undef"
    set $P1931, $P107
    .lex "$i", $P1931
    set $P108, param_1928
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P1932, $P109, $P110, "@!done", 11
    unless_null $P1932, vivify_833
    $P1932 = root_new ['parrot';'ResizablePMCArray']
  vivify_833:
    set $N100, $P1932
    new $P111, 'Float'
    set $P111, $N100
    set $P1931, $P111
.annotate 'line', 1040
    new $P109, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P109, loop1935_handler
    push_eh $P109
  loop1935_test:
    set $P108, $P1931
    unless_null $P108, vivify_834
    new $P108, "Undef"
  vivify_834:
    set $N100, $P108
    set $N101, 0
    isgt $I100, $N100, $N101
    unless $I100, loop1935_done
  loop1935_redo:
.annotate 'line', 1041
    set $P109, $P1931
    unless_null $P109, vivify_835
    new $P109, "Undef"
  vivify_835:
    sub $P110, $P109, 1
    set $P1931, $P110
.annotate 'line', 1042
    set $P109, $P1931
    unless_null $P109, vivify_836
    new $P109, "Undef"
  vivify_836:
    set $I101, $P109
    set $P110, param_1928
    nqp_decontainerize $P111, $P110
    nqp_get_sc_object $P112, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P1934, $P111, $P112, "@!done", 11
    unless_null $P1934, vivify_837
    $P1934 = root_new ['parrot';'ResizablePMCArray']
  vivify_837:
    set $P113, $P1934[$I101]
    unless_null $P113, vivify_838
    new $P113, "Undef"
  vivify_838:
    set $P114, param_1930
    unless_null $P114, vivify_839
    new $P114, "Undef"
  vivify_839:
    issame $I102, $P113, $P114
    unless $I102, if_1933_end
.annotate 'line', 1043
    new $P115, "Exception"
    set $P115['type'], .CONTROL_RETURN
    new $P116, "Float"
    assign $P116, 1
    setattribute $P115, 'payload', $P116
    throw $P115
  if_1933_end:
  loop1935_next:
.annotate 'line', 1040
    goto loop1935_test
  loop1935_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P110, exception, 'type'
    eq $P110, .CONTROL_LOOP_NEXT, loop1935_next
    eq $P110, .CONTROL_LOOP_REDO, loop1935_redo
  loop1935_done:
    pop_eh 
.annotate 'line', 1046
    new $P108, "Exception"
    set $P108['type'], .CONTROL_RETURN
    new $P109, "Float"
    assign $P109, 0
    setattribute $P108, 'payload', $P109
    throw $P108
.annotate 'line', 1038
    .return ()
  control_1926:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, "payload"
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "can" :anon :subid("89_1334918351.99") :outer("149_1334918351.99")
    .param pmc param_1939
    .param pmc param_1940
    .param pmc param_1941
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1049
    .const 'Sub' $P1944 = "178_1334918351.99" 
    capture_lex $P1944
    new $P1938, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P1938, control_1937
    push_eh $P1938
    .lex "self", param_1939
    .lex "$obj", param_1940
    .lex "$name", param_1941
.annotate 'line', 1050
    set $P108, param_1939
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P1942, $P109, $P110, "@!mro", 10
    unless_null $P1942, vivify_840
    $P1942 = root_new ['parrot';'ResizablePMCArray']
  vivify_840:
    defined $I100, $P1942
    unless $I100, for_undef_841
    iter $P107, $P1942
    new $P114, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P114, loop1951_handler
    push_eh $P114
  loop1951_test:
    unless $P107, loop1951_done
    shift $P111, $P107
  loop1951_redo:
    .const 'Sub' $P1944 = "178_1334918351.99" 
    capture_lex $P1944
    $P1944($P111)
  loop1951_next:
    goto loop1951_test
  loop1951_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P115, exception, 'type'
    eq $P115, .CONTROL_LOOP_NEXT, loop1951_next
    eq $P115, .CONTROL_LOOP_REDO, loop1951_redo
  loop1951_done:
    pop_eh 
  for_undef_841:
.annotate 'line', 1057
    new $P107, "Exception"
    set $P107['type'], .CONTROL_RETURN
    new $P108, "Float"
    assign $P108, 0
    setattribute $P107, 'payload', $P108
    throw $P107
.annotate 'line', 1049
    .return ()
  control_1937:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P107, exception, "payload"
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1943"  :anon :subid("178_1334918351.99") :outer("89_1334918351.99")
    .param pmc param_1948
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1051
    $P1946 = root_new ['parrot';'Hash']
    set $P1945, $P1946
    .lex "%meths", $P1945
.annotate 'line', 1052
    new $P112, "Undef"
    set $P1947, $P112
    .lex "$can", $P1947
    .lex "$_", param_1948
.annotate 'line', 1051
    find_lex $P113, "$_"
    unless_null $P113, vivify_842
    new $P113, "Undef"
  vivify_842:
    get_how $P114, $P113
    find_lex $P115, "$obj"
    unless_null $P115, vivify_843
    new $P115, "Undef"
  vivify_843:
    $P116 = $P114."method_table"($P115)
    set $P1945, $P116
.annotate 'line', 1052
    find_lex $P113, "$name"
    unless_null $P113, vivify_844
    new $P113, "Undef"
  vivify_844:
    set $P1949, $P1945
    unless_null $P1949, vivify_845
    $P1949 = root_new ['parrot';'Hash']
  vivify_845:
    set $P114, $P1949[$P113]
    unless_null $P114, vivify_846
    new $P114, "Undef"
  vivify_846:
    set $P1947, $P114
.annotate 'line', 1053
    set $P114, $P1947
    unless_null $P114, vivify_847
    new $P114, "Undef"
  vivify_847:
    defined $I101, $P114
    if $I101, if_1950
    new $P113, 'Integer'
    set $P113, $I101
    goto if_1950_end
  if_1950:
.annotate 'line', 1054
    new $P115, "Exception"
    set $P115['type'], .CONTROL_RETURN
    set $P116, $P1947
    unless_null $P116, vivify_848
    new $P116, "Undef"
  vivify_848:
    setattribute $P115, 'payload', $P116
    throw $P115
  if_1950_end:
.annotate 'line', 1050
    .return ($P113)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "find_method" :anon :subid("90_1334918351.99") :outer("149_1334918351.99")
    .param pmc param_1955
    .param pmc param_1956
    .param pmc param_1957
    .param pmc param_1958 :optional :named("no_fallback")
    .param int has_param_1958 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1063
    .const 'Sub' $P1961 = "179_1334918351.99" 
    capture_lex $P1961
    new $P1954, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P1954, control_1953
    push_eh $P1954
    .lex "self", param_1955
    .lex "$obj", param_1956
    .lex "$name", param_1957
    if has_param_1958, optparam_849
    new $P107, "Undef"
    set param_1958, $P107
  optparam_849:
    .lex "$no_fallback", param_1958
.annotate 'line', 1064
    set $P109, param_1955
    nqp_decontainerize $P110, $P109
    nqp_get_sc_object $P111, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P1959, $P110, $P111, "@!mro", 10
    unless_null $P1959, vivify_850
    $P1959 = root_new ['parrot';'ResizablePMCArray']
  vivify_850:
    defined $I100, $P1959
    unless $I100, for_undef_851
    iter $P108, $P1959
    new $P115, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P115, loop1968_handler
    push_eh $P115
  loop1968_test:
    unless $P108, loop1968_done
    shift $P112, $P108
  loop1968_redo:
    .const 'Sub' $P1961 = "179_1334918351.99" 
    capture_lex $P1961
    $P1961($P112)
  loop1968_next:
    goto loop1968_test
  loop1968_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P116, exception, 'type'
    eq $P116, .CONTROL_LOOP_NEXT, loop1968_next
    eq $P116, .CONTROL_LOOP_REDO, loop1968_redo
  loop1968_done:
    pop_eh 
  for_undef_851:
.annotate 'line', 1071
    null $P108
.annotate 'line', 1063
    .return ($P108)
  control_1953:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P109, exception, "payload"
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1960"  :anon :subid("179_1334918351.99") :outer("90_1334918351.99")
    .param pmc param_1965
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1065
    $P1963 = root_new ['parrot';'Hash']
    set $P1962, $P1963
    .lex "%meths", $P1962
.annotate 'line', 1066
    new $P113, "Undef"
    set $P1964, $P113
    .lex "$found", $P1964
    .lex "$_", param_1965
.annotate 'line', 1065
    find_lex $P114, "$_"
    unless_null $P114, vivify_852
    new $P114, "Undef"
  vivify_852:
    get_how $P115, $P114
    find_lex $P116, "$obj"
    unless_null $P116, vivify_853
    new $P116, "Undef"
  vivify_853:
    $P117 = $P115."method_table"($P116)
    set $P1962, $P117
.annotate 'line', 1066
    find_lex $P114, "$name"
    unless_null $P114, vivify_854
    new $P114, "Undef"
  vivify_854:
    set $P1966, $P1962
    unless_null $P1966, vivify_855
    $P1966 = root_new ['parrot';'Hash']
  vivify_855:
    set $P115, $P1966[$P114]
    unless_null $P115, vivify_856
    new $P115, "Undef"
  vivify_856:
    set $P1964, $P115
.annotate 'line', 1067
    set $P115, $P1964
    unless_null $P115, vivify_857
    new $P115, "Undef"
  vivify_857:
    defined $I101, $P115
    if $I101, if_1967
    new $P114, 'Integer'
    set $P114, $I101
    goto if_1967_end
  if_1967:
.annotate 'line', 1068
    new $P116, "Exception"
    set $P116['type'], .CONTROL_RETURN
    set $P117, $P1964
    unless_null $P117, vivify_858
    new $P117, "Undef"
  vivify_858:
    setattribute $P116, 'payload', $P117
    throw $P116
  if_1967_end:
.annotate 'line', 1064
    .return ($P114)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "cache" :anon :subid("91_1334918351.99") :outer("149_1334918351.99")
    .param pmc param_1970
    .param pmc param_1971
    .param pmc param_1972
    .param pmc param_1973
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1077
    .lex "self", param_1970
    .lex "$obj", param_1971
    .lex "$key", param_1972
    .lex "$value_generator", param_1973
.annotate 'line', 1078
    set $P107, param_1970
    nqp_decontainerize $P108, $P107
    nqp_get_sc_object $P109, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P1975, $P108, $P109, "%!cache", 12
    unless_null $P1975, vivify_859
    $P1975 = root_new ['parrot';'Hash']
  vivify_859:
    if $P1975, unless_1974_end
    $P1976 = root_new ['parrot';'Hash']
    set $P110, param_1970
    nqp_decontainerize $P111, $P110
    nqp_get_sc_object $P112, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_bind_attr_obj $P111, $P112, "%!cache", 12, $P1976
  unless_1974_end:
.annotate 'line', 1079
    set $P111, param_1972
    unless_null $P111, vivify_860
    new $P111, "Undef"
  vivify_860:
    set $P108, param_1970
    nqp_decontainerize $P109, $P108
    nqp_get_sc_object $P110, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P1978, $P109, $P110, "%!cache", 12
    unless_null $P1978, vivify_861
    $P1978 = root_new ['parrot';'Hash']
  vivify_861:
    exists $I100, $P1978[$P111]
    if $I100, if_1977
.annotate 'line', 1081
    set $P117, param_1973
    unless_null $P117, vivify_862
    new $P117, "Undef"
  vivify_862:
    $P118 = $P117()
    set $P119, param_1972
    unless_null $P119, vivify_863
    new $P119, "Undef"
  vivify_863:
    set $P120, param_1970
    nqp_decontainerize $P121, $P120
    nqp_get_sc_object $P122, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P1980, $P121, $P122, "%!cache", 12
    unless_null $P1980, vivify_864
    $P1980 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P121, $P122, "%!cache", 12, $P1980
  vivify_864:
    set $P1980[$P119], $P118
    set $P107, $P118
.annotate 'line', 1079
    goto if_1977_end
  if_1977:
    set $P112, param_1972
    unless_null $P112, vivify_865
    new $P112, "Undef"
  vivify_865:
    set $P113, param_1970
    nqp_decontainerize $P114, $P113
    nqp_get_sc_object $P115, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 6
    repr_get_attr_obj $P1979, $P114, $P115, "%!cache", 12
    unless_null $P1979, vivify_866
    $P1979 = root_new ['parrot';'Hash']
  vivify_866:
    set $P116, $P1979[$P112]
    unless_null $P116, vivify_867
    new $P116, "Undef"
  vivify_867:
    set $P107, $P116
  if_1977_end:
.annotate 'line', 1077
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "_block1982"  :subid("180_1334918351.99") :outer("119_1334918351.99")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1086
    .const 'Sub' $P2019 = "100_1334918351.99" 
    capture_lex $P2019
    .const 'Sub' $P2016 = "99_1334918351.99" 
    capture_lex $P2016
    .const 'Sub' $P2012 = "98_1334918351.99" 
    capture_lex $P2012
    .const 'Sub' $P2007 = "97_1334918351.99" 
    capture_lex $P2007
    .const 'Sub' $P2002 = "96_1334918351.99" 
    capture_lex $P2002
    .const 'Sub' $P1996 = "95_1334918351.99" 
    capture_lex $P1996
    .const 'Sub' $P1993 = "94_1334918351.99" 
    capture_lex $P1993
    .const 'Sub' $P1989 = "93_1334918351.99" 
    capture_lex $P1989
    .const 'Sub' $P1987 = "92_1334918351.99" 
    capture_lex $P1987
.annotate 'line', 1090
    new $P100, "Undef"
    set $P1984, $P100
    .lex "$archetypes", $P1984
    .lex "$?PACKAGE", $P1985
    .lex "$?CLASS", $P1986
    find_lex $P101, "Archetypes"
    $P102 = $P101."new"(1 :named("nominal"))
    set $P1984, $P102
.annotate 'line', 1131
    .const 'Sub' $P2019 = "100_1334918351.99" 
    newclosure $P2022, $P2019
.annotate 'line', 1086
    .return ($P2022)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "archetypes" :anon :subid("92_1334918351.99") :outer("180_1334918351.99")
    .param pmc param_1988
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1091
    .lex "self", param_1988
    find_lex $P101, "$archetypes"
    unless_null $P101, vivify_868
    new $P101, "Undef"
  vivify_868:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "new" :anon :subid("93_1334918351.99") :outer("180_1334918351.99")
    .param pmc param_1990
    .param pmc param_1991 :optional :named("name")
    .param int has_param_1991 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1095
    .lex "self", param_1990
    if has_param_1991, optparam_869
    new $P101, "Undef"
    set param_1991, $P101
  optparam_869:
    .lex "$name", param_1991
.annotate 'line', 1096
    new $P102, "Undef"
    set $P1992, $P102
    .lex "$obj", $P1992
    set $P103, param_1990
    nqp_decontainerize $P104, $P103
    repr_instance_of $P105, $P104
    set $P1992, $P105
.annotate 'line', 1097
    set $P103, $P1992
    unless_null $P103, vivify_870
    new $P103, "Undef"
  vivify_870:
    set $P104, param_1991
    unless_null $P104, vivify_871
    new $P104, "Undef"
  vivify_871:
    $P103."BUILD"($P104 :named("name"))
.annotate 'line', 1095
    set $P103, $P1992
    unless_null $P103, vivify_872
    new $P103, "Undef"
  vivify_872:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "BUILD" :anon :subid("94_1334918351.99") :outer("180_1334918351.99")
    .param pmc param_1994
    .param pmc param_1995 :optional :named("name")
    .param int has_param_1995 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1101
    .lex "self", param_1994
    if has_param_1995, optparam_873
    new $P101, "Undef"
    set param_1995, $P101
  optparam_873:
    .lex "$name", param_1995
.annotate 'line', 1102
    set $P102, param_1995
    unless_null $P102, vivify_874
    new $P102, "Undef"
  vivify_874:
    set $P103, param_1994
    nqp_decontainerize $P104, $P103
    nqp_get_sc_object $P105, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 7
    repr_bind_attr_obj $P104, $P105, "$!name", 0, $P102
.annotate 'line', 1101
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "new_type" :anon :subid("95_1334918351.99") :outer("180_1334918351.99")
    .param pmc param_1997
    .param pmc param_1999 :named("repr")
    .param pmc param_1998 :optional :named("name")
    .param int has_param_1998 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1108
    .lex "self", param_1997
    if has_param_1998, optparam_875
    new $P101, "String"
    assign $P101, "<anon>"
    set param_1998, $P101
  optparam_875:
    .lex "$name", param_1998
    .lex "$repr", param_1999
.annotate 'line', 1109
    new $P102, "Undef"
    set $P2000, $P102
    .lex "$metaclass", $P2000
    set $P103, param_1997
    nqp_decontainerize $P104, $P103
    set $P105, param_1998
    unless_null $P105, vivify_876
    new $P105, "Undef"
  vivify_876:
    $P106 = $P104."new"($P105 :named("name"))
    set $P2000, $P106
.annotate 'line', 1111
    set $P103, $P2000
    unless_null $P103, vivify_877
    new $P103, "Undef"
  vivify_877:
    set $P104, param_1999
    unless_null $P104, vivify_878
    new $P104, "Undef"
  vivify_878:
    set $S100, $P104
    repr_type_object_for $P105, $P103, $S100
    $P2001 = root_new ['parrot';'Hash']
    set_who $P105, $P2001
.annotate 'line', 1108
    .return ($P105)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_method" :anon :subid("96_1334918351.99") :outer("180_1334918351.99")
    .param pmc param_2003
    .param pmc param_2004
    .param pmc param_2005
    .param pmc param_2006
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1115
    .lex "self", param_2003
    .lex "$obj", param_2004
    .lex "$name", param_2005
    .lex "$code_obj", param_2006
.annotate 'line', 1116
    die "Native types may not have methods (must be boxed to call method)"
.annotate 'line', 1115
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_multi_method" :anon :subid("97_1334918351.99") :outer("180_1334918351.99")
    .param pmc param_2008
    .param pmc param_2009
    .param pmc param_2010
    .param pmc param_2011
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1119
    .lex "self", param_2008
    .lex "$obj", param_2009
    .lex "$name", param_2010
    .lex "$code_obj", param_2011
.annotate 'line', 1120
    die "Native types may not have methods (must be boxed to call method)"
.annotate 'line', 1119
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_attribute" :anon :subid("98_1334918351.99") :outer("180_1334918351.99")
    .param pmc param_2013
    .param pmc param_2014
    .param pmc param_2015
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1123
    .lex "self", param_2013
    .lex "$obj", param_2014
    .lex "$meta_attr", param_2015
.annotate 'line', 1124
    die "Native types may not have attributes"
.annotate 'line', 1123
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "compose" :anon :subid("99_1334918351.99") :outer("180_1334918351.99")
    .param pmc param_2017
    .param pmc param_2018
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1127
    .lex "self", param_2017
    .lex "$obj", param_2018
.annotate 'line', 1128
    new $P101, "Float"
    assign $P101, 1
    set $P102, param_2017
    nqp_decontainerize $P103, $P102
    nqp_get_sc_object $P104, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 7
    repr_bind_attr_obj $P103, $P104, "$!composed", 1, $P101
.annotate 'line', 1127
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "name" :anon :subid("100_1334918351.99") :outer("180_1334918351.99")
    .param pmc param_2020
    .param pmc param_2021
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1131
    .lex "self", param_2020
    .lex "$obj", param_2021
    set $P101, param_2020
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 7
    repr_get_attr_obj $P104, $P102, $P103, "$!name", 0
    unless_null $P104, vivify_879
    new $P104, "Undef"
  vivify_879:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2023"  :subid("181_1334918351.99") :outer("119_1334918351.99")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1137
    .const 'Sub' $P2072 = "109_1334918351.99" 
    capture_lex $P2072
    .const 'Sub' $P2069 = "108_1334918351.99" 
    capture_lex $P2069
    .const 'Sub' $P2066 = "107_1334918351.99" 
    capture_lex $P2066
    .const 'Sub' $P2064 = "106_1334918351.99" 
    capture_lex $P2064
    .const 'Sub' $P2062 = "105_1334918351.99" 
    capture_lex $P2062
    .const 'Sub' $P2059 = "104_1334918351.99" 
    capture_lex $P2059
    .const 'Sub' $P2057 = "103_1334918351.99" 
    capture_lex $P2057
    .const 'Sub' $P2051 = "102_1334918351.99" 
    capture_lex $P2051
    .const 'Sub' $P2043 = "101_1334918351.99" 
    capture_lex $P2043
    .const 'Sub' $P2026 = "182_1334918351.99" 
    capture_lex $P2026
.annotate 'line', 1208
    .const 'Sub' $P2026 = "182_1334918351.99" 
    newclosure $P2040, $P2026
    set $P2025, $P2040
    .lex "has_method", $P2025
.annotate 'line', 1137
    .lex "$?PACKAGE", $P2041
    .lex "$?CLASS", $P2042
    set $P101, $P2025
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "has_method"  :subid("182_1334918351.99") :outer("181_1334918351.99")
    .param pmc param_2029
    .param pmc param_2030
    .param pmc param_2031
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1208
    .const 'Sub' $P2036 = "183_1334918351.99" 
    capture_lex $P2036
    new $P2028, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P2028, control_2027
    push_eh $P2028
    .lex "$target", param_2029
    .lex "$name", param_2030
    .lex "$local", param_2031
.annotate 'line', 1209
    $P2033 = root_new ['parrot';'ResizablePMCArray']
    set $P2032, $P2033
    .lex "@methods", $P2032
    set $P100, param_2029
    unless_null $P100, vivify_880
    new $P100, "Undef"
  vivify_880:
    get_how $P101, $P100
    set $P102, param_2029
    unless_null $P102, vivify_881
    new $P102, "Undef"
  vivify_881:
    set $P103, param_2031
    unless_null $P103, vivify_882
    new $P103, "Undef"
  vivify_882:
    $P104 = $P101."methods"($P102, $P103 :named("local"))
    set $P2032, $P104
.annotate 'line', 1210
    set $P2034, $P2032
    unless_null $P2034, vivify_883
    $P2034 = root_new ['parrot';'ResizablePMCArray']
  vivify_883:
    defined $I100, $P2034
    unless $I100, for_undef_884
    iter $P100, $P2034
    new $P103, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P103, loop2039_handler
    push_eh $P103
  loop2039_test:
    unless $P100, loop2039_done
    shift $P101, $P100
  loop2039_redo:
    .const 'Sub' $P2036 = "183_1334918351.99" 
    capture_lex $P2036
    $P2036($P101)
  loop2039_next:
    goto loop2039_test
  loop2039_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P104, exception, 'type'
    eq $P104, .CONTROL_LOOP_NEXT, loop2039_next
    eq $P104, .CONTROL_LOOP_REDO, loop2039_redo
  loop2039_done:
    pop_eh 
  for_undef_884:
.annotate 'line', 1213
    new $P100, "Exception"
    set $P100['type'], .CONTROL_RETURN
    new $P101, "Float"
    assign $P101, 0
    setattribute $P100, 'payload', $P101
    throw $P100
.annotate 'line', 1208
    .return ()
  control_2027:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P100, exception, "payload"
    .return ($P100)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "_block2035"  :anon :subid("183_1334918351.99") :outer("182_1334918351.99")
    .param pmc param_2037
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1210
    .lex "$_", param_2037
.annotate 'line', 1211
    find_lex $P103, "$_"
    unless_null $P103, vivify_885
    new $P103, "Undef"
  vivify_885:
    set $S100, $P103
    find_lex $P104, "$name"
    unless_null $P104, vivify_886
    new $P104, "Undef"
  vivify_886:
    set $S101, $P104
    iseq $I101, $S100, $S101
    if $I101, if_2038
    new $P102, 'Integer'
    set $P102, $I101
    goto if_2038_end
  if_2038:
    new $P105, "Exception"
    set $P105['type'], .CONTROL_RETURN
    new $P106, "Float"
    assign $P106, 1
    setattribute $P105, 'payload', $P106
    throw $P105
  if_2038_end:
.annotate 'line', 1210
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "new" :anon :subid("101_1334918351.99") :outer("181_1334918351.99")
    .param pmc param_2044
    .param pmc param_2045 :named("name")
    .param pmc param_2046 :optional :named("box_target")
    .param int has_param_2046 :opt_flag
    .param pmc param_2047 :slurpy :named
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1143
    .lex "self", param_2044
    .lex "$name", param_2045
    if has_param_2046, optparam_887
    new $P101, "Undef"
    set param_2046, $P101
  optparam_887:
    .lex "$box_target", param_2046
    .lex "%extra", param_2047
.annotate 'line', 1144
    new $P102, "Undef"
    set $P2048, $P102
    .lex "$attr", $P2048
    set $P103, param_2044
    nqp_decontainerize $P104, $P103
    repr_instance_of $P105, $P104
    set $P2048, $P105
.annotate 'line', 1145
    set $P103, $P2048
    unless_null $P103, vivify_888
    new $P103, "Undef"
  vivify_888:
    set $P104, param_2045
    unless_null $P104, vivify_889
    new $P104, "Undef"
  vivify_889:
    set $P2049, param_2047
    unless_null $P2049, vivify_890
    $P2049 = root_new ['parrot';'Hash']
  vivify_890:
    set $P105, param_2046
    unless_null $P105, vivify_891
    new $P105, "Undef"
  vivify_891:
.annotate 'line', 1146
    set $P2050, param_2047
    unless_null $P2050, vivify_892
    $P2050 = root_new ['parrot';'Hash']
  vivify_892:
    exists $I100, $P2050["type"]
.annotate 'line', 1145
    $P103."BUILD"($P2049 :flat, $P104 :named("name"), $P105 :named("box_target"), $I100 :named("has_type"))
.annotate 'line', 1143
    set $P103, $P2048
    unless_null $P103, vivify_893
    new $P103, "Undef"
  vivify_893:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "BUILD" :anon :subid("102_1334918351.99") :outer("181_1334918351.99")
    .param pmc param_2052
    .param pmc param_2053 :optional :named("name")
    .param int has_param_2053 :opt_flag
    .param pmc param_2054 :optional :named("type")
    .param int has_param_2054 :opt_flag
    .param pmc param_2055 :optional :named("has_type")
    .param int has_param_2055 :opt_flag
    .param pmc param_2056 :optional :named("box_target")
    .param int has_param_2056 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1150
    .lex "self", param_2052
    if has_param_2053, optparam_894
    new $P101, "Undef"
    set param_2053, $P101
  optparam_894:
    .lex "$name", param_2053
    if has_param_2054, optparam_895
    new $P102, "Undef"
    set param_2054, $P102
  optparam_895:
    .lex "$type", param_2054
    if has_param_2055, optparam_896
    new $P103, "Undef"
    set param_2055, $P103
  optparam_896:
    .lex "$has_type", param_2055
    if has_param_2056, optparam_897
    new $P104, "Undef"
    set param_2056, $P104
  optparam_897:
    .lex "$box_target", param_2056
.annotate 'line', 1151
    set $P105, param_2053
    unless_null $P105, vivify_898
    new $P105, "Undef"
  vivify_898:
    set $P106, param_2052
    nqp_decontainerize $P107, $P106
    nqp_get_sc_object $P108, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 8
    repr_bind_attr_obj $P107, $P108, "$!name", 0, $P105
.annotate 'line', 1152
    set $P105, param_2054
    unless_null $P105, vivify_899
    new $P105, "Undef"
  vivify_899:
    set $P106, param_2052
    nqp_decontainerize $P107, $P106
    nqp_get_sc_object $P108, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 8
    repr_bind_attr_obj $P107, $P108, "$!type", 1, $P105
.annotate 'line', 1153
    set $P105, param_2055
    unless_null $P105, vivify_900
    new $P105, "Undef"
  vivify_900:
    set $P106, param_2052
    nqp_decontainerize $P107, $P106
    nqp_get_sc_object $P108, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 8
    repr_bind_attr_obj $P107, $P108, "$!has_type", 2, $P105
.annotate 'line', 1154
    set $P105, param_2056
    unless_null $P105, vivify_901
    new $P105, "Undef"
  vivify_901:
    set $P106, param_2052
    nqp_decontainerize $P107, $P106
    nqp_get_sc_object $P108, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 8
    repr_bind_attr_obj $P107, $P108, "$!box_target", 3, $P105
.annotate 'line', 1150
    .return ($P105)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "name" :anon :subid("103_1334918351.99") :outer("181_1334918351.99")
    .param pmc param_2058
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1157
    .lex "self", param_2058
    set $P101, param_2058
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 8
    repr_get_attr_obj $P104, $P102, $P103, "$!name", 0
    unless_null $P104, vivify_902
    new $P104, "Undef"
  vivify_902:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "type" :anon :subid("104_1334918351.99") :outer("181_1334918351.99")
    .param pmc param_2060
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1161
    .lex "self", param_2060
.annotate 'line', 1162
    set $P102, param_2060
    nqp_decontainerize $P103, $P102
    nqp_get_sc_object $P104, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 8
    repr_get_attr_obj $P105, $P103, $P104, "$!has_type", 2
    unless_null $P105, vivify_903
    new $P105, "Undef"
  vivify_903:
    if $P105, if_2061
    null $P110
    set $P101, $P110
    goto if_2061_end
  if_2061:
    set $P106, param_2060
    nqp_decontainerize $P107, $P106
    nqp_get_sc_object $P108, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 8
    repr_get_attr_obj $P109, $P107, $P108, "$!type", 1
    unless_null $P109, vivify_904
    new $P109, "Undef"
  vivify_904:
    set $P101, $P109
  if_2061_end:
.annotate 'line', 1161
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "has_accessor" :anon :subid("105_1334918351.99") :outer("181_1334918351.99")
    .param pmc param_2063
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1165
    .lex "self", param_2063
    .return (0)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "build_closure" :anon :subid("106_1334918351.99") :outer("181_1334918351.99")
    .param pmc param_2065
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1169
    .lex "self", param_2065
    .return (0)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "box_target" :anon :subid("107_1334918351.99") :outer("181_1334918351.99")
    .param pmc param_2067
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1173
    .lex "self", param_2067
.annotate 'line', 1174
    set $P102, param_2067
    nqp_decontainerize $P103, $P102
    nqp_get_sc_object $P104, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 8
    repr_get_attr_obj $P105, $P103, $P104, "$!box_target", 3
    unless_null $P105, vivify_905
    new $P105, "Undef"
  vivify_905:
    if $P105, if_2068
    new $P107, "Float"
    assign $P107, 0
    set $P101, $P107
    goto if_2068_end
  if_2068:
    new $P106, "Float"
    assign $P106, 1
    set $P101, $P106
  if_2068_end:
.annotate 'line', 1173
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "compose" :anon :subid("108_1334918351.99") :outer("181_1334918351.99")
    .param pmc param_2070
    .param pmc param_2071
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1177
    .lex "self", param_2070
    .lex "$obj", param_2071
    set $P101, param_2071
    unless_null $P101, vivify_906
    new $P101, "Undef"
  vivify_906:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "has_mutator" :anon :subid("109_1334918351.99") :outer("181_1334918351.99")
    .param pmc param_2073
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1204
    .lex "self", param_2073
.annotate 'line', 1205
    set $P101, param_2073
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 8
    repr_get_attr_obj $P104, $P102, $P103, "$!name", 0
    unless_null $P104, vivify_907
    new $P104, "Undef"
  vivify_907:
    set $S100, $P104
    new $P105, "Float"
    assign $P105, 1
    set $I100, $P105
    new $P106, "Float"
    assign $P106, 1
    set $I101, $P106
    substr $S101, $S100, $I100, $I101
    isne $I102, $S101, "!"
.annotate 'line', 1204
    .return ($I102)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "_block2074"  :subid("184_1334918351.99") :outer("119_1334918351.99")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1219
    .const 'Sub' $P2110 = "118_1334918351.99" 
    capture_lex $P2110
    .const 'Sub' $P2107 = "117_1334918351.99" 
    capture_lex $P2107
    .const 'Sub' $P2103 = "116_1334918351.99" 
    capture_lex $P2103
    .const 'Sub' $P2098 = "115_1334918351.99" 
    capture_lex $P2098
    .const 'Sub' $P2093 = "114_1334918351.99" 
    capture_lex $P2093
    .const 'Sub' $P2088 = "113_1334918351.99" 
    capture_lex $P2088
    .const 'Sub' $P2085 = "112_1334918351.99" 
    capture_lex $P2085
    .const 'Sub' $P2081 = "111_1334918351.99" 
    capture_lex $P2081
    .const 'Sub' $P2079 = "110_1334918351.99" 
    capture_lex $P2079
.annotate 'line', 1223
    new $P100, "Undef"
    set $P2076, $P100
    .lex "$archetypes", $P2076
    .lex "$?PACKAGE", $P2077
    .lex "$?CLASS", $P2078
    find_lex $P101, "Archetypes"
    $P102 = $P101."new"()
    set $P2076, $P102
.annotate 'line', 1265
    .const 'Sub' $P2110 = "118_1334918351.99" 
    newclosure $P2113, $P2110
.annotate 'line', 1219
    .return ($P2113)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "archetypes" :anon :subid("110_1334918351.99") :outer("184_1334918351.99")
    .param pmc param_2080
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1224
    .lex "self", param_2080
    find_lex $P101, "$archetypes"
    unless_null $P101, vivify_908
    new $P101, "Undef"
  vivify_908:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "new" :anon :subid("111_1334918351.99") :outer("184_1334918351.99")
    .param pmc param_2082
    .param pmc param_2083 :optional :named("name")
    .param int has_param_2083 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1228
    .lex "self", param_2082
    if has_param_2083, optparam_909
    new $P101, "Undef"
    set param_2083, $P101
  optparam_909:
    .lex "$name", param_2083
.annotate 'line', 1229
    new $P102, "Undef"
    set $P2084, $P102
    .lex "$obj", $P2084
    set $P103, param_2082
    nqp_decontainerize $P104, $P103
    repr_instance_of $P105, $P104
    set $P2084, $P105
.annotate 'line', 1230
    set $P103, $P2084
    unless_null $P103, vivify_910
    new $P103, "Undef"
  vivify_910:
    set $P104, param_2083
    unless_null $P104, vivify_911
    new $P104, "Undef"
  vivify_911:
    $P103."BUILD"($P104 :named("name"))
.annotate 'line', 1228
    set $P103, $P2084
    unless_null $P103, vivify_912
    new $P103, "Undef"
  vivify_912:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "BUILD" :anon :subid("112_1334918351.99") :outer("184_1334918351.99")
    .param pmc param_2086
    .param pmc param_2087 :optional :named("name")
    .param int has_param_2087 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1234
    .lex "self", param_2086
    if has_param_2087, optparam_913
    new $P101, "Undef"
    set param_2087, $P101
  optparam_913:
    .lex "$name", param_2087
.annotate 'line', 1235
    set $P102, param_2087
    unless_null $P102, vivify_914
    new $P102, "Undef"
  vivify_914:
    set $P103, param_2086
    nqp_decontainerize $P104, $P103
    nqp_get_sc_object $P105, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 9
    repr_bind_attr_obj $P104, $P105, "$!name", 0, $P102
.annotate 'line', 1234
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "new_type" :anon :subid("113_1334918351.99") :outer("184_1334918351.99")
    .param pmc param_2089
    .param pmc param_2090 :optional :named("name")
    .param int has_param_2090 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1240
    .lex "self", param_2089
    if has_param_2090, optparam_915
    new $P101, "String"
    assign $P101, "<anon>"
    set param_2090, $P101
  optparam_915:
    .lex "$name", param_2090
.annotate 'line', 1241
    new $P102, "Undef"
    set $P2091, $P102
    .lex "$metaclass", $P2091
    set $P103, param_2089
    nqp_decontainerize $P104, $P103
    set $P105, param_2090
    unless_null $P105, vivify_916
    new $P105, "Undef"
  vivify_916:
    $P106 = $P104."new"($P105 :named("name"))
    set $P2091, $P106
.annotate 'line', 1243
    set $P103, $P2091
    unless_null $P103, vivify_917
    new $P103, "Undef"
  vivify_917:
    new $P104, "String"
    assign $P104, "Uninstantiable"
    set $S100, $P104
    repr_type_object_for $P105, $P103, $S100
    $P2092 = root_new ['parrot';'Hash']
    set_who $P105, $P2092
.annotate 'line', 1240
    .return ($P105)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_method" :anon :subid("114_1334918351.99") :outer("184_1334918351.99")
    .param pmc param_2094
    .param pmc param_2095
    .param pmc param_2096
    .param pmc param_2097
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1247
    .lex "self", param_2094
    .lex "$obj", param_2095
    .lex "$name", param_2096
    .lex "$code_obj", param_2097
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_multi_method" :anon :subid("115_1334918351.99") :outer("184_1334918351.99")
    .param pmc param_2099
    .param pmc param_2100
    .param pmc param_2101
    .param pmc param_2102
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1253
    .lex "self", param_2099
    .lex "$obj", param_2100
    .lex "$name", param_2101
    .lex "$code_obj", param_2102
.annotate 'line', 1254
    die "Modules may not have methods"
.annotate 'line', 1253
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_attribute" :anon :subid("116_1334918351.99") :outer("184_1334918351.99")
    .param pmc param_2104
    .param pmc param_2105
    .param pmc param_2106
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1257
    .lex "self", param_2104
    .lex "$obj", param_2105
    .lex "$meta_attr", param_2106
.annotate 'line', 1258
    die "Modules may not have attributes"
.annotate 'line', 1257
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "compose" :anon :subid("117_1334918351.99") :outer("184_1334918351.99")
    .param pmc param_2108
    .param pmc param_2109
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1261
    .lex "self", param_2108
    .lex "$obj", param_2109
.annotate 'line', 1262
    new $P101, "Float"
    assign $P101, 1
    set $P102, param_2108
    nqp_decontainerize $P103, $P102
    nqp_get_sc_object $P104, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 9
    repr_bind_attr_obj $P103, $P104, "$!composed", 1, $P101
.annotate 'line', 1261
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "name" :anon :subid("118_1334918351.99") :outer("184_1334918351.99")
    .param pmc param_2111
    .param pmc param_2112
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1265
    .lex "self", param_2111
    .lex "$obj", param_2112
    set $P101, param_2111
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "3FD495132E8A7A2D988D8B094126443A5F6E44E9-1334918351.944", 9
    repr_get_attr_obj $P104, $P102, $P103, "$!name", 0
    unless_null $P104, vivify_918
    new $P104, "Undef"
  vivify_918:
    .return ($P104)
.end


.HLL "nqp"

.namespace []
.sub "_block2114"  :anon :subid("185_1334918351.99") :outer("119_1334918351.99")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1273
    .lex "$?PACKAGE", $P2116
    .lex "$?CLASS", $P2117
.annotate 'line', 1274
    find_lex $P100, "NQPModuleHOW"
    set $P101, $P2116
    unless_null $P101, vivify_919
    new $P101, "Undef"
    set $P2116, $P101
  vivify_919:
    get_who $P102, $P101
    set $P102["module"], $P100
.annotate 'line', 1275
    find_lex $P100, "NQPClassHOW"
    set $P101, $P2116
    unless_null $P101, vivify_920
    new $P101, "Undef"
    set $P2116, $P101
  vivify_920:
    get_who $P102, $P101
    set $P102["class"], $P100
.annotate 'line', 1276
    find_lex $P100, "NQPAttribute"
    set $P101, $P2116
    unless_null $P101, vivify_921
    new $P101, "Undef"
    set $P2116, $P101
  vivify_921:
    get_who $P102, $P101
    set $P102["class-attr"], $P100
.annotate 'line', 1277
    find_lex $P100, "NQPClassHOW"
    set $P101, $P2116
    unless_null $P101, vivify_922
    new $P101, "Undef"
    set $P2116, $P101
  vivify_922:
    get_who $P102, $P101
    set $P102["grammar"], $P100
.annotate 'line', 1278
    find_lex $P100, "NQPAttribute"
    set $P101, $P2116
    unless_null $P101, vivify_923
    new $P101, "Undef"
    set $P2116, $P101
  vivify_923:
    get_who $P102, $P101
    set $P102["grammar-attr"], $P100
.annotate 'line', 1279
    find_lex $P100, "NQPParametricRoleHOW"
    set $P101, $P2116
    unless_null $P101, vivify_924
    new $P101, "Undef"
    set $P2116, $P101
  vivify_924:
    get_who $P102, $P101
    set $P102["role"], $P100
.annotate 'line', 1280
    find_lex $P100, "NQPAttribute"
    set $P101, $P2116
    unless_null $P101, vivify_925
    new $P101, "Undef"
    set $P2116, $P101
  vivify_925:
    get_who $P102, $P101
    set $P102["role-attr"], $P100
.annotate 'line', 1281
    find_lex $P100, "NQPNativeHOW"
    set $P101, $P2116
    unless_null $P101, vivify_926
    new $P101, "Undef"
    set $P2116, $P101
  vivify_926:
    get_who $P102, $P101
    set $P102["native"], $P100
.annotate 'line', 1273
    .return ($P100)
.end


.HLL "nqp"

.namespace []
.sub "_block2119" :load :anon :subid("186_1334918351.99")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1
    .const '' $P2121 = "119_1334918351.99" 
    $P106 = $P2121()
    .return ($P106)
.end

