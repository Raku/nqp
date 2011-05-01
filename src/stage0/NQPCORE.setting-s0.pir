
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1304282255.089")
.annotate 'line', 0
    .const 'Sub' $P477 = "47_1304282255.089" 
    capture_lex $P477
    .const 'Sub' $P357 = "33_1304282255.089" 
    capture_lex $P357
    .const 'Sub' $P348 = "31_1304282255.089" 
    capture_lex $P348
    .const 'Sub' $P339 = "29_1304282255.089" 
    capture_lex $P339
    .const 'Sub' $P330 = "27_1304282255.089" 
    capture_lex $P330
    .const 'Sub' $P265 = "25_1304282255.089" 
    capture_lex $P265
    .const 'Sub' $P251 = "24_1304282255.089" 
    capture_lex $P251
    .const 'Sub' $P229 = "23_1304282255.089" 
    capture_lex $P229
    .const 'Sub' $P222 = "22_1304282255.089" 
    capture_lex $P222
    .const 'Sub' $P134 = "20_1304282255.089" 
    capture_lex $P134
    .const 'Sub' $P101 = "18_1304282255.089" 
    capture_lex $P101
    .const 'Sub' $P96 = "17_1304282255.089" 
    capture_lex $P96
    .const 'Sub' $P82 = "15_1304282255.089" 
    capture_lex $P82
    .const 'Sub' $P70 = "14_1304282255.089" 
    capture_lex $P70
    .const 'Sub' $P59 = "13_1304282255.089" 
    capture_lex $P59
    .const 'Sub' $P54 = "12_1304282255.089" 
    capture_lex $P54
    .const 'Sub' $P21 = "11_1304282255.089" 
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
.annotate 'line', 158
    .const 'Sub' $P21 = "11_1304282255.089" 
    newclosure $P53, $P21
    .lex "open", $P53
.annotate 'line', 170
    .const 'Sub' $P54 = "12_1304282255.089" 
    newclosure $P58, $P54
    .lex "close", $P58
.annotate 'line', 178
    .const 'Sub' $P59 = "13_1304282255.089" 
    newclosure $P69, $P59
    .lex "slurp", $P69
.annotate 'line', 190
    .const 'Sub' $P70 = "14_1304282255.089" 
    newclosure $P81, $P70
    .lex "spew", $P81
.annotate 'line', 197
    .const 'Sub' $P82 = "15_1304282255.089" 
    newclosure $P95, $P82
    .lex "print", $P95
.annotate 'line', 204
    .const 'Sub' $P96 = "17_1304282255.089" 
    newclosure $P100, $P96
    .lex "say", $P100
.annotate 'line', 222
    .const 'Sub' $P101 = "18_1304282255.089" 
    newclosure $P133, $P101
    .lex "match", $P133
.annotate 'line', 244
    .const 'Sub' $P134 = "20_1304282255.089" 
    newclosure $P220, $P134
    .lex "subst", $P220
.annotate 'line', 270
    new $P221, "Undef"
    .lex "$test_counter", $P221
.annotate 'line', 272
    .const 'Sub' $P222 = "22_1304282255.089" 
    newclosure $P228, $P222
    .lex "plan", $P228
.annotate 'line', 276
    .const 'Sub' $P229 = "23_1304282255.089" 
    newclosure $P250, $P229
    .lex "ok", $P250
.annotate 'line', 291
    .const 'Sub' $P251 = "24_1304282255.089" 
    newclosure $P263, $P251
    .lex "skip", $P263
.annotate 'line', 14
    .const 'Sub' $P265 = "25_1304282255.089" 
    capture_lex $P265
    $P265()
.annotate 'line', 25
    .const 'Sub' $P330 = "27_1304282255.089" 
    capture_lex $P330
    $P330()
.annotate 'line', 27
    .const 'Sub' $P339 = "29_1304282255.089" 
    capture_lex $P339
    $P339()
.annotate 'line', 29
    .const 'Sub' $P348 = "31_1304282255.089" 
    capture_lex $P348
    $P348()
.annotate 'line', 32
    .const 'Sub' $P357 = "33_1304282255.089" 
    capture_lex $P357
    $P357()
.annotate 'line', 79
    .const 'Sub' $P477 = "47_1304282255.089" 
    capture_lex $P477
    $P477()
    find_lex $P661, "open"
    find_lex $P662, "close"
    find_lex $P663, "slurp"
    find_lex $P664, "spew"
    find_lex $P665, "print"
    find_lex $P666, "say"
    find_lex $P667, "match"
    find_lex $P668, "subst"
