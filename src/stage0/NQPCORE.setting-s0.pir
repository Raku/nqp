
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1299602558.447")
.annotate 'line', 0
    get_hll_global $P226, ["NQPMu"], "_block225" 
    capture_lex $P226
    get_hll_global $P218, ["str"], "_block217" 
    capture_lex $P218
    get_hll_global $P210, ["num"], "_block209" 
    capture_lex $P210
    get_hll_global $P202, ["int"], "_block201" 
    capture_lex $P202
    .const 'Sub' $P114 = "17_1299602558.447" 
    capture_lex $P114
    .const 'Sub' $P81 = "15_1299602558.447" 
    capture_lex $P81
    .const 'Sub' $P69 = "14_1299602558.447" 
    capture_lex $P69
    .const 'Sub' $P58 = "13_1299602558.447" 
    capture_lex $P58
    .const 'Sub' $P53 = "12_1299602558.447" 
    capture_lex $P53
    .const 'Sub' $P20 = "11_1299602558.447" 
    capture_lex $P20
.annotate 'line', 1
    getinterp $P13
    get_class $P14, "LexPad"
    get_class $P15, "NQPLexPad"
    $P13."hll_map"($P14, $P15)
    get_hll_global $P16, "NQPMu"
    get_hll_global $P17, "str"
    get_hll_global $P18, "num"
    get_hll_global $P19, "int"
.annotate 'line', 73
    .const 'Sub' $P20 = "11_1299602558.447" 
    newclosure $P52, $P20
    .lex "open", $P52
.annotate 'line', 85
    .const 'Sub' $P53 = "12_1299602558.447" 
    newclosure $P57, $P53
    .lex "close", $P57
.annotate 'line', 93
    .const 'Sub' $P58 = "13_1299602558.447" 
    newclosure $P68, $P58
    .lex "slurp", $P68
.annotate 'line', 105
    .const 'Sub' $P69 = "14_1299602558.447" 
    newclosure $P80, $P69
    .lex "spew", $P80
.annotate 'line', 126
    .const 'Sub' $P81 = "15_1299602558.447" 
    newclosure $P113, $P81
    .lex "match", $P113
.annotate 'line', 148
    .const 'Sub' $P114 = "17_1299602558.447" 
    newclosure $P200, $P114
    .lex "subst", $P200
.annotate 'line', 7
    get_hll_global $P202, ["int"], "_block201" 
    capture_lex $P202
    $P202()
.annotate 'line', 9
    get_hll_global $P210, ["num"], "_block209" 
    capture_lex $P210
    $P210()
.annotate 'line', 11
    get_hll_global $P218, ["str"], "_block217" 
    capture_lex $P218
    $P218()
.annotate 'line', 14
    get_hll_global $P226, ["NQPMu"], "_block225" 
    capture_lex $P226
    $P226()
    find_lex $P378, "open"
    find_lex $P379, "close"
    find_lex $P380, "slurp"
    find_lex $P381, "spew"
    find_lex $P382, "match"
    find_lex $P383, "subst"
    new $P384, "Integer"
    assign $P384, 1
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 1
    .return ()
    .const 'Sub' $P386 = "39_1299602558.447" 
    .return ($P386)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post40") :outer("10_1299602558.447")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1299602558.447" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P390, "1299602557.938"
    isnull $I391, $P390
    if $I391, if_389
    goto if_389_end
  if_389:
    nqp_dynop_setup 
    load_bytecode "nqpmo.pbc"
    nqp_create_sc $P392, "1299602557.938"
    .local pmc cur_sc
    set cur_sc, $P392
    get_hll_global $P393, "NQPNativeHOW"
    $P394 = $P393."new_type"("int" :named("name"), "P6int" :named("repr"))
    nqp_set_sc_for_object $P394, cur_sc
    nqp_set_sc_object "1299602557.938", 0, $P394
    get_hll_global $P395, "NQPNativeHOW"
    $P396 = $P395."new_type"("num" :named("name"), "P6num" :named("repr"))
    nqp_set_sc_for_object $P396, cur_sc
    nqp_set_sc_object "1299602557.938", 1, $P396
    get_hll_global $P397, "NQPNativeHOW"
    $P398 = $P397."new_type"("str" :named("name"), "P6str" :named("repr"))
    nqp_set_sc_for_object $P398, cur_sc
    nqp_set_sc_object "1299602557.938", 2, $P398
    get_hll_global $P399, "NQPClassHOW"
    $P400 = $P399."new_type"("NQPMu" :named("name"))
    nqp_set_sc_for_object $P400, cur_sc
    nqp_set_sc_object "1299602557.938", 3, $P400
  if_389_end:
.end


.HLL "nqp"

.namespace []
.sub "open"  :subid("11_1299602558.447") :outer("10_1299602558.447")
    .param pmc param_21
    .param pmc param_22 :optional :named("r")
    .param int has_param_22 :opt_flag
    .param pmc param_24 :optional :named("w")
    .param int has_param_24 :opt_flag
    .param pmc param_26 :optional :named("a")
    .param int has_param_26 :opt_flag
    .param pmc param_28 :optional :named("bin")
    .param int has_param_28 :opt_flag
.annotate 'line', 73
    .lex "$filename", param_21
    if has_param_22, optparam_41
    new $P23, "Undef"
    set param_22, $P23
  optparam_41:
    .lex "$r", param_22
    if has_param_24, optparam_42
    new $P25, "Undef"
    set param_24, $P25
  optparam_42:
    .lex "$w", param_24
    if has_param_26, optparam_43
    new $P27, "Undef"
    set param_26, $P27
  optparam_43:
    .lex "$a", param_26
    if has_param_28, optparam_44
    new $P29, "Undef"
    set param_28, $P29
  optparam_44:
    .lex "$bin", param_28
.annotate 'line', 74
    new $P30, "Undef"
    .lex "$mode", $P30
.annotate 'line', 75
    new $P31, "Undef"
    .lex "$handle", $P31
.annotate 'line', 74
    find_lex $P34, "$w"
    if $P34, if_33
    find_lex $P38, "$a"
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
.annotate 'line', 75
    new $P41, "FileHandle"
    store_lex "$handle", $P41
.annotate 'line', 76
    find_lex $P42, "$handle"
    find_lex $P43, "$filename"
    find_lex $P44, "$mode"
    $P42."open"($P43, $P44)
.annotate 'line', 77
    find_lex $P45, "$handle"
    find_lex $P48, "$bin"
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
.annotate 'line', 73
    .return ($P51)
.end


.HLL "nqp"

.namespace []
.sub "close"  :subid("12_1299602558.447") :outer("10_1299602558.447")
    .param pmc param_54
.annotate 'line', 85
    .lex "$handle", param_54
.annotate 'line', 86
    find_lex $P55, "$handle"
    $P56 = $P55."close"()
.annotate 'line', 85
    .return ($P56)
.end


.HLL "nqp"

.namespace []
.sub "slurp"  :subid("13_1299602558.447") :outer("10_1299602558.447")
    .param pmc param_59
.annotate 'line', 93
    .lex "$filename", param_59
.annotate 'line', 94
    new $P60, "Undef"
    .lex "$handle", $P60
.annotate 'line', 95
    new $P61, "Undef"
    .lex "$contents", $P61
.annotate 'line', 94
    find_lex $P62, "$filename"
    $P63 = "open"($P62, 1 :named("r"))
    store_lex "$handle", $P63
.annotate 'line', 95
    find_lex $P64, "$handle"
    $P65 = $P64."readall"()
    store_lex "$contents", $P65
.annotate 'line', 96
    find_lex $P66, "$handle"
    $P66."close"()
    find_lex $P67, "$contents"
.annotate 'line', 93
    .return ($P67)
.end


.HLL "nqp"

.namespace []
.sub "spew"  :subid("14_1299602558.447") :outer("10_1299602558.447")
    .param pmc param_70
    .param pmc param_71
.annotate 'line', 105
    .lex "$filename", param_70
    .lex "$contents", param_71
.annotate 'line', 106
    new $P72, "Undef"
    .lex "$handle", $P72
    new $P73, "FileHandle"
    store_lex "$handle", $P73
.annotate 'line', 107
    find_lex $P74, "$handle"
    find_lex $P75, "$filename"
    $P74."open"($P75, "w")
.annotate 'line', 108
    find_lex $P76, "$handle"
    find_lex $P77, "$contents"
    $P76."print"($P77)
.annotate 'line', 109
    find_lex $P78, "$handle"
    $P79 = $P78."close"()
.annotate 'line', 105
    .return ($P79)
.end


