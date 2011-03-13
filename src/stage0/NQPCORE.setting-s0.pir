
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1300051147.726")
.annotate 'line', 0
    get_hll_global $P222, ["NQPMu"], "_block221" 
    capture_lex $P222
    get_hll_global $P214, ["str"], "_block213" 
    capture_lex $P214
    get_hll_global $P206, ["num"], "_block205" 
    capture_lex $P206
    get_hll_global $P198, ["int"], "_block197" 
    capture_lex $P198
    .const 'Sub' $P110 = "17_1300051147.726" 
    capture_lex $P110
    .const 'Sub' $P77 = "15_1300051147.726" 
    capture_lex $P77
    .const 'Sub' $P65 = "14_1300051147.726" 
    capture_lex $P65
    .const 'Sub' $P54 = "13_1300051147.726" 
    capture_lex $P54
    .const 'Sub' $P49 = "12_1300051147.726" 
    capture_lex $P49
    .const 'Sub' $P16 = "11_1300051147.726" 
    capture_lex $P16
.annotate 'line', 1
    getinterp $P13
    get_class $P14, "LexPad"
    get_class $P15, "NQPLexPad"
    $P13."hll_map"($P14, $P15)
.annotate 'line', 73
    .const 'Sub' $P16 = "11_1300051147.726" 
    newclosure $P48, $P16
    .lex "open", $P48
.annotate 'line', 85
    .const 'Sub' $P49 = "12_1300051147.726" 
    newclosure $P53, $P49
    .lex "close", $P53
.annotate 'line', 93
    .const 'Sub' $P54 = "13_1300051147.726" 
    newclosure $P64, $P54
    .lex "slurp", $P64
.annotate 'line', 105
    .const 'Sub' $P65 = "14_1300051147.726" 
    newclosure $P76, $P65
    .lex "spew", $P76
.annotate 'line', 126
    .const 'Sub' $P77 = "15_1300051147.726" 
    newclosure $P109, $P77
    .lex "match", $P109
.annotate 'line', 148
    .const 'Sub' $P110 = "17_1300051147.726" 
    newclosure $P196, $P110
    .lex "subst", $P196
.annotate 'line', 7
    get_hll_global $P198, ["int"], "_block197" 
    capture_lex $P198
    $P198()
.annotate 'line', 9
    get_hll_global $P206, ["num"], "_block205" 
    capture_lex $P206
    $P206()
.annotate 'line', 11
    get_hll_global $P214, ["str"], "_block213" 
    capture_lex $P214
    $P214()
.annotate 'line', 14
    get_hll_global $P222, ["NQPMu"], "_block221" 
    capture_lex $P222
    $P222()
    find_lex $P374, "open"
    find_lex $P375, "close"
    find_lex $P376, "slurp"
    find_lex $P377, "spew"
    find_lex $P378, "match"
    find_lex $P379, "subst"
    new $P380, "Integer"
    assign $P380, 1
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 1
    .return ()
    .const 'Sub' $P382 = "39_1300051147.726" 
    .return ($P382)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post40") :outer("10_1300051147.726")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1300051147.726" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P386, "1300051147.249"
    isnull $I387, $P386
    if $I387, if_385
    nqp_get_sc_object $P401, "1300051147.249", 0
    set_hll_global "int", $P401
    nqp_get_sc_object $P402, "1300051147.249", 1
    set_hll_global "num", $P402
    nqp_get_sc_object $P403, "1300051147.249", 2
    set_hll_global "str", $P403
    nqp_get_sc_object $P404, "1300051147.249", 3
    set_hll_global "NQPMu", $P404
    goto if_385_end
  if_385:
    nqp_dynop_setup 
    load_bytecode "nqpmo.pbc"
    nqp_create_sc $P388, "1300051147.249"
    .local pmc cur_sc
    set cur_sc, $P388
    get_hll_global $P389, "NQPNativeHOW"
    $P390 = $P389."new_type"("int" :named("name"), "P6int" :named("repr"))
    nqp_set_sc_for_object $P390, cur_sc
    nqp_set_sc_object "1300051147.249", 0, $P390
    nqp_get_sc_object $P391, "1300051147.249", 0
    set_hll_global "int", $P391
    get_hll_global $P392, "NQPNativeHOW"
    $P393 = $P392."new_type"("num" :named("name"), "P6num" :named("repr"))
    nqp_set_sc_for_object $P393, cur_sc
    nqp_set_sc_object "1300051147.249", 1, $P393
    nqp_get_sc_object $P394, "1300051147.249", 1
    set_hll_global "num", $P394
    get_hll_global $P395, "NQPNativeHOW"
    $P396 = $P395."new_type"("str" :named("name"), "P6str" :named("repr"))
    nqp_set_sc_for_object $P396, cur_sc
    nqp_set_sc_object "1300051147.249", 2, $P396
    nqp_get_sc_object $P397, "1300051147.249", 2
    set_hll_global "str", $P397
    get_hll_global $P398, "NQPClassHOW"
    $P399 = $P398."new_type"("NQPMu" :named("name"))
    nqp_set_sc_for_object $P399, cur_sc
    nqp_set_sc_object "1300051147.249", 3, $P399
    nqp_get_sc_object $P400, "1300051147.249", 3
    set_hll_global "NQPMu", $P400
  if_385_end:
.end


.HLL "nqp"

.namespace []
.sub "open"  :subid("11_1300051147.726") :outer("10_1300051147.726")
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
    if has_param_18, optparam_41
    new $P19, "Undef"
    set param_18, $P19
  optparam_41:
    .lex "$r", param_18
    if has_param_20, optparam_42
    new $P21, "Undef"
    set param_20, $P21
  optparam_42:
    .lex "$w", param_20
    if has_param_22, optparam_43
    new $P23, "Undef"
    set param_22, $P23
  optparam_43:
    .lex "$a", param_22
    if has_param_24, optparam_44
    new $P25, "Undef"
    set param_24, $P25
  optparam_44:
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
.sub "close"  :subid("12_1300051147.726") :outer("10_1300051147.726")
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
.sub "slurp"  :subid("13_1300051147.726") :outer("10_1300051147.726")
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
.sub "spew"  :subid("14_1300051147.726") :outer("10_1300051147.726")
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
.sub "match"  :subid("15_1300051147.726") :outer("10_1300051147.726")
    .param pmc param_78
    .param pmc param_79
    .param pmc param_80 :optional :named("global")
    .param int has_param_80 :opt_flag
.annotate 'line', 126
    .const 'Sub' $P90 = "16_1300051147.726" 
    capture_lex $P90
    .lex "$text", param_78
    .lex "$regex", param_79
    if has_param_80, optparam_45
    new $P81, "Undef"
    set param_80, $P81
  optparam_45:
    .lex "$global", param_80
.annotate 'line', 127
    new $P82, "Undef"
    .lex "$match", $P82
    find_lex $P83, "$regex"
    find_lex $P84, "$text"
    $P85 = $P83."ACCEPTS"($P84)
    store_lex "$match", $P85
.annotate 'line', 128
    find_lex $P88, "$global"
    if $P88, if_87
.annotate 'line', 136
    find_lex $P108, "$match"
    set $P86, $P108
.annotate 'line', 128
    goto if_87_end
  if_87:
    .const 'Sub' $P90 = "16_1300051147.726" 
    capture_lex $P90
    $P107 = $P90()
    set $P86, $P107
  if_87_end:
.annotate 'line', 126
    .return ($P86)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "_block89"  :anon :subid("16_1300051147.726") :outer("15_1300051147.726")
.annotate 'line', 129
    $P91 = root_new ['parrot';'ResizablePMCArray']
    .lex "@matches", $P91
.annotate 'line', 128
    find_lex $P92, "@matches"
.annotate 'line', 130
    new $P104, 'ExceptionHandler'
    set_label $P104, loop103_handler
    $P104."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P104
  loop103_test:
    find_lex $P93, "$match"
    unless $P93, loop103_done
  loop103_redo:
.annotate 'line', 131
    find_lex $P94, "@matches"
    find_lex $P95, "$match"
    $P94."push"($P95)
.annotate 'line', 132
    find_lex $P96, "$match"
    $P97 = $P96."CURSOR"()
    find_lex $P98, "$text"
    find_lex $P99, "$regex"
    find_lex $P100, "$match"
    $P101 = $P100."to"()
    $P102 = $P97."parse"($P98, $P99 :named("rule"), $P101 :named("c"))
    store_lex "$match", $P102
  loop103_next:
.annotate 'line', 130
    goto loop103_test
  loop103_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P105, exception, 'type'
    eq $P105, .CONTROL_LOOP_NEXT, loop103_next
    eq $P105, .CONTROL_LOOP_REDO, loop103_redo
  loop103_done:
    pop_eh 
    find_lex $P106, "@matches"
.annotate 'line', 128
    .return ($P106)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "subst"  :subid("17_1300051147.726") :outer("10_1300051147.726")
    .param pmc param_111
    .param pmc param_112
    .param pmc param_113
    .param pmc param_114 :optional :named("global")
    .param int has_param_114 :opt_flag
.annotate 'line', 148
    .const 'Sub' $P141 = "18_1300051147.726" 
    capture_lex $P141
    .lex "$text", param_111
    .lex "$regex", param_112
    .lex "$repl", param_113
    if has_param_114, optparam_46
    new $P115, "Undef"
    set param_114, $P115
  optparam_46:
    .lex "$global", param_114
.annotate 'line', 149
    $P116 = root_new ['parrot';'ResizablePMCArray']
    .lex "@matches", $P116
.annotate 'line', 151
    new $P117, "Undef"
    .lex "$is_code", $P117
.annotate 'line', 152
    new $P118, "Undef"
    .lex "$offset", $P118
.annotate 'line', 153
    new $P119, "Undef"
    .lex "$result", $P119
.annotate 'line', 164
    new $P120, "Undef"
    .lex "$chars", $P120
.annotate 'line', 149
    find_lex $P123, "$global"
    if $P123, if_122
.annotate 'line', 150
    find_lex $P127, "$regex"
    find_lex $P128, "$text"
    $P129 = $P127."ACCEPTS"($P128)
    new $P130, "ResizablePMCArray"
    push $P130, $P129
.annotate 'line', 149
    set $P121, $P130
    goto if_122_end
  if_122:
    find_lex $P124, "$text"
    find_lex $P125, "$regex"
    $P126 = "match"($P124, $P125, 1 :named("global"))
    set $P121, $P126
  if_122_end:
    store_lex "@matches", $P121
.annotate 'line', 151
    find_lex $P131, "$repl"
    isa $I132, $P131, "Sub"
    new $P133, 'Integer'
    set $P133, $I132
    store_lex "$is_code", $P133
.annotate 'line', 152
    new $P134, "Integer"
    assign $P134, 0
    store_lex "$offset", $P134
.annotate 'line', 153
    new $P135, "StringBuilder"
    store_lex "$result", $P135
.annotate 'line', 155
    find_lex $P137, "@matches"
    defined $I138, $P137
    unless $I138, for_undef_47
    iter $P136, $P137
    new $P174, 'ExceptionHandler'
    set_label $P174, loop173_handler
    $P174."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P174
  loop173_test:
    unless $P136, loop173_done
    shift $P139, $P136
  loop173_redo:
    .const 'Sub' $P141 = "18_1300051147.726" 
    capture_lex $P141
    $P141($P139)
  loop173_next:
    goto loop173_test
  loop173_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P175, exception, 'type'
    eq $P175, .CONTROL_LOOP_NEXT, loop173_next
    eq $P175, .CONTROL_LOOP_REDO, loop173_redo
  loop173_done:
    pop_eh 
  for_undef_47:
.annotate 'line', 164
    find_lex $P176, "$text"
    set $S177, $P176
    length $I178, $S177
    new $P179, 'Integer'
    set $P179, $I178
    store_lex "$chars", $P179