.annotate 'line', 270
    new $P669, "Integer"
    assign $P669, 0
    store_lex "$test_counter", $P669
    find_lex $P670, "plan"
    find_lex $P671, "ok"
    find_lex $P672, "skip"
    new $P673, "Integer"
    assign $P673, 1
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 1
    .return ()
    .const 'Sub' $P675 = "67_1304282255.089" 
    .return ($P675)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post68") :outer("10_1304282255.089")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1304282255.089" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P679, "1304282253.981"
    isnull $I680, $P679
    if $I680, if_678
    .const 'Sub' $P944 = "10_1304282255.089" 
    $P945 = $P944."get_lexinfo"()
    nqp_get_sc_object $P946, "1304282253.981", 0
    $P945."set_static_lexpad_value"("GLOBALish", $P946)
    .const 'Sub' $P947 = "10_1304282255.089" 
    $P948 = $P947."get_lexinfo"()
    $P948."finish_static_lexpad"()
    .const 'Sub' $P949 = "10_1304282255.089" 
    $P950 = $P949."get_lexinfo"()
    nqp_get_sc_object $P951, "1304282253.981", 0
    $P950."set_static_lexpad_value"("$?PACKAGE", $P951)
    .const 'Sub' $P952 = "10_1304282255.089" 
    $P953 = $P952."get_lexinfo"()
    $P953."finish_static_lexpad"()
    .const 'Sub' $P954 = "10_1304282255.089" 
    $P955 = $P954."get_lexinfo"()
    nqp_get_sc_object $P956, "1304282253.981", 1
    $P955."set_static_lexpad_value"("EXPORTHOW", $P956)
    .const 'Sub' $P957 = "10_1304282255.089" 
    $P958 = $P957."get_lexinfo"()
    $P958."finish_static_lexpad"()
    .const 'Sub' $P959 = "25_1304282255.089" 
    $P960 = $P959."get_lexinfo"()
    nqp_get_sc_object $P961, "1304282253.981", 1
    $P960."set_static_lexpad_value"("$?PACKAGE", $P961)
    .const 'Sub' $P962 = "25_1304282255.089" 
    $P963 = $P962."get_lexinfo"()
    $P963."finish_static_lexpad"()
    .const 'Sub' $P964 = "25_1304282255.089" 
    $P965 = $P964."get_lexinfo"()
    nqp_get_sc_object $P966, "1304282253.981", 1
    $P965."set_static_lexpad_value"("$?CLASS", $P966)
    .const 'Sub' $P967 = "25_1304282255.089" 
    $P968 = $P967."get_lexinfo"()
    $P968."finish_static_lexpad"()
    .const 'Sub' $P969 = "10_1304282255.089" 
    $P970 = $P969."get_lexinfo"()
    nqp_get_sc_object $P971, "1304282253.981", 2
    $P970."set_static_lexpad_value"("int", $P971)
    .const 'Sub' $P972 = "10_1304282255.089" 
    $P973 = $P972."get_lexinfo"()
    $P973."finish_static_lexpad"()
    .const 'Sub' $P974 = "27_1304282255.089" 
    $P975 = $P974."get_lexinfo"()
    nqp_get_sc_object $P976, "1304282253.981", 2
    $P975."set_static_lexpad_value"("$?PACKAGE", $P976)
    .const 'Sub' $P977 = "27_1304282255.089" 
    $P978 = $P977."get_lexinfo"()
    $P978."finish_static_lexpad"()
    .const 'Sub' $P979 = "27_1304282255.089" 
    $P980 = $P979."get_lexinfo"()
    nqp_get_sc_object $P981, "1304282253.981", 2
    $P980."set_static_lexpad_value"("$?CLASS", $P981)
    .const 'Sub' $P982 = "27_1304282255.089" 
    $P983 = $P982."get_lexinfo"()
    $P983."finish_static_lexpad"()
    .const 'Sub' $P984 = "10_1304282255.089" 
    $P985 = $P984."get_lexinfo"()
    nqp_get_sc_object $P986, "1304282253.981", 3
    $P985."set_static_lexpad_value"("num", $P986)
    .const 'Sub' $P987 = "10_1304282255.089" 
    $P988 = $P987."get_lexinfo"()
    $P988."finish_static_lexpad"()
    .const 'Sub' $P989 = "29_1304282255.089" 
    $P990 = $P989."get_lexinfo"()
    nqp_get_sc_object $P991, "1304282253.981", 3
    $P990."set_static_lexpad_value"("$?PACKAGE", $P991)
    .const 'Sub' $P992 = "29_1304282255.089" 
    $P993 = $P992."get_lexinfo"()
    $P993."finish_static_lexpad"()
    .const 'Sub' $P994 = "29_1304282255.089" 
    $P995 = $P994."get_lexinfo"()
    nqp_get_sc_object $P996, "1304282253.981", 3
    $P995."set_static_lexpad_value"("$?CLASS", $P996)
    .const 'Sub' $P997 = "29_1304282255.089" 
    $P998 = $P997."get_lexinfo"()
    $P998."finish_static_lexpad"()
    .const 'Sub' $P999 = "10_1304282255.089" 
    $P1000 = $P999."get_lexinfo"()
    nqp_get_sc_object $P1001, "1304282253.981", 4
    $P1000."set_static_lexpad_value"("str", $P1001)
    .const 'Sub' $P1002 = "10_1304282255.089" 
    $P1003 = $P1002."get_lexinfo"()
    $P1003."finish_static_lexpad"()
    .const 'Sub' $P1004 = "31_1304282255.089" 
    $P1005 = $P1004."get_lexinfo"()
    nqp_get_sc_object $P1006, "1304282253.981", 4
    $P1005."set_static_lexpad_value"("$?PACKAGE", $P1006)
    .const 'Sub' $P1007 = "31_1304282255.089" 
    $P1008 = $P1007."get_lexinfo"()
    $P1008."finish_static_lexpad"()
    .const 'Sub' $P1009 = "31_1304282255.089" 
    $P1010 = $P1009."get_lexinfo"()
    nqp_get_sc_object $P1011, "1304282253.981", 4
    $P1010."set_static_lexpad_value"("$?CLASS", $P1011)
    .const 'Sub' $P1012 = "31_1304282255.089" 
    $P1013 = $P1012."get_lexinfo"()
    $P1013."finish_static_lexpad"()
    .const 'Sub' $P1014 = "10_1304282255.089" 
    $P1015 = $P1014."get_lexinfo"()
    nqp_get_sc_object $P1016, "1304282253.981", 5
    $P1015."set_static_lexpad_value"("NQPMu", $P1016)
    .const 'Sub' $P1017 = "10_1304282255.089" 
    $P1018 = $P1017."get_lexinfo"()
    $P1018."finish_static_lexpad"()
    nqp_get_sc_object $P1019, "1304282253.981", 6
    .const 'Sub' $P1020 = "34_1304282255.089" 
    copy $P1019, $P1020
    nqp_get_sc_object $P1021, "1304282253.981", 7
    .const 'Sub' $P1022 = "35_1304282255.089" 
    copy $P1021, $P1022
    nqp_get_sc_object $P1023, "1304282253.981", 8
    .const 'Sub' $P1024 = "36_1304282255.089" 
    copy $P1023, $P1024
    nqp_get_sc_object $P1025, "1304282253.981", 9
    .const 'Sub' $P1026 = "38_1304282255.089" 
    copy $P1025, $P1026
    nqp_get_sc_object $P1027, "1304282253.981", 10
    .const 'Sub' $P1028 = "40_1304282255.089" 
    copy $P1027, $P1028
    nqp_get_sc_object $P1029, "1304282253.981", 11
    .const 'Sub' $P1030 = "41_1304282255.089" 
    copy $P1029, $P1030
    nqp_get_sc_object $P1031, "1304282253.981", 11
    .const 'Sub' $P1032 = "41_1304282255.089" 
    copy $P1031, $P1032
    .const 'Sub' $P1033 = "42_1304282255.089" 
    nqp_get_sc_object $P1034, "1304282253.981", 5
    new $P1035, "ResizablePMCArray"
    push $P1035, $P1034
    new $P1036, "ResizablePMCArray"
    push $P1036, 2
    set_sub_multisig $P1033, $P1035, $P1036
    nqp_get_sc_object $P1037, "1304282253.981", 12
    .const 'Sub' $P1038 = "42_1304282255.089" 
    copy $P1037, $P1038
    nqp_get_sc_object $P1039, "1304282253.981", 13
    .const 'Sub' $P1040 = "43_1304282255.089" 
    copy $P1039, $P1040
    .const 'Sub' $P1041 = "44_1304282255.089" 
    nqp_get_sc_object $P1042, "1304282253.981", 5
    null $P1043
    new $P1044, "ResizablePMCArray"
    push $P1044, $P1042
    push $P1044, $P1043
    new $P1045, "ResizablePMCArray"
    push $P1045, 2
    push $P1045, 0
    set_sub_multisig $P1041, $P1044, $P1045
    nqp_get_sc_object $P1046, "1304282253.981", 14
    .const 'Sub' $P1047 = "44_1304282255.089" 
    copy $P1046, $P1047
    nqp_get_sc_object $P1048, "1304282253.981", 15
    .const 'Sub' $P1049 = "45_1304282255.089" 
    copy $P1048, $P1049
    .const 'Sub' $P1050 = "33_1304282255.089" 
    $P1051 = $P1050."get_lexinfo"()
    nqp_get_sc_object $P1052, "1304282253.981", 5
    $P1051."set_static_lexpad_value"("$?PACKAGE", $P1052)
    .const 'Sub' $P1053 = "33_1304282255.089" 
    $P1054 = $P1053."get_lexinfo"()
    $P1054."finish_static_lexpad"()
    .const 'Sub' $P1055 = "33_1304282255.089" 
    $P1056 = $P1055."get_lexinfo"()
    nqp_get_sc_object $P1057, "1304282253.981", 5
    $P1056."set_static_lexpad_value"("$?CLASS", $P1057)
    .const 'Sub' $P1058 = "33_1304282255.089" 
    $P1059 = $P1058."get_lexinfo"()
    $P1059."finish_static_lexpad"()
    .const 'Sub' $P1060 = "10_1304282255.089" 
    $P1061 = $P1060."get_lexinfo"()
    nqp_get_sc_object $P1062, "1304282253.981", 16
    $P1061."set_static_lexpad_value"("NQPCapture", $P1062)
    .const 'Sub' $P1063 = "10_1304282255.089" 
    $P1064 = $P1063."get_lexinfo"()
    $P1064."finish_static_lexpad"()
    nqp_get_sc_object $P1065, "1304282253.981", 17
    .const 'Sub' $P1066 = "48_1304282255.089" 
    copy $P1065, $P1066
    nqp_get_sc_object $P1067, "1304282253.981", 18
    .const 'Sub' $P1068 = "49_1304282255.089" 
    copy $P1067, $P1068
    nqp_get_sc_object $P1069, "1304282253.981", 19
    .const 'Sub' $P1070 = "50_1304282255.089" 
    copy $P1069, $P1070
    nqp_get_sc_object $P1071, "1304282253.981", 20
    .const 'Sub' $P1072 = "51_1304282255.089" 
    copy $P1071, $P1072
    nqp_get_sc_object $P1073, "1304282253.981", 21
    .const 'Sub' $P1074 = "52_1304282255.089" 
    copy $P1073, $P1074
    nqp_get_sc_object $P1075, "1304282253.981", 22
    .const 'Sub' $P1076 = "53_1304282255.089" 
    copy $P1075, $P1076
    nqp_get_sc_object $P1077, "1304282253.981", 23
    .const 'Sub' $P1078 = "54_1304282255.089" 
    copy $P1077, $P1078
    nqp_get_sc_object $P1079, "1304282253.981", 24
    .const 'Sub' $P1080 = "55_1304282255.089" 
    copy $P1079, $P1080
    nqp_get_sc_object $P1081, "1304282253.981", 25
    .const 'Sub' $P1082 = "56_1304282255.089" 
    copy $P1081, $P1082
    nqp_get_sc_object $P1083, "1304282253.981", 26
    .const 'Sub' $P1084 = "57_1304282255.089" 
    copy $P1083, $P1084
    nqp_get_sc_object $P1085, "1304282253.981", 27
    .const 'Sub' $P1086 = "58_1304282255.089" 
    copy $P1085, $P1086
    nqp_get_sc_object $P1087, "1304282253.981", 28
    .const 'Sub' $P1088 = "59_1304282255.089" 
    copy $P1087, $P1088
    nqp_get_sc_object $P1089, "1304282253.981", 29
    .const 'Sub' $P1090 = "60_1304282255.089" 
    copy $P1089, $P1090
    nqp_get_sc_object $P1091, "1304282253.981", 30
    .const 'Sub' $P1092 = "61_1304282255.089" 
    copy $P1091, $P1092
    nqp_get_sc_object $P1093, "1304282253.981", 31
    .const 'Sub' $P1094 = "62_1304282255.089" 
    copy $P1093, $P1094
    nqp_get_sc_object $P1095, "1304282253.981", 32
    .const 'Sub' $P1096 = "63_1304282255.089" 
    copy $P1095, $P1096
    nqp_get_sc_object $P1097, "1304282253.981", 33
    .const 'Sub' $P1098 = "64_1304282255.089" 
    copy $P1097, $P1098
    nqp_get_sc_object $P1099, "1304282253.981", 34
    .const 'Sub' $P1100 = "65_1304282255.089" 
    copy $P1099, $P1100
    .const 'Sub' $P1101 = "47_1304282255.089" 
    $P1102 = $P1101."get_lexinfo"()
    nqp_get_sc_object $P1103, "1304282253.981", 16
    $P1102."set_static_lexpad_value"("$?PACKAGE", $P1103)
    .const 'Sub' $P1104 = "47_1304282255.089" 
    $P1105 = $P1104."get_lexinfo"()
    $P1105."finish_static_lexpad"()
    .const 'Sub' $P1106 = "47_1304282255.089" 
    $P1107 = $P1106."get_lexinfo"()
    nqp_get_sc_object $P1108, "1304282253.981", 16
    $P1107."set_static_lexpad_value"("$?CLASS", $P1108)
    .const 'Sub' $P1109 = "47_1304282255.089" 
    $P1110 = $P1109."get_lexinfo"()
    $P1110."finish_static_lexpad"()
    goto if_678_end
  if_678:
    nqp_dynop_setup 
    getinterp $P681
    get_class $P682, "LexPad"
    get_class $P683, "NQPLexPad"
    $P681."hll_map"($P682, $P683)
    nqp_create_sc $P684, "1304282253.981"
    .local pmc cur_sc
    set cur_sc, $P684
    nqp_get_sc_object $P685, "__6MODEL_CORE__", 0
    $P686 = $P685."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P686, cur_sc
    nqp_set_sc_object "1304282253.981", 0, $P686
    .const 'Sub' $P687 = "10_1304282255.089" 
    $P688 = $P687."get_lexinfo"()
    nqp_get_sc_object $P689, "1304282253.981", 0
    $P688."set_static_lexpad_value"("GLOBALish", $P689)
    .const 'Sub' $P690 = "10_1304282255.089" 
    $P691 = $P690."get_lexinfo"()
    $P691."finish_static_lexpad"()
    .const 'Sub' $P692 = "10_1304282255.089" 
    $P693 = $P692."get_lexinfo"()
    nqp_get_sc_object $P694, "1304282253.981", 0
    $P693."set_static_lexpad_value"("$?PACKAGE", $P694)
    .const 'Sub' $P695 = "10_1304282255.089" 
    $P696 = $P695."get_lexinfo"()
    $P696."finish_static_lexpad"()
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P697, "ModuleLoader"
    nqp_get_sc_object $P698, "1304282253.981", 0
    $P697."load_module"("nqpmo", $P698)
    nqp_get_sc_object $P699, "1304282248.255", 85
    $P700 = $P699."new_type"("EXPORTHOW" :named("name"))
    nqp_set_sc_for_object $P700, cur_sc
    nqp_set_sc_object "1304282253.981", 1, $P700
    .const 'Sub' $P701 = "10_1304282255.089" 
    $P702 = $P701."get_lexinfo"()
    nqp_get_sc_object $P703, "1304282253.981", 1
    $P702."set_static_lexpad_value"("EXPORTHOW", $P703)
    .const 'Sub' $P704 = "10_1304282255.089" 
    $P705 = $P704."get_lexinfo"()
    $P705."finish_static_lexpad"()
    .const 'Sub' $P706 = "25_1304282255.089" 
    $P707 = $P706."get_lexinfo"()
    nqp_get_sc_object $P708, "1304282253.981", 1
    $P707."set_static_lexpad_value"("$?PACKAGE", $P708)
    .const 'Sub' $P709 = "25_1304282255.089" 
    $P710 = $P709."get_lexinfo"()
    $P710."finish_static_lexpad"()
    .const 'Sub' $P711 = "25_1304282255.089" 
    $P712 = $P711."get_lexinfo"()
    nqp_get_sc_object $P713, "1304282253.981", 1
    $P712."set_static_lexpad_value"("$?CLASS", $P713)
    .const 'Sub' $P714 = "25_1304282255.089" 
    $P715 = $P714."get_lexinfo"()
    $P715."finish_static_lexpad"()
    nqp_get_sc_object $P716, "1304282248.255", 68
    $P717 = $P716."new_type"("int" :named("name"), "P6int" :named("repr"))
    nqp_set_sc_for_object $P717, cur_sc
    nqp_set_sc_object "1304282253.981", 2, $P717
    .const 'Sub' $P718 = "10_1304282255.089" 
    $P719 = $P718."get_lexinfo"()
    nqp_get_sc_object $P720, "1304282253.981", 2
    $P719."set_static_lexpad_value"("int", $P720)
    .const 'Sub' $P721 = "10_1304282255.089" 
    $P722 = $P721."get_lexinfo"()
    $P722."finish_static_lexpad"()
    .const 'Sub' $P723 = "27_1304282255.089" 
    $P724 = $P723."get_lexinfo"()
    nqp_get_sc_object $P725, "1304282253.981", 2
    $P724."set_static_lexpad_value"("$?PACKAGE", $P725)
    .const 'Sub' $P726 = "27_1304282255.089" 
    $P727 = $P726."get_lexinfo"()
    $P727."finish_static_lexpad"()
    .const 'Sub' $P728 = "27_1304282255.089" 
    $P729 = $P728."get_lexinfo"()
    nqp_get_sc_object $P730, "1304282253.981", 2
    $P729."set_static_lexpad_value"("$?CLASS", $P730)
    .const 'Sub' $P731 = "27_1304282255.089" 
    $P732 = $P731."get_lexinfo"()
    $P732."finish_static_lexpad"()
    nqp_get_sc_object $P733, "1304282248.255", 68
    $P734 = $P733."new_type"("num" :named("name"), "P6num" :named("repr"))
    nqp_set_sc_for_object $P734, cur_sc
    nqp_set_sc_object "1304282253.981", 3, $P734
    .const 'Sub' $P735 = "10_1304282255.089" 
    $P736 = $P735."get_lexinfo"()
    nqp_get_sc_object $P737, "1304282253.981", 3
    $P736."set_static_lexpad_value"("num", $P737)
    .const 'Sub' $P738 = "10_1304282255.089" 
    $P739 = $P738."get_lexinfo"()
    $P739."finish_static_lexpad"()
    .const 'Sub' $P740 = "29_1304282255.089" 
    $P741 = $P740."get_lexinfo"()
    nqp_get_sc_object $P742, "1304282253.981", 3
    $P741."set_static_lexpad_value"("$?PACKAGE", $P742)
    .const 'Sub' $P743 = "29_1304282255.089" 
    $P744 = $P743."get_lexinfo"()
    $P744."finish_static_lexpad"()
    .const 'Sub' $P745 = "29_1304282255.089" 
    $P746 = $P745."get_lexinfo"()
    nqp_get_sc_object $P747, "1304282253.981", 3
    $P746."set_static_lexpad_value"("$?CLASS", $P747)
    .const 'Sub' $P748 = "29_1304282255.089" 
    $P749 = $P748."get_lexinfo"()
    $P749."finish_static_lexpad"()
    nqp_get_sc_object $P750, "1304282248.255", 68
    $P751 = $P750."new_type"("str" :named("name"), "P6str" :named("repr"))
    nqp_set_sc_for_object $P751, cur_sc
    nqp_set_sc_object "1304282253.981", 4, $P751
    .const 'Sub' $P752 = "10_1304282255.089" 
    $P753 = $P752."get_lexinfo"()
    nqp_get_sc_object $P754, "1304282253.981", 4
    $P753."set_static_lexpad_value"("str", $P754)
    .const 'Sub' $P755 = "10_1304282255.089" 
    $P756 = $P755."get_lexinfo"()
    $P756."finish_static_lexpad"()
    .const 'Sub' $P757 = "31_1304282255.089" 
    $P758 = $P757."get_lexinfo"()
    nqp_get_sc_object $P759, "1304282253.981", 4
    $P758."set_static_lexpad_value"("$?PACKAGE", $P759)
    .const 'Sub' $P760 = "31_1304282255.089" 
    $P761 = $P760."get_lexinfo"()
    $P761."finish_static_lexpad"()
    .const 'Sub' $P762 = "31_1304282255.089" 
    $P763 = $P762."get_lexinfo"()
    nqp_get_sc_object $P764, "1304282253.981", 4
    $P763."set_static_lexpad_value"("$?CLASS", $P764)
    .const 'Sub' $P765 = "31_1304282255.089" 
    $P766 = $P765."get_lexinfo"()
    $P766."finish_static_lexpad"()
    nqp_get_sc_object $P767, "1304282248.255", 41
    $P768 = $P767."new_type"("NQPMu" :named("name"))
    nqp_set_sc_for_object $P768, cur_sc
    nqp_set_sc_object "1304282253.981", 5, $P768
    .const 'Sub' $P769 = "10_1304282255.089" 
    $P770 = $P769."get_lexinfo"()
    nqp_get_sc_object $P771, "1304282253.981", 5
    $P770."set_static_lexpad_value"("NQPMu", $P771)
    .const 'Sub' $P772 = "10_1304282255.089" 
    $P773 = $P772."get_lexinfo"()
    $P773."finish_static_lexpad"()
    nqp_get_sc_object $P774, "1304282253.981", 5
    get_how $P775, $P774
    nqp_get_sc_object $P776, "1304282253.981", 5
    .const 'Sub' $P777 = "34_1304282255.089" 
    $P775."add_method"($P776, "CREATE", $P777)
    nqp_get_sc_object $P778, "1304282253.981", 5
    get_how $P779, $P778
    nqp_get_sc_object $P780, "1304282253.981", 5
    .const 'Sub' $P781 = "35_1304282255.089" 
    $P779."add_method"($P780, "bless", $P781)
    nqp_get_sc_object $P782, "1304282253.981", 5
    get_how $P783, $P782
    nqp_get_sc_object $P784, "1304282253.981", 5
    .const 'Sub' $P785 = "36_1304282255.089" 
    $P783."add_method"($P784, "BUILDALL", $P785)
    nqp_get_sc_object $P786, "1304282253.981", 5
    get_how $P787, $P786
    nqp_get_sc_object $P788, "1304282253.981", 5
    .const 'Sub' $P789 = "38_1304282255.089" 
    $P787."add_method"($P788, "BUILD_MAGIC", $P789)
    nqp_get_sc_object $P790, "1304282253.981", 5
    get_how $P791, $P790
    nqp_get_sc_object $P792, "1304282253.981", 5
    .const 'Sub' $P793 = "40_1304282255.089" 
    $P791."add_method"($P792, "new", $P793)
    nqp_get_sc_object $P794, "1304282253.981", 5
    get_how $P795, $P794
    nqp_get_sc_object $P796, "1304282253.981", 5
    .const 'Sub' $P797 = "41_1304282255.089" 
    $P795."add_method"($P796, "Str", $P797)
    nqp_get_sc_object $P798, "1304282253.981", 5
    get_how $P799, $P798
    nqp_get_sc_object $P800, "1304282253.981", 5
    .const 'Sub' $P801 = "41_1304282255.089" 
    $P799."add_parrot_vtable_mapping"($P800, "get_string", $P801)
    .const 'Sub' $P802 = "42_1304282255.089" 
    nqp_get_sc_object $P803, "1304282253.981", 5
    new $P804, "ResizablePMCArray"
    push $P804, $P803
    new $P805, "ResizablePMCArray"
    push $P805, 2
    set_sub_multisig $P802, $P804, $P805
    nqp_get_sc_object $P806, "1304282253.981", 5
    get_how $P807, $P806
    nqp_get_sc_object $P808, "1304282253.981", 5
    .const 'Sub' $P809 = "42_1304282255.089" 
    $P807."add_multi_method"($P808, "Str", $P809)
    nqp_get_sc_object $P810, "1304282253.981", 5
    get_how $P811, $P810
    nqp_get_sc_object $P812, "1304282253.981", 5
    .const 'Sub' $P813 = "43_1304282255.089" 
    $P811."add_method"($P812, "ACCEPTS", $P813)
    .const 'Sub' $P814 = "44_1304282255.089" 
    nqp_get_sc_object $P815, "1304282253.981", 5
    null $P816
    new $P817, "ResizablePMCArray"
    push $P817, $P815
    push $P817, $P816
    new $P818, "ResizablePMCArray"
    push $P818, 2
    push $P818, 0
    set_sub_multisig $P814, $P817, $P818
    nqp_get_sc_object $P819, "1304282253.981", 5
    get_how $P820, $P819
    nqp_get_sc_object $P821, "1304282253.981", 5
    .const 'Sub' $P822 = "44_1304282255.089" 
    $P820."add_multi_method"($P821, "ACCEPTS", $P822)
    nqp_get_sc_object $P823, "1304282253.981", 5
    get_how $P824, $P823
    nqp_get_sc_object $P825, "1304282253.981", 5
    .const 'Sub' $P826 = "45_1304282255.089" 
    $P824."add_method"($P825, "isa", $P826)
    .const 'Sub' $P827 = "33_1304282255.089" 
    $P828 = $P827."get_lexinfo"()
    nqp_get_sc_object $P829, "1304282253.981", 5
    $P828."set_static_lexpad_value"("$?PACKAGE", $P829)
    .const 'Sub' $P830 = "33_1304282255.089" 
    $P831 = $P830."get_lexinfo"()
    $P831."finish_static_lexpad"()
    .const 'Sub' $P832 = "33_1304282255.089" 
    $P833 = $P832."get_lexinfo"()
    nqp_get_sc_object $P834, "1304282253.981", 5
    $P833."set_static_lexpad_value"("$?CLASS", $P834)
    .const 'Sub' $P835 = "33_1304282255.089" 
    $P836 = $P835."get_lexinfo"()
    $P836."finish_static_lexpad"()
    nqp_get_sc_object $P837, "1304282253.981", 5
    get_how $P838, $P837
    nqp_get_sc_object $P839, "1304282253.981", 5
    nqp_get_sc_object $P840, "1304282253.981", 5
    $P838."set_default_parent"($P839, $P840)
    nqp_get_sc_object $P841, "1304282248.255", 41
    $P842 = $P841."new_type"("NQPCapture" :named("name"))
    nqp_set_sc_for_object $P842, cur_sc
    nqp_set_sc_object "1304282253.981", 16, $P842
    .const 'Sub' $P843 = "10_1304282255.089" 
    $P844 = $P843."get_lexinfo"()
    nqp_get_sc_object $P845, "1304282253.981", 16
    $P844."set_static_lexpad_value"("NQPCapture", $P845)
    .const 'Sub' $P846 = "10_1304282255.089" 
    $P847 = $P846."get_lexinfo"()
    $P847."finish_static_lexpad"()
    nqp_get_sc_object $P848, "1304282253.981", 16
    get_how $P849, $P848
    nqp_get_sc_object $P850, "1304282253.981", 16
    nqp_get_sc_object $P851, "1304282248.255", 77
    $P852 = $P851."new"("@!array" :named("name"))
    $P849."add_attribute"($P850, $P852)
    nqp_get_sc_object $P853, "1304282253.981", 16
    get_how $P854, $P853
    nqp_get_sc_object $P855, "1304282253.981", 16
    nqp_get_sc_object $P856, "1304282248.255", 77
    $P857 = $P856."new"("%!hash" :named("name"))
    $P854."add_attribute"($P855, $P857)
    nqp_get_sc_object $P858, "1304282253.981", 16
    get_how $P859, $P858
    nqp_get_sc_object $P860, "1304282253.981", 16
    .const 'Sub' $P861 = "48_1304282255.089" 
    $P859."add_method"($P860, "new", $P861)
    nqp_get_sc_object $P862, "1304282253.981", 16
    get_how $P863, $P862
    nqp_get_sc_object $P864, "1304282253.981", 16
    .const 'Sub' $P865 = "49_1304282255.089" 
    $P863."add_method"($P864, "BUILD", $P865)
    nqp_get_sc_object $P866, "1304282253.981", 16
    get_how $P867, $P866
    nqp_get_sc_object $P868, "1304282253.981", 16
    .const 'Sub' $P869 = "50_1304282255.089" 
    $P867."add_method"($P868, "list", $P869)
    nqp_get_sc_object $P870, "1304282253.981", 16
    get_how $P871, $P870
    nqp_get_sc_object $P872, "1304282253.981", 16
    .const 'Sub' $P873 = "51_1304282255.089" 
    $P871."add_method"($P872, "hash", $P873)
    nqp_get_sc_object $P874, "1304282253.981", 16
    get_how $P875, $P874
    nqp_get_sc_object $P876, "1304282253.981", 16
    .const 'Sub' $P877 = "52_1304282255.089" 
    $P875."add_parrot_vtable_mapping"($P876, "get_pmc_keyed_str", $P877)
    nqp_get_sc_object $P878, "1304282253.981", 16
    get_how $P879, $P878
    nqp_get_sc_object $P880, "1304282253.981", 16
    .const 'Sub' $P881 = "53_1304282255.089" 
    $P879."add_parrot_vtable_mapping"($P880, "get_pmc_keyed", $P881)
    nqp_get_sc_object $P882, "1304282253.981", 16
    get_how $P883, $P882
    nqp_get_sc_object $P884, "1304282253.981", 16
    .const 'Sub' $P885 = "54_1304282255.089" 
    $P883."add_parrot_vtable_mapping"($P884, "get_pmc_keyed_int", $P885)
    nqp_get_sc_object $P886, "1304282253.981", 16
    get_how $P887, $P886
    nqp_get_sc_object $P888, "1304282253.981", 16
    .const 'Sub' $P889 = "55_1304282255.089" 
    $P887."add_parrot_vtable_mapping"($P888, "set_pmc_keyed_str", $P889)
    nqp_get_sc_object $P890, "1304282253.981", 16
    get_how $P891, $P890
    nqp_get_sc_object $P892, "1304282253.981", 16
    .const 'Sub' $P893 = "56_1304282255.089" 
    $P891."add_parrot_vtable_mapping"($P892, "set_pmc_keyed", $P893)
    nqp_get_sc_object $P894, "1304282253.981", 16
    get_how $P895, $P894
    nqp_get_sc_object $P896, "1304282253.981", 16
    .const 'Sub' $P897 = "57_1304282255.089" 
    $P895."add_parrot_vtable_mapping"($P896, "set_pmc_keyed_int", $P897)
    nqp_get_sc_object $P898, "1304282253.981", 16
    get_how $P899, $P898
    nqp_get_sc_object $P900, "1304282253.981", 16
    .const 'Sub' $P901 = "58_1304282255.089" 
    $P899."add_parrot_vtable_mapping"($P900, "exists_keyed", $P901)
    nqp_get_sc_object $P902, "1304282253.981", 16
    get_how $P903, $P902
    nqp_get_sc_object $P904, "1304282253.981", 16
    .const 'Sub' $P905 = "59_1304282255.089" 
    $P903."add_parrot_vtable_mapping"($P904, "exists_keyed_str", $P905)
    nqp_get_sc_object $P906, "1304282253.981", 16
    get_how $P907, $P906
    nqp_get_sc_object $P908, "1304282253.981", 16
    .const 'Sub' $P909 = "60_1304282255.089" 
    $P907."add_parrot_vtable_mapping"($P908, "exists_keyed_int", $P909)
    nqp_get_sc_object $P910, "1304282253.981", 16
    get_how $P911, $P910
    nqp_get_sc_object $P912, "1304282253.981", 16
    .const 'Sub' $P913 = "61_1304282255.089" 
    $P911."add_parrot_vtable_mapping"($P912, "delete_keyed", $P913)
    nqp_get_sc_object $P914, "1304282253.981", 16
    get_how $P915, $P914
    nqp_get_sc_object $P916, "1304282253.981", 16
    .const 'Sub' $P917 = "62_1304282255.089" 
    $P915."add_parrot_vtable_mapping"($P916, "delete_keyed_str", $P917)
    nqp_get_sc_object $P918, "1304282253.981", 16
    get_how $P919, $P918
    nqp_get_sc_object $P920, "1304282253.981", 16
    .const 'Sub' $P921 = "63_1304282255.089" 
    $P919."add_parrot_vtable_mapping"($P920, "delete_keyed_int", $P921)
    nqp_get_sc_object $P922, "1304282253.981", 16
    get_how $P923, $P922
    nqp_get_sc_object $P924, "1304282253.981", 16
    .const 'Sub' $P925 = "64_1304282255.089" 
    $P923."add_parrot_vtable_mapping"($P924, "unshift_pmc", $P925)
    nqp_get_sc_object $P926, "1304282253.981", 16
    get_how $P927, $P926
    nqp_get_sc_object $P928, "1304282253.981", 16
    .const 'Sub' $P929 = "65_1304282255.089" 
    $P927."add_parrot_vtable_mapping"($P928, "push_pmc", $P929)
    .const 'Sub' $P930 = "47_1304282255.089" 
    $P931 = $P930."get_lexinfo"()
    nqp_get_sc_object $P932, "1304282253.981", 16
    $P931."set_static_lexpad_value"("$?PACKAGE", $P932)
    .const 'Sub' $P933 = "47_1304282255.089" 
    $P934 = $P933."get_lexinfo"()
    $P934."finish_static_lexpad"()
    .const 'Sub' $P935 = "47_1304282255.089" 
    $P936 = $P935."get_lexinfo"()
    nqp_get_sc_object $P937, "1304282253.981", 16
    $P936."set_static_lexpad_value"("$?CLASS", $P937)
    .const 'Sub' $P938 = "47_1304282255.089" 
    $P939 = $P938."get_lexinfo"()
    $P939."finish_static_lexpad"()
    nqp_get_sc_object $P940, "1304282253.981", 16
    get_how $P941, $P940
    nqp_get_sc_object $P942, "1304282253.981", 16
    nqp_get_sc_object $P943, "1304282253.981", 5
    $P941."set_default_parent"($P942, $P943)
  if_678_end:
    nqp_get_sc_object $P1111, "1304282253.981", 0
    set_hll_global "GLOBAL", $P1111
