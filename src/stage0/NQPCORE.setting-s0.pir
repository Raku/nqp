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
.sub "_block1010"  :anon :subid("35_1330909681.25009")
    .param pmc param_1012 :slurpy
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 0
    .const 'Sub' $P1284 = "66_1330909681.25009" 
    capture_lex $P1284
    .const 'Sub' $P1264 = "64_1330909681.25009" 
    capture_lex $P1264
    .const 'Sub' $P1188 = "59_1330909681.25009" 
    capture_lex $P1188
    .const 'Sub' $P1184 = "58_1330909681.25009" 
    capture_lex $P1184
    .const 'Sub' $P1162 = "57_1330909681.25009" 
    capture_lex $P1162
    .const 'Sub' $P1158 = "56_1330909681.25009" 
    capture_lex $P1158
    .const 'Sub' $P1154 = "55_1330909681.25009" 
    capture_lex $P1154
    .const 'Sub' $P1150 = "54_1330909681.25009" 
    capture_lex $P1150
    .const 'Sub' $P1146 = "53_1330909681.25009" 
    capture_lex $P1146
    .const 'Sub' $P1142 = "52_1330909681.25009" 
    capture_lex $P1142
    .const 'Sub' $P1137 = "51_1330909681.25009" 
    capture_lex $P1137
    .const 'Sub' $P1128 = "50_1330909681.25009" 
    capture_lex $P1128
    .const 'Sub' $P1124 = "49_1330909681.25009" 
    capture_lex $P1124
    .const 'Sub' $P1106 = "47_1330909681.25009" 
    capture_lex $P1106
    .const 'Sub' $P1083 = "45_1330909681.25009" 
    capture_lex $P1083
    .const 'Sub' $P1067 = "43_1330909681.25009" 
    capture_lex $P1067
    .const 'Sub' $P1062 = "42_1330909681.25009" 
    capture_lex $P1062
    .const 'Sub' $P1053 = "40_1330909681.25009" 
    capture_lex $P1053
    .const 'Sub' $P1047 = "39_1330909681.25009" 
    capture_lex $P1047
    .const 'Sub' $P1041 = "38_1330909681.25009" 
    capture_lex $P1041
    .const 'Sub' $P1037 = "37_1330909681.25009" 
    capture_lex $P1037
    .const 'Sub' $P1024 = "36_1330909681.25009" 
    capture_lex $P1024
.annotate 'line', 1
    .lex "@ARGS", param_1012
    .lex "GLOBALish", $P1013
    .lex "$?PACKAGE", $P1014
    .lex "EXPORTHOW", $P1015
    .lex "int", $P1016
    .lex "num", $P1017
    .lex "str", $P1018
    .lex "NQPRoutine", $P1019
    .lex "NQPSignature", $P1020
    .lex "NQPMu", $P1021
    .lex "NQPCapture", $P1022
.annotate 'line', 212
    .const 'Sub' $P1024 = "36_1330909681.25009" 
    newclosure $P1035, $P1024
    set $P1023, $P1035
    .lex "open", $P1023
.annotate 'line', 224
    .const 'Sub' $P1037 = "37_1330909681.25009" 
    newclosure $P1039, $P1037
    set $P1036, $P1039
    .lex "close", $P1036
.annotate 'line', 232
    .const 'Sub' $P1041 = "38_1330909681.25009" 
    newclosure $P1045, $P1041
    set $P1040, $P1045
    .lex "slurp", $P1040
.annotate 'line', 244
    .const 'Sub' $P1047 = "39_1330909681.25009" 
    newclosure $P1051, $P1047
    set $P1046, $P1051
    .lex "spew", $P1046
.annotate 'line', 251
    .const 'Sub' $P1053 = "40_1330909681.25009" 
    newclosure $P1060, $P1053
    set $P1052, $P1060
    .lex "print", $P1052
.annotate 'line', 258
    .const 'Sub' $P1062 = "42_1330909681.25009" 
    newclosure $P1065, $P1062
    set $P1061, $P1065
    .lex "say", $P1061
.annotate 'line', 276
    .const 'Sub' $P1067 = "43_1330909681.25009" 
    newclosure $P1081, $P1067
    set $P1066, $P1081
    .lex "match", $P1066
.annotate 'line', 298
    .const 'Sub' $P1083 = "45_1330909681.25009" 
    newclosure $P1104, $P1083
    set $P1082, $P1104
    .lex "subst", $P1082
.annotate 'line', 324
    .const 'Sub' $P1106 = "47_1330909681.25009" 
    newclosure $P1119, $P1106
    set $P1105, $P1119
    .lex "hash", $P1105
.annotate 'line', 333
    new $P122, "Undef"
    set $P1120, $P122
    .lex "$test_counter", $P1120
.annotate 'line', 334
    new $P123, "Undef"
    set $P1121, $P123
    .lex "$todo_upto_test_num", $P1121
.annotate 'line', 335
    new $P124, "Undef"
    set $P1122, $P124
    .lex "$todo_reason", $P1122
.annotate 'line', 337
    .const 'Sub' $P1124 = "49_1330909681.25009" 
    newclosure $P1126, $P1124
    set $P1123, $P1126
    .lex "plan", $P1123
.annotate 'line', 341
    .const 'Sub' $P1128 = "50_1330909681.25009" 
    newclosure $P1135, $P1128
    set $P1127, $P1135
    .lex "ok", $P1127
.annotate 'line', 359
    .const 'Sub' $P1137 = "51_1330909681.25009" 
    newclosure $P1140, $P1137
    set $P1136, $P1140
    .lex "todo", $P1136
.annotate 'line', 364
    .const 'Sub' $P1142 = "52_1330909681.25009" 
    newclosure $P1144, $P1142
    set $P1141, $P1144
    .lex "skip", $P1141
.annotate 'line', 12
    .const 'Sub' $P1146 = "53_1330909681.25009" 
    capture_lex $P1146
    $P1146()
.annotate 'line', 23
    .const 'Sub' $P1150 = "54_1330909681.25009" 
    capture_lex $P1150
    $P1150()
.annotate 'line', 25
    .const 'Sub' $P1154 = "55_1330909681.25009" 
    capture_lex $P1154
    $P1154()
.annotate 'line', 27
    .const 'Sub' $P1158 = "56_1330909681.25009" 
    capture_lex $P1158
    $P1158()
.annotate 'line', 30
    .const 'Sub' $P1162 = "57_1330909681.25009" 
    capture_lex $P1162
    $P1162()
.annotate 'line', 77
    set $P127, $P1019
.annotate 'line', 78
    new $P129, "Hash"
.annotate 'line', 79
    set $P131, $P1019
    new $P132, "ResizablePMCArray"
    push $P132, $P131
    push $P132, "$!do"
    set $P129["invoke"], $P132
.annotate 'line', 80
    set $P133, $P1019
    new $P134, "ResizablePMCArray"
    push $P134, $P133
    push $P134, "$!do"
    set $P129["get_string"], $P134
.annotate 'line', 78
    stable_publish_vtable_handler_mapping $P127, $P129
.annotate 'line', 81
    set $P127, $P1019
    new $P129, "Float"
    assign $P129, 5
    set $I100, $P129
    null $P131
    set_boolification_spec $P127, $I100, $P131
.annotate 'line', 83
    .const 'Sub' $P1184 = "58_1330909681.25009" 
    capture_lex $P1184
    $P1184()
.annotate 'line', 89
    .const 'Sub' $P1188 = "59_1330909681.25009" 
    capture_lex $P1188
    $P1188()
.annotate 'line', 163
    .const 'Sub' $P1264 = "64_1330909681.25009" 
    capture_lex $P1264
    $P1264()
.annotate 'line', 1
    set $P127, $P1023
    set $P127, $P1036
    set $P127, $P1040
    set $P127, $P1046
    set $P127, $P1052
    set $P127, $P1061
    set $P127, $P1066
    set $P127, $P1082
    set $P127, $P1105
.annotate 'line', 333
    new $P127, "Float"
    assign $P127, 0
    set $P1120, $P127
.annotate 'line', 334
    new $P127, "Float"
    assign $P127, 0
    set $P1121, $P127
.annotate 'line', 335
    new $P127, "String"
    assign $P127, ""
    set $P1122, $P127
