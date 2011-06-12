.include 'cclass.pasm'
.include 'except_severity.pasm'
.include 'except_types.pasm'
.include 'iglobals.pasm'
.include 'interpinfo.pasm'
.include 'iterator.pasm'
.include 'sysinfo.pasm'

.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.loadlib "trans_ops"

.loadlib "io_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1307873280.41316")
    .param pmc param_13 :slurpy
.annotate 'line', 0
    .const 'Sub' $P498 = "46_1307873280.41316" 
    capture_lex $P498
    .const 'Sub' $P378 = "32_1307873280.41316" 
    capture_lex $P378
    .const 'Sub' $P374 = "31_1307873280.41316" 
    capture_lex $P374
    .const 'Sub' $P370 = "30_1307873280.41316" 
    capture_lex $P370
    .const 'Sub' $P366 = "29_1307873280.41316" 
    capture_lex $P366
    .const 'Sub' $P306 = "28_1307873280.41316" 
    capture_lex $P306
    .const 'Sub' $P292 = "27_1307873280.41316" 
    capture_lex $P292
    .const 'Sub' $P282 = "26_1307873280.41316" 
    capture_lex $P282
    .const 'Sub' $P253 = "25_1307873280.41316" 
    capture_lex $P253
    .const 'Sub' $P246 = "24_1307873280.41316" 
    capture_lex $P246
    .const 'Sub' $P222 = "22_1307873280.41316" 
    capture_lex $P222
    .const 'Sub' $P135 = "20_1307873280.41316" 
    capture_lex $P135
    .const 'Sub' $P102 = "18_1307873280.41316" 
    capture_lex $P102
    .const 'Sub' $P97 = "17_1307873280.41316" 
    capture_lex $P97
    .const 'Sub' $P83 = "15_1307873280.41316" 
    capture_lex $P83
    .const 'Sub' $P71 = "14_1307873280.41316" 
    capture_lex $P71
    .const 'Sub' $P60 = "13_1307873280.41316" 
    capture_lex $P60
    .const 'Sub' $P55 = "12_1307873280.41316" 
    capture_lex $P55
    .const 'Sub' $P22 = "11_1307873280.41316" 
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
.annotate 'line', 130
    .const 'Sub' $P22 = "11_1307873280.41316" 
    newclosure $P54, $P22
    .lex "open", $P54
.annotate 'line', 142
    .const 'Sub' $P55 = "12_1307873280.41316" 
    newclosure $P59, $P55
    .lex "close", $P59
.annotate 'line', 150
    .const 'Sub' $P60 = "13_1307873280.41316" 
    newclosure $P70, $P60
    .lex "slurp", $P70
.annotate 'line', 162
    .const 'Sub' $P71 = "14_1307873280.41316" 
    newclosure $P82, $P71
    .lex "spew", $P82
.annotate 'line', 169
    .const 'Sub' $P83 = "15_1307873280.41316" 
    newclosure $P96, $P83
    .lex "print", $P96
.annotate 'line', 176
    .const 'Sub' $P97 = "17_1307873280.41316" 
    newclosure $P101, $P97
    .lex "say", $P101
.annotate 'line', 194
    .const 'Sub' $P102 = "18_1307873280.41316" 
    newclosure $P134, $P102
    .lex "match", $P134
.annotate 'line', 216
    .const 'Sub' $P135 = "20_1307873280.41316" 
    newclosure $P221, $P135
    .lex "subst", $P221
.annotate 'line', 242
    .const 'Sub' $P222 = "22_1307873280.41316" 
    newclosure $P242, $P222
    .lex "hash", $P242
.annotate 'line', 251
    new $P243, "Undef"
    .lex "$test_counter", $P243
.annotate 'line', 252
    new $P244, "Undef"
    .lex "$todo_upto_test_num", $P244
.annotate 'line', 253
    new $P245, "Undef"
    .lex "$todo_reason", $P245
.annotate 'line', 255
    .const 'Sub' $P246 = "24_1307873280.41316" 
    newclosure $P252, $P246
    .lex "plan", $P252
.annotate 'line', 259
    .const 'Sub' $P253 = "25_1307873280.41316" 
    newclosure $P281, $P253
    .lex "ok", $P281
.annotate 'line', 277
    .const 'Sub' $P282 = "26_1307873280.41316" 
    newclosure $P291, $P282
    .lex "todo", $P291
.annotate 'line', 282
    .const 'Sub' $P292 = "27_1307873280.41316" 
    newclosure $P304, $P292
    .lex "skip", $P304
.annotate 'line', 12
    .const 'Sub' $P306 = "28_1307873280.41316" 
    capture_lex $P306
    $P306()
.annotate 'line', 23
    .const 'Sub' $P366 = "29_1307873280.41316" 
    capture_lex $P366
    $P366()
.annotate 'line', 25
    .const 'Sub' $P370 = "30_1307873280.41316" 
    capture_lex $P370
    $P370()
.annotate 'line', 27
    .const 'Sub' $P374 = "31_1307873280.41316" 
    capture_lex $P374
    $P374()
.annotate 'line', 30
    .const 'Sub' $P378 = "32_1307873280.41316" 
    capture_lex $P378
    $P378()
.annotate 'line', 81
    .const 'Sub' $P498 = "46_1307873280.41316" 
    capture_lex $P498
    $P498()
    find_lex $P527, "open"
    find_lex $P528, "close"
    find_lex $P529, "slurp"
    find_lex $P530, "spew"
    find_lex $P531, "print"
    find_lex $P532, "say"
    find_lex $P533, "match"
    find_lex $P534, "subst"
    find_lex $P535, "hash"
.annotate 'line', 251
    new $P536, "Integer"
    assign $P536, 0
    store_lex "$test_counter", $P536
.annotate 'line', 252
    new $P537, "Integer"
    assign $P537, 0
    store_lex "$todo_upto_test_num", $P537
.annotate 'line', 253
    new $P538, "String"
    assign $P538, ""
    store_lex "$todo_reason", $P538
    find_lex $P539, "plan"
    find_lex $P540, "ok"
    find_lex $P541, "todo"
    find_lex $P542, "skip"
    new $P543, "Integer"
    assign $P543, 1
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
    find_lex $P546, "@ARGS"
    if $P546, if_545
    set $P544, $P546
    goto if_545_end
  if_545:
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P547, "ModuleLoader"
    getinterp $P548
    set $P549, $P548["context"]
    $P550 = $P547."set_mainline_module"($P549)
    set $P544, $P550
  if_545_end:
.annotate 'line', 1
    .return ($P544)
    .const 'Sub' $P552 = "51_1307873280.41316" 
    .return ($P552)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post52") :outer("10_1307873280.41316")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1307873280.41316" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P556, "1307873279.6478"
    isnull $I557, $P556
    if $I557, if_555
    .const 'Sub' $P829 = "10_1307873280.41316" 
    $P830 = $P829."get_lexinfo"()
    nqp_get_sc_object $P831, "1307873279.6478", 0
    $P830."set_static_lexpad_value"("GLOBALish", $P831)
    .const 'Sub' $P832 = "10_1307873280.41316" 
    $P833 = $P832."get_lexinfo"()
    $P833."finish_static_lexpad"()
    .const 'Sub' $P834 = "10_1307873280.41316" 
    $P835 = $P834."get_lexinfo"()
    nqp_get_sc_object $P836, "1307873279.6478", 0
    $P835."set_static_lexpad_value"("$?PACKAGE", $P836)
    .const 'Sub' $P837 = "10_1307873280.41316" 
    $P838 = $P837."get_lexinfo"()
    $P838."finish_static_lexpad"()
    .const 'Sub' $P839 = "10_1307873280.41316" 
    $P840 = $P839."get_lexinfo"()
    nqp_get_sc_object $P841, "1307873279.6478", 1
    $P840."set_static_lexpad_value"("EXPORTHOW", $P841)
    .const 'Sub' $P842 = "10_1307873280.41316" 
    $P843 = $P842."get_lexinfo"()
    $P843."finish_static_lexpad"()
    .const 'Sub' $P844 = "28_1307873280.41316" 
    $P845 = $P844."get_lexinfo"()
    nqp_get_sc_object $P846, "1307873279.6478", 1
    $P845."set_static_lexpad_value"("$?PACKAGE", $P846)
    .const 'Sub' $P847 = "28_1307873280.41316" 
    $P848 = $P847."get_lexinfo"()
    $P848."finish_static_lexpad"()
    .const 'Sub' $P849 = "28_1307873280.41316" 
    $P850 = $P849."get_lexinfo"()
    nqp_get_sc_object $P851, "1307873279.6478", 1
    $P850."set_static_lexpad_value"("$?CLASS", $P851)
    .const 'Sub' $P852 = "28_1307873280.41316" 
    $P853 = $P852."get_lexinfo"()
    $P853."finish_static_lexpad"()
    .const 'Sub' $P854 = "10_1307873280.41316" 
    $P855 = $P854."get_lexinfo"()
    nqp_get_sc_object $P856, "1307873279.6478", 2
    $P855."set_static_lexpad_value"("int", $P856)
    .const 'Sub' $P857 = "10_1307873280.41316" 
    $P858 = $P857."get_lexinfo"()
    $P858."finish_static_lexpad"()
    .const 'Sub' $P859 = "29_1307873280.41316" 
    $P860 = $P859."get_lexinfo"()
    nqp_get_sc_object $P861, "1307873279.6478", 2
    $P860."set_static_lexpad_value"("$?PACKAGE", $P861)
    .const 'Sub' $P862 = "29_1307873280.41316" 
    $P863 = $P862."get_lexinfo"()
    $P863."finish_static_lexpad"()
    .const 'Sub' $P864 = "29_1307873280.41316" 
    $P865 = $P864."get_lexinfo"()
    nqp_get_sc_object $P866, "1307873279.6478", 2
    $P865."set_static_lexpad_value"("$?CLASS", $P866)
    .const 'Sub' $P867 = "29_1307873280.41316" 
    $P868 = $P867."get_lexinfo"()
    $P868."finish_static_lexpad"()
    .const 'Sub' $P869 = "10_1307873280.41316" 
    $P870 = $P869."get_lexinfo"()
    nqp_get_sc_object $P871, "1307873279.6478", 3
    $P870."set_static_lexpad_value"("num", $P871)
    .const 'Sub' $P872 = "10_1307873280.41316" 
    $P873 = $P872."get_lexinfo"()
    $P873."finish_static_lexpad"()
    .const 'Sub' $P874 = "30_1307873280.41316" 
    $P875 = $P874."get_lexinfo"()
    nqp_get_sc_object $P876, "1307873279.6478", 3
    $P875."set_static_lexpad_value"("$?PACKAGE", $P876)
    .const 'Sub' $P877 = "30_1307873280.41316" 
    $P878 = $P877."get_lexinfo"()
    $P878."finish_static_lexpad"()
    .const 'Sub' $P879 = "30_1307873280.41316" 
    $P880 = $P879."get_lexinfo"()
    nqp_get_sc_object $P881, "1307873279.6478", 3
    $P880."set_static_lexpad_value"("$?CLASS", $P881)
    .const 'Sub' $P882 = "30_1307873280.41316" 
    $P883 = $P882."get_lexinfo"()
    $P883."finish_static_lexpad"()
    .const 'Sub' $P884 = "10_1307873280.41316" 
    $P885 = $P884."get_lexinfo"()
    nqp_get_sc_object $P886, "1307873279.6478", 4
    $P885."set_static_lexpad_value"("str", $P886)
    .const 'Sub' $P887 = "10_1307873280.41316" 
    $P888 = $P887."get_lexinfo"()
    $P888."finish_static_lexpad"()
    .const 'Sub' $P889 = "31_1307873280.41316" 
    $P890 = $P889."get_lexinfo"()
    nqp_get_sc_object $P891, "1307873279.6478", 4
    $P890."set_static_lexpad_value"("$?PACKAGE", $P891)
    .const 'Sub' $P892 = "31_1307873280.41316" 
    $P893 = $P892."get_lexinfo"()
    $P893."finish_static_lexpad"()
    .const 'Sub' $P894 = "31_1307873280.41316" 
    $P895 = $P894."get_lexinfo"()
    nqp_get_sc_object $P896, "1307873279.6478", 4
    $P895."set_static_lexpad_value"("$?CLASS", $P896)
    .const 'Sub' $P897 = "31_1307873280.41316" 
    $P898 = $P897."get_lexinfo"()
    $P898."finish_static_lexpad"()
    .const 'Sub' $P899 = "10_1307873280.41316" 
    $P900 = $P899."get_lexinfo"()
    nqp_get_sc_object $P901, "1307873279.6478", 5
    $P900."set_static_lexpad_value"("NQPMu", $P901)
    .const 'Sub' $P902 = "10_1307873280.41316" 
    $P903 = $P902."get_lexinfo"()
    $P903."finish_static_lexpad"()
    nqp_get_sc_object $P904, "1307873279.6478", 6
    .const 'Sub' $P905 = "33_1307873280.41316" 
    assign $P904, $P905
    nqp_get_sc_object $P906, "1307873279.6478", 7
    .const 'Sub' $P907 = "34_1307873280.41316" 
    assign $P906, $P907
    nqp_get_sc_object $P908, "1307873279.6478", 8
    .const 'Sub' $P909 = "35_1307873280.41316" 
    assign $P908, $P909
    nqp_get_sc_object $P910, "1307873279.6478", 9
    .const 'Sub' $P911 = "37_1307873280.41316" 
    assign $P910, $P911
    nqp_get_sc_object $P912, "1307873279.6478", 10
    .const 'Sub' $P913 = "39_1307873280.41316" 
    assign $P912, $P913
    nqp_get_sc_object $P914, "1307873279.6478", 11
    .const 'Sub' $P915 = "40_1307873280.41316" 
    assign $P914, $P915
    nqp_get_sc_object $P916, "1307873279.6478", 11
    .const 'Sub' $P917 = "40_1307873280.41316" 
    assign $P916, $P917
    .const 'Sub' $P918 = "41_1307873280.41316" 
    nqp_get_sc_object $P919, "1307873279.6478", 5
    new $P920, "ResizablePMCArray"
    push $P920, $P919
    new $P921, "ResizablePMCArray"
    push $P921, 2
    set_sub_multisig $P918, $P920, $P921
    nqp_get_sc_object $P922, "1307873279.6478", 12
    .const 'Sub' $P923 = "41_1307873280.41316" 
    assign $P922, $P923
    nqp_get_sc_object $P924, "1307873279.6478", 13
    .const 'Sub' $P925 = "42_1307873280.41316" 
    assign $P924, $P925
    .const 'Sub' $P926 = "43_1307873280.41316" 
    nqp_get_sc_object $P927, "1307873279.6478", 5
    null $P928
    new $P929, "ResizablePMCArray"
    push $P929, $P927
    push $P929, $P928
    new $P930, "ResizablePMCArray"
    push $P930, 2
    push $P930, 0
    set_sub_multisig $P926, $P929, $P930
    nqp_get_sc_object $P931, "1307873279.6478", 14
    .const 'Sub' $P932 = "43_1307873280.41316" 
    assign $P931, $P932
    nqp_get_sc_object $P933, "1307873279.6478", 15
    .const 'Sub' $P934 = "44_1307873280.41316" 
    assign $P933, $P934
    nqp_get_sc_object $P935, "1307873279.6478", 16
    .const 'Sub' $P936 = "45_1307873280.41316" 
    assign $P935, $P936
    .const 'Sub' $P937 = "32_1307873280.41316" 
    $P938 = $P937."get_lexinfo"()
    nqp_get_sc_object $P939, "1307873279.6478", 5
    $P938."set_static_lexpad_value"("$?PACKAGE", $P939)
    .const 'Sub' $P940 = "32_1307873280.41316" 
    $P941 = $P940."get_lexinfo"()
    $P941."finish_static_lexpad"()
    .const 'Sub' $P942 = "32_1307873280.41316" 
    $P943 = $P942."get_lexinfo"()
    nqp_get_sc_object $P944, "1307873279.6478", 5
    $P943."set_static_lexpad_value"("$?CLASS", $P944)
    .const 'Sub' $P945 = "32_1307873280.41316" 
    $P946 = $P945."get_lexinfo"()
    $P946."finish_static_lexpad"()
    .const 'Sub' $P947 = "10_1307873280.41316" 
    $P948 = $P947."get_lexinfo"()
    nqp_get_sc_object $P949, "1307873279.6478", 17
    $P948."set_static_lexpad_value"("NQPCapture", $P949)
    .const 'Sub' $P950 = "10_1307873280.41316" 
    $P951 = $P950."get_lexinfo"()
    $P951."finish_static_lexpad"()
    nqp_get_sc_object $P952, "1307873279.6478", 18
    .const 'Sub' $P953 = "47_1307873280.41316" 
    assign $P952, $P953
    nqp_get_sc_object $P954, "1307873279.6478", 19
    .const 'Sub' $P955 = "48_1307873280.41316" 
    assign $P954, $P955
    nqp_get_sc_object $P956, "1307873279.6478", 20
    .const 'Sub' $P957 = "49_1307873280.41316" 
    assign $P956, $P957
    nqp_get_sc_object $P958, "1307873279.6478", 21
    .const 'Sub' $P959 = "50_1307873280.41316" 
    assign $P958, $P959
    .const 'Sub' $P960 = "46_1307873280.41316" 
    $P961 = $P960."get_lexinfo"()
    nqp_get_sc_object $P962, "1307873279.6478", 17
    $P961."set_static_lexpad_value"("$?PACKAGE", $P962)
    .const 'Sub' $P963 = "46_1307873280.41316" 
    $P964 = $P963."get_lexinfo"()
    $P964."finish_static_lexpad"()
    .const 'Sub' $P965 = "46_1307873280.41316" 
    $P966 = $P965."get_lexinfo"()
    nqp_get_sc_object $P967, "1307873279.6478", 17
    $P966."set_static_lexpad_value"("$?CLASS", $P967)
    .const 'Sub' $P968 = "46_1307873280.41316" 
    $P969 = $P968."get_lexinfo"()
    $P969."finish_static_lexpad"()
    goto if_555_end
  if_555:
    nqp_dynop_setup 
    getinterp $P558
    get_class $P559, "LexPad"
    get_class $P560, "NQPLexPad"
    $P558."hll_map"($P559, $P560)
    nqp_create_sc $P561, "1307873279.6478"
    .local pmc cur_sc
    set cur_sc, $P561
    nqp_get_sc_object $P562, "__6MODEL_CORE__", 0
    $P563 = $P562."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P563, cur_sc
    nqp_set_sc_object "1307873279.6478", 0, $P563
    .const 'Sub' $P564 = "10_1307873280.41316" 
    $P565 = $P564."get_lexinfo"()
    nqp_get_sc_object $P566, "1307873279.6478", 0
    $P565."set_static_lexpad_value"("GLOBALish", $P566)
    .const 'Sub' $P567 = "10_1307873280.41316" 
    $P568 = $P567."get_lexinfo"()
    $P568."finish_static_lexpad"()
    .const 'Sub' $P569 = "10_1307873280.41316" 
    $P570 = $P569."get_lexinfo"()
    nqp_get_sc_object $P571, "1307873279.6478", 0
    $P570."set_static_lexpad_value"("$?PACKAGE", $P571)
    .const 'Sub' $P572 = "10_1307873280.41316" 
    $P573 = $P572."get_lexinfo"()
    $P573."finish_static_lexpad"()
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P574, "ModuleLoader"
    nqp_get_sc_object $P575, "1307873279.6478", 0
    $P574."load_module"("nqpmo", $P575)
    nqp_get_sc_object $P576, "1307873274.8766", 88
    $P577 = $P576."new_type"("EXPORTHOW" :named("name"))
    nqp_set_sc_for_object $P577, cur_sc
    nqp_set_sc_object "1307873279.6478", 1, $P577
    .const 'Sub' $P578 = "10_1307873280.41316" 
    $P579 = $P578."get_lexinfo"()
    nqp_get_sc_object $P580, "1307873279.6478", 1
    $P579."set_static_lexpad_value"("EXPORTHOW", $P580)
    .const 'Sub' $P581 = "10_1307873280.41316" 
    $P582 = $P581."get_lexinfo"()
    $P582."finish_static_lexpad"()
    .const 'Sub' $P583 = "28_1307873280.41316" 
    $P584 = $P583."get_lexinfo"()
    nqp_get_sc_object $P585, "1307873279.6478", 1
    $P584."set_static_lexpad_value"("$?PACKAGE", $P585)
    .const 'Sub' $P586 = "28_1307873280.41316" 
    $P587 = $P586."get_lexinfo"()
    $P587."finish_static_lexpad"()
    .const 'Sub' $P588 = "28_1307873280.41316" 
    $P589 = $P588."get_lexinfo"()
    nqp_get_sc_object $P590, "1307873279.6478", 1
    $P589."set_static_lexpad_value"("$?CLASS", $P590)
    .const 'Sub' $P591 = "28_1307873280.41316" 
    $P592 = $P591."get_lexinfo"()
    $P592."finish_static_lexpad"()
    nqp_get_sc_object $P593, "1307873279.6478", 1
    get_how $P594, $P593
    nqp_get_sc_object $P595, "1307873279.6478", 1
    $P594."compose"($P595)
    nqp_get_sc_object $P596, "1307873274.8766", 71
    $P597 = $P596."new_type"("int" :named("name"), "P6int" :named("repr"))
    nqp_set_sc_for_object $P597, cur_sc
    nqp_set_sc_object "1307873279.6478", 2, $P597
    .const 'Sub' $P598 = "10_1307873280.41316" 
    $P599 = $P598."get_lexinfo"()
    nqp_get_sc_object $P600, "1307873279.6478", 2
    $P599."set_static_lexpad_value"("int", $P600)
    .const 'Sub' $P601 = "10_1307873280.41316" 
    $P602 = $P601."get_lexinfo"()
    $P602."finish_static_lexpad"()
    .const 'Sub' $P603 = "29_1307873280.41316" 
    $P604 = $P603."get_lexinfo"()
    nqp_get_sc_object $P605, "1307873279.6478", 2
    $P604."set_static_lexpad_value"("$?PACKAGE", $P605)
    .const 'Sub' $P606 = "29_1307873280.41316" 
    $P607 = $P606."get_lexinfo"()
    $P607."finish_static_lexpad"()
    .const 'Sub' $P608 = "29_1307873280.41316" 
    $P609 = $P608."get_lexinfo"()
    nqp_get_sc_object $P610, "1307873279.6478", 2
    $P609."set_static_lexpad_value"("$?CLASS", $P610)
    .const 'Sub' $P611 = "29_1307873280.41316" 
    $P612 = $P611."get_lexinfo"()
    $P612."finish_static_lexpad"()
    nqp_get_sc_object $P613, "1307873279.6478", 2
    get_how $P614, $P613
    nqp_get_sc_object $P615, "1307873279.6478", 2
    $P614."compose"($P615)
    nqp_get_sc_object $P616, "1307873274.8766", 71
    $P617 = $P616."new_type"("num" :named("name"), "P6num" :named("repr"))
    nqp_set_sc_for_object $P617, cur_sc
    nqp_set_sc_object "1307873279.6478", 3, $P617
    .const 'Sub' $P618 = "10_1307873280.41316" 
    $P619 = $P618."get_lexinfo"()
    nqp_get_sc_object $P620, "1307873279.6478", 3
    $P619."set_static_lexpad_value"("num", $P620)
    .const 'Sub' $P621 = "10_1307873280.41316" 
    $P622 = $P621."get_lexinfo"()
    $P622."finish_static_lexpad"()
    .const 'Sub' $P623 = "30_1307873280.41316" 
    $P624 = $P623."get_lexinfo"()
    nqp_get_sc_object $P625, "1307873279.6478", 3
    $P624."set_static_lexpad_value"("$?PACKAGE", $P625)
    .const 'Sub' $P626 = "30_1307873280.41316" 
    $P627 = $P626."get_lexinfo"()
    $P627."finish_static_lexpad"()
    .const 'Sub' $P628 = "30_1307873280.41316" 
    $P629 = $P628."get_lexinfo"()
    nqp_get_sc_object $P630, "1307873279.6478", 3
    $P629."set_static_lexpad_value"("$?CLASS", $P630)
    .const 'Sub' $P631 = "30_1307873280.41316" 
    $P632 = $P631."get_lexinfo"()
    $P632."finish_static_lexpad"()
    nqp_get_sc_object $P633, "1307873279.6478", 3
    get_how $P634, $P633
    nqp_get_sc_object $P635, "1307873279.6478", 3
    $P634."compose"($P635)
    nqp_get_sc_object $P636, "1307873274.8766", 71
    $P637 = $P636."new_type"("str" :named("name"), "P6str" :named("repr"))
    nqp_set_sc_for_object $P637, cur_sc
    nqp_set_sc_object "1307873279.6478", 4, $P637
    .const 'Sub' $P638 = "10_1307873280.41316" 
    $P639 = $P638."get_lexinfo"()
    nqp_get_sc_object $P640, "1307873279.6478", 4
    $P639."set_static_lexpad_value"("str", $P640)
    .const 'Sub' $P641 = "10_1307873280.41316" 
    $P642 = $P641."get_lexinfo"()
    $P642."finish_static_lexpad"()
    .const 'Sub' $P643 = "31_1307873280.41316" 
    $P644 = $P643."get_lexinfo"()
    nqp_get_sc_object $P645, "1307873279.6478", 4
    $P644."set_static_lexpad_value"("$?PACKAGE", $P645)
    .const 'Sub' $P646 = "31_1307873280.41316" 
    $P647 = $P646."get_lexinfo"()
    $P647."finish_static_lexpad"()
    .const 'Sub' $P648 = "31_1307873280.41316" 
    $P649 = $P648."get_lexinfo"()
    nqp_get_sc_object $P650, "1307873279.6478", 4
    $P649."set_static_lexpad_value"("$?CLASS", $P650)
    .const 'Sub' $P651 = "31_1307873280.41316" 
    $P652 = $P651."get_lexinfo"()
    $P652."finish_static_lexpad"()
    nqp_get_sc_object $P653, "1307873279.6478", 4
    get_how $P654, $P653
    nqp_get_sc_object $P655, "1307873279.6478", 4
    $P654."compose"($P655)
    nqp_get_sc_object $P656, "1307873274.8766", 41
    $P657 = $P656."new_type"("NQPMu" :named("name"))
    nqp_set_sc_for_object $P657, cur_sc
    nqp_set_sc_object "1307873279.6478", 5, $P657
    .const 'Sub' $P658 = "10_1307873280.41316" 
    $P659 = $P658."get_lexinfo"()
    nqp_get_sc_object $P660, "1307873279.6478", 5
    $P659."set_static_lexpad_value"("NQPMu", $P660)
    .const 'Sub' $P661 = "10_1307873280.41316" 
    $P662 = $P661."get_lexinfo"()
    $P662."finish_static_lexpad"()
    nqp_get_sc_object $P663, "1307873279.6478", 5
    get_how $P664, $P663
    nqp_get_sc_object $P665, "1307873279.6478", 5
    .const 'Sub' $P666 = "33_1307873280.41316" 
    $P664."add_method"($P665, "CREATE", $P666)
    nqp_get_sc_object $P667, "1307873279.6478", 5
    get_how $P668, $P667
    nqp_get_sc_object $P669, "1307873279.6478", 5
    .const 'Sub' $P670 = "34_1307873280.41316" 
    $P668."add_method"($P669, "bless", $P670)
    nqp_get_sc_object $P671, "1307873279.6478", 5
    get_how $P672, $P671
    nqp_get_sc_object $P673, "1307873279.6478", 5
    .const 'Sub' $P674 = "35_1307873280.41316" 
    $P672."add_method"($P673, "BUILDALL", $P674)
    nqp_get_sc_object $P675, "1307873279.6478", 5
    get_how $P676, $P675
    nqp_get_sc_object $P677, "1307873279.6478", 5
    .const 'Sub' $P678 = "37_1307873280.41316" 
    $P676."add_method"($P677, "BUILD_MAGIC", $P678)
    nqp_get_sc_object $P679, "1307873279.6478", 5
    get_how $P680, $P679
    nqp_get_sc_object $P681, "1307873279.6478", 5
    .const 'Sub' $P682 = "39_1307873280.41316" 
    $P680."add_method"($P681, "new", $P682)
    nqp_get_sc_object $P683, "1307873279.6478", 5
    get_how $P684, $P683
    nqp_get_sc_object $P685, "1307873279.6478", 5
    .const 'Sub' $P686 = "40_1307873280.41316" 
    $P684."add_method"($P685, "Str", $P686)
    nqp_get_sc_object $P687, "1307873279.6478", 5
    get_how $P688, $P687
    nqp_get_sc_object $P689, "1307873279.6478", 5
    .const 'Sub' $P690 = "40_1307873280.41316" 
    $P688."add_parrot_vtable_mapping"($P689, "get_string", $P690)
    .const 'Sub' $P691 = "41_1307873280.41316" 
    nqp_get_sc_object $P692, "1307873279.6478", 5
    new $P693, "ResizablePMCArray"
    push $P693, $P692
    new $P694, "ResizablePMCArray"
    push $P694, 2
    set_sub_multisig $P691, $P693, $P694
    nqp_get_sc_object $P695, "1307873279.6478", 5
    get_how $P696, $P695
    nqp_get_sc_object $P697, "1307873279.6478", 5
    .const 'Sub' $P698 = "41_1307873280.41316" 
    $P696."add_multi_method"($P697, "Str", $P698)
    nqp_get_sc_object $P699, "1307873279.6478", 5
    get_how $P700, $P699
    nqp_get_sc_object $P701, "1307873279.6478", 5
    .const 'Sub' $P702 = "42_1307873280.41316" 
    $P700."add_method"($P701, "ACCEPTS", $P702)
    .const 'Sub' $P703 = "43_1307873280.41316" 
    nqp_get_sc_object $P704, "1307873279.6478", 5
    null $P705
    new $P706, "ResizablePMCArray"
    push $P706, $P704
    push $P706, $P705
    new $P707, "ResizablePMCArray"
    push $P707, 2
    push $P707, 0
    set_sub_multisig $P703, $P706, $P707
    nqp_get_sc_object $P708, "1307873279.6478", 5
    get_how $P709, $P708
    nqp_get_sc_object $P710, "1307873279.6478", 5
    .const 'Sub' $P711 = "43_1307873280.41316" 
    $P709."add_multi_method"($P710, "ACCEPTS", $P711)
    nqp_get_sc_object $P712, "1307873279.6478", 5
    get_how $P713, $P712
    nqp_get_sc_object $P714, "1307873279.6478", 5
    .const 'Sub' $P715 = "44_1307873280.41316" 
    $P713."add_parrot_vtable_mapping"($P714, "get_bool", $P715)
    nqp_get_sc_object $P716, "1307873279.6478", 5
    get_how $P717, $P716
    nqp_get_sc_object $P718, "1307873279.6478", 5
    .const 'Sub' $P719 = "45_1307873280.41316" 
    $P717."add_method"($P718, "isa", $P719)
    .const 'Sub' $P720 = "32_1307873280.41316" 
    $P721 = $P720."get_lexinfo"()
    nqp_get_sc_object $P722, "1307873279.6478", 5
    $P721."set_static_lexpad_value"("$?PACKAGE", $P722)
    .const 'Sub' $P723 = "32_1307873280.41316" 
    $P724 = $P723."get_lexinfo"()
    $P724."finish_static_lexpad"()
    .const 'Sub' $P725 = "32_1307873280.41316" 
    $P726 = $P725."get_lexinfo"()
    nqp_get_sc_object $P727, "1307873279.6478", 5
    $P726."set_static_lexpad_value"("$?CLASS", $P727)
    .const 'Sub' $P728 = "32_1307873280.41316" 
    $P729 = $P728."get_lexinfo"()
    $P729."finish_static_lexpad"()
    nqp_get_sc_object $P730, "1307873279.6478", 5
    get_how $P731, $P730
    nqp_get_sc_object $P732, "1307873279.6478", 5
    nqp_get_sc_object $P733, "1307873279.6478", 5
    $P731."set_default_parent"($P732, $P733)
    nqp_get_sc_object $P734, "1307873279.6478", 5
    get_how $P735, $P734
    nqp_get_sc_object $P736, "1307873279.6478", 5
    $P735."compose"($P736)
    nqp_get_sc_object $P737, "1307873274.8766", 41
    $P738 = $P737."new_type"("NQPCapture" :named("name"))
    nqp_set_sc_for_object $P738, cur_sc
    nqp_set_sc_object "1307873279.6478", 17, $P738
    .const 'Sub' $P739 = "10_1307873280.41316" 
    $P740 = $P739."get_lexinfo"()
    nqp_get_sc_object $P741, "1307873279.6478", 17
    $P740."set_static_lexpad_value"("NQPCapture", $P741)
    .const 'Sub' $P742 = "10_1307873280.41316" 
    $P743 = $P742."get_lexinfo"()
    $P743."finish_static_lexpad"()
    nqp_get_sc_object $P744, "1307873279.6478", 17
    get_how $P745, $P744
    nqp_get_sc_object $P746, "1307873279.6478", 17
    nqp_get_sc_object $P747, "1307873274.8766", 80
    $P748 = $P747."new"("@!array" :named("name"))
    $P745."add_attribute"($P746, $P748)
    nqp_get_sc_object $P749, "1307873279.6478", 17
    get_how $P750, $P749
    nqp_get_sc_object $P751, "1307873279.6478", 17
    $P750."add_parrot_vtable_handler_mapping"($P751, "get_pmc_keyed_int", "@!array")
    nqp_get_sc_object $P752, "1307873279.6478", 17
    get_how $P753, $P752
    nqp_get_sc_object $P754, "1307873279.6478", 17
    $P753."add_parrot_vtable_handler_mapping"($P754, "set_pmc_keyed_int", "@!array")
    nqp_get_sc_object $P755, "1307873279.6478", 17
    get_how $P756, $P755
    nqp_get_sc_object $P757, "1307873279.6478", 17
    $P756."add_parrot_vtable_handler_mapping"($P757, "exists_keyed_int", "@!array")
    nqp_get_sc_object $P758, "1307873279.6478", 17
    get_how $P759, $P758
    nqp_get_sc_object $P760, "1307873279.6478", 17
    $P759."add_parrot_vtable_handler_mapping"($P760, "delete_keyed_int", "@!array")
    nqp_get_sc_object $P761, "1307873279.6478", 17
    get_how $P762, $P761
    nqp_get_sc_object $P763, "1307873279.6478", 17
    $P762."add_parrot_vtable_handler_mapping"($P763, "unshift_pmc", "@!array")
    nqp_get_sc_object $P764, "1307873279.6478", 17
    get_how $P765, $P764
    nqp_get_sc_object $P766, "1307873279.6478", 17
    $P765."add_parrot_vtable_handler_mapping"($P766, "push_pmc", "@!array")
    nqp_get_sc_object $P767, "1307873279.6478", 17
    get_how $P768, $P767
    nqp_get_sc_object $P769, "1307873279.6478", 17
    nqp_get_sc_object $P770, "1307873274.8766", 80
    $P771 = $P770."new"("%!hash" :named("name"))
    $P768."add_attribute"($P769, $P771)
    nqp_get_sc_object $P772, "1307873279.6478", 17
    get_how $P773, $P772
    nqp_get_sc_object $P774, "1307873279.6478", 17
    $P773."add_parrot_vtable_handler_mapping"($P774, "get_pmc_keyed_str", "%!hash")
    nqp_get_sc_object $P775, "1307873279.6478", 17
    get_how $P776, $P775
    nqp_get_sc_object $P777, "1307873279.6478", 17
    $P776."add_parrot_vtable_handler_mapping"($P777, "get_pmc_keyed", "%!hash")
    nqp_get_sc_object $P778, "1307873279.6478", 17
    get_how $P779, $P778
    nqp_get_sc_object $P780, "1307873279.6478", 17
    $P779."add_parrot_vtable_handler_mapping"($P780, "set_pmc_keyed_str", "%!hash")
    nqp_get_sc_object $P781, "1307873279.6478", 17
    get_how $P782, $P781
    nqp_get_sc_object $P783, "1307873279.6478", 17
    $P782."add_parrot_vtable_handler_mapping"($P783, "set_pmc_keyed", "%!hash")
    nqp_get_sc_object $P784, "1307873279.6478", 17
    get_how $P785, $P784
    nqp_get_sc_object $P786, "1307873279.6478", 17
    $P785."add_parrot_vtable_handler_mapping"($P786, "exists_keyed", "%!hash")
    nqp_get_sc_object $P787, "1307873279.6478", 17
    get_how $P788, $P787
    nqp_get_sc_object $P789, "1307873279.6478", 17
    $P788."add_parrot_vtable_handler_mapping"($P789, "exists_keyed_str", "%!hash")
    nqp_get_sc_object $P790, "1307873279.6478", 17
    get_how $P791, $P790
    nqp_get_sc_object $P792, "1307873279.6478", 17
    $P791."add_parrot_vtable_handler_mapping"($P792, "delete_keyed", "%!hash")
    nqp_get_sc_object $P793, "1307873279.6478", 17
    get_how $P794, $P793
    nqp_get_sc_object $P795, "1307873279.6478", 17
    $P794."add_parrot_vtable_handler_mapping"($P795, "delete_keyed_str", "%!hash")
    nqp_get_sc_object $P796, "1307873279.6478", 17
    get_how $P797, $P796
    nqp_get_sc_object $P798, "1307873279.6478", 17
    .const 'Sub' $P799 = "47_1307873280.41316" 
    $P797."add_method"($P798, "new", $P799)
    nqp_get_sc_object $P800, "1307873279.6478", 17
    get_how $P801, $P800
    nqp_get_sc_object $P802, "1307873279.6478", 17
    .const 'Sub' $P803 = "48_1307873280.41316" 
    $P801."add_method"($P802, "BUILD", $P803)
    nqp_get_sc_object $P804, "1307873279.6478", 17
    get_how $P805, $P804
    nqp_get_sc_object $P806, "1307873279.6478", 17
    .const 'Sub' $P807 = "49_1307873280.41316" 
    $P805."add_method"($P806, "list", $P807)
    nqp_get_sc_object $P808, "1307873279.6478", 17
    get_how $P809, $P808
    nqp_get_sc_object $P810, "1307873279.6478", 17
    .const 'Sub' $P811 = "50_1307873280.41316" 
    $P809."add_method"($P810, "hash", $P811)
    .const 'Sub' $P812 = "46_1307873280.41316" 
    $P813 = $P812."get_lexinfo"()
    nqp_get_sc_object $P814, "1307873279.6478", 17
    $P813."set_static_lexpad_value"("$?PACKAGE", $P814)
    .const 'Sub' $P815 = "46_1307873280.41316" 
    $P816 = $P815."get_lexinfo"()
    $P816."finish_static_lexpad"()
    .const 'Sub' $P817 = "46_1307873280.41316" 
    $P818 = $P817."get_lexinfo"()
    nqp_get_sc_object $P819, "1307873279.6478", 17
    $P818."set_static_lexpad_value"("$?CLASS", $P819)
    .const 'Sub' $P820 = "46_1307873280.41316" 
    $P821 = $P820."get_lexinfo"()
    $P821."finish_static_lexpad"()
    nqp_get_sc_object $P822, "1307873279.6478", 17
    get_how $P823, $P822
    nqp_get_sc_object $P824, "1307873279.6478", 17
    nqp_get_sc_object $P825, "1307873279.6478", 5
    $P823."set_default_parent"($P824, $P825)
    nqp_get_sc_object $P826, "1307873279.6478", 17
    get_how $P827, $P826
    nqp_get_sc_object $P828, "1307873279.6478", 17
    $P827."compose"($P828)
  if_555_end:
    nqp_get_sc_object $P970, "1307873279.6478", 0
    set_hll_global "GLOBAL", $P970
