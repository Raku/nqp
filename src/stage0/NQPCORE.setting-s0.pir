.include 'cclass.pasm'
.include 'except_severity.pasm'
.include 'except_types.pasm'
.include 'iglobals.pasm'
.include 'interpinfo.pasm'
.include 'iterator.pasm'
.include 'sysinfo.pasm'
.include 'datatypes.pasm'

.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.loadlib "trans_ops"

.loadlib "io_ops"

.namespace []
.sub "_block1000"  :anon :subid("10_1310110653.89398")
    .param pmc param_1002 :slurpy
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 0
    .const 'Sub' $P1227 = "49_1310110653.89398" 
    capture_lex $P1227
    .const 'Sub' $P1150 = "32_1310110653.89398" 
    capture_lex $P1150
    .const 'Sub' $P1146 = "31_1310110653.89398" 
    capture_lex $P1146
    .const 'Sub' $P1142 = "30_1310110653.89398" 
    capture_lex $P1142
    .const 'Sub' $P1138 = "29_1310110653.89398" 
    capture_lex $P1138
    .const 'Sub' $P1134 = "28_1310110653.89398" 
    capture_lex $P1134
    .const 'Sub' $P1130 = "27_1310110653.89398" 
    capture_lex $P1130
    .const 'Sub' $P1125 = "26_1310110653.89398" 
    capture_lex $P1125
    .const 'Sub' $P1116 = "25_1310110653.89398" 
    capture_lex $P1116
    .const 'Sub' $P1112 = "24_1310110653.89398" 
    capture_lex $P1112
    .const 'Sub' $P1094 = "22_1310110653.89398" 
    capture_lex $P1094
    .const 'Sub' $P1071 = "20_1310110653.89398" 
    capture_lex $P1071
    .const 'Sub' $P1055 = "18_1310110653.89398" 
    capture_lex $P1055
    .const 'Sub' $P1050 = "17_1310110653.89398" 
    capture_lex $P1050
    .const 'Sub' $P1041 = "15_1310110653.89398" 
    capture_lex $P1041
    .const 'Sub' $P1035 = "14_1310110653.89398" 
    capture_lex $P1035
    .const 'Sub' $P1029 = "13_1310110653.89398" 
    capture_lex $P1029
    .const 'Sub' $P1025 = "12_1310110653.89398" 
    capture_lex $P1025
    .const 'Sub' $P1012 = "11_1310110653.89398" 
    capture_lex $P1012
.annotate 'line', 1
    .lex "@ARGS", param_1002
    .lex "GLOBALish", $P1003
    .lex "$?PACKAGE", $P1004
    .lex "EXPORTHOW", $P1005
    .lex "int", $P1006
    .lex "num", $P1007
    .lex "str", $P1008
    .lex "NQPMu", $P1009
    .lex "NQPCapture", $P1010
.annotate 'line', 162
    .const 'Sub' $P1012 = "11_1310110653.89398" 
    newclosure $P1023, $P1012
    set $P1011, $P1023
    .lex "open", $P1011
.annotate 'line', 174
    .const 'Sub' $P1025 = "12_1310110653.89398" 
    newclosure $P1027, $P1025
    set $P1024, $P1027
    .lex "close", $P1024
.annotate 'line', 182
    .const 'Sub' $P1029 = "13_1310110653.89398" 
    newclosure $P1033, $P1029
    set $P1028, $P1033
    .lex "slurp", $P1028
.annotate 'line', 194
    .const 'Sub' $P1035 = "14_1310110653.89398" 
    newclosure $P1039, $P1035
    set $P1034, $P1039
    .lex "spew", $P1034
.annotate 'line', 201
    .const 'Sub' $P1041 = "15_1310110653.89398" 
    newclosure $P1048, $P1041
    set $P1040, $P1048
    .lex "print", $P1040
.annotate 'line', 208
    .const 'Sub' $P1050 = "17_1310110653.89398" 
    newclosure $P1053, $P1050
    set $P1049, $P1053
    .lex "say", $P1049
.annotate 'line', 226
    .const 'Sub' $P1055 = "18_1310110653.89398" 
    newclosure $P1069, $P1055
    set $P1054, $P1069
    .lex "match", $P1054
.annotate 'line', 248
    .const 'Sub' $P1071 = "20_1310110653.89398" 
    newclosure $P1092, $P1071
    set $P1070, $P1092
    .lex "subst", $P1070
.annotate 'line', 274
    .const 'Sub' $P1094 = "22_1310110653.89398" 
    newclosure $P1107, $P1094
    set $P1093, $P1107
    .lex "hash", $P1093
.annotate 'line', 283
    new $P122, "Undef"
    set $P1108, $P122
    .lex "$test_counter", $P1108
.annotate 'line', 284
    new $P123, "Undef"
    set $P1109, $P123
    .lex "$todo_upto_test_num", $P1109
.annotate 'line', 285
    new $P124, "Undef"
    set $P1110, $P124
    .lex "$todo_reason", $P1110
.annotate 'line', 287
    .const 'Sub' $P1112 = "24_1310110653.89398" 
    newclosure $P1114, $P1112
    set $P1111, $P1114
    .lex "plan", $P1111
.annotate 'line', 291
    .const 'Sub' $P1116 = "25_1310110653.89398" 
    newclosure $P1123, $P1116
    set $P1115, $P1123
    .lex "ok", $P1115
.annotate 'line', 309
    .const 'Sub' $P1125 = "26_1310110653.89398" 
    newclosure $P1128, $P1125
    set $P1124, $P1128
    .lex "todo", $P1124
.annotate 'line', 314
    .const 'Sub' $P1130 = "27_1310110653.89398" 
    newclosure $P1132, $P1130
    set $P1129, $P1132
    .lex "skip", $P1129
.annotate 'line', 12
    .const 'Sub' $P1134 = "28_1310110653.89398" 
    capture_lex $P1134
    $P1134()
.annotate 'line', 23
    .const 'Sub' $P1138 = "29_1310110653.89398" 
    capture_lex $P1138
    $P1138()
.annotate 'line', 25
    .const 'Sub' $P1142 = "30_1310110653.89398" 
    capture_lex $P1142
    $P1142()
.annotate 'line', 27
    .const 'Sub' $P1146 = "31_1310110653.89398" 
    capture_lex $P1146
    $P1146()
.annotate 'line', 30
    .const 'Sub' $P1150 = "32_1310110653.89398" 
    capture_lex $P1150
    $P1150()
.annotate 'line', 113
    .const 'Sub' $P1227 = "49_1310110653.89398" 
    capture_lex $P1227
    $P1227()
.annotate 'line', 1
    find_lex $P127, "open"
    find_lex $P127, "close"
    find_lex $P127, "slurp"
    find_lex $P127, "spew"
    find_lex $P127, "print"
    find_lex $P127, "say"
    find_lex $P127, "match"
    find_lex $P127, "subst"
    find_lex $P127, "hash"
.annotate 'line', 283
    new $P127, "Integer"
    assign $P127, 0
    store_lex "$test_counter", $P127
.annotate 'line', 284
    new $P127, "Integer"
    assign $P127, 0
    store_lex "$todo_upto_test_num", $P127
.annotate 'line', 285
    new $P127, "String"
    assign $P127, ""
    store_lex "$todo_reason", $P127
