
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1304459375.235")
    .param pmc param_13 :slurpy
.annotate 'line', 0
    .const 'Sub' $P453 = "42_1304459375.235" 
    capture_lex $P453
    .const 'Sub' $P338 = "29_1304459375.235" 
    capture_lex $P338
    .const 'Sub' $P334 = "28_1304459375.235" 
    capture_lex $P334
    .const 'Sub' $P330 = "27_1304459375.235" 
    capture_lex $P330
    .const 'Sub' $P326 = "26_1304459375.235" 
    capture_lex $P326
    .const 'Sub' $P266 = "25_1304459375.235" 
    capture_lex $P266
    .const 'Sub' $P252 = "24_1304459375.235" 
    capture_lex $P252
    .const 'Sub' $P230 = "23_1304459375.235" 
    capture_lex $P230
    .const 'Sub' $P223 = "22_1304459375.235" 
    capture_lex $P223
    .const 'Sub' $P135 = "20_1304459375.235" 
    capture_lex $P135
    .const 'Sub' $P102 = "18_1304459375.235" 
    capture_lex $P102
    .const 'Sub' $P97 = "17_1304459375.235" 
    capture_lex $P97
    .const 'Sub' $P83 = "15_1304459375.235" 
    capture_lex $P83
    .const 'Sub' $P71 = "14_1304459375.235" 
    capture_lex $P71
    .const 'Sub' $P60 = "13_1304459375.235" 
    capture_lex $P60
    .const 'Sub' $P55 = "12_1304459375.235" 
    capture_lex $P55
    .const 'Sub' $P22 = "11_1304459375.235" 
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
    .const 'Sub' $P22 = "11_1304459375.235" 
    newclosure $P54, $P22
    .lex "open", $P54
.annotate 'line', 170
    .const 'Sub' $P55 = "12_1304459375.235" 
    newclosure $P59, $P55
    .lex "close", $P59
.annotate 'line', 178
    .const 'Sub' $P60 = "13_1304459375.235" 
    newclosure $P70, $P60
    .lex "slurp", $P70
.annotate 'line', 190
    .const 'Sub' $P71 = "14_1304459375.235" 
    newclosure $P82, $P71
    .lex "spew", $P82
.annotate 'line', 197
    .const 'Sub' $P83 = "15_1304459375.235" 
    newclosure $P96, $P83
    .lex "print", $P96
.annotate 'line', 204
    .const 'Sub' $P97 = "17_1304459375.235" 
    newclosure $P101, $P97
    .lex "say", $P101
.annotate 'line', 222
    .const 'Sub' $P102 = "18_1304459375.235" 
    newclosure $P134, $P102
    .lex "match", $P134
.annotate 'line', 244
    .const 'Sub' $P135 = "20_1304459375.235" 
    newclosure $P221, $P135
    .lex "subst", $P221
.annotate 'line', 270
    new $P222, "Undef"
    .lex "$test_counter", $P222
.annotate 'line', 272
    .const 'Sub' $P223 = "22_1304459375.235" 
    newclosure $P229, $P223
    .lex "plan", $P229
.annotate 'line', 276
    .const 'Sub' $P230 = "23_1304459375.235" 
    newclosure $P251, $P230
    .lex "ok", $P251
.annotate 'line', 291
    .const 'Sub' $P252 = "24_1304459375.235" 
    newclosure $P264, $P252
    .lex "skip", $P264
.annotate 'line', 14
    .const 'Sub' $P266 = "25_1304459375.235" 
    capture_lex $P266
    $P266()
.annotate 'line', 25
    .const 'Sub' $P326 = "26_1304459375.235" 
    capture_lex $P326
    $P326()
.annotate 'line', 27
    .const 'Sub' $P330 = "27_1304459375.235" 
    capture_lex $P330
    $P330()
.annotate 'line', 29
    .const 'Sub' $P334 = "28_1304459375.235" 
    capture_lex $P334
    $P334()
.annotate 'line', 32
    .const 'Sub' $P338 = "29_1304459375.235" 
    capture_lex $P338
    $P338()
.annotate 'line', 79
    .const 'Sub' $P453 = "42_1304459375.235" 
    capture_lex $P453
    $P453()
    find_lex $P632, "open"
    find_lex $P633, "close"
    find_lex $P634, "slurp"
    find_lex $P635, "spew"
    find_lex $P636, "print"
    find_lex $P637, "say"
    find_lex $P638, "match"
    find_lex $P639, "subst"
.annotate 'line', 270
    new $P640, "Integer"
    assign $P640, 0
    store_lex "$test_counter", $P640
    find_lex $P641, "plan"
    find_lex $P642, "ok"
    find_lex $P643, "skip"
    new $P644, "Integer"
    assign $P644, 1
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
    find_lex $P647, "@ARGS"
    if $P647, if_646
    set $P645, $P647
    goto if_646_end
  if_646:
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P648, "ModuleLoader"
    getinterp $P649
    set $P650, $P649["context"]
    $P651 = $P648."set_mainline_module"($P650)
    set $P645, $P651
  if_646_end:
.annotate 'line', 1
    .return ($P645)
    .const 'Sub' $P653 = "61_1304459375.235" 
    .return ($P653)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post62") :outer("10_1304459375.235")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1304459375.235" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P657, "1304459374.119"
    isnull $I658, $P657
    if $I658, if_656
    .const 'Sub' $P940 = "10_1304459375.235" 
    $P941 = $P940."get_lexinfo"()
    nqp_get_sc_object $P942, "1304459374.119", 0
    $P941."set_static_lexpad_value"("GLOBALish", $P942)
    .const 'Sub' $P943 = "10_1304459375.235" 
    $P944 = $P943."get_lexinfo"()
    $P944."finish_static_lexpad"()
    .const 'Sub' $P945 = "10_1304459375.235" 
    $P946 = $P945."get_lexinfo"()
    nqp_get_sc_object $P947, "1304459374.119", 0
    $P946."set_static_lexpad_value"("$?PACKAGE", $P947)
    .const 'Sub' $P948 = "10_1304459375.235" 
    $P949 = $P948."get_lexinfo"()
    $P949."finish_static_lexpad"()
    .const 'Sub' $P950 = "10_1304459375.235" 
    $P951 = $P950."get_lexinfo"()
    nqp_get_sc_object $P952, "1304459374.119", 1
    $P951."set_static_lexpad_value"("EXPORTHOW", $P952)
    .const 'Sub' $P953 = "10_1304459375.235" 
    $P954 = $P953."get_lexinfo"()
    $P954."finish_static_lexpad"()
    .const 'Sub' $P955 = "25_1304459375.235" 
    $P956 = $P955."get_lexinfo"()
    nqp_get_sc_object $P957, "1304459374.119", 1
    $P956."set_static_lexpad_value"("$?PACKAGE", $P957)
    .const 'Sub' $P958 = "25_1304459375.235" 
    $P959 = $P958."get_lexinfo"()
    $P959."finish_static_lexpad"()
    .const 'Sub' $P960 = "25_1304459375.235" 
    $P961 = $P960."get_lexinfo"()
    nqp_get_sc_object $P962, "1304459374.119", 1
    $P961."set_static_lexpad_value"("$?CLASS", $P962)
    .const 'Sub' $P963 = "25_1304459375.235" 
    $P964 = $P963."get_lexinfo"()
    $P964."finish_static_lexpad"()
    .const 'Sub' $P965 = "10_1304459375.235" 
    $P966 = $P965."get_lexinfo"()
    nqp_get_sc_object $P967, "1304459374.119", 2
    $P966."set_static_lexpad_value"("int", $P967)
    .const 'Sub' $P968 = "10_1304459375.235" 
    $P969 = $P968."get_lexinfo"()
    $P969."finish_static_lexpad"()
    .const 'Sub' $P970 = "26_1304459375.235" 
    $P971 = $P970."get_lexinfo"()
    nqp_get_sc_object $P972, "1304459374.119", 2
    $P971."set_static_lexpad_value"("$?PACKAGE", $P972)
    .const 'Sub' $P973 = "26_1304459375.235" 
    $P974 = $P973."get_lexinfo"()
    $P974."finish_static_lexpad"()
    .const 'Sub' $P975 = "26_1304459375.235" 
    $P976 = $P975."get_lexinfo"()
    nqp_get_sc_object $P977, "1304459374.119", 2
    $P976."set_static_lexpad_value"("$?CLASS", $P977)
    .const 'Sub' $P978 = "26_1304459375.235" 
    $P979 = $P978."get_lexinfo"()
    $P979."finish_static_lexpad"()
    .const 'Sub' $P980 = "10_1304459375.235" 
    $P981 = $P980."get_lexinfo"()
    nqp_get_sc_object $P982, "1304459374.119", 3
    $P981."set_static_lexpad_value"("num", $P982)
    .const 'Sub' $P983 = "10_1304459375.235" 
    $P984 = $P983."get_lexinfo"()
    $P984."finish_static_lexpad"()
    .const 'Sub' $P985 = "27_1304459375.235" 
    $P986 = $P985."get_lexinfo"()
    nqp_get_sc_object $P987, "1304459374.119", 3
    $P986."set_static_lexpad_value"("$?PACKAGE", $P987)
    .const 'Sub' $P988 = "27_1304459375.235" 
    $P989 = $P988."get_lexinfo"()
    $P989."finish_static_lexpad"()
    .const 'Sub' $P990 = "27_1304459375.235" 
    $P991 = $P990."get_lexinfo"()
    nqp_get_sc_object $P992, "1304459374.119", 3
    $P991."set_static_lexpad_value"("$?CLASS", $P992)
    .const 'Sub' $P993 = "27_1304459375.235" 
    $P994 = $P993."get_lexinfo"()
    $P994."finish_static_lexpad"()
    .const 'Sub' $P995 = "10_1304459375.235" 
    $P996 = $P995."get_lexinfo"()
    nqp_get_sc_object $P997, "1304459374.119", 4
    $P996."set_static_lexpad_value"("str", $P997)
    .const 'Sub' $P998 = "10_1304459375.235" 
    $P999 = $P998."get_lexinfo"()
    $P999."finish_static_lexpad"()
    .const 'Sub' $P1000 = "28_1304459375.235" 
    $P1001 = $P1000."get_lexinfo"()
    nqp_get_sc_object $P1002, "1304459374.119", 4
    $P1001."set_static_lexpad_value"("$?PACKAGE", $P1002)
    .const 'Sub' $P1003 = "28_1304459375.235" 
    $P1004 = $P1003."get_lexinfo"()
    $P1004."finish_static_lexpad"()
    .const 'Sub' $P1005 = "28_1304459375.235" 
    $P1006 = $P1005."get_lexinfo"()
    nqp_get_sc_object $P1007, "1304459374.119", 4
    $P1006."set_static_lexpad_value"("$?CLASS", $P1007)
    .const 'Sub' $P1008 = "28_1304459375.235" 
    $P1009 = $P1008."get_lexinfo"()
    $P1009."finish_static_lexpad"()
    .const 'Sub' $P1010 = "10_1304459375.235" 
    $P1011 = $P1010."get_lexinfo"()
    nqp_get_sc_object $P1012, "1304459374.119", 5
    $P1011."set_static_lexpad_value"("NQPMu", $P1012)
    .const 'Sub' $P1013 = "10_1304459375.235" 
    $P1014 = $P1013."get_lexinfo"()
    $P1014."finish_static_lexpad"()
    nqp_get_sc_object $P1015, "1304459374.119", 6
    .const 'Sub' $P1016 = "30_1304459375.235" 
    assign $P1015, $P1016
    nqp_get_sc_object $P1017, "1304459374.119", 7
    .const 'Sub' $P1018 = "31_1304459375.235" 
    assign $P1017, $P1018
    nqp_get_sc_object $P1019, "1304459374.119", 8
    .const 'Sub' $P1020 = "32_1304459375.235" 
    assign $P1019, $P1020
    nqp_get_sc_object $P1021, "1304459374.119", 9
    .const 'Sub' $P1022 = "34_1304459375.235" 
    assign $P1021, $P1022
    nqp_get_sc_object $P1023, "1304459374.119", 10
    .const 'Sub' $P1024 = "36_1304459375.235" 
    assign $P1023, $P1024
    nqp_get_sc_object $P1025, "1304459374.119", 11
    .const 'Sub' $P1026 = "37_1304459375.235" 
    assign $P1025, $P1026
    nqp_get_sc_object $P1027, "1304459374.119", 11
    .const 'Sub' $P1028 = "37_1304459375.235" 
    assign $P1027, $P1028
    .const 'Sub' $P1029 = "38_1304459375.235" 
    nqp_get_sc_object $P1030, "1304459374.119", 5
    new $P1031, "ResizablePMCArray"
    push $P1031, $P1030
    new $P1032, "ResizablePMCArray"
    push $P1032, 2
    set_sub_multisig $P1029, $P1031, $P1032
    nqp_get_sc_object $P1033, "1304459374.119", 12
    .const 'Sub' $P1034 = "38_1304459375.235" 
    assign $P1033, $P1034
    nqp_get_sc_object $P1035, "1304459374.119", 13
    .const 'Sub' $P1036 = "39_1304459375.235" 
    assign $P1035, $P1036
    .const 'Sub' $P1037 = "40_1304459375.235" 
    nqp_get_sc_object $P1038, "1304459374.119", 5
    null $P1039
    new $P1040, "ResizablePMCArray"
    push $P1040, $P1038
    push $P1040, $P1039
    new $P1041, "ResizablePMCArray"
    push $P1041, 2
    push $P1041, 0
    set_sub_multisig $P1037, $P1040, $P1041
    nqp_get_sc_object $P1042, "1304459374.119", 14
    .const 'Sub' $P1043 = "40_1304459375.235" 
    assign $P1042, $P1043
    nqp_get_sc_object $P1044, "1304459374.119", 15
    .const 'Sub' $P1045 = "41_1304459375.235" 
    assign $P1044, $P1045
    .const 'Sub' $P1046 = "29_1304459375.235" 
    $P1047 = $P1046."get_lexinfo"()
    nqp_get_sc_object $P1048, "1304459374.119", 5
    $P1047."set_static_lexpad_value"("$?PACKAGE", $P1048)
    .const 'Sub' $P1049 = "29_1304459375.235" 
    $P1050 = $P1049."get_lexinfo"()
    $P1050."finish_static_lexpad"()
    .const 'Sub' $P1051 = "29_1304459375.235" 
    $P1052 = $P1051."get_lexinfo"()
    nqp_get_sc_object $P1053, "1304459374.119", 5
    $P1052."set_static_lexpad_value"("$?CLASS", $P1053)
    .const 'Sub' $P1054 = "29_1304459375.235" 
    $P1055 = $P1054."get_lexinfo"()
    $P1055."finish_static_lexpad"()
    .const 'Sub' $P1056 = "10_1304459375.235" 
    $P1057 = $P1056."get_lexinfo"()
    nqp_get_sc_object $P1058, "1304459374.119", 16
    $P1057."set_static_lexpad_value"("NQPCapture", $P1058)
    .const 'Sub' $P1059 = "10_1304459375.235" 
    $P1060 = $P1059."get_lexinfo"()
    $P1060."finish_static_lexpad"()
    nqp_get_sc_object $P1061, "1304459374.119", 17
    .const 'Sub' $P1062 = "43_1304459375.235" 
    assign $P1061, $P1062
    nqp_get_sc_object $P1063, "1304459374.119", 18
    .const 'Sub' $P1064 = "44_1304459375.235" 
    assign $P1063, $P1064
    nqp_get_sc_object $P1065, "1304459374.119", 19
    .const 'Sub' $P1066 = "45_1304459375.235" 
    assign $P1065, $P1066
    nqp_get_sc_object $P1067, "1304459374.119", 20
    .const 'Sub' $P1068 = "46_1304459375.235" 
    assign $P1067, $P1068
    nqp_get_sc_object $P1069, "1304459374.119", 21
    .const 'Sub' $P1070 = "47_1304459375.235" 
    assign $P1069, $P1070
    nqp_get_sc_object $P1071, "1304459374.119", 22
    .const 'Sub' $P1072 = "48_1304459375.235" 
    assign $P1071, $P1072
    nqp_get_sc_object $P1073, "1304459374.119", 23
    .const 'Sub' $P1074 = "49_1304459375.235" 
    assign $P1073, $P1074
    nqp_get_sc_object $P1075, "1304459374.119", 24
    .const 'Sub' $P1076 = "50_1304459375.235" 
    assign $P1075, $P1076
    nqp_get_sc_object $P1077, "1304459374.119", 25
    .const 'Sub' $P1078 = "51_1304459375.235" 
    assign $P1077, $P1078
    nqp_get_sc_object $P1079, "1304459374.119", 26
    .const 'Sub' $P1080 = "52_1304459375.235" 
    assign $P1079, $P1080
    nqp_get_sc_object $P1081, "1304459374.119", 27
    .const 'Sub' $P1082 = "53_1304459375.235" 
    assign $P1081, $P1082
    nqp_get_sc_object $P1083, "1304459374.119", 28
    .const 'Sub' $P1084 = "54_1304459375.235" 
    assign $P1083, $P1084
    nqp_get_sc_object $P1085, "1304459374.119", 29
    .const 'Sub' $P1086 = "55_1304459375.235" 
    assign $P1085, $P1086
    nqp_get_sc_object $P1087, "1304459374.119", 30
    .const 'Sub' $P1088 = "56_1304459375.235" 
    assign $P1087, $P1088
    nqp_get_sc_object $P1089, "1304459374.119", 31
    .const 'Sub' $P1090 = "57_1304459375.235" 
    assign $P1089, $P1090
    nqp_get_sc_object $P1091, "1304459374.119", 32
    .const 'Sub' $P1092 = "58_1304459375.235" 
    assign $P1091, $P1092
    nqp_get_sc_object $P1093, "1304459374.119", 33
    .const 'Sub' $P1094 = "59_1304459375.235" 
    assign $P1093, $P1094
    nqp_get_sc_object $P1095, "1304459374.119", 34
    .const 'Sub' $P1096 = "60_1304459375.235" 
    assign $P1095, $P1096
    .const 'Sub' $P1097 = "42_1304459375.235" 
    $P1098 = $P1097."get_lexinfo"()
    nqp_get_sc_object $P1099, "1304459374.119", 16
    $P1098."set_static_lexpad_value"("$?PACKAGE", $P1099)
    .const 'Sub' $P1100 = "42_1304459375.235" 
    $P1101 = $P1100."get_lexinfo"()
    $P1101."finish_static_lexpad"()
    .const 'Sub' $P1102 = "42_1304459375.235" 
    $P1103 = $P1102."get_lexinfo"()
    nqp_get_sc_object $P1104, "1304459374.119", 16
    $P1103."set_static_lexpad_value"("$?CLASS", $P1104)
    .const 'Sub' $P1105 = "42_1304459375.235" 
    $P1106 = $P1105."get_lexinfo"()
    $P1106."finish_static_lexpad"()
    goto if_656_end
  if_656:
    nqp_dynop_setup 
    getinterp $P659
    get_class $P660, "LexPad"
    get_class $P661, "NQPLexPad"
    $P659."hll_map"($P660, $P661)
    nqp_create_sc $P662, "1304459374.119"
    .local pmc cur_sc
    set cur_sc, $P662
    nqp_get_sc_object $P663, "__6MODEL_CORE__", 0
    $P664 = $P663."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P664, cur_sc
    nqp_set_sc_object "1304459374.119", 0, $P664
    .const 'Sub' $P665 = "10_1304459375.235" 
    $P666 = $P665."get_lexinfo"()
    nqp_get_sc_object $P667, "1304459374.119", 0
    $P666."set_static_lexpad_value"("GLOBALish", $P667)
    .const 'Sub' $P668 = "10_1304459375.235" 
    $P669 = $P668."get_lexinfo"()
    $P669."finish_static_lexpad"()
    .const 'Sub' $P670 = "10_1304459375.235" 
    $P671 = $P670."get_lexinfo"()
    nqp_get_sc_object $P672, "1304459374.119", 0
    $P671."set_static_lexpad_value"("$?PACKAGE", $P672)
    .const 'Sub' $P673 = "10_1304459375.235" 
    $P674 = $P673."get_lexinfo"()
    $P674."finish_static_lexpad"()
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P675, "ModuleLoader"
    nqp_get_sc_object $P676, "1304459374.119", 0
    $P675."load_module"("nqpmo", $P676)
    nqp_get_sc_object $P677, "1304459368.206", 85
    $P678 = $P677."new_type"("EXPORTHOW" :named("name"))
    nqp_set_sc_for_object $P678, cur_sc
    nqp_set_sc_object "1304459374.119", 1, $P678
    .const 'Sub' $P679 = "10_1304459375.235" 
    $P680 = $P679."get_lexinfo"()
    nqp_get_sc_object $P681, "1304459374.119", 1
    $P680."set_static_lexpad_value"("EXPORTHOW", $P681)
    .const 'Sub' $P682 = "10_1304459375.235" 
    $P683 = $P682."get_lexinfo"()
    $P683."finish_static_lexpad"()
    .const 'Sub' $P684 = "25_1304459375.235" 
    $P685 = $P684."get_lexinfo"()
    nqp_get_sc_object $P686, "1304459374.119", 1
    $P685."set_static_lexpad_value"("$?PACKAGE", $P686)
    .const 'Sub' $P687 = "25_1304459375.235" 
    $P688 = $P687."get_lexinfo"()
    $P688."finish_static_lexpad"()
    .const 'Sub' $P689 = "25_1304459375.235" 
    $P690 = $P689."get_lexinfo"()
    nqp_get_sc_object $P691, "1304459374.119", 1
    $P690."set_static_lexpad_value"("$?CLASS", $P691)
    .const 'Sub' $P692 = "25_1304459375.235" 
    $P693 = $P692."get_lexinfo"()
    $P693."finish_static_lexpad"()
    nqp_get_sc_object $P694, "1304459374.119", 1
    get_how $P695, $P694
    nqp_get_sc_object $P696, "1304459374.119", 1
    $P695."compose"($P696)
    nqp_get_sc_object $P697, "1304459368.206", 68
    $P698 = $P697."new_type"("int" :named("name"), "P6int" :named("repr"))
    nqp_set_sc_for_object $P698, cur_sc
    nqp_set_sc_object "1304459374.119", 2, $P698
    .const 'Sub' $P699 = "10_1304459375.235" 
    $P700 = $P699."get_lexinfo"()
    nqp_get_sc_object $P701, "1304459374.119", 2
    $P700."set_static_lexpad_value"("int", $P701)
    .const 'Sub' $P702 = "10_1304459375.235" 
    $P703 = $P702."get_lexinfo"()
    $P703."finish_static_lexpad"()
    .const 'Sub' $P704 = "26_1304459375.235" 
    $P705 = $P704."get_lexinfo"()
    nqp_get_sc_object $P706, "1304459374.119", 2
    $P705."set_static_lexpad_value"("$?PACKAGE", $P706)
    .const 'Sub' $P707 = "26_1304459375.235" 
    $P708 = $P707."get_lexinfo"()
    $P708."finish_static_lexpad"()
    .const 'Sub' $P709 = "26_1304459375.235" 
    $P710 = $P709."get_lexinfo"()
    nqp_get_sc_object $P711, "1304459374.119", 2
    $P710."set_static_lexpad_value"("$?CLASS", $P711)
    .const 'Sub' $P712 = "26_1304459375.235" 
    $P713 = $P712."get_lexinfo"()
    $P713."finish_static_lexpad"()
    nqp_get_sc_object $P714, "1304459374.119", 2
    get_how $P715, $P714
    nqp_get_sc_object $P716, "1304459374.119", 2
    $P715."compose"($P716)
    nqp_get_sc_object $P717, "1304459368.206", 68
    $P718 = $P717."new_type"("num" :named("name"), "P6num" :named("repr"))
    nqp_set_sc_for_object $P718, cur_sc
    nqp_set_sc_object "1304459374.119", 3, $P718
    .const 'Sub' $P719 = "10_1304459375.235" 
    $P720 = $P719."get_lexinfo"()
    nqp_get_sc_object $P721, "1304459374.119", 3
    $P720."set_static_lexpad_value"("num", $P721)
    .const 'Sub' $P722 = "10_1304459375.235" 
    $P723 = $P722."get_lexinfo"()
    $P723."finish_static_lexpad"()
    .const 'Sub' $P724 = "27_1304459375.235" 
    $P725 = $P724."get_lexinfo"()
    nqp_get_sc_object $P726, "1304459374.119", 3
    $P725."set_static_lexpad_value"("$?PACKAGE", $P726)
    .const 'Sub' $P727 = "27_1304459375.235" 
    $P728 = $P727."get_lexinfo"()
    $P728."finish_static_lexpad"()
    .const 'Sub' $P729 = "27_1304459375.235" 
    $P730 = $P729."get_lexinfo"()
    nqp_get_sc_object $P731, "1304459374.119", 3
    $P730."set_static_lexpad_value"("$?CLASS", $P731)
    .const 'Sub' $P732 = "27_1304459375.235" 
    $P733 = $P732."get_lexinfo"()
    $P733."finish_static_lexpad"()
    nqp_get_sc_object $P734, "1304459374.119", 3
    get_how $P735, $P734
    nqp_get_sc_object $P736, "1304459374.119", 3
    $P735."compose"($P736)
    nqp_get_sc_object $P737, "1304459368.206", 68
    $P738 = $P737."new_type"("str" :named("name"), "P6str" :named("repr"))
    nqp_set_sc_for_object $P738, cur_sc
    nqp_set_sc_object "1304459374.119", 4, $P738
    .const 'Sub' $P739 = "10_1304459375.235" 
    $P740 = $P739."get_lexinfo"()
    nqp_get_sc_object $P741, "1304459374.119", 4
    $P740."set_static_lexpad_value"("str", $P741)
    .const 'Sub' $P742 = "10_1304459375.235" 
    $P743 = $P742."get_lexinfo"()
    $P743."finish_static_lexpad"()
    .const 'Sub' $P744 = "28_1304459375.235" 
    $P745 = $P744."get_lexinfo"()
    nqp_get_sc_object $P746, "1304459374.119", 4
    $P745."set_static_lexpad_value"("$?PACKAGE", $P746)
    .const 'Sub' $P747 = "28_1304459375.235" 
    $P748 = $P747."get_lexinfo"()
    $P748."finish_static_lexpad"()
    .const 'Sub' $P749 = "28_1304459375.235" 
    $P750 = $P749."get_lexinfo"()
    nqp_get_sc_object $P751, "1304459374.119", 4
    $P750."set_static_lexpad_value"("$?CLASS", $P751)
    .const 'Sub' $P752 = "28_1304459375.235" 
    $P753 = $P752."get_lexinfo"()
    $P753."finish_static_lexpad"()
    nqp_get_sc_object $P754, "1304459374.119", 4
    get_how $P755, $P754
    nqp_get_sc_object $P756, "1304459374.119", 4
    $P755."compose"($P756)
    nqp_get_sc_object $P757, "1304459368.206", 41
    $P758 = $P757."new_type"("NQPMu" :named("name"))
    nqp_set_sc_for_object $P758, cur_sc
    nqp_set_sc_object "1304459374.119", 5, $P758
    .const 'Sub' $P759 = "10_1304459375.235" 
    $P760 = $P759."get_lexinfo"()
    nqp_get_sc_object $P761, "1304459374.119", 5
    $P760."set_static_lexpad_value"("NQPMu", $P761)
    .const 'Sub' $P762 = "10_1304459375.235" 
    $P763 = $P762."get_lexinfo"()
    $P763."finish_static_lexpad"()
    nqp_get_sc_object $P764, "1304459374.119", 5
    get_how $P765, $P764
    nqp_get_sc_object $P766, "1304459374.119", 5
    .const 'Sub' $P767 = "30_1304459375.235" 
    $P765."add_method"($P766, "CREATE", $P767)
    nqp_get_sc_object $P768, "1304459374.119", 5
    get_how $P769, $P768
    nqp_get_sc_object $P770, "1304459374.119", 5
    .const 'Sub' $P771 = "31_1304459375.235" 
    $P769."add_method"($P770, "bless", $P771)
    nqp_get_sc_object $P772, "1304459374.119", 5
    get_how $P773, $P772
    nqp_get_sc_object $P774, "1304459374.119", 5
    .const 'Sub' $P775 = "32_1304459375.235" 
    $P773."add_method"($P774, "BUILDALL", $P775)
    nqp_get_sc_object $P776, "1304459374.119", 5
    get_how $P777, $P776
    nqp_get_sc_object $P778, "1304459374.119", 5
    .const 'Sub' $P779 = "34_1304459375.235" 
    $P777."add_method"($P778, "BUILD_MAGIC", $P779)
    nqp_get_sc_object $P780, "1304459374.119", 5
    get_how $P781, $P780
    nqp_get_sc_object $P782, "1304459374.119", 5
    .const 'Sub' $P783 = "36_1304459375.235" 
    $P781."add_method"($P782, "new", $P783)
    nqp_get_sc_object $P784, "1304459374.119", 5
    get_how $P785, $P784
    nqp_get_sc_object $P786, "1304459374.119", 5
    .const 'Sub' $P787 = "37_1304459375.235" 
    $P785."add_method"($P786, "Str", $P787)
    nqp_get_sc_object $P788, "1304459374.119", 5
    get_how $P789, $P788
    nqp_get_sc_object $P790, "1304459374.119", 5
    .const 'Sub' $P791 = "37_1304459375.235" 
    $P789."add_parrot_vtable_mapping"($P790, "get_string", $P791)
    .const 'Sub' $P792 = "38_1304459375.235" 
    nqp_get_sc_object $P793, "1304459374.119", 5
    new $P794, "ResizablePMCArray"
    push $P794, $P793
    new $P795, "ResizablePMCArray"
    push $P795, 2
    set_sub_multisig $P792, $P794, $P795
    nqp_get_sc_object $P796, "1304459374.119", 5
    get_how $P797, $P796
    nqp_get_sc_object $P798, "1304459374.119", 5
    .const 'Sub' $P799 = "38_1304459375.235" 
    $P797."add_multi_method"($P798, "Str", $P799)
    nqp_get_sc_object $P800, "1304459374.119", 5
    get_how $P801, $P800
    nqp_get_sc_object $P802, "1304459374.119", 5
    .const 'Sub' $P803 = "39_1304459375.235" 
    $P801."add_method"($P802, "ACCEPTS", $P803)
    .const 'Sub' $P804 = "40_1304459375.235" 
    nqp_get_sc_object $P805, "1304459374.119", 5
    null $P806
    new $P807, "ResizablePMCArray"
    push $P807, $P805
    push $P807, $P806
    new $P808, "ResizablePMCArray"
    push $P808, 2
    push $P808, 0
    set_sub_multisig $P804, $P807, $P808
    nqp_get_sc_object $P809, "1304459374.119", 5
    get_how $P810, $P809
    nqp_get_sc_object $P811, "1304459374.119", 5
    .const 'Sub' $P812 = "40_1304459375.235" 
    $P810."add_multi_method"($P811, "ACCEPTS", $P812)
    nqp_get_sc_object $P813, "1304459374.119", 5
    get_how $P814, $P813
    nqp_get_sc_object $P815, "1304459374.119", 5
    .const 'Sub' $P816 = "41_1304459375.235" 
    $P814."add_method"($P815, "isa", $P816)
    .const 'Sub' $P817 = "29_1304459375.235" 
    $P818 = $P817."get_lexinfo"()
    nqp_get_sc_object $P819, "1304459374.119", 5
    $P818."set_static_lexpad_value"("$?PACKAGE", $P819)
    .const 'Sub' $P820 = "29_1304459375.235" 
    $P821 = $P820."get_lexinfo"()
    $P821."finish_static_lexpad"()
    .const 'Sub' $P822 = "29_1304459375.235" 
    $P823 = $P822."get_lexinfo"()
    nqp_get_sc_object $P824, "1304459374.119", 5
    $P823."set_static_lexpad_value"("$?CLASS", $P824)
    .const 'Sub' $P825 = "29_1304459375.235" 
    $P826 = $P825."get_lexinfo"()
    $P826."finish_static_lexpad"()
    nqp_get_sc_object $P827, "1304459374.119", 5
    get_how $P828, $P827
    nqp_get_sc_object $P829, "1304459374.119", 5
    nqp_get_sc_object $P830, "1304459374.119", 5
    $P828."set_default_parent"($P829, $P830)
    nqp_get_sc_object $P831, "1304459374.119", 5
    get_how $P832, $P831
    nqp_get_sc_object $P833, "1304459374.119", 5
    $P832."compose"($P833)
    nqp_get_sc_object $P834, "1304459368.206", 41
    $P835 = $P834."new_type"("NQPCapture" :named("name"))
    nqp_set_sc_for_object $P835, cur_sc
    nqp_set_sc_object "1304459374.119", 16, $P835
    .const 'Sub' $P836 = "10_1304459375.235" 
    $P837 = $P836."get_lexinfo"()
    nqp_get_sc_object $P838, "1304459374.119", 16
    $P837."set_static_lexpad_value"("NQPCapture", $P838)
    .const 'Sub' $P839 = "10_1304459375.235" 
    $P840 = $P839."get_lexinfo"()
    $P840."finish_static_lexpad"()
    nqp_get_sc_object $P841, "1304459374.119", 16
    get_how $P842, $P841
    nqp_get_sc_object $P843, "1304459374.119", 16
    nqp_get_sc_object $P844, "1304459368.206", 77
    $P845 = $P844."new"("@!array" :named("name"))
    $P842."add_attribute"($P843, $P845)
    nqp_get_sc_object $P846, "1304459374.119", 16
    get_how $P847, $P846
    nqp_get_sc_object $P848, "1304459374.119", 16
    nqp_get_sc_object $P849, "1304459368.206", 77
    $P850 = $P849."new"("%!hash" :named("name"))
    $P847."add_attribute"($P848, $P850)
    nqp_get_sc_object $P851, "1304459374.119", 16
    get_how $P852, $P851
    nqp_get_sc_object $P853, "1304459374.119", 16
    .const 'Sub' $P854 = "43_1304459375.235" 
    $P852."add_method"($P853, "new", $P854)
    nqp_get_sc_object $P855, "1304459374.119", 16
    get_how $P856, $P855
    nqp_get_sc_object $P857, "1304459374.119", 16
    .const 'Sub' $P858 = "44_1304459375.235" 
    $P856."add_method"($P857, "BUILD", $P858)
    nqp_get_sc_object $P859, "1304459374.119", 16
    get_how $P860, $P859
    nqp_get_sc_object $P861, "1304459374.119", 16
    .const 'Sub' $P862 = "45_1304459375.235" 
    $P860."add_method"($P861, "list", $P862)
    nqp_get_sc_object $P863, "1304459374.119", 16
    get_how $P864, $P863
    nqp_get_sc_object $P865, "1304459374.119", 16
    .const 'Sub' $P866 = "46_1304459375.235" 
    $P864."add_method"($P865, "hash", $P866)
    nqp_get_sc_object $P867, "1304459374.119", 16
    get_how $P868, $P867
    nqp_get_sc_object $P869, "1304459374.119", 16
    .const 'Sub' $P870 = "47_1304459375.235" 
    $P868."add_parrot_vtable_mapping"($P869, "get_pmc_keyed_str", $P870)
    nqp_get_sc_object $P871, "1304459374.119", 16
    get_how $P872, $P871
    nqp_get_sc_object $P873, "1304459374.119", 16
    .const 'Sub' $P874 = "48_1304459375.235" 
    $P872."add_parrot_vtable_mapping"($P873, "get_pmc_keyed", $P874)
    nqp_get_sc_object $P875, "1304459374.119", 16
    get_how $P876, $P875
    nqp_get_sc_object $P877, "1304459374.119", 16
    .const 'Sub' $P878 = "49_1304459375.235" 
    $P876."add_parrot_vtable_mapping"($P877, "get_pmc_keyed_int", $P878)
    nqp_get_sc_object $P879, "1304459374.119", 16
    get_how $P880, $P879
    nqp_get_sc_object $P881, "1304459374.119", 16
    .const 'Sub' $P882 = "50_1304459375.235" 
    $P880."add_parrot_vtable_mapping"($P881, "set_pmc_keyed_str", $P882)
    nqp_get_sc_object $P883, "1304459374.119", 16
    get_how $P884, $P883
    nqp_get_sc_object $P885, "1304459374.119", 16
    .const 'Sub' $P886 = "51_1304459375.235" 
    $P884."add_parrot_vtable_mapping"($P885, "set_pmc_keyed", $P886)
    nqp_get_sc_object $P887, "1304459374.119", 16
    get_how $P888, $P887
    nqp_get_sc_object $P889, "1304459374.119", 16
    .const 'Sub' $P890 = "52_1304459375.235" 
    $P888."add_parrot_vtable_mapping"($P889, "set_pmc_keyed_int", $P890)
    nqp_get_sc_object $P891, "1304459374.119", 16
    get_how $P892, $P891
    nqp_get_sc_object $P893, "1304459374.119", 16
    .const 'Sub' $P894 = "53_1304459375.235" 
    $P892."add_parrot_vtable_mapping"($P893, "exists_keyed", $P894)
    nqp_get_sc_object $P895, "1304459374.119", 16
    get_how $P896, $P895
    nqp_get_sc_object $P897, "1304459374.119", 16
    .const 'Sub' $P898 = "54_1304459375.235" 
    $P896."add_parrot_vtable_mapping"($P897, "exists_keyed_str", $P898)
    nqp_get_sc_object $P899, "1304459374.119", 16
    get_how $P900, $P899
    nqp_get_sc_object $P901, "1304459374.119", 16
    .const 'Sub' $P902 = "55_1304459375.235" 
    $P900."add_parrot_vtable_mapping"($P901, "exists_keyed_int", $P902)
    nqp_get_sc_object $P903, "1304459374.119", 16
    get_how $P904, $P903
    nqp_get_sc_object $P905, "1304459374.119", 16
    .const 'Sub' $P906 = "56_1304459375.235" 
    $P904."add_parrot_vtable_mapping"($P905, "delete_keyed", $P906)
    nqp_get_sc_object $P907, "1304459374.119", 16
    get_how $P908, $P907
    nqp_get_sc_object $P909, "1304459374.119", 16
    .const 'Sub' $P910 = "57_1304459375.235" 
    $P908."add_parrot_vtable_mapping"($P909, "delete_keyed_str", $P910)
    nqp_get_sc_object $P911, "1304459374.119", 16
    get_how $P912, $P911
    nqp_get_sc_object $P913, "1304459374.119", 16
    .const 'Sub' $P914 = "58_1304459375.235" 
    $P912."add_parrot_vtable_mapping"($P913, "delete_keyed_int", $P914)
    nqp_get_sc_object $P915, "1304459374.119", 16
    get_how $P916, $P915
    nqp_get_sc_object $P917, "1304459374.119", 16
    .const 'Sub' $P918 = "59_1304459375.235" 
    $P916."add_parrot_vtable_mapping"($P917, "unshift_pmc", $P918)
    nqp_get_sc_object $P919, "1304459374.119", 16
    get_how $P920, $P919
    nqp_get_sc_object $P921, "1304459374.119", 16
    .const 'Sub' $P922 = "60_1304459375.235" 
    $P920."add_parrot_vtable_mapping"($P921, "push_pmc", $P922)
    .const 'Sub' $P923 = "42_1304459375.235" 
    $P924 = $P923."get_lexinfo"()
    nqp_get_sc_object $P925, "1304459374.119", 16
    $P924."set_static_lexpad_value"("$?PACKAGE", $P925)
    .const 'Sub' $P926 = "42_1304459375.235" 
    $P927 = $P926."get_lexinfo"()
    $P927."finish_static_lexpad"()
    .const 'Sub' $P928 = "42_1304459375.235" 
    $P929 = $P928."get_lexinfo"()
    nqp_get_sc_object $P930, "1304459374.119", 16
    $P929."set_static_lexpad_value"("$?CLASS", $P930)
    .const 'Sub' $P931 = "42_1304459375.235" 
    $P932 = $P931."get_lexinfo"()
    $P932."finish_static_lexpad"()
    nqp_get_sc_object $P933, "1304459374.119", 16
    get_how $P934, $P933
    nqp_get_sc_object $P935, "1304459374.119", 16
    nqp_get_sc_object $P936, "1304459374.119", 5
    $P934."set_default_parent"($P935, $P936)
    nqp_get_sc_object $P937, "1304459374.119", 16
    get_how $P938, $P937
    nqp_get_sc_object $P939, "1304459374.119", 16
    $P938."compose"($P939)
  if_656_end:
    nqp_get_sc_object $P1107, "1304459374.119", 0
    set_hll_global "GLOBAL", $P1107
