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
.sub "_block1000"  :anon :subid("10_1329260309.014")
    .param pmc param_1002 :slurpy
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 0
    .const 'Sub' $P1236 = "50_1329260309.014" 
    capture_lex $P1236
    .const 'Sub' $P1160 = "34_1329260309.014" 
    capture_lex $P1160
    .const 'Sub' $P1156 = "33_1329260309.014" 
    capture_lex $P1156
    .const 'Sub' $P1152 = "32_1329260309.014" 
    capture_lex $P1152
    .const 'Sub' $P1148 = "31_1329260309.014" 
    capture_lex $P1148
    .const 'Sub' $P1144 = "30_1329260309.014" 
    capture_lex $P1144
    .const 'Sub' $P1140 = "29_1329260309.014" 
    capture_lex $P1140
    .const 'Sub' $P1136 = "28_1329260309.014" 
    capture_lex $P1136
    .const 'Sub' $P1132 = "27_1329260309.014" 
    capture_lex $P1132
    .const 'Sub' $P1127 = "26_1329260309.014" 
    capture_lex $P1127
    .const 'Sub' $P1118 = "25_1329260309.014" 
    capture_lex $P1118
    .const 'Sub' $P1114 = "24_1329260309.014" 
    capture_lex $P1114
    .const 'Sub' $P1096 = "22_1329260309.014" 
    capture_lex $P1096
    .const 'Sub' $P1073 = "20_1329260309.014" 
    capture_lex $P1073
    .const 'Sub' $P1057 = "18_1329260309.014" 
    capture_lex $P1057
    .const 'Sub' $P1052 = "17_1329260309.014" 
    capture_lex $P1052
    .const 'Sub' $P1043 = "15_1329260309.014" 
    capture_lex $P1043
    .const 'Sub' $P1037 = "14_1329260309.014" 
    capture_lex $P1037
    .const 'Sub' $P1031 = "13_1329260309.014" 
    capture_lex $P1031
    .const 'Sub' $P1027 = "12_1329260309.014" 
    capture_lex $P1027
    .const 'Sub' $P1014 = "11_1329260309.014" 
    capture_lex $P1014
.annotate 'line', 1
    .lex "@ARGS", param_1002
    .lex "GLOBALish", $P1003
    .lex "$?PACKAGE", $P1004
    .lex "EXPORTHOW", $P1005
    .lex "int", $P1006
    .lex "num", $P1007
    .lex "str", $P1008
    .lex "NQPRoutine", $P1009
    .lex "NQPSignature", $P1010
    .lex "NQPMu", $P1011
    .lex "NQPCapture", $P1012
.annotate 'line', 168
    .const 'Sub' $P1014 = "11_1329260309.014" 
    newclosure $P1025, $P1014
    set $P1013, $P1025
    .lex "open", $P1013
.annotate 'line', 180
    .const 'Sub' $P1027 = "12_1329260309.014" 
    newclosure $P1029, $P1027
    set $P1026, $P1029
    .lex "close", $P1026
.annotate 'line', 188
    .const 'Sub' $P1031 = "13_1329260309.014" 
    newclosure $P1035, $P1031
    set $P1030, $P1035
    .lex "slurp", $P1030
.annotate 'line', 200
    .const 'Sub' $P1037 = "14_1329260309.014" 
    newclosure $P1041, $P1037
    set $P1036, $P1041
    .lex "spew", $P1036
.annotate 'line', 207
    .const 'Sub' $P1043 = "15_1329260309.014" 
    newclosure $P1050, $P1043
    set $P1042, $P1050
    .lex "print", $P1042
.annotate 'line', 214
    .const 'Sub' $P1052 = "17_1329260309.014" 
    newclosure $P1055, $P1052
    set $P1051, $P1055
    .lex "say", $P1051
.annotate 'line', 232
    .const 'Sub' $P1057 = "18_1329260309.014" 
    newclosure $P1071, $P1057
    set $P1056, $P1071
    .lex "match", $P1056
.annotate 'line', 254
    .const 'Sub' $P1073 = "20_1329260309.014" 
    newclosure $P1094, $P1073
    set $P1072, $P1094
    .lex "subst", $P1072
.annotate 'line', 280
    .const 'Sub' $P1096 = "22_1329260309.014" 
    newclosure $P1109, $P1096
    set $P1095, $P1109
    .lex "hash", $P1095
.annotate 'line', 289
    new $P122, "Undef"
    set $P1110, $P122
    .lex "$test_counter", $P1110
.annotate 'line', 290
    new $P123, "Undef"
    set $P1111, $P123
    .lex "$todo_upto_test_num", $P1111
.annotate 'line', 291
    new $P124, "Undef"
    set $P1112, $P124
    .lex "$todo_reason", $P1112
.annotate 'line', 293
    .const 'Sub' $P1114 = "24_1329260309.014" 
    newclosure $P1116, $P1114
    set $P1113, $P1116
    .lex "plan", $P1113
.annotate 'line', 297
    .const 'Sub' $P1118 = "25_1329260309.014" 
    newclosure $P1125, $P1118
    set $P1117, $P1125
    .lex "ok", $P1117
.annotate 'line', 315
    .const 'Sub' $P1127 = "26_1329260309.014" 
    newclosure $P1130, $P1127
    set $P1126, $P1130
    .lex "todo", $P1126
.annotate 'line', 320
    .const 'Sub' $P1132 = "27_1329260309.014" 
    newclosure $P1134, $P1132
    set $P1131, $P1134
    .lex "skip", $P1131
.annotate 'line', 12
    .const 'Sub' $P1136 = "28_1329260309.014" 
    capture_lex $P1136
    $P1136()
.annotate 'line', 23
    .const 'Sub' $P1140 = "29_1329260309.014" 
    capture_lex $P1140
    $P1140()
.annotate 'line', 25
    .const 'Sub' $P1144 = "30_1329260309.014" 
    capture_lex $P1144
    $P1144()
.annotate 'line', 27
    .const 'Sub' $P1148 = "31_1329260309.014" 
    capture_lex $P1148
    $P1148()
.annotate 'line', 30
    .const 'Sub' $P1152 = "32_1329260309.014" 
    capture_lex $P1152
    $P1152()
.annotate 'line', 36
    set $P127, $P1009
.annotate 'line', 37
    new $P129, "Hash"
    set $P131, $P1009
    new $P132, "ResizablePMCArray"
    push $P132, $P131
    push $P132, "$!do"
    set $P129["invoke"], $P132
    stable_publish_vtable_handler_mapping $P127, $P129
.annotate 'line', 39
    .const 'Sub' $P1156 = "33_1329260309.014" 
    capture_lex $P1156
    $P1156()
.annotate 'line', 45
    .const 'Sub' $P1160 = "34_1329260309.014" 
    capture_lex $P1160
    $P1160()
.annotate 'line', 119
    .const 'Sub' $P1236 = "50_1329260309.014" 
    capture_lex $P1236
    $P1236()
.annotate 'line', 1
    set $P127, $P1013
    set $P127, $P1026
    set $P127, $P1030
    set $P127, $P1036
    set $P127, $P1042
    set $P127, $P1051
    set $P127, $P1056
    set $P127, $P1072
    set $P127, $P1095
.annotate 'line', 289
    new $P127, "Float"
    assign $P127, 0
    set $P1110, $P127
.annotate 'line', 290
    new $P127, "Float"
    assign $P127, 0
    set $P1111, $P127
.annotate 'line', 291
    new $P127, "String"
    assign $P127, ""
    set $P1112, $P127