.annotate 'line', 1
    find_lex $P127, "plan"
    find_lex $P127, "ok"
    find_lex $P127, "todo"
    find_lex $P127, "skip"
    new $P127, "Integer"
    assign $P127, 1
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
    find_lex $P129, "@ARGS"
    if $P129, if_1242
    set $P127, $P129
    goto if_1242_end
  if_1242:
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P131, "ModuleLoader"
    getinterp $P132
    set $P133, $P132["context"]
    $P134 = $P131."set_mainline_module"($P133)
    set $P127, $P134
  if_1242_end:
    .return ($P127)
    .const 'Sub' $P1244 = "54_1310110653.89398" 
    .return ($P1244)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post55") :outer("10_1310110653.89398")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 0
    .const 'Sub' $P1001 = "10_1310110653.89398" 
    .local pmc block
    set block, $P1001
    nqp_get_sc $P137, "1310110653.02496"
    isnull $I100, $P137
    if $I100, if_1246
    goto if_1246_end
  if_1246:
    nqp_dynop_setup 
    getinterp $P138
    get_class $P139, "LexPad"
    get_class $P140, "NQPLexPad"
    $P138."hll_map"($P139, $P140)
    nqp_create_sc $P141, "1310110653.02496"
    .local pmc cur_sc
    set cur_sc, $P141
    nqp_get_sc_object $P142, "__6MODEL_CORE__", 0
    $P143 = $P142."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P143, cur_sc
    nqp_set_sc_object "1310110653.02496", 0, $P143
    .const 'Sub' $P1247 = "10_1310110653.89398" 
    $P142 = $P1247."get_lexinfo"()
    nqp_get_sc_object $P143, "1310110653.02496", 0
    $P142."set_static_lexpad_value"("GLOBALish", $P143)
    .const 'Sub' $P1248 = "10_1310110653.89398" 
    $P144 = $P1248."get_lexinfo"()
    $P144."finish_static_lexpad"()
    .const 'Sub' $P1249 = "10_1310110653.89398" 
    $P142 = $P1249."get_lexinfo"()
    nqp_get_sc_object $P143, "1310110653.02496", 0
    $P142."set_static_lexpad_value"("$?PACKAGE", $P143)
    .const 'Sub' $P1250 = "10_1310110653.89398" 
    $P144 = $P1250."get_lexinfo"()
    $P144."finish_static_lexpad"()
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P142, "ModuleLoader"
    nqp_get_sc_object $P143, "1310110653.02496", 0
    $P142."load_module"("nqpmo", $P143)
    nqp_get_sc_object $P142, "1310110648.32303", 89
    $P143 = $P142."new_type"("EXPORTHOW" :named("name"))
    nqp_set_sc_for_object $P143, cur_sc
    nqp_set_sc_object "1310110653.02496", 1, $P143
    .const 'Sub' $P1251 = "10_1310110653.89398" 
    $P142 = $P1251."get_lexinfo"()
    nqp_get_sc_object $P143, "1310110653.02496", 1
    $P142."set_static_lexpad_value"("EXPORTHOW", $P143)
    .const 'Sub' $P1252 = "10_1310110653.89398" 
    $P144 = $P1252."get_lexinfo"()
    $P144."finish_static_lexpad"()
    .const 'Sub' $P1253 = "28_1310110653.89398" 
    $P142 = $P1253."get_lexinfo"()
    nqp_get_sc_object $P143, "1310110653.02496", 1
    $P142."set_static_lexpad_value"("$?PACKAGE", $P143)
    .const 'Sub' $P1254 = "28_1310110653.89398" 
    $P144 = $P1254."get_lexinfo"()
    $P144."finish_static_lexpad"()
    .const 'Sub' $P1255 = "28_1310110653.89398" 
    $P142 = $P1255."get_lexinfo"()
    nqp_get_sc_object $P143, "1310110653.02496", 1
    $P142."set_static_lexpad_value"("$?CLASS", $P143)
    .const 'Sub' $P1256 = "28_1310110653.89398" 
    $P144 = $P1256."get_lexinfo"()
    $P144."finish_static_lexpad"()
    nqp_get_sc_object $P142, "1310110653.02496", 1
    get_how $P143, $P142
    nqp_get_sc_object $P144, "1310110653.02496", 1
    $P143."compose"($P144)
    nqp_get_sc_object $P142, "1310110648.32303", 72
    $P143 = $P142."new_type"("int" :named("name"), "P6int" :named("repr"))
    nqp_set_sc_for_object $P143, cur_sc
    nqp_set_sc_object "1310110653.02496", 2, $P143
    .const 'Sub' $P1257 = "10_1310110653.89398" 
    $P142 = $P1257."get_lexinfo"()
    nqp_get_sc_object $P143, "1310110653.02496", 2
    $P142."set_static_lexpad_value"("int", $P143)
    .const 'Sub' $P1258 = "10_1310110653.89398" 
    $P144 = $P1258."get_lexinfo"()
    $P144."finish_static_lexpad"()
    .const 'Sub' $P1259 = "29_1310110653.89398" 
    $P142 = $P1259."get_lexinfo"()
    nqp_get_sc_object $P143, "1310110653.02496", 2
    $P142."set_static_lexpad_value"("$?PACKAGE", $P143)
    .const 'Sub' $P1260 = "29_1310110653.89398" 
    $P144 = $P1260."get_lexinfo"()
    $P144."finish_static_lexpad"()
    .const 'Sub' $P1261 = "29_1310110653.89398" 
    $P142 = $P1261."get_lexinfo"()
    nqp_get_sc_object $P143, "1310110653.02496", 2
    $P142."set_static_lexpad_value"("$?CLASS", $P143)
    .const 'Sub' $P1262 = "29_1310110653.89398" 
    $P144 = $P1262."get_lexinfo"()
    $P144."finish_static_lexpad"()
    nqp_get_sc_object $P142, "1310110653.02496", 2
    get_how $P143, $P142
    nqp_get_sc_object $P144, "1310110653.02496", 2
    $P143."compose"($P144)
    nqp_get_sc_object $P142, "1310110648.32303", 72
    $P143 = $P142."new_type"("num" :named("name"), "P6num" :named("repr"))
    nqp_set_sc_for_object $P143, cur_sc
    nqp_set_sc_object "1310110653.02496", 3, $P143
    .const 'Sub' $P1263 = "10_1310110653.89398" 
    $P142 = $P1263."get_lexinfo"()
    nqp_get_sc_object $P143, "1310110653.02496", 3
    $P142."set_static_lexpad_value"("num", $P143)
    .const 'Sub' $P1264 = "10_1310110653.89398" 
    $P144 = $P1264."get_lexinfo"()
    $P144."finish_static_lexpad"()
    .const 'Sub' $P1265 = "30_1310110653.89398" 
    $P142 = $P1265."get_lexinfo"()
    nqp_get_sc_object $P143, "1310110653.02496", 3
    $P142."set_static_lexpad_value"("$?PACKAGE", $P143)
    .const 'Sub' $P1266 = "30_1310110653.89398" 
    $P144 = $P1266."get_lexinfo"()
    $P144."finish_static_lexpad"()
    .const 'Sub' $P1267 = "30_1310110653.89398" 
    $P142 = $P1267."get_lexinfo"()
    nqp_get_sc_object $P143, "1310110653.02496", 3
    $P142."set_static_lexpad_value"("$?CLASS", $P143)
    .const 'Sub' $P1268 = "30_1310110653.89398" 
    $P144 = $P1268."get_lexinfo"()
    $P144."finish_static_lexpad"()
    nqp_get_sc_object $P142, "1310110653.02496", 3
    get_how $P143, $P142
    nqp_get_sc_object $P144, "1310110653.02496", 3
    $P143."compose"($P144)
    nqp_get_sc_object $P142, "1310110648.32303", 72
    $P143 = $P142."new_type"("str" :named("name"), "P6str" :named("repr"))
    nqp_set_sc_for_object $P143, cur_sc
    nqp_set_sc_object "1310110653.02496", 4, $P143
    .const 'Sub' $P1269 = "10_1310110653.89398" 
    $P142 = $P1269."get_lexinfo"()
    nqp_get_sc_object $P143, "1310110653.02496", 4
    $P142."set_static_lexpad_value"("str", $P143)
    .const 'Sub' $P1270 = "10_1310110653.89398" 
    $P144 = $P1270."get_lexinfo"()
    $P144."finish_static_lexpad"()
    .const 'Sub' $P1271 = "31_1310110653.89398" 
    $P142 = $P1271."get_lexinfo"()
    nqp_get_sc_object $P143, "1310110653.02496", 4
    $P142."set_static_lexpad_value"("$?PACKAGE", $P143)
    .const 'Sub' $P1272 = "31_1310110653.89398" 
    $P144 = $P1272."get_lexinfo"()
    $P144."finish_static_lexpad"()
    .const 'Sub' $P1273 = "31_1310110653.89398" 
    $P142 = $P1273."get_lexinfo"()
    nqp_get_sc_object $P143, "1310110653.02496", 4
    $P142."set_static_lexpad_value"("$?CLASS", $P143)
    .const 'Sub' $P1274 = "31_1310110653.89398" 
    $P144 = $P1274."get_lexinfo"()
    $P144."finish_static_lexpad"()
    nqp_get_sc_object $P142, "1310110653.02496", 4
    get_how $P143, $P142
    nqp_get_sc_object $P144, "1310110653.02496", 4
    $P143."compose"($P144)
    nqp_get_sc_object $P142, "1310110648.32303", 41
    $P143 = $P142."new_type"("NQPMu" :named("name"))
    nqp_set_sc_for_object $P143, cur_sc
    nqp_set_sc_object "1310110653.02496", 5, $P143
    .const 'Sub' $P1275 = "10_1310110653.89398" 
    $P142 = $P1275."get_lexinfo"()
    nqp_get_sc_object $P143, "1310110653.02496", 5
    $P142."set_static_lexpad_value"("NQPMu", $P143)
    .const 'Sub' $P1276 = "10_1310110653.89398" 
    $P144 = $P1276."get_lexinfo"()
    $P144."finish_static_lexpad"()
    nqp_get_sc_object $P142, "1310110653.02496", 5
    get_how $P143, $P142
    nqp_get_sc_object $P144, "1310110653.02496", 5
    .const 'Sub' $P1277 = "33_1310110653.89398" 
    $P143."add_method"($P144, "CREATE", $P1277)
    nqp_get_sc_object $P142, "1310110653.02496", 5
    get_how $P143, $P142
    nqp_get_sc_object $P144, "1310110653.02496", 5
    .const 'Sub' $P1278 = "34_1310110653.89398" 
    $P143."add_method"($P144, "bless", $P1278)
    nqp_get_sc_object $P142, "1310110653.02496", 5
    get_how $P143, $P142
    nqp_get_sc_object $P144, "1310110653.02496", 5
    .const 'Sub' $P1279 = "35_1310110653.89398" 
    $P143."add_method"($P144, "BUILDALL", $P1279)
    nqp_get_sc_object $P142, "1310110653.02496", 5
    get_how $P143, $P142
    nqp_get_sc_object $P144, "1310110653.02496", 5
    .const 'Sub' $P1280 = "37_1310110653.89398" 
    $P143."add_method"($P144, "BUILD_MAGIC", $P1280)
    nqp_get_sc_object $P142, "1310110653.02496", 5
    get_how $P143, $P142
    nqp_get_sc_object $P144, "1310110653.02496", 5
    .const 'Sub' $P1281 = "39_1310110653.89398" 
    $P143."add_method"($P144, "new", $P1281)
    nqp_get_sc_object $P142, "1310110653.02496", 5
    get_how $P143, $P142
    nqp_get_sc_object $P144, "1310110653.02496", 5
    .const 'Sub' $P1282 = "40_1310110653.89398" 
    $P143."add_method"($P144, "Str", $P1282)
    nqp_get_sc_object $P142, "1310110653.02496", 5
    get_how $P143, $P142
    nqp_get_sc_object $P144, "1310110653.02496", 5
    .const 'Sub' $P1283 = "40_1310110653.89398" 
    $P143."add_parrot_vtable_mapping"($P144, "get_string", $P1283)
    .const 'Sub' $P1284 = "41_1310110653.89398" 
    nqp_get_sc_object $P142, "1310110653.02496", 5
    new $P143, "ResizablePMCArray"
    push $P143, $P142
    new $P144, "ResizablePMCArray"
    push $P144, 2
    set_sub_multisig $P1284, $P143, $P144
    nqp_get_sc_object $P142, "1310110653.02496", 5
    get_how $P143, $P142
    nqp_get_sc_object $P144, "1310110653.02496", 5
    .const 'Sub' $P1285 = "41_1310110653.89398" 
    $P143."add_multi_method"($P144, "Str", $P1285)
    nqp_get_sc_object $P142, "1310110653.02496", 5
    get_how $P143, $P142
    nqp_get_sc_object $P144, "1310110653.02496", 5
    .const 'Sub' $P1286 = "42_1310110653.89398" 
    $P143."add_method"($P144, "ACCEPTS", $P1286)
    .const 'Sub' $P1287 = "43_1310110653.89398" 
    nqp_get_sc_object $P142, "1310110653.02496", 5
    null $P143
    new $P144, "ResizablePMCArray"
    push $P144, $P142
    push $P144, $P143
    new $P145, "ResizablePMCArray"
    push $P145, 2
    push $P145, 0
    set_sub_multisig $P1287, $P144, $P145
    nqp_get_sc_object $P142, "1310110653.02496", 5
    get_how $P143, $P142
    nqp_get_sc_object $P144, "1310110653.02496", 5
    .const 'Sub' $P1288 = "43_1310110653.89398" 
    $P143."add_multi_method"($P144, "ACCEPTS", $P1288)
    nqp_get_sc_object $P142, "1310110653.02496", 5
    get_how $P143, $P142
    nqp_get_sc_object $P144, "1310110653.02496", 5
    .const 'Sub' $P1289 = "44_1310110653.89398" 
    $P143."add_parrot_vtable_mapping"($P144, "get_bool", $P1289)
    nqp_get_sc_object $P142, "1310110653.02496", 5
    get_how $P143, $P142
    nqp_get_sc_object $P144, "1310110653.02496", 5
    .const 'Sub' $P1290 = "45_1310110653.89398" 
    $P143."add_method"($P144, "isa", $P1290)
    nqp_get_sc_object $P142, "1310110653.02496", 5
    get_how $P143, $P142
    nqp_get_sc_object $P144, "1310110653.02496", 5
    .const 'Sub' $P1291 = "46_1310110653.89398" 
    $P143."add_method"($P144, "__dump", $P1291)
    .const 'Sub' $P1292 = "32_1310110653.89398" 
    $P142 = $P1292."get_lexinfo"()
    nqp_get_sc_object $P143, "1310110653.02496", 5
    $P142."set_static_lexpad_value"("$?PACKAGE", $P143)
    .const 'Sub' $P1293 = "32_1310110653.89398" 
    $P144 = $P1293."get_lexinfo"()
    $P144."finish_static_lexpad"()
    .const 'Sub' $P1294 = "32_1310110653.89398" 
    $P142 = $P1294."get_lexinfo"()
    nqp_get_sc_object $P143, "1310110653.02496", 5
    $P142."set_static_lexpad_value"("$?CLASS", $P143)
    .const 'Sub' $P1295 = "32_1310110653.89398" 
    $P144 = $P1295."get_lexinfo"()
    $P144."finish_static_lexpad"()
    nqp_get_sc_object $P142, "1310110653.02496", 5
    get_how $P143, $P142
    nqp_get_sc_object $P144, "1310110653.02496", 5
    nqp_get_sc_object $P145, "1310110653.02496", 5
    $P143."set_default_parent"($P144, $P145)
    nqp_get_sc_object $P142, "1310110653.02496", 5
    get_how $P143, $P142
    nqp_get_sc_object $P144, "1310110653.02496", 5
    $P143."compose"($P144)
    nqp_get_sc_object $P142, "1310110648.32303", 41
    $P143 = $P142."new_type"("NQPCapture" :named("name"))
    nqp_set_sc_for_object $P143, cur_sc
    nqp_set_sc_object "1310110653.02496", 18, $P143
    .const 'Sub' $P1296 = "10_1310110653.89398" 
    $P142 = $P1296."get_lexinfo"()
    nqp_get_sc_object $P143, "1310110653.02496", 18
    $P142."set_static_lexpad_value"("NQPCapture", $P143)
    .const 'Sub' $P1297 = "10_1310110653.89398" 
    $P144 = $P1297."get_lexinfo"()
    $P144."finish_static_lexpad"()
    nqp_get_sc_object $P142, "1310110653.02496", 18
    get_how $P143, $P142
    nqp_get_sc_object $P144, "1310110653.02496", 18
    nqp_get_sc_object $P145, "1310110648.32303", 81
    $P146 = $P145."new"("@!array" :named("name"))
    $P143."add_attribute"($P144, $P146)
    nqp_get_sc_object $P142, "1310110653.02496", 18
    get_how $P143, $P142
    nqp_get_sc_object $P144, "1310110653.02496", 18
    $P143."add_parrot_vtable_handler_mapping"($P144, "get_pmc_keyed_int", "@!array")
    nqp_get_sc_object $P142, "1310110653.02496", 18
    get_how $P143, $P142
    nqp_get_sc_object $P144, "1310110653.02496", 18
    $P143."add_parrot_vtable_handler_mapping"($P144, "set_pmc_keyed_int", "@!array")
    nqp_get_sc_object $P142, "1310110653.02496", 18
    get_how $P143, $P142
    nqp_get_sc_object $P144, "1310110653.02496", 18
    $P143."add_parrot_vtable_handler_mapping"($P144, "exists_keyed_int", "@!array")
    nqp_get_sc_object $P142, "1310110653.02496", 18
    get_how $P143, $P142
    nqp_get_sc_object $P144, "1310110653.02496", 18
    $P143."add_parrot_vtable_handler_mapping"($P144, "delete_keyed_int", "@!array")
    nqp_get_sc_object $P142, "1310110653.02496", 18
    get_how $P143, $P142
    nqp_get_sc_object $P144, "1310110653.02496", 18
    $P143."add_parrot_vtable_handler_mapping"($P144, "unshift_pmc", "@!array")
    nqp_get_sc_object $P142, "1310110653.02496", 18
    get_how $P143, $P142
    nqp_get_sc_object $P144, "1310110653.02496", 18
    $P143."add_parrot_vtable_handler_mapping"($P144, "push_pmc", "@!array")
    nqp_get_sc_object $P142, "1310110653.02496", 18
    get_how $P143, $P142
    nqp_get_sc_object $P144, "1310110653.02496", 18
    nqp_get_sc_object $P145, "1310110648.32303", 81
    $P146 = $P145."new"("%!hash" :named("name"))
    $P143."add_attribute"($P144, $P146)
    nqp_get_sc_object $P142, "1310110653.02496", 18
    get_how $P143, $P142
    nqp_get_sc_object $P144, "1310110653.02496", 18
    $P143."add_parrot_vtable_handler_mapping"($P144, "get_pmc_keyed_str", "%!hash")
    nqp_get_sc_object $P142, "1310110653.02496", 18
    get_how $P143, $P142
    nqp_get_sc_object $P144, "1310110653.02496", 18
    $P143."add_parrot_vtable_handler_mapping"($P144, "get_pmc_keyed", "%!hash")
    nqp_get_sc_object $P142, "1310110653.02496", 18
    get_how $P143, $P142
    nqp_get_sc_object $P144, "1310110653.02496", 18
    $P143."add_parrot_vtable_handler_mapping"($P144, "set_pmc_keyed_str", "%!hash")
    nqp_get_sc_object $P142, "1310110653.02496", 18
    get_how $P143, $P142
    nqp_get_sc_object $P144, "1310110653.02496", 18
    $P143."add_parrot_vtable_handler_mapping"($P144, "set_pmc_keyed", "%!hash")
    nqp_get_sc_object $P142, "1310110653.02496", 18
    get_how $P143, $P142
    nqp_get_sc_object $P144, "1310110653.02496", 18
    $P143."add_parrot_vtable_handler_mapping"($P144, "exists_keyed", "%!hash")
    nqp_get_sc_object $P142, "1310110653.02496", 18
    get_how $P143, $P142
    nqp_get_sc_object $P144, "1310110653.02496", 18
    $P143."add_parrot_vtable_handler_mapping"($P144, "exists_keyed_str", "%!hash")
    nqp_get_sc_object $P142, "1310110653.02496", 18
    get_how $P143, $P142
    nqp_get_sc_object $P144, "1310110653.02496", 18
    $P143."add_parrot_vtable_handler_mapping"($P144, "delete_keyed", "%!hash")
    nqp_get_sc_object $P142, "1310110653.02496", 18
    get_how $P143, $P142
    nqp_get_sc_object $P144, "1310110653.02496", 18
    $P143."add_parrot_vtable_handler_mapping"($P144, "delete_keyed_str", "%!hash")
    nqp_get_sc_object $P142, "1310110653.02496", 18
    get_how $P143, $P142
    nqp_get_sc_object $P144, "1310110653.02496", 18
    .const 'Sub' $P1298 = "50_1310110653.89398" 
    $P143."add_method"($P144, "new", $P1298)
    nqp_get_sc_object $P142, "1310110653.02496", 18
    get_how $P143, $P142
    nqp_get_sc_object $P144, "1310110653.02496", 18
    .const 'Sub' $P1299 = "51_1310110653.89398" 
    $P143."add_method"($P144, "BUILD", $P1299)
    nqp_get_sc_object $P142, "1310110653.02496", 18
    get_how $P143, $P142
    nqp_get_sc_object $P144, "1310110653.02496", 18
    .const 'Sub' $P1300 = "52_1310110653.89398" 
    $P143."add_method"($P144, "list", $P1300)
    nqp_get_sc_object $P142, "1310110653.02496", 18
    get_how $P143, $P142
    nqp_get_sc_object $P144, "1310110653.02496", 18
    .const 'Sub' $P1301 = "53_1310110653.89398" 
    $P143."add_method"($P144, "hash", $P1301)
    .const 'Sub' $P1302 = "49_1310110653.89398" 
    $P142 = $P1302."get_lexinfo"()
    nqp_get_sc_object $P143, "1310110653.02496", 18
    $P142."set_static_lexpad_value"("$?PACKAGE", $P143)
    .const 'Sub' $P1303 = "49_1310110653.89398" 
    $P144 = $P1303."get_lexinfo"()
    $P144."finish_static_lexpad"()
    .const 'Sub' $P1304 = "49_1310110653.89398" 
    $P142 = $P1304."get_lexinfo"()
    nqp_get_sc_object $P143, "1310110653.02496", 18
    $P142."set_static_lexpad_value"("$?CLASS", $P143)
    .const 'Sub' $P1305 = "49_1310110653.89398" 
    $P144 = $P1305."get_lexinfo"()
    $P144."finish_static_lexpad"()
    nqp_get_sc_object $P142, "1310110653.02496", 18
    get_how $P143, $P142
    nqp_get_sc_object $P144, "1310110653.02496", 18
    nqp_get_sc_object $P145, "1310110653.02496", 5
    $P143."set_default_parent"($P144, $P145)
    nqp_get_sc_object $P142, "1310110653.02496", 18
    get_how $P143, $P142
    nqp_get_sc_object $P144, "1310110653.02496", 18
    $P143."compose"($P144)
  if_1246_end:
    nqp_get_sc_object $P142, "1310110653.02496", 0
    set_hll_global "GLOBAL", $P142
