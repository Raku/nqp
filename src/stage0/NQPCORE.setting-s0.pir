
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1303923587.707")
.annotate 'line', 0
    .const 'Sub' $P519 = "47_1303923587.707" 
    capture_lex $P519
    .const 'Sub' $P357 = "33_1303923587.707" 
    capture_lex $P357
    .const 'Sub' $P348 = "31_1303923587.707" 
    capture_lex $P348
    .const 'Sub' $P339 = "29_1303923587.707" 
    capture_lex $P339
    .const 'Sub' $P330 = "27_1303923587.707" 
    capture_lex $P330
    .const 'Sub' $P265 = "25_1303923587.707" 
    capture_lex $P265
    .const 'Sub' $P251 = "24_1303923587.707" 
    capture_lex $P251
    .const 'Sub' $P229 = "23_1303923587.707" 
    capture_lex $P229
    .const 'Sub' $P222 = "22_1303923587.707" 
    capture_lex $P222
    .const 'Sub' $P134 = "20_1303923587.707" 
    capture_lex $P134
    .const 'Sub' $P101 = "18_1303923587.707" 
    capture_lex $P101
    .const 'Sub' $P96 = "17_1303923587.707" 
    capture_lex $P96
    .const 'Sub' $P82 = "15_1303923587.707" 
    capture_lex $P82
    .const 'Sub' $P70 = "14_1303923587.707" 
    capture_lex $P70
    .const 'Sub' $P59 = "13_1303923587.707" 
    capture_lex $P59
    .const 'Sub' $P54 = "12_1303923587.707" 
    capture_lex $P54
    .const 'Sub' $P21 = "11_1303923587.707" 
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
    .const 'Sub' $P21 = "11_1303923587.707" 
    newclosure $P53, $P21
    .lex "open", $P53
.annotate 'line', 170
    .const 'Sub' $P54 = "12_1303923587.707" 
    newclosure $P58, $P54
    .lex "close", $P58
.annotate 'line', 178
    .const 'Sub' $P59 = "13_1303923587.707" 
    newclosure $P69, $P59
    .lex "slurp", $P69
.annotate 'line', 190
    .const 'Sub' $P70 = "14_1303923587.707" 
    newclosure $P81, $P70
    .lex "spew", $P81
.annotate 'line', 197
    .const 'Sub' $P82 = "15_1303923587.707" 
    newclosure $P95, $P82
    .lex "print", $P95
.annotate 'line', 204
    .const 'Sub' $P96 = "17_1303923587.707" 
    newclosure $P100, $P96
    .lex "say", $P100
.annotate 'line', 222
    .const 'Sub' $P101 = "18_1303923587.707" 
    newclosure $P133, $P101
    .lex "match", $P133
.annotate 'line', 244
    .const 'Sub' $P134 = "20_1303923587.707" 
    newclosure $P220, $P134
    .lex "subst", $P220
.annotate 'line', 270
    new $P221, "Undef"
    .lex "$test_counter", $P221
.annotate 'line', 272
    .const 'Sub' $P222 = "22_1303923587.707" 
    newclosure $P228, $P222
    .lex "plan", $P228
.annotate 'line', 276
    .const 'Sub' $P229 = "23_1303923587.707" 
    newclosure $P250, $P229
    .lex "ok", $P250
.annotate 'line', 291
    .const 'Sub' $P251 = "24_1303923587.707" 
    newclosure $P263, $P251
    .lex "skip", $P263
.annotate 'line', 14
    .const 'Sub' $P265 = "25_1303923587.707" 
    capture_lex $P265
    $P265()
.annotate 'line', 25
    .const 'Sub' $P330 = "27_1303923587.707" 
    capture_lex $P330
    $P330()
.annotate 'line', 27
    .const 'Sub' $P339 = "29_1303923587.707" 
    capture_lex $P339
    $P339()
.annotate 'line', 29
    .const 'Sub' $P348 = "31_1303923587.707" 
    capture_lex $P348
    $P348()
.annotate 'line', 32
    .const 'Sub' $P357 = "33_1303923587.707" 
    capture_lex $P357
    $P357()
.annotate 'line', 79
    .const 'Sub' $P519 = "47_1303923587.707" 
    capture_lex $P519
    $P519()
    find_lex $P889, "open"
    find_lex $P890, "close"
    find_lex $P891, "slurp"
    find_lex $P892, "spew"
    find_lex $P893, "print"
    find_lex $P894, "say"
    find_lex $P895, "match"
    find_lex $P896, "subst"
