
.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1298822555.375")
.annotate 'line', 0
    get_hll_global $P226, ["NQPMu"], "_block225" 
    capture_lex $P226
    get_hll_global $P217, ["str"], "_block216" 
    capture_lex $P217
    get_hll_global $P208, ["num"], "_block207" 
    capture_lex $P208
    get_hll_global $P199, ["int"], "_block198" 
    capture_lex $P199
    .const 'Sub' $P111 = "17_1298822555.375" 
    capture_lex $P111
    .const 'Sub' $P78 = "15_1298822555.375" 
    capture_lex $P78
    .const 'Sub' $P66 = "14_1298822555.375" 
    capture_lex $P66
    .const 'Sub' $P55 = "13_1298822555.375" 
    capture_lex $P55
    .const 'Sub' $P50 = "12_1298822555.375" 
    capture_lex $P50
    .const 'Sub' $P17 = "11_1298822555.375" 
    capture_lex $P17
.annotate 'line', 1
    nqp_dynop_setup 
    get_hll_global $P13, "NQPMu"
    get_hll_global $P14, "str"
    get_hll_global $P15, "num"
    get_hll_global $P16, "int"
.annotate 'line', 73
    .const 'Sub' $P17 = "11_1298822555.375" 
    newclosure $P49, $P17
    .lex "open", $P49
.annotate 'line', 85
    .const 'Sub' $P50 = "12_1298822555.375" 
    newclosure $P54, $P50
    .lex "close", $P54
.annotate 'line', 93
    .const 'Sub' $P55 = "13_1298822555.375" 
    newclosure $P65, $P55
    .lex "slurp", $P65
.annotate 'line', 105
    .const 'Sub' $P66 = "14_1298822555.375" 
    newclosure $P77, $P66
    .lex "spew", $P77
.annotate 'line', 126
    .const 'Sub' $P78 = "15_1298822555.375" 
    newclosure $P110, $P78
    .lex "match", $P110
.annotate 'line', 148
    .const 'Sub' $P111 = "17_1298822555.375" 
    newclosure $P197, $P111
    .lex "subst", $P197
.annotate 'line', 1
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 7
    get_hll_global $P199, ["int"], "_block198" 
    capture_lex $P199
    $P199()
.annotate 'line', 9
    get_hll_global $P208, ["num"], "_block207" 
    capture_lex $P208
    $P208()
.annotate 'line', 11
    get_hll_global $P217, ["str"], "_block216" 
    capture_lex $P217
    $P217()
.annotate 'line', 14
    get_hll_global $P226, ["NQPMu"], "_block225" 
    capture_lex $P226
    $P226()
    find_lex $P379, "open"
    find_lex $P380, "close"
    find_lex $P381, "slurp"
    find_lex $P382, "spew"
    find_lex $P383, "match"
    find_lex $P384, "subst"
.annotate 'line', 1
    .return ($P384)
    .const 'Sub' $P386 = "39_1298822555.375" 
    .return ($P386)
.end


.namespace []
.sub "open"  :subid("11_1298822555.375") :outer("10_1298822555.375")
    .param pmc param_18
    .param pmc param_19 :optional :named("r")
    .param int has_param_19 :opt_flag
    .param pmc param_21 :optional :named("w")
    .param int has_param_21 :opt_flag
    .param pmc param_23 :optional :named("a")
    .param int has_param_23 :opt_flag
    .param pmc param_25 :optional :named("bin")
    .param int has_param_25 :opt_flag
.annotate 'line', 73
    .lex "$filename", param_18
    if has_param_19, optparam_40
    new $P20, "Undef"
    set param_19, $P20
  optparam_40:
    .lex "$r", param_19
    if has_param_21, optparam_41
    new $P22, "Undef"
    set param_21, $P22
  optparam_41:
    .lex "$w", param_21
    if has_param_23, optparam_42
    new $P24, "Undef"
    set param_23, $P24
  optparam_42:
    .lex "$a", param_23
    if has_param_25, optparam_43
    new $P26, "Undef"
    set param_25, $P26
  optparam_43:
    .lex "$bin", param_25
.annotate 'line', 74
    new $P27, "Undef"
    .lex "$mode", $P27
