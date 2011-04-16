
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1302969588.527")
.annotate 'line', 0
    get_hll_global $P284, ["NQPMu"], "_block283" 
    capture_lex $P284
    .const 'Sub' $P276 = "29_1302969588.527" 
    capture_lex $P276
    .const 'Sub' $P268 = "27_1302969588.527" 
    capture_lex $P268
    .const 'Sub' $P260 = "25_1302969588.527" 
    capture_lex $P260
    .const 'Sub' $P246 = "24_1302969588.527" 
    capture_lex $P246
    .const 'Sub' $P224 = "23_1302969588.527" 
    capture_lex $P224
    .const 'Sub' $P217 = "22_1302969588.527" 
    capture_lex $P217
    .const 'Sub' $P129 = "20_1302969588.527" 
    capture_lex $P129
    .const 'Sub' $P96 = "18_1302969588.527" 
    capture_lex $P96
    .const 'Sub' $P91 = "17_1302969588.527" 
    capture_lex $P91
    .const 'Sub' $P77 = "15_1302969588.527" 
    capture_lex $P77
    .const 'Sub' $P65 = "14_1302969588.527" 
    capture_lex $P65
    .const 'Sub' $P54 = "13_1302969588.527" 
    capture_lex $P54
    .const 'Sub' $P49 = "12_1302969588.527" 
    capture_lex $P49
    .const 'Sub' $P16 = "11_1302969588.527" 
    capture_lex $P16
.annotate 'line', 1
    .lex "int", $P13
    .lex "num", $P14
    .lex "str", $P15
.annotate 'line', 73
    .const 'Sub' $P16 = "11_1302969588.527" 
    newclosure $P48, $P16
    .lex "open", $P48
.annotate 'line', 85
    .const 'Sub' $P49 = "12_1302969588.527" 
    newclosure $P53, $P49
    .lex "close", $P53
.annotate 'line', 93
    .const 'Sub' $P54 = "13_1302969588.527" 
    newclosure $P64, $P54
    .lex "slurp", $P64
.annotate 'line', 105
    .const 'Sub' $P65 = "14_1302969588.527" 
    newclosure $P76, $P65
    .lex "spew", $P76
.annotate 'line', 112
    .const 'Sub' $P77 = "15_1302969588.527" 
    newclosure $P90, $P77
    .lex "print", $P90
.annotate 'line', 119
    .const 'Sub' $P91 = "17_1302969588.527" 
    newclosure $P95, $P91
    .lex "say", $P95
.annotate 'line', 137
    .const 'Sub' $P96 = "18_1302969588.527" 
    newclosure $P128, $P96
    .lex "match", $P128
.annotate 'line', 159
    .const 'Sub' $P129 = "20_1302969588.527" 
    newclosure $P215, $P129
    .lex "subst", $P215
.annotate 'line', 185
    new $P216, "Undef"
    .lex "$test_counter", $P216
.annotate 'line', 187
    .const 'Sub' $P217 = "22_1302969588.527" 
    newclosure $P223, $P217
    .lex "plan", $P223
.annotate 'line', 191
    .const 'Sub' $P224 = "23_1302969588.527" 
    newclosure $P245, $P224
    .lex "ok", $P245
.annotate 'line', 206
    .const 'Sub' $P246 = "24_1302969588.527" 
    newclosure $P258, $P246
    .lex "skip", $P258
.annotate 'line', 7
    .const 'Sub' $P260 = "25_1302969588.527" 
    capture_lex $P260
    $P260()
.annotate 'line', 9
    .const 'Sub' $P268 = "27_1302969588.527" 
    capture_lex $P268
    $P268()
.annotate 'line', 11
    .const 'Sub' $P276 = "29_1302969588.527" 
    capture_lex $P276
    $P276()
.annotate 'line', 14
    get_hll_global $P284, ["NQPMu"], "_block283" 
    capture_lex $P284
    $P284()
    find_lex $P436, "open"
    find_lex $P437, "close"
    find_lex $P438, "slurp"
    find_lex $P439, "spew"
    find_lex $P440, "print"
    find_lex $P441, "say"
    find_lex $P442, "match"
    find_lex $P443, "subst"