.end


.HLL "nqp"

.namespace []
.sub "open"  :subid("11_1307873280.41316") :outer("10_1307873280.41316")
    .param pmc param_23
    .param pmc param_24 :optional :named("r")
    .param int has_param_24 :opt_flag
    .param pmc param_26 :optional :named("w")
    .param int has_param_26 :opt_flag
    .param pmc param_28 :optional :named("a")
    .param int has_param_28 :opt_flag
    .param pmc param_30 :optional :named("bin")
    .param int has_param_30 :opt_flag
.annotate 'line', 130
    .lex "$filename", param_23
    if has_param_24, optparam_53
    new $P25, "Undef"
    set param_24, $P25
  optparam_53:
    .lex "$r", param_24
    if has_param_26, optparam_54
    new $P27, "Undef"
    set param_26, $P27
  optparam_54:
    .lex "$w", param_26
    if has_param_28, optparam_55
    new $P29, "Undef"
    set param_28, $P29
  optparam_55:
    .lex "$a", param_28
    if has_param_30, optparam_56
    new $P31, "Undef"
    set param_30, $P31
  optparam_56:
    .lex "$bin", param_30
.annotate 'line', 131
    new $P32, "Undef"
    .lex "$mode", $P32
.annotate 'line', 132
    new $P33, "Undef"
    .lex "$handle", $P33