.annotate 'line', 1
    set $P127, $P1113
    set $P127, $P1117
    set $P127, $P1126
    set $P127, $P1131
    new $P127, "Float"
    assign $P127, 1
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
    set $P129, param_1002
    if $P129, if_1251
    set $P127, $P129
    goto if_1251_end
  if_1251:
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P131, "ModuleLoader"
    getinterp $P132
    set $P133, $P132["context"]
    $P134 = $P131."set_mainline_module"($P133)
    set $P127, $P134
  if_1251_end:
    .return ($P127)
    .const 'Sub' $P1253 = "55_1329260309.014" 
    .return ($P1253)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post56") :outer("10_1329260309.014")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 0
    .const 'Sub' $P1001 = "10_1329260309.014" 
    .local pmc block
    set block, $P1001
    nqp_dynop_setup 
    nqp_bigint_setup 
    getinterp $P137
    get_class $P138, "LexPad"
    get_class $P139, "NQPLexPad"
    $P137."hll_map"($P138, $P139)
    nqp_create_sc $P140, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629"
    .local pmc cur_sc
    set cur_sc, $P140
    cur_sc."set_description"("src\\stage2\\NQPCORE.setting")
    nqp_get_sc $P141, "__6MODEL_CORE__"
    isnull $I100, $P141
    unless $I100, if_1255_end
    set $S101, "Incorrect pre-compiled version of <unknown> loaded"
    die $S101
  if_1255_end:
    nqp_get_sc_object $P141, "__6MODEL_CORE__", 0
    $P142 = $P141."new_type"("GLOBALish" :named("name"))
    nqp_add_object_to_sc cur_sc, 0, $P142
    .const 'LexInfo' $P1256 = "10_1329260309.014" 
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 0
    $P1256."set_static_lexpad_value"("GLOBALish", $P141)
    .const 'LexInfo' $P1257 = "10_1329260309.014" 
    $P1257."finish_static_lexpad"()
    .const 'LexInfo' $P1258 = "10_1329260309.014" 
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 0
    $P1258."set_static_lexpad_value"("$?PACKAGE", $P141)
    .const 'LexInfo' $P1259 = "10_1329260309.014" 
    $P1259."finish_static_lexpad"()
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P141, "ModuleLoader"
    nqp_get_sc_object $P142, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 0
    $P141."load_module"("nqpmo", $P142)
    nqp_get_sc $P141, "F3E24B0F152705B4B497A988620E1A8B7CA5D66B-1329260306.061"
    isnull $I100, $P141
    unless $I100, if_1260_end
    set $S101, "Incorrect pre-compiled version of src\\stage2\\gen\\nqp-mo.pm loaded"
    die $S101
  if_1260_end:
    nqp_get_sc_object $P141, "F3E24B0F152705B4B497A988620E1A8B7CA5D66B-1329260306.061", 109
    $P142 = $P141."new_type"("EXPORTHOW" :named("name"))
    nqp_add_object_to_sc cur_sc, 1, $P142
    .const 'LexInfo' $P1261 = "10_1329260309.014" 
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 1
    $P1261."set_static_lexpad_value"("EXPORTHOW", $P141)
    .const 'LexInfo' $P1262 = "10_1329260309.014" 
    $P1262."finish_static_lexpad"()
    .const 'LexInfo' $P1263 = "28_1329260309.014" 
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 1
    $P1263."set_static_lexpad_value"("$?PACKAGE", $P141)
    .const 'LexInfo' $P1264 = "28_1329260309.014" 
    $P1264."finish_static_lexpad"()
    .const 'LexInfo' $P1265 = "28_1329260309.014" 
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 1
    $P1265."set_static_lexpad_value"("$?CLASS", $P141)
    .const 'LexInfo' $P1266 = "28_1329260309.014" 
    $P1266."finish_static_lexpad"()
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 1
    get_how $P142, $P141
    nqp_get_sc_object $P143, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 1
    $P142."compose"($P143)
    nqp_get_sc_object $P141, "F3E24B0F152705B4B497A988620E1A8B7CA5D66B-1329260306.061", 89
    $P142 = $P141."new_type"("int" :named("name"), "P6int" :named("repr"))
    nqp_add_object_to_sc cur_sc, 2, $P142
    .const 'LexInfo' $P1267 = "10_1329260309.014" 
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 2
    $P1267."set_static_lexpad_value"("int", $P141)
    .const 'LexInfo' $P1268 = "10_1329260309.014" 
    $P1268."finish_static_lexpad"()
    .const 'LexInfo' $P1269 = "29_1329260309.014" 
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 2
    $P1269."set_static_lexpad_value"("$?PACKAGE", $P141)
    .const 'LexInfo' $P1270 = "29_1329260309.014" 
    $P1270."finish_static_lexpad"()
    .const 'LexInfo' $P1271 = "29_1329260309.014" 
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 2
    $P1271."set_static_lexpad_value"("$?CLASS", $P141)
    .const 'LexInfo' $P1272 = "29_1329260309.014" 
    $P1272."finish_static_lexpad"()
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 2
    get_how $P142, $P141
    nqp_get_sc_object $P143, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 2
    $P142."compose"($P143)
    nqp_get_sc_object $P141, "F3E24B0F152705B4B497A988620E1A8B7CA5D66B-1329260306.061", 89
    $P142 = $P141."new_type"("num" :named("name"), "P6num" :named("repr"))
    nqp_add_object_to_sc cur_sc, 3, $P142
    .const 'LexInfo' $P1273 = "10_1329260309.014" 
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 3
    $P1273."set_static_lexpad_value"("num", $P141)
    .const 'LexInfo' $P1274 = "10_1329260309.014" 
    $P1274."finish_static_lexpad"()
    .const 'LexInfo' $P1275 = "30_1329260309.014" 
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 3
    $P1275."set_static_lexpad_value"("$?PACKAGE", $P141)
    .const 'LexInfo' $P1276 = "30_1329260309.014" 
    $P1276."finish_static_lexpad"()
    .const 'LexInfo' $P1277 = "30_1329260309.014" 
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 3
    $P1277."set_static_lexpad_value"("$?CLASS", $P141)
    .const 'LexInfo' $P1278 = "30_1329260309.014" 
    $P1278."finish_static_lexpad"()
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 3
    get_how $P142, $P141
    nqp_get_sc_object $P143, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 3
    $P142."compose"($P143)
    nqp_get_sc_object $P141, "F3E24B0F152705B4B497A988620E1A8B7CA5D66B-1329260306.061", 89
    $P142 = $P141."new_type"("str" :named("name"), "P6str" :named("repr"))
    nqp_add_object_to_sc cur_sc, 4, $P142
    .const 'LexInfo' $P1279 = "10_1329260309.014" 
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 4
    $P1279."set_static_lexpad_value"("str", $P141)
    .const 'LexInfo' $P1280 = "10_1329260309.014" 
    $P1280."finish_static_lexpad"()
    .const 'LexInfo' $P1281 = "31_1329260309.014" 
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 4
    $P1281."set_static_lexpad_value"("$?PACKAGE", $P141)
    .const 'LexInfo' $P1282 = "31_1329260309.014" 
    $P1282."finish_static_lexpad"()
    .const 'LexInfo' $P1283 = "31_1329260309.014" 
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 4
    $P1283."set_static_lexpad_value"("$?CLASS", $P141)
    .const 'LexInfo' $P1284 = "31_1329260309.014" 
    $P1284."finish_static_lexpad"()
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 4
    get_how $P142, $P141
    nqp_get_sc_object $P143, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 4
    $P142."compose"($P143)
    nqp_get_sc_object $P141, "__6MODEL_CORE__", 0
    $P142 = $P141."new_type"("NQPRoutine" :named("name"))
    nqp_add_object_to_sc cur_sc, 5, $P142
    .const 'LexInfo' $P1285 = "10_1329260309.014" 
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 5
    $P1285."set_static_lexpad_value"("NQPRoutine", $P141)
    .const 'LexInfo' $P1286 = "10_1329260309.014" 
    $P1286."finish_static_lexpad"()
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 5
    get_how $P142, $P141
    nqp_get_sc_object $P143, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 5
    nqp_get_sc_object $P144, "__6MODEL_CORE__", 2
    $P145 = $P144."new"("$!do" :named("name"))
    $P142."add_attribute"($P143, $P145)
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 5
    get_how $P142, $P141
    nqp_get_sc_object $P143, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 5
    nqp_get_sc_object $P144, "__6MODEL_CORE__", 2
    $P145 = $P144."new"("$!signature" :named("name"))
    $P142."add_attribute"($P143, $P145)
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 5
    get_how $P142, $P141
    nqp_get_sc_object $P143, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 5
    nqp_get_sc_object $P144, "__6MODEL_CORE__", 2
    $P145 = $P144."new"("$!dispatchees" :named("name"))
    $P142."add_attribute"($P143, $P145)
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 5
    get_how $P142, $P141
    nqp_get_sc_object $P143, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 5
    nqp_get_sc_object $P144, "__6MODEL_CORE__", 2
    $P145 = $P144."new"("$!dispatch_cache" :named("name"))
    $P142."add_attribute"($P143, $P145)
    .const 'LexInfo' $P1287 = "32_1329260309.014" 
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 5
    $P1287."set_static_lexpad_value"("$?PACKAGE", $P141)
    .const 'LexInfo' $P1288 = "32_1329260309.014" 
    $P1288."finish_static_lexpad"()
    .const 'LexInfo' $P1289 = "32_1329260309.014" 
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 5
    $P1289."set_static_lexpad_value"("$?CLASS", $P141)
    .const 'LexInfo' $P1290 = "32_1329260309.014" 
    $P1290."finish_static_lexpad"()
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 5
    get_how $P142, $P141
    nqp_get_sc_object $P143, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 5
    $P142."compose"($P143)
    nqp_get_sc_object $P141, "__6MODEL_CORE__", 0
    $P142 = $P141."new_type"("NQPSignature" :named("name"))
    nqp_add_object_to_sc cur_sc, 6, $P142
    .const 'LexInfo' $P1291 = "10_1329260309.014" 
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 6
    $P1291."set_static_lexpad_value"("NQPSignature", $P141)
    .const 'LexInfo' $P1292 = "10_1329260309.014" 
    $P1292."finish_static_lexpad"()
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 6
    get_how $P142, $P141
    nqp_get_sc_object $P143, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 6
    nqp_get_sc_object $P144, "__6MODEL_CORE__", 2
    $P145 = $P144."new"("$!types" :named("name"))
    $P142."add_attribute"($P143, $P145)
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 6
    get_how $P142, $P141
    nqp_get_sc_object $P143, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 6
    nqp_get_sc_object $P144, "__6MODEL_CORE__", 2
    $P145 = $P144."new"("$!definednesses" :named("name"))
    $P142."add_attribute"($P143, $P145)
    .const 'LexInfo' $P1293 = "33_1329260309.014" 
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 6
    $P1293."set_static_lexpad_value"("$?PACKAGE", $P141)
    .const 'LexInfo' $P1294 = "33_1329260309.014" 
    $P1294."finish_static_lexpad"()
    .const 'LexInfo' $P1295 = "33_1329260309.014" 
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 6
    $P1295."set_static_lexpad_value"("$?CLASS", $P141)
    .const 'LexInfo' $P1296 = "33_1329260309.014" 
    $P1296."finish_static_lexpad"()
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 6
    get_how $P142, $P141
    nqp_get_sc_object $P143, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 6
    $P142."compose"($P143)
    nqp_get_sc_object $P141, "F3E24B0F152705B4B497A988620E1A8B7CA5D66B-1329260306.061", 55
    $P142 = $P141."new_type"("NQPMu" :named("name"))
    nqp_add_object_to_sc cur_sc, 7, $P142
    .const 'LexInfo' $P1297 = "10_1329260309.014" 
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 7
    $P1297."set_static_lexpad_value"("NQPMu", $P141)
    .const 'LexInfo' $P1298 = "10_1329260309.014" 
    $P1298."finish_static_lexpad"()
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 7
    get_how $P142, $P141
    nqp_get_sc_object $P143, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 7
    .const '' $P1299 = "35_1329260309.014" 
    $P142."add_method"($P143, "CREATE", $P1299)
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 7
    get_how $P142, $P141
    nqp_get_sc_object $P143, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 7
    .const '' $P1300 = "36_1329260309.014" 
    $P142."add_method"($P143, "bless", $P1300)
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 7
    get_how $P142, $P141
    nqp_get_sc_object $P143, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 7
    .const '' $P1301 = "37_1329260309.014" 
    $P142."add_method"($P143, "BUILDALL", $P1301)
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 7
    get_how $P142, $P141
    nqp_get_sc_object $P143, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 7
    .const '' $P1302 = "39_1329260309.014" 
    $P142."add_method"($P143, "BUILD_MAGIC", $P1302)
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 7
    get_how $P142, $P141
    nqp_get_sc_object $P143, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 7
    .const '' $P1303 = "41_1329260309.014" 
    $P142."add_method"($P143, "new", $P1303)
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 7
    get_how $P142, $P141
    nqp_get_sc_object $P143, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 7
    .const '' $P1304 = "42_1329260309.014" 
    $P142."add_method"($P143, "Str", $P1304)
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 7
    get_how $P142, $P141
    nqp_get_sc_object $P143, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 7
    .const '' $P1305 = "42_1329260309.014" 
    $P142."add_parrot_vtable_mapping"($P143, "get_string", $P1305)
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 6
    repr_instance_of $P142, $P141
    nqp_add_object_to_sc cur_sc, 14, $P142
    nqp_get_sc_object $P143, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 14
    nqp_get_sc_object $P144, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 6
    nqp_get_sc_object $P145, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 7
    new $P146, "ResizablePMCArray"
    push $P146, $P145
    setattribute $P143, $P144, "$!types", $P146
    nqp_get_sc_object $P147, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 14
    nqp_get_sc_object $P148, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 6
    new $P149, "ResizablePMCArray"
    push $P149, 2
    setattribute $P147, $P148, "$!definednesses", $P149
    .const '' $P1306 = "43_1329260309.014" 
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 14
    set_sub_multisig $P1306, $P141
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 7
    get_how $P142, $P141
    nqp_get_sc_object $P143, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 7
    .const '' $P1307 = "43_1329260309.014" 
    $P142."add_multi_method"($P143, "Str", $P1307)
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 7
    get_how $P142, $P141
    nqp_get_sc_object $P143, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 7
    .const '' $P1308 = "44_1329260309.014" 
    $P142."add_method"($P143, "ACCEPTS", $P1308)
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 6
    repr_instance_of $P142, $P141
    nqp_add_object_to_sc cur_sc, 17, $P142
    nqp_get_sc_object $P143, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 17
    nqp_get_sc_object $P144, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 6
    nqp_get_sc_object $P145, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 7
    new $P147, "ResizablePMCArray"
    push $P147, $P145
    push $P147, $P146
    setattribute $P143, $P144, "$!types", $P147
    nqp_get_sc_object $P148, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 17
    nqp_get_sc_object $P149, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 6
    new $P150, "ResizablePMCArray"
    push $P150, 2
    push $P150, 0
    setattribute $P148, $P149, "$!definednesses", $P150
    .const '' $P1309 = "45_1329260309.014" 
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 17
    set_sub_multisig $P1309, $P141
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 7
    get_how $P142, $P141
    nqp_get_sc_object $P143, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 7
    .const '' $P1310 = "45_1329260309.014" 
    $P142."add_multi_method"($P143, "ACCEPTS", $P1310)
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 7
    get_how $P142, $P141
    nqp_get_sc_object $P143, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 7
    .const '' $P1311 = "46_1329260309.014" 
    $P142."add_method"($P143, "isa", $P1311)
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 7
    get_how $P142, $P141
    nqp_get_sc_object $P143, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 7
    .const '' $P1312 = "47_1329260309.014" 
    $P142."add_method"($P143, "__dump", $P1312)
    .const 'LexInfo' $P1313 = "34_1329260309.014" 
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 7
    $P1313."set_static_lexpad_value"("$?PACKAGE", $P141)
    .const 'LexInfo' $P1314 = "34_1329260309.014" 
    $P1314."finish_static_lexpad"()
    .const 'LexInfo' $P1315 = "34_1329260309.014" 
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 7
    $P1315."set_static_lexpad_value"("$?CLASS", $P141)
    .const 'LexInfo' $P1316 = "34_1329260309.014" 
    $P1316."finish_static_lexpad"()
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 7
    get_how $P142, $P141
    nqp_get_sc_object $P143, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 7
    nqp_get_sc_object $P144, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 7
    $P142."set_default_parent"($P143, $P144)
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 7
    get_how $P142, $P141
    nqp_get_sc_object $P143, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 7
    $P142."compose"($P143)
    nqp_get_sc_object $P141, "F3E24B0F152705B4B497A988620E1A8B7CA5D66B-1329260306.061", 55
    $P142 = $P141."new_type"("NQPCapture" :named("name"))
    nqp_add_object_to_sc cur_sc, 21, $P142
    .const 'LexInfo' $P1317 = "10_1329260309.014" 
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 21
    $P1317."set_static_lexpad_value"("NQPCapture", $P141)
    .const 'LexInfo' $P1318 = "10_1329260309.014" 
    $P1318."finish_static_lexpad"()
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 21
    get_how $P142, $P141
    nqp_get_sc_object $P143, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 21
    nqp_get_sc_object $P144, "F3E24B0F152705B4B497A988620E1A8B7CA5D66B-1329260306.061", 99
    $P145 = $P144."new"("@!array" :named("name"))
    $P142."add_attribute"($P143, $P145)
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 21
    get_how $P142, $P141
    nqp_get_sc_object $P143, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 21
    $P142."add_parrot_vtable_handler_mapping"($P143, "get_pmc_keyed_int", "@!array")
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 21
    get_how $P142, $P141
    nqp_get_sc_object $P143, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 21
    $P142."add_parrot_vtable_handler_mapping"($P143, "set_pmc_keyed_int", "@!array")
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 21
    get_how $P142, $P141
    nqp_get_sc_object $P143, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 21
    $P142."add_parrot_vtable_handler_mapping"($P143, "exists_keyed_int", "@!array")
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 21
    get_how $P142, $P141
    nqp_get_sc_object $P143, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 21
    $P142."add_parrot_vtable_handler_mapping"($P143, "delete_keyed_int", "@!array")
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 21
    get_how $P142, $P141
    nqp_get_sc_object $P143, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 21
    $P142."add_parrot_vtable_handler_mapping"($P143, "unshift_pmc", "@!array")
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 21
    get_how $P142, $P141
    nqp_get_sc_object $P143, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 21
    $P142."add_parrot_vtable_handler_mapping"($P143, "push_pmc", "@!array")
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 21
    get_how $P142, $P141
    nqp_get_sc_object $P143, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 21
    nqp_get_sc_object $P144, "F3E24B0F152705B4B497A988620E1A8B7CA5D66B-1329260306.061", 99
    $P145 = $P144."new"("%!hash" :named("name"))
    $P142."add_attribute"($P143, $P145)
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 21
    get_how $P142, $P141
    nqp_get_sc_object $P143, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 21
    $P142."add_parrot_vtable_handler_mapping"($P143, "get_pmc_keyed_str", "%!hash")
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 21
    get_how $P142, $P141
    nqp_get_sc_object $P143, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 21
    $P142."add_parrot_vtable_handler_mapping"($P143, "get_pmc_keyed", "%!hash")
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 21
    get_how $P142, $P141
    nqp_get_sc_object $P143, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 21
    $P142."add_parrot_vtable_handler_mapping"($P143, "set_pmc_keyed_str", "%!hash")
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 21
    get_how $P142, $P141
    nqp_get_sc_object $P143, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 21
    $P142."add_parrot_vtable_handler_mapping"($P143, "set_pmc_keyed", "%!hash")
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 21
    get_how $P142, $P141
    nqp_get_sc_object $P143, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 21
    $P142."add_parrot_vtable_handler_mapping"($P143, "exists_keyed", "%!hash")
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 21
    get_how $P142, $P141
    nqp_get_sc_object $P143, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 21
    $P142."add_parrot_vtable_handler_mapping"($P143, "exists_keyed_str", "%!hash")
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 21
    get_how $P142, $P141
    nqp_get_sc_object $P143, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 21
    $P142."add_parrot_vtable_handler_mapping"($P143, "delete_keyed", "%!hash")
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 21
    get_how $P142, $P141
    nqp_get_sc_object $P143, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 21
    $P142."add_parrot_vtable_handler_mapping"($P143, "delete_keyed_str", "%!hash")
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 21
    get_how $P142, $P141
    nqp_get_sc_object $P143, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 21
    .const '' $P1319 = "51_1329260309.014" 
    $P142."add_method"($P143, "new", $P1319)
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 21
    get_how $P142, $P141
    nqp_get_sc_object $P143, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 21
    .const '' $P1320 = "52_1329260309.014" 
    $P142."add_method"($P143, "BUILD", $P1320)
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 21
    get_how $P142, $P141
    nqp_get_sc_object $P143, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 21
    .const '' $P1321 = "53_1329260309.014" 
    $P142."add_method"($P143, "list", $P1321)
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 21
    get_how $P142, $P141
    nqp_get_sc_object $P143, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 21
    .const '' $P1322 = "54_1329260309.014" 
    $P142."add_method"($P143, "hash", $P1322)
    .const 'LexInfo' $P1323 = "50_1329260309.014" 
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 21
    $P1323."set_static_lexpad_value"("$?PACKAGE", $P141)
    .const 'LexInfo' $P1324 = "50_1329260309.014" 
    $P1324."finish_static_lexpad"()
    .const 'LexInfo' $P1325 = "50_1329260309.014" 
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 21
    $P1325."set_static_lexpad_value"("$?CLASS", $P141)
    .const 'LexInfo' $P1326 = "50_1329260309.014" 
    $P1326."finish_static_lexpad"()
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 21
    get_how $P142, $P141
    nqp_get_sc_object $P143, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 21
    nqp_get_sc_object $P144, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 7
    $P142."set_default_parent"($P143, $P144)
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 21
    get_how $P142, $P141
    nqp_get_sc_object $P143, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 21
    $P142."compose"($P143)
    nqp_get_sc_object $P141, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 0
    set_hll_global "GLOBAL", $P141
