
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1305640909.39")
    .param pmc param_13 :slurpy
.annotate 'line', 0
    .const 'Sub' $P493 = "45_1305640909.39" 
    capture_lex $P493
    .const 'Sub' $P378 = "32_1305640909.39" 
    capture_lex $P378
    .const 'Sub' $P374 = "31_1305640909.39" 
    capture_lex $P374
    .const 'Sub' $P370 = "30_1305640909.39" 
    capture_lex $P370
    .const 'Sub' $P366 = "29_1305640909.39" 
    capture_lex $P366
    .const 'Sub' $P306 = "28_1305640909.39" 
    capture_lex $P306
    .const 'Sub' $P292 = "27_1305640909.39" 
    capture_lex $P292
    .const 'Sub' $P282 = "26_1305640909.39" 
    capture_lex $P282
    .const 'Sub' $P253 = "25_1305640909.39" 
    capture_lex $P253
    .const 'Sub' $P246 = "24_1305640909.39" 
    capture_lex $P246
    .const 'Sub' $P222 = "22_1305640909.39" 
    capture_lex $P222
    .const 'Sub' $P135 = "20_1305640909.39" 
    capture_lex $P135
    .const 'Sub' $P102 = "18_1305640909.39" 
    capture_lex $P102
    .const 'Sub' $P97 = "17_1305640909.39" 
    capture_lex $P97
    .const 'Sub' $P83 = "15_1305640909.39" 
    capture_lex $P83
    .const 'Sub' $P71 = "14_1305640909.39" 
    capture_lex $P71
    .const 'Sub' $P60 = "13_1305640909.39" 
    capture_lex $P60
    .const 'Sub' $P55 = "12_1305640909.39" 
    capture_lex $P55
    .const 'Sub' $P22 = "11_1305640909.39" 
    capture_lex $P22
.annotate 'line', 1
    .lex "@ARGS", param_13
    .lex "GLOBALish", $P14
    .lex "$?PACKAGE", $P15
    .lex "EXPORTHOW", $P16
    .lex "int", $P17
    .lex "num", $P18
    .lex "str", $P19
    .lex "NQPMu", $P20
    .lex "NQPCapture", $P21
.annotate 'line', 158
    .const 'Sub' $P22 = "11_1305640909.39" 
    newclosure $P54, $P22
    .lex "open", $P54
.annotate 'line', 170
    .const 'Sub' $P55 = "12_1305640909.39" 
    newclosure $P59, $P55
    .lex "close", $P59
.annotate 'line', 178
    .const 'Sub' $P60 = "13_1305640909.39" 
    newclosure $P70, $P60
    .lex "slurp", $P70
.annotate 'line', 190
    .const 'Sub' $P71 = "14_1305640909.39" 
    newclosure $P82, $P71
    .lex "spew", $P82
.annotate 'line', 197
    .const 'Sub' $P83 = "15_1305640909.39" 
    newclosure $P96, $P83
    .lex "print", $P96
.annotate 'line', 204
    .const 'Sub' $P97 = "17_1305640909.39" 
    newclosure $P101, $P97
    .lex "say", $P101
.annotate 'line', 222
    .const 'Sub' $P102 = "18_1305640909.39" 
    newclosure $P134, $P102
    .lex "match", $P134
.annotate 'line', 244
    .const 'Sub' $P135 = "20_1305640909.39" 
    newclosure $P221, $P135
    .lex "subst", $P221
.annotate 'line', 270
    .const 'Sub' $P222 = "22_1305640909.39" 
    newclosure $P242, $P222
    .lex "hash", $P242
.annotate 'line', 279
    new $P243, "Undef"
    .lex "$test_counter", $P243
.annotate 'line', 280
    new $P244, "Undef"
    .lex "$todo_upto_test_num", $P244
.annotate 'line', 281
    new $P245, "Undef"
    .lex "$todo_reason", $P245
.annotate 'line', 283
    .const 'Sub' $P246 = "24_1305640909.39" 
    newclosure $P252, $P246
    .lex "plan", $P252
.annotate 'line', 287
    .const 'Sub' $P253 = "25_1305640909.39" 
    newclosure $P281, $P253
    .lex "ok", $P281
.annotate 'line', 305
    .const 'Sub' $P282 = "26_1305640909.39" 
    newclosure $P291, $P282
    .lex "todo", $P291
.annotate 'line', 310
    .const 'Sub' $P292 = "27_1305640909.39" 
    newclosure $P304, $P292
    .lex "skip", $P304
.annotate 'line', 14
    .const 'Sub' $P306 = "28_1305640909.39" 
    capture_lex $P306
    $P306()
.annotate 'line', 25
    .const 'Sub' $P366 = "29_1305640909.39" 
    capture_lex $P366
    $P366()
.annotate 'line', 27
    .const 'Sub' $P370 = "30_1305640909.39" 
    capture_lex $P370
    $P370()
.annotate 'line', 29
    .const 'Sub' $P374 = "31_1305640909.39" 
    capture_lex $P374
    $P374()
.annotate 'line', 32
    .const 'Sub' $P378 = "32_1305640909.39" 
    capture_lex $P378
    $P378()
.annotate 'line', 79
    .const 'Sub' $P493 = "45_1305640909.39" 
    capture_lex $P493
    $P493()
    find_lex $P672, "open"
    find_lex $P673, "close"
    find_lex $P674, "slurp"
    find_lex $P675, "spew"
    find_lex $P676, "print"
    find_lex $P677, "say"
    find_lex $P678, "match"
    find_lex $P679, "subst"
    find_lex $P680, "hash"
.annotate 'line', 279
    new $P681, "Integer"
    assign $P681, 0
    store_lex "$test_counter", $P681
.annotate 'line', 280
    new $P682, "Integer"
    assign $P682, 0
    store_lex "$todo_upto_test_num", $P682
.annotate 'line', 281
    new $P683, "String"
    assign $P683, ""
    store_lex "$todo_reason", $P683
    find_lex $P684, "plan"
    find_lex $P685, "ok"
    find_lex $P686, "todo"
    find_lex $P687, "skip"
    new $P688, "Integer"
    assign $P688, 1
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
    find_lex $P691, "@ARGS"
    if $P691, if_690
    set $P689, $P691
    goto if_690_end
  if_690:
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P692, "ModuleLoader"
    getinterp $P693
    set $P694, $P693["context"]
    $P695 = $P692."set_mainline_module"($P694)
    set $P689, $P695
  if_690_end:
.annotate 'line', 1
    .return ($P689)
    .const 'Sub' $P697 = "64_1305640909.39" 
    .return ($P697)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post65") :outer("10_1305640909.39")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1305640909.39" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P701, "1305640907.744"
    isnull $I702, $P701
    if $I702, if_700
    .const 'Sub' $P984 = "10_1305640909.39" 
    $P985 = $P984."get_lexinfo"()
    nqp_get_sc_object $P986, "1305640907.744", 0
    $P985."set_static_lexpad_value"("GLOBALish", $P986)
    .const 'Sub' $P987 = "10_1305640909.39" 
    $P988 = $P987."get_lexinfo"()
    $P988."finish_static_lexpad"()
    .const 'Sub' $P989 = "10_1305640909.39" 
    $P990 = $P989."get_lexinfo"()
    nqp_get_sc_object $P991, "1305640907.744", 0
    $P990."set_static_lexpad_value"("$?PACKAGE", $P991)
    .const 'Sub' $P992 = "10_1305640909.39" 
    $P993 = $P992."get_lexinfo"()
    $P993."finish_static_lexpad"()
    .const 'Sub' $P994 = "10_1305640909.39" 
    $P995 = $P994."get_lexinfo"()
    nqp_get_sc_object $P996, "1305640907.744", 1
    $P995."set_static_lexpad_value"("EXPORTHOW", $P996)
    .const 'Sub' $P997 = "10_1305640909.39" 
    $P998 = $P997."get_lexinfo"()
    $P998."finish_static_lexpad"()
    .const 'Sub' $P999 = "28_1305640909.39" 
    $P1000 = $P999."get_lexinfo"()
    nqp_get_sc_object $P1001, "1305640907.744", 1
    $P1000."set_static_lexpad_value"("$?PACKAGE", $P1001)
    .const 'Sub' $P1002 = "28_1305640909.39" 
    $P1003 = $P1002."get_lexinfo"()
    $P1003."finish_static_lexpad"()
    .const 'Sub' $P1004 = "28_1305640909.39" 
    $P1005 = $P1004."get_lexinfo"()
    nqp_get_sc_object $P1006, "1305640907.744", 1
    $P1005."set_static_lexpad_value"("$?CLASS", $P1006)
    .const 'Sub' $P1007 = "28_1305640909.39" 
    $P1008 = $P1007."get_lexinfo"()
    $P1008."finish_static_lexpad"()
    .const 'Sub' $P1009 = "10_1305640909.39" 
    $P1010 = $P1009."get_lexinfo"()
    nqp_get_sc_object $P1011, "1305640907.744", 2
    $P1010."set_static_lexpad_value"("int", $P1011)
    .const 'Sub' $P1012 = "10_1305640909.39" 
    $P1013 = $P1012."get_lexinfo"()
    $P1013."finish_static_lexpad"()
    .const 'Sub' $P1014 = "29_1305640909.39" 
    $P1015 = $P1014."get_lexinfo"()
    nqp_get_sc_object $P1016, "1305640907.744", 2
    $P1015."set_static_lexpad_value"("$?PACKAGE", $P1016)
    .const 'Sub' $P1017 = "29_1305640909.39" 
    $P1018 = $P1017."get_lexinfo"()
    $P1018."finish_static_lexpad"()
    .const 'Sub' $P1019 = "29_1305640909.39" 
    $P1020 = $P1019."get_lexinfo"()
    nqp_get_sc_object $P1021, "1305640907.744", 2
    $P1020."set_static_lexpad_value"("$?CLASS", $P1021)
    .const 'Sub' $P1022 = "29_1305640909.39" 
    $P1023 = $P1022."get_lexinfo"()
    $P1023."finish_static_lexpad"()
    .const 'Sub' $P1024 = "10_1305640909.39" 
    $P1025 = $P1024."get_lexinfo"()
    nqp_get_sc_object $P1026, "1305640907.744", 3
    $P1025."set_static_lexpad_value"("num", $P1026)
    .const 'Sub' $P1027 = "10_1305640909.39" 
    $P1028 = $P1027."get_lexinfo"()
    $P1028."finish_static_lexpad"()
    .const 'Sub' $P1029 = "30_1305640909.39" 
    $P1030 = $P1029."get_lexinfo"()
    nqp_get_sc_object $P1031, "1305640907.744", 3
    $P1030."set_static_lexpad_value"("$?PACKAGE", $P1031)
    .const 'Sub' $P1032 = "30_1305640909.39" 
    $P1033 = $P1032."get_lexinfo"()
    $P1033."finish_static_lexpad"()
    .const 'Sub' $P1034 = "30_1305640909.39" 
    $P1035 = $P1034."get_lexinfo"()
    nqp_get_sc_object $P1036, "1305640907.744", 3
    $P1035."set_static_lexpad_value"("$?CLASS", $P1036)
    .const 'Sub' $P1037 = "30_1305640909.39" 
    $P1038 = $P1037."get_lexinfo"()
    $P1038."finish_static_lexpad"()
    .const 'Sub' $P1039 = "10_1305640909.39" 
    $P1040 = $P1039."get_lexinfo"()
    nqp_get_sc_object $P1041, "1305640907.744", 4
    $P1040."set_static_lexpad_value"("str", $P1041)
    .const 'Sub' $P1042 = "10_1305640909.39" 
    $P1043 = $P1042."get_lexinfo"()
    $P1043."finish_static_lexpad"()
    .const 'Sub' $P1044 = "31_1305640909.39" 
    $P1045 = $P1044."get_lexinfo"()
    nqp_get_sc_object $P1046, "1305640907.744", 4
    $P1045."set_static_lexpad_value"("$?PACKAGE", $P1046)
    .const 'Sub' $P1047 = "31_1305640909.39" 
    $P1048 = $P1047."get_lexinfo"()
    $P1048."finish_static_lexpad"()
    .const 'Sub' $P1049 = "31_1305640909.39" 
    $P1050 = $P1049."get_lexinfo"()
    nqp_get_sc_object $P1051, "1305640907.744", 4
    $P1050."set_static_lexpad_value"("$?CLASS", $P1051)
    .const 'Sub' $P1052 = "31_1305640909.39" 
    $P1053 = $P1052."get_lexinfo"()
    $P1053."finish_static_lexpad"()
    .const 'Sub' $P1054 = "10_1305640909.39" 
    $P1055 = $P1054."get_lexinfo"()
    nqp_get_sc_object $P1056, "1305640907.744", 5
    $P1055."set_static_lexpad_value"("NQPMu", $P1056)
    .const 'Sub' $P1057 = "10_1305640909.39" 
    $P1058 = $P1057."get_lexinfo"()
    $P1058."finish_static_lexpad"()
    nqp_get_sc_object $P1059, "1305640907.744", 6
    .const 'Sub' $P1060 = "33_1305640909.39" 
    assign $P1059, $P1060
    nqp_get_sc_object $P1061, "1305640907.744", 7
    .const 'Sub' $P1062 = "34_1305640909.39" 
    assign $P1061, $P1062
    nqp_get_sc_object $P1063, "1305640907.744", 8
    .const 'Sub' $P1064 = "35_1305640909.39" 
    assign $P1063, $P1064
    nqp_get_sc_object $P1065, "1305640907.744", 9
    .const 'Sub' $P1066 = "37_1305640909.39" 
    assign $P1065, $P1066
    nqp_get_sc_object $P1067, "1305640907.744", 10
    .const 'Sub' $P1068 = "39_1305640909.39" 
    assign $P1067, $P1068
    nqp_get_sc_object $P1069, "1305640907.744", 11
    .const 'Sub' $P1070 = "40_1305640909.39" 
    assign $P1069, $P1070
    nqp_get_sc_object $P1071, "1305640907.744", 11
    .const 'Sub' $P1072 = "40_1305640909.39" 
    assign $P1071, $P1072
    .const 'Sub' $P1073 = "41_1305640909.39" 
    nqp_get_sc_object $P1074, "1305640907.744", 5
    new $P1075, "ResizablePMCArray"
    push $P1075, $P1074
    new $P1076, "ResizablePMCArray"
    push $P1076, 2
    set_sub_multisig $P1073, $P1075, $P1076
    nqp_get_sc_object $P1077, "1305640907.744", 12
    .const 'Sub' $P1078 = "41_1305640909.39" 
    assign $P1077, $P1078
    nqp_get_sc_object $P1079, "1305640907.744", 13
    .const 'Sub' $P1080 = "42_1305640909.39" 
    assign $P1079, $P1080
    .const 'Sub' $P1081 = "43_1305640909.39" 
    nqp_get_sc_object $P1082, "1305640907.744", 5
    null $P1083
    new $P1084, "ResizablePMCArray"
    push $P1084, $P1082
    push $P1084, $P1083
    new $P1085, "ResizablePMCArray"
    push $P1085, 2
    push $P1085, 0
    set_sub_multisig $P1081, $P1084, $P1085
    nqp_get_sc_object $P1086, "1305640907.744", 14
    .const 'Sub' $P1087 = "43_1305640909.39" 
    assign $P1086, $P1087
    nqp_get_sc_object $P1088, "1305640907.744", 15
    .const 'Sub' $P1089 = "44_1305640909.39" 
    assign $P1088, $P1089
    .const 'Sub' $P1090 = "32_1305640909.39" 
    $P1091 = $P1090."get_lexinfo"()
    nqp_get_sc_object $P1092, "1305640907.744", 5
    $P1091."set_static_lexpad_value"("$?PACKAGE", $P1092)
    .const 'Sub' $P1093 = "32_1305640909.39" 
    $P1094 = $P1093."get_lexinfo"()
    $P1094."finish_static_lexpad"()
    .const 'Sub' $P1095 = "32_1305640909.39" 
    $P1096 = $P1095."get_lexinfo"()
    nqp_get_sc_object $P1097, "1305640907.744", 5
    $P1096."set_static_lexpad_value"("$?CLASS", $P1097)
    .const 'Sub' $P1098 = "32_1305640909.39" 
    $P1099 = $P1098."get_lexinfo"()
    $P1099."finish_static_lexpad"()
    .const 'Sub' $P1100 = "10_1305640909.39" 
    $P1101 = $P1100."get_lexinfo"()
    nqp_get_sc_object $P1102, "1305640907.744", 16
    $P1101."set_static_lexpad_value"("NQPCapture", $P1102)
    .const 'Sub' $P1103 = "10_1305640909.39" 
    $P1104 = $P1103."get_lexinfo"()
    $P1104."finish_static_lexpad"()
    nqp_get_sc_object $P1105, "1305640907.744", 17
    .const 'Sub' $P1106 = "46_1305640909.39" 
    assign $P1105, $P1106
    nqp_get_sc_object $P1107, "1305640907.744", 18
    .const 'Sub' $P1108 = "47_1305640909.39" 
    assign $P1107, $P1108
    nqp_get_sc_object $P1109, "1305640907.744", 19
    .const 'Sub' $P1110 = "48_1305640909.39" 
    assign $P1109, $P1110
    nqp_get_sc_object $P1111, "1305640907.744", 20
    .const 'Sub' $P1112 = "49_1305640909.39" 
    assign $P1111, $P1112
    nqp_get_sc_object $P1113, "1305640907.744", 21
    .const 'Sub' $P1114 = "50_1305640909.39" 
    assign $P1113, $P1114
    nqp_get_sc_object $P1115, "1305640907.744", 22
    .const 'Sub' $P1116 = "51_1305640909.39" 
    assign $P1115, $P1116
    nqp_get_sc_object $P1117, "1305640907.744", 23
    .const 'Sub' $P1118 = "52_1305640909.39" 
    assign $P1117, $P1118
    nqp_get_sc_object $P1119, "1305640907.744", 24
    .const 'Sub' $P1120 = "53_1305640909.39" 
    assign $P1119, $P1120
    nqp_get_sc_object $P1121, "1305640907.744", 25
    .const 'Sub' $P1122 = "54_1305640909.39" 
    assign $P1121, $P1122
    nqp_get_sc_object $P1123, "1305640907.744", 26
    .const 'Sub' $P1124 = "55_1305640909.39" 
    assign $P1123, $P1124
    nqp_get_sc_object $P1125, "1305640907.744", 27
    .const 'Sub' $P1126 = "56_1305640909.39" 
    assign $P1125, $P1126
    nqp_get_sc_object $P1127, "1305640907.744", 28
    .const 'Sub' $P1128 = "57_1305640909.39" 
    assign $P1127, $P1128
    nqp_get_sc_object $P1129, "1305640907.744", 29
    .const 'Sub' $P1130 = "58_1305640909.39" 
    assign $P1129, $P1130
    nqp_get_sc_object $P1131, "1305640907.744", 30
    .const 'Sub' $P1132 = "59_1305640909.39" 
    assign $P1131, $P1132
    nqp_get_sc_object $P1133, "1305640907.744", 31
    .const 'Sub' $P1134 = "60_1305640909.39" 
    assign $P1133, $P1134
    nqp_get_sc_object $P1135, "1305640907.744", 32
    .const 'Sub' $P1136 = "61_1305640909.39" 
    assign $P1135, $P1136
    nqp_get_sc_object $P1137, "1305640907.744", 33
    .const 'Sub' $P1138 = "62_1305640909.39" 
    assign $P1137, $P1138
    nqp_get_sc_object $P1139, "1305640907.744", 34
    .const 'Sub' $P1140 = "63_1305640909.39" 
    assign $P1139, $P1140
    .const 'Sub' $P1141 = "45_1305640909.39" 
    $P1142 = $P1141."get_lexinfo"()
    nqp_get_sc_object $P1143, "1305640907.744", 16
    $P1142."set_static_lexpad_value"("$?PACKAGE", $P1143)
    .const 'Sub' $P1144 = "45_1305640909.39" 
    $P1145 = $P1144."get_lexinfo"()
    $P1145."finish_static_lexpad"()
    .const 'Sub' $P1146 = "45_1305640909.39" 
    $P1147 = $P1146."get_lexinfo"()
    nqp_get_sc_object $P1148, "1305640907.744", 16
    $P1147."set_static_lexpad_value"("$?CLASS", $P1148)
    .const 'Sub' $P1149 = "45_1305640909.39" 
    $P1150 = $P1149."get_lexinfo"()
    $P1150."finish_static_lexpad"()
    goto if_700_end
  if_700:
    nqp_dynop_setup 
    getinterp $P703
    get_class $P704, "LexPad"
    get_class $P705, "NQPLexPad"
    $P703."hll_map"($P704, $P705)
    nqp_create_sc $P706, "1305640907.744"
    .local pmc cur_sc
    set cur_sc, $P706
    nqp_get_sc_object $P707, "__6MODEL_CORE__", 0
    $P708 = $P707."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P708, cur_sc
    nqp_set_sc_object "1305640907.744", 0, $P708
    .const 'Sub' $P709 = "10_1305640909.39" 
    $P710 = $P709."get_lexinfo"()
    nqp_get_sc_object $P711, "1305640907.744", 0
    $P710."set_static_lexpad_value"("GLOBALish", $P711)
    .const 'Sub' $P712 = "10_1305640909.39" 
    $P713 = $P712."get_lexinfo"()
    $P713."finish_static_lexpad"()
    .const 'Sub' $P714 = "10_1305640909.39" 
    $P715 = $P714."get_lexinfo"()
    nqp_get_sc_object $P716, "1305640907.744", 0
    $P715."set_static_lexpad_value"("$?PACKAGE", $P716)
    .const 'Sub' $P717 = "10_1305640909.39" 
    $P718 = $P717."get_lexinfo"()
    $P718."finish_static_lexpad"()
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P719, "ModuleLoader"
    nqp_get_sc_object $P720, "1305640907.744", 0
    $P719."load_module"("nqpmo", $P720)
    nqp_get_sc_object $P721, "1305640898.961", 88
    $P722 = $P721."new_type"("EXPORTHOW" :named("name"))
    nqp_set_sc_for_object $P722, cur_sc
    nqp_set_sc_object "1305640907.744", 1, $P722
    .const 'Sub' $P723 = "10_1305640909.39" 
    $P724 = $P723."get_lexinfo"()
    nqp_get_sc_object $P725, "1305640907.744", 1
    $P724."set_static_lexpad_value"("EXPORTHOW", $P725)
    .const 'Sub' $P726 = "10_1305640909.39" 
    $P727 = $P726."get_lexinfo"()
    $P727."finish_static_lexpad"()
    .const 'Sub' $P728 = "28_1305640909.39" 
    $P729 = $P728."get_lexinfo"()
    nqp_get_sc_object $P730, "1305640907.744", 1
    $P729."set_static_lexpad_value"("$?PACKAGE", $P730)
    .const 'Sub' $P731 = "28_1305640909.39" 
    $P732 = $P731."get_lexinfo"()
    $P732."finish_static_lexpad"()
    .const 'Sub' $P733 = "28_1305640909.39" 
    $P734 = $P733."get_lexinfo"()
    nqp_get_sc_object $P735, "1305640907.744", 1
    $P734."set_static_lexpad_value"("$?CLASS", $P735)
    .const 'Sub' $P736 = "28_1305640909.39" 
    $P737 = $P736."get_lexinfo"()
    $P737."finish_static_lexpad"()
    nqp_get_sc_object $P738, "1305640907.744", 1
    get_how $P739, $P738
    nqp_get_sc_object $P740, "1305640907.744", 1
    $P739."compose"($P740)
    nqp_get_sc_object $P741, "1305640898.961", 71
    $P742 = $P741."new_type"("int" :named("name"), "P6int" :named("repr"))
    nqp_set_sc_for_object $P742, cur_sc
    nqp_set_sc_object "1305640907.744", 2, $P742
    .const 'Sub' $P743 = "10_1305640909.39" 
    $P744 = $P743."get_lexinfo"()
    nqp_get_sc_object $P745, "1305640907.744", 2
    $P744."set_static_lexpad_value"("int", $P745)
    .const 'Sub' $P746 = "10_1305640909.39" 
    $P747 = $P746."get_lexinfo"()
    $P747."finish_static_lexpad"()
    .const 'Sub' $P748 = "29_1305640909.39" 
    $P749 = $P748."get_lexinfo"()
    nqp_get_sc_object $P750, "1305640907.744", 2
    $P749."set_static_lexpad_value"("$?PACKAGE", $P750)
    .const 'Sub' $P751 = "29_1305640909.39" 
    $P752 = $P751."get_lexinfo"()
    $P752."finish_static_lexpad"()
    .const 'Sub' $P753 = "29_1305640909.39" 
    $P754 = $P753."get_lexinfo"()
    nqp_get_sc_object $P755, "1305640907.744", 2
    $P754."set_static_lexpad_value"("$?CLASS", $P755)
    .const 'Sub' $P756 = "29_1305640909.39" 
    $P757 = $P756."get_lexinfo"()
    $P757."finish_static_lexpad"()
    nqp_get_sc_object $P758, "1305640907.744", 2
    get_how $P759, $P758
    nqp_get_sc_object $P760, "1305640907.744", 2
    $P759."compose"($P760)
    nqp_get_sc_object $P761, "1305640898.961", 71
    $P762 = $P761."new_type"("num" :named("name"), "P6num" :named("repr"))
    nqp_set_sc_for_object $P762, cur_sc
    nqp_set_sc_object "1305640907.744", 3, $P762
    .const 'Sub' $P763 = "10_1305640909.39" 
    $P764 = $P763."get_lexinfo"()
    nqp_get_sc_object $P765, "1305640907.744", 3
    $P764."set_static_lexpad_value"("num", $P765)
    .const 'Sub' $P766 = "10_1305640909.39" 
    $P767 = $P766."get_lexinfo"()
    $P767."finish_static_lexpad"()
    .const 'Sub' $P768 = "30_1305640909.39" 
    $P769 = $P768."get_lexinfo"()
    nqp_get_sc_object $P770, "1305640907.744", 3
    $P769."set_static_lexpad_value"("$?PACKAGE", $P770)
    .const 'Sub' $P771 = "30_1305640909.39" 
    $P772 = $P771."get_lexinfo"()
    $P772."finish_static_lexpad"()
    .const 'Sub' $P773 = "30_1305640909.39" 
    $P774 = $P773."get_lexinfo"()
    nqp_get_sc_object $P775, "1305640907.744", 3
    $P774."set_static_lexpad_value"("$?CLASS", $P775)
    .const 'Sub' $P776 = "30_1305640909.39" 
    $P777 = $P776."get_lexinfo"()
    $P777."finish_static_lexpad"()
    nqp_get_sc_object $P778, "1305640907.744", 3
    get_how $P779, $P778
    nqp_get_sc_object $P780, "1305640907.744", 3
    $P779."compose"($P780)
    nqp_get_sc_object $P781, "1305640898.961", 71
    $P782 = $P781."new_type"("str" :named("name"), "P6str" :named("repr"))
    nqp_set_sc_for_object $P782, cur_sc
    nqp_set_sc_object "1305640907.744", 4, $P782
    .const 'Sub' $P783 = "10_1305640909.39" 
    $P784 = $P783."get_lexinfo"()
    nqp_get_sc_object $P785, "1305640907.744", 4
    $P784."set_static_lexpad_value"("str", $P785)
    .const 'Sub' $P786 = "10_1305640909.39" 
    $P787 = $P786."get_lexinfo"()
    $P787."finish_static_lexpad"()
    .const 'Sub' $P788 = "31_1305640909.39" 
    $P789 = $P788."get_lexinfo"()
    nqp_get_sc_object $P790, "1305640907.744", 4
    $P789."set_static_lexpad_value"("$?PACKAGE", $P790)
    .const 'Sub' $P791 = "31_1305640909.39" 
    $P792 = $P791."get_lexinfo"()
    $P792."finish_static_lexpad"()
    .const 'Sub' $P793 = "31_1305640909.39" 
    $P794 = $P793."get_lexinfo"()
    nqp_get_sc_object $P795, "1305640907.744", 4
    $P794."set_static_lexpad_value"("$?CLASS", $P795)
    .const 'Sub' $P796 = "31_1305640909.39" 
    $P797 = $P796."get_lexinfo"()
    $P797."finish_static_lexpad"()
    nqp_get_sc_object $P798, "1305640907.744", 4
    get_how $P799, $P798
    nqp_get_sc_object $P800, "1305640907.744", 4
    $P799."compose"($P800)
    nqp_get_sc_object $P801, "1305640898.961", 41
    $P802 = $P801."new_type"("NQPMu" :named("name"))
    nqp_set_sc_for_object $P802, cur_sc
    nqp_set_sc_object "1305640907.744", 5, $P802
    .const 'Sub' $P803 = "10_1305640909.39" 
    $P804 = $P803."get_lexinfo"()
    nqp_get_sc_object $P805, "1305640907.744", 5
    $P804."set_static_lexpad_value"("NQPMu", $P805)
    .const 'Sub' $P806 = "10_1305640909.39" 
    $P807 = $P806."get_lexinfo"()
    $P807."finish_static_lexpad"()
    nqp_get_sc_object $P808, "1305640907.744", 5
    get_how $P809, $P808
    nqp_get_sc_object $P810, "1305640907.744", 5
    .const 'Sub' $P811 = "33_1305640909.39" 
    $P809."add_method"($P810, "CREATE", $P811)
    nqp_get_sc_object $P812, "1305640907.744", 5
    get_how $P813, $P812
    nqp_get_sc_object $P814, "1305640907.744", 5
    .const 'Sub' $P815 = "34_1305640909.39" 
    $P813."add_method"($P814, "bless", $P815)
    nqp_get_sc_object $P816, "1305640907.744", 5
    get_how $P817, $P816
    nqp_get_sc_object $P818, "1305640907.744", 5
    .const 'Sub' $P819 = "35_1305640909.39" 
    $P817."add_method"($P818, "BUILDALL", $P819)
    nqp_get_sc_object $P820, "1305640907.744", 5
    get_how $P821, $P820
    nqp_get_sc_object $P822, "1305640907.744", 5
    .const 'Sub' $P823 = "37_1305640909.39" 
    $P821."add_method"($P822, "BUILD_MAGIC", $P823)
    nqp_get_sc_object $P824, "1305640907.744", 5
    get_how $P825, $P824
    nqp_get_sc_object $P826, "1305640907.744", 5
    .const 'Sub' $P827 = "39_1305640909.39" 
    $P825."add_method"($P826, "new", $P827)
    nqp_get_sc_object $P828, "1305640907.744", 5
    get_how $P829, $P828
    nqp_get_sc_object $P830, "1305640907.744", 5
    .const 'Sub' $P831 = "40_1305640909.39" 
    $P829."add_method"($P830, "Str", $P831)
    nqp_get_sc_object $P832, "1305640907.744", 5
    get_how $P833, $P832
    nqp_get_sc_object $P834, "1305640907.744", 5
    .const 'Sub' $P835 = "40_1305640909.39" 
    $P833."add_parrot_vtable_mapping"($P834, "get_string", $P835)
    .const 'Sub' $P836 = "41_1305640909.39" 
    nqp_get_sc_object $P837, "1305640907.744", 5
    new $P838, "ResizablePMCArray"
    push $P838, $P837
    new $P839, "ResizablePMCArray"
    push $P839, 2
    set_sub_multisig $P836, $P838, $P839
    nqp_get_sc_object $P840, "1305640907.744", 5
    get_how $P841, $P840
    nqp_get_sc_object $P842, "1305640907.744", 5
    .const 'Sub' $P843 = "41_1305640909.39" 
    $P841."add_multi_method"($P842, "Str", $P843)
    nqp_get_sc_object $P844, "1305640907.744", 5
    get_how $P845, $P844
    nqp_get_sc_object $P846, "1305640907.744", 5
    .const 'Sub' $P847 = "42_1305640909.39" 
    $P845."add_method"($P846, "ACCEPTS", $P847)
    .const 'Sub' $P848 = "43_1305640909.39" 
    nqp_get_sc_object $P849, "1305640907.744", 5
    null $P850
    new $P851, "ResizablePMCArray"
    push $P851, $P849
    push $P851, $P850
    new $P852, "ResizablePMCArray"
    push $P852, 2
    push $P852, 0
    set_sub_multisig $P848, $P851, $P852
    nqp_get_sc_object $P853, "1305640907.744", 5
    get_how $P854, $P853
    nqp_get_sc_object $P855, "1305640907.744", 5
    .const 'Sub' $P856 = "43_1305640909.39" 
    $P854."add_multi_method"($P855, "ACCEPTS", $P856)
    nqp_get_sc_object $P857, "1305640907.744", 5
    get_how $P858, $P857
    nqp_get_sc_object $P859, "1305640907.744", 5
    .const 'Sub' $P860 = "44_1305640909.39" 
    $P858."add_method"($P859, "isa", $P860)
    .const 'Sub' $P861 = "32_1305640909.39" 
    $P862 = $P861."get_lexinfo"()
    nqp_get_sc_object $P863, "1305640907.744", 5
    $P862."set_static_lexpad_value"("$?PACKAGE", $P863)
    .const 'Sub' $P864 = "32_1305640909.39" 
    $P865 = $P864."get_lexinfo"()
    $P865."finish_static_lexpad"()
    .const 'Sub' $P866 = "32_1305640909.39" 
    $P867 = $P866."get_lexinfo"()
    nqp_get_sc_object $P868, "1305640907.744", 5
    $P867."set_static_lexpad_value"("$?CLASS", $P868)
    .const 'Sub' $P869 = "32_1305640909.39" 
    $P870 = $P869."get_lexinfo"()
    $P870."finish_static_lexpad"()
    nqp_get_sc_object $P871, "1305640907.744", 5
    get_how $P872, $P871
    nqp_get_sc_object $P873, "1305640907.744", 5
    nqp_get_sc_object $P874, "1305640907.744", 5
    $P872."set_default_parent"($P873, $P874)
    nqp_get_sc_object $P875, "1305640907.744", 5
    get_how $P876, $P875
    nqp_get_sc_object $P877, "1305640907.744", 5
    $P876."compose"($P877)
    nqp_get_sc_object $P878, "1305640898.961", 41
    $P879 = $P878."new_type"("NQPCapture" :named("name"))
    nqp_set_sc_for_object $P879, cur_sc
    nqp_set_sc_object "1305640907.744", 16, $P879
    .const 'Sub' $P880 = "10_1305640909.39" 
    $P881 = $P880."get_lexinfo"()
    nqp_get_sc_object $P882, "1305640907.744", 16
    $P881."set_static_lexpad_value"("NQPCapture", $P882)
    .const 'Sub' $P883 = "10_1305640909.39" 
    $P884 = $P883."get_lexinfo"()
    $P884."finish_static_lexpad"()
    nqp_get_sc_object $P885, "1305640907.744", 16
    get_how $P886, $P885
    nqp_get_sc_object $P887, "1305640907.744", 16
    nqp_get_sc_object $P888, "1305640898.961", 80
    $P889 = $P888."new"("@!array" :named("name"))
    $P886."add_attribute"($P887, $P889)
    nqp_get_sc_object $P890, "1305640907.744", 16
    get_how $P891, $P890
    nqp_get_sc_object $P892, "1305640907.744", 16
    nqp_get_sc_object $P893, "1305640898.961", 80
    $P894 = $P893."new"("%!hash" :named("name"))
    $P891."add_attribute"($P892, $P894)
    nqp_get_sc_object $P895, "1305640907.744", 16
    get_how $P896, $P895
    nqp_get_sc_object $P897, "1305640907.744", 16
    .const 'Sub' $P898 = "46_1305640909.39" 
    $P896."add_method"($P897, "new", $P898)
    nqp_get_sc_object $P899, "1305640907.744", 16
    get_how $P900, $P899
    nqp_get_sc_object $P901, "1305640907.744", 16
    .const 'Sub' $P902 = "47_1305640909.39" 
    $P900."add_method"($P901, "BUILD", $P902)
    nqp_get_sc_object $P903, "1305640907.744", 16
    get_how $P904, $P903
    nqp_get_sc_object $P905, "1305640907.744", 16
    .const 'Sub' $P906 = "48_1305640909.39" 
    $P904."add_method"($P905, "list", $P906)
    nqp_get_sc_object $P907, "1305640907.744", 16
    get_how $P908, $P907
    nqp_get_sc_object $P909, "1305640907.744", 16
    .const 'Sub' $P910 = "49_1305640909.39" 
    $P908."add_method"($P909, "hash", $P910)
    nqp_get_sc_object $P911, "1305640907.744", 16
    get_how $P912, $P911
    nqp_get_sc_object $P913, "1305640907.744", 16
    .const 'Sub' $P914 = "50_1305640909.39" 
    $P912."add_parrot_vtable_mapping"($P913, "get_pmc_keyed_str", $P914)
    nqp_get_sc_object $P915, "1305640907.744", 16
    get_how $P916, $P915
    nqp_get_sc_object $P917, "1305640907.744", 16
    .const 'Sub' $P918 = "51_1305640909.39" 
    $P916."add_parrot_vtable_mapping"($P917, "get_pmc_keyed", $P918)
    nqp_get_sc_object $P919, "1305640907.744", 16
    get_how $P920, $P919
    nqp_get_sc_object $P921, "1305640907.744", 16
    .const 'Sub' $P922 = "52_1305640909.39" 
    $P920."add_parrot_vtable_mapping"($P921, "get_pmc_keyed_int", $P922)
    nqp_get_sc_object $P923, "1305640907.744", 16
    get_how $P924, $P923
    nqp_get_sc_object $P925, "1305640907.744", 16
    .const 'Sub' $P926 = "53_1305640909.39" 
    $P924."add_parrot_vtable_mapping"($P925, "set_pmc_keyed_str", $P926)
    nqp_get_sc_object $P927, "1305640907.744", 16
    get_how $P928, $P927
    nqp_get_sc_object $P929, "1305640907.744", 16
    .const 'Sub' $P930 = "54_1305640909.39" 
    $P928."add_parrot_vtable_mapping"($P929, "set_pmc_keyed", $P930)
    nqp_get_sc_object $P931, "1305640907.744", 16
    get_how $P932, $P931
    nqp_get_sc_object $P933, "1305640907.744", 16
    .const 'Sub' $P934 = "55_1305640909.39" 
    $P932."add_parrot_vtable_mapping"($P933, "set_pmc_keyed_int", $P934)
    nqp_get_sc_object $P935, "1305640907.744", 16
    get_how $P936, $P935
    nqp_get_sc_object $P937, "1305640907.744", 16
    .const 'Sub' $P938 = "56_1305640909.39" 
    $P936."add_parrot_vtable_mapping"($P937, "exists_keyed", $P938)
    nqp_get_sc_object $P939, "1305640907.744", 16
    get_how $P940, $P939
    nqp_get_sc_object $P941, "1305640907.744", 16
    .const 'Sub' $P942 = "57_1305640909.39" 
    $P940."add_parrot_vtable_mapping"($P941, "exists_keyed_str", $P942)
    nqp_get_sc_object $P943, "1305640907.744", 16
    get_how $P944, $P943
    nqp_get_sc_object $P945, "1305640907.744", 16
    .const 'Sub' $P946 = "58_1305640909.39" 
    $P944."add_parrot_vtable_mapping"($P945, "exists_keyed_int", $P946)
    nqp_get_sc_object $P947, "1305640907.744", 16
    get_how $P948, $P947
    nqp_get_sc_object $P949, "1305640907.744", 16
    .const 'Sub' $P950 = "59_1305640909.39" 
    $P948."add_parrot_vtable_mapping"($P949, "delete_keyed", $P950)
    nqp_get_sc_object $P951, "1305640907.744", 16
    get_how $P952, $P951
    nqp_get_sc_object $P953, "1305640907.744", 16
    .const 'Sub' $P954 = "60_1305640909.39" 
    $P952."add_parrot_vtable_mapping"($P953, "delete_keyed_str", $P954)
    nqp_get_sc_object $P955, "1305640907.744", 16
    get_how $P956, $P955
    nqp_get_sc_object $P957, "1305640907.744", 16
    .const 'Sub' $P958 = "61_1305640909.39" 
    $P956."add_parrot_vtable_mapping"($P957, "delete_keyed_int", $P958)
    nqp_get_sc_object $P959, "1305640907.744", 16
    get_how $P960, $P959
    nqp_get_sc_object $P961, "1305640907.744", 16
    .const 'Sub' $P962 = "62_1305640909.39" 
    $P960."add_parrot_vtable_mapping"($P961, "unshift_pmc", $P962)
    nqp_get_sc_object $P963, "1305640907.744", 16
    get_how $P964, $P963
    nqp_get_sc_object $P965, "1305640907.744", 16
    .const 'Sub' $P966 = "63_1305640909.39" 
    $P964."add_parrot_vtable_mapping"($P965, "push_pmc", $P966)
    .const 'Sub' $P967 = "45_1305640909.39" 
    $P968 = $P967."get_lexinfo"()
    nqp_get_sc_object $P969, "1305640907.744", 16
    $P968."set_static_lexpad_value"("$?PACKAGE", $P969)
    .const 'Sub' $P970 = "45_1305640909.39" 
    $P971 = $P970."get_lexinfo"()
    $P971."finish_static_lexpad"()
    .const 'Sub' $P972 = "45_1305640909.39" 
    $P973 = $P972."get_lexinfo"()
    nqp_get_sc_object $P974, "1305640907.744", 16
    $P973."set_static_lexpad_value"("$?CLASS", $P974)
    .const 'Sub' $P975 = "45_1305640909.39" 
    $P976 = $P975."get_lexinfo"()
    $P976."finish_static_lexpad"()
    nqp_get_sc_object $P977, "1305640907.744", 16
    get_how $P978, $P977
    nqp_get_sc_object $P979, "1305640907.744", 16
    nqp_get_sc_object $P980, "1305640907.744", 5
    $P978."set_default_parent"($P979, $P980)
    nqp_get_sc_object $P981, "1305640907.744", 16
    get_how $P982, $P981
    nqp_get_sc_object $P983, "1305640907.744", 16
    $P982."compose"($P983)
  if_700_end:
    nqp_get_sc_object $P1151, "1305640907.744", 0
    set_hll_global "GLOBAL", $P1151