.HLL "nqp"

.namespace []
.sub "match"  :subid("15_1299602558.447") :outer("10_1299602558.447")
    .param pmc param_82
    .param pmc param_83
    .param pmc param_84 :optional :named("global")
    .param int has_param_84 :opt_flag
.annotate 'line', 126
    .const 'Sub' $P94 = "16_1299602558.447" 
    capture_lex $P94
    .lex "$text", param_82
    .lex "$regex", param_83
    if has_param_84, optparam_45
    new $P85, "Undef"
    set param_84, $P85
  optparam_45:
    .lex "$global", param_84
.annotate 'line', 127
    new $P86, "Undef"
    .lex "$match", $P86
    find_lex $P87, "$regex"
    find_lex $P88, "$text"
    $P89 = $P87."ACCEPTS"($P88)
    store_lex "$match", $P89
.annotate 'line', 128
    find_lex $P92, "$global"
    if $P92, if_91
.annotate 'line', 136
    find_lex $P112, "$match"
    set $P90, $P112
.annotate 'line', 128
    goto if_91_end
  if_91:
    .const 'Sub' $P94 = "16_1299602558.447" 
    capture_lex $P94
    $P111 = $P94()
    set $P90, $P111
  if_91_end:
.annotate 'line', 126
    .return ($P90)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "_block93"  :anon :subid("16_1299602558.447") :outer("15_1299602558.447")
.annotate 'line', 129
    $P95 = root_new ['parrot';'ResizablePMCArray']
    .lex "@matches", $P95
.annotate 'line', 128
    find_lex $P96, "@matches"
.annotate 'line', 130
    new $P108, 'ExceptionHandler'
    set_label $P108, loop107_handler
    $P108."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P108
  loop107_test:
    find_lex $P97, "$match"
    unless $P97, loop107_done
  loop107_redo:
.annotate 'line', 131
    find_lex $P98, "@matches"
    find_lex $P99, "$match"
    $P98."push"($P99)
.annotate 'line', 132
    find_lex $P100, "$match"
    $P101 = $P100."CURSOR"()
    find_lex $P102, "$text"
    find_lex $P103, "$regex"
    find_lex $P104, "$match"
    $P105 = $P104."to"()
    $P106 = $P101."parse"($P102, $P103 :named("rule"), $P105 :named("c"))
    store_lex "$match", $P106
  loop107_next:
.annotate 'line', 130
    goto loop107_test
  loop107_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P109, exception, 'type'
    eq $P109, .CONTROL_LOOP_NEXT, loop107_next
    eq $P109, .CONTROL_LOOP_REDO, loop107_redo
  loop107_done:
    pop_eh 
    find_lex $P110, "@matches"
.annotate 'line', 128
    .return ($P110)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "subst"  :subid("17_1299602558.447") :outer("10_1299602558.447")
    .param pmc param_115
    .param pmc param_116
    .param pmc param_117
    .param pmc param_118 :optional :named("global")
    .param int has_param_118 :opt_flag
.annotate 'line', 148
    .const 'Sub' $P145 = "18_1299602558.447" 
    capture_lex $P145
    .lex "$text", param_115
    .lex "$regex", param_116
    .lex "$repl", param_117
    if has_param_118, optparam_46
    new $P119, "Undef"
    set param_118, $P119
  optparam_46:
    .lex "$global", param_118
.annotate 'line', 149
    $P120 = root_new ['parrot';'ResizablePMCArray']
    .lex "@matches", $P120
.annotate 'line', 151
    new $P121, "Undef"
    .lex "$is_code", $P121
.annotate 'line', 152
    new $P122, "Undef"
    .lex "$offset", $P122
.annotate 'line', 153
    new $P123, "Undef"
    .lex "$result", $P123
.annotate 'line', 164
    new $P124, "Undef"
    .lex "$chars", $P124
.annotate 'line', 149
    find_lex $P127, "$global"
    if $P127, if_126
.annotate 'line', 150
    find_lex $P131, "$regex"
    find_lex $P132, "$text"
    $P133 = $P131."ACCEPTS"($P132)
    new $P134, "ResizablePMCArray"
    push $P134, $P133
.annotate 'line', 149
    set $P125, $P134
    goto if_126_end
  if_126:
    find_lex $P128, "$text"
    find_lex $P129, "$regex"
    $P130 = "match"($P128, $P129, 1 :named("global"))
    set $P125, $P130
  if_126_end:
    store_lex "@matches", $P125
