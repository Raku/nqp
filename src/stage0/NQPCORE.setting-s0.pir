
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1302110455.182")
.annotate 'line', 0
    get_hll_global $P281, ["NQPMu"], "_block280" 
    capture_lex $P281
    get_hll_global $P273, ["str"], "_block272" 
    capture_lex $P273
    get_hll_global $P265, ["num"], "_block264" 
    capture_lex $P265
    get_hll_global $P257, ["int"], "_block256" 
    capture_lex $P257
    .const 'Sub' $P243 = "24_1302110455.182" 
    capture_lex $P243
    .const 'Sub' $P221 = "23_1302110455.182" 
    capture_lex $P221
    .const 'Sub' $P214 = "22_1302110455.182" 
    capture_lex $P214
    .const 'Sub' $P126 = "20_1302110455.182" 
    capture_lex $P126
    .const 'Sub' $P93 = "18_1302110455.182" 
    capture_lex $P93
    .const 'Sub' $P88 = "17_1302110455.182" 
    capture_lex $P88
    .const 'Sub' $P74 = "15_1302110455.182" 
    capture_lex $P74
    .const 'Sub' $P62 = "14_1302110455.182" 
    capture_lex $P62
    .const 'Sub' $P51 = "13_1302110455.182" 
    capture_lex $P51
    .const 'Sub' $P46 = "12_1302110455.182" 
    capture_lex $P46
    .const 'Sub' $P13 = "11_1302110455.182" 
    capture_lex $P13
.annotate 'line', 73
    .const 'Sub' $P13 = "11_1302110455.182" 
    newclosure $P45, $P13
    .lex "open", $P45
.annotate 'line', 85
    .const 'Sub' $P46 = "12_1302110455.182" 
    newclosure $P50, $P46
    .lex "close", $P50
.annotate 'line', 93
    .const 'Sub' $P51 = "13_1302110455.182" 
    newclosure $P61, $P51
    .lex "slurp", $P61
.annotate 'line', 105
    .const 'Sub' $P62 = "14_1302110455.182" 
    newclosure $P73, $P62
    .lex "spew", $P73
.annotate 'line', 112
    .const 'Sub' $P74 = "15_1302110455.182" 
    newclosure $P87, $P74
    .lex "print", $P87
.annotate 'line', 119
    .const 'Sub' $P88 = "17_1302110455.182" 
    newclosure $P92, $P88
    .lex "say", $P92
.annotate 'line', 137
    .const 'Sub' $P93 = "18_1302110455.182" 
    newclosure $P125, $P93
    .lex "match", $P125
.annotate 'line', 159
    .const 'Sub' $P126 = "20_1302110455.182" 
    newclosure $P212, $P126
    .lex "subst", $P212
.annotate 'line', 185
    new $P213, "Undef"
    .lex "$test_counter", $P213
.annotate 'line', 187
    .const 'Sub' $P214 = "22_1302110455.182" 
    newclosure $P220, $P214
    .lex "plan", $P220
.annotate 'line', 191
    .const 'Sub' $P221 = "23_1302110455.182" 
    newclosure $P242, $P221
    .lex "ok", $P242
.annotate 'line', 206
    .const 'Sub' $P243 = "24_1302110455.182" 
    newclosure $P255, $P243
    .lex "skip", $P255
.annotate 'line', 7
    get_hll_global $P257, ["int"], "_block256" 
    capture_lex $P257
    $P257()
.annotate 'line', 9
    get_hll_global $P265, ["num"], "_block264" 
    capture_lex $P265
    $P265()
.annotate 'line', 11
    get_hll_global $P273, ["str"], "_block272" 
    capture_lex $P273
    $P273()
.annotate 'line', 14
    get_hll_global $P281, ["NQPMu"], "_block280" 
    capture_lex $P281
    $P281()
    find_lex $P433, "open"
    find_lex $P434, "close"
    find_lex $P435, "slurp"
    find_lex $P436, "spew"
    find_lex $P437, "print"
    find_lex $P438, "say"
    find_lex $P439, "match"
    find_lex $P440, "subst"
