
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1303746622.896")
.annotate 'line', 0
    .const 'Sub' $P492 = "47_1303746622.896" 
    capture_lex $P492
    .const 'Sub' $P336 = "33_1303746622.896" 
    capture_lex $P336
    .const 'Sub' $P327 = "31_1303746622.896" 
    capture_lex $P327
    .const 'Sub' $P318 = "29_1303746622.896" 
    capture_lex $P318
    .const 'Sub' $P309 = "27_1303746622.896" 
    capture_lex $P309
    .const 'Sub' $P265 = "25_1303746622.896" 
    capture_lex $P265
    .const 'Sub' $P251 = "24_1303746622.896" 
    capture_lex $P251
    .const 'Sub' $P229 = "23_1303746622.896" 
    capture_lex $P229
    .const 'Sub' $P222 = "22_1303746622.896" 
    capture_lex $P222
    .const 'Sub' $P134 = "20_1303746622.896" 
    capture_lex $P134
    .const 'Sub' $P101 = "18_1303746622.896" 
    capture_lex $P101
    .const 'Sub' $P96 = "17_1303746622.896" 
    capture_lex $P96
    .const 'Sub' $P82 = "15_1303746622.896" 
    capture_lex $P82
    .const 'Sub' $P70 = "14_1303746622.896" 
    capture_lex $P70
    .const 'Sub' $P59 = "13_1303746622.896" 
    capture_lex $P59
    .const 'Sub' $P54 = "12_1303746622.896" 
    capture_lex $P54
    .const 'Sub' $P21 = "11_1303746622.896" 
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
    .const 'Sub' $P21 = "11_1303746622.896" 
    newclosure $P53, $P21
    .lex "open", $P53
.annotate 'line', 167
    .const 'Sub' $P54 = "12_1303746622.896" 
    newclosure $P58, $P54
    .lex "close", $P58
.annotate 'line', 175
    .const 'Sub' $P59 = "13_1303746622.896" 
    newclosure $P69, $P59
    .lex "slurp", $P69
.annotate 'line', 187
    .const 'Sub' $P70 = "14_1303746622.896" 
    newclosure $P81, $P70
    .lex "spew", $P81
.annotate 'line', 194
    .const 'Sub' $P82 = "15_1303746622.896" 
    newclosure $P95, $P82
    .lex "print", $P95
.annotate 'line', 201
    .const 'Sub' $P96 = "17_1303746622.896" 
    newclosure $P100, $P96
    .lex "say", $P100
.annotate 'line', 219
    .const 'Sub' $P101 = "18_1303746622.896" 
    newclosure $P133, $P101
    .lex "match", $P133
.annotate 'line', 241
    .const 'Sub' $P134 = "20_1303746622.896" 
    newclosure $P220, $P134
    .lex "subst", $P220
.annotate 'line', 267
    new $P221, "Undef"
    .lex "$test_counter", $P221
.annotate 'line', 269
    .const 'Sub' $P222 = "22_1303746622.896" 
    newclosure $P228, $P222
    .lex "plan", $P228
.annotate 'line', 273
    .const 'Sub' $P229 = "23_1303746622.896" 
    newclosure $P250, $P229
    .lex "ok", $P250
.annotate 'line', 288
    .const 'Sub' $P251 = "24_1303746622.896" 
    newclosure $P263, $P251
    .lex "skip", $P263
.annotate 'line', 14
    .const 'Sub' $P265 = "25_1303746622.896" 
    capture_lex $P265
    $P265()
.annotate 'line', 22
    .const 'Sub' $P309 = "27_1303746622.896" 
    capture_lex $P309
    $P309()
.annotate 'line', 24
    .const 'Sub' $P318 = "29_1303746622.896" 
    capture_lex $P318
    $P318()
.annotate 'line', 26
    .const 'Sub' $P327 = "31_1303746622.896" 
    capture_lex $P327
    $P327()
.annotate 'line', 29
    .const 'Sub' $P336 = "33_1303746622.896" 
    capture_lex $P336
    $P336()
.annotate 'line', 76
    .const 'Sub' $P492 = "47_1303746622.896" 
    capture_lex $P492
    $P492()
    find_lex $P870, "open"
    find_lex $P871, "close"
    find_lex $P872, "slurp"
    find_lex $P873, "spew"
    find_lex $P874, "print"
    find_lex $P875, "say"
    find_lex $P876, "match"
    find_lex $P877, "subst"
