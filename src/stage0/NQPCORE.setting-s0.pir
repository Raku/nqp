
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1303603573.955")
.annotate 'line', 0
    .const 'Sub' $P447 = "45_1303603573.955" 
    capture_lex $P447
    .const 'Sub' $P291 = "31_1303603573.955" 
    capture_lex $P291
    .const 'Sub' $P282 = "29_1303603573.955" 
    capture_lex $P282
    .const 'Sub' $P273 = "27_1303603573.955" 
    capture_lex $P273
    .const 'Sub' $P264 = "25_1303603573.955" 
    capture_lex $P264
    .const 'Sub' $P250 = "24_1303603573.955" 
    capture_lex $P250
    .const 'Sub' $P228 = "23_1303603573.955" 
    capture_lex $P228
    .const 'Sub' $P221 = "22_1303603573.955" 
    capture_lex $P221
    .const 'Sub' $P133 = "20_1303603573.955" 
    capture_lex $P133
    .const 'Sub' $P100 = "18_1303603573.955" 
    capture_lex $P100
    .const 'Sub' $P95 = "17_1303603573.955" 
    capture_lex $P95
    .const 'Sub' $P81 = "15_1303603573.955" 
    capture_lex $P81
    .const 'Sub' $P69 = "14_1303603573.955" 
    capture_lex $P69
    .const 'Sub' $P58 = "13_1303603573.955" 
    capture_lex $P58
    .const 'Sub' $P53 = "12_1303603573.955" 
    capture_lex $P53
    .const 'Sub' $P20 = "11_1303603573.955" 
    capture_lex $P20
.annotate 'line', 1
    .lex "GLOBALish", $P13
    .lex "$?PACKAGE", $P14
    .lex "int", $P15
    .lex "num", $P16
    .lex "str", $P17
    .lex "NQPMu", $P18
    .lex "NQPCapture", $P19
.annotate 'line', 142
    .const 'Sub' $P20 = "11_1303603573.955" 
    newclosure $P52, $P20
    .lex "open", $P52
.annotate 'line', 154
    .const 'Sub' $P53 = "12_1303603573.955" 
    newclosure $P57, $P53
    .lex "close", $P57
.annotate 'line', 162
    .const 'Sub' $P58 = "13_1303603573.955" 
    newclosure $P68, $P58
    .lex "slurp", $P68
.annotate 'line', 174
    .const 'Sub' $P69 = "14_1303603573.955" 
    newclosure $P80, $P69
    .lex "spew", $P80
.annotate 'line', 181
    .const 'Sub' $P81 = "15_1303603573.955" 
    newclosure $P94, $P81
    .lex "print", $P94
.annotate 'line', 188
    .const 'Sub' $P95 = "17_1303603573.955" 
    newclosure $P99, $P95
    .lex "say", $P99
.annotate 'line', 206
    .const 'Sub' $P100 = "18_1303603573.955" 
    newclosure $P132, $P100
    .lex "match", $P132
.annotate 'line', 228
    .const 'Sub' $P133 = "20_1303603573.955" 
    newclosure $P219, $P133
    .lex "subst", $P219
.annotate 'line', 254
    new $P220, "Undef"
    .lex "$test_counter", $P220
.annotate 'line', 256
    .const 'Sub' $P221 = "22_1303603573.955" 
    newclosure $P227, $P221
    .lex "plan", $P227
.annotate 'line', 260
    .const 'Sub' $P228 = "23_1303603573.955" 
    newclosure $P249, $P228
    .lex "ok", $P249
.annotate 'line', 275
    .const 'Sub' $P250 = "24_1303603573.955" 
    newclosure $P262, $P250
    .lex "skip", $P262
.annotate 'line', 9
    .const 'Sub' $P264 = "25_1303603573.955" 
    capture_lex $P264
    $P264()
.annotate 'line', 11
    .const 'Sub' $P273 = "27_1303603573.955" 
    capture_lex $P273
    $P273()
.annotate 'line', 13
    .const 'Sub' $P282 = "29_1303603573.955" 
    capture_lex $P282
    $P282()
.annotate 'line', 16
    .const 'Sub' $P291 = "31_1303603573.955" 
    capture_lex $P291
    $P291()
.annotate 'line', 63
    .const 'Sub' $P447 = "45_1303603573.955" 
    capture_lex $P447
    $P447()
    find_lex $P825, "open"
    find_lex $P826, "close"
    find_lex $P827, "slurp"
    find_lex $P828, "spew"
    find_lex $P829, "print"
    find_lex $P830, "say"
    find_lex $P831, "match"
    find_lex $P832, "subst"