.annotate 'line', 270
    new $P897, "Integer"
    assign $P897, 0
    store_lex "$test_counter", $P897
    find_lex $P898, "plan"
    find_lex $P899, "ok"
    find_lex $P900, "skip"
    new $P901, "Integer"
    assign $P901, 1
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 1
    .return ()
    .const 'Sub' $P903 = "67_1303923587.707" 
    .return ($P903)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post68") :outer("10_1303923587.707")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1303923587.707" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P907, "1303923586.596"
    isnull $I908, $P907
    if $I908, if_906
    .const 'Sub' $P1047 = "10_1303923587.707" 
    $P1048 = $P1047."get_lexinfo"()
    nqp_get_sc_object $P1049, "1303923586.596", 0
    $P1048."set_static_lexpad_value"("GLOBALish", $P1049)
    .const 'Sub' $P1050 = "10_1303923587.707" 
    $P1051 = $P1050."get_lexinfo"()
    $P1051."finish_static_lexpad"()
    .const 'Sub' $P1052 = "10_1303923587.707" 
    $P1053 = $P1052."get_lexinfo"()
    nqp_get_sc_object $P1054, "1303923586.596", 0
    $P1053."set_static_lexpad_value"("$?PACKAGE", $P1054)
    .const 'Sub' $P1055 = "10_1303923587.707" 
    $P1056 = $P1055."get_lexinfo"()
    $P1056."finish_static_lexpad"()
    .const 'Sub' $P1057 = "10_1303923587.707" 
    $P1058 = $P1057."get_lexinfo"()
    nqp_get_sc_object $P1059, "1303923586.596", 1
    $P1058."set_static_lexpad_value"("EXPORTHOW", $P1059)
    .const 'Sub' $P1060 = "10_1303923587.707" 
    $P1061 = $P1060."get_lexinfo"()
    $P1061."finish_static_lexpad"()
    .const 'Sub' $P1062 = "25_1303923587.707" 
    $P1063 = $P1062."get_lexinfo"()
    nqp_get_sc_object $P1064, "1303923586.596", 1
    $P1063."set_static_lexpad_value"("$?PACKAGE", $P1064)
    .const 'Sub' $P1065 = "25_1303923587.707" 
    $P1066 = $P1065."get_lexinfo"()
    $P1066."finish_static_lexpad"()
    .const 'Sub' $P1067 = "25_1303923587.707" 
    $P1068 = $P1067."get_lexinfo"()
    nqp_get_sc_object $P1069, "1303923586.596", 1
    $P1068."set_static_lexpad_value"("$?CLASS", $P1069)
    .const 'Sub' $P1070 = "25_1303923587.707" 
    $P1071 = $P1070."get_lexinfo"()
    $P1071."finish_static_lexpad"()
    .const 'Sub' $P1072 = "10_1303923587.707" 
    $P1073 = $P1072."get_lexinfo"()
    nqp_get_sc_object $P1074, "1303923586.596", 2
    $P1073."set_static_lexpad_value"("int", $P1074)
    .const 'Sub' $P1075 = "10_1303923587.707" 
    $P1076 = $P1075."get_lexinfo"()
    $P1076."finish_static_lexpad"()
    .const 'Sub' $P1077 = "27_1303923587.707" 
    $P1078 = $P1077."get_lexinfo"()
    nqp_get_sc_object $P1079, "1303923586.596", 2
    $P1078."set_static_lexpad_value"("$?PACKAGE", $P1079)
    .const 'Sub' $P1080 = "27_1303923587.707" 
    $P1081 = $P1080."get_lexinfo"()
    $P1081."finish_static_lexpad"()
    .const 'Sub' $P1082 = "27_1303923587.707" 
    $P1083 = $P1082."get_lexinfo"()
    nqp_get_sc_object $P1084, "1303923586.596", 2
    $P1083."set_static_lexpad_value"("$?CLASS", $P1084)
    .const 'Sub' $P1085 = "27_1303923587.707" 
    $P1086 = $P1085."get_lexinfo"()
    $P1086."finish_static_lexpad"()
    .const 'Sub' $P1087 = "10_1303923587.707" 
    $P1088 = $P1087."get_lexinfo"()
    nqp_get_sc_object $P1089, "1303923586.596", 3
    $P1088."set_static_lexpad_value"("num", $P1089)
    .const 'Sub' $P1090 = "10_1303923587.707" 
    $P1091 = $P1090."get_lexinfo"()
    $P1091."finish_static_lexpad"()
    .const 'Sub' $P1092 = "29_1303923587.707" 
    $P1093 = $P1092."get_lexinfo"()
    nqp_get_sc_object $P1094, "1303923586.596", 3
    $P1093."set_static_lexpad_value"("$?PACKAGE", $P1094)
    .const 'Sub' $P1095 = "29_1303923587.707" 
    $P1096 = $P1095."get_lexinfo"()
    $P1096."finish_static_lexpad"()
    .const 'Sub' $P1097 = "29_1303923587.707" 
    $P1098 = $P1097."get_lexinfo"()
    nqp_get_sc_object $P1099, "1303923586.596", 3
    $P1098."set_static_lexpad_value"("$?CLASS", $P1099)
    .const 'Sub' $P1100 = "29_1303923587.707" 
    $P1101 = $P1100."get_lexinfo"()
    $P1101."finish_static_lexpad"()
    .const 'Sub' $P1102 = "10_1303923587.707" 
    $P1103 = $P1102."get_lexinfo"()
    nqp_get_sc_object $P1104, "1303923586.596", 4
    $P1103."set_static_lexpad_value"("str", $P1104)
    .const 'Sub' $P1105 = "10_1303923587.707" 
    $P1106 = $P1105."get_lexinfo"()
    $P1106."finish_static_lexpad"()
    .const 'Sub' $P1107 = "31_1303923587.707" 
    $P1108 = $P1107."get_lexinfo"()
    nqp_get_sc_object $P1109, "1303923586.596", 4
    $P1108."set_static_lexpad_value"("$?PACKAGE", $P1109)
    .const 'Sub' $P1110 = "31_1303923587.707" 
    $P1111 = $P1110."get_lexinfo"()
    $P1111."finish_static_lexpad"()
    .const 'Sub' $P1112 = "31_1303923587.707" 
    $P1113 = $P1112."get_lexinfo"()
    nqp_get_sc_object $P1114, "1303923586.596", 4
    $P1113."set_static_lexpad_value"("$?CLASS", $P1114)
    .const 'Sub' $P1115 = "31_1303923587.707" 
    $P1116 = $P1115."get_lexinfo"()
    $P1116."finish_static_lexpad"()
    .const 'Sub' $P1117 = "10_1303923587.707" 
    $P1118 = $P1117."get_lexinfo"()
    nqp_get_sc_object $P1119, "1303923586.596", 5
    $P1118."set_static_lexpad_value"("NQPMu", $P1119)
    .const 'Sub' $P1120 = "10_1303923587.707" 
    $P1121 = $P1120."get_lexinfo"()
    $P1121."finish_static_lexpad"()
    .const 'Sub' $P1122 = "33_1303923587.707" 
    $P1123 = $P1122."get_lexinfo"()
    nqp_get_sc_object $P1124, "1303923586.596", 5
    $P1123."set_static_lexpad_value"("$?PACKAGE", $P1124)
    .const 'Sub' $P1125 = "33_1303923587.707" 
    $P1126 = $P1125."get_lexinfo"()
    $P1126."finish_static_lexpad"()
    .const 'Sub' $P1127 = "33_1303923587.707" 
    $P1128 = $P1127."get_lexinfo"()
    nqp_get_sc_object $P1129, "1303923586.596", 5
    $P1128."set_static_lexpad_value"("$?CLASS", $P1129)
    .const 'Sub' $P1130 = "33_1303923587.707" 
    $P1131 = $P1130."get_lexinfo"()
    $P1131."finish_static_lexpad"()
    .const 'Sub' $P1132 = "10_1303923587.707" 
    $P1133 = $P1132."get_lexinfo"()
    nqp_get_sc_object $P1134, "1303923586.596", 6
    $P1133."set_static_lexpad_value"("NQPCapture", $P1134)
    .const 'Sub' $P1135 = "10_1303923587.707" 
    $P1136 = $P1135."get_lexinfo"()
    $P1136."finish_static_lexpad"()
    .const 'Sub' $P1137 = "47_1303923587.707" 
    $P1138 = $P1137."get_lexinfo"()
    nqp_get_sc_object $P1139, "1303923586.596", 6
    $P1138."set_static_lexpad_value"("$?PACKAGE", $P1139)
    .const 'Sub' $P1140 = "47_1303923587.707" 
    $P1141 = $P1140."get_lexinfo"()
    $P1141."finish_static_lexpad"()
    .const 'Sub' $P1142 = "47_1303923587.707" 
    $P1143 = $P1142."get_lexinfo"()
    nqp_get_sc_object $P1144, "1303923586.596", 6
    $P1143."set_static_lexpad_value"("$?CLASS", $P1144)
    .const 'Sub' $P1145 = "47_1303923587.707" 
    $P1146 = $P1145."get_lexinfo"()
    $P1146."finish_static_lexpad"()
    goto if_906_end
  if_906:
    nqp_dynop_setup 
    getinterp $P909
    get_class $P910, "LexPad"
    get_class $P911, "NQPLexPad"
    $P909."hll_map"($P910, $P911)
    nqp_create_sc $P912, "1303923586.596"
    .local pmc cur_sc
    set cur_sc, $P912
    nqp_get_sc_object $P913, "__6MODEL_CORE__", 0
    $P914 = $P913."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P914, cur_sc
    nqp_set_sc_object "1303923586.596", 0, $P914
    .const 'Sub' $P915 = "10_1303923587.707" 
    $P916 = $P915."get_lexinfo"()
    nqp_get_sc_object $P917, "1303923586.596", 0
    $P916."set_static_lexpad_value"("GLOBALish", $P917)
    .const 'Sub' $P918 = "10_1303923587.707" 
    $P919 = $P918."get_lexinfo"()
    $P919."finish_static_lexpad"()
    .const 'Sub' $P920 = "10_1303923587.707" 
    $P921 = $P920."get_lexinfo"()
    nqp_get_sc_object $P922, "1303923586.596", 0
    $P921."set_static_lexpad_value"("$?PACKAGE", $P922)
    .const 'Sub' $P923 = "10_1303923587.707" 
    $P924 = $P923."get_lexinfo"()
    $P924."finish_static_lexpad"()
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P925, "ModuleLoader"
    nqp_get_sc_object $P926, "1303923586.596", 0
    $P925."load_module"("nqpmo", $P926)
    nqp_get_sc_object $P927, "1303923580.726", 9
    $P928 = $P927."new_type"("EXPORTHOW" :named("name"))
    nqp_set_sc_for_object $P928, cur_sc
    nqp_set_sc_object "1303923586.596", 1, $P928
    .const 'Sub' $P929 = "10_1303923587.707" 
    $P930 = $P929."get_lexinfo"()
    nqp_get_sc_object $P931, "1303923586.596", 1
    $P930."set_static_lexpad_value"("EXPORTHOW", $P931)
    .const 'Sub' $P932 = "10_1303923587.707" 
    $P933 = $P932."get_lexinfo"()
    $P933."finish_static_lexpad"()
    .const 'Sub' $P934 = "25_1303923587.707" 
    $P935 = $P934."get_lexinfo"()
    nqp_get_sc_object $P936, "1303923586.596", 1
    $P935."set_static_lexpad_value"("$?PACKAGE", $P936)
    .const 'Sub' $P937 = "25_1303923587.707" 
    $P938 = $P937."get_lexinfo"()
    $P938."finish_static_lexpad"()
    .const 'Sub' $P939 = "25_1303923587.707" 
    $P940 = $P939."get_lexinfo"()
    nqp_get_sc_object $P941, "1303923586.596", 1
    $P940."set_static_lexpad_value"("$?CLASS", $P941)
    .const 'Sub' $P942 = "25_1303923587.707" 
    $P943 = $P942."get_lexinfo"()
    $P943."finish_static_lexpad"()
    nqp_get_sc_object $P944, "1303923580.726", 7
    $P945 = $P944."new_type"("int" :named("name"), "P6int" :named("repr"))
    nqp_set_sc_for_object $P945, cur_sc
    nqp_set_sc_object "1303923586.596", 2, $P945
    .const 'Sub' $P946 = "10_1303923587.707" 
    $P947 = $P946."get_lexinfo"()
    nqp_get_sc_object $P948, "1303923586.596", 2
    $P947."set_static_lexpad_value"("int", $P948)
    .const 'Sub' $P949 = "10_1303923587.707" 
    $P950 = $P949."get_lexinfo"()
    $P950."finish_static_lexpad"()
    .const 'Sub' $P951 = "27_1303923587.707" 
    $P952 = $P951."get_lexinfo"()
    nqp_get_sc_object $P953, "1303923586.596", 2
    $P952."set_static_lexpad_value"("$?PACKAGE", $P953)
    .const 'Sub' $P954 = "27_1303923587.707" 
    $P955 = $P954."get_lexinfo"()
    $P955."finish_static_lexpad"()
    .const 'Sub' $P956 = "27_1303923587.707" 
    $P957 = $P956."get_lexinfo"()
    nqp_get_sc_object $P958, "1303923586.596", 2
    $P957."set_static_lexpad_value"("$?CLASS", $P958)
    .const 'Sub' $P959 = "27_1303923587.707" 
    $P960 = $P959."get_lexinfo"()
    $P960."finish_static_lexpad"()
    nqp_get_sc_object $P961, "1303923580.726", 7
    $P962 = $P961."new_type"("num" :named("name"), "P6num" :named("repr"))
    nqp_set_sc_for_object $P962, cur_sc
    nqp_set_sc_object "1303923586.596", 3, $P962
    .const 'Sub' $P963 = "10_1303923587.707" 
    $P964 = $P963."get_lexinfo"()
    nqp_get_sc_object $P965, "1303923586.596", 3
    $P964."set_static_lexpad_value"("num", $P965)
    .const 'Sub' $P966 = "10_1303923587.707" 
    $P967 = $P966."get_lexinfo"()
    $P967."finish_static_lexpad"()
    .const 'Sub' $P968 = "29_1303923587.707" 
    $P969 = $P968."get_lexinfo"()
    nqp_get_sc_object $P970, "1303923586.596", 3
    $P969."set_static_lexpad_value"("$?PACKAGE", $P970)
    .const 'Sub' $P971 = "29_1303923587.707" 
    $P972 = $P971."get_lexinfo"()
    $P972."finish_static_lexpad"()
    .const 'Sub' $P973 = "29_1303923587.707" 
    $P974 = $P973."get_lexinfo"()
    nqp_get_sc_object $P975, "1303923586.596", 3
    $P974."set_static_lexpad_value"("$?CLASS", $P975)
    .const 'Sub' $P976 = "29_1303923587.707" 
    $P977 = $P976."get_lexinfo"()
    $P977."finish_static_lexpad"()
    nqp_get_sc_object $P978, "1303923580.726", 7
    $P979 = $P978."new_type"("str" :named("name"), "P6str" :named("repr"))
    nqp_set_sc_for_object $P979, cur_sc
    nqp_set_sc_object "1303923586.596", 4, $P979
    .const 'Sub' $P980 = "10_1303923587.707" 
    $P981 = $P980."get_lexinfo"()
    nqp_get_sc_object $P982, "1303923586.596", 4
    $P981."set_static_lexpad_value"("str", $P982)
    .const 'Sub' $P983 = "10_1303923587.707" 
    $P984 = $P983."get_lexinfo"()
    $P984."finish_static_lexpad"()
    .const 'Sub' $P985 = "31_1303923587.707" 
    $P986 = $P985."get_lexinfo"()
    nqp_get_sc_object $P987, "1303923586.596", 4
    $P986."set_static_lexpad_value"("$?PACKAGE", $P987)
    .const 'Sub' $P988 = "31_1303923587.707" 
    $P989 = $P988."get_lexinfo"()
    $P989."finish_static_lexpad"()
    .const 'Sub' $P990 = "31_1303923587.707" 
    $P991 = $P990."get_lexinfo"()
    nqp_get_sc_object $P992, "1303923586.596", 4
    $P991."set_static_lexpad_value"("$?CLASS", $P992)
    .const 'Sub' $P993 = "31_1303923587.707" 
    $P994 = $P993."get_lexinfo"()
    $P994."finish_static_lexpad"()
    nqp_get_sc_object $P995, "1303923580.726", 6
    $P996 = $P995."new_type"("NQPMu" :named("name"))
    nqp_set_sc_for_object $P996, cur_sc
    nqp_set_sc_object "1303923586.596", 5, $P996
    .const 'Sub' $P997 = "10_1303923587.707" 
    $P998 = $P997."get_lexinfo"()
    nqp_get_sc_object $P999, "1303923586.596", 5
    $P998."set_static_lexpad_value"("NQPMu", $P999)
    .const 'Sub' $P1000 = "10_1303923587.707" 
    $P1001 = $P1000."get_lexinfo"()
    $P1001."finish_static_lexpad"()
    .const 'Sub' $P1002 = "33_1303923587.707" 
    $P1003 = $P1002."get_lexinfo"()
    nqp_get_sc_object $P1004, "1303923586.596", 5
    $P1003."set_static_lexpad_value"("$?PACKAGE", $P1004)
    .const 'Sub' $P1005 = "33_1303923587.707" 
    $P1006 = $P1005."get_lexinfo"()
    $P1006."finish_static_lexpad"()
    .const 'Sub' $P1007 = "33_1303923587.707" 
    $P1008 = $P1007."get_lexinfo"()
    nqp_get_sc_object $P1009, "1303923586.596", 5
    $P1008."set_static_lexpad_value"("$?CLASS", $P1009)
    .const 'Sub' $P1010 = "33_1303923587.707" 
    $P1011 = $P1010."get_lexinfo"()
    $P1011."finish_static_lexpad"()
    nqp_get_sc_object $P1012, "1303923586.596", 5
    get_how $P1013, $P1012
    nqp_get_sc_object $P1014, "1303923586.596", 5
    nqp_get_sc_object $P1015, "1303923586.596", 5
    $P1013."set_default_parent"($P1014, $P1015)
    nqp_get_sc_object $P1016, "1303923580.726", 6
    $P1017 = $P1016."new_type"("NQPCapture" :named("name"))
    nqp_set_sc_for_object $P1017, cur_sc
    nqp_set_sc_object "1303923586.596", 6, $P1017
    .const 'Sub' $P1018 = "10_1303923587.707" 
    $P1019 = $P1018."get_lexinfo"()
    nqp_get_sc_object $P1020, "1303923586.596", 6
    $P1019."set_static_lexpad_value"("NQPCapture", $P1020)
    .const 'Sub' $P1021 = "10_1303923587.707" 
    $P1022 = $P1021."get_lexinfo"()
    $P1022."finish_static_lexpad"()
    nqp_get_sc_object $P1023, "1303923586.596", 6
    get_how $P1024, $P1023
    nqp_get_sc_object $P1025, "1303923586.596", 6
    nqp_get_sc_object $P1026, "1303923580.726", 8
    $P1027 = $P1026."new"("@!array" :named("name"))
    $P1024."add_attribute"($P1025, $P1027)
    nqp_get_sc_object $P1028, "1303923586.596", 6
    get_how $P1029, $P1028
    nqp_get_sc_object $P1030, "1303923586.596", 6
    nqp_get_sc_object $P1031, "1303923580.726", 8
    $P1032 = $P1031."new"("%!hash" :named("name"))
    $P1029."add_attribute"($P1030, $P1032)
    .const 'Sub' $P1033 = "47_1303923587.707" 
    $P1034 = $P1033."get_lexinfo"()
    nqp_get_sc_object $P1035, "1303923586.596", 6
    $P1034."set_static_lexpad_value"("$?PACKAGE", $P1035)
    .const 'Sub' $P1036 = "47_1303923587.707" 
    $P1037 = $P1036."get_lexinfo"()
    $P1037."finish_static_lexpad"()
    .const 'Sub' $P1038 = "47_1303923587.707" 
    $P1039 = $P1038."get_lexinfo"()
    nqp_get_sc_object $P1040, "1303923586.596", 6
    $P1039."set_static_lexpad_value"("$?CLASS", $P1040)
    .const 'Sub' $P1041 = "47_1303923587.707" 
    $P1042 = $P1041."get_lexinfo"()
    $P1042."finish_static_lexpad"()
    nqp_get_sc_object $P1043, "1303923586.596", 6
    get_how $P1044, $P1043
    nqp_get_sc_object $P1045, "1303923586.596", 6
    nqp_get_sc_object $P1046, "1303923586.596", 5
    $P1044."set_default_parent"($P1045, $P1046)
  if_906_end:
    nqp_get_sc_object $P1147, "1303923586.596", 0
    set_hll_global "GLOBAL", $P1147