.end


.HLL "nqp"

.namespace []
.sub "open"  :subid("11_1310110653.89398") :outer("10_1310110653.89398")
    .param pmc param_1013
    .param pmc param_1014 :optional :named("r")
    .param int has_param_1014 :opt_flag
    .param pmc param_1015 :optional :named("w")
    .param int has_param_1015 :opt_flag
    .param pmc param_1016 :optional :named("a")
    .param int has_param_1016 :opt_flag
    .param pmc param_1017 :optional :named("bin")
    .param int has_param_1017 :opt_flag
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 162
    .lex "$filename", param_1013
    if has_param_1014, optparam_56
    new $P100, "Undef"
    set param_1014, $P100
  optparam_56:
    .lex "$r", param_1014
    if has_param_1015, optparam_57
    new $P101, "Undef"
    set param_1015, $P101
  optparam_57:
    .lex "$w", param_1015
    if has_param_1016, optparam_58
    new $P102, "Undef"
    set param_1016, $P102
  optparam_58:
    .lex "$a", param_1016
    if has_param_1017, optparam_59
    new $P103, "Undef"
    set param_1017, $P103
  optparam_59:
    .lex "$bin", param_1017
.annotate 'line', 163
    new $P104, "Undef"
    set $P1018, $P104
    .lex "$mode", $P1018
.annotate 'line', 164
    new $P105, "Undef"
    set $P1019, $P105
    .lex "$handle", $P1019
.annotate 'line', 163
    find_lex $P107, "$w"
    unless_null $P107, vivify_60
    new $P107, "Undef"
  vivify_60:
    if $P107, if_1020
    find_lex $P110, "$a"
    unless_null $P110, vivify_61
    new $P110, "Undef"
  vivify_61:
    if $P110, if_1021
    new $P112, "String"
    assign $P112, "r"
    set $P109, $P112
    goto if_1021_end
  if_1021:
    new $P111, "String"
    assign $P111, "wa"
    set $P109, $P111
  if_1021_end:
    set $P106, $P109
    goto if_1020_end
  if_1020:
    new $P108, "String"
    assign $P108, "w"
    set $P106, $P108
  if_1020_end:
    store_lex "$mode", $P106
.annotate 'line', 164
    new $P106, "FileHandle"
    store_lex "$handle", $P106
.annotate 'line', 165
    find_lex $P106, "$handle"
    unless_null $P106, vivify_62
    new $P106, "Undef"
  vivify_62:
    find_lex $P107, "$filename"
    unless_null $P107, vivify_63
    new $P107, "Undef"
  vivify_63:
    find_lex $P108, "$mode"
    unless_null $P108, vivify_64
    new $P108, "Undef"
  vivify_64:
    $P106."open"($P107, $P108)
.annotate 'line', 166
    find_lex $P106, "$handle"
    unless_null $P106, vivify_65
    new $P106, "Undef"
  vivify_65:
    find_lex $P108, "$bin"
    unless_null $P108, vivify_66
    new $P108, "Undef"
  vivify_66:
    if $P108, if_1022
    new $P110, "String"
    assign $P110, "utf8"
    set $P107, $P110
    goto if_1022_end
  if_1022:
    new $P109, "String"
    assign $P109, "binary"
    set $P107, $P109
  if_1022_end:
    $P106."encoding"($P107)