.end


.HLL "nqp"

.namespace []
.sub "open"  :subid("11_1304282255.089") :outer("10_1304282255.089")
    .param pmc param_22
    .param pmc param_23 :optional :named("r")
    .param int has_param_23 :opt_flag
    .param pmc param_25 :optional :named("w")
    .param int has_param_25 :opt_flag
    .param pmc param_27 :optional :named("a")
    .param int has_param_27 :opt_flag
    .param pmc param_29 :optional :named("bin")
    .param int has_param_29 :opt_flag
.annotate 'line', 158
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
.annotate 'line', 159
    new $P31, "Undef"
    .lex "$mode", $P31
.annotate 'line', 160
    new $P32, "Undef"
    .lex "$handle", $P32
.annotate 'line', 159
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
.annotate 'line', 160
    new $P42, "FileHandle"
    store_lex "$handle", $P42
.annotate 'line', 161
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
.annotate 'line', 162
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
.annotate 'line', 158
    .return ($P52)
.end


.HLL "nqp"

.namespace []
.sub "close"  :subid("12_1304282255.089") :outer("10_1304282255.089")
    .param pmc param_55
.annotate 'line', 170
    .lex "$handle", param_55
.annotate 'line', 171
    find_lex $P56, "$handle"
    unless_null $P56, vivify_81
    new $P56, "Undef"
  vivify_81:
    $P57 = $P56."close"()