.annotate 'line', 267
    new $P878, "Integer"
    assign $P878, 0
    store_lex "$test_counter", $P878
    find_lex $P879, "plan"
    find_lex $P880, "ok"
    find_lex $P881, "skip"
    new $P882, "Integer"
    assign $P882, 1
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 1
    .return ()
    .const 'Sub' $P884 = "67_1303746622.896" 
    .return ($P884)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post68") :outer("10_1303746622.896")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1303746622.896" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P888, "1303746621.792"
    isnull $I889, $P888
    if $I889, if_887
    .const 'Sub' $P1010 = "10_1303746622.896" 
    $P1011 = $P1010."get_lexinfo"()
    nqp_get_sc_object $P1012, "1303746621.792", 0
    $P1011."set_static_lexpad_value"("GLOBALish", $P1012)
    .const 'Sub' $P1013 = "10_1303746622.896" 
    $P1014 = $P1013."get_lexinfo"()
    $P1014."finish_static_lexpad"()
    .const 'Sub' $P1015 = "10_1303746622.896" 
    $P1016 = $P1015."get_lexinfo"()
    nqp_get_sc_object $P1017, "1303746621.792", 0
    $P1016."set_static_lexpad_value"("$?PACKAGE", $P1017)
    .const 'Sub' $P1018 = "10_1303746622.896" 
    $P1019 = $P1018."get_lexinfo"()
    $P1019."finish_static_lexpad"()
    .const 'Sub' $P1020 = "10_1303746622.896" 
    $P1021 = $P1020."get_lexinfo"()
    nqp_get_sc_object $P1022, "1303746621.792", 1
    $P1021."set_static_lexpad_value"("EXPORTHOW", $P1022)
    .const 'Sub' $P1023 = "10_1303746622.896" 
    $P1024 = $P1023."get_lexinfo"()
    $P1024."finish_static_lexpad"()
    .const 'Sub' $P1025 = "25_1303746622.896" 
    $P1026 = $P1025."get_lexinfo"()
    nqp_get_sc_object $P1027, "1303746621.792", 1
    $P1026."set_static_lexpad_value"("$?PACKAGE", $P1027)
    .const 'Sub' $P1028 = "25_1303746622.896" 
    $P1029 = $P1028."get_lexinfo"()
    $P1029."finish_static_lexpad"()
    .const 'Sub' $P1030 = "25_1303746622.896" 
    $P1031 = $P1030."get_lexinfo"()
    nqp_get_sc_object $P1032, "1303746621.792", 1
    $P1031."set_static_lexpad_value"("$?CLASS", $P1032)
    .const 'Sub' $P1033 = "25_1303746622.896" 
    $P1034 = $P1033."get_lexinfo"()
    $P1034."finish_static_lexpad"()
    .const 'Sub' $P1035 = "10_1303746622.896" 
    $P1036 = $P1035."get_lexinfo"()
    nqp_get_sc_object $P1037, "1303746621.792", 2
    $P1036."set_static_lexpad_value"("int", $P1037)
    .const 'Sub' $P1038 = "10_1303746622.896" 
    $P1039 = $P1038."get_lexinfo"()
    $P1039."finish_static_lexpad"()
    .const 'Sub' $P1040 = "27_1303746622.896" 
    $P1041 = $P1040."get_lexinfo"()
    nqp_get_sc_object $P1042, "1303746621.792", 2
    $P1041."set_static_lexpad_value"("$?PACKAGE", $P1042)
    .const 'Sub' $P1043 = "27_1303746622.896" 
    $P1044 = $P1043."get_lexinfo"()
    $P1044."finish_static_lexpad"()
    .const 'Sub' $P1045 = "27_1303746622.896" 
    $P1046 = $P1045."get_lexinfo"()
    nqp_get_sc_object $P1047, "1303746621.792", 2
    $P1046."set_static_lexpad_value"("$?CLASS", $P1047)
    .const 'Sub' $P1048 = "27_1303746622.896" 
    $P1049 = $P1048."get_lexinfo"()
    $P1049."finish_static_lexpad"()
    .const 'Sub' $P1050 = "10_1303746622.896" 
    $P1051 = $P1050."get_lexinfo"()
    nqp_get_sc_object $P1052, "1303746621.792", 3
    $P1051."set_static_lexpad_value"("num", $P1052)
    .const 'Sub' $P1053 = "10_1303746622.896" 
    $P1054 = $P1053."get_lexinfo"()
    $P1054."finish_static_lexpad"()
    .const 'Sub' $P1055 = "29_1303746622.896" 
    $P1056 = $P1055."get_lexinfo"()
    nqp_get_sc_object $P1057, "1303746621.792", 3
    $P1056."set_static_lexpad_value"("$?PACKAGE", $P1057)
    .const 'Sub' $P1058 = "29_1303746622.896" 
    $P1059 = $P1058."get_lexinfo"()
    $P1059."finish_static_lexpad"()
    .const 'Sub' $P1060 = "29_1303746622.896" 
    $P1061 = $P1060."get_lexinfo"()
    nqp_get_sc_object $P1062, "1303746621.792", 3
    $P1061."set_static_lexpad_value"("$?CLASS", $P1062)
    .const 'Sub' $P1063 = "29_1303746622.896" 
    $P1064 = $P1063."get_lexinfo"()
    $P1064."finish_static_lexpad"()
    .const 'Sub' $P1065 = "10_1303746622.896" 
    $P1066 = $P1065."get_lexinfo"()
    nqp_get_sc_object $P1067, "1303746621.792", 4
    $P1066."set_static_lexpad_value"("str", $P1067)
    .const 'Sub' $P1068 = "10_1303746622.896" 
    $P1069 = $P1068."get_lexinfo"()
    $P1069."finish_static_lexpad"()
    .const 'Sub' $P1070 = "31_1303746622.896" 
    $P1071 = $P1070."get_lexinfo"()
    nqp_get_sc_object $P1072, "1303746621.792", 4
    $P1071."set_static_lexpad_value"("$?PACKAGE", $P1072)
    .const 'Sub' $P1073 = "31_1303746622.896" 
    $P1074 = $P1073."get_lexinfo"()
    $P1074."finish_static_lexpad"()
    .const 'Sub' $P1075 = "31_1303746622.896" 
    $P1076 = $P1075."get_lexinfo"()
    nqp_get_sc_object $P1077, "1303746621.792", 4
    $P1076."set_static_lexpad_value"("$?CLASS", $P1077)
    .const 'Sub' $P1078 = "31_1303746622.896" 
    $P1079 = $P1078."get_lexinfo"()
    $P1079."finish_static_lexpad"()
    .const 'Sub' $P1080 = "10_1303746622.896" 
    $P1081 = $P1080."get_lexinfo"()
    nqp_get_sc_object $P1082, "1303746621.792", 5
    $P1081."set_static_lexpad_value"("NQPMu", $P1082)
    .const 'Sub' $P1083 = "10_1303746622.896" 
    $P1084 = $P1083."get_lexinfo"()
    $P1084."finish_static_lexpad"()
    .const 'Sub' $P1085 = "33_1303746622.896" 
    $P1086 = $P1085."get_lexinfo"()
    nqp_get_sc_object $P1087, "1303746621.792", 5
    $P1086."set_static_lexpad_value"("$?PACKAGE", $P1087)
    .const 'Sub' $P1088 = "33_1303746622.896" 
    $P1089 = $P1088."get_lexinfo"()
    $P1089."finish_static_lexpad"()
    .const 'Sub' $P1090 = "33_1303746622.896" 
    $P1091 = $P1090."get_lexinfo"()
    nqp_get_sc_object $P1092, "1303746621.792", 5
    $P1091."set_static_lexpad_value"("$?CLASS", $P1092)
    .const 'Sub' $P1093 = "33_1303746622.896" 
    $P1094 = $P1093."get_lexinfo"()
    $P1094."finish_static_lexpad"()
    .const 'Sub' $P1095 = "10_1303746622.896" 
    $P1096 = $P1095."get_lexinfo"()
    nqp_get_sc_object $P1097, "1303746621.792", 6
    $P1096."set_static_lexpad_value"("NQPCapture", $P1097)
    .const 'Sub' $P1098 = "10_1303746622.896" 
    $P1099 = $P1098."get_lexinfo"()
    $P1099."finish_static_lexpad"()
    .const 'Sub' $P1100 = "47_1303746622.896" 
    $P1101 = $P1100."get_lexinfo"()
    nqp_get_sc_object $P1102, "1303746621.792", 6
    $P1101."set_static_lexpad_value"("$?PACKAGE", $P1102)
    .const 'Sub' $P1103 = "47_1303746622.896" 
    $P1104 = $P1103."get_lexinfo"()
    $P1104."finish_static_lexpad"()
    .const 'Sub' $P1105 = "47_1303746622.896" 
    $P1106 = $P1105."get_lexinfo"()
    nqp_get_sc_object $P1107, "1303746621.792", 6
    $P1106."set_static_lexpad_value"("$?CLASS", $P1107)
    .const 'Sub' $P1108 = "47_1303746622.896" 
    $P1109 = $P1108."get_lexinfo"()
    $P1109."finish_static_lexpad"()
    goto if_887_end
  if_887:
    nqp_dynop_setup 
    getinterp $P890
    get_class $P891, "LexPad"
    get_class $P892, "NQPLexPad"
    $P890."hll_map"($P891, $P892)
    nqp_create_sc $P893, "1303746621.792"
    .local pmc cur_sc
    set cur_sc, $P893
    get_hll_global $P894, "KnowHOW"
    $P895 = $P894."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P895, cur_sc
    nqp_set_sc_object "1303746621.792", 0, $P895
    .const 'Sub' $P896 = "10_1303746622.896" 
    $P897 = $P896."get_lexinfo"()
    nqp_get_sc_object $P898, "1303746621.792", 0
    $P897."set_static_lexpad_value"("GLOBALish", $P898)
    .const 'Sub' $P899 = "10_1303746622.896" 
    $P900 = $P899."get_lexinfo"()
    $P900."finish_static_lexpad"()
    .const 'Sub' $P901 = "10_1303746622.896" 
    $P902 = $P901."get_lexinfo"()
    nqp_get_sc_object $P903, "1303746621.792", 0
    $P902."set_static_lexpad_value"("$?PACKAGE", $P903)
    .const 'Sub' $P904 = "10_1303746622.896" 
    $P905 = $P904."get_lexinfo"()
    $P905."finish_static_lexpad"()
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P906, "ModuleLoader"
    nqp_get_sc_object $P907, "1303746621.792", 0
    $P906."load_module"("nqpmo", $P907)
    get_hll_global $P908, "NQPModuleHOW"
    $P909 = $P908."new_type"("EXPORTHOW" :named("name"))
    nqp_set_sc_for_object $P909, cur_sc
    nqp_set_sc_object "1303746621.792", 1, $P909
    .const 'Sub' $P910 = "10_1303746622.896" 
    $P911 = $P910."get_lexinfo"()
    nqp_get_sc_object $P912, "1303746621.792", 1
    $P911."set_static_lexpad_value"("EXPORTHOW", $P912)
    .const 'Sub' $P913 = "10_1303746622.896" 
    $P914 = $P913."get_lexinfo"()
    $P914."finish_static_lexpad"()
    .const 'Sub' $P915 = "25_1303746622.896" 
    $P916 = $P915."get_lexinfo"()
    nqp_get_sc_object $P917, "1303746621.792", 1
    $P916."set_static_lexpad_value"("$?PACKAGE", $P917)
    .const 'Sub' $P918 = "25_1303746622.896" 
    $P919 = $P918."get_lexinfo"()
    $P919."finish_static_lexpad"()
    .const 'Sub' $P920 = "25_1303746622.896" 
    $P921 = $P920."get_lexinfo"()
    nqp_get_sc_object $P922, "1303746621.792", 1
    $P921."set_static_lexpad_value"("$?CLASS", $P922)
    .const 'Sub' $P923 = "25_1303746622.896" 
    $P924 = $P923."get_lexinfo"()
    $P924."finish_static_lexpad"()
    get_hll_global $P925, "NQPNativeHOW"
    $P926 = $P925."new_type"("int" :named("name"), "P6int" :named("repr"))
    nqp_set_sc_for_object $P926, cur_sc
    nqp_set_sc_object "1303746621.792", 2, $P926
    .const 'Sub' $P927 = "10_1303746622.896" 
    $P928 = $P927."get_lexinfo"()
    nqp_get_sc_object $P929, "1303746621.792", 2
    $P928."set_static_lexpad_value"("int", $P929)
    .const 'Sub' $P930 = "10_1303746622.896" 
    $P931 = $P930."get_lexinfo"()
    $P931."finish_static_lexpad"()
    .const 'Sub' $P932 = "27_1303746622.896" 
    $P933 = $P932."get_lexinfo"()
    nqp_get_sc_object $P934, "1303746621.792", 2
    $P933."set_static_lexpad_value"("$?PACKAGE", $P934)
    .const 'Sub' $P935 = "27_1303746622.896" 
    $P936 = $P935."get_lexinfo"()
    $P936."finish_static_lexpad"()
    .const 'Sub' $P937 = "27_1303746622.896" 
    $P938 = $P937."get_lexinfo"()
    nqp_get_sc_object $P939, "1303746621.792", 2
    $P938."set_static_lexpad_value"("$?CLASS", $P939)
    .const 'Sub' $P940 = "27_1303746622.896" 
    $P941 = $P940."get_lexinfo"()
    $P941."finish_static_lexpad"()
    get_hll_global $P942, "NQPNativeHOW"
    $P943 = $P942."new_type"("num" :named("name"), "P6num" :named("repr"))
    nqp_set_sc_for_object $P943, cur_sc
    nqp_set_sc_object "1303746621.792", 3, $P943
    .const 'Sub' $P944 = "10_1303746622.896" 
    $P945 = $P944."get_lexinfo"()
    nqp_get_sc_object $P946, "1303746621.792", 3
    $P945."set_static_lexpad_value"("num", $P946)
    .const 'Sub' $P947 = "10_1303746622.896" 
    $P948 = $P947."get_lexinfo"()
    $P948."finish_static_lexpad"()
    .const 'Sub' $P949 = "29_1303746622.896" 
    $P950 = $P949."get_lexinfo"()
    nqp_get_sc_object $P951, "1303746621.792", 3
    $P950."set_static_lexpad_value"("$?PACKAGE", $P951)
    .const 'Sub' $P952 = "29_1303746622.896" 
    $P953 = $P952."get_lexinfo"()
    $P953."finish_static_lexpad"()
    .const 'Sub' $P954 = "29_1303746622.896" 
    $P955 = $P954."get_lexinfo"()
    nqp_get_sc_object $P956, "1303746621.792", 3
    $P955."set_static_lexpad_value"("$?CLASS", $P956)
    .const 'Sub' $P957 = "29_1303746622.896" 
    $P958 = $P957."get_lexinfo"()
    $P958."finish_static_lexpad"()
    get_hll_global $P959, "NQPNativeHOW"
    $P960 = $P959."new_type"("str" :named("name"), "P6str" :named("repr"))
    nqp_set_sc_for_object $P960, cur_sc
    nqp_set_sc_object "1303746621.792", 4, $P960
    .const 'Sub' $P961 = "10_1303746622.896" 
    $P962 = $P961."get_lexinfo"()
    nqp_get_sc_object $P963, "1303746621.792", 4
    $P962."set_static_lexpad_value"("str", $P963)
    .const 'Sub' $P964 = "10_1303746622.896" 
    $P965 = $P964."get_lexinfo"()
    $P965."finish_static_lexpad"()
    .const 'Sub' $P966 = "31_1303746622.896" 
    $P967 = $P966."get_lexinfo"()
    nqp_get_sc_object $P968, "1303746621.792", 4
    $P967."set_static_lexpad_value"("$?PACKAGE", $P968)
    .const 'Sub' $P969 = "31_1303746622.896" 
    $P970 = $P969."get_lexinfo"()
    $P970."finish_static_lexpad"()
    .const 'Sub' $P971 = "31_1303746622.896" 
    $P972 = $P971."get_lexinfo"()
    nqp_get_sc_object $P973, "1303746621.792", 4
    $P972."set_static_lexpad_value"("$?CLASS", $P973)
    .const 'Sub' $P974 = "31_1303746622.896" 
    $P975 = $P974."get_lexinfo"()
    $P975."finish_static_lexpad"()
    get_hll_global $P976, "NQPClassHOW"
    $P977 = $P976."new_type"("NQPMu" :named("name"))
    nqp_set_sc_for_object $P977, cur_sc
    nqp_set_sc_object "1303746621.792", 5, $P977
    .const 'Sub' $P978 = "10_1303746622.896" 
    $P979 = $P978."get_lexinfo"()
    nqp_get_sc_object $P980, "1303746621.792", 5
    $P979."set_static_lexpad_value"("NQPMu", $P980)
    .const 'Sub' $P981 = "10_1303746622.896" 
    $P982 = $P981."get_lexinfo"()
    $P982."finish_static_lexpad"()
    .const 'Sub' $P983 = "33_1303746622.896" 
    $P984 = $P983."get_lexinfo"()
    nqp_get_sc_object $P985, "1303746621.792", 5
    $P984."set_static_lexpad_value"("$?PACKAGE", $P985)
    .const 'Sub' $P986 = "33_1303746622.896" 
    $P987 = $P986."get_lexinfo"()
    $P987."finish_static_lexpad"()
    .const 'Sub' $P988 = "33_1303746622.896" 
    $P989 = $P988."get_lexinfo"()
    nqp_get_sc_object $P990, "1303746621.792", 5
    $P989."set_static_lexpad_value"("$?CLASS", $P990)
    .const 'Sub' $P991 = "33_1303746622.896" 
    $P992 = $P991."get_lexinfo"()
    $P992."finish_static_lexpad"()
    get_hll_global $P993, "NQPClassHOW"
    $P994 = $P993."new_type"("NQPCapture" :named("name"))
    nqp_set_sc_for_object $P994, cur_sc
    nqp_set_sc_object "1303746621.792", 6, $P994
    .const 'Sub' $P995 = "10_1303746622.896" 
    $P996 = $P995."get_lexinfo"()
    nqp_get_sc_object $P997, "1303746621.792", 6
    $P996."set_static_lexpad_value"("NQPCapture", $P997)
    .const 'Sub' $P998 = "10_1303746622.896" 
    $P999 = $P998."get_lexinfo"()
    $P999."finish_static_lexpad"()
    .const 'Sub' $P1000 = "47_1303746622.896" 
    $P1001 = $P1000."get_lexinfo"()
    nqp_get_sc_object $P1002, "1303746621.792", 6
    $P1001."set_static_lexpad_value"("$?PACKAGE", $P1002)
    .const 'Sub' $P1003 = "47_1303746622.896" 
    $P1004 = $P1003."get_lexinfo"()
    $P1004."finish_static_lexpad"()
    .const 'Sub' $P1005 = "47_1303746622.896" 
    $P1006 = $P1005."get_lexinfo"()
    nqp_get_sc_object $P1007, "1303746621.792", 6
    $P1006."set_static_lexpad_value"("$?CLASS", $P1007)
    .const 'Sub' $P1008 = "47_1303746622.896" 
    $P1009 = $P1008."get_lexinfo"()
    $P1009."finish_static_lexpad"()
  if_887_end:
    nqp_get_sc_object $P1110, "1303746621.792", 0
    set_hll_global "GLOBAL", $P1110