.end


.HLL "nqp"

.namespace []
.sub "open"  :subid("11_1303923587.707") :outer("10_1303923587.707")
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
.sub "close"  :subid("12_1303923587.707") :outer("10_1303923587.707")
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
.sub "slurp"  :subid("13_1303923587.707") :outer("10_1303923587.707")
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
.sub "spew"  :subid("14_1303923587.707") :outer("10_1303923587.707")
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
.sub "print"  :subid("15_1303923587.707") :outer("10_1303923587.707")
    .param pmc param_83 :slurpy
.annotate 'line', 197
    .const 'Sub' $P89 = "16_1303923587.707" 
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
    .const 'Sub' $P89 = "16_1303923587.707" 
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
.sub "_block88"  :anon :subid("16_1303923587.707") :outer("15_1303923587.707")
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
.sub "say"  :subid("17_1303923587.707") :outer("10_1303923587.707")
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
.sub "match"  :subid("18_1303923587.707") :outer("10_1303923587.707")
    .param pmc param_102
    .param pmc param_103
    .param pmc param_104 :optional :named("global")
    .param int has_param_104 :opt_flag
.annotate 'line', 222
    .const 'Sub' $P114 = "19_1303923587.707" 
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
    .const 'Sub' $P114 = "19_1303923587.707" 
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
.sub "_block113"  :anon :subid("19_1303923587.707") :outer("18_1303923587.707")
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
.sub "subst"  :subid("20_1303923587.707") :outer("10_1303923587.707")
    .param pmc param_135
    .param pmc param_136
    .param pmc param_137
    .param pmc param_138 :optional :named("global")
    .param int has_param_138 :opt_flag
.annotate 'line', 244
    .const 'Sub' $P165 = "21_1303923587.707" 
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
    .const 'Sub' $P165 = "21_1303923587.707" 
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
.sub "_block164"  :anon :subid("21_1303923587.707") :outer("20_1303923587.707")
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
.sub "plan"  :subid("22_1303923587.707") :outer("10_1303923587.707")
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
.sub "ok"  :subid("23_1303923587.707") :outer("10_1303923587.707")
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
.sub "skip"  :subid("24_1303923587.707") :outer("10_1303923587.707")
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
.sub "_block264"  :anon :subid("25_1303923587.707") :outer("10_1303923587.707")
.annotate 'line', 14
    .const 'Sub' $P325 = "26_1303923587.707" 
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
.sub "" :load :init :subid("post151") :outer("25_1303923587.707")
.annotate 'line', 14
    .const 'Sub' $P265 = "25_1303923587.707" 
    .local pmc block
    set block, $P265
    .const 'Sub' $P325 = "26_1303923587.707" 
    capture_lex $P325
    $P325()
.end


.HLL "nqp"

.namespace []
.sub "_block324"  :anon :subid("26_1303923587.707") :outer("25_1303923587.707")
.annotate 'line', 14
    nqp_get_sc_object $P326, "1303923586.596", 1
    .local pmc type_obj
    set type_obj, $P326
    get_how $P327, type_obj
    $P328 = $P327."compose"(type_obj)
    .return ($P328)
.end


.HLL "nqp"

.namespace []
.sub "_block329"  :anon :subid("27_1303923587.707") :outer("10_1303923587.707")
.annotate 'line', 25
    .const 'Sub' $P334 = "28_1303923587.707" 
    capture_lex $P334
    .lex "$?PACKAGE", $P331
    .lex "$?CLASS", $P332
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post168") :outer("27_1303923587.707")
.annotate 'line', 25
    .const 'Sub' $P330 = "27_1303923587.707" 
    .local pmc block
    set block, $P330
    .const 'Sub' $P334 = "28_1303923587.707" 
    capture_lex $P334
    $P334()
.end


.HLL "nqp"

