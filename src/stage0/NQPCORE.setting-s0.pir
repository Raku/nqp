
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1303748428.565")
.annotate 'line', 0
    .const 'Sub' $P500 = "47_1303748428.565" 
    capture_lex $P500
    .const 'Sub' $P336 = "33_1303748428.565" 
    capture_lex $P336
    .const 'Sub' $P327 = "31_1303748428.565" 
    capture_lex $P327
    .const 'Sub' $P318 = "29_1303748428.565" 
    capture_lex $P318
    .const 'Sub' $P309 = "27_1303748428.565" 
    capture_lex $P309
    .const 'Sub' $P265 = "25_1303748428.565" 
    capture_lex $P265
    .const 'Sub' $P251 = "24_1303748428.565" 
    capture_lex $P251
    .const 'Sub' $P229 = "23_1303748428.565" 
    capture_lex $P229
    .const 'Sub' $P222 = "22_1303748428.565" 
    capture_lex $P222
    .const 'Sub' $P134 = "20_1303748428.565" 
    capture_lex $P134
    .const 'Sub' $P101 = "18_1303748428.565" 
    capture_lex $P101
    .const 'Sub' $P96 = "17_1303748428.565" 
    capture_lex $P96
    .const 'Sub' $P82 = "15_1303748428.565" 
    capture_lex $P82
    .const 'Sub' $P70 = "14_1303748428.565" 
    capture_lex $P70
    .const 'Sub' $P59 = "13_1303748428.565" 
    capture_lex $P59
    .const 'Sub' $P54 = "12_1303748428.565" 
    capture_lex $P54
    .const 'Sub' $P21 = "11_1303748428.565" 
    capture_lex $P21
.annotate 'line', 1
    .lex "GLOBALish", $P13
    .lex "$?PACKAGE", $P14
    .lex "EXPORTHOW", $P15
    .lex "int", $P16
    .lex "num", $P17
    .lex "str", $P18
    .lex "NQPMu", $P19
    .lex "NQPCapture", $P20
.annotate 'line', 155
    .const 'Sub' $P21 = "11_1303748428.565" 
    newclosure $P53, $P21
    .lex "open", $P53
.annotate 'line', 167
    .const 'Sub' $P54 = "12_1303748428.565" 
    newclosure $P58, $P54
    .lex "close", $P58
.annotate 'line', 175
    .const 'Sub' $P59 = "13_1303748428.565" 
    newclosure $P69, $P59
    .lex "slurp", $P69
.annotate 'line', 187
    .const 'Sub' $P70 = "14_1303748428.565" 
    newclosure $P81, $P70
    .lex "spew", $P81
.annotate 'line', 194
    .const 'Sub' $P82 = "15_1303748428.565" 
    newclosure $P95, $P82
    .lex "print", $P95
.annotate 'line', 201
    .const 'Sub' $P96 = "17_1303748428.565" 
    newclosure $P100, $P96
    .lex "say", $P100
.annotate 'line', 219
    .const 'Sub' $P101 = "18_1303748428.565" 
    newclosure $P133, $P101
    .lex "match", $P133
.annotate 'line', 241
    .const 'Sub' $P134 = "20_1303748428.565" 
    newclosure $P220, $P134
    .lex "subst", $P220
.annotate 'line', 267
    new $P221, "Undef"
    .lex "$test_counter", $P221
.annotate 'line', 269
    .const 'Sub' $P222 = "22_1303748428.565" 
    newclosure $P228, $P222
    .lex "plan", $P228
.annotate 'line', 273
    .const 'Sub' $P229 = "23_1303748428.565" 
    newclosure $P250, $P229
    .lex "ok", $P250
.annotate 'line', 288
    .const 'Sub' $P251 = "24_1303748428.565" 
    newclosure $P263, $P251
    .lex "skip", $P263
.annotate 'line', 14
    .const 'Sub' $P265 = "25_1303748428.565" 
    capture_lex $P265
    $P265()
.annotate 'line', 22
    .const 'Sub' $P309 = "27_1303748428.565" 
    capture_lex $P309
    $P309()
.annotate 'line', 24
    .const 'Sub' $P318 = "29_1303748428.565" 
    capture_lex $P318
    $P318()
.annotate 'line', 26
    .const 'Sub' $P327 = "31_1303748428.565" 
    capture_lex $P327
    $P327()
.annotate 'line', 29
    .const 'Sub' $P336 = "33_1303748428.565" 
    capture_lex $P336
    $P336()
.annotate 'line', 76
    .const 'Sub' $P500 = "47_1303748428.565" 
    capture_lex $P500
    $P500()
    find_lex $P878, "open"
    find_lex $P879, "close"
    find_lex $P880, "slurp"
    find_lex $P881, "spew"
    find_lex $P882, "print"
    find_lex $P883, "say"
    find_lex $P884, "match"
    find_lex $P885, "subst"