.end


.HLL "nqp"

.namespace []
.sub "open"  :subid("11_1303746622.896") :outer("10_1303746622.896")
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
.sub "close"  :subid("12_1303746622.896") :outer("10_1303746622.896")
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
.sub "slurp"  :subid("13_1303746622.896") :outer("10_1303746622.896")
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
.sub "spew"  :subid("14_1303746622.896") :outer("10_1303746622.896")
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
.sub "print"  :subid("15_1303746622.896") :outer("10_1303746622.896")
    .param pmc param_83 :slurpy
.annotate 'line', 194
    .const 'Sub' $P89 = "16_1303746622.896" 
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
    .const 'Sub' $P89 = "16_1303746622.896" 
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
.sub "_block88"  :anon :subid("16_1303746622.896") :outer("15_1303746622.896")
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
.sub "say"  :subid("17_1303746622.896") :outer("10_1303746622.896")
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
.sub "match"  :subid("18_1303746622.896") :outer("10_1303746622.896")
    .param pmc param_102
    .param pmc param_103
    .param pmc param_104 :optional :named("global")
    .param int has_param_104 :opt_flag
.annotate 'line', 219
    .const 'Sub' $P114 = "19_1303746622.896" 
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
    .const 'Sub' $P114 = "19_1303746622.896" 
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
.sub "_block113"  :anon :subid("19_1303746622.896") :outer("18_1303746622.896")
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
.sub "subst"  :subid("20_1303746622.896") :outer("10_1303746622.896")
    .param pmc param_135
    .param pmc param_136
    .param pmc param_137
    .param pmc param_138 :optional :named("global")
    .param int has_param_138 :opt_flag
.annotate 'line', 241
    .const 'Sub' $P165 = "21_1303746622.896" 
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
    .const 'Sub' $P165 = "21_1303746622.896" 
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
.sub "_block164"  :anon :subid("21_1303746622.896") :outer("20_1303746622.896")
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
.sub "plan"  :subid("22_1303746622.896") :outer("10_1303746622.896")
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
.sub "ok"  :subid("23_1303746622.896") :outer("10_1303746622.896")
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
.sub "skip"  :subid("24_1303746622.896") :outer("10_1303746622.896")
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
.sub "_block264"  :anon :subid("25_1303746622.896") :outer("10_1303746622.896")
.annotate 'line', 14
    .const 'Sub' $P304 = "26_1303746622.896" 
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
.sub "" :load :init :subid("post151") :outer("25_1303746622.896")
.annotate 'line', 14
    .const 'Sub' $P265 = "25_1303746622.896" 
    .local pmc block
    set block, $P265
    .const 'Sub' $P304 = "26_1303746622.896" 
    capture_lex $P304
    $P304()
.end


.HLL "nqp"

.namespace []
.sub "_block303"  :anon :subid("26_1303746622.896") :outer("25_1303746622.896")
.annotate 'line', 14
    nqp_get_sc_object $P305, "1303746621.792", 1
    .local pmc type_obj
    set type_obj, $P305
    get_how $P306, type_obj
    $P307 = $P306."compose"(type_obj)
    .return ($P307)
.end


.HLL "nqp"

.namespace []
.sub "_block308"  :anon :subid("27_1303746622.896") :outer("10_1303746622.896")
.annotate 'line', 22
    .const 'Sub' $P313 = "28_1303746622.896" 
    capture_lex $P313
    .lex "$?PACKAGE", $P310
    .lex "$?CLASS", $P311
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post162") :outer("27_1303746622.896")
.annotate 'line', 22
    .const 'Sub' $P309 = "27_1303746622.896" 
    .local pmc block
    set block, $P309
    .const 'Sub' $P313 = "28_1303746622.896" 
    capture_lex $P313
    $P313()
.end


.HLL "nqp"

.namespace []
.sub "_block312"  :anon :subid("28_1303746622.896") :outer("27_1303746622.896")
.annotate 'line', 22
    nqp_get_sc_object $P314, "1303746621.792", 2
    .local pmc type_obj
    set type_obj, $P314
    get_how $P315, type_obj
    $P316 = $P315."compose"(type_obj)
    .return ($P316)
.end


.HLL "nqp"

.namespace []
.sub "_block317"  :anon :subid("29_1303746622.896") :outer("10_1303746622.896")
.annotate 'line', 24
    .const 'Sub' $P322 = "30_1303746622.896" 
    capture_lex $P322
    .lex "$?PACKAGE", $P319
    .lex "$?CLASS", $P320
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post163") :outer("29_1303746622.896")
.annotate 'line', 24
    .const 'Sub' $P318 = "29_1303746622.896" 
    .local pmc block
    set block, $P318
    .const 'Sub' $P322 = "30_1303746622.896" 
    capture_lex $P322
    $P322()