.annotate 'line', 166
    find_lex $P181, "$chars"
    set $N182, $P181
    find_lex $P183, "$offset"
    set $N184, $P183
    isgt $I185, $N182, $N184
    unless $I185, if_180_end
.annotate 'line', 165
    find_lex $P186, "$result"
    find_lex $P187, "$text"
    set $S188, $P187
    find_lex $P189, "$offset"
    set $I190, $P189
    find_lex $P191, "$chars"
    set $I192, $P191
    substr $S193, $S188, $I190, $I192
    push $P186, $S193
  if_180_end:
.annotate 'line', 168
    find_lex $P194, "$result"
    set $S195, $P194
.annotate 'line', 148
    .return ($S195)
.end


.HLL "nqp"

.namespace []
.sub "_block140"  :anon :subid("18_1300051147.726") :outer("17_1300051147.726")
    .param pmc param_142
.annotate 'line', 155
    .lex "$match", param_142
.annotate 'line', 156
    find_lex $P145, "$match"
    if $P145, if_144
    set $P143, $P145
    goto if_144_end
  if_144:
.annotate 'line', 158
    find_lex $P147, "$match"
    $N148 = $P147."from"()
    find_lex $P149, "$offset"
    set $N150, $P149
    isgt $I151, $N148, $N150
    unless $I151, if_146_end
.annotate 'line', 157
    find_lex $P152, "$result"
    find_lex $P153, "$text"
    set $S154, $P153
    find_lex $P155, "$offset"
    set $I156, $P155
    find_lex $P157, "$match"
    $P158 = $P157."from"()
    find_lex $P159, "$offset"
    sub $P160, $P158, $P159
    set $I161, $P160
    substr $S162, $S154, $I156, $I161
    push $P152, $S162
  if_146_end:
.annotate 'line', 159
    find_lex $P163, "$result"
    find_lex $P166, "$is_code"
    if $P166, if_165
    find_lex $P170, "$repl"
    set $P164, $P170
    goto if_165_end
  if_165:
    find_lex $P167, "$repl"
    find_lex $P168, "$match"
    $P169 = $P167($P168)
    set $P164, $P169
  if_165_end:
    push $P163, $P164
.annotate 'line', 160
    find_lex $P171, "$match"
    $P172 = $P171."to"()
    store_lex "$offset", $P172
.annotate 'line', 156
    set $P143, $P172
  if_144_end:
.annotate 'line', 155
    .return ($P143)
.end


.HLL "nqp"

.namespace ["int"]
.sub "_block197"  :subid("19_1300051147.726") :outer("10_1300051147.726")
.annotate 'line', 7
    .const 'Sub' $P201 = "20_1300051147.726" 
    capture_lex $P201
    get_global $P199, "$?CLASS"
    .return ()
.end


.HLL "nqp"

.namespace ["int"]
.sub "" :load :init :subid("post48") :outer("19_1300051147.726")
.annotate 'line', 7
    get_hll_global $P198, ["int"], "_block197" 
    .local pmc block
    set block, $P198
    .const 'Sub' $P201 = "20_1300051147.726" 
    capture_lex $P201
    $P201()
.end


.HLL "nqp"

.namespace ["int"]
.sub "_block200"  :anon :subid("20_1300051147.726") :outer("19_1300051147.726")
.annotate 'line', 7
    nqp_get_sc_object $P202, "1300051147.249", 0
    .local pmc type_obj
    set type_obj, $P202
    set_global "$?CLASS", type_obj
    get_how $P203, type_obj
    $P204 = $P203."compose"(type_obj)
    .return ($P204)
.end


.HLL "nqp"

.namespace ["num"]
.sub "_block205"  :subid("21_1300051147.726") :outer("10_1300051147.726")
.annotate 'line', 9
    .const 'Sub' $P209 = "22_1300051147.726" 
    capture_lex $P209
    get_global $P207, "$?CLASS"
    .return ()
.end


.HLL "nqp"