.annotate 'line', 1
    set $P127, $P1123
    set $P127, $P1127
    set $P127, $P1136
    set $P127, $P1141
    new $P127, "Float"
    assign $P127, 1
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
    set $P129, param_1012
    if $P129, if_1279
    set $P127, $P129
    goto if_1279_end
  if_1279:
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P131, "ModuleLoader"
    getinterp $P132
    set $P133, $P132["context"]
    $P134 = $P131."set_mainline_module"($P133)
    set $P127, $P134
  if_1279_end:
    .return ($P127)
    .const 'Sub' $P1281 = "65_1330909681.25009" 
    .return ($P1281)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post67") :outer("35_1330909681.25009")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 0
    .const 'Sub' $P1011 = "35_1330909681.25009" 
    .local pmc block
    set block, $P1011
    nqp_dynop_setup 
    nqp_bigint_setup 
    getinterp $P137
    get_class $P138, "LexPad"
    get_class $P139, "NQPLexPad"
    $P137."hll_map"($P138, $P139)
    nqp_create_sc $P140, "3940BAAC6795364DE724F4268A50AA0EB6318065-1330909681.17426"
    .local pmc cur_sc
    set cur_sc, $P140
    cur_sc."set_description"("src/stage2/NQPCORE.setting")
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P141, "ModuleLoader"
    $P141."load_module"("nqpmo")
    set $S101, "AQAAAEAAAAACAAAAUAAAAAkAAACYAAAATgcAACwAAAAOCgAA6g8AAAAAAADqDwAAAAAAAOoPAADqDwAAAAAAAAMAAAAEAAAANQAAAAAAAAABAAAAAAAAAAwAAAAKAQAADQAAAEoBAAAOAAAAigEAAA8AAADKAQAAEAAAAAoCAAAZAAAAOAMAABwAAAACBAAAJgAAACQFAAAAAAAAGQAAAAAAAAAAAAAACgAIAAAAAgAAAAIAAQAAAAIAAAAFAAAAAgABAAAAAwAAAAYAAAACAAEAAAAEAAAABwAAAAIAAQAAAAUAAAAIAAAAAgABAAAABgAAAAkAAAACAAEAAAAHAAAACgAAAAIAAQAAAAgAAAALAAAAAgABAAAACQAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAAAAAADAAAAAAAaAAAAAAAAAAEAAAAKAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGwAAAAAAAAACAAAACgAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABwAAAAAAAAAAwAAAAoAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAdAAAAAAAAAAQAAAAKAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHgAAAAAAAAAFAAAACgAAAAAACgAEAAAAEQAAAAsAAAAAAAAAAAASAAAACwAAAAAAAQAAABMAAAALAAAAAAACAAAAFAAAAAsAAAAAAAMAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAABQAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAUAAAAKAAQAAAAVAAAABAAAAAAAAAAAABYAAAAEAAEAAAAAAAAAFwAAAAQAAgAAAAAAAAAYAAAABAADAAAAAAAAAAAAAAAfAAAAAAAAAAYAAAAKAAAAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAABgAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAABgAAAAoAAgAAABoAAAAEAAAAAAAAAAAAGwAAAAQAAQAAAAAAAAAAAAAAIAAAAAAAAAAHAAAACgAAAAAACgAJAAAAHQAAAAIAAAAAAAgAAAAeAAAAAgAAAAAACQAAAB8AAAACAAAAAAAKAAAAIAAAAAIAAAAAAAsAAAAhAAAAAgAAAAAADAAAACIAAAACAAAAAAANAAAAIwAAAAIAAAAAABAAAAAkAAAAAgAAAAAAEgAAACUAAAACAAAAAAATAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAcAAAAEAAAAAAAAAAEAAAAAAAAABQAAAAAAAAADAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAcAAAADAAAAAAAhAAAAAAAAABQAAAAKAAAAAAAKAAwAAAAnAAAAAgAAAAAACAAAACgAAAACAAAAAAAJAAAAKQAAAAIAAAAAAAoAAAAqAAAAAgAAAAAACwAAACsAAAACAAAAAAAVAAAALAAAAAIAAAAAAA0AAAAtAAAAAgAAAAAAEAAAAC4AAAACAAAAAAASAAAALwAAAAIAAAAAABMAAAAwAAAAAgAAAAAAFgAAADEAAAACAAAAAAAXAAAAMgAAAAIAAAAAABgAAAAAAAAAAAAAAAIAAAAAAAAAAgAAAAAAFAAAAAIAAAAAAAcAAAAEAAAAAAAAAAEAAAAAAAAABQAAAAAAAAADAAAAAAAAAAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAgAAAAAAAAACAAAAAAAHAAAAAwACAAAAAAAUAAAACgACAAAAMwAAAAQAAAAAAAAAAAA0AAAABAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAADAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAUAAAAAAAAAAAAAAAAAAAAGAAAAAAAAAAAAAAAAAAAABwAAAAAAAAAAAAAAAAAAAAUAAAAAAAAAAQAAAAAAAAAFAAAAEAAAAAEAAAAAAAAABQAAACAAAAABAAAAAAAAAAUAAAAwAAAAAQAAAAAAAAAFAAAAQAAAAAEAAAAAAAAABQAAAFAAAAABAAAAAAAAAAUAAABuAAAAAQAAAAAAAAAFAAAAfgAAAAEAAAAAAAAABQAAAJYAAAABAAAAAAAAAAUAAAC0AAAAAQAAAAAAAAAFAAAAzAAAAAEAAAAAAAAABQAAANwAAAABAAAAAAAAAAgAAADsAAAAAAAAAAAAAAAFAAAA7AAAAAEAAAAAAAAABQAAAPwAAAABAAAAAAAAAAUAAAAMAQAAAQAAAAAAAAAFAAAAHAEAAAEAAAACAAAAAAAAACwBAAABAAAAAQAAAAkAAAA8AQAAAQAAAAEAAAAHAAAATAEAAAEAAAABAAAABwAAAFwBAAABAAAAAQAAAAcAAABsAQAAAQAAAAIAAAAAAAAAfAEAAAEAAAACAAAAAAAAAOwBAAABAAAAAQAAAAYAAAAQAgAAAQAAAAEAAAAGAAAAKAMAAAEAAAAAAAAABgAAAFAFAAABAAAAAAAAAAYAAABwBQAAAQAAAAIAAAACAAAAnAUAAAEAAAACAAAAAgAAAKAFAAABAAAAAgAAAAIAAACkBQAAAQAAAAIAAAACAAAAqAUAAAEAAAACAAAAAgAAAKwFAAABAAAAAgAAAAIAAACwBQAAAQAAAAEAAAAIAAAAtAUAAAEAAAABAAAACAAAAMgFAAABAAAACwAAAAAABAAAAAEAAQABAAsAAAAAAAUAAAABAAEAAQALAAAAAAAGAAAAAQABAAEACwAAAAAABwAAAAEAAQABAAsAAAAAAAgAAAABAAEAAQALAAAAAAAJAAAAAQAHAAEAAAACAAAAAAAPAAAAAQALAAAAAAAJAAAAAQABAAEACwAAAAAACgAAAAIAAAAAACIAAAABAAEACwAAAAAACwAAAAEABwABAAAAAgAAAAAAEQAAAAEACwAAAAAADAAAAAIAAAAAACMAAAABAAEACwAAAAAADQAAAAEAAQABAAsAAAAAAA4AAAABAAEAAQALAAAAAAAPAAAAAQABAAEACwAAAAAAEAAAAAEAAQABAAsAAAAAABEAAAABAAEAAQALAAAAAAASAAAAAQABAAEANgAAAAcAAAAAAAoAAAAAAAYANwAAAAQAAQAAAAAAAAAGADgAAAAEAAEAAAAAAAAABgA5AAAABAABAAAAAAAAAAYAOgAAAAQAAQAAAAAAAAA7AAAABwAEAAAAAgAAAAAAJAAAAAIAAAAAACUAAAACAAAAAAAmAAAAAgAAAAAAJwAAAAoABAAAADwAAAALAAAAAAAAAAAAPQAAAAsAAAAAAAEAAAA+AAAACwAAAAAAAgAAAD8AAAALAAAAAAADAAAAQAAAAAcAAgAAAAIAAAAAACgAAAACAAAAAAApAAAACgAAAAAABgBBAAAAAQAKAAkAAABCAAAAAgAAAAAACAAAAEMAAAACAAAAAAAJAAAARAAAAAIAAAAAAAoAAABFAAAAAgAAAAAACwAAAEYAAAACAAAAAAAMAAAARwAAAAIAAAAAAA0AAABIAAAAAgAAAAAAEAAAAEkAAAACAAAAAAASAAAASgAAAAIAAAAAABMAAAAHAAIAAAAKAAIAAABLAAAABgBMAAAATQAAAAIAAAAAAA8AAAAKAAIAAABOAAAABgBPAAAAUAAAAAIAAAAAABEAAAABAAEAAgAAAAAABwAAAAEAAQAEAAEAAAAAAAAABwABAAAAAgAAAAAABwAAAAEACgAAAAAACgABAAAAUQAAAAIAAAAAAA4AAAABAAYAUgAAAAoAAgAAAFMAAAACAAAAAAAqAAAAVAAAAAIAAAAAACsAAAAKAAQAAABVAAAAAgAAAAAAFQAAAFYAAAACAAAAAAAWAAAAVwAAAAIAAAAAABcAAABYAAAAAgAAAAAAGAAAAAEABwABAAAAAgAAAAAABwAAAAEAAgAAAAAABwAAAAEAAQAEAAEAAAAAAAAABwACAAAAAgAAAAAAFAAAAAIAAAAAAAcAAAABAAoAAAAAAAEACgAOAAAAWQAAAAcAAgAAAAIAAAAAABQAAAAGAFoAAABbAAAABwACAAAAAgAAAAAAFAAAAAYAXAAAAF0AAAAHAAIAAAACAAAAAAAUAAAABgBeAAAAXwAAAAcAAgAAAAIAAAAAABQAAAAGAGAAAABhAAAABwACAAAAAgAAAAAAFAAAAAYAYgAAAGMAAAAHAAIAAAACAAAAAAAUAAAABgBkAAAAZQAAAAcAAgAAAAIAAAAAABQAAAAGAGYAAABnAAAABwACAAAAAgAAAAAAFAAAAAYAaAAAAGkAAAAHAAIAAAACAAAAAAAUAAAABgBqAAAAawAAAAcAAgAAAAIAAAAAABQAAAAGAGwAAABtAAAABwACAAAAAgAAAAAAFAAAAAYAbgAAAG8AAAAHAAIAAAACAAAAAAAUAAAABgBwAAAAcQAAAAcAAgAAAAIAAAAAABQAAAAGAHIAAABzAAAABwACAAAAAgAAAAAAFAAAAAYAdAAAAAcAAQAAAAIAAAAAAAcAAAAHAAEAAAAEAAIAAAAAAAAABwACAAAAAgAAAAAABwAAAAMABwACAAAABAACAAAAAAAAAAQAAAAAAAAAAAB1AAAAdgAAAHcAAAB4AAAAeQAAAHoAAAAGAHsAAAADAAQAAAAAAAAAAAADAAYAfAAAAAMABAAAAAAAAAAAAAMA"
    new $P141, "ResizableStringArray"
    .local pmc string_heap
    set string_heap, $P141
    null $S102
    push string_heap, $S102
    push string_heap, "P6opaque"
    push string_heap, "RoleToRoleApplier"
    push string_heap, "67B20E3C7A7BB8197F67BABB87CA2F77E5CBCABC-1330909677.45112"
    push string_heap, "src/stage2/gen/nqp-mo.pm"
    push string_heap, "NQPConcreteRoleHOW"
    push string_heap, "RoleToClassApplier"
    push string_heap, "NQPParametricRoleHOW"
    push string_heap, "NQPClassHOW"
    push string_heap, "NQPNativeHOW"
    push string_heap, "NQPAttribute"
    push string_heap, "NQPModuleHOW"
    push string_heap, "Uninstantiable"
    push string_heap, "P6int"
    push string_heap, "P6num"
    push string_heap, "P6str"
    push string_heap, "P6opaque"
    push string_heap, "add_dispatchee"
    push string_heap, "is_dispatcher"
    push string_heap, "derive_dispatcher"
    push string_heap, "clone"
    push string_heap, "$!do"
    push string_heap, "$!signature"
    push string_heap, "$!dispatchees"
    push string_heap, "$!dispatch_cache"
    push string_heap, "P6opaque"
    push string_heap, "$!types"
    push string_heap, "$!definednesses"
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
    push string_heap, "list"
    push string_heap, "hash"
    push string_heap, "@!array"
    push string_heap, "%!hash"
    push string_heap, "__6MODEL_CORE__"
    push string_heap, "GLOBALish"
    push string_heap, "EXPORTHOW"
    push string_heap, "int"
    push string_heap, "num"
    push string_heap, "str"
    push string_heap, "\""
    push string_heap, "add_dispatchee"
    push string_heap, "is_dispatcher"
    push string_heap, "derive_dispatcher"
    push string_heap, "clone"
    push string_heap, "$S"
    push string_heap, "NQPMu"
    push string_heap, "CREATE"
    push string_heap, "bless"
    push string_heap, "BUILDALL"
    push string_heap, "BUILD_MAGIC"
    push string_heap, "new"
    push string_heap, "Str"
    push string_heap, "ACCEPTS"
    push string_heap, "isa"
    push string_heap, "__dump"
    push string_heap, "name"
    push string_heap, "Str"
    push string_heap, "code"
    push string_heap, "name"
    push string_heap, "ACCEPTS"
    push string_heap, "code"
    push string_heap, "get_string"
    push string_heap, "NQPCapture"
    push string_heap, "@!array"
    push string_heap, "%!hash"
    push string_heap, "new"
    push string_heap, "BUILD"
    push string_heap, "list"
    push string_heap, "hash"
    push string_heap, "get_pmc_keyed_int"
    push string_heap, "@!array"
    push string_heap, "set_pmc_keyed_int"
    push string_heap, "@!array"
    push string_heap, "exists_keyed_int"
    push string_heap, "@!array"
    push string_heap, "delete_keyed_int"
    push string_heap, "@!array"
    push string_heap, "unshift_pmc"
    push string_heap, "@!array"
    push string_heap, "push_pmc"
    push string_heap, "@!array"
    push string_heap, "get_pmc_keyed_str"
    push string_heap, "%!hash"
    push string_heap, "get_pmc_keyed"
    push string_heap, "%!hash"
    push string_heap, "set_pmc_keyed_str"
    push string_heap, "%!hash"
    push string_heap, "set_pmc_keyed"
    push string_heap, "%!hash"
    push string_heap, "exists_keyed"
    push string_heap, "%!hash"
    push string_heap, "exists_keyed_str"
    push string_heap, "%!hash"
    push string_heap, "delete_keyed"
    push string_heap, "%!hash"
    push string_heap, "delete_keyed_str"
    push string_heap, "%!hash"
    push string_heap, "$!do"
    push string_heap, "$!signature"
    push string_heap, "$!dispatchees"
    push string_heap, "$!dispatch_cache"
    push string_heap, "$!types"
    push string_heap, "$!definednesses"
    push string_heap, "@!array"
    push string_heap, "%!hash"
    .const 'Sub' $P1284 = "66_1330909681.25009" 
    capture_lex $P1284
    $P143 = $P1284()
    nqp_deserialize_sc $S101, cur_sc, string_heap, $P143
    .const 'LexInfo' $P1304 = "35_1330909681.25009" 
    nqp_get_sc_object $P144, "3940BAAC6795364DE724F4268A50AA0EB6318065-1330909681.17426", 0
    $P1304."set_static_lexpad_value"("GLOBALish", $P144)
    .const 'LexInfo' $P1305 = "35_1330909681.25009" 
    $P1305."finish_static_lexpad"()
    .const 'LexInfo' $P1306 = "35_1330909681.25009" 
    nqp_get_sc_object $P144, "3940BAAC6795364DE724F4268A50AA0EB6318065-1330909681.17426", 0
    $P1306."set_static_lexpad_value"("$?PACKAGE", $P144)
    .const 'LexInfo' $P1307 = "35_1330909681.25009" 
    $P1307."finish_static_lexpad"()
    .const 'LexInfo' $P1308 = "35_1330909681.25009" 
    nqp_get_sc_object $P144, "3940BAAC6795364DE724F4268A50AA0EB6318065-1330909681.17426", 1
    $P1308."set_static_lexpad_value"("EXPORTHOW", $P144)
    .const 'LexInfo' $P1309 = "35_1330909681.25009" 
    $P1309."finish_static_lexpad"()
    .const 'LexInfo' $P1310 = "53_1330909681.25009" 
    nqp_get_sc_object $P144, "3940BAAC6795364DE724F4268A50AA0EB6318065-1330909681.17426", 1
    $P1310."set_static_lexpad_value"("$?PACKAGE", $P144)
    .const 'LexInfo' $P1311 = "53_1330909681.25009" 
    $P1311."finish_static_lexpad"()
    .const 'LexInfo' $P1312 = "53_1330909681.25009" 
    nqp_get_sc_object $P144, "3940BAAC6795364DE724F4268A50AA0EB6318065-1330909681.17426", 1
    $P1312."set_static_lexpad_value"("$?CLASS", $P144)
    .const 'LexInfo' $P1313 = "53_1330909681.25009" 
    $P1313."finish_static_lexpad"()
    .const 'LexInfo' $P1314 = "35_1330909681.25009" 
    nqp_get_sc_object $P144, "3940BAAC6795364DE724F4268A50AA0EB6318065-1330909681.17426", 2
    $P1314."set_static_lexpad_value"("int", $P144)
    .const 'LexInfo' $P1315 = "35_1330909681.25009" 
    $P1315."finish_static_lexpad"()
    .const 'LexInfo' $P1316 = "54_1330909681.25009" 
    nqp_get_sc_object $P144, "3940BAAC6795364DE724F4268A50AA0EB6318065-1330909681.17426", 2
    $P1316."set_static_lexpad_value"("$?PACKAGE", $P144)
    .const 'LexInfo' $P1317 = "54_1330909681.25009" 
    $P1317."finish_static_lexpad"()
    .const 'LexInfo' $P1318 = "54_1330909681.25009" 
    nqp_get_sc_object $P144, "3940BAAC6795364DE724F4268A50AA0EB6318065-1330909681.17426", 2
    $P1318."set_static_lexpad_value"("$?CLASS", $P144)
    .const 'LexInfo' $P1319 = "54_1330909681.25009" 
    $P1319."finish_static_lexpad"()
    .const 'LexInfo' $P1320 = "35_1330909681.25009" 
    nqp_get_sc_object $P144, "3940BAAC6795364DE724F4268A50AA0EB6318065-1330909681.17426", 3
    $P1320."set_static_lexpad_value"("num", $P144)
    .const 'LexInfo' $P1321 = "35_1330909681.25009" 
    $P1321."finish_static_lexpad"()
    .const 'LexInfo' $P1322 = "55_1330909681.25009" 
    nqp_get_sc_object $P144, "3940BAAC6795364DE724F4268A50AA0EB6318065-1330909681.17426", 3
    $P1322."set_static_lexpad_value"("$?PACKAGE", $P144)
    .const 'LexInfo' $P1323 = "55_1330909681.25009" 
    $P1323."finish_static_lexpad"()
    .const 'LexInfo' $P1324 = "55_1330909681.25009" 
    nqp_get_sc_object $P144, "3940BAAC6795364DE724F4268A50AA0EB6318065-1330909681.17426", 3
    $P1324."set_static_lexpad_value"("$?CLASS", $P144)
    .const 'LexInfo' $P1325 = "55_1330909681.25009" 
    $P1325."finish_static_lexpad"()
    .const 'LexInfo' $P1326 = "35_1330909681.25009" 
    nqp_get_sc_object $P144, "3940BAAC6795364DE724F4268A50AA0EB6318065-1330909681.17426", 4
    $P1326."set_static_lexpad_value"("str", $P144)
    .const 'LexInfo' $P1327 = "35_1330909681.25009" 
    $P1327."finish_static_lexpad"()
    .const 'LexInfo' $P1328 = "56_1330909681.25009" 
    nqp_get_sc_object $P144, "3940BAAC6795364DE724F4268A50AA0EB6318065-1330909681.17426", 4
    $P1328."set_static_lexpad_value"("$?PACKAGE", $P144)
    .const 'LexInfo' $P1329 = "56_1330909681.25009" 
    $P1329."finish_static_lexpad"()
    .const 'LexInfo' $P1330 = "56_1330909681.25009" 
    nqp_get_sc_object $P144, "3940BAAC6795364DE724F4268A50AA0EB6318065-1330909681.17426", 4
    $P1330."set_static_lexpad_value"("$?CLASS", $P144)
    .const 'LexInfo' $P1331 = "56_1330909681.25009" 
    $P1331."finish_static_lexpad"()
    .const 'LexInfo' $P1332 = "35_1330909681.25009" 
    nqp_get_sc_object $P144, "3940BAAC6795364DE724F4268A50AA0EB6318065-1330909681.17426", 5
    $P1332."set_static_lexpad_value"("NQPRoutine", $P144)
    .const 'LexInfo' $P1333 = "35_1330909681.25009" 
    $P1333."finish_static_lexpad"()
    .const 'LexInfo' $P1334 = "57_1330909681.25009" 
    nqp_get_sc_object $P144, "3940BAAC6795364DE724F4268A50AA0EB6318065-1330909681.17426", 5
    $P1334."set_static_lexpad_value"("$?PACKAGE", $P144)
    .const 'LexInfo' $P1335 = "57_1330909681.25009" 
    $P1335."finish_static_lexpad"()
    .const 'LexInfo' $P1336 = "57_1330909681.25009" 
    nqp_get_sc_object $P144, "3940BAAC6795364DE724F4268A50AA0EB6318065-1330909681.17426", 5
    $P1336."set_static_lexpad_value"("$?CLASS", $P144)
    .const 'LexInfo' $P1337 = "57_1330909681.25009" 
    $P1337."finish_static_lexpad"()
    .const 'LexInfo' $P1338 = "35_1330909681.25009" 
    nqp_get_sc_object $P144, "3940BAAC6795364DE724F4268A50AA0EB6318065-1330909681.17426", 6
    $P1338."set_static_lexpad_value"("NQPSignature", $P144)
    .const 'LexInfo' $P1339 = "35_1330909681.25009" 
    $P1339."finish_static_lexpad"()
    .const 'LexInfo' $P1340 = "58_1330909681.25009" 
    nqp_get_sc_object $P144, "3940BAAC6795364DE724F4268A50AA0EB6318065-1330909681.17426", 6
    $P1340."set_static_lexpad_value"("$?PACKAGE", $P144)
    .const 'LexInfo' $P1341 = "58_1330909681.25009" 
    $P1341."finish_static_lexpad"()
    .const 'LexInfo' $P1342 = "58_1330909681.25009" 
    nqp_get_sc_object $P144, "3940BAAC6795364DE724F4268A50AA0EB6318065-1330909681.17426", 6
    $P1342."set_static_lexpad_value"("$?CLASS", $P144)
    .const 'LexInfo' $P1343 = "58_1330909681.25009" 
    $P1343."finish_static_lexpad"()
    .const 'LexInfo' $P1344 = "35_1330909681.25009" 
    nqp_get_sc_object $P144, "3940BAAC6795364DE724F4268A50AA0EB6318065-1330909681.17426", 7
    $P1344."set_static_lexpad_value"("NQPMu", $P144)
    .const 'LexInfo' $P1345 = "35_1330909681.25009" 
    $P1345."finish_static_lexpad"()
    .const '' $P1346 = "14_1330909681.25009" 
    nqp_get_sc_object $P144, "3940BAAC6795364DE724F4268A50AA0EB6318065-1330909681.17426", 8
    set_sub_code_object $P1346, $P144
    .const '' $P1347 = "15_1330909681.25009" 
    nqp_get_sc_object $P144, "3940BAAC6795364DE724F4268A50AA0EB6318065-1330909681.17426", 9
    set_sub_code_object $P1347, $P144
    .const '' $P1348 = "16_1330909681.25009" 
    nqp_get_sc_object $P144, "3940BAAC6795364DE724F4268A50AA0EB6318065-1330909681.17426", 10
    set_sub_code_object $P1348, $P144
    .const '' $P1349 = "17_1330909681.25009" 
    nqp_get_sc_object $P144, "3940BAAC6795364DE724F4268A50AA0EB6318065-1330909681.17426", 11
    set_sub_code_object $P1349, $P144
    .const '' $P1350 = "18_1330909681.25009" 
    nqp_get_sc_object $P144, "3940BAAC6795364DE724F4268A50AA0EB6318065-1330909681.17426", 12
    set_sub_code_object $P1350, $P144
    .const '' $P1351 = "19_1330909681.25009" 
    nqp_get_sc_object $P144, "3940BAAC6795364DE724F4268A50AA0EB6318065-1330909681.17426", 13
    set_sub_code_object $P1351, $P144
    .const '' $P1352 = "19_1330909681.25009" 
    nqp_get_sc_object $P144, "3940BAAC6795364DE724F4268A50AA0EB6318065-1330909681.17426", 14
    set_sub_code_object $P1352, $P144
    .const '' $P1353 = "20_1330909681.25009" 
    nqp_get_sc_object $P144, "3940BAAC6795364DE724F4268A50AA0EB6318065-1330909681.17426", 15
    set_sub_code_object $P1353, $P144
    .const '' $P1354 = "21_1330909681.25009" 
    nqp_get_sc_object $P144, "3940BAAC6795364DE724F4268A50AA0EB6318065-1330909681.17426", 16
    set_sub_code_object $P1354, $P144
    .const '' $P1355 = "22_1330909681.25009" 
    nqp_get_sc_object $P144, "3940BAAC6795364DE724F4268A50AA0EB6318065-1330909681.17426", 17
    set_sub_code_object $P1355, $P144
    .const '' $P1356 = "23_1330909681.25009" 
    nqp_get_sc_object $P144, "3940BAAC6795364DE724F4268A50AA0EB6318065-1330909681.17426", 18
    set_sub_code_object $P1356, $P144
    .const '' $P1357 = "24_1330909681.25009" 
    nqp_get_sc_object $P144, "3940BAAC6795364DE724F4268A50AA0EB6318065-1330909681.17426", 19
    set_sub_code_object $P1357, $P144
    .const 'LexInfo' $P1358 = "59_1330909681.25009" 
    nqp_get_sc_object $P144, "3940BAAC6795364DE724F4268A50AA0EB6318065-1330909681.17426", 7
    $P1358."set_static_lexpad_value"("$?PACKAGE", $P144)
    .const 'LexInfo' $P1359 = "59_1330909681.25009" 
    $P1359."finish_static_lexpad"()
    .const 'LexInfo' $P1360 = "59_1330909681.25009" 
    nqp_get_sc_object $P144, "3940BAAC6795364DE724F4268A50AA0EB6318065-1330909681.17426", 7
    $P1360."set_static_lexpad_value"("$?CLASS", $P144)
    .const 'LexInfo' $P1361 = "59_1330909681.25009" 
    $P1361."finish_static_lexpad"()
    .const 'LexInfo' $P1362 = "35_1330909681.25009" 
    nqp_get_sc_object $P144, "3940BAAC6795364DE724F4268A50AA0EB6318065-1330909681.17426", 20
    $P1362."set_static_lexpad_value"("NQPCapture", $P144)
    .const 'LexInfo' $P1363 = "35_1330909681.25009" 
    $P1363."finish_static_lexpad"()
    .const '' $P1364 = "31_1330909681.25009" 
    nqp_get_sc_object $P144, "3940BAAC6795364DE724F4268A50AA0EB6318065-1330909681.17426", 21
    set_sub_code_object $P1364, $P144
    .const '' $P1365 = "32_1330909681.25009" 
    nqp_get_sc_object $P144, "3940BAAC6795364DE724F4268A50AA0EB6318065-1330909681.17426", 22
    set_sub_code_object $P1365, $P144
    .const '' $P1366 = "33_1330909681.25009" 
    nqp_get_sc_object $P144, "3940BAAC6795364DE724F4268A50AA0EB6318065-1330909681.17426", 23
    set_sub_code_object $P1366, $P144
    .const '' $P1367 = "34_1330909681.25009" 
    nqp_get_sc_object $P144, "3940BAAC6795364DE724F4268A50AA0EB6318065-1330909681.17426", 24
    set_sub_code_object $P1367, $P144
    .const 'LexInfo' $P1368 = "64_1330909681.25009" 
    nqp_get_sc_object $P144, "3940BAAC6795364DE724F4268A50AA0EB6318065-1330909681.17426", 20
    $P1368."set_static_lexpad_value"("$?PACKAGE", $P144)
    .const 'LexInfo' $P1369 = "64_1330909681.25009" 
    $P1369."finish_static_lexpad"()
    .const 'LexInfo' $P1370 = "64_1330909681.25009" 
    nqp_get_sc_object $P144, "3940BAAC6795364DE724F4268A50AA0EB6318065-1330909681.17426", 20
    $P1370."set_static_lexpad_value"("$?CLASS", $P144)
    .const 'LexInfo' $P1371 = "64_1330909681.25009" 
    $P1371."finish_static_lexpad"()
    nqp_get_sc_object $P144, "3940BAAC6795364DE724F4268A50AA0EB6318065-1330909681.17426", 0
    set_hll_global "GLOBAL", $P144