.end


.HLL "nqp"

.namespace []
.sub "open"  :subid("11_1329260309.014") :outer("10_1329260309.014")
    .param pmc param_1015
    .param pmc param_1016 :optional :named("r")
    .param int has_param_1016 :opt_flag
    .param pmc param_1017 :optional :named("w")
    .param int has_param_1017 :opt_flag
    .param pmc param_1018 :optional :named("a")
    .param int has_param_1018 :opt_flag
    .param pmc param_1019 :optional :named("bin")
    .param int has_param_1019 :opt_flag
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 168
    .lex "$filename", param_1015
    if has_param_1016, optparam_57
    new $P100, "Undef"
    set param_1016, $P100
  optparam_57:
    .lex "$r", param_1016
    if has_param_1017, optparam_58
    new $P101, "Undef"
    set param_1017, $P101
  optparam_58:
    .lex "$w", param_1017
    if has_param_1018, optparam_59
    new $P102, "Undef"
    set param_1018, $P102
  optparam_59:
    .lex "$a", param_1018
    if has_param_1019, optparam_60
    new $P103, "Undef"
    set param_1019, $P103
  optparam_60:
    .lex "$bin", param_1019
.annotate 'line', 169
    new $P104, "Undef"
    set $P1020, $P104
    .lex "$mode", $P1020
.annotate 'line', 170
    new $P105, "Undef"
    set $P1021, $P105
    .lex "$handle", $P1021
.annotate 'line', 169
    set $P107, param_1017
    unless_null $P107, vivify_61
    new $P107, "Undef"
  vivify_61:
    if $P107, if_1022
    set $P110, param_1018
    unless_null $P110, vivify_62
    new $P110, "Undef"
  vivify_62:
    if $P110, if_1023
    new $P112, "String"
    assign $P112, "r"
    set $P109, $P112
    goto if_1023_end
  if_1023:
    new $P111, "String"
    assign $P111, "wa"
    set $P109, $P111
  if_1023_end:
    set $P106, $P109
    goto if_1022_end
  if_1022:
    new $P108, "String"
    assign $P108, "w"
    set $P106, $P108
  if_1022_end:
    set $P1020, $P106
.annotate 'line', 170
    new $P106, "FileHandle"
    set $P1021, $P106
.annotate 'line', 171
    set $P106, $P1021
    unless_null $P106, vivify_63
    new $P106, "Undef"
  vivify_63:
    set $P107, param_1015
    unless_null $P107, vivify_64
    new $P107, "Undef"
  vivify_64:
    set $P108, $P1020
    unless_null $P108, vivify_65
    new $P108, "Undef"
  vivify_65:
    $P106."open"($P107, $P108)
.annotate 'line', 172
    set $P106, $P1021
    unless_null $P106, vivify_66
    new $P106, "Undef"
  vivify_66:
    set $P108, param_1019
    unless_null $P108, vivify_67
    new $P108, "Undef"
  vivify_67:
    if $P108, if_1024
    new $P110, "String"
    assign $P110, "utf8"
    set $P107, $P110
    goto if_1024_end
  if_1024:
    new $P109, "String"
    assign $P109, "binary"
    set $P107, $P109
  if_1024_end:
    $P106."encoding"($P107)
.annotate 'line', 168
    set $P106, $P1021
    unless_null $P106, vivify_68
    new $P106, "Undef"
  vivify_68:
    .return ($P106)
.end


.HLL "nqp"

.namespace []
.sub "close"  :subid("12_1329260309.014") :outer("10_1329260309.014")
    .param pmc param_1028
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 180
    .lex "$handle", param_1028