.namespace ["num"]
.sub "" :load :init :subid("post49") :outer("21_1300051147.726")
.annotate 'line', 9
    get_hll_global $P206, ["num"], "_block205" 
    .local pmc block
    set block, $P206
    .const 'Sub' $P209 = "22_1300051147.726" 
    capture_lex $P209
    $P209()
.end


.HLL "nqp"

.namespace ["num"]
.sub "_block208"  :anon :subid("22_1300051147.726") :outer("21_1300051147.726")
.annotate 'line', 9
    nqp_get_sc_object $P210, "1300051147.249", 1
    .local pmc type_obj
    set type_obj, $P210
    set_global "$?CLASS", type_obj
    get_how $P211, type_obj
    $P212 = $P211."compose"(type_obj)
    .return ($P212)
.end


.HLL "nqp"

.namespace ["str"]
.sub "_block213"  :subid("23_1300051147.726") :outer("10_1300051147.726")
.annotate 'line', 11
    .const 'Sub' $P217 = "24_1300051147.726" 
    capture_lex $P217
    get_global $P215, "$?CLASS"
    .return ()
.end


.HLL "nqp"

.namespace ["str"]
.sub "" :load :init :subid("post50") :outer("23_1300051147.726")
.annotate 'line', 11
    get_hll_global $P214, ["str"], "_block213" 
    .local pmc block
    set block, $P214
    .const 'Sub' $P217 = "24_1300051147.726" 
    capture_lex $P217
    $P217()
.end


.HLL "nqp"

.namespace ["str"]
.sub "_block216"  :anon :subid("24_1300051147.726") :outer("23_1300051147.726")
.annotate 'line', 11
    nqp_get_sc_object $P218, "1300051147.249", 2
    .local pmc type_obj
    set type_obj, $P218
    set_global "$?CLASS", type_obj
    get_how $P219, type_obj
    $P220 = $P219."compose"(type_obj)
    .return ($P220)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "_block221"  :subid("25_1300051147.726") :outer("10_1300051147.726")
.annotate 'line', 14
    .const 'Sub' $P343 = "38_1300051147.726" 
    capture_lex $P343
    .const 'Sub' $P333 = "37_1300051147.726" 
    capture_lex $P333
    .const 'Sub' $P321 = "36_1300051147.726" 
    capture_lex $P321
    .const 'Sub' $P317 = "35_1300051147.726" 
    capture_lex $P317
    .const 'Sub' $P306 = "34_1300051147.726" 
    capture_lex $P306
    .const 'Sub' $P303 = "33_1300051147.726" 
    capture_lex $P303
    .const 'Sub' $P297 = "32_1300051147.726" 
    capture_lex $P297
    .const 'Sub' $P259 = "30_1300051147.726" 
    capture_lex $P259
    .const 'Sub' $P238 = "28_1300051147.726" 
    capture_lex $P238
    .const 'Sub' $P228 = "27_1300051147.726" 
    capture_lex $P228
    .const 'Sub' $P224 = "26_1300051147.726" 
    capture_lex $P224
    get_global $P223, "$?CLASS"
.annotate 'line', 56
    .const 'Sub' $P333 = "37_1300051147.726" 
    newclosure $P341, $P333
.annotate 'line', 14
    .return ($P341)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "" :load :init :subid("post51") :outer("25_1300051147.726")