.annotate 'line', 185
    new $P441, "Integer"
    assign $P441, 0
    store_lex "$test_counter", $P441
    find_lex $P442, "plan"
    find_lex $P443, "ok"
    find_lex $P444, "skip"
    new $P445, "Integer"
    assign $P445, 1
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 1
    .return ()
    .const 'Sub' $P447 = "45_1302110455.182" 
    .return ($P447)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post46") :outer("10_1302110455.182")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1302110455.182" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P451, "1302110454.562"
    isnull $I452, $P451
    if $I452, if_450
    nqp_get_sc_object $P489, "1302110454.562", 0
    set_hll_global "int", $P489
    .const 'Sub' $P490 = "25_1302110455.182" 
    $P491 = $P490."get_lexinfo"()
    nqp_get_sc_object $P492, "1302110454.562", 0
    $P491."set_static_lexpad_value"("$?CLASS", $P492)
    .const 'Sub' $P493 = "25_1302110455.182" 
    $P494 = $P493."get_lexinfo"()
    $P494."finish_static_lexpad"()
    nqp_get_sc_object $P495, "1302110454.562", 1
    set_hll_global "num", $P495
    .const 'Sub' $P496 = "27_1302110455.182" 
    $P497 = $P496."get_lexinfo"()
    nqp_get_sc_object $P498, "1302110454.562", 1
    $P497."set_static_lexpad_value"("$?CLASS", $P498)
    .const 'Sub' $P499 = "27_1302110455.182" 
    $P500 = $P499."get_lexinfo"()
    $P500."finish_static_lexpad"()
    nqp_get_sc_object $P501, "1302110454.562", 2
    set_hll_global "str", $P501
    .const 'Sub' $P502 = "29_1302110455.182" 
    $P503 = $P502."get_lexinfo"()
    nqp_get_sc_object $P504, "1302110454.562", 2
    $P503."set_static_lexpad_value"("$?CLASS", $P504)
    .const 'Sub' $P505 = "29_1302110455.182" 
    $P506 = $P505."get_lexinfo"()
    $P506."finish_static_lexpad"()
    nqp_get_sc_object $P507, "1302110454.562", 3
    set_hll_global "NQPMu", $P507
    .const 'Sub' $P508 = "31_1302110455.182" 
    $P509 = $P508."get_lexinfo"()
    nqp_get_sc_object $P510, "1302110454.562", 3
    $P509."set_static_lexpad_value"("$?CLASS", $P510)
    .const 'Sub' $P511 = "31_1302110455.182" 
    $P512 = $P511."get_lexinfo"()
    $P512."finish_static_lexpad"()
    goto if_450_end
  if_450:
    nqp_dynop_setup 
    getinterp $P453
    get_class $P454, "LexPad"
    get_class $P455, "NQPLexPad"
    $P453."hll_map"($P454, $P455)
    load_bytecode "nqpmo.pbc"
    nqp_create_sc $P456, "1302110454.562"
    .local pmc cur_sc
    set cur_sc, $P456
    get_hll_global $P457, "NQPNativeHOW"
    $P458 = $P457."new_type"("int" :named("name"), "P6int" :named("repr"))
    nqp_set_sc_for_object $P458, cur_sc
    nqp_set_sc_object "1302110454.562", 0, $P458
    nqp_get_sc_object $P459, "1302110454.562", 0
    set_hll_global "int", $P459
    .const 'Sub' $P460 = "25_1302110455.182" 
    $P461 = $P460."get_lexinfo"()
    nqp_get_sc_object $P462, "1302110454.562", 0
    $P461."set_static_lexpad_value"("$?CLASS", $P462)
    .const 'Sub' $P463 = "25_1302110455.182" 
    $P464 = $P463."get_lexinfo"()
    $P464."finish_static_lexpad"()
    get_hll_global $P465, "NQPNativeHOW"
    $P466 = $P465."new_type"("num" :named("name"), "P6num" :named("repr"))
    nqp_set_sc_for_object $P466, cur_sc
    nqp_set_sc_object "1302110454.562", 1, $P466
    nqp_get_sc_object $P467, "1302110454.562", 1
    set_hll_global "num", $P467
    .const 'Sub' $P468 = "27_1302110455.182" 
    $P469 = $P468."get_lexinfo"()
    nqp_get_sc_object $P470, "1302110454.562", 1
    $P469."set_static_lexpad_value"("$?CLASS", $P470)
    .const 'Sub' $P471 = "27_1302110455.182" 
    $P472 = $P471."get_lexinfo"()
    $P472."finish_static_lexpad"()
    get_hll_global $P473, "NQPNativeHOW"
    $P474 = $P473."new_type"("str" :named("name"), "P6str" :named("repr"))
    nqp_set_sc_for_object $P474, cur_sc
    nqp_set_sc_object "1302110454.562", 2, $P474
    nqp_get_sc_object $P475, "1302110454.562", 2
    set_hll_global "str", $P475
    .const 'Sub' $P476 = "29_1302110455.182" 
    $P477 = $P476."get_lexinfo"()
    nqp_get_sc_object $P478, "1302110454.562", 2
    $P477."set_static_lexpad_value"("$?CLASS", $P478)
    .const 'Sub' $P479 = "29_1302110455.182" 
    $P480 = $P479."get_lexinfo"()
    $P480."finish_static_lexpad"()
    get_hll_global $P481, "NQPClassHOW"
    $P482 = $P481."new_type"("NQPMu" :named("name"))
    nqp_set_sc_for_object $P482, cur_sc
    nqp_set_sc_object "1302110454.562", 3, $P482
    nqp_get_sc_object $P483, "1302110454.562", 3
    set_hll_global "NQPMu", $P483
    .const 'Sub' $P484 = "31_1302110455.182" 
    $P485 = $P484."get_lexinfo"()
    nqp_get_sc_object $P486, "1302110454.562", 3
    $P485."set_static_lexpad_value"("$?CLASS", $P486)
    .const 'Sub' $P487 = "31_1302110455.182" 
    $P488 = $P487."get_lexinfo"()
    $P488."finish_static_lexpad"()
  if_450_end:
.end


.HLL "nqp"

.namespace []
.sub "open"  :subid("11_1302110455.182") :outer("10_1302110455.182")
    .param pmc param_14
    .param pmc param_15 :optional :named("r")
    .param int has_param_15 :opt_flag
    .param pmc param_17 :optional :named("w")
    .param int has_param_17 :opt_flag
    .param pmc param_19 :optional :named("a")
    .param int has_param_19 :opt_flag
    .param pmc param_21 :optional :named("bin")
    .param int has_param_21 :opt_flag
.annotate 'line', 73
    .lex "$filename", param_14
    if has_param_15, optparam_47
    new $P16, "Undef"
    set param_15, $P16
  optparam_47:
    .lex "$r", param_15
    if has_param_17, optparam_48
    new $P18, "Undef"
    set param_17, $P18
  optparam_48:
    .lex "$w", param_17
    if has_param_19, optparam_49
    new $P20, "Undef"
    set param_19, $P20
  optparam_49:
    .lex "$a", param_19
    if has_param_21, optparam_50
    new $P22, "Undef"
    set param_21, $P22
  optparam_50:
    .lex "$bin", param_21