.annotate 'line', 181
    set $P107, param_1028
    unless_null $P107, vivify_69
    new $P107, "Undef"
  vivify_69:
    $P108 = $P107."close"()
.annotate 'line', 180
    .return ($P108)
.end


.HLL "nqp"

.namespace []
.sub "slurp"  :subid("13_1329260309.014") :outer("10_1329260309.014")
    .param pmc param_1032
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 188
    .lex "$filename", param_1032
.annotate 'line', 189
    new $P107, "Undef"
    set $P1033, $P107
    .lex "$handle", $P1033
.annotate 'line', 190
    new $P109, "Undef"
    set $P1034, $P109
    .lex "$contents", $P1034
.annotate 'line', 189
    set $P110, param_1032
    unless_null $P110, vivify_70
    new $P110, "Undef"
  vivify_70:
    $P111 = "open"($P110, 1 :named("r"))
    set $P1033, $P111
.annotate 'line', 190
    set $P110, $P1033
    unless_null $P110, vivify_71
    new $P110, "Undef"
  vivify_71:
    $P111 = $P110."readall"()
    set $P1034, $P111
.annotate 'line', 191
    set $P110, $P1033
    unless_null $P110, vivify_72
    new $P110, "Undef"
  vivify_72:
    $P110."close"()
.annotate 'line', 188
    set $P110, $P1034
    unless_null $P110, vivify_73
    new $P110, "Undef"
  vivify_73:
    .return ($P110)
.end


.HLL "nqp"

.namespace []
.sub "spew"  :subid("14_1329260309.014") :outer("10_1329260309.014")
    .param pmc param_1038
    .param pmc param_1039
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 200
    .lex "$filename", param_1038
    .lex "$contents", param_1039
.annotate 'line', 201
    new $P111, "Undef"
    set $P1040, $P111
    .lex "$handle", $P1040
    new $P112, "FileHandle"
    set $P1040, $P112
.annotate 'line', 202
    set $P112, $P1040
    unless_null $P112, vivify_74
    new $P112, "Undef"
  vivify_74:
    set $P113, param_1038
    unless_null $P113, vivify_75
    new $P113, "Undef"
  vivify_75:
    $P112."open"($P113, "w")
.annotate 'line', 203
    set $P112, $P1040
    unless_null $P112, vivify_76
    new $P112, "Undef"
  vivify_76:
    set $P113, param_1039
    unless_null $P113, vivify_77
    new $P113, "Undef"
  vivify_77:
    $P112."print"($P113)
.annotate 'line', 204
    set $P112, $P1040
    unless_null $P112, vivify_78
    new $P112, "Undef"
  vivify_78:
    $P113 = $P112."close"()
.annotate 'line', 200
    .return ($P113)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "print"  :subid("15_1329260309.014") :outer("10_1329260309.014")
    .param pmc param_1044 :slurpy
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 207
    .const 'Sub' $P1047 = "16_1329260309.014" 
    capture_lex $P1047
    .lex "@args", param_1044
.annotate 'line', 208
    set $P1045, param_1044
    unless_null $P1045, vivify_79
    $P1045 = root_new ['parrot';'ResizablePMCArray']
  vivify_79:
    defined $I100, $P1045
    unless $I100, for_undef_80
    iter $P112, $P1045
    new $P115, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P115, loop1049_handler
    push_eh $P115
  loop1049_test:
    unless $P112, loop1049_done
    shift $P114, $P112
  loop1049_redo:
    .const 'Sub' $P1047 = "16_1329260309.014" 
    capture_lex $P1047
    $P1047($P114)
  loop1049_next:
    goto loop1049_test
  loop1049_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P116, exception, 'type'
    eq $P116, .CONTROL_LOOP_NEXT, loop1049_next
    eq $P116, .CONTROL_LOOP_REDO, loop1049_redo
  loop1049_done:
    pop_eh 
  for_undef_80:
.annotate 'line', 207
    .return (1)
.end


.HLL "nqp"

.namespace []
.sub "_block1046"  :anon :subid("16_1329260309.014") :outer("15_1329260309.014")
    .param pmc param_1048
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 208
    .lex "$_", param_1048
.annotate 'line', 209
    find_lex $P115, "$_"
    unless_null $P115, vivify_81
    new $P115, "Undef"
  vivify_81:
    print $P115
.annotate 'line', 208
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "say"  :subid("17_1329260309.014") :outer("10_1329260309.014")
    .param pmc param_1053 :slurpy
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 214
    .lex "@args", param_1053
.annotate 'line', 215
    set $P1054, param_1053
    unless_null $P1054, vivify_82
    $P1054 = root_new ['parrot';'ResizablePMCArray']
  vivify_82:
    $P112 = "print"($P1054 :flat, "\n")
.annotate 'line', 214
    .return ($P112)
.end


.HLL "nqp"

.namespace []
.sub "match"  :subid("18_1329260309.014") :outer("10_1329260309.014")
    .param pmc param_1058
    .param pmc param_1059
    .param pmc param_1060 :optional :named("global")
    .param int has_param_1060 :opt_flag
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 232
    .const 'Sub' $P1064 = "19_1329260309.014" 
    capture_lex $P1064
    .lex "$text", param_1058
    .lex "$regex", param_1059
    if has_param_1060, optparam_83
    new $P114, "Undef"
    set param_1060, $P114
  optparam_83:
    .lex "$global", param_1060
.annotate 'line', 233
    new $P115, "Undef"
    set $P1061, $P115
    .lex "$match", $P1061
    set $P116, param_1059
    unless_null $P116, vivify_84
    new $P116, "Undef"
  vivify_84:
    set $P117, param_1058
    unless_null $P117, vivify_85
    new $P117, "Undef"
  vivify_85:
    $P118 = $P116."ACCEPTS"($P117)
    set $P1061, $P118
.annotate 'line', 234
    set $P117, param_1060
    unless_null $P117, vivify_86
    new $P117, "Undef"
  vivify_86:
    if $P117, if_1062
.annotate 'line', 242
    set $P119, $P1061
    unless_null $P119, vivify_87
    new $P119, "Undef"
  vivify_87:
    set $P116, $P119
.annotate 'line', 234
    goto if_1062_end
  if_1062:
    .const 'Sub' $P1064 = "19_1329260309.014" 
    capture_lex $P1064
    $P118 = $P1064()
    set $P116, $P118
  if_1062_end:
.annotate 'line', 232
    .return ($P116)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "_block1063"  :anon :subid("19_1329260309.014") :outer("18_1329260309.014")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 235
    $P1066 = root_new ['parrot';'ResizablePMCArray']
    set $P1065, $P1066
    .lex "@matches", $P1065
.annotate 'line', 234
    set $P1067, $P1065
    unless_null $P1067, vivify_88
    $P1067 = root_new ['parrot';'ResizablePMCArray']
  vivify_88:
.annotate 'line', 236
    new $P119, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P119, loop1069_handler
    push_eh $P119
  loop1069_test:
    find_lex $P118, "$match"
    unless_null $P118, vivify_89
    new $P118, "Undef"
  vivify_89:
    unless $P118, loop1069_done
  loop1069_redo:
.annotate 'line', 237
    set $P1068, $P1065
    unless_null $P1068, vivify_90
    $P1068 = root_new ['parrot';'ResizablePMCArray']
  vivify_90:
    find_lex $P119, "$match"
    unless_null $P119, vivify_91
    new $P119, "Undef"
  vivify_91:
    $P1068."push"($P119)
.annotate 'line', 238
    find_lex $P119, "$match"
    unless_null $P119, vivify_92
    new $P119, "Undef"
  vivify_92:
    $P120 = $P119."CURSOR"()
    find_lex $P121, "$text"
    unless_null $P121, vivify_93
    new $P121, "Undef"
  vivify_93:
    find_lex $P122, "$regex"
    unless_null $P122, vivify_94
    new $P122, "Undef"
  vivify_94:
    find_lex $P123, "$match"
    unless_null $P123, vivify_95
    new $P123, "Undef"
  vivify_95:
    $P124 = $P123."to"()
    $P125 = $P120."parse"($P121, $P122 :named("rule"), $P124 :named("c"))
    store_lex "$match", $P125
  loop1069_next:
.annotate 'line', 236
    goto loop1069_test
  loop1069_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P120, exception, 'type'
    eq $P120, .CONTROL_LOOP_NEXT, loop1069_next
    eq $P120, .CONTROL_LOOP_REDO, loop1069_redo
  loop1069_done:
    pop_eh 
.annotate 'line', 234
    set $P1070, $P1065
    unless_null $P1070, vivify_96
    $P1070 = root_new ['parrot';'ResizablePMCArray']
  vivify_96:
    .return ($P1070)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "subst"  :subid("20_1329260309.014") :outer("10_1329260309.014")
    .param pmc param_1074
    .param pmc param_1075
    .param pmc param_1076
    .param pmc param_1077 :optional :named("global")
    .param int has_param_1077 :opt_flag
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 254
    .const 'Sub' $P1087 = "21_1329260309.014" 
    capture_lex $P1087
    .lex "$text", param_1074
    .lex "$regex", param_1075
    .lex "$repl", param_1076
    if has_param_1077, optparam_97
    new $P117, "Undef"
    set param_1077, $P117
  optparam_97:
    .lex "$global", param_1077
.annotate 'line', 255
    $P1079 = root_new ['parrot';'ResizablePMCArray']
    set $P1078, $P1079
    .lex "@matches", $P1078
.annotate 'line', 257
    new $P118, "Undef"
    set $P1080, $P118
    .lex "$is_code", $P1080
.annotate 'line', 258
    new $P119, "Undef"
    set $P1081, $P119
    .lex "$offset", $P1081
.annotate 'line', 259
    new $P120, "Undef"
    set $P1082, $P120
    .lex "$result", $P1082
.annotate 'line', 270
    new $P121, "Undef"
    set $P1083, $P121
    .lex "$chars", $P1083
.annotate 'line', 255
    set $P123, param_1077
    unless_null $P123, vivify_98
    new $P123, "Undef"
  vivify_98:
    if $P123, if_1084
.annotate 'line', 256
    set $P127, param_1075
    unless_null $P127, vivify_99
    new $P127, "Undef"
  vivify_99:
    set $P128, param_1074
    unless_null $P128, vivify_100
    new $P128, "Undef"
  vivify_100:
    $P129 = $P127."ACCEPTS"($P128)
    new $P130, "ResizablePMCArray"
    push $P130, $P129
.annotate 'line', 255
    set $P122, $P130
    goto if_1084_end
  if_1084:
    set $P124, param_1074
    unless_null $P124, vivify_101
    new $P124, "Undef"
  vivify_101:
    set $P125, param_1075
    unless_null $P125, vivify_102
    new $P125, "Undef"
  vivify_102:
    $P126 = "match"($P124, $P125, 1 :named("global"))
    set $P122, $P126
  if_1084_end:
    set $P1078, $P122
.annotate 'line', 257
    set $P122, param_1076
    unless_null $P122, vivify_103
    new $P122, "Undef"
  vivify_103:
    isa $I100, $P122, "Sub"
    new $P123, 'Integer'
    set $P123, $I100
    set $P1080, $P123
.annotate 'line', 258
    new $P122, "Float"
    assign $P122, 0
    set $P1081, $P122