.end


.HLL "nqp"

.namespace []
.sub "open"  :subid("11_1304459375.235") :outer("10_1304459375.235")
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
    if has_param_24, optparam_63
    new $P25, "Undef"
    set param_24, $P25
  optparam_63:
    .lex "$r", param_24
    if has_param_26, optparam_64
    new $P27, "Undef"
    set param_26, $P27
  optparam_64:
    .lex "$w", param_26
    if has_param_28, optparam_65
    new $P29, "Undef"
    set param_28, $P29
  optparam_65:
    .lex "$a", param_28
    if has_param_30, optparam_66
    new $P31, "Undef"
    set param_30, $P31
  optparam_66:
    .lex "$bin", param_30
.annotate 'line', 159
    new $P32, "Undef"
    .lex "$mode", $P32
.annotate 'line', 160
    new $P33, "Undef"
    .lex "$handle", $P33
.annotate 'line', 159
    find_lex $P36, "$w"
    unless_null $P36, vivify_67
    new $P36, "Undef"
  vivify_67:
    if $P36, if_35
    find_lex $P40, "$a"
    unless_null $P40, vivify_68
    new $P40, "Undef"
  vivify_68:
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
    unless_null $P44, vivify_69
    new $P44, "Undef"
  vivify_69:
    find_lex $P45, "$filename"
    unless_null $P45, vivify_70
    new $P45, "Undef"
  vivify_70:
    find_lex $P46, "$mode"
    unless_null $P46, vivify_71
    new $P46, "Undef"
  vivify_71:
    $P44."open"($P45, $P46)