.end


.HLL "nqp"

.namespace []
.sub "_block1283"  :anon :subid("66_1330909681.25009") :outer("35_1330909681.25009")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 0
    .const 'Sub' $P1285 = "10_1330909681.25009" 
    .const 'Sub' $P1286 = "11_1330909681.25009" 
    .const 'Sub' $P1287 = "12_1330909681.25009" 
    .const 'Sub' $P1288 = "13_1330909681.25009" 
    .const 'Sub' $P1289 = "14_1330909681.25009" 
    .const 'Sub' $P1290 = "15_1330909681.25009" 
    .const 'Sub' $P1291 = "16_1330909681.25009" 
    .const 'Sub' $P1292 = "17_1330909681.25009" 
    .const 'Sub' $P1293 = "18_1330909681.25009" 
    .const 'Sub' $P1294 = "19_1330909681.25009" 
    .const 'Sub' $P1295 = "20_1330909681.25009" 
    .const 'Sub' $P1296 = "21_1330909681.25009" 
    .const 'Sub' $P1297 = "22_1330909681.25009" 
    .const 'Sub' $P1298 = "23_1330909681.25009" 
    .const 'Sub' $P1299 = "24_1330909681.25009" 
    .const 'Sub' $P1300 = "31_1330909681.25009" 
    .const 'Sub' $P1301 = "32_1330909681.25009" 
    .const 'Sub' $P1302 = "33_1330909681.25009" 
    .const 'Sub' $P1303 = "34_1330909681.25009" 
    new $P142, "ResizablePMCArray"
    push $P142, $P1285
    push $P142, $P1286
    push $P142, $P1287
    push $P142, $P1288
    push $P142, $P1289
    push $P142, $P1290
    push $P142, $P1291
    push $P142, $P1292
    push $P142, $P1293
    push $P142, $P1294
    push $P142, $P1295
    push $P142, $P1296
    push $P142, $P1297
    push $P142, $P1298
    push $P142, $P1299
    push $P142, $P1300
    push $P142, $P1301
    push $P142, $P1302
    push $P142, $P1303
    .return ($P142)
.end


.HLL "nqp"

.namespace []
.sub "open"  :subid("36_1330909681.25009") :outer("35_1330909681.25009")
    .param pmc param_1025
    .param pmc param_1026 :optional :named("r")
    .param int has_param_1026 :opt_flag
    .param pmc param_1027 :optional :named("w")
    .param int has_param_1027 :opt_flag
    .param pmc param_1028 :optional :named("a")
    .param int has_param_1028 :opt_flag
    .param pmc param_1029 :optional :named("bin")
    .param int has_param_1029 :opt_flag
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 212
    .lex "$filename", param_1025
    if has_param_1026, optparam_68
    new $P100, "Undef"
    set param_1026, $P100
  optparam_68:
    .lex "$r", param_1026
    if has_param_1027, optparam_69
    new $P101, "Undef"
    set param_1027, $P101
  optparam_69:
    .lex "$w", param_1027
    if has_param_1028, optparam_70
    new $P102, "Undef"
    set param_1028, $P102
  optparam_70:
    .lex "$a", param_1028
    if has_param_1029, optparam_71
    new $P103, "Undef"
    set param_1029, $P103
  optparam_71:
    .lex "$bin", param_1029