.end


.HLL "nqp"

.namespace []
.sub "open"  :subid("11_1305640909.39") :outer("10_1305640909.39")
    .param pmc param_23
    .param pmc param_24 :optional :named("r")
    .param int has_param_24 :opt_flag
    .param pmc param_26 :optional :named("w")
    .param int has_param_26 :opt_flag
    .param pmc param_28 :optional :named("a")
    .param int has_param_28 :opt_flag
    .param pmc param_30 :optional :named("bin")
    .param int has_param_30 :opt_flag
.annotate 'line', 158
    .lex "$filename", param_23
    if has_param_24, optparam_66
    new $P25, "Undef"
    set param_24, $P25
  optparam_66:
    .lex "$r", param_24
    if has_param_26, optparam_67
    new $P27, "Undef"
    set param_26, $P27
  optparam_67:
    .lex "$w", param_26
    if has_param_28, optparam_68
    new $P29, "Undef"
    set param_28, $P29
  optparam_68:
    .lex "$a", param_28
    if has_param_30, optparam_69
    new $P31, "Undef"
    set param_30, $P31
  optparam_69:
    .lex "$bin", param_30
.annotate 'line', 159
    new $P32, "Undef"
    .lex "$mode", $P32
.annotate 'line', 160
    new $P33, "Undef"
    .lex "$handle", $P33
