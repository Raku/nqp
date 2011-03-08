
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1299591512.364")
.annotate 'line', 0
    get_hll_global $P229, ["NQPMu2"], "_block228" 
    capture_lex $P229
    get_hll_global $P220, ["str"], "_block219" 
    capture_lex $P220
    get_hll_global $P211, ["num"], "_block210" 
    capture_lex $P211
    get_hll_global $P202, ["int"], "_block201" 
    capture_lex $P202
    .const 'Sub' $P114 = "17_1299591512.364" 
    capture_lex $P114
    .const 'Sub' $P81 = "15_1299591512.364" 
    capture_lex $P81
    .const 'Sub' $P69 = "14_1299591512.364" 
    capture_lex $P69
    .const 'Sub' $P58 = "13_1299591512.364" 
    capture_lex $P58
    .const 'Sub' $P53 = "12_1299591512.364" 
    capture_lex $P53
    .const 'Sub' $P20 = "11_1299591512.364" 
    capture_lex $P20
.annotate 'line', 1
    getinterp $P13
    get_class $P14, "LexPad"
    get_class $P15, "NQPLexPad"
    $P13."hll_map"($P14, $P15)
    get_hll_global $P16, "NQPMu2"
    get_hll_global $P17, "str"
    get_hll_global $P18, "num"
    get_hll_global $P19, "int"
.annotate 'line', 73
    .const 'Sub' $P20 = "11_1299591512.364" 
    newclosure $P52, $P20
    .lex "open", $P52
.annotate 'line', 85
    .const 'Sub' $P53 = "12_1299591512.364" 
    newclosure $P57, $P53
    .lex "close", $P57
.annotate 'line', 93
    .const 'Sub' $P58 = "13_1299591512.364" 
    newclosure $P68, $P58
    .lex "slurp", $P68
.annotate 'line', 105
    .const 'Sub' $P69 = "14_1299591512.364" 
    newclosure $P80, $P69
    .lex "spew", $P80
.annotate 'line', 126
    .const 'Sub' $P81 = "15_1299591512.364" 
    newclosure $P113, $P81
    .lex "match", $P113
.annotate 'line', 148
    .const 'Sub' $P114 = "17_1299591512.364" 
    newclosure $P200, $P114
    .lex "subst", $P200
.annotate 'line', 7
    get_hll_global $P202, ["int"], "_block201" 
    capture_lex $P202
    $P202()
.annotate 'line', 9
    get_hll_global $P211, ["num"], "_block210" 
    capture_lex $P211
    $P211()
.annotate 'line', 11
    get_hll_global $P220, ["str"], "_block219" 
    capture_lex $P220
    $P220()
.annotate 'line', 14
    get_hll_global $P229, ["NQPMu2"], "_block228" 
    capture_lex $P229
    $P229()
    find_lex $P382, "open"
    find_lex $P383, "close"
    find_lex $P384, "slurp"
    find_lex $P385, "spew"
    find_lex $P386, "match"
    find_lex $P387, "subst"
    new $P388, "Integer"
    assign $P388, 1
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 1
    .return ()
    .const 'Sub' $P390 = "39_1299591512.364" 
    .return ($P390)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post40") :outer("10_1299591512.364")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1299591512.364" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P394, "1299591511.869"
    isnull $I395, $P394
    if $I395, if_393
    goto if_393_end
  if_393:
    nqp_dynop_setup 
    load_bytecode "nqpmo.pbc"
    nqp_create_sc $P396, "1299591511.869"
  if_393_end:
.end


.HLL "nqp"

.namespace []
.sub "open"  :subid("11_1299591512.364") :outer("10_1299591512.364")
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
.sub "close"  :subid("12_1299591512.364") :outer("10_1299591512.364")
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
.sub "slurp"  :subid("13_1299591512.364") :outer("10_1299591512.364")
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
.sub "spew"  :subid("14_1299591512.364") :outer("10_1299591512.364")
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
.sub "match"  :subid("15_1299591512.364") :outer("10_1299591512.364")
    .param pmc param_82
    .param pmc param_83
    .param pmc param_84 :optional :named("global")
    .param int has_param_84 :opt_flag