.annotate 'line', 151
    find_lex $P135, "$repl"
    isa $I136, $P135, "Sub"
    new $P137, 'Integer'
    set $P137, $I136
    store_lex "$is_code", $P137
.annotate 'line', 152
    new $P138, "Integer"
    assign $P138, 0
    store_lex "$offset", $P138
.annotate 'line', 153
    new $P139, "StringBuilder"
    store_lex "$result", $P139
.annotate 'line', 155
    find_lex $P141, "@matches"
    defined $I142, $P141
    unless $I142, for_undef_47
    iter $P140, $P141
    new $P178, 'ExceptionHandler'
    set_label $P178, loop177_handler
    $P178."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P178
  loop177_test:
    unless $P140, loop177_done
    shift $P143, $P140
  loop177_redo:
    .const 'Sub' $P145 = "18_1299602558.447" 
    capture_lex $P145
    $P145($P143)
  loop177_next:
    goto loop177_test
  loop177_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P179, exception, 'type'
    eq $P179, .CONTROL_LOOP_NEXT, loop177_next
    eq $P179, .CONTROL_LOOP_REDO, loop177_redo
  loop177_done:
    pop_eh 
  for_undef_47:
.annotate 'line', 164
    find_lex $P180, "$text"
    set $S181, $P180
    length $I182, $S181
    new $P183, 'Integer'
    set $P183, $I182
    store_lex "$chars", $P183
.annotate 'line', 166
    find_lex $P185, "$chars"
    set $N186, $P185
    find_lex $P187, "$offset"
    set $N188, $P187
    isgt $I189, $N186, $N188
    unless $I189, if_184_end
.annotate 'line', 165
    find_lex $P190, "$result"
    find_lex $P191, "$text"
    set $S192, $P191
    find_lex $P193, "$offset"
    set $I194, $P193
    find_lex $P195, "$chars"
    set $I196, $P195
    substr $S197, $S192, $I194, $I196
    push $P190, $S197
  if_184_end:
.annotate 'line', 168
    find_lex $P198, "$result"
    set $S199, $P198
.annotate 'line', 148
    .return ($S199)
.end


.HLL "nqp"

.namespace []
.sub "_block144"  :anon :subid("18_1299602558.447") :outer("17_1299602558.447")
    .param pmc param_146
.annotate 'line', 155
    .lex "$match", param_146
.annotate 'line', 156
    find_lex $P149, "$match"
    if $P149, if_148
    set $P147, $P149
    goto if_148_end
  if_148:
.annotate 'line', 158
    find_lex $P151, "$match"
    $N152 = $P151."from"()
    find_lex $P153, "$offset"
    set $N154, $P153
    isgt $I155, $N152, $N154
    unless $I155, if_150_end
.annotate 'line', 157
    find_lex $P156, "$result"
    find_lex $P157, "$text"
    set $S158, $P157
    find_lex $P159, "$offset"
    set $I160, $P159
    find_lex $P161, "$match"
    $P162 = $P161."from"()
    find_lex $P163, "$offset"
    sub $P164, $P162, $P163
    set $I165, $P164
    substr $S166, $S158, $I160, $I165
    push $P156, $S166
  if_150_end:
.annotate 'line', 159
    find_lex $P167, "$result"
    find_lex $P170, "$is_code"
    if $P170, if_169
    find_lex $P174, "$repl"
    set $P168, $P174
    goto if_169_end
  if_169:
    find_lex $P171, "$repl"
    find_lex $P172, "$match"
    $P173 = $P171($P172)
    set $P168, $P173
  if_169_end:
    push $P167, $P168
.annotate 'line', 160
    find_lex $P175, "$match"
    $P176 = $P175."to"()
    store_lex "$offset", $P176
.annotate 'line', 156
    set $P147, $P176
  if_148_end:
.annotate 'line', 155
    .return ($P147)
.end


.HLL "nqp"

.namespace ["int"]
.sub "_block201"  :subid("19_1299602558.447") :outer("10_1299602558.447")
.annotate 'line', 7
    .const 'Sub' $P205 = "20_1299602558.447" 
    capture_lex $P205
    get_global $P203, "$?CLASS"
    .return ()
.end


.HLL "nqp"