.annotate 'line', 74
    new $P23, "Undef"
    .lex "$mode", $P23
.annotate 'line', 75
    new $P24, "Undef"
    .lex "$handle", $P24
.annotate 'line', 74
    find_lex $P27, "$w"
    if $P27, if_26
    find_lex $P31, "$a"
    if $P31, if_30
    new $P33, "String"
    assign $P33, "r"
    set $P29, $P33
    goto if_30_end
  if_30:
    new $P32, "String"
    assign $P32, "wa"
    set $P29, $P32
  if_30_end:
    set $P25, $P29
    goto if_26_end
  if_26:
    new $P28, "String"
    assign $P28, "w"
    set $P25, $P28
  if_26_end:
    store_lex "$mode", $P25
.annotate 'line', 75
    new $P34, "FileHandle"
    store_lex "$handle", $P34
.annotate 'line', 76
    find_lex $P35, "$handle"
    find_lex $P36, "$filename"
    find_lex $P37, "$mode"
    $P35."open"($P36, $P37)
.annotate 'line', 77
    find_lex $P38, "$handle"
    find_lex $P41, "$bin"
    if $P41, if_40
    new $P43, "String"
    assign $P43, "utf8"
    set $P39, $P43
    goto if_40_end
  if_40:
    new $P42, "String"
    assign $P42, "binary"
    set $P39, $P42
  if_40_end:
    $P38."encoding"($P39)
    find_lex $P44, "$handle"
.annotate 'line', 73
    .return ($P44)
.end


.HLL "nqp"

.namespace []
.sub "close"  :subid("12_1302110455.182") :outer("10_1302110455.182")
    .param pmc param_47
.annotate 'line', 85
    .lex "$handle", param_47
.annotate 'line', 86
    find_lex $P48, "$handle"
    $P49 = $P48."close"()
.annotate 'line', 85
    .return ($P49)
.end


.HLL "nqp"

.namespace []
.sub "slurp"  :subid("13_1302110455.182") :outer("10_1302110455.182")
    .param pmc param_52
.annotate 'line', 93
    .lex "$filename", param_52
.annotate 'line', 94
    new $P53, "Undef"
    .lex "$handle", $P53
.annotate 'line', 95
    new $P54, "Undef"
    .lex "$contents", $P54
.annotate 'line', 94
    find_lex $P55, "$filename"
    $P56 = "open"($P55, 1 :named("r"))
    store_lex "$handle", $P56
.annotate 'line', 95
    find_lex $P57, "$handle"
    $P58 = $P57."readall"()
    store_lex "$contents", $P58
.annotate 'line', 96
    find_lex $P59, "$handle"
    $P59."close"()
    find_lex $P60, "$contents"
.annotate 'line', 93
    .return ($P60)
.end


.HLL "nqp"

.namespace []
.sub "spew"  :subid("14_1302110455.182") :outer("10_1302110455.182")
    .param pmc param_63
    .param pmc param_64
.annotate 'line', 105
    .lex "$filename", param_63
    .lex "$contents", param_64
.annotate 'line', 106
    new $P65, "Undef"
    .lex "$handle", $P65
    new $P66, "FileHandle"
    store_lex "$handle", $P66
.annotate 'line', 107
    find_lex $P67, "$handle"
    find_lex $P68, "$filename"
    $P67."open"($P68, "w")
.annotate 'line', 108
    find_lex $P69, "$handle"
    find_lex $P70, "$contents"
    $P69."print"($P70)
.annotate 'line', 109
    find_lex $P71, "$handle"
    $P72 = $P71."close"()
.annotate 'line', 105
    .return ($P72)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "print"  :subid("15_1302110455.182") :outer("10_1302110455.182")
    .param pmc param_75 :slurpy
.annotate 'line', 112
    .const 'Sub' $P81 = "16_1302110455.182" 
    capture_lex $P81
    .lex "@args", param_75
.annotate 'line', 113
    find_lex $P77, "@args"
    defined $I78, $P77
    unless $I78, for_undef_51
    iter $P76, $P77
    new $P85, 'ExceptionHandler'
    set_label $P85, loop84_handler
    $P85."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P85
  loop84_test:
    unless $P76, loop84_done
    shift $P79, $P76
  loop84_redo:
    .const 'Sub' $P81 = "16_1302110455.182" 
    capture_lex $P81
    $P81($P79)
  loop84_next:
    goto loop84_test
  loop84_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P86, exception, 'type'
    eq $P86, .CONTROL_LOOP_NEXT, loop84_next
    eq $P86, .CONTROL_LOOP_REDO, loop84_redo
  loop84_done:
    pop_eh 
  for_undef_51:
.annotate 'line', 112
    .return (1)
.end


.HLL "nqp"

.namespace []
.sub "_block80"  :anon :subid("16_1302110455.182") :outer("15_1302110455.182")
    .param pmc param_82
.annotate 'line', 113
    .lex "$_", param_82
.annotate 'line', 114
    find_lex $P83, "$_"
    print $P83
.annotate 'line', 113
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "say"  :subid("17_1302110455.182") :outer("10_1302110455.182")
    .param pmc param_89 :slurpy
.annotate 'line', 119
    .lex "@args", param_89
.annotate 'line', 120
    find_lex $P90, "@args"
    $P91 = "print"($P90 :flat, "\n")
.annotate 'line', 119
    .return ($P91)
.end


.HLL "nqp"

.namespace []
.sub "match"  :subid("18_1302110455.182") :outer("10_1302110455.182")
    .param pmc param_94
    .param pmc param_95
    .param pmc param_96 :optional :named("global")
    .param int has_param_96 :opt_flag