.annotate 'line', 75
    new $P28, "Undef"
    .lex "$handle", $P28
.annotate 'line', 74
    find_lex $P31, "$w"
    if $P31, if_30
    find_lex $P35, "$a"
    if $P35, if_34
    new $P37, "String"
    assign $P37, "r"
    set $P33, $P37
    goto if_34_end
  if_34:
    new $P36, "String"
    assign $P36, "wa"
    set $P33, $P36
  if_34_end:
    set $P29, $P33
    goto if_30_end
  if_30:
    new $P32, "String"
    assign $P32, "w"
    set $P29, $P32
  if_30_end:
    store_lex "$mode", $P29
.annotate 'line', 75
    new $P38, "FileHandle"
    store_lex "$handle", $P38
.annotate 'line', 76
    find_lex $P39, "$handle"
    find_lex $P40, "$filename"
    find_lex $P41, "$mode"
    $P39."open"($P40, $P41)
.annotate 'line', 77
    find_lex $P42, "$handle"
    find_lex $P45, "$bin"
    if $P45, if_44
    new $P47, "String"
    assign $P47, "utf8"
    set $P43, $P47
    goto if_44_end
  if_44:
    new $P46, "String"
    assign $P46, "binary"
    set $P43, $P46
  if_44_end:
    $P42."encoding"($P43)
    find_lex $P48, "$handle"
.annotate 'line', 73
    .return ($P48)
.end


.namespace []
.sub "close"  :subid("12_1298822555.375") :outer("10_1298822555.375")
    .param pmc param_51
.annotate 'line', 85
    .lex "$handle", param_51
.annotate 'line', 86
    find_lex $P52, "$handle"
    $P53 = $P52."close"()
.annotate 'line', 85
    .return ($P53)
.end


.namespace []
.sub "slurp"  :subid("13_1298822555.375") :outer("10_1298822555.375")
    .param pmc param_56
.annotate 'line', 93
    .lex "$filename", param_56
.annotate 'line', 94
    new $P57, "Undef"
    .lex "$handle", $P57
.annotate 'line', 95
    new $P58, "Undef"
    .lex "$contents", $P58
.annotate 'line', 94
    find_lex $P59, "$filename"
    $P60 = "open"($P59, 1 :named("r"))
    store_lex "$handle", $P60
.annotate 'line', 95
    find_lex $P61, "$handle"
    $P62 = $P61."readall"()
    store_lex "$contents", $P62
.annotate 'line', 96
    find_lex $P63, "$handle"
    $P63."close"()
    find_lex $P64, "$contents"
.annotate 'line', 93
    .return ($P64)
.end


.namespace []
.sub "spew"  :subid("14_1298822555.375") :outer("10_1298822555.375")
    .param pmc param_67
    .param pmc param_68
.annotate 'line', 105
    .lex "$filename", param_67
    .lex "$contents", param_68
.annotate 'line', 106
    new $P69, "Undef"
    .lex "$handle", $P69
    new $P70, "FileHandle"
    store_lex "$handle", $P70
.annotate 'line', 107
    find_lex $P71, "$handle"
    find_lex $P72, "$filename"
    $P71."open"($P72, "w")
.annotate 'line', 108
    find_lex $P73, "$handle"
    find_lex $P74, "$contents"
    $P73."print"($P74)
.annotate 'line', 109
    find_lex $P75, "$handle"
    $P76 = $P75."close"()
.annotate 'line', 105
    .return ($P76)
.end


.namespace []
.sub "match"  :subid("15_1298822555.375") :outer("10_1298822555.375")
    .param pmc param_79
    .param pmc param_80
    .param pmc param_81 :optional :named("global")
    .param int has_param_81 :opt_flag
.annotate 'line', 126
    .const 'Sub' $P91 = "16_1298822555.375" 
    capture_lex $P91
    .lex "$text", param_79
    .lex "$regex", param_80
    if has_param_81, optparam_44
    new $P82, "Undef"
    set param_81, $P82
  optparam_44:
    .lex "$global", param_81