.annotate 'line', 126
    .const 'Sub' $P94 = "16_1299591512.364" 
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
    .const 'Sub' $P94 = "16_1299591512.364" 
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
.sub "_block93"  :anon :subid("16_1299591512.364") :outer("15_1299591512.364")
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
.sub "subst"  :subid("17_1299591512.364") :outer("10_1299591512.364")
    .param pmc param_115
    .param pmc param_116
    .param pmc param_117
    .param pmc param_118 :optional :named("global")
    .param int has_param_118 :opt_flag
.annotate 'line', 148
    .const 'Sub' $P145 = "18_1299591512.364" 
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
    .const 'Sub' $P145 = "18_1299591512.364" 
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
.sub "_block144"  :anon :subid("18_1299591512.364") :outer("17_1299591512.364")
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
.sub "_block201"  :subid("19_1299591512.364") :outer("10_1299591512.364")
.annotate 'line', 7
    .const 'Sub' $P205 = "20_1299591512.364" 
    capture_lex $P205
    get_global $P203, "$?CLASS"
    .return ()
.end


.HLL "nqp"

.namespace ["int"]
.sub "" :load :init :subid("post48") :outer("19_1299591512.364")
.annotate 'line', 7
    get_hll_global $P202, ["int"], "_block201" 
    .local pmc block
    set block, $P202
    .const 'Sub' $P205 = "20_1299591512.364" 
    capture_lex $P205
    $P205()
.end


.HLL "nqp"

.namespace ["int"]
.sub "_block204"  :anon :subid("20_1299591512.364") :outer("19_1299591512.364")
.annotate 'line', 7
    get_hll_global $P206, "NQPNativeHOW"
    $P207 = $P206."new_type"("int" :named("name"), "P6int" :named("repr"))
    .local pmc type_obj
    set type_obj, $P207
    set_hll_global "int", type_obj
    set_global "$?CLASS", type_obj
    get_how $P208, type_obj
    $P209 = $P208."compose"(type_obj)
    .return ($P209)
.end


.HLL "nqp"

.namespace ["num"]
.sub "_block210"  :subid("21_1299591512.364") :outer("10_1299591512.364")
.annotate 'line', 9
    .const 'Sub' $P214 = "22_1299591512.364" 
    capture_lex $P214
    get_global $P212, "$?CLASS"
    .return ()
.end


.HLL "nqp"

.namespace ["num"]
.sub "" :load :init :subid("post49") :outer("21_1299591512.364")
.annotate 'line', 9
    get_hll_global $P211, ["num"], "_block210" 
    .local pmc block
    set block, $P211
    .const 'Sub' $P214 = "22_1299591512.364" 
    capture_lex $P214
    $P214()
.end


.HLL "nqp"

.namespace ["num"]
.sub "_block213"  :anon :subid("22_1299591512.364") :outer("21_1299591512.364")
.annotate 'line', 9
    get_hll_global $P215, "NQPNativeHOW"
    $P216 = $P215."new_type"("num" :named("name"), "P6num" :named("repr"))
    .local pmc type_obj
    set type_obj, $P216
    set_hll_global "num", type_obj
    set_global "$?CLASS", type_obj
    get_how $P217, type_obj
    $P218 = $P217."compose"(type_obj)
    .return ($P218)
.end


.HLL "nqp"

.namespace ["str"]
.sub "_block219"  :subid("23_1299591512.364") :outer("10_1299591512.364")
.annotate 'line', 11
    .const 'Sub' $P223 = "24_1299591512.364" 
    capture_lex $P223
    get_global $P221, "$?CLASS"
    .return ()
.end


.HLL "nqp"

.namespace ["str"]
.sub "" :load :init :subid("post50") :outer("23_1299591512.364")
.annotate 'line', 11
    get_hll_global $P220, ["str"], "_block219" 
    .local pmc block
    set block, $P220
    .const 'Sub' $P223 = "24_1299591512.364" 
    capture_lex $P223
    $P223()
.end