.annotate 'line', 185
    new $P444, "Integer"
    assign $P444, 0
    store_lex "$test_counter", $P444
    find_lex $P445, "plan"
    find_lex $P446, "ok"
    find_lex $P447, "skip"
    new $P448, "Integer"
    assign $P448, 1
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 1
    .return ()
    .const 'Sub' $P450 = "45_1302969588.527" 
    .return ($P450)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post46") :outer("10_1302969588.527")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1302969588.527" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P454, "1302969587.917"
    isnull $I455, $P454
    if $I455, if_453
    .const 'Sub' $P504 = "10_1302969588.527" 
    $P505 = $P504."get_lexinfo"()
    nqp_get_sc_object $P506, "1302969587.917", 0
    $P505."set_static_lexpad_value"("int", $P506)
    .const 'Sub' $P507 = "10_1302969588.527" 
    $P508 = $P507."get_lexinfo"()
    $P508."finish_static_lexpad"()
    .const 'Sub' $P509 = "25_1302969588.527" 
    $P510 = $P509."get_lexinfo"()
    nqp_get_sc_object $P511, "1302969587.917", 0
    $P510."set_static_lexpad_value"("$?CLASS", $P511)
    .const 'Sub' $P512 = "25_1302969588.527" 
    $P513 = $P512."get_lexinfo"()
    $P513."finish_static_lexpad"()
    .const 'Sub' $P514 = "10_1302969588.527" 
    $P515 = $P514."get_lexinfo"()
    nqp_get_sc_object $P516, "1302969587.917", 1
    $P515."set_static_lexpad_value"("num", $P516)
    .const 'Sub' $P517 = "10_1302969588.527" 
    $P518 = $P517."get_lexinfo"()
    $P518."finish_static_lexpad"()
    .const 'Sub' $P519 = "27_1302969588.527" 
    $P520 = $P519."get_lexinfo"()
    nqp_get_sc_object $P521, "1302969587.917", 1
    $P520."set_static_lexpad_value"("$?CLASS", $P521)
    .const 'Sub' $P522 = "27_1302969588.527" 
    $P523 = $P522."get_lexinfo"()
    $P523."finish_static_lexpad"()
    .const 'Sub' $P524 = "10_1302969588.527" 
    $P525 = $P524."get_lexinfo"()
    nqp_get_sc_object $P526, "1302969587.917", 2
    $P525."set_static_lexpad_value"("str", $P526)
    .const 'Sub' $P527 = "10_1302969588.527" 
    $P528 = $P527."get_lexinfo"()
    $P528."finish_static_lexpad"()
    .const 'Sub' $P529 = "29_1302969588.527" 
    $P530 = $P529."get_lexinfo"()
    nqp_get_sc_object $P531, "1302969587.917", 2
    $P530."set_static_lexpad_value"("$?CLASS", $P531)
    .const 'Sub' $P532 = "29_1302969588.527" 
    $P533 = $P532."get_lexinfo"()
    $P533."finish_static_lexpad"()
    nqp_get_sc_object $P534, "1302969587.917", 3
    set_hll_global "NQPMu", $P534
    .const 'Sub' $P535 = "31_1302969588.527" 
    $P536 = $P535."get_lexinfo"()
    nqp_get_sc_object $P537, "1302969587.917", 3
    $P536."set_static_lexpad_value"("$?CLASS", $P537)
    .const 'Sub' $P538 = "31_1302969588.527" 
    $P539 = $P538."get_lexinfo"()
    $P539."finish_static_lexpad"()
    goto if_453_end
  if_453:
    nqp_dynop_setup 
    getinterp $P456
    get_class $P457, "LexPad"
    get_class $P458, "NQPLexPad"
    $P456."hll_map"($P457, $P458)
    load_bytecode "nqpmo.pbc"
    nqp_create_sc $P459, "1302969587.917"
    .local pmc cur_sc
    set cur_sc, $P459
    get_hll_global $P460, "NQPNativeHOW"
    $P461 = $P460."new_type"("int" :named("name"), "P6int" :named("repr"))
    nqp_set_sc_for_object $P461, cur_sc
    nqp_set_sc_object "1302969587.917", 0, $P461
    .const 'Sub' $P462 = "10_1302969588.527" 
    $P463 = $P462."get_lexinfo"()
    nqp_get_sc_object $P464, "1302969587.917", 0
    $P463."set_static_lexpad_value"("int", $P464)
    .const 'Sub' $P465 = "10_1302969588.527" 
    $P466 = $P465."get_lexinfo"()
    $P466."finish_static_lexpad"()
    .const 'Sub' $P467 = "25_1302969588.527" 
    $P468 = $P467."get_lexinfo"()
    nqp_get_sc_object $P469, "1302969587.917", 0
    $P468."set_static_lexpad_value"("$?CLASS", $P469)
    .const 'Sub' $P470 = "25_1302969588.527" 
    $P471 = $P470."get_lexinfo"()
    $P471."finish_static_lexpad"()
    get_hll_global $P472, "NQPNativeHOW"
    $P473 = $P472."new_type"("num" :named("name"), "P6num" :named("repr"))
    nqp_set_sc_for_object $P473, cur_sc
    nqp_set_sc_object "1302969587.917", 1, $P473
    .const 'Sub' $P474 = "10_1302969588.527" 
    $P475 = $P474."get_lexinfo"()
    nqp_get_sc_object $P476, "1302969587.917", 1
    $P475."set_static_lexpad_value"("num", $P476)
    .const 'Sub' $P477 = "10_1302969588.527" 
    $P478 = $P477."get_lexinfo"()
    $P478."finish_static_lexpad"()
    .const 'Sub' $P479 = "27_1302969588.527" 
    $P480 = $P479."get_lexinfo"()
    nqp_get_sc_object $P481, "1302969587.917", 1
    $P480."set_static_lexpad_value"("$?CLASS", $P481)
    .const 'Sub' $P482 = "27_1302969588.527" 
    $P483 = $P482."get_lexinfo"()
    $P483."finish_static_lexpad"()
    get_hll_global $P484, "NQPNativeHOW"
    $P485 = $P484."new_type"("str" :named("name"), "P6str" :named("repr"))
    nqp_set_sc_for_object $P485, cur_sc
    nqp_set_sc_object "1302969587.917", 2, $P485
    .const 'Sub' $P486 = "10_1302969588.527" 
    $P487 = $P486."get_lexinfo"()
    nqp_get_sc_object $P488, "1302969587.917", 2
    $P487."set_static_lexpad_value"("str", $P488)
    .const 'Sub' $P489 = "10_1302969588.527" 
    $P490 = $P489."get_lexinfo"()
    $P490."finish_static_lexpad"()
    .const 'Sub' $P491 = "29_1302969588.527" 
    $P492 = $P491."get_lexinfo"()
    nqp_get_sc_object $P493, "1302969587.917", 2
    $P492."set_static_lexpad_value"("$?CLASS", $P493)
    .const 'Sub' $P494 = "29_1302969588.527" 
    $P495 = $P494."get_lexinfo"()
    $P495."finish_static_lexpad"()
    get_hll_global $P496, "NQPClassHOW"
    $P497 = $P496."new_type"("NQPMu" :named("name"))
    nqp_set_sc_for_object $P497, cur_sc
    nqp_set_sc_object "1302969587.917", 3, $P497
    nqp_get_sc_object $P498, "1302969587.917", 3
    set_hll_global "NQPMu", $P498
    .const 'Sub' $P499 = "31_1302969588.527" 
    $P500 = $P499."get_lexinfo"()
    nqp_get_sc_object $P501, "1302969587.917", 3
    $P500."set_static_lexpad_value"("$?CLASS", $P501)
    .const 'Sub' $P502 = "31_1302969588.527" 
    $P503 = $P502."get_lexinfo"()
    $P503."finish_static_lexpad"()
  if_453_end:
.end


.HLL "nqp"

.namespace []
.sub "open"  :subid("11_1302969588.527") :outer("10_1302969588.527")
    .param pmc param_17
    .param pmc param_18 :optional :named("r")
    .param int has_param_18 :opt_flag
    .param pmc param_20 :optional :named("w")
    .param int has_param_20 :opt_flag
    .param pmc param_22 :optional :named("a")
    .param int has_param_22 :opt_flag
    .param pmc param_24 :optional :named("bin")
    .param int has_param_24 :opt_flag
.annotate 'line', 73
    .lex "$filename", param_17
    if has_param_18, optparam_47
    new $P19, "Undef"
    set param_18, $P19
  optparam_47:
    .lex "$r", param_18
    if has_param_20, optparam_48
    new $P21, "Undef"
    set param_20, $P21
  optparam_48:
    .lex "$w", param_20
    if has_param_22, optparam_49
    new $P23, "Undef"
    set param_22, $P23
  optparam_49:
    .lex "$a", param_22
    if has_param_24, optparam_50
    new $P25, "Undef"
    set param_24, $P25
  optparam_50:
    .lex "$bin", param_24
.annotate 'line', 74
    new $P26, "Undef"
    .lex "$mode", $P26
.annotate 'line', 75
    new $P27, "Undef"
    .lex "$handle", $P27
.annotate 'line', 74
    find_lex $P30, "$w"
    if $P30, if_29
    find_lex $P34, "$a"
    if $P34, if_33
    new $P36, "String"
    assign $P36, "r"
    set $P32, $P36
    goto if_33_end
  if_33:
    new $P35, "String"
    assign $P35, "wa"
    set $P32, $P35
  if_33_end:
    set $P28, $P32
    goto if_29_end
  if_29:
    new $P31, "String"
    assign $P31, "w"
    set $P28, $P31
  if_29_end:
    store_lex "$mode", $P28
.annotate 'line', 75
    new $P37, "FileHandle"
    store_lex "$handle", $P37
.annotate 'line', 76
    find_lex $P38, "$handle"
    find_lex $P39, "$filename"
    find_lex $P40, "$mode"
    $P38."open"($P39, $P40)
.annotate 'line', 77
    find_lex $P41, "$handle"
    find_lex $P44, "$bin"
    if $P44, if_43
    new $P46, "String"
    assign $P46, "utf8"
    set $P42, $P46
    goto if_43_end
  if_43:
    new $P45, "String"
    assign $P45, "binary"
    set $P42, $P45
  if_43_end:
    $P41."encoding"($P42)
    find_lex $P47, "$handle"
.annotate 'line', 73
    .return ($P47)
.end


.HLL "nqp"

.namespace []
.sub "close"  :subid("12_1302969588.527") :outer("10_1302969588.527")
    .param pmc param_50
.annotate 'line', 85
    .lex "$handle", param_50
.annotate 'line', 86
    find_lex $P51, "$handle"
    $P52 = $P51."close"()
.annotate 'line', 85
    .return ($P52)
.end


.HLL "nqp"

.namespace []
.sub "slurp"  :subid("13_1302969588.527") :outer("10_1302969588.527")
    .param pmc param_55
.annotate 'line', 93
    .lex "$filename", param_55
.annotate 'line', 94
    new $P56, "Undef"
    .lex "$handle", $P56
.annotate 'line', 95
    new $P57, "Undef"
    .lex "$contents", $P57
.annotate 'line', 94
    find_lex $P58, "$filename"
    $P59 = "open"($P58, 1 :named("r"))
    store_lex "$handle", $P59
.annotate 'line', 95
    find_lex $P60, "$handle"
    $P61 = $P60."readall"()
    store_lex "$contents", $P61
.annotate 'line', 96
    find_lex $P62, "$handle"
    $P62."close"()
    find_lex $P63, "$contents"
.annotate 'line', 93
    .return ($P63)
.end


.HLL "nqp"

.namespace []
.sub "spew"  :subid("14_1302969588.527") :outer("10_1302969588.527")
    .param pmc param_66
    .param pmc param_67
.annotate 'line', 105
    .lex "$filename", param_66
    .lex "$contents", param_67
.annotate 'line', 106
    new $P68, "Undef"
    .lex "$handle", $P68
    new $P69, "FileHandle"
    store_lex "$handle", $P69
.annotate 'line', 107
    find_lex $P70, "$handle"
    find_lex $P71, "$filename"
    $P70."open"($P71, "w")
.annotate 'line', 108
    find_lex $P72, "$handle"
    find_lex $P73, "$contents"
    $P72."print"($P73)
.annotate 'line', 109
    find_lex $P74, "$handle"
    $P75 = $P74."close"()
.annotate 'line', 105
    .return ($P75)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "print"  :subid("15_1302969588.527") :outer("10_1302969588.527")
    .param pmc param_78 :slurpy
.annotate 'line', 112
    .const 'Sub' $P84 = "16_1302969588.527" 
    capture_lex $P84
    .lex "@args", param_78
.annotate 'line', 113
    find_lex $P80, "@args"
    defined $I81, $P80
    unless $I81, for_undef_51
    iter $P79, $P80
    new $P88, 'ExceptionHandler'
    set_label $P88, loop87_handler
    $P88."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P88
  loop87_test:
    unless $P79, loop87_done
    shift $P82, $P79
  loop87_redo:
    .const 'Sub' $P84 = "16_1302969588.527" 
    capture_lex $P84
    $P84($P82)
  loop87_next:
    goto loop87_test
  loop87_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P89, exception, 'type'
    eq $P89, .CONTROL_LOOP_NEXT, loop87_next
    eq $P89, .CONTROL_LOOP_REDO, loop87_redo
  loop87_done:
    pop_eh 
  for_undef_51:
.annotate 'line', 112
    .return (1)
.end


.HLL "nqp"

.namespace []
.sub "_block83"  :anon :subid("16_1302969588.527") :outer("15_1302969588.527")
    .param pmc param_85
.annotate 'line', 113
    .lex "$_", param_85
.annotate 'line', 114
    find_lex $P86, "$_"
    print $P86
.annotate 'line', 113
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "say"  :subid("17_1302969588.527") :outer("10_1302969588.527")
    .param pmc param_92 :slurpy
.annotate 'line', 119
    .lex "@args", param_92
.annotate 'line', 120
    find_lex $P93, "@args"
    $P94 = "print"($P93 :flat, "\n")
.annotate 'line', 119
    .return ($P94)
.end


.HLL "nqp"

.namespace []
.sub "match"  :subid("18_1302969588.527") :outer("10_1302969588.527")
    .param pmc param_97
    .param pmc param_98
    .param pmc param_99 :optional :named("global")
    .param int has_param_99 :opt_flag
.annotate 'line', 137
    .const 'Sub' $P109 = "19_1302969588.527" 
    capture_lex $P109
    .lex "$text", param_97
    .lex "$regex", param_98
    if has_param_99, optparam_52
    new $P100, "Undef"
    set param_99, $P100
  optparam_52:
    .lex "$global", param_99
.annotate 'line', 138
    new $P101, "Undef"
    .lex "$match", $P101
    find_lex $P102, "$regex"
    find_lex $P103, "$text"
    $P104 = $P102."ACCEPTS"($P103)
    store_lex "$match", $P104
.annotate 'line', 139
    find_lex $P107, "$global"
    if $P107, if_106
.annotate 'line', 147
    find_lex $P127, "$match"
    set $P105, $P127
.annotate 'line', 139
    goto if_106_end
  if_106:
    .const 'Sub' $P109 = "19_1302969588.527" 
    capture_lex $P109
    $P126 = $P109()
    set $P105, $P126
  if_106_end:
.annotate 'line', 137
    .return ($P105)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "_block108"  :anon :subid("19_1302969588.527") :outer("18_1302969588.527")
.annotate 'line', 140
    $P110 = root_new ['parrot';'ResizablePMCArray']
    .lex "@matches", $P110
.annotate 'line', 139
    find_lex $P111, "@matches"
.annotate 'line', 141
    new $P123, 'ExceptionHandler'
    set_label $P123, loop122_handler
    $P123."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P123
  loop122_test:
    find_lex $P112, "$match"
    unless $P112, loop122_done
  loop122_redo:
.annotate 'line', 142
    find_lex $P113, "@matches"
    find_lex $P114, "$match"
    $P113."push"($P114)
.annotate 'line', 143
    find_lex $P115, "$match"
    $P116 = $P115."CURSOR"()
    find_lex $P117, "$text"
    find_lex $P118, "$regex"
    find_lex $P119, "$match"
    $P120 = $P119."to"()
    $P121 = $P116."parse"($P117, $P118 :named("rule"), $P120 :named("c"))
    store_lex "$match", $P121
  loop122_next:
.annotate 'line', 141
    goto loop122_test
  loop122_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P124, exception, 'type'
    eq $P124, .CONTROL_LOOP_NEXT, loop122_next
    eq $P124, .CONTROL_LOOP_REDO, loop122_redo
  loop122_done:
    pop_eh 
    find_lex $P125, "@matches"
.annotate 'line', 139
    .return ($P125)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "subst"  :subid("20_1302969588.527") :outer("10_1302969588.527")
    .param pmc param_130
    .param pmc param_131
    .param pmc param_132
    .param pmc param_133 :optional :named("global")
    .param int has_param_133 :opt_flag
.annotate 'line', 159
    .const 'Sub' $P160 = "21_1302969588.527" 
    capture_lex $P160
    .lex "$text", param_130
    .lex "$regex", param_131
    .lex "$repl", param_132
    if has_param_133, optparam_53
    new $P134, "Undef"
    set param_133, $P134
  optparam_53:
    .lex "$global", param_133
.annotate 'line', 160
    $P135 = root_new ['parrot';'ResizablePMCArray']
    .lex "@matches", $P135
.annotate 'line', 162
    new $P136, "Undef"
    .lex "$is_code", $P136
.annotate 'line', 163
    new $P137, "Undef"
    .lex "$offset", $P137
.annotate 'line', 164
    new $P138, "Undef"
    .lex "$result", $P138
.annotate 'line', 175
    new $P139, "Undef"
    .lex "$chars", $P139
.annotate 'line', 160
    find_lex $P142, "$global"
    if $P142, if_141
.annotate 'line', 161
    find_lex $P146, "$regex"
    find_lex $P147, "$text"
    $P148 = $P146."ACCEPTS"($P147)
    new $P149, "ResizablePMCArray"
    push $P149, $P148
.annotate 'line', 160
    set $P140, $P149
    goto if_141_end
  if_141:
    find_lex $P143, "$text"
    find_lex $P144, "$regex"
    $P145 = "match"($P143, $P144, 1 :named("global"))
    set $P140, $P145
  if_141_end:
    store_lex "@matches", $P140
.annotate 'line', 162
    find_lex $P150, "$repl"
    isa $I151, $P150, "Sub"
    new $P152, 'Integer'
    set $P152, $I151
    store_lex "$is_code", $P152
.annotate 'line', 163
    new $P153, "Integer"
    assign $P153, 0
    store_lex "$offset", $P153
