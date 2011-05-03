
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1304456123.433")
.annotate 'line', 0
    .const 'Sub' $P452 = "42_1304456123.433" 
    capture_lex $P452
    .const 'Sub' $P337 = "29_1304456123.433" 
    capture_lex $P337
    .const 'Sub' $P333 = "28_1304456123.433" 
    capture_lex $P333
    .const 'Sub' $P329 = "27_1304456123.433" 
    capture_lex $P329
    .const 'Sub' $P325 = "26_1304456123.433" 
    capture_lex $P325
    .const 'Sub' $P265 = "25_1304456123.433" 
    capture_lex $P265
    .const 'Sub' $P251 = "24_1304456123.433" 
    capture_lex $P251
    .const 'Sub' $P229 = "23_1304456123.433" 
    capture_lex $P229
    .const 'Sub' $P222 = "22_1304456123.433" 
    capture_lex $P222
    .const 'Sub' $P134 = "20_1304456123.433" 
    capture_lex $P134
    .const 'Sub' $P101 = "18_1304456123.433" 
    capture_lex $P101
    .const 'Sub' $P96 = "17_1304456123.433" 
    capture_lex $P96
    .const 'Sub' $P82 = "15_1304456123.433" 
    capture_lex $P82
    .const 'Sub' $P70 = "14_1304456123.433" 
    capture_lex $P70
    .const 'Sub' $P59 = "13_1304456123.433" 
    capture_lex $P59
    .const 'Sub' $P54 = "12_1304456123.433" 
    capture_lex $P54
    .const 'Sub' $P21 = "11_1304456123.433" 
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
    .const 'Sub' $P21 = "11_1304456123.433" 
    newclosure $P53, $P21
    .lex "open", $P53
.annotate 'line', 170
    .const 'Sub' $P54 = "12_1304456123.433" 
    newclosure $P58, $P54
    .lex "close", $P58
.annotate 'line', 178
    .const 'Sub' $P59 = "13_1304456123.433" 
    newclosure $P69, $P59
    .lex "slurp", $P69
.annotate 'line', 190
    .const 'Sub' $P70 = "14_1304456123.433" 
    newclosure $P81, $P70
    .lex "spew", $P81
.annotate 'line', 197
    .const 'Sub' $P82 = "15_1304456123.433" 
    newclosure $P95, $P82
    .lex "print", $P95
.annotate 'line', 204
    .const 'Sub' $P96 = "17_1304456123.433" 
    newclosure $P100, $P96
    .lex "say", $P100
.annotate 'line', 222
    .const 'Sub' $P101 = "18_1304456123.433" 
    newclosure $P133, $P101
    .lex "match", $P133
.annotate 'line', 244
    .const 'Sub' $P134 = "20_1304456123.433" 
    newclosure $P220, $P134
    .lex "subst", $P220
.annotate 'line', 270
    new $P221, "Undef"
    .lex "$test_counter", $P221
.annotate 'line', 272
    .const 'Sub' $P222 = "22_1304456123.433" 
    newclosure $P228, $P222
    .lex "plan", $P228
.annotate 'line', 276
    .const 'Sub' $P229 = "23_1304456123.433" 
    newclosure $P250, $P229
    .lex "ok", $P250
.annotate 'line', 291
    .const 'Sub' $P251 = "24_1304456123.433" 
    newclosure $P263, $P251
    .lex "skip", $P263
.annotate 'line', 14
    .const 'Sub' $P265 = "25_1304456123.433" 
    capture_lex $P265
    $P265()
.annotate 'line', 25
    .const 'Sub' $P325 = "26_1304456123.433" 
    capture_lex $P325
    $P325()
.annotate 'line', 27
    .const 'Sub' $P329 = "27_1304456123.433" 
    capture_lex $P329
    $P329()
.annotate 'line', 29
    .const 'Sub' $P333 = "28_1304456123.433" 
    capture_lex $P333
    $P333()
.annotate 'line', 32
    .const 'Sub' $P337 = "29_1304456123.433" 
    capture_lex $P337
    $P337()
.annotate 'line', 79
    .const 'Sub' $P452 = "42_1304456123.433" 
    capture_lex $P452
    $P452()
    find_lex $P631, "open"
    find_lex $P632, "close"
    find_lex $P633, "slurp"
    find_lex $P634, "spew"
    find_lex $P635, "print"
    find_lex $P636, "say"
    find_lex $P637, "match"
    find_lex $P638, "subst"