.annotate 'line', 137
    .const 'Sub' $P106 = "19_1302110455.182" 
    capture_lex $P106
    .lex "$text", param_94
    .lex "$regex", param_95
    if has_param_96, optparam_52
    new $P97, "Undef"
    set param_96, $P97
  optparam_52:
    .lex "$global", param_96
.annotate 'line', 138
    new $P98, "Undef"
    .lex "$match", $P98
    find_lex $P99, "$regex"
    find_lex $P100, "$text"
    $P101 = $P99."ACCEPTS"($P100)
    store_lex "$match", $P101
.annotate 'line', 139
    find_lex $P104, "$global"
    if $P104, if_103
.annotate 'line', 147
    find_lex $P124, "$match"
    set $P102, $P124
.annotate 'line', 139
    goto if_103_end
  if_103:
    .const 'Sub' $P106 = "19_1302110455.182" 
    capture_lex $P106
    $P123 = $P106()
    set $P102, $P123
  if_103_end:
.annotate 'line', 137
    .return ($P102)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "_block105"  :anon :subid("19_1302110455.182") :outer("18_1302110455.182")
.annotate 'line', 140
    $P107 = root_new ['parrot';'ResizablePMCArray']
    .lex "@matches", $P107
.annotate 'line', 139
    find_lex $P108, "@matches"
.annotate 'line', 141
    new $P120, 'ExceptionHandler'
    set_label $P120, loop119_handler
    $P120."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P120
  loop119_test:
    find_lex $P109, "$match"
    unless $P109, loop119_done
  loop119_redo:
.annotate 'line', 142
    find_lex $P110, "@matches"
    find_lex $P111, "$match"
    $P110."push"($P111)
.annotate 'line', 143
    find_lex $P112, "$match"
    $P113 = $P112."CURSOR"()
    find_lex $P114, "$text"
    find_lex $P115, "$regex"
    find_lex $P116, "$match"
    $P117 = $P116."to"()
    $P118 = $P113."parse"($P114, $P115 :named("rule"), $P117 :named("c"))
    store_lex "$match", $P118
  loop119_next:
.annotate 'line', 141
    goto loop119_test
  loop119_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P121, exception, 'type'
    eq $P121, .CONTROL_LOOP_NEXT, loop119_next
    eq $P121, .CONTROL_LOOP_REDO, loop119_redo
  loop119_done:
    pop_eh 
    find_lex $P122, "@matches"
.annotate 'line', 139
    .return ($P122)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "subst"  :subid("20_1302110455.182") :outer("10_1302110455.182")
    .param pmc param_127
    .param pmc param_128
    .param pmc param_129
    .param pmc param_130 :optional :named("global")
    .param int has_param_130 :opt_flag
.annotate 'line', 159
    .const 'Sub' $P157 = "21_1302110455.182" 
    capture_lex $P157
    .lex "$text", param_127
    .lex "$regex", param_128
    .lex "$repl", param_129
    if has_param_130, optparam_53
    new $P131, "Undef"
    set param_130, $P131
  optparam_53:
    .lex "$global", param_130
.annotate 'line', 160
    $P132 = root_new ['parrot';'ResizablePMCArray']
    .lex "@matches", $P132
.annotate 'line', 162
    new $P133, "Undef"
    .lex "$is_code", $P133
.annotate 'line', 163
    new $P134, "Undef"
    .lex "$offset", $P134
.annotate 'line', 164
    new $P135, "Undef"
    .lex "$result", $P135
.annotate 'line', 175
    new $P136, "Undef"
    .lex "$chars", $P136
.annotate 'line', 160
    find_lex $P139, "$global"
    if $P139, if_138
.annotate 'line', 161
    find_lex $P143, "$regex"
    find_lex $P144, "$text"
    $P145 = $P143."ACCEPTS"($P144)
    new $P146, "ResizablePMCArray"
    push $P146, $P145
.annotate 'line', 160
    set $P137, $P146
    goto if_138_end
  if_138:
    find_lex $P140, "$text"
    find_lex $P141, "$regex"
    $P142 = "match"($P140, $P141, 1 :named("global"))
    set $P137, $P142
  if_138_end:
    store_lex "@matches", $P137
.annotate 'line', 162
    find_lex $P147, "$repl"
    isa $I148, $P147, "Sub"
    new $P149, 'Integer'
    set $P149, $I148
    store_lex "$is_code", $P149
.annotate 'line', 163
    new $P150, "Integer"
    assign $P150, 0
    store_lex "$offset", $P150
.annotate 'line', 164
    new $P151, "StringBuilder"
    store_lex "$result", $P151
.annotate 'line', 166
    find_lex $P153, "@matches"
    defined $I154, $P153
    unless $I154, for_undef_54
    iter $P152, $P153
    new $P190, 'ExceptionHandler'
    set_label $P190, loop189_handler
    $P190."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P190
  loop189_test:
    unless $P152, loop189_done
    shift $P155, $P152
  loop189_redo:
    .const 'Sub' $P157 = "21_1302110455.182" 
    capture_lex $P157
    $P157($P155)
  loop189_next:
    goto loop189_test
  loop189_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P191, exception, 'type'
    eq $P191, .CONTROL_LOOP_NEXT, loop189_next
    eq $P191, .CONTROL_LOOP_REDO, loop189_redo
  loop189_done:
    pop_eh 
  for_undef_54:
.annotate 'line', 175
    find_lex $P192, "$text"
    set $S193, $P192
    length $I194, $S193
    new $P195, 'Integer'
    set $P195, $I194
    store_lex "$chars", $P195