.annotate 'line', 162
    find_lex $P106, "$handle"
    unless_null $P106, vivify_67
    new $P106, "Undef"
  vivify_67:
    .return ($P106)
.end


.HLL "nqp"

.namespace []
.sub "close"  :subid("12_1310110653.89398") :outer("10_1310110653.89398")
    .param pmc param_1026
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 174
    .lex "$handle", param_1026
.annotate 'line', 175
    find_lex $P107, "$handle"
    unless_null $P107, vivify_68
    new $P107, "Undef"
  vivify_68:
    $P108 = $P107."close"()
.annotate 'line', 174
    .return ($P108)
.end


.HLL "nqp"

.namespace []
.sub "slurp"  :subid("13_1310110653.89398") :outer("10_1310110653.89398")
    .param pmc param_1030
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 182
    .lex "$filename", param_1030
.annotate 'line', 183
    new $P107, "Undef"
    set $P1031, $P107
    .lex "$handle", $P1031
.annotate 'line', 184
    new $P109, "Undef"
    set $P1032, $P109
    .lex "$contents", $P1032
.annotate 'line', 183
    find_lex $P110, "$filename"
    unless_null $P110, vivify_69
    new $P110, "Undef"
  vivify_69:
    $P111 = "open"($P110, 1 :named("r"))
    store_lex "$handle", $P111
.annotate 'line', 184
    find_lex $P110, "$handle"
    unless_null $P110, vivify_70
    new $P110, "Undef"
  vivify_70:
    $P111 = $P110."readall"()
    store_lex "$contents", $P111
.annotate 'line', 185
    find_lex $P110, "$handle"
    unless_null $P110, vivify_71
    new $P110, "Undef"
  vivify_71:
    $P110."close"()
.annotate 'line', 182
    find_lex $P110, "$contents"
    unless_null $P110, vivify_72
    new $P110, "Undef"
  vivify_72:
    .return ($P110)
.end


.HLL "nqp"

.namespace []
.sub "spew"  :subid("14_1310110653.89398") :outer("10_1310110653.89398")
    .param pmc param_1036
    .param pmc param_1037
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 194
    .lex "$filename", param_1036
    .lex "$contents", param_1037
.annotate 'line', 195
    new $P111, "Undef"
    set $P1038, $P111
    .lex "$handle", $P1038
    new $P112, "FileHandle"
    store_lex "$handle", $P112
.annotate 'line', 196
    find_lex $P112, "$handle"
    unless_null $P112, vivify_73
    new $P112, "Undef"
  vivify_73:
    find_lex $P113, "$filename"
    unless_null $P113, vivify_74
    new $P113, "Undef"
  vivify_74:
    $P112."open"($P113, "w")
.annotate 'line', 197
    find_lex $P112, "$handle"
    unless_null $P112, vivify_75
    new $P112, "Undef"
  vivify_75:
    find_lex $P113, "$contents"
    unless_null $P113, vivify_76
    new $P113, "Undef"
  vivify_76:
    $P112."print"($P113)
.annotate 'line', 198
    find_lex $P112, "$handle"
    unless_null $P112, vivify_77
    new $P112, "Undef"
  vivify_77:
    $P113 = $P112."close"()
.annotate 'line', 194
    .return ($P113)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "print"  :subid("15_1310110653.89398") :outer("10_1310110653.89398")
    .param pmc param_1042 :slurpy
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 201
    .const 'Sub' $P1045 = "16_1310110653.89398" 
    capture_lex $P1045
    .lex "@args", param_1042
.annotate 'line', 202
    find_lex $P1043, "@args"
    unless_null $P1043, vivify_78
    $P1043 = root_new ['parrot';'ResizablePMCArray']
  vivify_78:
    defined $I100, $P1043
    unless $I100, for_undef_79
    iter $P112, $P1043
    new $P115, 'ExceptionHandler'
    set_label $P115, loop1047_handler
    $P115."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P115
  loop1047_test:
    unless $P112, loop1047_done
    shift $P114, $P112
  loop1047_redo:
    .const 'Sub' $P1045 = "16_1310110653.89398" 
    capture_lex $P1045
    $P1045($P114)
  loop1047_next:
    goto loop1047_test
  loop1047_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P116, exception, 'type'
    eq $P116, .CONTROL_LOOP_NEXT, loop1047_next
    eq $P116, .CONTROL_LOOP_REDO, loop1047_redo
  loop1047_done:
    pop_eh 
  for_undef_79:
.annotate 'line', 201
    .return (1)
.end


.HLL "nqp"

.namespace []
.sub "_block1044"  :anon :subid("16_1310110653.89398") :outer("15_1310110653.89398")
    .param pmc param_1046
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 202
    .lex "$_", param_1046
.annotate 'line', 203
    find_lex $P115, "$_"
    unless_null $P115, vivify_80
    new $P115, "Undef"
  vivify_80:
    print $P115
.annotate 'line', 202
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "say"  :subid("17_1310110653.89398") :outer("10_1310110653.89398")
    .param pmc param_1051 :slurpy
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 208
    .lex "@args", param_1051
.annotate 'line', 209
    find_lex $P1052, "@args"
    unless_null $P1052, vivify_81
    $P1052 = root_new ['parrot';'ResizablePMCArray']
  vivify_81:
    $P112 = "print"($P1052 :flat, "\n")
.annotate 'line', 208
    .return ($P112)
.end


.HLL "nqp"

.namespace []
.sub "match"  :subid("18_1310110653.89398") :outer("10_1310110653.89398")
    .param pmc param_1056
    .param pmc param_1057
    .param pmc param_1058 :optional :named("global")
    .param int has_param_1058 :opt_flag
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 226
    .const 'Sub' $P1062 = "19_1310110653.89398" 
    capture_lex $P1062
    .lex "$text", param_1056
    .lex "$regex", param_1057
    if has_param_1058, optparam_82
    new $P114, "Undef"
    set param_1058, $P114
  optparam_82:
    .lex "$global", param_1058
.annotate 'line', 227
    new $P115, "Undef"
    set $P1059, $P115
    .lex "$match", $P1059
    find_lex $P116, "$regex"
    unless_null $P116, vivify_83
    new $P116, "Undef"
  vivify_83:
    find_lex $P117, "$text"
    unless_null $P117, vivify_84
    new $P117, "Undef"
  vivify_84:
    $P118 = $P116."ACCEPTS"($P117)
    store_lex "$match", $P118
.annotate 'line', 228
    find_lex $P117, "$global"
    unless_null $P117, vivify_85
    new $P117, "Undef"
  vivify_85:
    if $P117, if_1060
.annotate 'line', 236
    find_lex $P119, "$match"
    unless_null $P119, vivify_86
    new $P119, "Undef"
  vivify_86:
    set $P116, $P119
.annotate 'line', 228
    goto if_1060_end
  if_1060:
    .const 'Sub' $P1062 = "19_1310110653.89398" 
    capture_lex $P1062
    $P118 = $P1062()
    set $P116, $P118
  if_1060_end:
.annotate 'line', 226
    .return ($P116)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "_block1061"  :anon :subid("19_1310110653.89398") :outer("18_1310110653.89398")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 229
    $P1064 = root_new ['parrot';'ResizablePMCArray']
    set $P1063, $P1064
    .lex "@matches", $P1063
.annotate 'line', 228
    find_lex $P1065, "@matches"
    unless_null $P1065, vivify_87
    $P1065 = root_new ['parrot';'ResizablePMCArray']
  vivify_87:
.annotate 'line', 230
    new $P119, 'ExceptionHandler'
    set_label $P119, loop1067_handler
    $P119."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P119
  loop1067_test:
    find_lex $P118, "$match"
    unless_null $P118, vivify_88
    new $P118, "Undef"
  vivify_88:
    unless $P118, loop1067_done
  loop1067_redo:
.annotate 'line', 231
    find_lex $P1066, "@matches"
    unless_null $P1066, vivify_89
    $P1066 = root_new ['parrot';'ResizablePMCArray']
  vivify_89:
    find_lex $P119, "$match"
    unless_null $P119, vivify_90
    new $P119, "Undef"
  vivify_90:
    $P1066."push"($P119)
.annotate 'line', 232
    find_lex $P119, "$match"
    unless_null $P119, vivify_91
    new $P119, "Undef"
  vivify_91:
    $P120 = $P119."CURSOR"()
    find_lex $P121, "$text"
    unless_null $P121, vivify_92
    new $P121, "Undef"
  vivify_92:
    find_lex $P122, "$regex"
    unless_null $P122, vivify_93
    new $P122, "Undef"
  vivify_93:
    find_lex $P123, "$match"
    unless_null $P123, vivify_94
    new $P123, "Undef"
  vivify_94:
    $P124 = $P123."to"()
    $P125 = $P120."parse"($P121, $P122 :named("rule"), $P124 :named("c"))
    store_lex "$match", $P125
  loop1067_next:
.annotate 'line', 230
    goto loop1067_test
  loop1067_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P120, exception, 'type'
    eq $P120, .CONTROL_LOOP_NEXT, loop1067_next
    eq $P120, .CONTROL_LOOP_REDO, loop1067_redo
  loop1067_done:
    pop_eh 
.annotate 'line', 228
    find_lex $P1068, "@matches"
    unless_null $P1068, vivify_95
    $P1068 = root_new ['parrot';'ResizablePMCArray']
  vivify_95:
    .return ($P1068)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "subst"  :subid("20_1310110653.89398") :outer("10_1310110653.89398")
    .param pmc param_1072
    .param pmc param_1073
    .param pmc param_1074
    .param pmc param_1075 :optional :named("global")
    .param int has_param_1075 :opt_flag
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 248
    .const 'Sub' $P1085 = "21_1310110653.89398" 
    capture_lex $P1085
    .lex "$text", param_1072
    .lex "$regex", param_1073
    .lex "$repl", param_1074
    if has_param_1075, optparam_96
    new $P117, "Undef"
    set param_1075, $P117
  optparam_96:
    .lex "$global", param_1075
.annotate 'line', 249
    $P1077 = root_new ['parrot';'ResizablePMCArray']
    set $P1076, $P1077
    .lex "@matches", $P1076
.annotate 'line', 251
    new $P118, "Undef"
    set $P1078, $P118
    .lex "$is_code", $P1078
.annotate 'line', 252
    new $P119, "Undef"
    set $P1079, $P119
    .lex "$offset", $P1079
.annotate 'line', 253
    new $P120, "Undef"
    set $P1080, $P120
    .lex "$result", $P1080
.annotate 'line', 264
    new $P121, "Undef"
    set $P1081, $P121
    .lex "$chars", $P1081
.annotate 'line', 249
    find_lex $P123, "$global"
    unless_null $P123, vivify_97
    new $P123, "Undef"
  vivify_97:
    if $P123, if_1082
.annotate 'line', 250
    find_lex $P127, "$regex"
    unless_null $P127, vivify_98
    new $P127, "Undef"
  vivify_98:
    find_lex $P128, "$text"
    unless_null $P128, vivify_99
    new $P128, "Undef"
  vivify_99:
    $P129 = $P127."ACCEPTS"($P128)
    new $P130, "ResizablePMCArray"
    push $P130, $P129
.annotate 'line', 249
    set $P122, $P130
    goto if_1082_end
  if_1082:
    find_lex $P124, "$text"
    unless_null $P124, vivify_100
    new $P124, "Undef"
  vivify_100:
    find_lex $P125, "$regex"
    unless_null $P125, vivify_101
    new $P125, "Undef"
  vivify_101:
    $P126 = "match"($P124, $P125, 1 :named("global"))
    set $P122, $P126
  if_1082_end:
    store_lex "@matches", $P122