.end


.HLL "nqp"

.namespace []
.sub "_block321"  :anon :subid("30_1303746622.896") :outer("29_1303746622.896")
.annotate 'line', 24
    nqp_get_sc_object $P323, "1303746621.792", 3
    .local pmc type_obj
    set type_obj, $P323
    get_how $P324, type_obj
    $P325 = $P324."compose"(type_obj)
    .return ($P325)
.end


.HLL "nqp"

.namespace []
.sub "_block326"  :anon :subid("31_1303746622.896") :outer("10_1303746622.896")
.annotate 'line', 26
    .const 'Sub' $P331 = "32_1303746622.896" 
    capture_lex $P331
    .lex "$?PACKAGE", $P328
    .lex "$?CLASS", $P329
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post164") :outer("31_1303746622.896")
.annotate 'line', 26
    .const 'Sub' $P327 = "31_1303746622.896" 
    .local pmc block
    set block, $P327
    .const 'Sub' $P331 = "32_1303746622.896" 
    capture_lex $P331
    $P331()
.end


.HLL "nqp"

.namespace []
.sub "_block330"  :anon :subid("32_1303746622.896") :outer("31_1303746622.896")
.annotate 'line', 26
    nqp_get_sc_object $P332, "1303746621.792", 4
    .local pmc type_obj
    set type_obj, $P332
    get_how $P333, type_obj
    $P334 = $P333."compose"(type_obj)
    .return ($P334)
.end


.HLL "nqp"

.namespace []
.sub "_block335"  :anon :subid("33_1303746622.896") :outer("10_1303746622.896")
.annotate 'line', 29
    .const 'Sub' $P458 = "46_1303746622.896" 
    capture_lex $P458
    .const 'Sub' $P448 = "45_1303746622.896" 
    capture_lex $P448
    .const 'Sub' $P436 = "44_1303746622.896" 
    capture_lex $P436
    .const 'Sub' $P432 = "43_1303746622.896" 
    capture_lex $P432
    .const 'Sub' $P421 = "42_1303746622.896" 
    capture_lex $P421
    .const 'Sub' $P418 = "41_1303746622.896" 
    capture_lex $P418
    .const 'Sub' $P412 = "40_1303746622.896" 
    capture_lex $P412
    .const 'Sub' $P374 = "38_1303746622.896" 
    capture_lex $P374
    .const 'Sub' $P353 = "36_1303746622.896" 
    capture_lex $P353
    .const 'Sub' $P343 = "35_1303746622.896" 
    capture_lex $P343
    .const 'Sub' $P339 = "34_1303746622.896" 
    capture_lex $P339
    .lex "$?PACKAGE", $P337
    .lex "$?CLASS", $P338
.annotate 'line', 70
    .const 'Sub' $P448 = "45_1303746622.896" 
    newclosure $P456, $P448
.annotate 'line', 29
    .return ($P456)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post165") :outer("33_1303746622.896")
.annotate 'line', 29
    .const 'Sub' $P336 = "33_1303746622.896" 
    .local pmc block
    set block, $P336
    .const 'Sub' $P458 = "46_1303746622.896" 
    capture_lex $P458
    $P458()
.end


.HLL "nqp"

.namespace []
.sub "_block457"  :anon :subid("46_1303746622.896") :outer("33_1303746622.896")
.annotate 'line', 29
    .const 'Sub' $P474 = "41_1303746622.896" 
    capture_lex $P474
    nqp_get_sc_object $P459, "1303746621.792", 5
    .local pmc type_obj
    set type_obj, $P459
    get_how $P460, type_obj
    .const 'Sub' $P461 = "34_1303746622.896" 
    $P460."add_method"(type_obj, "CREATE", $P461)
    get_how $P462, type_obj
    .const 'Sub' $P463 = "35_1303746622.896" 
    $P462."add_method"(type_obj, "bless", $P463)
    get_how $P464, type_obj
    .const 'Sub' $P465 = "36_1303746622.896" 
    $P464."add_method"(type_obj, "BUILDALL", $P465)
    get_how $P466, type_obj
    .const 'Sub' $P467 = "38_1303746622.896" 
    $P466."add_method"(type_obj, "BUILD_MAGIC", $P467)
    get_how $P468, type_obj
    .const 'Sub' $P469 = "40_1303746622.896" 
    $P468."add_method"(type_obj, "new", $P469)
    get_how $P470, type_obj
    .const 'Sub' $P471 = "41_1303746622.896" 
    new $P472, "ResizablePMCArray"
    set_dispatchees $P471, $P472
    $P470."add_method"(type_obj, "Str", $P471)
    get_how $P473, type_obj
    .const 'Sub' $P474 = "41_1303746622.896" 
    newclosure $P477, $P474
    $P473."add_parrot_vtable_mapping"(type_obj, "get_string", $P477)
    get_how $P478, type_obj
    .const 'Sub' $P479 = "42_1303746622.896" 
    $P478."add_multi_method"(type_obj, "Str", $P479)
    get_how $P480, type_obj
    .const 'Sub' $P481 = "43_1303746622.896" 
    new $P482, "ResizablePMCArray"
    set_dispatchees $P481, $P482
    $P480."add_method"(type_obj, "ACCEPTS", $P481)
    get_how $P483, type_obj
    .const 'Sub' $P484 = "44_1303746622.896" 
    $P483."add_multi_method"(type_obj, "ACCEPTS", $P484)
    get_how $P485, type_obj
    .const 'Sub' $P486 = "45_1303746622.896" 
    $P485."add_method"(type_obj, "isa", $P486)
    get_how $P487, type_obj
    nqp_get_sc_object $P488, "1303746621.792", 5
    $P487."set_default_parent"(type_obj, $P488)
    get_how $P489, type_obj
    $P490 = $P489."compose"(type_obj)
    .return ($P490)
.end


.HLL "nqp"

.namespace []
.sub "Str" :instanceof("DispatcherSub") :subid("41_1303746622.896") :outer("46_1303746622.896")
    .param pmc param_475
.annotate 'line', 29
    .lex "self", param_475
    multi_dispatch_over_lexical_candidates $P476
    .return ($P476)
.end


.HLL "nqp"

.namespace []
.sub "CREATE"  :subid("34_1303746622.896") :outer("33_1303746622.896")
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
.sub "bless"  :subid("35_1303746622.896") :outer("33_1303746622.896")
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
.sub "BUILDALL"  :subid("36_1303746622.896") :outer("33_1303746622.896")
    .param pmc param_354
    .param pmc param_356 :slurpy :named
.annotate 'line', 40
    .const 'Sub' $P365 = "37_1303746622.896" 
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
    .const 'Sub' $P365 = "37_1303746622.896" 
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
.sub "_block364"  :anon :subid("37_1303746622.896") :outer("36_1303746622.896")
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
.sub "BUILD_MAGIC"  :subid("38_1303746622.896") :outer("33_1303746622.896")
    .param pmc param_375
    .param pmc param_377
    .param pmc param_378 :slurpy :named
.annotate 'line', 46
    .const 'Sub' $P387 = "39_1303746622.896" 
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
    .const 'Sub' $P387 = "39_1303746622.896" 
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
.sub "_block386"  :anon :subid("39_1303746622.896") :outer("38_1303746622.896")
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
.sub "new"  :subid("40_1303746622.896") :outer("33_1303746622.896")
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
.sub "Str" :instanceof("DispatcherSub") :subid("41_1303746622.896") :outer("33_1303746622.896")
    .param pmc param_419
.annotate 'line', 56
    .lex "self", param_419
    multi_dispatch_over_lexical_candidates $P420
    .return ($P420)
.end


.HLL "nqp"

.namespace []
.sub "Str"  :subid("42_1303746622.896") :outer("33_1303746622.896")
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
.sub "" :load :init :subid("post189") :outer("42_1303746622.896")
.annotate 'line', 61
    .const 'Sub' $P421 = "42_1303746622.896" 
    .local pmc block
    set block, $P421
    get_hll_global $P429, "Mu"
    new $P430, "ResizablePMCArray"
    push $P430, $P429
    new $P431, "ResizablePMCArray"
    push $P431, 2
    set_sub_multisig block, $P430, $P431
.end


.HLL "nqp"

.namespace []
.sub "ACCEPTS" :instanceof("DispatcherSub") :subid("43_1303746622.896") :outer("33_1303746622.896")
    .param pmc param_433
    .param pmc param_434
.annotate 'line', 61
    .lex "self", param_433
.annotate 'line', 65
    .lex "$topic", param_434
.annotate 'line', 61
    multi_dispatch_over_lexical_candidates $P435
    .return ($P435)
.end


.HLL "nqp"

.namespace []
.sub "ACCEPTS"  :subid("44_1303746622.896") :outer("33_1303746622.896")
    .param pmc param_437
    .param pmc param_439
.annotate 'line', 66
    .lex "$self", param_437
    find_lex $P438, "$self"
    .lex "self", $P438
    .lex "$topic", param_439
.annotate 'line', 67
    find_lex $P440, "$topic"
    unless_null $P440, vivify_191
    new $P440, "Undef"
  vivify_191:
    find_lex $P441, "self"
    get_what $P442, $P441
    type_check $I443, $P440, $P442
.annotate 'line', 66
    .return ($I443)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post190") :outer("44_1303746622.896")