.annotate 'line', 164
    new $P154, "StringBuilder"
    store_lex "$result", $P154
.annotate 'line', 166
    find_lex $P156, "@matches"
    defined $I157, $P156
    unless $I157, for_undef_54
    iter $P155, $P156
    new $P193, 'ExceptionHandler'
    set_label $P193, loop192_handler
    $P193."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P193
  loop192_test:
    unless $P155, loop192_done
    shift $P158, $P155
  loop192_redo:
    .const 'Sub' $P160 = "21_1302969588.527" 
    capture_lex $P160
    $P160($P158)
  loop192_next:
    goto loop192_test
  loop192_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P194, exception, 'type'
    eq $P194, .CONTROL_LOOP_NEXT, loop192_next
    eq $P194, .CONTROL_LOOP_REDO, loop192_redo
  loop192_done:
    pop_eh 
  for_undef_54:
.annotate 'line', 175
    find_lex $P195, "$text"
    set $S196, $P195
    length $I197, $S196
    new $P198, 'Integer'
    set $P198, $I197
    store_lex "$chars", $P198
.annotate 'line', 177
    find_lex $P200, "$chars"
    set $N201, $P200
    find_lex $P202, "$offset"
    set $N203, $P202
    isgt $I204, $N201, $N203
    unless $I204, if_199_end
.annotate 'line', 176
    find_lex $P205, "$result"
    find_lex $P206, "$text"
    set $S207, $P206
    find_lex $P208, "$offset"
    set $I209, $P208
    find_lex $P210, "$chars"
    set $I211, $P210
    substr $S212, $S207, $I209, $I211
    push $P205, $S212
  if_199_end:
.annotate 'line', 179
    find_lex $P213, "$result"
    set $S214, $P213
.annotate 'line', 159
    .return ($S214)
.end


.HLL "nqp"

.namespace []
.sub "_block159"  :anon :subid("21_1302969588.527") :outer("20_1302969588.527")
    .param pmc param_161
.annotate 'line', 166
    .lex "$match", param_161
.annotate 'line', 167
    find_lex $P164, "$match"
    if $P164, if_163
    set $P162, $P164
    goto if_163_end
  if_163:
.annotate 'line', 169
    find_lex $P166, "$match"
    $N167 = $P166."from"()
    find_lex $P168, "$offset"
    set $N169, $P168
    isgt $I170, $N167, $N169
    unless $I170, if_165_end
.annotate 'line', 168
    find_lex $P171, "$result"
    find_lex $P172, "$text"
    set $S173, $P172
    find_lex $P174, "$offset"
    set $I175, $P174
    find_lex $P176, "$match"
    $P177 = $P176."from"()
    find_lex $P178, "$offset"
    sub $P179, $P177, $P178
    set $I180, $P179
    substr $S181, $S173, $I175, $I180
    push $P171, $S181
  if_165_end:
.annotate 'line', 170
    find_lex $P182, "$result"
    find_lex $P185, "$is_code"
    if $P185, if_184
    find_lex $P189, "$repl"
    set $P183, $P189
    goto if_184_end
  if_184:
    find_lex $P186, "$repl"
    find_lex $P187, "$match"
    $P188 = $P186($P187)
    set $P183, $P188
  if_184_end:
    push $P182, $P183
.annotate 'line', 171
    find_lex $P190, "$match"
    $P191 = $P190."to"()
    store_lex "$offset", $P191
.annotate 'line', 167
    set $P162, $P191
  if_163_end:
.annotate 'line', 166
    .return ($P162)
.end


.HLL "nqp"

.namespace []
.sub "plan"  :subid("22_1302969588.527") :outer("10_1302969588.527")
    .param pmc param_218
.annotate 'line', 187
    .lex "$quantity", param_218
.annotate 'line', 188
    new $P219, 'String'
    set $P219, "1.."
    find_lex $P220, "$quantity"
    concat $P221, $P219, $P220
    $P222 = "say"($P221)
.annotate 'line', 187
    .return ($P222)
.end


.HLL "nqp"

.namespace []
.sub "ok"  :subid("23_1302969588.527") :outer("10_1302969588.527")
    .param pmc param_225
    .param pmc param_226 :optional
    .param int has_param_226 :opt_flag
.annotate 'line', 191
    .lex "$condition", param_225
    if has_param_226, optparam_55
    new $P227, "Undef"
    set param_226, $P227
  optparam_55:
    .lex "$desc", param_226
.annotate 'line', 192
    find_lex $P228, "$test_counter"
    add $P229, $P228, 1
    store_lex "$test_counter", $P229
.annotate 'line', 194
    find_lex $P231, "$condition"
    if $P231, unless_230_end
.annotate 'line', 195
    "print"("not ")
  unless_230_end:
.annotate 'line', 197
    new $P232, 'String'
    set $P232, "ok "
    find_lex $P233, "$test_counter"
    concat $P234, $P232, $P233
    "print"($P234)
.annotate 'line', 198
    find_lex $P236, "$desc"
    unless $P236, if_235_end
.annotate 'line', 199
    new $P237, 'String'
    set $P237, " - "
    find_lex $P238, "$desc"
    concat $P239, $P237, $P238
    "print"($P239)
  if_235_end:
.annotate 'line', 201
    "print"("\n")
.annotate 'line', 203
    find_lex $P242, "$condition"
    if $P242, if_241
    new $P244, "Integer"
    assign $P244, 0
    set $P240, $P244
    goto if_241_end
  if_241:
    new $P243, "Integer"
    assign $P243, 1
    set $P240, $P243
  if_241_end:
.annotate 'line', 191
    .return ($P240)
.end


.HLL "nqp"

.namespace []
.sub "skip"  :subid("24_1302969588.527") :outer("10_1302969588.527")
    .param pmc param_247
.annotate 'line', 206
    .lex "$desc", param_247