.annotate 'line', 170
    .return ($P57)
.end


.HLL "nqp"

.namespace []
.sub "slurp"  :subid("13_1304282255.089") :outer("10_1304282255.089")
    .param pmc param_60
.annotate 'line', 178
    .lex "$filename", param_60
.annotate 'line', 179
    new $P61, "Undef"
    .lex "$handle", $P61
.annotate 'line', 180
    new $P62, "Undef"
    .lex "$contents", $P62
.annotate 'line', 179
    find_lex $P63, "$filename"
    unless_null $P63, vivify_82
    new $P63, "Undef"
  vivify_82:
    $P64 = "open"($P63, 1 :named("r"))
    store_lex "$handle", $P64
.annotate 'line', 180
    find_lex $P65, "$handle"
    unless_null $P65, vivify_83
    new $P65, "Undef"
  vivify_83:
    $P66 = $P65."readall"()
    store_lex "$contents", $P66
.annotate 'line', 181
    find_lex $P67, "$handle"
    unless_null $P67, vivify_84
    new $P67, "Undef"
  vivify_84:
    $P67."close"()
    find_lex $P68, "$contents"
    unless_null $P68, vivify_85
    new $P68, "Undef"
  vivify_85:
.annotate 'line', 178
    .return ($P68)
.end


.HLL "nqp"

.namespace []
.sub "spew"  :subid("14_1304282255.089") :outer("10_1304282255.089")
    .param pmc param_71
    .param pmc param_72
.annotate 'line', 190
    .lex "$filename", param_71
    .lex "$contents", param_72
.annotate 'line', 191
    new $P73, "Undef"
    .lex "$handle", $P73
    new $P74, "FileHandle"
    store_lex "$handle", $P74
.annotate 'line', 192
    find_lex $P75, "$handle"
    unless_null $P75, vivify_86
    new $P75, "Undef"
  vivify_86:
    find_lex $P76, "$filename"
    unless_null $P76, vivify_87
    new $P76, "Undef"
  vivify_87:
    $P75."open"($P76, "w")
.annotate 'line', 193
    find_lex $P77, "$handle"
    unless_null $P77, vivify_88
    new $P77, "Undef"
  vivify_88:
    find_lex $P78, "$contents"
    unless_null $P78, vivify_89
    new $P78, "Undef"
  vivify_89:
    $P77."print"($P78)
.annotate 'line', 194
    find_lex $P79, "$handle"
    unless_null $P79, vivify_90
    new $P79, "Undef"
  vivify_90:
    $P80 = $P79."close"()
.annotate 'line', 190
    .return ($P80)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "print"  :subid("15_1304282255.089") :outer("10_1304282255.089")
    .param pmc param_83 :slurpy
.annotate 'line', 197
    .const 'Sub' $P89 = "16_1304282255.089" 
    capture_lex $P89
    .lex "@args", param_83
.annotate 'line', 198
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
    .const 'Sub' $P89 = "16_1304282255.089" 
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
.annotate 'line', 197
    .return (1)
.end


.HLL "nqp"

.namespace []
.sub "_block88"  :anon :subid("16_1304282255.089") :outer("15_1304282255.089")
    .param pmc param_90
.annotate 'line', 198
    .lex "$_", param_90
.annotate 'line', 199
    find_lex $P91, "$_"
    unless_null $P91, vivify_93
    new $P91, "Undef"
  vivify_93:
    print $P91
.annotate 'line', 198
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "say"  :subid("17_1304282255.089") :outer("10_1304282255.089")
    .param pmc param_97 :slurpy
.annotate 'line', 204
    .lex "@args", param_97
.annotate 'line', 205
    find_lex $P98, "@args"
    unless_null $P98, vivify_94
    $P98 = root_new ['parrot';'ResizablePMCArray']
  vivify_94:
    $P99 = "print"($P98 :flat, "\n")
.annotate 'line', 204
    .return ($P99)
.end


.HLL "nqp"

.namespace []
.sub "match"  :subid("18_1304282255.089") :outer("10_1304282255.089")
    .param pmc param_102
    .param pmc param_103
    .param pmc param_104 :optional :named("global")
    .param int has_param_104 :opt_flag
.annotate 'line', 222
    .const 'Sub' $P114 = "19_1304282255.089" 
    capture_lex $P114
    .lex "$text", param_102
    .lex "$regex", param_103
    if has_param_104, optparam_95
    new $P105, "Undef"
    set param_104, $P105
  optparam_95:
    .lex "$global", param_104
.annotate 'line', 223
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
.annotate 'line', 224
    find_lex $P112, "$global"
    unless_null $P112, vivify_98
    new $P112, "Undef"
  vivify_98:
    if $P112, if_111
.annotate 'line', 232
    find_lex $P132, "$match"
    unless_null $P132, vivify_99
    new $P132, "Undef"
  vivify_99:
    set $P110, $P132