.annotate 'line', 162
    find_lex $P47, "$handle"
    unless_null $P47, vivify_72
    new $P47, "Undef"
  vivify_72:
    find_lex $P50, "$bin"
    unless_null $P50, vivify_73
    new $P50, "Undef"
  vivify_73:
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
    unless_null $P53, vivify_74
    new $P53, "Undef"
  vivify_74:
.annotate 'line', 158
    .return ($P53)
.end


.HLL "nqp"

.namespace []
.sub "close"  :subid("12_1304459375.235") :outer("10_1304459375.235")
    .param pmc param_56
.annotate 'line', 170
    .lex "$handle", param_56
.annotate 'line', 171
    find_lex $P57, "$handle"
    unless_null $P57, vivify_75
    new $P57, "Undef"
  vivify_75:
    $P58 = $P57."close"()
.annotate 'line', 170
    .return ($P58)
.end


.HLL "nqp"

.namespace []
.sub "slurp"  :subid("13_1304459375.235") :outer("10_1304459375.235")
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
    unless_null $P64, vivify_76
    new $P64, "Undef"
  vivify_76:
    $P65 = "open"($P64, 1 :named("r"))
    store_lex "$handle", $P65
.annotate 'line', 180
    find_lex $P66, "$handle"
    unless_null $P66, vivify_77
    new $P66, "Undef"
  vivify_77:
    $P67 = $P66."readall"()
    store_lex "$contents", $P67
.annotate 'line', 181
    find_lex $P68, "$handle"
    unless_null $P68, vivify_78
    new $P68, "Undef"
  vivify_78:
    $P68."close"()
    find_lex $P69, "$contents"
    unless_null $P69, vivify_79
    new $P69, "Undef"
  vivify_79:
.annotate 'line', 178
    .return ($P69)
.end


.HLL "nqp"

.namespace []
.sub "spew"  :subid("14_1304459375.235") :outer("10_1304459375.235")
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
    unless_null $P76, vivify_80
    new $P76, "Undef"
  vivify_80:
    find_lex $P77, "$filename"
    unless_null $P77, vivify_81
    new $P77, "Undef"
  vivify_81:
    $P76."open"($P77, "w")
.annotate 'line', 193
    find_lex $P78, "$handle"
    unless_null $P78, vivify_82
    new $P78, "Undef"
  vivify_82:
    find_lex $P79, "$contents"
    unless_null $P79, vivify_83
    new $P79, "Undef"
  vivify_83:
    $P78."print"($P79)
.annotate 'line', 194
    find_lex $P80, "$handle"
    unless_null $P80, vivify_84
    new $P80, "Undef"
  vivify_84:
    $P81 = $P80."close"()
.annotate 'line', 190
    .return ($P81)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "print"  :subid("15_1304459375.235") :outer("10_1304459375.235")
    .param pmc param_84 :slurpy
.annotate 'line', 197
    .const 'Sub' $P90 = "16_1304459375.235" 
    capture_lex $P90
    .lex "@args", param_84
.annotate 'line', 198
    find_lex $P86, "@args"
    unless_null $P86, vivify_85
    $P86 = root_new ['parrot';'ResizablePMCArray']
  vivify_85:
    defined $I87, $P86
    unless $I87, for_undef_86
    iter $P85, $P86
    new $P94, 'ExceptionHandler'
    set_label $P94, loop93_handler
    $P94."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P94
  loop93_test:
    unless $P85, loop93_done
    shift $P88, $P85
  loop93_redo:
    .const 'Sub' $P90 = "16_1304459375.235" 
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
  for_undef_86:
.annotate 'line', 197
    .return (1)
.end


.HLL "nqp"

.namespace []
.sub "_block89"  :anon :subid("16_1304459375.235") :outer("15_1304459375.235")
    .param pmc param_91
.annotate 'line', 198
    .lex "$_", param_91
.annotate 'line', 199
    find_lex $P92, "$_"
    unless_null $P92, vivify_87
    new $P92, "Undef"
  vivify_87:
    print $P92
.annotate 'line', 198
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "say"  :subid("17_1304459375.235") :outer("10_1304459375.235")
    .param pmc param_98 :slurpy
.annotate 'line', 204
    .lex "@args", param_98
.annotate 'line', 205
    find_lex $P99, "@args"
    unless_null $P99, vivify_88
    $P99 = root_new ['parrot';'ResizablePMCArray']
  vivify_88:
    $P100 = "print"($P99 :flat, "\n")
.annotate 'line', 204
    .return ($P100)
.end


.HLL "nqp"

.namespace []
.sub "match"  :subid("18_1304459375.235") :outer("10_1304459375.235")
    .param pmc param_103
    .param pmc param_104
    .param pmc param_105 :optional :named("global")
    .param int has_param_105 :opt_flag
.annotate 'line', 222
    .const 'Sub' $P115 = "19_1304459375.235" 
    capture_lex $P115
    .lex "$text", param_103
    .lex "$regex", param_104
    if has_param_105, optparam_89
    new $P106, "Undef"
    set param_105, $P106
  optparam_89:
    .lex "$global", param_105
