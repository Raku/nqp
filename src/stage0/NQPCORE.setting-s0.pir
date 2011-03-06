
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1299450608.364")
.annotate 'line', 0
    .const 'Sub' $P107 = "17_1299450608.364" 
    capture_lex $P107
    .const 'Sub' $P74 = "15_1299450608.364" 
    capture_lex $P74
    .const 'Sub' $P62 = "14_1299450608.364" 
    capture_lex $P62
    .const 'Sub' $P51 = "13_1299450608.364" 
    capture_lex $P51
    .const 'Sub' $P46 = "12_1299450608.364" 
    capture_lex $P46
    .const 'Sub' $P13 = "11_1299450608.364" 
    capture_lex $P13
.annotate 'line', 1
    nqp_dynop_setup 
.annotate 'line', 17
    .const 'Sub' $P13 = "11_1299450608.364" 
    newclosure $P45, $P13
    .lex "open", $P45
.annotate 'line', 29
    .const 'Sub' $P46 = "12_1299450608.364" 
    newclosure $P50, $P46
    .lex "close", $P50
.annotate 'line', 37
    .const 'Sub' $P51 = "13_1299450608.364" 
    newclosure $P61, $P51
    .lex "slurp", $P61
.annotate 'line', 49
    .const 'Sub' $P62 = "14_1299450608.364" 
    newclosure $P73, $P62
    .lex "spew", $P73
.annotate 'line', 70
    .const 'Sub' $P74 = "15_1299450608.364" 
    newclosure $P106, $P74
    .lex "match", $P106
.annotate 'line', 92
    .const 'Sub' $P107 = "17_1299450608.364" 
    newclosure $P193, $P107
    .lex "subst", $P193
.annotate 'line', 1
    find_lex $P194, "open"
    find_lex $P195, "close"
    find_lex $P196, "slurp"
    find_lex $P197, "spew"
    find_lex $P198, "match"
    find_lex $P199, "subst"
    new $P200, "Integer"
    assign $P200, 1
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
    .return ()
    .const 'Sub' $P202 = "19_1299450608.364" 
    .return ($P202)
.end


.HLL "nqp"

.namespace []
.sub "open"  :subid("11_1299450608.364") :outer("10_1299450608.364")
    .param pmc param_14
    .param pmc param_15 :optional :named("r")
    .param int has_param_15 :opt_flag
    .param pmc param_17 :optional :named("w")
    .param int has_param_17 :opt_flag
    .param pmc param_19 :optional :named("a")
    .param int has_param_19 :opt_flag
    .param pmc param_21 :optional :named("bin")
    .param int has_param_21 :opt_flag
.annotate 'line', 17
    .lex "$filename", param_14
    if has_param_15, optparam_20
    new $P16, "Undef"
    set param_15, $P16
  optparam_20:
    .lex "$r", param_15
    if has_param_17, optparam_21
    new $P18, "Undef"
    set param_17, $P18
  optparam_21:
    .lex "$w", param_17
    if has_param_19, optparam_22
    new $P20, "Undef"
    set param_19, $P20
  optparam_22:
    .lex "$a", param_19
    if has_param_21, optparam_23
    new $P22, "Undef"
    set param_21, $P22
  optparam_23:
    .lex "$bin", param_21
.annotate 'line', 18
    new $P23, "Undef"
    .lex "$mode", $P23
.annotate 'line', 19
    new $P24, "Undef"
    .lex "$handle", $P24
.annotate 'line', 18
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
.annotate 'line', 19
    new $P34, "FileHandle"
    store_lex "$handle", $P34
.annotate 'line', 20
    find_lex $P35, "$handle"
    find_lex $P36, "$filename"
    find_lex $P37, "$mode"
    $P35."open"($P36, $P37)
.annotate 'line', 21
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
.annotate 'line', 17
    .return ($P44)
.end


.HLL "nqp"

.namespace []
.sub "close"  :subid("12_1299450608.364") :outer("10_1299450608.364")
    .param pmc param_47
.annotate 'line', 29
    .lex "$handle", param_47
.annotate 'line', 30
    find_lex $P48, "$handle"
    $P49 = $P48."close"()
.annotate 'line', 29
    .return ($P49)
.end


.HLL "nqp"

.namespace []
.sub "slurp"  :subid("13_1299450608.364") :outer("10_1299450608.364")
    .param pmc param_52
.annotate 'line', 37
    .lex "$filename", param_52
.annotate 'line', 38
    new $P53, "Undef"
    .lex "$handle", $P53
.annotate 'line', 39
    new $P54, "Undef"
    .lex "$contents", $P54
.annotate 'line', 38
    find_lex $P55, "$filename"
    $P56 = "open"($P55, 1 :named("r"))
    store_lex "$handle", $P56
.annotate 'line', 39
    find_lex $P57, "$handle"
    $P58 = $P57."readall"()
    store_lex "$contents", $P58