.annotate 'line', 259
    new $P122, "StringBuilder"
    set $P1082, $P122
.annotate 'line', 261
    set $P1085, $P1078
    unless_null $P1085, vivify_104
    $P1085 = root_new ['parrot';'ResizablePMCArray']
  vivify_104:
    defined $I100, $P1085
    unless $I100, for_undef_105
    iter $P122, $P1085
    new $P125, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P125, loop1092_handler
    push_eh $P125
  loop1092_test:
    unless $P122, loop1092_done
    shift $P123, $P122
  loop1092_redo:
    .const 'Sub' $P1087 = "21_1329260309.014" 
    capture_lex $P1087
    $P1087($P123)
  loop1092_next:
    goto loop1092_test
  loop1092_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P126, exception, 'type'
    eq $P126, .CONTROL_LOOP_NEXT, loop1092_next
    eq $P126, .CONTROL_LOOP_REDO, loop1092_redo
  loop1092_done:
    pop_eh 
  for_undef_105:
.annotate 'line', 270
    set $P122, param_1074
    unless_null $P122, vivify_120
    new $P122, "Undef"
  vivify_120:
    set $S100, $P122
    length $I100, $S100
    new $P123, 'Integer'
    set $P123, $I100
    set $P1083, $P123
.annotate 'line', 272
    set $P122, $P1083
    unless_null $P122, vivify_121
    new $P122, "Undef"
  vivify_121:
    set $N100, $P122
    set $P123, $P1081
    unless_null $P123, vivify_122
    new $P123, "Undef"
  vivify_122:
    set $N101, $P123
    isgt $I100, $N100, $N101
    unless $I100, if_1093_end
.annotate 'line', 271
    set $P124, $P1082
    unless_null $P124, vivify_123
    new $P124, "Undef"
  vivify_123:
    set $P125, param_1074
    unless_null $P125, vivify_124
    new $P125, "Undef"
  vivify_124:
    set $S100, $P125
    set $P126, $P1081
    unless_null $P126, vivify_125
    new $P126, "Undef"
  vivify_125:
    set $I101, $P126
    set $P127, $P1083
    unless_null $P127, vivify_126
    new $P127, "Undef"
  vivify_126:
    set $I102, $P127
    substr $S101, $S100, $I101, $I102
    push $P124, $S101
  if_1093_end:
.annotate 'line', 274
    set $P122, $P1082
    unless_null $P122, vivify_127
    new $P122, "Undef"
  vivify_127:
    set $S100, $P122
.annotate 'line', 254
    .return ($S100)
.end


.HLL "nqp"

.namespace []
.sub "_block1086"  :anon :subid("21_1329260309.014") :outer("20_1329260309.014")
    .param pmc param_1088
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 261
    .lex "$match", param_1088
.annotate 'line', 262
    set $P125, param_1088
    unless_null $P125, vivify_106
    new $P125, "Undef"
  vivify_106:
    if $P125, if_1089
    set $P124, $P125
    goto if_1089_end
  if_1089:
.annotate 'line', 264
    set $P126, param_1088
    unless_null $P126, vivify_107
    new $P126, "Undef"
  vivify_107:
    $N100 = $P126."from"()
    find_lex $P127, "$offset"
    unless_null $P127, vivify_108
    new $P127, "Undef"
  vivify_108:
    set $N101, $P127
    isgt $I101, $N100, $N101
    unless $I101, if_1090_end
.annotate 'line', 263
    find_lex $P128, "$result"
    unless_null $P128, vivify_109
    new $P128, "Undef"
  vivify_109:
    find_lex $P129, "$text"
    unless_null $P129, vivify_110
    new $P129, "Undef"
  vivify_110:
    set $S100, $P129
    find_lex $P130, "$offset"
    unless_null $P130, vivify_111
    new $P130, "Undef"
  vivify_111:
    set $I102, $P130
    set $P131, param_1088
    unless_null $P131, vivify_112
    new $P131, "Undef"
  vivify_112:
    $P132 = $P131."from"()
    find_lex $P133, "$offset"
    unless_null $P133, vivify_113
    new $P133, "Undef"
  vivify_113:
    sub $P134, $P132, $P133
    set $I103, $P134
    substr $S101, $S100, $I102, $I103
    push $P128, $S101
  if_1090_end:
.annotate 'line', 265
    find_lex $P126, "$result"
    unless_null $P126, vivify_114
    new $P126, "Undef"
  vivify_114:
    find_lex $P128, "$is_code"
    unless_null $P128, vivify_115
    new $P128, "Undef"
  vivify_115:
    if $P128, if_1091
    find_lex $P132, "$repl"
    unless_null $P132, vivify_116
    new $P132, "Undef"
  vivify_116:
    set $P127, $P132
    goto if_1091_end
  if_1091:
    find_lex $P129, "$repl"
    unless_null $P129, vivify_117
    new $P129, "Undef"
  vivify_117:
    set $P130, param_1088
    unless_null $P130, vivify_118
    new $P130, "Undef"
  vivify_118:
    $P131 = $P129($P130)
    set $P127, $P131
  if_1091_end:
    push $P126, $P127
.annotate 'line', 266
    set $P126, param_1088
    unless_null $P126, vivify_119
    new $P126, "Undef"
  vivify_119:
    $P127 = $P126."to"()
    store_lex "$offset", $P127
.annotate 'line', 262
    set $P124, $P127
  if_1089_end:
.annotate 'line', 261
    .return ($P124)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "hash"  :subid("22_1329260309.014") :outer("10_1329260309.014")
    .param pmc param_1097 :slurpy :named
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 280
    .const 'Sub' $P1103 = "23_1329260309.014" 
    capture_lex $P1103
    .lex "%new", param_1097
.annotate 'line', 281
    $P1099 = root_new ['parrot';'Hash']
    set $P1098, $P1099
    .lex "%h", $P1098
.annotate 'line', 280
    set $P1100, $P1098
    unless_null $P1100, vivify_128
    $P1100 = root_new ['parrot';'Hash']
  vivify_128:
.annotate 'line', 282
    set $P1101, param_1097
    unless_null $P1101, vivify_129
    $P1101 = root_new ['parrot';'Hash']
  vivify_129:
    defined $I100, $P1101
    unless $I100, for_undef_130
    iter $P122, $P1101
    new $P124, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P124, loop1107_handler
    push_eh $P124
  loop1107_test:
    unless $P122, loop1107_done
    shift $P123, $P122
  loop1107_redo:
    .const 'Sub' $P1103 = "23_1329260309.014" 
    capture_lex $P1103
    $P1103($P123)
  loop1107_next:
    goto loop1107_test
  loop1107_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P126, exception, 'type'
    eq $P126, .CONTROL_LOOP_NEXT, loop1107_next
    eq $P126, .CONTROL_LOOP_REDO, loop1107_redo
  loop1107_done:
    pop_eh 
  for_undef_130:
.annotate 'line', 280
    set $P1108, $P1098
    unless_null $P1108, vivify_136
    $P1108 = root_new ['parrot';'Hash']
  vivify_136:
    .return ($P1108)
.end


.HLL "nqp"

.namespace []
.sub "_block1102"  :anon :subid("23_1329260309.014") :outer("22_1329260309.014")
    .param pmc param_1104
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 282
    .lex "$_", param_1104
.annotate 'line', 283
    find_lex $P124, "$_"
    unless_null $P124, vivify_131
    new $P124, "Undef"
  vivify_131:
    find_lex $P1105, "%new"
    unless_null $P1105, vivify_132
    $P1105 = root_new ['parrot';'Hash']
  vivify_132:
    set $P125, $P1105[$P124]
    unless_null $P125, vivify_133
    new $P125, "Undef"
  vivify_133:
    find_lex $P126, "$_"
    unless_null $P126, vivify_134
    new $P126, "Undef"
  vivify_134:
    find_lex $P1106, "%h"
    unless_null $P1106, vivify_135
    $P1106 = root_new ['parrot';'Hash']
    store_lex "%h", $P1106
  vivify_135:
    set $P1106[$P126], $P125
.annotate 'line', 282
    .return ($P125)
.end


.HLL "nqp"

.namespace []
.sub "plan"  :subid("24_1329260309.014") :outer("10_1329260309.014")
    .param pmc param_1115
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 293
    .lex "$quantity", param_1115
.annotate 'line', 294
    new $P125, 'String'
    set $P125, "1.."
    set $P126, param_1115
    unless_null $P126, vivify_137
    new $P126, "Undef"
  vivify_137:
    concat $P127, $P125, $P126
    $P128 = "say"($P127)
.annotate 'line', 293
    .return ($P128)
.end


.HLL "nqp"

.namespace []
.sub "ok"  :subid("25_1329260309.014") :outer("10_1329260309.014")
    .param pmc param_1119
    .param pmc param_1120 :optional
    .param int has_param_1120 :opt_flag
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 297
    .lex "$condition", param_1119
    if has_param_1120, optparam_138
    new $P125, "Undef"
    set param_1120, $P125
  optparam_138:
    .lex "$desc", param_1120
.annotate 'line', 298
    find_lex $P126, "$test_counter"
    unless_null $P126, vivify_139
    new $P126, "Undef"
  vivify_139:
    add $P127, $P126, 1
    store_lex "$test_counter", $P127
.annotate 'line', 300
    set $P126, param_1119
    unless_null $P126, vivify_140
    new $P126, "Undef"
  vivify_140:
    if $P126, unless_1121_end
.annotate 'line', 301
    "print"("not ")
  unless_1121_end:
.annotate 'line', 303
    new $P126, 'String'
    set $P126, "ok "
    find_lex $P127, "$test_counter"
    unless_null $P127, vivify_141
    new $P127, "Undef"
  vivify_141:
    concat $P129, $P126, $P127
    "print"($P129)
.annotate 'line', 304
    set $P126, param_1120
    unless_null $P126, vivify_142
    new $P126, "Undef"
  vivify_142:
    unless $P126, if_1122_end
.annotate 'line', 305
    new $P127, 'String'
    set $P127, " - "
    set $P129, param_1120
    unless_null $P129, vivify_143
    new $P129, "Undef"
  vivify_143:
    concat $P130, $P127, $P129
    "print"($P130)
  if_1122_end:
.annotate 'line', 307
    find_lex $P126, "$test_counter"
    unless_null $P126, vivify_144
    new $P126, "Undef"
  vivify_144:
    set $N100, $P126
    find_lex $P127, "$todo_upto_test_num"
    unless_null $P127, vivify_145
    new $P127, "Undef"
  vivify_145:
    set $N101, $P127
    isle $I100, $N100, $N101
    unless $I100, if_1123_end
.annotate 'line', 308
    find_lex $P129, "$todo_reason"
    unless_null $P129, vivify_146
    new $P129, "Undef"
  vivify_146:
    "print"($P129)
  if_1123_end:
.annotate 'line', 310
    "print"("\n")
.annotate 'line', 312
    set $P127, param_1119
    unless_null $P127, vivify_147
    new $P127, "Undef"
  vivify_147:
    if $P127, if_1124
    new $P130, "Float"
    assign $P130, 0
    set $P126, $P130
    goto if_1124_end
  if_1124:
    new $P129, "Float"
    assign $P129, 1
    set $P126, $P129
  if_1124_end:
.annotate 'line', 297
    .return ($P126)
.end


.HLL "nqp"

.namespace []
.sub "todo"  :subid("26_1329260309.014") :outer("10_1329260309.014")
    .param pmc param_1128
    .param pmc param_1129
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 315
    .lex "$reason", param_1128
    .lex "$count", param_1129
.annotate 'line', 316
    find_lex $P127, "$test_counter"
    unless_null $P127, vivify_148
    new $P127, "Undef"
  vivify_148:
    set $P129, param_1129
    unless_null $P129, vivify_149
    new $P129, "Undef"
  vivify_149:
    add $P130, $P127, $P129
    store_lex "$todo_upto_test_num", $P130
.annotate 'line', 317
    new $P127, 'String'
    set $P127, "# TODO "
    set $P129, param_1128
    unless_null $P129, vivify_150
    new $P129, "Undef"
  vivify_150:
    concat $P130, $P127, $P129
    store_lex "$todo_reason", $P130
.annotate 'line', 315
    .return ($P130)
.end


.HLL "nqp"

.namespace []
.sub "skip"  :subid("27_1329260309.014") :outer("10_1329260309.014")
    .param pmc param_1133
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 320
    .lex "$desc", param_1133
.annotate 'line', 321
    find_lex $P127, "$test_counter"
    unless_null $P127, vivify_151
    new $P127, "Undef"
  vivify_151:
    add $P129, $P127, 1
    store_lex "$test_counter", $P129
.annotate 'line', 322
    new $P127, 'String'
    set $P127, "ok "
    find_lex $P129, "$test_counter"
    unless_null $P129, vivify_152
    new $P129, "Undef"
  vivify_152:
    concat $P131, $P127, $P129
    concat $P132, $P131, " # SKIP "
    set $P133, param_1133
    unless_null $P133, vivify_153
    new $P133, "Undef"
  vivify_153:
    concat $P134, $P132, $P133
    concat $P135, $P134, "\n"
    $P136 = "say"($P135)
.annotate 'line', 320
    .return ($P136)
.end


.HLL "nqp"

.namespace []
.sub "_block1135"  :anon :subid("28_1329260309.014") :outer("10_1329260309.014")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 12
    .lex "$?PACKAGE", $P1137
    .lex "$?CLASS", $P1138
.annotate 'line', 13
    set $P127, $P1137
    get_who $P129, $P127
    set $P133, $P129["NQPModuleHOW"]
    unless_null $P133, vivify_154
    get_hll_global $P131, "GLOBAL"
    get_who $P132, $P131
    set $P133, $P132["NQPModuleHOW"]
  vivify_154:
    set $P134, $P1137
    unless_null $P134, vivify_155
    new $P134, "Undef"
    set $P1137, $P134
  vivify_155:
    get_who $P135, $P134
    set $P135["module"], $P133
.annotate 'line', 14
    set $P127, $P1137
    get_who $P129, $P127
    set $P133, $P129["NQPClassHOW"]
    unless_null $P133, vivify_156
    get_hll_global $P131, "GLOBAL"
    get_who $P132, $P131
    set $P133, $P132["NQPClassHOW"]
  vivify_156:
    set $P134, $P1137
    unless_null $P134, vivify_157
    new $P134, "Undef"
    set $P1137, $P134
  vivify_157:
    get_who $P135, $P134
    set $P135["class"], $P133
.annotate 'line', 15
    set $P127, $P1137
    get_who $P129, $P127
    set $P133, $P129["NQPAttribute"]
    unless_null $P133, vivify_158
    get_hll_global $P131, "GLOBAL"
    get_who $P132, $P131
    set $P133, $P132["NQPAttribute"]
  vivify_158:
    set $P134, $P1137
    unless_null $P134, vivify_159
    new $P134, "Undef"
    set $P1137, $P134
  vivify_159:
    get_who $P135, $P134
    set $P135["class-attr"], $P133
.annotate 'line', 16
    set $P127, $P1137
    get_who $P129, $P127
    set $P133, $P129["NQPClassHOW"]
    unless_null $P133, vivify_160
    get_hll_global $P131, "GLOBAL"
    get_who $P132, $P131
    set $P133, $P132["NQPClassHOW"]
  vivify_160:
    set $P134, $P1137
    unless_null $P134, vivify_161
    new $P134, "Undef"
    set $P1137, $P134
  vivify_161:
    get_who $P135, $P134
    set $P135["grammar"], $P133
.annotate 'line', 17
    set $P127, $P1137
    get_who $P129, $P127
    set $P133, $P129["NQPAttribute"]
    unless_null $P133, vivify_162
    get_hll_global $P131, "GLOBAL"
    get_who $P132, $P131
    set $P133, $P132["NQPAttribute"]
  vivify_162:
    set $P134, $P1137
    unless_null $P134, vivify_163
    new $P134, "Undef"
    set $P1137, $P134
  vivify_163:
    get_who $P135, $P134
    set $P135["grammar-attr"], $P133
.annotate 'line', 18
    set $P127, $P1137
    get_who $P129, $P127
    set $P133, $P129["NQPParametricRoleHOW"]
    unless_null $P133, vivify_164
    get_hll_global $P131, "GLOBAL"
    get_who $P132, $P131
    set $P133, $P132["NQPParametricRoleHOW"]
  vivify_164:
    set $P134, $P1137
    unless_null $P134, vivify_165
    new $P134, "Undef"
    set $P1137, $P134
  vivify_165:
    get_who $P135, $P134
    set $P135["role"], $P133
.annotate 'line', 19
    set $P127, $P1137
    get_who $P129, $P127
    set $P133, $P129["NQPAttribute"]
    unless_null $P133, vivify_166
    get_hll_global $P131, "GLOBAL"
    get_who $P132, $P131
    set $P133, $P132["NQPAttribute"]
  vivify_166:
    set $P134, $P1137
    unless_null $P134, vivify_167
    new $P134, "Undef"
    set $P1137, $P134
  vivify_167:
    get_who $P135, $P134
    set $P135["role-attr"], $P133
.annotate 'line', 20
    set $P127, $P1137
    get_who $P129, $P127
    set $P133, $P129["NQPNativeHOW"]
    unless_null $P133, vivify_168
    get_hll_global $P131, "GLOBAL"
    get_who $P132, $P131
    set $P133, $P132["NQPNativeHOW"]
  vivify_168:
    set $P134, $P1137
    unless_null $P134, vivify_169
    new $P134, "Undef"
    set $P1137, $P134
  vivify_169:
    get_who $P135, $P134
    set $P135["native"], $P133
.annotate 'line', 12
    .return ($P133)
.end


.HLL "nqp"

.namespace []
.sub "_block1139"  :anon :subid("29_1329260309.014") :outer("10_1329260309.014")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 23
    .lex "$?PACKAGE", $P1141
    .lex "$?CLASS", $P1142
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block1143"  :anon :subid("30_1329260309.014") :outer("10_1329260309.014")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 25
    .lex "$?PACKAGE", $P1145
    .lex "$?CLASS", $P1146
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block1147"  :anon :subid("31_1329260309.014") :outer("10_1329260309.014")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 27
    .lex "$?PACKAGE", $P1149
    .lex "$?CLASS", $P1150
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block1151"  :anon :subid("32_1329260309.014") :outer("10_1329260309.014")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 30
    .lex "$?PACKAGE", $P1153
    .lex "$?CLASS", $P1154
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block1155"  :anon :subid("33_1329260309.014") :outer("10_1329260309.014")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 39
    .lex "$?PACKAGE", $P1157
    .lex "$?CLASS", $P1158
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block1159"  :anon :subid("34_1329260309.014") :outer("10_1329260309.014")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 45
    .const 'Sub' $P1213 = "47_1329260309.014" 
    capture_lex $P1213
    .const 'Sub' $P1210 = "46_1329260309.014" 
    capture_lex $P1210
    .const 'Sub' $P1206 = "45_1329260309.014" 
    capture_lex $P1206
    .const 'Sub' $P1203 = "44_1329260309.014" 
    capture_lex $P1203
    .const 'Sub' $P1200 = "43_1329260309.014" 
    capture_lex $P1200
    .const 'Sub' $P1198 = "42_1329260309.014" 
    capture_lex $P1198
    .const 'Sub' $P1194 = "41_1329260309.014" 
    capture_lex $P1194
    .const 'Sub' $P1180 = "39_1329260309.014" 
    capture_lex $P1180
    .const 'Sub' $P1171 = "37_1329260309.014" 
    capture_lex $P1171
    .const 'Sub' $P1165 = "36_1329260309.014" 
    capture_lex $P1165
    .const 'Sub' $P1163 = "35_1329260309.014" 
    capture_lex $P1163
    .lex "$?PACKAGE", $P1161
    .lex "$?CLASS", $P1162
.annotate 'line', 90
    .const 'Sub' $P1213 = "47_1329260309.014" 
    newclosure $P1234, $P1213
.annotate 'line', 45
    .return ($P1234)
.end


.HLL "nqp"

.namespace []
.sub "CREATE" :anon :subid("35_1329260309.014") :outer("34_1329260309.014")
    .param pmc param_1164
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 46
    .lex "self", param_1164
.annotate 'line', 47
    set $P127, param_1164
    nqp_decontainerize $P129, $P127
    repr_instance_of $P131, $P129
.annotate 'line', 46
    .return ($P131)
.end


.HLL "nqp"

.namespace []
.sub "bless" :anon :subid("36_1329260309.014") :outer("34_1329260309.014")
    .param pmc param_1166
    .param pmc param_1168 :slurpy :named
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 50
    .lex "$self", param_1166
    set $P127, param_1166
    set $P1167, $P127
    .lex "self", $P1167
    .lex "%attributes", param_1168
.annotate 'line', 51
    new $P129, "Undef"
    set $P1169, $P129
    .lex "$instance", $P1169
    set $P131, $P1167
    nqp_decontainerize $P132, $P131
    $P133 = $P132."CREATE"()
    set $P1169, $P133
.annotate 'line', 52
    set $P131, $P1169
    unless_null $P131, vivify_170
    new $P131, "Undef"
  vivify_170:
    set $P1170, param_1168
    unless_null $P1170, vivify_171
    $P1170 = root_new ['parrot';'Hash']
  vivify_171:
    $P131."BUILDALL"($P1170 :flat)
.annotate 'line', 50
    set $P131, $P1169
    unless_null $P131, vivify_172
    new $P131, "Undef"
  vivify_172:
    .return ($P131)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "BUILDALL" :anon :subid("37_1329260309.014") :outer("34_1329260309.014")
    .param pmc param_1172
    .param pmc param_1174 :slurpy :named
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 56
    .const 'Sub' $P1176 = "38_1329260309.014" 
    capture_lex $P1176
    .lex "$self", param_1172
    set $P127, param_1172
    set $P1173, $P127
    .lex "self", $P1173
    .lex "%attributes", param_1174