.annotate 'line', 254
    new $P833, "Integer"
    assign $P833, 0
    store_lex "$test_counter", $P833
    find_lex $P834, "plan"
    find_lex $P835, "ok"
    find_lex $P836, "skip"
    new $P837, "Integer"
    assign $P837, 1
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 1
    .return ()
    .const 'Sub' $P839 = "65_1303603573.955" 
    .return ($P839)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post66") :outer("10_1303603573.955")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1303603573.955" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P843, "1303603572.89"
    isnull $I844, $P843
    if $I844, if_842
    .const 'Sub' $P948 = "10_1303603573.955" 
    $P949 = $P948."get_lexinfo"()
    nqp_get_sc_object $P950, "1303603572.89", 0
    $P949."set_static_lexpad_value"("GLOBALish", $P950)
    .const 'Sub' $P951 = "10_1303603573.955" 
    $P952 = $P951."get_lexinfo"()
    $P952."finish_static_lexpad"()
    .const 'Sub' $P953 = "10_1303603573.955" 
    $P954 = $P953."get_lexinfo"()
    nqp_get_sc_object $P955, "1303603572.89", 0
    $P954."set_static_lexpad_value"("$?PACKAGE", $P955)
    .const 'Sub' $P956 = "10_1303603573.955" 
    $P957 = $P956."get_lexinfo"()
    $P957."finish_static_lexpad"()
    .const 'Sub' $P958 = "10_1303603573.955" 
    $P959 = $P958."get_lexinfo"()
    nqp_get_sc_object $P960, "1303603572.89", 1
    $P959."set_static_lexpad_value"("int", $P960)
    .const 'Sub' $P961 = "10_1303603573.955" 
    $P962 = $P961."get_lexinfo"()
    $P962."finish_static_lexpad"()
    .const 'Sub' $P963 = "25_1303603573.955" 
    $P964 = $P963."get_lexinfo"()
    nqp_get_sc_object $P965, "1303603572.89", 1
    $P964."set_static_lexpad_value"("$?PACKAGE", $P965)
    .const 'Sub' $P966 = "25_1303603573.955" 
    $P967 = $P966."get_lexinfo"()
    $P967."finish_static_lexpad"()
    .const 'Sub' $P968 = "25_1303603573.955" 
    $P969 = $P968."get_lexinfo"()
    nqp_get_sc_object $P970, "1303603572.89", 1
    $P969."set_static_lexpad_value"("$?CLASS", $P970)
    .const 'Sub' $P971 = "25_1303603573.955" 
    $P972 = $P971."get_lexinfo"()
    $P972."finish_static_lexpad"()
    .const 'Sub' $P973 = "10_1303603573.955" 
    $P974 = $P973."get_lexinfo"()
    nqp_get_sc_object $P975, "1303603572.89", 2
    $P974."set_static_lexpad_value"("num", $P975)
    .const 'Sub' $P976 = "10_1303603573.955" 
    $P977 = $P976."get_lexinfo"()
    $P977."finish_static_lexpad"()
    .const 'Sub' $P978 = "27_1303603573.955" 
    $P979 = $P978."get_lexinfo"()
    nqp_get_sc_object $P980, "1303603572.89", 2
    $P979."set_static_lexpad_value"("$?PACKAGE", $P980)
    .const 'Sub' $P981 = "27_1303603573.955" 
    $P982 = $P981."get_lexinfo"()
    $P982."finish_static_lexpad"()
    .const 'Sub' $P983 = "27_1303603573.955" 
    $P984 = $P983."get_lexinfo"()
    nqp_get_sc_object $P985, "1303603572.89", 2
    $P984."set_static_lexpad_value"("$?CLASS", $P985)
    .const 'Sub' $P986 = "27_1303603573.955" 
    $P987 = $P986."get_lexinfo"()
    $P987."finish_static_lexpad"()
    .const 'Sub' $P988 = "10_1303603573.955" 
    $P989 = $P988."get_lexinfo"()
    nqp_get_sc_object $P990, "1303603572.89", 3
    $P989."set_static_lexpad_value"("str", $P990)
    .const 'Sub' $P991 = "10_1303603573.955" 
    $P992 = $P991."get_lexinfo"()
    $P992."finish_static_lexpad"()
    .const 'Sub' $P993 = "29_1303603573.955" 
    $P994 = $P993."get_lexinfo"()
    nqp_get_sc_object $P995, "1303603572.89", 3
    $P994."set_static_lexpad_value"("$?PACKAGE", $P995)
    .const 'Sub' $P996 = "29_1303603573.955" 
    $P997 = $P996."get_lexinfo"()
    $P997."finish_static_lexpad"()
    .const 'Sub' $P998 = "29_1303603573.955" 
    $P999 = $P998."get_lexinfo"()
    nqp_get_sc_object $P1000, "1303603572.89", 3
    $P999."set_static_lexpad_value"("$?CLASS", $P1000)
    .const 'Sub' $P1001 = "29_1303603573.955" 
    $P1002 = $P1001."get_lexinfo"()
    $P1002."finish_static_lexpad"()
    .const 'Sub' $P1003 = "10_1303603573.955" 
    $P1004 = $P1003."get_lexinfo"()
    nqp_get_sc_object $P1005, "1303603572.89", 4
    $P1004."set_static_lexpad_value"("NQPMu", $P1005)
    .const 'Sub' $P1006 = "10_1303603573.955" 
    $P1007 = $P1006."get_lexinfo"()
    $P1007."finish_static_lexpad"()
    .const 'Sub' $P1008 = "31_1303603573.955" 
    $P1009 = $P1008."get_lexinfo"()
    nqp_get_sc_object $P1010, "1303603572.89", 4
    $P1009."set_static_lexpad_value"("$?PACKAGE", $P1010)
    .const 'Sub' $P1011 = "31_1303603573.955" 
    $P1012 = $P1011."get_lexinfo"()
    $P1012."finish_static_lexpad"()
    .const 'Sub' $P1013 = "31_1303603573.955" 
    $P1014 = $P1013."get_lexinfo"()
    nqp_get_sc_object $P1015, "1303603572.89", 4
    $P1014."set_static_lexpad_value"("$?CLASS", $P1015)
    .const 'Sub' $P1016 = "31_1303603573.955" 
    $P1017 = $P1016."get_lexinfo"()
    $P1017."finish_static_lexpad"()
    .const 'Sub' $P1018 = "10_1303603573.955" 
    $P1019 = $P1018."get_lexinfo"()
    nqp_get_sc_object $P1020, "1303603572.89", 5
    $P1019."set_static_lexpad_value"("NQPCapture", $P1020)
    .const 'Sub' $P1021 = "10_1303603573.955" 
    $P1022 = $P1021."get_lexinfo"()
    $P1022."finish_static_lexpad"()
    .const 'Sub' $P1023 = "45_1303603573.955" 
    $P1024 = $P1023."get_lexinfo"()
    nqp_get_sc_object $P1025, "1303603572.89", 5
    $P1024."set_static_lexpad_value"("$?PACKAGE", $P1025)
    .const 'Sub' $P1026 = "45_1303603573.955" 
    $P1027 = $P1026."get_lexinfo"()
    $P1027."finish_static_lexpad"()
    .const 'Sub' $P1028 = "45_1303603573.955" 
    $P1029 = $P1028."get_lexinfo"()
    nqp_get_sc_object $P1030, "1303603572.89", 5
    $P1029."set_static_lexpad_value"("$?CLASS", $P1030)
    .const 'Sub' $P1031 = "45_1303603573.955" 
    $P1032 = $P1031."get_lexinfo"()
    $P1032."finish_static_lexpad"()
    goto if_842_end
  if_842:
    nqp_dynop_setup 
    getinterp $P845
    get_class $P846, "LexPad"
    get_class $P847, "NQPLexPad"
    $P845."hll_map"($P846, $P847)
    nqp_create_sc $P848, "1303603572.89"
    .local pmc cur_sc
    set cur_sc, $P848
    get_hll_global $P849, "KnowHOW"
    $P850 = $P849."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P850, cur_sc
    nqp_set_sc_object "1303603572.89", 0, $P850
    .const 'Sub' $P851 = "10_1303603573.955" 
    $P852 = $P851."get_lexinfo"()
    nqp_get_sc_object $P853, "1303603572.89", 0
    $P852."set_static_lexpad_value"("GLOBALish", $P853)
    .const 'Sub' $P854 = "10_1303603573.955" 
    $P855 = $P854."get_lexinfo"()
    $P855."finish_static_lexpad"()
    .const 'Sub' $P856 = "10_1303603573.955" 
    $P857 = $P856."get_lexinfo"()
    nqp_get_sc_object $P858, "1303603572.89", 0
    $P857."set_static_lexpad_value"("$?PACKAGE", $P858)
    .const 'Sub' $P859 = "10_1303603573.955" 
    $P860 = $P859."get_lexinfo"()
    $P860."finish_static_lexpad"()
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P861, "ModuleLoader"
    nqp_get_sc_object $P862, "1303603572.89", 0
    $P861."load_module"("nqpmo", $P862)
    get_hll_global $P863, "NQPNativeHOW"
    $P864 = $P863."new_type"("int" :named("name"), "P6int" :named("repr"))
    nqp_set_sc_for_object $P864, cur_sc
    nqp_set_sc_object "1303603572.89", 1, $P864
    .const 'Sub' $P865 = "10_1303603573.955" 
    $P866 = $P865."get_lexinfo"()
    nqp_get_sc_object $P867, "1303603572.89", 1
    $P866."set_static_lexpad_value"("int", $P867)
    .const 'Sub' $P868 = "10_1303603573.955" 
    $P869 = $P868."get_lexinfo"()
    $P869."finish_static_lexpad"()
    .const 'Sub' $P870 = "25_1303603573.955" 
    $P871 = $P870."get_lexinfo"()
    nqp_get_sc_object $P872, "1303603572.89", 1
    $P871."set_static_lexpad_value"("$?PACKAGE", $P872)
    .const 'Sub' $P873 = "25_1303603573.955" 
    $P874 = $P873."get_lexinfo"()
    $P874."finish_static_lexpad"()
    .const 'Sub' $P875 = "25_1303603573.955" 
    $P876 = $P875."get_lexinfo"()
    nqp_get_sc_object $P877, "1303603572.89", 1
    $P876."set_static_lexpad_value"("$?CLASS", $P877)
    .const 'Sub' $P878 = "25_1303603573.955" 
    $P879 = $P878."get_lexinfo"()
    $P879."finish_static_lexpad"()
    get_hll_global $P880, "NQPNativeHOW"
    $P881 = $P880."new_type"("num" :named("name"), "P6num" :named("repr"))
    nqp_set_sc_for_object $P881, cur_sc
    nqp_set_sc_object "1303603572.89", 2, $P881
    .const 'Sub' $P882 = "10_1303603573.955" 
    $P883 = $P882."get_lexinfo"()
    nqp_get_sc_object $P884, "1303603572.89", 2
    $P883."set_static_lexpad_value"("num", $P884)
    .const 'Sub' $P885 = "10_1303603573.955" 
    $P886 = $P885."get_lexinfo"()
    $P886."finish_static_lexpad"()
    .const 'Sub' $P887 = "27_1303603573.955" 
    $P888 = $P887."get_lexinfo"()
    nqp_get_sc_object $P889, "1303603572.89", 2
    $P888."set_static_lexpad_value"("$?PACKAGE", $P889)
    .const 'Sub' $P890 = "27_1303603573.955" 
    $P891 = $P890."get_lexinfo"()
    $P891."finish_static_lexpad"()
    .const 'Sub' $P892 = "27_1303603573.955" 
    $P893 = $P892."get_lexinfo"()
    nqp_get_sc_object $P894, "1303603572.89", 2
    $P893."set_static_lexpad_value"("$?CLASS", $P894)
    .const 'Sub' $P895 = "27_1303603573.955" 
    $P896 = $P895."get_lexinfo"()
    $P896."finish_static_lexpad"()
    get_hll_global $P897, "NQPNativeHOW"
    $P898 = $P897."new_type"("str" :named("name"), "P6str" :named("repr"))
    nqp_set_sc_for_object $P898, cur_sc
    nqp_set_sc_object "1303603572.89", 3, $P898
    .const 'Sub' $P899 = "10_1303603573.955" 
    $P900 = $P899."get_lexinfo"()
    nqp_get_sc_object $P901, "1303603572.89", 3
    $P900."set_static_lexpad_value"("str", $P901)
    .const 'Sub' $P902 = "10_1303603573.955" 
    $P903 = $P902."get_lexinfo"()
    $P903."finish_static_lexpad"()
    .const 'Sub' $P904 = "29_1303603573.955" 
    $P905 = $P904."get_lexinfo"()
    nqp_get_sc_object $P906, "1303603572.89", 3
    $P905."set_static_lexpad_value"("$?PACKAGE", $P906)
    .const 'Sub' $P907 = "29_1303603573.955" 
    $P908 = $P907."get_lexinfo"()
    $P908."finish_static_lexpad"()
    .const 'Sub' $P909 = "29_1303603573.955" 
    $P910 = $P909."get_lexinfo"()
    nqp_get_sc_object $P911, "1303603572.89", 3
    $P910."set_static_lexpad_value"("$?CLASS", $P911)
    .const 'Sub' $P912 = "29_1303603573.955" 
    $P913 = $P912."get_lexinfo"()
    $P913."finish_static_lexpad"()
    get_hll_global $P914, "NQPClassHOW"
    $P915 = $P914."new_type"("NQPMu" :named("name"))
    nqp_set_sc_for_object $P915, cur_sc
    nqp_set_sc_object "1303603572.89", 4, $P915
    .const 'Sub' $P916 = "10_1303603573.955" 
    $P917 = $P916."get_lexinfo"()
    nqp_get_sc_object $P918, "1303603572.89", 4
    $P917."set_static_lexpad_value"("NQPMu", $P918)
    .const 'Sub' $P919 = "10_1303603573.955" 
    $P920 = $P919."get_lexinfo"()
    $P920."finish_static_lexpad"()
    .const 'Sub' $P921 = "31_1303603573.955" 
    $P922 = $P921."get_lexinfo"()
    nqp_get_sc_object $P923, "1303603572.89", 4
    $P922."set_static_lexpad_value"("$?PACKAGE", $P923)
    .const 'Sub' $P924 = "31_1303603573.955" 
    $P925 = $P924."get_lexinfo"()
    $P925."finish_static_lexpad"()
    .const 'Sub' $P926 = "31_1303603573.955" 
    $P927 = $P926."get_lexinfo"()
    nqp_get_sc_object $P928, "1303603572.89", 4
    $P927."set_static_lexpad_value"("$?CLASS", $P928)
    .const 'Sub' $P929 = "31_1303603573.955" 
    $P930 = $P929."get_lexinfo"()
    $P930."finish_static_lexpad"()
    get_hll_global $P931, "NQPClassHOW"
    $P932 = $P931."new_type"("NQPCapture" :named("name"))
    nqp_set_sc_for_object $P932, cur_sc
    nqp_set_sc_object "1303603572.89", 5, $P932
    .const 'Sub' $P933 = "10_1303603573.955" 
    $P934 = $P933."get_lexinfo"()
    nqp_get_sc_object $P935, "1303603572.89", 5
    $P934."set_static_lexpad_value"("NQPCapture", $P935)
    .const 'Sub' $P936 = "10_1303603573.955" 
    $P937 = $P936."get_lexinfo"()
    $P937."finish_static_lexpad"()
    .const 'Sub' $P938 = "45_1303603573.955" 
    $P939 = $P938."get_lexinfo"()
    nqp_get_sc_object $P940, "1303603572.89", 5
    $P939."set_static_lexpad_value"("$?PACKAGE", $P940)
    .const 'Sub' $P941 = "45_1303603573.955" 
    $P942 = $P941."get_lexinfo"()
    $P942."finish_static_lexpad"()
    .const 'Sub' $P943 = "45_1303603573.955" 
    $P944 = $P943."get_lexinfo"()
    nqp_get_sc_object $P945, "1303603572.89", 5
    $P944."set_static_lexpad_value"("$?CLASS", $P945)
    .const 'Sub' $P946 = "45_1303603573.955" 
    $P947 = $P946."get_lexinfo"()
    $P947."finish_static_lexpad"()
  if_842_end:
    nqp_get_sc_object $P1033, "1303603572.89", 0
    set_hll_global "GLOBAL", $P1033
.end


.HLL "nqp"

.namespace []
.sub "open"  :subid("11_1303603573.955") :outer("10_1303603573.955")
    .param pmc param_21
    .param pmc param_22 :optional :named("r")
    .param int has_param_22 :opt_flag
    .param pmc param_24 :optional :named("w")
    .param int has_param_24 :opt_flag
    .param pmc param_26 :optional :named("a")
    .param int has_param_26 :opt_flag
    .param pmc param_28 :optional :named("bin")
    .param int has_param_28 :opt_flag
.annotate 'line', 142
    .lex "$filename", param_21
    if has_param_22, optparam_67
    new $P23, "Undef"
    set param_22, $P23
  optparam_67:
    .lex "$r", param_22
    if has_param_24, optparam_68
    new $P25, "Undef"
    set param_24, $P25
  optparam_68:
    .lex "$w", param_24
    if has_param_26, optparam_69
    new $P27, "Undef"
    set param_26, $P27
  optparam_69:
    .lex "$a", param_26
    if has_param_28, optparam_70
    new $P29, "Undef"
    set param_28, $P29
  optparam_70:
    .lex "$bin", param_28
.annotate 'line', 143
    new $P30, "Undef"
    .lex "$mode", $P30
.annotate 'line', 144
    new $P31, "Undef"
    .lex "$handle", $P31
.annotate 'line', 143
    find_lex $P34, "$w"
    unless_null $P34, vivify_71
    new $P34, "Undef"
  vivify_71:
    if $P34, if_33
    find_lex $P38, "$a"
    unless_null $P38, vivify_72
    new $P38, "Undef"
  vivify_72:
    if $P38, if_37
    new $P40, "String"
    assign $P40, "r"
    set $P36, $P40
    goto if_37_end
  if_37:
    new $P39, "String"
    assign $P39, "wa"
    set $P36, $P39
  if_37_end:
    set $P32, $P36
    goto if_33_end
  if_33:
    new $P35, "String"
    assign $P35, "w"
    set $P32, $P35
  if_33_end:
    store_lex "$mode", $P32
.annotate 'line', 144
    new $P41, "FileHandle"
    store_lex "$handle", $P41
.annotate 'line', 145
    find_lex $P42, "$handle"
    unless_null $P42, vivify_73
    new $P42, "Undef"
  vivify_73:
    find_lex $P43, "$filename"
    unless_null $P43, vivify_74
    new $P43, "Undef"
  vivify_74:
    find_lex $P44, "$mode"
    unless_null $P44, vivify_75
    new $P44, "Undef"
  vivify_75:
    $P42."open"($P43, $P44)
.annotate 'line', 146
    find_lex $P45, "$handle"
    unless_null $P45, vivify_76
    new $P45, "Undef"
  vivify_76:
    find_lex $P48, "$bin"
    unless_null $P48, vivify_77
    new $P48, "Undef"
  vivify_77:
    if $P48, if_47
    new $P50, "String"
    assign $P50, "utf8"
    set $P46, $P50
    goto if_47_end
  if_47:
    new $P49, "String"
    assign $P49, "binary"
    set $P46, $P49
  if_47_end:
    $P45."encoding"($P46)
    find_lex $P51, "$handle"
    unless_null $P51, vivify_78
    new $P51, "Undef"
  vivify_78:
.annotate 'line', 142
    .return ($P51)
.end


.HLL "nqp"

.namespace []
.sub "close"  :subid("12_1303603573.955") :outer("10_1303603573.955")
    .param pmc param_54
.annotate 'line', 154
    .lex "$handle", param_54
.annotate 'line', 155
    find_lex $P55, "$handle"
    unless_null $P55, vivify_79
    new $P55, "Undef"
  vivify_79:
    $P56 = $P55."close"()
.annotate 'line', 154
    .return ($P56)
.end


.HLL "nqp"

.namespace []
.sub "slurp"  :subid("13_1303603573.955") :outer("10_1303603573.955")
    .param pmc param_59
.annotate 'line', 162
    .lex "$filename", param_59
.annotate 'line', 163
    new $P60, "Undef"
    .lex "$handle", $P60
.annotate 'line', 164
    new $P61, "Undef"
    .lex "$contents", $P61
.annotate 'line', 163
    find_lex $P62, "$filename"
    unless_null $P62, vivify_80
    new $P62, "Undef"
  vivify_80:
    $P63 = "open"($P62, 1 :named("r"))
    store_lex "$handle", $P63
