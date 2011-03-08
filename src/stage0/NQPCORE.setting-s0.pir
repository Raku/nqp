
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1299578060.323")
.annotate 'line', 0
    .const 'Sub' $P110 = "17_1299578060.323" 
    capture_lex $P110
    .const 'Sub' $P77 = "15_1299578060.323" 
    capture_lex $P77
    .const 'Sub' $P65 = "14_1299578060.323" 
    capture_lex $P65
    .const 'Sub' $P54 = "13_1299578060.323" 
    capture_lex $P54
    .const 'Sub' $P49 = "12_1299578060.323" 
    capture_lex $P49
    .const 'Sub' $P16 = "11_1299578060.323" 
    capture_lex $P16
.annotate 'line', 1
    getinterp $P13
    get_class $P14, "LexPad"
    get_class $P15, "NQPLexPad"
    $P13."hll_map"($P14, $P15)
.annotate 'line', 17
    .const 'Sub' $P16 = "11_1299578060.323" 
    newclosure $P48, $P16
    .lex "open", $P48
.annotate 'line', 29
    .const 'Sub' $P49 = "12_1299578060.323" 
    newclosure $P53, $P49
    .lex "close", $P53
.annotate 'line', 37
    .const 'Sub' $P54 = "13_1299578060.323" 
    newclosure $P64, $P54
    .lex "slurp", $P64
.annotate 'line', 49
    .const 'Sub' $P65 = "14_1299578060.323" 
    newclosure $P76, $P65
    .lex "spew", $P76
.annotate 'line', 70
    .const 'Sub' $P77 = "15_1299578060.323" 
    newclosure $P109, $P77
    .lex "match", $P109
.annotate 'line', 92
    .const 'Sub' $P110 = "17_1299578060.323" 
    newclosure $P196, $P110
    .lex "subst", $P196
.annotate 'line', 1
    find_lex $P197, "open"
    find_lex $P198, "close"
    find_lex $P199, "slurp"
    find_lex $P200, "spew"
    find_lex $P201, "match"
    find_lex $P202, "subst"
    new $P203, "Integer"
    assign $P203, 1
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
    .return ()
    .const 'Sub' $P205 = "19_1299578060.323" 
    .return ($P205)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post20") :outer("10_1299578060.323")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1299578060.323" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P209, "1299578060.045"
    isnull $I210, $P209
    if $I210, if_208
    goto if_208_end
  if_208:
    nqp_dynop_setup 
    nqp_create_sc $P211, "1299578060.045"
  if_208_end:
.end


.HLL "nqp"

.namespace []
.sub "open"  :subid("11_1299578060.323") :outer("10_1299578060.323")
    .param pmc param_17
    .param pmc param_18 :optional :named("r")
    .param int has_param_18 :opt_flag
    .param pmc param_20 :optional :named("w")
    .param int has_param_20 :opt_flag
    .param pmc param_22 :optional :named("a")
    .param int has_param_22 :opt_flag
    .param pmc param_24 :optional :named("bin")
    .param int has_param_24 :opt_flag
.annotate 'line', 17
    .lex "$filename", param_17
    if has_param_18, optparam_21
    new $P19, "Undef"
    set param_18, $P19
  optparam_21:
    .lex "$r", param_18
    if has_param_20, optparam_22
    new $P21, "Undef"
    set param_20, $P21
  optparam_22:
    .lex "$w", param_20
    if has_param_22, optparam_23
    new $P23, "Undef"
    set param_22, $P23
  optparam_23:
    .lex "$a", param_22
    if has_param_24, optparam_24
    new $P25, "Undef"
    set param_24, $P25
  optparam_24:
    .lex "$bin", param_24
.annotate 'line', 18
    new $P26, "Undef"
    .lex "$mode", $P26
.annotate 'line', 19
    new $P27, "Undef"
    .lex "$handle", $P27
.annotate 'line', 18
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
.annotate 'line', 19
    new $P37, "FileHandle"
    store_lex "$handle", $P37
.annotate 'line', 20
    find_lex $P38, "$handle"
    find_lex $P39, "$filename"
    find_lex $P40, "$mode"
    $P38."open"($P39, $P40)
.annotate 'line', 21
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
.annotate 'line', 17
    .return ($P47)
.end


.HLL "nqp"

.namespace []
.sub "close"  :subid("12_1299578060.323") :outer("10_1299578060.323")
    .param pmc param_50