.annotate 'line', 270
    new $P639, "Integer"
    assign $P639, 0
    store_lex "$test_counter", $P639
    find_lex $P640, "plan"
    find_lex $P641, "ok"
    find_lex $P642, "skip"
    new $P643, "Integer"
    assign $P643, 1
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 1
    .return ()
    .const 'Sub' $P645 = "61_1304456123.433" 
    .return ($P645)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post62") :outer("10_1304456123.433")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1304456123.433" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P649, "1304456122.346"
    isnull $I650, $P649
    if $I650, if_648
    .const 'Sub' $P932 = "10_1304456123.433" 
    $P933 = $P932."get_lexinfo"()
    nqp_get_sc_object $P934, "1304456122.346", 0
    $P933."set_static_lexpad_value"("GLOBALish", $P934)
    .const 'Sub' $P935 = "10_1304456123.433" 
    $P936 = $P935."get_lexinfo"()
    $P936."finish_static_lexpad"()
    .const 'Sub' $P937 = "10_1304456123.433" 
    $P938 = $P937."get_lexinfo"()
    nqp_get_sc_object $P939, "1304456122.346", 0
    $P938."set_static_lexpad_value"("$?PACKAGE", $P939)
    .const 'Sub' $P940 = "10_1304456123.433" 
    $P941 = $P940."get_lexinfo"()
    $P941."finish_static_lexpad"()
    .const 'Sub' $P942 = "10_1304456123.433" 
    $P943 = $P942."get_lexinfo"()
    nqp_get_sc_object $P944, "1304456122.346", 1
    $P943."set_static_lexpad_value"("EXPORTHOW", $P944)
    .const 'Sub' $P945 = "10_1304456123.433" 
    $P946 = $P945."get_lexinfo"()
    $P946."finish_static_lexpad"()
    .const 'Sub' $P947 = "25_1304456123.433" 
    $P948 = $P947."get_lexinfo"()
    nqp_get_sc_object $P949, "1304456122.346", 1
    $P948."set_static_lexpad_value"("$?PACKAGE", $P949)
    .const 'Sub' $P950 = "25_1304456123.433" 
    $P951 = $P950."get_lexinfo"()
    $P951."finish_static_lexpad"()
    .const 'Sub' $P952 = "25_1304456123.433" 
    $P953 = $P952."get_lexinfo"()
    nqp_get_sc_object $P954, "1304456122.346", 1
    $P953."set_static_lexpad_value"("$?CLASS", $P954)
    .const 'Sub' $P955 = "25_1304456123.433" 
    $P956 = $P955."get_lexinfo"()
    $P956."finish_static_lexpad"()
    .const 'Sub' $P957 = "10_1304456123.433" 
    $P958 = $P957."get_lexinfo"()
    nqp_get_sc_object $P959, "1304456122.346", 2
    $P958."set_static_lexpad_value"("int", $P959)
    .const 'Sub' $P960 = "10_1304456123.433" 
    $P961 = $P960."get_lexinfo"()
    $P961."finish_static_lexpad"()
    .const 'Sub' $P962 = "26_1304456123.433" 
    $P963 = $P962."get_lexinfo"()
    nqp_get_sc_object $P964, "1304456122.346", 2
    $P963."set_static_lexpad_value"("$?PACKAGE", $P964)
    .const 'Sub' $P965 = "26_1304456123.433" 
    $P966 = $P965."get_lexinfo"()
    $P966."finish_static_lexpad"()
    .const 'Sub' $P967 = "26_1304456123.433" 
    $P968 = $P967."get_lexinfo"()
    nqp_get_sc_object $P969, "1304456122.346", 2
    $P968."set_static_lexpad_value"("$?CLASS", $P969)
    .const 'Sub' $P970 = "26_1304456123.433" 
    $P971 = $P970."get_lexinfo"()
    $P971."finish_static_lexpad"()
    .const 'Sub' $P972 = "10_1304456123.433" 
    $P973 = $P972."get_lexinfo"()
    nqp_get_sc_object $P974, "1304456122.346", 3
    $P973."set_static_lexpad_value"("num", $P974)
    .const 'Sub' $P975 = "10_1304456123.433" 
    $P976 = $P975."get_lexinfo"()
    $P976."finish_static_lexpad"()
    .const 'Sub' $P977 = "27_1304456123.433" 
    $P978 = $P977."get_lexinfo"()
    nqp_get_sc_object $P979, "1304456122.346", 3
    $P978."set_static_lexpad_value"("$?PACKAGE", $P979)
    .const 'Sub' $P980 = "27_1304456123.433" 
    $P981 = $P980."get_lexinfo"()
    $P981."finish_static_lexpad"()
    .const 'Sub' $P982 = "27_1304456123.433" 
    $P983 = $P982."get_lexinfo"()
    nqp_get_sc_object $P984, "1304456122.346", 3
    $P983."set_static_lexpad_value"("$?CLASS", $P984)
    .const 'Sub' $P985 = "27_1304456123.433" 
    $P986 = $P985."get_lexinfo"()
    $P986."finish_static_lexpad"()
    .const 'Sub' $P987 = "10_1304456123.433" 
    $P988 = $P987."get_lexinfo"()
    nqp_get_sc_object $P989, "1304456122.346", 4
    $P988."set_static_lexpad_value"("str", $P989)
    .const 'Sub' $P990 = "10_1304456123.433" 
    $P991 = $P990."get_lexinfo"()
    $P991."finish_static_lexpad"()
    .const 'Sub' $P992 = "28_1304456123.433" 
    $P993 = $P992."get_lexinfo"()
    nqp_get_sc_object $P994, "1304456122.346", 4
    $P993."set_static_lexpad_value"("$?PACKAGE", $P994)
    .const 'Sub' $P995 = "28_1304456123.433" 
    $P996 = $P995."get_lexinfo"()
    $P996."finish_static_lexpad"()
    .const 'Sub' $P997 = "28_1304456123.433" 
    $P998 = $P997."get_lexinfo"()
    nqp_get_sc_object $P999, "1304456122.346", 4
    $P998."set_static_lexpad_value"("$?CLASS", $P999)
    .const 'Sub' $P1000 = "28_1304456123.433" 
    $P1001 = $P1000."get_lexinfo"()
    $P1001."finish_static_lexpad"()
    .const 'Sub' $P1002 = "10_1304456123.433" 
    $P1003 = $P1002."get_lexinfo"()
    nqp_get_sc_object $P1004, "1304456122.346", 5
    $P1003."set_static_lexpad_value"("NQPMu", $P1004)
    .const 'Sub' $P1005 = "10_1304456123.433" 
    $P1006 = $P1005."get_lexinfo"()
    $P1006."finish_static_lexpad"()
    nqp_get_sc_object $P1007, "1304456122.346", 6
    .const 'Sub' $P1008 = "30_1304456123.433" 
    assign $P1007, $P1008
    nqp_get_sc_object $P1009, "1304456122.346", 7
    .const 'Sub' $P1010 = "31_1304456123.433" 
    assign $P1009, $P1010
    nqp_get_sc_object $P1011, "1304456122.346", 8
    .const 'Sub' $P1012 = "32_1304456123.433" 
    assign $P1011, $P1012
    nqp_get_sc_object $P1013, "1304456122.346", 9
    .const 'Sub' $P1014 = "34_1304456123.433" 
    assign $P1013, $P1014
    nqp_get_sc_object $P1015, "1304456122.346", 10
    .const 'Sub' $P1016 = "36_1304456123.433" 
    assign $P1015, $P1016
    nqp_get_sc_object $P1017, "1304456122.346", 11
    .const 'Sub' $P1018 = "37_1304456123.433" 
    assign $P1017, $P1018
    nqp_get_sc_object $P1019, "1304456122.346", 11
    .const 'Sub' $P1020 = "37_1304456123.433" 
    assign $P1019, $P1020
    .const 'Sub' $P1021 = "38_1304456123.433" 
    nqp_get_sc_object $P1022, "1304456122.346", 5
    new $P1023, "ResizablePMCArray"
    push $P1023, $P1022
    new $P1024, "ResizablePMCArray"
    push $P1024, 2
    set_sub_multisig $P1021, $P1023, $P1024
    nqp_get_sc_object $P1025, "1304456122.346", 12
    .const 'Sub' $P1026 = "38_1304456123.433" 
    assign $P1025, $P1026
    nqp_get_sc_object $P1027, "1304456122.346", 13
    .const 'Sub' $P1028 = "39_1304456123.433" 
    assign $P1027, $P1028
    .const 'Sub' $P1029 = "40_1304456123.433" 
    nqp_get_sc_object $P1030, "1304456122.346", 5
    null $P1031
    new $P1032, "ResizablePMCArray"
    push $P1032, $P1030
    push $P1032, $P1031
    new $P1033, "ResizablePMCArray"
    push $P1033, 2
    push $P1033, 0
    set_sub_multisig $P1029, $P1032, $P1033
    nqp_get_sc_object $P1034, "1304456122.346", 14
    .const 'Sub' $P1035 = "40_1304456123.433" 
    assign $P1034, $P1035
    nqp_get_sc_object $P1036, "1304456122.346", 15
    .const 'Sub' $P1037 = "41_1304456123.433" 
    assign $P1036, $P1037
    .const 'Sub' $P1038 = "29_1304456123.433" 
    $P1039 = $P1038."get_lexinfo"()
    nqp_get_sc_object $P1040, "1304456122.346", 5
    $P1039."set_static_lexpad_value"("$?PACKAGE", $P1040)
    .const 'Sub' $P1041 = "29_1304456123.433" 
    $P1042 = $P1041."get_lexinfo"()
    $P1042."finish_static_lexpad"()
    .const 'Sub' $P1043 = "29_1304456123.433" 
    $P1044 = $P1043."get_lexinfo"()
    nqp_get_sc_object $P1045, "1304456122.346", 5
    $P1044."set_static_lexpad_value"("$?CLASS", $P1045)
    .const 'Sub' $P1046 = "29_1304456123.433" 
    $P1047 = $P1046."get_lexinfo"()
    $P1047."finish_static_lexpad"()
    .const 'Sub' $P1048 = "10_1304456123.433" 
    $P1049 = $P1048."get_lexinfo"()
    nqp_get_sc_object $P1050, "1304456122.346", 16
    $P1049."set_static_lexpad_value"("NQPCapture", $P1050)
    .const 'Sub' $P1051 = "10_1304456123.433" 
    $P1052 = $P1051."get_lexinfo"()
    $P1052."finish_static_lexpad"()
    nqp_get_sc_object $P1053, "1304456122.346", 17
    .const 'Sub' $P1054 = "43_1304456123.433" 
    assign $P1053, $P1054
    nqp_get_sc_object $P1055, "1304456122.346", 18
    .const 'Sub' $P1056 = "44_1304456123.433" 
    assign $P1055, $P1056
    nqp_get_sc_object $P1057, "1304456122.346", 19
    .const 'Sub' $P1058 = "45_1304456123.433" 
    assign $P1057, $P1058
    nqp_get_sc_object $P1059, "1304456122.346", 20
    .const 'Sub' $P1060 = "46_1304456123.433" 
    assign $P1059, $P1060
    nqp_get_sc_object $P1061, "1304456122.346", 21
    .const 'Sub' $P1062 = "47_1304456123.433" 
    assign $P1061, $P1062
    nqp_get_sc_object $P1063, "1304456122.346", 22
    .const 'Sub' $P1064 = "48_1304456123.433" 
    assign $P1063, $P1064
    nqp_get_sc_object $P1065, "1304456122.346", 23
    .const 'Sub' $P1066 = "49_1304456123.433" 
    assign $P1065, $P1066
    nqp_get_sc_object $P1067, "1304456122.346", 24
    .const 'Sub' $P1068 = "50_1304456123.433" 
    assign $P1067, $P1068
    nqp_get_sc_object $P1069, "1304456122.346", 25
    .const 'Sub' $P1070 = "51_1304456123.433" 
    assign $P1069, $P1070
    nqp_get_sc_object $P1071, "1304456122.346", 26
    .const 'Sub' $P1072 = "52_1304456123.433" 
    assign $P1071, $P1072
    nqp_get_sc_object $P1073, "1304456122.346", 27
    .const 'Sub' $P1074 = "53_1304456123.433" 
    assign $P1073, $P1074
    nqp_get_sc_object $P1075, "1304456122.346", 28
    .const 'Sub' $P1076 = "54_1304456123.433" 
    assign $P1075, $P1076
    nqp_get_sc_object $P1077, "1304456122.346", 29
    .const 'Sub' $P1078 = "55_1304456123.433" 
    assign $P1077, $P1078
    nqp_get_sc_object $P1079, "1304456122.346", 30
    .const 'Sub' $P1080 = "56_1304456123.433" 
    assign $P1079, $P1080
    nqp_get_sc_object $P1081, "1304456122.346", 31
    .const 'Sub' $P1082 = "57_1304456123.433" 
    assign $P1081, $P1082
    nqp_get_sc_object $P1083, "1304456122.346", 32
    .const 'Sub' $P1084 = "58_1304456123.433" 
    assign $P1083, $P1084
    nqp_get_sc_object $P1085, "1304456122.346", 33
    .const 'Sub' $P1086 = "59_1304456123.433" 
    assign $P1085, $P1086
    nqp_get_sc_object $P1087, "1304456122.346", 34
    .const 'Sub' $P1088 = "60_1304456123.433" 
    assign $P1087, $P1088
    .const 'Sub' $P1089 = "42_1304456123.433" 
    $P1090 = $P1089."get_lexinfo"()
    nqp_get_sc_object $P1091, "1304456122.346", 16
    $P1090."set_static_lexpad_value"("$?PACKAGE", $P1091)
    .const 'Sub' $P1092 = "42_1304456123.433" 
    $P1093 = $P1092."get_lexinfo"()
    $P1093."finish_static_lexpad"()
    .const 'Sub' $P1094 = "42_1304456123.433" 
    $P1095 = $P1094."get_lexinfo"()
    nqp_get_sc_object $P1096, "1304456122.346", 16
    $P1095."set_static_lexpad_value"("$?CLASS", $P1096)
    .const 'Sub' $P1097 = "42_1304456123.433" 
    $P1098 = $P1097."get_lexinfo"()
    $P1098."finish_static_lexpad"()
    goto if_648_end
  if_648:
    nqp_dynop_setup 
    getinterp $P651
    get_class $P652, "LexPad"
    get_class $P653, "NQPLexPad"
    $P651."hll_map"($P652, $P653)
    nqp_create_sc $P654, "1304456122.346"
    .local pmc cur_sc
    set cur_sc, $P654
    nqp_get_sc_object $P655, "__6MODEL_CORE__", 0
    $P656 = $P655."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P656, cur_sc
    nqp_set_sc_object "1304456122.346", 0, $P656
    .const 'Sub' $P657 = "10_1304456123.433" 
    $P658 = $P657."get_lexinfo"()
    nqp_get_sc_object $P659, "1304456122.346", 0
    $P658."set_static_lexpad_value"("GLOBALish", $P659)
    .const 'Sub' $P660 = "10_1304456123.433" 
    $P661 = $P660."get_lexinfo"()
    $P661."finish_static_lexpad"()
    .const 'Sub' $P662 = "10_1304456123.433" 
    $P663 = $P662."get_lexinfo"()
    nqp_get_sc_object $P664, "1304456122.346", 0
    $P663."set_static_lexpad_value"("$?PACKAGE", $P664)
    .const 'Sub' $P665 = "10_1304456123.433" 
    $P666 = $P665."get_lexinfo"()
    $P666."finish_static_lexpad"()
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P667, "ModuleLoader"
    nqp_get_sc_object $P668, "1304456122.346", 0
    $P667."load_module"("nqpmo", $P668)
    nqp_get_sc_object $P669, "1304456116.562", 85
    $P670 = $P669."new_type"("EXPORTHOW" :named("name"))
    nqp_set_sc_for_object $P670, cur_sc
    nqp_set_sc_object "1304456122.346", 1, $P670
    .const 'Sub' $P671 = "10_1304456123.433" 
    $P672 = $P671."get_lexinfo"()
    nqp_get_sc_object $P673, "1304456122.346", 1
    $P672."set_static_lexpad_value"("EXPORTHOW", $P673)
    .const 'Sub' $P674 = "10_1304456123.433" 
    $P675 = $P674."get_lexinfo"()
    $P675."finish_static_lexpad"()
    .const 'Sub' $P676 = "25_1304456123.433" 
    $P677 = $P676."get_lexinfo"()
    nqp_get_sc_object $P678, "1304456122.346", 1
    $P677."set_static_lexpad_value"("$?PACKAGE", $P678)
    .const 'Sub' $P679 = "25_1304456123.433" 
    $P680 = $P679."get_lexinfo"()
    $P680."finish_static_lexpad"()
    .const 'Sub' $P681 = "25_1304456123.433" 
    $P682 = $P681."get_lexinfo"()
    nqp_get_sc_object $P683, "1304456122.346", 1
    $P682."set_static_lexpad_value"("$?CLASS", $P683)
    .const 'Sub' $P684 = "25_1304456123.433" 
    $P685 = $P684."get_lexinfo"()
    $P685."finish_static_lexpad"()
    nqp_get_sc_object $P686, "1304456122.346", 1
    get_how $P687, $P686
    nqp_get_sc_object $P688, "1304456122.346", 1
    $P687."compose"($P688)
    nqp_get_sc_object $P689, "1304456116.562", 68
    $P690 = $P689."new_type"("int" :named("name"), "P6int" :named("repr"))
    nqp_set_sc_for_object $P690, cur_sc
    nqp_set_sc_object "1304456122.346", 2, $P690
    .const 'Sub' $P691 = "10_1304456123.433" 
    $P692 = $P691."get_lexinfo"()
    nqp_get_sc_object $P693, "1304456122.346", 2
    $P692."set_static_lexpad_value"("int", $P693)
    .const 'Sub' $P694 = "10_1304456123.433" 
    $P695 = $P694."get_lexinfo"()
    $P695."finish_static_lexpad"()
    .const 'Sub' $P696 = "26_1304456123.433" 
    $P697 = $P696."get_lexinfo"()
    nqp_get_sc_object $P698, "1304456122.346", 2
    $P697."set_static_lexpad_value"("$?PACKAGE", $P698)
    .const 'Sub' $P699 = "26_1304456123.433" 
    $P700 = $P699."get_lexinfo"()
    $P700."finish_static_lexpad"()
    .const 'Sub' $P701 = "26_1304456123.433" 
    $P702 = $P701."get_lexinfo"()
    nqp_get_sc_object $P703, "1304456122.346", 2
    $P702."set_static_lexpad_value"("$?CLASS", $P703)
    .const 'Sub' $P704 = "26_1304456123.433" 
    $P705 = $P704."get_lexinfo"()
    $P705."finish_static_lexpad"()
    nqp_get_sc_object $P706, "1304456122.346", 2
    get_how $P707, $P706
    nqp_get_sc_object $P708, "1304456122.346", 2
    $P707."compose"($P708)
    nqp_get_sc_object $P709, "1304456116.562", 68
    $P710 = $P709."new_type"("num" :named("name"), "P6num" :named("repr"))
    nqp_set_sc_for_object $P710, cur_sc
    nqp_set_sc_object "1304456122.346", 3, $P710
    .const 'Sub' $P711 = "10_1304456123.433" 
    $P712 = $P711."get_lexinfo"()
    nqp_get_sc_object $P713, "1304456122.346", 3
    $P712."set_static_lexpad_value"("num", $P713)
    .const 'Sub' $P714 = "10_1304456123.433" 
    $P715 = $P714."get_lexinfo"()
    $P715."finish_static_lexpad"()
    .const 'Sub' $P716 = "27_1304456123.433" 
    $P717 = $P716."get_lexinfo"()
    nqp_get_sc_object $P718, "1304456122.346", 3
    $P717."set_static_lexpad_value"("$?PACKAGE", $P718)
    .const 'Sub' $P719 = "27_1304456123.433" 
    $P720 = $P719."get_lexinfo"()
    $P720."finish_static_lexpad"()
    .const 'Sub' $P721 = "27_1304456123.433" 
    $P722 = $P721."get_lexinfo"()
    nqp_get_sc_object $P723, "1304456122.346", 3
    $P722."set_static_lexpad_value"("$?CLASS", $P723)
    .const 'Sub' $P724 = "27_1304456123.433" 
    $P725 = $P724."get_lexinfo"()
    $P725."finish_static_lexpad"()
    nqp_get_sc_object $P726, "1304456122.346", 3
    get_how $P727, $P726
    nqp_get_sc_object $P728, "1304456122.346", 3
    $P727."compose"($P728)
    nqp_get_sc_object $P729, "1304456116.562", 68
    $P730 = $P729."new_type"("str" :named("name"), "P6str" :named("repr"))
    nqp_set_sc_for_object $P730, cur_sc
    nqp_set_sc_object "1304456122.346", 4, $P730
    .const 'Sub' $P731 = "10_1304456123.433" 
    $P732 = $P731."get_lexinfo"()
    nqp_get_sc_object $P733, "1304456122.346", 4
    $P732."set_static_lexpad_value"("str", $P733)
    .const 'Sub' $P734 = "10_1304456123.433" 
    $P735 = $P734."get_lexinfo"()
    $P735."finish_static_lexpad"()
    .const 'Sub' $P736 = "28_1304456123.433" 
    $P737 = $P736."get_lexinfo"()
    nqp_get_sc_object $P738, "1304456122.346", 4
    $P737."set_static_lexpad_value"("$?PACKAGE", $P738)
    .const 'Sub' $P739 = "28_1304456123.433" 
    $P740 = $P739."get_lexinfo"()
    $P740."finish_static_lexpad"()
    .const 'Sub' $P741 = "28_1304456123.433" 
    $P742 = $P741."get_lexinfo"()
    nqp_get_sc_object $P743, "1304456122.346", 4
    $P742."set_static_lexpad_value"("$?CLASS", $P743)
    .const 'Sub' $P744 = "28_1304456123.433" 
    $P745 = $P744."get_lexinfo"()
    $P745."finish_static_lexpad"()
    nqp_get_sc_object $P746, "1304456122.346", 4
    get_how $P747, $P746
    nqp_get_sc_object $P748, "1304456122.346", 4
    $P747."compose"($P748)
    nqp_get_sc_object $P749, "1304456116.562", 41
    $P750 = $P749."new_type"("NQPMu" :named("name"))
    nqp_set_sc_for_object $P750, cur_sc
    nqp_set_sc_object "1304456122.346", 5, $P750
    .const 'Sub' $P751 = "10_1304456123.433" 
    $P752 = $P751."get_lexinfo"()
    nqp_get_sc_object $P753, "1304456122.346", 5
    $P752."set_static_lexpad_value"("NQPMu", $P753)
    .const 'Sub' $P754 = "10_1304456123.433" 
    $P755 = $P754."get_lexinfo"()
    $P755."finish_static_lexpad"()
    nqp_get_sc_object $P756, "1304456122.346", 5
    get_how $P757, $P756
    nqp_get_sc_object $P758, "1304456122.346", 5
    .const 'Sub' $P759 = "30_1304456123.433" 
    $P757."add_method"($P758, "CREATE", $P759)
    nqp_get_sc_object $P760, "1304456122.346", 5
    get_how $P761, $P760
    nqp_get_sc_object $P762, "1304456122.346", 5
    .const 'Sub' $P763 = "31_1304456123.433" 
    $P761."add_method"($P762, "bless", $P763)
    nqp_get_sc_object $P764, "1304456122.346", 5
    get_how $P765, $P764
    nqp_get_sc_object $P766, "1304456122.346", 5
    .const 'Sub' $P767 = "32_1304456123.433" 
    $P765."add_method"($P766, "BUILDALL", $P767)
    nqp_get_sc_object $P768, "1304456122.346", 5
    get_how $P769, $P768
    nqp_get_sc_object $P770, "1304456122.346", 5
    .const 'Sub' $P771 = "34_1304456123.433" 
    $P769."add_method"($P770, "BUILD_MAGIC", $P771)
    nqp_get_sc_object $P772, "1304456122.346", 5
    get_how $P773, $P772
    nqp_get_sc_object $P774, "1304456122.346", 5
    .const 'Sub' $P775 = "36_1304456123.433" 
    $P773."add_method"($P774, "new", $P775)
    nqp_get_sc_object $P776, "1304456122.346", 5
    get_how $P777, $P776
    nqp_get_sc_object $P778, "1304456122.346", 5
    .const 'Sub' $P779 = "37_1304456123.433" 
    $P777."add_method"($P778, "Str", $P779)
    nqp_get_sc_object $P780, "1304456122.346", 5
    get_how $P781, $P780
    nqp_get_sc_object $P782, "1304456122.346", 5
    .const 'Sub' $P783 = "37_1304456123.433" 
    $P781."add_parrot_vtable_mapping"($P782, "get_string", $P783)
    .const 'Sub' $P784 = "38_1304456123.433" 
    nqp_get_sc_object $P785, "1304456122.346", 5
    new $P786, "ResizablePMCArray"
    push $P786, $P785
    new $P787, "ResizablePMCArray"
    push $P787, 2
    set_sub_multisig $P784, $P786, $P787
    nqp_get_sc_object $P788, "1304456122.346", 5
    get_how $P789, $P788
    nqp_get_sc_object $P790, "1304456122.346", 5
    .const 'Sub' $P791 = "38_1304456123.433" 
    $P789."add_multi_method"($P790, "Str", $P791)
    nqp_get_sc_object $P792, "1304456122.346", 5
    get_how $P793, $P792
    nqp_get_sc_object $P794, "1304456122.346", 5
    .const 'Sub' $P795 = "39_1304456123.433" 
    $P793."add_method"($P794, "ACCEPTS", $P795)
    .const 'Sub' $P796 = "40_1304456123.433" 
    nqp_get_sc_object $P797, "1304456122.346", 5
    null $P798
    new $P799, "ResizablePMCArray"
    push $P799, $P797
    push $P799, $P798
    new $P800, "ResizablePMCArray"
    push $P800, 2
    push $P800, 0
    set_sub_multisig $P796, $P799, $P800
    nqp_get_sc_object $P801, "1304456122.346", 5
    get_how $P802, $P801
    nqp_get_sc_object $P803, "1304456122.346", 5
    .const 'Sub' $P804 = "40_1304456123.433" 
    $P802."add_multi_method"($P803, "ACCEPTS", $P804)
    nqp_get_sc_object $P805, "1304456122.346", 5
    get_how $P806, $P805
    nqp_get_sc_object $P807, "1304456122.346", 5
    .const 'Sub' $P808 = "41_1304456123.433" 
    $P806."add_method"($P807, "isa", $P808)
    .const 'Sub' $P809 = "29_1304456123.433" 
    $P810 = $P809."get_lexinfo"()
    nqp_get_sc_object $P811, "1304456122.346", 5
    $P810."set_static_lexpad_value"("$?PACKAGE", $P811)
    .const 'Sub' $P812 = "29_1304456123.433" 
    $P813 = $P812."get_lexinfo"()
    $P813."finish_static_lexpad"()
    .const 'Sub' $P814 = "29_1304456123.433" 
    $P815 = $P814."get_lexinfo"()
    nqp_get_sc_object $P816, "1304456122.346", 5
    $P815."set_static_lexpad_value"("$?CLASS", $P816)
    .const 'Sub' $P817 = "29_1304456123.433" 
    $P818 = $P817."get_lexinfo"()
    $P818."finish_static_lexpad"()
    nqp_get_sc_object $P819, "1304456122.346", 5
    get_how $P820, $P819
    nqp_get_sc_object $P821, "1304456122.346", 5
    nqp_get_sc_object $P822, "1304456122.346", 5
    $P820."set_default_parent"($P821, $P822)
    nqp_get_sc_object $P823, "1304456122.346", 5
    get_how $P824, $P823
    nqp_get_sc_object $P825, "1304456122.346", 5
    $P824."compose"($P825)
    nqp_get_sc_object $P826, "1304456116.562", 41
    $P827 = $P826."new_type"("NQPCapture" :named("name"))
    nqp_set_sc_for_object $P827, cur_sc
    nqp_set_sc_object "1304456122.346", 16, $P827
    .const 'Sub' $P828 = "10_1304456123.433" 
    $P829 = $P828."get_lexinfo"()
    nqp_get_sc_object $P830, "1304456122.346", 16
    $P829."set_static_lexpad_value"("NQPCapture", $P830)
    .const 'Sub' $P831 = "10_1304456123.433" 
    $P832 = $P831."get_lexinfo"()
    $P832."finish_static_lexpad"()
    nqp_get_sc_object $P833, "1304456122.346", 16
    get_how $P834, $P833
    nqp_get_sc_object $P835, "1304456122.346", 16
    nqp_get_sc_object $P836, "1304456116.562", 77
    $P837 = $P836."new"("@!array" :named("name"))
    $P834."add_attribute"($P835, $P837)
    nqp_get_sc_object $P838, "1304456122.346", 16
    get_how $P839, $P838
    nqp_get_sc_object $P840, "1304456122.346", 16
    nqp_get_sc_object $P841, "1304456116.562", 77
    $P842 = $P841."new"("%!hash" :named("name"))
    $P839."add_attribute"($P840, $P842)
    nqp_get_sc_object $P843, "1304456122.346", 16
    get_how $P844, $P843
    nqp_get_sc_object $P845, "1304456122.346", 16
    .const 'Sub' $P846 = "43_1304456123.433" 
    $P844."add_method"($P845, "new", $P846)
    nqp_get_sc_object $P847, "1304456122.346", 16
    get_how $P848, $P847
    nqp_get_sc_object $P849, "1304456122.346", 16
    .const 'Sub' $P850 = "44_1304456123.433" 
    $P848."add_method"($P849, "BUILD", $P850)
    nqp_get_sc_object $P851, "1304456122.346", 16
    get_how $P852, $P851
    nqp_get_sc_object $P853, "1304456122.346", 16
    .const 'Sub' $P854 = "45_1304456123.433" 
    $P852."add_method"($P853, "list", $P854)
    nqp_get_sc_object $P855, "1304456122.346", 16
    get_how $P856, $P855
    nqp_get_sc_object $P857, "1304456122.346", 16
    .const 'Sub' $P858 = "46_1304456123.433" 
    $P856."add_method"($P857, "hash", $P858)
    nqp_get_sc_object $P859, "1304456122.346", 16
    get_how $P860, $P859
    nqp_get_sc_object $P861, "1304456122.346", 16
    .const 'Sub' $P862 = "47_1304456123.433" 
    $P860."add_parrot_vtable_mapping"($P861, "get_pmc_keyed_str", $P862)
    nqp_get_sc_object $P863, "1304456122.346", 16
    get_how $P864, $P863
    nqp_get_sc_object $P865, "1304456122.346", 16
    .const 'Sub' $P866 = "48_1304456123.433" 
    $P864."add_parrot_vtable_mapping"($P865, "get_pmc_keyed", $P866)
    nqp_get_sc_object $P867, "1304456122.346", 16
    get_how $P868, $P867
    nqp_get_sc_object $P869, "1304456122.346", 16
    .const 'Sub' $P870 = "49_1304456123.433" 
    $P868."add_parrot_vtable_mapping"($P869, "get_pmc_keyed_int", $P870)
    nqp_get_sc_object $P871, "1304456122.346", 16
    get_how $P872, $P871
    nqp_get_sc_object $P873, "1304456122.346", 16
    .const 'Sub' $P874 = "50_1304456123.433" 
    $P872."add_parrot_vtable_mapping"($P873, "set_pmc_keyed_str", $P874)
    nqp_get_sc_object $P875, "1304456122.346", 16
    get_how $P876, $P875
    nqp_get_sc_object $P877, "1304456122.346", 16
    .const 'Sub' $P878 = "51_1304456123.433" 
    $P876."add_parrot_vtable_mapping"($P877, "set_pmc_keyed", $P878)
    nqp_get_sc_object $P879, "1304456122.346", 16
    get_how $P880, $P879
    nqp_get_sc_object $P881, "1304456122.346", 16
    .const 'Sub' $P882 = "52_1304456123.433" 
    $P880."add_parrot_vtable_mapping"($P881, "set_pmc_keyed_int", $P882)
    nqp_get_sc_object $P883, "1304456122.346", 16
    get_how $P884, $P883
    nqp_get_sc_object $P885, "1304456122.346", 16
    .const 'Sub' $P886 = "53_1304456123.433" 
    $P884."add_parrot_vtable_mapping"($P885, "exists_keyed", $P886)
    nqp_get_sc_object $P887, "1304456122.346", 16
    get_how $P888, $P887
    nqp_get_sc_object $P889, "1304456122.346", 16
    .const 'Sub' $P890 = "54_1304456123.433" 
    $P888."add_parrot_vtable_mapping"($P889, "exists_keyed_str", $P890)
    nqp_get_sc_object $P891, "1304456122.346", 16
    get_how $P892, $P891
    nqp_get_sc_object $P893, "1304456122.346", 16
    .const 'Sub' $P894 = "55_1304456123.433" 
    $P892."add_parrot_vtable_mapping"($P893, "exists_keyed_int", $P894)
    nqp_get_sc_object $P895, "1304456122.346", 16
    get_how $P896, $P895
    nqp_get_sc_object $P897, "1304456122.346", 16
    .const 'Sub' $P898 = "56_1304456123.433" 
    $P896."add_parrot_vtable_mapping"($P897, "delete_keyed", $P898)
    nqp_get_sc_object $P899, "1304456122.346", 16
    get_how $P900, $P899
    nqp_get_sc_object $P901, "1304456122.346", 16
    .const 'Sub' $P902 = "57_1304456123.433" 
    $P900."add_parrot_vtable_mapping"($P901, "delete_keyed_str", $P902)
    nqp_get_sc_object $P903, "1304456122.346", 16
    get_how $P904, $P903
    nqp_get_sc_object $P905, "1304456122.346", 16
    .const 'Sub' $P906 = "58_1304456123.433" 
    $P904."add_parrot_vtable_mapping"($P905, "delete_keyed_int", $P906)
    nqp_get_sc_object $P907, "1304456122.346", 16
    get_how $P908, $P907
    nqp_get_sc_object $P909, "1304456122.346", 16
    .const 'Sub' $P910 = "59_1304456123.433" 
    $P908."add_parrot_vtable_mapping"($P909, "unshift_pmc", $P910)
    nqp_get_sc_object $P911, "1304456122.346", 16
    get_how $P912, $P911
    nqp_get_sc_object $P913, "1304456122.346", 16
    .const 'Sub' $P914 = "60_1304456123.433" 
    $P912."add_parrot_vtable_mapping"($P913, "push_pmc", $P914)
    .const 'Sub' $P915 = "42_1304456123.433" 
    $P916 = $P915."get_lexinfo"()
    nqp_get_sc_object $P917, "1304456122.346", 16
    $P916."set_static_lexpad_value"("$?PACKAGE", $P917)
    .const 'Sub' $P918 = "42_1304456123.433" 
    $P919 = $P918."get_lexinfo"()
    $P919."finish_static_lexpad"()
    .const 'Sub' $P920 = "42_1304456123.433" 
    $P921 = $P920."get_lexinfo"()
    nqp_get_sc_object $P922, "1304456122.346", 16
    $P921."set_static_lexpad_value"("$?CLASS", $P922)
    .const 'Sub' $P923 = "42_1304456123.433" 
    $P924 = $P923."get_lexinfo"()
    $P924."finish_static_lexpad"()
    nqp_get_sc_object $P925, "1304456122.346", 16
    get_how $P926, $P925
    nqp_get_sc_object $P927, "1304456122.346", 16
    nqp_get_sc_object $P928, "1304456122.346", 5
    $P926."set_default_parent"($P927, $P928)
    nqp_get_sc_object $P929, "1304456122.346", 16
    get_how $P930, $P929
    nqp_get_sc_object $P931, "1304456122.346", 16
    $P930."compose"($P931)
  if_648_end:
    nqp_get_sc_object $P1099, "1304456122.346", 0
    set_hll_global "GLOBAL", $P1099