.annotate 'line', 164
    find_lex $P64, "$handle"
    unless_null $P64, vivify_81
    new $P64, "Undef"
  vivify_81:
    $P65 = $P64."readall"()
    store_lex "$contents", $P65
.annotate 'line', 165
    find_lex $P66, "$handle"
    unless_null $P66, vivify_82
    new $P66, "Undef"
  vivify_82:
    $P66."close"()
    find_lex $P67, "$contents"
    unless_null $P67, vivify_83
    new $P67, "Undef"
  vivify_83:
.annotate 'line', 162
    .return ($P67)
.end


.HLL "nqp"

.namespace []
.sub "spew"  :subid("14_1303603573.955") :outer("10_1303603573.955")
    .param pmc param_70
    .param pmc param_71
.annotate 'line', 174
    .lex "$filename", param_70
    .lex "$contents", param_71
.annotate 'line', 175
    new $P72, "Undef"
    .lex "$handle", $P72
    new $P73, "FileHandle"
    store_lex "$handle", $P73
.annotate 'line', 176
    find_lex $P74, "$handle"
    unless_null $P74, vivify_84
    new $P74, "Undef"
  vivify_84:
    find_lex $P75, "$filename"
    unless_null $P75, vivify_85
    new $P75, "Undef"
  vivify_85:
    $P74."open"($P75, "w")
.annotate 'line', 177
    find_lex $P76, "$handle"
    unless_null $P76, vivify_86
    new $P76, "Undef"
  vivify_86:
    find_lex $P77, "$contents"
    unless_null $P77, vivify_87
    new $P77, "Undef"
  vivify_87:
    $P76."print"($P77)
.annotate 'line', 178
    find_lex $P78, "$handle"
    unless_null $P78, vivify_88
    new $P78, "Undef"
  vivify_88:
    $P79 = $P78."close"()
.annotate 'line', 174
    .return ($P79)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "print"  :subid("15_1303603573.955") :outer("10_1303603573.955")
    .param pmc param_82 :slurpy
.annotate 'line', 181
    .const 'Sub' $P88 = "16_1303603573.955" 
    capture_lex $P88
    .lex "@args", param_82
.annotate 'line', 182
    find_lex $P84, "@args"
    unless_null $P84, vivify_89
    $P84 = root_new ['parrot';'ResizablePMCArray']
  vivify_89:
    defined $I85, $P84
    unless $I85, for_undef_90
    iter $P83, $P84
    new $P92, 'ExceptionHandler'
    set_label $P92, loop91_handler
    $P92."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P92
  loop91_test:
    unless $P83, loop91_done
    shift $P86, $P83
  loop91_redo:
    .const 'Sub' $P88 = "16_1303603573.955" 
    capture_lex $P88
    $P88($P86)
  loop91_next:
    goto loop91_test
  loop91_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P93, exception, 'type'
    eq $P93, .CONTROL_LOOP_NEXT, loop91_next
    eq $P93, .CONTROL_LOOP_REDO, loop91_redo
  loop91_done:
    pop_eh 
  for_undef_90:
.annotate 'line', 181
    .return (1)
.end


.HLL "nqp"

.namespace []
.sub "_block87"  :anon :subid("16_1303603573.955") :outer("15_1303603573.955")
    .param pmc param_89
.annotate 'line', 182
    .lex "$_", param_89
.annotate 'line', 183
    find_lex $P90, "$_"
    unless_null $P90, vivify_91
    new $P90, "Undef"
  vivify_91:
    print $P90
.annotate 'line', 182
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "say"  :subid("17_1303603573.955") :outer("10_1303603573.955")
    .param pmc param_96 :slurpy
.annotate 'line', 188
    .lex "@args", param_96
.annotate 'line', 189
    find_lex $P97, "@args"
    unless_null $P97, vivify_92
    $P97 = root_new ['parrot';'ResizablePMCArray']
  vivify_92:
    $P98 = "print"($P97 :flat, "\n")
.annotate 'line', 188
    .return ($P98)
.end


.HLL "nqp"

.namespace []
.sub "match"  :subid("18_1303603573.955") :outer("10_1303603573.955")
    .param pmc param_101
    .param pmc param_102
    .param pmc param_103 :optional :named("global")
    .param int has_param_103 :opt_flag
.annotate 'line', 206
    .const 'Sub' $P113 = "19_1303603573.955" 
    capture_lex $P113
    .lex "$text", param_101
    .lex "$regex", param_102
    if has_param_103, optparam_93
    new $P104, "Undef"
    set param_103, $P104
  optparam_93:
    .lex "$global", param_103
.annotate 'line', 207
    new $P105, "Undef"
    .lex "$match", $P105
    find_lex $P106, "$regex"
    unless_null $P106, vivify_94
    new $P106, "Undef"
  vivify_94:
    find_lex $P107, "$text"
    unless_null $P107, vivify_95
    new $P107, "Undef"
  vivify_95:
    $P108 = $P106."ACCEPTS"($P107)
    store_lex "$match", $P108
.annotate 'line', 208
    find_lex $P111, "$global"
    unless_null $P111, vivify_96
    new $P111, "Undef"
  vivify_96:
    if $P111, if_110
.annotate 'line', 216
    find_lex $P131, "$match"
    unless_null $P131, vivify_97
    new $P131, "Undef"
  vivify_97:
    set $P109, $P131
.annotate 'line', 208
    goto if_110_end
  if_110:
    .const 'Sub' $P113 = "19_1303603573.955" 
    capture_lex $P113
    $P130 = $P113()
    set $P109, $P130
  if_110_end:
.annotate 'line', 206
    .return ($P109)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "_block112"  :anon :subid("19_1303603573.955") :outer("18_1303603573.955")
.annotate 'line', 209
    $P114 = root_new ['parrot';'ResizablePMCArray']
    .lex "@matches", $P114
.annotate 'line', 208
    find_lex $P115, "@matches"
    unless_null $P115, vivify_98
    $P115 = root_new ['parrot';'ResizablePMCArray']
  vivify_98:
.annotate 'line', 210
    new $P127, 'ExceptionHandler'
    set_label $P127, loop126_handler
    $P127."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P127
  loop126_test:
    find_lex $P116, "$match"
    unless_null $P116, vivify_99
    new $P116, "Undef"
  vivify_99:
    unless $P116, loop126_done
  loop126_redo:
.annotate 'line', 211
    find_lex $P117, "@matches"
    unless_null $P117, vivify_100
    $P117 = root_new ['parrot';'ResizablePMCArray']
  vivify_100:
    find_lex $P118, "$match"
    unless_null $P118, vivify_101
    new $P118, "Undef"
  vivify_101:
    $P117."push"($P118)
.annotate 'line', 212
    find_lex $P119, "$match"
    unless_null $P119, vivify_102
    new $P119, "Undef"
  vivify_102:
    $P120 = $P119."CURSOR"()
    find_lex $P121, "$text"
    unless_null $P121, vivify_103
    new $P121, "Undef"
  vivify_103:
    find_lex $P122, "$regex"
    unless_null $P122, vivify_104
    new $P122, "Undef"
  vivify_104:
    find_lex $P123, "$match"
    unless_null $P123, vivify_105
    new $P123, "Undef"
  vivify_105:
    $P124 = $P123."to"()
    $P125 = $P120."parse"($P121, $P122 :named("rule"), $P124 :named("c"))
    store_lex "$match", $P125
  loop126_next:
.annotate 'line', 210
    goto loop126_test
  loop126_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P128, exception, 'type'
    eq $P128, .CONTROL_LOOP_NEXT, loop126_next
    eq $P128, .CONTROL_LOOP_REDO, loop126_redo
  loop126_done:
    pop_eh 
    find_lex $P129, "@matches"
    unless_null $P129, vivify_106
    $P129 = root_new ['parrot';'ResizablePMCArray']
  vivify_106:
.annotate 'line', 208
    .return ($P129)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "subst"  :subid("20_1303603573.955") :outer("10_1303603573.955")
    .param pmc param_134
    .param pmc param_135
    .param pmc param_136
    .param pmc param_137 :optional :named("global")
    .param int has_param_137 :opt_flag
.annotate 'line', 228
    .const 'Sub' $P164 = "21_1303603573.955" 
    capture_lex $P164
    .lex "$text", param_134
    .lex "$regex", param_135
    .lex "$repl", param_136
    if has_param_137, optparam_107
    new $P138, "Undef"
    set param_137, $P138
  optparam_107:
    .lex "$global", param_137
.annotate 'line', 229
    $P139 = root_new ['parrot';'ResizablePMCArray']
    .lex "@matches", $P139
.annotate 'line', 231
    new $P140, "Undef"
    .lex "$is_code", $P140
.annotate 'line', 232
    new $P141, "Undef"
    .lex "$offset", $P141
.annotate 'line', 233
    new $P142, "Undef"
    .lex "$result", $P142
.annotate 'line', 244
    new $P143, "Undef"
    .lex "$chars", $P143
.annotate 'line', 229
    find_lex $P146, "$global"
    unless_null $P146, vivify_108
    new $P146, "Undef"
  vivify_108:
    if $P146, if_145
.annotate 'line', 230
    find_lex $P150, "$regex"
    unless_null $P150, vivify_109
    new $P150, "Undef"
  vivify_109:
    find_lex $P151, "$text"
    unless_null $P151, vivify_110
    new $P151, "Undef"
  vivify_110:
    $P152 = $P150."ACCEPTS"($P151)
    new $P153, "ResizablePMCArray"
    push $P153, $P152
.annotate 'line', 229
    set $P144, $P153
    goto if_145_end
  if_145:
    find_lex $P147, "$text"
    unless_null $P147, vivify_111
    new $P147, "Undef"
  vivify_111:
    find_lex $P148, "$regex"
    unless_null $P148, vivify_112
    new $P148, "Undef"
  vivify_112:
    $P149 = "match"($P147, $P148, 1 :named("global"))
    set $P144, $P149
  if_145_end:
    store_lex "@matches", $P144
.annotate 'line', 231
    find_lex $P154, "$repl"
    unless_null $P154, vivify_113
    new $P154, "Undef"
  vivify_113:
    isa $I155, $P154, "Sub"
    new $P156, 'Integer'
    set $P156, $I155
    store_lex "$is_code", $P156
.annotate 'line', 232
    new $P157, "Integer"
    assign $P157, 0
    store_lex "$offset", $P157
.annotate 'line', 233
    new $P158, "StringBuilder"
    store_lex "$result", $P158
.annotate 'line', 235
    find_lex $P160, "@matches"
    unless_null $P160, vivify_114
    $P160 = root_new ['parrot';'ResizablePMCArray']
  vivify_114:
    defined $I161, $P160
    unless $I161, for_undef_115
    iter $P159, $P160
    new $P197, 'ExceptionHandler'
    set_label $P197, loop196_handler
    $P197."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P197
  loop196_test:
    unless $P159, loop196_done
    shift $P162, $P159
  loop196_redo:
    .const 'Sub' $P164 = "21_1303603573.955" 
    capture_lex $P164
    $P164($P162)
  loop196_next:
    goto loop196_test
  loop196_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P198, exception, 'type'
    eq $P198, .CONTROL_LOOP_NEXT, loop196_next
    eq $P198, .CONTROL_LOOP_REDO, loop196_redo
  loop196_done:
    pop_eh 
  for_undef_115:
.annotate 'line', 244
    find_lex $P199, "$text"
    unless_null $P199, vivify_130
    new $P199, "Undef"
  vivify_130:
    set $S200, $P199
    length $I201, $S200
    new $P202, 'Integer'
    set $P202, $I201
    store_lex "$chars", $P202
.annotate 'line', 246
    find_lex $P204, "$chars"
    unless_null $P204, vivify_131
    new $P204, "Undef"
  vivify_131:
    set $N205, $P204
    find_lex $P206, "$offset"
    unless_null $P206, vivify_132
    new $P206, "Undef"
  vivify_132:
    set $N207, $P206
    isgt $I208, $N205, $N207
    unless $I208, if_203_end
.annotate 'line', 245
    find_lex $P209, "$result"
    unless_null $P209, vivify_133
    new $P209, "Undef"
  vivify_133:
    find_lex $P210, "$text"
    unless_null $P210, vivify_134
    new $P210, "Undef"
  vivify_134:
    set $S211, $P210
    find_lex $P212, "$offset"
    unless_null $P212, vivify_135
    new $P212, "Undef"
  vivify_135:
    set $I213, $P212
    find_lex $P214, "$chars"
    unless_null $P214, vivify_136
    new $P214, "Undef"
  vivify_136:
    set $I215, $P214
    substr $S216, $S211, $I213, $I215
    push $P209, $S216
  if_203_end:
.annotate 'line', 248
    find_lex $P217, "$result"
    unless_null $P217, vivify_137
    new $P217, "Undef"
  vivify_137:
    set $S218, $P217