.annotate 'line', 177
    find_lex $P197, "$chars"
    set $N198, $P197
    find_lex $P199, "$offset"
    set $N200, $P199
    isgt $I201, $N198, $N200
    unless $I201, if_196_end
.annotate 'line', 176
    find_lex $P202, "$result"
    find_lex $P203, "$text"
    set $S204, $P203
    find_lex $P205, "$offset"
    set $I206, $P205
    find_lex $P207, "$chars"
    set $I208, $P207
    substr $S209, $S204, $I206, $I208
    push $P202, $S209
  if_196_end:
.annotate 'line', 179
    find_lex $P210, "$result"
    set $S211, $P210
.annotate 'line', 159
    .return ($S211)
.end


.HLL "nqp"

.namespace []
.sub "_block156"  :anon :subid("21_1302110455.182") :outer("20_1302110455.182")
    .param pmc param_158
.annotate 'line', 166
    .lex "$match", param_158
.annotate 'line', 167
    find_lex $P161, "$match"
    if $P161, if_160
    set $P159, $P161
    goto if_160_end
  if_160:
.annotate 'line', 169
    find_lex $P163, "$match"
    $N164 = $P163."from"()
    find_lex $P165, "$offset"
    set $N166, $P165
    isgt $I167, $N164, $N166
    unless $I167, if_162_end
.annotate 'line', 168
    find_lex $P168, "$result"
    find_lex $P169, "$text"
    set $S170, $P169
    find_lex $P171, "$offset"
    set $I172, $P171
    find_lex $P173, "$match"
    $P174 = $P173."from"()
    find_lex $P175, "$offset"
    sub $P176, $P174, $P175
    set $I177, $P176
    substr $S178, $S170, $I172, $I177
    push $P168, $S178
  if_162_end:
.annotate 'line', 170
    find_lex $P179, "$result"
    find_lex $P182, "$is_code"
    if $P182, if_181
    find_lex $P186, "$repl"
    set $P180, $P186
    goto if_181_end
  if_181:
    find_lex $P183, "$repl"
    find_lex $P184, "$match"
    $P185 = $P183($P184)
    set $P180, $P185
  if_181_end:
    push $P179, $P180
.annotate 'line', 171
    find_lex $P187, "$match"
    $P188 = $P187."to"()
    store_lex "$offset", $P188
.annotate 'line', 167
    set $P159, $P188
  if_160_end:
.annotate 'line', 166
    .return ($P159)
.end


.HLL "nqp"

.namespace []
.sub "plan"  :subid("22_1302110455.182") :outer("10_1302110455.182")
    .param pmc param_215
.annotate 'line', 187
    .lex "$quantity", param_215
.annotate 'line', 188
    new $P216, 'String'
    set $P216, "1.."
    find_lex $P217, "$quantity"
    concat $P218, $P216, $P217
    $P219 = "say"($P218)
.annotate 'line', 187
    .return ($P219)
.end


.HLL "nqp"

.namespace []
.sub "ok"  :subid("23_1302110455.182") :outer("10_1302110455.182")
    .param pmc param_222
    .param pmc param_223 :optional
    .param int has_param_223 :opt_flag
.annotate 'line', 191
    .lex "$condition", param_222
    if has_param_223, optparam_55
    new $P224, "Undef"
    set param_223, $P224
  optparam_55:
    .lex "$desc", param_223
.annotate 'line', 192
    find_lex $P225, "$test_counter"
    add $P226, $P225, 1
    store_lex "$test_counter", $P226
.annotate 'line', 194
    find_lex $P228, "$condition"
    if $P228, unless_227_end
.annotate 'line', 195
    "print"("not ")
  unless_227_end:
.annotate 'line', 197
    new $P229, 'String'
    set $P229, "ok "
    find_lex $P230, "$test_counter"
    concat $P231, $P229, $P230
    "print"($P231)
.annotate 'line', 198
    find_lex $P233, "$desc"
    unless $P233, if_232_end
.annotate 'line', 199
    new $P234, 'String'
    set $P234, " - "
    find_lex $P235, "$desc"
    concat $P236, $P234, $P235
    "print"($P236)
  if_232_end:
.annotate 'line', 201
    "print"("\n")
.annotate 'line', 203
    find_lex $P239, "$condition"
    if $P239, if_238
    new $P241, "Integer"
    assign $P241, 0
    set $P237, $P241
    goto if_238_end
  if_238:
    new $P240, "Integer"
    assign $P240, 1
    set $P237, $P240
  if_238_end:
.annotate 'line', 191
    .return ($P237)
.end


.HLL "nqp"

.namespace []
.sub "skip"  :subid("24_1302110455.182") :outer("10_1302110455.182")
    .param pmc param_244
.annotate 'line', 206
    .lex "$desc", param_244
.annotate 'line', 207
    find_lex $P245, "$test_counter"
    add $P246, $P245, 1
    store_lex "$test_counter", $P246
.annotate 'line', 208
    new $P247, 'String'
    set $P247, "ok "
    find_lex $P248, "$test_counter"
    concat $P249, $P247, $P248
    concat $P250, $P249, " # SKIP "
    find_lex $P251, "$desc"
    concat $P252, $P250, $P251
    concat $P253, $P252, "\n"
    $P254 = "say"($P253)
.annotate 'line', 206
    .return ($P254)
.end


.HLL "nqp"

.namespace ["int"]
.sub "_block256"  :subid("25_1302110455.182") :outer("10_1302110455.182")
.annotate 'line', 7
    .const 'Sub' $P260 = "26_1302110455.182" 
    capture_lex $P260
    .lex "$?CLASS", $P258
    .return ()
.end


.HLL "nqp"