.annotate 'line', 207
    find_lex $P248, "$test_counter"
    add $P249, $P248, 1
    store_lex "$test_counter", $P249
.annotate 'line', 208
    new $P250, 'String'
    set $P250, "ok "
    find_lex $P251, "$test_counter"
    concat $P252, $P250, $P251
    concat $P253, $P252, " # SKIP "
    find_lex $P254, "$desc"
    concat $P255, $P253, $P254
    concat $P256, $P255, "\n"
    $P257 = "say"($P256)
.annotate 'line', 206
    .return ($P257)
.end


.HLL "nqp"

.namespace []
.sub "_block259"  :anon :subid("25_1302969588.527") :outer("10_1302969588.527")
.annotate 'line', 7
    .const 'Sub' $P263 = "26_1302969588.527" 
    capture_lex $P263
    .lex "$?CLASS", $P261
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post56") :outer("25_1302969588.527")
.annotate 'line', 7
    .const 'Sub' $P260 = "25_1302969588.527" 
    .local pmc block
    set block, $P260
    .const 'Sub' $P263 = "26_1302969588.527" 
    capture_lex $P263
    $P263()
.end


.HLL "nqp"

.namespace []
.sub "_block262"  :anon :subid("26_1302969588.527") :outer("25_1302969588.527")
.annotate 'line', 7
    nqp_get_sc_object $P264, "1302969587.917", 0
    .local pmc type_obj
    set type_obj, $P264
    get_how $P265, type_obj
    $P266 = $P265."compose"(type_obj)
    .return ($P266)
.end


.HLL "nqp"

.namespace []
.sub "_block267"  :anon :subid("27_1302969588.527") :outer("10_1302969588.527")
.annotate 'line', 9
    .const 'Sub' $P271 = "28_1302969588.527" 
    capture_lex $P271
    .lex "$?CLASS", $P269
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post57") :outer("27_1302969588.527")
.annotate 'line', 9
    .const 'Sub' $P268 = "27_1302969588.527" 
    .local pmc block
    set block, $P268
    .const 'Sub' $P271 = "28_1302969588.527" 
    capture_lex $P271
    $P271()
.end


.HLL "nqp"

.namespace []
.sub "_block270"  :anon :subid("28_1302969588.527") :outer("27_1302969588.527")
.annotate 'line', 9
    nqp_get_sc_object $P272, "1302969587.917", 1
    .local pmc type_obj
    set type_obj, $P272
    get_how $P273, type_obj
    $P274 = $P273."compose"(type_obj)
    .return ($P274)
.end


.HLL "nqp"

.namespace []
.sub "_block275"  :anon :subid("29_1302969588.527") :outer("10_1302969588.527")
.annotate 'line', 11
    .const 'Sub' $P279 = "30_1302969588.527" 
    capture_lex $P279
    .lex "$?CLASS", $P277
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post58") :outer("29_1302969588.527")
.annotate 'line', 11
    .const 'Sub' $P276 = "29_1302969588.527" 
    .local pmc block
    set block, $P276
    .const 'Sub' $P279 = "30_1302969588.527" 
    capture_lex $P279
    $P279()
.end


.HLL "nqp"

.namespace []
.sub "_block278"  :anon :subid("30_1302969588.527") :outer("29_1302969588.527")
.annotate 'line', 11
    nqp_get_sc_object $P280, "1302969587.917", 2
    .local pmc type_obj
    set type_obj, $P280
    get_how $P281, type_obj
    $P282 = $P281."compose"(type_obj)
    .return ($P282)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "_block283"  :subid("31_1302969588.527") :outer("10_1302969588.527")
.annotate 'line', 14
    .const 'Sub' $P405 = "44_1302969588.527" 
    capture_lex $P405
    .const 'Sub' $P395 = "43_1302969588.527" 
    capture_lex $P395
    .const 'Sub' $P383 = "42_1302969588.527" 
    capture_lex $P383
    .const 'Sub' $P379 = "41_1302969588.527" 
    capture_lex $P379
    .const 'Sub' $P368 = "40_1302969588.527" 
    capture_lex $P368
    .const 'Sub' $P365 = "39_1302969588.527" 
    capture_lex $P365
    .const 'Sub' $P359 = "38_1302969588.527" 
    capture_lex $P359
    .const 'Sub' $P321 = "36_1302969588.527" 
    capture_lex $P321
    .const 'Sub' $P300 = "34_1302969588.527" 
    capture_lex $P300
    .const 'Sub' $P290 = "33_1302969588.527" 
    capture_lex $P290
    .const 'Sub' $P286 = "32_1302969588.527" 
    capture_lex $P286
    .lex "$?CLASS", $P285
.annotate 'line', 56
    .const 'Sub' $P395 = "43_1302969588.527" 
    newclosure $P403, $P395
.annotate 'line', 14
    .return ($P403)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "" :load :init :subid("post59") :outer("31_1302969588.527")