.namespace []
.sub "_block333"  :anon :subid("28_1303923587.707") :outer("27_1303923587.707")
.annotate 'line', 25
    nqp_get_sc_object $P335, "1303923586.596", 2
    .local pmc type_obj
    set type_obj, $P335
    get_how $P336, type_obj
    $P337 = $P336."compose"(type_obj)
    .return ($P337)
.end


.HLL "nqp"

.namespace []
.sub "_block338"  :anon :subid("29_1303923587.707") :outer("10_1303923587.707")
.annotate 'line', 27
    .const 'Sub' $P343 = "30_1303923587.707" 
    capture_lex $P343
    .lex "$?PACKAGE", $P340
    .lex "$?CLASS", $P341
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post169") :outer("29_1303923587.707")
.annotate 'line', 27
    .const 'Sub' $P339 = "29_1303923587.707" 
    .local pmc block
    set block, $P339
    .const 'Sub' $P343 = "30_1303923587.707" 
    capture_lex $P343
    $P343()
.end


.HLL "nqp"

.namespace []
.sub "_block342"  :anon :subid("30_1303923587.707") :outer("29_1303923587.707")
.annotate 'line', 27
    nqp_get_sc_object $P344, "1303923586.596", 3
    .local pmc type_obj
    set type_obj, $P344
    get_how $P345, type_obj
    $P346 = $P345."compose"(type_obj)
    .return ($P346)
.end


.HLL "nqp"

.namespace []
.sub "_block347"  :anon :subid("31_1303923587.707") :outer("10_1303923587.707")
.annotate 'line', 29
    .const 'Sub' $P352 = "32_1303923587.707" 
    capture_lex $P352
    .lex "$?PACKAGE", $P349
    .lex "$?CLASS", $P350
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post170") :outer("31_1303923587.707")
.annotate 'line', 29
    .const 'Sub' $P348 = "31_1303923587.707" 
    .local pmc block
    set block, $P348
    .const 'Sub' $P352 = "32_1303923587.707" 
    capture_lex $P352
    $P352()
.end


.HLL "nqp"

.namespace []
.sub "_block351"  :anon :subid("32_1303923587.707") :outer("31_1303923587.707")
.annotate 'line', 29
    nqp_get_sc_object $P353, "1303923586.596", 4
    .local pmc type_obj
    set type_obj, $P353
    get_how $P354, type_obj
    $P355 = $P354."compose"(type_obj)
    .return ($P355)
.end


.HLL "nqp"

.namespace []
.sub "_block356"  :anon :subid("33_1303923587.707") :outer("10_1303923587.707")
.annotate 'line', 32
    .const 'Sub' $P487 = "46_1303923587.707" 
    capture_lex $P487
    .const 'Sub' $P477 = "45_1303923587.707" 
    capture_lex $P477
    .const 'Sub' $P461 = "44_1303923587.707" 
    capture_lex $P461
    .const 'Sub' $P457 = "43_1303923587.707" 
    capture_lex $P457
    .const 'Sub' $P442 = "42_1303923587.707" 
    capture_lex $P442
    .const 'Sub' $P439 = "41_1303923587.707" 
    capture_lex $P439
    .const 'Sub' $P433 = "40_1303923587.707" 
    capture_lex $P433
    .const 'Sub' $P395 = "38_1303923587.707" 
    capture_lex $P395
    .const 'Sub' $P374 = "36_1303923587.707" 
    capture_lex $P374
    .const 'Sub' $P364 = "35_1303923587.707" 
    capture_lex $P364
    .const 'Sub' $P360 = "34_1303923587.707" 
    capture_lex $P360
    .lex "$?PACKAGE", $P358
    .lex "$?CLASS", $P359
.annotate 'line', 73
    .const 'Sub' $P477 = "45_1303923587.707" 
    newclosure $P485, $P477
.annotate 'line', 32
    .return ($P485)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post171") :outer("33_1303923587.707")
.annotate 'line', 32
    .const 'Sub' $P357 = "33_1303923587.707" 
    .local pmc block
    set block, $P357
    .const 'Sub' $P487 = "46_1303923587.707" 
    capture_lex $P487
    $P487()
.end


.HLL "nqp"

.namespace []
.sub "_block486"  :anon :subid("46_1303923587.707") :outer("33_1303923587.707")
.annotate 'line', 32
    .const 'Sub' $P503 = "41_1303923587.707" 
    capture_lex $P503
    nqp_get_sc_object $P488, "1303923586.596", 5
    .local pmc type_obj
    set type_obj, $P488
    get_how $P489, type_obj
    .const 'Sub' $P490 = "34_1303923587.707" 
    $P489."add_method"(type_obj, "CREATE", $P490)
    get_how $P491, type_obj
    .const 'Sub' $P492 = "35_1303923587.707" 
    $P491."add_method"(type_obj, "bless", $P492)
    get_how $P493, type_obj
    .const 'Sub' $P494 = "36_1303923587.707" 
    $P493."add_method"(type_obj, "BUILDALL", $P494)
    get_how $P495, type_obj
    .const 'Sub' $P496 = "38_1303923587.707" 
    $P495."add_method"(type_obj, "BUILD_MAGIC", $P496)
    get_how $P497, type_obj
    .const 'Sub' $P498 = "40_1303923587.707" 
    $P497."add_method"(type_obj, "new", $P498)
    get_how $P499, type_obj
    .const 'Sub' $P500 = "41_1303923587.707" 
    new $P501, "ResizablePMCArray"
    set_dispatchees $P500, $P501
    $P499."add_method"(type_obj, "Str", $P500)
    get_how $P502, type_obj
    .const 'Sub' $P503 = "41_1303923587.707" 
    newclosure $P506, $P503
    $P502."add_parrot_vtable_mapping"(type_obj, "get_string", $P506)
    get_how $P507, type_obj
    .const 'Sub' $P508 = "42_1303923587.707" 
    $P507."add_multi_method"(type_obj, "Str", $P508)
    get_how $P509, type_obj
    .const 'Sub' $P510 = "43_1303923587.707" 
    new $P511, "ResizablePMCArray"
    set_dispatchees $P510, $P511
    $P509."add_method"(type_obj, "ACCEPTS", $P510)
    get_how $P512, type_obj
    .const 'Sub' $P513 = "44_1303923587.707" 
    $P512."add_multi_method"(type_obj, "ACCEPTS", $P513)
    get_how $P514, type_obj
    .const 'Sub' $P515 = "45_1303923587.707" 
    $P514."add_method"(type_obj, "isa", $P515)
    get_how $P516, type_obj
    $P517 = $P516."compose"(type_obj)
    .return ($P517)
.end


.HLL "nqp"

.namespace []
.sub "Str" :instanceof("DispatcherSub") :subid("41_1303923587.707") :outer("46_1303923587.707")
    .param pmc param_504
.annotate 'line', 32
    .lex "self", param_504
    multi_dispatch_over_lexical_candidates $P505
    .return ($P505)
.end


.HLL "nqp"

.namespace []
.sub "CREATE"  :subid("34_1303923587.707") :outer("33_1303923587.707")
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
.sub "bless"  :subid("35_1303923587.707") :outer("33_1303923587.707")
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
.sub "BUILDALL"  :subid("36_1303923587.707") :outer("33_1303923587.707")
    .param pmc param_375
    .param pmc param_377 :slurpy :named
.annotate 'line', 43
    .const 'Sub' $P386 = "37_1303923587.707" 
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
    .const 'Sub' $P386 = "37_1303923587.707" 
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
.sub "_block385"  :anon :subid("37_1303923587.707") :outer("36_1303923587.707")
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
.sub "BUILD_MAGIC"  :subid("38_1303923587.707") :outer("33_1303923587.707")
    .param pmc param_396
    .param pmc param_398
    .param pmc param_399 :slurpy :named
.annotate 'line', 49
    .const 'Sub' $P408 = "39_1303923587.707" 
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
    .const 'Sub' $P408 = "39_1303923587.707" 
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
.sub "_block407"  :anon :subid("39_1303923587.707") :outer("38_1303923587.707")
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
.sub "new"  :subid("40_1303923587.707") :outer("33_1303923587.707")
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
.sub "Str" :instanceof("DispatcherSub") :subid("41_1303923587.707") :outer("33_1303923587.707")
    .param pmc param_440
.annotate 'line', 59
    .lex "self", param_440
    multi_dispatch_over_lexical_candidates $P441
    .return ($P441)
.end


.HLL "nqp"

.namespace []
.sub "Str"  :subid("42_1303923587.707") :outer("33_1303923587.707")
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
.sub "" :load :init :subid("post195") :outer("42_1303923587.707")
.annotate 'line', 64
    .const 'Sub' $P442 = "42_1303923587.707" 
    .local pmc block
    set block, $P442
    find_lex $P450, "$?PACKAGE"
    get_who $P451, $P450
    set $P454, $P451["Mu"]
    unless_null $P454, vivify_196
    get_hll_global $P452, "GLOBAL"
    get_who $P453, $P452
    set $P454, $P453["Mu"]
  vivify_196:
    new $P455, "ResizablePMCArray"
    push $P455, $P454
    new $P456, "ResizablePMCArray"
    push $P456, 2
    set_sub_multisig block, $P455, $P456
.end


.HLL "nqp"

.namespace []
.sub "ACCEPTS" :instanceof("DispatcherSub") :subid("43_1303923587.707") :outer("33_1303923587.707")
    .param pmc param_458
    .param pmc param_459
.annotate 'line', 64
    .lex "self", param_458
.annotate 'line', 68
    .lex "$topic", param_459
.annotate 'line', 64
    multi_dispatch_over_lexical_candidates $P460
    .return ($P460)
.end


.HLL "nqp"

.namespace []
.sub "ACCEPTS"  :subid("44_1303923587.707") :outer("33_1303923587.707")
    .param pmc param_462
    .param pmc param_464