.annotate 'line', 127
    new $P83, "Undef"
    .lex "$match", $P83
    find_lex $P84, "$regex"
    find_lex $P85, "$text"
    $P86 = $P84."ACCEPTS"($P85)
    store_lex "$match", $P86
.annotate 'line', 128
    find_lex $P89, "$global"
    if $P89, if_88
.annotate 'line', 136
    find_lex $P109, "$match"
    set $P87, $P109
.annotate 'line', 128
    goto if_88_end
  if_88:
    .const 'Sub' $P91 = "16_1298822555.375" 
    capture_lex $P91
    $P108 = $P91()
    set $P87, $P108
  if_88_end:
.annotate 'line', 126
    .return ($P87)
.end


.namespace []
.include "except_types.pasm"
.sub "_block90"  :anon :subid("16_1298822555.375") :outer("15_1298822555.375")
.annotate 'line', 129
    $P92 = root_new ['parrot';'ResizablePMCArray']
    .lex "@matches", $P92
.annotate 'line', 128
    find_lex $P93, "@matches"
.annotate 'line', 130
    new $P105, 'ExceptionHandler'
    set_label $P105, loop104_handler
    $P105."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P105
  loop104_test:
    find_lex $P94, "$match"
    unless $P94, loop104_done
  loop104_redo:
.annotate 'line', 131
    find_lex $P95, "@matches"
    find_lex $P96, "$match"
    $P95."push"($P96)
.annotate 'line', 132
    find_lex $P97, "$match"
    $P98 = $P97."CURSOR"()
    find_lex $P99, "$text"
    find_lex $P100, "$regex"
    find_lex $P101, "$match"
    $P102 = $P101."to"()
    $P103 = $P98."parse"($P99, $P100 :named("rule"), $P102 :named("c"))
    store_lex "$match", $P103
  loop104_next:
.annotate 'line', 130
    goto loop104_test
  loop104_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P106, exception, 'type'
    eq $P106, .CONTROL_LOOP_NEXT, loop104_next
    eq $P106, .CONTROL_LOOP_REDO, loop104_redo
  loop104_done:
    pop_eh 
    find_lex $P107, "@matches"
.annotate 'line', 128
    .return ($P107)
.end


.namespace []
.include "except_types.pasm"
.sub "subst"  :subid("17_1298822555.375") :outer("10_1298822555.375")
    .param pmc param_112
    .param pmc param_113
    .param pmc param_114
    .param pmc param_115 :optional :named("global")
    .param int has_param_115 :opt_flag
.annotate 'line', 148
    .const 'Sub' $P142 = "18_1298822555.375" 
    capture_lex $P142
    .lex "$text", param_112
    .lex "$regex", param_113
    .lex "$repl", param_114
    if has_param_115, optparam_45
    new $P116, "Undef"
    set param_115, $P116
  optparam_45:
    .lex "$global", param_115
.annotate 'line', 149
    $P117 = root_new ['parrot';'ResizablePMCArray']
    .lex "@matches", $P117
.annotate 'line', 151
    new $P118, "Undef"
    .lex "$is_code", $P118
.annotate 'line', 152
    new $P119, "Undef"
    .lex "$offset", $P119
.annotate 'line', 153
    new $P120, "Undef"
    .lex "$result", $P120
.annotate 'line', 164
    new $P121, "Undef"
    .lex "$chars", $P121
.annotate 'line', 149
    find_lex $P124, "$global"
    if $P124, if_123
.annotate 'line', 150
    find_lex $P128, "$regex"
    find_lex $P129, "$text"
    $P130 = $P128."ACCEPTS"($P129)
    new $P131, "ResizablePMCArray"
    push $P131, $P130
.annotate 'line', 149
    set $P122, $P131
    goto if_123_end
  if_123:
    find_lex $P125, "$text"
    find_lex $P126, "$regex"
    $P127 = "match"($P125, $P126, 1 :named("global"))
    set $P122, $P127
  if_123_end:
    store_lex "@matches", $P122
.annotate 'line', 151
    find_lex $P132, "$repl"
    isa $I133, $P132, "Sub"
    new $P134, 'Integer'
    set $P134, $I133
    store_lex "$is_code", $P134