.annotate 'line', 14
    get_hll_global $P284, ["NQPMu"], "_block283" 
    .local pmc block
    set block, $P284
    .const 'Sub' $P405 = "44_1302969588.527" 
    capture_lex $P405
    $P405()
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "_block404"  :anon :subid("44_1302969588.527") :outer("31_1302969588.527")
.annotate 'line', 14
    .const 'Sub' $P421 = "39_1302969588.527" 
    capture_lex $P421
    nqp_get_sc_object $P406, "1302969587.917", 3
    .local pmc type_obj
    set type_obj, $P406
    get_how $P407, type_obj
    .const 'Sub' $P408 = "32_1302969588.527" 
    $P407."add_method"(type_obj, "CREATE", $P408)
    get_how $P409, type_obj
    .const 'Sub' $P410 = "33_1302969588.527" 
    $P409."add_method"(type_obj, "bless", $P410)
    get_how $P411, type_obj
    .const 'Sub' $P412 = "34_1302969588.527" 
    $P411."add_method"(type_obj, "BUILDALL", $P412)
    get_how $P413, type_obj
    .const 'Sub' $P414 = "36_1302969588.527" 
    $P413."add_method"(type_obj, "BUILD_MAGIC", $P414)
    get_how $P415, type_obj
    .const 'Sub' $P416 = "38_1302969588.527" 
    $P415."add_method"(type_obj, "new", $P416)
    get_how $P417, type_obj
    .const 'Sub' $P418 = "39_1302969588.527" 
    new $P419, "ResizablePMCArray"
    set_dispatchees $P418, $P419
    $P417."add_method"(type_obj, "Str", $P418)
    get_how $P420, type_obj
    .const 'Sub' $P421 = "39_1302969588.527" 
    newclosure $P424, $P421
    $P420."add_parrot_vtable_mapping"(type_obj, "get_string", $P424)
    get_how $P425, type_obj
    .const 'Sub' $P426 = "40_1302969588.527" 
    $P425."add_multi_method"(type_obj, "Str", $P426)
    get_how $P427, type_obj
    .const 'Sub' $P428 = "41_1302969588.527" 
    new $P429, "ResizablePMCArray"
    set_dispatchees $P428, $P429
    $P427."add_method"(type_obj, "ACCEPTS", $P428)
    get_how $P430, type_obj
    .const 'Sub' $P431 = "42_1302969588.527" 
    $P430."add_multi_method"(type_obj, "ACCEPTS", $P431)
    get_how $P432, type_obj
    .const 'Sub' $P433 = "43_1302969588.527" 
    $P432."add_method"(type_obj, "isa", $P433)
    get_how $P434, type_obj
    $P435 = $P434."compose"(type_obj)
    .return ($P435)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "Str" :instanceof("DispatcherSub") :subid("39_1302969588.527") :outer("44_1302969588.527")
    .param pmc param_422
.annotate 'line', 14
    .lex "self", param_422
    multi_dispatch_over_lexical_candidates $P423
    .return ($P423)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "CREATE"  :subid("32_1302969588.527") :outer("31_1302969588.527")
    .param pmc param_287
.annotate 'line', 15
    .lex "self", param_287
.annotate 'line', 16
    find_lex $P288, "self"
    repr_instance_of $P289, $P288
.annotate 'line', 15
    .return ($P289)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "bless"  :subid("33_1302969588.527") :outer("31_1302969588.527")
    .param pmc param_291
    .param pmc param_293 :slurpy :named
.annotate 'line', 20
    .lex "$self", param_291
    find_lex $P292, "$self"
    .lex "self", $P292
    .lex "%attributes", param_293
.annotate 'line', 21
    new $P294, "Undef"
    .lex "$instance", $P294
    find_lex $P295, "self"
    $P296 = $P295."CREATE"()
    store_lex "$instance", $P296
.annotate 'line', 22
    find_lex $P297, "$instance"
    find_lex $P298, "%attributes"
    $P297."BUILDALL"($P298 :flat)
    find_lex $P299, "$instance"
.annotate 'line', 20
    .return ($P299)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.include "except_types.pasm"
.sub "BUILDALL"  :subid("34_1302969588.527") :outer("31_1302969588.527")
    .param pmc param_301
    .param pmc param_303 :slurpy :named
.annotate 'line', 26
    .const 'Sub' $P312 = "35_1302969588.527" 
    capture_lex $P312
    .lex "$self", param_301
    find_lex $P302, "$self"
    .lex "self", $P302
    .lex "%attributes", param_303
.annotate 'line', 27
    find_lex $P305, "$self"
    get_how $P306, $P305
    find_lex $P307, "$self"
    $P308 = $P306."parents"($P307)
    defined $I309, $P308
    unless $I309, for_undef_60
    iter $P304, $P308
    new $P319, 'ExceptionHandler'
    set_label $P319, loop318_handler
    $P319."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P319
  loop318_test:
    unless $P304, loop318_done
    shift $P310, $P304
  loop318_redo:
    .const 'Sub' $P312 = "35_1302969588.527" 
    capture_lex $P312
    $P312($P310)
  loop318_next:
    goto loop318_test
  loop318_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P320, exception, 'type'
    eq $P320, .CONTROL_LOOP_NEXT, loop318_next
    eq $P320, .CONTROL_LOOP_REDO, loop318_redo
  loop318_done:
    pop_eh 
  for_undef_60:
.annotate 'line', 26
    .return ($P304)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "_block311"  :anon :subid("35_1302969588.527") :outer("34_1302969588.527")
    .param pmc param_313
.annotate 'line', 27
    .lex "$class", param_313
.annotate 'line', 28
    find_lex $P314, "$self"
    find_lex $P315, "$class"
    find_lex $P316, "%attributes"
    $P317 = $P314."BUILD_MAGIC"($P315, $P316 :flat)
.annotate 'line', 27
    .return ($P317)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.include "except_types.pasm"
.sub "BUILD_MAGIC"  :subid("36_1302969588.527") :outer("31_1302969588.527")
    .param pmc param_322
    .param pmc param_324
    .param pmc param_325 :slurpy :named
.annotate 'line', 32
    .const 'Sub' $P334 = "37_1302969588.527" 
    capture_lex $P334
    .lex "$self", param_322
    find_lex $P323, "$self"
    .lex "self", $P323
    .lex "$type", param_324
    .lex "%attributes", param_325