.HLL "nqp"

.namespace ["str"]
.sub "_block222"  :anon :subid("24_1299591512.364") :outer("23_1299591512.364")
.annotate 'line', 11
    get_hll_global $P224, "NQPNativeHOW"
    $P225 = $P224."new_type"("str" :named("name"), "P6str" :named("repr"))
    .local pmc type_obj
    set type_obj, $P225
    set_hll_global "str", type_obj
    set_global "$?CLASS", type_obj
    get_how $P226, type_obj
    $P227 = $P226."compose"(type_obj)
    .return ($P227)
.end


.HLL "nqp"

.namespace ["NQPMu2"]
.sub "_block228"  :subid("25_1299591512.364") :outer("10_1299591512.364")
.annotate 'line', 14
    .const 'Sub' $P350 = "38_1299591512.364" 
    capture_lex $P350
    .const 'Sub' $P340 = "37_1299591512.364" 
    capture_lex $P340
    .const 'Sub' $P328 = "36_1299591512.364" 
    capture_lex $P328
    .const 'Sub' $P324 = "35_1299591512.364" 
    capture_lex $P324
    .const 'Sub' $P313 = "34_1299591512.364" 
    capture_lex $P313
    .const 'Sub' $P310 = "33_1299591512.364" 
    capture_lex $P310
    .const 'Sub' $P304 = "32_1299591512.364" 
    capture_lex $P304
    .const 'Sub' $P266 = "30_1299591512.364" 
    capture_lex $P266
    .const 'Sub' $P245 = "28_1299591512.364" 
    capture_lex $P245
    .const 'Sub' $P235 = "27_1299591512.364" 
    capture_lex $P235
    .const 'Sub' $P231 = "26_1299591512.364" 
    capture_lex $P231
    get_global $P230, "$?CLASS"
.annotate 'line', 56
    .const 'Sub' $P340 = "37_1299591512.364" 
    newclosure $P348, $P340
.annotate 'line', 14
    .return ($P348)
.end


.HLL "nqp"

.namespace ["NQPMu2"]
.sub "" :load :init :subid("post51") :outer("25_1299591512.364")
.annotate 'line', 14
    get_hll_global $P229, ["NQPMu2"], "_block228" 
    .local pmc block
    set block, $P229
    .const 'Sub' $P350 = "38_1299591512.364" 
    capture_lex $P350
    $P350()
.end


.HLL "nqp"

.namespace ["NQPMu2"]
.sub "_block349"  :anon :subid("38_1299591512.364") :outer("25_1299591512.364")
.annotate 'line', 14
    .const 'Sub' $P367 = "33_1299591512.364" 
    capture_lex $P367
    get_hll_global $P351, "NQPClassHOW"
    $P352 = $P351."new_type"("NQPMu2" :named("name"))
    .local pmc type_obj
    set type_obj, $P352
    set_hll_global "NQPMu2", type_obj
    set_global "$?CLASS", type_obj
    get_how $P353, type_obj
    .const 'Sub' $P354 = "26_1299591512.364" 
    $P353."add_method"(type_obj, "CREATE", $P354)
    get_how $P355, type_obj
    .const 'Sub' $P356 = "27_1299591512.364" 
    $P355."add_method"(type_obj, "bless", $P356)
    get_how $P357, type_obj
    .const 'Sub' $P358 = "28_1299591512.364" 
    $P357."add_method"(type_obj, "BUILDALL", $P358)
    get_how $P359, type_obj
    .const 'Sub' $P360 = "30_1299591512.364" 
    $P359."add_method"(type_obj, "BUILD_MAGIC", $P360)
    get_how $P361, type_obj
    .const 'Sub' $P362 = "32_1299591512.364" 
    $P361."add_method"(type_obj, "new", $P362)
    get_how $P363, type_obj
    .const 'Sub' $P364 = "33_1299591512.364" 
    new $P365, "ResizablePMCArray"
    set_dispatchees $P364, $P365
    $P363."add_method"(type_obj, "Str", $P364)
    get_how $P366, type_obj
    .const 'Sub' $P367 = "33_1299591512.364" 
    newclosure $P370, $P367
    $P366."add_parrot_vtable_mapping"(type_obj, "get_string", $P370)
    get_how $P371, type_obj
    .const 'Sub' $P372 = "34_1299591512.364" 
    $P371."add_multi_method"(type_obj, "Str", $P372)
    get_how $P373, type_obj
    .const 'Sub' $P374 = "35_1299591512.364" 
    new $P375, "ResizablePMCArray"
    set_dispatchees $P374, $P375
    $P373."add_method"(type_obj, "ACCEPTS", $P374)
    get_how $P376, type_obj
    .const 'Sub' $P377 = "36_1299591512.364" 
    $P376."add_multi_method"(type_obj, "ACCEPTS", $P377)
    get_how $P378, type_obj
    .const 'Sub' $P379 = "37_1299591512.364" 
    $P378."add_method"(type_obj, "isa", $P379)
    get_how $P380, type_obj
    $P381 = $P380."compose"(type_obj)
    .return ($P381)