.end


.HLL "nqp"

.namespace []
.sub "open"  :subid("11_1304456123.433") :outer("10_1304456123.433")
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
    if has_param_23, optparam_63
    new $P24, "Undef"
    set param_23, $P24
  optparam_63:
    .lex "$r", param_23
    if has_param_25, optparam_64
    new $P26, "Undef"
    set param_25, $P26
  optparam_64:
    .lex "$w", param_25
    if has_param_27, optparam_65
    new $P28, "Undef"
    set param_27, $P28
  optparam_65:
    .lex "$a", param_27
    if has_param_29, optparam_66
    new $P30, "Undef"
    set param_29, $P30
  optparam_66:
    .lex "$bin", param_29
.annotate 'line', 159
    new $P31, "Undef"
    .lex "$mode", $P31
.annotate 'line', 160
    new $P32, "Undef"
    .lex "$handle", $P32
.annotate 'line', 159
    find_lex $P35, "$w"
    unless_null $P35, vivify_67
    new $P35, "Undef"
  vivify_67:
    if $P35, if_34
    find_lex $P39, "$a"
    unless_null $P39, vivify_68
    new $P39, "Undef"
  vivify_68:
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
    unless_null $P43, vivify_69
    new $P43, "Undef"
  vivify_69:
    find_lex $P44, "$filename"
    unless_null $P44, vivify_70
    new $P44, "Undef"
  vivify_70:
    find_lex $P45, "$mode"
    unless_null $P45, vivify_71
    new $P45, "Undef"
  vivify_71:
    $P43."open"($P44, $P45)