.annotate 'line', 223
    new $P107, "Undef"
    .lex "$match", $P107
    find_lex $P108, "$regex"
    unless_null $P108, vivify_90
    new $P108, "Undef"
  vivify_90:
    find_lex $P109, "$text"
    unless_null $P109, vivify_91
    new $P109, "Undef"
  vivify_91:
    $P110 = $P108."ACCEPTS"($P109)
    store_lex "$match", $P110
.annotate 'line', 224
    find_lex $P113, "$global"
    unless_null $P113, vivify_92
    new $P113, "Undef"
  vivify_92:
    if $P113, if_112
.annotate 'line', 232
    find_lex $P133, "$match"
    unless_null $P133, vivify_93
    new $P133, "Undef"
  vivify_93:
    set $P111, $P133
.annotate 'line', 224
    goto if_112_end
  if_112:
    .const 'Sub' $P115 = "19_1304459375.235" 
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
.sub "_block114"  :anon :subid("19_1304459375.235") :outer("18_1304459375.235")
.annotate 'line', 225
    $P116 = root_new ['parrot';'ResizablePMCArray']
    .lex "@matches", $P116
.annotate 'line', 224
    find_lex $P117, "@matches"
    unless_null $P117, vivify_94
    $P117 = root_new ['parrot';'ResizablePMCArray']
  vivify_94:
.annotate 'line', 226
    new $P129, 'ExceptionHandler'
    set_label $P129, loop128_handler
    $P129."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P129
  loop128_test:
    find_lex $P118, "$match"
    unless_null $P118, vivify_95
    new $P118, "Undef"
  vivify_95:
    unless $P118, loop128_done
  loop128_redo:
.annotate 'line', 227
    find_lex $P119, "@matches"
    unless_null $P119, vivify_96
    $P119 = root_new ['parrot';'ResizablePMCArray']
  vivify_96:
    find_lex $P120, "$match"
    unless_null $P120, vivify_97
    new $P120, "Undef"
  vivify_97:
    $P119."push"($P120)
.annotate 'line', 228
    find_lex $P121, "$match"
    unless_null $P121, vivify_98
    new $P121, "Undef"
  vivify_98:
    $P122 = $P121."CURSOR"()
    find_lex $P123, "$text"
    unless_null $P123, vivify_99
    new $P123, "Undef"
  vivify_99:
    find_lex $P124, "$regex"
    unless_null $P124, vivify_100
    new $P124, "Undef"
  vivify_100:
    find_lex $P125, "$match"
    unless_null $P125, vivify_101
    new $P125, "Undef"
  vivify_101:
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
    unless_null $P131, vivify_102
    $P131 = root_new ['parrot';'ResizablePMCArray']
  vivify_102:
.annotate 'line', 224
    .return ($P131)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "subst"  :subid("20_1304459375.235") :outer("10_1304459375.235")
    .param pmc param_136
    .param pmc param_137
    .param pmc param_138
    .param pmc param_139 :optional :named("global")
    .param int has_param_139 :opt_flag
.annotate 'line', 244
    .const 'Sub' $P166 = "21_1304459375.235" 
    capture_lex $P166
    .lex "$text", param_136
    .lex "$regex", param_137
    .lex "$repl", param_138
    if has_param_139, optparam_103
    new $P140, "Undef"
    set param_139, $P140
  optparam_103:
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
    unless_null $P148, vivify_104
    new $P148, "Undef"
  vivify_104:
    if $P148, if_147
.annotate 'line', 246
    find_lex $P152, "$regex"
    unless_null $P152, vivify_105
    new $P152, "Undef"
  vivify_105:
    find_lex $P153, "$text"
    unless_null $P153, vivify_106
    new $P153, "Undef"
  vivify_106:
    $P154 = $P152."ACCEPTS"($P153)
    new $P155, "ResizablePMCArray"
    push $P155, $P154
.annotate 'line', 245
    set $P146, $P155
    goto if_147_end
  if_147:
    find_lex $P149, "$text"
    unless_null $P149, vivify_107
    new $P149, "Undef"
  vivify_107:
    find_lex $P150, "$regex"
    unless_null $P150, vivify_108
    new $P150, "Undef"
  vivify_108:
    $P151 = "match"($P149, $P150, 1 :named("global"))
    set $P146, $P151
  if_147_end:
    store_lex "@matches", $P146
.annotate 'line', 247
    find_lex $P156, "$repl"
    unless_null $P156, vivify_109
    new $P156, "Undef"
  vivify_109:
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
    unless_null $P162, vivify_110
    $P162 = root_new ['parrot';'ResizablePMCArray']
  vivify_110:
    defined $I163, $P162
    unless $I163, for_undef_111
    iter $P161, $P162
    new $P199, 'ExceptionHandler'
    set_label $P199, loop198_handler
    $P199."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P199
  loop198_test:
    unless $P161, loop198_done
    shift $P164, $P161
  loop198_redo:
    .const 'Sub' $P166 = "21_1304459375.235" 
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
  for_undef_111:
.annotate 'line', 260
    find_lex $P201, "$text"
    unless_null $P201, vivify_126
    new $P201, "Undef"
  vivify_126:
    set $S202, $P201
    length $I203, $S202
    new $P204, 'Integer'
    set $P204, $I203
    store_lex "$chars", $P204
.annotate 'line', 262
    find_lex $P206, "$chars"
    unless_null $P206, vivify_127
    new $P206, "Undef"
  vivify_127:
    set $N207, $P206
    find_lex $P208, "$offset"
    unless_null $P208, vivify_128
    new $P208, "Undef"
  vivify_128:
    set $N209, $P208
    isgt $I210, $N207, $N209
    unless $I210, if_205_end
.annotate 'line', 261
    find_lex $P211, "$result"
    unless_null $P211, vivify_129
    new $P211, "Undef"
  vivify_129:
    find_lex $P212, "$text"
    unless_null $P212, vivify_130
    new $P212, "Undef"
  vivify_130:
    set $S213, $P212
    find_lex $P214, "$offset"
    unless_null $P214, vivify_131
    new $P214, "Undef"
  vivify_131:
    set $I215, $P214
    find_lex $P216, "$chars"
    unless_null $P216, vivify_132
    new $P216, "Undef"
  vivify_132:
    set $I217, $P216
    substr $S218, $S213, $I215, $I217
    push $P211, $S218
  if_205_end:
.annotate 'line', 264
    find_lex $P219, "$result"
    unless_null $P219, vivify_133
    new $P219, "Undef"
  vivify_133:
    set $S220, $P219
.annotate 'line', 244
    .return ($S220)
.end


.HLL "nqp"

.namespace []
.sub "_block165"  :anon :subid("21_1304459375.235") :outer("20_1304459375.235")
    .param pmc param_167
.annotate 'line', 251
    .lex "$match", param_167
.annotate 'line', 252
    find_lex $P170, "$match"
    unless_null $P170, vivify_112
    new $P170, "Undef"
  vivify_112:
    if $P170, if_169
    set $P168, $P170
    goto if_169_end
  if_169:
.annotate 'line', 254
    find_lex $P172, "$match"
    unless_null $P172, vivify_113
    new $P172, "Undef"
  vivify_113:
    $N173 = $P172."from"()
    find_lex $P174, "$offset"
    unless_null $P174, vivify_114
    new $P174, "Undef"
  vivify_114:
    set $N175, $P174
    isgt $I176, $N173, $N175
    unless $I176, if_171_end
.annotate 'line', 253
    find_lex $P177, "$result"
    unless_null $P177, vivify_115
    new $P177, "Undef"
  vivify_115:
    find_lex $P178, "$text"
    unless_null $P178, vivify_116
    new $P178, "Undef"
  vivify_116:
    set $S179, $P178
    find_lex $P180, "$offset"
    unless_null $P180, vivify_117
    new $P180, "Undef"
  vivify_117:
    set $I181, $P180
    find_lex $P182, "$match"
    unless_null $P182, vivify_118
    new $P182, "Undef"
  vivify_118:
    $P183 = $P182."from"()
    find_lex $P184, "$offset"
    unless_null $P184, vivify_119
    new $P184, "Undef"
  vivify_119:
    sub $P185, $P183, $P184
    set $I186, $P185
    substr $S187, $S179, $I181, $I186
    push $P177, $S187
  if_171_end:
.annotate 'line', 255
    find_lex $P188, "$result"
    unless_null $P188, vivify_120
    new $P188, "Undef"
  vivify_120:
    find_lex $P191, "$is_code"
    unless_null $P191, vivify_121
    new $P191, "Undef"
  vivify_121:
    if $P191, if_190
    find_lex $P195, "$repl"
    unless_null $P195, vivify_122
    new $P195, "Undef"
  vivify_122:
    set $P189, $P195
    goto if_190_end
  if_190:
    find_lex $P192, "$repl"
    unless_null $P192, vivify_123
    new $P192, "Undef"
  vivify_123:
    find_lex $P193, "$match"
    unless_null $P193, vivify_124
    new $P193, "Undef"
  vivify_124:
    $P194 = $P192($P193)
    set $P189, $P194
  if_190_end:
    push $P188, $P189
.annotate 'line', 256
    find_lex $P196, "$match"
    unless_null $P196, vivify_125
    new $P196, "Undef"
  vivify_125:
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
.sub "plan"  :subid("22_1304459375.235") :outer("10_1304459375.235")
    .param pmc param_224
.annotate 'line', 272
    .lex "$quantity", param_224
.annotate 'line', 273
    new $P225, 'String'
    set $P225, "1.."
    find_lex $P226, "$quantity"
    unless_null $P226, vivify_134
    new $P226, "Undef"
  vivify_134:
    concat $P227, $P225, $P226
    $P228 = "say"($P227)
.annotate 'line', 272
    .return ($P228)
.end


.HLL "nqp"

.namespace []
.sub "ok"  :subid("23_1304459375.235") :outer("10_1304459375.235")
    .param pmc param_231
    .param pmc param_232 :optional
    .param int has_param_232 :opt_flag
.annotate 'line', 276
    .lex "$condition", param_231
    if has_param_232, optparam_135
    new $P233, "Undef"
    set param_232, $P233
  optparam_135:
    .lex "$desc", param_232
.annotate 'line', 277
    find_lex $P234, "$test_counter"
    unless_null $P234, vivify_136
    new $P234, "Undef"
  vivify_136:
    add $P235, $P234, 1
    store_lex "$test_counter", $P235
.annotate 'line', 279
    find_lex $P237, "$condition"
    unless_null $P237, vivify_137
    new $P237, "Undef"
  vivify_137:
    if $P237, unless_236_end
.annotate 'line', 280
    "print"("not ")
  unless_236_end:
.annotate 'line', 282
    new $P238, 'String'
    set $P238, "ok "
    find_lex $P239, "$test_counter"
    unless_null $P239, vivify_138
    new $P239, "Undef"
  vivify_138:
    concat $P240, $P238, $P239
    "print"($P240)
.annotate 'line', 283
    find_lex $P242, "$desc"
    unless_null $P242, vivify_139
    new $P242, "Undef"
  vivify_139:
    unless $P242, if_241_end
.annotate 'line', 284
    new $P243, 'String'
    set $P243, " - "
    find_lex $P244, "$desc"
    unless_null $P244, vivify_140
    new $P244, "Undef"
  vivify_140:
    concat $P245, $P243, $P244
    "print"($P245)
  if_241_end:
.annotate 'line', 286
    "print"("\n")
.annotate 'line', 288
    find_lex $P248, "$condition"
    unless_null $P248, vivify_141
    new $P248, "Undef"
  vivify_141:
    if $P248, if_247
    new $P250, "Integer"
    assign $P250, 0
    set $P246, $P250
    goto if_247_end
  if_247:
    new $P249, "Integer"
    assign $P249, 1
    set $P246, $P249
  if_247_end:
.annotate 'line', 276
    .return ($P246)
.end


.HLL "nqp"

.namespace []
.sub "skip"  :subid("24_1304459375.235") :outer("10_1304459375.235")
    .param pmc param_253
.annotate 'line', 291
    .lex "$desc", param_253