.annotate 'line', 40
    find_lex $P59, "$handle"
    $P59."close"()
    find_lex $P60, "$contents"
.annotate 'line', 37
    .return ($P60)
.end


.HLL "nqp"

.namespace []
.sub "spew"  :subid("14_1299450608.364") :outer("10_1299450608.364")
    .param pmc param_63
    .param pmc param_64
.annotate 'line', 49
    .lex "$filename", param_63
    .lex "$contents", param_64
.annotate 'line', 50
    new $P65, "Undef"
    .lex "$handle", $P65
    new $P66, "FileHandle"
    store_lex "$handle", $P66
.annotate 'line', 51
    find_lex $P67, "$handle"
    find_lex $P68, "$filename"
    $P67."open"($P68, "w")
.annotate 'line', 52
    find_lex $P69, "$handle"
    find_lex $P70, "$contents"
    $P69."print"($P70)
.annotate 'line', 53
    find_lex $P71, "$handle"
    $P72 = $P71."close"()
.annotate 'line', 49
    .return ($P72)
.end


.HLL "nqp"

.namespace []
.sub "match"  :subid("15_1299450608.364") :outer("10_1299450608.364")
    .param pmc param_75
    .param pmc param_76
    .param pmc param_77 :optional :named("global")
    .param int has_param_77 :opt_flag
.annotate 'line', 70
    .const 'Sub' $P87 = "16_1299450608.364" 
    capture_lex $P87
    .lex "$text", param_75
    .lex "$regex", param_76
    if has_param_77, optparam_24
    new $P78, "Undef"
    set param_77, $P78
  optparam_24:
    .lex "$global", param_77
.annotate 'line', 71
    new $P79, "Undef"
    .lex "$match", $P79
    find_lex $P80, "$regex"
    find_lex $P81, "$text"
    $P82 = $P80."ACCEPTS"($P81)
    store_lex "$match", $P82
.annotate 'line', 72
    find_lex $P85, "$global"
    if $P85, if_84
.annotate 'line', 80
    find_lex $P105, "$match"
    set $P83, $P105
.annotate 'line', 72
    goto if_84_end
  if_84:
    .const 'Sub' $P87 = "16_1299450608.364" 
    capture_lex $P87
    $P104 = $P87()
    set $P83, $P104
  if_84_end:
.annotate 'line', 70
    .return ($P83)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "_block86"  :anon :subid("16_1299450608.364") :outer("15_1299450608.364")
.annotate 'line', 73
    $P88 = root_new ['parrot';'ResizablePMCArray']
    .lex "@matches", $P88
.annotate 'line', 72
    find_lex $P89, "@matches"
.annotate 'line', 74
    new $P101, 'ExceptionHandler'
    set_label $P101, loop100_handler
    $P101."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P101
  loop100_test:
    find_lex $P90, "$match"
    unless $P90, loop100_done
  loop100_redo:
.annotate 'line', 75
    find_lex $P91, "@matches"
    find_lex $P92, "$match"
    $P91."push"($P92)
.annotate 'line', 76
    find_lex $P93, "$match"
    $P94 = $P93."CURSOR"()
    find_lex $P95, "$text"
    find_lex $P96, "$regex"
    find_lex $P97, "$match"
    $P98 = $P97."to"()
    $P99 = $P94."parse"($P95, $P96 :named("rule"), $P98 :named("c"))
    store_lex "$match", $P99
  loop100_next:
.annotate 'line', 74
    goto loop100_test
  loop100_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P102, exception, 'type'
    eq $P102, .CONTROL_LOOP_NEXT, loop100_next
    eq $P102, .CONTROL_LOOP_REDO, loop100_redo
  loop100_done:
    pop_eh 
    find_lex $P103, "@matches"
.annotate 'line', 72
    .return ($P103)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "subst"  :subid("17_1299450608.364") :outer("10_1299450608.364")
    .param pmc param_108
    .param pmc param_109
    .param pmc param_110
    .param pmc param_111 :optional :named("global")
    .param int has_param_111 :opt_flag
.annotate 'line', 92
    .const 'Sub' $P138 = "18_1299450608.364" 
    capture_lex $P138
    .lex "$text", param_108
    .lex "$regex", param_109
    .lex "$repl", param_110
    if has_param_111, optparam_25
    new $P112, "Undef"
    set param_111, $P112
  optparam_25:
    .lex "$global", param_111
.annotate 'line', 93
    $P113 = root_new ['parrot';'ResizablePMCArray']
    .lex "@matches", $P113
.annotate 'line', 95
    new $P114, "Undef"
    .lex "$is_code", $P114
.annotate 'line', 96
    new $P115, "Undef"
    .lex "$offset", $P115
.annotate 'line', 97
    new $P116, "Undef"
    .lex "$result", $P116