.annotate 'line', 228
    .return ($S218)
.end


.HLL "nqp"

.namespace []
.sub "_block163"  :anon :subid("21_1303603573.955") :outer("20_1303603573.955")
    .param pmc param_165
.annotate 'line', 235
    .lex "$match", param_165
.annotate 'line', 236
    find_lex $P168, "$match"
    unless_null $P168, vivify_116
    new $P168, "Undef"
  vivify_116:
    if $P168, if_167
    set $P166, $P168
    goto if_167_end
  if_167:
.annotate 'line', 238
    find_lex $P170, "$match"
    unless_null $P170, vivify_117
    new $P170, "Undef"
  vivify_117:
    $N171 = $P170."from"()
    find_lex $P172, "$offset"
    unless_null $P172, vivify_118
    new $P172, "Undef"
  vivify_118:
    set $N173, $P172
    isgt $I174, $N171, $N173
    unless $I174, if_169_end
.annotate 'line', 237
    find_lex $P175, "$result"
    unless_null $P175, vivify_119
    new $P175, "Undef"
  vivify_119:
    find_lex $P176, "$text"
    unless_null $P176, vivify_120
    new $P176, "Undef"
  vivify_120:
    set $S177, $P176
    find_lex $P178, "$offset"
    unless_null $P178, vivify_121
    new $P178, "Undef"
  vivify_121:
    set $I179, $P178
    find_lex $P180, "$match"
    unless_null $P180, vivify_122
    new $P180, "Undef"
  vivify_122:
    $P181 = $P180."from"()
    find_lex $P182, "$offset"
    unless_null $P182, vivify_123
    new $P182, "Undef"
  vivify_123:
    sub $P183, $P181, $P182
    set $I184, $P183
    substr $S185, $S177, $I179, $I184
    push $P175, $S185
  if_169_end:
.annotate 'line', 239
    find_lex $P186, "$result"
    unless_null $P186, vivify_124
    new $P186, "Undef"
  vivify_124:
    find_lex $P189, "$is_code"
    unless_null $P189, vivify_125
    new $P189, "Undef"
  vivify_125:
    if $P189, if_188
    find_lex $P193, "$repl"
    unless_null $P193, vivify_126
    new $P193, "Undef"
  vivify_126:
    set $P187, $P193
    goto if_188_end
  if_188:
    find_lex $P190, "$repl"
    unless_null $P190, vivify_127
    new $P190, "Undef"
  vivify_127:
    find_lex $P191, "$match"
    unless_null $P191, vivify_128
    new $P191, "Undef"
  vivify_128:
    $P192 = $P190($P191)
    set $P187, $P192
  if_188_end:
    push $P186, $P187
.annotate 'line', 240
    find_lex $P194, "$match"
    unless_null $P194, vivify_129
    new $P194, "Undef"
  vivify_129:
    $P195 = $P194."to"()
    store_lex "$offset", $P195
.annotate 'line', 236
    set $P166, $P195
  if_167_end:
.annotate 'line', 235
    .return ($P166)
.end


.HLL "nqp"

.namespace []
.sub "plan"  :subid("22_1303603573.955") :outer("10_1303603573.955")
    .param pmc param_222
.annotate 'line', 256
    .lex "$quantity", param_222
.annotate 'line', 257
    new $P223, 'String'
    set $P223, "1.."
    find_lex $P224, "$quantity"
    unless_null $P224, vivify_138
    new $P224, "Undef"
  vivify_138:
    concat $P225, $P223, $P224
    $P226 = "say"($P225)
.annotate 'line', 256
    .return ($P226)
.end


.HLL "nqp"

.namespace []
.sub "ok"  :subid("23_1303603573.955") :outer("10_1303603573.955")
    .param pmc param_229
    .param pmc param_230 :optional
    .param int has_param_230 :opt_flag
.annotate 'line', 260
    .lex "$condition", param_229
    if has_param_230, optparam_139
    new $P231, "Undef"
    set param_230, $P231
  optparam_139:
    .lex "$desc", param_230
.annotate 'line', 261
    find_lex $P232, "$test_counter"
    unless_null $P232, vivify_140
    new $P232, "Undef"
  vivify_140:
    add $P233, $P232, 1
    store_lex "$test_counter", $P233
.annotate 'line', 263
    find_lex $P235, "$condition"
    unless_null $P235, vivify_141
    new $P235, "Undef"
  vivify_141:
    if $P235, unless_234_end
.annotate 'line', 264
    "print"("not ")
  unless_234_end:
.annotate 'line', 266
    new $P236, 'String'
    set $P236, "ok "
    find_lex $P237, "$test_counter"
    unless_null $P237, vivify_142
    new $P237, "Undef"
  vivify_142:
    concat $P238, $P236, $P237
    "print"($P238)
.annotate 'line', 267
    find_lex $P240, "$desc"
    unless_null $P240, vivify_143
    new $P240, "Undef"
  vivify_143:
    unless $P240, if_239_end
.annotate 'line', 268
    new $P241, 'String'
    set $P241, " - "
    find_lex $P242, "$desc"
    unless_null $P242, vivify_144
    new $P242, "Undef"
  vivify_144:
    concat $P243, $P241, $P242
    "print"($P243)
  if_239_end:
.annotate 'line', 270
    "print"("\n")
.annotate 'line', 272
    find_lex $P246, "$condition"
    unless_null $P246, vivify_145
    new $P246, "Undef"
  vivify_145:
    if $P246, if_245
    new $P248, "Integer"
    assign $P248, 0
    set $P244, $P248
    goto if_245_end
  if_245:
    new $P247, "Integer"
    assign $P247, 1
    set $P244, $P247
  if_245_end:
.annotate 'line', 260
    .return ($P244)
.end


.HLL "nqp"

.namespace []
.sub "skip"  :subid("24_1303603573.955") :outer("10_1303603573.955")
    .param pmc param_251
.annotate 'line', 275
    .lex "$desc", param_251
.annotate 'line', 276
    find_lex $P252, "$test_counter"
    unless_null $P252, vivify_146
    new $P252, "Undef"
  vivify_146:
    add $P253, $P252, 1
    store_lex "$test_counter", $P253
.annotate 'line', 277
    new $P254, 'String'
    set $P254, "ok "
    find_lex $P255, "$test_counter"
    unless_null $P255, vivify_147
    new $P255, "Undef"
  vivify_147:
    concat $P256, $P254, $P255
    concat $P257, $P256, " # SKIP "
    find_lex $P258, "$desc"
    unless_null $P258, vivify_148
    new $P258, "Undef"
  vivify_148:
    concat $P259, $P257, $P258
    concat $P260, $P259, "\n"
    $P261 = "say"($P260)
.annotate 'line', 275
    .return ($P261)
.end


.HLL "nqp"

.namespace []
.sub "_block263"  :anon :subid("25_1303603573.955") :outer("10_1303603573.955")
.annotate 'line', 9
    .const 'Sub' $P268 = "26_1303603573.955" 
    capture_lex $P268
    .lex "$?PACKAGE", $P265
    .lex "$?CLASS", $P266
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post149") :outer("25_1303603573.955")
.annotate 'line', 9
    .const 'Sub' $P264 = "25_1303603573.955" 
    .local pmc block
    set block, $P264
    .const 'Sub' $P268 = "26_1303603573.955" 
    capture_lex $P268
    $P268()
.end


.HLL "nqp"

.namespace []
.sub "_block267"  :anon :subid("26_1303603573.955") :outer("25_1303603573.955")
.annotate 'line', 9
    nqp_get_sc_object $P269, "1303603572.89", 1
    .local pmc type_obj
    set type_obj, $P269
    get_how $P270, type_obj
    $P271 = $P270."compose"(type_obj)
    .return ($P271)
.end


.HLL "nqp"

.namespace []
.sub "_block272"  :anon :subid("27_1303603573.955") :outer("10_1303603573.955")
.annotate 'line', 11
    .const 'Sub' $P277 = "28_1303603573.955" 
    capture_lex $P277
    .lex "$?PACKAGE", $P274
    .lex "$?CLASS", $P275
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post150") :outer("27_1303603573.955")
.annotate 'line', 11
    .const 'Sub' $P273 = "27_1303603573.955" 
    .local pmc block
    set block, $P273
    .const 'Sub' $P277 = "28_1303603573.955" 
    capture_lex $P277
    $P277()
.end


.HLL "nqp"

.namespace []
.sub "_block276"  :anon :subid("28_1303603573.955") :outer("27_1303603573.955")
.annotate 'line', 11
    nqp_get_sc_object $P278, "1303603572.89", 2
    .local pmc type_obj
    set type_obj, $P278
    get_how $P279, type_obj
    $P280 = $P279."compose"(type_obj)
    .return ($P280)
.end


.HLL "nqp"

.namespace []
.sub "_block281"  :anon :subid("29_1303603573.955") :outer("10_1303603573.955")
.annotate 'line', 13
    .const 'Sub' $P286 = "30_1303603573.955" 
    capture_lex $P286
    .lex "$?PACKAGE", $P283
    .lex "$?CLASS", $P284
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post151") :outer("29_1303603573.955")
.annotate 'line', 13
    .const 'Sub' $P282 = "29_1303603573.955" 
    .local pmc block
    set block, $P282
    .const 'Sub' $P286 = "30_1303603573.955" 
    capture_lex $P286
    $P286()
.end


.HLL "nqp"

.namespace []
.sub "_block285"  :anon :subid("30_1303603573.955") :outer("29_1303603573.955")
.annotate 'line', 13
    nqp_get_sc_object $P287, "1303603572.89", 3
    .local pmc type_obj
    set type_obj, $P287
    get_how $P288, type_obj
    $P289 = $P288."compose"(type_obj)
    .return ($P289)
.end


.HLL "nqp"

.namespace []
.sub "_block290"  :anon :subid("31_1303603573.955") :outer("10_1303603573.955")
.annotate 'line', 16
    .const 'Sub' $P413 = "44_1303603573.955" 
    capture_lex $P413
    .const 'Sub' $P403 = "43_1303603573.955" 
    capture_lex $P403
    .const 'Sub' $P391 = "42_1303603573.955" 
    capture_lex $P391
    .const 'Sub' $P387 = "41_1303603573.955" 
    capture_lex $P387
    .const 'Sub' $P376 = "40_1303603573.955" 
    capture_lex $P376
    .const 'Sub' $P373 = "39_1303603573.955" 
    capture_lex $P373
    .const 'Sub' $P367 = "38_1303603573.955" 
    capture_lex $P367
    .const 'Sub' $P329 = "36_1303603573.955" 
    capture_lex $P329
    .const 'Sub' $P308 = "34_1303603573.955" 
    capture_lex $P308
    .const 'Sub' $P298 = "33_1303603573.955" 
    capture_lex $P298
    .const 'Sub' $P294 = "32_1303603573.955" 
    capture_lex $P294
    .lex "$?PACKAGE", $P292
    .lex "$?CLASS", $P293
.annotate 'line', 57
    .const 'Sub' $P403 = "43_1303603573.955" 
    newclosure $P411, $P403
.annotate 'line', 16
    .return ($P411)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post152") :outer("31_1303603573.955")
.annotate 'line', 16
    .const 'Sub' $P291 = "31_1303603573.955" 
    .local pmc block
    set block, $P291
    .const 'Sub' $P413 = "44_1303603573.955" 
    capture_lex $P413
    $P413()
.end


.HLL "nqp"