.annotate 'line', 159
    find_lex $P36, "$w"
    unless_null $P36, vivify_70
    new $P36, "Undef"
  vivify_70:
    if $P36, if_35
    find_lex $P40, "$a"
    unless_null $P40, vivify_71
    new $P40, "Undef"
  vivify_71:
    if $P40, if_39
    new $P42, "String"
    assign $P42, "r"
    set $P38, $P42
    goto if_39_end
  if_39:
    new $P41, "String"
    assign $P41, "wa"
    set $P38, $P41
  if_39_end:
    set $P34, $P38
    goto if_35_end
  if_35:
    new $P37, "String"
    assign $P37, "w"
    set $P34, $P37
  if_35_end:
    store_lex "$mode", $P34
.annotate 'line', 160
    new $P43, "FileHandle"
    store_lex "$handle", $P43
.annotate 'line', 161
    find_lex $P44, "$handle"
    unless_null $P44, vivify_72
    new $P44, "Undef"
  vivify_72:
    find_lex $P45, "$filename"
    unless_null $P45, vivify_73
    new $P45, "Undef"
  vivify_73:
    find_lex $P46, "$mode"
    unless_null $P46, vivify_74
    new $P46, "Undef"
  vivify_74:
    $P44."open"($P45, $P46)
.annotate 'line', 162
    find_lex $P47, "$handle"
    unless_null $P47, vivify_75
    new $P47, "Undef"
  vivify_75:
    find_lex $P50, "$bin"
    unless_null $P50, vivify_76
    new $P50, "Undef"
  vivify_76:
    if $P50, if_49
    new $P52, "String"
    assign $P52, "utf8"
    set $P48, $P52
    goto if_49_end
  if_49:
    new $P51, "String"
    assign $P51, "binary"
    set $P48, $P51
  if_49_end:
    $P47."encoding"($P48)
    find_lex $P53, "$handle"
    unless_null $P53, vivify_77
    new $P53, "Undef"
  vivify_77:
.annotate 'line', 158
    .return ($P53)
.end


.HLL "nqp"

.namespace []
.sub "close"  :subid("12_1305640909.39") :outer("10_1305640909.39")
    .param pmc param_56
.annotate 'line', 170
    .lex "$handle", param_56
.annotate 'line', 171
    find_lex $P57, "$handle"
    unless_null $P57, vivify_78
    new $P57, "Undef"
  vivify_78:
    $P58 = $P57."close"()
.annotate 'line', 170
    .return ($P58)
.end


.HLL "nqp"

.namespace []
.sub "slurp"  :subid("13_1305640909.39") :outer("10_1305640909.39")
    .param pmc param_61
.annotate 'line', 178
    .lex "$filename", param_61
.annotate 'line', 179
    new $P62, "Undef"
    .lex "$handle", $P62
.annotate 'line', 180
    new $P63, "Undef"
    .lex "$contents", $P63
.annotate 'line', 179
    find_lex $P64, "$filename"
    unless_null $P64, vivify_79
    new $P64, "Undef"
  vivify_79:
    $P65 = "open"($P64, 1 :named("r"))
    store_lex "$handle", $P65
.annotate 'line', 180
    find_lex $P66, "$handle"
    unless_null $P66, vivify_80
    new $P66, "Undef"
  vivify_80:
    $P67 = $P66."readall"()
    store_lex "$contents", $P67
.annotate 'line', 181
    find_lex $P68, "$handle"
    unless_null $P68, vivify_81
    new $P68, "Undef"
  vivify_81:
    $P68."close"()
    find_lex $P69, "$contents"
    unless_null $P69, vivify_82
    new $P69, "Undef"
  vivify_82:
.annotate 'line', 178
    .return ($P69)
.end


.HLL "nqp"

.namespace []
.sub "spew"  :subid("14_1305640909.39") :outer("10_1305640909.39")
    .param pmc param_72
    .param pmc param_73
.annotate 'line', 190
    .lex "$filename", param_72
    .lex "$contents", param_73
.annotate 'line', 191
    new $P74, "Undef"
    .lex "$handle", $P74
    new $P75, "FileHandle"
    store_lex "$handle", $P75
.annotate 'line', 192
    find_lex $P76, "$handle"
    unless_null $P76, vivify_83
    new $P76, "Undef"
  vivify_83:
    find_lex $P77, "$filename"
    unless_null $P77, vivify_84
    new $P77, "Undef"
  vivify_84:
    $P76."open"($P77, "w")
.annotate 'line', 193
    find_lex $P78, "$handle"
    unless_null $P78, vivify_85
    new $P78, "Undef"
  vivify_85:
    find_lex $P79, "$contents"
    unless_null $P79, vivify_86
    new $P79, "Undef"
  vivify_86:
    $P78."print"($P79)
.annotate 'line', 194
    find_lex $P80, "$handle"
    unless_null $P80, vivify_87
    new $P80, "Undef"
  vivify_87:
    $P81 = $P80."close"()
.annotate 'line', 190
    .return ($P81)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "print"  :subid("15_1305640909.39") :outer("10_1305640909.39")
    .param pmc param_84 :slurpy
.annotate 'line', 197
    .const 'Sub' $P90 = "16_1305640909.39" 
    capture_lex $P90
    .lex "@args", param_84
.annotate 'line', 198
    find_lex $P86, "@args"
    unless_null $P86, vivify_88
    $P86 = root_new ['parrot';'ResizablePMCArray']
  vivify_88:
    defined $I87, $P86
    unless $I87, for_undef_89
    iter $P85, $P86
    new $P94, 'ExceptionHandler'
    set_label $P94, loop93_handler
    $P94."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P94
  loop93_test:
    unless $P85, loop93_done
    shift $P88, $P85
  loop93_redo:
    .const 'Sub' $P90 = "16_1305640909.39" 
    capture_lex $P90
    $P90($P88)
  loop93_next:
    goto loop93_test
  loop93_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P95, exception, 'type'
    eq $P95, .CONTROL_LOOP_NEXT, loop93_next
    eq $P95, .CONTROL_LOOP_REDO, loop93_redo
  loop93_done:
    pop_eh 
  for_undef_89:
.annotate 'line', 197
    .return (1)
.end


.HLL "nqp"

.namespace []
.sub "_block89"  :anon :subid("16_1305640909.39") :outer("15_1305640909.39")
    .param pmc param_91
.annotate 'line', 198
    .lex "$_", param_91
.annotate 'line', 199
    find_lex $P92, "$_"
    unless_null $P92, vivify_90
    new $P92, "Undef"
  vivify_90:
    print $P92
.annotate 'line', 198
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "say"  :subid("17_1305640909.39") :outer("10_1305640909.39")
    .param pmc param_98 :slurpy
.annotate 'line', 204
    .lex "@args", param_98
.annotate 'line', 205
    find_lex $P99, "@args"
    unless_null $P99, vivify_91
    $P99 = root_new ['parrot';'ResizablePMCArray']
  vivify_91:
    $P100 = "print"($P99 :flat, "\n")
.annotate 'line', 204
    .return ($P100)
.end


.HLL "nqp"

.namespace []
.sub "match"  :subid("18_1305640909.39") :outer("10_1305640909.39")
    .param pmc param_103
    .param pmc param_104
    .param pmc param_105 :optional :named("global")
    .param int has_param_105 :opt_flag
.annotate 'line', 222
    .const 'Sub' $P115 = "19_1305640909.39" 
    capture_lex $P115
    .lex "$text", param_103
    .lex "$regex", param_104
    if has_param_105, optparam_92
    new $P106, "Undef"
    set param_105, $P106
  optparam_92:
    .lex "$global", param_105
.annotate 'line', 223
    new $P107, "Undef"
    .lex "$match", $P107
    find_lex $P108, "$regex"
    unless_null $P108, vivify_93
    new $P108, "Undef"
  vivify_93:
    find_lex $P109, "$text"
    unless_null $P109, vivify_94
    new $P109, "Undef"
  vivify_94:
    $P110 = $P108."ACCEPTS"($P109)
    store_lex "$match", $P110
.annotate 'line', 224
    find_lex $P113, "$global"
    unless_null $P113, vivify_95
    new $P113, "Undef"
  vivify_95:
    if $P113, if_112
.annotate 'line', 232
    find_lex $P133, "$match"
    unless_null $P133, vivify_96
    new $P133, "Undef"
  vivify_96:
    set $P111, $P133
.annotate 'line', 224
    goto if_112_end
  if_112:
    .const 'Sub' $P115 = "19_1305640909.39" 
    capture_lex $P115
    $P132 = $P115()
    set $P111, $P132
  if_112_end:
.annotate 'line', 222
    .return ($P111)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "_block114"  :anon :subid("19_1305640909.39") :outer("18_1305640909.39")
.annotate 'line', 225
    $P116 = root_new ['parrot';'ResizablePMCArray']
    .lex "@matches", $P116
.annotate 'line', 224
    find_lex $P117, "@matches"
    unless_null $P117, vivify_97
    $P117 = root_new ['parrot';'ResizablePMCArray']
  vivify_97:
.annotate 'line', 226
    new $P129, 'ExceptionHandler'
    set_label $P129, loop128_handler
    $P129."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P129
  loop128_test:
    find_lex $P118, "$match"
    unless_null $P118, vivify_98
    new $P118, "Undef"
  vivify_98:
    unless $P118, loop128_done
  loop128_redo:
.annotate 'line', 227
    find_lex $P119, "@matches"
    unless_null $P119, vivify_99
    $P119 = root_new ['parrot';'ResizablePMCArray']
  vivify_99:
    find_lex $P120, "$match"
    unless_null $P120, vivify_100
    new $P120, "Undef"
  vivify_100:
    $P119."push"($P120)
.annotate 'line', 228
    find_lex $P121, "$match"
    unless_null $P121, vivify_101
    new $P121, "Undef"
  vivify_101:
    $P122 = $P121."CURSOR"()
    find_lex $P123, "$text"
    unless_null $P123, vivify_102
    new $P123, "Undef"
  vivify_102:
    find_lex $P124, "$regex"
    unless_null $P124, vivify_103
    new $P124, "Undef"
  vivify_103:
    find_lex $P125, "$match"
    unless_null $P125, vivify_104
    new $P125, "Undef"
  vivify_104:
    $P126 = $P125."to"()
    $P127 = $P122."parse"($P123, $P124 :named("rule"), $P126 :named("c"))
    store_lex "$match", $P127
  loop128_next:
.annotate 'line', 226
    goto loop128_test
  loop128_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P130, exception, 'type'
    eq $P130, .CONTROL_LOOP_NEXT, loop128_next
    eq $P130, .CONTROL_LOOP_REDO, loop128_redo
  loop128_done:
    pop_eh 
    find_lex $P131, "@matches"
    unless_null $P131, vivify_105
    $P131 = root_new ['parrot';'ResizablePMCArray']
  vivify_105:
.annotate 'line', 224
    .return ($P131)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "subst"  :subid("20_1305640909.39") :outer("10_1305640909.39")
    .param pmc param_136
    .param pmc param_137
    .param pmc param_138
    .param pmc param_139 :optional :named("global")
    .param int has_param_139 :opt_flag
.annotate 'line', 244
    .const 'Sub' $P166 = "21_1305640909.39" 
    capture_lex $P166
    .lex "$text", param_136
    .lex "$regex", param_137
    .lex "$repl", param_138
    if has_param_139, optparam_106
    new $P140, "Undef"
    set param_139, $P140
  optparam_106:
    .lex "$global", param_139
.annotate 'line', 245
    $P141 = root_new ['parrot';'ResizablePMCArray']
    .lex "@matches", $P141
.annotate 'line', 247
    new $P142, "Undef"
    .lex "$is_code", $P142
.annotate 'line', 248
    new $P143, "Undef"
    .lex "$offset", $P143
.annotate 'line', 249
    new $P144, "Undef"
    .lex "$result", $P144
.annotate 'line', 260
    new $P145, "Undef"
    .lex "$chars", $P145
.annotate 'line', 245
    find_lex $P148, "$global"
    unless_null $P148, vivify_107
    new $P148, "Undef"
  vivify_107:
    if $P148, if_147
.annotate 'line', 246
    find_lex $P152, "$regex"
    unless_null $P152, vivify_108
    new $P152, "Undef"
  vivify_108:
    find_lex $P153, "$text"
    unless_null $P153, vivify_109
    new $P153, "Undef"
  vivify_109:
    $P154 = $P152."ACCEPTS"($P153)
    new $P155, "ResizablePMCArray"
    push $P155, $P154
.annotate 'line', 245
    set $P146, $P155
    goto if_147_end
  if_147:
    find_lex $P149, "$text"
    unless_null $P149, vivify_110
    new $P149, "Undef"
  vivify_110:
    find_lex $P150, "$regex"
    unless_null $P150, vivify_111
    new $P150, "Undef"
  vivify_111:
    $P151 = "match"($P149, $P150, 1 :named("global"))
    set $P146, $P151
  if_147_end:
    store_lex "@matches", $P146
.annotate 'line', 247
    find_lex $P156, "$repl"
    unless_null $P156, vivify_112
    new $P156, "Undef"
  vivify_112:
    isa $I157, $P156, "Sub"
    new $P158, 'Integer'
    set $P158, $I157
    store_lex "$is_code", $P158
.annotate 'line', 248
    new $P159, "Integer"
    assign $P159, 0
    store_lex "$offset", $P159
.annotate 'line', 249
    new $P160, "StringBuilder"
    store_lex "$result", $P160
.annotate 'line', 251
    find_lex $P162, "@matches"
    unless_null $P162, vivify_113
    $P162 = root_new ['parrot';'ResizablePMCArray']
  vivify_113:
    defined $I163, $P162
    unless $I163, for_undef_114
    iter $P161, $P162
    new $P199, 'ExceptionHandler'
    set_label $P199, loop198_handler
    $P199."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P199
  loop198_test:
    unless $P161, loop198_done
    shift $P164, $P161
  loop198_redo:
    .const 'Sub' $P166 = "21_1305640909.39" 
    capture_lex $P166
    $P166($P164)
  loop198_next:
    goto loop198_test
  loop198_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P200, exception, 'type'
    eq $P200, .CONTROL_LOOP_NEXT, loop198_next
    eq $P200, .CONTROL_LOOP_REDO, loop198_redo
  loop198_done:
    pop_eh 
  for_undef_114:
.annotate 'line', 260
    find_lex $P201, "$text"
    unless_null $P201, vivify_129
    new $P201, "Undef"
  vivify_129:
    set $S202, $P201
    length $I203, $S202
    new $P204, 'Integer'
    set $P204, $I203
    store_lex "$chars", $P204
.annotate 'line', 262
    find_lex $P206, "$chars"
    unless_null $P206, vivify_130
    new $P206, "Undef"
  vivify_130:
    set $N207, $P206
    find_lex $P208, "$offset"
    unless_null $P208, vivify_131
    new $P208, "Undef"
  vivify_131:
    set $N209, $P208
    isgt $I210, $N207, $N209
    unless $I210, if_205_end
.annotate 'line', 261
    find_lex $P211, "$result"
    unless_null $P211, vivify_132
    new $P211, "Undef"
  vivify_132:
    find_lex $P212, "$text"
    unless_null $P212, vivify_133
    new $P212, "Undef"
  vivify_133:
    set $S213, $P212
    find_lex $P214, "$offset"
    unless_null $P214, vivify_134
    new $P214, "Undef"
  vivify_134:
    set $I215, $P214
    find_lex $P216, "$chars"
    unless_null $P216, vivify_135
    new $P216, "Undef"
  vivify_135:
    set $I217, $P216
    substr $S218, $S213, $I215, $I217
    push $P211, $S218
  if_205_end:
.annotate 'line', 264
    find_lex $P219, "$result"
    unless_null $P219, vivify_136
    new $P219, "Undef"
  vivify_136:
    set $S220, $P219
.annotate 'line', 244
    .return ($S220)
.end


.HLL "nqp"

.namespace []
.sub "_block165"  :anon :subid("21_1305640909.39") :outer("20_1305640909.39")
    .param pmc param_167
.annotate 'line', 251
    .lex "$match", param_167
.annotate 'line', 252
    find_lex $P170, "$match"
    unless_null $P170, vivify_115
    new $P170, "Undef"
  vivify_115:
    if $P170, if_169
    set $P168, $P170
    goto if_169_end
  if_169:
.annotate 'line', 254
    find_lex $P172, "$match"
    unless_null $P172, vivify_116
    new $P172, "Undef"
  vivify_116:
    $N173 = $P172."from"()
    find_lex $P174, "$offset"
    unless_null $P174, vivify_117
    new $P174, "Undef"
  vivify_117:
    set $N175, $P174
    isgt $I176, $N173, $N175
    unless $I176, if_171_end
.annotate 'line', 253
    find_lex $P177, "$result"
    unless_null $P177, vivify_118
    new $P177, "Undef"
  vivify_118:
    find_lex $P178, "$text"
    unless_null $P178, vivify_119
    new $P178, "Undef"
  vivify_119:
    set $S179, $P178
    find_lex $P180, "$offset"
    unless_null $P180, vivify_120
    new $P180, "Undef"
  vivify_120:
    set $I181, $P180
    find_lex $P182, "$match"
    unless_null $P182, vivify_121
    new $P182, "Undef"
  vivify_121:
    $P183 = $P182."from"()
    find_lex $P184, "$offset"
    unless_null $P184, vivify_122
    new $P184, "Undef"
  vivify_122:
    sub $P185, $P183, $P184
    set $I186, $P185
    substr $S187, $S179, $I181, $I186
    push $P177, $S187
  if_171_end:
.annotate 'line', 255
    find_lex $P188, "$result"
    unless_null $P188, vivify_123
    new $P188, "Undef"
  vivify_123:
    find_lex $P191, "$is_code"
    unless_null $P191, vivify_124
    new $P191, "Undef"
  vivify_124:
    if $P191, if_190
    find_lex $P195, "$repl"
    unless_null $P195, vivify_125
    new $P195, "Undef"
  vivify_125:
    set $P189, $P195
    goto if_190_end
  if_190:
    find_lex $P192, "$repl"
    unless_null $P192, vivify_126
    new $P192, "Undef"
  vivify_126:
    find_lex $P193, "$match"
    unless_null $P193, vivify_127
    new $P193, "Undef"
  vivify_127:
    $P194 = $P192($P193)
    set $P189, $P194
  if_190_end:
    push $P188, $P189
.annotate 'line', 256
    find_lex $P196, "$match"
    unless_null $P196, vivify_128
    new $P196, "Undef"
  vivify_128:
    $P197 = $P196."to"()
    store_lex "$offset", $P197
.annotate 'line', 252
    set $P168, $P197
  if_169_end:
.annotate 'line', 251
    .return ($P168)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "hash"  :subid("22_1305640909.39") :outer("10_1305640909.39")
    .param pmc param_223 :slurpy :named
.annotate 'line', 270
    .const 'Sub' $P231 = "23_1305640909.39" 
    capture_lex $P231
    .lex "%new", param_223
.annotate 'line', 271
    $P224 = root_new ['parrot';'Hash']
    .lex "%h", $P224
.annotate 'line', 270
    find_lex $P225, "%h"
    unless_null $P225, vivify_137
    $P225 = root_new ['parrot';'Hash']
  vivify_137:
.annotate 'line', 272
    find_lex $P227, "%new"
    unless_null $P227, vivify_138
    $P227 = root_new ['parrot';'Hash']
  vivify_138:
    defined $I228, $P227
    unless $I228, for_undef_139
    iter $P226, $P227
    new $P239, 'ExceptionHandler'
    set_label $P239, loop238_handler
    $P239."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P239
  loop238_test:
    unless $P226, loop238_done
    shift $P229, $P226
  loop238_redo:
    .const 'Sub' $P231 = "23_1305640909.39" 
    capture_lex $P231
    $P231($P229)
  loop238_next:
    goto loop238_test
  loop238_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P240, exception, 'type'
    eq $P240, .CONTROL_LOOP_NEXT, loop238_next
    eq $P240, .CONTROL_LOOP_REDO, loop238_redo
  loop238_done:
    pop_eh 
  for_undef_139:
    find_lex $P241, "%h"
    unless_null $P241, vivify_145
    $P241 = root_new ['parrot';'Hash']
  vivify_145:
.annotate 'line', 270
    .return ($P241)
.end


.HLL "nqp"

.namespace []
.sub "_block230"  :anon :subid("23_1305640909.39") :outer("22_1305640909.39")
    .param pmc param_232
.annotate 'line', 272
    .lex "$_", param_232
.annotate 'line', 273
    find_lex $P233, "$_"
    unless_null $P233, vivify_140
    new $P233, "Undef"
  vivify_140:
    find_lex $P234, "%new"
    unless_null $P234, vivify_141
    $P234 = root_new ['parrot';'Hash']
  vivify_141:
    set $P235, $P234[$P233]
    unless_null $P235, vivify_142
    new $P235, "Undef"
  vivify_142:
    find_lex $P236, "$_"
    unless_null $P236, vivify_143
    new $P236, "Undef"
  vivify_143:
    find_lex $P237, "%h"
    unless_null $P237, vivify_144
    $P237 = root_new ['parrot';'Hash']
    store_lex "%h", $P237
  vivify_144:
    set $P237[$P236], $P235
.annotate 'line', 272
    .return ($P235)
.end


.HLL "nqp"

.namespace []
.sub "plan"  :subid("24_1305640909.39") :outer("10_1305640909.39")
    .param pmc param_247
.annotate 'line', 283
    .lex "$quantity", param_247
.annotate 'line', 284
    new $P248, 'String'
    set $P248, "1.."
    find_lex $P249, "$quantity"
    unless_null $P249, vivify_146
    new $P249, "Undef"
  vivify_146:
    concat $P250, $P248, $P249
    $P251 = "say"($P250)
.annotate 'line', 283
    .return ($P251)
.end


.HLL "nqp"

.namespace []
.sub "ok"  :subid("25_1305640909.39") :outer("10_1305640909.39")
    .param pmc param_254
    .param pmc param_255 :optional
    .param int has_param_255 :opt_flag