.annotate 'line', 224
    goto if_111_end
  if_111:
    .const 'Sub' $P114 = "19_1304282255.089" 
    capture_lex $P114
    $P131 = $P114()
    set $P110, $P131
  if_111_end:
.annotate 'line', 222
    .return ($P110)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "_block113"  :anon :subid("19_1304282255.089") :outer("18_1304282255.089")
.annotate 'line', 225
    $P115 = root_new ['parrot';'ResizablePMCArray']
    .lex "@matches", $P115
.annotate 'line', 224
    find_lex $P116, "@matches"
    unless_null $P116, vivify_100
    $P116 = root_new ['parrot';'ResizablePMCArray']
  vivify_100:
.annotate 'line', 226
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
.annotate 'line', 227
    find_lex $P118, "@matches"
    unless_null $P118, vivify_102
    $P118 = root_new ['parrot';'ResizablePMCArray']
  vivify_102:
    find_lex $P119, "$match"
    unless_null $P119, vivify_103
    new $P119, "Undef"
  vivify_103:
    $P118."push"($P119)
.annotate 'line', 228
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
.annotate 'line', 226
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
.annotate 'line', 224
    .return ($P130)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "subst"  :subid("20_1304282255.089") :outer("10_1304282255.089")
    .param pmc param_135
    .param pmc param_136
    .param pmc param_137
    .param pmc param_138 :optional :named("global")
    .param int has_param_138 :opt_flag
.annotate 'line', 244
    .const 'Sub' $P165 = "21_1304282255.089" 
    capture_lex $P165
    .lex "$text", param_135
    .lex "$regex", param_136
    .lex "$repl", param_137
    if has_param_138, optparam_109
    new $P139, "Undef"
    set param_138, $P139
  optparam_109:
    .lex "$global", param_138
.annotate 'line', 245
    $P140 = root_new ['parrot';'ResizablePMCArray']
    .lex "@matches", $P140
.annotate 'line', 247
    new $P141, "Undef"
    .lex "$is_code", $P141
.annotate 'line', 248
    new $P142, "Undef"
    .lex "$offset", $P142
.annotate 'line', 249
    new $P143, "Undef"
    .lex "$result", $P143
.annotate 'line', 260
    new $P144, "Undef"
    .lex "$chars", $P144
.annotate 'line', 245
    find_lex $P147, "$global"
    unless_null $P147, vivify_110
    new $P147, "Undef"
  vivify_110:
    if $P147, if_146
.annotate 'line', 246
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
.annotate 'line', 245
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
.annotate 'line', 247
    find_lex $P155, "$repl"
    unless_null $P155, vivify_115
    new $P155, "Undef"
  vivify_115:
    isa $I156, $P155, "Sub"
    new $P157, 'Integer'
    set $P157, $I156
    store_lex "$is_code", $P157
.annotate 'line', 248
    new $P158, "Integer"
    assign $P158, 0
    store_lex "$offset", $P158
.annotate 'line', 249
    new $P159, "StringBuilder"
    store_lex "$result", $P159
.annotate 'line', 251
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
    .const 'Sub' $P165 = "21_1304282255.089" 
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
.annotate 'line', 260
    find_lex $P200, "$text"
    unless_null $P200, vivify_132
    new $P200, "Undef"
  vivify_132:
    set $S201, $P200
    length $I202, $S201
    new $P203, 'Integer'
    set $P203, $I202
    store_lex "$chars", $P203
.annotate 'line', 262
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
.annotate 'line', 261
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
.annotate 'line', 264
    find_lex $P218, "$result"
    unless_null $P218, vivify_139
    new $P218, "Undef"
  vivify_139:
    set $S219, $P218
.annotate 'line', 244
    .return ($S219)
.end


.HLL "nqp"

.namespace []
.sub "_block164"  :anon :subid("21_1304282255.089") :outer("20_1304282255.089")
    .param pmc param_166
.annotate 'line', 251
    .lex "$match", param_166
.annotate 'line', 252
    find_lex $P169, "$match"
    unless_null $P169, vivify_118
    new $P169, "Undef"
  vivify_118:
    if $P169, if_168
    set $P167, $P169
    goto if_168_end
  if_168:
.annotate 'line', 254
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
.annotate 'line', 253
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
.annotate 'line', 255
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
.annotate 'line', 256
    find_lex $P195, "$match"
    unless_null $P195, vivify_131
    new $P195, "Undef"
  vivify_131:
    $P196 = $P195."to"()
    store_lex "$offset", $P196
.annotate 'line', 252
    set $P167, $P196
  if_168_end:
.annotate 'line', 251
    .return ($P167)
.end


.HLL "nqp"

.namespace []
.sub "plan"  :subid("22_1304282255.089") :outer("10_1304282255.089")
    .param pmc param_223
.annotate 'line', 272
    .lex "$quantity", param_223
.annotate 'line', 273
    new $P224, 'String'
    set $P224, "1.."
    find_lex $P225, "$quantity"
    unless_null $P225, vivify_140
    new $P225, "Undef"
  vivify_140:
    concat $P226, $P224, $P225
    $P227 = "say"($P226)
.annotate 'line', 272
    .return ($P227)
.end


.HLL "nqp"

.namespace []
.sub "ok"  :subid("23_1304282255.089") :outer("10_1304282255.089")
    .param pmc param_230
    .param pmc param_231 :optional
    .param int has_param_231 :opt_flag
.annotate 'line', 276
    .lex "$condition", param_230
    if has_param_231, optparam_141
    new $P232, "Undef"
    set param_231, $P232
  optparam_141:
    .lex "$desc", param_231
.annotate 'line', 277
    find_lex $P233, "$test_counter"
    unless_null $P233, vivify_142
    new $P233, "Undef"
  vivify_142:
    add $P234, $P233, 1
    store_lex "$test_counter", $P234
.annotate 'line', 279
    find_lex $P236, "$condition"
    unless_null $P236, vivify_143
    new $P236, "Undef"
  vivify_143:
    if $P236, unless_235_end
.annotate 'line', 280
    "print"("not ")
  unless_235_end:
.annotate 'line', 282
    new $P237, 'String'
    set $P237, "ok "
    find_lex $P238, "$test_counter"
    unless_null $P238, vivify_144
    new $P238, "Undef"
  vivify_144:
    concat $P239, $P237, $P238
    "print"($P239)
.annotate 'line', 283
    find_lex $P241, "$desc"
    unless_null $P241, vivify_145
    new $P241, "Undef"
  vivify_145:
    unless $P241, if_240_end
.annotate 'line', 284
    new $P242, 'String'
    set $P242, " - "
    find_lex $P243, "$desc"
    unless_null $P243, vivify_146
    new $P243, "Undef"
  vivify_146:
    concat $P244, $P242, $P243
    "print"($P244)
  if_240_end:
.annotate 'line', 286
    "print"("\n")
.annotate 'line', 288
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
.annotate 'line', 276
    .return ($P245)
.end


.HLL "nqp"

.namespace []
.sub "skip"  :subid("24_1304282255.089") :outer("10_1304282255.089")
    .param pmc param_252
.annotate 'line', 291
    .lex "$desc", param_252
.annotate 'line', 292
    find_lex $P253, "$test_counter"
    unless_null $P253, vivify_148
    new $P253, "Undef"
  vivify_148:
    add $P254, $P253, 1
    store_lex "$test_counter", $P254
.annotate 'line', 293
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
.annotate 'line', 291
    .return ($P262)
.end


.HLL "nqp"

.namespace []
.sub "_block264"  :anon :subid("25_1304282255.089") :outer("10_1304282255.089")
.annotate 'line', 14
    .const 'Sub' $P325 = "26_1304282255.089" 
    capture_lex $P325
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
    set $P286, $P283["NQPAttribute"]
    unless_null $P286, vivify_156
    get_hll_global $P284, "GLOBAL"
    get_who $P285, $P284
    set $P286, $P285["NQPAttribute"]
  vivify_156:
    find_lex $P287, "$?PACKAGE"
    unless_null $P287, vivify_157
    new $P287, "Undef"
    store_lex "$?PACKAGE", $P287
  vivify_157:
    get_who $P288, $P287
    set $P288["class-attr"], $P286
.annotate 'line', 18
    find_lex $P289, "$?PACKAGE"
    get_who $P290, $P289
    set $P293, $P290["NQPClassHOW"]
    unless_null $P293, vivify_158
    get_hll_global $P291, "GLOBAL"
    get_who $P292, $P291
    set $P293, $P292["NQPClassHOW"]
  vivify_158:
    find_lex $P294, "$?PACKAGE"
    unless_null $P294, vivify_159
    new $P294, "Undef"
    store_lex "$?PACKAGE", $P294
  vivify_159:
    get_who $P295, $P294
    set $P295["grammar"], $P293
.annotate 'line', 19
    find_lex $P296, "$?PACKAGE"
    get_who $P297, $P296
    set $P300, $P297["NQPAttribute"]
    unless_null $P300, vivify_160
    get_hll_global $P298, "GLOBAL"
    get_who $P299, $P298
    set $P300, $P299["NQPAttribute"]
  vivify_160:
    find_lex $P301, "$?PACKAGE"
    unless_null $P301, vivify_161
    new $P301, "Undef"
    store_lex "$?PACKAGE", $P301
  vivify_161:
    get_who $P302, $P301
    set $P302["grammar-attr"], $P300
.annotate 'line', 20
    find_lex $P303, "$?PACKAGE"
    get_who $P304, $P303
    set $P307, $P304["NQPParametricRoleHOW"]
    unless_null $P307, vivify_162
    get_hll_global $P305, "GLOBAL"
    get_who $P306, $P305
    set $P307, $P306["NQPParametricRoleHOW"]
  vivify_162:
    find_lex $P308, "$?PACKAGE"
    unless_null $P308, vivify_163
    new $P308, "Undef"
    store_lex "$?PACKAGE", $P308
  vivify_163:
    get_who $P309, $P308
    set $P309["role"], $P307
.annotate 'line', 21
    find_lex $P310, "$?PACKAGE"
    get_who $P311, $P310
    set $P314, $P311["NQPAttribute"]
    unless_null $P314, vivify_164
    get_hll_global $P312, "GLOBAL"
    get_who $P313, $P312
    set $P314, $P313["NQPAttribute"]
  vivify_164:
    find_lex $P315, "$?PACKAGE"
    unless_null $P315, vivify_165
    new $P315, "Undef"
    store_lex "$?PACKAGE", $P315
  vivify_165:
    get_who $P316, $P315
    set $P316["role-attr"], $P314
.annotate 'line', 22
    find_lex $P317, "$?PACKAGE"
    get_who $P318, $P317
    set $P321, $P318["NQPNativeHOW"]
    unless_null $P321, vivify_166
    get_hll_global $P319, "GLOBAL"
    get_who $P320, $P319
    set $P321, $P320["NQPNativeHOW"]
  vivify_166:
    find_lex $P322, "$?PACKAGE"
    unless_null $P322, vivify_167
    new $P322, "Undef"
    store_lex "$?PACKAGE", $P322
  vivify_167:
    get_who $P323, $P322
    set $P323["native"], $P321
.annotate 'line', 14
    .return ($P321)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post151") :outer("25_1304282255.089")
.annotate 'line', 14
    .const 'Sub' $P265 = "25_1304282255.089" 
    .local pmc block
    set block, $P265
    .const 'Sub' $P325 = "26_1304282255.089" 
    capture_lex $P325
    $P325()
.end


.HLL "nqp"