.annotate 'line', 66
    .const 'Sub' $P436 = "44_1303746622.896" 
    .local pmc block
    set block, $P436
    get_hll_global $P444, "NQPMu"
    null $P445
    new $P446, "ResizablePMCArray"
    push $P446, $P444
    push $P446, $P445
    new $P447, "ResizablePMCArray"
    push $P447, 2
    push $P447, 0
    set_sub_multisig block, $P446, $P447
.end


.HLL "nqp"

.namespace []
.sub "isa"  :subid("45_1303746622.896") :outer("33_1303746622.896")
    .param pmc param_449
    .param pmc param_450
.annotate 'line', 70
    .lex "self", param_449
    .lex "$type", param_450
.annotate 'line', 71
    find_lex $P451, "self"
    get_how $P452, $P451
    find_lex $P453, "self"
    find_lex $P454, "$type"
    unless_null $P454, vivify_192
    new $P454, "Undef"
  vivify_192:
    $P455 = $P452."isa"($P453, $P454)
.annotate 'line', 70
    .return ($P455)
.end


.HLL "nqp"

.namespace []
.sub "_block491"  :anon :subid("47_1303746622.896") :outer("10_1303746622.896")
.annotate 'line', 76
    .const 'Sub' $P672 = "66_1303746622.896" 
    capture_lex $P672
    .const 'Sub' $P663 = "65_1303746622.896" 
    capture_lex $P663
    .const 'Sub' $P655 = "64_1303746622.896" 
    capture_lex $P655
    .const 'Sub' $P647 = "63_1303746622.896" 
    capture_lex $P647
    .const 'Sub' $P639 = "62_1303746622.896" 
    capture_lex $P639
    .const 'Sub' $P631 = "61_1303746622.896" 
    capture_lex $P631
    .const 'Sub' $P622 = "60_1303746622.896" 
    capture_lex $P622
    .const 'Sub' $P613 = "59_1303746622.896" 
    capture_lex $P613
    .const 'Sub' $P604 = "58_1303746622.896" 
    capture_lex $P604
    .const 'Sub' $P593 = "57_1303746622.896" 
    capture_lex $P593
    .const 'Sub' $P583 = "56_1303746622.896" 
    capture_lex $P583
    .const 'Sub' $P573 = "55_1303746622.896" 
    capture_lex $P573
    .const 'Sub' $P555 = "54_1303746622.896" 
    capture_lex $P555
    .const 'Sub' $P538 = "53_1303746622.896" 
    capture_lex $P538
    .const 'Sub' $P521 = "52_1303746622.896" 
    capture_lex $P521
    .const 'Sub' $P515 = "51_1303746622.896" 
    capture_lex $P515
    .const 'Sub' $P510 = "50_1303746622.896" 
    capture_lex $P510
    .const 'Sub' $P502 = "49_1303746622.896" 
    capture_lex $P502
    .const 'Sub' $P495 = "48_1303746622.896" 
    capture_lex $P495
    .lex "$?PACKAGE", $P493
    .lex "$?CLASS", $P494
.annotate 'line', 139
    .const 'Sub' $P663 = "65_1303746622.896" 
    newclosure $P670, $P663
.annotate 'line', 76
    .return ($P670)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post193") :outer("47_1303746622.896")
.annotate 'line', 76
    .const 'Sub' $P492 = "47_1303746622.896" 
    .local pmc block
    set block, $P492
    .const 'Sub' $P672 = "66_1303746622.896" 
    capture_lex $P672
    $P672()
.end


.HLL "nqp"

.namespace []
.sub "_block671"  :anon :subid("66_1303746622.896") :outer("47_1303746622.896")
.annotate 'line', 76
    .const 'Sub' $P858 = "65_1303746622.896" 
    capture_lex $P858
    .const 'Sub' $P848 = "64_1303746622.896" 
    capture_lex $P848
    .const 'Sub' $P838 = "63_1303746622.896" 
    capture_lex $P838
    .const 'Sub' $P828 = "62_1303746622.896" 
    capture_lex $P828
    .const 'Sub' $P818 = "61_1303746622.896" 
    capture_lex $P818
    .const 'Sub' $P807 = "60_1303746622.896" 
    capture_lex $P807
    .const 'Sub' $P796 = "59_1303746622.896" 
    capture_lex $P796
    .const 'Sub' $P785 = "58_1303746622.896" 
    capture_lex $P785
    .const 'Sub' $P772 = "57_1303746622.896" 
    capture_lex $P772
    .const 'Sub' $P760 = "56_1303746622.896" 
    capture_lex $P760
    .const 'Sub' $P748 = "55_1303746622.896" 
    capture_lex $P748
    .const 'Sub' $P728 = "54_1303746622.896" 
    capture_lex $P728
    .const 'Sub' $P709 = "53_1303746622.896" 
    capture_lex $P709
    .const 'Sub' $P690 = "52_1303746622.896" 
    capture_lex $P690
    nqp_get_sc_object $P673, "1303746621.792", 6
    .local pmc type_obj
    set type_obj, $P673
    get_how $P674, type_obj
    get_hll_global $P675, "NQPAttribute"
    $P676 = $P675."new"("@!array" :named("name"))
    $P674."add_attribute"(type_obj, $P676)
    get_how $P677, type_obj
    get_hll_global $P678, "NQPAttribute"
    $P679 = $P678."new"("%!hash" :named("name"))
    $P677."add_attribute"(type_obj, $P679)
    get_how $P680, type_obj
    .const 'Sub' $P681 = "48_1303746622.896" 
    $P680."add_method"(type_obj, "new", $P681)
    get_how $P682, type_obj
    .const 'Sub' $P683 = "49_1303746622.896" 
    $P682."add_method"(type_obj, "BUILD", $P683)
    get_how $P684, type_obj
    .const 'Sub' $P685 = "50_1303746622.896" 
    $P684."add_method"(type_obj, "list", $P685)
    get_how $P686, type_obj
    .const 'Sub' $P687 = "51_1303746622.896" 
    $P686."add_method"(type_obj, "hash", $P687)
    get_how $P688, type_obj
.annotate 'line', 95
    .const 'Sub' $P690 = "52_1303746622.896" 
    newclosure $P706, $P690
    $P688."add_parrot_vtable_mapping"(type_obj, "get_pmc_keyed_str", $P706)
.annotate 'line', 76
    get_how $P707, type_obj
.annotate 'line', 98
    .const 'Sub' $P709 = "53_1303746622.896" 
    newclosure $P725, $P709
    $P707."add_parrot_vtable_mapping"(type_obj, "get_pmc_keyed", $P725)
.annotate 'line', 76
    get_how $P726, type_obj
.annotate 'line', 101
    .const 'Sub' $P728 = "54_1303746622.896" 
    newclosure $P745, $P728
    $P726."add_parrot_vtable_mapping"(type_obj, "get_pmc_keyed_int", $P745)
.annotate 'line', 76
    get_how $P746, type_obj
.annotate 'line', 105
    .const 'Sub' $P748 = "55_1303746622.896" 
    newclosure $P757, $P748
    $P746."add_parrot_vtable_mapping"(type_obj, "set_pmc_keyed_str", $P757)
.annotate 'line', 76
    get_how $P758, type_obj
.annotate 'line', 108
    .const 'Sub' $P760 = "56_1303746622.896" 
    newclosure $P769, $P760
    $P758."add_parrot_vtable_mapping"(type_obj, "set_pmc_keyed", $P769)
.annotate 'line', 76
    get_how $P770, type_obj
.annotate 'line', 111
    .const 'Sub' $P772 = "57_1303746622.896" 
    newclosure $P782, $P772
    $P770."add_parrot_vtable_mapping"(type_obj, "set_pmc_keyed_int", $P782)
.annotate 'line', 76
    get_how $P783, type_obj
.annotate 'line', 115
    .const 'Sub' $P785 = "58_1303746622.896" 
    newclosure $P793, $P785
    $P783."add_parrot_vtable_mapping"(type_obj, "exists_keyed", $P793)
.annotate 'line', 76
    get_how $P794, type_obj
.annotate 'line', 118
    .const 'Sub' $P796 = "59_1303746622.896" 
    newclosure $P804, $P796
    $P794."add_parrot_vtable_mapping"(type_obj, "exists_keyed_str", $P804)
.annotate 'line', 76
    get_how $P805, type_obj
.annotate 'line', 121
    .const 'Sub' $P807 = "60_1303746622.896" 
    newclosure $P815, $P807
    $P805."add_parrot_vtable_mapping"(type_obj, "exists_keyed_int", $P815)
.annotate 'line', 76
    get_how $P816, type_obj
.annotate 'line', 125
    .const 'Sub' $P818 = "61_1303746622.896" 
    newclosure $P825, $P818
    $P816."add_parrot_vtable_mapping"(type_obj, "delete_keyed", $P825)
.annotate 'line', 76
    get_how $P826, type_obj
.annotate 'line', 128
    .const 'Sub' $P828 = "62_1303746622.896" 
    newclosure $P835, $P828
    $P826."add_parrot_vtable_mapping"(type_obj, "delete_keyed_str", $P835)
.annotate 'line', 76
    get_how $P836, type_obj
.annotate 'line', 131
    .const 'Sub' $P838 = "63_1303746622.896" 
    newclosure $P845, $P838
    $P836."add_parrot_vtable_mapping"(type_obj, "delete_keyed_int", $P845)
.annotate 'line', 76
    get_how $P846, type_obj
.annotate 'line', 135
    .const 'Sub' $P848 = "64_1303746622.896" 
    newclosure $P855, $P848
    $P846."add_parrot_vtable_mapping"(type_obj, "unshift_pmc", $P855)