.annotate 'line', 213
    new $P104, "Undef"
    set $P1030, $P104
    .lex "$mode", $P1030
.annotate 'line', 214
    new $P105, "Undef"
    set $P1031, $P105
    .lex "$handle", $P1031
.annotate 'line', 213
    set $P107, param_1027
    unless_null $P107, vivify_72
    new $P107, "Undef"
  vivify_72:
    if $P107, if_1032
    set $P110, param_1028
    unless_null $P110, vivify_73
    new $P110, "Undef"
  vivify_73:
    if $P110, if_1033
    new $P112, "String"
    assign $P112, "r"
    set $P109, $P112
    goto if_1033_end
  if_1033:
    new $P111, "String"
    assign $P111, "wa"
    set $P109, $P111
  if_1033_end:
    set $P106, $P109
    goto if_1032_end
  if_1032:
    new $P108, "String"
    assign $P108, "w"
    set $P106, $P108
  if_1032_end:
    set $P1030, $P106
.annotate 'line', 214
    new $P106, "FileHandle"
    set $P1031, $P106
.annotate 'line', 215
    set $P106, $P1031
    unless_null $P106, vivify_74
    new $P106, "Undef"
  vivify_74:
    set $P107, param_1025
    unless_null $P107, vivify_75
    new $P107, "Undef"
  vivify_75:
    set $P108, $P1030
    unless_null $P108, vivify_76
    new $P108, "Undef"
  vivify_76:
    $P106."open"($P107, $P108)
.annotate 'line', 216
    set $P106, $P1031
    unless_null $P106, vivify_77
    new $P106, "Undef"
  vivify_77:
    set $P108, param_1029
    unless_null $P108, vivify_78
    new $P108, "Undef"
  vivify_78:
    if $P108, if_1034
    new $P110, "String"
    assign $P110, "utf8"
    set $P107, $P110
    goto if_1034_end
  if_1034:
    new $P109, "String"
    assign $P109, "binary"
    set $P107, $P109
  if_1034_end:
    $P106."encoding"($P107)
.annotate 'line', 212
    set $P106, $P1031
    unless_null $P106, vivify_79
    new $P106, "Undef"
  vivify_79:
    .return ($P106)
.end


.HLL "nqp"

.namespace []
.sub "close"  :subid("37_1330909681.25009") :outer("35_1330909681.25009")
    .param pmc param_1038
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 224
    .lex "$handle", param_1038
.annotate 'line', 225
    set $P107, param_1038
    unless_null $P107, vivify_80
    new $P107, "Undef"
  vivify_80:
    $P108 = $P107."close"()
.annotate 'line', 224
    .return ($P108)
.end


.HLL "nqp"

.namespace []
.sub "slurp"  :subid("38_1330909681.25009") :outer("35_1330909681.25009")
    .param pmc param_1042
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 232
    .lex "$filename", param_1042
.annotate 'line', 233
    new $P107, "Undef"
    set $P1043, $P107
    .lex "$handle", $P1043
.annotate 'line', 234
    new $P109, "Undef"
    set $P1044, $P109
    .lex "$contents", $P1044
.annotate 'line', 233
    set $P110, param_1042
    unless_null $P110, vivify_81
    new $P110, "Undef"
  vivify_81:
    $P111 = "open"($P110, 1 :named("r"))
    set $P1043, $P111
.annotate 'line', 234
    set $P110, $P1043
    unless_null $P110, vivify_82
    new $P110, "Undef"
  vivify_82:
    $P111 = $P110."readall"()
    set $P1044, $P111
.annotate 'line', 235
    set $P110, $P1043
    unless_null $P110, vivify_83
    new $P110, "Undef"
  vivify_83:
    $P110."close"()
.annotate 'line', 232
    set $P110, $P1044
    unless_null $P110, vivify_84
    new $P110, "Undef"
  vivify_84:
    .return ($P110)
.end


.HLL "nqp"

.namespace []
.sub "spew"  :subid("39_1330909681.25009") :outer("35_1330909681.25009")
    .param pmc param_1048
    .param pmc param_1049
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 244
    .lex "$filename", param_1048
    .lex "$contents", param_1049
.annotate 'line', 245
    new $P111, "Undef"
    set $P1050, $P111
    .lex "$handle", $P1050
    new $P112, "FileHandle"
    set $P1050, $P112
.annotate 'line', 246
    set $P112, $P1050
    unless_null $P112, vivify_85
    new $P112, "Undef"
  vivify_85:
    set $P113, param_1048
    unless_null $P113, vivify_86
    new $P113, "Undef"
  vivify_86:
    $P112."open"($P113, "w")
.annotate 'line', 247
    set $P112, $P1050
    unless_null $P112, vivify_87
    new $P112, "Undef"
  vivify_87:
    set $P113, param_1049
    unless_null $P113, vivify_88
    new $P113, "Undef"
  vivify_88:
    $P112."print"($P113)
.annotate 'line', 248
    set $P112, $P1050
    unless_null $P112, vivify_89
    new $P112, "Undef"
  vivify_89:
    $P113 = $P112."close"()
.annotate 'line', 244
    .return ($P113)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "print"  :subid("40_1330909681.25009") :outer("35_1330909681.25009")
    .param pmc param_1054 :slurpy
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 251
    .const 'Sub' $P1057 = "41_1330909681.25009" 
    capture_lex $P1057
    .lex "@args", param_1054
.annotate 'line', 252
    set $P1055, param_1054
    unless_null $P1055, vivify_90
    $P1055 = root_new ['parrot';'ResizablePMCArray']
  vivify_90:
    defined $I100, $P1055
    unless $I100, for_undef_91
    iter $P112, $P1055
    new $P115, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P115, loop1059_handler
    push_eh $P115
  loop1059_test:
    unless $P112, loop1059_done
    shift $P114, $P112
  loop1059_redo:
    .const 'Sub' $P1057 = "41_1330909681.25009" 
    capture_lex $P1057
    $P1057($P114)
  loop1059_next:
    goto loop1059_test
  loop1059_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P116, exception, 'type'
    eq $P116, .CONTROL_LOOP_NEXT, loop1059_next
    eq $P116, .CONTROL_LOOP_REDO, loop1059_redo
  loop1059_done:
    pop_eh 
  for_undef_91:
.annotate 'line', 251
    .return (1)
.end


.HLL "nqp"

.namespace []
.sub "_block1056"  :anon :subid("41_1330909681.25009") :outer("40_1330909681.25009")
    .param pmc param_1058
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 252
    .lex "$_", param_1058
.annotate 'line', 253
    find_lex $P115, "$_"
    unless_null $P115, vivify_92
    new $P115, "Undef"
  vivify_92:
    print $P115
.annotate 'line', 252
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "say"  :subid("42_1330909681.25009") :outer("35_1330909681.25009")
    .param pmc param_1063 :slurpy
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 258
    .lex "@args", param_1063
.annotate 'line', 259
    set $P1064, param_1063
    unless_null $P1064, vivify_93
    $P1064 = root_new ['parrot';'ResizablePMCArray']
  vivify_93:
    $P112 = "print"($P1064 :flat, "\n")
.annotate 'line', 258
    .return ($P112)
.end


.HLL "nqp"

.namespace []
.sub "match"  :subid("43_1330909681.25009") :outer("35_1330909681.25009")
    .param pmc param_1068
    .param pmc param_1069
    .param pmc param_1070 :optional :named("global")
    .param int has_param_1070 :opt_flag
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 276
    .const 'Sub' $P1074 = "44_1330909681.25009" 
    capture_lex $P1074
    .lex "$text", param_1068
    .lex "$regex", param_1069
    if has_param_1070, optparam_94
    new $P114, "Undef"
    set param_1070, $P114
  optparam_94:
    .lex "$global", param_1070
.annotate 'line', 277
    new $P115, "Undef"
    set $P1071, $P115
    .lex "$match", $P1071
    set $P116, param_1069
    unless_null $P116, vivify_95
    new $P116, "Undef"
  vivify_95:
    set $P117, param_1068
    unless_null $P117, vivify_96
    new $P117, "Undef"
  vivify_96:
    $P118 = $P116."ACCEPTS"($P117)
    set $P1071, $P118
.annotate 'line', 278
    set $P117, param_1070
    unless_null $P117, vivify_97
    new $P117, "Undef"
  vivify_97:
    if $P117, if_1072
.annotate 'line', 286
    set $P119, $P1071
    unless_null $P119, vivify_98
    new $P119, "Undef"
  vivify_98:
    set $P116, $P119
.annotate 'line', 278
    goto if_1072_end
  if_1072:
    .const 'Sub' $P1074 = "44_1330909681.25009" 
    capture_lex $P1074
    $P118 = $P1074()
    set $P116, $P118
  if_1072_end:
.annotate 'line', 276
    .return ($P116)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "_block1073"  :anon :subid("44_1330909681.25009") :outer("43_1330909681.25009")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 279
    $P1076 = root_new ['parrot';'ResizablePMCArray']
    set $P1075, $P1076
    .lex "@matches", $P1075
.annotate 'line', 278
    set $P1077, $P1075
    unless_null $P1077, vivify_99
    $P1077 = root_new ['parrot';'ResizablePMCArray']
  vivify_99:
.annotate 'line', 280
    new $P119, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P119, loop1079_handler
    push_eh $P119
  loop1079_test:
    find_lex $P118, "$match"
    unless_null $P118, vivify_100
    new $P118, "Undef"
  vivify_100:
    unless $P118, loop1079_done
  loop1079_redo:
.annotate 'line', 281
    set $P1078, $P1075
    unless_null $P1078, vivify_101
    $P1078 = root_new ['parrot';'ResizablePMCArray']
  vivify_101:
    find_lex $P119, "$match"
    unless_null $P119, vivify_102
    new $P119, "Undef"
  vivify_102:
    $P1078."push"($P119)
.annotate 'line', 282
    find_lex $P119, "$match"
    unless_null $P119, vivify_103
    new $P119, "Undef"
  vivify_103:
    $P120 = $P119."CURSOR"()
    find_lex $P121, "$text"
    unless_null $P121, vivify_104
    new $P121, "Undef"
  vivify_104:
    find_lex $P122, "$regex"
    unless_null $P122, vivify_105
    new $P122, "Undef"
  vivify_105:
    find_lex $P123, "$match"
    unless_null $P123, vivify_106
    new $P123, "Undef"
  vivify_106:
    $P124 = $P123."to"()
    $P125 = $P120."parse"($P121, $P122 :named("rule"), $P124 :named("c"))
    store_lex "$match", $P125
  loop1079_next:
.annotate 'line', 280
    goto loop1079_test
  loop1079_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P120, exception, 'type'
    eq $P120, .CONTROL_LOOP_NEXT, loop1079_next
    eq $P120, .CONTROL_LOOP_REDO, loop1079_redo
  loop1079_done:
    pop_eh 
.annotate 'line', 278
    set $P1080, $P1075
    unless_null $P1080, vivify_107
    $P1080 = root_new ['parrot';'ResizablePMCArray']
  vivify_107:
    .return ($P1080)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "subst"  :subid("45_1330909681.25009") :outer("35_1330909681.25009")
    .param pmc param_1084
    .param pmc param_1085
    .param pmc param_1086
    .param pmc param_1087 :optional :named("global")
    .param int has_param_1087 :opt_flag
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 298
    .const 'Sub' $P1097 = "46_1330909681.25009" 
    capture_lex $P1097
    .lex "$text", param_1084
    .lex "$regex", param_1085
    .lex "$repl", param_1086
    if has_param_1087, optparam_108
    new $P117, "Undef"
    set param_1087, $P117
  optparam_108:
    .lex "$global", param_1087
.annotate 'line', 299
    $P1089 = root_new ['parrot';'ResizablePMCArray']
    set $P1088, $P1089
    .lex "@matches", $P1088
.annotate 'line', 301
    new $P118, "Undef"
    set $P1090, $P118
    .lex "$is_code", $P1090
.annotate 'line', 302
    new $P119, "Undef"
    set $P1091, $P119
    .lex "$offset", $P1091
.annotate 'line', 303
    new $P120, "Undef"
    set $P1092, $P120
    .lex "$result", $P1092
.annotate 'line', 314
    new $P121, "Undef"
    set $P1093, $P121
    .lex "$chars", $P1093
.annotate 'line', 299
    set $P123, param_1087
    unless_null $P123, vivify_109
    new $P123, "Undef"
  vivify_109:
    if $P123, if_1094
.annotate 'line', 300
    set $P127, param_1085
    unless_null $P127, vivify_110
    new $P127, "Undef"
  vivify_110:
    set $P128, param_1084
    unless_null $P128, vivify_111
    new $P128, "Undef"
  vivify_111:
    $P129 = $P127."ACCEPTS"($P128)
    new $P130, "ResizablePMCArray"
    push $P130, $P129
.annotate 'line', 299
    set $P122, $P130
    goto if_1094_end
  if_1094:
    set $P124, param_1084
    unless_null $P124, vivify_112
    new $P124, "Undef"
  vivify_112:
    set $P125, param_1085
    unless_null $P125, vivify_113
    new $P125, "Undef"
  vivify_113:
    $P126 = "match"($P124, $P125, 1 :named("global"))
    set $P122, $P126
  if_1094_end:
    set $P1088, $P122
.annotate 'line', 301
    set $P122, param_1086
    unless_null $P122, vivify_114
    new $P122, "Undef"
  vivify_114:
    isa $I100, $P122, "Sub"
    new $P123, 'Integer'
    set $P123, $I100
    set $P1090, $P123
.annotate 'line', 302
    new $P122, "Float"
    assign $P122, 0
    set $P1091, $P122
.annotate 'line', 303
    new $P122, "StringBuilder"
    set $P1092, $P122