.annotate 'line', 152
    new $P135, "Integer"
    assign $P135, 0
    store_lex "$offset", $P135
.annotate 'line', 153
    new $P136, "StringBuilder"
    store_lex "$result", $P136
.annotate 'line', 155
    find_lex $P138, "@matches"
    defined $I139, $P138
    unless $I139, for_undef_46
    iter $P137, $P138
    new $P175, 'ExceptionHandler'
    set_label $P175, loop174_handler
    $P175."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P175
  loop174_test:
    unless $P137, loop174_done
    shift $P140, $P137
  loop174_redo:
    .const 'Sub' $P142 = "18_1298822555.375" 
    capture_lex $P142
    $P142($P140)
  loop174_next:
    goto loop174_test
  loop174_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P176, exception, 'type'
    eq $P176, .CONTROL_LOOP_NEXT, loop174_next
    eq $P176, .CONTROL_LOOP_REDO, loop174_redo
  loop174_done:
    pop_eh 
  for_undef_46:
.annotate 'line', 164
    find_lex $P177, "$text"
    set $S178, $P177
    length $I179, $S178
    new $P180, 'Integer'
    set $P180, $I179
    store_lex "$chars", $P180
.annotate 'line', 166
    find_lex $P182, "$chars"
    set $N183, $P182
    find_lex $P184, "$offset"
    set $N185, $P184
    isgt $I186, $N183, $N185
    unless $I186, if_181_end
.annotate 'line', 165
    find_lex $P187, "$result"
    find_lex $P188, "$text"
    set $S189, $P188
    find_lex $P190, "$offset"
    set $I191, $P190
    find_lex $P192, "$chars"
    set $I193, $P192
    substr $S194, $S189, $I191, $I193
    push $P187, $S194
  if_181_end:
.annotate 'line', 168
    find_lex $P195, "$result"
    set $S196, $P195
.annotate 'line', 148
    .return ($S196)
.end


.namespace []
.sub "_block141"  :anon :subid("18_1298822555.375") :outer("17_1298822555.375")
    .param pmc param_143
.annotate 'line', 155
    .lex "$match", param_143
.annotate 'line', 156
    find_lex $P146, "$match"
    if $P146, if_145
    set $P144, $P146
    goto if_145_end
  if_145:
.annotate 'line', 158
    find_lex $P148, "$match"
    $N149 = $P148."from"()
    find_lex $P150, "$offset"
    set $N151, $P150
    isgt $I152, $N149, $N151
    unless $I152, if_147_end
.annotate 'line', 157
    find_lex $P153, "$result"
    find_lex $P154, "$text"
    set $S155, $P154
    find_lex $P156, "$offset"
    set $I157, $P156
    find_lex $P158, "$match"
    $P159 = $P158."from"()
    find_lex $P160, "$offset"
    sub $P161, $P159, $P160
    set $I162, $P161
    substr $S163, $S155, $I157, $I162
    push $P153, $S163
  if_147_end:
.annotate 'line', 159
    find_lex $P164, "$result"
    find_lex $P167, "$is_code"
    if $P167, if_166
    find_lex $P171, "$repl"
    set $P165, $P171
    goto if_166_end
  if_166:
    find_lex $P168, "$repl"
    find_lex $P169, "$match"
    $P170 = $P168($P169)
    set $P165, $P170
  if_166_end:
    push $P164, $P165
.annotate 'line', 160
    find_lex $P172, "$match"
    $P173 = $P172."to"()
    store_lex "$offset", $P173
.annotate 'line', 156
    set $P144, $P173
  if_145_end:
.annotate 'line', 155
    .return ($P144)
.end


.namespace ["int"]
.sub "_block198"  :subid("19_1298822555.375") :outer("10_1298822555.375")
.annotate 'line', 7
    .const 'Sub' $P202 = "20_1298822555.375" 
    capture_lex $P202
    get_global $P200, "$?CLASS"
    .return ()
.end


.namespace ["int"]
.sub "" :load :init :subid("post47") :outer("19_1298822555.375")
.annotate 'line', 7
    get_hll_global $P199, ["int"], "_block198" 
    .local pmc block
    set block, $P199
    .const 'Sub' $P202 = "20_1298822555.375" 
    capture_lex $P202
    $P202()