.end


.HLL "nqp"

.namespace ["NQPMu2"]
.sub "Str" :instanceof("DispatcherSub") :subid("33_1299591512.364") :outer("38_1299591512.364")
    .param pmc param_368
.annotate 'line', 14
    .lex "self", param_368
    multi_dispatch_over_lexical_candidates $P369
    .return ($P369)
.end


.HLL "nqp"

.namespace ["NQPMu2"]
.sub "CREATE"  :subid("26_1299591512.364") :outer("25_1299591512.364")
    .param pmc param_232
.annotate 'line', 15
    .lex "self", param_232
.annotate 'line', 16
    find_lex $P233, "self"
    repr_instance_of $P234, $P233
.annotate 'line', 15
    .return ($P234)
.end


.HLL "nqp"

.namespace ["NQPMu2"]
.sub "bless"  :subid("27_1299591512.364") :outer("25_1299591512.364")
    .param pmc param_236
    .param pmc param_238 :slurpy :named
.annotate 'line', 20
    .lex "$self", param_236
    find_lex $P237, "$self"
    .lex "self", $P237
    .lex "%attributes", param_238
.annotate 'line', 21
    new $P239, "Undef"
    .lex "$instance", $P239
    find_lex $P240, "self"
    $P241 = $P240."CREATE"()
    store_lex "$instance", $P241
.annotate 'line', 22
    find_lex $P242, "$instance"
    find_lex $P243, "%attributes"
    $P242."BUILDALL"($P243 :flat)
    find_lex $P244, "$instance"
.annotate 'line', 20
    .return ($P244)
.end


.HLL "nqp"

.namespace ["NQPMu2"]
.include "except_types.pasm"
.sub "BUILDALL"  :subid("28_1299591512.364") :outer("25_1299591512.364")
    .param pmc param_246
    .param pmc param_248 :slurpy :named
.annotate 'line', 26
    .const 'Sub' $P257 = "29_1299591512.364" 
    capture_lex $P257
    .lex "$self", param_246
    find_lex $P247, "$self"
    .lex "self", $P247
    .lex "%attributes", param_248
.annotate 'line', 27
    find_lex $P250, "$self"
    get_how $P251, $P250
    find_lex $P252, "$self"
    $P253 = $P251."parents"($P252)
    defined $I254, $P253
    unless $I254, for_undef_52
    iter $P249, $P253
    new $P264, 'ExceptionHandler'
    set_label $P264, loop263_handler
    $P264."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P264
  loop263_test:
    unless $P249, loop263_done
    shift $P255, $P249
  loop263_redo:
    .const 'Sub' $P257 = "29_1299591512.364" 
    capture_lex $P257
    $P257($P255)
  loop263_next:
    goto loop263_test
  loop263_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P265, exception, 'type'
    eq $P265, .CONTROL_LOOP_NEXT, loop263_next
    eq $P265, .CONTROL_LOOP_REDO, loop263_redo
  loop263_done:
    pop_eh 
  for_undef_52:
.annotate 'line', 26
    .return ($P249)