.annotate 'line', 69
    .lex "$self", param_462
    find_lex $P463, "$self"
    .lex "self", $P463
    .lex "$topic", param_464
.annotate 'line', 70
    find_lex $P465, "$topic"
    unless_null $P465, vivify_199
    new $P465, "Undef"
  vivify_199:
    find_lex $P466, "self"
    get_what $P467, $P466
    type_check $I468, $P465, $P467
.annotate 'line', 69
    .return ($I468)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post197") :outer("44_1303923587.707")
.annotate 'line', 69
    .const 'Sub' $P461 = "44_1303923587.707" 
    .local pmc block
    set block, $P461
    find_lex $P469, "$?PACKAGE"
    get_who $P470, $P469
    set $P473, $P470["NQPMu"]
    unless_null $P473, vivify_198
    get_hll_global $P471, "GLOBAL"
    get_who $P472, $P471
    set $P473, $P472["NQPMu"]
  vivify_198:
    null $P474
    new $P475, "ResizablePMCArray"
    push $P475, $P473
    push $P475, $P474
    new $P476, "ResizablePMCArray"
    push $P476, 2
    push $P476, 0
    set_sub_multisig block, $P475, $P476
.end


.HLL "nqp"

.namespace []
.sub "isa"  :subid("45_1303923587.707") :outer("33_1303923587.707")
    .param pmc param_478
    .param pmc param_479
.annotate 'line', 73
    .lex "self", param_478
    .lex "$type", param_479
.annotate 'line', 74
    find_lex $P480, "self"
    get_how $P481, $P480
    find_lex $P482, "self"
    find_lex $P483, "$type"
    unless_null $P483, vivify_200
    new $P483, "Undef"
  vivify_200:
    $P484 = $P481."isa"($P482, $P483)
.annotate 'line', 73
    .return ($P484)
.end


.HLL "nqp"

.namespace []
.sub "_block518"  :anon :subid("47_1303923587.707") :outer("10_1303923587.707")
.annotate 'line', 79
    .const 'Sub' $P699 = "66_1303923587.707" 
    capture_lex $P699
    .const 'Sub' $P690 = "65_1303923587.707" 
    capture_lex $P690
    .const 'Sub' $P682 = "64_1303923587.707" 
    capture_lex $P682
    .const 'Sub' $P674 = "63_1303923587.707" 
    capture_lex $P674
    .const 'Sub' $P666 = "62_1303923587.707" 
    capture_lex $P666
    .const 'Sub' $P658 = "61_1303923587.707" 
    capture_lex $P658
    .const 'Sub' $P649 = "60_1303923587.707" 
    capture_lex $P649
    .const 'Sub' $P640 = "59_1303923587.707" 
    capture_lex $P640
    .const 'Sub' $P631 = "58_1303923587.707" 
    capture_lex $P631
    .const 'Sub' $P620 = "57_1303923587.707" 
    capture_lex $P620
    .const 'Sub' $P610 = "56_1303923587.707" 
    capture_lex $P610
    .const 'Sub' $P600 = "55_1303923587.707" 
    capture_lex $P600
    .const 'Sub' $P582 = "54_1303923587.707" 
    capture_lex $P582
    .const 'Sub' $P565 = "53_1303923587.707" 
    capture_lex $P565
    .const 'Sub' $P548 = "52_1303923587.707" 
    capture_lex $P548
    .const 'Sub' $P542 = "51_1303923587.707" 
    capture_lex $P542
    .const 'Sub' $P537 = "50_1303923587.707" 
    capture_lex $P537
    .const 'Sub' $P529 = "49_1303923587.707" 
    capture_lex $P529
    .const 'Sub' $P522 = "48_1303923587.707" 
    capture_lex $P522
    .lex "$?PACKAGE", $P520
    .lex "$?CLASS", $P521
.annotate 'line', 142
    .const 'Sub' $P690 = "65_1303923587.707" 
    newclosure $P697, $P690
.annotate 'line', 79
    .return ($P697)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post201") :outer("47_1303923587.707")
.annotate 'line', 79
    .const 'Sub' $P519 = "47_1303923587.707" 
    .local pmc block
    set block, $P519
    .const 'Sub' $P699 = "66_1303923587.707" 
    capture_lex $P699
    $P699()
.end


.HLL "nqp"

.namespace []
.sub "_block698"  :anon :subid("66_1303923587.707") :outer("47_1303923587.707")
.annotate 'line', 79
    .const 'Sub' $P879 = "65_1303923587.707" 
    capture_lex $P879
    .const 'Sub' $P869 = "64_1303923587.707" 
    capture_lex $P869
    .const 'Sub' $P859 = "63_1303923587.707" 
    capture_lex $P859
    .const 'Sub' $P849 = "62_1303923587.707" 
    capture_lex $P849
    .const 'Sub' $P839 = "61_1303923587.707" 
    capture_lex $P839
    .const 'Sub' $P828 = "60_1303923587.707" 
    capture_lex $P828
    .const 'Sub' $P817 = "59_1303923587.707" 
    capture_lex $P817
    .const 'Sub' $P806 = "58_1303923587.707" 
    capture_lex $P806
    .const 'Sub' $P793 = "57_1303923587.707" 
    capture_lex $P793
    .const 'Sub' $P781 = "56_1303923587.707" 
    capture_lex $P781
    .const 'Sub' $P769 = "55_1303923587.707" 
    capture_lex $P769
    .const 'Sub' $P749 = "54_1303923587.707" 
    capture_lex $P749
    .const 'Sub' $P730 = "53_1303923587.707" 
    capture_lex $P730
    .const 'Sub' $P711 = "52_1303923587.707" 
    capture_lex $P711
    nqp_get_sc_object $P700, "1303923586.596", 6
    .local pmc type_obj
    set type_obj, $P700
    get_how $P701, type_obj
    .const 'Sub' $P702 = "48_1303923587.707" 
    $P701."add_method"(type_obj, "new", $P702)
    get_how $P703, type_obj
    .const 'Sub' $P704 = "49_1303923587.707" 
    $P703."add_method"(type_obj, "BUILD", $P704)
    get_how $P705, type_obj
    .const 'Sub' $P706 = "50_1303923587.707" 
    $P705."add_method"(type_obj, "list", $P706)
    get_how $P707, type_obj
    .const 'Sub' $P708 = "51_1303923587.707" 
    $P707."add_method"(type_obj, "hash", $P708)
    get_how $P709, type_obj
.annotate 'line', 98
    .const 'Sub' $P711 = "52_1303923587.707" 
    newclosure $P727, $P711
    $P709."add_parrot_vtable_mapping"(type_obj, "get_pmc_keyed_str", $P727)
.annotate 'line', 79
    get_how $P728, type_obj
.annotate 'line', 101
    .const 'Sub' $P730 = "53_1303923587.707" 
    newclosure $P746, $P730
    $P728."add_parrot_vtable_mapping"(type_obj, "get_pmc_keyed", $P746)
.annotate 'line', 79
    get_how $P747, type_obj
.annotate 'line', 104
    .const 'Sub' $P749 = "54_1303923587.707" 
    newclosure $P766, $P749
    $P747."add_parrot_vtable_mapping"(type_obj, "get_pmc_keyed_int", $P766)
.annotate 'line', 79
    get_how $P767, type_obj
.annotate 'line', 108
    .const 'Sub' $P769 = "55_1303923587.707" 
    newclosure $P778, $P769
    $P767."add_parrot_vtable_mapping"(type_obj, "set_pmc_keyed_str", $P778)
.annotate 'line', 79
    get_how $P779, type_obj
.annotate 'line', 111
    .const 'Sub' $P781 = "56_1303923587.707" 
    newclosure $P790, $P781
    $P779."add_parrot_vtable_mapping"(type_obj, "set_pmc_keyed", $P790)
.annotate 'line', 79
    get_how $P791, type_obj
.annotate 'line', 114
    .const 'Sub' $P793 = "57_1303923587.707" 
    newclosure $P803, $P793
    $P791."add_parrot_vtable_mapping"(type_obj, "set_pmc_keyed_int", $P803)
.annotate 'line', 79
    get_how $P804, type_obj
.annotate 'line', 118
    .const 'Sub' $P806 = "58_1303923587.707" 
    newclosure $P814, $P806
    $P804."add_parrot_vtable_mapping"(type_obj, "exists_keyed", $P814)
.annotate 'line', 79
    get_how $P815, type_obj
.annotate 'line', 121
    .const 'Sub' $P817 = "59_1303923587.707" 
    newclosure $P825, $P817
    $P815."add_parrot_vtable_mapping"(type_obj, "exists_keyed_str", $P825)
.annotate 'line', 79
    get_how $P826, type_obj
.annotate 'line', 124
    .const 'Sub' $P828 = "60_1303923587.707" 
    newclosure $P836, $P828
    $P826."add_parrot_vtable_mapping"(type_obj, "exists_keyed_int", $P836)
.annotate 'line', 79
    get_how $P837, type_obj
.annotate 'line', 128
    .const 'Sub' $P839 = "61_1303923587.707" 
    newclosure $P846, $P839
    $P837."add_parrot_vtable_mapping"(type_obj, "delete_keyed", $P846)
.annotate 'line', 79
    get_how $P847, type_obj
.annotate 'line', 131
    .const 'Sub' $P849 = "62_1303923587.707" 
    newclosure $P856, $P849
    $P847."add_parrot_vtable_mapping"(type_obj, "delete_keyed_str", $P856)
.annotate 'line', 79
    get_how $P857, type_obj
.annotate 'line', 134
    .const 'Sub' $P859 = "63_1303923587.707" 
    newclosure $P866, $P859
    $P857."add_parrot_vtable_mapping"(type_obj, "delete_keyed_int", $P866)