.namespace ["int"]
.sub "" :load :init :subid("post56") :outer("25_1302110455.182")
.annotate 'line', 7
    get_hll_global $P257, ["int"], "_block256" 
    .local pmc block
    set block, $P257
    .const 'Sub' $P260 = "26_1302110455.182" 
    capture_lex $P260
    $P260()
.end


.HLL "nqp"

.namespace ["int"]
.sub "_block259"  :anon :subid("26_1302110455.182") :outer("25_1302110455.182")
.annotate 'line', 7
    nqp_get_sc_object $P261, "1302110454.562", 0
    .local pmc type_obj
    set type_obj, $P261
    get_how $P262, type_obj
    $P263 = $P262."compose"(type_obj)
    .return ($P263)
.end


.HLL "nqp"

.namespace ["num"]
.sub "_block264"  :subid("27_1302110455.182") :outer("10_1302110455.182")
.annotate 'line', 9
    .const 'Sub' $P268 = "28_1302110455.182" 
    capture_lex $P268
    .lex "$?CLASS", $P266
    .return ()
.end


.HLL "nqp"

.namespace ["num"]
.sub "" :load :init :subid("post57") :outer("27_1302110455.182")
.annotate 'line', 9
    get_hll_global $P265, ["num"], "_block264" 
    .local pmc block
    set block, $P265
    .const 'Sub' $P268 = "28_1302110455.182" 
    capture_lex $P268
    $P268()
.end


.HLL "nqp"

.namespace ["num"]
.sub "_block267"  :anon :subid("28_1302110455.182") :outer("27_1302110455.182")
.annotate 'line', 9
    nqp_get_sc_object $P269, "1302110454.562", 1
    .local pmc type_obj
    set type_obj, $P269
    get_how $P270, type_obj
    $P271 = $P270."compose"(type_obj)
    .return ($P271)
.end


.HLL "nqp"

.namespace ["str"]
.sub "_block272"  :subid("29_1302110455.182") :outer("10_1302110455.182")
.annotate 'line', 11
    .const 'Sub' $P276 = "30_1302110455.182" 
    capture_lex $P276
    .lex "$?CLASS", $P274
    .return ()
.end


.HLL "nqp"

.namespace ["str"]
.sub "" :load :init :subid("post58") :outer("29_1302110455.182")
.annotate 'line', 11
    get_hll_global $P273, ["str"], "_block272" 
    .local pmc block
    set block, $P273
    .const 'Sub' $P276 = "30_1302110455.182" 
    capture_lex $P276
    $P276()
.end


.HLL "nqp"

.namespace ["str"]
.sub "_block275"  :anon :subid("30_1302110455.182") :outer("29_1302110455.182")
.annotate 'line', 11
    nqp_get_sc_object $P277, "1302110454.562", 2
    .local pmc type_obj
    set type_obj, $P277
    get_how $P278, type_obj
    $P279 = $P278."compose"(type_obj)
    .return ($P279)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "_block280"  :subid("31_1302110455.182") :outer("10_1302110455.182")
.annotate 'line', 14
    .const 'Sub' $P402 = "44_1302110455.182" 
    capture_lex $P402
    .const 'Sub' $P392 = "43_1302110455.182" 
    capture_lex $P392
    .const 'Sub' $P380 = "42_1302110455.182" 
    capture_lex $P380
    .const 'Sub' $P376 = "41_1302110455.182" 
    capture_lex $P376
    .const 'Sub' $P365 = "40_1302110455.182" 
    capture_lex $P365
    .const 'Sub' $P362 = "39_1302110455.182" 
    capture_lex $P362
    .const 'Sub' $P356 = "38_1302110455.182" 
    capture_lex $P356
    .const 'Sub' $P318 = "36_1302110455.182" 
    capture_lex $P318
    .const 'Sub' $P297 = "34_1302110455.182" 
    capture_lex $P297
    .const 'Sub' $P287 = "33_1302110455.182" 
    capture_lex $P287
    .const 'Sub' $P283 = "32_1302110455.182" 
    capture_lex $P283
    .lex "$?CLASS", $P282
.annotate 'line', 56
    .const 'Sub' $P392 = "43_1302110455.182" 
    newclosure $P400, $P392
.annotate 'line', 14
    .return ($P400)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "" :load :init :subid("post59") :outer("31_1302110455.182")