.annotate 'line', 305
    set $P1095, $P1088
    unless_null $P1095, vivify_115
    $P1095 = root_new ['parrot';'ResizablePMCArray']
  vivify_115:
    defined $I100, $P1095
    unless $I100, for_undef_116
    iter $P122, $P1095
    new $P125, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P125, loop1102_handler
    push_eh $P125
  loop1102_test:
    unless $P122, loop1102_done
    shift $P123, $P122
  loop1102_redo:
    .const 'Sub' $P1097 = "46_1330909681.25009" 
    capture_lex $P1097
    $P1097($P123)
  loop1102_next:
    goto loop1102_test
  loop1102_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P126, exception, 'type'
    eq $P126, .CONTROL_LOOP_NEXT, loop1102_next
    eq $P126, .CONTROL_LOOP_REDO, loop1102_redo
  loop1102_done:
    pop_eh 
  for_undef_116:
.annotate 'line', 314
    set $P122, param_1084
    unless_null $P122, vivify_131
    new $P122, "Undef"
  vivify_131:
    set $S100, $P122
    length $I100, $S100
    new $P123, 'Integer'
    set $P123, $I100
    set $P1093, $P123
.annotate 'line', 316
    set $P122, $P1093
    unless_null $P122, vivify_132
    new $P122, "Undef"
  vivify_132:
    set $N100, $P122
    set $P123, $P1091
    unless_null $P123, vivify_133
    new $P123, "Undef"
  vivify_133:
    set $N101, $P123
    isgt $I100, $N100, $N101
    unless $I100, if_1103_end
.annotate 'line', 315
    set $P124, $P1092
    unless_null $P124, vivify_134
    new $P124, "Undef"
  vivify_134:
    set $P125, param_1084
    unless_null $P125, vivify_135
    new $P125, "Undef"
  vivify_135:
    set $S100, $P125
    set $P126, $P1091
    unless_null $P126, vivify_136
    new $P126, "Undef"
  vivify_136:
    set $I101, $P126
    set $P127, $P1093
    unless_null $P127, vivify_137
    new $P127, "Undef"
  vivify_137:
    set $I102, $P127
    substr $S101, $S100, $I101, $I102
    push $P124, $S101
  if_1103_end:
.annotate 'line', 318
    set $P122, $P1092
    unless_null $P122, vivify_138
    new $P122, "Undef"
  vivify_138:
    set $S100, $P122
.annotate 'line', 298
    .return ($S100)
.end


.HLL "nqp"

.namespace []
.sub "_block1096"  :anon :subid("46_1330909681.25009") :outer("45_1330909681.25009")
    .param pmc param_1098
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 305
    .lex "$match", param_1098
.annotate 'line', 306
    set $P125, param_1098
    unless_null $P125, vivify_117
    new $P125, "Undef"
  vivify_117:
    if $P125, if_1099
    set $P124, $P125
    goto if_1099_end
  if_1099:
.annotate 'line', 308
    set $P126, param_1098
    unless_null $P126, vivify_118
    new $P126, "Undef"
  vivify_118:
    $N100 = $P126."from"()
    find_lex $P127, "$offset"
    unless_null $P127, vivify_119
    new $P127, "Undef"
  vivify_119:
    set $N101, $P127
    isgt $I101, $N100, $N101
    unless $I101, if_1100_end
.annotate 'line', 307
    find_lex $P128, "$result"
    unless_null $P128, vivify_120
    new $P128, "Undef"
  vivify_120:
    find_lex $P129, "$text"
    unless_null $P129, vivify_121
    new $P129, "Undef"
  vivify_121:
    set $S100, $P129
    find_lex $P130, "$offset"
    unless_null $P130, vivify_122
    new $P130, "Undef"
  vivify_122:
    set $I102, $P130
    set $P131, param_1098
    unless_null $P131, vivify_123
    new $P131, "Undef"
  vivify_123:
    $P132 = $P131."from"()
    find_lex $P133, "$offset"
    unless_null $P133, vivify_124
    new $P133, "Undef"
  vivify_124:
    sub $P134, $P132, $P133
    set $I103, $P134
    substr $S101, $S100, $I102, $I103
    push $P128, $S101
  if_1100_end:
.annotate 'line', 309
    find_lex $P126, "$result"
    unless_null $P126, vivify_125
    new $P126, "Undef"
  vivify_125:
    find_lex $P128, "$is_code"
    unless_null $P128, vivify_126
    new $P128, "Undef"
  vivify_126:
    if $P128, if_1101
    find_lex $P132, "$repl"
    unless_null $P132, vivify_127
    new $P132, "Undef"
  vivify_127:
    set $P127, $P132
    goto if_1101_end
  if_1101:
    find_lex $P129, "$repl"
    unless_null $P129, vivify_128
    new $P129, "Undef"
  vivify_128:
    set $P130, param_1098
    unless_null $P130, vivify_129
    new $P130, "Undef"
  vivify_129:
    $P131 = $P129($P130)
    set $P127, $P131
  if_1101_end:
    push $P126, $P127
.annotate 'line', 310
    set $P126, param_1098
    unless_null $P126, vivify_130
    new $P126, "Undef"
  vivify_130:
    $P127 = $P126."to"()
    store_lex "$offset", $P127
.annotate 'line', 306
    set $P124, $P127
  if_1099_end:
.annotate 'line', 305
    .return ($P124)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "hash"  :subid("47_1330909681.25009") :outer("35_1330909681.25009")
    .param pmc param_1107 :slurpy :named
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 324
    .const 'Sub' $P1113 = "48_1330909681.25009" 
    capture_lex $P1113
    .lex "%new", param_1107
.annotate 'line', 325
    $P1109 = root_new ['parrot';'Hash']
    set $P1108, $P1109
    .lex "%h", $P1108
.annotate 'line', 324
    set $P1110, $P1108
    unless_null $P1110, vivify_139
    $P1110 = root_new ['parrot';'Hash']
  vivify_139:
.annotate 'line', 326
    set $P1111, param_1107
    unless_null $P1111, vivify_140
    $P1111 = root_new ['parrot';'Hash']
  vivify_140:
    defined $I100, $P1111
    unless $I100, for_undef_141
    iter $P122, $P1111
    new $P124, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P124, loop1117_handler
    push_eh $P124
  loop1117_test:
    unless $P122, loop1117_done
    shift $P123, $P122
  loop1117_redo:
    .const 'Sub' $P1113 = "48_1330909681.25009" 
    capture_lex $P1113
    $P1113($P123)
  loop1117_next:
    goto loop1117_test
  loop1117_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P126, exception, 'type'
    eq $P126, .CONTROL_LOOP_NEXT, loop1117_next
    eq $P126, .CONTROL_LOOP_REDO, loop1117_redo
  loop1117_done:
    pop_eh 
  for_undef_141:
.annotate 'line', 324
    set $P1118, $P1108
    unless_null $P1118, vivify_147
    $P1118 = root_new ['parrot';'Hash']
  vivify_147:
    .return ($P1118)
.end


.HLL "nqp"

.namespace []
.sub "_block1112"  :anon :subid("48_1330909681.25009") :outer("47_1330909681.25009")
    .param pmc param_1114
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 326
    .lex "$_", param_1114
.annotate 'line', 327
    find_lex $P124, "$_"
    unless_null $P124, vivify_142
    new $P124, "Undef"
  vivify_142:
    find_lex $P1115, "%new"
    unless_null $P1115, vivify_143
    $P1115 = root_new ['parrot';'Hash']
  vivify_143:
    set $P125, $P1115[$P124]
    unless_null $P125, vivify_144
    new $P125, "Undef"
  vivify_144:
    find_lex $P126, "$_"
    unless_null $P126, vivify_145
    new $P126, "Undef"
  vivify_145:
    find_lex $P1116, "%h"
    unless_null $P1116, vivify_146
    $P1116 = root_new ['parrot';'Hash']
    store_lex "%h", $P1116
  vivify_146:
    set $P1116[$P126], $P125
.annotate 'line', 326
    .return ($P125)
.end


.HLL "nqp"

.namespace []
.sub "plan"  :subid("49_1330909681.25009") :outer("35_1330909681.25009")
    .param pmc param_1125
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 337
    .lex "$quantity", param_1125
.annotate 'line', 338
    new $P125, 'String'
    set $P125, "1.."
    set $P126, param_1125
    unless_null $P126, vivify_148
    new $P126, "Undef"
  vivify_148:
    concat $P127, $P125, $P126
    $P128 = "say"($P127)
.annotate 'line', 337
    .return ($P128)
.end


.HLL "nqp"

.namespace []
.sub "ok"  :subid("50_1330909681.25009") :outer("35_1330909681.25009")
    .param pmc param_1129
    .param pmc param_1130 :optional
    .param int has_param_1130 :opt_flag
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 341
    .lex "$condition", param_1129
    if has_param_1130, optparam_149
    new $P125, "Undef"
    set param_1130, $P125
  optparam_149:
    .lex "$desc", param_1130
.annotate 'line', 342
    find_lex $P126, "$test_counter"
    unless_null $P126, vivify_150
    new $P126, "Undef"
  vivify_150:
    add $P127, $P126, 1
    store_lex "$test_counter", $P127
.annotate 'line', 344
    set $P126, param_1129
    unless_null $P126, vivify_151
    new $P126, "Undef"
  vivify_151:
    if $P126, unless_1131_end
.annotate 'line', 345
    "print"("not ")
  unless_1131_end:
.annotate 'line', 347
    new $P126, 'String'
    set $P126, "ok "
    find_lex $P127, "$test_counter"
    unless_null $P127, vivify_152
    new $P127, "Undef"
  vivify_152:
    concat $P129, $P126, $P127
    "print"($P129)
.annotate 'line', 348
    set $P126, param_1130
    unless_null $P126, vivify_153
    new $P126, "Undef"
  vivify_153:
    unless $P126, if_1132_end
.annotate 'line', 349
    new $P127, 'String'
    set $P127, " - "
    set $P129, param_1130
    unless_null $P129, vivify_154
    new $P129, "Undef"
  vivify_154:
    concat $P130, $P127, $P129
    "print"($P130)
  if_1132_end:
.annotate 'line', 351
    find_lex $P126, "$test_counter"
    unless_null $P126, vivify_155
    new $P126, "Undef"
  vivify_155:
    set $N100, $P126
    find_lex $P127, "$todo_upto_test_num"
    unless_null $P127, vivify_156
    new $P127, "Undef"
  vivify_156:
    set $N101, $P127
    isle $I100, $N100, $N101
    unless $I100, if_1133_end
.annotate 'line', 352
    find_lex $P129, "$todo_reason"
    unless_null $P129, vivify_157
    new $P129, "Undef"
  vivify_157:
    "print"($P129)
  if_1133_end:
.annotate 'line', 354
    "print"("\n")
.annotate 'line', 356
    set $P127, param_1129
    unless_null $P127, vivify_158
    new $P127, "Undef"
  vivify_158:
    if $P127, if_1134
    new $P130, "Float"
    assign $P130, 0
    set $P126, $P130
    goto if_1134_end
  if_1134:
    new $P129, "Float"
    assign $P129, 1
    set $P126, $P129
  if_1134_end:
.annotate 'line', 341
    .return ($P126)
.end


.HLL "nqp"

.namespace []
.sub "todo"  :subid("51_1330909681.25009") :outer("35_1330909681.25009")
    .param pmc param_1138
    .param pmc param_1139
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 359
    .lex "$reason", param_1138
    .lex "$count", param_1139
.annotate 'line', 360
    find_lex $P127, "$test_counter"
    unless_null $P127, vivify_159
    new $P127, "Undef"
  vivify_159:
    set $P129, param_1139
    unless_null $P129, vivify_160
    new $P129, "Undef"
  vivify_160:
    add $P130, $P127, $P129
    store_lex "$todo_upto_test_num", $P130
.annotate 'line', 361
    new $P127, 'String'
    set $P127, "# TODO "
    set $P129, param_1138
    unless_null $P129, vivify_161
    new $P129, "Undef"
  vivify_161:
    concat $P130, $P127, $P129
    store_lex "$todo_reason", $P130
.annotate 'line', 359
    .return ($P130)
.end


.HLL "nqp"

.namespace []
.sub "skip"  :subid("52_1330909681.25009") :outer("35_1330909681.25009")
    .param pmc param_1143
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 364
    .lex "$desc", param_1143
.annotate 'line', 365
    find_lex $P127, "$test_counter"
    unless_null $P127, vivify_162
    new $P127, "Undef"
  vivify_162:
    add $P129, $P127, 1
    store_lex "$test_counter", $P129
.annotate 'line', 366
    new $P127, 'String'
    set $P127, "ok "
    find_lex $P129, "$test_counter"
    unless_null $P129, vivify_163
    new $P129, "Undef"
  vivify_163:
    concat $P131, $P127, $P129
    concat $P132, $P131, " # SKIP "
    set $P133, param_1143
    unless_null $P133, vivify_164
    new $P133, "Undef"
  vivify_164:
    concat $P134, $P132, $P133
    concat $P135, $P134, "\n"
    $P136 = "say"($P135)
.annotate 'line', 364
    .return ($P136)
.end


.HLL "nqp"

.namespace []
.sub "_block1145"  :anon :subid("53_1330909681.25009") :outer("35_1330909681.25009")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 12
    .lex "$?PACKAGE", $P1147
    .lex "$?CLASS", $P1148
.annotate 'line', 13
    set $P127, $P1147
    get_who $P129, $P127
    set $P133, $P129["NQPModuleHOW"]
    unless_null $P133, vivify_165
    get_hll_global $P131, "GLOBAL"
    get_who $P132, $P131
    set $P133, $P132["NQPModuleHOW"]
  vivify_165:
    set $P134, $P1147
    unless_null $P134, vivify_166
    new $P134, "Undef"
    set $P1147, $P134
  vivify_166:
    get_who $P135, $P134
    set $P135["module"], $P133