.namespace ["int"]
.sub "" :load :init :subid("post48") :outer("19_1299602558.447")
.annotate 'line', 7
    get_hll_global $P202, ["int"], "_block201" 
    .local pmc block
    set block, $P202
    .const 'Sub' $P205 = "20_1299602558.447" 
    capture_lex $P205
    $P205()
.end


.HLL "nqp"

.namespace ["int"]
.sub "_block204"  :anon :subid("20_1299602558.447") :outer("19_1299602558.447")
.annotate 'line', 7
    nqp_get_sc_object $P206, "1299602557.938", 0
    .local pmc type_obj
    set type_obj, $P206
    set_hll_global "int", type_obj
    set_global "$?CLASS", type_obj
    get_how $P207, type_obj
    $P208 = $P207."compose"(type_obj)
    .return ($P208)
.end


.HLL "nqp"

.namespace ["num"]
.sub "_block209"  :subid("21_1299602558.447") :outer("10_1299602558.447")
.annotate 'line', 9
    .const 'Sub' $P213 = "22_1299602558.447" 
    capture_lex $P213
    get_global $P211, "$?CLASS"
    .return ()
.end


.HLL "nqp"

.namespace ["num"]
.sub "" :load :init :subid("post49") :outer("21_1299602558.447")
.annotate 'line', 9
    get_hll_global $P210, ["num"], "_block209" 
    .local pmc block
    set block, $P210
    .const 'Sub' $P213 = "22_1299602558.447" 
    capture_lex $P213
    $P213()
.end


.HLL "nqp"

.namespace ["num"]
.sub "_block212"  :anon :subid("22_1299602558.447") :outer("21_1299602558.447")
.annotate 'line', 9
    nqp_get_sc_object $P214, "1299602557.938", 1
    .local pmc type_obj
    set type_obj, $P214
    set_hll_global "num", type_obj
    set_global "$?CLASS", type_obj
    get_how $P215, type_obj
    $P216 = $P215."compose"(type_obj)
    .return ($P216)
.end


.HLL "nqp"

.namespace ["str"]
.sub "_block217"  :subid("23_1299602558.447") :outer("10_1299602558.447")
.annotate 'line', 11
    .const 'Sub' $P221 = "24_1299602558.447" 
    capture_lex $P221
    get_global $P219, "$?CLASS"
    .return ()
.end


.HLL "nqp"

.namespace ["str"]
.sub "" :load :init :subid("post50") :outer("23_1299602558.447")
.annotate 'line', 11
    get_hll_global $P218, ["str"], "_block217" 
    .local pmc block
    set block, $P218
    .const 'Sub' $P221 = "24_1299602558.447" 
    capture_lex $P221
    $P221()
.end


.HLL "nqp"

.namespace ["str"]
.sub "_block220"  :anon :subid("24_1299602558.447") :outer("23_1299602558.447")
.annotate 'line', 11
    nqp_get_sc_object $P222, "1299602557.938", 2
    .local pmc type_obj
    set type_obj, $P222
    set_hll_global "str", type_obj
    set_global "$?CLASS", type_obj
    get_how $P223, type_obj
    $P224 = $P223."compose"(type_obj)
    .return ($P224)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "_block225"  :subid("25_1299602558.447") :outer("10_1299602558.447")
.annotate 'line', 14
    .const 'Sub' $P347 = "38_1299602558.447" 
    capture_lex $P347
    .const 'Sub' $P337 = "37_1299602558.447" 
    capture_lex $P337
    .const 'Sub' $P325 = "36_1299602558.447" 
    capture_lex $P325
    .const 'Sub' $P321 = "35_1299602558.447" 
    capture_lex $P321
    .const 'Sub' $P310 = "34_1299602558.447" 
    capture_lex $P310
    .const 'Sub' $P307 = "33_1299602558.447" 
    capture_lex $P307
    .const 'Sub' $P301 = "32_1299602558.447" 
    capture_lex $P301
    .const 'Sub' $P263 = "30_1299602558.447" 
    capture_lex $P263
    .const 'Sub' $P242 = "28_1299602558.447" 
    capture_lex $P242
    .const 'Sub' $P232 = "27_1299602558.447" 
    capture_lex $P232
    .const 'Sub' $P228 = "26_1299602558.447" 
    capture_lex $P228
    get_global $P227, "$?CLASS"