.namespace []
.sub "_block324"  :anon :subid("26_1304282255.089") :outer("25_1304282255.089")
.annotate 'line', 14
    nqp_get_sc_object $P326, "1304282253.981", 1
    .local pmc type_obj
    set type_obj, $P326
    get_how $P327, type_obj
    $P328 = $P327."compose"(type_obj)
    .return ($P328)
.end


.HLL "nqp"

.namespace []
.sub "_block329"  :anon :subid("27_1304282255.089") :outer("10_1304282255.089")
.annotate 'line', 25
    .const 'Sub' $P334 = "28_1304282255.089" 
    capture_lex $P334
    .lex "$?PACKAGE", $P331
    .lex "$?CLASS", $P332
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post168") :outer("27_1304282255.089")
.annotate 'line', 25
    .const 'Sub' $P330 = "27_1304282255.089" 
    .local pmc block
    set block, $P330
    .const 'Sub' $P334 = "28_1304282255.089" 
    capture_lex $P334
    $P334()
.end


.HLL "nqp"

.namespace []
.sub "_block333"  :anon :subid("28_1304282255.089") :outer("27_1304282255.089")
.annotate 'line', 25
    nqp_get_sc_object $P335, "1304282253.981", 2
    .local pmc type_obj
    set type_obj, $P335
    get_how $P336, type_obj
    $P337 = $P336."compose"(type_obj)
    .return ($P337)
.end


.HLL "nqp"

.namespace []
.sub "_block338"  :anon :subid("29_1304282255.089") :outer("10_1304282255.089")
.annotate 'line', 27
    .const 'Sub' $P343 = "30_1304282255.089" 
    capture_lex $P343
    .lex "$?PACKAGE", $P340
    .lex "$?CLASS", $P341
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post169") :outer("29_1304282255.089")
.annotate 'line', 27
    .const 'Sub' $P339 = "29_1304282255.089" 
    .local pmc block
    set block, $P339
    .const 'Sub' $P343 = "30_1304282255.089" 
    capture_lex $P343
    $P343()
.end


.HLL "nqp"

.namespace []
.sub "_block342"  :anon :subid("30_1304282255.089") :outer("29_1304282255.089")
.annotate 'line', 27
    nqp_get_sc_object $P344, "1304282253.981", 3
    .local pmc type_obj
    set type_obj, $P344
    get_how $P345, type_obj
    $P346 = $P345."compose"(type_obj)
    .return ($P346)
.end


.HLL "nqp"

.namespace []
.sub "_block347"  :anon :subid("31_1304282255.089") :outer("10_1304282255.089")
.annotate 'line', 29
    .const 'Sub' $P352 = "32_1304282255.089" 
    capture_lex $P352
    .lex "$?PACKAGE", $P349
    .lex "$?CLASS", $P350
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post170") :outer("31_1304282255.089")
.annotate 'line', 29
    .const 'Sub' $P348 = "31_1304282255.089" 
    .local pmc block
    set block, $P348
    .const 'Sub' $P352 = "32_1304282255.089" 
    capture_lex $P352
    $P352()
.end


.HLL "nqp"

.namespace []
.sub "_block351"  :anon :subid("32_1304282255.089") :outer("31_1304282255.089")
.annotate 'line', 29
    nqp_get_sc_object $P353, "1304282253.981", 4
    .local pmc type_obj
    set type_obj, $P353
    get_how $P354, type_obj
    $P355 = $P354."compose"(type_obj)
    .return ($P355)
.end


.HLL "nqp"

.namespace []
.sub "_block356"  :anon :subid("33_1304282255.089") :outer("10_1304282255.089")
.annotate 'line', 32
    .const 'Sub' $P472 = "46_1304282255.089" 
    capture_lex $P472
    .const 'Sub' $P462 = "45_1304282255.089" 
    capture_lex $P462
    .const 'Sub' $P454 = "44_1304282255.089" 
    capture_lex $P454
    .const 'Sub' $P450 = "43_1304282255.089" 
    capture_lex $P450
    .const 'Sub' $P442 = "42_1304282255.089" 
    capture_lex $P442
    .const 'Sub' $P439 = "41_1304282255.089" 
    capture_lex $P439
    .const 'Sub' $P433 = "40_1304282255.089" 
    capture_lex $P433
    .const 'Sub' $P395 = "38_1304282255.089" 
    capture_lex $P395
    .const 'Sub' $P374 = "36_1304282255.089" 
    capture_lex $P374
    .const 'Sub' $P364 = "35_1304282255.089" 
    capture_lex $P364
    .const 'Sub' $P360 = "34_1304282255.089" 
    capture_lex $P360
    .lex "$?PACKAGE", $P358
    .lex "$?CLASS", $P359
.annotate 'line', 73
    .const 'Sub' $P462 = "45_1304282255.089" 
    newclosure $P470, $P462
.annotate 'line', 32
    .return ($P470)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post171") :outer("33_1304282255.089")
.annotate 'line', 32
    .const 'Sub' $P357 = "33_1304282255.089" 
    .local pmc block
    set block, $P357
    .const 'Sub' $P472 = "46_1304282255.089" 
    capture_lex $P472
    $P472()
.end


.HLL "nqp"

.namespace []
.sub "_block471"  :anon :subid("46_1304282255.089") :outer("33_1304282255.089")
.annotate 'line', 32
    nqp_get_sc_object $P473, "1304282253.981", 5
    .local pmc type_obj
    set type_obj, $P473
    get_how $P474, type_obj
    $P475 = $P474."compose"(type_obj)
    .return ($P475)
.end


.HLL "nqp"

.namespace []
.sub "CREATE"  :subid("34_1304282255.089") :outer("33_1304282255.089")
    .param pmc param_361
.annotate 'line', 33
    .lex "self", param_361
.annotate 'line', 34
    find_lex $P362, "self"
    repr_instance_of $P363, $P362
.annotate 'line', 33
    .return ($P363)
.end


.HLL "nqp"

.namespace []
.sub "bless"  :subid("35_1304282255.089") :outer("33_1304282255.089")
    .param pmc param_365
    .param pmc param_367 :slurpy :named
.annotate 'line', 37
    .lex "$self", param_365
    find_lex $P366, "$self"
    .lex "self", $P366
    .lex "%attributes", param_367
.annotate 'line', 38
    new $P368, "Undef"
    .lex "$instance", $P368
    find_lex $P369, "self"
    $P370 = $P369."CREATE"()
    store_lex "$instance", $P370
.annotate 'line', 39
    find_lex $P371, "$instance"
    unless_null $P371, vivify_172
    new $P371, "Undef"
  vivify_172:
    find_lex $P372, "%attributes"
    unless_null $P372, vivify_173
    $P372 = root_new ['parrot';'Hash']
  vivify_173:
    $P371."BUILDALL"($P372 :flat)
    find_lex $P373, "$instance"
    unless_null $P373, vivify_174
    new $P373, "Undef"
  vivify_174:
.annotate 'line', 37
    .return ($P373)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "BUILDALL"  :subid("36_1304282255.089") :outer("33_1304282255.089")
    .param pmc param_375
    .param pmc param_377 :slurpy :named
.annotate 'line', 43
    .const 'Sub' $P386 = "37_1304282255.089" 
    capture_lex $P386
    .lex "$self", param_375
    find_lex $P376, "$self"
    .lex "self", $P376
    .lex "%attributes", param_377
.annotate 'line', 44
    find_lex $P379, "$self"
    unless_null $P379, vivify_175
    new $P379, "Undef"
  vivify_175:
    get_how $P380, $P379
    find_lex $P381, "$self"
    unless_null $P381, vivify_176
    new $P381, "Undef"
  vivify_176:
    $P382 = $P380."parents"($P381)
    defined $I383, $P382
    unless $I383, for_undef_177
    iter $P378, $P382
    new $P393, 'ExceptionHandler'
    set_label $P393, loop392_handler
    $P393."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P393
  loop392_test:
    unless $P378, loop392_done
    shift $P384, $P378
  loop392_redo:
    .const 'Sub' $P386 = "37_1304282255.089" 
    capture_lex $P386
    $P386($P384)
  loop392_next:
    goto loop392_test
  loop392_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P394, exception, 'type'
    eq $P394, .CONTROL_LOOP_NEXT, loop392_next
    eq $P394, .CONTROL_LOOP_REDO, loop392_redo
  loop392_done:
    pop_eh 
  for_undef_177:
.annotate 'line', 43
    .return ($P378)
.end


.HLL "nqp"

.namespace []
.sub "_block385"  :anon :subid("37_1304282255.089") :outer("36_1304282255.089")
    .param pmc param_387
.annotate 'line', 44
    .lex "$class", param_387
.annotate 'line', 45
    find_lex $P388, "$self"
    unless_null $P388, vivify_178
    new $P388, "Undef"
  vivify_178:
    find_lex $P389, "$class"
    unless_null $P389, vivify_179
    new $P389, "Undef"
  vivify_179:
    find_lex $P390, "%attributes"
    unless_null $P390, vivify_180
    $P390 = root_new ['parrot';'Hash']
  vivify_180:
    $P391 = $P388."BUILD_MAGIC"($P389, $P390 :flat)
.annotate 'line', 44
    .return ($P391)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "BUILD_MAGIC"  :subid("38_1304282255.089") :outer("33_1304282255.089")
    .param pmc param_396
    .param pmc param_398
    .param pmc param_399 :slurpy :named
.annotate 'line', 49
    .const 'Sub' $P408 = "39_1304282255.089" 
    capture_lex $P408
    .lex "$self", param_396
    find_lex $P397, "$self"
    .lex "self", $P397
    .lex "$type", param_398
    .lex "%attributes", param_399
.annotate 'line', 50
    find_lex $P401, "$type"
    unless_null $P401, vivify_181
    new $P401, "Undef"
  vivify_181:
    get_how $P402, $P401
    find_lex $P403, "$type"
    unless_null $P403, vivify_182
    new $P403, "Undef"
  vivify_182:
    $P404 = $P402."attributes"($P403, 1 :named("local"))
    defined $I405, $P404
    unless $I405, for_undef_183
    iter $P400, $P404
    new $P431, 'ExceptionHandler'
    set_label $P431, loop430_handler
    $P431."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P431
  loop430_test:
    unless $P400, loop430_done
    shift $P406, $P400
  loop430_redo:
    .const 'Sub' $P408 = "39_1304282255.089" 
    capture_lex $P408
    $P408($P406)
  loop430_next:
    goto loop430_test
  loop430_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P432, exception, 'type'
    eq $P432, .CONTROL_LOOP_NEXT, loop430_next
    eq $P432, .CONTROL_LOOP_REDO, loop430_redo
  loop430_done:
    pop_eh 
  for_undef_183:
.annotate 'line', 49
    .return ($P400)
.end


.HLL "nqp"

.namespace []
.sub "_block407"  :anon :subid("39_1304282255.089") :outer("38_1304282255.089")
    .param pmc param_411
.annotate 'line', 51
    new $P409, "Undef"
    .lex "$name", $P409
.annotate 'line', 52
    new $P410, "Undef"
    .lex "$shortname", $P410
    .lex "$_", param_411
.annotate 'line', 51
    find_lex $P412, "$_"
    unless_null $P412, vivify_184
    new $P412, "Undef"
  vivify_184:
    $P413 = $P412."name"()
    store_lex "$name", $P413
.annotate 'line', 52
    find_lex $P414, "$name"
    unless_null $P414, vivify_185
    new $P414, "Undef"
  vivify_185:
    set $S415, $P414
    substr $S416, $S415, 2
    new $P417, 'String'
    set $P417, $S416
    store_lex "$shortname", $P417