.annotate 'line', 292
    find_lex $P254, "$test_counter"
    unless_null $P254, vivify_142
    new $P254, "Undef"
  vivify_142:
    add $P255, $P254, 1
    store_lex "$test_counter", $P255
.annotate 'line', 293
    new $P256, 'String'
    set $P256, "ok "
    find_lex $P257, "$test_counter"
    unless_null $P257, vivify_143
    new $P257, "Undef"
  vivify_143:
    concat $P258, $P256, $P257
    concat $P259, $P258, " # SKIP "
    find_lex $P260, "$desc"
    unless_null $P260, vivify_144
    new $P260, "Undef"
  vivify_144:
    concat $P261, $P259, $P260
    concat $P262, $P261, "\n"
    $P263 = "say"($P262)
.annotate 'line', 291
    .return ($P263)
.end


.HLL "nqp"

.namespace []
.sub "_block265"  :anon :subid("25_1304459375.235") :outer("10_1304459375.235")
.annotate 'line', 14
    .lex "$?PACKAGE", $P267
    .lex "$?CLASS", $P268
.annotate 'line', 15
    find_lex $P269, "$?PACKAGE"
    get_who $P270, $P269
    set $P273, $P270["NQPModuleHOW"]
    unless_null $P273, vivify_145
    get_hll_global $P271, "GLOBAL"
    get_who $P272, $P271
    set $P273, $P272["NQPModuleHOW"]
  vivify_145:
    find_lex $P274, "$?PACKAGE"
    unless_null $P274, vivify_146
    new $P274, "Undef"
    store_lex "$?PACKAGE", $P274
  vivify_146:
    get_who $P275, $P274
    set $P275["module"], $P273
.annotate 'line', 16
    find_lex $P276, "$?PACKAGE"
    get_who $P277, $P276
    set $P280, $P277["NQPClassHOW"]
    unless_null $P280, vivify_147
    get_hll_global $P278, "GLOBAL"
    get_who $P279, $P278
    set $P280, $P279["NQPClassHOW"]
  vivify_147:
    find_lex $P281, "$?PACKAGE"
    unless_null $P281, vivify_148
    new $P281, "Undef"
    store_lex "$?PACKAGE", $P281
  vivify_148:
    get_who $P282, $P281
    set $P282["class"], $P280
.annotate 'line', 17
    find_lex $P283, "$?PACKAGE"
    get_who $P284, $P283
    set $P287, $P284["NQPAttribute"]
    unless_null $P287, vivify_149
    get_hll_global $P285, "GLOBAL"
    get_who $P286, $P285
    set $P287, $P286["NQPAttribute"]
  vivify_149:
    find_lex $P288, "$?PACKAGE"
    unless_null $P288, vivify_150
    new $P288, "Undef"
    store_lex "$?PACKAGE", $P288
  vivify_150:
    get_who $P289, $P288
    set $P289["class-attr"], $P287
.annotate 'line', 18
    find_lex $P290, "$?PACKAGE"
    get_who $P291, $P290
    set $P294, $P291["NQPClassHOW"]
    unless_null $P294, vivify_151
    get_hll_global $P292, "GLOBAL"
    get_who $P293, $P292
    set $P294, $P293["NQPClassHOW"]
  vivify_151:
    find_lex $P295, "$?PACKAGE"
    unless_null $P295, vivify_152
    new $P295, "Undef"
    store_lex "$?PACKAGE", $P295
  vivify_152:
    get_who $P296, $P295
    set $P296["grammar"], $P294
.annotate 'line', 19
    find_lex $P297, "$?PACKAGE"
    get_who $P298, $P297
    set $P301, $P298["NQPAttribute"]
    unless_null $P301, vivify_153
    get_hll_global $P299, "GLOBAL"
    get_who $P300, $P299
    set $P301, $P300["NQPAttribute"]
  vivify_153:
    find_lex $P302, "$?PACKAGE"
    unless_null $P302, vivify_154
    new $P302, "Undef"
    store_lex "$?PACKAGE", $P302
  vivify_154:
    get_who $P303, $P302
    set $P303["grammar-attr"], $P301
.annotate 'line', 20
    find_lex $P304, "$?PACKAGE"
    get_who $P305, $P304
    set $P308, $P305["NQPParametricRoleHOW"]
    unless_null $P308, vivify_155
    get_hll_global $P306, "GLOBAL"
    get_who $P307, $P306
    set $P308, $P307["NQPParametricRoleHOW"]
  vivify_155:
    find_lex $P309, "$?PACKAGE"
    unless_null $P309, vivify_156
    new $P309, "Undef"
    store_lex "$?PACKAGE", $P309
  vivify_156:
    get_who $P310, $P309
    set $P310["role"], $P308
.annotate 'line', 21
    find_lex $P311, "$?PACKAGE"
    get_who $P312, $P311
    set $P315, $P312["NQPAttribute"]
    unless_null $P315, vivify_157
    get_hll_global $P313, "GLOBAL"
    get_who $P314, $P313
    set $P315, $P314["NQPAttribute"]
  vivify_157:
    find_lex $P316, "$?PACKAGE"
    unless_null $P316, vivify_158
    new $P316, "Undef"
    store_lex "$?PACKAGE", $P316
  vivify_158:
    get_who $P317, $P316
    set $P317["role-attr"], $P315
.annotate 'line', 22
    find_lex $P318, "$?PACKAGE"
    get_who $P319, $P318
    set $P322, $P319["NQPNativeHOW"]
    unless_null $P322, vivify_159
    get_hll_global $P320, "GLOBAL"
    get_who $P321, $P320
    set $P322, $P321["NQPNativeHOW"]
  vivify_159:
    find_lex $P323, "$?PACKAGE"
    unless_null $P323, vivify_160
    new $P323, "Undef"
    store_lex "$?PACKAGE", $P323
  vivify_160:
    get_who $P324, $P323
    set $P324["native"], $P322
.annotate 'line', 14
    .return ($P322)
.end


.HLL "nqp"

.namespace []
.sub "_block325"  :anon :subid("26_1304459375.235") :outer("10_1304459375.235")
.annotate 'line', 25
    .lex "$?PACKAGE", $P327
    .lex "$?CLASS", $P328
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block329"  :anon :subid("27_1304459375.235") :outer("10_1304459375.235")
.annotate 'line', 27
    .lex "$?PACKAGE", $P331
    .lex "$?CLASS", $P332
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block333"  :anon :subid("28_1304459375.235") :outer("10_1304459375.235")
.annotate 'line', 29
    .lex "$?PACKAGE", $P335
    .lex "$?CLASS", $P336
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block337"  :anon :subid("29_1304459375.235") :outer("10_1304459375.235")
.annotate 'line', 32
    .const 'Sub' $P443 = "41_1304459375.235" 
    capture_lex $P443
    .const 'Sub' $P435 = "40_1304459375.235" 
    capture_lex $P435
    .const 'Sub' $P431 = "39_1304459375.235" 
    capture_lex $P431
    .const 'Sub' $P423 = "38_1304459375.235" 
    capture_lex $P423
    .const 'Sub' $P420 = "37_1304459375.235" 
    capture_lex $P420
    .const 'Sub' $P414 = "36_1304459375.235" 
    capture_lex $P414
    .const 'Sub' $P376 = "34_1304459375.235" 
    capture_lex $P376
    .const 'Sub' $P355 = "32_1304459375.235" 
    capture_lex $P355
    .const 'Sub' $P345 = "31_1304459375.235" 
    capture_lex $P345
    .const 'Sub' $P341 = "30_1304459375.235" 
    capture_lex $P341
    .lex "$?PACKAGE", $P339
    .lex "$?CLASS", $P340
.annotate 'line', 73
    .const 'Sub' $P443 = "41_1304459375.235" 
    newclosure $P451, $P443
.annotate 'line', 32
    .return ($P451)
.end


.HLL "nqp"

.namespace []
.sub "CREATE"  :subid("30_1304459375.235") :outer("29_1304459375.235")
    .param pmc param_342
.annotate 'line', 33
    .lex "self", param_342
.annotate 'line', 34
    find_lex $P343, "self"
    repr_instance_of $P344, $P343
.annotate 'line', 33
    .return ($P344)
.end


.HLL "nqp"

.namespace []
.sub "bless"  :subid("31_1304459375.235") :outer("29_1304459375.235")
    .param pmc param_346
    .param pmc param_348 :slurpy :named
.annotate 'line', 37
    .lex "$self", param_346
    find_lex $P347, "$self"
    .lex "self", $P347
    .lex "%attributes", param_348
.annotate 'line', 38
    new $P349, "Undef"
    .lex "$instance", $P349
    find_lex $P350, "self"
    $P351 = $P350."CREATE"()
    store_lex "$instance", $P351
.annotate 'line', 39
    find_lex $P352, "$instance"
    unless_null $P352, vivify_161
    new $P352, "Undef"
  vivify_161:
    find_lex $P353, "%attributes"
    unless_null $P353, vivify_162
    $P353 = root_new ['parrot';'Hash']
  vivify_162:
    $P352."BUILDALL"($P353 :flat)
    find_lex $P354, "$instance"
    unless_null $P354, vivify_163
    new $P354, "Undef"
  vivify_163:
.annotate 'line', 37
    .return ($P354)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "BUILDALL"  :subid("32_1304459375.235") :outer("29_1304459375.235")
    .param pmc param_356
    .param pmc param_358 :slurpy :named
.annotate 'line', 43
    .const 'Sub' $P367 = "33_1304459375.235" 
    capture_lex $P367
    .lex "$self", param_356
    find_lex $P357, "$self"
    .lex "self", $P357
    .lex "%attributes", param_358
.annotate 'line', 44
    find_lex $P360, "$self"
    unless_null $P360, vivify_164
    new $P360, "Undef"
  vivify_164:
    get_how $P361, $P360
    find_lex $P362, "$self"
    unless_null $P362, vivify_165
    new $P362, "Undef"
  vivify_165:
    $P363 = $P361."parents"($P362)
    defined $I364, $P363
    unless $I364, for_undef_166
    iter $P359, $P363
    new $P374, 'ExceptionHandler'
    set_label $P374, loop373_handler
    $P374."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P374
  loop373_test:
    unless $P359, loop373_done
    shift $P365, $P359
  loop373_redo:
    .const 'Sub' $P367 = "33_1304459375.235" 
    capture_lex $P367
    $P367($P365)
  loop373_next:
    goto loop373_test
  loop373_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P375, exception, 'type'
    eq $P375, .CONTROL_LOOP_NEXT, loop373_next
    eq $P375, .CONTROL_LOOP_REDO, loop373_redo
  loop373_done:
    pop_eh 
  for_undef_166:
.annotate 'line', 43
    .return ($P359)
.end


.HLL "nqp"

.namespace []
.sub "_block366"  :anon :subid("33_1304459375.235") :outer("32_1304459375.235")
    .param pmc param_368
.annotate 'line', 44
    .lex "$class", param_368
.annotate 'line', 45
    find_lex $P369, "$self"
    unless_null $P369, vivify_167
    new $P369, "Undef"
  vivify_167:
    find_lex $P370, "$class"
    unless_null $P370, vivify_168
    new $P370, "Undef"
  vivify_168:
    find_lex $P371, "%attributes"
    unless_null $P371, vivify_169
    $P371 = root_new ['parrot';'Hash']
  vivify_169:
    $P372 = $P369."BUILD_MAGIC"($P370, $P371 :flat)
.annotate 'line', 44
    .return ($P372)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "BUILD_MAGIC"  :subid("34_1304459375.235") :outer("29_1304459375.235")
    .param pmc param_377
    .param pmc param_379
    .param pmc param_380 :slurpy :named
.annotate 'line', 49
    .const 'Sub' $P389 = "35_1304459375.235" 
    capture_lex $P389
    .lex "$self", param_377
    find_lex $P378, "$self"
    .lex "self", $P378
    .lex "$type", param_379
    .lex "%attributes", param_380