.annotate 'line', 267
    new $P886, "Integer"
    assign $P886, 0
    store_lex "$test_counter", $P886
    find_lex $P887, "plan"
    find_lex $P888, "ok"
    find_lex $P889, "skip"
    new $P890, "Integer"
    assign $P890, 1
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 1
    .return ()
    .const 'Sub' $P892 = "67_1303748428.565" 
    .return ($P892)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post68") :outer("10_1303748428.565")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1303748428.565" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P896, "1303748427.491"
    isnull $I897, $P896
    if $I897, if_895
    .const 'Sub' $P1018 = "10_1303748428.565" 
    $P1019 = $P1018."get_lexinfo"()
    nqp_get_sc_object $P1020, "1303748427.491", 0
    $P1019."set_static_lexpad_value"("GLOBALish", $P1020)
    .const 'Sub' $P1021 = "10_1303748428.565" 
    $P1022 = $P1021."get_lexinfo"()
    $P1022."finish_static_lexpad"()
    .const 'Sub' $P1023 = "10_1303748428.565" 
    $P1024 = $P1023."get_lexinfo"()
    nqp_get_sc_object $P1025, "1303748427.491", 0
    $P1024."set_static_lexpad_value"("$?PACKAGE", $P1025)
    .const 'Sub' $P1026 = "10_1303748428.565" 
    $P1027 = $P1026."get_lexinfo"()
    $P1027."finish_static_lexpad"()
    .const 'Sub' $P1028 = "10_1303748428.565" 
    $P1029 = $P1028."get_lexinfo"()
    nqp_get_sc_object $P1030, "1303748427.491", 1
    $P1029."set_static_lexpad_value"("EXPORTHOW", $P1030)
    .const 'Sub' $P1031 = "10_1303748428.565" 
    $P1032 = $P1031."get_lexinfo"()
    $P1032."finish_static_lexpad"()
    .const 'Sub' $P1033 = "25_1303748428.565" 
    $P1034 = $P1033."get_lexinfo"()
    nqp_get_sc_object $P1035, "1303748427.491", 1
    $P1034."set_static_lexpad_value"("$?PACKAGE", $P1035)
    .const 'Sub' $P1036 = "25_1303748428.565" 
    $P1037 = $P1036."get_lexinfo"()
    $P1037."finish_static_lexpad"()
    .const 'Sub' $P1038 = "25_1303748428.565" 
    $P1039 = $P1038."get_lexinfo"()
    nqp_get_sc_object $P1040, "1303748427.491", 1
    $P1039."set_static_lexpad_value"("$?CLASS", $P1040)
    .const 'Sub' $P1041 = "25_1303748428.565" 
    $P1042 = $P1041."get_lexinfo"()
    $P1042."finish_static_lexpad"()
    .const 'Sub' $P1043 = "10_1303748428.565" 
    $P1044 = $P1043."get_lexinfo"()
    nqp_get_sc_object $P1045, "1303748427.491", 2
    $P1044."set_static_lexpad_value"("int", $P1045)
    .const 'Sub' $P1046 = "10_1303748428.565" 
    $P1047 = $P1046."get_lexinfo"()
    $P1047."finish_static_lexpad"()
    .const 'Sub' $P1048 = "27_1303748428.565" 
    $P1049 = $P1048."get_lexinfo"()
    nqp_get_sc_object $P1050, "1303748427.491", 2
    $P1049."set_static_lexpad_value"("$?PACKAGE", $P1050)
    .const 'Sub' $P1051 = "27_1303748428.565" 
    $P1052 = $P1051."get_lexinfo"()
    $P1052."finish_static_lexpad"()
    .const 'Sub' $P1053 = "27_1303748428.565" 
    $P1054 = $P1053."get_lexinfo"()
    nqp_get_sc_object $P1055, "1303748427.491", 2
    $P1054."set_static_lexpad_value"("$?CLASS", $P1055)
    .const 'Sub' $P1056 = "27_1303748428.565" 
    $P1057 = $P1056."get_lexinfo"()
    $P1057."finish_static_lexpad"()
    .const 'Sub' $P1058 = "10_1303748428.565" 
    $P1059 = $P1058."get_lexinfo"()
    nqp_get_sc_object $P1060, "1303748427.491", 3
    $P1059."set_static_lexpad_value"("num", $P1060)
    .const 'Sub' $P1061 = "10_1303748428.565" 
    $P1062 = $P1061."get_lexinfo"()
    $P1062."finish_static_lexpad"()
    .const 'Sub' $P1063 = "29_1303748428.565" 
    $P1064 = $P1063."get_lexinfo"()
    nqp_get_sc_object $P1065, "1303748427.491", 3
    $P1064."set_static_lexpad_value"("$?PACKAGE", $P1065)
    .const 'Sub' $P1066 = "29_1303748428.565" 
    $P1067 = $P1066."get_lexinfo"()
    $P1067."finish_static_lexpad"()
    .const 'Sub' $P1068 = "29_1303748428.565" 
    $P1069 = $P1068."get_lexinfo"()
    nqp_get_sc_object $P1070, "1303748427.491", 3
    $P1069."set_static_lexpad_value"("$?CLASS", $P1070)
    .const 'Sub' $P1071 = "29_1303748428.565" 
    $P1072 = $P1071."get_lexinfo"()
    $P1072."finish_static_lexpad"()
    .const 'Sub' $P1073 = "10_1303748428.565" 
    $P1074 = $P1073."get_lexinfo"()
    nqp_get_sc_object $P1075, "1303748427.491", 4
    $P1074."set_static_lexpad_value"("str", $P1075)
    .const 'Sub' $P1076 = "10_1303748428.565" 
    $P1077 = $P1076."get_lexinfo"()
    $P1077."finish_static_lexpad"()
    .const 'Sub' $P1078 = "31_1303748428.565" 
    $P1079 = $P1078."get_lexinfo"()
    nqp_get_sc_object $P1080, "1303748427.491", 4
    $P1079."set_static_lexpad_value"("$?PACKAGE", $P1080)
    .const 'Sub' $P1081 = "31_1303748428.565" 
    $P1082 = $P1081."get_lexinfo"()
    $P1082."finish_static_lexpad"()
    .const 'Sub' $P1083 = "31_1303748428.565" 
    $P1084 = $P1083."get_lexinfo"()
    nqp_get_sc_object $P1085, "1303748427.491", 4
    $P1084."set_static_lexpad_value"("$?CLASS", $P1085)
    .const 'Sub' $P1086 = "31_1303748428.565" 
    $P1087 = $P1086."get_lexinfo"()
    $P1087."finish_static_lexpad"()
    .const 'Sub' $P1088 = "10_1303748428.565" 
    $P1089 = $P1088."get_lexinfo"()
    nqp_get_sc_object $P1090, "1303748427.491", 5
    $P1089."set_static_lexpad_value"("NQPMu", $P1090)
    .const 'Sub' $P1091 = "10_1303748428.565" 
    $P1092 = $P1091."get_lexinfo"()
    $P1092."finish_static_lexpad"()
    .const 'Sub' $P1093 = "33_1303748428.565" 
    $P1094 = $P1093."get_lexinfo"()
    nqp_get_sc_object $P1095, "1303748427.491", 5
    $P1094."set_static_lexpad_value"("$?PACKAGE", $P1095)
    .const 'Sub' $P1096 = "33_1303748428.565" 
    $P1097 = $P1096."get_lexinfo"()
    $P1097."finish_static_lexpad"()
    .const 'Sub' $P1098 = "33_1303748428.565" 
    $P1099 = $P1098."get_lexinfo"()
    nqp_get_sc_object $P1100, "1303748427.491", 5
    $P1099."set_static_lexpad_value"("$?CLASS", $P1100)
    .const 'Sub' $P1101 = "33_1303748428.565" 
    $P1102 = $P1101."get_lexinfo"()
    $P1102."finish_static_lexpad"()
    .const 'Sub' $P1103 = "10_1303748428.565" 
    $P1104 = $P1103."get_lexinfo"()
    nqp_get_sc_object $P1105, "1303748427.491", 6
    $P1104."set_static_lexpad_value"("NQPCapture", $P1105)
    .const 'Sub' $P1106 = "10_1303748428.565" 
    $P1107 = $P1106."get_lexinfo"()
    $P1107."finish_static_lexpad"()
    .const 'Sub' $P1108 = "47_1303748428.565" 
    $P1109 = $P1108."get_lexinfo"()
    nqp_get_sc_object $P1110, "1303748427.491", 6
    $P1109."set_static_lexpad_value"("$?PACKAGE", $P1110)
    .const 'Sub' $P1111 = "47_1303748428.565" 
    $P1112 = $P1111."get_lexinfo"()
    $P1112."finish_static_lexpad"()
    .const 'Sub' $P1113 = "47_1303748428.565" 
    $P1114 = $P1113."get_lexinfo"()
    nqp_get_sc_object $P1115, "1303748427.491", 6
    $P1114."set_static_lexpad_value"("$?CLASS", $P1115)
    .const 'Sub' $P1116 = "47_1303748428.565" 
    $P1117 = $P1116."get_lexinfo"()
    $P1117."finish_static_lexpad"()
    goto if_895_end
  if_895:
    nqp_dynop_setup 
    getinterp $P898
    get_class $P899, "LexPad"
    get_class $P900, "NQPLexPad"
    $P898."hll_map"($P899, $P900)
    nqp_create_sc $P901, "1303748427.491"
    .local pmc cur_sc
    set cur_sc, $P901
    nqp_get_sc_object $P902, "__6MODEL_CORE__", 0
    $P903 = $P902."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P903, cur_sc
    nqp_set_sc_object "1303748427.491", 0, $P903
    .const 'Sub' $P904 = "10_1303748428.565" 
    $P905 = $P904."get_lexinfo"()
    nqp_get_sc_object $P906, "1303748427.491", 0
    $P905."set_static_lexpad_value"("GLOBALish", $P906)
    .const 'Sub' $P907 = "10_1303748428.565" 
    $P908 = $P907."get_lexinfo"()
    $P908."finish_static_lexpad"()
    .const 'Sub' $P909 = "10_1303748428.565" 
    $P910 = $P909."get_lexinfo"()
    nqp_get_sc_object $P911, "1303748427.491", 0
    $P910."set_static_lexpad_value"("$?PACKAGE", $P911)
    .const 'Sub' $P912 = "10_1303748428.565" 
    $P913 = $P912."get_lexinfo"()
    $P913."finish_static_lexpad"()
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P914, "ModuleLoader"
    nqp_get_sc_object $P915, "1303748427.491", 0
    $P914."load_module"("nqpmo", $P915)
    nqp_get_sc_object $P916, "1303748421.926", 9
    $P917 = $P916."new_type"("EXPORTHOW" :named("name"))
    nqp_set_sc_for_object $P917, cur_sc
    nqp_set_sc_object "1303748427.491", 1, $P917
    .const 'Sub' $P918 = "10_1303748428.565" 
    $P919 = $P918."get_lexinfo"()
    nqp_get_sc_object $P920, "1303748427.491", 1
    $P919."set_static_lexpad_value"("EXPORTHOW", $P920)
    .const 'Sub' $P921 = "10_1303748428.565" 
    $P922 = $P921."get_lexinfo"()
    $P922."finish_static_lexpad"()
    .const 'Sub' $P923 = "25_1303748428.565" 
    $P924 = $P923."get_lexinfo"()
    nqp_get_sc_object $P925, "1303748427.491", 1
    $P924."set_static_lexpad_value"("$?PACKAGE", $P925)
    .const 'Sub' $P926 = "25_1303748428.565" 
    $P927 = $P926."get_lexinfo"()
    $P927."finish_static_lexpad"()
    .const 'Sub' $P928 = "25_1303748428.565" 
    $P929 = $P928."get_lexinfo"()
    nqp_get_sc_object $P930, "1303748427.491", 1
    $P929."set_static_lexpad_value"("$?CLASS", $P930)
    .const 'Sub' $P931 = "25_1303748428.565" 
    $P932 = $P931."get_lexinfo"()
    $P932."finish_static_lexpad"()
    nqp_get_sc_object $P933, "1303748421.926", 7
    $P934 = $P933."new_type"("int" :named("name"), "P6int" :named("repr"))
    nqp_set_sc_for_object $P934, cur_sc
    nqp_set_sc_object "1303748427.491", 2, $P934
    .const 'Sub' $P935 = "10_1303748428.565" 
    $P936 = $P935."get_lexinfo"()
    nqp_get_sc_object $P937, "1303748427.491", 2
    $P936."set_static_lexpad_value"("int", $P937)
    .const 'Sub' $P938 = "10_1303748428.565" 
    $P939 = $P938."get_lexinfo"()
    $P939."finish_static_lexpad"()
    .const 'Sub' $P940 = "27_1303748428.565" 
    $P941 = $P940."get_lexinfo"()
    nqp_get_sc_object $P942, "1303748427.491", 2
    $P941."set_static_lexpad_value"("$?PACKAGE", $P942)
    .const 'Sub' $P943 = "27_1303748428.565" 
    $P944 = $P943."get_lexinfo"()
    $P944."finish_static_lexpad"()
    .const 'Sub' $P945 = "27_1303748428.565" 
    $P946 = $P945."get_lexinfo"()
    nqp_get_sc_object $P947, "1303748427.491", 2
    $P946."set_static_lexpad_value"("$?CLASS", $P947)
    .const 'Sub' $P948 = "27_1303748428.565" 
    $P949 = $P948."get_lexinfo"()
    $P949."finish_static_lexpad"()
    nqp_get_sc_object $P950, "1303748421.926", 7
    $P951 = $P950."new_type"("num" :named("name"), "P6num" :named("repr"))
    nqp_set_sc_for_object $P951, cur_sc
    nqp_set_sc_object "1303748427.491", 3, $P951
    .const 'Sub' $P952 = "10_1303748428.565" 
    $P953 = $P952."get_lexinfo"()
    nqp_get_sc_object $P954, "1303748427.491", 3
    $P953."set_static_lexpad_value"("num", $P954)
    .const 'Sub' $P955 = "10_1303748428.565" 
    $P956 = $P955."get_lexinfo"()
    $P956."finish_static_lexpad"()
    .const 'Sub' $P957 = "29_1303748428.565" 
    $P958 = $P957."get_lexinfo"()
    nqp_get_sc_object $P959, "1303748427.491", 3
    $P958."set_static_lexpad_value"("$?PACKAGE", $P959)
    .const 'Sub' $P960 = "29_1303748428.565" 
    $P961 = $P960."get_lexinfo"()
    $P961."finish_static_lexpad"()
    .const 'Sub' $P962 = "29_1303748428.565" 
    $P963 = $P962."get_lexinfo"()
    nqp_get_sc_object $P964, "1303748427.491", 3
    $P963."set_static_lexpad_value"("$?CLASS", $P964)
    .const 'Sub' $P965 = "29_1303748428.565" 
    $P966 = $P965."get_lexinfo"()
    $P966."finish_static_lexpad"()
    nqp_get_sc_object $P967, "1303748421.926", 7
    $P968 = $P967."new_type"("str" :named("name"), "P6str" :named("repr"))
    nqp_set_sc_for_object $P968, cur_sc
    nqp_set_sc_object "1303748427.491", 4, $P968
    .const 'Sub' $P969 = "10_1303748428.565" 
    $P970 = $P969."get_lexinfo"()
    nqp_get_sc_object $P971, "1303748427.491", 4
    $P970."set_static_lexpad_value"("str", $P971)
    .const 'Sub' $P972 = "10_1303748428.565" 
    $P973 = $P972."get_lexinfo"()
    $P973."finish_static_lexpad"()
    .const 'Sub' $P974 = "31_1303748428.565" 
    $P975 = $P974."get_lexinfo"()
    nqp_get_sc_object $P976, "1303748427.491", 4
    $P975."set_static_lexpad_value"("$?PACKAGE", $P976)
    .const 'Sub' $P977 = "31_1303748428.565" 
    $P978 = $P977."get_lexinfo"()
    $P978."finish_static_lexpad"()
    .const 'Sub' $P979 = "31_1303748428.565" 
    $P980 = $P979."get_lexinfo"()
    nqp_get_sc_object $P981, "1303748427.491", 4
    $P980."set_static_lexpad_value"("$?CLASS", $P981)
    .const 'Sub' $P982 = "31_1303748428.565" 
    $P983 = $P982."get_lexinfo"()
    $P983."finish_static_lexpad"()
    nqp_get_sc_object $P984, "1303748421.926", 6
    $P985 = $P984."new_type"("NQPMu" :named("name"))
    nqp_set_sc_for_object $P985, cur_sc
    nqp_set_sc_object "1303748427.491", 5, $P985
    .const 'Sub' $P986 = "10_1303748428.565" 
    $P987 = $P986."get_lexinfo"()
    nqp_get_sc_object $P988, "1303748427.491", 5
    $P987."set_static_lexpad_value"("NQPMu", $P988)
    .const 'Sub' $P989 = "10_1303748428.565" 
    $P990 = $P989."get_lexinfo"()
    $P990."finish_static_lexpad"()
    .const 'Sub' $P991 = "33_1303748428.565" 
    $P992 = $P991."get_lexinfo"()
    nqp_get_sc_object $P993, "1303748427.491", 5
    $P992."set_static_lexpad_value"("$?PACKAGE", $P993)
    .const 'Sub' $P994 = "33_1303748428.565" 
    $P995 = $P994."get_lexinfo"()
    $P995."finish_static_lexpad"()
    .const 'Sub' $P996 = "33_1303748428.565" 
    $P997 = $P996."get_lexinfo"()
    nqp_get_sc_object $P998, "1303748427.491", 5
    $P997."set_static_lexpad_value"("$?CLASS", $P998)
    .const 'Sub' $P999 = "33_1303748428.565" 
    $P1000 = $P999."get_lexinfo"()
    $P1000."finish_static_lexpad"()
    nqp_get_sc_object $P1001, "1303748421.926", 6
    $P1002 = $P1001."new_type"("NQPCapture" :named("name"))
    nqp_set_sc_for_object $P1002, cur_sc
    nqp_set_sc_object "1303748427.491", 6, $P1002
    .const 'Sub' $P1003 = "10_1303748428.565" 
    $P1004 = $P1003."get_lexinfo"()
    nqp_get_sc_object $P1005, "1303748427.491", 6
    $P1004."set_static_lexpad_value"("NQPCapture", $P1005)
    .const 'Sub' $P1006 = "10_1303748428.565" 
    $P1007 = $P1006."get_lexinfo"()
    $P1007."finish_static_lexpad"()
    .const 'Sub' $P1008 = "47_1303748428.565" 
    $P1009 = $P1008."get_lexinfo"()
    nqp_get_sc_object $P1010, "1303748427.491", 6
    $P1009."set_static_lexpad_value"("$?PACKAGE", $P1010)
    .const 'Sub' $P1011 = "47_1303748428.565" 
    $P1012 = $P1011."get_lexinfo"()
    $P1012."finish_static_lexpad"()
    .const 'Sub' $P1013 = "47_1303748428.565" 
    $P1014 = $P1013."get_lexinfo"()
    nqp_get_sc_object $P1015, "1303748427.491", 6
    $P1014."set_static_lexpad_value"("$?CLASS", $P1015)
    .const 'Sub' $P1016 = "47_1303748428.565" 
    $P1017 = $P1016."get_lexinfo"()
    $P1017."finish_static_lexpad"()
  if_895_end:
    nqp_get_sc_object $P1118, "1303748427.491", 0
    set_hll_global "GLOBAL", $P1118
.end


.HLL "nqp"

.namespace []
.sub "open"  :subid("11_1303748428.565") :outer("10_1303748428.565")
    .param pmc param_22
    .param pmc param_23 :optional :named("r")
    .param int has_param_23 :opt_flag
    .param pmc param_25 :optional :named("w")
    .param int has_param_25 :opt_flag
    .param pmc param_27 :optional :named("a")
    .param int has_param_27 :opt_flag
    .param pmc param_29 :optional :named("bin")
    .param int has_param_29 :opt_flag
.annotate 'line', 155
    .lex "$filename", param_22
    if has_param_23, optparam_69
    new $P24, "Undef"
    set param_23, $P24
  optparam_69:
    .lex "$r", param_23
    if has_param_25, optparam_70
    new $P26, "Undef"
    set param_25, $P26
  optparam_70:
    .lex "$w", param_25
    if has_param_27, optparam_71
    new $P28, "Undef"
    set param_27, $P28
  optparam_71:
    .lex "$a", param_27
    if has_param_29, optparam_72
    new $P30, "Undef"
    set param_29, $P30
  optparam_72:
    .lex "$bin", param_29
.annotate 'line', 156
    new $P31, "Undef"
    .lex "$mode", $P31
.annotate 'line', 157
    new $P32, "Undef"
    .lex "$handle", $P32
.annotate 'line', 156
    find_lex $P35, "$w"
    unless_null $P35, vivify_73
    new $P35, "Undef"
  vivify_73:
    if $P35, if_34
    find_lex $P39, "$a"
    unless_null $P39, vivify_74
    new $P39, "Undef"
  vivify_74:
    if $P39, if_38
    new $P41, "String"
    assign $P41, "r"
    set $P37, $P41
    goto if_38_end
  if_38:
    new $P40, "String"
    assign $P40, "wa"
    set $P37, $P40
  if_38_end:
    set $P33, $P37
    goto if_34_end
  if_34:
    new $P36, "String"
    assign $P36, "w"
    set $P33, $P36
  if_34_end:
    store_lex "$mode", $P33
.annotate 'line', 157
    new $P42, "FileHandle"
    store_lex "$handle", $P42
.annotate 'line', 158
    find_lex $P43, "$handle"
    unless_null $P43, vivify_75
    new $P43, "Undef"
  vivify_75:
    find_lex $P44, "$filename"
    unless_null $P44, vivify_76
    new $P44, "Undef"
  vivify_76:
    find_lex $P45, "$mode"
    unless_null $P45, vivify_77
    new $P45, "Undef"
  vivify_77:
    $P43."open"($P44, $P45)
.annotate 'line', 159
    find_lex $P46, "$handle"
    unless_null $P46, vivify_78
    new $P46, "Undef"
  vivify_78:
    find_lex $P49, "$bin"
    unless_null $P49, vivify_79
    new $P49, "Undef"
  vivify_79:
    if $P49, if_48
    new $P51, "String"
    assign $P51, "utf8"
    set $P47, $P51
    goto if_48_end
  if_48:
    new $P50, "String"
    assign $P50, "binary"
    set $P47, $P50
  if_48_end:
    $P46."encoding"($P47)
    find_lex $P52, "$handle"
    unless_null $P52, vivify_80
    new $P52, "Undef"
  vivify_80:
.annotate 'line', 155
    .return ($P52)
.end


.HLL "nqp"

.namespace []
.sub "close"  :subid("12_1303748428.565") :outer("10_1303748428.565")
    .param pmc param_55
.annotate 'line', 167
    .lex "$handle", param_55
.annotate 'line', 168
    find_lex $P56, "$handle"
    unless_null $P56, vivify_81
    new $P56, "Undef"
  vivify_81:
    $P57 = $P56."close"()
.annotate 'line', 167
    .return ($P57)
.end


.HLL "nqp"

.namespace []
.sub "slurp"  :subid("13_1303748428.565") :outer("10_1303748428.565")
    .param pmc param_60
.annotate 'line', 175
    .lex "$filename", param_60
.annotate 'line', 176
    new $P61, "Undef"
    .lex "$handle", $P61
.annotate 'line', 177
    new $P62, "Undef"
    .lex "$contents", $P62
.annotate 'line', 176
    find_lex $P63, "$filename"
    unless_null $P63, vivify_82
    new $P63, "Undef"
  vivify_82:
    $P64 = "open"($P63, 1 :named("r"))
    store_lex "$handle", $P64
.annotate 'line', 177
    find_lex $P65, "$handle"
    unless_null $P65, vivify_83
    new $P65, "Undef"
  vivify_83:
    $P66 = $P65."readall"()
    store_lex "$contents", $P66
.annotate 'line', 178
    find_lex $P67, "$handle"
    unless_null $P67, vivify_84
    new $P67, "Undef"
  vivify_84:
    $P67."close"()
    find_lex $P68, "$contents"
    unless_null $P68, vivify_85
    new $P68, "Undef"
  vivify_85:
.annotate 'line', 175
    .return ($P68)
.end


.HLL "nqp"

.namespace []
.sub "spew"  :subid("14_1303748428.565") :outer("10_1303748428.565")
    .param pmc param_71
    .param pmc param_72
.annotate 'line', 187
    .lex "$filename", param_71
    .lex "$contents", param_72
.annotate 'line', 188
    new $P73, "Undef"
    .lex "$handle", $P73
    new $P74, "FileHandle"
    store_lex "$handle", $P74
.annotate 'line', 189
    find_lex $P75, "$handle"
    unless_null $P75, vivify_86
    new $P75, "Undef"
  vivify_86:
    find_lex $P76, "$filename"
    unless_null $P76, vivify_87
    new $P76, "Undef"
  vivify_87:
    $P75."open"($P76, "w")
.annotate 'line', 190
    find_lex $P77, "$handle"
    unless_null $P77, vivify_88
    new $P77, "Undef"
  vivify_88:
    find_lex $P78, "$contents"
    unless_null $P78, vivify_89
    new $P78, "Undef"
  vivify_89:
    $P77."print"($P78)
.annotate 'line', 191
    find_lex $P79, "$handle"
    unless_null $P79, vivify_90
    new $P79, "Undef"
  vivify_90:
    $P80 = $P79."close"()
.annotate 'line', 187
    .return ($P80)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "print"  :subid("15_1303748428.565") :outer("10_1303748428.565")
    .param pmc param_83 :slurpy
.annotate 'line', 194
    .const 'Sub' $P89 = "16_1303748428.565" 
    capture_lex $P89
    .lex "@args", param_83
.annotate 'line', 195
    find_lex $P85, "@args"
    unless_null $P85, vivify_91
    $P85 = root_new ['parrot';'ResizablePMCArray']
  vivify_91:
    defined $I86, $P85
    unless $I86, for_undef_92
    iter $P84, $P85
    new $P93, 'ExceptionHandler'
    set_label $P93, loop92_handler
    $P93."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P93
  loop92_test:
    unless $P84, loop92_done
    shift $P87, $P84
  loop92_redo:
    .const 'Sub' $P89 = "16_1303748428.565" 
    capture_lex $P89
    $P89($P87)
  loop92_next:
    goto loop92_test
  loop92_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P94, exception, 'type'
    eq $P94, .CONTROL_LOOP_NEXT, loop92_next
    eq $P94, .CONTROL_LOOP_REDO, loop92_redo
  loop92_done:
    pop_eh 
  for_undef_92:
.annotate 'line', 194
    .return (1)
.end


.HLL "nqp"

.namespace []
.sub "_block88"  :anon :subid("16_1303748428.565") :outer("15_1303748428.565")
    .param pmc param_90
.annotate 'line', 195
    .lex "$_", param_90
.annotate 'line', 196
    find_lex $P91, "$_"
    unless_null $P91, vivify_93
    new $P91, "Undef"
  vivify_93:
    print $P91
.annotate 'line', 195
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "say"  :subid("17_1303748428.565") :outer("10_1303748428.565")
    .param pmc param_97 :slurpy
.annotate 'line', 201
    .lex "@args", param_97
.annotate 'line', 202
    find_lex $P98, "@args"
    unless_null $P98, vivify_94
    $P98 = root_new ['parrot';'ResizablePMCArray']
  vivify_94:
    $P99 = "print"($P98 :flat, "\n")
.annotate 'line', 201
    .return ($P99)
.end


.HLL "nqp"

.namespace []
.sub "match"  :subid("18_1303748428.565") :outer("10_1303748428.565")
    .param pmc param_102
    .param pmc param_103
    .param pmc param_104 :optional :named("global")
    .param int has_param_104 :opt_flag
.annotate 'line', 219
    .const 'Sub' $P114 = "19_1303748428.565" 
    capture_lex $P114
    .lex "$text", param_102
    .lex "$regex", param_103
    if has_param_104, optparam_95
    new $P105, "Undef"
    set param_104, $P105
  optparam_95:
    .lex "$global", param_104
.annotate 'line', 220
    new $P106, "Undef"
    .lex "$match", $P106
    find_lex $P107, "$regex"
    unless_null $P107, vivify_96
    new $P107, "Undef"
  vivify_96:
    find_lex $P108, "$text"
    unless_null $P108, vivify_97
    new $P108, "Undef"
  vivify_97:
    $P109 = $P107."ACCEPTS"($P108)
    store_lex "$match", $P109
.annotate 'line', 221
    find_lex $P112, "$global"
    unless_null $P112, vivify_98
    new $P112, "Undef"
  vivify_98:
    if $P112, if_111
.annotate 'line', 229
    find_lex $P132, "$match"
    unless_null $P132, vivify_99
    new $P132, "Undef"
  vivify_99:
    set $P110, $P132
.annotate 'line', 221
    goto if_111_end
  if_111:
    .const 'Sub' $P114 = "19_1303748428.565" 
    capture_lex $P114
    $P131 = $P114()
    set $P110, $P131
  if_111_end:
.annotate 'line', 219
    .return ($P110)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "_block113"  :anon :subid("19_1303748428.565") :outer("18_1303748428.565")
.annotate 'line', 222
    $P115 = root_new ['parrot';'ResizablePMCArray']
    .lex "@matches", $P115
.annotate 'line', 221
    find_lex $P116, "@matches"
    unless_null $P116, vivify_100
    $P116 = root_new ['parrot';'ResizablePMCArray']
  vivify_100:
.annotate 'line', 223
    new $P128, 'ExceptionHandler'
    set_label $P128, loop127_handler
    $P128."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P128
  loop127_test:
    find_lex $P117, "$match"
    unless_null $P117, vivify_101
    new $P117, "Undef"
  vivify_101:
    unless $P117, loop127_done
  loop127_redo:
.annotate 'line', 224
    find_lex $P118, "@matches"
    unless_null $P118, vivify_102
    $P118 = root_new ['parrot';'ResizablePMCArray']
  vivify_102:
    find_lex $P119, "$match"
    unless_null $P119, vivify_103
    new $P119, "Undef"
  vivify_103:
    $P118."push"($P119)
.annotate 'line', 225
    find_lex $P120, "$match"
    unless_null $P120, vivify_104
    new $P120, "Undef"
  vivify_104:
    $P121 = $P120."CURSOR"()
    find_lex $P122, "$text"
    unless_null $P122, vivify_105
    new $P122, "Undef"
  vivify_105:
    find_lex $P123, "$regex"
    unless_null $P123, vivify_106
    new $P123, "Undef"
  vivify_106:
    find_lex $P124, "$match"
    unless_null $P124, vivify_107
    new $P124, "Undef"
  vivify_107:
    $P125 = $P124."to"()
    $P126 = $P121."parse"($P122, $P123 :named("rule"), $P125 :named("c"))
    store_lex "$match", $P126
  loop127_next:
.annotate 'line', 223
    goto loop127_test
  loop127_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P129, exception, 'type'
    eq $P129, .CONTROL_LOOP_NEXT, loop127_next
    eq $P129, .CONTROL_LOOP_REDO, loop127_redo
  loop127_done:
    pop_eh 
    find_lex $P130, "@matches"
    unless_null $P130, vivify_108
    $P130 = root_new ['parrot';'ResizablePMCArray']
  vivify_108:
.annotate 'line', 221
    .return ($P130)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "subst"  :subid("20_1303748428.565") :outer("10_1303748428.565")
    .param pmc param_135
    .param pmc param_136
    .param pmc param_137
    .param pmc param_138 :optional :named("global")
    .param int has_param_138 :opt_flag
.annotate 'line', 241
    .const 'Sub' $P165 = "21_1303748428.565" 
    capture_lex $P165
    .lex "$text", param_135
    .lex "$regex", param_136
    .lex "$repl", param_137
    if has_param_138, optparam_109
    new $P139, "Undef"
    set param_138, $P139
  optparam_109:
    .lex "$global", param_138
.annotate 'line', 242
    $P140 = root_new ['parrot';'ResizablePMCArray']
    .lex "@matches", $P140
.annotate 'line', 244
    new $P141, "Undef"
    .lex "$is_code", $P141
.annotate 'line', 245
    new $P142, "Undef"
    .lex "$offset", $P142
.annotate 'line', 246
    new $P143, "Undef"
    .lex "$result", $P143
.annotate 'line', 257
    new $P144, "Undef"
    .lex "$chars", $P144
.annotate 'line', 242
    find_lex $P147, "$global"
    unless_null $P147, vivify_110
    new $P147, "Undef"
  vivify_110:
    if $P147, if_146
.annotate 'line', 243
    find_lex $P151, "$regex"
    unless_null $P151, vivify_111
    new $P151, "Undef"
  vivify_111:
    find_lex $P152, "$text"
    unless_null $P152, vivify_112
    new $P152, "Undef"
  vivify_112:
    $P153 = $P151."ACCEPTS"($P152)
    new $P154, "ResizablePMCArray"
    push $P154, $P153
.annotate 'line', 242
    set $P145, $P154
    goto if_146_end
  if_146:
    find_lex $P148, "$text"
    unless_null $P148, vivify_113
    new $P148, "Undef"
  vivify_113:
    find_lex $P149, "$regex"
    unless_null $P149, vivify_114
    new $P149, "Undef"
  vivify_114:
    $P150 = "match"($P148, $P149, 1 :named("global"))
    set $P145, $P150
  if_146_end:
    store_lex "@matches", $P145
.annotate 'line', 244
    find_lex $P155, "$repl"
    unless_null $P155, vivify_115
    new $P155, "Undef"
  vivify_115:
    isa $I156, $P155, "Sub"
    new $P157, 'Integer'
    set $P157, $I156
    store_lex "$is_code", $P157
.annotate 'line', 245
    new $P158, "Integer"
    assign $P158, 0
    store_lex "$offset", $P158
.annotate 'line', 246
    new $P159, "StringBuilder"
    store_lex "$result", $P159
.annotate 'line', 248
    find_lex $P161, "@matches"
    unless_null $P161, vivify_116
    $P161 = root_new ['parrot';'ResizablePMCArray']
  vivify_116:
    defined $I162, $P161
    unless $I162, for_undef_117
    iter $P160, $P161
    new $P198, 'ExceptionHandler'
    set_label $P198, loop197_handler
    $P198."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P198
  loop197_test:
    unless $P160, loop197_done
    shift $P163, $P160
  loop197_redo:
    .const 'Sub' $P165 = "21_1303748428.565" 
    capture_lex $P165
    $P165($P163)
  loop197_next:
    goto loop197_test
  loop197_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P199, exception, 'type'
    eq $P199, .CONTROL_LOOP_NEXT, loop197_next
    eq $P199, .CONTROL_LOOP_REDO, loop197_redo
  loop197_done:
    pop_eh 
  for_undef_117:
.annotate 'line', 257
    find_lex $P200, "$text"
    unless_null $P200, vivify_132
    new $P200, "Undef"
  vivify_132:
    set $S201, $P200
    length $I202, $S201
    new $P203, 'Integer'
    set $P203, $I202
    store_lex "$chars", $P203
.annotate 'line', 259
    find_lex $P205, "$chars"
    unless_null $P205, vivify_133
    new $P205, "Undef"
  vivify_133:
    set $N206, $P205
    find_lex $P207, "$offset"
    unless_null $P207, vivify_134
    new $P207, "Undef"
  vivify_134:
    set $N208, $P207
    isgt $I209, $N206, $N208
    unless $I209, if_204_end
.annotate 'line', 258
    find_lex $P210, "$result"
    unless_null $P210, vivify_135
    new $P210, "Undef"
  vivify_135:
    find_lex $P211, "$text"
    unless_null $P211, vivify_136
    new $P211, "Undef"
  vivify_136:
    set $S212, $P211
    find_lex $P213, "$offset"
    unless_null $P213, vivify_137
    new $P213, "Undef"
  vivify_137:
    set $I214, $P213
    find_lex $P215, "$chars"
    unless_null $P215, vivify_138
    new $P215, "Undef"
  vivify_138:
    set $I216, $P215
    substr $S217, $S212, $I214, $I216
    push $P210, $S217
  if_204_end:
.annotate 'line', 261
    find_lex $P218, "$result"
    unless_null $P218, vivify_139
    new $P218, "Undef"
  vivify_139:
    set $S219, $P218
.annotate 'line', 241
    .return ($S219)
.end


.HLL "nqp"

.namespace []
.sub "_block164"  :anon :subid("21_1303748428.565") :outer("20_1303748428.565")
    .param pmc param_166
.annotate 'line', 248
    .lex "$match", param_166
.annotate 'line', 249
    find_lex $P169, "$match"
    unless_null $P169, vivify_118
    new $P169, "Undef"
  vivify_118:
    if $P169, if_168
    set $P167, $P169
    goto if_168_end
  if_168:
.annotate 'line', 251
    find_lex $P171, "$match"
    unless_null $P171, vivify_119
    new $P171, "Undef"
  vivify_119:
    $N172 = $P171."from"()
    find_lex $P173, "$offset"
    unless_null $P173, vivify_120
    new $P173, "Undef"
  vivify_120:
    set $N174, $P173
    isgt $I175, $N172, $N174
    unless $I175, if_170_end
.annotate 'line', 250
    find_lex $P176, "$result"
    unless_null $P176, vivify_121
    new $P176, "Undef"
  vivify_121:
    find_lex $P177, "$text"
    unless_null $P177, vivify_122
    new $P177, "Undef"
  vivify_122:
    set $S178, $P177
    find_lex $P179, "$offset"
    unless_null $P179, vivify_123
    new $P179, "Undef"
  vivify_123:
    set $I180, $P179
    find_lex $P181, "$match"
    unless_null $P181, vivify_124
    new $P181, "Undef"
  vivify_124:
    $P182 = $P181."from"()
    find_lex $P183, "$offset"
    unless_null $P183, vivify_125
    new $P183, "Undef"
  vivify_125:
    sub $P184, $P182, $P183
    set $I185, $P184
    substr $S186, $S178, $I180, $I185
    push $P176, $S186
  if_170_end:
.annotate 'line', 252
    find_lex $P187, "$result"
    unless_null $P187, vivify_126
    new $P187, "Undef"
  vivify_126:
    find_lex $P190, "$is_code"
    unless_null $P190, vivify_127
    new $P190, "Undef"
  vivify_127:
    if $P190, if_189
    find_lex $P194, "$repl"
    unless_null $P194, vivify_128
    new $P194, "Undef"
  vivify_128:
    set $P188, $P194
    goto if_189_end
  if_189:
    find_lex $P191, "$repl"
    unless_null $P191, vivify_129
    new $P191, "Undef"
  vivify_129:
    find_lex $P192, "$match"
    unless_null $P192, vivify_130
    new $P192, "Undef"
  vivify_130:
    $P193 = $P191($P192)
    set $P188, $P193
  if_189_end:
    push $P187, $P188
.annotate 'line', 253
    find_lex $P195, "$match"
    unless_null $P195, vivify_131
    new $P195, "Undef"
  vivify_131:
    $P196 = $P195."to"()
    store_lex "$offset", $P196
.annotate 'line', 249
    set $P167, $P196
  if_168_end:
.annotate 'line', 248
    .return ($P167)
.end


.HLL "nqp"

.namespace []
.sub "plan"  :subid("22_1303748428.565") :outer("10_1303748428.565")
    .param pmc param_223
.annotate 'line', 269
    .lex "$quantity", param_223
.annotate 'line', 270
    new $P224, 'String'
    set $P224, "1.."
    find_lex $P225, "$quantity"
    unless_null $P225, vivify_140
    new $P225, "Undef"
  vivify_140:
    concat $P226, $P224, $P225
    $P227 = "say"($P226)
.annotate 'line', 269
    .return ($P227)
.end


.HLL "nqp"

.namespace []
.sub "ok"  :subid("23_1303748428.565") :outer("10_1303748428.565")
    .param pmc param_230
    .param pmc param_231 :optional
    .param int has_param_231 :opt_flag
.annotate 'line', 273
    .lex "$condition", param_230
    if has_param_231, optparam_141
    new $P232, "Undef"
    set param_231, $P232
  optparam_141:
    .lex "$desc", param_231
.annotate 'line', 274
    find_lex $P233, "$test_counter"
    unless_null $P233, vivify_142
    new $P233, "Undef"
  vivify_142:
    add $P234, $P233, 1
    store_lex "$test_counter", $P234
.annotate 'line', 276
    find_lex $P236, "$condition"
    unless_null $P236, vivify_143
    new $P236, "Undef"
  vivify_143:
    if $P236, unless_235_end
.annotate 'line', 277
    "print"("not ")
  unless_235_end:
.annotate 'line', 279
    new $P237, 'String'
    set $P237, "ok "
    find_lex $P238, "$test_counter"
    unless_null $P238, vivify_144
    new $P238, "Undef"
  vivify_144:
    concat $P239, $P237, $P238
    "print"($P239)
.annotate 'line', 280
    find_lex $P241, "$desc"
    unless_null $P241, vivify_145
    new $P241, "Undef"
  vivify_145:
    unless $P241, if_240_end
.annotate 'line', 281
    new $P242, 'String'
    set $P242, " - "
    find_lex $P243, "$desc"
    unless_null $P243, vivify_146
    new $P243, "Undef"
  vivify_146:
    concat $P244, $P242, $P243
    "print"($P244)
  if_240_end:
.annotate 'line', 283
    "print"("\n")
.annotate 'line', 285
    find_lex $P247, "$condition"
    unless_null $P247, vivify_147
    new $P247, "Undef"
  vivify_147:
    if $P247, if_246
    new $P249, "Integer"
    assign $P249, 0
    set $P245, $P249
    goto if_246_end
  if_246:
    new $P248, "Integer"
    assign $P248, 1
    set $P245, $P248
  if_246_end:
.annotate 'line', 273
    .return ($P245)
.end


.HLL "nqp"

.namespace []
.sub "skip"  :subid("24_1303748428.565") :outer("10_1303748428.565")
    .param pmc param_252
.annotate 'line', 288
    .lex "$desc", param_252
.annotate 'line', 289
    find_lex $P253, "$test_counter"
    unless_null $P253, vivify_148
    new $P253, "Undef"
  vivify_148:
    add $P254, $P253, 1
    store_lex "$test_counter", $P254
.annotate 'line', 290
    new $P255, 'String'
    set $P255, "ok "
    find_lex $P256, "$test_counter"
    unless_null $P256, vivify_149
    new $P256, "Undef"
  vivify_149:
    concat $P257, $P255, $P256
    concat $P258, $P257, " # SKIP "
    find_lex $P259, "$desc"
    unless_null $P259, vivify_150
    new $P259, "Undef"
  vivify_150:
    concat $P260, $P258, $P259
    concat $P261, $P260, "\n"
    $P262 = "say"($P261)
.annotate 'line', 288
    .return ($P262)
.end


.HLL "nqp"

.namespace []
.sub "_block264"  :anon :subid("25_1303748428.565") :outer("10_1303748428.565")
.annotate 'line', 14
    .const 'Sub' $P304 = "26_1303748428.565" 
    capture_lex $P304
    .lex "$?PACKAGE", $P266
    .lex "$?CLASS", $P267
.annotate 'line', 15
    find_lex $P268, "$?PACKAGE"
    get_who $P269, $P268
    set $P272, $P269["NQPModuleHOW"]
    unless_null $P272, vivify_152
    get_hll_global $P270, "GLOBAL"
    get_who $P271, $P270
    set $P272, $P271["NQPModuleHOW"]
  vivify_152:
    find_lex $P273, "$?PACKAGE"
    unless_null $P273, vivify_153
    new $P273, "Undef"
    store_lex "$?PACKAGE", $P273
  vivify_153:
    get_who $P274, $P273
    set $P274["module"], $P272
.annotate 'line', 16
    find_lex $P275, "$?PACKAGE"
    get_who $P276, $P275
    set $P279, $P276["NQPClassHOW"]
    unless_null $P279, vivify_154
    get_hll_global $P277, "GLOBAL"
    get_who $P278, $P277
    set $P279, $P278["NQPClassHOW"]
  vivify_154:
    find_lex $P280, "$?PACKAGE"
    unless_null $P280, vivify_155
    new $P280, "Undef"
    store_lex "$?PACKAGE", $P280
  vivify_155:
    get_who $P281, $P280
    set $P281["class"], $P279
.annotate 'line', 17
    find_lex $P282, "$?PACKAGE"
    get_who $P283, $P282
    set $P286, $P283["NQPClassHOW"]
    unless_null $P286, vivify_156
    get_hll_global $P284, "GLOBAL"
    get_who $P285, $P284
    set $P286, $P285["NQPClassHOW"]
  vivify_156:
    find_lex $P287, "$?PACKAGE"
    unless_null $P287, vivify_157
    new $P287, "Undef"
    store_lex "$?PACKAGE", $P287
  vivify_157:
    get_who $P288, $P287
    set $P288["grammar"], $P286
.annotate 'line', 18
    find_lex $P289, "$?PACKAGE"
    get_who $P290, $P289
    set $P293, $P290["NQPParametricRoleHOW"]
    unless_null $P293, vivify_158
    get_hll_global $P291, "GLOBAL"
    get_who $P292, $P291
    set $P293, $P292["NQPParametricRoleHOW"]
  vivify_158:
    find_lex $P294, "$?PACKAGE"
    unless_null $P294, vivify_159
    new $P294, "Undef"
    store_lex "$?PACKAGE", $P294
  vivify_159:
    get_who $P295, $P294
    set $P295["role"], $P293
.annotate 'line', 19
    find_lex $P296, "$?PACKAGE"
    get_who $P297, $P296
    set $P300, $P297["NQPNativeHOW"]
    unless_null $P300, vivify_160
    get_hll_global $P298, "GLOBAL"
    get_who $P299, $P298
    set $P300, $P299["NQPNativeHOW"]
  vivify_160:
    find_lex $P301, "$?PACKAGE"
    unless_null $P301, vivify_161
    new $P301, "Undef"
    store_lex "$?PACKAGE", $P301
  vivify_161:
    get_who $P302, $P301
    set $P302["native"], $P300
.annotate 'line', 14
    .return ($P300)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post151") :outer("25_1303748428.565")
.annotate 'line', 14
    .const 'Sub' $P265 = "25_1303748428.565" 
    .local pmc block
    set block, $P265
    .const 'Sub' $P304 = "26_1303748428.565" 
    capture_lex $P304
    $P304()
.end


.HLL "nqp"

.namespace []
.sub "_block303"  :anon :subid("26_1303748428.565") :outer("25_1303748428.565")
.annotate 'line', 14
    nqp_get_sc_object $P305, "1303748427.491", 1
    .local pmc type_obj
    set type_obj, $P305
    get_how $P306, type_obj
    $P307 = $P306."compose"(type_obj)
    .return ($P307)
.end


.HLL "nqp"

.namespace []
.sub "_block308"  :anon :subid("27_1303748428.565") :outer("10_1303748428.565")
.annotate 'line', 22
    .const 'Sub' $P313 = "28_1303748428.565" 
    capture_lex $P313
    .lex "$?PACKAGE", $P310
    .lex "$?CLASS", $P311
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post162") :outer("27_1303748428.565")
.annotate 'line', 22
    .const 'Sub' $P309 = "27_1303748428.565" 
    .local pmc block
    set block, $P309
    .const 'Sub' $P313 = "28_1303748428.565" 
    capture_lex $P313
    $P313()
.end


.HLL "nqp"

.namespace []
.sub "_block312"  :anon :subid("28_1303748428.565") :outer("27_1303748428.565")
.annotate 'line', 22
    nqp_get_sc_object $P314, "1303748427.491", 2
    .local pmc type_obj
    set type_obj, $P314
    get_how $P315, type_obj
    $P316 = $P315."compose"(type_obj)
    .return ($P316)
.end


.HLL "nqp"

.namespace []
.sub "_block317"  :anon :subid("29_1303748428.565") :outer("10_1303748428.565")
.annotate 'line', 24
    .const 'Sub' $P322 = "30_1303748428.565" 
    capture_lex $P322
    .lex "$?PACKAGE", $P319
    .lex "$?CLASS", $P320
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post163") :outer("29_1303748428.565")
.annotate 'line', 24
    .const 'Sub' $P318 = "29_1303748428.565" 
    .local pmc block
    set block, $P318
    .const 'Sub' $P322 = "30_1303748428.565" 
    capture_lex $P322
    $P322()
.end


.HLL "nqp"

.namespace []
.sub "_block321"  :anon :subid("30_1303748428.565") :outer("29_1303748428.565")
.annotate 'line', 24
    nqp_get_sc_object $P323, "1303748427.491", 3
    .local pmc type_obj
    set type_obj, $P323
    get_how $P324, type_obj
    $P325 = $P324."compose"(type_obj)
    .return ($P325)
.end


.HLL "nqp"

.namespace []
.sub "_block326"  :anon :subid("31_1303748428.565") :outer("10_1303748428.565")
.annotate 'line', 26
    .const 'Sub' $P331 = "32_1303748428.565" 
    capture_lex $P331
    .lex "$?PACKAGE", $P328
    .lex "$?CLASS", $P329
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post164") :outer("31_1303748428.565")
.annotate 'line', 26
    .const 'Sub' $P327 = "31_1303748428.565" 
    .local pmc block
    set block, $P327
    .const 'Sub' $P331 = "32_1303748428.565" 
    capture_lex $P331
    $P331()