.end


.namespace ["int"]
.sub "_block201"  :anon :subid("20_1298822555.375") :outer("19_1298822555.375")
.annotate 'line', 7
    get_hll_global $P203, "NQPNativeHOW"
    $P204 = $P203."new_type"("int" :named("name"), "P6int" :named("repr"))
    .local pmc type_obj
    set type_obj, $P204
    set_hll_global "int", type_obj
    set_global "$?CLASS", type_obj
    get_how $P205, type_obj
    $P206 = $P205."compose"(type_obj)
    .return ($P206)
.end


.namespace ["num"]
.sub "_block207"  :subid("21_1298822555.375") :outer("10_1298822555.375")
.annotate 'line', 9
    .const 'Sub' $P211 = "22_1298822555.375" 
    capture_lex $P211
    get_global $P209, "$?CLASS"
    .return ()
.end


.namespace ["num"]
.sub "" :load :init :subid("post48") :outer("21_1298822555.375")
.annotate 'line', 9
    get_hll_global $P208, ["num"], "_block207" 
    .local pmc block
    set block, $P208
    .const 'Sub' $P211 = "22_1298822555.375" 
    capture_lex $P211
    $P211()
.end


.namespace ["num"]
.sub "_block210"  :anon :subid("22_1298822555.375") :outer("21_1298822555.375")
.annotate 'line', 9
    get_hll_global $P212, "NQPNativeHOW"
    $P213 = $P212."new_type"("num" :named("name"), "P6num" :named("repr"))
    .local pmc type_obj
    set type_obj, $P213
    set_hll_global "num", type_obj
    set_global "$?CLASS", type_obj
    get_how $P214, type_obj
    $P215 = $P214."compose"(type_obj)
    .return ($P215)
.end


.namespace ["str"]
.sub "_block216"  :subid("23_1298822555.375") :outer("10_1298822555.375")
.annotate 'line', 11
    .const 'Sub' $P220 = "24_1298822555.375" 
    capture_lex $P220
    get_global $P218, "$?CLASS"
    .return ()
.end


.namespace ["str"]
.sub "" :load :init :subid("post49") :outer("23_1298822555.375")
.annotate 'line', 11
    get_hll_global $P217, ["str"], "_block216" 
    .local pmc block
    set block, $P217
    .const 'Sub' $P220 = "24_1298822555.375" 
    capture_lex $P220
    $P220()
.end


.namespace ["str"]
.sub "_block219"  :anon :subid("24_1298822555.375") :outer("23_1298822555.375")
.annotate 'line', 11
    get_hll_global $P221, "NQPNativeHOW"
    $P222 = $P221."new_type"("str" :named("name"), "P6str" :named("repr"))
    .local pmc type_obj
    set type_obj, $P222
    set_hll_global "str", type_obj
    set_global "$?CLASS", type_obj
    get_how $P223, type_obj
    $P224 = $P223."compose"(type_obj)
    .return ($P224)
.end


.namespace ["NQPMu"]
.sub "_block225"  :subid("25_1298822555.375") :outer("10_1298822555.375")
.annotate 'line', 14
    .const 'Sub' $P347 = "38_1298822555.375" 
    capture_lex $P347
    .const 'Sub' $P337 = "37_1298822555.375" 
    capture_lex $P337
    .const 'Sub' $P325 = "36_1298822555.375" 
    capture_lex $P325
    .const 'Sub' $P321 = "35_1298822555.375" 
    capture_lex $P321
    .const 'Sub' $P310 = "34_1298822555.375" 
    capture_lex $P310
    .const 'Sub' $P307 = "33_1298822555.375" 
    capture_lex $P307
    .const 'Sub' $P301 = "32_1298822555.375" 
    capture_lex $P301
    .const 'Sub' $P263 = "30_1298822555.375" 
    capture_lex $P263
    .const 'Sub' $P242 = "28_1298822555.375" 
    capture_lex $P242
    .const 'Sub' $P232 = "27_1298822555.375" 
    capture_lex $P232
    .const 'Sub' $P228 = "26_1298822555.375" 
    capture_lex $P228
    get_global $P227, "$?CLASS"