.annotate 'line', 162
    find_lex $P46, "$handle"
    unless_null $P46, vivify_72
    new $P46, "Undef"
  vivify_72:
    find_lex $P49, "$bin"
    unless_null $P49, vivify_73
    new $P49, "Undef"
  vivify_73:
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
    unless_null $P52, vivify_74
    new $P52, "Undef"
  vivify_74:
.annotate 'line', 158
    .return ($P52)
.end


.HLL "nqp"

.namespace []
.sub "close"  :subid("12_1304456123.433") :outer("10_1304456123.433")
    .param pmc param_55
.annotate 'line', 170
    .lex "$handle", param_55
.annotate 'line', 171
    find_lex $P56, "$handle"
    unless_null $P56, vivify_75
    new $P56, "Undef"
  vivify_75:
    $P57 = $P56."close"()
.annotate 'line', 170
    .return ($P57)
.end


.HLL "nqp"

.namespace []
.sub "slurp"  :subid("13_1304456123.433") :outer("10_1304456123.433")
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
    unless_null $P63, vivify_76
    new $P63, "Undef"
  vivify_76:
    $P64 = "open"($P63, 1 :named("r"))
    store_lex "$handle", $P64
.annotate 'line', 180
    find_lex $P65, "$handle"
    unless_null $P65, vivify_77
    new $P65, "Undef"
  vivify_77:
    $P66 = $P65."readall"()
    store_lex "$contents", $P66
.annotate 'line', 181
    find_lex $P67, "$handle"
    unless_null $P67, vivify_78
    new $P67, "Undef"
  vivify_78:
    $P67."close"()
    find_lex $P68, "$contents"
    unless_null $P68, vivify_79
    new $P68, "Undef"
  vivify_79:
.annotate 'line', 178
    .return ($P68)
.end


.HLL "nqp"

.namespace []
.sub "spew"  :subid("14_1304456123.433") :outer("10_1304456123.433")
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
    unless_null $P75, vivify_80
    new $P75, "Undef"
  vivify_80:
    find_lex $P76, "$filename"
    unless_null $P76, vivify_81
    new $P76, "Undef"
  vivify_81:
    $P75."open"($P76, "w")
.annotate 'line', 193
    find_lex $P77, "$handle"
    unless_null $P77, vivify_82
    new $P77, "Undef"
  vivify_82:
    find_lex $P78, "$contents"
    unless_null $P78, vivify_83
    new $P78, "Undef"
  vivify_83:
    $P77."print"($P78)
.annotate 'line', 194
    find_lex $P79, "$handle"
    unless_null $P79, vivify_84
    new $P79, "Undef"
  vivify_84:
    $P80 = $P79."close"()
.annotate 'line', 190
    .return ($P80)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "print"  :subid("15_1304456123.433") :outer("10_1304456123.433")
    .param pmc param_83 :slurpy
.annotate 'line', 197
    .const 'Sub' $P89 = "16_1304456123.433" 
    capture_lex $P89
    .lex "@args", param_83
.annotate 'line', 198
    find_lex $P85, "@args"
    unless_null $P85, vivify_85
    $P85 = root_new ['parrot';'ResizablePMCArray']
  vivify_85:
    defined $I86, $P85
    unless $I86, for_undef_86
    iter $P84, $P85
    new $P93, 'ExceptionHandler'
    set_label $P93, loop92_handler
    $P93."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P93
  loop92_test:
    unless $P84, loop92_done
    shift $P87, $P84
  loop92_redo:
    .const 'Sub' $P89 = "16_1304456123.433" 
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
  for_undef_86:
.annotate 'line', 197
    .return (1)
.end


.HLL "nqp"

.namespace []
.sub "_block88"  :anon :subid("16_1304456123.433") :outer("15_1304456123.433")
    .param pmc param_90
.annotate 'line', 198
    .lex "$_", param_90
.annotate 'line', 199
    find_lex $P91, "$_"
    unless_null $P91, vivify_87
    new $P91, "Undef"
  vivify_87:
    print $P91
.annotate 'line', 198
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "say"  :subid("17_1304456123.433") :outer("10_1304456123.433")
    .param pmc param_97 :slurpy
.annotate 'line', 204
    .lex "@args", param_97
.annotate 'line', 205
    find_lex $P98, "@args"
    unless_null $P98, vivify_88
    $P98 = root_new ['parrot';'ResizablePMCArray']
  vivify_88:
    $P99 = "print"($P98 :flat, "\n")
.annotate 'line', 204
    .return ($P99)
.end


.HLL "nqp"

.namespace []
.sub "match"  :subid("18_1304456123.433") :outer("10_1304456123.433")
    .param pmc param_102
    .param pmc param_103
    .param pmc param_104 :optional :named("global")
    .param int has_param_104 :opt_flag
.annotate 'line', 222
    .const 'Sub' $P114 = "19_1304456123.433" 
    capture_lex $P114
    .lex "$text", param_102
    .lex "$regex", param_103
    if has_param_104, optparam_89
    new $P105, "Undef"
    set param_104, $P105
  optparam_89:
    .lex "$global", param_104