.end


.HLL "nqp"

.namespace ["NQPMu2"]
.sub "_block256"  :anon :subid("29_1299591512.364") :outer("28_1299591512.364")
    .param pmc param_258
.annotate 'line', 27
    .lex "$class", param_258
.annotate 'line', 28
    find_lex $P259, "$self"
    find_lex $P260, "$class"
    find_lex $P261, "%attributes"
    $P262 = $P259."BUILD_MAGIC"($P260, $P261 :flat)
.annotate 'line', 27
    .return ($P262)
.end


.HLL "nqp"

.namespace ["NQPMu2"]
.include "except_types.pasm"
.sub "BUILD_MAGIC"  :subid("30_1299591512.364") :outer("25_1299591512.364")
    .param pmc param_267
    .param pmc param_269
    .param pmc param_270 :slurpy :named
.annotate 'line', 32
    .const 'Sub' $P279 = "31_1299591512.364" 
    capture_lex $P279
    .lex "$self", param_267
    find_lex $P268, "$self"
    .lex "self", $P268
    .lex "$type", param_269
    .lex "%attributes", param_270
.annotate 'line', 33
    find_lex $P272, "$type"
    get_how $P273, $P272
    find_lex $P274, "$type"
    $P275 = $P273."attributes"($P274, 1 :named("local"))
    defined $I276, $P275
    unless $I276, for_undef_53
    iter $P271, $P275
    new $P302, 'ExceptionHandler'
    set_label $P302, loop301_handler
    $P302."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P302
  loop301_test:
    unless $P271, loop301_done
    shift $P277, $P271
  loop301_redo:
    .const 'Sub' $P279 = "31_1299591512.364" 
    capture_lex $P279
    $P279($P277)
  loop301_next:
    goto loop301_test
  loop301_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P303, exception, 'type'
    eq $P303, .CONTROL_LOOP_NEXT, loop301_next
    eq $P303, .CONTROL_LOOP_REDO, loop301_redo
  loop301_done:
    pop_eh 
  for_undef_53:
.annotate 'line', 32
    .return ($P271)
.end


.HLL "nqp"

.namespace ["NQPMu2"]
.sub "_block278"  :anon :subid("31_1299591512.364") :outer("30_1299591512.364")
    .param pmc param_282
.annotate 'line', 34
    new $P280, "Undef"
    .lex "$name", $P280
.annotate 'line', 35
    new $P281, "Undef"
    .lex "$shortname", $P281
    .lex "$_", param_282
.annotate 'line', 34
    find_lex $P283, "$_"
    $P284 = $P283."name"()
    store_lex "$name", $P284
.annotate 'line', 35
    find_lex $P285, "$name"
    set $S286, $P285
    substr $S287, $S286, 2
    new $P288, 'String'
    set $P288, $S287
    store_lex "$shortname", $P288
.annotate 'line', 36
    find_lex $P292, "$shortname"
    find_lex $P291, "%attributes"
    exists $I293, $P291[$P292]
    if $I293, if_290
    new $P289, 'Integer'
    set $P289, $I293
    goto if_290_end
  if_290:
.annotate 'line', 37
    find_lex $P294, "$self"
    find_lex $P295, "$type"
    find_lex $P296, "$name"
    set $S297, $P296
    find_lex $P298, "$shortname"
    find_lex $P299, "%attributes"
    unless_null $P299, vivify_54
    $P299 = root_new ['parrot';'Hash']
  vivify_54:
    set $P300, $P299[$P298]
    unless_null $P300, vivify_55
    new $P300, "Undef"
  vivify_55:
    setattribute $P294, $P295, $S297, $P300
  if_290_end:
.annotate 'line', 33
    .return ($P289)
.end


.HLL "nqp"

.namespace ["NQPMu2"]
.sub "new"  :subid("32_1299591512.364") :outer("25_1299591512.364")
    .param pmc param_305
    .param pmc param_306 :slurpy :named
.annotate 'line', 42
    .lex "self", param_305
    .lex "%attributes", param_306