.annotate 'line', 14
    set $P127, $P1147
    get_who $P129, $P127
    set $P133, $P129["NQPClassHOW"]
    unless_null $P133, vivify_167
    get_hll_global $P131, "GLOBAL"
    get_who $P132, $P131
    set $P133, $P132["NQPClassHOW"]
  vivify_167:
    set $P134, $P1147
    unless_null $P134, vivify_168
    new $P134, "Undef"
    set $P1147, $P134
  vivify_168:
    get_who $P135, $P134
    set $P135["class"], $P133
.annotate 'line', 15
    set $P127, $P1147
    get_who $P129, $P127
    set $P133, $P129["NQPAttribute"]
    unless_null $P133, vivify_169
    get_hll_global $P131, "GLOBAL"
    get_who $P132, $P131
    set $P133, $P132["NQPAttribute"]
  vivify_169:
    set $P134, $P1147
    unless_null $P134, vivify_170
    new $P134, "Undef"
    set $P1147, $P134
  vivify_170:
    get_who $P135, $P134
    set $P135["class-attr"], $P133
.annotate 'line', 16
    set $P127, $P1147
    get_who $P129, $P127
    set $P133, $P129["NQPClassHOW"]
    unless_null $P133, vivify_171
    get_hll_global $P131, "GLOBAL"
    get_who $P132, $P131
    set $P133, $P132["NQPClassHOW"]
  vivify_171:
    set $P134, $P1147
    unless_null $P134, vivify_172
    new $P134, "Undef"
    set $P1147, $P134
  vivify_172:
    get_who $P135, $P134
    set $P135["grammar"], $P133
.annotate 'line', 17
    set $P127, $P1147
    get_who $P129, $P127
    set $P133, $P129["NQPAttribute"]
    unless_null $P133, vivify_173
    get_hll_global $P131, "GLOBAL"
    get_who $P132, $P131
    set $P133, $P132["NQPAttribute"]
  vivify_173:
    set $P134, $P1147
    unless_null $P134, vivify_174
    new $P134, "Undef"
    set $P1147, $P134
  vivify_174:
    get_who $P135, $P134
    set $P135["grammar-attr"], $P133
.annotate 'line', 18
    set $P127, $P1147
    get_who $P129, $P127
    set $P133, $P129["NQPParametricRoleHOW"]
    unless_null $P133, vivify_175
    get_hll_global $P131, "GLOBAL"
    get_who $P132, $P131
    set $P133, $P132["NQPParametricRoleHOW"]
  vivify_175:
    set $P134, $P1147
    unless_null $P134, vivify_176
    new $P134, "Undef"
    set $P1147, $P134
  vivify_176:
    get_who $P135, $P134
    set $P135["role"], $P133
.annotate 'line', 19
    set $P127, $P1147
    get_who $P129, $P127
    set $P133, $P129["NQPAttribute"]
    unless_null $P133, vivify_177
    get_hll_global $P131, "GLOBAL"
    get_who $P132, $P131
    set $P133, $P132["NQPAttribute"]
  vivify_177:
    set $P134, $P1147
    unless_null $P134, vivify_178
    new $P134, "Undef"
    set $P1147, $P134
  vivify_178:
    get_who $P135, $P134
    set $P135["role-attr"], $P133
.annotate 'line', 20
    set $P127, $P1147
    get_who $P129, $P127
    set $P133, $P129["NQPNativeHOW"]
    unless_null $P133, vivify_179
    get_hll_global $P131, "GLOBAL"
    get_who $P132, $P131
    set $P133, $P132["NQPNativeHOW"]
  vivify_179:
    set $P134, $P1147
    unless_null $P134, vivify_180
    new $P134, "Undef"
    set $P1147, $P134
  vivify_180:
    get_who $P135, $P134
    set $P135["native"], $P133
.annotate 'line', 12
    .return ($P133)
.end


.HLL "nqp"

.namespace []
.sub "_block1149"  :anon :subid("54_1330909681.25009") :outer("35_1330909681.25009")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 23
    .lex "$?PACKAGE", $P1151
    .lex "$?CLASS", $P1152
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block1153"  :anon :subid("55_1330909681.25009") :outer("35_1330909681.25009")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 25
    .lex "$?PACKAGE", $P1155
    .lex "$?CLASS", $P1156
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block1157"  :anon :subid("56_1330909681.25009") :outer("35_1330909681.25009")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 27
    .lex "$?PACKAGE", $P1159
    .lex "$?CLASS", $P1160
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block1161"  :anon :subid("57_1330909681.25009") :outer("35_1330909681.25009")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 30
    .const 'Sub' $P1176 = "13_1330909681.25009" 
    capture_lex $P1176
    .const 'Sub' $P1170 = "12_1330909681.25009" 
    capture_lex $P1170
    .const 'Sub' $P1168 = "11_1330909681.25009" 
    capture_lex $P1168
    .const 'Sub' $P1165 = "10_1330909681.25009" 
    capture_lex $P1165
    .lex "$?PACKAGE", $P1163
    .lex "$?CLASS", $P1164
.annotate 'line', 59
    .const 'Sub' $P1176 = "13_1330909681.25009" 
    newclosure $P1182, $P1176
.annotate 'line', 30
    .return ($P1182)
.end


.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.loadlib "nqp_bigint_ops"

.loadlib "trans_ops"

.loadlib "io_ops"

.namespace []
.sub "add_dispatchee" :anon :subid("10_1330909681.25009") :outer("57_1330909681.25009")
    .param pmc param_1166
    .param pmc param_1167
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 35
    .lex "self", param_1166
    .lex "$code", param_1167
.annotate 'line', 36
    set $P127, param_1166
    nqp_decontainerize $P129, $P127
    nqp_get_sc_object $P131, "3940BAAC6795364DE724F4268A50AA0EB6318065-1330909681.17426", 5
    repr_get_attr_obj $P132, $P129, $P131, "$!dispatchees", 2
    unless_null $P132, vivify_181
    new $P132, "Undef"
  vivify_181:
    set $P133, param_1167
    unless_null $P133, vivify_182
    new $P133, "Undef"
  vivify_182:
    $P134 = $P132."push"($P133)
.annotate 'line', 35
    .return ($P134)
.end


.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.loadlib "nqp_bigint_ops"

.loadlib "trans_ops"

.loadlib "io_ops"

.namespace []
.sub "is_dispatcher" :anon :subid("11_1330909681.25009") :outer("57_1330909681.25009")
    .param pmc param_1169
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 38
    .lex "self", param_1169
.annotate 'line', 39
    set $P127, param_1169
    nqp_decontainerize $P129, $P127
    nqp_get_sc_object $P131, "3940BAAC6795364DE724F4268A50AA0EB6318065-1330909681.17426", 5
    repr_get_attr_obj $P132, $P129, $P131, "$!dispatchees", 2
    unless_null $P132, vivify_183
    new $P132, "Undef"
  vivify_183:
    defined $I100, $P132
.annotate 'line', 38
    .return ($I100)
.end


.HLL "nqp"

.namespace []
.sub "derive_dispatcher" :anon :subid("12_1330909681.25009") :outer("57_1330909681.25009")
    .param pmc param_1171
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 41
    .lex "self", param_1171
.annotate 'line', 43
    new $P127, "Undef"
    set $P1172, $P127
    .lex "$do", $P1172
.annotate 'line', 46
    new $P129, "Undef"
    set $P1173, $P129
    .lex "$der", $P1173
.annotate 'line', 52
    new $P131, "Undef"
    set $P1174, $P131
    .lex "$clone_callback", $P1174
.annotate 'line', 43
    set $P132, param_1171
    nqp_decontainerize $P133, $P132
    nqp_get_sc_object $P134, "3940BAAC6795364DE724F4268A50AA0EB6318065-1330909681.17426", 5
    repr_get_attr_obj $P135, $P133, $P134, "$!do", 0
    unless_null $P135, vivify_184
    new $P135, "Undef"
  vivify_184:
    clone $P137, $P135
    set $P1172, $P137
.annotate 'line', 46
    set $P132, param_1171
    nqp_decontainerize $P133, $P132
    repr_clone $P134, $P133
    set $P1173, $P134
.annotate 'line', 47
    set $P132, $P1173
    unless_null $P132, vivify_185
    new $P132, "Undef"
  vivify_185:
    find_lex $P133, "NQPRoutine"
    set $P134, $P1172
    unless_null $P134, vivify_186
    new $P134, "Undef"
  vivify_186:
    setattribute $P132, $P133, "$!do", $P134
.annotate 'line', 48
    set $P132, $P1173
    unless_null $P132, vivify_187
    new $P132, "Undef"
  vivify_187:
    find_lex $P133, "NQPRoutine"
    set $P134, param_1171
    nqp_decontainerize $P135, $P134
    nqp_get_sc_object $P137, "3940BAAC6795364DE724F4268A50AA0EB6318065-1330909681.17426", 5
    repr_get_attr_obj $P138, $P135, $P137, "$!dispatchees", 2
    unless_null $P138, vivify_188
    new $P138, "Undef"
  vivify_188:
    clone $P139, $P138
    setattribute $P132, $P133, "$!dispatchees", $P139
.annotate 'line', 49
    set $P132, $P1172
    unless_null $P132, vivify_189
    new $P132, "Undef"
  vivify_189:
    set $P133, $P1173
    unless_null $P133, vivify_190
    new $P133, "Undef"
  vivify_190:
    set_sub_code_object $P132, $P133
.annotate 'line', 52
    set $P132, param_1171
    nqp_decontainerize $P133, $P132
    nqp_get_sc_object $P134, "3940BAAC6795364DE724F4268A50AA0EB6318065-1330909681.17426", 5
    repr_get_attr_obj $P135, $P133, $P134, "$!do", 0
    unless_null $P135, vivify_191
    new $P135, "Undef"
  vivify_191:
    getprop $P137, $P135, "CLONE_CALLBACK"
    set $P1174, $P137
.annotate 'line', 53
    set $P132, $P1174
    unless_null $P132, vivify_192
    new $P132, "Undef"
  vivify_192:
    defined $I100, $P132
    unless $I100, if_1175_end
.annotate 'line', 54
    set $P133, $P1174
    unless_null $P133, vivify_193
    new $P133, "Undef"
  vivify_193:
    set $P134, param_1171
    nqp_decontainerize $P135, $P134
    nqp_get_sc_object $P137, "3940BAAC6795364DE724F4268A50AA0EB6318065-1330909681.17426", 5
    repr_get_attr_obj $P138, $P135, $P137, "$!do", 0
    unless_null $P138, vivify_194
    new $P138, "Undef"
  vivify_194:
    set $P139, $P1172
    unless_null $P139, vivify_195
    new $P139, "Undef"
  vivify_195:
    set $P140, $P1173
    unless_null $P140, vivify_196
    new $P140, "Undef"
  vivify_196:
    $P133($P138, $P139, $P140)
  if_1175_end:
.annotate 'line', 41
    set $P132, $P1173
    unless_null $P132, vivify_197
    new $P132, "Undef"
  vivify_197:
    .return ($P132)
.end


.HLL "nqp"

.namespace []
.sub "clone" :anon :subid("13_1330909681.25009") :outer("57_1330909681.25009")
    .param pmc param_1177
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 59
    .lex "self", param_1177
.annotate 'line', 61
    new $P127, "Undef"
    set $P1178, $P127
    .lex "$do", $P1178
.annotate 'line', 64
    new $P129, "Undef"
    set $P1179, $P129
    .lex "$der", $P1179
.annotate 'line', 69
    new $P131, "Undef"
    set $P1180, $P131
    .lex "$clone_callback", $P1180
.annotate 'line', 61
    set $P132, param_1177
    nqp_decontainerize $P133, $P132
    nqp_get_sc_object $P134, "3940BAAC6795364DE724F4268A50AA0EB6318065-1330909681.17426", 5
    repr_get_attr_obj $P135, $P133, $P134, "$!do", 0
    unless_null $P135, vivify_198
    new $P135, "Undef"
  vivify_198:
    clone $P137, $P135
    set $P1178, $P137
.annotate 'line', 64
    set $P132, param_1177
    nqp_decontainerize $P133, $P132
    repr_clone $P134, $P133
    set $P1179, $P134
.annotate 'line', 65
    set $P132, $P1179
    unless_null $P132, vivify_199
    new $P132, "Undef"
  vivify_199:
    find_lex $P133, "NQPRoutine"
    set $P134, $P1178
    unless_null $P134, vivify_200
    new $P134, "Undef"
  vivify_200:
    setattribute $P132, $P133, "$!do", $P134
.annotate 'line', 66
    set $P132, $P1178
    unless_null $P132, vivify_201
    new $P132, "Undef"
  vivify_201:
    set $P133, $P1179
    unless_null $P133, vivify_202
    new $P133, "Undef"
  vivify_202:
    set_sub_code_object $P132, $P133
.annotate 'line', 69
    set $P132, param_1177
    nqp_decontainerize $P133, $P132
    nqp_get_sc_object $P134, "3940BAAC6795364DE724F4268A50AA0EB6318065-1330909681.17426", 5
    repr_get_attr_obj $P135, $P133, $P134, "$!do", 0
    unless_null $P135, vivify_203
    new $P135, "Undef"
  vivify_203:
    getprop $P137, $P135, "CLONE_CALLBACK"
    set $P1180, $P137
.annotate 'line', 70
    set $P132, $P1180
    unless_null $P132, vivify_204
    new $P132, "Undef"
  vivify_204:
    defined $I100, $P132
    unless $I100, if_1181_end