.annotate 'line', 50
    find_lex $P382, "$type"
    unless_null $P382, vivify_170
    new $P382, "Undef"
  vivify_170:
    get_how $P383, $P382
    find_lex $P384, "$type"
    unless_null $P384, vivify_171
    new $P384, "Undef"
  vivify_171:
    $P385 = $P383."attributes"($P384, 1 :named("local"))
    defined $I386, $P385
    unless $I386, for_undef_172
    iter $P381, $P385
    new $P412, 'ExceptionHandler'
    set_label $P412, loop411_handler
    $P412."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P412
  loop411_test:
    unless $P381, loop411_done
    shift $P387, $P381
  loop411_redo:
    .const 'Sub' $P389 = "35_1304459375.235" 
    capture_lex $P389
    $P389($P387)
  loop411_next:
    goto loop411_test
  loop411_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P413, exception, 'type'
    eq $P413, .CONTROL_LOOP_NEXT, loop411_next
    eq $P413, .CONTROL_LOOP_REDO, loop411_redo
  loop411_done:
    pop_eh 
  for_undef_172:
.annotate 'line', 49
    .return ($P381)
.end


.HLL "nqp"

.namespace []
.sub "_block388"  :anon :subid("35_1304459375.235") :outer("34_1304459375.235")
    .param pmc param_392
.annotate 'line', 51
    new $P390, "Undef"
    .lex "$name", $P390
.annotate 'line', 52
    new $P391, "Undef"
    .lex "$shortname", $P391
    .lex "$_", param_392
.annotate 'line', 51
    find_lex $P393, "$_"
    unless_null $P393, vivify_173
    new $P393, "Undef"
  vivify_173:
    $P394 = $P393."name"()
    store_lex "$name", $P394
.annotate 'line', 52
    find_lex $P395, "$name"
    unless_null $P395, vivify_174
    new $P395, "Undef"
  vivify_174:
    set $S396, $P395
    substr $S397, $S396, 2
    new $P398, 'String'
    set $P398, $S397
    store_lex "$shortname", $P398
.annotate 'line', 53
    find_lex $P402, "$shortname"
    unless_null $P402, vivify_175
    new $P402, "Undef"
  vivify_175:
    find_lex $P401, "%attributes"
    unless_null $P401, vivify_176
    $P401 = root_new ['parrot';'Hash']
  vivify_176:
    exists $I403, $P401[$P402]
    if $I403, if_400
    new $P399, 'Integer'
    set $P399, $I403
    goto if_400_end
  if_400:
.annotate 'line', 54
    find_lex $P404, "$self"
    unless_null $P404, vivify_177
    new $P404, "Undef"
  vivify_177:
    find_lex $P405, "$type"
    unless_null $P405, vivify_178
    new $P405, "Undef"
  vivify_178:
    find_lex $P406, "$name"
    unless_null $P406, vivify_179
    new $P406, "Undef"
  vivify_179:
    set $S407, $P406
    find_lex $P408, "$shortname"
    unless_null $P408, vivify_180
    new $P408, "Undef"
  vivify_180:
    find_lex $P409, "%attributes"
    unless_null $P409, vivify_181
    $P409 = root_new ['parrot';'Hash']
  vivify_181:
    set $P410, $P409[$P408]
    unless_null $P410, vivify_182
    new $P410, "Undef"
  vivify_182:
    setattribute $P404, $P405, $S407, $P410
  if_400_end:
.annotate 'line', 50
    .return ($P399)
.end


.HLL "nqp"

.namespace []
.sub "new"  :subid("36_1304459375.235") :outer("29_1304459375.235")
    .param pmc param_415
    .param pmc param_416 :slurpy :named
.annotate 'line', 59
    .lex "self", param_415
    .lex "%attributes", param_416
.annotate 'line', 60
    find_lex $P417, "self"
    find_lex $P418, "%attributes"
    unless_null $P418, vivify_183
    $P418 = root_new ['parrot';'Hash']
  vivify_183:
    $P419 = $P417."bless"($P418 :flat)
.annotate 'line', 59
    .return ($P419)
.end


.HLL "nqp"

.namespace []
.sub "Str" :instanceof("DispatcherSub") :subid("37_1304459375.235") :outer("29_1304459375.235")
    .param pmc param_421
.annotate 'line', 59
    .lex "self", param_421
    multi_dispatch_over_lexical_candidates $P422
    .return ($P422)
.end


.HLL "nqp"

.namespace []
.sub "Str"  :subid("38_1304459375.235") :outer("29_1304459375.235")
    .param pmc param_424
.annotate 'line', 64
    .lex "$self", param_424
    find_lex $P425, "$self"
    .lex "self", $P425
.annotate 'line', 65
    find_lex $P426, "self"
    get_how $P427, $P426
    find_lex $P428, "self"
    $P429 = $P427."name"($P428)
    concat $P430, $P429, "()"
.annotate 'line', 64
    .return ($P430)
.end


.HLL "nqp"

.namespace []
.sub "ACCEPTS" :instanceof("DispatcherSub") :subid("39_1304459375.235") :outer("29_1304459375.235")
    .param pmc param_432
    .param pmc param_433
.annotate 'line', 64
    .lex "self", param_432
.annotate 'line', 68
    .lex "$topic", param_433
.annotate 'line', 64
    multi_dispatch_over_lexical_candidates $P434
    .return ($P434)
.end


.HLL "nqp"

.namespace []
.sub "ACCEPTS"  :subid("40_1304459375.235") :outer("29_1304459375.235")
    .param pmc param_436
    .param pmc param_438
.annotate 'line', 69
    .lex "$self", param_436
    find_lex $P437, "$self"
    .lex "self", $P437
    .lex "$topic", param_438
.annotate 'line', 70
    find_lex $P439, "$topic"
    unless_null $P439, vivify_184
    new $P439, "Undef"
  vivify_184:
    find_lex $P440, "self"
    get_what $P441, $P440
    type_check $I442, $P439, $P441
.annotate 'line', 69
    .return ($I442)
.end


.HLL "nqp"

.namespace []
.sub "isa"  :subid("41_1304459375.235") :outer("29_1304459375.235")
    .param pmc param_444
    .param pmc param_445
.annotate 'line', 73
    .lex "self", param_444
    .lex "$type", param_445
.annotate 'line', 74
    find_lex $P446, "self"
    get_how $P447, $P446
    find_lex $P448, "self"
    find_lex $P449, "$type"
    unless_null $P449, vivify_185
    new $P449, "Undef"
  vivify_185:
    $P450 = $P447."isa"($P448, $P449)
.annotate 'line', 73
    .return ($P450)
.end


.HLL "nqp"

.namespace []
.sub "_block452"  :anon :subid("42_1304459375.235") :outer("10_1304459375.235")
.annotate 'line', 79
    .const 'Sub' $P624 = "60_1304459375.235" 
    capture_lex $P624
    .const 'Sub' $P616 = "59_1304459375.235" 
    capture_lex $P616
    .const 'Sub' $P608 = "58_1304459375.235" 
    capture_lex $P608
    .const 'Sub' $P600 = "57_1304459375.235" 
    capture_lex $P600
    .const 'Sub' $P592 = "56_1304459375.235" 
    capture_lex $P592
    .const 'Sub' $P583 = "55_1304459375.235" 
    capture_lex $P583
    .const 'Sub' $P574 = "54_1304459375.235" 
    capture_lex $P574
    .const 'Sub' $P565 = "53_1304459375.235" 
    capture_lex $P565
    .const 'Sub' $P554 = "52_1304459375.235" 
    capture_lex $P554
    .const 'Sub' $P544 = "51_1304459375.235" 
    capture_lex $P544
    .const 'Sub' $P534 = "50_1304459375.235" 
    capture_lex $P534
    .const 'Sub' $P516 = "49_1304459375.235" 
    capture_lex $P516
    .const 'Sub' $P499 = "48_1304459375.235" 
    capture_lex $P499
    .const 'Sub' $P482 = "47_1304459375.235" 
    capture_lex $P482
    .const 'Sub' $P476 = "46_1304459375.235" 
    capture_lex $P476
    .const 'Sub' $P471 = "45_1304459375.235" 
    capture_lex $P471
    .const 'Sub' $P463 = "44_1304459375.235" 
    capture_lex $P463
    .const 'Sub' $P456 = "43_1304459375.235" 
    capture_lex $P456
    .lex "$?PACKAGE", $P454
    .lex "$?CLASS", $P455
.annotate 'line', 142
    .const 'Sub' $P624 = "60_1304459375.235" 
    newclosure $P631, $P624
.annotate 'line', 79
    .return ($P631)
.end


.HLL "nqp"

.namespace []
.sub "new"  :subid("43_1304459375.235") :outer("42_1304459375.235")
    .param pmc param_457
.annotate 'line', 83
    .lex "self", param_457
.annotate 'line', 84
    new $P458, "Undef"
    .lex "$n", $P458
    find_lex $P459, "self"
    $P460 = $P459."CREATE"()
    store_lex "$n", $P460
.annotate 'line', 85
    find_lex $P461, "$n"
    unless_null $P461, vivify_186
    new $P461, "Undef"
  vivify_186:
    $P461."BUILD"()
    find_lex $P462, "$n"
    unless_null $P462, vivify_187
    new $P462, "Undef"
  vivify_187:
.annotate 'line', 83
    .return ($P462)
.end


.HLL "nqp"

.namespace []
.sub "BUILD"  :subid("44_1304459375.235") :outer("42_1304459375.235")
    .param pmc param_464
.annotate 'line', 89
    .lex "self", param_464
.annotate 'line', 90
    new $P465, "ResizablePMCArray"
    find_lex $P466, "self"
    find_lex $P467, "$?CLASS"
    setattribute $P466, $P467, "@!array", $P465
.annotate 'line', 91
    new $P468, "Hash"
    find_lex $P469, "self"
    find_lex $P470, "$?CLASS"
    setattribute $P469, $P470, "%!hash", $P468
.annotate 'line', 89
    .return ($P468)
.end


.HLL "nqp"

.namespace []
.sub "list"  :subid("45_1304459375.235") :outer("42_1304459375.235")
    .param pmc param_472
.annotate 'line', 94
    .lex "self", param_472
    find_lex $P473, "self"
    find_lex $P474, "$?CLASS"
    getattribute $P475, $P473, $P474, "@!array"
    unless_null $P475, vivify_188
    $P475 = root_new ['parrot';'ResizablePMCArray']
  vivify_188:
    .return ($P475)
.end


.HLL "nqp"

.namespace []
.sub "hash"  :subid("46_1304459375.235") :outer("42_1304459375.235")
    .param pmc param_477
.annotate 'line', 96
    .lex "self", param_477
    find_lex $P478, "self"
    find_lex $P479, "$?CLASS"
    getattribute $P480, $P478, $P479, "%!hash"
    unless_null $P480, vivify_189
    $P480 = root_new ['parrot';'Hash']
  vivify_189:
    .return ($P480)
.end


.HLL "nqp"

.namespace []
.sub "_block481"  :anon :subid("47_1304459375.235") :outer("42_1304459375.235")
    .param pmc param_483
    .param pmc param_484
.annotate 'line', 98
    .lex "self", param_483
    .lex "$key", param_484
.annotate 'line', 99
    find_lex $P490, "$key"
    unless_null $P490, vivify_190
    new $P490, "Undef"
  vivify_190:
    find_lex $P487, "self"
    find_lex $P488, "$?CLASS"
    getattribute $P489, $P487, $P488, "%!hash"
    unless_null $P489, vivify_191
    $P489 = root_new ['parrot';'Hash']
  vivify_191:
    exists $I491, $P489[$P490]
    if $I491, if_486
    null $P497
    set $P485, $P497
    goto if_486_end
  if_486:
    find_lex $P492, "$key"
    unless_null $P492, vivify_192
    new $P492, "Undef"
  vivify_192:
    find_lex $P493, "self"
    find_lex $P494, "$?CLASS"
    getattribute $P495, $P493, $P494, "%!hash"
    unless_null $P495, vivify_193
    $P495 = root_new ['parrot';'Hash']
  vivify_193:
    set $P496, $P495[$P492]
    unless_null $P496, vivify_194
    new $P496, "Undef"
  vivify_194:
    set $P485, $P496
  if_486_end:
.annotate 'line', 98
    .return ($P485)
.end


.HLL "nqp"

.namespace []
.sub "_block498"  :anon :subid("48_1304459375.235") :outer("42_1304459375.235")
    .param pmc param_500
    .param pmc param_501
.annotate 'line', 101
    .lex "self", param_500
    .lex "$key", param_501
.annotate 'line', 102
    find_lex $P507, "$key"
    unless_null $P507, vivify_195
    new $P507, "Undef"
  vivify_195:
    find_lex $P504, "self"
    find_lex $P505, "$?CLASS"
    getattribute $P506, $P504, $P505, "%!hash"
    unless_null $P506, vivify_196
    $P506 = root_new ['parrot';'Hash']
  vivify_196:
    exists $I508, $P506[$P507]
    if $I508, if_503
    null $P514
    set $P502, $P514
    goto if_503_end
  if_503:
    find_lex $P509, "$key"
    unless_null $P509, vivify_197
    new $P509, "Undef"
  vivify_197:
    find_lex $P510, "self"
    find_lex $P511, "$?CLASS"
    getattribute $P512, $P510, $P511, "%!hash"
    unless_null $P512, vivify_198
    $P512 = root_new ['parrot';'Hash']
  vivify_198:
    set $P513, $P512[$P509]
    unless_null $P513, vivify_199
    new $P513, "Undef"
  vivify_199:
    set $P502, $P513
  if_503_end:
.annotate 'line', 101
    .return ($P502)
.end


.HLL "nqp"

.namespace []
.sub "_block515"  :anon :subid("49_1304459375.235") :outer("42_1304459375.235")
    .param pmc param_517
    .param pmc param_518
.annotate 'line', 104
    .lex "self", param_517
    .lex "$key", param_518
.annotate 'line', 105
    find_lex $P524, "$key"
    unless_null $P524, vivify_200
    new $P524, "Undef"
  vivify_200:
    find_lex $P521, "self"
    find_lex $P522, "$?CLASS"
    getattribute $P523, $P521, $P522, "@!array"
    unless_null $P523, vivify_201
    $P523 = root_new ['parrot';'ResizablePMCArray']
  vivify_201:
    exists $I525, $P523[$P524]
    if $I525, if_520
    null $P532
    set $P519, $P532
    goto if_520_end
  if_520:
    find_lex $P526, "$key"
    unless_null $P526, vivify_202
    new $P526, "Undef"
  vivify_202:
    set $I527, $P526
    find_lex $P528, "self"
    find_lex $P529, "$?CLASS"
    getattribute $P530, $P528, $P529, "@!array"
    unless_null $P530, vivify_203
    $P530 = root_new ['parrot';'ResizablePMCArray']
  vivify_203:
    set $P531, $P530[$I527]
    unless_null $P531, vivify_204
    new $P531, "Undef"
  vivify_204:
    set $P519, $P531
  if_520_end:
.annotate 'line', 104
    .return ($P519)
.end


.HLL "nqp"

.namespace []
.sub "_block533"  :anon :subid("50_1304459375.235") :outer("42_1304459375.235")
    .param pmc param_535
    .param pmc param_536
    .param pmc param_537
.annotate 'line', 108
    .lex "self", param_535
    .lex "$key", param_536
    .lex "$value", param_537
.annotate 'line', 109
    find_lex $P538, "$value"
    unless_null $P538, vivify_205
    new $P538, "Undef"
  vivify_205:
    find_lex $P539, "$key"
    unless_null $P539, vivify_206
    new $P539, "Undef"
  vivify_206:
    find_lex $P540, "self"
    find_lex $P541, "$?CLASS"
    getattribute $P542, $P540, $P541, "%!hash"
    unless_null $P542, vivify_207
    $P542 = root_new ['parrot';'Hash']
    setattribute $P540, $P541, "%!hash", $P542
  vivify_207:
    set $P542[$P539], $P538
.annotate 'line', 108
    .return ($P538)
.end


.HLL "nqp"

.namespace []
.sub "_block543"  :anon :subid("51_1304459375.235") :outer("42_1304459375.235")
    .param pmc param_545
    .param pmc param_546
    .param pmc param_547
.annotate 'line', 111
    .lex "self", param_545
    .lex "$key", param_546
    .lex "$value", param_547
.annotate 'line', 112
    find_lex $P548, "$value"
    unless_null $P548, vivify_208
    new $P548, "Undef"
  vivify_208:
    find_lex $P549, "$key"
    unless_null $P549, vivify_209
    new $P549, "Undef"
  vivify_209:
    find_lex $P550, "self"
    find_lex $P551, "$?CLASS"
    getattribute $P552, $P550, $P551, "%!hash"
    unless_null $P552, vivify_210
    $P552 = root_new ['parrot';'Hash']
    setattribute $P550, $P551, "%!hash", $P552
  vivify_210:
    set $P552[$P549], $P548
.annotate 'line', 111
    .return ($P548)
.end


.HLL "nqp"

.namespace []
.sub "_block553"  :anon :subid("52_1304459375.235") :outer("42_1304459375.235")
    .param pmc param_555
    .param pmc param_556
    .param pmc param_557
.annotate 'line', 114
    .lex "self", param_555
    .lex "$key", param_556
    .lex "$value", param_557
.annotate 'line', 115
    find_lex $P558, "$value"
    unless_null $P558, vivify_211
    new $P558, "Undef"
  vivify_211:
    find_lex $P559, "$key"
    unless_null $P559, vivify_212
    new $P559, "Undef"
  vivify_212:
    set $I560, $P559
    find_lex $P561, "self"
    find_lex $P562, "$?CLASS"
    getattribute $P563, $P561, $P562, "@!array"
    unless_null $P563, vivify_213
    $P563 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P561, $P562, "@!array", $P563
  vivify_213:
    set $P563[$I560], $P558
.annotate 'line', 114
    .return ($P558)
.end


.HLL "nqp"

.namespace []
.sub "_block564"  :anon :subid("53_1304459375.235") :outer("42_1304459375.235")
    .param pmc param_566
    .param pmc param_567
.annotate 'line', 118
    .lex "self", param_566
    .lex "$key", param_567
.annotate 'line', 119
    find_lex $P571, "$key"
    unless_null $P571, vivify_214
    new $P571, "Undef"
  vivify_214:
    find_lex $P568, "self"
    find_lex $P569, "$?CLASS"
    getattribute $P570, $P568, $P569, "%!hash"
    unless_null $P570, vivify_215
    $P570 = root_new ['parrot';'Hash']
  vivify_215:
    exists $I572, $P570[$P571]
.annotate 'line', 118
    .return ($I572)
.end


.HLL "nqp"

.namespace []
.sub "_block573"  :anon :subid("54_1304459375.235") :outer("42_1304459375.235")
    .param pmc param_575
    .param pmc param_576
.annotate 'line', 121
    .lex "self", param_575
    .lex "$key", param_576
.annotate 'line', 122
    find_lex $P580, "$key"
    unless_null $P580, vivify_216
    new $P580, "Undef"
  vivify_216:
    find_lex $P577, "self"
    find_lex $P578, "$?CLASS"
    getattribute $P579, $P577, $P578, "%!hash"
    unless_null $P579, vivify_217
    $P579 = root_new ['parrot';'Hash']
  vivify_217:
    exists $I581, $P579[$P580]
.annotate 'line', 121
    .return ($I581)
.end


.HLL "nqp"

.namespace []
.sub "_block582"  :anon :subid("55_1304459375.235") :outer("42_1304459375.235")
    .param pmc param_584
    .param pmc param_585
.annotate 'line', 124
    .lex "self", param_584
    .lex "$key", param_585
.annotate 'line', 125
    find_lex $P589, "$key"
    unless_null $P589, vivify_218
    new $P589, "Undef"
  vivify_218:
    find_lex $P586, "self"
    find_lex $P587, "$?CLASS"
    getattribute $P588, $P586, $P587, "@!array"
    unless_null $P588, vivify_219
    $P588 = root_new ['parrot';'ResizablePMCArray']
  vivify_219:
    exists $I590, $P588[$P589]
.annotate 'line', 124
    .return ($I590)
.end


.HLL "nqp"

.namespace []
.sub "_block591"  :anon :subid("56_1304459375.235") :outer("42_1304459375.235")
    .param pmc param_593
    .param pmc param_594
.annotate 'line', 128
    .lex "self", param_593
    .lex "$key", param_594
.annotate 'line', 129
    find_lex $P598, "$key"
    unless_null $P598, vivify_220
    new $P598, "Undef"
  vivify_220:
    find_lex $P595, "self"
    find_lex $P596, "$?CLASS"
    getattribute $P597, $P595, $P596, "%!hash"
    unless_null $P597, vivify_221
    $P597 = root_new ['parrot';'Hash']
  vivify_221:
    delete $P597[$P598]
.annotate 'line', 128
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block599"  :anon :subid("57_1304459375.235") :outer("42_1304459375.235")
    .param pmc param_601
    .param pmc param_602
.annotate 'line', 131
    .lex "self", param_601
    .lex "$key", param_602
.annotate 'line', 132
    find_lex $P606, "$key"
    unless_null $P606, vivify_222
    new $P606, "Undef"
  vivify_222:
    find_lex $P603, "self"
    find_lex $P604, "$?CLASS"
    getattribute $P605, $P603, $P604, "%!hash"
    unless_null $P605, vivify_223
    $P605 = root_new ['parrot';'Hash']
  vivify_223:
    delete $P605[$P606]
.annotate 'line', 131
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block607"  :anon :subid("58_1304459375.235") :outer("42_1304459375.235")
    .param pmc param_609
    .param pmc param_610
.annotate 'line', 134
    .lex "self", param_609
    .lex "$key", param_610
.annotate 'line', 135
    find_lex $P614, "$key"
    unless_null $P614, vivify_224
    new $P614, "Undef"
  vivify_224:
    find_lex $P611, "self"
    find_lex $P612, "$?CLASS"
    getattribute $P613, $P611, $P612, "@!array"
    unless_null $P613, vivify_225
    $P613 = root_new ['parrot';'ResizablePMCArray']
  vivify_225:
    delete $P613[$P614]
.annotate 'line', 134
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block615"  :anon :subid("59_1304459375.235") :outer("42_1304459375.235")
    .param pmc param_617
    .param pmc param_618
.annotate 'line', 138
    .lex "self", param_617
    .lex "$value", param_618
.annotate 'line', 139
    find_lex $P619, "self"
    find_lex $P620, "$?CLASS"
    getattribute $P621, $P619, $P620, "@!array"
    unless_null $P621, vivify_226
    $P621 = root_new ['parrot';'ResizablePMCArray']
  vivify_226:
    find_lex $P622, "$value"
    unless_null $P622, vivify_227
    new $P622, "Undef"
  vivify_227:
    unshift $P621, $P622
.annotate 'line', 138
    .return ($P621)
.end


.HLL "nqp"

.namespace []
.sub "_block623"  :anon :subid("60_1304459375.235") :outer("42_1304459375.235")
    .param pmc param_625
    .param pmc param_626
.annotate 'line', 142
    .lex "self", param_625
    .lex "$value", param_626
.annotate 'line', 143
    find_lex $P627, "self"
    find_lex $P628, "$?CLASS"
    getattribute $P629, $P627, $P628, "@!array"
    unless_null $P629, vivify_228
    $P629 = root_new ['parrot';'ResizablePMCArray']
  vivify_228:
    find_lex $P630, "$value"
    unless_null $P630, vivify_229
    new $P630, "Undef"
  vivify_229:
    unshift $P629, $P630
.annotate 'line', 142
    .return ($P629)
.end


.HLL "nqp"

.namespace []
.sub "_block652" :load :anon :subid("61_1304459375.235")
.annotate 'line', 1
    .const 'Sub' $P654 = "10_1304459375.235" 
    $P655 = $P654()
    .return ($P655)
.end