.annotate 'line', 79
    get_how $P867, type_obj
.annotate 'line', 138
    .const 'Sub' $P869 = "64_1303923587.707" 
    newclosure $P876, $P869
    $P867."add_parrot_vtable_mapping"(type_obj, "unshift_pmc", $P876)
.annotate 'line', 79
    get_how $P877, type_obj
.annotate 'line', 142
    .const 'Sub' $P879 = "65_1303923587.707" 
    newclosure $P886, $P879
    $P877."add_parrot_vtable_mapping"(type_obj, "push_pmc", $P886)
.annotate 'line', 79
    get_how $P887, type_obj
    $P888 = $P887."compose"(type_obj)
    .return ($P888)
.end


.HLL "nqp"

.namespace []
.sub "_block710"  :anon :subid("52_1303923587.707") :outer("66_1303923587.707")
    .param pmc param_712
    .param pmc param_713
.annotate 'line', 98
    .lex "self", param_712
    .lex "$key", param_713
.annotate 'line', 99
    find_lex $P719, "$key"
    unless_null $P719, vivify_202
    new $P719, "Undef"
  vivify_202:
    find_lex $P716, "self"
    find_lex $P717, "$?CLASS"
    getattribute $P718, $P716, $P717, "%!hash"
    unless_null $P718, vivify_203
    $P718 = root_new ['parrot';'Hash']
  vivify_203:
    exists $I720, $P718[$P719]
    if $I720, if_715
    null $P726
    set $P714, $P726
    goto if_715_end
  if_715:
    find_lex $P721, "$key"
    unless_null $P721, vivify_204
    new $P721, "Undef"
  vivify_204:
    find_lex $P722, "self"
    find_lex $P723, "$?CLASS"
    getattribute $P724, $P722, $P723, "%!hash"
    unless_null $P724, vivify_205
    $P724 = root_new ['parrot';'Hash']
  vivify_205:
    set $P725, $P724[$P721]
    unless_null $P725, vivify_206
    new $P725, "Undef"
  vivify_206:
    set $P714, $P725
  if_715_end:
.annotate 'line', 98
    .return ($P714)
.end


.HLL "nqp"

.namespace []
.sub "_block729"  :anon :subid("53_1303923587.707") :outer("66_1303923587.707")
    .param pmc param_731
    .param pmc param_732
.annotate 'line', 101
    .lex "self", param_731
    .lex "$key", param_732
.annotate 'line', 102
    find_lex $P738, "$key"
    unless_null $P738, vivify_207
    new $P738, "Undef"
  vivify_207:
    find_lex $P735, "self"
    find_lex $P736, "$?CLASS"
    getattribute $P737, $P735, $P736, "%!hash"
    unless_null $P737, vivify_208
    $P737 = root_new ['parrot';'Hash']
  vivify_208:
    exists $I739, $P737[$P738]
    if $I739, if_734
    null $P745
    set $P733, $P745
    goto if_734_end
  if_734:
    find_lex $P740, "$key"
    unless_null $P740, vivify_209
    new $P740, "Undef"
  vivify_209:
    find_lex $P741, "self"
    find_lex $P742, "$?CLASS"
    getattribute $P743, $P741, $P742, "%!hash"
    unless_null $P743, vivify_210
    $P743 = root_new ['parrot';'Hash']
  vivify_210:
    set $P744, $P743[$P740]
    unless_null $P744, vivify_211
    new $P744, "Undef"
  vivify_211:
    set $P733, $P744
  if_734_end:
.annotate 'line', 101
    .return ($P733)
.end


.HLL "nqp"

.namespace []
.sub "_block748"  :anon :subid("54_1303923587.707") :outer("66_1303923587.707")
    .param pmc param_750
    .param pmc param_751
.annotate 'line', 104
    .lex "self", param_750
    .lex "$key", param_751
.annotate 'line', 105
    find_lex $P757, "$key"
    unless_null $P757, vivify_212
    new $P757, "Undef"
  vivify_212:
    find_lex $P754, "self"
    find_lex $P755, "$?CLASS"
    getattribute $P756, $P754, $P755, "@!array"
    unless_null $P756, vivify_213
    $P756 = root_new ['parrot';'ResizablePMCArray']
  vivify_213:
    exists $I758, $P756[$P757]
    if $I758, if_753
    null $P765
    set $P752, $P765
    goto if_753_end
  if_753:
    find_lex $P759, "$key"
    unless_null $P759, vivify_214
    new $P759, "Undef"
  vivify_214:
    set $I760, $P759
    find_lex $P761, "self"
    find_lex $P762, "$?CLASS"
    getattribute $P763, $P761, $P762, "@!array"
    unless_null $P763, vivify_215
    $P763 = root_new ['parrot';'ResizablePMCArray']
  vivify_215:
    set $P764, $P763[$I760]
    unless_null $P764, vivify_216
    new $P764, "Undef"
  vivify_216:
    set $P752, $P764
  if_753_end:
.annotate 'line', 104
    .return ($P752)
.end


.HLL "nqp"

.namespace []
.sub "_block768"  :anon :subid("55_1303923587.707") :outer("66_1303923587.707")
    .param pmc param_770
    .param pmc param_771
    .param pmc param_772
.annotate 'line', 108
    .lex "self", param_770
    .lex "$key", param_771
    .lex "$value", param_772
.annotate 'line', 109
    find_lex $P773, "$value"
    unless_null $P773, vivify_217
    new $P773, "Undef"
  vivify_217:
    find_lex $P774, "$key"
    unless_null $P774, vivify_218
    new $P774, "Undef"
  vivify_218:
    find_lex $P775, "self"
    find_lex $P776, "$?CLASS"
    getattribute $P777, $P775, $P776, "%!hash"
    unless_null $P777, vivify_219
    $P777 = root_new ['parrot';'Hash']
    setattribute $P775, $P776, "%!hash", $P777
  vivify_219:
    set $P777[$P774], $P773
.annotate 'line', 108
    .return ($P773)
.end


.HLL "nqp"

.namespace []
.sub "_block780"  :anon :subid("56_1303923587.707") :outer("66_1303923587.707")
    .param pmc param_782
    .param pmc param_783
    .param pmc param_784
.annotate 'line', 111
    .lex "self", param_782
    .lex "$key", param_783
    .lex "$value", param_784
.annotate 'line', 112
    find_lex $P785, "$value"
    unless_null $P785, vivify_220
    new $P785, "Undef"
  vivify_220:
    find_lex $P786, "$key"
    unless_null $P786, vivify_221
    new $P786, "Undef"
  vivify_221:
    find_lex $P787, "self"
    find_lex $P788, "$?CLASS"
    getattribute $P789, $P787, $P788, "%!hash"
    unless_null $P789, vivify_222
    $P789 = root_new ['parrot';'Hash']
    setattribute $P787, $P788, "%!hash", $P789
  vivify_222:
    set $P789[$P786], $P785
.annotate 'line', 111
    .return ($P785)
.end


.HLL "nqp"

.namespace []
.sub "_block792"  :anon :subid("57_1303923587.707") :outer("66_1303923587.707")
    .param pmc param_794
    .param pmc param_795
    .param pmc param_796
.annotate 'line', 114
    .lex "self", param_794
    .lex "$key", param_795
    .lex "$value", param_796
.annotate 'line', 115
    find_lex $P797, "$value"
    unless_null $P797, vivify_223
    new $P797, "Undef"
  vivify_223:
    find_lex $P798, "$key"
    unless_null $P798, vivify_224
    new $P798, "Undef"
  vivify_224:
    set $I799, $P798
    find_lex $P800, "self"
    find_lex $P801, "$?CLASS"
    getattribute $P802, $P800, $P801, "@!array"
    unless_null $P802, vivify_225
    $P802 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P800, $P801, "@!array", $P802
  vivify_225:
    set $P802[$I799], $P797
.annotate 'line', 114
    .return ($P797)
.end


.HLL "nqp"

.namespace []
.sub "_block805"  :anon :subid("58_1303923587.707") :outer("66_1303923587.707")
    .param pmc param_807
    .param pmc param_808
.annotate 'line', 118
    .lex "self", param_807
    .lex "$key", param_808
.annotate 'line', 119
    find_lex $P812, "$key"
    unless_null $P812, vivify_226
    new $P812, "Undef"
  vivify_226:
    find_lex $P809, "self"
    find_lex $P810, "$?CLASS"
    getattribute $P811, $P809, $P810, "%!hash"
    unless_null $P811, vivify_227
    $P811 = root_new ['parrot';'Hash']
  vivify_227:
    exists $I813, $P811[$P812]
.annotate 'line', 118
    .return ($I813)
.end


.HLL "nqp"

.namespace []
.sub "_block816"  :anon :subid("59_1303923587.707") :outer("66_1303923587.707")
    .param pmc param_818
    .param pmc param_819
.annotate 'line', 121
    .lex "self", param_818
    .lex "$key", param_819
.annotate 'line', 122
    find_lex $P823, "$key"
    unless_null $P823, vivify_228
    new $P823, "Undef"
  vivify_228:
    find_lex $P820, "self"
    find_lex $P821, "$?CLASS"
    getattribute $P822, $P820, $P821, "%!hash"
    unless_null $P822, vivify_229
    $P822 = root_new ['parrot';'Hash']
  vivify_229:
    exists $I824, $P822[$P823]
.annotate 'line', 121
    .return ($I824)
.end


.HLL "nqp"

.namespace []
.sub "_block827"  :anon :subid("60_1303923587.707") :outer("66_1303923587.707")
    .param pmc param_829
    .param pmc param_830
.annotate 'line', 124
    .lex "self", param_829
    .lex "$key", param_830