.annotate 'line', 251
    find_lex $P122, "$repl"
    unless_null $P122, vivify_102
    new $P122, "Undef"
  vivify_102:
    isa $I100, $P122, "Sub"
    new $P123, 'Integer'
    set $P123, $I100
    store_lex "$is_code", $P123
.annotate 'line', 252
    new $P122, "Integer"
    assign $P122, 0
    store_lex "$offset", $P122
.annotate 'line', 253
    new $P122, "StringBuilder"
    store_lex "$result", $P122
.annotate 'line', 255
    find_lex $P1083, "@matches"
    unless_null $P1083, vivify_103
    $P1083 = root_new ['parrot';'ResizablePMCArray']
  vivify_103:
    defined $I100, $P1083
    unless $I100, for_undef_104
    iter $P122, $P1083
    new $P125, 'ExceptionHandler'
    set_label $P125, loop1090_handler
    $P125."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P125
  loop1090_test:
    unless $P122, loop1090_done
    shift $P123, $P122
  loop1090_redo:
    .const 'Sub' $P1085 = "21_1310110653.89398" 
    capture_lex $P1085
    $P1085($P123)
  loop1090_next:
    goto loop1090_test
  loop1090_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P126, exception, 'type'
    eq $P126, .CONTROL_LOOP_NEXT, loop1090_next
    eq $P126, .CONTROL_LOOP_REDO, loop1090_redo
  loop1090_done:
    pop_eh 
  for_undef_104:
.annotate 'line', 264
    find_lex $P122, "$text"
    unless_null $P122, vivify_119
    new $P122, "Undef"
  vivify_119:
    set $S100, $P122
    length $I100, $S100
    new $P123, 'Integer'
    set $P123, $I100
    store_lex "$chars", $P123
.annotate 'line', 266
    find_lex $P122, "$chars"
    unless_null $P122, vivify_120
    new $P122, "Undef"
  vivify_120:
    set $N100, $P122
    find_lex $P123, "$offset"
    unless_null $P123, vivify_121
    new $P123, "Undef"
  vivify_121:
    set $N101, $P123
    isgt $I100, $N100, $N101
    unless $I100, if_1091_end
.annotate 'line', 265
    find_lex $P124, "$result"
    unless_null $P124, vivify_122
    new $P124, "Undef"
  vivify_122:
    find_lex $P125, "$text"
    unless_null $P125, vivify_123
    new $P125, "Undef"
  vivify_123:
    set $S100, $P125
    find_lex $P126, "$offset"
    unless_null $P126, vivify_124
    new $P126, "Undef"
  vivify_124:
    set $I101, $P126
    find_lex $P127, "$chars"
    unless_null $P127, vivify_125
    new $P127, "Undef"
  vivify_125:
    set $I102, $P127
    substr $S101, $S100, $I101, $I102
    push $P124, $S101
  if_1091_end:
.annotate 'line', 268
    find_lex $P122, "$result"
    unless_null $P122, vivify_126
    new $P122, "Undef"
  vivify_126:
    set $S100, $P122
.annotate 'line', 248
    .return ($S100)
.end


.HLL "nqp"

.namespace []
.sub "_block1084"  :anon :subid("21_1310110653.89398") :outer("20_1310110653.89398")
    .param pmc param_1086
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 255
    .lex "$match", param_1086
.annotate 'line', 256
    find_lex $P125, "$match"
    unless_null $P125, vivify_105
    new $P125, "Undef"
  vivify_105:
    if $P125, if_1087
    set $P124, $P125
    goto if_1087_end
  if_1087:
.annotate 'line', 258
    find_lex $P126, "$match"
    unless_null $P126, vivify_106
    new $P126, "Undef"
  vivify_106:
    $N100 = $P126."from"()
    find_lex $P127, "$offset"
    unless_null $P127, vivify_107
    new $P127, "Undef"
  vivify_107:
    set $N101, $P127
    isgt $I101, $N100, $N101
    unless $I101, if_1088_end
.annotate 'line', 257
    find_lex $P128, "$result"
    unless_null $P128, vivify_108
    new $P128, "Undef"
  vivify_108:
    find_lex $P129, "$text"
    unless_null $P129, vivify_109
    new $P129, "Undef"
  vivify_109:
    set $S100, $P129
    find_lex $P130, "$offset"
    unless_null $P130, vivify_110
    new $P130, "Undef"
  vivify_110:
    set $I102, $P130
    find_lex $P131, "$match"
    unless_null $P131, vivify_111
    new $P131, "Undef"
  vivify_111:
    $P132 = $P131."from"()
    find_lex $P133, "$offset"
    unless_null $P133, vivify_112
    new $P133, "Undef"
  vivify_112:
    sub $P134, $P132, $P133
    set $I103, $P134
    substr $S101, $S100, $I102, $I103
    push $P128, $S101
  if_1088_end:
.annotate 'line', 259
    find_lex $P126, "$result"
    unless_null $P126, vivify_113
    new $P126, "Undef"
  vivify_113:
    find_lex $P128, "$is_code"
    unless_null $P128, vivify_114
    new $P128, "Undef"
  vivify_114:
    if $P128, if_1089
    find_lex $P132, "$repl"
    unless_null $P132, vivify_115
    new $P132, "Undef"
  vivify_115:
    set $P127, $P132
    goto if_1089_end
  if_1089:
    find_lex $P129, "$repl"
    unless_null $P129, vivify_116
    new $P129, "Undef"
  vivify_116:
    find_lex $P130, "$match"
    unless_null $P130, vivify_117
    new $P130, "Undef"
  vivify_117:
    $P131 = $P129($P130)
    set $P127, $P131
  if_1089_end:
    push $P126, $P127
.annotate 'line', 260
    find_lex $P126, "$match"
    unless_null $P126, vivify_118
    new $P126, "Undef"
  vivify_118:
    $P127 = $P126."to"()
    store_lex "$offset", $P127
.annotate 'line', 256
    set $P124, $P127
  if_1087_end:
.annotate 'line', 255
    .return ($P124)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "hash"  :subid("22_1310110653.89398") :outer("10_1310110653.89398")
    .param pmc param_1095 :slurpy :named
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 274
    .const 'Sub' $P1101 = "23_1310110653.89398" 
    capture_lex $P1101
    .lex "%new", param_1095
.annotate 'line', 275
    $P1097 = root_new ['parrot';'Hash']
    set $P1096, $P1097
    .lex "%h", $P1096
.annotate 'line', 274
    find_lex $P1098, "%h"
    unless_null $P1098, vivify_127
    $P1098 = root_new ['parrot';'Hash']
  vivify_127:
.annotate 'line', 276
    find_lex $P1099, "%new"
    unless_null $P1099, vivify_128
    $P1099 = root_new ['parrot';'Hash']
  vivify_128:
    defined $I100, $P1099
    unless $I100, for_undef_129
    iter $P122, $P1099
    new $P124, 'ExceptionHandler'
    set_label $P124, loop1105_handler
    $P124."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P124
  loop1105_test:
    unless $P122, loop1105_done
    shift $P123, $P122
  loop1105_redo:
    .const 'Sub' $P1101 = "23_1310110653.89398" 
    capture_lex $P1101
    $P1101($P123)
  loop1105_next:
    goto loop1105_test
  loop1105_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P126, exception, 'type'
    eq $P126, .CONTROL_LOOP_NEXT, loop1105_next
    eq $P126, .CONTROL_LOOP_REDO, loop1105_redo
  loop1105_done:
    pop_eh 
  for_undef_129:
.annotate 'line', 274
    find_lex $P1106, "%h"
    unless_null $P1106, vivify_135
    $P1106 = root_new ['parrot';'Hash']
  vivify_135:
    .return ($P1106)
.end


.HLL "nqp"

.namespace []
.sub "_block1100"  :anon :subid("23_1310110653.89398") :outer("22_1310110653.89398")
    .param pmc param_1102
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 276
    .lex "$_", param_1102
.annotate 'line', 277
    find_lex $P124, "$_"
    unless_null $P124, vivify_130
    new $P124, "Undef"
  vivify_130:
    find_lex $P1103, "%new"
    unless_null $P1103, vivify_131
    $P1103 = root_new ['parrot';'Hash']
  vivify_131:
    set $P125, $P1103[$P124]
    unless_null $P125, vivify_132
    new $P125, "Undef"
  vivify_132:
    find_lex $P126, "$_"
    unless_null $P126, vivify_133
    new $P126, "Undef"
  vivify_133:
    find_lex $P1104, "%h"
    unless_null $P1104, vivify_134
    $P1104 = root_new ['parrot';'Hash']
    store_lex "%h", $P1104
  vivify_134:
    set $P1104[$P126], $P125
.annotate 'line', 276
    .return ($P125)
.end


.HLL "nqp"

.namespace []
.sub "plan"  :subid("24_1310110653.89398") :outer("10_1310110653.89398")
    .param pmc param_1113
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 287
    .lex "$quantity", param_1113
.annotate 'line', 288
    new $P125, 'String'
    set $P125, "1.."
    find_lex $P126, "$quantity"
    unless_null $P126, vivify_136
    new $P126, "Undef"
  vivify_136:
    concat $P127, $P125, $P126
    $P128 = "say"($P127)
.annotate 'line', 287
    .return ($P128)
.end


.HLL "nqp"

.namespace []
.sub "ok"  :subid("25_1310110653.89398") :outer("10_1310110653.89398")
    .param pmc param_1117
    .param pmc param_1118 :optional
    .param int has_param_1118 :opt_flag
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 291
    .lex "$condition", param_1117
    if has_param_1118, optparam_137
    new $P125, "Undef"
    set param_1118, $P125
  optparam_137:
    .lex "$desc", param_1118
.annotate 'line', 292
    find_lex $P126, "$test_counter"
    unless_null $P126, vivify_138
    new $P126, "Undef"
  vivify_138:
    add $P127, $P126, 1
    store_lex "$test_counter", $P127
.annotate 'line', 294
    find_lex $P126, "$condition"
    unless_null $P126, vivify_139
    new $P126, "Undef"
  vivify_139:
    if $P126, unless_1119_end
.annotate 'line', 295
    "print"("not ")
  unless_1119_end:
.annotate 'line', 297
    new $P126, 'String'
    set $P126, "ok "
    find_lex $P127, "$test_counter"
    unless_null $P127, vivify_140
    new $P127, "Undef"
  vivify_140:
    concat $P129, $P126, $P127
    "print"($P129)
.annotate 'line', 298
    find_lex $P126, "$desc"
    unless_null $P126, vivify_141
    new $P126, "Undef"
  vivify_141:
    unless $P126, if_1120_end
.annotate 'line', 299
    new $P127, 'String'
    set $P127, " - "
    find_lex $P129, "$desc"
    unless_null $P129, vivify_142
    new $P129, "Undef"
  vivify_142:
    concat $P130, $P127, $P129
    "print"($P130)
  if_1120_end:
.annotate 'line', 301
    find_lex $P126, "$test_counter"
    unless_null $P126, vivify_143
    new $P126, "Undef"
  vivify_143:
    set $N100, $P126
    find_lex $P127, "$todo_upto_test_num"
    unless_null $P127, vivify_144
    new $P127, "Undef"
  vivify_144:
    set $N101, $P127
    isle $I100, $N100, $N101
    unless $I100, if_1121_end