.annotate 'line', 131
    find_lex $P36, "$w"
    unless_null $P36, vivify_57
    new $P36, "Undef"
  vivify_57:
    if $P36, if_35
    find_lex $P40, "$a"
    unless_null $P40, vivify_58
    new $P40, "Undef"
  vivify_58:
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
.annotate 'line', 132
    new $P43, "FileHandle"
    store_lex "$handle", $P43
.annotate 'line', 133
    find_lex $P44, "$handle"
    unless_null $P44, vivify_59
    new $P44, "Undef"
  vivify_59:
    find_lex $P45, "$filename"
    unless_null $P45, vivify_60
    new $P45, "Undef"
  vivify_60:
    find_lex $P46, "$mode"
    unless_null $P46, vivify_61
    new $P46, "Undef"
  vivify_61:
    $P44."open"($P45, $P46)
.annotate 'line', 134
    find_lex $P47, "$handle"
    unless_null $P47, vivify_62
    new $P47, "Undef"
  vivify_62:
    find_lex $P50, "$bin"
    unless_null $P50, vivify_63
    new $P50, "Undef"
  vivify_63:
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
    unless_null $P53, vivify_64
    new $P53, "Undef"
  vivify_64:
.annotate 'line', 130
    .return ($P53)
.end


.HLL "nqp"

.namespace []
.sub "close"  :subid("12_1307873280.41316") :outer("10_1307873280.41316")
    .param pmc param_56
.annotate 'line', 142
    .lex "$handle", param_56
.annotate 'line', 143
    find_lex $P57, "$handle"
    unless_null $P57, vivify_65
    new $P57, "Undef"
  vivify_65:
    $P58 = $P57."close"()
.annotate 'line', 142
    .return ($P58)
.end


.HLL "nqp"

.namespace []
.sub "slurp"  :subid("13_1307873280.41316") :outer("10_1307873280.41316")
    .param pmc param_61
.annotate 'line', 150
    .lex "$filename", param_61
.annotate 'line', 151
    new $P62, "Undef"
    .lex "$handle", $P62
.annotate 'line', 152
    new $P63, "Undef"
    .lex "$contents", $P63