.namespace []
.sub "_block412"  :anon :subid("44_1303603573.955") :outer("31_1303603573.955")
.annotate 'line', 16
    .const 'Sub' $P429 = "39_1303603573.955" 
    capture_lex $P429
    nqp_get_sc_object $P414, "1303603572.89", 4
    .local pmc type_obj
    set type_obj, $P414
    get_how $P415, type_obj
    .const 'Sub' $P416 = "32_1303603573.955" 
    $P415."add_method"(type_obj, "CREATE", $P416)
    get_how $P417, type_obj
    .const 'Sub' $P418 = "33_1303603573.955" 
    $P417."add_method"(type_obj, "bless", $P418)
    get_how $P419, type_obj
    .const 'Sub' $P420 = "34_1303603573.955" 
    $P419."add_method"(type_obj, "BUILDALL", $P420)
    get_how $P421, type_obj
    .const 'Sub' $P422 = "36_1303603573.955" 
    $P421."add_method"(type_obj, "BUILD_MAGIC", $P422)
    get_how $P423, type_obj
    .const 'Sub' $P424 = "38_1303603573.955" 
    $P423."add_method"(type_obj, "new", $P424)
    get_how $P425, type_obj
    .const 'Sub' $P426 = "39_1303603573.955" 
    new $P427, "ResizablePMCArray"
    set_dispatchees $P426, $P427
    $P425."add_method"(type_obj, "Str", $P426)
    get_how $P428, type_obj
    .const 'Sub' $P429 = "39_1303603573.955" 
    newclosure $P432, $P429
    $P428."add_parrot_vtable_mapping"(type_obj, "get_string", $P432)
    get_how $P433, type_obj
    .const 'Sub' $P434 = "40_1303603573.955" 
    $P433."add_multi_method"(type_obj, "Str", $P434)
    get_how $P435, type_obj
    .const 'Sub' $P436 = "41_1303603573.955" 
    new $P437, "ResizablePMCArray"
    set_dispatchees $P436, $P437
    $P435."add_method"(type_obj, "ACCEPTS", $P436)
    get_how $P438, type_obj
    .const 'Sub' $P439 = "42_1303603573.955" 
    $P438."add_multi_method"(type_obj, "ACCEPTS", $P439)
    get_how $P440, type_obj
    .const 'Sub' $P441 = "43_1303603573.955" 
    $P440."add_method"(type_obj, "isa", $P441)
    get_how $P442, type_obj
    nqp_get_sc_object $P443, "1303603572.89", 4
    $P442."set_default_parent"(type_obj, $P443)
    get_how $P444, type_obj
    $P445 = $P444."compose"(type_obj)
    .return ($P445)
.end


.HLL "nqp"

.namespace []
.sub "Str" :instanceof("DispatcherSub") :subid("39_1303603573.955") :outer("44_1303603573.955")
    .param pmc param_430
.annotate 'line', 16
    .lex "self", param_430
    multi_dispatch_over_lexical_candidates $P431
    .return ($P431)
.end


.HLL "nqp"

.namespace []
.sub "CREATE"  :subid("32_1303603573.955") :outer("31_1303603573.955")
    .param pmc param_295
.annotate 'line', 17
    .lex "self", param_295
.annotate 'line', 18
    find_lex $P296, "self"
    repr_instance_of $P297, $P296
.annotate 'line', 17
    .return ($P297)
.end


.HLL "nqp"

.namespace []
.sub "bless"  :subid("33_1303603573.955") :outer("31_1303603573.955")
    .param pmc param_299
    .param pmc param_301 :slurpy :named
.annotate 'line', 21
    .lex "$self", param_299
    find_lex $P300, "$self"
    .lex "self", $P300
    .lex "%attributes", param_301
.annotate 'line', 22
    new $P302, "Undef"
    .lex "$instance", $P302
    find_lex $P303, "self"
    $P304 = $P303."CREATE"()
    store_lex "$instance", $P304
.annotate 'line', 23
    find_lex $P305, "$instance"
    unless_null $P305, vivify_153
    new $P305, "Undef"
  vivify_153:
    find_lex $P306, "%attributes"
    unless_null $P306, vivify_154
    $P306 = root_new ['parrot';'Hash']
  vivify_154:
    $P305."BUILDALL"($P306 :flat)
    find_lex $P307, "$instance"
    unless_null $P307, vivify_155
    new $P307, "Undef"
  vivify_155:
.annotate 'line', 21
    .return ($P307)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "BUILDALL"  :subid("34_1303603573.955") :outer("31_1303603573.955")
    .param pmc param_309
    .param pmc param_311 :slurpy :named
.annotate 'line', 27
    .const 'Sub' $P320 = "35_1303603573.955" 
    capture_lex $P320
    .lex "$self", param_309
    find_lex $P310, "$self"
    .lex "self", $P310
    .lex "%attributes", param_311
.annotate 'line', 28
    find_lex $P313, "$self"
    unless_null $P313, vivify_156
    new $P313, "Undef"
  vivify_156:
    get_how $P314, $P313
    find_lex $P315, "$self"
    unless_null $P315, vivify_157
    new $P315, "Undef"
  vivify_157:
    $P316 = $P314."parents"($P315)
    defined $I317, $P316
    unless $I317, for_undef_158
    iter $P312, $P316
    new $P327, 'ExceptionHandler'
    set_label $P327, loop326_handler
    $P327."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P327
  loop326_test:
    unless $P312, loop326_done
    shift $P318, $P312
  loop326_redo:
    .const 'Sub' $P320 = "35_1303603573.955" 
    capture_lex $P320
    $P320($P318)
  loop326_next:
    goto loop326_test
  loop326_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P328, exception, 'type'
    eq $P328, .CONTROL_LOOP_NEXT, loop326_next
    eq $P328, .CONTROL_LOOP_REDO, loop326_redo
  loop326_done:
    pop_eh 
  for_undef_158:
.annotate 'line', 27
    .return ($P312)
.end


.HLL "nqp"

.namespace []
.sub "_block319"  :anon :subid("35_1303603573.955") :outer("34_1303603573.955")
    .param pmc param_321
.annotate 'line', 28
    .lex "$class", param_321
.annotate 'line', 29
    find_lex $P322, "$self"
    unless_null $P322, vivify_159
    new $P322, "Undef"
  vivify_159:
    find_lex $P323, "$class"
    unless_null $P323, vivify_160
    new $P323, "Undef"
  vivify_160:
    find_lex $P324, "%attributes"
    unless_null $P324, vivify_161
    $P324 = root_new ['parrot';'Hash']
  vivify_161:
    $P325 = $P322."BUILD_MAGIC"($P323, $P324 :flat)
.annotate 'line', 28
    .return ($P325)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "BUILD_MAGIC"  :subid("36_1303603573.955") :outer("31_1303603573.955")
    .param pmc param_330
    .param pmc param_332
    .param pmc param_333 :slurpy :named
.annotate 'line', 33
    .const 'Sub' $P342 = "37_1303603573.955" 
    capture_lex $P342
    .lex "$self", param_330
    find_lex $P331, "$self"
    .lex "self", $P331
    .lex "$type", param_332
    .lex "%attributes", param_333
.annotate 'line', 34
    find_lex $P335, "$type"
    unless_null $P335, vivify_162
    new $P335, "Undef"
  vivify_162:
    get_how $P336, $P335
    find_lex $P337, "$type"
    unless_null $P337, vivify_163
    new $P337, "Undef"
  vivify_163:
    $P338 = $P336."attributes"($P337, 1 :named("local"))
    defined $I339, $P338
    unless $I339, for_undef_164
    iter $P334, $P338
    new $P365, 'ExceptionHandler'
    set_label $P365, loop364_handler
    $P365."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P365
  loop364_test:
    unless $P334, loop364_done
    shift $P340, $P334
  loop364_redo:
    .const 'Sub' $P342 = "37_1303603573.955" 
    capture_lex $P342
    $P342($P340)
  loop364_next:
    goto loop364_test
  loop364_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P366, exception, 'type'
    eq $P366, .CONTROL_LOOP_NEXT, loop364_next
    eq $P366, .CONTROL_LOOP_REDO, loop364_redo
  loop364_done:
    pop_eh 
  for_undef_164:
.annotate 'line', 33
    .return ($P334)
.end


.HLL "nqp"

.namespace []
.sub "_block341"  :anon :subid("37_1303603573.955") :outer("36_1303603573.955")
    .param pmc param_345
.annotate 'line', 35
    new $P343, "Undef"
    .lex "$name", $P343
.annotate 'line', 36
    new $P344, "Undef"
    .lex "$shortname", $P344
    .lex "$_", param_345
.annotate 'line', 35
    find_lex $P346, "$_"
    unless_null $P346, vivify_165
    new $P346, "Undef"
  vivify_165:
    $P347 = $P346."name"()
    store_lex "$name", $P347
.annotate 'line', 36
    find_lex $P348, "$name"
    unless_null $P348, vivify_166
    new $P348, "Undef"
  vivify_166:
    set $S349, $P348
    substr $S350, $S349, 2
    new $P351, 'String'
    set $P351, $S350
    store_lex "$shortname", $P351
.annotate 'line', 37
    find_lex $P355, "$shortname"
    unless_null $P355, vivify_167
    new $P355, "Undef"
  vivify_167:
    find_lex $P354, "%attributes"
    unless_null $P354, vivify_168
    $P354 = root_new ['parrot';'Hash']
  vivify_168:
    exists $I356, $P354[$P355]
    if $I356, if_353
    new $P352, 'Integer'
    set $P352, $I356
    goto if_353_end
  if_353:
.annotate 'line', 38
    find_lex $P357, "$self"
    unless_null $P357, vivify_169
    new $P357, "Undef"
  vivify_169:
    find_lex $P358, "$type"
    unless_null $P358, vivify_170
    new $P358, "Undef"
  vivify_170:
    find_lex $P359, "$name"
    unless_null $P359, vivify_171
    new $P359, "Undef"
  vivify_171:
    set $S360, $P359
    find_lex $P361, "$shortname"
    unless_null $P361, vivify_172
    new $P361, "Undef"
  vivify_172:
    find_lex $P362, "%attributes"
    unless_null $P362, vivify_173
    $P362 = root_new ['parrot';'Hash']
  vivify_173:
    set $P363, $P362[$P361]
    unless_null $P363, vivify_174
    new $P363, "Undef"
  vivify_174:
    setattribute $P357, $P358, $S360, $P363
  if_353_end:
.annotate 'line', 34
    .return ($P352)
.end


.HLL "nqp"

.namespace []
.sub "new"  :subid("38_1303603573.955") :outer("31_1303603573.955")
    .param pmc param_368
    .param pmc param_369 :slurpy :named
.annotate 'line', 43
    .lex "self", param_368
    .lex "%attributes", param_369
.annotate 'line', 44
    find_lex $P370, "self"
    find_lex $P371, "%attributes"
    unless_null $P371, vivify_175
    $P371 = root_new ['parrot';'Hash']
  vivify_175:
    $P372 = $P370."bless"($P371 :flat)
.annotate 'line', 43
    .return ($P372)
.end


.HLL "nqp"

.namespace []
.sub "Str" :instanceof("DispatcherSub") :subid("39_1303603573.955") :outer("31_1303603573.955")
    .param pmc param_374
.annotate 'line', 43
    .lex "self", param_374
    multi_dispatch_over_lexical_candidates $P375
    .return ($P375)
.end


.HLL "nqp"

.namespace []
.sub "Str"  :subid("40_1303603573.955") :outer("31_1303603573.955")
    .param pmc param_377
.annotate 'line', 48
    .lex "$self", param_377
    find_lex $P378, "$self"
    .lex "self", $P378
.annotate 'line', 49
    find_lex $P379, "self"
    get_how $P380, $P379
    find_lex $P381, "self"
    $P382 = $P380."name"($P381)
    concat $P383, $P382, "()"
.annotate 'line', 48
    .return ($P383)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post176") :outer("40_1303603573.955")
.annotate 'line', 48
    .const 'Sub' $P376 = "40_1303603573.955" 
    .local pmc block
    set block, $P376
    get_hll_global $P384, "Mu"
    new $P385, "ResizablePMCArray"
    push $P385, $P384
    new $P386, "ResizablePMCArray"
    push $P386, 2
    set_sub_multisig block, $P385, $P386
.end


.HLL "nqp"

.namespace []
.sub "ACCEPTS" :instanceof("DispatcherSub") :subid("41_1303603573.955") :outer("31_1303603573.955")
    .param pmc param_388
    .param pmc param_389
.annotate 'line', 48
    .lex "self", param_388
.annotate 'line', 52
    .lex "$topic", param_389
.annotate 'line', 48
    multi_dispatch_over_lexical_candidates $P390
    .return ($P390)
.end


.HLL "nqp"

.namespace []
.sub "ACCEPTS"  :subid("42_1303603573.955") :outer("31_1303603573.955")
    .param pmc param_392
    .param pmc param_394
.annotate 'line', 53
    .lex "$self", param_392
    find_lex $P393, "$self"
    .lex "self", $P393
    .lex "$topic", param_394
.annotate 'line', 54
    find_lex $P395, "$topic"
    unless_null $P395, vivify_178
    new $P395, "Undef"
  vivify_178:
    find_lex $P396, "self"
    get_what $P397, $P396
    type_check $I398, $P395, $P397
.annotate 'line', 53
    .return ($I398)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post177") :outer("42_1303603573.955")
.annotate 'line', 53
    .const 'Sub' $P391 = "42_1303603573.955" 
    .local pmc block
    set block, $P391
    get_hll_global $P399, "NQPMu"
    null $P400
    new $P401, "ResizablePMCArray"
    push $P401, $P399
    push $P401, $P400
    new $P402, "ResizablePMCArray"
    push $P402, 2
    push $P402, 0
    set_sub_multisig block, $P401, $P402
.end


.HLL "nqp"

.namespace []
.sub "isa"  :subid("43_1303603573.955") :outer("31_1303603573.955")
    .param pmc param_404
    .param pmc param_405