.annotate 'line', 302
    find_lex $P129, "$todo_reason"
    unless_null $P129, vivify_145
    new $P129, "Undef"
  vivify_145:
    "print"($P129)
  if_1121_end:
.annotate 'line', 304
    "print"("\n")
.annotate 'line', 306
    find_lex $P127, "$condition"
    unless_null $P127, vivify_146
    new $P127, "Undef"
  vivify_146:
    if $P127, if_1122
    new $P130, "Integer"
    assign $P130, 0
    set $P126, $P130
    goto if_1122_end
  if_1122:
    new $P129, "Integer"
    assign $P129, 1
    set $P126, $P129
  if_1122_end:
.annotate 'line', 291
    .return ($P126)
.end


.HLL "nqp"

.namespace []
.sub "todo"  :subid("26_1310110653.89398") :outer("10_1310110653.89398")
    .param pmc param_1126
    .param pmc param_1127
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 309
    .lex "$reason", param_1126
    .lex "$count", param_1127
.annotate 'line', 310
    find_lex $P127, "$test_counter"
    unless_null $P127, vivify_147
    new $P127, "Undef"
  vivify_147:
    find_lex $P129, "$count"
    unless_null $P129, vivify_148
    new $P129, "Undef"
  vivify_148:
    add $P130, $P127, $P129
    store_lex "$todo_upto_test_num", $P130
.annotate 'line', 311
    new $P127, 'String'
    set $P127, "# TODO "
    find_lex $P129, "$reason"
    unless_null $P129, vivify_149
    new $P129, "Undef"
  vivify_149:
    concat $P130, $P127, $P129
    store_lex "$todo_reason", $P130
.annotate 'line', 309
    .return ($P130)
.end


.HLL "nqp"

.namespace []
.sub "skip"  :subid("27_1310110653.89398") :outer("10_1310110653.89398")
    .param pmc param_1131
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 314
    .lex "$desc", param_1131
.annotate 'line', 315
    find_lex $P127, "$test_counter"
    unless_null $P127, vivify_150
    new $P127, "Undef"
  vivify_150:
    add $P129, $P127, 1
    store_lex "$test_counter", $P129
.annotate 'line', 316
    new $P127, 'String'
    set $P127, "ok "
    find_lex $P129, "$test_counter"
    unless_null $P129, vivify_151
    new $P129, "Undef"
  vivify_151:
    concat $P131, $P127, $P129
    concat $P132, $P131, " # SKIP "
    find_lex $P133, "$desc"
    unless_null $P133, vivify_152
    new $P133, "Undef"
  vivify_152:
    concat $P134, $P132, $P133
    concat $P135, $P134, "\n"
    $P136 = "say"($P135)
.annotate 'line', 314
    .return ($P136)
.end


.HLL "nqp"

.namespace []
.sub "_block1133"  :anon :subid("28_1310110653.89398") :outer("10_1310110653.89398")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 12
    .lex "$?PACKAGE", $P1135
    .lex "$?CLASS", $P1136
.annotate 'line', 13
    find_lex $P127, "$?PACKAGE"
    get_who $P129, $P127
    set $P133, $P129["NQPModuleHOW"]
    unless_null $P133, vivify_153
    get_hll_global $P131, "GLOBAL"
    get_who $P132, $P131
    set $P133, $P132["NQPModuleHOW"]
  vivify_153:
    find_lex $P134, "$?PACKAGE"
    unless_null $P134, vivify_154
    new $P134, "Undef"
    store_lex "$?PACKAGE", $P134
  vivify_154:
    get_who $P135, $P134
    set $P135["module"], $P133
.annotate 'line', 14
    find_lex $P127, "$?PACKAGE"
    get_who $P129, $P127
    set $P133, $P129["NQPClassHOW"]
    unless_null $P133, vivify_155
    get_hll_global $P131, "GLOBAL"
    get_who $P132, $P131
    set $P133, $P132["NQPClassHOW"]
  vivify_155:
    find_lex $P134, "$?PACKAGE"
    unless_null $P134, vivify_156
    new $P134, "Undef"
    store_lex "$?PACKAGE", $P134
  vivify_156:
    get_who $P135, $P134
    set $P135["class"], $P133
.annotate 'line', 15
    find_lex $P127, "$?PACKAGE"
    get_who $P129, $P127
    set $P133, $P129["NQPAttribute"]
    unless_null $P133, vivify_157
    get_hll_global $P131, "GLOBAL"
    get_who $P132, $P131
    set $P133, $P132["NQPAttribute"]
  vivify_157:
    find_lex $P134, "$?PACKAGE"
    unless_null $P134, vivify_158
    new $P134, "Undef"
    store_lex "$?PACKAGE", $P134
  vivify_158:
    get_who $P135, $P134
    set $P135["class-attr"], $P133
.annotate 'line', 16
    find_lex $P127, "$?PACKAGE"
    get_who $P129, $P127
    set $P133, $P129["NQPClassHOW"]
    unless_null $P133, vivify_159
    get_hll_global $P131, "GLOBAL"
    get_who $P132, $P131
    set $P133, $P132["NQPClassHOW"]
  vivify_159:
    find_lex $P134, "$?PACKAGE"
    unless_null $P134, vivify_160
    new $P134, "Undef"
    store_lex "$?PACKAGE", $P134
  vivify_160:
    get_who $P135, $P134
    set $P135["grammar"], $P133
.annotate 'line', 17
    find_lex $P127, "$?PACKAGE"
    get_who $P129, $P127
    set $P133, $P129["NQPAttribute"]
    unless_null $P133, vivify_161
    get_hll_global $P131, "GLOBAL"
    get_who $P132, $P131
    set $P133, $P132["NQPAttribute"]
  vivify_161:
    find_lex $P134, "$?PACKAGE"
    unless_null $P134, vivify_162
    new $P134, "Undef"
    store_lex "$?PACKAGE", $P134
  vivify_162:
    get_who $P135, $P134
    set $P135["grammar-attr"], $P133
.annotate 'line', 18
    find_lex $P127, "$?PACKAGE"
    get_who $P129, $P127
    set $P133, $P129["NQPParametricRoleHOW"]
    unless_null $P133, vivify_163
    get_hll_global $P131, "GLOBAL"
    get_who $P132, $P131
    set $P133, $P132["NQPParametricRoleHOW"]
  vivify_163:
    find_lex $P134, "$?PACKAGE"
    unless_null $P134, vivify_164
    new $P134, "Undef"
    store_lex "$?PACKAGE", $P134
  vivify_164:
    get_who $P135, $P134
    set $P135["role"], $P133
.annotate 'line', 19
    find_lex $P127, "$?PACKAGE"
    get_who $P129, $P127
    set $P133, $P129["NQPAttribute"]
    unless_null $P133, vivify_165
    get_hll_global $P131, "GLOBAL"
    get_who $P132, $P131
    set $P133, $P132["NQPAttribute"]
  vivify_165:
    find_lex $P134, "$?PACKAGE"
    unless_null $P134, vivify_166
    new $P134, "Undef"
    store_lex "$?PACKAGE", $P134
  vivify_166:
    get_who $P135, $P134
    set $P135["role-attr"], $P133
.annotate 'line', 20
    find_lex $P127, "$?PACKAGE"
    get_who $P129, $P127
    set $P133, $P129["NQPNativeHOW"]
    unless_null $P133, vivify_167
    get_hll_global $P131, "GLOBAL"
    get_who $P132, $P131
    set $P133, $P132["NQPNativeHOW"]
  vivify_167:
    find_lex $P134, "$?PACKAGE"
    unless_null $P134, vivify_168
    new $P134, "Undef"
    store_lex "$?PACKAGE", $P134
  vivify_168:
    get_who $P135, $P134
    set $P135["native"], $P133
.annotate 'line', 12
    .return ($P133)
.end


.HLL "nqp"

.namespace []
.sub "_block1137"  :anon :subid("29_1310110653.89398") :outer("10_1310110653.89398")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 23
    .lex "$?PACKAGE", $P1139
    .lex "$?CLASS", $P1140
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block1141"  :anon :subid("30_1310110653.89398") :outer("10_1310110653.89398")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 25
    .lex "$?PACKAGE", $P1143
    .lex "$?CLASS", $P1144
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block1145"  :anon :subid("31_1310110653.89398") :outer("10_1310110653.89398")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 27
    .lex "$?PACKAGE", $P1147
    .lex "$?CLASS", $P1148
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block1149"  :anon :subid("32_1310110653.89398") :outer("10_1310110653.89398")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 30
    .const 'Sub' $P1206 = "46_1310110653.89398" 
    capture_lex $P1206
    .const 'Sub' $P1203 = "45_1310110653.89398" 
    capture_lex $P1203
    .const 'Sub' $P1201 = "44_1310110653.89398" 
    capture_lex $P1201
    .const 'Sub' $P1196 = "43_1310110653.89398" 
    capture_lex $P1196
    .const 'Sub' $P1193 = "42_1310110653.89398" 
    capture_lex $P1193
    .const 'Sub' $P1190 = "41_1310110653.89398" 
    capture_lex $P1190
    .const 'Sub' $P1188 = "40_1310110653.89398" 
    capture_lex $P1188
    .const 'Sub' $P1184 = "39_1310110653.89398" 
    capture_lex $P1184
    .const 'Sub' $P1170 = "37_1310110653.89398" 
    capture_lex $P1170
    .const 'Sub' $P1161 = "35_1310110653.89398" 
    capture_lex $P1161
    .const 'Sub' $P1155 = "34_1310110653.89398" 
    capture_lex $P1155
    .const 'Sub' $P1153 = "33_1310110653.89398" 
    capture_lex $P1153
    .lex "$?PACKAGE", $P1151
    .lex "$?CLASS", $P1152
.annotate 'line', 79
    .const 'Sub' $P1206 = "46_1310110653.89398" 
    newclosure $P1225, $P1206
.annotate 'line', 30
    .return ($P1225)
.end


.HLL "nqp"

.namespace []
.sub "CREATE" :anon :subid("33_1310110653.89398") :outer("32_1310110653.89398")
    .param pmc param_1154
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 31
    .lex "self", param_1154
.annotate 'line', 32
    find_lex $P127, "self"
    repr_instance_of $P129, $P127
.annotate 'line', 31
    .return ($P129)
.end


.HLL "nqp"

.namespace []
.sub "bless" :anon :subid("34_1310110653.89398") :outer("32_1310110653.89398")
    .param pmc param_1156
    .param pmc param_1158 :slurpy :named
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 35
    .lex "$self", param_1156
    find_lex $P127, "$self"
    set $P1157, $P127
    .lex "self", $P1157
    .lex "%attributes", param_1158
.annotate 'line', 36
    new $P129, "Undef"
    set $P1159, $P129
    .lex "$instance", $P1159
    find_lex $P131, "self"
    $P132 = $P131."CREATE"()
    store_lex "$instance", $P132
.annotate 'line', 37
    find_lex $P131, "$instance"
    unless_null $P131, vivify_169
    new $P131, "Undef"
  vivify_169:
    find_lex $P1160, "%attributes"
    unless_null $P1160, vivify_170
    $P1160 = root_new ['parrot';'Hash']
  vivify_170:
    $P131."BUILDALL"($P1160 :flat)