.annotate 'line', 14
    get_hll_global $P222, ["NQPMu"], "_block221" 
    .local pmc block
    set block, $P222
    .const 'Sub' $P343 = "38_1300051147.726" 
    capture_lex $P343
    $P343()
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "_block342"  :anon :subid("38_1300051147.726") :outer("25_1300051147.726")
.annotate 'line', 14
    .const 'Sub' $P359 = "33_1300051147.726" 
    capture_lex $P359
    nqp_get_sc_object $P344, "1300051147.249", 3
    .local pmc type_obj
    set type_obj, $P344
    set_global "$?CLASS", type_obj
    get_how $P345, type_obj
    .const 'Sub' $P346 = "26_1300051147.726" 
    $P345."add_method"(type_obj, "CREATE", $P346)
    get_how $P347, type_obj
    .const 'Sub' $P348 = "27_1300051147.726" 
    $P347."add_method"(type_obj, "bless", $P348)
    get_how $P349, type_obj
    .const 'Sub' $P350 = "28_1300051147.726" 
    $P349."add_method"(type_obj, "BUILDALL", $P350)
    get_how $P351, type_obj
    .const 'Sub' $P352 = "30_1300051147.726" 
    $P351."add_method"(type_obj, "BUILD_MAGIC", $P352)
    get_how $P353, type_obj
    .const 'Sub' $P354 = "32_1300051147.726" 
    $P353."add_method"(type_obj, "new", $P354)
    get_how $P355, type_obj
    .const 'Sub' $P356 = "33_1300051147.726" 
    new $P357, "ResizablePMCArray"
    set_dispatchees $P356, $P357
    $P355."add_method"(type_obj, "Str", $P356)
    get_how $P358, type_obj
    .const 'Sub' $P359 = "33_1300051147.726" 
    newclosure $P362, $P359
    $P358."add_parrot_vtable_mapping"(type_obj, "get_string", $P362)
    get_how $P363, type_obj
    .const 'Sub' $P364 = "34_1300051147.726" 
    $P363."add_multi_method"(type_obj, "Str", $P364)
    get_how $P365, type_obj
    .const 'Sub' $P366 = "35_1300051147.726" 
    new $P367, "ResizablePMCArray"
    set_dispatchees $P366, $P367
    $P365."add_method"(type_obj, "ACCEPTS", $P366)
    get_how $P368, type_obj
    .const 'Sub' $P369 = "36_1300051147.726" 
    $P368."add_multi_method"(type_obj, "ACCEPTS", $P369)
    get_how $P370, type_obj
    .const 'Sub' $P371 = "37_1300051147.726" 
    $P370."add_method"(type_obj, "isa", $P371)
    get_how $P372, type_obj
    $P373 = $P372."compose"(type_obj)
    .return ($P373)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "Str" :instanceof("DispatcherSub") :subid("33_1300051147.726") :outer("38_1300051147.726")
    .param pmc param_360
.annotate 'line', 14
    .lex "self", param_360
    multi_dispatch_over_lexical_candidates $P361
    .return ($P361)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "CREATE"  :subid("26_1300051147.726") :outer("25_1300051147.726")
    .param pmc param_225
.annotate 'line', 15
    .lex "self", param_225
.annotate 'line', 16
    find_lex $P226, "self"
    repr_instance_of $P227, $P226
.annotate 'line', 15
    .return ($P227)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "bless"  :subid("27_1300051147.726") :outer("25_1300051147.726")
    .param pmc param_229
    .param pmc param_231 :slurpy :named
.annotate 'line', 20
    .lex "$self", param_229
    find_lex $P230, "$self"
    .lex "self", $P230
    .lex "%attributes", param_231
.annotate 'line', 21
    new $P232, "Undef"
    .lex "$instance", $P232
    find_lex $P233, "self"
    $P234 = $P233."CREATE"()
    store_lex "$instance", $P234
.annotate 'line', 22
    find_lex $P235, "$instance"
    find_lex $P236, "%attributes"
    $P235."BUILDALL"($P236 :flat)
    find_lex $P237, "$instance"
.annotate 'line', 20
    .return ($P237)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.include "except_types.pasm"
.sub "BUILDALL"  :subid("28_1300051147.726") :outer("25_1300051147.726")
    .param pmc param_239
    .param pmc param_241 :slurpy :named
.annotate 'line', 26
    .const 'Sub' $P250 = "29_1300051147.726" 
    capture_lex $P250
    .lex "$self", param_239
    find_lex $P240, "$self"
    .lex "self", $P240
    .lex "%attributes", param_241