.annotate 'line', 287
    .lex "$condition", param_254
    if has_param_255, optparam_147
    new $P256, "Undef"
    set param_255, $P256
  optparam_147:
    .lex "$desc", param_255
.annotate 'line', 288
    find_lex $P257, "$test_counter"
    unless_null $P257, vivify_148
    new $P257, "Undef"
  vivify_148:
    add $P258, $P257, 1
    store_lex "$test_counter", $P258
.annotate 'line', 290
    find_lex $P260, "$condition"
    unless_null $P260, vivify_149
    new $P260, "Undef"
  vivify_149:
    if $P260, unless_259_end
.annotate 'line', 291
    "print"("not ")
  unless_259_end:
.annotate 'line', 293
    new $P261, 'String'
    set $P261, "ok "
    find_lex $P262, "$test_counter"
    unless_null $P262, vivify_150
    new $P262, "Undef"
  vivify_150:
    concat $P263, $P261, $P262
    "print"($P263)
.annotate 'line', 294
    find_lex $P265, "$desc"
    unless_null $P265, vivify_151
    new $P265, "Undef"
  vivify_151:
    unless $P265, if_264_end
.annotate 'line', 295
    new $P266, 'String'
    set $P266, " - "
    find_lex $P267, "$desc"
    unless_null $P267, vivify_152
    new $P267, "Undef"
  vivify_152:
    concat $P268, $P266, $P267
    "print"($P268)
  if_264_end:
.annotate 'line', 297
    find_lex $P270, "$test_counter"
    unless_null $P270, vivify_153
    new $P270, "Undef"
  vivify_153:
    set $N271, $P270
    find_lex $P272, "$todo_upto_test_num"
    unless_null $P272, vivify_154
    new $P272, "Undef"
  vivify_154:
    set $N273, $P272
    isle $I274, $N271, $N273
    unless $I274, if_269_end
.annotate 'line', 298
    find_lex $P275, "$todo_reason"
    unless_null $P275, vivify_155
    new $P275, "Undef"
  vivify_155:
    "print"($P275)
  if_269_end:
.annotate 'line', 300
    "print"("\n")
.annotate 'line', 302
    find_lex $P278, "$condition"
    unless_null $P278, vivify_156
    new $P278, "Undef"
  vivify_156:
    if $P278, if_277
    new $P280, "Integer"
    assign $P280, 0
    set $P276, $P280
    goto if_277_end
  if_277:
    new $P279, "Integer"
    assign $P279, 1
    set $P276, $P279
  if_277_end:
.annotate 'line', 287
    .return ($P276)
.end


.HLL "nqp"

.namespace []
.sub "todo"  :subid("26_1305640909.39") :outer("10_1305640909.39")
    .param pmc param_283
    .param pmc param_284
.annotate 'line', 305
    .lex "$reason", param_283
    .lex "$count", param_284
.annotate 'line', 306
    find_lex $P285, "$test_counter"
    unless_null $P285, vivify_157
    new $P285, "Undef"
  vivify_157:
    find_lex $P286, "$count"
    unless_null $P286, vivify_158
    new $P286, "Undef"
  vivify_158:
    add $P287, $P285, $P286
    store_lex "$todo_upto_test_num", $P287
.annotate 'line', 307
    new $P288, 'String'
    set $P288, "# TODO "
    find_lex $P289, "$reason"
    unless_null $P289, vivify_159
    new $P289, "Undef"
  vivify_159:
    concat $P290, $P288, $P289
    store_lex "$todo_reason", $P290
.annotate 'line', 305
    .return ($P290)
.end


.HLL "nqp"

.namespace []
.sub "skip"  :subid("27_1305640909.39") :outer("10_1305640909.39")
    .param pmc param_293
.annotate 'line', 310
    .lex "$desc", param_293
.annotate 'line', 311
    find_lex $P294, "$test_counter"
    unless_null $P294, vivify_160
    new $P294, "Undef"
  vivify_160:
    add $P295, $P294, 1
    store_lex "$test_counter", $P295
.annotate 'line', 312
    new $P296, 'String'
    set $P296, "ok "
    find_lex $P297, "$test_counter"
    unless_null $P297, vivify_161
    new $P297, "Undef"
  vivify_161:
    concat $P298, $P296, $P297
    concat $P299, $P298, " # SKIP "
    find_lex $P300, "$desc"
    unless_null $P300, vivify_162
    new $P300, "Undef"
  vivify_162:
    concat $P301, $P299, $P300
    concat $P302, $P301, "\n"
    $P303 = "say"($P302)
.annotate 'line', 310
    .return ($P303)
.end


.HLL "nqp"

.namespace []
.sub "_block305"  :anon :subid("28_1305640909.39") :outer("10_1305640909.39")
.annotate 'line', 14
    .lex "$?PACKAGE", $P307
    .lex "$?CLASS", $P308
.annotate 'line', 15
    find_lex $P309, "$?PACKAGE"
    get_who $P310, $P309
    set $P313, $P310["NQPModuleHOW"]
    unless_null $P313, vivify_163
    get_hll_global $P311, "GLOBAL"
    get_who $P312, $P311
    set $P313, $P312["NQPModuleHOW"]
  vivify_163:
    find_lex $P314, "$?PACKAGE"
    unless_null $P314, vivify_164
    new $P314, "Undef"
    store_lex "$?PACKAGE", $P314
  vivify_164:
    get_who $P315, $P314
    set $P315["module"], $P313
.annotate 'line', 16
    find_lex $P316, "$?PACKAGE"
    get_who $P317, $P316
    set $P320, $P317["NQPClassHOW"]
    unless_null $P320, vivify_165
    get_hll_global $P318, "GLOBAL"
    get_who $P319, $P318
    set $P320, $P319["NQPClassHOW"]
  vivify_165:
    find_lex $P321, "$?PACKAGE"
    unless_null $P321, vivify_166
    new $P321, "Undef"
    store_lex "$?PACKAGE", $P321
  vivify_166:
    get_who $P322, $P321
    set $P322["class"], $P320
.annotate 'line', 17
    find_lex $P323, "$?PACKAGE"
    get_who $P324, $P323
    set $P327, $P324["NQPAttribute"]
    unless_null $P327, vivify_167
    get_hll_global $P325, "GLOBAL"
    get_who $P326, $P325
    set $P327, $P326["NQPAttribute"]
  vivify_167:
    find_lex $P328, "$?PACKAGE"
    unless_null $P328, vivify_168
    new $P328, "Undef"
    store_lex "$?PACKAGE", $P328
  vivify_168:
    get_who $P329, $P328
    set $P329["class-attr"], $P327
.annotate 'line', 18
    find_lex $P330, "$?PACKAGE"
    get_who $P331, $P330
    set $P334, $P331["NQPClassHOW"]
    unless_null $P334, vivify_169
    get_hll_global $P332, "GLOBAL"
    get_who $P333, $P332
    set $P334, $P333["NQPClassHOW"]
  vivify_169:
    find_lex $P335, "$?PACKAGE"
    unless_null $P335, vivify_170
    new $P335, "Undef"
    store_lex "$?PACKAGE", $P335
  vivify_170:
    get_who $P336, $P335
    set $P336["grammar"], $P334
.annotate 'line', 19
    find_lex $P337, "$?PACKAGE"
    get_who $P338, $P337
    set $P341, $P338["NQPAttribute"]
    unless_null $P341, vivify_171
    get_hll_global $P339, "GLOBAL"
    get_who $P340, $P339
    set $P341, $P340["NQPAttribute"]
  vivify_171:
    find_lex $P342, "$?PACKAGE"
    unless_null $P342, vivify_172
    new $P342, "Undef"
    store_lex "$?PACKAGE", $P342
  vivify_172:
    get_who $P343, $P342
    set $P343["grammar-attr"], $P341
.annotate 'line', 20
    find_lex $P344, "$?PACKAGE"
    get_who $P345, $P344
    set $P348, $P345["NQPParametricRoleHOW"]
    unless_null $P348, vivify_173
    get_hll_global $P346, "GLOBAL"
    get_who $P347, $P346
    set $P348, $P347["NQPParametricRoleHOW"]
  vivify_173:
    find_lex $P349, "$?PACKAGE"
    unless_null $P349, vivify_174
    new $P349, "Undef"
    store_lex "$?PACKAGE", $P349
  vivify_174:
    get_who $P350, $P349
    set $P350["role"], $P348
.annotate 'line', 21
    find_lex $P351, "$?PACKAGE"
    get_who $P352, $P351
    set $P355, $P352["NQPAttribute"]
    unless_null $P355, vivify_175
    get_hll_global $P353, "GLOBAL"
    get_who $P354, $P353
    set $P355, $P354["NQPAttribute"]
  vivify_175:
    find_lex $P356, "$?PACKAGE"
    unless_null $P356, vivify_176
    new $P356, "Undef"
    store_lex "$?PACKAGE", $P356
  vivify_176:
    get_who $P357, $P356
    set $P357["role-attr"], $P355
.annotate 'line', 22
    find_lex $P358, "$?PACKAGE"
    get_who $P359, $P358
    set $P362, $P359["NQPNativeHOW"]
    unless_null $P362, vivify_177
    get_hll_global $P360, "GLOBAL"
    get_who $P361, $P360
    set $P362, $P361["NQPNativeHOW"]
  vivify_177:
    find_lex $P363, "$?PACKAGE"
    unless_null $P363, vivify_178
    new $P363, "Undef"
    store_lex "$?PACKAGE", $P363
  vivify_178:
    get_who $P364, $P363
    set $P364["native"], $P362
.annotate 'line', 14
    .return ($P362)
.end


.HLL "nqp"

.namespace []
.sub "_block365"  :anon :subid("29_1305640909.39") :outer("10_1305640909.39")
.annotate 'line', 25
    .lex "$?PACKAGE", $P367
    .lex "$?CLASS", $P368
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block369"  :anon :subid("30_1305640909.39") :outer("10_1305640909.39")
.annotate 'line', 27
    .lex "$?PACKAGE", $P371
    .lex "$?CLASS", $P372
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block373"  :anon :subid("31_1305640909.39") :outer("10_1305640909.39")
.annotate 'line', 29
    .lex "$?PACKAGE", $P375
    .lex "$?CLASS", $P376
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block377"  :anon :subid("32_1305640909.39") :outer("10_1305640909.39")
.annotate 'line', 32
    .const 'Sub' $P483 = "44_1305640909.39" 
    capture_lex $P483
    .const 'Sub' $P475 = "43_1305640909.39" 
    capture_lex $P475
    .const 'Sub' $P471 = "42_1305640909.39" 
    capture_lex $P471
    .const 'Sub' $P463 = "41_1305640909.39" 
    capture_lex $P463
    .const 'Sub' $P460 = "40_1305640909.39" 
    capture_lex $P460
    .const 'Sub' $P454 = "39_1305640909.39" 
    capture_lex $P454
    .const 'Sub' $P416 = "37_1305640909.39" 
    capture_lex $P416
    .const 'Sub' $P395 = "35_1305640909.39" 
    capture_lex $P395
    .const 'Sub' $P385 = "34_1305640909.39" 
    capture_lex $P385
    .const 'Sub' $P381 = "33_1305640909.39" 
    capture_lex $P381
    .lex "$?PACKAGE", $P379
    .lex "$?CLASS", $P380
.annotate 'line', 73
    .const 'Sub' $P483 = "44_1305640909.39" 
    newclosure $P491, $P483
.annotate 'line', 32
    .return ($P491)
.end


.HLL "nqp"

.namespace []
.sub "CREATE" :anon :subid("33_1305640909.39") :outer("32_1305640909.39")
    .param pmc param_382
.annotate 'line', 33
    .lex "self", param_382
.annotate 'line', 34
    find_lex $P383, "self"
    repr_instance_of $P384, $P383
.annotate 'line', 33
    .return ($P384)
.end


.HLL "nqp"

.namespace []
.sub "bless" :anon :subid("34_1305640909.39") :outer("32_1305640909.39")
    .param pmc param_386
    .param pmc param_388 :slurpy :named
.annotate 'line', 37
    .lex "$self", param_386
    find_lex $P387, "$self"
    .lex "self", $P387
    .lex "%attributes", param_388
.annotate 'line', 38
    new $P389, "Undef"
    .lex "$instance", $P389
    find_lex $P390, "self"
    $P391 = $P390."CREATE"()
    store_lex "$instance", $P391
.annotate 'line', 39
    find_lex $P392, "$instance"
    unless_null $P392, vivify_179
    new $P392, "Undef"
  vivify_179:
    find_lex $P393, "%attributes"
    unless_null $P393, vivify_180
    $P393 = root_new ['parrot';'Hash']
  vivify_180:
    $P392."BUILDALL"($P393 :flat)
    find_lex $P394, "$instance"
    unless_null $P394, vivify_181
    new $P394, "Undef"
  vivify_181:
.annotate 'line', 37
    .return ($P394)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "BUILDALL" :anon :subid("35_1305640909.39") :outer("32_1305640909.39")
    .param pmc param_396
    .param pmc param_398 :slurpy :named
.annotate 'line', 43
    .const 'Sub' $P407 = "36_1305640909.39" 
    capture_lex $P407
    .lex "$self", param_396
    find_lex $P397, "$self"
    .lex "self", $P397
    .lex "%attributes", param_398