.annotate 'line', 57
    .lex "self", param_404
    .lex "$type", param_405
.annotate 'line', 58
    find_lex $P406, "self"
    get_how $P407, $P406
    find_lex $P408, "self"
    find_lex $P409, "$type"
    unless_null $P409, vivify_179
    new $P409, "Undef"
  vivify_179:
    $P410 = $P407."isa"($P408, $P409)
.annotate 'line', 57
    .return ($P410)
.end


.HLL "nqp"

.namespace []
.sub "_block446"  :anon :subid("45_1303603573.955") :outer("10_1303603573.955")
.annotate 'line', 63
    .const 'Sub' $P627 = "64_1303603573.955" 
    capture_lex $P627
    .const 'Sub' $P618 = "63_1303603573.955" 
    capture_lex $P618
    .const 'Sub' $P610 = "62_1303603573.955" 
    capture_lex $P610
    .const 'Sub' $P602 = "61_1303603573.955" 
    capture_lex $P602
    .const 'Sub' $P594 = "60_1303603573.955" 
    capture_lex $P594
    .const 'Sub' $P586 = "59_1303603573.955" 
    capture_lex $P586
    .const 'Sub' $P577 = "58_1303603573.955" 
    capture_lex $P577
    .const 'Sub' $P568 = "57_1303603573.955" 
    capture_lex $P568
    .const 'Sub' $P559 = "56_1303603573.955" 
    capture_lex $P559
    .const 'Sub' $P548 = "55_1303603573.955" 
    capture_lex $P548
    .const 'Sub' $P538 = "54_1303603573.955" 
    capture_lex $P538
    .const 'Sub' $P528 = "53_1303603573.955" 
    capture_lex $P528
    .const 'Sub' $P510 = "52_1303603573.955" 
    capture_lex $P510
    .const 'Sub' $P493 = "51_1303603573.955" 
    capture_lex $P493
    .const 'Sub' $P476 = "50_1303603573.955" 
    capture_lex $P476
    .const 'Sub' $P470 = "49_1303603573.955" 
    capture_lex $P470
    .const 'Sub' $P465 = "48_1303603573.955" 
    capture_lex $P465
    .const 'Sub' $P457 = "47_1303603573.955" 
    capture_lex $P457
    .const 'Sub' $P450 = "46_1303603573.955" 
    capture_lex $P450
    .lex "$?PACKAGE", $P448
    .lex "$?CLASS", $P449
.annotate 'line', 126
    .const 'Sub' $P618 = "63_1303603573.955" 
    newclosure $P625, $P618
.annotate 'line', 63
    .return ($P625)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post180") :outer("45_1303603573.955")
.annotate 'line', 63
    .const 'Sub' $P447 = "45_1303603573.955" 
    .local pmc block
    set block, $P447
    .const 'Sub' $P627 = "64_1303603573.955" 
    capture_lex $P627
    $P627()
.end


.HLL "nqp"

.namespace []
.sub "_block626"  :anon :subid("64_1303603573.955") :outer("45_1303603573.955")
.annotate 'line', 63
    .const 'Sub' $P813 = "63_1303603573.955" 
    capture_lex $P813
    .const 'Sub' $P803 = "62_1303603573.955" 
    capture_lex $P803
    .const 'Sub' $P793 = "61_1303603573.955" 
    capture_lex $P793
    .const 'Sub' $P783 = "60_1303603573.955" 
    capture_lex $P783
    .const 'Sub' $P773 = "59_1303603573.955" 
    capture_lex $P773
    .const 'Sub' $P762 = "58_1303603573.955" 
    capture_lex $P762
    .const 'Sub' $P751 = "57_1303603573.955" 
    capture_lex $P751
    .const 'Sub' $P740 = "56_1303603573.955" 
    capture_lex $P740
    .const 'Sub' $P727 = "55_1303603573.955" 
    capture_lex $P727
    .const 'Sub' $P715 = "54_1303603573.955" 
    capture_lex $P715
    .const 'Sub' $P703 = "53_1303603573.955" 
    capture_lex $P703
    .const 'Sub' $P683 = "52_1303603573.955" 
    capture_lex $P683
    .const 'Sub' $P664 = "51_1303603573.955" 
    capture_lex $P664
    .const 'Sub' $P645 = "50_1303603573.955" 
    capture_lex $P645
    nqp_get_sc_object $P628, "1303603572.89", 5
    .local pmc type_obj
    set type_obj, $P628
    get_how $P629, type_obj
    get_hll_global $P630, "NQPAttribute"
    $P631 = $P630."new"("@!array" :named("name"))
    $P629."add_attribute"(type_obj, $P631)
    get_how $P632, type_obj
    get_hll_global $P633, "NQPAttribute"
    $P634 = $P633."new"("%!hash" :named("name"))
    $P632."add_attribute"(type_obj, $P634)
    get_how $P635, type_obj
    .const 'Sub' $P636 = "46_1303603573.955" 
    $P635."add_method"(type_obj, "new", $P636)
    get_how $P637, type_obj
    .const 'Sub' $P638 = "47_1303603573.955" 
    $P637."add_method"(type_obj, "BUILD", $P638)
    get_how $P639, type_obj
    .const 'Sub' $P640 = "48_1303603573.955" 
    $P639."add_method"(type_obj, "list", $P640)
    get_how $P641, type_obj
    .const 'Sub' $P642 = "49_1303603573.955" 
    $P641."add_method"(type_obj, "hash", $P642)
    get_how $P643, type_obj
.annotate 'line', 82
    .const 'Sub' $P645 = "50_1303603573.955" 
    newclosure $P661, $P645
    $P643."add_parrot_vtable_mapping"(type_obj, "get_pmc_keyed_str", $P661)
.annotate 'line', 63
    get_how $P662, type_obj
.annotate 'line', 85
    .const 'Sub' $P664 = "51_1303603573.955" 
    newclosure $P680, $P664
    $P662."add_parrot_vtable_mapping"(type_obj, "get_pmc_keyed", $P680)
.annotate 'line', 63
    get_how $P681, type_obj
.annotate 'line', 88
    .const 'Sub' $P683 = "52_1303603573.955" 
    newclosure $P700, $P683
    $P681."add_parrot_vtable_mapping"(type_obj, "get_pmc_keyed_int", $P700)
.annotate 'line', 63
    get_how $P701, type_obj
.annotate 'line', 92
    .const 'Sub' $P703 = "53_1303603573.955" 
    newclosure $P712, $P703
    $P701."add_parrot_vtable_mapping"(type_obj, "set_pmc_keyed_str", $P712)
.annotate 'line', 63
    get_how $P713, type_obj
.annotate 'line', 95
    .const 'Sub' $P715 = "54_1303603573.955" 
    newclosure $P724, $P715
    $P713."add_parrot_vtable_mapping"(type_obj, "set_pmc_keyed", $P724)
.annotate 'line', 63
    get_how $P725, type_obj
.annotate 'line', 98
    .const 'Sub' $P727 = "55_1303603573.955" 
    newclosure $P737, $P727
    $P725."add_parrot_vtable_mapping"(type_obj, "set_pmc_keyed_int", $P737)
.annotate 'line', 63
    get_how $P738, type_obj
.annotate 'line', 102
    .const 'Sub' $P740 = "56_1303603573.955" 
    newclosure $P748, $P740
    $P738."add_parrot_vtable_mapping"(type_obj, "exists_keyed", $P748)
.annotate 'line', 63
    get_how $P749, type_obj
.annotate 'line', 105
    .const 'Sub' $P751 = "57_1303603573.955" 
    newclosure $P759, $P751
    $P749."add_parrot_vtable_mapping"(type_obj, "exists_keyed_str", $P759)
.annotate 'line', 63
    get_how $P760, type_obj
.annotate 'line', 108
    .const 'Sub' $P762 = "58_1303603573.955" 
    newclosure $P770, $P762
    $P760."add_parrot_vtable_mapping"(type_obj, "exists_keyed_int", $P770)
.annotate 'line', 63
    get_how $P771, type_obj
.annotate 'line', 112
    .const 'Sub' $P773 = "59_1303603573.955" 
    newclosure $P780, $P773
    $P771."add_parrot_vtable_mapping"(type_obj, "delete_keyed", $P780)
.annotate 'line', 63
    get_how $P781, type_obj
.annotate 'line', 115
    .const 'Sub' $P783 = "60_1303603573.955" 
    newclosure $P790, $P783
    $P781."add_parrot_vtable_mapping"(type_obj, "delete_keyed_str", $P790)
.annotate 'line', 63
    get_how $P791, type_obj
.annotate 'line', 118
    .const 'Sub' $P793 = "61_1303603573.955" 
    newclosure $P800, $P793
    $P791."add_parrot_vtable_mapping"(type_obj, "delete_keyed_int", $P800)
.annotate 'line', 63
    get_how $P801, type_obj
.annotate 'line', 122
    .const 'Sub' $P803 = "62_1303603573.955" 
    newclosure $P810, $P803
    $P801."add_parrot_vtable_mapping"(type_obj, "unshift_pmc", $P810)
.annotate 'line', 63
    get_how $P811, type_obj
.annotate 'line', 126
    .const 'Sub' $P813 = "63_1303603573.955" 
    newclosure $P820, $P813
    $P811."add_parrot_vtable_mapping"(type_obj, "push_pmc", $P820)
.annotate 'line', 63
    get_how $P821, type_obj
    nqp_get_sc_object $P822, "1303603572.89", 4
    $P821."set_default_parent"(type_obj, $P822)
    get_how $P823, type_obj
    $P824 = $P823."compose"(type_obj)
    .return ($P824)
.end


.HLL "nqp"

.namespace []
.sub "_block644"  :anon :subid("50_1303603573.955") :outer("64_1303603573.955")
    .param pmc param_646
    .param pmc param_647
.annotate 'line', 82
    .lex "self", param_646
    .lex "$key", param_647
.annotate 'line', 83
    find_lex $P653, "$key"
    unless_null $P653, vivify_181
    new $P653, "Undef"
  vivify_181:
    find_lex $P650, "self"
    find_lex $P651, "$?CLASS"
    getattribute $P652, $P650, $P651, "%!hash"
    unless_null $P652, vivify_182
    $P652 = root_new ['parrot';'Hash']
  vivify_182:
    exists $I654, $P652[$P653]
    if $I654, if_649
    null $P660
    set $P648, $P660
    goto if_649_end
  if_649:
    find_lex $P655, "$key"
    unless_null $P655, vivify_183
    new $P655, "Undef"
  vivify_183:
    find_lex $P656, "self"
    find_lex $P657, "$?CLASS"
    getattribute $P658, $P656, $P657, "%!hash"
    unless_null $P658, vivify_184
    $P658 = root_new ['parrot';'Hash']
  vivify_184:
    set $P659, $P658[$P655]
    unless_null $P659, vivify_185
    new $P659, "Undef"
  vivify_185:
    set $P648, $P659
  if_649_end:
.annotate 'line', 82
    .return ($P648)
.end


.HLL "nqp"

.namespace []
.sub "_block663"  :anon :subid("51_1303603573.955") :outer("64_1303603573.955")
    .param pmc param_665
    .param pmc param_666
.annotate 'line', 85
    .lex "self", param_665
    .lex "$key", param_666
.annotate 'line', 86
    find_lex $P672, "$key"
    unless_null $P672, vivify_186
    new $P672, "Undef"
  vivify_186:
    find_lex $P669, "self"
    find_lex $P670, "$?CLASS"
    getattribute $P671, $P669, $P670, "%!hash"
    unless_null $P671, vivify_187
    $P671 = root_new ['parrot';'Hash']
  vivify_187:
    exists $I673, $P671[$P672]
    if $I673, if_668
    null $P679
    set $P667, $P679
    goto if_668_end
  if_668:
    find_lex $P674, "$key"
    unless_null $P674, vivify_188
    new $P674, "Undef"
  vivify_188:
    find_lex $P675, "self"
    find_lex $P676, "$?CLASS"
    getattribute $P677, $P675, $P676, "%!hash"
    unless_null $P677, vivify_189
    $P677 = root_new ['parrot';'Hash']
  vivify_189:
    set $P678, $P677[$P674]
    unless_null $P678, vivify_190
    new $P678, "Undef"
  vivify_190:
    set $P667, $P678
  if_668_end:
.annotate 'line', 85
    .return ($P667)
.end


.HLL "nqp"

.namespace []
.sub "_block682"  :anon :subid("52_1303603573.955") :outer("64_1303603573.955")
    .param pmc param_684
    .param pmc param_685
.annotate 'line', 88
    .lex "self", param_684
    .lex "$key", param_685