.annotate 'line', 76
    get_how $P856, type_obj
.annotate 'line', 139
    .const 'Sub' $P858 = "65_1303746622.896" 
    newclosure $P865, $P858
    $P856."add_parrot_vtable_mapping"(type_obj, "push_pmc", $P865)
.annotate 'line', 76
    get_how $P866, type_obj
    nqp_get_sc_object $P867, "1303746621.792", 5
    $P866."set_default_parent"(type_obj, $P867)
    get_how $P868, type_obj
    $P869 = $P868."compose"(type_obj)
    .return ($P869)
.end


.HLL "nqp"

.namespace []
.sub "_block689"  :anon :subid("52_1303746622.896") :outer("66_1303746622.896")
    .param pmc param_691
    .param pmc param_692
.annotate 'line', 95
    .lex "self", param_691
    .lex "$key", param_692
.annotate 'line', 96
    find_lex $P698, "$key"
    unless_null $P698, vivify_194
    new $P698, "Undef"
  vivify_194:
    find_lex $P695, "self"
    find_lex $P696, "$?CLASS"
    getattribute $P697, $P695, $P696, "%!hash"
    unless_null $P697, vivify_195
    $P697 = root_new ['parrot';'Hash']
  vivify_195:
    exists $I699, $P697[$P698]
    if $I699, if_694
    null $P705
    set $P693, $P705
    goto if_694_end
  if_694:
    find_lex $P700, "$key"
    unless_null $P700, vivify_196
    new $P700, "Undef"
  vivify_196:
    find_lex $P701, "self"
    find_lex $P702, "$?CLASS"
    getattribute $P703, $P701, $P702, "%!hash"
    unless_null $P703, vivify_197
    $P703 = root_new ['parrot';'Hash']
  vivify_197:
    set $P704, $P703[$P700]
    unless_null $P704, vivify_198
    new $P704, "Undef"
  vivify_198:
    set $P693, $P704
  if_694_end:
.annotate 'line', 95
    .return ($P693)
.end


.HLL "nqp"

.namespace []
.sub "_block708"  :anon :subid("53_1303746622.896") :outer("66_1303746622.896")
    .param pmc param_710
    .param pmc param_711
.annotate 'line', 98
    .lex "self", param_710
    .lex "$key", param_711
.annotate 'line', 99
    find_lex $P717, "$key"
    unless_null $P717, vivify_199
    new $P717, "Undef"
  vivify_199:
    find_lex $P714, "self"
    find_lex $P715, "$?CLASS"
    getattribute $P716, $P714, $P715, "%!hash"
    unless_null $P716, vivify_200
    $P716 = root_new ['parrot';'Hash']
  vivify_200:
    exists $I718, $P716[$P717]
    if $I718, if_713
    null $P724
    set $P712, $P724
    goto if_713_end
  if_713:
    find_lex $P719, "$key"
    unless_null $P719, vivify_201
    new $P719, "Undef"
  vivify_201:
    find_lex $P720, "self"
    find_lex $P721, "$?CLASS"
    getattribute $P722, $P720, $P721, "%!hash"
    unless_null $P722, vivify_202
    $P722 = root_new ['parrot';'Hash']
  vivify_202:
    set $P723, $P722[$P719]
    unless_null $P723, vivify_203
    new $P723, "Undef"
  vivify_203:
    set $P712, $P723
  if_713_end:
.annotate 'line', 98
    .return ($P712)
.end


.HLL "nqp"

.namespace []
.sub "_block727"  :anon :subid("54_1303746622.896") :outer("66_1303746622.896")
    .param pmc param_729
    .param pmc param_730
.annotate 'line', 101
    .lex "self", param_729
    .lex "$key", param_730
.annotate 'line', 102
    find_lex $P736, "$key"
    unless_null $P736, vivify_204
    new $P736, "Undef"
  vivify_204:
    find_lex $P733, "self"
    find_lex $P734, "$?CLASS"
    getattribute $P735, $P733, $P734, "@!array"
    unless_null $P735, vivify_205
    $P735 = root_new ['parrot';'ResizablePMCArray']
  vivify_205:
    exists $I737, $P735[$P736]
    if $I737, if_732
    null $P744
    set $P731, $P744
    goto if_732_end
  if_732:
    find_lex $P738, "$key"
    unless_null $P738, vivify_206
    new $P738, "Undef"
  vivify_206:
    set $I739, $P738
    find_lex $P740, "self"
    find_lex $P741, "$?CLASS"
    getattribute $P742, $P740, $P741, "@!array"
    unless_null $P742, vivify_207
    $P742 = root_new ['parrot';'ResizablePMCArray']
  vivify_207:
    set $P743, $P742[$I739]
    unless_null $P743, vivify_208
    new $P743, "Undef"
  vivify_208:
    set $P731, $P743
  if_732_end:
.annotate 'line', 101
    .return ($P731)
.end


.HLL "nqp"

.namespace []
.sub "_block747"  :anon :subid("55_1303746622.896") :outer("66_1303746622.896")
    .param pmc param_749
    .param pmc param_750
    .param pmc param_751
.annotate 'line', 105
    .lex "self", param_749
    .lex "$key", param_750
    .lex "$value", param_751
.annotate 'line', 106
    find_lex $P752, "$value"
    unless_null $P752, vivify_209
    new $P752, "Undef"
  vivify_209:
    find_lex $P753, "$key"
    unless_null $P753, vivify_210
    new $P753, "Undef"
  vivify_210:
    find_lex $P754, "self"
    find_lex $P755, "$?CLASS"
    getattribute $P756, $P754, $P755, "%!hash"
    unless_null $P756, vivify_211
    $P756 = root_new ['parrot';'Hash']
    setattribute $P754, $P755, "%!hash", $P756
  vivify_211:
    set $P756[$P753], $P752
.annotate 'line', 105
    .return ($P752)
.end


.HLL "nqp"

.namespace []
.sub "_block759"  :anon :subid("56_1303746622.896") :outer("66_1303746622.896")
    .param pmc param_761
    .param pmc param_762
    .param pmc param_763
.annotate 'line', 108
    .lex "self", param_761
    .lex "$key", param_762
    .lex "$value", param_763
.annotate 'line', 109
    find_lex $P764, "$value"
    unless_null $P764, vivify_212
    new $P764, "Undef"
  vivify_212:
    find_lex $P765, "$key"
    unless_null $P765, vivify_213
    new $P765, "Undef"
  vivify_213:
    find_lex $P766, "self"
    find_lex $P767, "$?CLASS"
    getattribute $P768, $P766, $P767, "%!hash"
    unless_null $P768, vivify_214
    $P768 = root_new ['parrot';'Hash']
    setattribute $P766, $P767, "%!hash", $P768
  vivify_214:
    set $P768[$P765], $P764
.annotate 'line', 108
    .return ($P764)
.end


.HLL "nqp"

.namespace []
.sub "_block771"  :anon :subid("57_1303746622.896") :outer("66_1303746622.896")
    .param pmc param_773
    .param pmc param_774
    .param pmc param_775
.annotate 'line', 111
    .lex "self", param_773
    .lex "$key", param_774
    .lex "$value", param_775
.annotate 'line', 112
    find_lex $P776, "$value"
    unless_null $P776, vivify_215
    new $P776, "Undef"
  vivify_215:
    find_lex $P777, "$key"
    unless_null $P777, vivify_216
    new $P777, "Undef"
  vivify_216:
    set $I778, $P777
    find_lex $P779, "self"
    find_lex $P780, "$?CLASS"
    getattribute $P781, $P779, $P780, "@!array"
    unless_null $P781, vivify_217
    $P781 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P779, $P780, "@!array", $P781
  vivify_217:
    set $P781[$I778], $P776
.annotate 'line', 111
    .return ($P776)
.end


.HLL "nqp"

.namespace []
.sub "_block784"  :anon :subid("58_1303746622.896") :outer("66_1303746622.896")
    .param pmc param_786
    .param pmc param_787
.annotate 'line', 115
    .lex "self", param_786
    .lex "$key", param_787
.annotate 'line', 116
    find_lex $P791, "$key"
    unless_null $P791, vivify_218
    new $P791, "Undef"
  vivify_218:
    find_lex $P788, "self"
    find_lex $P789, "$?CLASS"
    getattribute $P790, $P788, $P789, "%!hash"
    unless_null $P790, vivify_219
    $P790 = root_new ['parrot';'Hash']
  vivify_219:
    exists $I792, $P790[$P791]
.annotate 'line', 115
    .return ($I792)
.end


.HLL "nqp"

.namespace []
.sub "_block795"  :anon :subid("59_1303746622.896") :outer("66_1303746622.896")
    .param pmc param_797
    .param pmc param_798
.annotate 'line', 118
    .lex "self", param_797
    .lex "$key", param_798
.annotate 'line', 119
    find_lex $P802, "$key"
    unless_null $P802, vivify_220
    new $P802, "Undef"
  vivify_220:
    find_lex $P799, "self"
    find_lex $P800, "$?CLASS"
    getattribute $P801, $P799, $P800, "%!hash"
    unless_null $P801, vivify_221
    $P801 = root_new ['parrot';'Hash']
  vivify_221:
    exists $I803, $P801[$P802]
.annotate 'line', 118
    .return ($I803)
.end


.HLL "nqp"

.namespace []
.sub "_block806"  :anon :subid("60_1303746622.896") :outer("66_1303746622.896")
    .param pmc param_808
    .param pmc param_809