.annotate 'line', 223
    new $P106, "Undef"
    .lex "$match", $P106
    find_lex $P107, "$regex"
    unless_null $P107, vivify_90
    new $P107, "Undef"
  vivify_90:
    find_lex $P108, "$text"
    unless_null $P108, vivify_91
    new $P108, "Undef"
  vivify_91:
    $P109 = $P107."ACCEPTS"($P108)
    store_lex "$match", $P109
.annotate 'line', 224
    find_lex $P112, "$global"
    unless_null $P112, vivify_92
    new $P112, "Undef"
  vivify_92:
    if $P112, if_111
.annotate 'line', 232
    find_lex $P132, "$match"
    unless_null $P132, vivify_93
    new $P132, "Undef"
  vivify_93:
    set $P110, $P132
.annotate 'line', 224
    goto if_111_end
  if_111:
    .const 'Sub' $P114 = "19_1304456123.433" 
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
.sub "_block113"  :anon :subid("19_1304456123.433") :outer("18_1304456123.433")
.annotate 'line', 225
    $P115 = root_new ['parrot';'ResizablePMCArray']
    .lex "@matches", $P115
.annotate 'line', 224
    find_lex $P116, "@matches"
    unless_null $P116, vivify_94
    $P116 = root_new ['parrot';'ResizablePMCArray']
  vivify_94:
.annotate 'line', 226
    new $P128, 'ExceptionHandler'
    set_label $P128, loop127_handler
    $P128."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P128
  loop127_test:
    find_lex $P117, "$match"
    unless_null $P117, vivify_95
    new $P117, "Undef"
  vivify_95:
    unless $P117, loop127_done
  loop127_redo:
.annotate 'line', 227
    find_lex $P118, "@matches"
    unless_null $P118, vivify_96
    $P118 = root_new ['parrot';'ResizablePMCArray']
  vivify_96:
    find_lex $P119, "$match"
    unless_null $P119, vivify_97
    new $P119, "Undef"
  vivify_97:
    $P118."push"($P119)
.annotate 'line', 228
    find_lex $P120, "$match"
    unless_null $P120, vivify_98
    new $P120, "Undef"
  vivify_98:
    $P121 = $P120."CURSOR"()
    find_lex $P122, "$text"
    unless_null $P122, vivify_99
    new $P122, "Undef"
  vivify_99:
    find_lex $P123, "$regex"
    unless_null $P123, vivify_100
    new $P123, "Undef"
  vivify_100:
    find_lex $P124, "$match"
    unless_null $P124, vivify_101
    new $P124, "Undef"
  vivify_101:
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
    unless_null $P130, vivify_102
    $P130 = root_new ['parrot';'ResizablePMCArray']
  vivify_102:
.annotate 'line', 224
    .return ($P130)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "subst"  :subid("20_1304456123.433") :outer("10_1304456123.433")
    .param pmc param_135
    .param pmc param_136
    .param pmc param_137
    .param pmc param_138 :optional :named("global")
    .param int has_param_138 :opt_flag
.annotate 'line', 244
    .const 'Sub' $P165 = "21_1304456123.433" 
    capture_lex $P165
    .lex "$text", param_135
    .lex "$regex", param_136
    .lex "$repl", param_137
    if has_param_138, optparam_103
    new $P139, "Undef"
    set param_138, $P139
  optparam_103:
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
    unless_null $P147, vivify_104
    new $P147, "Undef"
  vivify_104:
    if $P147, if_146
.annotate 'line', 246
    find_lex $P151, "$regex"
    unless_null $P151, vivify_105
    new $P151, "Undef"
  vivify_105:
    find_lex $P152, "$text"
    unless_null $P152, vivify_106
    new $P152, "Undef"
  vivify_106:
    $P153 = $P151."ACCEPTS"($P152)
    new $P154, "ResizablePMCArray"
    push $P154, $P153
.annotate 'line', 245
    set $P145, $P154
    goto if_146_end
  if_146:
    find_lex $P148, "$text"
    unless_null $P148, vivify_107
    new $P148, "Undef"
  vivify_107:
    find_lex $P149, "$regex"
    unless_null $P149, vivify_108
    new $P149, "Undef"
  vivify_108:
    $P150 = "match"($P148, $P149, 1 :named("global"))
    set $P145, $P150
  if_146_end:
    store_lex "@matches", $P145
.annotate 'line', 247
    find_lex $P155, "$repl"
    unless_null $P155, vivify_109
    new $P155, "Undef"
  vivify_109:
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
    unless_null $P161, vivify_110
    $P161 = root_new ['parrot';'ResizablePMCArray']
  vivify_110:
    defined $I162, $P161
    unless $I162, for_undef_111
    iter $P160, $P161
    new $P198, 'ExceptionHandler'
    set_label $P198, loop197_handler
    $P198."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P198
  loop197_test:
    unless $P160, loop197_done
    shift $P163, $P160
  loop197_redo:
    .const 'Sub' $P165 = "21_1304456123.433" 
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
  for_undef_111:
.annotate 'line', 260
    find_lex $P200, "$text"
    unless_null $P200, vivify_126
    new $P200, "Undef"
  vivify_126:
    set $S201, $P200
    length $I202, $S201
    new $P203, 'Integer'
    set $P203, $I202
    store_lex "$chars", $P203
.annotate 'line', 262
    find_lex $P205, "$chars"
    unless_null $P205, vivify_127
    new $P205, "Undef"
  vivify_127:
    set $N206, $P205
    find_lex $P207, "$offset"
    unless_null $P207, vivify_128
    new $P207, "Undef"
  vivify_128:
    set $N208, $P207
    isgt $I209, $N206, $N208
    unless $I209, if_204_end
.annotate 'line', 261
    find_lex $P210, "$result"
    unless_null $P210, vivify_129
    new $P210, "Undef"
  vivify_129:
    find_lex $P211, "$text"
    unless_null $P211, vivify_130
    new $P211, "Undef"
  vivify_130:
    set $S212, $P211
    find_lex $P213, "$offset"
    unless_null $P213, vivify_131
    new $P213, "Undef"
  vivify_131:
    set $I214, $P213
    find_lex $P215, "$chars"
    unless_null $P215, vivify_132
    new $P215, "Undef"
  vivify_132:
    set $I216, $P215
    substr $S217, $S212, $I214, $I216
    push $P210, $S217
  if_204_end:
.annotate 'line', 264
    find_lex $P218, "$result"
    unless_null $P218, vivify_133
    new $P218, "Undef"
  vivify_133:
    set $S219, $P218
.annotate 'line', 244
    .return ($S219)
.end


.HLL "nqp"

.namespace []
.sub "_block164"  :anon :subid("21_1304456123.433") :outer("20_1304456123.433")
    .param pmc param_166
.annotate 'line', 251
    .lex "$match", param_166
.annotate 'line', 252
    find_lex $P169, "$match"
    unless_null $P169, vivify_112
    new $P169, "Undef"
  vivify_112:
    if $P169, if_168
    set $P167, $P169
    goto if_168_end
  if_168:
.annotate 'line', 254
    find_lex $P171, "$match"
    unless_null $P171, vivify_113
    new $P171, "Undef"
  vivify_113:
    $N172 = $P171."from"()
    find_lex $P173, "$offset"
    unless_null $P173, vivify_114
    new $P173, "Undef"
  vivify_114:
    set $N174, $P173
    isgt $I175, $N172, $N174
    unless $I175, if_170_end
.annotate 'line', 253
    find_lex $P176, "$result"
    unless_null $P176, vivify_115
    new $P176, "Undef"
  vivify_115:
    find_lex $P177, "$text"
    unless_null $P177, vivify_116
    new $P177, "Undef"
  vivify_116:
    set $S178, $P177
    find_lex $P179, "$offset"
    unless_null $P179, vivify_117
    new $P179, "Undef"
  vivify_117:
    set $I180, $P179
    find_lex $P181, "$match"
    unless_null $P181, vivify_118
    new $P181, "Undef"
  vivify_118:
    $P182 = $P181."from"()
    find_lex $P183, "$offset"
    unless_null $P183, vivify_119
    new $P183, "Undef"
  vivify_119:
    sub $P184, $P182, $P183
    set $I185, $P184
    substr $S186, $S178, $I180, $I185
    push $P176, $S186
  if_170_end:
.annotate 'line', 255
    find_lex $P187, "$result"
    unless_null $P187, vivify_120
    new $P187, "Undef"
  vivify_120:
    find_lex $P190, "$is_code"
    unless_null $P190, vivify_121
    new $P190, "Undef"
  vivify_121:
    if $P190, if_189
    find_lex $P194, "$repl"
    unless_null $P194, vivify_122
    new $P194, "Undef"
  vivify_122:
    set $P188, $P194
    goto if_189_end
  if_189:
    find_lex $P191, "$repl"
    unless_null $P191, vivify_123
    new $P191, "Undef"
  vivify_123:
    find_lex $P192, "$match"
    unless_null $P192, vivify_124
    new $P192, "Undef"
  vivify_124:
    $P193 = $P191($P192)
    set $P188, $P193
  if_189_end:
    push $P187, $P188
.annotate 'line', 256
    find_lex $P195, "$match"
    unless_null $P195, vivify_125
    new $P195, "Undef"
  vivify_125:
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
.sub "plan"  :subid("22_1304456123.433") :outer("10_1304456123.433")
    .param pmc param_223
.annotate 'line', 272
    .lex "$quantity", param_223
.annotate 'line', 273
    new $P224, 'String'
    set $P224, "1.."
    find_lex $P225, "$quantity"
    unless_null $P225, vivify_134
    new $P225, "Undef"
  vivify_134:
    concat $P226, $P224, $P225
    $P227 = "say"($P226)
.annotate 'line', 272
    .return ($P227)
.end


.HLL "nqp"

.namespace []
.sub "ok"  :subid("23_1304456123.433") :outer("10_1304456123.433")
    .param pmc param_230
    .param pmc param_231 :optional
    .param int has_param_231 :opt_flag
.annotate 'line', 276
    .lex "$condition", param_230
    if has_param_231, optparam_135
    new $P232, "Undef"
    set param_231, $P232
  optparam_135:
    .lex "$desc", param_231
.annotate 'line', 277
    find_lex $P233, "$test_counter"
    unless_null $P233, vivify_136
    new $P233, "Undef"
  vivify_136:
    add $P234, $P233, 1
    store_lex "$test_counter", $P234
.annotate 'line', 279
    find_lex $P236, "$condition"
    unless_null $P236, vivify_137
    new $P236, "Undef"
  vivify_137:
    if $P236, unless_235_end
.annotate 'line', 280
    "print"("not ")
  unless_235_end:
.annotate 'line', 282
    new $P237, 'String'
    set $P237, "ok "
    find_lex $P238, "$test_counter"
    unless_null $P238, vivify_138
    new $P238, "Undef"
  vivify_138:
    concat $P239, $P237, $P238
    "print"($P239)
.annotate 'line', 283
    find_lex $P241, "$desc"
    unless_null $P241, vivify_139
    new $P241, "Undef"
  vivify_139:
    unless $P241, if_240_end
.annotate 'line', 284
    new $P242, 'String'
    set $P242, " - "
    find_lex $P243, "$desc"
    unless_null $P243, vivify_140
    new $P243, "Undef"
  vivify_140:
    concat $P244, $P242, $P243
    "print"($P244)
  if_240_end:
.annotate 'line', 286
    "print"("\n")
.annotate 'line', 288
    find_lex $P247, "$condition"
    unless_null $P247, vivify_141
    new $P247, "Undef"
  vivify_141:
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
.sub "skip"  :subid("24_1304456123.433") :outer("10_1304456123.433")
    .param pmc param_252
.annotate 'line', 291
    .lex "$desc", param_252
.annotate 'line', 292
    find_lex $P253, "$test_counter"
    unless_null $P253, vivify_142
    new $P253, "Undef"
  vivify_142:
    add $P254, $P253, 1
    store_lex "$test_counter", $P254