.annotate 'line', 56
    .const 'Sub' $P337 = "37_1299602558.447" 
    newclosure $P345, $P337
.annotate 'line', 14
    .return ($P345)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "" :load :init :subid("post51") :outer("25_1299602558.447")
.annotate 'line', 14
    get_hll_global $P226, ["NQPMu"], "_block225" 
    .local pmc block
    set block, $P226
    .const 'Sub' $P347 = "38_1299602558.447" 
    capture_lex $P347
    $P347()
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "_block346"  :anon :subid("38_1299602558.447") :outer("25_1299602558.447")
.annotate 'line', 14
    .const 'Sub' $P363 = "33_1299602558.447" 
    capture_lex $P363
    nqp_get_sc_object $P348, "1299602557.938", 3
    .local pmc type_obj
    set type_obj, $P348
    set_hll_global "NQPMu", type_obj
    set_global "$?CLASS", type_obj
    get_how $P349, type_obj
    .const 'Sub' $P350 = "26_1299602558.447" 
    $P349."add_method"(type_obj, "CREATE", $P350)
    get_how $P351, type_obj
    .const 'Sub' $P352 = "27_1299602558.447" 
    $P351."add_method"(type_obj, "bless", $P352)
    get_how $P353, type_obj
    .const 'Sub' $P354 = "28_1299602558.447" 
    $P353."add_method"(type_obj, "BUILDALL", $P354)
    get_how $P355, type_obj
    .const 'Sub' $P356 = "30_1299602558.447" 
    $P355."add_method"(type_obj, "BUILD_MAGIC", $P356)
    get_how $P357, type_obj
    .const 'Sub' $P358 = "32_1299602558.447" 
    $P357."add_method"(type_obj, "new", $P358)
    get_how $P359, type_obj
    .const 'Sub' $P360 = "33_1299602558.447" 
    new $P361, "ResizablePMCArray"
    set_dispatchees $P360, $P361
    $P359."add_method"(type_obj, "Str", $P360)
    get_how $P362, type_obj
    .const 'Sub' $P363 = "33_1299602558.447" 
    newclosure $P366, $P363
    $P362."add_parrot_vtable_mapping"(type_obj, "get_string", $P366)
    get_how $P367, type_obj
    .const 'Sub' $P368 = "34_1299602558.447" 
    $P367."add_multi_method"(type_obj, "Str", $P368)
    get_how $P369, type_obj
    .const 'Sub' $P370 = "35_1299602558.447" 
    new $P371, "ResizablePMCArray"
    set_dispatchees $P370, $P371
    $P369."add_method"(type_obj, "ACCEPTS", $P370)
    get_how $P372, type_obj
    .const 'Sub' $P373 = "36_1299602558.447" 
    $P372."add_multi_method"(type_obj, "ACCEPTS", $P373)
    get_how $P374, type_obj
    .const 'Sub' $P375 = "37_1299602558.447" 
    $P374."add_method"(type_obj, "isa", $P375)
    get_how $P376, type_obj
    $P377 = $P376."compose"(type_obj)
    .return ($P377)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "Str" :instanceof("DispatcherSub") :subid("33_1299602558.447") :outer("38_1299602558.447")
    .param pmc param_364
.annotate 'line', 14
    .lex "self", param_364
    multi_dispatch_over_lexical_candidates $P365
    .return ($P365)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "CREATE"  :subid("26_1299602558.447") :outer("25_1299602558.447")
    .param pmc param_229
.annotate 'line', 15
    .lex "self", param_229
.annotate 'line', 16
    find_lex $P230, "self"
    repr_instance_of $P231, $P230
.annotate 'line', 15
    .return ($P231)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "bless"  :subid("27_1299602558.447") :outer("25_1299602558.447")
    .param pmc param_233
    .param pmc param_235 :slurpy :named
.annotate 'line', 20
    .lex "$self", param_233
    find_lex $P234, "$self"
    .lex "self", $P234
    .lex "%attributes", param_235
.annotate 'line', 21
    new $P236, "Undef"
    .lex "$instance", $P236
    find_lex $P237, "self"
    $P238 = $P237."CREATE"()
    store_lex "$instance", $P238
.annotate 'line', 22
    find_lex $P239, "$instance"
    find_lex $P240, "%attributes"
    $P239."BUILDALL"($P240 :flat)
    find_lex $P241, "$instance"