.annotate 'line', 151
    find_lex $P64, "$filename"
    unless_null $P64, vivify_66
    new $P64, "Undef"
  vivify_66:
    $P65 = "open"($P64, 1 :named("r"))
    store_lex "$handle", $P65
.annotate 'line', 152
    find_lex $P66, "$handle"
    unless_null $P66, vivify_67
    new $P66, "Undef"
  vivify_67:
    $P67 = $P66."readall"()
    store_lex "$contents", $P67
.annotate 'line', 153
    find_lex $P68, "$handle"
    unless_null $P68, vivify_68
    new $P68, "Undef"
  vivify_68:
    $P68."close"()
    find_lex $P69, "$contents"
    unless_null $P69, vivify_69
    new $P69, "Undef"
  vivify_69:
.annotate 'line', 150
    .return ($P69)
.end


.HLL "nqp"

.namespace []
.sub "spew"  :subid("14_1307873280.41316") :outer("10_1307873280.41316")
    .param pmc param_72
    .param pmc param_73
.annotate 'line', 162
    .lex "$filename", param_72
    .lex "$contents", param_73
.annotate 'line', 163
    new $P74, "Undef"
    .lex "$handle", $P74
    new $P75, "FileHandle"
    store_lex "$handle", $P75
.annotate 'line', 164
    find_lex $P76, "$handle"
    unless_null $P76, vivify_70
    new $P76, "Undef"
  vivify_70:
    find_lex $P77, "$filename"
    unless_null $P77, vivify_71
    new $P77, "Undef"
  vivify_71:
    $P76."open"($P77, "w")
.annotate 'line', 165
    find_lex $P78, "$handle"
    unless_null $P78, vivify_72
    new $P78, "Undef"
  vivify_72:
    find_lex $P79, "$contents"
    unless_null $P79, vivify_73
    new $P79, "Undef"
  vivify_73:
    $P78."print"($P79)
.annotate 'line', 166
    find_lex $P80, "$handle"
    unless_null $P80, vivify_74
    new $P80, "Undef"
  vivify_74:
    $P81 = $P80."close"()
.annotate 'line', 162
    .return ($P81)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "print"  :subid("15_1307873280.41316") :outer("10_1307873280.41316")
    .param pmc param_84 :slurpy
.annotate 'line', 169
    .const 'Sub' $P90 = "16_1307873280.41316" 
    capture_lex $P90
    .lex "@args", param_84
.annotate 'line', 170
    find_lex $P86, "@args"
    unless_null $P86, vivify_75
    $P86 = root_new ['parrot';'ResizablePMCArray']
  vivify_75:
    defined $I87, $P86
    unless $I87, for_undef_76
    iter $P85, $P86
    new $P94, 'ExceptionHandler'
    set_label $P94, loop93_handler
    $P94."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P94
  loop93_test:
    unless $P85, loop93_done
    shift $P88, $P85
  loop93_redo:
    .const 'Sub' $P90 = "16_1307873280.41316" 
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
  for_undef_76:
.annotate 'line', 169
    .return (1)
.end


.HLL "nqp"

.namespace []
.sub "_block89"  :anon :subid("16_1307873280.41316") :outer("15_1307873280.41316")
    .param pmc param_91
.annotate 'line', 170
    .lex "$_", param_91
.annotate 'line', 171
    find_lex $P92, "$_"
    unless_null $P92, vivify_77
    new $P92, "Undef"
  vivify_77:
    print $P92
.annotate 'line', 170
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "say"  :subid("17_1307873280.41316") :outer("10_1307873280.41316")
    .param pmc param_98 :slurpy
.annotate 'line', 176
    .lex "@args", param_98
.annotate 'line', 177
    find_lex $P99, "@args"
    unless_null $P99, vivify_78
    $P99 = root_new ['parrot';'ResizablePMCArray']
  vivify_78:
    $P100 = "print"($P99 :flat, "\n")
.annotate 'line', 176
    .return ($P100)
.end


.HLL "nqp"

.namespace []
.sub "match"  :subid("18_1307873280.41316") :outer("10_1307873280.41316")
    .param pmc param_103
    .param pmc param_104
    .param pmc param_105 :optional :named("global")
    .param int has_param_105 :opt_flag
.annotate 'line', 194
    .const 'Sub' $P115 = "19_1307873280.41316" 
    capture_lex $P115
    .lex "$text", param_103
    .lex "$regex", param_104
    if has_param_105, optparam_79
    new $P106, "Undef"
    set param_105, $P106
  optparam_79:
    .lex "$global", param_105
.annotate 'line', 195
    new $P107, "Undef"
    .lex "$match", $P107
    find_lex $P108, "$regex"
    unless_null $P108, vivify_80
    new $P108, "Undef"
  vivify_80:
    find_lex $P109, "$text"
    unless_null $P109, vivify_81
    new $P109, "Undef"
  vivify_81:
    $P110 = $P108."ACCEPTS"($P109)
    store_lex "$match", $P110
.annotate 'line', 196
    find_lex $P113, "$global"
    unless_null $P113, vivify_82
    new $P113, "Undef"
  vivify_82:
    if $P113, if_112
.annotate 'line', 204
    find_lex $P133, "$match"
    unless_null $P133, vivify_83
    new $P133, "Undef"
  vivify_83:
    set $P111, $P133
.annotate 'line', 196
    goto if_112_end
  if_112:
    .const 'Sub' $P115 = "19_1307873280.41316" 
    capture_lex $P115
    $P132 = $P115()
    set $P111, $P132
  if_112_end:
.annotate 'line', 194
    .return ($P111)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "_block114"  :anon :subid("19_1307873280.41316") :outer("18_1307873280.41316")
.annotate 'line', 197
    $P116 = root_new ['parrot';'ResizablePMCArray']
    .lex "@matches", $P116
.annotate 'line', 196
    find_lex $P117, "@matches"
    unless_null $P117, vivify_84
    $P117 = root_new ['parrot';'ResizablePMCArray']
  vivify_84:
.annotate 'line', 198
    new $P129, 'ExceptionHandler'
    set_label $P129, loop128_handler
    $P129."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P129
  loop128_test:
    find_lex $P118, "$match"
    unless_null $P118, vivify_85
    new $P118, "Undef"
  vivify_85:
    unless $P118, loop128_done
  loop128_redo:
.annotate 'line', 199
    find_lex $P119, "@matches"
    unless_null $P119, vivify_86
    $P119 = root_new ['parrot';'ResizablePMCArray']
  vivify_86:
    find_lex $P120, "$match"
    unless_null $P120, vivify_87
    new $P120, "Undef"
  vivify_87:
    $P119."push"($P120)
.annotate 'line', 200
    find_lex $P121, "$match"
    unless_null $P121, vivify_88
    new $P121, "Undef"
  vivify_88:
    $P122 = $P121."CURSOR"()
    find_lex $P123, "$text"
    unless_null $P123, vivify_89
    new $P123, "Undef"
  vivify_89:
    find_lex $P124, "$regex"
    unless_null $P124, vivify_90
    new $P124, "Undef"
  vivify_90:
    find_lex $P125, "$match"
    unless_null $P125, vivify_91
    new $P125, "Undef"
  vivify_91:
    $P126 = $P125."to"()
    $P127 = $P122."parse"($P123, $P124 :named("rule"), $P126 :named("c"))
    store_lex "$match", $P127
  loop128_next:
.annotate 'line', 198
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
    unless_null $P131, vivify_92
    $P131 = root_new ['parrot';'ResizablePMCArray']
  vivify_92:
.annotate 'line', 196
    .return ($P131)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "subst"  :subid("20_1307873280.41316") :outer("10_1307873280.41316")
    .param pmc param_136
    .param pmc param_137
    .param pmc param_138
    .param pmc param_139 :optional :named("global")
    .param int has_param_139 :opt_flag
.annotate 'line', 216
    .const 'Sub' $P166 = "21_1307873280.41316" 
    capture_lex $P166
    .lex "$text", param_136
    .lex "$regex", param_137
    .lex "$repl", param_138
    if has_param_139, optparam_93
    new $P140, "Undef"
    set param_139, $P140
  optparam_93:
    .lex "$global", param_139
.annotate 'line', 217
    $P141 = root_new ['parrot';'ResizablePMCArray']
    .lex "@matches", $P141
.annotate 'line', 219
    new $P142, "Undef"
    .lex "$is_code", $P142
.annotate 'line', 220
    new $P143, "Undef"
    .lex "$offset", $P143
.annotate 'line', 221
    new $P144, "Undef"
    .lex "$result", $P144
.annotate 'line', 232
    new $P145, "Undef"
    .lex "$chars", $P145
.annotate 'line', 217
    find_lex $P148, "$global"
    unless_null $P148, vivify_94
    new $P148, "Undef"
  vivify_94:
    if $P148, if_147
.annotate 'line', 218
    find_lex $P152, "$regex"
    unless_null $P152, vivify_95
    new $P152, "Undef"
  vivify_95:
    find_lex $P153, "$text"
    unless_null $P153, vivify_96
    new $P153, "Undef"
  vivify_96:
    $P154 = $P152."ACCEPTS"($P153)
    new $P155, "ResizablePMCArray"
    push $P155, $P154
.annotate 'line', 217
    set $P146, $P155
    goto if_147_end
  if_147:
    find_lex $P149, "$text"
    unless_null $P149, vivify_97
    new $P149, "Undef"
  vivify_97:
    find_lex $P150, "$regex"
    unless_null $P150, vivify_98
    new $P150, "Undef"
  vivify_98:
    $P151 = "match"($P149, $P150, 1 :named("global"))
    set $P146, $P151
  if_147_end:
    store_lex "@matches", $P146
.annotate 'line', 219
    find_lex $P156, "$repl"
    unless_null $P156, vivify_99
    new $P156, "Undef"
  vivify_99:
    isa $I157, $P156, "Sub"
    new $P158, 'Integer'
    set $P158, $I157
    store_lex "$is_code", $P158
.annotate 'line', 220
    new $P159, "Integer"
    assign $P159, 0
    store_lex "$offset", $P159
.annotate 'line', 221
    new $P160, "StringBuilder"
    store_lex "$result", $P160
.annotate 'line', 223
    find_lex $P162, "@matches"
    unless_null $P162, vivify_100
    $P162 = root_new ['parrot';'ResizablePMCArray']
  vivify_100:
    defined $I163, $P162
    unless $I163, for_undef_101
    iter $P161, $P162
    new $P199, 'ExceptionHandler'
    set_label $P199, loop198_handler
    $P199."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P199
  loop198_test:
    unless $P161, loop198_done
    shift $P164, $P161
  loop198_redo:
    .const 'Sub' $P166 = "21_1307873280.41316" 
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
  for_undef_101:
.annotate 'line', 232
    find_lex $P201, "$text"
    unless_null $P201, vivify_116
    new $P201, "Undef"
  vivify_116:
    set $S202, $P201
    length $I203, $S202
    new $P204, 'Integer'
    set $P204, $I203
    store_lex "$chars", $P204