.annotate 'line', 125
    find_lex $P834, "$key"
    unless_null $P834, vivify_230
    new $P834, "Undef"
  vivify_230:
    find_lex $P831, "self"
    find_lex $P832, "$?CLASS"
    getattribute $P833, $P831, $P832, "@!array"
    unless_null $P833, vivify_231
    $P833 = root_new ['parrot';'ResizablePMCArray']
  vivify_231:
    exists $I835, $P833[$P834]
.annotate 'line', 124
    .return ($I835)
.end


.HLL "nqp"

.namespace []
.sub "_block838"  :anon :subid("61_1303923587.707") :outer("66_1303923587.707")
    .param pmc param_840
    .param pmc param_841
.annotate 'line', 128
    .lex "self", param_840
    .lex "$key", param_841
.annotate 'line', 129
    find_lex $P845, "$key"
    unless_null $P845, vivify_232
    new $P845, "Undef"
  vivify_232:
    find_lex $P842, "self"
    find_lex $P843, "$?CLASS"
    getattribute $P844, $P842, $P843, "%!hash"
    unless_null $P844, vivify_233
    $P844 = root_new ['parrot';'Hash']
  vivify_233:
    delete $P844[$P845]
.annotate 'line', 128
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block848"  :anon :subid("62_1303923587.707") :outer("66_1303923587.707")
    .param pmc param_850
    .param pmc param_851
.annotate 'line', 131
    .lex "self", param_850
    .lex "$key", param_851
.annotate 'line', 132
    find_lex $P855, "$key"
    unless_null $P855, vivify_234
    new $P855, "Undef"
  vivify_234:
    find_lex $P852, "self"
    find_lex $P853, "$?CLASS"
    getattribute $P854, $P852, $P853, "%!hash"
    unless_null $P854, vivify_235
    $P854 = root_new ['parrot';'Hash']
  vivify_235:
    delete $P854[$P855]
.annotate 'line', 131
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block858"  :anon :subid("63_1303923587.707") :outer("66_1303923587.707")
    .param pmc param_860
    .param pmc param_861
.annotate 'line', 134
    .lex "self", param_860
    .lex "$key", param_861
.annotate 'line', 135
    find_lex $P865, "$key"
    unless_null $P865, vivify_236
    new $P865, "Undef"
  vivify_236:
    find_lex $P862, "self"
    find_lex $P863, "$?CLASS"
    getattribute $P864, $P862, $P863, "@!array"
    unless_null $P864, vivify_237
    $P864 = root_new ['parrot';'ResizablePMCArray']
  vivify_237:
    delete $P864[$P865]
.annotate 'line', 134
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block868"  :anon :subid("64_1303923587.707") :outer("66_1303923587.707")
    .param pmc param_870
    .param pmc param_871
.annotate 'line', 138
    .lex "self", param_870
    .lex "$value", param_871
.annotate 'line', 139
    find_lex $P872, "self"
    find_lex $P873, "$?CLASS"
    getattribute $P874, $P872, $P873, "@!array"
    unless_null $P874, vivify_238
    $P874 = root_new ['parrot';'ResizablePMCArray']
  vivify_238:
    find_lex $P875, "$value"
    unless_null $P875, vivify_239
    new $P875, "Undef"
  vivify_239:
    unshift $P874, $P875
.annotate 'line', 138
    .return ($P874)
.end


.HLL "nqp"

.namespace []
.sub "_block878"  :anon :subid("65_1303923587.707") :outer("66_1303923587.707")
    .param pmc param_880
    .param pmc param_881
.annotate 'line', 142
    .lex "self", param_880
    .lex "$value", param_881
.annotate 'line', 143
    find_lex $P882, "self"
    find_lex $P883, "$?CLASS"
    getattribute $P884, $P882, $P883, "@!array"
    unless_null $P884, vivify_240
    $P884 = root_new ['parrot';'ResizablePMCArray']
  vivify_240:
    find_lex $P885, "$value"
    unless_null $P885, vivify_241
    new $P885, "Undef"
  vivify_241:
    unshift $P884, $P885
.annotate 'line', 142
    .return ($P884)
.end


.HLL "nqp"

.namespace []
.sub "new"  :subid("48_1303923587.707") :outer("47_1303923587.707")
    .param pmc param_523
.annotate 'line', 83
    .lex "self", param_523
.annotate 'line', 84
    new $P524, "Undef"
    .lex "$n", $P524
    find_lex $P525, "self"
    $P526 = $P525."CREATE"()
    store_lex "$n", $P526
.annotate 'line', 85
    find_lex $P527, "$n"
    unless_null $P527, vivify_242
    new $P527, "Undef"
  vivify_242:
    $P527."BUILD"()
    find_lex $P528, "$n"
    unless_null $P528, vivify_243
    new $P528, "Undef"
  vivify_243:
.annotate 'line', 83
    .return ($P528)
.end


.HLL "nqp"

.namespace []
.sub "BUILD"  :subid("49_1303923587.707") :outer("47_1303923587.707")
    .param pmc param_530
.annotate 'line', 89
    .lex "self", param_530
.annotate 'line', 90
    new $P531, "ResizablePMCArray"
    find_lex $P532, "self"
    find_lex $P533, "$?CLASS"
    setattribute $P532, $P533, "@!array", $P531
.annotate 'line', 91
    new $P534, "Hash"
    find_lex $P535, "self"
    find_lex $P536, "$?CLASS"
    setattribute $P535, $P536, "%!hash", $P534
.annotate 'line', 89
    .return ($P534)
.end


.HLL "nqp"

.namespace []
.sub "list"  :subid("50_1303923587.707") :outer("47_1303923587.707")
    .param pmc param_538
.annotate 'line', 94
    .lex "self", param_538
    find_lex $P539, "self"
    find_lex $P540, "$?CLASS"
    getattribute $P541, $P539, $P540, "@!array"
    unless_null $P541, vivify_244
    $P541 = root_new ['parrot';'ResizablePMCArray']
  vivify_244:
    .return ($P541)
.end


.HLL "nqp"

.namespace []
.sub "hash"  :subid("51_1303923587.707") :outer("47_1303923587.707")
    .param pmc param_543
.annotate 'line', 96
    .lex "self", param_543
    find_lex $P544, "self"
    find_lex $P545, "$?CLASS"
    getattribute $P546, $P544, $P545, "%!hash"
    unless_null $P546, vivify_245
    $P546 = root_new ['parrot';'Hash']
  vivify_245:
    .return ($P546)
.end


.HLL "nqp"

.namespace []
.sub "_block547"  :anon :subid("52_1303923587.707") :outer("47_1303923587.707")
    .param pmc param_549
    .param pmc param_550
.annotate 'line', 98
    .lex "self", param_549
    .lex "$key", param_550
.annotate 'line', 99
    find_lex $P556, "$key"
    unless_null $P556, vivify_246
    new $P556, "Undef"
  vivify_246:
    find_lex $P553, "self"
    find_lex $P554, "$?CLASS"
    getattribute $P555, $P553, $P554, "%!hash"
    unless_null $P555, vivify_247
    $P555 = root_new ['parrot';'Hash']
  vivify_247:
    exists $I557, $P555[$P556]
    if $I557, if_552
    null $P563
    set $P551, $P563
    goto if_552_end
  if_552:
    find_lex $P558, "$key"
    unless_null $P558, vivify_248
    new $P558, "Undef"
  vivify_248:
    find_lex $P559, "self"
    find_lex $P560, "$?CLASS"
    getattribute $P561, $P559, $P560, "%!hash"
    unless_null $P561, vivify_249
    $P561 = root_new ['parrot';'Hash']
  vivify_249:
    set $P562, $P561[$P558]
    unless_null $P562, vivify_250
    new $P562, "Undef"
  vivify_250:
    set $P551, $P562
  if_552_end:
.annotate 'line', 98
    .return ($P551)
.end


.HLL "nqp"

.namespace []
.sub "_block564"  :anon :subid("53_1303923587.707") :outer("47_1303923587.707")
    .param pmc param_566
    .param pmc param_567
.annotate 'line', 101
    .lex "self", param_566
    .lex "$key", param_567
.annotate 'line', 102
    find_lex $P573, "$key"
    unless_null $P573, vivify_251
    new $P573, "Undef"
  vivify_251:
    find_lex $P570, "self"
    find_lex $P571, "$?CLASS"
    getattribute $P572, $P570, $P571, "%!hash"
    unless_null $P572, vivify_252
    $P572 = root_new ['parrot';'Hash']
  vivify_252:
    exists $I574, $P572[$P573]
    if $I574, if_569
    null $P580
    set $P568, $P580
    goto if_569_end
  if_569:
    find_lex $P575, "$key"
    unless_null $P575, vivify_253
    new $P575, "Undef"
  vivify_253:
    find_lex $P576, "self"
    find_lex $P577, "$?CLASS"
    getattribute $P578, $P576, $P577, "%!hash"
    unless_null $P578, vivify_254
    $P578 = root_new ['parrot';'Hash']
  vivify_254:
    set $P579, $P578[$P575]
    unless_null $P579, vivify_255
    new $P579, "Undef"
  vivify_255:
    set $P568, $P579
  if_569_end:
.annotate 'line', 101
    .return ($P568)
.end


.HLL "nqp"

.namespace []
.sub "_block581"  :anon :subid("54_1303923587.707") :outer("47_1303923587.707")
    .param pmc param_583
    .param pmc param_584
.annotate 'line', 104
    .lex "self", param_583
    .lex "$key", param_584