.annotate 'line', 20
    .return ($P241)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.include "except_types.pasm"
.sub "BUILDALL"  :subid("28_1299602558.447") :outer("25_1299602558.447")
    .param pmc param_243
    .param pmc param_245 :slurpy :named
.annotate 'line', 26
    .const 'Sub' $P254 = "29_1299602558.447" 
    capture_lex $P254
    .lex "$self", param_243
    find_lex $P244, "$self"
    .lex "self", $P244
    .lex "%attributes", param_245
.annotate 'line', 27
    find_lex $P247, "$self"
    get_how $P248, $P247
    find_lex $P249, "$self"
    $P250 = $P248."parents"($P249)
    defined $I251, $P250
    unless $I251, for_undef_52
    iter $P246, $P250
    new $P261, 'ExceptionHandler'
    set_label $P261, loop260_handler
    $P261."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P261
  loop260_test:
    unless $P246, loop260_done
    shift $P252, $P246
  loop260_redo:
    .const 'Sub' $P254 = "29_1299602558.447" 
    capture_lex $P254
    $P254($P252)
  loop260_next:
    goto loop260_test
  loop260_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P262, exception, 'type'
    eq $P262, .CONTROL_LOOP_NEXT, loop260_next
    eq $P262, .CONTROL_LOOP_REDO, loop260_redo
  loop260_done:
    pop_eh 
  for_undef_52:
.annotate 'line', 26
    .return ($P246)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "_block253"  :anon :subid("29_1299602558.447") :outer("28_1299602558.447")
    .param pmc param_255
.annotate 'line', 27
    .lex "$class", param_255
.annotate 'line', 28
    find_lex $P256, "$self"
    find_lex $P257, "$class"
    find_lex $P258, "%attributes"
    $P259 = $P256."BUILD_MAGIC"($P257, $P258 :flat)
.annotate 'line', 27
    .return ($P259)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.include "except_types.pasm"
.sub "BUILD_MAGIC"  :subid("30_1299602558.447") :outer("25_1299602558.447")
    .param pmc param_264
    .param pmc param_266
    .param pmc param_267 :slurpy :named
.annotate 'line', 32
    .const 'Sub' $P276 = "31_1299602558.447" 
    capture_lex $P276
    .lex "$self", param_264
    find_lex $P265, "$self"
    .lex "self", $P265
    .lex "$type", param_266
    .lex "%attributes", param_267
.annotate 'line', 33
    find_lex $P269, "$type"
    get_how $P270, $P269
    find_lex $P271, "$type"
    $P272 = $P270."attributes"($P271, 1 :named("local"))
    defined $I273, $P272
    unless $I273, for_undef_53
    iter $P268, $P272
    new $P299, 'ExceptionHandler'
    set_label $P299, loop298_handler
    $P299."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P299
  loop298_test:
    unless $P268, loop298_done
    shift $P274, $P268
  loop298_redo:
    .const 'Sub' $P276 = "31_1299602558.447" 
    capture_lex $P276
    $P276($P274)
  loop298_next:
    goto loop298_test
  loop298_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P300, exception, 'type'
    eq $P300, .CONTROL_LOOP_NEXT, loop298_next
    eq $P300, .CONTROL_LOOP_REDO, loop298_redo
  loop298_done:
    pop_eh 
  for_undef_53:
.annotate 'line', 32
    .return ($P268)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "_block275"  :anon :subid("31_1299602558.447") :outer("30_1299602558.447")
    .param pmc param_279
.annotate 'line', 34
    new $P277, "Undef"
    .lex "$name", $P277
.annotate 'line', 35
    new $P278, "Undef"
    .lex "$shortname", $P278
    .lex "$_", param_279
.annotate 'line', 34
    find_lex $P280, "$_"
    $P281 = $P280."name"()
    store_lex "$name", $P281
.annotate 'line', 35
    find_lex $P282, "$name"
    set $S283, $P282
    substr $S284, $S283, 2
    new $P285, 'String'
    set $P285, $S284
    store_lex "$shortname", $P285
.annotate 'line', 36
    find_lex $P289, "$shortname"
    find_lex $P288, "%attributes"
    exists $I290, $P288[$P289]
    if $I290, if_287
    new $P286, 'Integer'
    set $P286, $I290
    goto if_287_end
  if_287:
.annotate 'line', 37
    find_lex $P291, "$self"
    find_lex $P292, "$type"
    find_lex $P293, "$name"
    set $S294, $P293
    find_lex $P295, "$shortname"
    find_lex $P296, "%attributes"
    unless_null $P296, vivify_54
    $P296 = root_new ['parrot';'Hash']
  vivify_54:
    set $P297, $P296[$P295]
    unless_null $P297, vivify_55
    new $P297, "Undef"
  vivify_55:
    setattribute $P291, $P292, $S294, $P297
  if_287_end:
.annotate 'line', 33
    .return ($P286)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "new"  :subid("32_1299602558.447") :outer("25_1299602558.447")
    .param pmc param_302
    .param pmc param_303 :slurpy :named
.annotate 'line', 42
    .lex "self", param_302
    .lex "%attributes", param_303
.annotate 'line', 43
    find_lex $P304, "self"
    find_lex $P305, "%attributes"
    $P306 = $P304."bless"($P305 :flat)
.annotate 'line', 42
    .return ($P306)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "Str" :instanceof("DispatcherSub") :subid("33_1299602558.447") :outer("25_1299602558.447")
    .param pmc param_308
.annotate 'line', 42
    .lex "self", param_308
    multi_dispatch_over_lexical_candidates $P309
    .return ($P309)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "Str"  :subid("34_1299602558.447") :outer("25_1299602558.447")
    .param pmc param_311
.annotate 'line', 47
    .lex "$self", param_311
    find_lex $P312, "$self"
    .lex "self", $P312
.annotate 'line', 48
    find_lex $P313, "self"
    get_how $P314, $P313
    find_lex $P315, "self"
    $P316 = $P314."name"($P315)
    concat $P317, $P316, "()"
.annotate 'line', 47
    .return ($P317)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "" :load :init :subid("post56") :outer("34_1299602558.447")
.annotate 'line', 47
    .const 'Sub' $P310 = "34_1299602558.447" 
    .local pmc block
    set block, $P310
    get_hll_global $P318, "Mu"
    new $P319, "ResizablePMCArray"
    push $P319, $P318
    new $P320, "ResizablePMCArray"
    push $P320, 2
    set_sub_multisig block, $P319, $P320
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "ACCEPTS" :instanceof("DispatcherSub") :subid("35_1299602558.447") :outer("25_1299602558.447")
    .param pmc param_322
    .param pmc param_323
.annotate 'line', 47
    .lex "self", param_322
.annotate 'line', 51
    .lex "$topic", param_323
.annotate 'line', 47
    multi_dispatch_over_lexical_candidates $P324
    .return ($P324)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "ACCEPTS"  :subid("36_1299602558.447") :outer("25_1299602558.447")
    .param pmc param_326
    .param pmc param_328
.annotate 'line', 52
    .lex "$self", param_326
    find_lex $P327, "$self"
    .lex "self", $P327
    .lex "$topic", param_328
.annotate 'line', 53
    find_lex $P329, "$topic"
    find_lex $P330, "self"
    get_what $P331, $P330
    type_check $I332, $P329, $P331
.annotate 'line', 52
    .return ($I332)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "" :load :init :subid("post57") :outer("36_1299602558.447")
.annotate 'line', 52
    .const 'Sub' $P325 = "36_1299602558.447" 
    .local pmc block
    set block, $P325
    get_hll_global $P333, "NQPMu"
    null $P334
    new $P335, "ResizablePMCArray"
    push $P335, $P333
    push $P335, $P334
    new $P336, "ResizablePMCArray"
    push $P336, 2
    push $P336, 0
    set_sub_multisig block, $P335, $P336
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "isa"  :subid("37_1299602558.447") :outer("25_1299602558.447")
    .param pmc param_338
    .param pmc param_339
.annotate 'line', 56
    .lex "self", param_338
    .lex "$type", param_339
.annotate 'line', 57
    find_lex $P340, "self"
    get_how $P341, $P340
    find_lex $P342, "self"
    find_lex $P343, "$type"
    $P344 = $P341."isa"($P342, $P343)
.annotate 'line', 56
    .return ($P344)
.end


.HLL "nqp"

.namespace []
.sub "_block385" :load :anon :subid("39_1299602558.447")
.annotate 'line', 1
    .const 'Sub' $P387 = "10_1299602558.447" 
    $P388 = $P387()
    .return ($P388)
.end