.annotate 'line', 108
    new $P117, "Undef"
    .lex "$chars", $P117
.annotate 'line', 93
    find_lex $P120, "$global"
    if $P120, if_119
.annotate 'line', 94
    find_lex $P124, "$regex"
    find_lex $P125, "$text"
    $P126 = $P124."ACCEPTS"($P125)
    new $P127, "ResizablePMCArray"
    push $P127, $P126
.annotate 'line', 93
    set $P118, $P127
    goto if_119_end
  if_119:
    find_lex $P121, "$text"
    find_lex $P122, "$regex"
    $P123 = "match"($P121, $P122, 1 :named("global"))
    set $P118, $P123
  if_119_end:
    store_lex "@matches", $P118
.annotate 'line', 95
    find_lex $P128, "$repl"
    isa $I129, $P128, "Sub"
    new $P130, 'Integer'
    set $P130, $I129
    store_lex "$is_code", $P130
.annotate 'line', 96
    new $P131, "Integer"
    assign $P131, 0
    store_lex "$offset", $P131
.annotate 'line', 97
    new $P132, "StringBuilder"
    store_lex "$result", $P132
.annotate 'line', 99
    find_lex $P134, "@matches"
    defined $I135, $P134
    unless $I135, for_undef_26
    iter $P133, $P134
    new $P171, 'ExceptionHandler'
    set_label $P171, loop170_handler
    $P171."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P171
  loop170_test:
    unless $P133, loop170_done
    shift $P136, $P133
  loop170_redo:
    .const 'Sub' $P138 = "18_1299450608.364" 
    capture_lex $P138
    $P138($P136)
  loop170_next:
    goto loop170_test
  loop170_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P172, exception, 'type'
    eq $P172, .CONTROL_LOOP_NEXT, loop170_next
    eq $P172, .CONTROL_LOOP_REDO, loop170_redo
  loop170_done:
    pop_eh 
  for_undef_26:
.annotate 'line', 108
    find_lex $P173, "$text"
    set $S174, $P173
    length $I175, $S174
    new $P176, 'Integer'
    set $P176, $I175
    store_lex "$chars", $P176
.annotate 'line', 110
    find_lex $P178, "$chars"
    set $N179, $P178
    find_lex $P180, "$offset"
    set $N181, $P180
    isgt $I182, $N179, $N181
    unless $I182, if_177_end
.annotate 'line', 109
    find_lex $P183, "$result"
    find_lex $P184, "$text"
    set $S185, $P184
    find_lex $P186, "$offset"
    set $I187, $P186
    find_lex $P188, "$chars"
    set $I189, $P188
    substr $S190, $S185, $I187, $I189
    push $P183, $S190
  if_177_end:
.annotate 'line', 112
    find_lex $P191, "$result"
    set $S192, $P191
.annotate 'line', 92
    .return ($S192)
.end


.HLL "nqp"

.namespace []
.sub "_block137"  :anon :subid("18_1299450608.364") :outer("17_1299450608.364")
    .param pmc param_139
.annotate 'line', 99
    .lex "$match", param_139
.annotate 'line', 100
    find_lex $P142, "$match"
    if $P142, if_141
    set $P140, $P142
    goto if_141_end
  if_141:
.annotate 'line', 102
    find_lex $P144, "$match"
    $N145 = $P144."from"()
    find_lex $P146, "$offset"
    set $N147, $P146
    isgt $I148, $N145, $N147
    unless $I148, if_143_end
.annotate 'line', 101
    find_lex $P149, "$result"
    find_lex $P150, "$text"
    set $S151, $P150
    find_lex $P152, "$offset"
    set $I153, $P152
    find_lex $P154, "$match"
    $P155 = $P154."from"()
    find_lex $P156, "$offset"
    sub $P157, $P155, $P156
    set $I158, $P157
    substr $S159, $S151, $I153, $I158
    push $P149, $S159
  if_143_end:
.annotate 'line', 103
    find_lex $P160, "$result"
    find_lex $P163, "$is_code"
    if $P163, if_162
    find_lex $P167, "$repl"
    set $P161, $P167
    goto if_162_end
  if_162:
    find_lex $P164, "$repl"
    find_lex $P165, "$match"
    $P166 = $P164($P165)
    set $P161, $P166
  if_162_end:
    push $P160, $P161
.annotate 'line', 104
    find_lex $P168, "$match"
    $P169 = $P168."to"()
    store_lex "$offset", $P169
.annotate 'line', 100
    set $P140, $P169
  if_141_end:
.annotate 'line', 99
    .return ($P140)
.end


.HLL "nqp"

.namespace []
.sub "_block201" :load :anon :subid("19_1299450608.364")
.annotate 'line', 1
    .const 'Sub' $P203 = "10_1299450608.364" 
    $P204 = $P203()
    .return ($P204)
.end