.annotate 'line', 43
    find_lex $P307, "self"
    find_lex $P308, "%attributes"
    $P309 = $P307."bless"($P308 :flat)
.annotate 'line', 42
    .return ($P309)
.end


.HLL "nqp"

.namespace ["NQPMu2"]
.sub "Str" :instanceof("DispatcherSub") :subid("33_1299591512.364") :outer("25_1299591512.364")
    .param pmc param_311
.annotate 'line', 42
    .lex "self", param_311
    multi_dispatch_over_lexical_candidates $P312
    .return ($P312)
.end


.HLL "nqp"

.namespace ["NQPMu2"]
.sub "Str"  :subid("34_1299591512.364") :outer("25_1299591512.364")
    .param pmc param_314
.annotate 'line', 47
    .lex "$self", param_314
    find_lex $P315, "$self"
    .lex "self", $P315
.annotate 'line', 48
    find_lex $P316, "self"
    get_how $P317, $P316
    find_lex $P318, "self"
    $P319 = $P317."name"($P318)
    concat $P320, $P319, "()"
.annotate 'line', 47
    .return ($P320)
.end


.HLL "nqp"

.namespace ["NQPMu2"]
.sub "" :load :init :subid("post56") :outer("34_1299591512.364")
.annotate 'line', 47
    .const 'Sub' $P313 = "34_1299591512.364" 
    .local pmc block
    set block, $P313
    get_hll_global $P321, "Mu"
    new $P322, "ResizablePMCArray"
    push $P322, $P321
    new $P323, "ResizablePMCArray"
    push $P323, 2
    set_sub_multisig block, $P322, $P323
.end


.HLL "nqp"

.namespace ["NQPMu2"]
.sub "ACCEPTS" :instanceof("DispatcherSub") :subid("35_1299591512.364") :outer("25_1299591512.364")
    .param pmc param_325
    .param pmc param_326
.annotate 'line', 47
    .lex "self", param_325
.annotate 'line', 51
    .lex "$topic", param_326
.annotate 'line', 47
    multi_dispatch_over_lexical_candidates $P327
    .return ($P327)
.end


.HLL "nqp"

.namespace ["NQPMu2"]
.sub "ACCEPTS"  :subid("36_1299591512.364") :outer("25_1299591512.364")
    .param pmc param_329
    .param pmc param_331
.annotate 'line', 52
    .lex "$self", param_329
    find_lex $P330, "$self"
    .lex "self", $P330
    .lex "$topic", param_331
.annotate 'line', 53
    find_lex $P332, "$topic"
    find_lex $P333, "self"
    get_what $P334, $P333
    type_check $I335, $P332, $P334
.annotate 'line', 52
    .return ($I335)
.end


.HLL "nqp"

.namespace ["NQPMu2"]
.sub "" :load :init :subid("post57") :outer("36_1299591512.364")
.annotate 'line', 52
    .const 'Sub' $P328 = "36_1299591512.364" 
    .local pmc block
    set block, $P328
    get_hll_global $P336, "NQPMu"
    null $P337
    new $P338, "ResizablePMCArray"
    push $P338, $P336
    push $P338, $P337
    new $P339, "ResizablePMCArray"
    push $P339, 2
    push $P339, 0
    set_sub_multisig block, $P338, $P339
.end


.HLL "nqp"

.namespace ["NQPMu2"]
.sub "isa"  :subid("37_1299591512.364") :outer("25_1299591512.364")
    .param pmc param_341
    .param pmc param_342
.annotate 'line', 56
    .lex "self", param_341
    .lex "$type", param_342
.annotate 'line', 57
    find_lex $P343, "self"
    get_how $P344, $P343
    find_lex $P345, "self"
    find_lex $P346, "$type"
    $P347 = $P344."isa"($P345, $P346)
.annotate 'line', 56
    .return ($P347)
.end


.HLL "nqp"

.namespace []
.sub "_block389" :load :anon :subid("39_1299591512.364")
.annotate 'line', 1
    .const 'Sub' $P391 = "10_1299591512.364" 
    $P392 = $P391()
    .return ($P392)
.end