.annotate 'line', 53
    find_lex $P421, "$shortname"
    unless_null $P421, vivify_186
    new $P421, "Undef"
  vivify_186:
    find_lex $P420, "%attributes"
    unless_null $P420, vivify_187
    $P420 = root_new ['parrot';'Hash']
  vivify_187:
    exists $I422, $P420[$P421]
    if $I422, if_419
    new $P418, 'Integer'
    set $P418, $I422
    goto if_419_end
  if_419:
.annotate 'line', 54
    find_lex $P423, "$self"
    unless_null $P423, vivify_188
    new $P423, "Undef"
  vivify_188:
    find_lex $P424, "$type"
    unless_null $P424, vivify_189
    new $P424, "Undef"
  vivify_189:
    find_lex $P425, "$name"
    unless_null $P425, vivify_190
    new $P425, "Undef"
  vivify_190:
    set $S426, $P425
    find_lex $P427, "$shortname"
    unless_null $P427, vivify_191
    new $P427, "Undef"
  vivify_191:
    find_lex $P428, "%attributes"
    unless_null $P428, vivify_192
    $P428 = root_new ['parrot';'Hash']
  vivify_192:
    set $P429, $P428[$P427]
    unless_null $P429, vivify_193
    new $P429, "Undef"
  vivify_193:
    setattribute $P423, $P424, $S426, $P429
  if_419_end:
.annotate 'line', 50
    .return ($P418)
.end


.HLL "nqp"

.namespace []
.sub "new"  :subid("40_1304282255.089") :outer("33_1304282255.089")
    .param pmc param_434
    .param pmc param_435 :slurpy :named
.annotate 'line', 59
    .lex "self", param_434
    .lex "%attributes", param_435
.annotate 'line', 60
    find_lex $P436, "self"
    find_lex $P437, "%attributes"
    unless_null $P437, vivify_194
    $P437 = root_new ['parrot';'Hash']
  vivify_194:
    $P438 = $P436."bless"($P437 :flat)
.annotate 'line', 59
    .return ($P438)
.end


.HLL "nqp"

.namespace []
.sub "Str" :instanceof("DispatcherSub") :subid("41_1304282255.089") :outer("33_1304282255.089")
    .param pmc param_440
.annotate 'line', 59
    .lex "self", param_440
    multi_dispatch_over_lexical_candidates $P441
    .return ($P441)
.end


.HLL "nqp"

.namespace []
.sub "Str"  :subid("42_1304282255.089") :outer("33_1304282255.089")
    .param pmc param_443
.annotate 'line', 64
    .lex "$self", param_443
    find_lex $P444, "$self"
    .lex "self", $P444
.annotate 'line', 65
    find_lex $P445, "self"
    get_how $P446, $P445
    find_lex $P447, "self"
    $P448 = $P446."name"($P447)
    concat $P449, $P448, "()"
.annotate 'line', 64
    .return ($P449)
.end


.HLL "nqp"

.namespace []
.sub "ACCEPTS" :instanceof("DispatcherSub") :subid("43_1304282255.089") :outer("33_1304282255.089")
    .param pmc param_451
    .param pmc param_452
.annotate 'line', 64
    .lex "self", param_451
.annotate 'line', 68
    .lex "$topic", param_452
.annotate 'line', 64
    multi_dispatch_over_lexical_candidates $P453
    .return ($P453)
.end


.HLL "nqp"

.namespace []
.sub "ACCEPTS"  :subid("44_1304282255.089") :outer("33_1304282255.089")
    .param pmc param_455
    .param pmc param_457
.annotate 'line', 69
    .lex "$self", param_455
    find_lex $P456, "$self"
    .lex "self", $P456
    .lex "$topic", param_457
.annotate 'line', 70
    find_lex $P458, "$topic"
    unless_null $P458, vivify_195
    new $P458, "Undef"
  vivify_195:
    find_lex $P459, "self"
    get_what $P460, $P459
    type_check $I461, $P458, $P460
.annotate 'line', 69
    .return ($I461)
.end


.HLL "nqp"

.namespace []
.sub "isa"  :subid("45_1304282255.089") :outer("33_1304282255.089")
    .param pmc param_463
    .param pmc param_464
.annotate 'line', 73
    .lex "self", param_463
    .lex "$type", param_464
.annotate 'line', 74
    find_lex $P465, "self"
    get_how $P466, $P465
    find_lex $P467, "self"
    find_lex $P468, "$type"
    unless_null $P468, vivify_196
    new $P468, "Undef"
  vivify_196:
    $P469 = $P466."isa"($P467, $P468)
.annotate 'line', 73
    .return ($P469)
.end


.HLL "nqp"

.namespace []
.sub "_block476"  :anon :subid("47_1304282255.089") :outer("10_1304282255.089")
.annotate 'line', 79
    .const 'Sub' $P657 = "66_1304282255.089" 
    capture_lex $P657
    .const 'Sub' $P648 = "65_1304282255.089" 
    capture_lex $P648
    .const 'Sub' $P640 = "64_1304282255.089" 
    capture_lex $P640
    .const 'Sub' $P632 = "63_1304282255.089" 
    capture_lex $P632
    .const 'Sub' $P624 = "62_1304282255.089" 
    capture_lex $P624
    .const 'Sub' $P616 = "61_1304282255.089" 
    capture_lex $P616
    .const 'Sub' $P607 = "60_1304282255.089" 
    capture_lex $P607
    .const 'Sub' $P598 = "59_1304282255.089" 
    capture_lex $P598
    .const 'Sub' $P589 = "58_1304282255.089" 
    capture_lex $P589
    .const 'Sub' $P578 = "57_1304282255.089" 
    capture_lex $P578
    .const 'Sub' $P568 = "56_1304282255.089" 
    capture_lex $P568
    .const 'Sub' $P558 = "55_1304282255.089" 
    capture_lex $P558
    .const 'Sub' $P540 = "54_1304282255.089" 
    capture_lex $P540
    .const 'Sub' $P523 = "53_1304282255.089" 
    capture_lex $P523
    .const 'Sub' $P506 = "52_1304282255.089" 
    capture_lex $P506
    .const 'Sub' $P500 = "51_1304282255.089" 
    capture_lex $P500
    .const 'Sub' $P495 = "50_1304282255.089" 
    capture_lex $P495
    .const 'Sub' $P487 = "49_1304282255.089" 
    capture_lex $P487
    .const 'Sub' $P480 = "48_1304282255.089" 
    capture_lex $P480
    .lex "$?PACKAGE", $P478
    .lex "$?CLASS", $P479
.annotate 'line', 142
    .const 'Sub' $P648 = "65_1304282255.089" 
    newclosure $P655, $P648
.annotate 'line', 79
    .return ($P655)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post197") :outer("47_1304282255.089")
.annotate 'line', 79
    .const 'Sub' $P477 = "47_1304282255.089" 
    .local pmc block
    set block, $P477
    .const 'Sub' $P657 = "66_1304282255.089" 
    capture_lex $P657
    $P657()
.end


.HLL "nqp"

.namespace []
.sub "_block656"  :anon :subid("66_1304282255.089") :outer("47_1304282255.089")
.annotate 'line', 79
    nqp_get_sc_object $P658, "1304282253.981", 16
    .local pmc type_obj
    set type_obj, $P658
    get_how $P659, type_obj
    $P660 = $P659."compose"(type_obj)
    .return ($P660)
.end


.HLL "nqp"

.namespace []
.sub "new"  :subid("48_1304282255.089") :outer("47_1304282255.089")
    .param pmc param_481
.annotate 'line', 83
    .lex "self", param_481
.annotate 'line', 84
    new $P482, "Undef"
    .lex "$n", $P482
    find_lex $P483, "self"
    $P484 = $P483."CREATE"()
    store_lex "$n", $P484
.annotate 'line', 85
    find_lex $P485, "$n"
    unless_null $P485, vivify_198
    new $P485, "Undef"
  vivify_198:
    $P485."BUILD"()
    find_lex $P486, "$n"
    unless_null $P486, vivify_199
    new $P486, "Undef"
  vivify_199:
.annotate 'line', 83
    .return ($P486)
.end


.HLL "nqp"

.namespace []
.sub "BUILD"  :subid("49_1304282255.089") :outer("47_1304282255.089")
    .param pmc param_488
.annotate 'line', 89
    .lex "self", param_488
.annotate 'line', 90
    new $P489, "ResizablePMCArray"
    find_lex $P490, "self"
    find_lex $P491, "$?CLASS"
    setattribute $P490, $P491, "@!array", $P489
.annotate 'line', 91
    new $P492, "Hash"
    find_lex $P493, "self"
    find_lex $P494, "$?CLASS"
    setattribute $P493, $P494, "%!hash", $P492
.annotate 'line', 89
    .return ($P492)
.end


.HLL "nqp"

.namespace []
.sub "list"  :subid("50_1304282255.089") :outer("47_1304282255.089")
    .param pmc param_496
.annotate 'line', 94
    .lex "self", param_496
    find_lex $P497, "self"
    find_lex $P498, "$?CLASS"
    getattribute $P499, $P497, $P498, "@!array"
    unless_null $P499, vivify_200
    $P499 = root_new ['parrot';'ResizablePMCArray']
  vivify_200:
    .return ($P499)
.end


.HLL "nqp"

.namespace []
.sub "hash"  :subid("51_1304282255.089") :outer("47_1304282255.089")
    .param pmc param_501
.annotate 'line', 96
    .lex "self", param_501
    find_lex $P502, "self"
    find_lex $P503, "$?CLASS"
    getattribute $P504, $P502, $P503, "%!hash"
    unless_null $P504, vivify_201
    $P504 = root_new ['parrot';'Hash']
  vivify_201:
    .return ($P504)
.end


.HLL "nqp"

.namespace []
.sub "_block505"  :anon :subid("52_1304282255.089") :outer("47_1304282255.089")
    .param pmc param_507
    .param pmc param_508
.annotate 'line', 98
    .lex "self", param_507
    .lex "$key", param_508
.annotate 'line', 99
    find_lex $P514, "$key"
    unless_null $P514, vivify_202
    new $P514, "Undef"
  vivify_202:
    find_lex $P511, "self"
    find_lex $P512, "$?CLASS"
    getattribute $P513, $P511, $P512, "%!hash"
    unless_null $P513, vivify_203
    $P513 = root_new ['parrot';'Hash']
  vivify_203:
    exists $I515, $P513[$P514]
    if $I515, if_510
    null $P521
    set $P509, $P521
    goto if_510_end
  if_510:
    find_lex $P516, "$key"
    unless_null $P516, vivify_204
    new $P516, "Undef"
  vivify_204:
    find_lex $P517, "self"
    find_lex $P518, "$?CLASS"
    getattribute $P519, $P517, $P518, "%!hash"
    unless_null $P519, vivify_205
    $P519 = root_new ['parrot';'Hash']
  vivify_205:
    set $P520, $P519[$P516]
    unless_null $P520, vivify_206
    new $P520, "Undef"
  vivify_206:
    set $P509, $P520
  if_510_end:
.annotate 'line', 98
    .return ($P509)
.end


.HLL "nqp"

.namespace []
.sub "_block522"  :anon :subid("53_1304282255.089") :outer("47_1304282255.089")
    .param pmc param_524
    .param pmc param_525
.annotate 'line', 101
    .lex "self", param_524
    .lex "$key", param_525