.annotate 'line', 44
    find_lex $P400, "$self"
    unless_null $P400, vivify_182
    new $P400, "Undef"
  vivify_182:
    get_how $P401, $P400
    find_lex $P402, "$self"
    unless_null $P402, vivify_183
    new $P402, "Undef"
  vivify_183:
    $P403 = $P401."parents"($P402)
    defined $I404, $P403
    unless $I404, for_undef_184
    iter $P399, $P403
    new $P414, 'ExceptionHandler'
    set_label $P414, loop413_handler
    $P414."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P414
  loop413_test:
    unless $P399, loop413_done
    shift $P405, $P399
  loop413_redo:
    .const 'Sub' $P407 = "36_1305640909.39" 
    capture_lex $P407
    $P407($P405)
  loop413_next:
    goto loop413_test
  loop413_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P415, exception, 'type'
    eq $P415, .CONTROL_LOOP_NEXT, loop413_next
    eq $P415, .CONTROL_LOOP_REDO, loop413_redo
  loop413_done:
    pop_eh 
  for_undef_184:
.annotate 'line', 43
    .return ($P399)
.end


.HLL "nqp"

.namespace []
.sub "_block406"  :anon :subid("36_1305640909.39") :outer("35_1305640909.39")
    .param pmc param_408
.annotate 'line', 44
    .lex "$class", param_408
.annotate 'line', 45
    find_lex $P409, "$self"
    unless_null $P409, vivify_185
    new $P409, "Undef"
  vivify_185:
    find_lex $P410, "$class"
    unless_null $P410, vivify_186
    new $P410, "Undef"
  vivify_186:
    find_lex $P411, "%attributes"
    unless_null $P411, vivify_187
    $P411 = root_new ['parrot';'Hash']
  vivify_187:
    $P412 = $P409."BUILD_MAGIC"($P410, $P411 :flat)
.annotate 'line', 44
    .return ($P412)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "BUILD_MAGIC" :anon :subid("37_1305640909.39") :outer("32_1305640909.39")
    .param pmc param_417
    .param pmc param_419
    .param pmc param_420 :slurpy :named
.annotate 'line', 49
    .const 'Sub' $P429 = "38_1305640909.39" 
    capture_lex $P429
    .lex "$self", param_417
    find_lex $P418, "$self"
    .lex "self", $P418
    .lex "$type", param_419
    .lex "%attributes", param_420
.annotate 'line', 50
    find_lex $P422, "$type"
    unless_null $P422, vivify_188
    new $P422, "Undef"
  vivify_188:
    get_how $P423, $P422
    find_lex $P424, "$type"
    unless_null $P424, vivify_189
    new $P424, "Undef"
  vivify_189:
    $P425 = $P423."attributes"($P424, 1 :named("local"))
    defined $I426, $P425
    unless $I426, for_undef_190
    iter $P421, $P425
    new $P452, 'ExceptionHandler'
    set_label $P452, loop451_handler
    $P452."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P452
  loop451_test:
    unless $P421, loop451_done
    shift $P427, $P421
  loop451_redo:
    .const 'Sub' $P429 = "38_1305640909.39" 
    capture_lex $P429
    $P429($P427)
  loop451_next:
    goto loop451_test
  loop451_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P453, exception, 'type'
    eq $P453, .CONTROL_LOOP_NEXT, loop451_next
    eq $P453, .CONTROL_LOOP_REDO, loop451_redo
  loop451_done:
    pop_eh 
  for_undef_190:
.annotate 'line', 49
    .return ($P421)
.end


.HLL "nqp"

.namespace []
.sub "_block428"  :anon :subid("38_1305640909.39") :outer("37_1305640909.39")
    .param pmc param_432
.annotate 'line', 51
    new $P430, "Undef"
    .lex "$name", $P430
.annotate 'line', 52
    new $P431, "Undef"
    .lex "$shortname", $P431
    .lex "$_", param_432
.annotate 'line', 51
    find_lex $P433, "$_"
    unless_null $P433, vivify_191
    new $P433, "Undef"
  vivify_191:
    $P434 = $P433."name"()
    store_lex "$name", $P434
.annotate 'line', 52
    find_lex $P435, "$name"
    unless_null $P435, vivify_192
    new $P435, "Undef"
  vivify_192:
    set $S436, $P435
    substr $S437, $S436, 2
    new $P438, 'String'
    set $P438, $S437
    store_lex "$shortname", $P438
.annotate 'line', 53
    find_lex $P442, "$shortname"
    unless_null $P442, vivify_193
    new $P442, "Undef"
  vivify_193:
    find_lex $P441, "%attributes"
    unless_null $P441, vivify_194
    $P441 = root_new ['parrot';'Hash']
  vivify_194:
    exists $I443, $P441[$P442]
    if $I443, if_440
    new $P439, 'Integer'
    set $P439, $I443
    goto if_440_end
  if_440:
.annotate 'line', 54
    find_lex $P444, "$self"
    unless_null $P444, vivify_195
    new $P444, "Undef"
  vivify_195:
    find_lex $P445, "$type"
    unless_null $P445, vivify_196
    new $P445, "Undef"
  vivify_196:
    find_lex $P446, "$name"
    unless_null $P446, vivify_197
    new $P446, "Undef"
  vivify_197:
    set $S447, $P446
    find_lex $P448, "$shortname"
    unless_null $P448, vivify_198
    new $P448, "Undef"
  vivify_198:
    find_lex $P449, "%attributes"
    unless_null $P449, vivify_199
    $P449 = root_new ['parrot';'Hash']
  vivify_199:
    set $P450, $P449[$P448]
    unless_null $P450, vivify_200
    new $P450, "Undef"
  vivify_200:
    setattribute $P444, $P445, $S447, $P450
  if_440_end:
.annotate 'line', 50
    .return ($P439)
.end


.HLL "nqp"

.namespace []
.sub "new" :anon :subid("39_1305640909.39") :outer("32_1305640909.39")
    .param pmc param_455
    .param pmc param_456 :slurpy :named
.annotate 'line', 59
    .lex "self", param_455
    .lex "%attributes", param_456
.annotate 'line', 60
    find_lex $P457, "self"
    find_lex $P458, "%attributes"
    unless_null $P458, vivify_201
    $P458 = root_new ['parrot';'Hash']
  vivify_201:
    $P459 = $P457."bless"($P458 :flat)
.annotate 'line', 59
    .return ($P459)
.end


.HLL "nqp"

.namespace []
.sub "Str" :instanceof("DispatcherSub"):anon :subid("40_1305640909.39") :outer("32_1305640909.39")
    .param pmc param_461
.annotate 'line', 59
    .lex "self", param_461
    multi_dispatch_over_lexical_candidates $P462
    .return ($P462)
.end


.HLL "nqp"

.namespace []
.sub "Str" :anon :subid("41_1305640909.39") :outer("32_1305640909.39")
    .param pmc param_464
.annotate 'line', 64
    .lex "$self", param_464
    find_lex $P465, "$self"
    .lex "self", $P465
.annotate 'line', 65
    find_lex $P466, "self"
    get_how $P467, $P466
    find_lex $P468, "self"
    $P469 = $P467."name"($P468)
    concat $P470, $P469, "()"
.annotate 'line', 64
    .return ($P470)
.end


.HLL "nqp"

.namespace []
.sub "ACCEPTS" :instanceof("DispatcherSub"):anon :subid("42_1305640909.39") :outer("32_1305640909.39")
    .param pmc param_472
    .param pmc param_473
.annotate 'line', 64
    .lex "self", param_472
.annotate 'line', 68
    .lex "$topic", param_473
.annotate 'line', 64
    multi_dispatch_over_lexical_candidates $P474
    .return ($P474)
.end


.HLL "nqp"

.namespace []
.sub "ACCEPTS" :anon :subid("43_1305640909.39") :outer("32_1305640909.39")
    .param pmc param_476
    .param pmc param_478
.annotate 'line', 69
    .lex "$self", param_476
    find_lex $P477, "$self"
    .lex "self", $P477
    .lex "$topic", param_478
.annotate 'line', 70
    find_lex $P479, "$topic"
    unless_null $P479, vivify_202
    new $P479, "Undef"
  vivify_202:
    find_lex $P480, "self"
    get_what $P481, $P480
    type_check $I482, $P479, $P481
.annotate 'line', 69
    .return ($I482)
.end


.HLL "nqp"

.namespace []
.sub "isa" :anon :subid("44_1305640909.39") :outer("32_1305640909.39")
    .param pmc param_484
    .param pmc param_485
.annotate 'line', 73
    .lex "self", param_484
    .lex "$type", param_485
.annotate 'line', 74
    find_lex $P486, "self"
    get_how $P487, $P486
    find_lex $P488, "self"
    find_lex $P489, "$type"
    unless_null $P489, vivify_203
    new $P489, "Undef"
  vivify_203:
    $P490 = $P487."isa"($P488, $P489)
.annotate 'line', 73
    .return ($P490)
.end


.HLL "nqp"

.namespace []
.sub "_block492"  :anon :subid("45_1305640909.39") :outer("10_1305640909.39")
.annotate 'line', 79
    .const 'Sub' $P664 = "63_1305640909.39" 
    capture_lex $P664
    .const 'Sub' $P656 = "62_1305640909.39" 
    capture_lex $P656
    .const 'Sub' $P648 = "61_1305640909.39" 
    capture_lex $P648
    .const 'Sub' $P640 = "60_1305640909.39" 
    capture_lex $P640
    .const 'Sub' $P632 = "59_1305640909.39" 
    capture_lex $P632
    .const 'Sub' $P623 = "58_1305640909.39" 
    capture_lex $P623
    .const 'Sub' $P614 = "57_1305640909.39" 
    capture_lex $P614
    .const 'Sub' $P605 = "56_1305640909.39" 
    capture_lex $P605
    .const 'Sub' $P594 = "55_1305640909.39" 
    capture_lex $P594
    .const 'Sub' $P584 = "54_1305640909.39" 
    capture_lex $P584
    .const 'Sub' $P574 = "53_1305640909.39" 
    capture_lex $P574
    .const 'Sub' $P556 = "52_1305640909.39" 
    capture_lex $P556
    .const 'Sub' $P539 = "51_1305640909.39" 
    capture_lex $P539
    .const 'Sub' $P522 = "50_1305640909.39" 
    capture_lex $P522
    .const 'Sub' $P516 = "49_1305640909.39" 
    capture_lex $P516
    .const 'Sub' $P511 = "48_1305640909.39" 
    capture_lex $P511
    .const 'Sub' $P503 = "47_1305640909.39" 
    capture_lex $P503
    .const 'Sub' $P496 = "46_1305640909.39" 
    capture_lex $P496
    .lex "$?PACKAGE", $P494
    .lex "$?CLASS", $P495
.annotate 'line', 142
    .const 'Sub' $P664 = "63_1305640909.39" 
    newclosure $P671, $P664
.annotate 'line', 79
    .return ($P671)
.end


.HLL "nqp"

.namespace []
.sub "new" :anon :subid("46_1305640909.39") :outer("45_1305640909.39")
    .param pmc param_497
.annotate 'line', 83
    .lex "self", param_497
.annotate 'line', 84
    new $P498, "Undef"
    .lex "$n", $P498
    find_lex $P499, "self"
    $P500 = $P499."CREATE"()
    store_lex "$n", $P500
.annotate 'line', 85
    find_lex $P501, "$n"
    unless_null $P501, vivify_204
    new $P501, "Undef"
  vivify_204:
    $P501."BUILD"()
    find_lex $P502, "$n"
    unless_null $P502, vivify_205
    new $P502, "Undef"
  vivify_205:
.annotate 'line', 83
    .return ($P502)
.end


.HLL "nqp"

.namespace []
.sub "BUILD" :anon :subid("47_1305640909.39") :outer("45_1305640909.39")
    .param pmc param_504
.annotate 'line', 89
    .lex "self", param_504
.annotate 'line', 90
    new $P505, "ResizablePMCArray"
    find_lex $P506, "self"
    find_lex $P507, "$?CLASS"
    setattribute $P506, $P507, "@!array", $P505
.annotate 'line', 91
    new $P508, "Hash"
    find_lex $P509, "self"
    find_lex $P510, "$?CLASS"
    setattribute $P509, $P510, "%!hash", $P508
.annotate 'line', 89
    .return ($P508)
.end


.HLL "nqp"

.namespace []
.sub "list" :anon :subid("48_1305640909.39") :outer("45_1305640909.39")
    .param pmc param_512
.annotate 'line', 94
    .lex "self", param_512
    find_lex $P513, "self"
    find_lex $P514, "$?CLASS"
    getattribute $P515, $P513, $P514, "@!array"
    unless_null $P515, vivify_206
    $P515 = root_new ['parrot';'ResizablePMCArray']
  vivify_206:
    .return ($P515)
.end


.HLL "nqp"

.namespace []
.sub "hash" :anon :subid("49_1305640909.39") :outer("45_1305640909.39")
    .param pmc param_517
.annotate 'line', 96
    .lex "self", param_517
    find_lex $P518, "self"
    find_lex $P519, "$?CLASS"
    getattribute $P520, $P518, $P519, "%!hash"
    unless_null $P520, vivify_207
    $P520 = root_new ['parrot';'Hash']
  vivify_207:
    .return ($P520)