.annotate 'line', 121
    .lex "self", param_808
    .lex "$key", param_809
.annotate 'line', 122
    find_lex $P813, "$key"
    unless_null $P813, vivify_222
    new $P813, "Undef"
  vivify_222:
    find_lex $P810, "self"
    find_lex $P811, "$?CLASS"
    getattribute $P812, $P810, $P811, "@!array"
    unless_null $P812, vivify_223
    $P812 = root_new ['parrot';'ResizablePMCArray']
  vivify_223:
    exists $I814, $P812[$P813]
.annotate 'line', 121
    .return ($I814)
.end


.HLL "nqp"

.namespace []
.sub "_block817"  :anon :subid("61_1303746622.896") :outer("66_1303746622.896")
    .param pmc param_819
    .param pmc param_820
.annotate 'line', 125
    .lex "self", param_819
    .lex "$key", param_820
.annotate 'line', 126
    find_lex $P824, "$key"
    unless_null $P824, vivify_224
    new $P824, "Undef"
  vivify_224:
    find_lex $P821, "self"
    find_lex $P822, "$?CLASS"
    getattribute $P823, $P821, $P822, "%!hash"
    unless_null $P823, vivify_225
    $P823 = root_new ['parrot';'Hash']
  vivify_225:
    delete $P823[$P824]
.annotate 'line', 125
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block827"  :anon :subid("62_1303746622.896") :outer("66_1303746622.896")
    .param pmc param_829
    .param pmc param_830
.annotate 'line', 128
    .lex "self", param_829
    .lex "$key", param_830
.annotate 'line', 129
    find_lex $P834, "$key"
    unless_null $P834, vivify_226
    new $P834, "Undef"
  vivify_226:
    find_lex $P831, "self"
    find_lex $P832, "$?CLASS"
    getattribute $P833, $P831, $P832, "%!hash"
    unless_null $P833, vivify_227
    $P833 = root_new ['parrot';'Hash']
  vivify_227:
    delete $P833[$P834]
.annotate 'line', 128
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block837"  :anon :subid("63_1303746622.896") :outer("66_1303746622.896")
    .param pmc param_839
    .param pmc param_840
.annotate 'line', 131
    .lex "self", param_839
    .lex "$key", param_840
.annotate 'line', 132
    find_lex $P844, "$key"
    unless_null $P844, vivify_228
    new $P844, "Undef"
  vivify_228:
    find_lex $P841, "self"
    find_lex $P842, "$?CLASS"
    getattribute $P843, $P841, $P842, "@!array"
    unless_null $P843, vivify_229
    $P843 = root_new ['parrot';'ResizablePMCArray']
  vivify_229:
    delete $P843[$P844]
.annotate 'line', 131
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block847"  :anon :subid("64_1303746622.896") :outer("66_1303746622.896")
    .param pmc param_849
    .param pmc param_850
.annotate 'line', 135
    .lex "self", param_849
    .lex "$value", param_850
.annotate 'line', 136
    find_lex $P851, "self"
    find_lex $P852, "$?CLASS"
    getattribute $P853, $P851, $P852, "@!array"
    unless_null $P853, vivify_230
    $P853 = root_new ['parrot';'ResizablePMCArray']
  vivify_230:
    find_lex $P854, "$value"
    unless_null $P854, vivify_231
    new $P854, "Undef"
  vivify_231:
    unshift $P853, $P854
.annotate 'line', 135
    .return ($P853)
.end


.HLL "nqp"

.namespace []
.sub "_block857"  :anon :subid("65_1303746622.896") :outer("66_1303746622.896")
    .param pmc param_859
    .param pmc param_860
.annotate 'line', 139
    .lex "self", param_859
    .lex "$value", param_860
.annotate 'line', 140
    find_lex $P861, "self"
    find_lex $P862, "$?CLASS"
    getattribute $P863, $P861, $P862, "@!array"
    unless_null $P863, vivify_232
    $P863 = root_new ['parrot';'ResizablePMCArray']
  vivify_232:
    find_lex $P864, "$value"
    unless_null $P864, vivify_233
    new $P864, "Undef"
  vivify_233:
    unshift $P863, $P864
.annotate 'line', 139
    .return ($P863)
.end


.HLL "nqp"

.namespace []
.sub "new"  :subid("48_1303746622.896") :outer("47_1303746622.896")
    .param pmc param_496
.annotate 'line', 80
    .lex "self", param_496
.annotate 'line', 81
    new $P497, "Undef"
    .lex "$n", $P497
    find_lex $P498, "self"
    $P499 = $P498."CREATE"()
    store_lex "$n", $P499
.annotate 'line', 82
    find_lex $P500, "$n"
    unless_null $P500, vivify_234
    new $P500, "Undef"
  vivify_234:
    $P500."BUILD"()
    find_lex $P501, "$n"
    unless_null $P501, vivify_235
    new $P501, "Undef"
  vivify_235:
.annotate 'line', 80
    .return ($P501)
.end


.HLL "nqp"

.namespace []
.sub "BUILD"  :subid("49_1303746622.896") :outer("47_1303746622.896")
    .param pmc param_503
.annotate 'line', 86
    .lex "self", param_503
.annotate 'line', 87
    new $P504, "ResizablePMCArray"
    find_lex $P505, "self"
    find_lex $P506, "$?CLASS"
    setattribute $P505, $P506, "@!array", $P504
.annotate 'line', 88
    new $P507, "Hash"
    find_lex $P508, "self"
    find_lex $P509, "$?CLASS"
    setattribute $P508, $P509, "%!hash", $P507
.annotate 'line', 86
    .return ($P507)
.end


.HLL "nqp"

.namespace []
.sub "list"  :subid("50_1303746622.896") :outer("47_1303746622.896")
    .param pmc param_511
.annotate 'line', 91
    .lex "self", param_511
    find_lex $P512, "self"
    find_lex $P513, "$?CLASS"
    getattribute $P514, $P512, $P513, "@!array"
    unless_null $P514, vivify_236
    $P514 = root_new ['parrot';'ResizablePMCArray']
  vivify_236:
    .return ($P514)
.end


.HLL "nqp"

.namespace []
.sub "hash"  :subid("51_1303746622.896") :outer("47_1303746622.896")
    .param pmc param_516
.annotate 'line', 93
    .lex "self", param_516
    find_lex $P517, "self"
    find_lex $P518, "$?CLASS"
    getattribute $P519, $P517, $P518, "%!hash"
    unless_null $P519, vivify_237
    $P519 = root_new ['parrot';'Hash']
  vivify_237:
    .return ($P519)
.end


.HLL "nqp"

.namespace []
.sub "_block520"  :anon :subid("52_1303746622.896") :outer("47_1303746622.896")
    .param pmc param_522
    .param pmc param_523
.annotate 'line', 95
    .lex "self", param_522
    .lex "$key", param_523
.annotate 'line', 96
    find_lex $P529, "$key"
    unless_null $P529, vivify_238
    new $P529, "Undef"
  vivify_238:
    find_lex $P526, "self"
    find_lex $P527, "$?CLASS"
    getattribute $P528, $P526, $P527, "%!hash"
    unless_null $P528, vivify_239
    $P528 = root_new ['parrot';'Hash']
  vivify_239:
    exists $I530, $P528[$P529]
    if $I530, if_525
    null $P536
    set $P524, $P536
    goto if_525_end
  if_525:
    find_lex $P531, "$key"
    unless_null $P531, vivify_240
    new $P531, "Undef"
  vivify_240:
    find_lex $P532, "self"
    find_lex $P533, "$?CLASS"
    getattribute $P534, $P532, $P533, "%!hash"
    unless_null $P534, vivify_241
    $P534 = root_new ['parrot';'Hash']
  vivify_241:
    set $P535, $P534[$P531]
    unless_null $P535, vivify_242
    new $P535, "Undef"
  vivify_242:
    set $P524, $P535
  if_525_end:
.annotate 'line', 95
    .return ($P524)
.end


.HLL "nqp"

.namespace []
.sub "_block537"  :anon :subid("53_1303746622.896") :outer("47_1303746622.896")
    .param pmc param_539
    .param pmc param_540
.annotate 'line', 98
    .lex "self", param_539
    .lex "$key", param_540
.annotate 'line', 99
    find_lex $P546, "$key"
    unless_null $P546, vivify_243
    new $P546, "Undef"
  vivify_243:
    find_lex $P543, "self"
    find_lex $P544, "$?CLASS"
    getattribute $P545, $P543, $P544, "%!hash"
    unless_null $P545, vivify_244
    $P545 = root_new ['parrot';'Hash']
  vivify_244:
    exists $I547, $P545[$P546]
    if $I547, if_542
    null $P553
    set $P541, $P553
    goto if_542_end
  if_542:
    find_lex $P548, "$key"
    unless_null $P548, vivify_245
    new $P548, "Undef"
  vivify_245:
    find_lex $P549, "self"
    find_lex $P550, "$?CLASS"
    getattribute $P551, $P549, $P550, "%!hash"
    unless_null $P551, vivify_246
    $P551 = root_new ['parrot';'Hash']
  vivify_246:
    set $P552, $P551[$P548]
    unless_null $P552, vivify_247
    new $P552, "Undef"
  vivify_247:
    set $P541, $P552
  if_542_end:
.annotate 'line', 98
    .return ($P541)
.end


.HLL "nqp"

.namespace []
.sub "_block554"  :anon :subid("54_1303746622.896") :outer("47_1303746622.896")
    .param pmc param_556
    .param pmc param_557