.end


.HLL "nqp"

.namespace []
.sub "_block330"  :anon :subid("32_1303748428.565") :outer("31_1303748428.565")
.annotate 'line', 26
    nqp_get_sc_object $P332, "1303748427.491", 4
    .local pmc type_obj
    set type_obj, $P332
    get_how $P333, type_obj
    $P334 = $P333."compose"(type_obj)
    .return ($P334)
.end


.HLL "nqp"

.namespace []
.sub "_block335"  :anon :subid("33_1303748428.565") :outer("10_1303748428.565")
.annotate 'line', 29
    .const 'Sub' $P466 = "46_1303748428.565" 
    capture_lex $P466
    .const 'Sub' $P456 = "45_1303748428.565" 
    capture_lex $P456
    .const 'Sub' $P440 = "44_1303748428.565" 
    capture_lex $P440
    .const 'Sub' $P436 = "43_1303748428.565" 
    capture_lex $P436
    .const 'Sub' $P421 = "42_1303748428.565" 
    capture_lex $P421
    .const 'Sub' $P418 = "41_1303748428.565" 
    capture_lex $P418
    .const 'Sub' $P412 = "40_1303748428.565" 
    capture_lex $P412
    .const 'Sub' $P374 = "38_1303748428.565" 
    capture_lex $P374
    .const 'Sub' $P353 = "36_1303748428.565" 
    capture_lex $P353
    .const 'Sub' $P343 = "35_1303748428.565" 
    capture_lex $P343
    .const 'Sub' $P339 = "34_1303748428.565" 
    capture_lex $P339
    .lex "$?PACKAGE", $P337
    .lex "$?CLASS", $P338
.annotate 'line', 70
    .const 'Sub' $P456 = "45_1303748428.565" 
    newclosure $P464, $P456
.annotate 'line', 29
    .return ($P464)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post165") :outer("33_1303748428.565")
.annotate 'line', 29
    .const 'Sub' $P336 = "33_1303748428.565" 
    .local pmc block
    set block, $P336
    .const 'Sub' $P466 = "46_1303748428.565" 
    capture_lex $P466
    $P466()
.end


.HLL "nqp"

.namespace []
.sub "_block465"  :anon :subid("46_1303748428.565") :outer("33_1303748428.565")
.annotate 'line', 29
    .const 'Sub' $P482 = "41_1303748428.565" 
    capture_lex $P482
    nqp_get_sc_object $P467, "1303748427.491", 5
    .local pmc type_obj
    set type_obj, $P467
    get_how $P468, type_obj
    .const 'Sub' $P469 = "34_1303748428.565" 
    $P468."add_method"(type_obj, "CREATE", $P469)
    get_how $P470, type_obj
    .const 'Sub' $P471 = "35_1303748428.565" 
    $P470."add_method"(type_obj, "bless", $P471)
    get_how $P472, type_obj
    .const 'Sub' $P473 = "36_1303748428.565" 
    $P472."add_method"(type_obj, "BUILDALL", $P473)
    get_how $P474, type_obj
    .const 'Sub' $P475 = "38_1303748428.565" 
    $P474."add_method"(type_obj, "BUILD_MAGIC", $P475)
    get_how $P476, type_obj
    .const 'Sub' $P477 = "40_1303748428.565" 
    $P476."add_method"(type_obj, "new", $P477)
    get_how $P478, type_obj
    .const 'Sub' $P479 = "41_1303748428.565" 
    new $P480, "ResizablePMCArray"
    set_dispatchees $P479, $P480
    $P478."add_method"(type_obj, "Str", $P479)
    get_how $P481, type_obj
    .const 'Sub' $P482 = "41_1303748428.565" 
    newclosure $P485, $P482
    $P481."add_parrot_vtable_mapping"(type_obj, "get_string", $P485)
    get_how $P486, type_obj
    .const 'Sub' $P487 = "42_1303748428.565" 
    $P486."add_multi_method"(type_obj, "Str", $P487)
    get_how $P488, type_obj
    .const 'Sub' $P489 = "43_1303748428.565" 
    new $P490, "ResizablePMCArray"
    set_dispatchees $P489, $P490
    $P488."add_method"(type_obj, "ACCEPTS", $P489)
    get_how $P491, type_obj
    .const 'Sub' $P492 = "44_1303748428.565" 
    $P491."add_multi_method"(type_obj, "ACCEPTS", $P492)
    get_how $P493, type_obj
    .const 'Sub' $P494 = "45_1303748428.565" 
    $P493."add_method"(type_obj, "isa", $P494)
    get_how $P495, type_obj
    nqp_get_sc_object $P496, "1303748427.491", 5
    $P495."set_default_parent"(type_obj, $P496)
    get_how $P497, type_obj
    $P498 = $P497."compose"(type_obj)
    .return ($P498)
.end


.HLL "nqp"

.namespace []
.sub "Str" :instanceof("DispatcherSub") :subid("41_1303748428.565") :outer("46_1303748428.565")
    .param pmc param_483
.annotate 'line', 29
    .lex "self", param_483
    multi_dispatch_over_lexical_candidates $P484
    .return ($P484)
.end


.HLL "nqp"

.namespace []
.sub "CREATE"  :subid("34_1303748428.565") :outer("33_1303748428.565")
    .param pmc param_340
.annotate 'line', 30
    .lex "self", param_340
.annotate 'line', 31
    find_lex $P341, "self"
    repr_instance_of $P342, $P341
.annotate 'line', 30
    .return ($P342)
.end


.HLL "nqp"

.namespace []
.sub "bless"  :subid("35_1303748428.565") :outer("33_1303748428.565")
    .param pmc param_344
    .param pmc param_346 :slurpy :named
.annotate 'line', 34
    .lex "$self", param_344
    find_lex $P345, "$self"
    .lex "self", $P345
    .lex "%attributes", param_346
.annotate 'line', 35
    new $P347, "Undef"
    .lex "$instance", $P347
    find_lex $P348, "self"
    $P349 = $P348."CREATE"()
    store_lex "$instance", $P349
.annotate 'line', 36
    find_lex $P350, "$instance"
    unless_null $P350, vivify_166
    new $P350, "Undef"
  vivify_166:
    find_lex $P351, "%attributes"
    unless_null $P351, vivify_167
    $P351 = root_new ['parrot';'Hash']
  vivify_167:
    $P350."BUILDALL"($P351 :flat)
    find_lex $P352, "$instance"
    unless_null $P352, vivify_168
    new $P352, "Undef"
  vivify_168:
.annotate 'line', 34
    .return ($P352)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "BUILDALL"  :subid("36_1303748428.565") :outer("33_1303748428.565")
    .param pmc param_354
    .param pmc param_356 :slurpy :named
.annotate 'line', 40
    .const 'Sub' $P365 = "37_1303748428.565" 
    capture_lex $P365
    .lex "$self", param_354
    find_lex $P355, "$self"
    .lex "self", $P355
    .lex "%attributes", param_356
.annotate 'line', 41
    find_lex $P358, "$self"
    unless_null $P358, vivify_169
    new $P358, "Undef"
  vivify_169:
    get_how $P359, $P358
    find_lex $P360, "$self"
    unless_null $P360, vivify_170
    new $P360, "Undef"
  vivify_170:
    $P361 = $P359."parents"($P360)
    defined $I362, $P361
    unless $I362, for_undef_171
    iter $P357, $P361
    new $P372, 'ExceptionHandler'
    set_label $P372, loop371_handler
    $P372."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P372
  loop371_test:
    unless $P357, loop371_done
    shift $P363, $P357
  loop371_redo:
    .const 'Sub' $P365 = "37_1303748428.565" 
    capture_lex $P365
    $P365($P363)
  loop371_next:
    goto loop371_test
  loop371_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P373, exception, 'type'
    eq $P373, .CONTROL_LOOP_NEXT, loop371_next
    eq $P373, .CONTROL_LOOP_REDO, loop371_redo
  loop371_done:
    pop_eh 
  for_undef_171:
.annotate 'line', 40
    .return ($P357)
.end


.HLL "nqp"

.namespace []
.sub "_block364"  :anon :subid("37_1303748428.565") :outer("36_1303748428.565")
    .param pmc param_366
.annotate 'line', 41
    .lex "$class", param_366
.annotate 'line', 42
    find_lex $P367, "$self"
    unless_null $P367, vivify_172
    new $P367, "Undef"
  vivify_172:
    find_lex $P368, "$class"
    unless_null $P368, vivify_173
    new $P368, "Undef"
  vivify_173:
    find_lex $P369, "%attributes"
    unless_null $P369, vivify_174
    $P369 = root_new ['parrot';'Hash']
  vivify_174:
    $P370 = $P367."BUILD_MAGIC"($P368, $P369 :flat)
.annotate 'line', 41
    .return ($P370)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "BUILD_MAGIC"  :subid("38_1303748428.565") :outer("33_1303748428.565")
    .param pmc param_375
    .param pmc param_377
    .param pmc param_378 :slurpy :named
.annotate 'line', 46
    .const 'Sub' $P387 = "39_1303748428.565" 
    capture_lex $P387
    .lex "$self", param_375
    find_lex $P376, "$self"
    .lex "self", $P376
    .lex "$type", param_377
    .lex "%attributes", param_378
.annotate 'line', 47
    find_lex $P380, "$type"
    unless_null $P380, vivify_175
    new $P380, "Undef"
  vivify_175:
    get_how $P381, $P380
    find_lex $P382, "$type"
    unless_null $P382, vivify_176
    new $P382, "Undef"
  vivify_176:
    $P383 = $P381."attributes"($P382, 1 :named("local"))
    defined $I384, $P383
    unless $I384, for_undef_177
    iter $P379, $P383
    new $P410, 'ExceptionHandler'
    set_label $P410, loop409_handler
    $P410."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P410
  loop409_test:
    unless $P379, loop409_done
    shift $P385, $P379
  loop409_redo:
    .const 'Sub' $P387 = "39_1303748428.565" 
    capture_lex $P387
    $P387($P385)
  loop409_next:
    goto loop409_test
  loop409_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P411, exception, 'type'
    eq $P411, .CONTROL_LOOP_NEXT, loop409_next
    eq $P411, .CONTROL_LOOP_REDO, loop409_redo
  loop409_done:
    pop_eh 
  for_undef_177:
.annotate 'line', 46
    .return ($P379)
.end


.HLL "nqp"

.namespace []
.sub "_block386"  :anon :subid("39_1303748428.565") :outer("38_1303748428.565")
    .param pmc param_390
.annotate 'line', 48
    new $P388, "Undef"
    .lex "$name", $P388
.annotate 'line', 49
    new $P389, "Undef"
    .lex "$shortname", $P389
    .lex "$_", param_390
.annotate 'line', 48
    find_lex $P391, "$_"
    unless_null $P391, vivify_178
    new $P391, "Undef"
  vivify_178:
    $P392 = $P391."name"()
    store_lex "$name", $P392
.annotate 'line', 49
    find_lex $P393, "$name"
    unless_null $P393, vivify_179
    new $P393, "Undef"
  vivify_179:
    set $S394, $P393
    substr $S395, $S394, 2
    new $P396, 'String'
    set $P396, $S395
    store_lex "$shortname", $P396
.annotate 'line', 50
    find_lex $P400, "$shortname"
    unless_null $P400, vivify_180
    new $P400, "Undef"
  vivify_180:
    find_lex $P399, "%attributes"
    unless_null $P399, vivify_181
    $P399 = root_new ['parrot';'Hash']
  vivify_181:
    exists $I401, $P399[$P400]
    if $I401, if_398
    new $P397, 'Integer'
    set $P397, $I401
    goto if_398_end
  if_398:
.annotate 'line', 51
    find_lex $P402, "$self"
    unless_null $P402, vivify_182
    new $P402, "Undef"
  vivify_182:
    find_lex $P403, "$type"
    unless_null $P403, vivify_183
    new $P403, "Undef"
  vivify_183:
    find_lex $P404, "$name"
    unless_null $P404, vivify_184
    new $P404, "Undef"
  vivify_184:
    set $S405, $P404
    find_lex $P406, "$shortname"
    unless_null $P406, vivify_185
    new $P406, "Undef"
  vivify_185:
    find_lex $P407, "%attributes"
    unless_null $P407, vivify_186
    $P407 = root_new ['parrot';'Hash']
  vivify_186:
    set $P408, $P407[$P406]
    unless_null $P408, vivify_187
    new $P408, "Undef"
  vivify_187:
    setattribute $P402, $P403, $S405, $P408
  if_398_end:
.annotate 'line', 47
    .return ($P397)
.end


.HLL "nqp"

.namespace []
.sub "new"  :subid("40_1303748428.565") :outer("33_1303748428.565")
    .param pmc param_413
    .param pmc param_414 :slurpy :named
.annotate 'line', 56
    .lex "self", param_413
    .lex "%attributes", param_414
.annotate 'line', 57
    find_lex $P415, "self"
    find_lex $P416, "%attributes"
    unless_null $P416, vivify_188
    $P416 = root_new ['parrot';'Hash']
  vivify_188:
    $P417 = $P415."bless"($P416 :flat)
.annotate 'line', 56
    .return ($P417)
.end


.HLL "nqp"

.namespace []
.sub "Str" :instanceof("DispatcherSub") :subid("41_1303748428.565") :outer("33_1303748428.565")
    .param pmc param_419
.annotate 'line', 56
    .lex "self", param_419
    multi_dispatch_over_lexical_candidates $P420
    .return ($P420)
.end


.HLL "nqp"

.namespace []
.sub "Str"  :subid("42_1303748428.565") :outer("33_1303748428.565")
    .param pmc param_422