.end


.HLL "nqp"

.namespace []
.sub "_block521"  :anon :subid("50_1305640909.39") :outer("45_1305640909.39")
    .param pmc param_523
    .param pmc param_524
.annotate 'line', 98
    .lex "self", param_523
    .lex "$key", param_524
.annotate 'line', 99
    find_lex $P530, "$key"
    unless_null $P530, vivify_208
    new $P530, "Undef"
  vivify_208:
    find_lex $P527, "self"
    find_lex $P528, "$?CLASS"
    getattribute $P529, $P527, $P528, "%!hash"
    unless_null $P529, vivify_209
    $P529 = root_new ['parrot';'Hash']
  vivify_209:
    exists $I531, $P529[$P530]
    if $I531, if_526
    null $P537
    set $P525, $P537
    goto if_526_end
  if_526:
    find_lex $P532, "$key"
    unless_null $P532, vivify_210
    new $P532, "Undef"
  vivify_210:
    find_lex $P533, "self"
    find_lex $P534, "$?CLASS"
    getattribute $P535, $P533, $P534, "%!hash"
    unless_null $P535, vivify_211
    $P535 = root_new ['parrot';'Hash']
  vivify_211:
    set $P536, $P535[$P532]
    unless_null $P536, vivify_212
    new $P536, "Undef"
  vivify_212:
    set $P525, $P536
  if_526_end:
.annotate 'line', 98
    .return ($P525)
.end


.HLL "nqp"

.namespace []
.sub "_block538"  :anon :subid("51_1305640909.39") :outer("45_1305640909.39")
    .param pmc param_540
    .param pmc param_541
.annotate 'line', 101
    .lex "self", param_540
    .lex "$key", param_541
.annotate 'line', 102
    find_lex $P547, "$key"
    unless_null $P547, vivify_213
    new $P547, "Undef"
  vivify_213:
    find_lex $P544, "self"
    find_lex $P545, "$?CLASS"
    getattribute $P546, $P544, $P545, "%!hash"
    unless_null $P546, vivify_214
    $P546 = root_new ['parrot';'Hash']
  vivify_214:
    exists $I548, $P546[$P547]
    if $I548, if_543
    null $P554
    set $P542, $P554
    goto if_543_end
  if_543:
    find_lex $P549, "$key"
    unless_null $P549, vivify_215
    new $P549, "Undef"
  vivify_215:
    find_lex $P550, "self"
    find_lex $P551, "$?CLASS"
    getattribute $P552, $P550, $P551, "%!hash"
    unless_null $P552, vivify_216
    $P552 = root_new ['parrot';'Hash']
  vivify_216:
    set $P553, $P552[$P549]
    unless_null $P553, vivify_217
    new $P553, "Undef"
  vivify_217:
    set $P542, $P553
  if_543_end:
.annotate 'line', 101
    .return ($P542)
.end


.HLL "nqp"

.namespace []
.sub "_block555"  :anon :subid("52_1305640909.39") :outer("45_1305640909.39")
    .param pmc param_557
    .param pmc param_558
.annotate 'line', 104
    .lex "self", param_557
    .lex "$key", param_558
.annotate 'line', 105
    find_lex $P564, "$key"
    unless_null $P564, vivify_218
    new $P564, "Undef"
  vivify_218:
    find_lex $P561, "self"
    find_lex $P562, "$?CLASS"
    getattribute $P563, $P561, $P562, "@!array"
    unless_null $P563, vivify_219
    $P563 = root_new ['parrot';'ResizablePMCArray']
  vivify_219:
    exists $I565, $P563[$P564]
    if $I565, if_560
    null $P572
    set $P559, $P572
    goto if_560_end
  if_560:
    find_lex $P566, "$key"
    unless_null $P566, vivify_220
    new $P566, "Undef"
  vivify_220:
    set $I567, $P566
    find_lex $P568, "self"
    find_lex $P569, "$?CLASS"
    getattribute $P570, $P568, $P569, "@!array"
    unless_null $P570, vivify_221
    $P570 = root_new ['parrot';'ResizablePMCArray']
  vivify_221:
    set $P571, $P570[$I567]
    unless_null $P571, vivify_222
    new $P571, "Undef"
  vivify_222:
    set $P559, $P571
  if_560_end:
.annotate 'line', 104
    .return ($P559)
.end


.HLL "nqp"

.namespace []
.sub "_block573"  :anon :subid("53_1305640909.39") :outer("45_1305640909.39")
    .param pmc param_575
    .param pmc param_576
    .param pmc param_577
.annotate 'line', 108
    .lex "self", param_575
    .lex "$key", param_576
    .lex "$value", param_577
.annotate 'line', 109
    find_lex $P578, "$value"
    unless_null $P578, vivify_223
    new $P578, "Undef"
  vivify_223:
    find_lex $P579, "$key"
    unless_null $P579, vivify_224
    new $P579, "Undef"
  vivify_224:
    find_lex $P580, "self"
    find_lex $P581, "$?CLASS"
    getattribute $P582, $P580, $P581, "%!hash"
    unless_null $P582, vivify_225
    $P582 = root_new ['parrot';'Hash']
    setattribute $P580, $P581, "%!hash", $P582
  vivify_225:
    set $P582[$P579], $P578
.annotate 'line', 108
    .return ($P578)
.end


.HLL "nqp"

.namespace []
.sub "_block583"  :anon :subid("54_1305640909.39") :outer("45_1305640909.39")
    .param pmc param_585
    .param pmc param_586
    .param pmc param_587
.annotate 'line', 111
    .lex "self", param_585
    .lex "$key", param_586
    .lex "$value", param_587
.annotate 'line', 112
    find_lex $P588, "$value"
    unless_null $P588, vivify_226
    new $P588, "Undef"
  vivify_226:
    find_lex $P589, "$key"
    unless_null $P589, vivify_227
    new $P589, "Undef"
  vivify_227:
    find_lex $P590, "self"
    find_lex $P591, "$?CLASS"
    getattribute $P592, $P590, $P591, "%!hash"
    unless_null $P592, vivify_228
    $P592 = root_new ['parrot';'Hash']
    setattribute $P590, $P591, "%!hash", $P592
  vivify_228:
    set $P592[$P589], $P588
.annotate 'line', 111
    .return ($P588)
.end


.HLL "nqp"

.namespace []
.sub "_block593"  :anon :subid("55_1305640909.39") :outer("45_1305640909.39")
    .param pmc param_595
    .param pmc param_596
    .param pmc param_597
.annotate 'line', 114
    .lex "self", param_595
    .lex "$key", param_596
    .lex "$value", param_597
.annotate 'line', 115
    find_lex $P598, "$value"
    unless_null $P598, vivify_229
    new $P598, "Undef"
  vivify_229:
    find_lex $P599, "$key"
    unless_null $P599, vivify_230
    new $P599, "Undef"
  vivify_230:
    set $I600, $P599
    find_lex $P601, "self"
    find_lex $P602, "$?CLASS"
    getattribute $P603, $P601, $P602, "@!array"
    unless_null $P603, vivify_231
    $P603 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P601, $P602, "@!array", $P603
  vivify_231:
    set $P603[$I600], $P598
.annotate 'line', 114
    .return ($P598)
.end


.HLL "nqp"

.namespace []
.sub "_block604"  :anon :subid("56_1305640909.39") :outer("45_1305640909.39")
    .param pmc param_606
    .param pmc param_607
.annotate 'line', 118
    .lex "self", param_606
    .lex "$key", param_607
.annotate 'line', 119
    find_lex $P611, "$key"
    unless_null $P611, vivify_232
    new $P611, "Undef"
  vivify_232:
    find_lex $P608, "self"
    find_lex $P609, "$?CLASS"
    getattribute $P610, $P608, $P609, "%!hash"
    unless_null $P610, vivify_233
    $P610 = root_new ['parrot';'Hash']
  vivify_233:
    exists $I612, $P610[$P611]
.annotate 'line', 118
    .return ($I612)
.end


.HLL "nqp"

.namespace []
.sub "_block613"  :anon :subid("57_1305640909.39") :outer("45_1305640909.39")
    .param pmc param_615
    .param pmc param_616
.annotate 'line', 121
    .lex "self", param_615
    .lex "$key", param_616
.annotate 'line', 122
    find_lex $P620, "$key"
    unless_null $P620, vivify_234
    new $P620, "Undef"
  vivify_234:
    find_lex $P617, "self"
    find_lex $P618, "$?CLASS"
    getattribute $P619, $P617, $P618, "%!hash"
    unless_null $P619, vivify_235
    $P619 = root_new ['parrot';'Hash']
  vivify_235:
    exists $I621, $P619[$P620]
.annotate 'line', 121
    .return ($I621)
.end


.HLL "nqp"

.namespace []
.sub "_block622"  :anon :subid("58_1305640909.39") :outer("45_1305640909.39")
    .param pmc param_624
    .param pmc param_625
.annotate 'line', 124
    .lex "self", param_624
    .lex "$key", param_625
.annotate 'line', 125
    find_lex $P629, "$key"
    unless_null $P629, vivify_236
    new $P629, "Undef"
  vivify_236:
    find_lex $P626, "self"
    find_lex $P627, "$?CLASS"
    getattribute $P628, $P626, $P627, "@!array"
    unless_null $P628, vivify_237
    $P628 = root_new ['parrot';'ResizablePMCArray']
  vivify_237:
    exists $I630, $P628[$P629]
.annotate 'line', 124
    .return ($I630)
.end


.HLL "nqp"

.namespace []
.sub "_block631"  :anon :subid("59_1305640909.39") :outer("45_1305640909.39")
    .param pmc param_633
    .param pmc param_634
.annotate 'line', 128
    .lex "self", param_633
    .lex "$key", param_634
.annotate 'line', 129
    find_lex $P638, "$key"
    unless_null $P638, vivify_238
    new $P638, "Undef"
  vivify_238:
    find_lex $P635, "self"
    find_lex $P636, "$?CLASS"
    getattribute $P637, $P635, $P636, "%!hash"
    unless_null $P637, vivify_239
    $P637 = root_new ['parrot';'Hash']
  vivify_239:
    delete $P637[$P638]
.annotate 'line', 128
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block639"  :anon :subid("60_1305640909.39") :outer("45_1305640909.39")
    .param pmc param_641
    .param pmc param_642
.annotate 'line', 131
    .lex "self", param_641
    .lex "$key", param_642
.annotate 'line', 132
    find_lex $P646, "$key"
    unless_null $P646, vivify_240
    new $P646, "Undef"
  vivify_240:
    find_lex $P643, "self"
    find_lex $P644, "$?CLASS"
    getattribute $P645, $P643, $P644, "%!hash"
    unless_null $P645, vivify_241
    $P645 = root_new ['parrot';'Hash']
  vivify_241:
    delete $P645[$P646]
.annotate 'line', 131
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block647"  :anon :subid("61_1305640909.39") :outer("45_1305640909.39")
    .param pmc param_649
    .param pmc param_650
.annotate 'line', 134
    .lex "self", param_649
    .lex "$key", param_650
.annotate 'line', 135
    find_lex $P654, "$key"
    unless_null $P654, vivify_242
    new $P654, "Undef"
  vivify_242:
    find_lex $P651, "self"
    find_lex $P652, "$?CLASS"
    getattribute $P653, $P651, $P652, "@!array"
    unless_null $P653, vivify_243
    $P653 = root_new ['parrot';'ResizablePMCArray']
  vivify_243:
    delete $P653[$P654]
.annotate 'line', 134
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block655"  :anon :subid("62_1305640909.39") :outer("45_1305640909.39")
    .param pmc param_657
    .param pmc param_658
.annotate 'line', 138
    .lex "self", param_657
    .lex "$value", param_658
.annotate 'line', 139
    find_lex $P659, "self"
    find_lex $P660, "$?CLASS"
    getattribute $P661, $P659, $P660, "@!array"
    unless_null $P661, vivify_244
    $P661 = root_new ['parrot';'ResizablePMCArray']
  vivify_244:
    find_lex $P662, "$value"
    unless_null $P662, vivify_245
    new $P662, "Undef"
  vivify_245:
    unshift $P661, $P662
.annotate 'line', 138
    .return ($P661)
.end


.HLL "nqp"

.namespace []
.sub "_block663"  :anon :subid("63_1305640909.39") :outer("45_1305640909.39")
    .param pmc param_665
    .param pmc param_666
.annotate 'line', 142
    .lex "self", param_665
    .lex "$value", param_666
.annotate 'line', 143
    find_lex $P667, "self"
    find_lex $P668, "$?CLASS"
    getattribute $P669, $P667, $P668, "@!array"
    unless_null $P669, vivify_246
    $P669 = root_new ['parrot';'ResizablePMCArray']
  vivify_246:
    find_lex $P670, "$value"
    unless_null $P670, vivify_247
    new $P670, "Undef"
  vivify_247:
    unshift $P669, $P670
.annotate 'line', 142
    .return ($P669)
.end


.HLL "nqp"

.namespace []
.sub "_block696" :load :anon :subid("64_1305640909.39")
.annotate 'line', 1
    .const 'Sub' $P698 = "10_1305640909.39" 
    $P699 = $P698()
    .return ($P699)
.end