.annotate 'line', 56
    .const 'Sub' $P337 = "37_1298822555.375" 
    newclosure $P345, $P337
.annotate 'line', 14
    .return ($P345)
.end


.namespace ["NQPMu"]
.sub "" :load :init :subid("post50") :outer("25_1298822555.375")
.annotate 'line', 14
    get_hll_global $P226, ["NQPMu"], "_block225" 
    .local pmc block
    set block, $P226
    .const 'Sub' $P347 = "38_1298822555.375" 
    capture_lex $P347
    $P347()
.end


.namespace ["NQPMu"]
.sub "_block346"  :anon :subid("38_1298822555.375") :outer("25_1298822555.375")
.annotate 'line', 14
    .const 'Sub' $P364 = "33_1298822555.375" 
    capture_lex $P364
    get_hll_global $P348, "NQPClassHOW"
    $P349 = $P348."new_type"("NQPMu" :named("name"))
    .local pmc type_obj
    set type_obj, $P349
    set_hll_global "NQPMu", type_obj
    set_global "$?CLASS", type_obj
    get_how $P350, type_obj
    .const 'Sub' $P351 = "26_1298822555.375" 
    $P350."add_method"(type_obj, "CREATE", $P351)
    get_how $P352, type_obj
    .const 'Sub' $P353 = "27_1298822555.375" 
    $P352."add_method"(type_obj, "bless", $P353)
    get_how $P354, type_obj
    .const 'Sub' $P355 = "28_1298822555.375" 
    $P354."add_method"(type_obj, "BUILDALL", $P355)
    get_how $P356, type_obj
    .const 'Sub' $P357 = "30_1298822555.375" 
    $P356."add_method"(type_obj, "BUILD_MAGIC", $P357)
    get_how $P358, type_obj
    .const 'Sub' $P359 = "32_1298822555.375" 
    $P358."add_method"(type_obj, "new", $P359)
    get_how $P360, type_obj
    .const 'Sub' $P361 = "33_1298822555.375" 
    new $P362, "ResizablePMCArray"
    set_dispatchees $P361, $P362
    $P360."add_method"(type_obj, "Str", $P361)
    get_how $P363, type_obj
    .const 'Sub' $P364 = "33_1298822555.375" 
    newclosure $P367, $P364
    $P363."add_parrot_vtable_mapping"(type_obj, "get_string", $P367)
    get_how $P368, type_obj
    .const 'Sub' $P369 = "34_1298822555.375" 
    $P368."add_multi_method"(type_obj, "Str", $P369)
    get_how $P370, type_obj
    .const 'Sub' $P371 = "35_1298822555.375" 
    new $P372, "ResizablePMCArray"
    set_dispatchees $P371, $P372
    $P370."add_method"(type_obj, "ACCEPTS", $P371)
    get_how $P373, type_obj
    .const 'Sub' $P374 = "36_1298822555.375" 
    $P373."add_multi_method"(type_obj, "ACCEPTS", $P374)
    get_how $P375, type_obj
    .const 'Sub' $P376 = "37_1298822555.375" 
    $P375."add_method"(type_obj, "isa", $P376)
    get_how $P377, type_obj
    $P378 = $P377."compose"(type_obj)
    .return ($P378)
.end


.namespace ["NQPMu"]
.sub "Str" :instanceof("DispatcherSub") :subid("33_1298822555.375") :outer("38_1298822555.375")
    .param pmc param_365
.annotate 'line', 14
    .lex "self", param_365
    multi_dispatch_over_lexical_candidates $P366
    .return ($P366)
.end


.namespace ["NQPMu"]
.sub "CREATE"  :subid("26_1298822555.375") :outer("25_1298822555.375")
    .param pmc param_229
.annotate 'line', 15
    .lex "self", param_229
.annotate 'line', 16
    find_lex $P230, "self"
    repr_instance_of $P231, $P230
.annotate 'line', 15
    .return ($P231)
.end


.namespace ["NQPMu"]
.sub "bless"  :subid("27_1298822555.375") :outer("25_1298822555.375")
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