.annotate 'line', 29
    .lex "$handle", param_50
.annotate 'line', 30
    find_lex $P51, "$handle"
    $P52 = $P51."close"()
.annotate 'line', 29
    .return ($P52)
.end


.HLL "nqp"

.namespace []
.sub "slurp"  :subid("13_1299578060.323") :outer("10_1299578060.323")
    .param pmc param_55
.annotate 'line', 37
    .lex "$filename", param_55
.annotate 'line', 38
    new $P56, "Undef"
    .lex "$handle", $P56
.annotate 'line', 39
    new $P57, "Undef"
    .lex "$contents", $P57
.annotate 'line', 38
    find_lex $P58, "$filename"
    $P59 = "open"($P58, 1 :named("r"))
    store_lex "$handle", $P59
.annotate 'line', 39
    find_lex $P60, "$handle"
    $P61 = $P60."readall"()
    store_lex "$contents", $P61
.annotate 'line', 40
    find_lex $P62, "$handle"
    $P62."close"()
    find_lex $P63, "$contents"
.annotate 'line', 37
    .return ($P63)
.end


.HLL "nqp"

.namespace []
.sub "spew"  :subid("14_1299578060.323") :outer("10_1299578060.323")
    .param pmc param_66
    .param pmc param_67
.annotate 'line', 49
    .lex "$filename", param_66
    .lex "$contents", param_67
.annotate 'line', 50
    new $P68, "Undef"
    .lex "$handle", $P68
    new $P69, "FileHandle"
    store_lex "$handle", $P69
.annotate 'line', 51
    find_lex $P70, "$handle"
    find_lex $P71, "$filename"
    $P70."open"($P71, "w")
.annotate 'line', 52
    find_lex $P72, "$handle"
    find_lex $P73, "$contents"
    $P72."print"($P73)
.annotate 'line', 53
    find_lex $P74, "$handle"
    $P75 = $P74."close"()
.annotate 'line', 49
    .return ($P75)
.end


.HLL "nqp"

.namespace []
.sub "match"  :subid("15_1299578060.323") :outer("10_1299578060.323")
    .param pmc param_78
    .param pmc param_79
    .param pmc param_80 :optional :named("global")
    .param int has_param_80 :opt_flag
.annotate 'line', 70
    .const 'Sub' $P90 = "16_1299578060.323" 
    capture_lex $P90
    .lex "$text", param_78
    .lex "$regex", param_79
    if has_param_80, optparam_25
    new $P81, "Undef"
    set param_80, $P81
  optparam_25:
    .lex "$global", param_80
.annotate 'line', 71
    new $P82, "Undef"
    .lex "$match", $P82
    find_lex $P83, "$regex"
    find_lex $P84, "$text"
    $P85 = $P83."ACCEPTS"($P84)
    store_lex "$match", $P85
.annotate 'line', 72
    find_lex $P88, "$global"
    if $P88, if_87
.annotate 'line', 80
    find_lex $P108, "$match"
    set $P86, $P108
.annotate 'line', 72
    goto if_87_end
  if_87:
    .const 'Sub' $P90 = "16_1299578060.323" 
    capture_lex $P90
    $P107 = $P90()
    set $P86, $P107
  if_87_end:
.annotate 'line', 70
    .return ($P86)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "_block89"  :anon :subid("16_1299578060.323") :outer("15_1299578060.323")
.annotate 'line', 73
    $P91 = root_new ['parrot';'ResizablePMCArray']
    .lex "@matches", $P91
.annotate 'line', 72
    find_lex $P92, "@matches"
.annotate 'line', 74
    new $P104, 'ExceptionHandler'
    set_label $P104, loop103_handler
    $P104."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P104
  loop103_test:
    find_lex $P93, "$match"
    unless $P93, loop103_done
  loop103_redo:
.annotate 'line', 75
    find_lex $P94, "@matches"
    find_lex $P95, "$match"
    $P94."push"($P95)
.annotate 'line', 76
    find_lex $P96, "$match"
    $P97 = $P96."CURSOR"()
    find_lex $P98, "$text"
    find_lex $P99, "$regex"
    find_lex $P100, "$match"
    $P101 = $P100."to"()
    $P102 = $P97."parse"($P98, $P99 :named("rule"), $P101 :named("c"))
    store_lex "$match", $P102
  loop103_next:
.annotate 'line', 74
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
.annotate 'line', 72
    .return ($P106)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "subst"  :subid("17_1299578060.323") :outer("10_1299578060.323")
    .param pmc param_111
    .param pmc param_112
    .param pmc param_113
    .param pmc param_114 :optional :named("global")
    .param int has_param_114 :opt_flag
.annotate 'line', 92
    .const 'Sub' $P141 = "18_1299578060.323" 
    capture_lex $P141
    .lex "$text", param_111
    .lex "$regex", param_112
    .lex "$repl", param_113
    if has_param_114, optparam_26
    new $P115, "Undef"
    set param_114, $P115
  optparam_26:
    .lex "$global", param_114
.annotate 'line', 93
    $P116 = root_new ['parrot';'ResizablePMCArray']
    .lex "@matches", $P116
.annotate 'line', 95
    new $P117, "Undef"
    .lex "$is_code", $P117
.annotate 'line', 96
    new $P118, "Undef"
    .lex "$offset", $P118
.annotate 'line', 97
    new $P119, "Undef"
    .lex "$result", $P119
.annotate 'line', 108
    new $P120, "Undef"
    .lex "$chars", $P120
.annotate 'line', 93
    find_lex $P123, "$global"
    if $P123, if_122
.annotate 'line', 94
    find_lex $P127, "$regex"
    find_lex $P128, "$text"
    $P129 = $P127."ACCEPTS"($P128)
    new $P130, "ResizablePMCArray"
    push $P130, $P129
.annotate 'line', 93
    set $P121, $P130
    goto if_122_end
  if_122:
    find_lex $P124, "$text"
    find_lex $P125, "$regex"
    $P126 = "match"($P124, $P125, 1 :named("global"))
    set $P121, $P126
  if_122_end:
    store_lex "@matches", $P121
.annotate 'line', 95
    find_lex $P131, "$repl"
    isa $I132, $P131, "Sub"
    new $P133, 'Integer'
    set $P133, $I132
    store_lex "$is_code", $P133
.annotate 'line', 96
    new $P134, "Integer"
    assign $P134, 0
    store_lex "$offset", $P134
.annotate 'line', 97
    new $P135, "StringBuilder"
    store_lex "$result", $P135
.annotate 'line', 99
    find_lex $P137, "@matches"
    defined $I138, $P137
    unless $I138, for_undef_27
    iter $P136, $P137
    new $P174, 'ExceptionHandler'
    set_label $P174, loop173_handler
    $P174."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P174
  loop173_test:
    unless $P136, loop173_done
    shift $P139, $P136
  loop173_redo:
    .const 'Sub' $P141 = "18_1299578060.323" 
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
  for_undef_27:
.annotate 'line', 108
    find_lex $P176, "$text"
    set $S177, $P176
    length $I178, $S177
    new $P179, 'Integer'
    set $P179, $I178
    store_lex "$chars", $P179
.annotate 'line', 110
    find_lex $P181, "$chars"
    set $N182, $P181
    find_lex $P183, "$offset"
    set $N184, $P183
    isgt $I185, $N182, $N184
    unless $I185, if_180_end
.annotate 'line', 109
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
.annotate 'line', 112
    find_lex $P194, "$result"
    set $S195, $P194
.annotate 'line', 92
    .return ($S195)
.end


.HLL "nqp"

.namespace []
.sub "_block140"  :anon :subid("18_1299578060.323") :outer("17_1299578060.323")
    .param pmc param_142
.annotate 'line', 99
    .lex "$match", param_142
.annotate 'line', 100
    find_lex $P145, "$match"
    if $P145, if_144
    set $P143, $P145
    goto if_144_end
  if_144:
.annotate 'line', 102
    find_lex $P147, "$match"
    $N148 = $P147."from"()
    find_lex $P149, "$offset"
    set $N150, $P149
    isgt $I151, $N148, $N150
    unless $I151, if_146_end
.annotate 'line', 101
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
.annotate 'line', 103
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
.annotate 'line', 104
    find_lex $P171, "$match"
    $P172 = $P171."to"()
    store_lex "$offset", $P172
.annotate 'line', 100
    set $P143, $P172
  if_144_end:
.annotate 'line', 99
    .return ($P143)
.end


.HLL "nqp"

.namespace []
.sub "_block204" :load :anon :subid("19_1299578060.323")
.annotate 'line', 1
    .const 'Sub' $P206 = "10_1299578060.323" 
    $P207 = $P206()
    .return ($P207)
.end