.annotate 'line', 101
    .lex "self", param_556
    .lex "$key", param_557
.annotate 'line', 102
    find_lex $P563, "$key"
    unless_null $P563, vivify_248
    new $P563, "Undef"
  vivify_248:
    find_lex $P560, "self"
    find_lex $P561, "$?CLASS"
    getattribute $P562, $P560, $P561, "@!array"
    unless_null $P562, vivify_249
    $P562 = root_new ['parrot';'ResizablePMCArray']
  vivify_249:
    exists $I564, $P562[$P563]
    if $I564, if_559
    null $P571
    set $P558, $P571
    goto if_559_end
  if_559:
    find_lex $P565, "$key"
    unless_null $P565, vivify_250
    new $P565, "Undef"
  vivify_250:
    set $I566, $P565
    find_lex $P567, "self"
    find_lex $P568, "$?CLASS"
    getattribute $P569, $P567, $P568, "@!array"
    unless_null $P569, vivify_251
    $P569 = root_new ['parrot';'ResizablePMCArray']
  vivify_251:
    set $P570, $P569[$I566]
    unless_null $P570, vivify_252
    new $P570, "Undef"
  vivify_252:
    set $P558, $P570
  if_559_end:
.annotate 'line', 101
    .return ($P558)
.end


.HLL "nqp"

.namespace []
.sub "_block572"  :anon :subid("55_1303746622.896") :outer("47_1303746622.896")
    .param pmc param_574
    .param pmc param_575
    .param pmc param_576
.annotate 'line', 105
    .lex "self", param_574
    .lex "$key", param_575
    .lex "$value", param_576
.annotate 'line', 106
    find_lex $P577, "$value"
    unless_null $P577, vivify_253
    new $P577, "Undef"
  vivify_253:
    find_lex $P578, "$key"
    unless_null $P578, vivify_254
    new $P578, "Undef"
  vivify_254:
    find_lex $P579, "self"
    find_lex $P580, "$?CLASS"
    getattribute $P581, $P579, $P580, "%!hash"
    unless_null $P581, vivify_255
    $P581 = root_new ['parrot';'Hash']
    setattribute $P579, $P580, "%!hash", $P581
  vivify_255:
    set $P581[$P578], $P577
.annotate 'line', 105
    .return ($P577)
.end


.HLL "nqp"

.namespace []
.sub "_block582"  :anon :subid("56_1303746622.896") :outer("47_1303746622.896")
    .param pmc param_584
    .param pmc param_585
    .param pmc param_586
.annotate 'line', 108
    .lex "self", param_584
    .lex "$key", param_585
    .lex "$value", param_586
.annotate 'line', 109
    find_lex $P587, "$value"
    unless_null $P587, vivify_256
    new $P587, "Undef"
  vivify_256:
    find_lex $P588, "$key"
    unless_null $P588, vivify_257
    new $P588, "Undef"
  vivify_257:
    find_lex $P589, "self"
    find_lex $P590, "$?CLASS"
    getattribute $P591, $P589, $P590, "%!hash"
    unless_null $P591, vivify_258
    $P591 = root_new ['parrot';'Hash']
    setattribute $P589, $P590, "%!hash", $P591
  vivify_258:
    set $P591[$P588], $P587
.annotate 'line', 108
    .return ($P587)
.end


.HLL "nqp"

.namespace []
.sub "_block592"  :anon :subid("57_1303746622.896") :outer("47_1303746622.896")
    .param pmc param_594
    .param pmc param_595
    .param pmc param_596
.annotate 'line', 111
    .lex "self", param_594
    .lex "$key", param_595
    .lex "$value", param_596
.annotate 'line', 112
    find_lex $P597, "$value"
    unless_null $P597, vivify_259
    new $P597, "Undef"
  vivify_259:
    find_lex $P598, "$key"
    unless_null $P598, vivify_260
    new $P598, "Undef"
  vivify_260:
    set $I599, $P598
    find_lex $P600, "self"
    find_lex $P601, "$?CLASS"
    getattribute $P602, $P600, $P601, "@!array"
    unless_null $P602, vivify_261
    $P602 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P600, $P601, "@!array", $P602
  vivify_261:
    set $P602[$I599], $P597
.annotate 'line', 111
    .return ($P597)
.end


.HLL "nqp"

.namespace []
.sub "_block603"  :anon :subid("58_1303746622.896") :outer("47_1303746622.896")
    .param pmc param_605
    .param pmc param_606
.annotate 'line', 115
    .lex "self", param_605
    .lex "$key", param_606
.annotate 'line', 116
    find_lex $P610, "$key"
    unless_null $P610, vivify_262
    new $P610, "Undef"
  vivify_262:
    find_lex $P607, "self"
    find_lex $P608, "$?CLASS"
    getattribute $P609, $P607, $P608, "%!hash"
    unless_null $P609, vivify_263
    $P609 = root_new ['parrot';'Hash']
  vivify_263:
    exists $I611, $P609[$P610]
.annotate 'line', 115
    .return ($I611)
.end


.HLL "nqp"

.namespace []
.sub "_block612"  :anon :subid("59_1303746622.896") :outer("47_1303746622.896")
    .param pmc param_614
    .param pmc param_615
.annotate 'line', 118
    .lex "self", param_614
    .lex "$key", param_615
.annotate 'line', 119
    find_lex $P619, "$key"
    unless_null $P619, vivify_264
    new $P619, "Undef"
  vivify_264:
    find_lex $P616, "self"
    find_lex $P617, "$?CLASS"
    getattribute $P618, $P616, $P617, "%!hash"
    unless_null $P618, vivify_265
    $P618 = root_new ['parrot';'Hash']
  vivify_265:
    exists $I620, $P618[$P619]
.annotate 'line', 118
    .return ($I620)
.end


.HLL "nqp"

.namespace []
.sub "_block621"  :anon :subid("60_1303746622.896") :outer("47_1303746622.896")
    .param pmc param_623
    .param pmc param_624
.annotate 'line', 121
    .lex "self", param_623
    .lex "$key", param_624
.annotate 'line', 122
    find_lex $P628, "$key"
    unless_null $P628, vivify_266
    new $P628, "Undef"
  vivify_266:
    find_lex $P625, "self"
    find_lex $P626, "$?CLASS"
    getattribute $P627, $P625, $P626, "@!array"
    unless_null $P627, vivify_267
    $P627 = root_new ['parrot';'ResizablePMCArray']
  vivify_267:
    exists $I629, $P627[$P628]
.annotate 'line', 121
    .return ($I629)
.end


.HLL "nqp"

.namespace []
.sub "_block630"  :anon :subid("61_1303746622.896") :outer("47_1303746622.896")
    .param pmc param_632
    .param pmc param_633
.annotate 'line', 125
    .lex "self", param_632
    .lex "$key", param_633
.annotate 'line', 126
    find_lex $P637, "$key"
    unless_null $P637, vivify_268
    new $P637, "Undef"
  vivify_268:
    find_lex $P634, "self"
    find_lex $P635, "$?CLASS"
    getattribute $P636, $P634, $P635, "%!hash"
    unless_null $P636, vivify_269
    $P636 = root_new ['parrot';'Hash']
  vivify_269:
    delete $P636[$P637]
.annotate 'line', 125
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block638"  :anon :subid("62_1303746622.896") :outer("47_1303746622.896")
    .param pmc param_640
    .param pmc param_641
.annotate 'line', 128
    .lex "self", param_640
    .lex "$key", param_641
.annotate 'line', 129
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
.annotate 'line', 128
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block646"  :anon :subid("63_1303746622.896") :outer("47_1303746622.896")
    .param pmc param_648
    .param pmc param_649
.annotate 'line', 131
    .lex "self", param_648
    .lex "$key", param_649
.annotate 'line', 132
    find_lex $P653, "$key"
    unless_null $P653, vivify_272
    new $P653, "Undef"
  vivify_272:
    find_lex $P650, "self"
    find_lex $P651, "$?CLASS"
    getattribute $P652, $P650, $P651, "@!array"
    unless_null $P652, vivify_273
    $P652 = root_new ['parrot';'ResizablePMCArray']
  vivify_273:
    delete $P652[$P653]
.annotate 'line', 131
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block654"  :anon :subid("64_1303746622.896") :outer("47_1303746622.896")
    .param pmc param_656
    .param pmc param_657
.annotate 'line', 135
    .lex "self", param_656
    .lex "$value", param_657
.annotate 'line', 136
    find_lex $P658, "self"
    find_lex $P659, "$?CLASS"
    getattribute $P660, $P658, $P659, "@!array"
    unless_null $P660, vivify_274
    $P660 = root_new ['parrot';'ResizablePMCArray']
  vivify_274:
    find_lex $P661, "$value"
    unless_null $P661, vivify_275
    new $P661, "Undef"
  vivify_275:
    unshift $P660, $P661
.annotate 'line', 135
    .return ($P660)
.end


.HLL "nqp"

.namespace []
.sub "_block662"  :anon :subid("65_1303746622.896") :outer("47_1303746622.896")
    .param pmc param_664
    .param pmc param_665
.annotate 'line', 139
    .lex "self", param_664
    .lex "$value", param_665
.annotate 'line', 140
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
.annotate 'line', 139
    .return ($P668)
.end


.HLL "nqp"

.namespace []
.sub "_block883" :load :anon :subid("67_1303746622.896")
.annotate 'line', 1
    .const 'Sub' $P885 = "10_1303746622.896" 
    $P886 = $P885()
    .return ($P886)
.end