.annotate 'line', 71
    set $P133, $P1180
    unless_null $P133, vivify_205
    new $P133, "Undef"
  vivify_205:
    set $P134, param_1177
    nqp_decontainerize $P135, $P134
    nqp_get_sc_object $P137, "3940BAAC6795364DE724F4268A50AA0EB6318065-1330909681.17426", 5
    repr_get_attr_obj $P138, $P135, $P137, "$!do", 0
    unless_null $P138, vivify_206
    new $P138, "Undef"
  vivify_206:
    set $P139, $P1178
    unless_null $P139, vivify_207
    new $P139, "Undef"
  vivify_207:
    set $P140, $P1179
    unless_null $P140, vivify_208
    new $P140, "Undef"
  vivify_208:
    $P133($P138, $P139, $P140)
  if_1181_end:
.annotate 'line', 59
    set $P132, $P1179
    unless_null $P132, vivify_209
    new $P132, "Undef"
  vivify_209:
    .return ($P132)
.end


.HLL "nqp"

.namespace []
.sub "_block1183"  :anon :subid("58_1330909681.25009") :outer("35_1330909681.25009")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 83
    .lex "$?PACKAGE", $P1185
    .lex "$?CLASS", $P1186
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block1187"  :anon :subid("59_1330909681.25009") :outer("35_1330909681.25009")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 89
    .const 'Sub' $P1241 = "24_1330909681.25009" 
    capture_lex $P1241
    .const 'Sub' $P1238 = "23_1330909681.25009" 
    capture_lex $P1238
    .const 'Sub' $P1234 = "22_1330909681.25009" 
    capture_lex $P1234
    .const 'Sub' $P1231 = "21_1330909681.25009" 
    capture_lex $P1231
    .const 'Sub' $P1228 = "20_1330909681.25009" 
    capture_lex $P1228
    .const 'Sub' $P1226 = "19_1330909681.25009" 
    capture_lex $P1226
    .const 'Sub' $P1222 = "18_1330909681.25009" 
    capture_lex $P1222
    .const 'Sub' $P1208 = "17_1330909681.25009" 
    capture_lex $P1208
    .const 'Sub' $P1199 = "16_1330909681.25009" 
    capture_lex $P1199
    .const 'Sub' $P1193 = "15_1330909681.25009" 
    capture_lex $P1193
    .const 'Sub' $P1191 = "14_1330909681.25009" 
    capture_lex $P1191
    .lex "$?PACKAGE", $P1189
    .lex "$?CLASS", $P1190
.annotate 'line', 134
    .const 'Sub' $P1241 = "24_1330909681.25009" 
    newclosure $P1262, $P1241
.annotate 'line', 89
    .return ($P1262)
.end


.HLL "nqp"

.namespace []
.sub "CREATE" :anon :subid("14_1330909681.25009") :outer("59_1330909681.25009")
    .param pmc param_1192
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 90
    .lex "self", param_1192
.annotate 'line', 91
    set $P127, param_1192
    nqp_decontainerize $P129, $P127
    repr_instance_of $P131, $P129
.annotate 'line', 90
    .return ($P131)
.end


.HLL "nqp"

.namespace []
.sub "bless" :anon :subid("15_1330909681.25009") :outer("59_1330909681.25009")
    .param pmc param_1194
    .param pmc param_1196 :slurpy :named
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 94
    .lex "$self", param_1194
    set $P127, param_1194
    set $P1195, $P127
    .lex "self", $P1195
    .lex "%attributes", param_1196
.annotate 'line', 95
    new $P129, "Undef"
    set $P1197, $P129
    .lex "$instance", $P1197
    set $P131, $P1195
    nqp_decontainerize $P132, $P131
    $P133 = $P132."CREATE"()
    set $P1197, $P133
.annotate 'line', 96
    set $P131, $P1197
    unless_null $P131, vivify_210
    new $P131, "Undef"
  vivify_210:
    set $P1198, param_1196
    unless_null $P1198, vivify_211
    $P1198 = root_new ['parrot';'Hash']
  vivify_211:
    $P131."BUILDALL"($P1198 :flat)
.annotate 'line', 94
    set $P131, $P1197
    unless_null $P131, vivify_212
    new $P131, "Undef"
  vivify_212:
    .return ($P131)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "BUILDALL" :anon :subid("16_1330909681.25009") :outer("59_1330909681.25009")
    .param pmc param_1200
    .param pmc param_1202 :slurpy :named
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 100
    .const 'Sub' $P1204 = "60_1330909681.25009" 
    capture_lex $P1204
    .lex "$self", param_1200
    set $P127, param_1200
    set $P1201, $P127
    .lex "self", $P1201
    .lex "%attributes", param_1202
.annotate 'line', 101
    set $P131, param_1200
    unless_null $P131, vivify_213
    new $P131, "Undef"
  vivify_213:
    get_how $P132, $P131
    set $P133, param_1200
    unless_null $P133, vivify_214
    new $P133, "Undef"
  vivify_214:
    $P134 = $P132."parents"($P133)
    defined $I100, $P134
    unless $I100, for_undef_215
    iter $P129, $P134
    new $P137, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P137, loop1207_handler
    push_eh $P137
  loop1207_test:
    unless $P129, loop1207_done
    shift $P135, $P129
  loop1207_redo:
    .const 'Sub' $P1204 = "60_1330909681.25009" 
    capture_lex $P1204
    $P1204($P135)
  loop1207_next:
    goto loop1207_test
  loop1207_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P138, exception, 'type'
    eq $P138, .CONTROL_LOOP_NEXT, loop1207_next
    eq $P138, .CONTROL_LOOP_REDO, loop1207_redo
  loop1207_done:
    pop_eh 
  for_undef_215:
.annotate 'line', 100
    .return ($P129)
.end


.HLL "nqp"

.namespace []
.sub "_block1203"  :anon :subid("60_1330909681.25009") :outer("16_1330909681.25009")
    .param pmc param_1205
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 101
    .lex "$class", param_1205
.annotate 'line', 102
    find_lex $P137, "$self"
    unless_null $P137, vivify_216
    new $P137, "Undef"
  vivify_216:
    set $P138, param_1205
    unless_null $P138, vivify_217
    new $P138, "Undef"
  vivify_217:
    find_lex $P1206, "%attributes"
    unless_null $P1206, vivify_218
    $P1206 = root_new ['parrot';'Hash']
  vivify_218:
    $P139 = $P137."BUILD_MAGIC"($P138, $P1206 :flat)
.annotate 'line', 101
    .return ($P139)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "BUILD_MAGIC" :anon :subid("17_1330909681.25009") :outer("59_1330909681.25009")
    .param pmc param_1209
    .param pmc param_1211
    .param pmc param_1212 :slurpy :named
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 106
    .const 'Sub' $P1214 = "61_1330909681.25009" 
    capture_lex $P1214
    .lex "$self", param_1209
    set $P127, param_1209
    set $P1210, $P127
    .lex "self", $P1210
    .lex "$type", param_1211
    .lex "%attributes", param_1212
.annotate 'line', 107
    set $P131, param_1211
    unless_null $P131, vivify_219
    new $P131, "Undef"
  vivify_219:
    get_how $P132, $P131
    set $P133, param_1211
    unless_null $P133, vivify_220
    new $P133, "Undef"
  vivify_220:
    $P134 = $P132."attributes"($P133, 1 :named("local"))
    defined $I100, $P134
    unless $I100, for_undef_221
    iter $P129, $P134
    new $P140, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P140, loop1221_handler
    push_eh $P140
  loop1221_test:
    unless $P129, loop1221_done
    shift $P135, $P129
  loop1221_redo:
    .const 'Sub' $P1214 = "61_1330909681.25009" 
    capture_lex $P1214
    $P1214($P135)
  loop1221_next:
    goto loop1221_test
  loop1221_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P141, exception, 'type'
    eq $P141, .CONTROL_LOOP_NEXT, loop1221_next
    eq $P141, .CONTROL_LOOP_REDO, loop1221_redo
  loop1221_done:
    pop_eh 
  for_undef_221:
.annotate 'line', 106
    .return ($P129)
.end


.HLL "nqp"

.namespace []
.sub "_block1213"  :anon :subid("61_1330909681.25009") :outer("17_1330909681.25009")
    .param pmc param_1217
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 108
    new $P137, "Undef"
    set $P1215, $P137
    .lex "$name", $P1215
.annotate 'line', 109
    new $P138, "Undef"
    set $P1216, $P138
    .lex "$shortname", $P1216
    .lex "$_", param_1217
.annotate 'line', 108
    find_lex $P139, "$_"
    unless_null $P139, vivify_222
    new $P139, "Undef"
  vivify_222:
    $P140 = $P139."name"()
    set $P1215, $P140
.annotate 'line', 109
    set $P139, $P1215
    unless_null $P139, vivify_223
    new $P139, "Undef"
  vivify_223:
    set $S101, $P139
    new $P140, "Float"
    assign $P140, 2
    set $I101, $P140
    substr $S102, $S101, $I101
    new $P141, 'String'
    set $P141, $S102
    set $P1216, $P141
.annotate 'line', 110
    set $P140, $P1216
    unless_null $P140, vivify_224
    new $P140, "Undef"
  vivify_224:
    find_lex $P1219, "%attributes"
    unless_null $P1219, vivify_225
    $P1219 = root_new ['parrot';'Hash']
  vivify_225:
    exists $I101, $P1219[$P140]
    if $I101, if_1218
    new $P139, 'Integer'
    set $P139, $I101
    goto if_1218_end
  if_1218:
.annotate 'line', 111
    find_lex $P141, "$self"
    unless_null $P141, vivify_226
    new $P141, "Undef"
  vivify_226:
    find_lex $P142, "$type"
    unless_null $P142, vivify_227
    new $P142, "Undef"
  vivify_227:
    set $P143, $P1215
    unless_null $P143, vivify_228
    new $P143, "Undef"
  vivify_228:
    set $S101, $P143
    set $P144, $P1216
    unless_null $P144, vivify_229
    new $P144, "Undef"
  vivify_229:
    find_lex $P1220, "%attributes"
    unless_null $P1220, vivify_230
    $P1220 = root_new ['parrot';'Hash']
  vivify_230:
    set $P145, $P1220[$P144]
    unless_null $P145, vivify_231
    new $P145, "Undef"
  vivify_231:
    setattribute $P141, $P142, $S101, $P145
  if_1218_end:
.annotate 'line', 107
    .return ($P139)
.end


.HLL "nqp"

.namespace []
.sub "new" :anon :subid("18_1330909681.25009") :outer("59_1330909681.25009")
    .param pmc param_1223
    .param pmc param_1224 :slurpy :named
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 116
    .lex "self", param_1223
    .lex "%attributes", param_1224
.annotate 'line', 117
    set $P127, param_1223
    nqp_decontainerize $P129, $P127
    set $P1225, param_1224
    unless_null $P1225, vivify_232
    $P1225 = root_new ['parrot';'Hash']
  vivify_232:
    $P131 = $P129."bless"($P1225 :flat)
.annotate 'line', 116
    .return ($P131)
.end


.HLL "nqp"

.namespace []
.sub "Str" :anon :subid("19_1330909681.25009") :outer("59_1330909681.25009")
    .param pmc param_1227
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 120
    .lex "self", param_1227
    multi_dispatch_over_lexical_candidates $P127
    .return ($P127)
.end


.HLL "nqp"

.namespace []
.sub "Str" :anon :subid("20_1330909681.25009") :outer("59_1330909681.25009")
    .param pmc param_1229
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 121
    .lex "$self", param_1229
    set $P127, param_1229
    set $P1230, $P127
    .lex "self", $P1230
.annotate 'line', 122
    set $P129, $P1230
    nqp_decontainerize $P131, $P129
    get_how $P132, $P131
    set $P133, $P1230
    nqp_decontainerize $P134, $P133
    $P135 = $P132."name"($P134)
    concat $P137, $P135, "()"
.annotate 'line', 121
    .return ($P137)
.end


.HLL "nqp"

.namespace []
.sub "ACCEPTS" :anon :subid("21_1330909681.25009") :outer("59_1330909681.25009")
    .param pmc param_1232
    .param pmc param_1233
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 125
    .lex "self", param_1232
    .lex "$topic", param_1233
    multi_dispatch_over_lexical_candidates $P127
    .return ($P127)
.end


.HLL "nqp"

.namespace []
.sub "ACCEPTS" :anon :subid("22_1330909681.25009") :outer("59_1330909681.25009")
    .param pmc param_1235
    .param pmc param_1237
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 126
    .lex "$self", param_1235
    set $P127, param_1235
    set $P1236, $P127
    .lex "self", $P1236
    .lex "$topic", param_1237
.annotate 'line', 127
    set $P129, param_1237
    unless_null $P129, vivify_233
    new $P129, "Undef"
  vivify_233:
    set $P131, $P1236
    nqp_decontainerize $P132, $P131
    get_what $P133, $P132
    type_check $I100, $P129, $P133
.annotate 'line', 126
    .return ($I100)
.end


.HLL "nqp"

.namespace []
.sub "isa" :anon :subid("23_1330909681.25009") :outer("59_1330909681.25009")
    .param pmc param_1239
    .param pmc param_1240
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 130
    .lex "self", param_1239
    .lex "$type", param_1240
.annotate 'line', 131
    set $P127, param_1239
    nqp_decontainerize $P129, $P127
    get_how $P131, $P129
    set $P132, param_1239
    nqp_decontainerize $P133, $P132
    set $P134, param_1240
    unless_null $P134, vivify_234
    new $P134, "Undef"
  vivify_234:
    $P135 = $P131."isa"($P133, $P134)