.annotate 'line', 89
    find_lex $P691, "$key"
    unless_null $P691, vivify_191
    new $P691, "Undef"
  vivify_191:
    find_lex $P688, "self"
    find_lex $P689, "$?CLASS"
    getattribute $P690, $P688, $P689, "@!array"
    unless_null $P690, vivify_192
    $P690 = root_new ['parrot';'ResizablePMCArray']
  vivify_192:
    exists $I692, $P690[$P691]
    if $I692, if_687
    null $P699
    set $P686, $P699
    goto if_687_end
  if_687:
    find_lex $P693, "$key"
    unless_null $P693, vivify_193
    new $P693, "Undef"
  vivify_193:
    set $I694, $P693
    find_lex $P695, "self"
    find_lex $P696, "$?CLASS"
    getattribute $P697, $P695, $P696, "@!array"
    unless_null $P697, vivify_194
    $P697 = root_new ['parrot';'ResizablePMCArray']
  vivify_194:
    set $P698, $P697[$I694]
    unless_null $P698, vivify_195
    new $P698, "Undef"
  vivify_195:
    set $P686, $P698
  if_687_end:
.annotate 'line', 88
    .return ($P686)
.end


.HLL "nqp"

.namespace []
.sub "_block702"  :anon :subid("53_1303603573.955") :outer("64_1303603573.955")
    .param pmc param_704
    .param pmc param_705
    .param pmc param_706
.annotate 'line', 92
    .lex "self", param_704
    .lex "$key", param_705
    .lex "$value", param_706
.annotate 'line', 93
    find_lex $P707, "$value"
    unless_null $P707, vivify_196
    new $P707, "Undef"
  vivify_196:
    find_lex $P708, "$key"
    unless_null $P708, vivify_197
    new $P708, "Undef"
  vivify_197:
    find_lex $P709, "self"
    find_lex $P710, "$?CLASS"
    getattribute $P711, $P709, $P710, "%!hash"
    unless_null $P711, vivify_198
    $P711 = root_new ['parrot';'Hash']
    setattribute $P709, $P710, "%!hash", $P711
  vivify_198:
    set $P711[$P708], $P707
.annotate 'line', 92
    .return ($P707)
.end


.HLL "nqp"

.namespace []
.sub "_block714"  :anon :subid("54_1303603573.955") :outer("64_1303603573.955")
    .param pmc param_716
    .param pmc param_717
    .param pmc param_718
.annotate 'line', 95
    .lex "self", param_716
    .lex "$key", param_717
    .lex "$value", param_718
.annotate 'line', 96
    find_lex $P719, "$value"
    unless_null $P719, vivify_199
    new $P719, "Undef"
  vivify_199:
    find_lex $P720, "$key"
    unless_null $P720, vivify_200
    new $P720, "Undef"
  vivify_200:
    find_lex $P721, "self"
    find_lex $P722, "$?CLASS"
    getattribute $P723, $P721, $P722, "%!hash"
    unless_null $P723, vivify_201
    $P723 = root_new ['parrot';'Hash']
    setattribute $P721, $P722, "%!hash", $P723
  vivify_201:
    set $P723[$P720], $P719
.annotate 'line', 95
    .return ($P719)
.end


.HLL "nqp"

.namespace []
.sub "_block726"  :anon :subid("55_1303603573.955") :outer("64_1303603573.955")
    .param pmc param_728
    .param pmc param_729
    .param pmc param_730
.annotate 'line', 98
    .lex "self", param_728
    .lex "$key", param_729
    .lex "$value", param_730
.annotate 'line', 99
    find_lex $P731, "$value"
    unless_null $P731, vivify_202
    new $P731, "Undef"
  vivify_202:
    find_lex $P732, "$key"
    unless_null $P732, vivify_203
    new $P732, "Undef"
  vivify_203:
    set $I733, $P732
    find_lex $P734, "self"
    find_lex $P735, "$?CLASS"
    getattribute $P736, $P734, $P735, "@!array"
    unless_null $P736, vivify_204
    $P736 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P734, $P735, "@!array", $P736
  vivify_204:
    set $P736[$I733], $P731
.annotate 'line', 98
    .return ($P731)
.end


.HLL "nqp"

.namespace []
.sub "_block739"  :anon :subid("56_1303603573.955") :outer("64_1303603573.955")
    .param pmc param_741
    .param pmc param_742
.annotate 'line', 102
    .lex "self", param_741
    .lex "$key", param_742
.annotate 'line', 103
    find_lex $P746, "$key"
    unless_null $P746, vivify_205
    new $P746, "Undef"
  vivify_205:
    find_lex $P743, "self"
    find_lex $P744, "$?CLASS"
    getattribute $P745, $P743, $P744, "%!hash"
    unless_null $P745, vivify_206
    $P745 = root_new ['parrot';'Hash']
  vivify_206:
    exists $I747, $P745[$P746]
.annotate 'line', 102
    .return ($I747)
.end


.HLL "nqp"

.namespace []
.sub "_block750"  :anon :subid("57_1303603573.955") :outer("64_1303603573.955")
    .param pmc param_752
    .param pmc param_753
.annotate 'line', 105
    .lex "self", param_752
    .lex "$key", param_753
.annotate 'line', 106
    find_lex $P757, "$key"
    unless_null $P757, vivify_207
    new $P757, "Undef"
  vivify_207:
    find_lex $P754, "self"
    find_lex $P755, "$?CLASS"
    getattribute $P756, $P754, $P755, "%!hash"
    unless_null $P756, vivify_208
    $P756 = root_new ['parrot';'Hash']
  vivify_208:
    exists $I758, $P756[$P757]
.annotate 'line', 105
    .return ($I758)
.end


.HLL "nqp"

.namespace []
.sub "_block761"  :anon :subid("58_1303603573.955") :outer("64_1303603573.955")
    .param pmc param_763
    .param pmc param_764
.annotate 'line', 108
    .lex "self", param_763
    .lex "$key", param_764
.annotate 'line', 109
    find_lex $P768, "$key"
    unless_null $P768, vivify_209
    new $P768, "Undef"
  vivify_209:
    find_lex $P765, "self"
    find_lex $P766, "$?CLASS"
    getattribute $P767, $P765, $P766, "@!array"
    unless_null $P767, vivify_210
    $P767 = root_new ['parrot';'ResizablePMCArray']
  vivify_210:
    exists $I769, $P767[$P768]
.annotate 'line', 108
    .return ($I769)
.end


.HLL "nqp"

.namespace []
.sub "_block772"  :anon :subid("59_1303603573.955") :outer("64_1303603573.955")
    .param pmc param_774
    .param pmc param_775
.annotate 'line', 112
    .lex "self", param_774
    .lex "$key", param_775
.annotate 'line', 113
    find_lex $P779, "$key"
    unless_null $P779, vivify_211
    new $P779, "Undef"
  vivify_211:
    find_lex $P776, "self"
    find_lex $P777, "$?CLASS"
    getattribute $P778, $P776, $P777, "%!hash"
    unless_null $P778, vivify_212
    $P778 = root_new ['parrot';'Hash']
  vivify_212:
    delete $P778[$P779]
.annotate 'line', 112
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block782"  :anon :subid("60_1303603573.955") :outer("64_1303603573.955")
    .param pmc param_784
    .param pmc param_785
.annotate 'line', 115
    .lex "self", param_784
    .lex "$key", param_785
.annotate 'line', 116
    find_lex $P789, "$key"
    unless_null $P789, vivify_213
    new $P789, "Undef"
  vivify_213:
    find_lex $P786, "self"
    find_lex $P787, "$?CLASS"
    getattribute $P788, $P786, $P787, "%!hash"
    unless_null $P788, vivify_214
    $P788 = root_new ['parrot';'Hash']
  vivify_214:
    delete $P788[$P789]
.annotate 'line', 115
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block792"  :anon :subid("61_1303603573.955") :outer("64_1303603573.955")
    .param pmc param_794
    .param pmc param_795
.annotate 'line', 118
    .lex "self", param_794
    .lex "$key", param_795
.annotate 'line', 119
    find_lex $P799, "$key"
    unless_null $P799, vivify_215
    new $P799, "Undef"
  vivify_215:
    find_lex $P796, "self"
    find_lex $P797, "$?CLASS"
    getattribute $P798, $P796, $P797, "@!array"
    unless_null $P798, vivify_216
    $P798 = root_new ['parrot';'ResizablePMCArray']
  vivify_216:
    delete $P798[$P799]
.annotate 'line', 118
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block802"  :anon :subid("62_1303603573.955") :outer("64_1303603573.955")
    .param pmc param_804
    .param pmc param_805
.annotate 'line', 122
    .lex "self", param_804
    .lex "$value", param_805
.annotate 'line', 123
    find_lex $P806, "self"
    find_lex $P807, "$?CLASS"
    getattribute $P808, $P806, $P807, "@!array"
    unless_null $P808, vivify_217
    $P808 = root_new ['parrot';'ResizablePMCArray']
  vivify_217:
    find_lex $P809, "$value"
    unless_null $P809, vivify_218
    new $P809, "Undef"
  vivify_218:
    unshift $P808, $P809
.annotate 'line', 122
    .return ($P808)
.end


.HLL "nqp"

.namespace []
.sub "_block812"  :anon :subid("63_1303603573.955") :outer("64_1303603573.955")
    .param pmc param_814
    .param pmc param_815
.annotate 'line', 126
    .lex "self", param_814
    .lex "$value", param_815
.annotate 'line', 127
    find_lex $P816, "self"
    find_lex $P817, "$?CLASS"
    getattribute $P818, $P816, $P817, "@!array"
    unless_null $P818, vivify_219
    $P818 = root_new ['parrot';'ResizablePMCArray']
  vivify_219:
    find_lex $P819, "$value"
    unless_null $P819, vivify_220
    new $P819, "Undef"
  vivify_220:
    unshift $P818, $P819
.annotate 'line', 126
    .return ($P818)
.end


.HLL "nqp"

.namespace []
.sub "new"  :subid("46_1303603573.955") :outer("45_1303603573.955")
    .param pmc param_451
.annotate 'line', 67
    .lex "self", param_451
.annotate 'line', 68
    new $P452, "Undef"
    .lex "$n", $P452
    find_lex $P453, "self"
    $P454 = $P453."CREATE"()
    store_lex "$n", $P454
.annotate 'line', 69
    find_lex $P455, "$n"
    unless_null $P455, vivify_221
    new $P455, "Undef"
  vivify_221:
    $P455."BUILD"()
    find_lex $P456, "$n"
    unless_null $P456, vivify_222
    new $P456, "Undef"
  vivify_222:
.annotate 'line', 67
    .return ($P456)
.end


.HLL "nqp"

.namespace []
.sub "BUILD"  :subid("47_1303603573.955") :outer("45_1303603573.955")
    .param pmc param_458
.annotate 'line', 73
    .lex "self", param_458
.annotate 'line', 74
    new $P459, "ResizablePMCArray"
    find_lex $P460, "self"
    find_lex $P461, "$?CLASS"
    setattribute $P460, $P461, "@!array", $P459
.annotate 'line', 75
    new $P462, "Hash"
    find_lex $P463, "self"
    find_lex $P464, "$?CLASS"
    setattribute $P463, $P464, "%!hash", $P462
.annotate 'line', 73
    .return ($P462)
.end


.HLL "nqp"

.namespace []
.sub "list"  :subid("48_1303603573.955") :outer("45_1303603573.955")
    .param pmc param_466
.annotate 'line', 78
    .lex "self", param_466
    find_lex $P467, "self"
    find_lex $P468, "$?CLASS"
    getattribute $P469, $P467, $P468, "@!array"
    unless_null $P469, vivify_223
    $P469 = root_new ['parrot';'ResizablePMCArray']
  vivify_223:
    .return ($P469)
.end


.HLL "nqp"

.namespace []
.sub "hash"  :subid("49_1303603573.955") :outer("45_1303603573.955")
    .param pmc param_471
.annotate 'line', 80
    .lex "self", param_471
    find_lex $P472, "self"
    find_lex $P473, "$?CLASS"
    getattribute $P474, $P472, $P473, "%!hash"
    unless_null $P474, vivify_224
    $P474 = root_new ['parrot';'Hash']
  vivify_224:
    .return ($P474)
.end


.HLL "nqp"

.namespace []
.sub "_block475"  :anon :subid("50_1303603573.955") :outer("45_1303603573.955")
    .param pmc param_477
    .param pmc param_478
.annotate 'line', 82
    .lex "self", param_477
    .lex "$key", param_478