.annotate 'line', 27
    find_lex $P243, "$self"
    get_how $P244, $P243
    find_lex $P245, "$self"
    $P246 = $P244."parents"($P245)
    defined $I247, $P246
    unless $I247, for_undef_52
    iter $P242, $P246
    new $P257, 'ExceptionHandler'
    set_label $P257, loop256_handler
    $P257."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P257
  loop256_test:
    unless $P242, loop256_done
    shift $P248, $P242
  loop256_redo:
    .const 'Sub' $P250 = "29_1300051147.726" 
    capture_lex $P250
    $P250($P248)
  loop256_next:
    goto loop256_test
  loop256_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P258, exception, 'type'
    eq $P258, .CONTROL_LOOP_NEXT, loop256_next
    eq $P258, .CONTROL_LOOP_REDO, loop256_redo
  loop256_done:
    pop_eh 
  for_undef_52:
.annotate 'line', 26
    .return ($P242)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "_block249"  :anon :subid("29_1300051147.726") :outer("28_1300051147.726")
    .param pmc param_251
.annotate 'line', 27
    .lex "$class", param_251
.annotate 'line', 28
    find_lex $P252, "$self"
    find_lex $P253, "$class"
    find_lex $P254, "%attributes"
    $P255 = $P252."BUILD_MAGIC"($P253, $P254 :flat)
.annotate 'line', 27
    .return ($P255)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.include "except_types.pasm"
.sub "BUILD_MAGIC"  :subid("30_1300051147.726") :outer("25_1300051147.726")
    .param pmc param_260
    .param pmc param_262
    .param pmc param_263 :slurpy :named
.annotate 'line', 32
    .const 'Sub' $P272 = "31_1300051147.726" 
    capture_lex $P272
    .lex "$self", param_260
    find_lex $P261, "$self"
    .lex "self", $P261
    .lex "$type", param_262
    .lex "%attributes", param_263
.annotate 'line', 33
    find_lex $P265, "$type"
    get_how $P266, $P265
    find_lex $P267, "$type"
    $P268 = $P266."attributes"($P267, 1 :named("local"))
    defined $I269, $P268
    unless $I269, for_undef_53
    iter $P264, $P268
    new $P295, 'ExceptionHandler'
    set_label $P295, loop294_handler
    $P295."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P295
  loop294_test:
    unless $P264, loop294_done
    shift $P270, $P264
  loop294_redo:
    .const 'Sub' $P272 = "31_1300051147.726" 
    capture_lex $P272
    $P272($P270)
  loop294_next:
    goto loop294_test
  loop294_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P296, exception, 'type'
    eq $P296, .CONTROL_LOOP_NEXT, loop294_next
    eq $P296, .CONTROL_LOOP_REDO, loop294_redo
  loop294_done:
    pop_eh 
  for_undef_53:
.annotate 'line', 32
    .return ($P264)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "_block271"  :anon :subid("31_1300051147.726") :outer("30_1300051147.726")
    .param pmc param_275
.annotate 'line', 34
    new $P273, "Undef"
    .lex "$name", $P273
.annotate 'line', 35
    new $P274, "Undef"
    .lex "$shortname", $P274
    .lex "$_", param_275
.annotate 'line', 34
    find_lex $P276, "$_"
    $P277 = $P276."name"()
    store_lex "$name", $P277
.annotate 'line', 35
    find_lex $P278, "$name"
    set $S279, $P278
    substr $S280, $S279, 2
    new $P281, 'String'
    set $P281, $S280
    store_lex "$shortname", $P281
.annotate 'line', 36
    find_lex $P285, "$shortname"
    find_lex $P284, "%attributes"
    exists $I286, $P284[$P285]
    if $I286, if_283
    new $P282, 'Integer'
    set $P282, $I286
    goto if_283_end
  if_283:
.annotate 'line', 37
    find_lex $P287, "$self"
    find_lex $P288, "$type"
    find_lex $P289, "$name"
    set $S290, $P289
    find_lex $P291, "$shortname"
    find_lex $P292, "%attributes"
    unless_null $P292, vivify_54
    $P292 = root_new ['parrot';'Hash']
  vivify_54:
    set $P293, $P292[$P291]
    unless_null $P293, vivify_55
    new $P293, "Undef"
  vivify_55:
    setattribute $P287, $P288, $S290, $P293
  if_283_end:
.annotate 'line', 33
    .return ($P282)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "new"  :subid("32_1300051147.726") :outer("25_1300051147.726")
    .param pmc param_298
    .param pmc param_299 :slurpy :named
.annotate 'line', 42
    .lex "self", param_298
    .lex "%attributes", param_299
.annotate 'line', 43
    find_lex $P300, "self"
    find_lex $P301, "%attributes"
    $P302 = $P300."bless"($P301 :flat)
.annotate 'line', 42
    .return ($P302)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "Str" :instanceof("DispatcherSub") :subid("33_1300051147.726") :outer("25_1300051147.726")
    .param pmc param_304
.annotate 'line', 42
    .lex "self", param_304
    multi_dispatch_over_lexical_candidates $P305
    .return ($P305)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "Str"  :subid("34_1300051147.726") :outer("25_1300051147.726")
    .param pmc param_307
.annotate 'line', 47
    .lex "$self", param_307
    find_lex $P308, "$self"
    .lex "self", $P308
.annotate 'line', 48
    find_lex $P309, "self"
    get_how $P310, $P309
    find_lex $P311, "self"
    $P312 = $P310."name"($P311)
    concat $P313, $P312, "()"
.annotate 'line', 47
    .return ($P313)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "" :load :init :subid("post56") :outer("34_1300051147.726")
.annotate 'line', 47
    .const 'Sub' $P306 = "34_1300051147.726" 
    .local pmc block
    set block, $P306
    get_hll_global $P314, "Mu"
    new $P315, "ResizablePMCArray"
    push $P315, $P314
    new $P316, "ResizablePMCArray"
    push $P316, 2
    set_sub_multisig block, $P315, $P316
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "ACCEPTS" :instanceof("DispatcherSub") :subid("35_1300051147.726") :outer("25_1300051147.726")
    .param pmc param_318
    .param pmc param_319
.annotate 'line', 47
    .lex "self", param_318
.annotate 'line', 51
    .lex "$topic", param_319
.annotate 'line', 47
    multi_dispatch_over_lexical_candidates $P320
    .return ($P320)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "ACCEPTS"  :subid("36_1300051147.726") :outer("25_1300051147.726")
    .param pmc param_322
    .param pmc param_324
.annotate 'line', 52
    .lex "$self", param_322
    find_lex $P323, "$self"
    .lex "self", $P323
    .lex "$topic", param_324
.annotate 'line', 53
    find_lex $P325, "$topic"
    find_lex $P326, "self"
    get_what $P327, $P326
    type_check $I328, $P325, $P327
.annotate 'line', 52
    .return ($I328)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "" :load :init :subid("post57") :outer("36_1300051147.726")
.annotate 'line', 52
    .const 'Sub' $P321 = "36_1300051147.726" 
    .local pmc block
    set block, $P321
    get_hll_global $P329, "NQPMu"
    null $P330
    new $P331, "ResizablePMCArray"
    push $P331, $P329
    push $P331, $P330
    new $P332, "ResizablePMCArray"
    push $P332, 2
    push $P332, 0
    set_sub_multisig block, $P331, $P332
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "isa"  :subid("37_1300051147.726") :outer("25_1300051147.726")
    .param pmc param_334
    .param pmc param_335
.annotate 'line', 56
    .lex "self", param_334
    .lex "$type", param_335
.annotate 'line', 57
    find_lex $P336, "self"
    get_how $P337, $P336
    find_lex $P338, "self"
    find_lex $P339, "$type"
    $P340 = $P337."isa"($P338, $P339)
.annotate 'line', 56
    .return ($P340)
.end


.HLL "nqp"

.namespace []
.sub "_block381" :load :anon :subid("39_1300051147.726")
.annotate 'line', 1
    .const 'Sub' $P383 = "10_1300051147.726" 
    $P384 = $P383()
    .return ($P384)
.end