.annotate 'line', 57
    set $P131, param_1172
    unless_null $P131, vivify_173
    new $P131, "Undef"
  vivify_173:
    get_how $P132, $P131
    set $P133, param_1172
    unless_null $P133, vivify_174
    new $P133, "Undef"
  vivify_174:
    $P134 = $P132."parents"($P133)
    defined $I100, $P134
    unless $I100, for_undef_175
    iter $P129, $P134
    new $P137, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P137, loop1179_handler
    push_eh $P137
  loop1179_test:
    unless $P129, loop1179_done
    shift $P135, $P129
  loop1179_redo:
    .const 'Sub' $P1176 = "38_1329260309.014" 
    capture_lex $P1176
    $P1176($P135)
  loop1179_next:
    goto loop1179_test
  loop1179_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P138, exception, 'type'
    eq $P138, .CONTROL_LOOP_NEXT, loop1179_next
    eq $P138, .CONTROL_LOOP_REDO, loop1179_redo
  loop1179_done:
    pop_eh 
  for_undef_175:
.annotate 'line', 56
    .return ($P129)
.end


.HLL "nqp"

.namespace []
.sub "_block1175"  :anon :subid("38_1329260309.014") :outer("37_1329260309.014")
    .param pmc param_1177
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 57
    .lex "$class", param_1177
.annotate 'line', 58
    find_lex $P137, "$self"
    unless_null $P137, vivify_176
    new $P137, "Undef"
  vivify_176:
    set $P138, param_1177
    unless_null $P138, vivify_177
    new $P138, "Undef"
  vivify_177:
    find_lex $P1178, "%attributes"
    unless_null $P1178, vivify_178
    $P1178 = root_new ['parrot';'Hash']
  vivify_178:
    $P139 = $P137."BUILD_MAGIC"($P138, $P1178 :flat)
.annotate 'line', 57
    .return ($P139)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "BUILD_MAGIC" :anon :subid("39_1329260309.014") :outer("34_1329260309.014")
    .param pmc param_1181
    .param pmc param_1183
    .param pmc param_1184 :slurpy :named
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 62
    .const 'Sub' $P1186 = "40_1329260309.014" 
    capture_lex $P1186
    .lex "$self", param_1181
    set $P127, param_1181
    set $P1182, $P127
    .lex "self", $P1182
    .lex "$type", param_1183
    .lex "%attributes", param_1184
.annotate 'line', 63
    set $P131, param_1183
    unless_null $P131, vivify_179
    new $P131, "Undef"
  vivify_179:
    get_how $P132, $P131
    set $P133, param_1183
    unless_null $P133, vivify_180
    new $P133, "Undef"
  vivify_180:
    $P134 = $P132."attributes"($P133, 1 :named("local"))
    defined $I100, $P134
    unless $I100, for_undef_181
    iter $P129, $P134
    new $P140, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P140, loop1193_handler
    push_eh $P140
  loop1193_test:
    unless $P129, loop1193_done
    shift $P135, $P129
  loop1193_redo:
    .const 'Sub' $P1186 = "40_1329260309.014" 
    capture_lex $P1186
    $P1186($P135)
  loop1193_next:
    goto loop1193_test
  loop1193_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P141, exception, 'type'
    eq $P141, .CONTROL_LOOP_NEXT, loop1193_next
    eq $P141, .CONTROL_LOOP_REDO, loop1193_redo
  loop1193_done:
    pop_eh 
  for_undef_181:
.annotate 'line', 62
    .return ($P129)
.end


.HLL "nqp"

.namespace []
.sub "_block1185"  :anon :subid("40_1329260309.014") :outer("39_1329260309.014")
    .param pmc param_1189
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 64
    new $P137, "Undef"
    set $P1187, $P137
    .lex "$name", $P1187
.annotate 'line', 65
    new $P138, "Undef"
    set $P1188, $P138
    .lex "$shortname", $P1188
    .lex "$_", param_1189
.annotate 'line', 64
    find_lex $P139, "$_"
    unless_null $P139, vivify_182
    new $P139, "Undef"
  vivify_182:
    $P140 = $P139."name"()
    set $P1187, $P140
.annotate 'line', 65
    set $P139, $P1187
    unless_null $P139, vivify_183
    new $P139, "Undef"
  vivify_183:
    set $S101, $P139
    new $P140, "Float"
    assign $P140, 2
    set $I101, $P140
    substr $S102, $S101, $I101
    new $P141, 'String'
    set $P141, $S102
    set $P1188, $P141
.annotate 'line', 66
    set $P140, $P1188
    unless_null $P140, vivify_184
    new $P140, "Undef"
  vivify_184:
    find_lex $P1191, "%attributes"
    unless_null $P1191, vivify_185
    $P1191 = root_new ['parrot';'Hash']
  vivify_185:
    exists $I101, $P1191[$P140]
    if $I101, if_1190
    new $P139, 'Integer'
    set $P139, $I101
    goto if_1190_end
  if_1190:
.annotate 'line', 67
    find_lex $P141, "$self"
    unless_null $P141, vivify_186
    new $P141, "Undef"
  vivify_186:
    find_lex $P142, "$type"
    unless_null $P142, vivify_187
    new $P142, "Undef"
  vivify_187:
    set $P143, $P1187
    unless_null $P143, vivify_188
    new $P143, "Undef"
  vivify_188:
    set $S101, $P143
    set $P144, $P1188
    unless_null $P144, vivify_189
    new $P144, "Undef"
  vivify_189:
    find_lex $P1192, "%attributes"
    unless_null $P1192, vivify_190
    $P1192 = root_new ['parrot';'Hash']
  vivify_190:
    set $P145, $P1192[$P144]
    unless_null $P145, vivify_191
    new $P145, "Undef"
  vivify_191:
    setattribute $P141, $P142, $S101, $P145
  if_1190_end:
.annotate 'line', 63
    .return ($P139)
.end


.HLL "nqp"

.namespace []
.sub "new" :anon :subid("41_1329260309.014") :outer("34_1329260309.014")
    .param pmc param_1195
    .param pmc param_1196 :slurpy :named
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 72
    .lex "self", param_1195
    .lex "%attributes", param_1196
.annotate 'line', 73
    set $P127, param_1195
    nqp_decontainerize $P129, $P127
    set $P1197, param_1196
    unless_null $P1197, vivify_192
    $P1197 = root_new ['parrot';'Hash']
  vivify_192:
    $P131 = $P129."bless"($P1197 :flat)
.annotate 'line', 72
    .return ($P131)
.end


.HLL "nqp"

.namespace []
.sub "Str" :instanceof("DispatcherSub"):anon :subid("42_1329260309.014") :outer("34_1329260309.014")
    .param pmc param_1199
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 76
    .lex "self", param_1199
    multi_dispatch_over_lexical_candidates $P127
    .return ($P127)
.end


.HLL "nqp"

.namespace []
.sub "Str" :anon :subid("43_1329260309.014") :outer("34_1329260309.014")
    .param pmc param_1201
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 77
    .lex "$self", param_1201
    set $P127, param_1201
    set $P1202, $P127
    .lex "self", $P1202
.annotate 'line', 78
    set $P129, $P1202
    nqp_decontainerize $P131, $P129
    get_how $P132, $P131
    set $P133, $P1202
    nqp_decontainerize $P134, $P133
    $P135 = $P132."name"($P134)
    concat $P137, $P135, "()"
.annotate 'line', 77
    .return ($P137)
.end


.HLL "nqp"

.namespace []
.sub "ACCEPTS" :instanceof("DispatcherSub"):anon :subid("44_1329260309.014") :outer("34_1329260309.014")
    .param pmc param_1204
    .param pmc param_1205
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 81
    .lex "self", param_1204
    .lex "$topic", param_1205
    multi_dispatch_over_lexical_candidates $P127
    .return ($P127)
.end


.HLL "nqp"

.namespace []
.sub "ACCEPTS" :anon :subid("45_1329260309.014") :outer("34_1329260309.014")
    .param pmc param_1207
    .param pmc param_1209
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 82
    .lex "$self", param_1207
    set $P127, param_1207
    set $P1208, $P127
    .lex "self", $P1208
    .lex "$topic", param_1209
.annotate 'line', 83
    set $P129, param_1209
    unless_null $P129, vivify_193
    new $P129, "Undef"
  vivify_193:
    set $P131, $P1208
    nqp_decontainerize $P132, $P131
    get_what $P133, $P132
    type_check $I100, $P129, $P133
.annotate 'line', 82
    .return ($I100)
.end


.HLL "nqp"

.namespace []
.sub "isa" :anon :subid("46_1329260309.014") :outer("34_1329260309.014")
    .param pmc param_1211
    .param pmc param_1212
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 86
    .lex "self", param_1211
    .lex "$type", param_1212
.annotate 'line', 87
    set $P127, param_1211
    nqp_decontainerize $P129, $P127
    get_how $P131, $P129
    set $P132, param_1211
    nqp_decontainerize $P133, $P132
    set $P134, param_1212
    unless_null $P134, vivify_194
    new $P134, "Undef"
  vivify_194:
    $P135 = $P131."isa"($P133, $P134)
.annotate 'line', 86
    .return ($P135)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "__dump" :anon :subid("47_1329260309.014") :outer("34_1329260309.014")
    .param pmc param_1216
    .param pmc param_1217
    .param pmc param_1218
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 90
    .const 'Sub' $P1222 = "48_1329260309.014" 
    capture_lex $P1222
    new $P1215, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P1215, control_1214
    push_eh $P1215
    .lex "self", param_1216
    .lex "$dumper", param_1217
    .lex "$label", param_1218
.annotate 'line', 92
    new $P127, "Undef"
    set $P1219, $P127
    .lex "$subindent", $P1219
.annotate 'line', 91
    set $P129, param_1216
    nqp_decontainerize $P131, $P129
    repr_defined $I100, $P131
    if $I100, unless_1220_end
    new $P132, "Exception"
    set $P132['type'], .CONTROL_RETURN
    new $P133, "Float"
    assign $P133, 0
    setattribute $P132, 'payload', $P133
    throw $P132
  unless_1220_end:
.annotate 'line', 92
    set $P129, param_1217
    unless_null $P129, vivify_195
    new $P129, "Undef"
  vivify_195:
    $P131 = $P129."newIndent"()
    set $P1219, $P131
.annotate 'line', 93
    "print"("{")
.annotate 'line', 94
    set $P131, param_1216
    nqp_decontainerize $P132, $P131
    get_how $P133, $P132
    set $P134, param_1216
    nqp_decontainerize $P135, $P134
    $P137 = $P133."parents"($P135)
    defined $I100, $P137
    unless $I100, for_undef_196
    iter $P129, $P137
    new $P140, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P140, loop1233_handler
    push_eh $P140
  loop1233_test:
    unless $P129, loop1233_done
    shift $P138, $P129
  loop1233_redo:
    .const 'Sub' $P1222 = "48_1329260309.014" 
    capture_lex $P1222
    $P1222($P138)
  loop1233_next:
    goto loop1233_test
  loop1233_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P141, exception, 'type'
    eq $P141, .CONTROL_LOOP_NEXT, loop1233_next
    eq $P141, .CONTROL_LOOP_REDO, loop1233_redo
  loop1233_done:
    pop_eh 
  for_undef_196:
.annotate 'line', 113
    set $P129, param_1217
    unless_null $P129, vivify_225
    new $P129, "Undef"
  vivify_225:
    $P129."deleteIndent"()
.annotate 'line', 114
    set $P129, param_1217
    unless_null $P129, vivify_226
    new $P129, "Undef"
  vivify_226:
    $P131 = $P129."indent"()
    $P132 = "print"("\n", $P131, "}")
.annotate 'line', 90
    .return ($P132)
  control_1214:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P129, exception, "payload"
    .return ($P129)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "_block1221"  :anon :subid("48_1329260309.014") :outer("47_1329260309.014")
    .param pmc param_1223
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 94
    .const 'Sub' $P1225 = "49_1329260309.014" 
    capture_lex $P1225
    .lex "$type", param_1223
.annotate 'line', 95
    set $P140, param_1223
    unless_null $P140, vivify_197
    new $P140, "Undef"
  vivify_197:
    get_how $P141, $P140
    set $P142, param_1223
    unless_null $P142, vivify_198
    new $P142, "Undef"
  vivify_198:
    $P143 = $P141."attributes"($P142, 1 :named("local"))
    defined $I101, $P143
    unless $I101, for_undef_199
    iter $P139, $P143
    new $P148, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P148, loop1232_handler
    push_eh $P148
  loop1232_test:
    unless $P139, loop1232_done
    shift $P144, $P139
  loop1232_redo:
    .const 'Sub' $P1225 = "49_1329260309.014" 
    capture_lex $P1225
    $P1225($P144)
  loop1232_next:
    goto loop1232_test
  loop1232_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P149, exception, 'type'
    eq $P149, .CONTROL_LOOP_NEXT, loop1232_next
    eq $P149, .CONTROL_LOOP_REDO, loop1232_redo
  loop1232_done:
    pop_eh 
  for_undef_199:
.annotate 'line', 94
    .return ($P139)
.end


.HLL "nqp"

.namespace []
.sub "_block1224"  :anon :subid("49_1329260309.014") :outer("48_1329260309.014")
    .param pmc param_1228
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 96
    new $P145, "Undef"
    set $P1226, $P145
    .lex "$name", $P1226
.annotate 'line', 97
    new $P146, "Undef"
    set $P1227, $P146
    .lex "$attrtype", $P1227
    .lex "$_", param_1228
.annotate 'line', 96
    find_lex $P147, "$_"
    unless_null $P147, vivify_200
    new $P147, "Undef"
  vivify_200:
    $P148 = $P147."name"()
    set $P1226, $P148
.annotate 'line', 97
    find_lex $P147, "$_"
    unless_null $P147, vivify_201
    new $P147, "Undef"
  vivify_201:
    $P148 = $P147."type"()
    set $P1227, $P148
.annotate 'line', 98
    find_lex $P147, "$subindent"
    unless_null $P147, vivify_202
    new $P147, "Undef"
  vivify_202:
    find_lex $P148, "$type"
    unless_null $P148, vivify_203
    new $P148, "Undef"
  vivify_203:
    get_how $P149, $P148
    find_lex $P150, "$type"
    unless_null $P150, vivify_204
    new $P150, "Undef"
  vivify_204:
    $P151 = $P149."name"($P150)
    set $P152, $P1226
    unless_null $P152, vivify_205
    new $P152, "Undef"
  vivify_205:
    "print"("\n", $P147, $P151, "::", $P152, " => ")
.annotate 'line', 99
    set $P148, $P1227
    unless_null $P148, vivify_206
    new $P148, "Undef"
  vivify_206:
    find_lex $P149, "int"
    issame $I102, $P148, $P149
    if $I102, if_1229
.annotate 'line', 102
    set $P151, $P1227
    unless_null $P151, vivify_207
    new $P151, "Undef"
  vivify_207:
    find_lex $P152, "num"
    issame $I103, $P151, $P152
    if $I103, if_1230
.annotate 'line', 105
    set $P154, $P1227
    unless_null $P154, vivify_208
    new $P154, "Undef"
  vivify_208:
    find_lex $P155, "str"
    issame $I104, $P154, $P155
    if $I104, if_1231
.annotate 'line', 109
    find_lex $P157, "$dumper"
    unless_null $P157, vivify_209
    new $P157, "Undef"
  vivify_209:
    find_lex $P158, "$label"
    unless_null $P158, vivify_210
    new $P158, "Undef"
  vivify_210:
    find_lex $P159, "self"
    nqp_decontainerize $P161, $P159
    find_lex $P162, "$type"
    unless_null $P162, vivify_211
    new $P162, "Undef"
  vivify_211:
    set $P163, $P1226
    unless_null $P163, vivify_212
    new $P163, "Undef"
  vivify_212:
    set $S101, $P163
    getattribute $P165, $P161, $P162, $S101
    $P166 = $P157."dump"($P158, $P165)
.annotate 'line', 108
    set $P153, $P166
.annotate 'line', 105
    goto if_1231_end
  if_1231:
.annotate 'line', 106
    find_lex $P157, "$dumper"
    unless_null $P157, vivify_213
    new $P157, "Undef"
  vivify_213:
    find_lex $P158, "$label"
    unless_null $P158, vivify_214
    new $P158, "Undef"
  vivify_214:
    find_lex $P159, "self"
    nqp_decontainerize $P161, $P159
    find_lex $P162, "$type"
    unless_null $P162, vivify_215
    new $P162, "Undef"
  vivify_215:
    set $P163, $P1226
    unless_null $P163, vivify_216
    new $P163, "Undef"
  vivify_216:
    set $S101, $P163
    repr_get_attr_str $S102, $P161, $P162, $S101
    $P164 = $P157."dump"($P158, $S102)
.annotate 'line', 105
    set $P153, $P164
  if_1231_end:
    set $P150, $P153
.annotate 'line', 102
    goto if_1230_end
  if_1230:
.annotate 'line', 103
    find_lex $P153, "$dumper"
    unless_null $P153, vivify_217
    new $P153, "Undef"
  vivify_217:
    find_lex $P154, "$label"
    unless_null $P154, vivify_218
    new $P154, "Undef"
  vivify_218:
    find_lex $P155, "self"
    nqp_decontainerize $P157, $P155
    find_lex $P158, "$type"
    unless_null $P158, vivify_219
    new $P158, "Undef"
  vivify_219:
    set $P159, $P1226
    unless_null $P159, vivify_220
    new $P159, "Undef"
  vivify_220:
    set $S101, $P159
    repr_get_attr_num $N100, $P157, $P158, $S101
    $P160 = $P153."dump"($P154, $N100)
.annotate 'line', 102
    set $P150, $P160
  if_1230_end:
    set $P147, $P150
.annotate 'line', 99
    goto if_1229_end
  if_1229:
.annotate 'line', 100
    find_lex $P150, "$dumper"
    unless_null $P150, vivify_221
    new $P150, "Undef"
  vivify_221:
    find_lex $P151, "$label"
    unless_null $P151, vivify_222
    new $P151, "Undef"
  vivify_222:
    find_lex $P152, "self"
    nqp_decontainerize $P153, $P152
    find_lex $P154, "$type"
    unless_null $P154, vivify_223
    new $P154, "Undef"
  vivify_223:
    set $P155, $P1226
    unless_null $P155, vivify_224
    new $P155, "Undef"
  vivify_224:
    set $S101, $P155
    repr_get_attr_int $I103, $P153, $P154, $S101
    $P156 = $P150."dump"($P151, $I103)
.annotate 'line', 99
    set $P147, $P156
  if_1229_end:
.annotate 'line', 95
    .return ($P147)
.end


.HLL "nqp"

.namespace []
.sub "_block1235"  :anon :subid("50_1329260309.014") :outer("10_1329260309.014")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 119
    .const 'Sub' $P1247 = "54_1329260309.014" 
    capture_lex $P1247
    .const 'Sub' $P1244 = "53_1329260309.014" 
    capture_lex $P1244
    .const 'Sub' $P1242 = "52_1329260309.014" 
    capture_lex $P1242
    .const 'Sub' $P1239 = "51_1329260309.014" 
    capture_lex $P1239
    .lex "$?PACKAGE", $P1237
    .lex "$?CLASS", $P1238
.annotate 'line', 153
    .const 'Sub' $P1247 = "54_1329260309.014" 
    newclosure $P1250, $P1247
.annotate 'line', 119
    .return ($P1250)
.end


.HLL "nqp"

.namespace []
.sub "new" :anon :subid("51_1329260309.014") :outer("50_1329260309.014")
    .param pmc param_1240
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 140
    .lex "self", param_1240
.annotate 'line', 141
    new $P127, "Undef"
    set $P1241, $P127
    .lex "$n", $P1241
    set $P129, param_1240
    nqp_decontainerize $P131, $P129
    $P132 = $P131."CREATE"()
    set $P1241, $P132
.annotate 'line', 142
    set $P129, $P1241
    unless_null $P129, vivify_227
    new $P129, "Undef"
  vivify_227:
    $P129."BUILD"()
.annotate 'line', 140
    set $P129, $P1241
    unless_null $P129, vivify_228
    new $P129, "Undef"
  vivify_228:
    .return ($P129)
.end


.HLL "nqp"

.namespace []
.sub "BUILD" :anon :subid("52_1329260309.014") :outer("50_1329260309.014")
    .param pmc param_1243
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 146
    .lex "self", param_1243
.annotate 'line', 147
    new $P127, "ResizablePMCArray"
    set $P129, param_1243
    nqp_decontainerize $P131, $P129
    find_lex $P132, "$?CLASS"
    repr_bind_attr_obj $P131, $P132, "@!array", 0, $P127
.annotate 'line', 148
    new $P127, "Hash"
    set $P129, param_1243
    nqp_decontainerize $P131, $P129
    find_lex $P132, "$?CLASS"
    repr_bind_attr_obj $P131, $P132, "%!hash", 1, $P127
.annotate 'line', 146
    .return ($P127)
.end


.HLL "nqp"

.namespace []
.sub "list" :anon :subid("53_1329260309.014") :outer("50_1329260309.014")
    .param pmc param_1245
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 151
    .lex "self", param_1245
    set $P127, param_1245
    nqp_decontainerize $P129, $P127
    find_lex $P131, "$?CLASS"
    repr_get_attr_obj $P1246, $P129, $P131, "@!array", 0
    unless_null $P1246, vivify_229
    $P1246 = root_new ['parrot';'ResizablePMCArray']
  vivify_229:
    .return ($P1246)
.end


.HLL "nqp"

.namespace []
.sub "hash" :anon :subid("54_1329260309.014") :outer("50_1329260309.014")
    .param pmc param_1248
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 153
    .lex "self", param_1248
    set $P127, param_1248
    nqp_decontainerize $P129, $P127
    find_lex $P131, "$?CLASS"
    repr_get_attr_obj $P1249, $P129, $P131, "%!hash", 1
    unless_null $P1249, vivify_230
    $P1249 = root_new ['parrot';'Hash']
  vivify_230:
    .return ($P1249)
.end


.HLL "nqp"

.namespace []
.sub "_block1252" :load :anon :subid("55_1329260309.014")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 1
    .const '' $P1254 = "10_1329260309.014" 
    $P135 = $P1254()
    .return ($P135)
.end