.annotate 'line', 130
    .return ($P135)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "__dump" :anon :subid("24_1330909681.25009") :outer("59_1330909681.25009")
    .param pmc param_1244
    .param pmc param_1245
    .param pmc param_1246
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 134
    .const 'Sub' $P1250 = "62_1330909681.25009" 
    capture_lex $P1250
    new $P1243, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P1243, control_1242
    push_eh $P1243
    .lex "self", param_1244
    .lex "$dumper", param_1245
    .lex "$label", param_1246
.annotate 'line', 136
    new $P127, "Undef"
    set $P1247, $P127
    .lex "$subindent", $P1247
.annotate 'line', 135
    set $P129, param_1244
    nqp_decontainerize $P131, $P129
    repr_defined $I100, $P131
    if $I100, unless_1248_end
    new $P132, "Exception"
    set $P132['type'], .CONTROL_RETURN
    new $P133, "Float"
    assign $P133, 0
    setattribute $P132, 'payload', $P133
    throw $P132
  unless_1248_end:
.annotate 'line', 136
    set $P129, param_1245
    unless_null $P129, vivify_235
    new $P129, "Undef"
  vivify_235:
    $P131 = $P129."newIndent"()
    set $P1247, $P131
.annotate 'line', 137
    "print"("{")
.annotate 'line', 138
    set $P131, param_1244
    nqp_decontainerize $P132, $P131
    get_how $P133, $P132
    set $P134, param_1244
    nqp_decontainerize $P135, $P134
    $P137 = $P133."parents"($P135)
    defined $I100, $P137
    unless $I100, for_undef_236
    iter $P129, $P137
    new $P140, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P140, loop1261_handler
    push_eh $P140
  loop1261_test:
    unless $P129, loop1261_done
    shift $P138, $P129
  loop1261_redo:
    .const 'Sub' $P1250 = "62_1330909681.25009" 
    capture_lex $P1250
    $P1250($P138)
  loop1261_next:
    goto loop1261_test
  loop1261_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P141, exception, 'type'
    eq $P141, .CONTROL_LOOP_NEXT, loop1261_next
    eq $P141, .CONTROL_LOOP_REDO, loop1261_redo
  loop1261_done:
    pop_eh 
  for_undef_236:
.annotate 'line', 157
    set $P129, param_1245
    unless_null $P129, vivify_265
    new $P129, "Undef"
  vivify_265:
    $P129."deleteIndent"()
.annotate 'line', 158
    set $P129, param_1245
    unless_null $P129, vivify_266
    new $P129, "Undef"
  vivify_266:
    $P131 = $P129."indent"()
    $P132 = "print"("\n", $P131, "}")
.annotate 'line', 134
    .return ($P132)
  control_1242:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P129, exception, "payload"
    .return ($P129)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "_block1249"  :anon :subid("62_1330909681.25009") :outer("24_1330909681.25009")
    .param pmc param_1251
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 138
    .const 'Sub' $P1253 = "63_1330909681.25009" 
    capture_lex $P1253
    .lex "$type", param_1251
.annotate 'line', 139
    set $P140, param_1251
    unless_null $P140, vivify_237
    new $P140, "Undef"
  vivify_237:
    get_how $P141, $P140
    set $P142, param_1251
    unless_null $P142, vivify_238
    new $P142, "Undef"
  vivify_238:
    $P143 = $P141."attributes"($P142, 1 :named("local"))
    defined $I101, $P143
    unless $I101, for_undef_239
    iter $P139, $P143
    new $P148, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P148, loop1260_handler
    push_eh $P148
  loop1260_test:
    unless $P139, loop1260_done
    shift $P144, $P139
  loop1260_redo:
    .const 'Sub' $P1253 = "63_1330909681.25009" 
    capture_lex $P1253
    $P1253($P144)
  loop1260_next:
    goto loop1260_test
  loop1260_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P149, exception, 'type'
    eq $P149, .CONTROL_LOOP_NEXT, loop1260_next
    eq $P149, .CONTROL_LOOP_REDO, loop1260_redo
  loop1260_done:
    pop_eh 
  for_undef_239:
.annotate 'line', 138
    .return ($P139)
.end


.HLL "nqp"

.namespace []
.sub "_block1252"  :anon :subid("63_1330909681.25009") :outer("62_1330909681.25009")
    .param pmc param_1256
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 140
    new $P145, "Undef"
    set $P1254, $P145
    .lex "$name", $P1254
.annotate 'line', 141
    new $P146, "Undef"
    set $P1255, $P146
    .lex "$attrtype", $P1255
    .lex "$_", param_1256
.annotate 'line', 140
    find_lex $P147, "$_"
    unless_null $P147, vivify_240
    new $P147, "Undef"
  vivify_240:
    $P148 = $P147."name"()
    set $P1254, $P148
.annotate 'line', 141
    find_lex $P147, "$_"
    unless_null $P147, vivify_241
    new $P147, "Undef"
  vivify_241:
    $P148 = $P147."type"()
    set $P1255, $P148
.annotate 'line', 142
    find_lex $P147, "$subindent"
    unless_null $P147, vivify_242
    new $P147, "Undef"
  vivify_242:
    find_lex $P148, "$type"
    unless_null $P148, vivify_243
    new $P148, "Undef"
  vivify_243:
    get_how $P149, $P148
    find_lex $P150, "$type"
    unless_null $P150, vivify_244
    new $P150, "Undef"
  vivify_244:
    $P151 = $P149."name"($P150)
    set $P152, $P1254
    unless_null $P152, vivify_245
    new $P152, "Undef"
  vivify_245:
    "print"("\n", $P147, $P151, "::", $P152, " => ")
.annotate 'line', 143
    set $P148, $P1255
    unless_null $P148, vivify_246
    new $P148, "Undef"
  vivify_246:
    find_lex $P149, "int"
    issame $I102, $P148, $P149
    if $I102, if_1257
.annotate 'line', 146
    set $P151, $P1255
    unless_null $P151, vivify_247
    new $P151, "Undef"
  vivify_247:
    find_lex $P152, "num"
    issame $I103, $P151, $P152
    if $I103, if_1258
.annotate 'line', 149
    set $P154, $P1255
    unless_null $P154, vivify_248
    new $P154, "Undef"
  vivify_248:
    find_lex $P155, "str"
    issame $I104, $P154, $P155
    if $I104, if_1259
.annotate 'line', 153
    find_lex $P157, "$dumper"
    unless_null $P157, vivify_249
    new $P157, "Undef"
  vivify_249:
    find_lex $P158, "$label"
    unless_null $P158, vivify_250
    new $P158, "Undef"
  vivify_250:
    find_lex $P159, "self"
    nqp_decontainerize $P161, $P159
    find_lex $P162, "$type"
    unless_null $P162, vivify_251
    new $P162, "Undef"
  vivify_251:
    set $P163, $P1254
    unless_null $P163, vivify_252
    new $P163, "Undef"
  vivify_252:
    set $S101, $P163
    getattribute $P165, $P161, $P162, $S101
    $P166 = $P157."dump"($P158, $P165)
.annotate 'line', 152
    set $P153, $P166
.annotate 'line', 149
    goto if_1259_end
  if_1259:
.annotate 'line', 150
    find_lex $P157, "$dumper"
    unless_null $P157, vivify_253
    new $P157, "Undef"
  vivify_253:
    find_lex $P158, "$label"
    unless_null $P158, vivify_254
    new $P158, "Undef"
  vivify_254:
    find_lex $P159, "self"
    nqp_decontainerize $P161, $P159
    find_lex $P162, "$type"
    unless_null $P162, vivify_255
    new $P162, "Undef"
  vivify_255:
    set $P163, $P1254
    unless_null $P163, vivify_256
    new $P163, "Undef"
  vivify_256:
    set $S101, $P163
    repr_get_attr_str $S102, $P161, $P162, $S101
    $P164 = $P157."dump"($P158, $S102)
.annotate 'line', 149
    set $P153, $P164
  if_1259_end:
    set $P150, $P153
.annotate 'line', 146
    goto if_1258_end
  if_1258:
.annotate 'line', 147
    find_lex $P153, "$dumper"
    unless_null $P153, vivify_257
    new $P153, "Undef"
  vivify_257:
    find_lex $P154, "$label"
    unless_null $P154, vivify_258
    new $P154, "Undef"
  vivify_258:
    find_lex $P155, "self"
    nqp_decontainerize $P157, $P155
    find_lex $P158, "$type"
    unless_null $P158, vivify_259
    new $P158, "Undef"
  vivify_259:
    set $P159, $P1254
    unless_null $P159, vivify_260
    new $P159, "Undef"
  vivify_260:
    set $S101, $P159
    repr_get_attr_num $N100, $P157, $P158, $S101
    $P160 = $P153."dump"($P154, $N100)
.annotate 'line', 146
    set $P150, $P160
  if_1258_end:
    set $P147, $P150
.annotate 'line', 143
    goto if_1257_end
  if_1257:
.annotate 'line', 144
    find_lex $P150, "$dumper"
    unless_null $P150, vivify_261
    new $P150, "Undef"
  vivify_261:
    find_lex $P151, "$label"
    unless_null $P151, vivify_262
    new $P151, "Undef"
  vivify_262:
    find_lex $P152, "self"
    nqp_decontainerize $P153, $P152
    find_lex $P154, "$type"
    unless_null $P154, vivify_263
    new $P154, "Undef"
  vivify_263:
    set $P155, $P1254
    unless_null $P155, vivify_264
    new $P155, "Undef"
  vivify_264:
    set $S101, $P155
    repr_get_attr_int $I103, $P153, $P154, $S101
    $P156 = $P150."dump"($P151, $I103)
.annotate 'line', 143
    set $P147, $P156
  if_1257_end:
.annotate 'line', 139
    .return ($P147)
.end


.HLL "nqp"

.namespace []
.sub "_block1263"  :anon :subid("64_1330909681.25009") :outer("35_1330909681.25009")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 163
    .const 'Sub' $P1275 = "34_1330909681.25009" 
    capture_lex $P1275
    .const 'Sub' $P1272 = "33_1330909681.25009" 
    capture_lex $P1272
    .const 'Sub' $P1270 = "32_1330909681.25009" 
    capture_lex $P1270
    .const 'Sub' $P1267 = "31_1330909681.25009" 
    capture_lex $P1267
    .lex "$?PACKAGE", $P1265
    .lex "$?CLASS", $P1266
.annotate 'line', 197
    .const 'Sub' $P1275 = "34_1330909681.25009" 
    newclosure $P1278, $P1275
.annotate 'line', 163
    .return ($P1278)
.end


.HLL "nqp"

.namespace []
.sub "new" :anon :subid("31_1330909681.25009") :outer("64_1330909681.25009")
    .param pmc param_1268
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 184
    .lex "self", param_1268
.annotate 'line', 185
    new $P127, "Undef"
    set $P1269, $P127
    .lex "$n", $P1269
    set $P129, param_1268
    nqp_decontainerize $P131, $P129
    $P132 = $P131."CREATE"()
    set $P1269, $P132
.annotate 'line', 186
    set $P129, $P1269
    unless_null $P129, vivify_267
    new $P129, "Undef"
  vivify_267:
    $P129."BUILD"()
.annotate 'line', 184
    set $P129, $P1269
    unless_null $P129, vivify_268
    new $P129, "Undef"
  vivify_268:
    .return ($P129)
.end


.HLL "nqp"

.namespace []
.sub "BUILD" :anon :subid("32_1330909681.25009") :outer("64_1330909681.25009")
    .param pmc param_1271
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 190
    .lex "self", param_1271
.annotate 'line', 191
    new $P127, "ResizablePMCArray"
    set $P129, param_1271
    nqp_decontainerize $P131, $P129
    nqp_get_sc_object $P132, "3940BAAC6795364DE724F4268A50AA0EB6318065-1330909681.17426", 20
    repr_bind_attr_obj $P131, $P132, "@!array", 0, $P127
.annotate 'line', 192
    new $P127, "Hash"
    set $P129, param_1271
    nqp_decontainerize $P131, $P129
    nqp_get_sc_object $P132, "3940BAAC6795364DE724F4268A50AA0EB6318065-1330909681.17426", 20
    repr_bind_attr_obj $P131, $P132, "%!hash", 1, $P127
.annotate 'line', 190
    .return ($P127)
.end


.HLL "nqp"

.namespace []
.sub "list" :anon :subid("33_1330909681.25009") :outer("64_1330909681.25009")
    .param pmc param_1273
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 195
    .lex "self", param_1273
    set $P127, param_1273
    nqp_decontainerize $P129, $P127
    nqp_get_sc_object $P131, "3940BAAC6795364DE724F4268A50AA0EB6318065-1330909681.17426", 20
    repr_get_attr_obj $P1274, $P129, $P131, "@!array", 0
    unless_null $P1274, vivify_269
    $P1274 = root_new ['parrot';'ResizablePMCArray']
  vivify_269:
    .return ($P1274)
.end


.HLL "nqp"

.namespace []
.sub "hash" :anon :subid("34_1330909681.25009") :outer("64_1330909681.25009")
    .param pmc param_1276
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 197
    .lex "self", param_1276
    set $P127, param_1276
    nqp_decontainerize $P129, $P127
    nqp_get_sc_object $P131, "3940BAAC6795364DE724F4268A50AA0EB6318065-1330909681.17426", 20
    repr_get_attr_obj $P1277, $P129, $P131, "%!hash", 1
    unless_null $P1277, vivify_270
    $P1277 = root_new ['parrot';'Hash']
  vivify_270:
    .return ($P1277)
.end


.HLL "nqp"

.namespace []
.sub "_block1280" :load :anon :subid("65_1330909681.25009")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 1
    .const '' $P1282 = "35_1330909681.25009" 
    $P135 = $P1282()
    .return ($P135)
.end