.annotate 'line', 102
    find_lex $P531, "$key"
    unless_null $P531, vivify_207
    new $P531, "Undef"
  vivify_207:
    find_lex $P528, "self"
    find_lex $P529, "$?CLASS"
    getattribute $P530, $P528, $P529, "%!hash"
    unless_null $P530, vivify_208
    $P530 = root_new ['parrot';'Hash']
  vivify_208:
    exists $I532, $P530[$P531]
    if $I532, if_527
    null $P538
    set $P526, $P538
    goto if_527_end
  if_527:
    find_lex $P533, "$key"
    unless_null $P533, vivify_209
    new $P533, "Undef"
  vivify_209:
    find_lex $P534, "self"
    find_lex $P535, "$?CLASS"
    getattribute $P536, $P534, $P535, "%!hash"
    unless_null $P536, vivify_210
    $P536 = root_new ['parrot';'Hash']
  vivify_210:
    set $P537, $P536[$P533]
    unless_null $P537, vivify_211
    new $P537, "Undef"
  vivify_211:
    set $P526, $P537
  if_527_end:
.annotate 'line', 101
    .return ($P526)
.end


.HLL "nqp"

.namespace []
.sub "_block539"  :anon :subid("54_1304282255.089") :outer("47_1304282255.089")
    .param pmc param_541
    .param pmc param_542
.annotate 'line', 104
    .lex "self", param_541
    .lex "$key", param_542
.annotate 'line', 105
    find_lex $P548, "$key"
    unless_null $P548, vivify_212
    new $P548, "Undef"
  vivify_212:
    find_lex $P545, "self"
    find_lex $P546, "$?CLASS"
    getattribute $P547, $P545, $P546, "@!array"
    unless_null $P547, vivify_213
    $P547 = root_new ['parrot';'ResizablePMCArray']
  vivify_213:
    exists $I549, $P547[$P548]
    if $I549, if_544
    null $P556
    set $P543, $P556
    goto if_544_end
  if_544:
    find_lex $P550, "$key"
    unless_null $P550, vivify_214
    new $P550, "Undef"
  vivify_214:
    set $I551, $P550
    find_lex $P552, "self"
    find_lex $P553, "$?CLASS"
    getattribute $P554, $P552, $P553, "@!array"
    unless_null $P554, vivify_215
    $P554 = root_new ['parrot';'ResizablePMCArray']
  vivify_215:
    set $P555, $P554[$I551]
    unless_null $P555, vivify_216
    new $P555, "Undef"
  vivify_216:
    set $P543, $P555
  if_544_end:
.annotate 'line', 104
    .return ($P543)
.end


.HLL "nqp"

.namespace []
.sub "_block557"  :anon :subid("55_1304282255.089") :outer("47_1304282255.089")
    .param pmc param_559
    .param pmc param_560
    .param pmc param_561
.annotate 'line', 108
    .lex "self", param_559
    .lex "$key", param_560
    .lex "$value", param_561
.annotate 'line', 109
    find_lex $P562, "$value"
    unless_null $P562, vivify_217
    new $P562, "Undef"
  vivify_217:
    find_lex $P563, "$key"
    unless_null $P563, vivify_218
    new $P563, "Undef"
  vivify_218:
    find_lex $P564, "self"
    find_lex $P565, "$?CLASS"
    getattribute $P566, $P564, $P565, "%!hash"
    unless_null $P566, vivify_219
    $P566 = root_new ['parrot';'Hash']
    setattribute $P564, $P565, "%!hash", $P566
  vivify_219:
    set $P566[$P563], $P562
.annotate 'line', 108
    .return ($P562)
.end


.HLL "nqp"

.namespace []
.sub "_block567"  :anon :subid("56_1304282255.089") :outer("47_1304282255.089")
    .param pmc param_569
    .param pmc param_570
    .param pmc param_571
.annotate 'line', 111
    .lex "self", param_569
    .lex "$key", param_570
    .lex "$value", param_571
.annotate 'line', 112
    find_lex $P572, "$value"
    unless_null $P572, vivify_220
    new $P572, "Undef"
  vivify_220:
    find_lex $P573, "$key"
    unless_null $P573, vivify_221
    new $P573, "Undef"
  vivify_221:
    find_lex $P574, "self"
    find_lex $P575, "$?CLASS"
    getattribute $P576, $P574, $P575, "%!hash"
    unless_null $P576, vivify_222
    $P576 = root_new ['parrot';'Hash']
    setattribute $P574, $P575, "%!hash", $P576
  vivify_222:
    set $P576[$P573], $P572
.annotate 'line', 111
    .return ($P572)
.end


.HLL "nqp"

.namespace []
.sub "_block577"  :anon :subid("57_1304282255.089") :outer("47_1304282255.089")
    .param pmc param_579
    .param pmc param_580
    .param pmc param_581
.annotate 'line', 114
    .lex "self", param_579
    .lex "$key", param_580
    .lex "$value", param_581
.annotate 'line', 115
    find_lex $P582, "$value"
    unless_null $P582, vivify_223
    new $P582, "Undef"
  vivify_223:
    find_lex $P583, "$key"
    unless_null $P583, vivify_224
    new $P583, "Undef"
  vivify_224:
    set $I584, $P583
    find_lex $P585, "self"
    find_lex $P586, "$?CLASS"
    getattribute $P587, $P585, $P586, "@!array"
    unless_null $P587, vivify_225
    $P587 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P585, $P586, "@!array", $P587
  vivify_225:
    set $P587[$I584], $P582
.annotate 'line', 114
    .return ($P582)
.end


.HLL "nqp"

.namespace []
.sub "_block588"  :anon :subid("58_1304282255.089") :outer("47_1304282255.089")
    .param pmc param_590
    .param pmc param_591
.annotate 'line', 118
    .lex "self", param_590
    .lex "$key", param_591
.annotate 'line', 119
    find_lex $P595, "$key"
    unless_null $P595, vivify_226
    new $P595, "Undef"
  vivify_226:
    find_lex $P592, "self"
    find_lex $P593, "$?CLASS"
    getattribute $P594, $P592, $P593, "%!hash"
    unless_null $P594, vivify_227
    $P594 = root_new ['parrot';'Hash']
  vivify_227:
    exists $I596, $P594[$P595]
.annotate 'line', 118
    .return ($I596)
.end


.HLL "nqp"

.namespace []
.sub "_block597"  :anon :subid("59_1304282255.089") :outer("47_1304282255.089")
    .param pmc param_599
    .param pmc param_600
.annotate 'line', 121
    .lex "self", param_599
    .lex "$key", param_600
.annotate 'line', 122
    find_lex $P604, "$key"
    unless_null $P604, vivify_228
    new $P604, "Undef"
  vivify_228:
    find_lex $P601, "self"
    find_lex $P602, "$?CLASS"
    getattribute $P603, $P601, $P602, "%!hash"
    unless_null $P603, vivify_229
    $P603 = root_new ['parrot';'Hash']
  vivify_229:
    exists $I605, $P603[$P604]
.annotate 'line', 121
    .return ($I605)
.end


.HLL "nqp"

.namespace []
.sub "_block606"  :anon :subid("60_1304282255.089") :outer("47_1304282255.089")
    .param pmc param_608
    .param pmc param_609
.annotate 'line', 124
    .lex "self", param_608
    .lex "$key", param_609
.annotate 'line', 125
    find_lex $P613, "$key"
    unless_null $P613, vivify_230
    new $P613, "Undef"
  vivify_230:
    find_lex $P610, "self"
    find_lex $P611, "$?CLASS"
    getattribute $P612, $P610, $P611, "@!array"
    unless_null $P612, vivify_231
    $P612 = root_new ['parrot';'ResizablePMCArray']
  vivify_231:
    exists $I614, $P612[$P613]
.annotate 'line', 124
    .return ($I614)
.end


.HLL "nqp"

.namespace []
.sub "_block615"  :anon :subid("61_1304282255.089") :outer("47_1304282255.089")
    .param pmc param_617
    .param pmc param_618
.annotate 'line', 128
    .lex "self", param_617
    .lex "$key", param_618
.annotate 'line', 129
    find_lex $P622, "$key"
    unless_null $P622, vivify_232
    new $P622, "Undef"
  vivify_232:
    find_lex $P619, "self"
    find_lex $P620, "$?CLASS"
    getattribute $P621, $P619, $P620, "%!hash"
    unless_null $P621, vivify_233
    $P621 = root_new ['parrot';'Hash']
  vivify_233:
    delete $P621[$P622]
.annotate 'line', 128
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block623"  :anon :subid("62_1304282255.089") :outer("47_1304282255.089")
    .param pmc param_625
    .param pmc param_626
.annotate 'line', 131
    .lex "self", param_625
    .lex "$key", param_626
.annotate 'line', 132
    find_lex $P630, "$key"
    unless_null $P630, vivify_234
    new $P630, "Undef"
  vivify_234:
    find_lex $P627, "self"
    find_lex $P628, "$?CLASS"
    getattribute $P629, $P627, $P628, "%!hash"
    unless_null $P629, vivify_235
    $P629 = root_new ['parrot';'Hash']
  vivify_235:
    delete $P629[$P630]
.annotate 'line', 131
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block631"  :anon :subid("63_1304282255.089") :outer("47_1304282255.089")
    .param pmc param_633
    .param pmc param_634
.annotate 'line', 134
    .lex "self", param_633
    .lex "$key", param_634
.annotate 'line', 135
    find_lex $P638, "$key"
    unless_null $P638, vivify_236
    new $P638, "Undef"
  vivify_236:
    find_lex $P635, "self"
    find_lex $P636, "$?CLASS"
    getattribute $P637, $P635, $P636, "@!array"
    unless_null $P637, vivify_237
    $P637 = root_new ['parrot';'ResizablePMCArray']
  vivify_237:
    delete $P637[$P638]
.annotate 'line', 134
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block639"  :anon :subid("64_1304282255.089") :outer("47_1304282255.089")
    .param pmc param_641
    .param pmc param_642
.annotate 'line', 138
    .lex "self", param_641
    .lex "$value", param_642
.annotate 'line', 139
    find_lex $P643, "self"
    find_lex $P644, "$?CLASS"
    getattribute $P645, $P643, $P644, "@!array"
    unless_null $P645, vivify_238
    $P645 = root_new ['parrot';'ResizablePMCArray']
  vivify_238:
    find_lex $P646, "$value"
    unless_null $P646, vivify_239
    new $P646, "Undef"
  vivify_239:
    unshift $P645, $P646
.annotate 'line', 138
    .return ($P645)
.end


.HLL "nqp"

.namespace []
.sub "_block647"  :anon :subid("65_1304282255.089") :outer("47_1304282255.089")
    .param pmc param_649
    .param pmc param_650
.annotate 'line', 142
    .lex "self", param_649
    .lex "$value", param_650
.annotate 'line', 143
    find_lex $P651, "self"
    find_lex $P652, "$?CLASS"
    getattribute $P653, $P651, $P652, "@!array"
    unless_null $P653, vivify_240
    $P653 = root_new ['parrot';'ResizablePMCArray']
  vivify_240:
    find_lex $P654, "$value"
    unless_null $P654, vivify_241
    new $P654, "Undef"
  vivify_241:
    unshift $P653, $P654
.annotate 'line', 142
    .return ($P653)
.end


.HLL "nqp"

.namespace []
.sub "_block674" :load :anon :subid("67_1304282255.089")
.annotate 'line', 1
    .const 'Sub' $P676 = "10_1304282255.089" 
    $P677 = $P676()
    .return ($P677)
.end