.annotate 'line', 234
    find_lex $P206, "$chars"
    unless_null $P206, vivify_117
    new $P206, "Undef"
  vivify_117:
    set $N207, $P206
    find_lex $P208, "$offset"
    unless_null $P208, vivify_118
    new $P208, "Undef"
  vivify_118:
    set $N209, $P208
    isgt $I210, $N207, $N209
    unless $I210, if_205_end
.annotate 'line', 233
    find_lex $P211, "$result"
    unless_null $P211, vivify_119
    new $P211, "Undef"
  vivify_119:
    find_lex $P212, "$text"
    unless_null $P212, vivify_120
    new $P212, "Undef"
  vivify_120:
    set $S213, $P212
    find_lex $P214, "$offset"
    unless_null $P214, vivify_121
    new $P214, "Undef"
  vivify_121:
    set $I215, $P214
    find_lex $P216, "$chars"
    unless_null $P216, vivify_122
    new $P216, "Undef"
  vivify_122:
    set $I217, $P216
    substr $S218, $S213, $I215, $I217
    push $P211, $S218
  if_205_end:
.annotate 'line', 236
    find_lex $P219, "$result"
    unless_null $P219, vivify_123
    new $P219, "Undef"
  vivify_123:
    set $S220, $P219
.annotate 'line', 216
    .return ($S220)
.end


.HLL "nqp"

.namespace []
.sub "_block165"  :anon :subid("21_1307873280.41316") :outer("20_1307873280.41316")
    .param pmc param_167
.annotate 'line', 223
    .lex "$match", param_167
.annotate 'line', 224
    find_lex $P170, "$match"
    unless_null $P170, vivify_102
    new $P170, "Undef"
  vivify_102:
    if $P170, if_169
    set $P168, $P170
    goto if_169_end
  if_169:
.annotate 'line', 226
    find_lex $P172, "$match"
    unless_null $P172, vivify_103
    new $P172, "Undef"
  vivify_103:
    $N173 = $P172."from"()
    find_lex $P174, "$offset"
    unless_null $P174, vivify_104
    new $P174, "Undef"
  vivify_104:
    set $N175, $P174
    isgt $I176, $N173, $N175
    unless $I176, if_171_end
.annotate 'line', 225
    find_lex $P177, "$result"
    unless_null $P177, vivify_105
    new $P177, "Undef"
  vivify_105:
    find_lex $P178, "$text"
    unless_null $P178, vivify_106
    new $P178, "Undef"
  vivify_106:
    set $S179, $P178
    find_lex $P180, "$offset"
    unless_null $P180, vivify_107
    new $P180, "Undef"
  vivify_107:
    set $I181, $P180
    find_lex $P182, "$match"
    unless_null $P182, vivify_108
    new $P182, "Undef"
  vivify_108:
    $P183 = $P182."from"()
    find_lex $P184, "$offset"
    unless_null $P184, vivify_109
    new $P184, "Undef"
  vivify_109:
    sub $P185, $P183, $P184
    set $I186, $P185
    substr $S187, $S179, $I181, $I186
    push $P177, $S187
  if_171_end:
.annotate 'line', 227
    find_lex $P188, "$result"
    unless_null $P188, vivify_110
    new $P188, "Undef"
  vivify_110:
    find_lex $P191, "$is_code"
    unless_null $P191, vivify_111
    new $P191, "Undef"
  vivify_111:
    if $P191, if_190
    find_lex $P195, "$repl"
    unless_null $P195, vivify_112
    new $P195, "Undef"
  vivify_112:
    set $P189, $P195
    goto if_190_end
  if_190:
    find_lex $P192, "$repl"
    unless_null $P192, vivify_113
    new $P192, "Undef"
  vivify_113:
    find_lex $P193, "$match"
    unless_null $P193, vivify_114
    new $P193, "Undef"
  vivify_114:
    $P194 = $P192($P193)
    set $P189, $P194
  if_190_end:
    push $P188, $P189
.annotate 'line', 228
    find_lex $P196, "$match"
    unless_null $P196, vivify_115
    new $P196, "Undef"
  vivify_115:
    $P197 = $P196."to"()
    store_lex "$offset", $P197
.annotate 'line', 224
    set $P168, $P197
  if_169_end:
.annotate 'line', 223
    .return ($P168)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "hash"  :subid("22_1307873280.41316") :outer("10_1307873280.41316")
    .param pmc param_223 :slurpy :named
.annotate 'line', 242
    .const 'Sub' $P231 = "23_1307873280.41316" 
    capture_lex $P231
    .lex "%new", param_223
.annotate 'line', 243
    $P224 = root_new ['parrot';'Hash']
    .lex "%h", $P224
.annotate 'line', 242
    find_lex $P225, "%h"
    unless_null $P225, vivify_124
    $P225 = root_new ['parrot';'Hash']
  vivify_124:
.annotate 'line', 244
    find_lex $P227, "%new"
    unless_null $P227, vivify_125
    $P227 = root_new ['parrot';'Hash']
  vivify_125:
    defined $I228, $P227
    unless $I228, for_undef_126
    iter $P226, $P227
    new $P239, 'ExceptionHandler'
    set_label $P239, loop238_handler
    $P239."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P239
  loop238_test:
    unless $P226, loop238_done
    shift $P229, $P226
  loop238_redo:
    .const 'Sub' $P231 = "23_1307873280.41316" 
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
  for_undef_126:
    find_lex $P241, "%h"
    unless_null $P241, vivify_132
    $P241 = root_new ['parrot';'Hash']
  vivify_132:
.annotate 'line', 242
    .return ($P241)
.end


.HLL "nqp"

.namespace []
.sub "_block230"  :anon :subid("23_1307873280.41316") :outer("22_1307873280.41316")
    .param pmc param_232
.annotate 'line', 244
    .lex "$_", param_232
.annotate 'line', 245
    find_lex $P233, "$_"
    unless_null $P233, vivify_127
    new $P233, "Undef"
  vivify_127:
    find_lex $P234, "%new"
    unless_null $P234, vivify_128
    $P234 = root_new ['parrot';'Hash']
  vivify_128:
    set $P235, $P234[$P233]
    unless_null $P235, vivify_129
    new $P235, "Undef"
  vivify_129:
    find_lex $P236, "$_"
    unless_null $P236, vivify_130
    new $P236, "Undef"
  vivify_130:
    find_lex $P237, "%h"
    unless_null $P237, vivify_131
    $P237 = root_new ['parrot';'Hash']
    store_lex "%h", $P237
  vivify_131:
    set $P237[$P236], $P235
.annotate 'line', 244
    .return ($P235)
.end


.HLL "nqp"

.namespace []
.sub "plan"  :subid("24_1307873280.41316") :outer("10_1307873280.41316")
    .param pmc param_247
.annotate 'line', 255
    .lex "$quantity", param_247
.annotate 'line', 256
    new $P248, 'String'
    set $P248, "1.."
    find_lex $P249, "$quantity"
    unless_null $P249, vivify_133
    new $P249, "Undef"
  vivify_133:
    concat $P250, $P248, $P249
    $P251 = "say"($P250)
.annotate 'line', 255
    .return ($P251)
.end


.HLL "nqp"

.namespace []
.sub "ok"  :subid("25_1307873280.41316") :outer("10_1307873280.41316")
    .param pmc param_254
    .param pmc param_255 :optional
    .param int has_param_255 :opt_flag
.annotate 'line', 259
    .lex "$condition", param_254
    if has_param_255, optparam_134
    new $P256, "Undef"
    set param_255, $P256
  optparam_134:
    .lex "$desc", param_255
.annotate 'line', 260
    find_lex $P257, "$test_counter"
    unless_null $P257, vivify_135
    new $P257, "Undef"
  vivify_135:
    add $P258, $P257, 1
    store_lex "$test_counter", $P258
.annotate 'line', 262
    find_lex $P260, "$condition"
    unless_null $P260, vivify_136
    new $P260, "Undef"
  vivify_136:
    if $P260, unless_259_end
.annotate 'line', 263
    "print"("not ")
  unless_259_end:
.annotate 'line', 265
    new $P261, 'String'
    set $P261, "ok "
    find_lex $P262, "$test_counter"
    unless_null $P262, vivify_137
    new $P262, "Undef"
  vivify_137:
    concat $P263, $P261, $P262
    "print"($P263)
.annotate 'line', 266
    find_lex $P265, "$desc"
    unless_null $P265, vivify_138
    new $P265, "Undef"
  vivify_138:
    unless $P265, if_264_end
.annotate 'line', 267
    new $P266, 'String'
    set $P266, " - "
    find_lex $P267, "$desc"
    unless_null $P267, vivify_139
    new $P267, "Undef"
  vivify_139:
    concat $P268, $P266, $P267
    "print"($P268)
  if_264_end:
.annotate 'line', 269
    find_lex $P270, "$test_counter"
    unless_null $P270, vivify_140
    new $P270, "Undef"
  vivify_140:
    set $N271, $P270
    find_lex $P272, "$todo_upto_test_num"
    unless_null $P272, vivify_141
    new $P272, "Undef"
  vivify_141:
    set $N273, $P272
    isle $I274, $N271, $N273
    unless $I274, if_269_end
.annotate 'line', 270
    find_lex $P275, "$todo_reason"
    unless_null $P275, vivify_142
    new $P275, "Undef"
  vivify_142:
    "print"($P275)
  if_269_end:
.annotate 'line', 272
    "print"("\n")
.annotate 'line', 274
    find_lex $P278, "$condition"
    unless_null $P278, vivify_143
    new $P278, "Undef"
  vivify_143:
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
.annotate 'line', 259
    .return ($P276)
.end


.HLL "nqp"

.namespace []
.sub "todo"  :subid("26_1307873280.41316") :outer("10_1307873280.41316")
    .param pmc param_283
    .param pmc param_284
.annotate 'line', 277
    .lex "$reason", param_283
    .lex "$count", param_284
.annotate 'line', 278
    find_lex $P285, "$test_counter"
    unless_null $P285, vivify_144
    new $P285, "Undef"
  vivify_144:
    find_lex $P286, "$count"
    unless_null $P286, vivify_145
    new $P286, "Undef"
  vivify_145:
    add $P287, $P285, $P286
    store_lex "$todo_upto_test_num", $P287
.annotate 'line', 279
    new $P288, 'String'
    set $P288, "# TODO "
    find_lex $P289, "$reason"
    unless_null $P289, vivify_146
    new $P289, "Undef"
  vivify_146:
    concat $P290, $P288, $P289
    store_lex "$todo_reason", $P290
.annotate 'line', 277
    .return ($P290)
.end


.HLL "nqp"

.namespace []
.sub "skip"  :subid("27_1307873280.41316") :outer("10_1307873280.41316")
    .param pmc param_293
.annotate 'line', 282
    .lex "$desc", param_293