.annotate 'line', 105
    find_lex $P590, "$key"
    unless_null $P590, vivify_256
    new $P590, "Undef"
  vivify_256:
    find_lex $P587, "self"
    find_lex $P588, "$?CLASS"
    getattribute $P589, $P587, $P588, "@!array"
    unless_null $P589, vivify_257
    $P589 = root_new ['parrot';'ResizablePMCArray']
  vivify_257:
    exists $I591, $P589[$P590]
    if $I591, if_586
    null $P598
    set $P585, $P598
    goto if_586_end
  if_586:
    find_lex $P592, "$key"
    unless_null $P592, vivify_258
    new $P592, "Undef"
  vivify_258:
    set $I593, $P592
    find_lex $P594, "self"
    find_lex $P595, "$?CLASS"
    getattribute $P596, $P594, $P595, "@!array"
    unless_null $P596, vivify_259
    $P596 = root_new ['parrot';'ResizablePMCArray']
  vivify_259:
    set $P597, $P596[$I593]
    unless_null $P597, vivify_260
    new $P597, "Undef"
  vivify_260:
    set $P585, $P597
  if_586_end:
.annotate 'line', 104
    .return ($P585)
.end


.HLL "nqp"

.namespace []
.sub "_block599"  :anon :subid("55_1303923587.707") :outer("47_1303923587.707")
    .param pmc param_601
    .param pmc param_602
    .param pmc param_603
.annotate 'line', 108
    .lex "self", param_601
    .lex "$key", param_602
    .lex "$value", param_603
.annotate 'line', 109
    find_lex $P604, "$value"
    unless_null $P604, vivify_261
    new $P604, "Undef"
  vivify_261:
    find_lex $P605, "$key"
    unless_null $P605, vivify_262
    new $P605, "Undef"
  vivify_262:
    find_lex $P606, "self"
    find_lex $P607, "$?CLASS"
    getattribute $P608, $P606, $P607, "%!hash"
    unless_null $P608, vivify_263
    $P608 = root_new ['parrot';'Hash']
    setattribute $P606, $P607, "%!hash", $P608
  vivify_263:
    set $P608[$P605], $P604
.annotate 'line', 108
    .return ($P604)
.end


.HLL "nqp"

.namespace []
.sub "_block609"  :anon :subid("56_1303923587.707") :outer("47_1303923587.707")
    .param pmc param_611
    .param pmc param_612
    .param pmc param_613
.annotate 'line', 111
    .lex "self", param_611
    .lex "$key", param_612
    .lex "$value", param_613
.annotate 'line', 112
    find_lex $P614, "$value"
    unless_null $P614, vivify_264
    new $P614, "Undef"
  vivify_264:
    find_lex $P615, "$key"
    unless_null $P615, vivify_265
    new $P615, "Undef"
  vivify_265:
    find_lex $P616, "self"
    find_lex $P617, "$?CLASS"
    getattribute $P618, $P616, $P617, "%!hash"
    unless_null $P618, vivify_266
    $P618 = root_new ['parrot';'Hash']
    setattribute $P616, $P617, "%!hash", $P618
  vivify_266:
    set $P618[$P615], $P614
.annotate 'line', 111
    .return ($P614)
.end


.HLL "nqp"

.namespace []
.sub "_block619"  :anon :subid("57_1303923587.707") :outer("47_1303923587.707")
    .param pmc param_621
    .param pmc param_622
    .param pmc param_623
.annotate 'line', 114
    .lex "self", param_621
    .lex "$key", param_622
    .lex "$value", param_623
.annotate 'line', 115
    find_lex $P624, "$value"
    unless_null $P624, vivify_267
    new $P624, "Undef"
  vivify_267:
    find_lex $P625, "$key"
    unless_null $P625, vivify_268
    new $P625, "Undef"
  vivify_268:
    set $I626, $P625
    find_lex $P627, "self"
    find_lex $P628, "$?CLASS"
    getattribute $P629, $P627, $P628, "@!array"
    unless_null $P629, vivify_269
    $P629 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P627, $P628, "@!array", $P629
  vivify_269:
    set $P629[$I626], $P624
.annotate 'line', 114
    .return ($P624)
.end


.HLL "nqp"

.namespace []
.sub "_block630"  :anon :subid("58_1303923587.707") :outer("47_1303923587.707")
    .param pmc param_632
    .param pmc param_633
.annotate 'line', 118
    .lex "self", param_632
    .lex "$key", param_633
.annotate 'line', 119
    find_lex $P637, "$key"
    unless_null $P637, vivify_270
    new $P637, "Undef"
  vivify_270:
    find_lex $P634, "self"
    find_lex $P635, "$?CLASS"
    getattribute $P636, $P634, $P635, "%!hash"
    unless_null $P636, vivify_271
    $P636 = root_new ['parrot';'Hash']
  vivify_271:
    exists $I638, $P636[$P637]
.annotate 'line', 118
    .return ($I638)
.end


.HLL "nqp"

.namespace []
.sub "_block639"  :anon :subid("59_1303923587.707") :outer("47_1303923587.707")
    .param pmc param_641
    .param pmc param_642
.annotate 'line', 121
    .lex "self", param_641
    .lex "$key", param_642
.annotate 'line', 122
    find_lex $P646, "$key"
    unless_null $P646, vivify_272
    new $P646, "Undef"
  vivify_272:
    find_lex $P643, "self"
    find_lex $P644, "$?CLASS"
    getattribute $P645, $P643, $P644, "%!hash"
    unless_null $P645, vivify_273
    $P645 = root_new ['parrot';'Hash']
  vivify_273:
    exists $I647, $P645[$P646]
.annotate 'line', 121
    .return ($I647)
.end


.HLL "nqp"

.namespace []
.sub "_block648"  :anon :subid("60_1303923587.707") :outer("47_1303923587.707")
    .param pmc param_650
    .param pmc param_651
.annotate 'line', 124
    .lex "self", param_650
    .lex "$key", param_651
.annotate 'line', 125
    find_lex $P655, "$key"
    unless_null $P655, vivify_274
    new $P655, "Undef"
  vivify_274:
    find_lex $P652, "self"
    find_lex $P653, "$?CLASS"
    getattribute $P654, $P652, $P653, "@!array"
    unless_null $P654, vivify_275
    $P654 = root_new ['parrot';'ResizablePMCArray']
  vivify_275:
    exists $I656, $P654[$P655]
.annotate 'line', 124
    .return ($I656)
.end


.HLL "nqp"

.namespace []
.sub "_block657"  :anon :subid("61_1303923587.707") :outer("47_1303923587.707")
    .param pmc param_659
    .param pmc param_660
.annotate 'line', 128
    .lex "self", param_659
    .lex "$key", param_660
.annotate 'line', 129
    find_lex $P664, "$key"
    unless_null $P664, vivify_276
    new $P664, "Undef"
  vivify_276:
    find_lex $P661, "self"
    find_lex $P662, "$?CLASS"
    getattribute $P663, $P661, $P662, "%!hash"
    unless_null $P663, vivify_277
    $P663 = root_new ['parrot';'Hash']
  vivify_277:
    delete $P663[$P664]
.annotate 'line', 128
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block665"  :anon :subid("62_1303923587.707") :outer("47_1303923587.707")
    .param pmc param_667
    .param pmc param_668
.annotate 'line', 131
    .lex "self", param_667
    .lex "$key", param_668
.annotate 'line', 132
    find_lex $P672, "$key"
    unless_null $P672, vivify_278
    new $P672, "Undef"
  vivify_278:
    find_lex $P669, "self"
    find_lex $P670, "$?CLASS"
    getattribute $P671, $P669, $P670, "%!hash"
    unless_null $P671, vivify_279
    $P671 = root_new ['parrot';'Hash']
  vivify_279:
    delete $P671[$P672]
.annotate 'line', 131
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block673"  :anon :subid("63_1303923587.707") :outer("47_1303923587.707")
    .param pmc param_675
    .param pmc param_676
.annotate 'line', 134
    .lex "self", param_675
    .lex "$key", param_676
.annotate 'line', 135
    find_lex $P680, "$key"
    unless_null $P680, vivify_280
    new $P680, "Undef"
  vivify_280:
    find_lex $P677, "self"
    find_lex $P678, "$?CLASS"
    getattribute $P679, $P677, $P678, "@!array"
    unless_null $P679, vivify_281
    $P679 = root_new ['parrot';'ResizablePMCArray']
  vivify_281:
    delete $P679[$P680]
.annotate 'line', 134
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block681"  :anon :subid("64_1303923587.707") :outer("47_1303923587.707")
    .param pmc param_683
    .param pmc param_684
.annotate 'line', 138
    .lex "self", param_683
    .lex "$value", param_684
.annotate 'line', 139
    find_lex $P685, "self"
    find_lex $P686, "$?CLASS"
    getattribute $P687, $P685, $P686, "@!array"
    unless_null $P687, vivify_282
    $P687 = root_new ['parrot';'ResizablePMCArray']
  vivify_282:
    find_lex $P688, "$value"
    unless_null $P688, vivify_283
    new $P688, "Undef"
  vivify_283:
    unshift $P687, $P688
.annotate 'line', 138
    .return ($P687)
.end


.HLL "nqp"

.namespace []
.sub "_block689"  :anon :subid("65_1303923587.707") :outer("47_1303923587.707")
    .param pmc param_691
    .param pmc param_692
.annotate 'line', 142
    .lex "self", param_691
    .lex "$value", param_692
.annotate 'line', 143
    find_lex $P693, "self"
    find_lex $P694, "$?CLASS"
    getattribute $P695, $P693, $P694, "@!array"
    unless_null $P695, vivify_284
    $P695 = root_new ['parrot';'ResizablePMCArray']
  vivify_284:
    find_lex $P696, "$value"
    unless_null $P696, vivify_285
    new $P696, "Undef"
  vivify_285:
    unshift $P695, $P696
.annotate 'line', 142
    .return ($P695)
.end


.HLL "nqp"

.namespace []
.sub "_block902" :load :anon :subid("67_1303923587.707")
.annotate 'line', 1
    .const 'Sub' $P904 = "10_1303923587.707" 
    $P905 = $P904()
    .return ($P905)
.end