.annotate 'line', 83
    find_lex $P484, "$key"
    unless_null $P484, vivify_225
    new $P484, "Undef"
  vivify_225:
    find_lex $P481, "self"
    find_lex $P482, "$?CLASS"
    getattribute $P483, $P481, $P482, "%!hash"
    unless_null $P483, vivify_226
    $P483 = root_new ['parrot';'Hash']
  vivify_226:
    exists $I485, $P483[$P484]
    if $I485, if_480
    null $P491
    set $P479, $P491
    goto if_480_end
  if_480:
    find_lex $P486, "$key"
    unless_null $P486, vivify_227
    new $P486, "Undef"
  vivify_227:
    find_lex $P487, "self"
    find_lex $P488, "$?CLASS"
    getattribute $P489, $P487, $P488, "%!hash"
    unless_null $P489, vivify_228
    $P489 = root_new ['parrot';'Hash']
  vivify_228:
    set $P490, $P489[$P486]
    unless_null $P490, vivify_229
    new $P490, "Undef"
  vivify_229:
    set $P479, $P490
  if_480_end:
.annotate 'line', 82
    .return ($P479)
.end


.HLL "nqp"

.namespace []
.sub "_block492"  :anon :subid("51_1303603573.955") :outer("45_1303603573.955")
    .param pmc param_494
    .param pmc param_495
.annotate 'line', 85
    .lex "self", param_494
    .lex "$key", param_495
.annotate 'line', 86
    find_lex $P501, "$key"
    unless_null $P501, vivify_230
    new $P501, "Undef"
  vivify_230:
    find_lex $P498, "self"
    find_lex $P499, "$?CLASS"
    getattribute $P500, $P498, $P499, "%!hash"
    unless_null $P500, vivify_231
    $P500 = root_new ['parrot';'Hash']
  vivify_231:
    exists $I502, $P500[$P501]
    if $I502, if_497
    null $P508
    set $P496, $P508
    goto if_497_end
  if_497:
    find_lex $P503, "$key"
    unless_null $P503, vivify_232
    new $P503, "Undef"
  vivify_232:
    find_lex $P504, "self"
    find_lex $P505, "$?CLASS"
    getattribute $P506, $P504, $P505, "%!hash"
    unless_null $P506, vivify_233
    $P506 = root_new ['parrot';'Hash']
  vivify_233:
    set $P507, $P506[$P503]
    unless_null $P507, vivify_234
    new $P507, "Undef"
  vivify_234:
    set $P496, $P507
  if_497_end:
.annotate 'line', 85
    .return ($P496)
.end


.HLL "nqp"

.namespace []
.sub "_block509"  :anon :subid("52_1303603573.955") :outer("45_1303603573.955")
    .param pmc param_511
    .param pmc param_512
.annotate 'line', 88
    .lex "self", param_511
    .lex "$key", param_512
.annotate 'line', 89
    find_lex $P518, "$key"
    unless_null $P518, vivify_235
    new $P518, "Undef"
  vivify_235:
    find_lex $P515, "self"
    find_lex $P516, "$?CLASS"
    getattribute $P517, $P515, $P516, "@!array"
    unless_null $P517, vivify_236
    $P517 = root_new ['parrot';'ResizablePMCArray']
  vivify_236:
    exists $I519, $P517[$P518]
    if $I519, if_514
    null $P526
    set $P513, $P526
    goto if_514_end
  if_514:
    find_lex $P520, "$key"
    unless_null $P520, vivify_237
    new $P520, "Undef"
  vivify_237:
    set $I521, $P520
    find_lex $P522, "self"
    find_lex $P523, "$?CLASS"
    getattribute $P524, $P522, $P523, "@!array"
    unless_null $P524, vivify_238
    $P524 = root_new ['parrot';'ResizablePMCArray']
  vivify_238:
    set $P525, $P524[$I521]
    unless_null $P525, vivify_239
    new $P525, "Undef"
  vivify_239:
    set $P513, $P525
  if_514_end:
.annotate 'line', 88
    .return ($P513)
.end


.HLL "nqp"

.namespace []
.sub "_block527"  :anon :subid("53_1303603573.955") :outer("45_1303603573.955")
    .param pmc param_529
    .param pmc param_530
    .param pmc param_531
.annotate 'line', 92
    .lex "self", param_529
    .lex "$key", param_530
    .lex "$value", param_531
.annotate 'line', 93
    find_lex $P532, "$value"
    unless_null $P532, vivify_240
    new $P532, "Undef"
  vivify_240:
    find_lex $P533, "$key"
    unless_null $P533, vivify_241
    new $P533, "Undef"
  vivify_241:
    find_lex $P534, "self"
    find_lex $P535, "$?CLASS"
    getattribute $P536, $P534, $P535, "%!hash"
    unless_null $P536, vivify_242
    $P536 = root_new ['parrot';'Hash']
    setattribute $P534, $P535, "%!hash", $P536
  vivify_242:
    set $P536[$P533], $P532
.annotate 'line', 92
    .return ($P532)
.end


.HLL "nqp"

.namespace []
.sub "_block537"  :anon :subid("54_1303603573.955") :outer("45_1303603573.955")
    .param pmc param_539
    .param pmc param_540
    .param pmc param_541
.annotate 'line', 95
    .lex "self", param_539
    .lex "$key", param_540
    .lex "$value", param_541
.annotate 'line', 96
    find_lex $P542, "$value"
    unless_null $P542, vivify_243
    new $P542, "Undef"
  vivify_243:
    find_lex $P543, "$key"
    unless_null $P543, vivify_244
    new $P543, "Undef"
  vivify_244:
    find_lex $P544, "self"
    find_lex $P545, "$?CLASS"
    getattribute $P546, $P544, $P545, "%!hash"
    unless_null $P546, vivify_245
    $P546 = root_new ['parrot';'Hash']
    setattribute $P544, $P545, "%!hash", $P546
  vivify_245:
    set $P546[$P543], $P542
.annotate 'line', 95
    .return ($P542)
.end


.HLL "nqp"

.namespace []
.sub "_block547"  :anon :subid("55_1303603573.955") :outer("45_1303603573.955")
    .param pmc param_549
    .param pmc param_550
    .param pmc param_551
.annotate 'line', 98
    .lex "self", param_549
    .lex "$key", param_550
    .lex "$value", param_551
.annotate 'line', 99
    find_lex $P552, "$value"
    unless_null $P552, vivify_246
    new $P552, "Undef"
  vivify_246:
    find_lex $P553, "$key"
    unless_null $P553, vivify_247
    new $P553, "Undef"
  vivify_247:
    set $I554, $P553
    find_lex $P555, "self"
    find_lex $P556, "$?CLASS"
    getattribute $P557, $P555, $P556, "@!array"
    unless_null $P557, vivify_248
    $P557 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P555, $P556, "@!array", $P557
  vivify_248:
    set $P557[$I554], $P552
.annotate 'line', 98
    .return ($P552)
.end


.HLL "nqp"

.namespace []
.sub "_block558"  :anon :subid("56_1303603573.955") :outer("45_1303603573.955")
    .param pmc param_560
    .param pmc param_561
.annotate 'line', 102
    .lex "self", param_560
    .lex "$key", param_561
.annotate 'line', 103
    find_lex $P565, "$key"
    unless_null $P565, vivify_249
    new $P565, "Undef"
  vivify_249:
    find_lex $P562, "self"
    find_lex $P563, "$?CLASS"
    getattribute $P564, $P562, $P563, "%!hash"
    unless_null $P564, vivify_250
    $P564 = root_new ['parrot';'Hash']
  vivify_250:
    exists $I566, $P564[$P565]
.annotate 'line', 102
    .return ($I566)
.end


.HLL "nqp"

.namespace []
.sub "_block567"  :anon :subid("57_1303603573.955") :outer("45_1303603573.955")
    .param pmc param_569
    .param pmc param_570
.annotate 'line', 105
    .lex "self", param_569
    .lex "$key", param_570
.annotate 'line', 106
    find_lex $P574, "$key"
    unless_null $P574, vivify_251
    new $P574, "Undef"
  vivify_251:
    find_lex $P571, "self"
    find_lex $P572, "$?CLASS"
    getattribute $P573, $P571, $P572, "%!hash"
    unless_null $P573, vivify_252
    $P573 = root_new ['parrot';'Hash']
  vivify_252:
    exists $I575, $P573[$P574]
.annotate 'line', 105
    .return ($I575)
.end


.HLL "nqp"

.namespace []
.sub "_block576"  :anon :subid("58_1303603573.955") :outer("45_1303603573.955")
    .param pmc param_578
    .param pmc param_579
.annotate 'line', 108
    .lex "self", param_578
    .lex "$key", param_579
.annotate 'line', 109
    find_lex $P583, "$key"
    unless_null $P583, vivify_253
    new $P583, "Undef"
  vivify_253:
    find_lex $P580, "self"
    find_lex $P581, "$?CLASS"
    getattribute $P582, $P580, $P581, "@!array"
    unless_null $P582, vivify_254
    $P582 = root_new ['parrot';'ResizablePMCArray']
  vivify_254:
    exists $I584, $P582[$P583]
.annotate 'line', 108
    .return ($I584)
.end


.HLL "nqp"

.namespace []
.sub "_block585"  :anon :subid("59_1303603573.955") :outer("45_1303603573.955")
    .param pmc param_587
    .param pmc param_588
.annotate 'line', 112
    .lex "self", param_587
    .lex "$key", param_588
.annotate 'line', 113
    find_lex $P592, "$key"
    unless_null $P592, vivify_255
    new $P592, "Undef"
  vivify_255:
    find_lex $P589, "self"
    find_lex $P590, "$?CLASS"
    getattribute $P591, $P589, $P590, "%!hash"
    unless_null $P591, vivify_256
    $P591 = root_new ['parrot';'Hash']
  vivify_256:
    delete $P591[$P592]
.annotate 'line', 112
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block593"  :anon :subid("60_1303603573.955") :outer("45_1303603573.955")
    .param pmc param_595
    .param pmc param_596
.annotate 'line', 115
    .lex "self", param_595
    .lex "$key", param_596
.annotate 'line', 116
    find_lex $P600, "$key"
    unless_null $P600, vivify_257
    new $P600, "Undef"
  vivify_257:
    find_lex $P597, "self"
    find_lex $P598, "$?CLASS"
    getattribute $P599, $P597, $P598, "%!hash"
    unless_null $P599, vivify_258
    $P599 = root_new ['parrot';'Hash']
  vivify_258:
    delete $P599[$P600]
.annotate 'line', 115
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block601"  :anon :subid("61_1303603573.955") :outer("45_1303603573.955")
    .param pmc param_603
    .param pmc param_604
.annotate 'line', 118
    .lex "self", param_603
    .lex "$key", param_604
.annotate 'line', 119
    find_lex $P608, "$key"
    unless_null $P608, vivify_259
    new $P608, "Undef"
  vivify_259:
    find_lex $P605, "self"
    find_lex $P606, "$?CLASS"
    getattribute $P607, $P605, $P606, "@!array"
    unless_null $P607, vivify_260
    $P607 = root_new ['parrot';'ResizablePMCArray']
  vivify_260:
    delete $P607[$P608]
.annotate 'line', 118
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block609"  :anon :subid("62_1303603573.955") :outer("45_1303603573.955")
    .param pmc param_611
    .param pmc param_612
.annotate 'line', 122
    .lex "self", param_611
    .lex "$value", param_612
.annotate 'line', 123
    find_lex $P613, "self"
    find_lex $P614, "$?CLASS"
    getattribute $P615, $P613, $P614, "@!array"
    unless_null $P615, vivify_261
    $P615 = root_new ['parrot';'ResizablePMCArray']
  vivify_261:
    find_lex $P616, "$value"
    unless_null $P616, vivify_262
    new $P616, "Undef"
  vivify_262:
    unshift $P615, $P616
.annotate 'line', 122
    .return ($P615)
.end


.HLL "nqp"

.namespace []
.sub "_block617"  :anon :subid("63_1303603573.955") :outer("45_1303603573.955")
    .param pmc param_619
    .param pmc param_620
.annotate 'line', 126
    .lex "self", param_619
    .lex "$value", param_620
.annotate 'line', 127
    find_lex $P621, "self"
    find_lex $P622, "$?CLASS"
    getattribute $P623, $P621, $P622, "@!array"
    unless_null $P623, vivify_263
    $P623 = root_new ['parrot';'ResizablePMCArray']
  vivify_263:
    find_lex $P624, "$value"
    unless_null $P624, vivify_264
    new $P624, "Undef"
  vivify_264:
    unshift $P623, $P624
.annotate 'line', 126
    .return ($P623)
.end


.HLL "nqp"

.namespace []
.sub "_block838" :load :anon :subid("65_1303603573.955")
.annotate 'line', 1
    .const 'Sub' $P840 = "10_1303603573.955" 
    $P841 = $P840()
    .return ($P841)
.end