.annotate 'line', 61
    .lex "$self", param_422
    find_lex $P423, "$self"
    .lex "self", $P423
.annotate 'line', 62
    find_lex $P424, "self"
    get_how $P425, $P424
    find_lex $P426, "self"
    $P427 = $P425."name"($P426)
    concat $P428, $P427, "()"
.annotate 'line', 61
    .return ($P428)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post189") :outer("42_1303748428.565")
.annotate 'line', 61
    .const 'Sub' $P421 = "42_1303748428.565" 
    .local pmc block
    set block, $P421
    find_lex $P429, "$?PACKAGE"
    get_who $P430, $P429
    set $P433, $P430["Mu"]
    unless_null $P433, vivify_190
    get_hll_global $P431, "GLOBAL"
    get_who $P432, $P431
    set $P433, $P432["Mu"]
  vivify_190:
    new $P434, "ResizablePMCArray"
    push $P434, $P433
    new $P435, "ResizablePMCArray"
    push $P435, 2
    set_sub_multisig block, $P434, $P435
.end


.HLL "nqp"

.namespace []
.sub "ACCEPTS" :instanceof("DispatcherSub") :subid("43_1303748428.565") :outer("33_1303748428.565")
    .param pmc param_437
    .param pmc param_438
.annotate 'line', 61
    .lex "self", param_437
.annotate 'line', 65
    .lex "$topic", param_438
.annotate 'line', 61
    multi_dispatch_over_lexical_candidates $P439
    .return ($P439)
.end


.HLL "nqp"

.namespace []
.sub "ACCEPTS"  :subid("44_1303748428.565") :outer("33_1303748428.565")
    .param pmc param_441
    .param pmc param_443
.annotate 'line', 66
    .lex "$self", param_441
    find_lex $P442, "$self"
    .lex "self", $P442
    .lex "$topic", param_443
.annotate 'line', 67
    find_lex $P444, "$topic"
    unless_null $P444, vivify_193
    new $P444, "Undef"
  vivify_193:
    find_lex $P445, "self"
    get_what $P446, $P445
    type_check $I447, $P444, $P446
.annotate 'line', 66
    .return ($I447)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post191") :outer("44_1303748428.565")
.annotate 'line', 66
    .const 'Sub' $P440 = "44_1303748428.565" 
    .local pmc block
    set block, $P440
    find_lex $P448, "$?PACKAGE"
    get_who $P449, $P448
    set $P452, $P449["NQPMu"]
    unless_null $P452, vivify_192
    get_hll_global $P450, "GLOBAL"
    get_who $P451, $P450
    set $P452, $P451["NQPMu"]
  vivify_192:
    null $P453
    new $P454, "ResizablePMCArray"
    push $P454, $P452
    push $P454, $P453
    new $P455, "ResizablePMCArray"
    push $P455, 2
    push $P455, 0
    set_sub_multisig block, $P454, $P455
.end


.HLL "nqp"

.namespace []
.sub "isa"  :subid("45_1303748428.565") :outer("33_1303748428.565")
    .param pmc param_457
    .param pmc param_458
.annotate 'line', 70
    .lex "self", param_457
    .lex "$type", param_458
.annotate 'line', 71
    find_lex $P459, "self"
    get_how $P460, $P459
    find_lex $P461, "self"
    find_lex $P462, "$type"
    unless_null $P462, vivify_194
    new $P462, "Undef"
  vivify_194:
    $P463 = $P460."isa"($P461, $P462)
.annotate 'line', 70
    .return ($P463)
.end


.HLL "nqp"

.namespace []
.sub "_block499"  :anon :subid("47_1303748428.565") :outer("10_1303748428.565")
.annotate 'line', 76
    .const 'Sub' $P680 = "66_1303748428.565" 
    capture_lex $P680
    .const 'Sub' $P671 = "65_1303748428.565" 
    capture_lex $P671
    .const 'Sub' $P663 = "64_1303748428.565" 
    capture_lex $P663
    .const 'Sub' $P655 = "63_1303748428.565" 
    capture_lex $P655
    .const 'Sub' $P647 = "62_1303748428.565" 
    capture_lex $P647
    .const 'Sub' $P639 = "61_1303748428.565" 
    capture_lex $P639
    .const 'Sub' $P630 = "60_1303748428.565" 
    capture_lex $P630
    .const 'Sub' $P621 = "59_1303748428.565" 
    capture_lex $P621
    .const 'Sub' $P612 = "58_1303748428.565" 
    capture_lex $P612
    .const 'Sub' $P601 = "57_1303748428.565" 
    capture_lex $P601
    .const 'Sub' $P591 = "56_1303748428.565" 
    capture_lex $P591
    .const 'Sub' $P581 = "55_1303748428.565" 
    capture_lex $P581
    .const 'Sub' $P563 = "54_1303748428.565" 
    capture_lex $P563
    .const 'Sub' $P546 = "53_1303748428.565" 
    capture_lex $P546
    .const 'Sub' $P529 = "52_1303748428.565" 
    capture_lex $P529
    .const 'Sub' $P523 = "51_1303748428.565" 
    capture_lex $P523
    .const 'Sub' $P518 = "50_1303748428.565" 
    capture_lex $P518
    .const 'Sub' $P510 = "49_1303748428.565" 
    capture_lex $P510
    .const 'Sub' $P503 = "48_1303748428.565" 
    capture_lex $P503
    .lex "$?PACKAGE", $P501
    .lex "$?CLASS", $P502
.annotate 'line', 139
    .const 'Sub' $P671 = "65_1303748428.565" 
    newclosure $P678, $P671
.annotate 'line', 76
    .return ($P678)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post195") :outer("47_1303748428.565")
.annotate 'line', 76
    .const 'Sub' $P500 = "47_1303748428.565" 
    .local pmc block
    set block, $P500
    .const 'Sub' $P680 = "66_1303748428.565" 
    capture_lex $P680
    $P680()
.end


.HLL "nqp"

.namespace []
.sub "_block679"  :anon :subid("66_1303748428.565") :outer("47_1303748428.565")
.annotate 'line', 76
    .const 'Sub' $P866 = "65_1303748428.565" 
    capture_lex $P866
    .const 'Sub' $P856 = "64_1303748428.565" 
    capture_lex $P856
    .const 'Sub' $P846 = "63_1303748428.565" 
    capture_lex $P846
    .const 'Sub' $P836 = "62_1303748428.565" 
    capture_lex $P836
    .const 'Sub' $P826 = "61_1303748428.565" 
    capture_lex $P826
    .const 'Sub' $P815 = "60_1303748428.565" 
    capture_lex $P815
    .const 'Sub' $P804 = "59_1303748428.565" 
    capture_lex $P804
    .const 'Sub' $P793 = "58_1303748428.565" 
    capture_lex $P793
    .const 'Sub' $P780 = "57_1303748428.565" 
    capture_lex $P780
    .const 'Sub' $P768 = "56_1303748428.565" 
    capture_lex $P768
    .const 'Sub' $P756 = "55_1303748428.565" 
    capture_lex $P756
    .const 'Sub' $P736 = "54_1303748428.565" 
    capture_lex $P736
    .const 'Sub' $P717 = "53_1303748428.565" 
    capture_lex $P717
    .const 'Sub' $P698 = "52_1303748428.565" 
    capture_lex $P698
    nqp_get_sc_object $P681, "1303748427.491", 6
    .local pmc type_obj
    set type_obj, $P681
    get_how $P682, type_obj
    get_hll_global $P683, "NQPAttribute"
    $P684 = $P683."new"("@!array" :named("name"))
    $P682."add_attribute"(type_obj, $P684)
    get_how $P685, type_obj
    get_hll_global $P686, "NQPAttribute"
    $P687 = $P686."new"("%!hash" :named("name"))
    $P685."add_attribute"(type_obj, $P687)
    get_how $P688, type_obj
    .const 'Sub' $P689 = "48_1303748428.565" 
    $P688."add_method"(type_obj, "new", $P689)
    get_how $P690, type_obj
    .const 'Sub' $P691 = "49_1303748428.565" 
    $P690."add_method"(type_obj, "BUILD", $P691)
    get_how $P692, type_obj
    .const 'Sub' $P693 = "50_1303748428.565" 
    $P692."add_method"(type_obj, "list", $P693)
    get_how $P694, type_obj
    .const 'Sub' $P695 = "51_1303748428.565" 
    $P694."add_method"(type_obj, "hash", $P695)
    get_how $P696, type_obj
.annotate 'line', 95
    .const 'Sub' $P698 = "52_1303748428.565" 
    newclosure $P714, $P698
    $P696."add_parrot_vtable_mapping"(type_obj, "get_pmc_keyed_str", $P714)
.annotate 'line', 76
    get_how $P715, type_obj
.annotate 'line', 98
    .const 'Sub' $P717 = "53_1303748428.565" 
    newclosure $P733, $P717
    $P715."add_parrot_vtable_mapping"(type_obj, "get_pmc_keyed", $P733)
.annotate 'line', 76
    get_how $P734, type_obj
.annotate 'line', 101
    .const 'Sub' $P736 = "54_1303748428.565" 
    newclosure $P753, $P736
    $P734."add_parrot_vtable_mapping"(type_obj, "get_pmc_keyed_int", $P753)
.annotate 'line', 76
    get_how $P754, type_obj
.annotate 'line', 105
    .const 'Sub' $P756 = "55_1303748428.565" 
    newclosure $P765, $P756
    $P754."add_parrot_vtable_mapping"(type_obj, "set_pmc_keyed_str", $P765)
.annotate 'line', 76
    get_how $P766, type_obj
.annotate 'line', 108
    .const 'Sub' $P768 = "56_1303748428.565" 
    newclosure $P777, $P768
    $P766."add_parrot_vtable_mapping"(type_obj, "set_pmc_keyed", $P777)
.annotate 'line', 76
    get_how $P778, type_obj
.annotate 'line', 111
    .const 'Sub' $P780 = "57_1303748428.565" 
    newclosure $P790, $P780
    $P778."add_parrot_vtable_mapping"(type_obj, "set_pmc_keyed_int", $P790)
.annotate 'line', 76
    get_how $P791, type_obj
.annotate 'line', 115
    .const 'Sub' $P793 = "58_1303748428.565" 
    newclosure $P801, $P793
    $P791."add_parrot_vtable_mapping"(type_obj, "exists_keyed", $P801)
.annotate 'line', 76
    get_how $P802, type_obj
.annotate 'line', 118
    .const 'Sub' $P804 = "59_1303748428.565" 
    newclosure $P812, $P804
    $P802."add_parrot_vtable_mapping"(type_obj, "exists_keyed_str", $P812)
.annotate 'line', 76
    get_how $P813, type_obj
.annotate 'line', 121
    .const 'Sub' $P815 = "60_1303748428.565" 
    newclosure $P823, $P815
    $P813."add_parrot_vtable_mapping"(type_obj, "exists_keyed_int", $P823)
.annotate 'line', 76
    get_how $P824, type_obj
.annotate 'line', 125
    .const 'Sub' $P826 = "61_1303748428.565" 
    newclosure $P833, $P826
    $P824."add_parrot_vtable_mapping"(type_obj, "delete_keyed", $P833)
.annotate 'line', 76
    get_how $P834, type_obj
.annotate 'line', 128
    .const 'Sub' $P836 = "62_1303748428.565" 
    newclosure $P843, $P836
    $P834."add_parrot_vtable_mapping"(type_obj, "delete_keyed_str", $P843)
.annotate 'line', 76
    get_how $P844, type_obj
.annotate 'line', 131
    .const 'Sub' $P846 = "63_1303748428.565" 
    newclosure $P853, $P846
    $P844."add_parrot_vtable_mapping"(type_obj, "delete_keyed_int", $P853)
.annotate 'line', 76
    get_how $P854, type_obj
.annotate 'line', 135
    .const 'Sub' $P856 = "64_1303748428.565" 
    newclosure $P863, $P856
    $P854."add_parrot_vtable_mapping"(type_obj, "unshift_pmc", $P863)
.annotate 'line', 76
    get_how $P864, type_obj
.annotate 'line', 139
    .const 'Sub' $P866 = "65_1303748428.565" 
    newclosure $P873, $P866
    $P864."add_parrot_vtable_mapping"(type_obj, "push_pmc", $P873)
.annotate 'line', 76
    get_how $P874, type_obj
    nqp_get_sc_object $P875, "1303748427.491", 5
    $P874."set_default_parent"(type_obj, $P875)
    get_how $P876, type_obj
    $P877 = $P876."compose"(type_obj)
    .return ($P877)
.end


.HLL "nqp"

.namespace []
.sub "_block697"  :anon :subid("52_1303748428.565") :outer("66_1303748428.565")
    .param pmc param_699
    .param pmc param_700
.annotate 'line', 95
    .lex "self", param_699
    .lex "$key", param_700
.annotate 'line', 96
    find_lex $P706, "$key"
    unless_null $P706, vivify_196
    new $P706, "Undef"
  vivify_196:
    find_lex $P703, "self"
    find_lex $P704, "$?CLASS"
    getattribute $P705, $P703, $P704, "%!hash"
    unless_null $P705, vivify_197
    $P705 = root_new ['parrot';'Hash']
  vivify_197:
    exists $I707, $P705[$P706]
    if $I707, if_702
    null $P713
    set $P701, $P713
    goto if_702_end
  if_702:
    find_lex $P708, "$key"
    unless_null $P708, vivify_198
    new $P708, "Undef"
  vivify_198:
    find_lex $P709, "self"
    find_lex $P710, "$?CLASS"
    getattribute $P711, $P709, $P710, "%!hash"
    unless_null $P711, vivify_199
    $P711 = root_new ['parrot';'Hash']
  vivify_199:
    set $P712, $P711[$P708]
    unless_null $P712, vivify_200
    new $P712, "Undef"
  vivify_200:
    set $P701, $P712
  if_702_end:
.annotate 'line', 95
    .return ($P701)
.end


.HLL "nqp"

.namespace []
.sub "_block716"  :anon :subid("53_1303748428.565") :outer("66_1303748428.565")
    .param pmc param_718
    .param pmc param_719
.annotate 'line', 98
    .lex "self", param_718
    .lex "$key", param_719
.annotate 'line', 99
    find_lex $P725, "$key"
    unless_null $P725, vivify_201
    new $P725, "Undef"
  vivify_201:
    find_lex $P722, "self"
    find_lex $P723, "$?CLASS"
    getattribute $P724, $P722, $P723, "%!hash"
    unless_null $P724, vivify_202
    $P724 = root_new ['parrot';'Hash']
  vivify_202:
    exists $I726, $P724[$P725]
    if $I726, if_721
    null $P732
    set $P720, $P732
    goto if_721_end
  if_721:
    find_lex $P727, "$key"
    unless_null $P727, vivify_203
    new $P727, "Undef"
  vivify_203:
    find_lex $P728, "self"
    find_lex $P729, "$?CLASS"
    getattribute $P730, $P728, $P729, "%!hash"
    unless_null $P730, vivify_204
    $P730 = root_new ['parrot';'Hash']
  vivify_204:
    set $P731, $P730[$P727]
    unless_null $P731, vivify_205
    new $P731, "Undef"
  vivify_205:
    set $P720, $P731
  if_721_end:
.annotate 'line', 98
    .return ($P720)
.end


.HLL "nqp"

.namespace []
.sub "_block735"  :anon :subid("54_1303748428.565") :outer("66_1303748428.565")
    .param pmc param_737
    .param pmc param_738
.annotate 'line', 101
    .lex "self", param_737
    .lex "$key", param_738
.annotate 'line', 102
    find_lex $P744, "$key"
    unless_null $P744, vivify_206
    new $P744, "Undef"
  vivify_206:
    find_lex $P741, "self"
    find_lex $P742, "$?CLASS"
    getattribute $P743, $P741, $P742, "@!array"
    unless_null $P743, vivify_207
    $P743 = root_new ['parrot';'ResizablePMCArray']
  vivify_207:
    exists $I745, $P743[$P744]
    if $I745, if_740
    null $P752
    set $P739, $P752
    goto if_740_end
  if_740:
    find_lex $P746, "$key"
    unless_null $P746, vivify_208
    new $P746, "Undef"
  vivify_208:
    set $I747, $P746
    find_lex $P748, "self"
    find_lex $P749, "$?CLASS"
    getattribute $P750, $P748, $P749, "@!array"
    unless_null $P750, vivify_209
    $P750 = root_new ['parrot';'ResizablePMCArray']
  vivify_209:
    set $P751, $P750[$I747]
    unless_null $P751, vivify_210
    new $P751, "Undef"
  vivify_210:
    set $P739, $P751
  if_740_end:
.annotate 'line', 101
    .return ($P739)
.end


.HLL "nqp"

.namespace []
.sub "_block755"  :anon :subid("55_1303748428.565") :outer("66_1303748428.565")
    .param pmc param_757
    .param pmc param_758
    .param pmc param_759
.annotate 'line', 105
    .lex "self", param_757
    .lex "$key", param_758
    .lex "$value", param_759
.annotate 'line', 106
    find_lex $P760, "$value"
    unless_null $P760, vivify_211
    new $P760, "Undef"
  vivify_211:
    find_lex $P761, "$key"
    unless_null $P761, vivify_212
    new $P761, "Undef"
  vivify_212:
    find_lex $P762, "self"
    find_lex $P763, "$?CLASS"
    getattribute $P764, $P762, $P763, "%!hash"
    unless_null $P764, vivify_213
    $P764 = root_new ['parrot';'Hash']
    setattribute $P762, $P763, "%!hash", $P764
  vivify_213:
    set $P764[$P761], $P760
.annotate 'line', 105
    .return ($P760)
.end


.HLL "nqp"

.namespace []
.sub "_block767"  :anon :subid("56_1303748428.565") :outer("66_1303748428.565")
    .param pmc param_769
    .param pmc param_770
    .param pmc param_771
.annotate 'line', 108
    .lex "self", param_769
    .lex "$key", param_770
    .lex "$value", param_771
.annotate 'line', 109
    find_lex $P772, "$value"
    unless_null $P772, vivify_214
    new $P772, "Undef"
  vivify_214:
    find_lex $P773, "$key"
    unless_null $P773, vivify_215
    new $P773, "Undef"
  vivify_215:
    find_lex $P774, "self"
    find_lex $P775, "$?CLASS"
    getattribute $P776, $P774, $P775, "%!hash"
    unless_null $P776, vivify_216
    $P776 = root_new ['parrot';'Hash']
    setattribute $P774, $P775, "%!hash", $P776
  vivify_216:
    set $P776[$P773], $P772
.annotate 'line', 108
    .return ($P772)
.end


.HLL "nqp"

.namespace []
.sub "_block779"  :anon :subid("57_1303748428.565") :outer("66_1303748428.565")
    .param pmc param_781
    .param pmc param_782
    .param pmc param_783
.annotate 'line', 111
    .lex "self", param_781
    .lex "$key", param_782
    .lex "$value", param_783
.annotate 'line', 112
    find_lex $P784, "$value"
    unless_null $P784, vivify_217
    new $P784, "Undef"
  vivify_217:
    find_lex $P785, "$key"
    unless_null $P785, vivify_218
    new $P785, "Undef"
  vivify_218:
    set $I786, $P785
    find_lex $P787, "self"
    find_lex $P788, "$?CLASS"
    getattribute $P789, $P787, $P788, "@!array"
    unless_null $P789, vivify_219
    $P789 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P787, $P788, "@!array", $P789
  vivify_219:
    set $P789[$I786], $P784
.annotate 'line', 111
    .return ($P784)
.end


.HLL "nqp"

.namespace []
.sub "_block792"  :anon :subid("58_1303748428.565") :outer("66_1303748428.565")
    .param pmc param_794
    .param pmc param_795
.annotate 'line', 115
    .lex "self", param_794
    .lex "$key", param_795
.annotate 'line', 116
    find_lex $P799, "$key"
    unless_null $P799, vivify_220
    new $P799, "Undef"
  vivify_220:
    find_lex $P796, "self"
    find_lex $P797, "$?CLASS"
    getattribute $P798, $P796, $P797, "%!hash"
    unless_null $P798, vivify_221
    $P798 = root_new ['parrot';'Hash']
  vivify_221:
    exists $I800, $P798[$P799]
.annotate 'line', 115
    .return ($I800)
.end


.HLL "nqp"

.namespace []
.sub "_block803"  :anon :subid("59_1303748428.565") :outer("66_1303748428.565")
    .param pmc param_805
    .param pmc param_806
.annotate 'line', 118
    .lex "self", param_805
    .lex "$key", param_806
.annotate 'line', 119
    find_lex $P810, "$key"
    unless_null $P810, vivify_222
    new $P810, "Undef"
  vivify_222:
    find_lex $P807, "self"
    find_lex $P808, "$?CLASS"
    getattribute $P809, $P807, $P808, "%!hash"
    unless_null $P809, vivify_223
    $P809 = root_new ['parrot';'Hash']
  vivify_223:
    exists $I811, $P809[$P810]
.annotate 'line', 118
    .return ($I811)
.end


.HLL "nqp"

.namespace []
.sub "_block814"  :anon :subid("60_1303748428.565") :outer("66_1303748428.565")
    .param pmc param_816
    .param pmc param_817
.annotate 'line', 121
    .lex "self", param_816
    .lex "$key", param_817
.annotate 'line', 122
    find_lex $P821, "$key"
    unless_null $P821, vivify_224
    new $P821, "Undef"
  vivify_224:
    find_lex $P818, "self"
    find_lex $P819, "$?CLASS"
    getattribute $P820, $P818, $P819, "@!array"
    unless_null $P820, vivify_225
    $P820 = root_new ['parrot';'ResizablePMCArray']
  vivify_225:
    exists $I822, $P820[$P821]
.annotate 'line', 121
    .return ($I822)
.end


.HLL "nqp"

.namespace []
.sub "_block825"  :anon :subid("61_1303748428.565") :outer("66_1303748428.565")
    .param pmc param_827
    .param pmc param_828
.annotate 'line', 125
    .lex "self", param_827
    .lex "$key", param_828
.annotate 'line', 126
    find_lex $P832, "$key"
    unless_null $P832, vivify_226
    new $P832, "Undef"
  vivify_226:
    find_lex $P829, "self"
    find_lex $P830, "$?CLASS"
    getattribute $P831, $P829, $P830, "%!hash"
    unless_null $P831, vivify_227
    $P831 = root_new ['parrot';'Hash']
  vivify_227:
    delete $P831[$P832]
.annotate 'line', 125
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block835"  :anon :subid("62_1303748428.565") :outer("66_1303748428.565")
    .param pmc param_837
    .param pmc param_838
.annotate 'line', 128
    .lex "self", param_837
    .lex "$key", param_838
.annotate 'line', 129
    find_lex $P842, "$key"
    unless_null $P842, vivify_228
    new $P842, "Undef"
  vivify_228:
    find_lex $P839, "self"
    find_lex $P840, "$?CLASS"
    getattribute $P841, $P839, $P840, "%!hash"
    unless_null $P841, vivify_229
    $P841 = root_new ['parrot';'Hash']
  vivify_229:
    delete $P841[$P842]
.annotate 'line', 128
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block845"  :anon :subid("63_1303748428.565") :outer("66_1303748428.565")
    .param pmc param_847
    .param pmc param_848
.annotate 'line', 131
    .lex "self", param_847
    .lex "$key", param_848
.annotate 'line', 132
    find_lex $P852, "$key"
    unless_null $P852, vivify_230
    new $P852, "Undef"
  vivify_230:
    find_lex $P849, "self"
    find_lex $P850, "$?CLASS"
    getattribute $P851, $P849, $P850, "@!array"
    unless_null $P851, vivify_231
    $P851 = root_new ['parrot';'ResizablePMCArray']
  vivify_231:
    delete $P851[$P852]
.annotate 'line', 131
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block855"  :anon :subid("64_1303748428.565") :outer("66_1303748428.565")
    .param pmc param_857
    .param pmc param_858
.annotate 'line', 135
    .lex "self", param_857
    .lex "$value", param_858
.annotate 'line', 136
    find_lex $P859, "self"
    find_lex $P860, "$?CLASS"
    getattribute $P861, $P859, $P860, "@!array"
    unless_null $P861, vivify_232
    $P861 = root_new ['parrot';'ResizablePMCArray']
  vivify_232:
    find_lex $P862, "$value"
    unless_null $P862, vivify_233
    new $P862, "Undef"
  vivify_233:
    unshift $P861, $P862
.annotate 'line', 135
    .return ($P861)
.end


.HLL "nqp"

.namespace []
.sub "_block865"  :anon :subid("65_1303748428.565") :outer("66_1303748428.565")
    .param pmc param_867
    .param pmc param_868
.annotate 'line', 139
    .lex "self", param_867
    .lex "$value", param_868
.annotate 'line', 140
    find_lex $P869, "self"
    find_lex $P870, "$?CLASS"
    getattribute $P871, $P869, $P870, "@!array"
    unless_null $P871, vivify_234
    $P871 = root_new ['parrot';'ResizablePMCArray']
  vivify_234:
    find_lex $P872, "$value"
    unless_null $P872, vivify_235
    new $P872, "Undef"
  vivify_235:
    unshift $P871, $P872
.annotate 'line', 139
    .return ($P871)
.end


.HLL "nqp"

.namespace []
.sub "new"  :subid("48_1303748428.565") :outer("47_1303748428.565")
    .param pmc param_504
.annotate 'line', 80
    .lex "self", param_504
.annotate 'line', 81
    new $P505, "Undef"
    .lex "$n", $P505
    find_lex $P506, "self"
    $P507 = $P506."CREATE"()
    store_lex "$n", $P507
.annotate 'line', 82
    find_lex $P508, "$n"
    unless_null $P508, vivify_236
    new $P508, "Undef"
  vivify_236:
    $P508."BUILD"()
    find_lex $P509, "$n"
    unless_null $P509, vivify_237
    new $P509, "Undef"
  vivify_237:
.annotate 'line', 80
    .return ($P509)
.end


.HLL "nqp"

.namespace []
.sub "BUILD"  :subid("49_1303748428.565") :outer("47_1303748428.565")
    .param pmc param_511
.annotate 'line', 86
    .lex "self", param_511
.annotate 'line', 87
    new $P512, "ResizablePMCArray"
    find_lex $P513, "self"
    find_lex $P514, "$?CLASS"
    setattribute $P513, $P514, "@!array", $P512
.annotate 'line', 88
    new $P515, "Hash"
    find_lex $P516, "self"
    find_lex $P517, "$?CLASS"
    setattribute $P516, $P517, "%!hash", $P515
.annotate 'line', 86
    .return ($P515)
.end


.HLL "nqp"

.namespace []
.sub "list"  :subid("50_1303748428.565") :outer("47_1303748428.565")
    .param pmc param_519
.annotate 'line', 91
    .lex "self", param_519
    find_lex $P520, "self"
    find_lex $P521, "$?CLASS"
    getattribute $P522, $P520, $P521, "@!array"
    unless_null $P522, vivify_238
    $P522 = root_new ['parrot';'ResizablePMCArray']
  vivify_238:
    .return ($P522)