.annotate 'line', 35
    find_lex $P131, "$instance"
    unless_null $P131, vivify_171
    new $P131, "Undef"
  vivify_171:
    .return ($P131)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "BUILDALL" :anon :subid("35_1310110653.89398") :outer("32_1310110653.89398")
    .param pmc param_1162
    .param pmc param_1164 :slurpy :named
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 41
    .const 'Sub' $P1166 = "36_1310110653.89398" 
    capture_lex $P1166
    .lex "$self", param_1162
    find_lex $P127, "$self"
    set $P1163, $P127
    .lex "self", $P1163
    .lex "%attributes", param_1164
.annotate 'line', 42
    find_lex $P131, "$self"
    unless_null $P131, vivify_172
    new $P131, "Undef"
  vivify_172:
    get_how $P132, $P131
    find_lex $P133, "$self"
    unless_null $P133, vivify_173
    new $P133, "Undef"
  vivify_173:
    $P134 = $P132."parents"($P133)
    defined $I100, $P134
    unless $I100, for_undef_174
    iter $P129, $P134
    new $P137, 'ExceptionHandler'
    set_label $P137, loop1169_handler
    $P137."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P137
  loop1169_test:
    unless $P129, loop1169_done
    shift $P135, $P129
  loop1169_redo:
    .const 'Sub' $P1166 = "36_1310110653.89398" 
    capture_lex $P1166
    $P1166($P135)
  loop1169_next:
    goto loop1169_test
  loop1169_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P138, exception, 'type'
    eq $P138, .CONTROL_LOOP_NEXT, loop1169_next
    eq $P138, .CONTROL_LOOP_REDO, loop1169_redo
  loop1169_done:
    pop_eh 
  for_undef_174:
.annotate 'line', 41
    .return ($P129)
.end


.HLL "nqp"

.namespace []
.sub "_block1165"  :anon :subid("36_1310110653.89398") :outer("35_1310110653.89398")
    .param pmc param_1167
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 42
    .lex "$class", param_1167
.annotate 'line', 43
    find_lex $P137, "$self"
    unless_null $P137, vivify_175
    new $P137, "Undef"
  vivify_175:
    find_lex $P138, "$class"
    unless_null $P138, vivify_176
    new $P138, "Undef"
  vivify_176:
    find_lex $P1168, "%attributes"
    unless_null $P1168, vivify_177
    $P1168 = root_new ['parrot';'Hash']
  vivify_177:
    $P139 = $P137."BUILD_MAGIC"($P138, $P1168 :flat)
.annotate 'line', 42
    .return ($P139)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "BUILD_MAGIC" :anon :subid("37_1310110653.89398") :outer("32_1310110653.89398")
    .param pmc param_1171
    .param pmc param_1173
    .param pmc param_1174 :slurpy :named
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 47
    .const 'Sub' $P1176 = "38_1310110653.89398" 
    capture_lex $P1176
    .lex "$self", param_1171
    find_lex $P127, "$self"
    set $P1172, $P127
    .lex "self", $P1172
    .lex "$type", param_1173
    .lex "%attributes", param_1174
.annotate 'line', 48
    find_lex $P131, "$type"
    unless_null $P131, vivify_178
    new $P131, "Undef"
  vivify_178:
    get_how $P132, $P131
    find_lex $P133, "$type"
    unless_null $P133, vivify_179
    new $P133, "Undef"
  vivify_179:
    $P134 = $P132."attributes"($P133, 1 :named("local"))
    defined $I100, $P134
    unless $I100, for_undef_180
    iter $P129, $P134
    new $P140, 'ExceptionHandler'
    set_label $P140, loop1183_handler
    $P140."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P140
  loop1183_test:
    unless $P129, loop1183_done
    shift $P135, $P129
  loop1183_redo:
    .const 'Sub' $P1176 = "38_1310110653.89398" 
    capture_lex $P1176
    $P1176($P135)
  loop1183_next:
    goto loop1183_test
  loop1183_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P141, exception, 'type'
    eq $P141, .CONTROL_LOOP_NEXT, loop1183_next
    eq $P141, .CONTROL_LOOP_REDO, loop1183_redo
  loop1183_done:
    pop_eh 
  for_undef_180:
.annotate 'line', 47
    .return ($P129)
.end


.HLL "nqp"

.namespace []
.sub "_block1175"  :anon :subid("38_1310110653.89398") :outer("37_1310110653.89398")
    .param pmc param_1179
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 49
    new $P137, "Undef"
    set $P1177, $P137
    .lex "$name", $P1177
.annotate 'line', 50
    new $P138, "Undef"
    set $P1178, $P138
    .lex "$shortname", $P1178
    .lex "$_", param_1179
.annotate 'line', 49
    find_lex $P139, "$_"
    unless_null $P139, vivify_181
    new $P139, "Undef"
  vivify_181:
    $P140 = $P139."name"()
    store_lex "$name", $P140
.annotate 'line', 50
    find_lex $P139, "$name"
    unless_null $P139, vivify_182
    new $P139, "Undef"
  vivify_182:
    set $S101, $P139
    substr $S102, $S101, 2
    new $P140, 'String'
    set $P140, $S102
    store_lex "$shortname", $P140
.annotate 'line', 51
    find_lex $P140, "$shortname"
    unless_null $P140, vivify_183
    new $P140, "Undef"
  vivify_183:
    find_lex $P1181, "%attributes"
    unless_null $P1181, vivify_184
    $P1181 = root_new ['parrot';'Hash']
  vivify_184:
    exists $I101, $P1181[$P140]
    if $I101, if_1180
    new $P139, 'Integer'
    set $P139, $I101
    goto if_1180_end
  if_1180:
.annotate 'line', 52
    find_lex $P141, "$self"
    unless_null $P141, vivify_185
    new $P141, "Undef"
  vivify_185:
    find_lex $P142, "$type"
    unless_null $P142, vivify_186
    new $P142, "Undef"
  vivify_186:
    find_lex $P143, "$name"
    unless_null $P143, vivify_187
    new $P143, "Undef"
  vivify_187:
    set $S101, $P143
    find_lex $P144, "$shortname"
    unless_null $P144, vivify_188
    new $P144, "Undef"
  vivify_188:
    find_lex $P1182, "%attributes"
    unless_null $P1182, vivify_189
    $P1182 = root_new ['parrot';'Hash']
  vivify_189:
    set $P145, $P1182[$P144]
    unless_null $P145, vivify_190
    new $P145, "Undef"
  vivify_190:
    setattribute $P141, $P142, $S101, $P145
  if_1180_end:
.annotate 'line', 48
    .return ($P139)
.end


.HLL "nqp"

.namespace []
.sub "new" :anon :subid("39_1310110653.89398") :outer("32_1310110653.89398")
    .param pmc param_1185
    .param pmc param_1186 :slurpy :named
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 57
    .lex "self", param_1185
    .lex "%attributes", param_1186
.annotate 'line', 58
    find_lex $P127, "self"
    find_lex $P1187, "%attributes"
    unless_null $P1187, vivify_191
    $P1187 = root_new ['parrot';'Hash']
  vivify_191:
    $P129 = $P127."bless"($P1187 :flat)
.annotate 'line', 57
    .return ($P129)
.end


.HLL "nqp"

.namespace []
.sub "Str" :instanceof("DispatcherSub"):anon :subid("40_1310110653.89398") :outer("32_1310110653.89398")
    .param pmc param_1189
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 30
    .lex "self", param_1189
    multi_dispatch_over_lexical_candidates $P127
    .return ($P127)
.end


.HLL "nqp"

.namespace []
.sub "Str" :anon :subid("41_1310110653.89398") :outer("32_1310110653.89398")
    .param pmc param_1191
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 62
    .lex "$self", param_1191
    find_lex $P127, "$self"
    set $P1192, $P127
    .lex "self", $P1192
.annotate 'line', 63
    find_lex $P129, "self"
    get_how $P131, $P129
    find_lex $P132, "self"
    $P133 = $P131."name"($P132)
    concat $P134, $P133, "()"
.annotate 'line', 62
    .return ($P134)
.end


.HLL "nqp"

.namespace []
.sub "ACCEPTS" :instanceof("DispatcherSub"):anon :subid("42_1310110653.89398") :outer("32_1310110653.89398")
    .param pmc param_1194
    .param pmc param_1195
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 30
    .lex "self", param_1194
.annotate 'line', 66
    .lex "$topic", param_1195
.annotate 'line', 30
    multi_dispatch_over_lexical_candidates $P127
    .return ($P127)
.end


.HLL "nqp"

.namespace []
.sub "ACCEPTS" :anon :subid("43_1310110653.89398") :outer("32_1310110653.89398")
    .param pmc param_1197
    .param pmc param_1199
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 67
    .lex "$self", param_1197
    find_lex $P127, "$self"
    set $P1198, $P127
    .lex "self", $P1198
    .lex "$topic", param_1199
.annotate 'line', 68
    find_lex $P129, "$topic"
    unless_null $P129, vivify_192
    new $P129, "Undef"
  vivify_192:
    find_lex $P131, "self"
    get_what $P132, $P131
    type_check $I100, $P129, $P132
.annotate 'line', 67
    .return ($I100)
.end


.HLL "nqp"

.namespace []
.sub "_block1200"  :anon :subid("44_1310110653.89398") :outer("32_1310110653.89398")
    .param pmc param_1202
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 71
    .lex "self", param_1202
.annotate 'line', 72
    find_lex $P127, "self"
    repr_defined $I100, $P127
.annotate 'line', 71
    .return ($I100)
.end


.HLL "nqp"

.namespace []
.sub "isa" :anon :subid("45_1310110653.89398") :outer("32_1310110653.89398")
    .param pmc param_1204
    .param pmc param_1205
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 75
    .lex "self", param_1204
    .lex "$type", param_1205
.annotate 'line', 76
    find_lex $P127, "self"
    get_how $P129, $P127
    find_lex $P131, "self"
    find_lex $P132, "$type"
    unless_null $P132, vivify_193
    new $P132, "Undef"
  vivify_193:
    $P133 = $P129."isa"($P131, $P132)
.annotate 'line', 75
    .return ($P133)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "__dump" :anon :subid("46_1310110653.89398") :outer("32_1310110653.89398")
    .param pmc param_1207
    .param pmc param_1208
    .param pmc param_1209
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 79
    .const 'Sub' $P1213 = "47_1310110653.89398" 
    capture_lex $P1213
    .lex "self", param_1207
    .lex "$dumper", param_1208
    .lex "$label", param_1209
.annotate 'line', 80
    new $P127, "Undef"
    set $P1210, $P127
    .lex "$subindent", $P1210
.annotate 'line', 81
    new $P129, "Undef"
    set $P1211, $P129
    .lex "$indent", $P1211
.annotate 'line', 79
    find_lex $P131, "$subindent"
    unless_null $P131, vivify_194
    new $P131, "Undef"
  vivify_194:
    find_lex $P131, "$indent"
    unless_null $P131, vivify_195
    new $P131, "Undef"
  vivify_195:
.annotate 'line', 82

            $P0 = find_lex '$dumper'
            ($P0, $P1) = $P0.'newIndent'()
            store_lex '$subindent', $P0
            store_lex '$indent', $P1
        
.annotate 'line', 88
    "print"("{")