.namespace ["NQPMu"]
.include "except_types.pasm"
.sub "BUILDALL"  :subid("28_1298822555.375") :outer("25_1298822555.375")
    .param pmc param_243
    .param pmc param_245 :slurpy :named
.annotate 'line', 26
    .const 'Sub' $P254 = "29_1298822555.375" 
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
    unless $I251, for_undef_51
    iter $P246, $P250
    new $P261, 'ExceptionHandler'
    set_label $P261, loop260_handler
    $P261."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P261
  loop260_test:
    unless $P246, loop260_done
    shift $P252, $P246
  loop260_redo:
    .const 'Sub' $P254 = "29_1298822555.375" 
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
  for_undef_51:
.annotate 'line', 26
    .return ($P246)
.end


.namespace ["NQPMu"]
.sub "_block253"  :anon :subid("29_1298822555.375") :outer("28_1298822555.375")
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


.namespace ["NQPMu"]
.include "except_types.pasm"
.sub "BUILD_MAGIC"  :subid("30_1298822555.375") :outer("25_1298822555.375")
    .param pmc param_264
    .param pmc param_266
    .param pmc param_267 :slurpy :named
.annotate 'line', 32
    .const 'Sub' $P276 = "31_1298822555.375" 
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
    unless $I273, for_undef_52
    iter $P268, $P272
    new $P299, 'ExceptionHandler'
    set_label $P299, loop298_handler
    $P299."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P299
  loop298_test:
    unless $P268, loop298_done
    shift $P274, $P268
  loop298_redo:
    .const 'Sub' $P276 = "31_1298822555.375" 
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
  for_undef_52:
.annotate 'line', 32
    .return ($P268)
.end


.namespace ["NQPMu"]
.sub "_block275"  :anon :subid("31_1298822555.375") :outer("30_1298822555.375")
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
    unless_null $P296, vivify_53
    $P296 = root_new ['parrot';'Hash']
  vivify_53:
    set $P297, $P296[$P295]
    unless_null $P297, vivify_54
    new $P297, "Undef"
  vivify_54:
    setattribute $P291, $P292, $S294, $P297
  if_287_end:
.annotate 'line', 33
    .return ($P286)
.end


.namespace ["NQPMu"]
.sub "new"  :subid("32_1298822555.375") :outer("25_1298822555.375")
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


.namespace ["NQPMu"]
.sub "Str" :instanceof("DispatcherSub") :subid("33_1298822555.375") :outer("25_1298822555.375")
    .param pmc param_308
.annotate 'line', 42
    .lex "self", param_308
    multi_dispatch_over_lexical_candidates $P309
    .return ($P309)
.end


.namespace ["NQPMu"]
.sub "Str"  :subid("34_1298822555.375") :outer("25_1298822555.375")
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


.namespace ["NQPMu"]
.sub "" :load :init :subid("post55") :outer("34_1298822555.375")
.annotate 'line', 47
    .const 'Sub' $P310 = "34_1298822555.375" 
    .local pmc block
    set block, $P310
    get_hll_global $P318, "Mu"
    new $P319, "ResizablePMCArray"
    push $P319, $P318
    new $P320, "ResizablePMCArray"
    push $P320, 2
    set_sub_multisig block, $P319, $P320
.end


.namespace ["NQPMu"]
.sub "ACCEPTS" :instanceof("DispatcherSub") :subid("35_1298822555.375") :outer("25_1298822555.375")
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


.namespace ["NQPMu"]
.sub "ACCEPTS"  :subid("36_1298822555.375") :outer("25_1298822555.375")
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


.namespace ["NQPMu"]
.sub "" :load :init :subid("post56") :outer("36_1298822555.375")
.annotate 'line', 52
    .const 'Sub' $P325 = "36_1298822555.375" 
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


.namespace ["NQPMu"]
.sub "isa"  :subid("37_1298822555.375") :outer("25_1298822555.375")
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


.namespace []
.sub "_block385" :load :anon :subid("39_1298822555.375")
.annotate 'line', 1
    .const 'Sub' $P387 = "10_1298822555.375" 
    $P388 = $P387()
    .return ($P388)
.end