.annotate 'line', 293
    new $P255, 'String'
    set $P255, "ok "
    find_lex $P256, "$test_counter"
    unless_null $P256, vivify_143
    new $P256, "Undef"
  vivify_143:
    concat $P257, $P255, $P256
    concat $P258, $P257, " # SKIP "
    find_lex $P259, "$desc"
    unless_null $P259, vivify_144
    new $P259, "Undef"
  vivify_144:
    concat $P260, $P258, $P259
    concat $P261, $P260, "\n"
    $P262 = "say"($P261)
.annotate 'line', 291
    .return ($P262)
.end


.HLL "nqp"

.namespace []
.sub "_block264"  :anon :subid("25_1304456123.433") :outer("10_1304456123.433")
.annotate 'line', 14
    .lex "$?PACKAGE", $P266
    .lex "$?CLASS", $P267
.annotate 'line', 15
    find_lex $P268, "$?PACKAGE"
    get_who $P269, $P268
    set $P272, $P269["NQPModuleHOW"]
    unless_null $P272, vivify_145
    get_hll_global $P270, "GLOBAL"
    get_who $P271, $P270
    set $P272, $P271["NQPModuleHOW"]
  vivify_145:
    find_lex $P273, "$?PACKAGE"
    unless_null $P273, vivify_146
    new $P273, "Undef"
    store_lex "$?PACKAGE", $P273
  vivify_146:
    get_who $P274, $P273
    set $P274["module"], $P272
.annotate 'line', 16
    find_lex $P275, "$?PACKAGE"
    get_who $P276, $P275
    set $P279, $P276["NQPClassHOW"]
    unless_null $P279, vivify_147
    get_hll_global $P277, "GLOBAL"
    get_who $P278, $P277
    set $P279, $P278["NQPClassHOW"]
  vivify_147:
    find_lex $P280, "$?PACKAGE"
    unless_null $P280, vivify_148
    new $P280, "Undef"
    store_lex "$?PACKAGE", $P280
  vivify_148:
    get_who $P281, $P280
    set $P281["class"], $P279
.annotate 'line', 17
    find_lex $P282, "$?PACKAGE"
    get_who $P283, $P282
    set $P286, $P283["NQPAttribute"]
    unless_null $P286, vivify_149
    get_hll_global $P284, "GLOBAL"
    get_who $P285, $P284
    set $P286, $P285["NQPAttribute"]
  vivify_149:
    find_lex $P287, "$?PACKAGE"
    unless_null $P287, vivify_150
    new $P287, "Undef"
    store_lex "$?PACKAGE", $P287
  vivify_150:
    get_who $P288, $P287
    set $P288["class-attr"], $P286
.annotate 'line', 18
    find_lex $P289, "$?PACKAGE"
    get_who $P290, $P289
    set $P293, $P290["NQPClassHOW"]
    unless_null $P293, vivify_151
    get_hll_global $P291, "GLOBAL"
    get_who $P292, $P291
    set $P293, $P292["NQPClassHOW"]
  vivify_151:
    find_lex $P294, "$?PACKAGE"
    unless_null $P294, vivify_152
    new $P294, "Undef"
    store_lex "$?PACKAGE", $P294
  vivify_152:
    get_who $P295, $P294
    set $P295["grammar"], $P293
.annotate 'line', 19
    find_lex $P296, "$?PACKAGE"
    get_who $P297, $P296
    set $P300, $P297["NQPAttribute"]
    unless_null $P300, vivify_153
    get_hll_global $P298, "GLOBAL"
    get_who $P299, $P298
    set $P300, $P299["NQPAttribute"]
  vivify_153:
    find_lex $P301, "$?PACKAGE"
    unless_null $P301, vivify_154
    new $P301, "Undef"
    store_lex "$?PACKAGE", $P301
  vivify_154:
    get_who $P302, $P301
    set $P302["grammar-attr"], $P300
.annotate 'line', 20
    find_lex $P303, "$?PACKAGE"
    get_who $P304, $P303
    set $P307, $P304["NQPParametricRoleHOW"]
    unless_null $P307, vivify_155
    get_hll_global $P305, "GLOBAL"
    get_who $P306, $P305
    set $P307, $P306["NQPParametricRoleHOW"]
  vivify_155:
    find_lex $P308, "$?PACKAGE"
    unless_null $P308, vivify_156
    new $P308, "Undef"
    store_lex "$?PACKAGE", $P308
  vivify_156:
    get_who $P309, $P308
    set $P309["role"], $P307
.annotate 'line', 21
    find_lex $P310, "$?PACKAGE"
    get_who $P311, $P310
    set $P314, $P311["NQPAttribute"]
    unless_null $P314, vivify_157
    get_hll_global $P312, "GLOBAL"
    get_who $P313, $P312
    set $P314, $P313["NQPAttribute"]
  vivify_157:
    find_lex $P315, "$?PACKAGE"
    unless_null $P315, vivify_158
    new $P315, "Undef"
    store_lex "$?PACKAGE", $P315
  vivify_158:
    get_who $P316, $P315
    set $P316["role-attr"], $P314
.annotate 'line', 22
    find_lex $P317, "$?PACKAGE"
    get_who $P318, $P317
    set $P321, $P318["NQPNativeHOW"]
    unless_null $P321, vivify_159
    get_hll_global $P319, "GLOBAL"
    get_who $P320, $P319
    set $P321, $P320["NQPNativeHOW"]
  vivify_159:
    find_lex $P322, "$?PACKAGE"
    unless_null $P322, vivify_160
    new $P322, "Undef"
    store_lex "$?PACKAGE", $P322
  vivify_160:
    get_who $P323, $P322
    set $P323["native"], $P321
.annotate 'line', 14
    .return ($P321)
.end


.HLL "nqp"

.namespace []
.sub "_block324"  :anon :subid("26_1304456123.433") :outer("10_1304456123.433")
.annotate 'line', 25
    .lex "$?PACKAGE", $P326
    .lex "$?CLASS", $P327
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block328"  :anon :subid("27_1304456123.433") :outer("10_1304456123.433")
.annotate 'line', 27
    .lex "$?PACKAGE", $P330
    .lex "$?CLASS", $P331
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block332"  :anon :subid("28_1304456123.433") :outer("10_1304456123.433")
.annotate 'line', 29
    .lex "$?PACKAGE", $P334
    .lex "$?CLASS", $P335
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block336"  :anon :subid("29_1304456123.433") :outer("10_1304456123.433")
.annotate 'line', 32
    .const 'Sub' $P442 = "41_1304456123.433" 
    capture_lex $P442
    .const 'Sub' $P434 = "40_1304456123.433" 
    capture_lex $P434
    .const 'Sub' $P430 = "39_1304456123.433" 
    capture_lex $P430
    .const 'Sub' $P422 = "38_1304456123.433" 
    capture_lex $P422
    .const 'Sub' $P419 = "37_1304456123.433" 
    capture_lex $P419
    .const 'Sub' $P413 = "36_1304456123.433" 
    capture_lex $P413
    .const 'Sub' $P375 = "34_1304456123.433" 
    capture_lex $P375
    .const 'Sub' $P354 = "32_1304456123.433" 
    capture_lex $P354
    .const 'Sub' $P344 = "31_1304456123.433" 
    capture_lex $P344
    .const 'Sub' $P340 = "30_1304456123.433" 
    capture_lex $P340
    .lex "$?PACKAGE", $P338
    .lex "$?CLASS", $P339
.annotate 'line', 73
    .const 'Sub' $P442 = "41_1304456123.433" 
    newclosure $P450, $P442
.annotate 'line', 32
    .return ($P450)
.end


.HLL "nqp"

.namespace []
.sub "CREATE"  :subid("30_1304456123.433") :outer("29_1304456123.433")
    .param pmc param_341
.annotate 'line', 33
    .lex "self", param_341
.annotate 'line', 34
    find_lex $P342, "self"
    repr_instance_of $P343, $P342
.annotate 'line', 33
    .return ($P343)
.end


.HLL "nqp"

.namespace []
.sub "bless"  :subid("31_1304456123.433") :outer("29_1304456123.433")
    .param pmc param_345
    .param pmc param_347 :slurpy :named
.annotate 'line', 37
    .lex "$self", param_345
    find_lex $P346, "$self"
    .lex "self", $P346
    .lex "%attributes", param_347
.annotate 'line', 38
    new $P348, "Undef"
    .lex "$instance", $P348
    find_lex $P349, "self"
    $P350 = $P349."CREATE"()
    store_lex "$instance", $P350
.annotate 'line', 39
    find_lex $P351, "$instance"
    unless_null $P351, vivify_161
    new $P351, "Undef"
  vivify_161:
    find_lex $P352, "%attributes"
    unless_null $P352, vivify_162
    $P352 = root_new ['parrot';'Hash']
  vivify_162:
    $P351."BUILDALL"($P352 :flat)
    find_lex $P353, "$instance"
    unless_null $P353, vivify_163
    new $P353, "Undef"
  vivify_163:
.annotate 'line', 37
    .return ($P353)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "BUILDALL"  :subid("32_1304456123.433") :outer("29_1304456123.433")
    .param pmc param_355
    .param pmc param_357 :slurpy :named
.annotate 'line', 43
    .const 'Sub' $P366 = "33_1304456123.433" 
    capture_lex $P366
    .lex "$self", param_355
    find_lex $P356, "$self"
    .lex "self", $P356
    .lex "%attributes", param_357
.annotate 'line', 44
    find_lex $P359, "$self"
    unless_null $P359, vivify_164
    new $P359, "Undef"
  vivify_164:
    get_how $P360, $P359
    find_lex $P361, "$self"
    unless_null $P361, vivify_165
    new $P361, "Undef"
  vivify_165:
    $P362 = $P360."parents"($P361)
    defined $I363, $P362
    unless $I363, for_undef_166
    iter $P358, $P362
    new $P373, 'ExceptionHandler'
    set_label $P373, loop372_handler
    $P373."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P373
  loop372_test:
    unless $P358, loop372_done
    shift $P364, $P358
  loop372_redo:
    .const 'Sub' $P366 = "33_1304456123.433" 
    capture_lex $P366
    $P366($P364)
  loop372_next:
    goto loop372_test
  loop372_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P374, exception, 'type'
    eq $P374, .CONTROL_LOOP_NEXT, loop372_next
    eq $P374, .CONTROL_LOOP_REDO, loop372_redo
  loop372_done:
    pop_eh 
  for_undef_166:
.annotate 'line', 43
    .return ($P358)
.end


.HLL "nqp"

.namespace []
.sub "_block365"  :anon :subid("33_1304456123.433") :outer("32_1304456123.433")
    .param pmc param_367
.annotate 'line', 44
    .lex "$class", param_367
.annotate 'line', 45
    find_lex $P368, "$self"
    unless_null $P368, vivify_167
    new $P368, "Undef"
  vivify_167:
    find_lex $P369, "$class"
    unless_null $P369, vivify_168
    new $P369, "Undef"
  vivify_168:
    find_lex $P370, "%attributes"
    unless_null $P370, vivify_169
    $P370 = root_new ['parrot';'Hash']
  vivify_169:
    $P371 = $P368."BUILD_MAGIC"($P369, $P370 :flat)
.annotate 'line', 44
    .return ($P371)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "BUILD_MAGIC"  :subid("34_1304456123.433") :outer("29_1304456123.433")
    .param pmc param_376
    .param pmc param_378
    .param pmc param_379 :slurpy :named
.annotate 'line', 49
    .const 'Sub' $P388 = "35_1304456123.433" 
    capture_lex $P388
    .lex "$self", param_376
    find_lex $P377, "$self"
    .lex "self", $P377
    .lex "$type", param_378
    .lex "%attributes", param_379