.end


.HLL "nqp"

.namespace []
.sub "hash"  :subid("51_1303748428.565") :outer("47_1303748428.565")
    .param pmc param_524
.annotate 'line', 93
    .lex "self", param_524
    find_lex $P525, "self"
    find_lex $P526, "$?CLASS"
    getattribute $P527, $P525, $P526, "%!hash"
    unless_null $P527, vivify_239
    $P527 = root_new ['parrot';'Hash']
  vivify_239:
    .return ($P527)
.end


.HLL "nqp"

.namespace []
.sub "_block528"  :anon :subid("52_1303748428.565") :outer("47_1303748428.565")
    .param pmc param_530
    .param pmc param_531
.annotate 'line', 95
    .lex "self", param_530
    .lex "$key", param_531
.annotate 'line', 96
    find_lex $P537, "$key"
    unless_null $P537, vivify_240
    new $P537, "Undef"
  vivify_240:
    find_lex $P534, "self"
    find_lex $P535, "$?CLASS"
    getattribute $P536, $P534, $P535, "%!hash"
    unless_null $P536, vivify_241
    $P536 = root_new ['parrot';'Hash']
  vivify_241:
    exists $I538, $P536[$P537]
    if $I538, if_533
    null $P544
    set $P532, $P544
    goto if_533_end
  if_533:
    find_lex $P539, "$key"
    unless_null $P539, vivify_242
    new $P539, "Undef"
  vivify_242:
    find_lex $P540, "self"
    find_lex $P541, "$?CLASS"
    getattribute $P542, $P540, $P541, "%!hash"
    unless_null $P542, vivify_243
    $P542 = root_new ['parrot';'Hash']
  vivify_243:
    set $P543, $P542[$P539]
    unless_null $P543, vivify_244
    new $P543, "Undef"
  vivify_244:
    set $P532, $P543
  if_533_end:
.annotate 'line', 95
    .return ($P532)
.end


.HLL "nqp"

.namespace []
.sub "_block545"  :anon :subid("53_1303748428.565") :outer("47_1303748428.565")
    .param pmc param_547
    .param pmc param_548
.annotate 'line', 98
    .lex "self", param_547
    .lex "$key", param_548
.annotate 'line', 99
    find_lex $P554, "$key"
    unless_null $P554, vivify_245
    new $P554, "Undef"
  vivify_245:
    find_lex $P551, "self"
    find_lex $P552, "$?CLASS"
    getattribute $P553, $P551, $P552, "%!hash"
    unless_null $P553, vivify_246
    $P553 = root_new ['parrot';'Hash']
  vivify_246:
    exists $I555, $P553[$P554]
    if $I555, if_550
    null $P561
    set $P549, $P561
    goto if_550_end
  if_550:
    find_lex $P556, "$key"
    unless_null $P556, vivify_247
    new $P556, "Undef"
  vivify_247:
    find_lex $P557, "self"
    find_lex $P558, "$?CLASS"
    getattribute $P559, $P557, $P558, "%!hash"
    unless_null $P559, vivify_248
    $P559 = root_new ['parrot';'Hash']
  vivify_248:
    set $P560, $P559[$P556]
    unless_null $P560, vivify_249
    new $P560, "Undef"
  vivify_249:
    set $P549, $P560
  if_550_end:
.annotate 'line', 98
    .return ($P549)
.end


.HLL "nqp"

.namespace []
.sub "_block562"  :anon :subid("54_1303748428.565") :outer("47_1303748428.565")
    .param pmc param_564
    .param pmc param_565
.annotate 'line', 101
    .lex "self", param_564
    .lex "$key", param_565
.annotate 'line', 102
    find_lex $P571, "$key"
    unless_null $P571, vivify_250
    new $P571, "Undef"
  vivify_250:
    find_lex $P568, "self"
    find_lex $P569, "$?CLASS"
    getattribute $P570, $P568, $P569, "@!array"
    unless_null $P570, vivify_251
    $P570 = root_new ['parrot';'ResizablePMCArray']
  vivify_251:
    exists $I572, $P570[$P571]
    if $I572, if_567
    null $P579
    set $P566, $P579
    goto if_567_end
  if_567:
    find_lex $P573, "$key"
    unless_null $P573, vivify_252
    new $P573, "Undef"
  vivify_252:
    set $I574, $P573
    find_lex $P575, "self"
    find_lex $P576, "$?CLASS"
    getattribute $P577, $P575, $P576, "@!array"
    unless_null $P577, vivify_253
    $P577 = root_new ['parrot';'ResizablePMCArray']
  vivify_253:
    set $P578, $P577[$I574]
    unless_null $P578, vivify_254
    new $P578, "Undef"
  vivify_254:
    set $P566, $P578
  if_567_end:
.annotate 'line', 101
    .return ($P566)
.end


.HLL "nqp"

.namespace []
.sub "_block580"  :anon :subid("55_1303748428.565") :outer("47_1303748428.565")
    .param pmc param_582
    .param pmc param_583
    .param pmc param_584
.annotate 'line', 105
    .lex "self", param_582
    .lex "$key", param_583
    .lex "$value", param_584
.annotate 'line', 106
    find_lex $P585, "$value"
    unless_null $P585, vivify_255
    new $P585, "Undef"
  vivify_255:
    find_lex $P586, "$key"
    unless_null $P586, vivify_256
    new $P586, "Undef"
  vivify_256:
    find_lex $P587, "self"
    find_lex $P588, "$?CLASS"
    getattribute $P589, $P587, $P588, "%!hash"
    unless_null $P589, vivify_257
    $P589 = root_new ['parrot';'Hash']
    setattribute $P587, $P588, "%!hash", $P589
  vivify_257:
    set $P589[$P586], $P585
.annotate 'line', 105
    .return ($P585)
.end


.HLL "nqp"

.namespace []
.sub "_block590"  :anon :subid("56_1303748428.565") :outer("47_1303748428.565")
    .param pmc param_592
    .param pmc param_593
    .param pmc param_594
.annotate 'line', 108
    .lex "self", param_592
    .lex "$key", param_593
    .lex "$value", param_594
.annotate 'line', 109
    find_lex $P595, "$value"
    unless_null $P595, vivify_258
    new $P595, "Undef"
  vivify_258:
    find_lex $P596, "$key"
    unless_null $P596, vivify_259
    new $P596, "Undef"
  vivify_259:
    find_lex $P597, "self"
    find_lex $P598, "$?CLASS"
    getattribute $P599, $P597, $P598, "%!hash"
    unless_null $P599, vivify_260
    $P599 = root_new ['parrot';'Hash']
    setattribute $P597, $P598, "%!hash", $P599
  vivify_260:
    set $P599[$P596], $P595
.annotate 'line', 108
    .return ($P595)
.end


.HLL "nqp"

.namespace []
.sub "_block600"  :anon :subid("57_1303748428.565") :outer("47_1303748428.565")
    .param pmc param_602
    .param pmc param_603
    .param pmc param_604
.annotate 'line', 111
    .lex "self", param_602
    .lex "$key", param_603
    .lex "$value", param_604
.annotate 'line', 112
    find_lex $P605, "$value"
    unless_null $P605, vivify_261
    new $P605, "Undef"
  vivify_261:
    find_lex $P606, "$key"
    unless_null $P606, vivify_262
    new $P606, "Undef"
  vivify_262:
    set $I607, $P606
    find_lex $P608, "self"
    find_lex $P609, "$?CLASS"
    getattribute $P610, $P608, $P609, "@!array"
    unless_null $P610, vivify_263
    $P610 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P608, $P609, "@!array", $P610
  vivify_263:
    set $P610[$I607], $P605
.annotate 'line', 111
    .return ($P605)
.end


.HLL "nqp"

.namespace []
.sub "_block611"  :anon :subid("58_1303748428.565") :outer("47_1303748428.565")
    .param pmc param_613
    .param pmc param_614
.annotate 'line', 115
    .lex "self", param_613
    .lex "$key", param_614
.annotate 'line', 116
    find_lex $P618, "$key"
    unless_null $P618, vivify_264
    new $P618, "Undef"
  vivify_264:
    find_lex $P615, "self"
    find_lex $P616, "$?CLASS"
    getattribute $P617, $P615, $P616, "%!hash"
    unless_null $P617, vivify_265
    $P617 = root_new ['parrot';'Hash']
  vivify_265:
    exists $I619, $P617[$P618]
.annotate 'line', 115
    .return ($I619)
.end


.HLL "nqp"

.namespace []
.sub "_block620"  :anon :subid("59_1303748428.565") :outer("47_1303748428.565")
    .param pmc param_622
    .param pmc param_623
.annotate 'line', 118
    .lex "self", param_622
    .lex "$key", param_623
.annotate 'line', 119
    find_lex $P627, "$key"
    unless_null $P627, vivify_266
    new $P627, "Undef"
  vivify_266:
    find_lex $P624, "self"
    find_lex $P625, "$?CLASS"
    getattribute $P626, $P624, $P625, "%!hash"
    unless_null $P626, vivify_267
    $P626 = root_new ['parrot';'Hash']
  vivify_267:
    exists $I628, $P626[$P627]
.annotate 'line', 118
    .return ($I628)
.end


.HLL "nqp"

.namespace []
.sub "_block629"  :anon :subid("60_1303748428.565") :outer("47_1303748428.565")
    .param pmc param_631
    .param pmc param_632
.annotate 'line', 121
    .lex "self", param_631
    .lex "$key", param_632
.annotate 'line', 122
    find_lex $P636, "$key"
    unless_null $P636, vivify_268
    new $P636, "Undef"
  vivify_268:
    find_lex $P633, "self"
    find_lex $P634, "$?CLASS"
    getattribute $P635, $P633, $P634, "@!array"
    unless_null $P635, vivify_269
    $P635 = root_new ['parrot';'ResizablePMCArray']
  vivify_269:
    exists $I637, $P635[$P636]
.annotate 'line', 121
    .return ($I637)
.end


.HLL "nqp"

.namespace []
.sub "_block638"  :anon :subid("61_1303748428.565") :outer("47_1303748428.565")
    .param pmc param_640
    .param pmc param_641
.annotate 'line', 125
    .lex "self", param_640
    .lex "$key", param_641
.annotate 'line', 126
    find_lex $P645, "$key"
    unless_null $P645, vivify_270
    new $P645, "Undef"
  vivify_270:
    find_lex $P642, "self"
    find_lex $P643, "$?CLASS"
    getattribute $P644, $P642, $P643, "%!hash"
    unless_null $P644, vivify_271
    $P644 = root_new ['parrot';'Hash']
  vivify_271:
    delete $P644[$P645]
.annotate 'line', 125
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block646"  :anon :subid("62_1303748428.565") :outer("47_1303748428.565")
    .param pmc param_648
    .param pmc param_649
.annotate 'line', 128
    .lex "self", param_648
    .lex "$key", param_649
.annotate 'line', 129
    find_lex $P653, "$key"
    unless_null $P653, vivify_272
    new $P653, "Undef"
  vivify_272:
    find_lex $P650, "self"
    find_lex $P651, "$?CLASS"
    getattribute $P652, $P650, $P651, "%!hash"
    unless_null $P652, vivify_273
    $P652 = root_new ['parrot';'Hash']
  vivify_273:
    delete $P652[$P653]
.annotate 'line', 128
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block654"  :anon :subid("63_1303748428.565") :outer("47_1303748428.565")
    .param pmc param_656
    .param pmc param_657
.annotate 'line', 131
    .lex "self", param_656
    .lex "$key", param_657
.annotate 'line', 132
    find_lex $P661, "$key"
    unless_null $P661, vivify_274
    new $P661, "Undef"
  vivify_274:
    find_lex $P658, "self"
    find_lex $P659, "$?CLASS"
    getattribute $P660, $P658, $P659, "@!array"
    unless_null $P660, vivify_275
    $P660 = root_new ['parrot';'ResizablePMCArray']
  vivify_275:
    delete $P660[$P661]
.annotate 'line', 131
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block662"  :anon :subid("64_1303748428.565") :outer("47_1303748428.565")
    .param pmc param_664
    .param pmc param_665
.annotate 'line', 135
    .lex "self", param_664
    .lex "$value", param_665
.annotate 'line', 136
    find_lex $P666, "self"
    find_lex $P667, "$?CLASS"
    getattribute $P668, $P666, $P667, "@!array"
    unless_null $P668, vivify_276
    $P668 = root_new ['parrot';'ResizablePMCArray']
  vivify_276:
    find_lex $P669, "$value"
    unless_null $P669, vivify_277
    new $P669, "Undef"
  vivify_277:
    unshift $P668, $P669
.annotate 'line', 135
    .return ($P668)
.end


.HLL "nqp"

.namespace []
.sub "_block670"  :anon :subid("65_1303748428.565") :outer("47_1303748428.565")
    .param pmc param_672
    .param pmc param_673
.annotate 'line', 139
    .lex "self", param_672
    .lex "$value", param_673
.annotate 'line', 140
    find_lex $P674, "self"
    find_lex $P675, "$?CLASS"
    getattribute $P676, $P674, $P675, "@!array"
    unless_null $P676, vivify_278
    $P676 = root_new ['parrot';'ResizablePMCArray']
  vivify_278:
    find_lex $P677, "$value"
    unless_null $P677, vivify_279
    new $P677, "Undef"
  vivify_279:
    unshift $P676, $P677
.annotate 'line', 139
    .return ($P676)
.end


.HLL "nqp"

.namespace []
.sub "_block891" :load :anon :subid("67_1303748428.565")
.annotate 'line', 1
    .const 'Sub' $P893 = "10_1303748428.565" 
    $P894 = $P893()
    .return ($P894)
.end