.annotate 'line', 14
    get_hll_global $P281, ["NQPMu"], "_block280" 
    .local pmc block
    set block, $P281
    .const 'Sub' $P402 = "44_1302110455.182" 
    capture_lex $P402
    $P402()
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "_block401"  :anon :subid("44_1302110455.182") :outer("31_1302110455.182")
.annotate 'line', 14
    .const 'Sub' $P418 = "39_1302110455.182" 
    capture_lex $P418
    nqp_get_sc_object $P403, "1302110454.562", 3
    .local pmc type_obj
    set type_obj, $P403
    get_how $P404, type_obj
    .const 'Sub' $P405 = "32_1302110455.182" 
    $P404."add_method"(type_obj, "CREATE", $P405)
    get_how $P406, type_obj
    .const 'Sub' $P407 = "33_1302110455.182" 
    $P406."add_method"(type_obj, "bless", $P407)
    get_how $P408, type_obj
    .const 'Sub' $P409 = "34_1302110455.182" 
    $P408."add_method"(type_obj, "BUILDALL", $P409)
    get_how $P410, type_obj
    .const 'Sub' $P411 = "36_1302110455.182" 
    $P410."add_method"(type_obj, "BUILD_MAGIC", $P411)
    get_how $P412, type_obj
    .const 'Sub' $P413 = "38_1302110455.182" 
    $P412."add_method"(type_obj, "new", $P413)
    get_how $P414, type_obj
    .const 'Sub' $P415 = "39_1302110455.182" 
    new $P416, "ResizablePMCArray"
    set_dispatchees $P415, $P416
    $P414."add_method"(type_obj, "Str", $P415)
    get_how $P417, type_obj
    .const 'Sub' $P418 = "39_1302110455.182" 
    newclosure $P421, $P418
    $P417."add_parrot_vtable_mapping"(type_obj, "get_string", $P421)
    get_how $P422, type_obj
    .const 'Sub' $P423 = "40_1302110455.182" 
    $P422."add_multi_method"(type_obj, "Str", $P423)
    get_how $P424, type_obj
    .const 'Sub' $P425 = "41_1302110455.182" 
    new $P426, "ResizablePMCArray"
    set_dispatchees $P425, $P426
    $P424."add_method"(type_obj, "ACCEPTS", $P425)
    get_how $P427, type_obj
    .const 'Sub' $P428 = "42_1302110455.182" 
    $P427."add_multi_method"(type_obj, "ACCEPTS", $P428)
    get_how $P429, type_obj
    .const 'Sub' $P430 = "43_1302110455.182" 
    $P429."add_method"(type_obj, "isa", $P430)
    get_how $P431, type_obj
    $P432 = $P431."compose"(type_obj)
    .return ($P432)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "Str" :instanceof("DispatcherSub") :subid("39_1302110455.182") :outer("44_1302110455.182")
    .param pmc param_419
.annotate 'line', 14
    .lex "self", param_419
    multi_dispatch_over_lexical_candidates $P420
    .return ($P420)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "CREATE"  :subid("32_1302110455.182") :outer("31_1302110455.182")
    .param pmc param_284
.annotate 'line', 15
    .lex "self", param_284
.annotate 'line', 16
    find_lex $P285, "self"
    repr_instance_of $P286, $P285
.annotate 'line', 15
    .return ($P286)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "bless"  :subid("33_1302110455.182") :outer("31_1302110455.182")
    .param pmc param_288
    .param pmc param_290 :slurpy :named
.annotate 'line', 20
    .lex "$self", param_288
    find_lex $P289, "$self"
    .lex "self", $P289
    .lex "%attributes", param_290
.annotate 'line', 21
    new $P291, "Undef"
    .lex "$instance", $P291
    find_lex $P292, "self"
    $P293 = $P292."CREATE"()
    store_lex "$instance", $P293
.annotate 'line', 22
    find_lex $P294, "$instance"
    find_lex $P295, "%attributes"
    $P294."BUILDALL"($P295 :flat)
    find_lex $P296, "$instance"
.annotate 'line', 20
    .return ($P296)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.include "except_types.pasm"
.sub "BUILDALL"  :subid("34_1302110455.182") :outer("31_1302110455.182")
    .param pmc param_298
    .param pmc param_300 :slurpy :named
.annotate 'line', 26
    .const 'Sub' $P309 = "35_1302110455.182" 
    capture_lex $P309
    .lex "$self", param_298
    find_lex $P299, "$self"
    .lex "self", $P299
    .lex "%attributes", param_300
.annotate 'line', 27
    find_lex $P302, "$self"
    get_how $P303, $P302
    find_lex $P304, "$self"
    $P305 = $P303."parents"($P304)
    defined $I306, $P305
    unless $I306, for_undef_60
    iter $P301, $P305
    new $P316, 'ExceptionHandler'
    set_label $P316, loop315_handler
    $P316."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P316
  loop315_test:
    unless $P301, loop315_done
    shift $P307, $P301
  loop315_redo:
    .const 'Sub' $P309 = "35_1302110455.182" 
    capture_lex $P309
    $P309($P307)
  loop315_next:
    goto loop315_test
  loop315_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P317, exception, 'type'
    eq $P317, .CONTROL_LOOP_NEXT, loop315_next
    eq $P317, .CONTROL_LOOP_REDO, loop315_redo
  loop315_done:
    pop_eh 
  for_undef_60:
.annotate 'line', 26
    .return ($P301)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "_block308"  :anon :subid("35_1302110455.182") :outer("34_1302110455.182")
    .param pmc param_310
.annotate 'line', 27
    .lex "$class", param_310
.annotate 'line', 28
    find_lex $P311, "$self"
    find_lex $P312, "$class"
    find_lex $P313, "%attributes"
    $P314 = $P311."BUILD_MAGIC"($P312, $P313 :flat)
.annotate 'line', 27
    .return ($P314)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.include "except_types.pasm"
.sub "BUILD_MAGIC"  :subid("36_1302110455.182") :outer("31_1302110455.182")
    .param pmc param_319
    .param pmc param_321
    .param pmc param_322 :slurpy :named
.annotate 'line', 32
    .const 'Sub' $P331 = "37_1302110455.182" 
    capture_lex $P331
    .lex "$self", param_319
    find_lex $P320, "$self"
    .lex "self", $P320
    .lex "$type", param_321
    .lex "%attributes", param_322
.annotate 'line', 33
    find_lex $P324, "$type"
    get_how $P325, $P324
    find_lex $P326, "$type"
    $P327 = $P325."attributes"($P326, 1 :named("local"))
    defined $I328, $P327
    unless $I328, for_undef_61
    iter $P323, $P327
    new $P354, 'ExceptionHandler'
    set_label $P354, loop353_handler
    $P354."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P354
  loop353_test:
    unless $P323, loop353_done
    shift $P329, $P323
  loop353_redo:
    .const 'Sub' $P331 = "37_1302110455.182" 
    capture_lex $P331
    $P331($P329)
  loop353_next:
    goto loop353_test
  loop353_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P355, exception, 'type'
    eq $P355, .CONTROL_LOOP_NEXT, loop353_next
    eq $P355, .CONTROL_LOOP_REDO, loop353_redo
  loop353_done:
    pop_eh 
  for_undef_61:
.annotate 'line', 32
    .return ($P323)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "_block330"  :anon :subid("37_1302110455.182") :outer("36_1302110455.182")
    .param pmc param_334
.annotate 'line', 34
    new $P332, "Undef"
    .lex "$name", $P332
.annotate 'line', 35
    new $P333, "Undef"
    .lex "$shortname", $P333
    .lex "$_", param_334
.annotate 'line', 34
    find_lex $P335, "$_"
    $P336 = $P335."name"()
    store_lex "$name", $P336
.annotate 'line', 35
    find_lex $P337, "$name"
    set $S338, $P337
    substr $S339, $S338, 2
    new $P340, 'String'
    set $P340, $S339
    store_lex "$shortname", $P340
.annotate 'line', 36
    find_lex $P344, "$shortname"
    find_lex $P343, "%attributes"
    exists $I345, $P343[$P344]
    if $I345, if_342
    new $P341, 'Integer'
    set $P341, $I345
    goto if_342_end
  if_342:
.annotate 'line', 37
    find_lex $P346, "$self"
    find_lex $P347, "$type"
    find_lex $P348, "$name"
    set $S349, $P348
    find_lex $P350, "$shortname"
    find_lex $P351, "%attributes"
    unless_null $P351, vivify_62
    $P351 = root_new ['parrot';'Hash']
  vivify_62:
    set $P352, $P351[$P350]
    unless_null $P352, vivify_63
    new $P352, "Undef"
  vivify_63:
    setattribute $P346, $P347, $S349, $P352
  if_342_end:
.annotate 'line', 33
    .return ($P341)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "new"  :subid("38_1302110455.182") :outer("31_1302110455.182")
    .param pmc param_357
    .param pmc param_358 :slurpy :named
.annotate 'line', 42
    .lex "self", param_357
    .lex "%attributes", param_358
.annotate 'line', 43
    find_lex $P359, "self"
    find_lex $P360, "%attributes"
    $P361 = $P359."bless"($P360 :flat)
.annotate 'line', 42
    .return ($P361)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "Str" :instanceof("DispatcherSub") :subid("39_1302110455.182") :outer("31_1302110455.182")
    .param pmc param_363
.annotate 'line', 42
    .lex "self", param_363
    multi_dispatch_over_lexical_candidates $P364
    .return ($P364)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "Str"  :subid("40_1302110455.182") :outer("31_1302110455.182")
    .param pmc param_366
.annotate 'line', 47
    .lex "$self", param_366
    find_lex $P367, "$self"
    .lex "self", $P367
.annotate 'line', 48
    find_lex $P368, "self"
    get_how $P369, $P368
    find_lex $P370, "self"
    $P371 = $P369."name"($P370)
    concat $P372, $P371, "()"
.annotate 'line', 47
    .return ($P372)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "" :load :init :subid("post64") :outer("40_1302110455.182")
.annotate 'line', 47
    .const 'Sub' $P365 = "40_1302110455.182" 
    .local pmc block
    set block, $P365
    get_hll_global $P373, "Mu"
    new $P374, "ResizablePMCArray"
    push $P374, $P373
    new $P375, "ResizablePMCArray"
    push $P375, 2
    set_sub_multisig block, $P374, $P375
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "ACCEPTS" :instanceof("DispatcherSub") :subid("41_1302110455.182") :outer("31_1302110455.182")
    .param pmc param_377
    .param pmc param_378
.annotate 'line', 47
    .lex "self", param_377
.annotate 'line', 51
    .lex "$topic", param_378
.annotate 'line', 47
    multi_dispatch_over_lexical_candidates $P379
    .return ($P379)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "ACCEPTS"  :subid("42_1302110455.182") :outer("31_1302110455.182")
    .param pmc param_381
    .param pmc param_383
.annotate 'line', 52
    .lex "$self", param_381
    find_lex $P382, "$self"
    .lex "self", $P382
    .lex "$topic", param_383
.annotate 'line', 53
    find_lex $P384, "$topic"
    find_lex $P385, "self"
    get_what $P386, $P385
    type_check $I387, $P384, $P386
.annotate 'line', 52
    .return ($I387)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "" :load :init :subid("post65") :outer("42_1302110455.182")
.annotate 'line', 52
    .const 'Sub' $P380 = "42_1302110455.182" 
    .local pmc block
    set block, $P380
    get_hll_global $P388, "NQPMu"
    null $P389
    new $P390, "ResizablePMCArray"
    push $P390, $P388
    push $P390, $P389
    new $P391, "ResizablePMCArray"
    push $P391, 2
    push $P391, 0
    set_sub_multisig block, $P390, $P391
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "isa"  :subid("43_1302110455.182") :outer("31_1302110455.182")
    .param pmc param_393
    .param pmc param_394
.annotate 'line', 56
    .lex "self", param_393
    .lex "$type", param_394
.annotate 'line', 57
    find_lex $P395, "self"
    get_how $P396, $P395
    find_lex $P397, "self"
    find_lex $P398, "$type"
    $P399 = $P396."isa"($P397, $P398)
.annotate 'line', 56
    .return ($P399)
.end


.HLL "nqp"

.namespace []
.sub "_block446" :load :anon :subid("45_1302110455.182")
.annotate 'line', 1
    .const 'Sub' $P448 = "10_1302110455.182" 
    $P449 = $P448()
    .return ($P449)
.end