.annotate 'line', 283
    find_lex $P294, "$test_counter"
    unless_null $P294, vivify_147
    new $P294, "Undef"
  vivify_147:
    add $P295, $P294, 1
    store_lex "$test_counter", $P295
.annotate 'line', 284
    new $P296, 'String'
    set $P296, "ok "
    find_lex $P297, "$test_counter"
    unless_null $P297, vivify_148
    new $P297, "Undef"
  vivify_148:
    concat $P298, $P296, $P297
    concat $P299, $P298, " # SKIP "
    find_lex $P300, "$desc"
    unless_null $P300, vivify_149
    new $P300, "Undef"
  vivify_149:
    concat $P301, $P299, $P300
    concat $P302, $P301, "\n"
    $P303 = "say"($P302)
.annotate 'line', 282
    .return ($P303)
.end


.HLL "nqp"

.namespace []
.sub "_block305"  :anon :subid("28_1307873280.41316") :outer("10_1307873280.41316")
.annotate 'line', 12
    .lex "$?PACKAGE", $P307
    .lex "$?CLASS", $P308
.annotate 'line', 13
    find_lex $P309, "$?PACKAGE"
    get_who $P310, $P309
    set $P313, $P310["NQPModuleHOW"]
    unless_null $P313, vivify_150
    get_hll_global $P311, "GLOBAL"
    get_who $P312, $P311
    set $P313, $P312["NQPModuleHOW"]
  vivify_150:
    find_lex $P314, "$?PACKAGE"
    unless_null $P314, vivify_151
    new $P314, "Undef"
    store_lex "$?PACKAGE", $P314
  vivify_151:
    get_who $P315, $P314
    set $P315["module"], $P313
.annotate 'line', 14
    find_lex $P316, "$?PACKAGE"
    get_who $P317, $P316
    set $P320, $P317["NQPClassHOW"]
    unless_null $P320, vivify_152
    get_hll_global $P318, "GLOBAL"
    get_who $P319, $P318
    set $P320, $P319["NQPClassHOW"]
  vivify_152:
    find_lex $P321, "$?PACKAGE"
    unless_null $P321, vivify_153
    new $P321, "Undef"
    store_lex "$?PACKAGE", $P321
  vivify_153:
    get_who $P322, $P321
    set $P322["class"], $P320
.annotate 'line', 15
    find_lex $P323, "$?PACKAGE"
    get_who $P324, $P323
    set $P327, $P324["NQPAttribute"]
    unless_null $P327, vivify_154
    get_hll_global $P325, "GLOBAL"
    get_who $P326, $P325
    set $P327, $P326["NQPAttribute"]
  vivify_154:
    find_lex $P328, "$?PACKAGE"
    unless_null $P328, vivify_155
    new $P328, "Undef"
    store_lex "$?PACKAGE", $P328
  vivify_155:
    get_who $P329, $P328
    set $P329["class-attr"], $P327
.annotate 'line', 16
    find_lex $P330, "$?PACKAGE"
    get_who $P331, $P330
    set $P334, $P331["NQPClassHOW"]
    unless_null $P334, vivify_156
    get_hll_global $P332, "GLOBAL"
    get_who $P333, $P332
    set $P334, $P333["NQPClassHOW"]
  vivify_156:
    find_lex $P335, "$?PACKAGE"
    unless_null $P335, vivify_157
    new $P335, "Undef"
    store_lex "$?PACKAGE", $P335
  vivify_157:
    get_who $P336, $P335
    set $P336["grammar"], $P334
.annotate 'line', 17
    find_lex $P337, "$?PACKAGE"
    get_who $P338, $P337
    set $P341, $P338["NQPAttribute"]
    unless_null $P341, vivify_158
    get_hll_global $P339, "GLOBAL"
    get_who $P340, $P339
    set $P341, $P340["NQPAttribute"]
  vivify_158:
    find_lex $P342, "$?PACKAGE"
    unless_null $P342, vivify_159
    new $P342, "Undef"
    store_lex "$?PACKAGE", $P342
  vivify_159:
    get_who $P343, $P342
    set $P343["grammar-attr"], $P341
.annotate 'line', 18
    find_lex $P344, "$?PACKAGE"
    get_who $P345, $P344
    set $P348, $P345["NQPParametricRoleHOW"]
    unless_null $P348, vivify_160
    get_hll_global $P346, "GLOBAL"
    get_who $P347, $P346
    set $P348, $P347["NQPParametricRoleHOW"]
  vivify_160:
    find_lex $P349, "$?PACKAGE"
    unless_null $P349, vivify_161
    new $P349, "Undef"
    store_lex "$?PACKAGE", $P349
  vivify_161:
    get_who $P350, $P349
    set $P350["role"], $P348
.annotate 'line', 19
    find_lex $P351, "$?PACKAGE"
    get_who $P352, $P351
    set $P355, $P352["NQPAttribute"]
    unless_null $P355, vivify_162
    get_hll_global $P353, "GLOBAL"
    get_who $P354, $P353
    set $P355, $P354["NQPAttribute"]
  vivify_162:
    find_lex $P356, "$?PACKAGE"
    unless_null $P356, vivify_163
    new $P356, "Undef"
    store_lex "$?PACKAGE", $P356
  vivify_163:
    get_who $P357, $P356
    set $P357["role-attr"], $P355
.annotate 'line', 20
    find_lex $P358, "$?PACKAGE"
    get_who $P359, $P358
    set $P362, $P359["NQPNativeHOW"]
    unless_null $P362, vivify_164
    get_hll_global $P360, "GLOBAL"
    get_who $P361, $P360
    set $P362, $P361["NQPNativeHOW"]
  vivify_164:
    find_lex $P363, "$?PACKAGE"
    unless_null $P363, vivify_165
    new $P363, "Undef"
    store_lex "$?PACKAGE", $P363
  vivify_165:
    get_who $P364, $P363
    set $P364["native"], $P362
.annotate 'line', 12
    .return ($P362)
.end


.HLL "nqp"

.namespace []
.sub "_block365"  :anon :subid("29_1307873280.41316") :outer("10_1307873280.41316")
.annotate 'line', 23
    .lex "$?PACKAGE", $P367
    .lex "$?CLASS", $P368
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block369"  :anon :subid("30_1307873280.41316") :outer("10_1307873280.41316")
.annotate 'line', 25
    .lex "$?PACKAGE", $P371
    .lex "$?CLASS", $P372
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block373"  :anon :subid("31_1307873280.41316") :outer("10_1307873280.41316")
.annotate 'line', 27
    .lex "$?PACKAGE", $P375
    .lex "$?CLASS", $P376
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block377"  :anon :subid("32_1307873280.41316") :outer("10_1307873280.41316")
.annotate 'line', 30
    .const 'Sub' $P488 = "45_1307873280.41316" 
    capture_lex $P488
    .const 'Sub' $P484 = "44_1307873280.41316" 
    capture_lex $P484
    .const 'Sub' $P475 = "43_1307873280.41316" 
    capture_lex $P475
    .const 'Sub' $P471 = "42_1307873280.41316" 
    capture_lex $P471
    .const 'Sub' $P463 = "41_1307873280.41316" 
    capture_lex $P463
    .const 'Sub' $P460 = "40_1307873280.41316" 
    capture_lex $P460
    .const 'Sub' $P454 = "39_1307873280.41316" 
    capture_lex $P454
    .const 'Sub' $P416 = "37_1307873280.41316" 
    capture_lex $P416
    .const 'Sub' $P395 = "35_1307873280.41316" 
    capture_lex $P395
    .const 'Sub' $P385 = "34_1307873280.41316" 
    capture_lex $P385
    .const 'Sub' $P381 = "33_1307873280.41316" 
    capture_lex $P381
    .lex "$?PACKAGE", $P379
    .lex "$?CLASS", $P380
.annotate 'line', 75
    .const 'Sub' $P488 = "45_1307873280.41316" 
    newclosure $P496, $P488
.annotate 'line', 30
    .return ($P496)
.end


.HLL "nqp"

.namespace []
.sub "CREATE" :anon :subid("33_1307873280.41316") :outer("32_1307873280.41316")
    .param pmc param_382
.annotate 'line', 31
    .lex "self", param_382
.annotate 'line', 32
    find_lex $P383, "self"
    repr_instance_of $P384, $P383
.annotate 'line', 31
    .return ($P384)
.end


.HLL "nqp"

.namespace []
.sub "bless" :anon :subid("34_1307873280.41316") :outer("32_1307873280.41316")
    .param pmc param_386
    .param pmc param_388 :slurpy :named
.annotate 'line', 35
    .lex "$self", param_386
    find_lex $P387, "$self"
    .lex "self", $P387
    .lex "%attributes", param_388
.annotate 'line', 36
    new $P389, "Undef"
    .lex "$instance", $P389
    find_lex $P390, "self"
    $P391 = $P390."CREATE"()
    store_lex "$instance", $P391
.annotate 'line', 37
    find_lex $P392, "$instance"
    unless_null $P392, vivify_166
    new $P392, "Undef"
  vivify_166:
    find_lex $P393, "%attributes"
    unless_null $P393, vivify_167
    $P393 = root_new ['parrot';'Hash']
  vivify_167:
    $P392."BUILDALL"($P393 :flat)
    find_lex $P394, "$instance"
    unless_null $P394, vivify_168
    new $P394, "Undef"
  vivify_168:
.annotate 'line', 35
    .return ($P394)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "BUILDALL" :anon :subid("35_1307873280.41316") :outer("32_1307873280.41316")
    .param pmc param_396
    .param pmc param_398 :slurpy :named
.annotate 'line', 41
    .const 'Sub' $P407 = "36_1307873280.41316" 
    capture_lex $P407
    .lex "$self", param_396
    find_lex $P397, "$self"
    .lex "self", $P397
    .lex "%attributes", param_398
.annotate 'line', 42
    find_lex $P400, "$self"
    unless_null $P400, vivify_169
    new $P400, "Undef"
  vivify_169:
    get_how $P401, $P400
    find_lex $P402, "$self"
    unless_null $P402, vivify_170
    new $P402, "Undef"
  vivify_170:
    $P403 = $P401."parents"($P402)
    defined $I404, $P403
    unless $I404, for_undef_171
    iter $P399, $P403
    new $P414, 'ExceptionHandler'
    set_label $P414, loop413_handler
    $P414."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P414
  loop413_test:
    unless $P399, loop413_done
    shift $P405, $P399
  loop413_redo:
    .const 'Sub' $P407 = "36_1307873280.41316" 
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
  for_undef_171:
.annotate 'line', 41
    .return ($P399)
.end


.HLL "nqp"

.namespace []
.sub "_block406"  :anon :subid("36_1307873280.41316") :outer("35_1307873280.41316")
    .param pmc param_408
.annotate 'line', 42
    .lex "$class", param_408