.annotate 'line', 33
    find_lex $P327, "$type"
    get_how $P328, $P327
    find_lex $P329, "$type"
    $P330 = $P328."attributes"($P329, 1 :named("local"))
    defined $I331, $P330
    unless $I331, for_undef_61
    iter $P326, $P330
    new $P357, 'ExceptionHandler'
    set_label $P357, loop356_handler
    $P357."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P357
  loop356_test:
    unless $P326, loop356_done
    shift $P332, $P326
  loop356_redo:
    .const 'Sub' $P334 = "37_1302969588.527" 
    capture_lex $P334
    $P334($P332)
  loop356_next:
    goto loop356_test
  loop356_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P358, exception, 'type'
    eq $P358, .CONTROL_LOOP_NEXT, loop356_next
    eq $P358, .CONTROL_LOOP_REDO, loop356_redo
  loop356_done:
    pop_eh 
  for_undef_61:
.annotate 'line', 32
    .return ($P326)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "_block333"  :anon :subid("37_1302969588.527") :outer("36_1302969588.527")
    .param pmc param_337
.annotate 'line', 34
    new $P335, "Undef"
    .lex "$name", $P335
.annotate 'line', 35
    new $P336, "Undef"
    .lex "$shortname", $P336
    .lex "$_", param_337
.annotate 'line', 34
    find_lex $P338, "$_"
    $P339 = $P338."name"()
    store_lex "$name", $P339
.annotate 'line', 35
    find_lex $P340, "$name"
    set $S341, $P340
    substr $S342, $S341, 2
    new $P343, 'String'
    set $P343, $S342
    store_lex "$shortname", $P343
.annotate 'line', 36
    find_lex $P347, "$shortname"
    find_lex $P346, "%attributes"
    exists $I348, $P346[$P347]
    if $I348, if_345
    new $P344, 'Integer'
    set $P344, $I348
    goto if_345_end
  if_345:
.annotate 'line', 37
    find_lex $P349, "$self"
    find_lex $P350, "$type"
    find_lex $P351, "$name"
    set $S352, $P351
    find_lex $P353, "$shortname"
    find_lex $P354, "%attributes"
    unless_null $P354, vivify_62
    $P354 = root_new ['parrot';'Hash']
  vivify_62:
    set $P355, $P354[$P353]
    unless_null $P355, vivify_63
    new $P355, "Undef"
  vivify_63:
    setattribute $P349, $P350, $S352, $P355
  if_345_end:
.annotate 'line', 33
    .return ($P344)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "new"  :subid("38_1302969588.527") :outer("31_1302969588.527")
    .param pmc param_360
    .param pmc param_361 :slurpy :named
.annotate 'line', 42
    .lex "self", param_360
    .lex "%attributes", param_361
.annotate 'line', 43
    find_lex $P362, "self"
    find_lex $P363, "%attributes"
    $P364 = $P362."bless"($P363 :flat)
.annotate 'line', 42
    .return ($P364)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "Str" :instanceof("DispatcherSub") :subid("39_1302969588.527") :outer("31_1302969588.527")
    .param pmc param_366
.annotate 'line', 42
    .lex "self", param_366
    multi_dispatch_over_lexical_candidates $P367
    .return ($P367)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "Str"  :subid("40_1302969588.527") :outer("31_1302969588.527")
    .param pmc param_369
.annotate 'line', 47
    .lex "$self", param_369
    find_lex $P370, "$self"
    .lex "self", $P370
.annotate 'line', 48
    find_lex $P371, "self"
    get_how $P372, $P371
    find_lex $P373, "self"
    $P374 = $P372."name"($P373)
    concat $P375, $P374, "()"
.annotate 'line', 47
    .return ($P375)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "" :load :init :subid("post64") :outer("40_1302969588.527")
.annotate 'line', 47
    .const 'Sub' $P368 = "40_1302969588.527" 
    .local pmc block
    set block, $P368
    get_hll_global $P376, "Mu"
    new $P377, "ResizablePMCArray"
    push $P377, $P376
    new $P378, "ResizablePMCArray"
    push $P378, 2
    set_sub_multisig block, $P377, $P378
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "ACCEPTS" :instanceof("DispatcherSub") :subid("41_1302969588.527") :outer("31_1302969588.527")
    .param pmc param_380
    .param pmc param_381
.annotate 'line', 47
    .lex "self", param_380
.annotate 'line', 51
    .lex "$topic", param_381
.annotate 'line', 47
    multi_dispatch_over_lexical_candidates $P382
    .return ($P382)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "ACCEPTS"  :subid("42_1302969588.527") :outer("31_1302969588.527")
    .param pmc param_384
    .param pmc param_386
.annotate 'line', 52
    .lex "$self", param_384
    find_lex $P385, "$self"
    .lex "self", $P385
    .lex "$topic", param_386
.annotate 'line', 53
    find_lex $P387, "$topic"
    find_lex $P388, "self"
    get_what $P389, $P388
    type_check $I390, $P387, $P389
.annotate 'line', 52
    .return ($I390)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "" :load :init :subid("post65") :outer("42_1302969588.527")
.annotate 'line', 52
    .const 'Sub' $P383 = "42_1302969588.527" 
    .local pmc block
    set block, $P383
    get_hll_global $P391, "NQPMu"
    null $P392
    new $P393, "ResizablePMCArray"
    push $P393, $P391
    push $P393, $P392
    new $P394, "ResizablePMCArray"
    push $P394, 2
    push $P394, 0
    set_sub_multisig block, $P393, $P394
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "isa"  :subid("43_1302969588.527") :outer("31_1302969588.527")
    .param pmc param_396
    .param pmc param_397
.annotate 'line', 56
    .lex "self", param_396
    .lex "$type", param_397
.annotate 'line', 57
    find_lex $P398, "self"
    get_how $P399, $P398
    find_lex $P400, "self"
    find_lex $P401, "$type"
    $P402 = $P399."isa"($P400, $P401)
.annotate 'line', 56
    .return ($P402)
.end


.HLL "nqp"

.namespace []
.sub "_block449" :load :anon :subid("45_1302969588.527")
.annotate 'line', 1
    .const 'Sub' $P451 = "10_1302969588.527" 
    $P452 = $P451()
    .return ($P452)
.end