.annotate 'line', 50
    find_lex $P381, "$type"
    unless_null $P381, vivify_170
    new $P381, "Undef"
  vivify_170:
    get_how $P382, $P381
    find_lex $P383, "$type"
    unless_null $P383, vivify_171
    new $P383, "Undef"
  vivify_171:
    $P384 = $P382."attributes"($P383, 1 :named("local"))
    defined $I385, $P384
    unless $I385, for_undef_172
    iter $P380, $P384
    new $P411, 'ExceptionHandler'
    set_label $P411, loop410_handler
    $P411."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P411
  loop410_test:
    unless $P380, loop410_done
    shift $P386, $P380
  loop410_redo:
    .const 'Sub' $P388 = "35_1304456123.433" 
    capture_lex $P388
    $P388($P386)
  loop410_next:
    goto loop410_test
  loop410_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P412, exception, 'type'
    eq $P412, .CONTROL_LOOP_NEXT, loop410_next
    eq $P412, .CONTROL_LOOP_REDO, loop410_redo
  loop410_done:
    pop_eh 
  for_undef_172:
.annotate 'line', 49
    .return ($P380)
.end


.HLL "nqp"

.namespace []
.sub "_block387"  :anon :subid("35_1304456123.433") :outer("34_1304456123.433")
    .param pmc param_391
.annotate 'line', 51
    new $P389, "Undef"
    .lex "$name", $P389
.annotate 'line', 52
    new $P390, "Undef"
    .lex "$shortname", $P390
    .lex "$_", param_391
.annotate 'line', 51
    find_lex $P392, "$_"
    unless_null $P392, vivify_173
    new $P392, "Undef"
  vivify_173:
    $P393 = $P392."name"()
    store_lex "$name", $P393
.annotate 'line', 52
    find_lex $P394, "$name"
    unless_null $P394, vivify_174
    new $P394, "Undef"
  vivify_174:
    set $S395, $P394
    substr $S396, $S395, 2
    new $P397, 'String'
    set $P397, $S396
    store_lex "$shortname", $P397
.annotate 'line', 53
    find_lex $P401, "$shortname"
    unless_null $P401, vivify_175
    new $P401, "Undef"
  vivify_175:
    find_lex $P400, "%attributes"
    unless_null $P400, vivify_176
    $P400 = root_new ['parrot';'Hash']
  vivify_176:
    exists $I402, $P400[$P401]
    if $I402, if_399
    new $P398, 'Integer'
    set $P398, $I402
    goto if_399_end
  if_399:
.annotate 'line', 54
    find_lex $P403, "$self"
    unless_null $P403, vivify_177
    new $P403, "Undef"
  vivify_177:
    find_lex $P404, "$type"
    unless_null $P404, vivify_178
    new $P404, "Undef"
  vivify_178:
    find_lex $P405, "$name"
    unless_null $P405, vivify_179
    new $P405, "Undef"
  vivify_179:
    set $S406, $P405
    find_lex $P407, "$shortname"
    unless_null $P407, vivify_180
    new $P407, "Undef"
  vivify_180:
    find_lex $P408, "%attributes"
    unless_null $P408, vivify_181
    $P408 = root_new ['parrot';'Hash']
  vivify_181:
    set $P409, $P408[$P407]
    unless_null $P409, vivify_182
    new $P409, "Undef"
  vivify_182:
    setattribute $P403, $P404, $S406, $P409
  if_399_end:
.annotate 'line', 50
    .return ($P398)
.end


.HLL "nqp"

.namespace []
.sub "new"  :subid("36_1304456123.433") :outer("29_1304456123.433")
    .param pmc param_414
    .param pmc param_415 :slurpy :named
.annotate 'line', 59
    .lex "self", param_414
    .lex "%attributes", param_415
.annotate 'line', 60
    find_lex $P416, "self"
    find_lex $P417, "%attributes"
    unless_null $P417, vivify_183
    $P417 = root_new ['parrot';'Hash']
  vivify_183:
    $P418 = $P416."bless"($P417 :flat)
.annotate 'line', 59
    .return ($P418)
.end


.HLL "nqp"

.namespace []
.sub "Str" :instanceof("DispatcherSub") :subid("37_1304456123.433") :outer("29_1304456123.433")
    .param pmc param_420
.annotate 'line', 59
    .lex "self", param_420
    multi_dispatch_over_lexical_candidates $P421
    .return ($P421)
.end


.HLL "nqp"

.namespace []
.sub "Str"  :subid("38_1304456123.433") :outer("29_1304456123.433")
    .param pmc param_423
.annotate 'line', 64
    .lex "$self", param_423
    find_lex $P424, "$self"
    .lex "self", $P424
.annotate 'line', 65
    find_lex $P425, "self"
    get_how $P426, $P425
    find_lex $P427, "self"
    $P428 = $P426."name"($P427)
    concat $P429, $P428, "()"
.annotate 'line', 64
    .return ($P429)
.end


.HLL "nqp"

.namespace []
.sub "ACCEPTS" :instanceof("DispatcherSub") :subid("39_1304456123.433") :outer("29_1304456123.433")
    .param pmc param_431
    .param pmc param_432
.annotate 'line', 64
    .lex "self", param_431
.annotate 'line', 68
    .lex "$topic", param_432
.annotate 'line', 64
    multi_dispatch_over_lexical_candidates $P433
    .return ($P433)
.end


.HLL "nqp"

.namespace []
.sub "ACCEPTS"  :subid("40_1304456123.433") :outer("29_1304456123.433")
    .param pmc param_435
    .param pmc param_437
.annotate 'line', 69
    .lex "$self", param_435
    find_lex $P436, "$self"
    .lex "self", $P436
    .lex "$topic", param_437
.annotate 'line', 70
    find_lex $P438, "$topic"
    unless_null $P438, vivify_184
    new $P438, "Undef"
  vivify_184:
    find_lex $P439, "self"
    get_what $P440, $P439
    type_check $I441, $P438, $P440
.annotate 'line', 69
    .return ($I441)
.end


.HLL "nqp"

.namespace []
.sub "isa"  :subid("41_1304456123.433") :outer("29_1304456123.433")
    .param pmc param_443
    .param pmc param_444
.annotate 'line', 73
    .lex "self", param_443
    .lex "$type", param_444
.annotate 'line', 74
    find_lex $P445, "self"
    get_how $P446, $P445
    find_lex $P447, "self"
    find_lex $P448, "$type"
    unless_null $P448, vivify_185
    new $P448, "Undef"
  vivify_185:
    $P449 = $P446."isa"($P447, $P448)
.annotate 'line', 73
    .return ($P449)
.end


.HLL "nqp"

.namespace []
.sub "_block451"  :anon :subid("42_1304456123.433") :outer("10_1304456123.433")
.annotate 'line', 79
    .const 'Sub' $P623 = "60_1304456123.433" 
    capture_lex $P623
    .const 'Sub' $P615 = "59_1304456123.433" 
    capture_lex $P615
    .const 'Sub' $P607 = "58_1304456123.433" 
    capture_lex $P607
    .const 'Sub' $P599 = "57_1304456123.433" 
    capture_lex $P599
    .const 'Sub' $P591 = "56_1304456123.433" 
    capture_lex $P591
    .const 'Sub' $P582 = "55_1304456123.433" 
    capture_lex $P582
    .const 'Sub' $P573 = "54_1304456123.433" 
    capture_lex $P573
    .const 'Sub' $P564 = "53_1304456123.433" 
    capture_lex $P564
    .const 'Sub' $P553 = "52_1304456123.433" 
    capture_lex $P553
    .const 'Sub' $P543 = "51_1304456123.433" 
    capture_lex $P543
    .const 'Sub' $P533 = "50_1304456123.433" 
    capture_lex $P533
    .const 'Sub' $P515 = "49_1304456123.433" 
    capture_lex $P515
    .const 'Sub' $P498 = "48_1304456123.433" 
    capture_lex $P498
    .const 'Sub' $P481 = "47_1304456123.433" 
    capture_lex $P481
    .const 'Sub' $P475 = "46_1304456123.433" 
    capture_lex $P475
    .const 'Sub' $P470 = "45_1304456123.433" 
    capture_lex $P470
    .const 'Sub' $P462 = "44_1304456123.433" 
    capture_lex $P462
    .const 'Sub' $P455 = "43_1304456123.433" 
    capture_lex $P455
    .lex "$?PACKAGE", $P453
    .lex "$?CLASS", $P454
.annotate 'line', 142
    .const 'Sub' $P623 = "60_1304456123.433" 
    newclosure $P630, $P623
.annotate 'line', 79
    .return ($P630)
.end


.HLL "nqp"

.namespace []
.sub "new"  :subid("43_1304456123.433") :outer("42_1304456123.433")
    .param pmc param_456
.annotate 'line', 83
    .lex "self", param_456
.annotate 'line', 84
    new $P457, "Undef"
    .lex "$n", $P457
    find_lex $P458, "self"
    $P459 = $P458."CREATE"()
    store_lex "$n", $P459
.annotate 'line', 85
    find_lex $P460, "$n"
    unless_null $P460, vivify_186
    new $P460, "Undef"
  vivify_186:
    $P460."BUILD"()
    find_lex $P461, "$n"
    unless_null $P461, vivify_187
    new $P461, "Undef"
  vivify_187:
.annotate 'line', 83
    .return ($P461)
.end


.HLL "nqp"

.namespace []
.sub "BUILD"  :subid("44_1304456123.433") :outer("42_1304456123.433")
    .param pmc param_463
.annotate 'line', 89
    .lex "self", param_463
.annotate 'line', 90
    new $P464, "ResizablePMCArray"
    find_lex $P465, "self"
    find_lex $P466, "$?CLASS"
    setattribute $P465, $P466, "@!array", $P464
.annotate 'line', 91
    new $P467, "Hash"
    find_lex $P468, "self"
    find_lex $P469, "$?CLASS"
    setattribute $P468, $P469, "%!hash", $P467
.annotate 'line', 89
    .return ($P467)
.end


.HLL "nqp"

.namespace []
.sub "list"  :subid("45_1304456123.433") :outer("42_1304456123.433")
    .param pmc param_471
.annotate 'line', 94
    .lex "self", param_471
    find_lex $P472, "self"
    find_lex $P473, "$?CLASS"
    getattribute $P474, $P472, $P473, "@!array"
    unless_null $P474, vivify_188
    $P474 = root_new ['parrot';'ResizablePMCArray']
  vivify_188:
    .return ($P474)
.end


.HLL "nqp"

.namespace []
.sub "hash"  :subid("46_1304456123.433") :outer("42_1304456123.433")
    .param pmc param_476
.annotate 'line', 96
    .lex "self", param_476
    find_lex $P477, "self"
    find_lex $P478, "$?CLASS"
    getattribute $P479, $P477, $P478, "%!hash"
    unless_null $P479, vivify_189
    $P479 = root_new ['parrot';'Hash']
  vivify_189:
    .return ($P479)
.end


.HLL "nqp"

.namespace []
.sub "_block480"  :anon :subid("47_1304456123.433") :outer("42_1304456123.433")
    .param pmc param_482
    .param pmc param_483
.annotate 'line', 98
    .lex "self", param_482
    .lex "$key", param_483
.annotate 'line', 99
    find_lex $P489, "$key"
    unless_null $P489, vivify_190
    new $P489, "Undef"
  vivify_190:
    find_lex $P486, "self"
    find_lex $P487, "$?CLASS"
    getattribute $P488, $P486, $P487, "%!hash"
    unless_null $P488, vivify_191
    $P488 = root_new ['parrot';'Hash']
  vivify_191:
    exists $I490, $P488[$P489]
    if $I490, if_485
    null $P496
    set $P484, $P496
    goto if_485_end
  if_485:
    find_lex $P491, "$key"
    unless_null $P491, vivify_192
    new $P491, "Undef"
  vivify_192:
    find_lex $P492, "self"
    find_lex $P493, "$?CLASS"
    getattribute $P494, $P492, $P493, "%!hash"
    unless_null $P494, vivify_193
    $P494 = root_new ['parrot';'Hash']
  vivify_193:
    set $P495, $P494[$P491]
    unless_null $P495, vivify_194
    new $P495, "Undef"
  vivify_194:
    set $P484, $P495
  if_485_end:
.annotate 'line', 98
    .return ($P484)
.end


.HLL "nqp"

.namespace []
.sub "_block497"  :anon :subid("48_1304456123.433") :outer("42_1304456123.433")
    .param pmc param_499
    .param pmc param_500
.annotate 'line', 101
    .lex "self", param_499
    .lex "$key", param_500
.annotate 'line', 102
    find_lex $P506, "$key"
    unless_null $P506, vivify_195
    new $P506, "Undef"
  vivify_195:
    find_lex $P503, "self"
    find_lex $P504, "$?CLASS"
    getattribute $P505, $P503, $P504, "%!hash"
    unless_null $P505, vivify_196
    $P505 = root_new ['parrot';'Hash']
  vivify_196:
    exists $I507, $P505[$P506]
    if $I507, if_502
    null $P513
    set $P501, $P513
    goto if_502_end
  if_502:
    find_lex $P508, "$key"
    unless_null $P508, vivify_197
    new $P508, "Undef"
  vivify_197:
    find_lex $P509, "self"
    find_lex $P510, "$?CLASS"
    getattribute $P511, $P509, $P510, "%!hash"
    unless_null $P511, vivify_198
    $P511 = root_new ['parrot';'Hash']
  vivify_198:
    set $P512, $P511[$P508]
    unless_null $P512, vivify_199
    new $P512, "Undef"
  vivify_199:
    set $P501, $P512
  if_502_end:
.annotate 'line', 101
    .return ($P501)
.end


.HLL "nqp"

.namespace []
.sub "_block514"  :anon :subid("49_1304456123.433") :outer("42_1304456123.433")
    .param pmc param_516
    .param pmc param_517
.annotate 'line', 104
    .lex "self", param_516
    .lex "$key", param_517
.annotate 'line', 105
    find_lex $P523, "$key"
    unless_null $P523, vivify_200
    new $P523, "Undef"
  vivify_200:
    find_lex $P520, "self"
    find_lex $P521, "$?CLASS"
    getattribute $P522, $P520, $P521, "@!array"
    unless_null $P522, vivify_201
    $P522 = root_new ['parrot';'ResizablePMCArray']
  vivify_201:
    exists $I524, $P522[$P523]
    if $I524, if_519
    null $P531
    set $P518, $P531
    goto if_519_end
  if_519:
    find_lex $P525, "$key"
    unless_null $P525, vivify_202
    new $P525, "Undef"
  vivify_202:
    set $I526, $P525
    find_lex $P527, "self"
    find_lex $P528, "$?CLASS"
    getattribute $P529, $P527, $P528, "@!array"
    unless_null $P529, vivify_203
    $P529 = root_new ['parrot';'ResizablePMCArray']
  vivify_203:
    set $P530, $P529[$I526]
    unless_null $P530, vivify_204
    new $P530, "Undef"
  vivify_204:
    set $P518, $P530
  if_519_end:
.annotate 'line', 104
    .return ($P518)
.end


.HLL "nqp"

.namespace []
.sub "_block532"  :anon :subid("50_1304456123.433") :outer("42_1304456123.433")
    .param pmc param_534
    .param pmc param_535
    .param pmc param_536
.annotate 'line', 108
    .lex "self", param_534
    .lex "$key", param_535
    .lex "$value", param_536
.annotate 'line', 109
    find_lex $P537, "$value"
    unless_null $P537, vivify_205
    new $P537, "Undef"
  vivify_205:
    find_lex $P538, "$key"
    unless_null $P538, vivify_206
    new $P538, "Undef"
  vivify_206:
    find_lex $P539, "self"
    find_lex $P540, "$?CLASS"
    getattribute $P541, $P539, $P540, "%!hash"
    unless_null $P541, vivify_207
    $P541 = root_new ['parrot';'Hash']
    setattribute $P539, $P540, "%!hash", $P541
  vivify_207:
    set $P541[$P538], $P537
.annotate 'line', 108
    .return ($P537)
.end


.HLL "nqp"

.namespace []
.sub "_block542"  :anon :subid("51_1304456123.433") :outer("42_1304456123.433")
    .param pmc param_544
    .param pmc param_545
    .param pmc param_546
.annotate 'line', 111
    .lex "self", param_544
    .lex "$key", param_545
    .lex "$value", param_546
.annotate 'line', 112
    find_lex $P547, "$value"
    unless_null $P547, vivify_208
    new $P547, "Undef"
  vivify_208:
    find_lex $P548, "$key"
    unless_null $P548, vivify_209
    new $P548, "Undef"
  vivify_209:
    find_lex $P549, "self"
    find_lex $P550, "$?CLASS"
    getattribute $P551, $P549, $P550, "%!hash"
    unless_null $P551, vivify_210
    $P551 = root_new ['parrot';'Hash']
    setattribute $P549, $P550, "%!hash", $P551
  vivify_210:
    set $P551[$P548], $P547
.annotate 'line', 111
    .return ($P547)
.end


.HLL "nqp"

.namespace []
.sub "_block552"  :anon :subid("52_1304456123.433") :outer("42_1304456123.433")
    .param pmc param_554
    .param pmc param_555
    .param pmc param_556
.annotate 'line', 114
    .lex "self", param_554
    .lex "$key", param_555
    .lex "$value", param_556
.annotate 'line', 115
    find_lex $P557, "$value"
    unless_null $P557, vivify_211
    new $P557, "Undef"
  vivify_211:
    find_lex $P558, "$key"
    unless_null $P558, vivify_212
    new $P558, "Undef"
  vivify_212:
    set $I559, $P558
    find_lex $P560, "self"
    find_lex $P561, "$?CLASS"
    getattribute $P562, $P560, $P561, "@!array"
    unless_null $P562, vivify_213
    $P562 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P560, $P561, "@!array", $P562
  vivify_213:
    set $P562[$I559], $P557
.annotate 'line', 114
    .return ($P557)
.end


.HLL "nqp"

.namespace []
.sub "_block563"  :anon :subid("53_1304456123.433") :outer("42_1304456123.433")
    .param pmc param_565
    .param pmc param_566
.annotate 'line', 118
    .lex "self", param_565
    .lex "$key", param_566
.annotate 'line', 119
    find_lex $P570, "$key"
    unless_null $P570, vivify_214
    new $P570, "Undef"
  vivify_214:
    find_lex $P567, "self"
    find_lex $P568, "$?CLASS"
    getattribute $P569, $P567, $P568, "%!hash"
    unless_null $P569, vivify_215
    $P569 = root_new ['parrot';'Hash']
  vivify_215:
    exists $I571, $P569[$P570]
.annotate 'line', 118
    .return ($I571)
.end


.HLL "nqp"

.namespace []
.sub "_block572"  :anon :subid("54_1304456123.433") :outer("42_1304456123.433")
    .param pmc param_574
    .param pmc param_575
.annotate 'line', 121
    .lex "self", param_574
    .lex "$key", param_575
.annotate 'line', 122
    find_lex $P579, "$key"
    unless_null $P579, vivify_216
    new $P579, "Undef"
  vivify_216:
    find_lex $P576, "self"
    find_lex $P577, "$?CLASS"
    getattribute $P578, $P576, $P577, "%!hash"
    unless_null $P578, vivify_217
    $P578 = root_new ['parrot';'Hash']
  vivify_217:
    exists $I580, $P578[$P579]
.annotate 'line', 121
    .return ($I580)
.end


.HLL "nqp"

.namespace []
.sub "_block581"  :anon :subid("55_1304456123.433") :outer("42_1304456123.433")
    .param pmc param_583
    .param pmc param_584
.annotate 'line', 124
    .lex "self", param_583
    .lex "$key", param_584
.annotate 'line', 125
    find_lex $P588, "$key"
    unless_null $P588, vivify_218
    new $P588, "Undef"
  vivify_218:
    find_lex $P585, "self"
    find_lex $P586, "$?CLASS"
    getattribute $P587, $P585, $P586, "@!array"
    unless_null $P587, vivify_219
    $P587 = root_new ['parrot';'ResizablePMCArray']
  vivify_219:
    exists $I589, $P587[$P588]
.annotate 'line', 124
    .return ($I589)
.end


.HLL "nqp"

.namespace []
.sub "_block590"  :anon :subid("56_1304456123.433") :outer("42_1304456123.433")
    .param pmc param_592
    .param pmc param_593
.annotate 'line', 128
    .lex "self", param_592
    .lex "$key", param_593
.annotate 'line', 129
    find_lex $P597, "$key"
    unless_null $P597, vivify_220
    new $P597, "Undef"
  vivify_220:
    find_lex $P594, "self"
    find_lex $P595, "$?CLASS"
    getattribute $P596, $P594, $P595, "%!hash"
    unless_null $P596, vivify_221
    $P596 = root_new ['parrot';'Hash']
  vivify_221:
    delete $P596[$P597]
.annotate 'line', 128
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block598"  :anon :subid("57_1304456123.433") :outer("42_1304456123.433")
    .param pmc param_600
    .param pmc param_601
.annotate 'line', 131
    .lex "self", param_600
    .lex "$key", param_601
.annotate 'line', 132
    find_lex $P605, "$key"
    unless_null $P605, vivify_222
    new $P605, "Undef"
  vivify_222:
    find_lex $P602, "self"
    find_lex $P603, "$?CLASS"
    getattribute $P604, $P602, $P603, "%!hash"
    unless_null $P604, vivify_223
    $P604 = root_new ['parrot';'Hash']
  vivify_223:
    delete $P604[$P605]
.annotate 'line', 131
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block606"  :anon :subid("58_1304456123.433") :outer("42_1304456123.433")
    .param pmc param_608
    .param pmc param_609
.annotate 'line', 134
    .lex "self", param_608
    .lex "$key", param_609
.annotate 'line', 135
    find_lex $P613, "$key"
    unless_null $P613, vivify_224
    new $P613, "Undef"
  vivify_224:
    find_lex $P610, "self"
    find_lex $P611, "$?CLASS"
    getattribute $P612, $P610, $P611, "@!array"
    unless_null $P612, vivify_225
    $P612 = root_new ['parrot';'ResizablePMCArray']
  vivify_225:
    delete $P612[$P613]
.annotate 'line', 134
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block614"  :anon :subid("59_1304456123.433") :outer("42_1304456123.433")
    .param pmc param_616
    .param pmc param_617
.annotate 'line', 138
    .lex "self", param_616
    .lex "$value", param_617
.annotate 'line', 139
    find_lex $P618, "self"
    find_lex $P619, "$?CLASS"
    getattribute $P620, $P618, $P619, "@!array"
    unless_null $P620, vivify_226
    $P620 = root_new ['parrot';'ResizablePMCArray']
  vivify_226:
    find_lex $P621, "$value"
    unless_null $P621, vivify_227
    new $P621, "Undef"
  vivify_227:
    unshift $P620, $P621
.annotate 'line', 138
    .return ($P620)
.end


.HLL "nqp"

.namespace []
.sub "_block622"  :anon :subid("60_1304456123.433") :outer("42_1304456123.433")
    .param pmc param_624
    .param pmc param_625
.annotate 'line', 142
    .lex "self", param_624
    .lex "$value", param_625
.annotate 'line', 143
    find_lex $P626, "self"
    find_lex $P627, "$?CLASS"
    getattribute $P628, $P626, $P627, "@!array"
    unless_null $P628, vivify_228
    $P628 = root_new ['parrot';'ResizablePMCArray']
  vivify_228:
    find_lex $P629, "$value"
    unless_null $P629, vivify_229
    new $P629, "Undef"
  vivify_229:
    unshift $P628, $P629
.annotate 'line', 142
    .return ($P628)
.end


.HLL "nqp"

.namespace []
.sub "_block644" :load :anon :subid("61_1304456123.433")
.annotate 'line', 1
    .const 'Sub' $P646 = "10_1304456123.433" 
    $P647 = $P646()
    .return ($P647)
.end