.annotate 'line', 89
    find_lex $P132, "self"
    get_how $P133, $P132
    find_lex $P134, "self"
    $P135 = $P133."parents"($P134)
    defined $I100, $P135
    unless $I100, for_undef_196
    iter $P131, $P135
    new $P139, 'ExceptionHandler'
    set_label $P139, loop1224_handler
    $P139."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P139
  loop1224_test:
    unless $P131, loop1224_done
    shift $P137, $P131
  loop1224_redo:
    .const 'Sub' $P1213 = "47_1310110653.89398" 
    capture_lex $P1213
    $P1213($P137)
  loop1224_next:
    goto loop1224_test
  loop1224_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P140, exception, 'type'
    eq $P140, .CONTROL_LOOP_NEXT, loop1224_next
    eq $P140, .CONTROL_LOOP_REDO, loop1224_redo
  loop1224_done:
    pop_eh 
  for_undef_196:
.annotate 'line', 108
    find_lex $P131, "$indent"
    unless_null $P131, vivify_225
    new $P131, "Undef"
  vivify_225:
    $P132 = "print"("\n", $P131, "}")
.annotate 'line', 79
    .return ($P132)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "_block1212"  :anon :subid("47_1310110653.89398") :outer("46_1310110653.89398")
    .param pmc param_1214
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 89
    .const 'Sub' $P1216 = "48_1310110653.89398" 
    capture_lex $P1216
    .lex "$type", param_1214
.annotate 'line', 90
    find_lex $P139, "$type"
    unless_null $P139, vivify_197
    new $P139, "Undef"
  vivify_197:
    get_how $P140, $P139
    find_lex $P141, "$type"
    unless_null $P141, vivify_198
    new $P141, "Undef"
  vivify_198:
    $P142 = $P140."attributes"($P141, 1 :named("local"))
    defined $I101, $P142
    unless $I101, for_undef_199
    iter $P138, $P142
    new $P147, 'ExceptionHandler'
    set_label $P147, loop1223_handler
    $P147."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P147
  loop1223_test:
    unless $P138, loop1223_done
    shift $P143, $P138
  loop1223_redo:
    .const 'Sub' $P1216 = "48_1310110653.89398" 
    capture_lex $P1216
    $P1216($P143)
  loop1223_next:
    goto loop1223_test
  loop1223_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P148, exception, 'type'
    eq $P148, .CONTROL_LOOP_NEXT, loop1223_next
    eq $P148, .CONTROL_LOOP_REDO, loop1223_redo
  loop1223_done:
    pop_eh 
  for_undef_199:
.annotate 'line', 89
    .return ($P138)
.end


.HLL "nqp"

.namespace []
.sub "_block1215"  :anon :subid("48_1310110653.89398") :outer("47_1310110653.89398")
    .param pmc param_1219
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 91
    new $P144, "Undef"
    set $P1217, $P144
    .lex "$name", $P1217
.annotate 'line', 92
    new $P145, "Undef"
    set $P1218, $P145
    .lex "$attrtype", $P1218
    .lex "$_", param_1219
.annotate 'line', 91
    find_lex $P146, "$_"
    unless_null $P146, vivify_200
    new $P146, "Undef"
  vivify_200:
    $P147 = $P146."name"()
    store_lex "$name", $P147
.annotate 'line', 92
    find_lex $P146, "$_"
    unless_null $P146, vivify_201
    new $P146, "Undef"
  vivify_201:
    $P147 = $P146."type"()
    store_lex "$attrtype", $P147
.annotate 'line', 93
    find_lex $P146, "$subindent"
    unless_null $P146, vivify_202
    new $P146, "Undef"
  vivify_202:
    find_lex $P147, "$type"
    unless_null $P147, vivify_203
    new $P147, "Undef"
  vivify_203:
    get_how $P148, $P147
    find_lex $P149, "$type"
    unless_null $P149, vivify_204
    new $P149, "Undef"
  vivify_204:
    $P150 = $P148."name"($P149)
    find_lex $P151, "$name"
    unless_null $P151, vivify_205
    new $P151, "Undef"
  vivify_205:
    "print"("\n", $P146, $P150, "::", $P151, " => ")
.annotate 'line', 94
    find_lex $P147, "$attrtype"
    unless_null $P147, vivify_206
    new $P147, "Undef"
  vivify_206:
    find_lex $P148, "int"
    issame $I102, $P147, $P148
    if $I102, if_1220
.annotate 'line', 97
    find_lex $P150, "$attrtype"
    unless_null $P150, vivify_207
    new $P150, "Undef"
  vivify_207:
    find_lex $P151, "num"
    issame $I103, $P150, $P151
    if $I103, if_1221
.annotate 'line', 100
    find_lex $P153, "$attrtype"
    unless_null $P153, vivify_208
    new $P153, "Undef"
  vivify_208:
    find_lex $P155, "str"
    issame $I104, $P153, $P155
    if $I104, if_1222
.annotate 'line', 104
    find_lex $P156, "$dumper"
    unless_null $P156, vivify_209
    new $P156, "Undef"
  vivify_209:
    find_lex $P157, "$label"
    unless_null $P157, vivify_210
    new $P157, "Undef"
  vivify_210:
    find_lex $P159, "self"
    find_lex $P160, "$type"
    unless_null $P160, vivify_211
    new $P160, "Undef"
  vivify_211:
    find_lex $P161, "$name"
    unless_null $P161, vivify_212
    new $P161, "Undef"
  vivify_212:
    set $S101, $P161
    getattribute $P163, $P159, $P160, $S101
    $P164 = $P156."dump"($P157, $P163)
.annotate 'line', 103
    set $P152, $P164
.annotate 'line', 100
    goto if_1222_end
  if_1222:
.annotate 'line', 101
    find_lex $P156, "$dumper"
    unless_null $P156, vivify_213
    new $P156, "Undef"
  vivify_213:
    find_lex $P157, "$label"
    unless_null $P157, vivify_214
    new $P157, "Undef"
  vivify_214:
    find_lex $P159, "self"
    find_lex $P160, "$type"
    unless_null $P160, vivify_215
    new $P160, "Undef"
  vivify_215:
    find_lex $P161, "$name"
    unless_null $P161, vivify_216
    new $P161, "Undef"
  vivify_216:
    set $S101, $P161
    repr_get_attr_str $S102, $P159, $P160, $S101
    $P162 = $P156."dump"($P157, $S102)
.annotate 'line', 100
    set $P152, $P162
  if_1222_end:
    set $P149, $P152
.annotate 'line', 97
    goto if_1221_end
  if_1221:
.annotate 'line', 98
    find_lex $P152, "$dumper"
    unless_null $P152, vivify_217
    new $P152, "Undef"
  vivify_217:
    find_lex $P153, "$label"
    unless_null $P153, vivify_218
    new $P153, "Undef"
  vivify_218:
    find_lex $P155, "self"
    find_lex $P156, "$type"
    unless_null $P156, vivify_219
    new $P156, "Undef"
  vivify_219:
    find_lex $P157, "$name"
    unless_null $P157, vivify_220
    new $P157, "Undef"
  vivify_220:
    set $S101, $P157
    repr_get_attr_num $N100, $P155, $P156, $S101
    $P158 = $P152."dump"($P153, $N100)
.annotate 'line', 97
    set $P149, $P158
  if_1221_end:
    set $P146, $P149
.annotate 'line', 94
    goto if_1220_end
  if_1220:
.annotate 'line', 95
    find_lex $P149, "$dumper"
    unless_null $P149, vivify_221
    new $P149, "Undef"
  vivify_221:
    find_lex $P150, "$label"
    unless_null $P150, vivify_222
    new $P150, "Undef"
  vivify_222:
    find_lex $P151, "self"
    find_lex $P152, "$type"
    unless_null $P152, vivify_223
    new $P152, "Undef"
  vivify_223:
    find_lex $P153, "$name"
    unless_null $P153, vivify_224
    new $P153, "Undef"
  vivify_224:
    set $S101, $P153
    repr_get_attr_int $I103, $P151, $P152, $S101
    $P154 = $P149."dump"($P150, $I103)
.annotate 'line', 94
    set $P146, $P154
  if_1220_end:
.annotate 'line', 90
    .return ($P146)
.end


.HLL "nqp"

.namespace []
.sub "_block1226"  :anon :subid("49_1310110653.89398") :outer("10_1310110653.89398")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 113
    .const 'Sub' $P1238 = "53_1310110653.89398" 
    capture_lex $P1238
    .const 'Sub' $P1235 = "52_1310110653.89398" 
    capture_lex $P1235
    .const 'Sub' $P1233 = "51_1310110653.89398" 
    capture_lex $P1233
    .const 'Sub' $P1230 = "50_1310110653.89398" 
    capture_lex $P1230
    .lex "$?PACKAGE", $P1228
    .lex "$?CLASS", $P1229
.annotate 'line', 147
    .const 'Sub' $P1238 = "53_1310110653.89398" 
    newclosure $P1241, $P1238
.annotate 'line', 113
    .return ($P1241)
.end


.HLL "nqp"

.namespace []
.sub "new" :anon :subid("50_1310110653.89398") :outer("49_1310110653.89398")
    .param pmc param_1231
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 134
    .lex "self", param_1231
.annotate 'line', 135
    new $P127, "Undef"
    set $P1232, $P127
    .lex "$n", $P1232
    find_lex $P129, "self"
    $P131 = $P129."CREATE"()
    store_lex "$n", $P131
.annotate 'line', 136
    find_lex $P129, "$n"
    unless_null $P129, vivify_226
    new $P129, "Undef"
  vivify_226:
    $P129."BUILD"()
.annotate 'line', 134
    find_lex $P129, "$n"
    unless_null $P129, vivify_227
    new $P129, "Undef"
  vivify_227:
    .return ($P129)
.end


.HLL "nqp"

.namespace []
.sub "BUILD" :anon :subid("51_1310110653.89398") :outer("49_1310110653.89398")
    .param pmc param_1234
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 140
    .lex "self", param_1234
.annotate 'line', 141
    new $P127, "ResizablePMCArray"
    find_lex $P129, "self"
    find_lex $P131, "$?CLASS"
    setattribute $P129, $P131, "@!array", $P127
.annotate 'line', 142
    new $P127, "Hash"
    find_lex $P129, "self"
    find_lex $P131, "$?CLASS"
    setattribute $P129, $P131, "%!hash", $P127
.annotate 'line', 140
    .return ($P127)
.end


.HLL "nqp"

.namespace []
.sub "list" :anon :subid("52_1310110653.89398") :outer("49_1310110653.89398")
    .param pmc param_1236
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 145
    .lex "self", param_1236
    find_lex $P127, "self"
    find_lex $P129, "$?CLASS"
    getattribute $P1237, $P127, $P129, "@!array"
    unless_null $P1237, vivify_228
    $P1237 = root_new ['parrot';'ResizablePMCArray']
  vivify_228:
    .return ($P1237)
.end


.HLL "nqp"

.namespace []
.sub "hash" :anon :subid("53_1310110653.89398") :outer("49_1310110653.89398")
    .param pmc param_1239
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 147
    .lex "self", param_1239
    find_lex $P127, "self"
    find_lex $P129, "$?CLASS"
    getattribute $P1240, $P127, $P129, "%!hash"
    unless_null $P1240, vivify_229
    $P1240 = root_new ['parrot';'Hash']
  vivify_229:
    .return ($P1240)
.end


.HLL "nqp"

.namespace []
.sub "_block1243" :load :anon :subid("54_1310110653.89398")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 1
    .const 'Sub' $P1245 = "10_1310110653.89398" 
    $P135 = $P1245()
    .return ($P135)
.end