.annotate 'line', 43
    find_lex $P409, "$self"
    unless_null $P409, vivify_172
    new $P409, "Undef"
  vivify_172:
    find_lex $P410, "$class"
    unless_null $P410, vivify_173
    new $P410, "Undef"
  vivify_173:
    find_lex $P411, "%attributes"
    unless_null $P411, vivify_174
    $P411 = root_new ['parrot';'Hash']
  vivify_174:
    $P412 = $P409."BUILD_MAGIC"($P410, $P411 :flat)
.annotate 'line', 42
    .return ($P412)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "BUILD_MAGIC" :anon :subid("37_1307873280.41316") :outer("32_1307873280.41316")
    .param pmc param_417
    .param pmc param_419
    .param pmc param_420 :slurpy :named
.annotate 'line', 47
    .const 'Sub' $P429 = "38_1307873280.41316" 
    capture_lex $P429
    .lex "$self", param_417
    find_lex $P418, "$self"
    .lex "self", $P418
    .lex "$type", param_419
    .lex "%attributes", param_420
.annotate 'line', 48
    find_lex $P422, "$type"
    unless_null $P422, vivify_175
    new $P422, "Undef"
  vivify_175:
    get_how $P423, $P422
    find_lex $P424, "$type"
    unless_null $P424, vivify_176
    new $P424, "Undef"
  vivify_176:
    $P425 = $P423."attributes"($P424, 1 :named("local"))
    defined $I426, $P425
    unless $I426, for_undef_177
    iter $P421, $P425
    new $P452, 'ExceptionHandler'
    set_label $P452, loop451_handler
    $P452."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P452
  loop451_test:
    unless $P421, loop451_done
    shift $P427, $P421
  loop451_redo:
    .const 'Sub' $P429 = "38_1307873280.41316" 
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
  for_undef_177:
.annotate 'line', 47
    .return ($P421)
.end


.HLL "nqp"

.namespace []
.sub "_block428"  :anon :subid("38_1307873280.41316") :outer("37_1307873280.41316")
    .param pmc param_432
.annotate 'line', 49
    new $P430, "Undef"
    .lex "$name", $P430
.annotate 'line', 50
    new $P431, "Undef"
    .lex "$shortname", $P431
    .lex "$_", param_432
.annotate 'line', 49
    find_lex $P433, "$_"
    unless_null $P433, vivify_178
    new $P433, "Undef"
  vivify_178:
    $P434 = $P433."name"()
    store_lex "$name", $P434
.annotate 'line', 50
    find_lex $P435, "$name"
    unless_null $P435, vivify_179
    new $P435, "Undef"
  vivify_179:
    set $S436, $P435
    substr $S437, $S436, 2
    new $P438, 'String'
    set $P438, $S437
    store_lex "$shortname", $P438
.annotate 'line', 51
    find_lex $P442, "$shortname"
    unless_null $P442, vivify_180
    new $P442, "Undef"
  vivify_180:
    find_lex $P441, "%attributes"
    unless_null $P441, vivify_181
    $P441 = root_new ['parrot';'Hash']
  vivify_181:
    exists $I443, $P441[$P442]
    if $I443, if_440
    new $P439, 'Integer'
    set $P439, $I443
    goto if_440_end
  if_440:
.annotate 'line', 52
    find_lex $P444, "$self"
    unless_null $P444, vivify_182
    new $P444, "Undef"
  vivify_182:
    find_lex $P445, "$type"
    unless_null $P445, vivify_183
    new $P445, "Undef"
  vivify_183:
    find_lex $P446, "$name"
    unless_null $P446, vivify_184
    new $P446, "Undef"
  vivify_184:
    set $S447, $P446
    find_lex $P448, "$shortname"
    unless_null $P448, vivify_185
    new $P448, "Undef"
  vivify_185:
    find_lex $P449, "%attributes"
    unless_null $P449, vivify_186
    $P449 = root_new ['parrot';'Hash']
  vivify_186:
    set $P450, $P449[$P448]
    unless_null $P450, vivify_187
    new $P450, "Undef"
  vivify_187:
    setattribute $P444, $P445, $S447, $P450
  if_440_end:
.annotate 'line', 48
    .return ($P439)
.end


.HLL "nqp"

.namespace []
.sub "new" :anon :subid("39_1307873280.41316") :outer("32_1307873280.41316")
    .param pmc param_455
    .param pmc param_456 :slurpy :named
.annotate 'line', 57
    .lex "self", param_455
    .lex "%attributes", param_456
.annotate 'line', 58
    find_lex $P457, "self"
    find_lex $P458, "%attributes"
    unless_null $P458, vivify_188
    $P458 = root_new ['parrot';'Hash']
  vivify_188:
    $P459 = $P457."bless"($P458 :flat)
.annotate 'line', 57
    .return ($P459)
.end


.HLL "nqp"

.namespace []
.sub "Str" :instanceof("DispatcherSub"):anon :subid("40_1307873280.41316") :outer("32_1307873280.41316")
    .param pmc param_461
.annotate 'line', 57
    .lex "self", param_461
    multi_dispatch_over_lexical_candidates $P462
    .return ($P462)
.end


.HLL "nqp"

.namespace []
.sub "Str" :anon :subid("41_1307873280.41316") :outer("32_1307873280.41316")
    .param pmc param_464
.annotate 'line', 62
    .lex "$self", param_464
    find_lex $P465, "$self"
    .lex "self", $P465
.annotate 'line', 63
    find_lex $P466, "self"
    get_how $P467, $P466
    find_lex $P468, "self"
    $P469 = $P467."name"($P468)
    concat $P470, $P469, "()"
.annotate 'line', 62
    .return ($P470)
.end


.HLL "nqp"

.namespace []
.sub "ACCEPTS" :instanceof("DispatcherSub"):anon :subid("42_1307873280.41316") :outer("32_1307873280.41316")
    .param pmc param_472
    .param pmc param_473
.annotate 'line', 62
    .lex "self", param_472
.annotate 'line', 66
    .lex "$topic", param_473
.annotate 'line', 62
    multi_dispatch_over_lexical_candidates $P474
    .return ($P474)
.end


.HLL "nqp"

.namespace []
.sub "ACCEPTS" :anon :subid("43_1307873280.41316") :outer("32_1307873280.41316")
    .param pmc param_476
    .param pmc param_478
.annotate 'line', 67
    .lex "$self", param_476
    find_lex $P477, "$self"
    .lex "self", $P477
    .lex "$topic", param_478
.annotate 'line', 68
    find_lex $P479, "$topic"
    unless_null $P479, vivify_189
    new $P479, "Undef"
  vivify_189:
    find_lex $P480, "self"
    get_what $P481, $P480
    type_check $I482, $P479, $P481
.annotate 'line', 67
    .return ($I482)
.end


.HLL "nqp"

.namespace []
.sub "_block483"  :anon :subid("44_1307873280.41316") :outer("32_1307873280.41316")
    .param pmc param_485
.annotate 'line', 71
    .lex "self", param_485
.annotate 'line', 72
    find_lex $P486, "self"
    repr_defined $I487, $P486
.annotate 'line', 71
    .return ($I487)
.end


.HLL "nqp"

.namespace []
.sub "isa" :anon :subid("45_1307873280.41316") :outer("32_1307873280.41316")
    .param pmc param_489
    .param pmc param_490
.annotate 'line', 75
    .lex "self", param_489
    .lex "$type", param_490
.annotate 'line', 76
    find_lex $P491, "self"
    get_how $P492, $P491
    find_lex $P493, "self"
    find_lex $P494, "$type"
    unless_null $P494, vivify_190
    new $P494, "Undef"
  vivify_190:
    $P495 = $P492."isa"($P493, $P494)
.annotate 'line', 75
    .return ($P495)
.end


.HLL "nqp"

.namespace []
.sub "_block497"  :anon :subid("46_1307873280.41316") :outer("10_1307873280.41316")
.annotate 'line', 81
    .const 'Sub' $P521 = "50_1307873280.41316" 
    capture_lex $P521
    .const 'Sub' $P516 = "49_1307873280.41316" 
    capture_lex $P516
    .const 'Sub' $P508 = "48_1307873280.41316" 
    capture_lex $P508
    .const 'Sub' $P501 = "47_1307873280.41316" 
    capture_lex $P501
    .lex "$?PACKAGE", $P499
    .lex "$?CLASS", $P500
.annotate 'line', 115
    .const 'Sub' $P521 = "50_1307873280.41316" 
    newclosure $P526, $P521
.annotate 'line', 81
    .return ($P526)
.end


.HLL "nqp"

.namespace []
.sub "new" :anon :subid("47_1307873280.41316") :outer("46_1307873280.41316")
    .param pmc param_502
.annotate 'line', 102
    .lex "self", param_502
.annotate 'line', 103
    new $P503, "Undef"
    .lex "$n", $P503
    find_lex $P504, "self"
    $P505 = $P504."CREATE"()
    store_lex "$n", $P505
.annotate 'line', 104
    find_lex $P506, "$n"
    unless_null $P506, vivify_191
    new $P506, "Undef"
  vivify_191:
    $P506."BUILD"()
    find_lex $P507, "$n"
    unless_null $P507, vivify_192
    new $P507, "Undef"
  vivify_192:
.annotate 'line', 102
    .return ($P507)
.end


.HLL "nqp"

.namespace []
.sub "BUILD" :anon :subid("48_1307873280.41316") :outer("46_1307873280.41316")
    .param pmc param_509
.annotate 'line', 108
    .lex "self", param_509
.annotate 'line', 109
    new $P510, "ResizablePMCArray"
    find_lex $P511, "self"
    find_lex $P512, "$?CLASS"
    setattribute $P511, $P512, "@!array", $P510
.annotate 'line', 110
    new $P513, "Hash"
    find_lex $P514, "self"
    find_lex $P515, "$?CLASS"
    setattribute $P514, $P515, "%!hash", $P513
.annotate 'line', 108
    .return ($P513)
.end


.HLL "nqp"

.namespace []
.sub "list" :anon :subid("49_1307873280.41316") :outer("46_1307873280.41316")
    .param pmc param_517
.annotate 'line', 113
    .lex "self", param_517
    find_lex $P518, "self"
    find_lex $P519, "$?CLASS"
    getattribute $P520, $P518, $P519, "@!array"
    unless_null $P520, vivify_193
    $P520 = root_new ['parrot';'ResizablePMCArray']
  vivify_193:
    .return ($P520)
.end


.HLL "nqp"

.namespace []
.sub "hash" :anon :subid("50_1307873280.41316") :outer("46_1307873280.41316")
    .param pmc param_522
.annotate 'line', 115
    .lex "self", param_522
    find_lex $P523, "self"
    find_lex $P524, "$?CLASS"
    getattribute $P525, $P523, $P524, "%!hash"
    unless_null $P525, vivify_194
    $P525 = root_new ['parrot';'Hash']
  vivify_194:
    .return ($P525)
.end


.HLL "nqp"

.namespace []
.sub "_block551" :load :anon :subid("51_1307873280.41316")
.annotate 'line', 1
    .const 'Sub' $P553 = "10_1307873280.41316" 
    $P554 = $P553()
    .return ($P554)
.end

