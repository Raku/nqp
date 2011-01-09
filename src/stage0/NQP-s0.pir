# Copyright (C) 2009, The Perl Foundation.

=head1 NAME

NQP::Compiler - NQP compiler

=head1 DESCRIPTION

=cut

# Initialize meta-model.
.loadlib "nqp_group"
.loadlib "nqp_ops"
.sub '' :anon :load :init
    nqp_dynop_setup
.end
### .include 'gen/nqp-how.pir'

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1294592815.061")
.annotate 'line', 0
    get_hll_global $P651, ["NQPAttribute"], "_block650" 
    capture_lex $P651
    get_hll_global $P49, ["NQPClassHOW"], "_block48" 
    capture_lex $P49
    get_hll_global $P17, ["KnowHOWAttribute"], "_block16" 
    capture_lex $P17
.annotate 'line', 1
    nqp_dynop_setup 
    get_hll_global $P13, "NQPAttribute"
    get_hll_global $P14, "NQPClassHOW"
    get_hll_global $P15, "KnowHOWAttribute"
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 10
    get_hll_global $P17, ["KnowHOWAttribute"], "_block16" 
    capture_lex $P17
    $P17()
.annotate 'line', 26
    get_hll_global $P49, ["NQPClassHOW"], "_block48" 
    capture_lex $P49
    $P49()
.annotate 'line', 284
    get_hll_global $P651, ["NQPAttribute"], "_block650" 
    capture_lex $P651
    $P699 = $P651()
.annotate 'line', 1
    .return ($P699)
    .const 'Sub' $P701 = "52_1294592815.061" 
    .return ($P701)
.end


.namespace ["KnowHOWAttribute"]
.sub "_block16"  :subid("11_1294592815.061") :outer("10_1294592815.061")
.annotate 'line', 10
    .const 'Sub' $P39 = "14_1294592815.061" 
    capture_lex $P39
    .const 'Sub' $P30 = "13_1294592815.061" 
    capture_lex $P30
    .const 'Sub' $P19 = "12_1294592815.061" 
    capture_lex $P19
    get_global $P18, "$?CLASS"
.annotate 'line', 14
    .const 'Sub' $P30 = "13_1294592815.061" 
    newclosure $P37, $P30
.annotate 'line', 10
    .return ($P37)
.end


.namespace ["KnowHOWAttribute"]
.sub "" :load :init :subid("post53") :outer("11_1294592815.061")
.annotate 'line', 10
    get_hll_global $P17, ["KnowHOWAttribute"], "_block16" 
    .local pmc block
    set block, $P17
    .const 'Sub' $P39 = "14_1294592815.061" 
    capture_lex $P39
    $P39()
.end


.namespace ["KnowHOWAttribute"]
.sub "_block38"  :anon :subid("14_1294592815.061") :outer("11_1294592815.061")
.annotate 'line', 10
    get_hll_global $P40, "KnowHOW"
    $P41 = $P40."new_type"("P6str" :named("repr"))
    .local pmc type_obj
    set type_obj, $P41
    set_hll_global "KnowHOWAttribute", type_obj
    set_global "$?CLASS", type_obj
    get_how $P42, type_obj
    .const 'Sub' $P43 = "12_1294592815.061" 
    $P42."add_method"(type_obj, "new", $P43)
    get_how $P44, type_obj
    .const 'Sub' $P45 = "13_1294592815.061" 
    $P44."add_method"(type_obj, "name", $P45)
    get_how $P46, type_obj
    $P47 = $P46."compose"(type_obj)
    .return ($P47)
.end


.namespace ["KnowHOWAttribute"]
.include "except_types.pasm"
.sub "new"  :subid("12_1294592815.061") :outer("11_1294592815.061")
    .param pmc param_22
    .param pmc param_23 :optional :named("name")
    .param int has_param_23 :opt_flag
.annotate 'line', 11
    new $P21, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P21, control_20
    push_eh $P21
    .lex "self", param_22
    if has_param_23, optparam_54
    new $P24, "Undef"
    set param_23, $P24
  optparam_54:
    .lex "$name", param_23
.annotate 'line', 12
    find_lex $P25, "$name"
    set $S26, $P25
    get_hll_global $P27, "KnowHOWAttribute"
    repr_box_str $P28, $S26, $P27
.annotate 'line', 11
    .return ($P28)
  control_20:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P29, exception, "payload"
    .return ($P29)
.end


.namespace ["KnowHOWAttribute"]
.include "except_types.pasm"
.sub "name"  :subid("13_1294592815.061") :outer("11_1294592815.061")
    .param pmc param_33
.annotate 'line', 14
    new $P32, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P32, control_31
    push_eh $P32
    .lex "self", param_33
.annotate 'line', 15
    find_lex $P34, "self"
    repr_unbox_str $S35, $P34
.annotate 'line', 14
    .return ($S35)
  control_31:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P36, exception, "payload"
    .return ($P36)
.end


.namespace ["NQPClassHOW"]
.sub "_block48"  :subid("15_1294592815.061") :outer("10_1294592815.061")
.annotate 'line', 26
    .const 'Sub' $P585 = "46_1294592815.061" 
    capture_lex $P585
    .const 'Sub' $P546 = "44_1294592815.061" 
    capture_lex $P546
    .const 'Sub' $P510 = "42_1294592815.061" 
    capture_lex $P510
    .const 'Sub' $P476 = "41_1294592815.061" 
    capture_lex $P476
    .const 'Sub' $P439 = "40_1294592815.061" 
    capture_lex $P439
    .const 'Sub' $P413 = "38_1294592815.061" 
    capture_lex $P413
    .const 'Sub' $P404 = "37_1294592815.061" 
    capture_lex $P404
    .const 'Sub' $P378 = "35_1294592815.061" 
    capture_lex $P378
    .const 'Sub' $P368 = "34_1294592815.061" 
    capture_lex $P368
    .const 'Sub' $P358 = "33_1294592815.061" 
    capture_lex $P358
    .const 'Sub' $P338 = "32_1294592815.061" 
    capture_lex $P338
    .const 'Sub' $P297 = "30_1294592815.061" 
    capture_lex $P297
    .const 'Sub' $P273 = "29_1294592815.061" 
    capture_lex $P273
    .const 'Sub' $P251 = "28_1294592815.061" 
    capture_lex $P251
    .const 'Sub' $P237 = "27_1294592815.061" 
    capture_lex $P237
    .const 'Sub' $P230 = "26_1294592815.061" 
    capture_lex $P230
    .const 'Sub' $P93 = "19_1294592815.061" 
    capture_lex $P93
    .const 'Sub' $P51 = "16_1294592815.061" 
    capture_lex $P51
    get_global $P50, "$?CLASS"
.annotate 'line', 110
    .const 'Sub' $P51 = "16_1294592815.061" 
    newclosure $P92, $P51
    .lex "compute_c3_mro", $P92
.annotate 'line', 132
    .const 'Sub' $P93 = "19_1294592815.061" 
    newclosure $P229, $P93
    .lex "c3_merge", $P229
.annotate 'line', 96
    find_lex $P356, "compute_c3_mro"
    find_lex $P357, "c3_merge"
.annotate 'line', 271
    .const 'Sub' $P546 = "44_1294592815.061" 
    newclosure $P583, $P546
.annotate 'line', 26
    .return ($P583)
.end


.namespace ["NQPClassHOW"]
.sub "" :load :init :subid("post55") :outer("15_1294592815.061")
.annotate 'line', 26
    get_hll_global $P49, ["NQPClassHOW"], "_block48" 
    .local pmc block
    set block, $P49
    .const 'Sub' $P585 = "46_1294592815.061" 
    capture_lex $P585
    $P585()
.end


.namespace ["NQPClassHOW"]
.sub "_block584"  :anon :subid("46_1294592815.061") :outer("15_1294592815.061")
.annotate 'line', 26
    get_hll_global $P586, "KnowHOW"
    $P587 = $P586."new_type"()
    .local pmc type_obj
    set type_obj, $P587
    set_hll_global "NQPClassHOW", type_obj
    set_global "$?CLASS", type_obj
    get_how $P588, type_obj
    get_hll_global $P589, "KnowHOWAttribute"
    $P590 = $P589."new"("$!name" :named("name"))
    $P588."add_attribute"(type_obj, $P590)
    get_how $P591, type_obj
    get_hll_global $P592, "KnowHOWAttribute"
    $P593 = $P592."new"("%!attributes" :named("name"))
    $P591."add_attribute"(type_obj, $P593)
    get_how $P594, type_obj
    get_hll_global $P595, "KnowHOWAttribute"
    $P596 = $P595."new"("%!methods" :named("name"))
    $P594."add_attribute"(type_obj, $P596)
    get_how $P597, type_obj
    get_hll_global $P598, "KnowHOWAttribute"
    $P599 = $P598."new"("@!parents" :named("name"))
    $P597."add_attribute"(type_obj, $P599)
    get_how $P600, type_obj
    get_hll_global $P601, "KnowHOWAttribute"
    $P602 = $P601."new"("@!roles" :named("name"))
    $P600."add_attribute"(type_obj, $P602)
    get_how $P603, type_obj
    get_hll_global $P604, "KnowHOWAttribute"
    $P605 = $P604."new"("@!vtable" :named("name"))
    $P603."add_attribute"(type_obj, $P605)
    get_how $P606, type_obj
    get_hll_global $P607, "KnowHOWAttribute"
    $P608 = $P607."new"("%!method-vtable-slots" :named("name"))
    $P606."add_attribute"(type_obj, $P608)
    get_how $P609, type_obj
    get_hll_global $P610, "KnowHOWAttribute"
    $P611 = $P610."new"("$!composed" :named("name"))
    $P609."add_attribute"(type_obj, $P611)
    get_how $P612, type_obj
    get_hll_global $P613, "KnowHOWAttribute"
    $P614 = $P613."new"("@!mro" :named("name"))
    $P612."add_attribute"(type_obj, $P614)
    get_how $P615, type_obj
    get_hll_global $P616, "KnowHOWAttribute"
    $P617 = $P616."new"("@!done" :named("name"))
    $P615."add_attribute"(type_obj, $P617)
    get_how $P618, type_obj
    .const 'Sub' $P619 = "26_1294592815.061" 
    $P618."add_method"(type_obj, "new", $P619)
    get_how $P620, type_obj
    .const 'Sub' $P621 = "27_1294592815.061" 
    $P620."add_method"(type_obj, "new_type", $P621)
    get_how $P622, type_obj
    .const 'Sub' $P623 = "28_1294592815.061" 
    $P622."add_method"(type_obj, "add_method", $P623)
    get_how $P624, type_obj
    .const 'Sub' $P625 = "29_1294592815.061" 
    $P624."add_method"(type_obj, "add_attribute", $P625)
    get_how $P626, type_obj
    .const 'Sub' $P627 = "30_1294592815.061" 
    $P626."add_method"(type_obj, "add_parent", $P627)
    get_how $P628, type_obj
    .const 'Sub' $P629 = "32_1294592815.061" 
    $P628."add_method"(type_obj, "compose", $P629)
    get_how $P630, type_obj
    .const 'Sub' $P631 = "33_1294592815.061" 
    $P630."add_method"(type_obj, "parents", $P631)
    get_how $P632, type_obj
    .const 'Sub' $P633 = "34_1294592815.061" 
    $P632."add_method"(type_obj, "roles", $P633)
    get_how $P634, type_obj
    .const 'Sub' $P635 = "35_1294592815.061" 
    $P634."add_method"(type_obj, "methods", $P635)
    get_how $P636, type_obj
    .const 'Sub' $P637 = "37_1294592815.061" 
    $P636."add_method"(type_obj, "method_table", $P637)
    get_how $P638, type_obj
    .const 'Sub' $P639 = "38_1294592815.061" 
    $P638."add_method"(type_obj, "attributes", $P639)
    get_how $P640, type_obj
    .const 'Sub' $P641 = "40_1294592815.061" 
    $P640."add_method"(type_obj, "isa", $P641)
    get_how $P642, type_obj
    .const 'Sub' $P643 = "41_1294592815.061" 
    $P642."add_method"(type_obj, "does", $P643)
    get_how $P644, type_obj
    .const 'Sub' $P645 = "42_1294592815.061" 
    $P644."add_method"(type_obj, "can", $P645)
    get_how $P646, type_obj
    .const 'Sub' $P647 = "44_1294592815.061" 
    $P646."add_method"(type_obj, "find_method", $P647)
    get_how $P648, type_obj
    $P649 = $P648."compose"(type_obj)
    .return ($P649)
.end


.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "compute_c3_mro"  :subid("16_1294592815.061") :outer("15_1294592815.061")
    .param pmc param_54
.annotate 'line', 110
    .const 'Sub' $P66 = "17_1294592815.061" 
    capture_lex $P66
    new $P53, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P53, control_52
    push_eh $P53
    .lex "$class", param_54
.annotate 'line', 111
    $P55 = root_new ['parrot';'ResizablePMCArray']
    .lex "@immediate_parents", $P55
.annotate 'line', 114
    $P56 = root_new ['parrot';'ResizablePMCArray']
    .lex "@result", $P56
.annotate 'line', 111
    find_lex $P57, "$class"
    get_how $P58, $P57
    find_lex $P59, "$class"
    $P60 = $P58."parents"($P59, 1 :named("local"))
    store_lex "@immediate_parents", $P60
    find_lex $P61, "@result"
.annotate 'line', 115
    find_lex $P63, "@immediate_parents"
    set $N64, $P63
    unless $N64, if_62_end
    .const 'Sub' $P66 = "17_1294592815.061" 
    capture_lex $P66
    $P66()
  if_62_end:
.annotate 'line', 127
    find_lex $P87, "@result"
    find_lex $P88, "$class"
    $P87."unshift"($P88)
.annotate 'line', 128
    new $P89, "Exception"
    set $P89['type'], .CONTROL_RETURN
    find_lex $P90, "@result"
    setattribute $P89, 'payload', $P90
    throw $P89
.annotate 'line', 110
    .return ()
  control_52:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P91, exception, "payload"
    .return ($P91)
.end


.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block65"  :anon :subid("17_1294592815.061") :outer("16_1294592815.061")
.annotate 'line', 115
    .const 'Sub' $P74 = "18_1294592815.061" 
    capture_lex $P74
.annotate 'line', 118
    $P67 = root_new ['parrot';'ResizablePMCArray']
    .lex "@merge_list", $P67
.annotate 'line', 115
    find_lex $P68, "@merge_list"
.annotate 'line', 119
    find_lex $P70, "@immediate_parents"
    defined $I71, $P70
    unless $I71, for_undef_56
    iter $P69, $P70
    new $P81, 'ExceptionHandler'
    set_addr $P81, loop80_handler
    $P81."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P81
  loop80_test:
    unless $P69, loop80_done
    shift $P72, $P69
  loop80_redo:
    .const 'Sub' $P74 = "18_1294592815.061" 
    capture_lex $P74
    $P74($P72)
  loop80_next:
    goto loop80_test
  loop80_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P82, exception, 'type'
    eq $P82, .CONTROL_LOOP_NEXT, loop80_next
    eq $P82, .CONTROL_LOOP_REDO, loop80_redo
  loop80_done:
    pop_eh 
  for_undef_56:
.annotate 'line', 122
    find_lex $P83, "@merge_list"
    find_lex $P84, "@immediate_parents"
    $P83."push"($P84)
.annotate 'line', 123
    find_lex $P85, "@merge_list"
    $P86 = "c3_merge"($P85)
    store_lex "@result", $P86
.annotate 'line', 115
    .return ($P86)
.end


.namespace ["NQPClassHOW"]
.sub "_block73"  :anon :subid("18_1294592815.061") :outer("17_1294592815.061")
    .param pmc param_75
.annotate 'line', 119
    .lex "$_", param_75
.annotate 'line', 120
    find_lex $P76, "@merge_list"
    find_lex $P77, "$_"
    $P78 = "compute_c3_mro"($P77)
    $P79 = $P76."push"($P78)
.annotate 'line', 119
    .return ($P79)
.end


.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "c3_merge"  :subid("19_1294592815.061") :outer("15_1294592815.061")
    .param pmc param_96
.annotate 'line', 132
    .const 'Sub' $P189 = "24_1294592815.061" 
    capture_lex $P189
    .const 'Sub' $P111 = "20_1294592815.061" 
    capture_lex $P111
    new $P95, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P95, control_94
    push_eh $P95
    .lex "@merge_list", param_96
.annotate 'line', 133
    $P97 = root_new ['parrot';'ResizablePMCArray']
    .lex "@result", $P97
.annotate 'line', 134
    new $P98, "Undef"
    .lex "$accepted", $P98
.annotate 'line', 135
    new $P99, "Undef"
    .lex "$something_accepted", $P99
.annotate 'line', 136
    new $P100, "Undef"
    .lex "$cand_count", $P100
.annotate 'line', 179
    new $P101, "Undef"
    .lex "$i", $P101
.annotate 'line', 132
    find_lex $P102, "@result"
    find_lex $P103, "$accepted"
.annotate 'line', 135
    new $P104, "Integer"
    assign $P104, 0
    store_lex "$something_accepted", $P104
.annotate 'line', 136
    new $P105, "Integer"
    assign $P105, 0
    store_lex "$cand_count", $P105
.annotate 'line', 139
    find_lex $P107, "@merge_list"
    defined $I108, $P107
    unless $I108, for_undef_57
    iter $P106, $P107
    new $P172, 'ExceptionHandler'
    set_addr $P172, loop171_handler
    $P172."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P172
  loop171_test:
    unless $P106, loop171_done
    shift $P109, $P106
  loop171_redo:
    .const 'Sub' $P111 = "20_1294592815.061" 
    capture_lex $P111
    $P111($P109)
  loop171_next:
    goto loop171_test
  loop171_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P173, exception, 'type'
    eq $P173, .CONTROL_LOOP_NEXT, loop171_next
    eq $P173, .CONTROL_LOOP_REDO, loop171_redo
  loop171_done:
    pop_eh 
  for_undef_57:
.annotate 'line', 169
    find_lex $P175, "$cand_count"
    set $N176, $P175
    iseq $I177, $N176, 0.0
    unless $I177, if_174_end
.annotate 'line', 170
    new $P178, "Exception"
    set $P178['type'], .CONTROL_RETURN
    find_lex $P179, "@result"
    setattribute $P178, 'payload', $P179
    throw $P178
  if_174_end:
.annotate 'line', 174
    find_lex $P181, "$something_accepted"
    if $P181, unless_180_end
.annotate 'line', 175
    die "Could not build C3 linearization: ambiguous hierarchy"
  unless_180_end:
.annotate 'line', 179
    new $P182, "Integer"
    assign $P182, 0
    store_lex "$i", $P182
.annotate 'line', 180
    new $P220, 'ExceptionHandler'
    set_addr $P220, loop219_handler
    $P220."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P220
  loop219_test:
    find_lex $P183, "$i"
    set $N184, $P183
    find_lex $P185, "@merge_list"
    set $N186, $P185
    islt $I187, $N184, $N186
    unless $I187, loop219_done
  loop219_redo:
    .const 'Sub' $P189 = "24_1294592815.061" 
    capture_lex $P189
    $P189()
  loop219_next:
    goto loop219_test
  loop219_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P221, exception, 'type'
    eq $P221, .CONTROL_LOOP_NEXT, loop219_next
    eq $P221, .CONTROL_LOOP_REDO, loop219_redo
  loop219_done:
    pop_eh 
.annotate 'line', 193
    find_lex $P222, "@merge_list"
    $P223 = "c3_merge"($P222)
    store_lex "@result", $P223
.annotate 'line', 194
    find_lex $P224, "@result"
    find_lex $P225, "$accepted"
    $P224."unshift"($P225)
.annotate 'line', 195
    new $P226, "Exception"
    set $P226['type'], .CONTROL_RETURN
    find_lex $P227, "@result"
    setattribute $P226, 'payload', $P227
    throw $P226
.annotate 'line', 132
    .return ()
  control_94:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P228, exception, "payload"
    .return ($P228)
.end


.namespace ["NQPClassHOW"]
.sub "_block110"  :anon :subid("20_1294592815.061") :outer("19_1294592815.061")
    .param pmc param_113
.annotate 'line', 139
    .const 'Sub' $P120 = "21_1294592815.061" 
    capture_lex $P120
.annotate 'line', 140
    $P112 = root_new ['parrot';'ResizablePMCArray']
    .lex "@cand_list", $P112
    .lex "$_", param_113
    find_lex $P114, "$_"
    store_lex "@cand_list", $P114
.annotate 'line', 141
    find_lex $P117, "@cand_list"
    set $N118, $P117
    if $N118, if_116
    new $P115, 'Float'
    set $P115, $N118
    goto if_116_end
  if_116:
    .const 'Sub' $P120 = "21_1294592815.061" 
    capture_lex $P120
    $P170 = $P120()
    set $P115, $P170
  if_116_end:
.annotate 'line', 139
    .return ($P115)
.end


.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block119"  :anon :subid("21_1294592815.061") :outer("20_1294592815.061")
.annotate 'line', 141
    .const 'Sub' $P133 = "22_1294592815.061" 
    capture_lex $P133
.annotate 'line', 142
    new $P121, "Undef"
    .lex "$rejected", $P121
.annotate 'line', 143
    new $P122, "Undef"
    .lex "$cand_class", $P122
.annotate 'line', 142
    new $P123, "Integer"
    assign $P123, 0
    store_lex "$rejected", $P123
.annotate 'line', 143
    find_lex $P124, "@cand_list"
    unless_null $P124, vivify_58
    $P124 = root_new ['parrot';'ResizablePMCArray']
  vivify_58:
    set $P125, $P124[0]
    unless_null $P125, vivify_59
    new $P125, "Undef"
  vivify_59:
    store_lex "$cand_class", $P125
.annotate 'line', 144
    find_lex $P126, "$cand_count"
    add $P127, $P126, 1
    store_lex "$cand_count", $P127
.annotate 'line', 145
    find_lex $P129, "@merge_list"
    defined $I130, $P129
    unless $I130, for_undef_60
    iter $P128, $P129
    new $P168, 'ExceptionHandler'
    set_addr $P168, loop167_handler
    $P168."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P168
  loop167_test:
    unless $P128, loop167_done
    shift $P131, $P128
  loop167_redo:
    .const 'Sub' $P133 = "22_1294592815.061" 
    capture_lex $P133
    $P133($P131)
  loop167_next:
    goto loop167_test
  loop167_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P169, exception, 'type'
    eq $P169, .CONTROL_LOOP_NEXT, loop167_next
    eq $P169, .CONTROL_LOOP_REDO, loop167_redo
  loop167_done:
    pop_eh 
  for_undef_60:
.annotate 'line', 141
    .return ($P128)
.end


.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block132"  :anon :subid("22_1294592815.061") :outer("21_1294592815.061")
    .param pmc param_134
.annotate 'line', 145
    .const 'Sub' $P140 = "23_1294592815.061" 
    capture_lex $P140
    .lex "$_", param_134
.annotate 'line', 147
    find_lex $P136, "$_"
    find_lex $P137, "@cand_list"
    issame $I138, $P136, $P137
    if $I138, unless_135_end
    .const 'Sub' $P140 = "23_1294592815.061" 
    capture_lex $P140
    $P140()
  unless_135_end:
.annotate 'line', 159
    find_lex $P163, "$rejected"
    unless $P163, unless_162
    set $P161, $P163
    goto unless_162_end
  unless_162:
.annotate 'line', 160
    find_lex $P164, "$cand_class"
    store_lex "$accepted", $P164
.annotate 'line', 161
    new $P165, "Integer"
    assign $P165, 1
    store_lex "$something_accepted", $P165
.annotate 'line', 162
    set $I166, .CONTROL_LOOP_LAST
    die 0, $I166
  unless_162_end:
.annotate 'line', 145
    .return ($P161)
.end


.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block139"  :anon :subid("23_1294592815.061") :outer("22_1294592815.061")
.annotate 'line', 149
    new $P141, "Undef"
    .lex "$cur_pos", $P141
    new $P142, "Integer"
    assign $P142, 1
    store_lex "$cur_pos", $P142
.annotate 'line', 150
    new $P159, 'ExceptionHandler'
    set_addr $P159, loop158_handler
    $P159."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P159
  loop158_test:
    find_lex $P143, "$cur_pos"
    set $N144, $P143
    find_lex $P145, "$_"
    set $N146, $P145
    isle $I147, $N144, $N146
    unless $I147, loop158_done
  loop158_redo:
.annotate 'line', 151
    find_lex $P149, "$cur_pos"
    set $I150, $P149
    find_lex $P151, "$_"
    unless_null $P151, vivify_61
    $P151 = root_new ['parrot';'ResizablePMCArray']
  vivify_61:
    set $P152, $P151[$I150]
    unless_null $P152, vivify_62
    new $P152, "Undef"
  vivify_62:
    find_lex $P153, "$cand_class"
    issame $I154, $P152, $P153
    unless $I154, if_148_end
.annotate 'line', 152
    new $P155, "Integer"
    assign $P155, 1
    store_lex "$rejected", $P155
  if_148_end:
.annotate 'line', 154
    find_lex $P156, "$cur_pos"
    add $P157, $P156, 1
    store_lex "$cur_pos", $P157
  loop158_next:
.annotate 'line', 150
    goto loop158_test
  loop158_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P160, exception, 'type'
    eq $P160, .CONTROL_LOOP_NEXT, loop158_next
    eq $P160, .CONTROL_LOOP_REDO, loop158_redo
  loop158_done:
    pop_eh 
.annotate 'line', 147
    .return ($I147)
.end


.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block188"  :anon :subid("24_1294592815.061") :outer("19_1294592815.061")
.annotate 'line', 180
    .const 'Sub' $P200 = "25_1294592815.061" 
    capture_lex $P200
.annotate 'line', 181
    $P190 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new_list", $P190
.annotate 'line', 180
    find_lex $P191, "@new_list"
.annotate 'line', 182
    find_lex $P193, "$i"
    set $I194, $P193
    find_lex $P195, "@merge_list"
    unless_null $P195, vivify_63
    $P195 = root_new ['parrot';'ResizablePMCArray']
  vivify_63:
    set $P196, $P195[$I194]
    unless_null $P196, vivify_64
    new $P196, "Undef"
  vivify_64:
    defined $I197, $P196
    unless $I197, for_undef_65
    iter $P192, $P196
    new $P211, 'ExceptionHandler'
    set_addr $P211, loop210_handler
    $P211."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P211
  loop210_test:
    unless $P192, loop210_done
    shift $P198, $P192
  loop210_redo:
    .const 'Sub' $P200 = "25_1294592815.061" 
    capture_lex $P200
    $P200($P198)
  loop210_next:
    goto loop210_test
  loop210_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P212, exception, 'type'
    eq $P212, .CONTROL_LOOP_NEXT, loop210_next
    eq $P212, .CONTROL_LOOP_REDO, loop210_redo
  loop210_done:
    pop_eh 
  for_undef_65:
.annotate 'line', 187
    find_lex $P213, "@new_list"
    find_lex $P214, "$i"
    set $I215, $P214
    find_lex $P216, "@merge_list"
    unless_null $P216, vivify_66
    $P216 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@merge_list", $P216
  vivify_66:
    set $P216[$I215], $P213
.annotate 'line', 188
    find_lex $P217, "$i"
    add $P218, $P217, 1
    store_lex "$i", $P218
.annotate 'line', 180
    .return ($P218)
.end


.namespace ["NQPClassHOW"]
.sub "_block199"  :anon :subid("25_1294592815.061") :outer("24_1294592815.061")
    .param pmc param_201
.annotate 'line', 182
    .lex "$_", param_201
.annotate 'line', 183
    find_lex $P204, "$_"
    find_lex $P205, "$accepted"
    issame $I206, $P204, $P205
    unless $I206, unless_203
    new $P202, 'Integer'
    set $P202, $I206
    goto unless_203_end
  unless_203:
.annotate 'line', 184
    find_lex $P207, "@new_list"
    find_lex $P208, "$_"
    $P209 = $P207."push"($P208)
.annotate 'line', 183
    set $P202, $P209
  unless_203_end:
.annotate 'line', 182
    .return ($P202)
.end


.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "new"  :subid("26_1294592815.061") :outer("15_1294592815.061")
    .param pmc param_233
.annotate 'line', 58
    new $P232, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P232, control_231
    push_eh $P232
    .lex "self", param_233
.annotate 'line', 59
    find_lex $P234, "self"
    repr_instance_of $P235, $P234
.annotate 'line', 58
    .return ($P235)
  control_231:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P236, exception, "payload"
    .return ($P236)
.end


.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "new_type"  :subid("27_1294592815.061") :outer("15_1294592815.061")
    .param pmc param_240
    .param pmc param_241 :optional :named("repr")
    .param int has_param_241 :opt_flag
.annotate 'line', 64
    new $P239, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P239, control_238
    push_eh $P239
    .lex "self", param_240
    if has_param_241, optparam_67
    new $P242, "String"
    assign $P242, "P6opaque"
    set param_241, $P242
  optparam_67:
    .lex "$repr", param_241
.annotate 'line', 65
    new $P243, "Undef"
    .lex "$metaclass", $P243
    find_lex $P244, "self"
    $P245 = $P244."new"()
    store_lex "$metaclass", $P245
.annotate 'line', 66
    find_lex $P246, "$metaclass"
    find_lex $P247, "$repr"
    set $S248, $P247
    repr_type_object_for $P249, $P246, $S248
.annotate 'line', 64
    .return ($P249)
  control_238:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P250, exception, "payload"
    .return ($P250)
.end


.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_method"  :subid("28_1294592815.061") :outer("15_1294592815.061")
    .param pmc param_254
    .param pmc param_255
    .param pmc param_256
    .param pmc param_257
.annotate 'line', 69
    new $P253, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P253, control_252
    push_eh $P253
    .lex "self", param_254
    .lex "$obj", param_255
    .lex "$name", param_256
    .lex "$code_obj", param_257
.annotate 'line', 70
    find_lex $P259, "$name"
    find_lex $P260, "self"
    get_global $P261, "$?CLASS"
    getattribute $P262, $P260, $P261, "%!methods"
    unless_null $P262, vivify_68
    $P262 = root_new ['parrot';'Hash']
  vivify_68:
    set $P263, $P262[$P259]
    unless_null $P263, vivify_69
    new $P263, "Undef"
  vivify_69:
    unless $P263, if_258_end
.annotate 'line', 71
    new $P264, "String"
    assign $P264, "This class already has a method named "
    find_lex $P265, "$name"
    concat $P266, $P264, $P265
    die $P266
  if_258_end:
.annotate 'line', 73
    find_lex $P267, "$code_obj"
    find_lex $P268, "$name"
    find_lex $P269, "self"
    get_global $P270, "$?CLASS"
    getattribute $P271, $P269, $P270, "%!methods"
    unless_null $P271, vivify_70
    $P271 = root_new ['parrot';'Hash']
    setattribute $P269, $P270, "%!methods", $P271
  vivify_70:
    set $P271[$P268], $P267
.annotate 'line', 69
    .return ($P267)
  control_252:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P272, exception, "payload"
    .return ($P272)
.end


.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_attribute"  :subid("29_1294592815.061") :outer("15_1294592815.061")
    .param pmc param_276
    .param pmc param_277
    .param pmc param_278
.annotate 'line', 76
    new $P275, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P275, control_274
    push_eh $P275
    .lex "self", param_276
    .lex "$obj", param_277
    .lex "$meta_attr", param_278
.annotate 'line', 77
    new $P279, "Undef"
    .lex "$name", $P279
    find_lex $P280, "$meta_attr"
    $P281 = $P280."name"()
    store_lex "$name", $P281
.annotate 'line', 78
    find_lex $P283, "$name"
    find_lex $P284, "self"
    get_global $P285, "$?CLASS"
    getattribute $P286, $P284, $P285, "%!attributes"
    unless_null $P286, vivify_71
    $P286 = root_new ['parrot';'Hash']
  vivify_71:
    set $P287, $P286[$P283]
    unless_null $P287, vivify_72
    new $P287, "Undef"
  vivify_72:
    unless $P287, if_282_end
.annotate 'line', 79
    new $P288, "String"
    assign $P288, "This class already has an attribute named "
    find_lex $P289, "$name"
    concat $P290, $P288, $P289
    die $P290
  if_282_end:
.annotate 'line', 81
    find_lex $P291, "$meta_attr"
    find_lex $P292, "$name"
    find_lex $P293, "self"
    get_global $P294, "$?CLASS"
    getattribute $P295, $P293, $P294, "%!attributes"
    unless_null $P295, vivify_73
    $P295 = root_new ['parrot';'Hash']
    setattribute $P293, $P294, "%!attributes", $P295
  vivify_73:
    set $P295[$P292], $P291
.annotate 'line', 76
    .return ($P291)
  control_274:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P296, exception, "payload"
    .return ($P296)
.end


.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_parent"  :subid("30_1294592815.061") :outer("15_1294592815.061")
    .param pmc param_300
    .param pmc param_301
    .param pmc param_302
.annotate 'line', 84
    .const 'Sub' $P314 = "31_1294592815.061" 
    capture_lex $P314
    new $P299, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P299, control_298
    push_eh $P299
    .lex "self", param_300
    .lex "$obj", param_301
    .lex "$parent", param_302
.annotate 'line', 85
    find_lex $P304, "self"
    get_global $P305, "$?CLASS"
    getattribute $P306, $P304, $P305, "$!composed"
    unless_null $P306, vivify_74
    new $P306, "Undef"
  vivify_74:
    unless $P306, if_303_end
.annotate 'line', 86
    die "NQPClassHOW does not support adding parents after being composed."
  if_303_end:
.annotate 'line', 88
    find_lex $P308, "self"
    get_global $P309, "$?CLASS"
    getattribute $P310, $P308, $P309, "@!parents"
    unless_null $P310, vivify_75
    $P310 = root_new ['parrot';'ResizablePMCArray']
  vivify_75:
    defined $I311, $P310
    unless $I311, for_undef_76
    iter $P307, $P310
    new $P326, 'ExceptionHandler'
    set_addr $P326, loop325_handler
    $P326."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P326
  loop325_test:
    unless $P307, loop325_done
    shift $P312, $P307
  loop325_redo:
    .const 'Sub' $P314 = "31_1294592815.061" 
    capture_lex $P314
    $P314($P312)
  loop325_next:
    goto loop325_test
  loop325_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P327, exception, 'type'
    eq $P327, .CONTROL_LOOP_NEXT, loop325_next
    eq $P327, .CONTROL_LOOP_REDO, loop325_redo
  loop325_done:
    pop_eh 
  for_undef_76:
.annotate 'line', 93
    find_lex $P328, "$parent"
    find_lex $P329, "self"
    get_global $P330, "$?CLASS"
    getattribute $P331, $P329, $P330, "@!parents"
    unless_null $P331, vivify_77
    $P331 = root_new ['parrot';'ResizablePMCArray']
  vivify_77:
    set $N332, $P331
    set $I333, $N332
    find_lex $P334, "self"
    get_global $P335, "$?CLASS"
    getattribute $P336, $P334, $P335, "@!parents"
    unless_null $P336, vivify_78
    $P336 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P334, $P335, "@!parents", $P336
  vivify_78:
    set $P336[$I333], $P328
.annotate 'line', 84
    .return ($P328)
  control_298:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P337, exception, "payload"
    .return ($P337)
.end


.namespace ["NQPClassHOW"]
.sub "_block313"  :anon :subid("31_1294592815.061") :outer("30_1294592815.061")
    .param pmc param_315
.annotate 'line', 88
    .lex "$_", param_315
.annotate 'line', 89
    find_lex $P318, "$_"
    find_lex $P319, "$parent"
    issame $I320, $P318, $P319
    if $I320, if_317
    new $P316, 'Integer'
    set $P316, $I320
    goto if_317_end
  if_317:
.annotate 'line', 90
    new $P321, "String"
    assign $P321, "Already have "
    find_lex $P322, "$parent"
    concat $P323, $P321, $P322
    concat $P324, $P323, " as a parent class."
    die $P324
  if_317_end:
.annotate 'line', 88
    .return ($P316)
.end


.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "compose"  :subid("32_1294592815.061") :outer("15_1294592815.061")
    .param pmc param_341
    .param pmc param_342
.annotate 'line', 96
    new $P340, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P340, control_339
    push_eh $P340
    .lex "self", param_341
    .lex "$obj", param_342
.annotate 'line', 101
    find_lex $P344, "self"
    get_global $P345, "$?CLASS"
    getattribute $P346, $P344, $P345, "$!composed"
    unless_null $P346, vivify_79
    new $P346, "Undef"
  vivify_79:
    if $P346, unless_343_end
.annotate 'line', 102
    find_lex $P347, "$obj"
    $P348 = "compute_c3_mro"($P347)
    find_lex $P349, "self"
    get_global $P350, "$?CLASS"
    setattribute $P349, $P350, "@!mro", $P348
.annotate 'line', 103
    new $P351, "Integer"
    assign $P351, 1
    find_lex $P352, "self"
    get_global $P353, "$?CLASS"
    setattribute $P352, $P353, "$!composed", $P351
  unless_343_end:
.annotate 'line', 101
    find_lex $P354, "$obj"
.annotate 'line', 96
    .return ($P354)
  control_339:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P355, exception, "payload"
    .return ($P355)
.end


.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "parents"  :subid("33_1294592815.061") :outer("15_1294592815.061")
    .param pmc param_361
    .param pmc param_362
    .param pmc param_363 :named("local")
.annotate 'line', 202
    new $P360, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P360, control_359
    push_eh $P360
    .lex "self", param_361
    .lex "$obj", param_362
    .lex "$local", param_363
    find_lex $P364, "self"
    get_global $P365, "$?CLASS"
    getattribute $P366, $P364, $P365, "@!parents"
    unless_null $P366, vivify_80
    $P366 = root_new ['parrot';'ResizablePMCArray']
  vivify_80:
    .return ($P366)
  control_359:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P367, exception, "payload"
    .return ($P367)
.end


.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "roles"  :subid("34_1294592815.061") :outer("15_1294592815.061")
    .param pmc param_371
    .param pmc param_372
    .param pmc param_373 :named("local")
.annotate 'line', 206
    new $P370, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P370, control_369
    push_eh $P370
    .lex "self", param_371
    .lex "$obj", param_372
    .lex "$local", param_373
    find_lex $P374, "self"
    get_global $P375, "$?CLASS"
    getattribute $P376, $P374, $P375, "@!roles"
    unless_null $P376, vivify_81
    $P376 = root_new ['parrot';'ResizablePMCArray']
  vivify_81:
    .return ($P376)
  control_369:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P377, exception, "payload"
    .return ($P377)
.end


.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "methods"  :subid("35_1294592815.061") :outer("15_1294592815.061")
    .param pmc param_381
    .param pmc param_382
    .param pmc param_383 :named("local")
.annotate 'line', 210
    .const 'Sub' $P393 = "36_1294592815.061" 
    capture_lex $P393
    new $P380, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P380, control_379
    push_eh $P380
    .lex "self", param_381
    .lex "$obj", param_382
    .lex "$local", param_383
.annotate 'line', 211
    $P384 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meths", $P384
.annotate 'line', 210
    find_lex $P385, "@meths"
.annotate 'line', 212
    find_lex $P387, "self"
    get_global $P388, "$?CLASS"
    getattribute $P389, $P387, $P388, "%!methods"
    unless_null $P389, vivify_82
    $P389 = root_new ['parrot';'Hash']
  vivify_82:
    defined $I390, $P389
    unless $I390, for_undef_83
    iter $P386, $P389
    new $P400, 'ExceptionHandler'
    set_addr $P400, loop399_handler
    $P400."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P400
  loop399_test:
    unless $P386, loop399_done
    shift $P391, $P386
  loop399_redo:
    .const 'Sub' $P393 = "36_1294592815.061" 
    capture_lex $P393
    $P393($P391)
  loop399_next:
    goto loop399_test
  loop399_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P401, exception, 'type'
    eq $P401, .CONTROL_LOOP_NEXT, loop399_next
    eq $P401, .CONTROL_LOOP_REDO, loop399_redo
  loop399_done:
    pop_eh 
  for_undef_83:
    find_lex $P402, "@meths"
.annotate 'line', 210
    .return ($P402)
  control_379:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P403, exception, "payload"
    .return ($P403)
.end


.namespace ["NQPClassHOW"]
.sub "_block392"  :anon :subid("36_1294592815.061") :outer("35_1294592815.061")
    .param pmc param_394
.annotate 'line', 212
    .lex "$_", param_394
.annotate 'line', 213
    find_lex $P395, "@meths"
    find_lex $P396, "$_"
    $P397 = $P396."value"()
    $P398 = $P395."push"($P397)
.annotate 'line', 212
    .return ($P398)
.end


.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "method_table"  :subid("37_1294592815.061") :outer("15_1294592815.061")
    .param pmc param_407
    .param pmc param_408
.annotate 'line', 218
    new $P406, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P406, control_405
    push_eh $P406
    .lex "self", param_407
    .lex "$obj", param_408
    find_lex $P409, "self"
    get_global $P410, "$?CLASS"
    getattribute $P411, $P409, $P410, "%!methods"
    unless_null $P411, vivify_84
    $P411 = root_new ['parrot';'Hash']
  vivify_84:
    .return ($P411)
  control_405:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P412, exception, "payload"
    .return ($P412)
.end


.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "attributes"  :subid("38_1294592815.061") :outer("15_1294592815.061")
    .param pmc param_416
    .param pmc param_417
    .param pmc param_418 :named("local")
.annotate 'line', 222
    .const 'Sub' $P428 = "39_1294592815.061" 
    capture_lex $P428
    new $P415, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P415, control_414
    push_eh $P415
    .lex "self", param_416
    .lex "$obj", param_417
    .lex "$local", param_418
.annotate 'line', 223
    $P419 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attrs", $P419
.annotate 'line', 222
    find_lex $P420, "@attrs"
.annotate 'line', 224
    find_lex $P422, "self"
    get_global $P423, "$?CLASS"
    getattribute $P424, $P422, $P423, "%!attributes"
    unless_null $P424, vivify_85
    $P424 = root_new ['parrot';'Hash']
  vivify_85:
    defined $I425, $P424
    unless $I425, for_undef_86
    iter $P421, $P424
    new $P435, 'ExceptionHandler'
    set_addr $P435, loop434_handler
    $P435."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P435
  loop434_test:
    unless $P421, loop434_done
    shift $P426, $P421
  loop434_redo:
    .const 'Sub' $P428 = "39_1294592815.061" 
    capture_lex $P428
    $P428($P426)
  loop434_next:
    goto loop434_test
  loop434_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P436, exception, 'type'
    eq $P436, .CONTROL_LOOP_NEXT, loop434_next
    eq $P436, .CONTROL_LOOP_REDO, loop434_redo
  loop434_done:
    pop_eh 
  for_undef_86:
    find_lex $P437, "@attrs"
.annotate 'line', 222
    .return ($P437)
  control_414:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P438, exception, "payload"
    .return ($P438)
.end


.namespace ["NQPClassHOW"]
.sub "_block427"  :anon :subid("39_1294592815.061") :outer("38_1294592815.061")
    .param pmc param_429
.annotate 'line', 224
    .lex "$_", param_429
.annotate 'line', 225
    find_lex $P430, "@attrs"
    find_lex $P431, "$_"
    $P432 = $P431."value"()
    $P433 = $P430."push"($P432)
.annotate 'line', 224
    .return ($P433)
.end


.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "isa"  :subid("40_1294592815.061") :outer("15_1294592815.061")
    .param pmc param_442
    .param pmc param_443
    .param pmc param_444
.annotate 'line', 234
    new $P441, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P441, control_440
    push_eh $P441
    .lex "self", param_442
    .lex "$obj", param_443
    .lex "$check", param_444
.annotate 'line', 235
    new $P445, "Undef"
    .lex "$check-class", $P445
.annotate 'line', 236
    new $P446, "Undef"
    .lex "$i", $P446
.annotate 'line', 235
    find_lex $P447, "$check"
    get_what $P448, $P447
    store_lex "$check-class", $P448
.annotate 'line', 236
    find_lex $P449, "self"
    get_global $P450, "$?CLASS"
    getattribute $P451, $P449, $P450, "@!mro"
    unless_null $P451, vivify_87
    $P451 = root_new ['parrot';'ResizablePMCArray']
  vivify_87:
    set $N452, $P451
    new $P453, 'Float'
    set $P453, $N452
    store_lex "$i", $P453
.annotate 'line', 237
    new $P471, 'ExceptionHandler'
    set_addr $P471, loop470_handler
    $P471."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P471
  loop470_test:
    find_lex $P454, "$i"
    set $N455, $P454
    isgt $I456, $N455, 0.0
    unless $I456, loop470_done
  loop470_redo:
.annotate 'line', 238
    find_lex $P457, "$i"
    sub $P458, $P457, 1
    store_lex "$i", $P458
.annotate 'line', 239
    find_lex $P460, "$i"
    set $I461, $P460
    find_lex $P462, "self"
    get_global $P463, "$?CLASS"
    getattribute $P464, $P462, $P463, "@!mro"
    unless_null $P464, vivify_88
    $P464 = root_new ['parrot';'ResizablePMCArray']
  vivify_88:
    set $P465, $P464[$I461]
    unless_null $P465, vivify_89
    new $P465, "Undef"
  vivify_89:
    find_lex $P466, "$check-class"
    issame $I467, $P465, $P466
    unless $I467, if_459_end
.annotate 'line', 240
    new $P468, "Exception"
    set $P468['type'], .CONTROL_RETURN
    new $P469, "Integer"
    assign $P469, 1
    setattribute $P468, 'payload', $P469
    throw $P468
  if_459_end:
  loop470_next:
.annotate 'line', 237
    goto loop470_test
  loop470_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P472, exception, 'type'
    eq $P472, .CONTROL_LOOP_NEXT, loop470_next
    eq $P472, .CONTROL_LOOP_REDO, loop470_redo
  loop470_done:
    pop_eh 
.annotate 'line', 243
    new $P473, "Exception"
    set $P473['type'], .CONTROL_RETURN
    new $P474, "Integer"
    assign $P474, 0
    setattribute $P473, 'payload', $P474
    throw $P473
.annotate 'line', 234
    .return ()
  control_440:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P475, exception, "payload"
    .return ($P475)
.end


.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "does"  :subid("41_1294592815.061") :outer("15_1294592815.061")
    .param pmc param_479
    .param pmc param_480
    .param pmc param_481
.annotate 'line', 246
    new $P478, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P478, control_477
    push_eh $P478
    .lex "self", param_479
    .lex "$obj", param_480
    .lex "$check", param_481
.annotate 'line', 247
    new $P482, "Undef"
    .lex "$i", $P482
    find_lex $P483, "self"
    get_global $P484, "$?CLASS"
    getattribute $P485, $P483, $P484, "@!done"
    unless_null $P485, vivify_90
    $P485 = root_new ['parrot';'ResizablePMCArray']
  vivify_90:
    set $N486, $P485
    new $P487, 'Float'
    set $P487, $N486
    store_lex "$i", $P487
.annotate 'line', 248
    new $P505, 'ExceptionHandler'
    set_addr $P505, loop504_handler
    $P505."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P505
  loop504_test:
    find_lex $P488, "$i"
    set $N489, $P488
    isgt $I490, $N489, 0.0
    unless $I490, loop504_done
  loop504_redo:
.annotate 'line', 249
    find_lex $P491, "$i"
    sub $P492, $P491, 1
    store_lex "$i", $P492
.annotate 'line', 250
    find_lex $P494, "$i"
    set $I495, $P494
    find_lex $P496, "self"
    get_global $P497, "$?CLASS"
    getattribute $P498, $P496, $P497, "@!done"
    unless_null $P498, vivify_91
    $P498 = root_new ['parrot';'ResizablePMCArray']
  vivify_91:
    set $P499, $P498[$I495]
    unless_null $P499, vivify_92
    new $P499, "Undef"
  vivify_92:
    find_lex $P500, "$check"
    issame $I501, $P499, $P500
    unless $I501, if_493_end
.annotate 'line', 251
    new $P502, "Exception"
    set $P502['type'], .CONTROL_RETURN
    new $P503, "Integer"
    assign $P503, 1
    setattribute $P502, 'payload', $P503
    throw $P502
  if_493_end:
  loop504_next:
.annotate 'line', 248
    goto loop504_test
  loop504_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P506, exception, 'type'
    eq $P506, .CONTROL_LOOP_NEXT, loop504_next
    eq $P506, .CONTROL_LOOP_REDO, loop504_redo
  loop504_done:
    pop_eh 
.annotate 'line', 254
    new $P507, "Exception"
    set $P507['type'], .CONTROL_RETURN
    new $P508, "Integer"
    assign $P508, 0
    setattribute $P507, 'payload', $P508
    throw $P507
.annotate 'line', 246
    .return ()
  control_477:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P509, exception, "payload"
    .return ($P509)
.end


.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "can"  :subid("42_1294592815.061") :outer("15_1294592815.061")
    .param pmc param_513
    .param pmc param_514
    .param pmc param_515
.annotate 'line', 257
    .const 'Sub' $P523 = "43_1294592815.061" 
    capture_lex $P523
    new $P512, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P512, control_511
    push_eh $P512
    .lex "self", param_513
    .lex "$obj", param_514
    .lex "$name", param_515
.annotate 'line', 258
    find_lex $P517, "self"
    get_global $P518, "$?CLASS"
    getattribute $P519, $P517, $P518, "@!mro"
    unless_null $P519, vivify_93
    $P519 = root_new ['parrot';'ResizablePMCArray']
  vivify_93:
    defined $I520, $P519
    unless $I520, for_undef_94
    iter $P516, $P519
    new $P541, 'ExceptionHandler'
    set_addr $P541, loop540_handler
    $P541."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P541
  loop540_test:
    unless $P516, loop540_done
    shift $P521, $P516
  loop540_redo:
    .const 'Sub' $P523 = "43_1294592815.061" 
    capture_lex $P523
    $P523($P521)
  loop540_next:
    goto loop540_test
  loop540_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P542, exception, 'type'
    eq $P542, .CONTROL_LOOP_NEXT, loop540_next
    eq $P542, .CONTROL_LOOP_REDO, loop540_redo
  loop540_done:
    pop_eh 
  for_undef_94:
.annotate 'line', 265
    new $P543, "Exception"
    set $P543['type'], .CONTROL_RETURN
    new $P544, "Integer"
    assign $P544, 0
    setattribute $P543, 'payload', $P544
    throw $P543
.annotate 'line', 257
    .return ()
  control_511:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P545, exception, "payload"
    .return ($P545)
.end


.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block522"  :anon :subid("43_1294592815.061") :outer("42_1294592815.061")
    .param pmc param_526
.annotate 'line', 259
    $P524 = root_new ['parrot';'Hash']
    .lex "%meths", $P524
.annotate 'line', 260
    new $P525, "Undef"
    .lex "$can", $P525
    .lex "$_", param_526
.annotate 'line', 259
    find_lex $P527, "$_"
    get_how $P528, $P527
    find_lex $P529, "$obj"
    $P530 = $P528."method_table"($P529)
    store_lex "%meths", $P530
.annotate 'line', 260
    find_lex $P531, "$name"
    find_lex $P532, "%meths"
    unless_null $P532, vivify_95
    $P532 = root_new ['parrot';'Hash']
  vivify_95:
    set $P533, $P532[$P531]
    unless_null $P533, vivify_96
    new $P533, "Undef"
  vivify_96:
    store_lex "$can", $P533
.annotate 'line', 261
    find_lex $P536, "$can"
    defined $I537, $P536
    if $I537, if_535
    new $P534, 'Integer'
    set $P534, $I537
    goto if_535_end
  if_535:
.annotate 'line', 262
    new $P538, "Exception"
    set $P538['type'], .CONTROL_RETURN
    find_lex $P539, "$can"
    setattribute $P538, 'payload', $P539
    throw $P538
  if_535_end:
.annotate 'line', 258
    .return ($P534)
.end


.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "find_method"  :subid("44_1294592815.061") :outer("15_1294592815.061")
    .param pmc param_549
    .param pmc param_550
    .param pmc param_551
.annotate 'line', 271
    .const 'Sub' $P559 = "45_1294592815.061" 
    capture_lex $P559
    new $P548, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P548, control_547
    push_eh $P548
    .lex "self", param_549
    .lex "$obj", param_550
    .lex "$name", param_551
.annotate 'line', 272
    find_lex $P553, "self"
    get_global $P554, "$?CLASS"
    getattribute $P555, $P553, $P554, "@!mro"
    unless_null $P555, vivify_97
    $P555 = root_new ['parrot';'ResizablePMCArray']
  vivify_97:
    defined $I556, $P555
    unless $I556, for_undef_98
    iter $P552, $P555
    new $P577, 'ExceptionHandler'
    set_addr $P577, loop576_handler
    $P577."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P577
  loop576_test:
    unless $P552, loop576_done
    shift $P557, $P552
  loop576_redo:
    .const 'Sub' $P559 = "45_1294592815.061" 
    capture_lex $P559
    $P559($P557)
  loop576_next:
    goto loop576_test
  loop576_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P578, exception, 'type'
    eq $P578, .CONTROL_LOOP_NEXT, loop576_next
    eq $P578, .CONTROL_LOOP_REDO, loop576_redo
  loop576_done:
    pop_eh 
  for_undef_98:
.annotate 'line', 279
    new $P579, "String"
    assign $P579, "Could not find method "
    find_lex $P580, "$name"
    concat $P581, $P579, $P580
    die $P581
.annotate 'line', 271
    .return ()
  control_547:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P582, exception, "payload"
    .return ($P582)
.end


.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block558"  :anon :subid("45_1294592815.061") :outer("44_1294592815.061")
    .param pmc param_562
.annotate 'line', 273
    $P560 = root_new ['parrot';'Hash']
    .lex "%meths", $P560
.annotate 'line', 274
    new $P561, "Undef"
    .lex "$found", $P561
    .lex "$_", param_562
.annotate 'line', 273
    find_lex $P563, "$_"
    get_how $P564, $P563
    find_lex $P565, "$obj"
    $P566 = $P564."method_table"($P565)
    store_lex "%meths", $P566
.annotate 'line', 274
    find_lex $P567, "$name"
    find_lex $P568, "%meths"
    unless_null $P568, vivify_99
    $P568 = root_new ['parrot';'Hash']
  vivify_99:
    set $P569, $P568[$P567]
    unless_null $P569, vivify_100
    new $P569, "Undef"
  vivify_100:
    store_lex "$found", $P569
.annotate 'line', 275
    find_lex $P572, "$found"
    defined $I573, $P572
    if $I573, if_571
    new $P570, 'Integer'
    set $P570, $I573
    goto if_571_end
  if_571:
.annotate 'line', 276
    new $P574, "Exception"
    set $P574['type'], .CONTROL_RETURN
    find_lex $P575, "$found"
    setattribute $P574, 'payload', $P575
    throw $P574
  if_571_end:
.annotate 'line', 272
    .return ($P570)
.end


.namespace ["NQPAttribute"]
.sub "_block650"  :subid("47_1294592815.061") :outer("10_1294592815.061")
.annotate 'line', 284
    .const 'Sub' $P685 = "51_1294592815.061" 
    capture_lex $P685
    .const 'Sub' $P675 = "50_1294592815.061" 
    capture_lex $P675
    .const 'Sub' $P665 = "49_1294592815.061" 
    capture_lex $P665
    .const 'Sub' $P653 = "48_1294592815.061" 
    capture_lex $P653
    get_global $P652, "$?CLASS"
.annotate 'line', 297
    .const 'Sub' $P675 = "50_1294592815.061" 
    newclosure $P683, $P675
.annotate 'line', 284
    .return ($P683)
.end


.namespace ["NQPAttribute"]
.sub "" :load :init :subid("post101") :outer("47_1294592815.061")
.annotate 'line', 284
    get_hll_global $P651, ["NQPAttribute"], "_block650" 
    .local pmc block
    set block, $P651
    .const 'Sub' $P685 = "51_1294592815.061" 
    capture_lex $P685
    $P685()
.end


.namespace ["NQPAttribute"]
.sub "_block684"  :anon :subid("51_1294592815.061") :outer("47_1294592815.061")
.annotate 'line', 284
    get_hll_global $P686, "KnowHOW"
    $P687 = $P686."new_type"()
    .local pmc type_obj
    set type_obj, $P687
    set_hll_global "NQPAttribute", type_obj
    set_global "$?CLASS", type_obj
    get_how $P688, type_obj
    get_hll_global $P689, "KnowHOWAttribute"
    $P690 = $P689."new"("$!name" :named("name"))
    $P688."add_attribute"(type_obj, $P690)
    get_how $P691, type_obj
    .const 'Sub' $P692 = "48_1294592815.061" 
    $P691."add_method"(type_obj, "new", $P692)
    get_how $P693, type_obj
    .const 'Sub' $P694 = "49_1294592815.061" 
    $P693."add_method"(type_obj, "BUILD", $P694)
    get_how $P695, type_obj
    .const 'Sub' $P696 = "50_1294592815.061" 
    $P695."add_method"(type_obj, "name", $P696)
    get_how $P697, type_obj
    $P698 = $P697."compose"(type_obj)
    .return ($P698)
.end


.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "new"  :subid("48_1294592815.061") :outer("47_1294592815.061")
    .param pmc param_656
    .param pmc param_657 :named("name")
.annotate 'line', 287
    new $P655, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P655, control_654
    push_eh $P655
    .lex "self", param_656
    .lex "$name", param_657
.annotate 'line', 288
    new $P658, "Undef"
    .lex "$attr", $P658
    find_lex $P659, "self"
    repr_instance_of $P660, $P659
    store_lex "$attr", $P660
.annotate 'line', 289
    find_lex $P661, "$attr"
    find_lex $P662, "$name"
    $P661."BUILD"($P662 :named("name"))
    find_lex $P663, "$attr"
.annotate 'line', 287
    .return ($P663)
  control_654:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P664, exception, "payload"
    .return ($P664)
.end


.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "BUILD"  :subid("49_1294592815.061") :outer("47_1294592815.061")
    .param pmc param_668
    .param pmc param_669 :optional :named("name")
    .param int has_param_669 :opt_flag
.annotate 'line', 293
    new $P667, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P667, control_666
    push_eh $P667
    .lex "self", param_668
    if has_param_669, optparam_102
    new $P670, "Undef"
    set param_669, $P670
  optparam_102:
    .lex "$name", param_669
.annotate 'line', 294
    find_lex $P671, "$name"
    find_lex $P672, "self"
    get_global $P673, "$?CLASS"
    setattribute $P672, $P673, "$!name", $P671
.annotate 'line', 293
    .return ($P671)
  control_666:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P674, exception, "payload"
    .return ($P674)
.end


.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "name"  :subid("50_1294592815.061") :outer("47_1294592815.061")
    .param pmc param_678
.annotate 'line', 297
    new $P677, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P677, control_676
    push_eh $P677
    .lex "self", param_678
    find_lex $P679, "self"
    get_global $P680, "$?CLASS"
    getattribute $P681, $P679, $P680, "$!name"
    unless_null $P681, vivify_103
    new $P681, "Undef"
  vivify_103:
    .return ($P681)
  control_676:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P682, exception, "payload"
    .return ($P682)
.end


.namespace []
.sub "_block700" :load :anon :subid("52_1294592815.061")
.annotate 'line', 1
    .const 'Sub' $P702 = "10_1294592815.061" 
    $P703 = $P702()
    .return ($P703)
.end


.sub '' :anon :load :init
    load_bytecode 'P6Regex.pbc'
.end

### .include 'gen/nqp-grammar.pir'

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1294592820.342")
.annotate 'line', 0
    get_hll_global $P14, ["NQP";"Grammar"], "_block13" 
    capture_lex $P14
.annotate 'line', 1
    nqp_dynop_setup 
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 4
    get_hll_global $P14, ["NQP";"Grammar"], "_block13" 
    capture_lex $P14
    $P1524 = $P14()
.annotate 'line', 1
    .return ($P1524)
    .const 'Sub' $P1526 = "385_1294592820.342" 
    .return ($P1526)
.end


.namespace []
.sub "" :load :init :subid("post386") :outer("10_1294592820.342")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1294592820.342" 
    .local pmc block
    set block, $P12
    $P1529 = get_root_global ["parrot"], "P6metaclass"
    $P1529."new_class"("NQP::Grammar", "HLL::Grammar" :named("parent"))
.end


.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace ["NQP";"Grammar"]
.sub "_block13"  :subid("11_1294592820.342") :outer("10_1294592820.342")
.annotate 'line', 4
    get_hll_global $P1441, ["NQP";"Regex"], "_block1440" 
    capture_lex $P1441
    .const 'Sub' $P1427 = "362_1294592820.342" 
    capture_lex $P1427
    .const 'Sub' $P1421 = "360_1294592820.342" 
    capture_lex $P1421
    .const 'Sub' $P1415 = "358_1294592820.342" 
    capture_lex $P1415
    .const 'Sub' $P1409 = "356_1294592820.342" 
    capture_lex $P1409
    .const 'Sub' $P1403 = "354_1294592820.342" 
    capture_lex $P1403
    .const 'Sub' $P1397 = "352_1294592820.342" 
    capture_lex $P1397
    .const 'Sub' $P1390 = "350_1294592820.342" 
    capture_lex $P1390
    .const 'Sub' $P1383 = "348_1294592820.342" 
    capture_lex $P1383
    .const 'Sub' $P1376 = "346_1294592820.342" 
    capture_lex $P1376
    .const 'Sub' $P1369 = "344_1294592820.342" 
    capture_lex $P1369
    .const 'Sub' $P1363 = "342_1294592820.342" 
    capture_lex $P1363
    .const 'Sub' $P1356 = "340_1294592820.342" 
    capture_lex $P1356
    .const 'Sub' $P1349 = "338_1294592820.342" 
    capture_lex $P1349
    .const 'Sub' $P1342 = "336_1294592820.342" 
    capture_lex $P1342
    .const 'Sub' $P1335 = "334_1294592820.342" 
    capture_lex $P1335
    .const 'Sub' $P1328 = "332_1294592820.342" 
    capture_lex $P1328
    .const 'Sub' $P1321 = "330_1294592820.342" 
    capture_lex $P1321
    .const 'Sub' $P1314 = "328_1294592820.342" 
    capture_lex $P1314
    .const 'Sub' $P1307 = "326_1294592820.342" 
    capture_lex $P1307
    .const 'Sub' $P1300 = "324_1294592820.342" 
    capture_lex $P1300
    .const 'Sub' $P1293 = "322_1294592820.342" 
    capture_lex $P1293
    .const 'Sub' $P1286 = "320_1294592820.342" 
    capture_lex $P1286
    .const 'Sub' $P1279 = "318_1294592820.342" 
    capture_lex $P1279
    .const 'Sub' $P1272 = "316_1294592820.342" 
    capture_lex $P1272
    .const 'Sub' $P1265 = "314_1294592820.342" 
    capture_lex $P1265
    .const 'Sub' $P1258 = "312_1294592820.342" 
    capture_lex $P1258
    .const 'Sub' $P1251 = "310_1294592820.342" 
    capture_lex $P1251
    .const 'Sub' $P1244 = "308_1294592820.342" 
    capture_lex $P1244
    .const 'Sub' $P1237 = "306_1294592820.342" 
    capture_lex $P1237
    .const 'Sub' $P1230 = "304_1294592820.342" 
    capture_lex $P1230
    .const 'Sub' $P1223 = "302_1294592820.342" 
    capture_lex $P1223
    .const 'Sub' $P1216 = "300_1294592820.342" 
    capture_lex $P1216
    .const 'Sub' $P1209 = "298_1294592820.342" 
    capture_lex $P1209
    .const 'Sub' $P1202 = "296_1294592820.342" 
    capture_lex $P1202
    .const 'Sub' $P1195 = "294_1294592820.342" 
    capture_lex $P1195
    .const 'Sub' $P1188 = "292_1294592820.342" 
    capture_lex $P1188
    .const 'Sub' $P1181 = "290_1294592820.342" 
    capture_lex $P1181
    .const 'Sub' $P1174 = "288_1294592820.342" 
    capture_lex $P1174
    .const 'Sub' $P1167 = "286_1294592820.342" 
    capture_lex $P1167
    .const 'Sub' $P1160 = "284_1294592820.342" 
    capture_lex $P1160
    .const 'Sub' $P1154 = "282_1294592820.342" 
    capture_lex $P1154
    .const 'Sub' $P1147 = "280_1294592820.342" 
    capture_lex $P1147
    .const 'Sub' $P1140 = "278_1294592820.342" 
    capture_lex $P1140
    .const 'Sub' $P1133 = "276_1294592820.342" 
    capture_lex $P1133
    .const 'Sub' $P1126 = "274_1294592820.342" 
    capture_lex $P1126
    .const 'Sub' $P1119 = "272_1294592820.342" 
    capture_lex $P1119
    .const 'Sub' $P1112 = "270_1294592820.342" 
    capture_lex $P1112
    .const 'Sub' $P1105 = "268_1294592820.342" 
    capture_lex $P1105
    .const 'Sub' $P1099 = "266_1294592820.342" 
    capture_lex $P1099
    .const 'Sub' $P1093 = "264_1294592820.342" 
    capture_lex $P1093
    .const 'Sub' $P1088 = "262_1294592820.342" 
    capture_lex $P1088
    .const 'Sub' $P1082 = "260_1294592820.342" 
    capture_lex $P1082
    .const 'Sub' $P1076 = "258_1294592820.342" 
    capture_lex $P1076
    .const 'Sub' $P1071 = "256_1294592820.342" 
    capture_lex $P1071
    .const 'Sub' $P1066 = "254_1294592820.342" 
    capture_lex $P1066
    .const 'Sub' $P1058 = "252_1294592820.342" 
    capture_lex $P1058
    .const 'Sub' $P1049 = "250_1294592820.342" 
    capture_lex $P1049
    .const 'Sub' $P1044 = "248_1294592820.342" 
    capture_lex $P1044
    .const 'Sub' $P1039 = "246_1294592820.342" 
    capture_lex $P1039
    .const 'Sub' $P1034 = "244_1294592820.342" 
    capture_lex $P1034
    .const 'Sub' $P1026 = "242_1294592820.342" 
    capture_lex $P1026
    .const 'Sub' $P1018 = "240_1294592820.342" 
    capture_lex $P1018
    .const 'Sub' $P1013 = "238_1294592820.342" 
    capture_lex $P1013
    .const 'Sub' $P1008 = "236_1294592820.342" 
    capture_lex $P1008
    .const 'Sub' $P1003 = "234_1294592820.342" 
    capture_lex $P1003
    .const 'Sub' $P997 = "232_1294592820.342" 
    capture_lex $P997
    .const 'Sub' $P991 = "230_1294592820.342" 
    capture_lex $P991
    .const 'Sub' $P985 = "228_1294592820.342" 
    capture_lex $P985
    .const 'Sub' $P979 = "226_1294592820.342" 
    capture_lex $P979
    .const 'Sub' $P973 = "224_1294592820.342" 
    capture_lex $P973
    .const 'Sub' $P968 = "222_1294592820.342" 
    capture_lex $P968
    .const 'Sub' $P963 = "220_1294592820.342" 
    capture_lex $P963
    .const 'Sub' $P951 = "216_1294592820.342" 
    capture_lex $P951
    .const 'Sub' $P943 = "214_1294592820.342" 
    capture_lex $P943
    .const 'Sub' $P937 = "212_1294592820.342" 
    capture_lex $P937
    .const 'Sub' $P930 = "210_1294592820.342" 
    capture_lex $P930
    .const 'Sub' $P924 = "208_1294592820.342" 
    capture_lex $P924
    .const 'Sub' $P916 = "206_1294592820.342" 
    capture_lex $P916
    .const 'Sub' $P908 = "204_1294592820.342" 
    capture_lex $P908
    .const 'Sub' $P902 = "202_1294592820.342" 
    capture_lex $P902
    .const 'Sub' $P896 = "200_1294592820.342" 
    capture_lex $P896
    .const 'Sub' $P882 = "196_1294592820.342" 
    capture_lex $P882
    .const 'Sub' $P845 = "194_1294592820.342" 
    capture_lex $P845
    .const 'Sub' $P834 = "192_1294592820.342" 
    capture_lex $P834
    .const 'Sub' $P822 = "188_1294592820.342" 
    capture_lex $P822
    .const 'Sub' $P813 = "186_1294592820.342" 
    capture_lex $P813
    .const 'Sub' $P807 = "184_1294592820.342" 
    capture_lex $P807
    .const 'Sub' $P797 = "182_1294592820.342" 
    capture_lex $P797
    .const 'Sub' $P784 = "180_1294592820.342" 
    capture_lex $P784
    .const 'Sub' $P777 = "178_1294592820.342" 
    capture_lex $P777
    .const 'Sub' $P769 = "176_1294592820.342" 
    capture_lex $P769
    .const 'Sub' $P759 = "174_1294592820.342" 
    capture_lex $P759
    .const 'Sub' $P732 = "170_1294592820.342" 
    capture_lex $P732
    .const 'Sub' $P706 = "168_1294592820.342" 
    capture_lex $P706
    .const 'Sub' $P699 = "166_1294592820.342" 
    capture_lex $P699
    .const 'Sub' $P692 = "164_1294592820.342" 
    capture_lex $P692
    .const 'Sub' $P682 = "160_1294592820.342" 
    capture_lex $P682
    .const 'Sub' $P674 = "158_1294592820.342" 
    capture_lex $P674
    .const 'Sub' $P668 = "156_1294592820.342" 
    capture_lex $P668
    .const 'Sub' $P655 = "154_1294592820.342" 
    capture_lex $P655
    .const 'Sub' $P648 = "152_1294592820.342" 
    capture_lex $P648
    .const 'Sub' $P641 = "150_1294592820.342" 
    capture_lex $P641
    .const 'Sub' $P634 = "148_1294592820.342" 
    capture_lex $P634
    .const 'Sub' $P600 = "144_1294592820.342" 
    capture_lex $P600
    .const 'Sub' $P588 = "142_1294592820.342" 
    capture_lex $P588
    .const 'Sub' $P579 = "140_1294592820.342" 
    capture_lex $P579
    .const 'Sub' $P567 = "138_1294592820.342" 
    capture_lex $P567
    .const 'Sub' $P558 = "136_1294592820.342" 
    capture_lex $P558
    .const 'Sub' $P546 = "134_1294592820.342" 
    capture_lex $P546
    .const 'Sub' $P539 = "132_1294592820.342" 
    capture_lex $P539
    .const 'Sub' $P530 = "128_1294592820.342" 
    capture_lex $P530
    .const 'Sub' $P525 = "126_1294592820.342" 
    capture_lex $P525
    .const 'Sub' $P513 = "124_1294592820.342" 
    capture_lex $P513
    .const 'Sub' $P501 = "122_1294592820.342" 
    capture_lex $P501
    .const 'Sub' $P494 = "120_1294592820.342" 
    capture_lex $P494
    .const 'Sub' $P489 = "118_1294592820.342" 
    capture_lex $P489
    .const 'Sub' $P483 = "116_1294592820.342" 
    capture_lex $P483
    .const 'Sub' $P477 = "114_1294592820.342" 
    capture_lex $P477
    .const 'Sub' $P467 = "111_1294592820.342" 
    capture_lex $P467
    .const 'Sub' $P461 = "109_1294592820.342" 
    capture_lex $P461
    .const 'Sub' $P455 = "107_1294592820.342" 
    capture_lex $P455
    .const 'Sub' $P449 = "105_1294592820.342" 
    capture_lex $P449
    .const 'Sub' $P443 = "103_1294592820.342" 
    capture_lex $P443
    .const 'Sub' $P437 = "101_1294592820.342" 
    capture_lex $P437
    .const 'Sub' $P431 = "99_1294592820.342" 
    capture_lex $P431
    .const 'Sub' $P422 = "97_1294592820.342" 
    capture_lex $P422
    .const 'Sub' $P413 = "95_1294592820.342" 
    capture_lex $P413
    .const 'Sub' $P404 = "93_1294592820.342" 
    capture_lex $P404
    .const 'Sub' $P391 = "89_1294592820.342" 
    capture_lex $P391
    .const 'Sub' $P382 = "87_1294592820.342" 
    capture_lex $P382
    .const 'Sub' $P372 = "83_1294592820.342" 
    capture_lex $P372
    .const 'Sub' $P365 = "81_1294592820.342" 
    capture_lex $P365
    .const 'Sub' $P358 = "79_1294592820.342" 
    capture_lex $P358
    .const 'Sub' $P346 = "75_1294592820.342" 
    capture_lex $P346
    .const 'Sub' $P338 = "73_1294592820.342" 
    capture_lex $P338
    .const 'Sub' $P330 = "71_1294592820.342" 
    capture_lex $P330
    .const 'Sub' $P310 = "69_1294592820.342" 
    capture_lex $P310
    .const 'Sub' $P301 = "67_1294592820.342" 
    capture_lex $P301
    .const 'Sub' $P283 = "64_1294592820.342" 
    capture_lex $P283
    .const 'Sub' $P265 = "62_1294592820.342" 
    capture_lex $P265
    .const 'Sub' $P256 = "58_1294592820.342" 
    capture_lex $P256
    .const 'Sub' $P251 = "56_1294592820.342" 
    capture_lex $P251
    .const 'Sub' $P242 = "52_1294592820.342" 
    capture_lex $P242
    .const 'Sub' $P237 = "50_1294592820.342" 
    capture_lex $P237
    .const 'Sub' $P232 = "48_1294592820.342" 
    capture_lex $P232
    .const 'Sub' $P223 = "46_1294592820.342" 
    capture_lex $P223
    .const 'Sub' $P216 = "44_1294592820.342" 
    capture_lex $P216
    .const 'Sub' $P210 = "42_1294592820.342" 
    capture_lex $P210
    .const 'Sub' $P202 = "40_1294592820.342" 
    capture_lex $P202
    .const 'Sub' $P196 = "38_1294592820.342" 
    capture_lex $P196
    .const 'Sub' $P190 = "36_1294592820.342" 
    capture_lex $P190
    .const 'Sub' $P175 = "33_1294592820.342" 
    capture_lex $P175
    .const 'Sub' $P161 = "31_1294592820.342" 
    capture_lex $P161
    .const 'Sub' $P154 = "29_1294592820.342" 
    capture_lex $P154
    .const 'Sub' $P115 = "26_1294592820.342" 
    capture_lex $P115
    .const 'Sub' $P100 = "23_1294592820.342" 
    capture_lex $P100
    .const 'Sub' $P89 = "21_1294592820.342" 
    capture_lex $P89
    .const 'Sub' $P77 = "19_1294592820.342" 
    capture_lex $P77
    .const 'Sub' $P69 = "17_1294592820.342" 
    capture_lex $P69
    .const 'Sub' $P62 = "15_1294592820.342" 
    capture_lex $P62
    .const 'Sub' $P55 = "13_1294592820.342" 
    capture_lex $P55
    .const 'Sub' $P15 = "12_1294592820.342" 
    capture_lex $P15
    nqp_dynop_setup 
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 612
    get_hll_global $P1441, ["NQP";"Regex"], "_block1440" 
    capture_lex $P1441
    $P1503 = $P1441()
.annotate 'line', 4
    .return ($P1503)
    .const 'Sub' $P1505 = "384_1294592820.342" 
    .return ($P1505)
.end


.namespace ["NQP";"Grammar"]
.sub "" :load :init :subid("post387") :outer("11_1294592820.342")
.annotate 'line', 4
    get_hll_global $P14, ["NQP";"Grammar"], "_block13" 
    .local pmc block
    set block, $P14
.annotate 'line', 493
    get_hll_global $P1508, ["NQP"], "Grammar"
    $P1508."O"(":prec<y=>, :assoc<unary>", "%methodop")
.annotate 'line', 494
    get_hll_global $P1509, ["NQP"], "Grammar"
    $P1509."O"(":prec<x=>, :assoc<unary>", "%autoincrement")
.annotate 'line', 495
    get_hll_global $P1510, ["NQP"], "Grammar"
    $P1510."O"(":prec<w=>, :assoc<left>", "%exponentiation")
.annotate 'line', 496
    get_hll_global $P1511, ["NQP"], "Grammar"
    $P1511."O"(":prec<v=>, :assoc<unary>", "%symbolic_unary")
.annotate 'line', 497
    get_hll_global $P1512, ["NQP"], "Grammar"
    $P1512."O"(":prec<u=>, :assoc<left>", "%multiplicative")
.annotate 'line', 498
    get_hll_global $P1513, ["NQP"], "Grammar"
    $P1513."O"(":prec<t=>, :assoc<left>", "%additive")
.annotate 'line', 499
    get_hll_global $P1514, ["NQP"], "Grammar"
    $P1514."O"(":prec<r=>, :assoc<left>", "%concatenation")
.annotate 'line', 500
    get_hll_global $P1515, ["NQP"], "Grammar"
    $P1515."O"(":prec<m=>, :assoc<left>", "%relational")
.annotate 'line', 501
    get_hll_global $P1516, ["NQP"], "Grammar"
    $P1516."O"(":prec<l=>, :assoc<left>", "%tight_and")
.annotate 'line', 502
    get_hll_global $P1517, ["NQP"], "Grammar"
    $P1517."O"(":prec<k=>, :assoc<left>", "%tight_or")
.annotate 'line', 503
    get_hll_global $P1518, ["NQP"], "Grammar"
    $P1518."O"(":prec<j=>, :assoc<right>", "%conditional")
.annotate 'line', 504
    get_hll_global $P1519, ["NQP"], "Grammar"
    $P1519."O"(":prec<i=>, :assoc<right>", "%assignment")
.annotate 'line', 505
    get_hll_global $P1520, ["NQP"], "Grammar"
    $P1520."O"(":prec<g=>, :assoc<list>, :nextterm<nulltermish>", "%comma")
.annotate 'line', 506
    get_hll_global $P1521, ["NQP"], "Grammar"
    $P1521."O"(":prec<f=>, :assoc<list>", "%list_infix")
.annotate 'line', 507
    get_hll_global $P1522, ["NQP"], "Grammar"
    $P1522."O"(":prec<e=>, :assoc<unary>", "%list_prefix")
.annotate 'line', 492
    $P1523 = get_root_global ["parrot"], "P6metaclass"
    $P1523."new_class"("NQP::Regex", "Regex::P6Regex::Grammar" :named("parent"))
.end


.namespace ["NQP";"Grammar"]
.include "except_types.pasm"
.sub "TOP"  :subid("12_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    new $P17, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P17, control_16
    push_eh $P17
    .lex "self", self
.annotate 'line', 5
    $P18 = root_new ['parrot';'Hash']
    .lex "%*LANG", $P18
.annotate 'line', 12
    $P19 = root_new ['parrot';'Hash']
    .lex "%*HOW", $P19
.annotate 'line', 20
    new $P20, "Undef"
    .lex "$*DEFAULT-METAATTR", $P20
.annotate 'line', 21
    $P21 = root_new ['parrot';'Hash']
    .lex "%*HOW-METAATTR", $P21
.annotate 'line', 24
    new $P22, "Undef"
    .lex "$*SCOPE", $P22
.annotate 'line', 25
    new $P23, "Undef"
    .lex "$*MULTINESS", $P23
.annotate 'line', 26
    new $P24, "Undef"
    .lex "$*PACKAGE-SETUP", $P24
.annotate 'line', 4
    find_lex $P25, "%*LANG"
    unless_null $P25, vivify_388
    get_hll_global $P25, "%LANG"
    unless_null $P25, vivify_389
    die "Contextual %*LANG not found"
  vivify_389:
  vivify_388:
.annotate 'line', 6
    get_hll_global $P26, ["NQP"], "Regex"
    find_lex $P27, "%*LANG"
    unless_null $P27, vivify_390
    get_hll_global $P27, "%LANG"
    unless_null $P27, vivify_391
    die "Contextual %*LANG not found"
  vivify_391:
    store_lex "%*LANG", $P27
  vivify_390:
    set $P27["Regex"], $P26
.annotate 'line', 7
    get_hll_global $P28, ["NQP"], "RegexActions"
    find_lex $P29, "%*LANG"
    unless_null $P29, vivify_392
    get_hll_global $P29, "%LANG"
    unless_null $P29, vivify_393
    die "Contextual %*LANG not found"
  vivify_393:
    store_lex "%*LANG", $P29
  vivify_392:
    set $P29["Regex-actions"], $P28
.annotate 'line', 8
    get_hll_global $P30, ["NQP"], "Grammar"
    find_lex $P31, "%*LANG"
    unless_null $P31, vivify_394
    get_hll_global $P31, "%LANG"
    unless_null $P31, vivify_395
    die "Contextual %*LANG not found"
  vivify_395:
    store_lex "%*LANG", $P31
  vivify_394:
    set $P31["MAIN"], $P30
.annotate 'line', 9
    get_hll_global $P32, ["NQP"], "Actions"
    find_lex $P33, "%*LANG"
    unless_null $P33, vivify_396
    get_hll_global $P33, "%LANG"
    unless_null $P33, vivify_397
    die "Contextual %*LANG not found"
  vivify_397:
    store_lex "%*LANG", $P33
  vivify_396:
    set $P33["MAIN-actions"], $P32
    find_lex $P34, "%*HOW"
    unless_null $P34, vivify_398
    get_hll_global $P34, "%HOW"
    unless_null $P34, vivify_399
    die "Contextual %*HOW not found"
  vivify_399:
  vivify_398:
.annotate 'line', 13
    new $P35, "String"
    assign $P35, "KnowHOW"
    find_lex $P36, "%*HOW"
    unless_null $P36, vivify_400
    get_hll_global $P36, "%HOW"
    unless_null $P36, vivify_401
    die "Contextual %*HOW not found"
  vivify_401:
    store_lex "%*HOW", $P36
  vivify_400:
    set $P36["knowhow"], $P35
.annotate 'line', 14
    new $P37, "String"
    assign $P37, "NQPClassHOW"
    find_lex $P38, "%*HOW"
    unless_null $P38, vivify_402
    get_hll_global $P38, "%HOW"
    unless_null $P38, vivify_403
    die "Contextual %*HOW not found"
  vivify_403:
    store_lex "%*HOW", $P38
  vivify_402:
    set $P38["class"], $P37
.annotate 'line', 15
    new $P39, "String"
    assign $P39, "NQPClassHOW"
    find_lex $P40, "%*HOW"
    unless_null $P40, vivify_404
    get_hll_global $P40, "%HOW"
    unless_null $P40, vivify_405
    die "Contextual %*HOW not found"
  vivify_405:
    store_lex "%*HOW", $P40
  vivify_404:
    set $P40["class_6m"], $P39
.annotate 'line', 16
    new $P41, "String"
    assign $P41, "NQPGrammarHOW"
    find_lex $P42, "%*HOW"
    unless_null $P42, vivify_406
    get_hll_global $P42, "%HOW"
    unless_null $P42, vivify_407
    die "Contextual %*HOW not found"
  vivify_407:
    store_lex "%*HOW", $P42
  vivify_406:
    set $P42["grammar"], $P41
.annotate 'line', 17
    new $P43, "String"
    assign $P43, "NQPRoleHOW"
    find_lex $P44, "%*HOW"
    unless_null $P44, vivify_408
    get_hll_global $P44, "%HOW"
    unless_null $P44, vivify_409
    die "Contextual %*HOW not found"
  vivify_409:
    store_lex "%*HOW", $P44
  vivify_408:
    set $P44["role"], $P43
.annotate 'line', 20
    new $P45, "String"
    assign $P45, "NQPAttribute"
    store_lex "$*DEFAULT-METAATTR", $P45
    find_lex $P46, "%*HOW-METAATTR"
    unless_null $P46, vivify_410
    get_hll_global $P46, "%HOW-METAATTR"
    unless_null $P46, vivify_411
    die "Contextual %*HOW-METAATTR not found"
  vivify_411:
  vivify_410:
.annotate 'line', 22
    new $P47, "String"
    assign $P47, "KnowHOWAttribute"
    find_lex $P48, "%*HOW-METAATTR"
    unless_null $P48, vivify_412
    get_hll_global $P48, "%HOW-METAATTR"
    unless_null $P48, vivify_413
    die "Contextual %*HOW-METAATTR not found"
  vivify_413:
    store_lex "%*HOW-METAATTR", $P48
  vivify_412:
    set $P48["knowhow"], $P47
.annotate 'line', 24
    new $P49, "String"
    assign $P49, ""
    store_lex "$*SCOPE", $P49
.annotate 'line', 25
    new $P50, "String"
    assign $P50, ""
    store_lex "$*MULTINESS", $P50
    find_lex $P51, "$*PACKAGE-SETUP"
    unless_null $P51, vivify_414
    get_hll_global $P51, "$PACKAGE-SETUP"
    unless_null $P51, vivify_415
    die "Contextual $*PACKAGE-SETUP not found"
  vivify_415:
  vivify_414:
.annotate 'line', 27
    find_lex $P52, "self"
    $P53 = $P52."comp_unit"()
.annotate 'line', 4
    .return ($P53)
  control_16:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P54, exception, "payload"
    .return ($P54)
.end


.namespace ["NQP";"Grammar"]
.sub "identifier"  :subid("13_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx56_tgt
    .local int rx56_pos
    .local int rx56_off
    .local int rx56_eos
    .local int rx56_rep
    .local pmc rx56_cur
    .local pmc rx56_debug
    (rx56_cur, rx56_pos, rx56_tgt, $I10) = self."!cursor_start"()
    getattribute rx56_debug, rx56_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx56_cur
    .local pmc match
    .lex "$/", match
    length rx56_eos, rx56_tgt
    gt rx56_pos, rx56_eos, rx56_done
    set rx56_off, 0
    lt rx56_pos, 2, rx56_start
    sub rx56_off, rx56_pos, 1
    substr rx56_tgt, rx56_tgt, rx56_off
  rx56_start:
    eq $I10, 1, rx56_restart
    if_null rx56_debug, debug_416
    rx56_cur."!cursor_debug"("START", "identifier")
  debug_416:
    $I10 = self.'from'()
    ne $I10, -1, rxscan60_done
    goto rxscan60_scan
  rxscan60_loop:
    ($P10) = rx56_cur."from"()
    inc $P10
    set rx56_pos, $P10
    ge rx56_pos, rx56_eos, rxscan60_done
  rxscan60_scan:
    set_addr $I10, rxscan60_loop
    rx56_cur."!mark_push"(0, rx56_pos, $I10)
  rxscan60_done:
.annotate 'line', 32
  # rx subrule "ident" subtype=method negate=
    rx56_cur."!cursor_pos"(rx56_pos)
    $P10 = rx56_cur."ident"()
    unless $P10, rx56_fail
    rx56_pos = $P10."pos"()
  # rx rxquantr61 ** 0..*
    set_addr $I10, rxquantr61_done
    rx56_cur."!mark_push"(0, rx56_pos, $I10)
  rxquantr61_loop:
  # rx enumcharlist negate=0 
    ge rx56_pos, rx56_eos, rx56_fail
    sub $I10, rx56_pos, rx56_off
    substr $S10, rx56_tgt, $I10, 1
    index $I11, "-'", $S10
    lt $I11, 0, rx56_fail
    inc rx56_pos
  # rx subrule "ident" subtype=method negate=
    rx56_cur."!cursor_pos"(rx56_pos)
    $P10 = rx56_cur."ident"()
    unless $P10, rx56_fail
    rx56_pos = $P10."pos"()
    set_addr $I10, rxquantr61_done
    (rx56_rep) = rx56_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr61_done
    rx56_cur."!mark_push"(rx56_rep, rx56_pos, $I10)
    goto rxquantr61_loop
  rxquantr61_done:
  # rx pass
    rx56_cur."!cursor_pass"(rx56_pos, "identifier")
    if_null rx56_debug, debug_417
    rx56_cur."!cursor_debug"("PASS", "identifier", " at pos=", rx56_pos)
  debug_417:
    .return (rx56_cur)
  rx56_restart:
.annotate 'line', 4
    if_null rx56_debug, debug_418
    rx56_cur."!cursor_debug"("NEXT", "identifier")
  debug_418:
  rx56_fail:
    (rx56_rep, rx56_pos, $I10, $P10) = rx56_cur."!mark_fail"(0)
    lt rx56_pos, -1, rx56_done
    eq rx56_pos, -1, rx56_fail
    jump $I10
  rx56_done:
    rx56_cur."!cursor_fail"()
    if_null rx56_debug, debug_419
    rx56_cur."!cursor_debug"("FAIL", "identifier")
  debug_419:
    .return (rx56_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__identifier"  :subid("14_1294592820.342") :method
.annotate 'line', 4
    $P58 = self."!PREFIX__!subrule"("ident", "")
    new $P59, "ResizablePMCArray"
    push $P59, $P58
    .return ($P59)
.end


.namespace ["NQP";"Grammar"]
.sub "name"  :subid("15_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx63_tgt
    .local int rx63_pos
    .local int rx63_off
    .local int rx63_eos
    .local int rx63_rep
    .local pmc rx63_cur
    .local pmc rx63_debug
    (rx63_cur, rx63_pos, rx63_tgt, $I10) = self."!cursor_start"()
    rx63_cur."!cursor_caparray"("identifier")
    getattribute rx63_debug, rx63_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx63_cur
    .local pmc match
    .lex "$/", match
    length rx63_eos, rx63_tgt
    gt rx63_pos, rx63_eos, rx63_done
    set rx63_off, 0
    lt rx63_pos, 2, rx63_start
    sub rx63_off, rx63_pos, 1
    substr rx63_tgt, rx63_tgt, rx63_off
  rx63_start:
    eq $I10, 1, rx63_restart
    if_null rx63_debug, debug_420
    rx63_cur."!cursor_debug"("START", "name")
  debug_420:
    $I10 = self.'from'()
    ne $I10, -1, rxscan66_done
    goto rxscan66_scan
  rxscan66_loop:
    ($P10) = rx63_cur."from"()
    inc $P10
    set rx63_pos, $P10
    ge rx63_pos, rx63_eos, rxscan66_done
  rxscan66_scan:
    set_addr $I10, rxscan66_loop
    rx63_cur."!mark_push"(0, rx63_pos, $I10)
  rxscan66_done:
.annotate 'line', 34
  # rx rxquantr67 ** 1..*
    set_addr $I10, rxquantr67_done
    rx63_cur."!mark_push"(0, -1, $I10)
  rxquantr67_loop:
  # rx subrule "identifier" subtype=capture negate=
    rx63_cur."!cursor_pos"(rx63_pos)
    $P10 = rx63_cur."identifier"()
    unless $P10, rx63_fail
    goto rxsubrule68_pass
  rxsubrule68_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx63_fail
  rxsubrule68_pass:
    set_addr $I10, rxsubrule68_back
    rx63_cur."!mark_push"(0, rx63_pos, $I10, $P10)
    $P10."!cursor_names"("identifier")
    rx63_pos = $P10."pos"()
    set_addr $I10, rxquantr67_done
    (rx63_rep) = rx63_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr67_done
    rx63_cur."!mark_push"(rx63_rep, rx63_pos, $I10)
  # rx literal  "::"
    add $I11, rx63_pos, 2
    gt $I11, rx63_eos, rx63_fail
    sub $I11, rx63_pos, rx63_off
    substr $S10, rx63_tgt, $I11, 2
    ne $S10, "::", rx63_fail
    add rx63_pos, 2
    goto rxquantr67_loop
  rxquantr67_done:
  # rx pass
    rx63_cur."!cursor_pass"(rx63_pos, "name")
    if_null rx63_debug, debug_421
    rx63_cur."!cursor_debug"("PASS", "name", " at pos=", rx63_pos)
  debug_421:
    .return (rx63_cur)
  rx63_restart:
.annotate 'line', 4
    if_null rx63_debug, debug_422
    rx63_cur."!cursor_debug"("NEXT", "name")
  debug_422:
  rx63_fail:
    (rx63_rep, rx63_pos, $I10, $P10) = rx63_cur."!mark_fail"(0)
    lt rx63_pos, -1, rx63_done
    eq rx63_pos, -1, rx63_fail
    jump $I10
  rx63_done:
    rx63_cur."!cursor_fail"()
    if_null rx63_debug, debug_423
    rx63_cur."!cursor_debug"("FAIL", "name")
  debug_423:
    .return (rx63_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__name"  :subid("16_1294592820.342") :method
.annotate 'line', 4
    new $P65, "ResizablePMCArray"
    push $P65, ""
    .return ($P65)
.end


.namespace ["NQP";"Grammar"]
.sub "deflongname"  :subid("17_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx70_tgt
    .local int rx70_pos
    .local int rx70_off
    .local int rx70_eos
    .local int rx70_rep
    .local pmc rx70_cur
    .local pmc rx70_debug
    (rx70_cur, rx70_pos, rx70_tgt, $I10) = self."!cursor_start"()
    rx70_cur."!cursor_caparray"("colonpair")
    getattribute rx70_debug, rx70_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx70_cur
    .local pmc match
    .lex "$/", match
    length rx70_eos, rx70_tgt
    gt rx70_pos, rx70_eos, rx70_done
    set rx70_off, 0
    lt rx70_pos, 2, rx70_start
    sub rx70_off, rx70_pos, 1
    substr rx70_tgt, rx70_tgt, rx70_off
  rx70_start:
    eq $I10, 1, rx70_restart
    if_null rx70_debug, debug_424
    rx70_cur."!cursor_debug"("START", "deflongname")
  debug_424:
    $I10 = self.'from'()
    ne $I10, -1, rxscan74_done
    goto rxscan74_scan
  rxscan74_loop:
    ($P10) = rx70_cur."from"()
    inc $P10
    set rx70_pos, $P10
    ge rx70_pos, rx70_eos, rxscan74_done
  rxscan74_scan:
    set_addr $I10, rxscan74_loop
    rx70_cur."!mark_push"(0, rx70_pos, $I10)
  rxscan74_done:
.annotate 'line', 37
  # rx subrule "identifier" subtype=capture negate=
    rx70_cur."!cursor_pos"(rx70_pos)
    $P10 = rx70_cur."identifier"()
    unless $P10, rx70_fail
    rx70_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx70_pos = $P10."pos"()
  # rx rxquantr75 ** 0..1
    set_addr $I10, rxquantr75_done
    rx70_cur."!mark_push"(0, rx70_pos, $I10)
  rxquantr75_loop:
  # rx subrule "colonpair" subtype=capture negate=
    rx70_cur."!cursor_pos"(rx70_pos)
    $P10 = rx70_cur."colonpair"()
    unless $P10, rx70_fail
    goto rxsubrule76_pass
  rxsubrule76_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx70_fail
  rxsubrule76_pass:
    set_addr $I10, rxsubrule76_back
    rx70_cur."!mark_push"(0, rx70_pos, $I10, $P10)
    $P10."!cursor_names"("colonpair")
    rx70_pos = $P10."pos"()
    set_addr $I10, rxquantr75_done
    (rx70_rep) = rx70_cur."!mark_commit"($I10)
  rxquantr75_done:
.annotate 'line', 36
  # rx pass
    rx70_cur."!cursor_pass"(rx70_pos, "deflongname")
    if_null rx70_debug, debug_425
    rx70_cur."!cursor_debug"("PASS", "deflongname", " at pos=", rx70_pos)
  debug_425:
    .return (rx70_cur)
  rx70_restart:
.annotate 'line', 4
    if_null rx70_debug, debug_426
    rx70_cur."!cursor_debug"("NEXT", "deflongname")
  debug_426:
  rx70_fail:
    (rx70_rep, rx70_pos, $I10, $P10) = rx70_cur."!mark_fail"(0)
    lt rx70_pos, -1, rx70_done
    eq rx70_pos, -1, rx70_fail
    jump $I10
  rx70_done:
    rx70_cur."!cursor_fail"()
    if_null rx70_debug, debug_427
    rx70_cur."!cursor_debug"("FAIL", "deflongname")
  debug_427:
    .return (rx70_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__deflongname"  :subid("18_1294592820.342") :method
.annotate 'line', 4
    $P72 = self."!PREFIX__!subrule"("identifier", "")
    new $P73, "ResizablePMCArray"
    push $P73, $P72
    .return ($P73)
.end


.namespace ["NQP";"Grammar"]
.sub "ENDSTMT"  :subid("19_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx78_tgt
    .local int rx78_pos
    .local int rx78_off
    .local int rx78_eos
    .local int rx78_rep
    .local pmc rx78_cur
    .local pmc rx78_debug
    (rx78_cur, rx78_pos, rx78_tgt, $I10) = self."!cursor_start"()
    getattribute rx78_debug, rx78_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx78_cur
    .local pmc match
    .lex "$/", match
    length rx78_eos, rx78_tgt
    gt rx78_pos, rx78_eos, rx78_done
    set rx78_off, 0
    lt rx78_pos, 2, rx78_start
    sub rx78_off, rx78_pos, 1
    substr rx78_tgt, rx78_tgt, rx78_off
  rx78_start:
    eq $I10, 1, rx78_restart
    if_null rx78_debug, debug_428
    rx78_cur."!cursor_debug"("START", "ENDSTMT")
  debug_428:
    $I10 = self.'from'()
    ne $I10, -1, rxscan81_done
    goto rxscan81_scan
  rxscan81_loop:
    ($P10) = rx78_cur."from"()
    inc $P10
    set rx78_pos, $P10
    ge rx78_pos, rx78_eos, rxscan81_done
  rxscan81_scan:
    set_addr $I10, rxscan81_loop
    rx78_cur."!mark_push"(0, rx78_pos, $I10)
  rxscan81_done:
.annotate 'line', 44
  # rx rxquantr82 ** 0..1
    set_addr $I10, rxquantr82_done
    rx78_cur."!mark_push"(0, rx78_pos, $I10)
  rxquantr82_loop:
  alt83_0:
.annotate 'line', 41
    set_addr $I10, alt83_1
    rx78_cur."!mark_push"(0, rx78_pos, $I10)
.annotate 'line', 42
  # rx enumcharlist_q negate=0  r 0..-1
    sub $I10, rx78_pos, rx78_off
    set rx78_rep, 0
    sub $I12, rx78_eos, rx78_pos
  rxenumcharlistq84_loop:
    le $I12, 0, rxenumcharlistq84_done
    substr $S10, rx78_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq84_done
    inc rx78_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq84_loop
  rxenumcharlistq84_done:
    add rx78_pos, rx78_pos, rx78_rep
  # rxanchor eol
    sub $I10, rx78_pos, rx78_off
    is_cclass $I11, 4096, rx78_tgt, $I10
    if $I11, rxanchor85_done
    ne rx78_pos, rx78_eos, rx78_fail
    eq rx78_pos, 0, rxanchor85_done
    dec $I10
    is_cclass $I11, 4096, rx78_tgt, $I10
    if $I11, rx78_fail
  rxanchor85_done:
  # rx subrule "ws" subtype=method negate=
    rx78_cur."!cursor_pos"(rx78_pos)
    $P10 = rx78_cur."ws"()
    unless $P10, rx78_fail
    rx78_pos = $P10."pos"()
  # rx subrule "MARKER" subtype=zerowidth negate=
    rx78_cur."!cursor_pos"(rx78_pos)
    $P10 = rx78_cur."MARKER"("endstmt")
    unless $P10, rx78_fail
    goto alt83_end
  alt83_1:
.annotate 'line', 43
  # rx rxquantr86 ** 0..1
    set_addr $I10, rxquantr86_done
    rx78_cur."!mark_push"(0, rx78_pos, $I10)
  rxquantr86_loop:
  # rx subrule "unv" subtype=method negate=
    rx78_cur."!cursor_pos"(rx78_pos)
    $P10 = rx78_cur."unv"()
    unless $P10, rx78_fail
    goto rxsubrule87_pass
  rxsubrule87_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx78_fail
  rxsubrule87_pass:
    set_addr $I10, rxsubrule87_back
    rx78_cur."!mark_push"(0, rx78_pos, $I10, $P10)
    rx78_pos = $P10."pos"()
    set_addr $I10, rxquantr86_done
    (rx78_rep) = rx78_cur."!mark_commit"($I10)
  rxquantr86_done:
  # rxanchor eol
    sub $I10, rx78_pos, rx78_off
    is_cclass $I11, 4096, rx78_tgt, $I10
    if $I11, rxanchor88_done
    ne rx78_pos, rx78_eos, rx78_fail
    eq rx78_pos, 0, rxanchor88_done
    dec $I10
    is_cclass $I11, 4096, rx78_tgt, $I10
    if $I11, rx78_fail
  rxanchor88_done:
  # rx subrule "ws" subtype=method negate=
    rx78_cur."!cursor_pos"(rx78_pos)
    $P10 = rx78_cur."ws"()
    unless $P10, rx78_fail
    rx78_pos = $P10."pos"()
  # rx subrule "MARKER" subtype=zerowidth negate=
    rx78_cur."!cursor_pos"(rx78_pos)
    $P10 = rx78_cur."MARKER"("endstmt")
    unless $P10, rx78_fail
  alt83_end:
.annotate 'line', 44
    set_addr $I10, rxquantr82_done
    (rx78_rep) = rx78_cur."!mark_commit"($I10)
  rxquantr82_done:
.annotate 'line', 40
  # rx pass
    rx78_cur."!cursor_pass"(rx78_pos, "ENDSTMT")
    if_null rx78_debug, debug_429
    rx78_cur."!cursor_debug"("PASS", "ENDSTMT", " at pos=", rx78_pos)
  debug_429:
    .return (rx78_cur)
  rx78_restart:
.annotate 'line', 4
    if_null rx78_debug, debug_430
    rx78_cur."!cursor_debug"("NEXT", "ENDSTMT")
  debug_430:
  rx78_fail:
    (rx78_rep, rx78_pos, $I10, $P10) = rx78_cur."!mark_fail"(0)
    lt rx78_pos, -1, rx78_done
    eq rx78_pos, -1, rx78_fail
    jump $I10
  rx78_done:
    rx78_cur."!cursor_fail"()
    if_null rx78_debug, debug_431
    rx78_cur."!cursor_debug"("FAIL", "ENDSTMT")
  debug_431:
    .return (rx78_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__ENDSTMT"  :subid("20_1294592820.342") :method
.annotate 'line', 4
    new $P80, "ResizablePMCArray"
    push $P80, ""
    .return ($P80)
.end


.namespace ["NQP";"Grammar"]
.sub "ws"  :subid("21_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx90_tgt
    .local int rx90_pos
    .local int rx90_off
    .local int rx90_eos
    .local int rx90_rep
    .local pmc rx90_cur
    .local pmc rx90_debug
    (rx90_cur, rx90_pos, rx90_tgt, $I10) = self."!cursor_start"()
    getattribute rx90_debug, rx90_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx90_cur
    .local pmc match
    .lex "$/", match
    length rx90_eos, rx90_tgt
    gt rx90_pos, rx90_eos, rx90_done
    set rx90_off, 0
    lt rx90_pos, 2, rx90_start
    sub rx90_off, rx90_pos, 1
    substr rx90_tgt, rx90_tgt, rx90_off
  rx90_start:
    eq $I10, 1, rx90_restart
    if_null rx90_debug, debug_432
    rx90_cur."!cursor_debug"("START", "ws")
  debug_432:
    $I10 = self.'from'()
    ne $I10, -1, rxscan93_done
    goto rxscan93_scan
  rxscan93_loop:
    ($P10) = rx90_cur."from"()
    inc $P10
    set rx90_pos, $P10
    ge rx90_pos, rx90_eos, rxscan93_done
  rxscan93_scan:
    set_addr $I10, rxscan93_loop
    rx90_cur."!mark_push"(0, rx90_pos, $I10)
  rxscan93_done:
  alt94_0:
.annotate 'line', 47
    set_addr $I10, alt94_1
    rx90_cur."!mark_push"(0, rx90_pos, $I10)
.annotate 'line', 48
  # rx subrule "MARKED" subtype=zerowidth negate=
    rx90_cur."!cursor_pos"(rx90_pos)
    $P10 = rx90_cur."MARKED"("ws")
    unless $P10, rx90_fail
    goto alt94_end
  alt94_1:
.annotate 'line', 49
  # rx subrule "ww" subtype=zerowidth negate=1
    rx90_cur."!cursor_pos"(rx90_pos)
    $P10 = rx90_cur."ww"()
    if $P10, rx90_fail
.annotate 'line', 54
  # rx rxquantr95 ** 0..*
    set_addr $I10, rxquantr95_done
    rx90_cur."!mark_push"(0, rx90_pos, $I10)
  rxquantr95_loop:
  alt96_0:
.annotate 'line', 50
    set_addr $I10, alt96_1
    rx90_cur."!mark_push"(0, rx90_pos, $I10)
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx90_pos, rx90_off
    set rx90_rep, 0
    sub $I12, rx90_eos, rx90_pos
  rxenumcharlistq97_loop:
    le $I12, 0, rxenumcharlistq97_done
    substr $S10, rx90_tgt, $I10, 1
    index $I11, unicode:"\n\x{b}\f\r\x{85}\u2028\u2029", $S10
    lt $I11, 0, rxenumcharlistq97_done
    inc rx90_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq97_loop
  rxenumcharlistq97_done:
    lt rx90_rep, 1, rx90_fail
    add rx90_pos, rx90_pos, rx90_rep
    goto alt96_end
  alt96_1:
    set_addr $I10, alt96_2
    rx90_cur."!mark_push"(0, rx90_pos, $I10)
.annotate 'line', 51
  # rx literal  "#"
    add $I11, rx90_pos, 1
    gt $I11, rx90_eos, rx90_fail
    sub $I11, rx90_pos, rx90_off
    ord $I11, rx90_tgt, $I11
    ne $I11, 35, rx90_fail
    add rx90_pos, 1
  # rx charclass_q N r 0..-1
    sub $I10, rx90_pos, rx90_off
    find_cclass $I11, 4096, rx90_tgt, $I10, rx90_eos
    add rx90_pos, rx90_off, $I11
    goto alt96_end
  alt96_2:
    set_addr $I10, alt96_3
    rx90_cur."!mark_push"(0, rx90_pos, $I10)
.annotate 'line', 52
  # rxanchor bol
    eq rx90_pos, 0, rxanchor98_done
    ge rx90_pos, rx90_eos, rx90_fail
    sub $I10, rx90_pos, rx90_off
    dec $I10
    is_cclass $I11, 4096, rx90_tgt, $I10
    unless $I11, rx90_fail
  rxanchor98_done:
  # rx subrule "pod_comment" subtype=method negate=
    rx90_cur."!cursor_pos"(rx90_pos)
    $P10 = rx90_cur."pod_comment"()
    unless $P10, rx90_fail
    rx90_pos = $P10."pos"()
    goto alt96_end
  alt96_3:
.annotate 'line', 53
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx90_pos, rx90_off
    set rx90_rep, 0
    sub $I12, rx90_eos, rx90_pos
  rxenumcharlistq99_loop:
    le $I12, 0, rxenumcharlistq99_done
    substr $S10, rx90_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq99_done
    inc rx90_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq99_loop
  rxenumcharlistq99_done:
    lt rx90_rep, 1, rx90_fail
    add rx90_pos, rx90_pos, rx90_rep
  alt96_end:
.annotate 'line', 54
    set_addr $I10, rxquantr95_done
    (rx90_rep) = rx90_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr95_done
    rx90_cur."!mark_push"(rx90_rep, rx90_pos, $I10)
    goto rxquantr95_loop
  rxquantr95_done:
.annotate 'line', 55
  # rx subrule "MARKER" subtype=zerowidth negate=
    rx90_cur."!cursor_pos"(rx90_pos)
    $P10 = rx90_cur."MARKER"("ws")
    unless $P10, rx90_fail
  alt94_end:
.annotate 'line', 47
  # rx pass
    rx90_cur."!cursor_pass"(rx90_pos, "ws")
    if_null rx90_debug, debug_433
    rx90_cur."!cursor_debug"("PASS", "ws", " at pos=", rx90_pos)
  debug_433:
    .return (rx90_cur)
  rx90_restart:
.annotate 'line', 4
    if_null rx90_debug, debug_434
    rx90_cur."!cursor_debug"("NEXT", "ws")
  debug_434:
  rx90_fail:
    (rx90_rep, rx90_pos, $I10, $P10) = rx90_cur."!mark_fail"(0)
    lt rx90_pos, -1, rx90_done
    eq rx90_pos, -1, rx90_fail
    jump $I10
  rx90_done:
    rx90_cur."!cursor_fail"()
    if_null rx90_debug, debug_435
    rx90_cur."!cursor_debug"("FAIL", "ws")
  debug_435:
    .return (rx90_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__ws"  :subid("22_1294592820.342") :method
.annotate 'line', 4
    new $P92, "ResizablePMCArray"
    push $P92, ""
    push $P92, ""
    .return ($P92)
.end


.namespace ["NQP";"Grammar"]
.sub "unv"  :subid("23_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .const 'Sub' $P108 = "25_1294592820.342" 
    capture_lex $P108
    .local string rx101_tgt
    .local int rx101_pos
    .local int rx101_off
    .local int rx101_eos
    .local int rx101_rep
    .local pmc rx101_cur
    .local pmc rx101_debug
    (rx101_cur, rx101_pos, rx101_tgt, $I10) = self."!cursor_start"()
    getattribute rx101_debug, rx101_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx101_cur
    .local pmc match
    .lex "$/", match
    length rx101_eos, rx101_tgt
    gt rx101_pos, rx101_eos, rx101_done
    set rx101_off, 0
    lt rx101_pos, 2, rx101_start
    sub rx101_off, rx101_pos, 1
    substr rx101_tgt, rx101_tgt, rx101_off
  rx101_start:
    eq $I10, 1, rx101_restart
    if_null rx101_debug, debug_436
    rx101_cur."!cursor_debug"("START", "unv")
  debug_436:
    $I10 = self.'from'()
    ne $I10, -1, rxscan104_done
    goto rxscan104_scan
  rxscan104_loop:
    ($P10) = rx101_cur."from"()
    inc $P10
    set rx101_pos, $P10
    ge rx101_pos, rx101_eos, rxscan104_done
  rxscan104_scan:
    set_addr $I10, rxscan104_loop
    rx101_cur."!mark_push"(0, rx101_pos, $I10)
  rxscan104_done:
  alt105_0:
.annotate 'line', 60
    set_addr $I10, alt105_1
    rx101_cur."!mark_push"(0, rx101_pos, $I10)
.annotate 'line', 61
  # rxanchor bol
    eq rx101_pos, 0, rxanchor106_done
    ge rx101_pos, rx101_eos, rx101_fail
    sub $I10, rx101_pos, rx101_off
    dec $I10
    is_cclass $I11, 4096, rx101_tgt, $I10
    unless $I11, rx101_fail
  rxanchor106_done:
  # rx subrule "before" subtype=zerowidth negate=
    rx101_cur."!cursor_pos"(rx101_pos)
    .const 'Sub' $P108 = "25_1294592820.342" 
    capture_lex $P108
    $P10 = rx101_cur."before"($P108)
    unless $P10, rx101_fail
  # rx subrule "pod_comment" subtype=method negate=
    rx101_cur."!cursor_pos"(rx101_pos)
    $P10 = rx101_cur."pod_comment"()
    unless $P10, rx101_fail
    rx101_pos = $P10."pos"()
    goto alt105_end
  alt105_1:
    set_addr $I10, alt105_2
    rx101_cur."!mark_push"(0, rx101_pos, $I10)
.annotate 'line', 62
  # rx enumcharlist_q negate=0  r 0..-1
    sub $I10, rx101_pos, rx101_off
    set rx101_rep, 0
    sub $I12, rx101_eos, rx101_pos
  rxenumcharlistq113_loop:
    le $I12, 0, rxenumcharlistq113_done
    substr $S10, rx101_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq113_done
    inc rx101_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq113_loop
  rxenumcharlistq113_done:
    add rx101_pos, rx101_pos, rx101_rep
  # rx literal  "#"
    add $I11, rx101_pos, 1
    gt $I11, rx101_eos, rx101_fail
    sub $I11, rx101_pos, rx101_off
    ord $I11, rx101_tgt, $I11
    ne $I11, 35, rx101_fail
    add rx101_pos, 1
  # rx charclass_q N r 0..-1
    sub $I10, rx101_pos, rx101_off
    find_cclass $I11, 4096, rx101_tgt, $I10, rx101_eos
    add rx101_pos, rx101_off, $I11
    goto alt105_end
  alt105_2:
.annotate 'line', 63
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx101_pos, rx101_off
    set rx101_rep, 0
    sub $I12, rx101_eos, rx101_pos
  rxenumcharlistq114_loop:
    le $I12, 0, rxenumcharlistq114_done
    substr $S10, rx101_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq114_done
    inc rx101_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq114_loop
  rxenumcharlistq114_done:
    lt rx101_rep, 1, rx101_fail
    add rx101_pos, rx101_pos, rx101_rep
  alt105_end:
.annotate 'line', 58
  # rx pass
    rx101_cur."!cursor_pass"(rx101_pos, "unv")
    if_null rx101_debug, debug_441
    rx101_cur."!cursor_debug"("PASS", "unv", " at pos=", rx101_pos)
  debug_441:
    .return (rx101_cur)
  rx101_restart:
.annotate 'line', 4
    if_null rx101_debug, debug_442
    rx101_cur."!cursor_debug"("NEXT", "unv")
  debug_442:
  rx101_fail:
    (rx101_rep, rx101_pos, $I10, $P10) = rx101_cur."!mark_fail"(0)
    lt rx101_pos, -1, rx101_done
    eq rx101_pos, -1, rx101_fail
    jump $I10
  rx101_done:
    rx101_cur."!cursor_fail"()
    if_null rx101_debug, debug_443
    rx101_cur."!cursor_debug"("FAIL", "unv")
  debug_443:
    .return (rx101_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__unv"  :subid("24_1294592820.342") :method
.annotate 'line', 4
    new $P103, "ResizablePMCArray"
    push $P103, ""
    push $P103, ""
    push $P103, ""
    .return ($P103)
.end


.namespace ["NQP";"Grammar"]
.sub "_block107"  :anon :subid("25_1294592820.342") :method :outer("23_1294592820.342")
.annotate 'line', 61
    .local string rx109_tgt
    .local int rx109_pos
    .local int rx109_off
    .local int rx109_eos
    .local int rx109_rep
    .local pmc rx109_cur
    .local pmc rx109_debug
    (rx109_cur, rx109_pos, rx109_tgt, $I10) = self."!cursor_start"()
    getattribute rx109_debug, rx109_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx109_cur
    .local pmc match
    .lex "$/", match
    length rx109_eos, rx109_tgt
    gt rx109_pos, rx109_eos, rx109_done
    set rx109_off, 0
    lt rx109_pos, 2, rx109_start
    sub rx109_off, rx109_pos, 1
    substr rx109_tgt, rx109_tgt, rx109_off
  rx109_start:
    eq $I10, 1, rx109_restart
    if_null rx109_debug, debug_437
    rx109_cur."!cursor_debug"("START", "")
  debug_437:
    $I10 = self.'from'()
    ne $I10, -1, rxscan110_done
    goto rxscan110_scan
  rxscan110_loop:
    ($P10) = rx109_cur."from"()
    inc $P10
    set rx109_pos, $P10
    ge rx109_pos, rx109_eos, rxscan110_done
  rxscan110_scan:
    set_addr $I10, rxscan110_loop
    rx109_cur."!mark_push"(0, rx109_pos, $I10)
  rxscan110_done:
  # rx enumcharlist_q negate=0  r 0..-1
    sub $I10, rx109_pos, rx109_off
    set rx109_rep, 0
    sub $I12, rx109_eos, rx109_pos
  rxenumcharlistq111_loop:
    le $I12, 0, rxenumcharlistq111_done
    substr $S10, rx109_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq111_done
    inc rx109_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq111_loop
  rxenumcharlistq111_done:
    add rx109_pos, rx109_pos, rx109_rep
  # rx literal  "="
    add $I11, rx109_pos, 1
    gt $I11, rx109_eos, rx109_fail
    sub $I11, rx109_pos, rx109_off
    ord $I11, rx109_tgt, $I11
    ne $I11, 61, rx109_fail
    add rx109_pos, 1
  alt112_0:
    set_addr $I10, alt112_1
    rx109_cur."!mark_push"(0, rx109_pos, $I10)
  # rx charclass w
    ge rx109_pos, rx109_eos, rx109_fail
    sub $I10, rx109_pos, rx109_off
    is_cclass $I11, 8192, rx109_tgt, $I10
    unless $I11, rx109_fail
    inc rx109_pos
    goto alt112_end
  alt112_1:
  # rx literal  "\\"
    add $I11, rx109_pos, 1
    gt $I11, rx109_eos, rx109_fail
    sub $I11, rx109_pos, rx109_off
    ord $I11, rx109_tgt, $I11
    ne $I11, 92, rx109_fail
    add rx109_pos, 1
  alt112_end:
  # rx pass
    rx109_cur."!cursor_pass"(rx109_pos, "")
    if_null rx109_debug, debug_438
    rx109_cur."!cursor_debug"("PASS", "", " at pos=", rx109_pos)
  debug_438:
    .return (rx109_cur)
  rx109_restart:
    if_null rx109_debug, debug_439
    rx109_cur."!cursor_debug"("NEXT", "")
  debug_439:
  rx109_fail:
    (rx109_rep, rx109_pos, $I10, $P10) = rx109_cur."!mark_fail"(0)
    lt rx109_pos, -1, rx109_done
    eq rx109_pos, -1, rx109_fail
    jump $I10
  rx109_done:
    rx109_cur."!cursor_fail"()
    if_null rx109_debug, debug_440
    rx109_cur."!cursor_debug"("FAIL", "")
  debug_440:
    .return (rx109_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "pod_comment"  :subid("26_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .const 'Sub' $P147 = "28_1294592820.342" 
    capture_lex $P147
    .local string rx116_tgt
    .local int rx116_pos
    .local int rx116_off
    .local int rx116_eos
    .local int rx116_rep
    .local pmc rx116_cur
    .local pmc rx116_debug
    (rx116_cur, rx116_pos, rx116_tgt, $I10) = self."!cursor_start"()
    getattribute rx116_debug, rx116_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx116_cur
    .local pmc match
    .lex "$/", match
    length rx116_eos, rx116_tgt
    gt rx116_pos, rx116_eos, rx116_done
    set rx116_off, 0
    lt rx116_pos, 2, rx116_start
    sub rx116_off, rx116_pos, 1
    substr rx116_tgt, rx116_tgt, rx116_off
  rx116_start:
    eq $I10, 1, rx116_restart
    if_null rx116_debug, debug_444
    rx116_cur."!cursor_debug"("START", "pod_comment")
  debug_444:
    $I10 = self.'from'()
    ne $I10, -1, rxscan119_done
    goto rxscan119_scan
  rxscan119_loop:
    ($P10) = rx116_cur."from"()
    inc $P10
    set rx116_pos, $P10
    ge rx116_pos, rx116_eos, rxscan119_done
  rxscan119_scan:
    set_addr $I10, rxscan119_loop
    rx116_cur."!mark_push"(0, rx116_pos, $I10)
  rxscan119_done:
.annotate 'line', 68
  # rxanchor bol
    eq rx116_pos, 0, rxanchor120_done
    ge rx116_pos, rx116_eos, rx116_fail
    sub $I10, rx116_pos, rx116_off
    dec $I10
    is_cclass $I11, 4096, rx116_tgt, $I10
    unless $I11, rx116_fail
  rxanchor120_done:
  # rx enumcharlist_q negate=0  r 0..-1
    sub $I10, rx116_pos, rx116_off
    set rx116_rep, 0
    sub $I12, rx116_eos, rx116_pos
  rxenumcharlistq121_loop:
    le $I12, 0, rxenumcharlistq121_done
    substr $S10, rx116_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq121_done
    inc rx116_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq121_loop
  rxenumcharlistq121_done:
    add rx116_pos, rx116_pos, rx116_rep
  # rx literal  "="
    add $I11, rx116_pos, 1
    gt $I11, rx116_eos, rx116_fail
    sub $I11, rx116_pos, rx116_off
    ord $I11, rx116_tgt, $I11
    ne $I11, 61, rx116_fail
    add rx116_pos, 1
  alt122_0:
.annotate 'line', 69
    set_addr $I10, alt122_1
    rx116_cur."!mark_push"(0, rx116_pos, $I10)
.annotate 'line', 70
  # rx literal  "begin"
    add $I11, rx116_pos, 5
    gt $I11, rx116_eos, rx116_fail
    sub $I11, rx116_pos, rx116_off
    substr $S10, rx116_tgt, $I11, 5
    ne $S10, "begin", rx116_fail
    add rx116_pos, 5
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx116_pos, rx116_off
    set rx116_rep, 0
    sub $I12, rx116_eos, rx116_pos
  rxenumcharlistq123_loop:
    le $I12, 0, rxenumcharlistq123_done
    substr $S10, rx116_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq123_done
    inc rx116_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq123_loop
  rxenumcharlistq123_done:
    lt rx116_rep, 1, rx116_fail
    add rx116_pos, rx116_pos, rx116_rep
  # rx literal  "END"
    add $I11, rx116_pos, 3
    gt $I11, rx116_eos, rx116_fail
    sub $I11, rx116_pos, rx116_off
    substr $S10, rx116_tgt, $I11, 3
    ne $S10, "END", rx116_fail
    add rx116_pos, 3
  # rxanchor rwb
    le rx116_pos, 0, rx116_fail
    sub $I10, rx116_pos, rx116_off
    is_cclass $I11, 8192, rx116_tgt, $I10
    if $I11, rx116_fail
    dec $I10
    is_cclass $I11, 8192, rx116_tgt, $I10
    unless $I11, rx116_fail
  alt124_0:
.annotate 'line', 71
    set_addr $I10, alt124_1
    rx116_cur."!mark_push"(0, rx116_pos, $I10)
  # rx rxquantf125 ** 0..*
    set_addr $I10, rxquantf125_loop
    rx116_cur."!mark_push"(0, rx116_pos, $I10)
    goto rxquantf125_done
  rxquantf125_loop:
  # rx charclass .
    ge rx116_pos, rx116_eos, rx116_fail
    inc rx116_pos
    set_addr $I10, rxquantf125_loop
    rx116_cur."!mark_push"(rx116_rep, rx116_pos, $I10)
  rxquantf125_done:
  # rx charclass nl
    ge rx116_pos, rx116_eos, rx116_fail
    sub $I10, rx116_pos, rx116_off
    is_cclass $I11, 4096, rx116_tgt, $I10
    unless $I11, rx116_fail
    substr $S10, rx116_tgt, $I10, 2
    iseq $I11, $S10, "\r\n"
    add rx116_pos, $I11
    inc rx116_pos
  # rx enumcharlist_q negate=0  r 0..-1
    sub $I10, rx116_pos, rx116_off
    set rx116_rep, 0
    sub $I12, rx116_eos, rx116_pos
  rxenumcharlistq127_loop:
    le $I12, 0, rxenumcharlistq127_done
    substr $S10, rx116_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq127_done
    inc rx116_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq127_loop
  rxenumcharlistq127_done:
    add rx116_pos, rx116_pos, rx116_rep
  # rx literal  "=end"
    add $I11, rx116_pos, 4
    gt $I11, rx116_eos, rx116_fail
    sub $I11, rx116_pos, rx116_off
    substr $S10, rx116_tgt, $I11, 4
    ne $S10, "=end", rx116_fail
    add rx116_pos, 4
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx116_pos, rx116_off
    set rx116_rep, 0
    sub $I12, rx116_eos, rx116_pos
  rxenumcharlistq128_loop:
    le $I12, 0, rxenumcharlistq128_done
    substr $S10, rx116_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq128_done
    inc rx116_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq128_loop
  rxenumcharlistq128_done:
    lt rx116_rep, 1, rx116_fail
    add rx116_pos, rx116_pos, rx116_rep
  # rx literal  "END"
    add $I11, rx116_pos, 3
    gt $I11, rx116_eos, rx116_fail
    sub $I11, rx116_pos, rx116_off
    substr $S10, rx116_tgt, $I11, 3
    ne $S10, "END", rx116_fail
    add rx116_pos, 3
  # rxanchor rwb
    le rx116_pos, 0, rx116_fail
    sub $I10, rx116_pos, rx116_off
    is_cclass $I11, 8192, rx116_tgt, $I10
    if $I11, rx116_fail
    dec $I10
    is_cclass $I11, 8192, rx116_tgt, $I10
    unless $I11, rx116_fail
  # rx charclass_q N r 0..-1
    sub $I10, rx116_pos, rx116_off
    find_cclass $I11, 4096, rx116_tgt, $I10, rx116_eos
    add rx116_pos, rx116_off, $I11
    goto alt124_end
  alt124_1:
  # rx charclass_q . r 0..-1
    sub $I10, rx116_pos, rx116_off
    find_not_cclass $I11, 65535, rx116_tgt, $I10, rx116_eos
    add rx116_pos, rx116_off, $I11
  alt124_end:
.annotate 'line', 70
    goto alt122_end
  alt122_1:
    set_addr $I10, alt122_2
    rx116_cur."!mark_push"(0, rx116_pos, $I10)
.annotate 'line', 72
  # rx literal  "begin"
    add $I11, rx116_pos, 5
    gt $I11, rx116_eos, rx116_fail
    sub $I11, rx116_pos, rx116_off
    substr $S10, rx116_tgt, $I11, 5
    ne $S10, "begin", rx116_fail
    add rx116_pos, 5
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx116_pos, rx116_off
    set rx116_rep, 0
    sub $I12, rx116_eos, rx116_pos
  rxenumcharlistq129_loop:
    le $I12, 0, rxenumcharlistq129_done
    substr $S10, rx116_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq129_done
    inc rx116_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq129_loop
  rxenumcharlistq129_done:
    lt rx116_rep, 1, rx116_fail
    add rx116_pos, rx116_pos, rx116_rep
  # rx subrule "identifier" subtype=capture negate=
    rx116_cur."!cursor_pos"(rx116_pos)
    $P10 = rx116_cur."identifier"()
    unless $P10, rx116_fail
    rx116_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx116_pos = $P10."pos"()
  alt130_0:
.annotate 'line', 73
    set_addr $I10, alt130_1
    rx116_cur."!mark_push"(0, rx116_pos, $I10)
.annotate 'line', 74
  # rx rxquantf131 ** 0..*
    set_addr $I10, rxquantf131_loop
    rx116_cur."!mark_push"(0, rx116_pos, $I10)
    goto rxquantf131_done
  rxquantf131_loop:
  # rx charclass .
    ge rx116_pos, rx116_eos, rx116_fail
    inc rx116_pos
    set_addr $I10, rxquantf131_loop
    rx116_cur."!mark_push"(rx116_rep, rx116_pos, $I10)
  rxquantf131_done:
  # rx charclass nl
    ge rx116_pos, rx116_eos, rx116_fail
    sub $I10, rx116_pos, rx116_off
    is_cclass $I11, 4096, rx116_tgt, $I10
    unless $I11, rx116_fail
    substr $S10, rx116_tgt, $I10, 2
    iseq $I11, $S10, "\r\n"
    add rx116_pos, $I11
    inc rx116_pos
  # rx enumcharlist_q negate=0  r 0..-1
    sub $I10, rx116_pos, rx116_off
    set rx116_rep, 0
    sub $I12, rx116_eos, rx116_pos
  rxenumcharlistq133_loop:
    le $I12, 0, rxenumcharlistq133_done
    substr $S10, rx116_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq133_done
    inc rx116_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq133_loop
  rxenumcharlistq133_done:
    add rx116_pos, rx116_pos, rx116_rep
  # rx literal  "=end"
    add $I11, rx116_pos, 4
    gt $I11, rx116_eos, rx116_fail
    sub $I11, rx116_pos, rx116_off
    substr $S10, rx116_tgt, $I11, 4
    ne $S10, "=end", rx116_fail
    add rx116_pos, 4
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx116_pos, rx116_off
    set rx116_rep, 0
    sub $I12, rx116_eos, rx116_pos
  rxenumcharlistq134_loop:
    le $I12, 0, rxenumcharlistq134_done
    substr $S10, rx116_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq134_done
    inc rx116_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq134_loop
  rxenumcharlistq134_done:
    lt rx116_rep, 1, rx116_fail
    add rx116_pos, rx116_pos, rx116_rep
  # rx subrule "!BACKREF" subtype=method negate=
    rx116_cur."!cursor_pos"(rx116_pos)
    $P10 = rx116_cur."!BACKREF"("identifier")
    unless $P10, rx116_fail
    rx116_pos = $P10."pos"()
  # rxanchor rwb
    le rx116_pos, 0, rx116_fail
    sub $I10, rx116_pos, rx116_off
    is_cclass $I11, 8192, rx116_tgt, $I10
    if $I11, rx116_fail
    dec $I10
    is_cclass $I11, 8192, rx116_tgt, $I10
    unless $I11, rx116_fail
  # rx charclass_q N r 0..-1
    sub $I10, rx116_pos, rx116_off
    find_cclass $I11, 4096, rx116_tgt, $I10, rx116_eos
    add rx116_pos, rx116_off, $I11
    goto alt130_end
  alt130_1:
.annotate 'line', 75
  # rx subrule "panic" subtype=method negate=
    rx116_cur."!cursor_pos"(rx116_pos)
    $P10 = rx116_cur."panic"("=begin without matching =end")
    unless $P10, rx116_fail
    rx116_pos = $P10."pos"()
  alt130_end:
.annotate 'line', 72
    goto alt122_end
  alt122_2:
    set_addr $I10, alt122_3
    rx116_cur."!mark_push"(0, rx116_pos, $I10)
.annotate 'line', 77
  # rx literal  "begin"
    add $I11, rx116_pos, 5
    gt $I11, rx116_eos, rx116_fail
    sub $I11, rx116_pos, rx116_off
    substr $S10, rx116_tgt, $I11, 5
    ne $S10, "begin", rx116_fail
    add rx116_pos, 5
  # rxanchor rwb
    le rx116_pos, 0, rx116_fail
    sub $I10, rx116_pos, rx116_off
    is_cclass $I11, 8192, rx116_tgt, $I10
    if $I11, rx116_fail
    dec $I10
    is_cclass $I11, 8192, rx116_tgt, $I10
    unless $I11, rx116_fail
  # rx enumcharlist_q negate=0  r 0..-1
    sub $I10, rx116_pos, rx116_off
    set rx116_rep, 0
    sub $I12, rx116_eos, rx116_pos
  rxenumcharlistq136_loop:
    le $I12, 0, rxenumcharlistq136_done
    substr $S10, rx116_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq136_done
    inc rx116_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq136_loop
  rxenumcharlistq136_done:
    add rx116_pos, rx116_pos, rx116_rep
  alt137_0:
.annotate 'line', 78
    set_addr $I10, alt137_1
    rx116_cur."!mark_push"(0, rx116_pos, $I10)
  # rxanchor eol
    sub $I10, rx116_pos, rx116_off
    is_cclass $I11, 4096, rx116_tgt, $I10
    if $I11, rxanchor138_done
    ne rx116_pos, rx116_eos, rx116_fail
    eq rx116_pos, 0, rxanchor138_done
    dec $I10
    is_cclass $I11, 4096, rx116_tgt, $I10
    if $I11, rx116_fail
  rxanchor138_done:
    goto alt137_end
  alt137_1:
    set_addr $I10, alt137_2
    rx116_cur."!mark_push"(0, rx116_pos, $I10)
  # rx literal  "#"
    add $I11, rx116_pos, 1
    gt $I11, rx116_eos, rx116_fail
    sub $I11, rx116_pos, rx116_off
    ord $I11, rx116_tgt, $I11
    ne $I11, 35, rx116_fail
    add rx116_pos, 1
    goto alt137_end
  alt137_2:
  # rx subrule "panic" subtype=method negate=
    rx116_cur."!cursor_pos"(rx116_pos)
    $P10 = rx116_cur."panic"("Unrecognized token after =begin")
    unless $P10, rx116_fail
    rx116_pos = $P10."pos"()
  alt137_end:
  alt139_0:
.annotate 'line', 79
    set_addr $I10, alt139_1
    rx116_cur."!mark_push"(0, rx116_pos, $I10)
.annotate 'line', 80
  # rx rxquantf140 ** 0..*
    set_addr $I10, rxquantf140_loop
    rx116_cur."!mark_push"(0, rx116_pos, $I10)
    goto rxquantf140_done
  rxquantf140_loop:
  # rx charclass .
    ge rx116_pos, rx116_eos, rx116_fail
    inc rx116_pos
    set_addr $I10, rxquantf140_loop
    rx116_cur."!mark_push"(rx116_rep, rx116_pos, $I10)
  rxquantf140_done:
  # rx charclass nl
    ge rx116_pos, rx116_eos, rx116_fail
    sub $I10, rx116_pos, rx116_off
    is_cclass $I11, 4096, rx116_tgt, $I10
    unless $I11, rx116_fail
    substr $S10, rx116_tgt, $I10, 2
    iseq $I11, $S10, "\r\n"
    add rx116_pos, $I11
    inc rx116_pos
  # rx enumcharlist_q negate=0  r 0..-1
    sub $I10, rx116_pos, rx116_off
    set rx116_rep, 0
    sub $I12, rx116_eos, rx116_pos
  rxenumcharlistq142_loop:
    le $I12, 0, rxenumcharlistq142_done
    substr $S10, rx116_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq142_done
    inc rx116_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq142_loop
  rxenumcharlistq142_done:
    add rx116_pos, rx116_pos, rx116_rep
  # rx literal  "=end"
    add $I11, rx116_pos, 4
    gt $I11, rx116_eos, rx116_fail
    sub $I11, rx116_pos, rx116_off
    substr $S10, rx116_tgt, $I11, 4
    ne $S10, "=end", rx116_fail
    add rx116_pos, 4
  # rxanchor rwb
    le rx116_pos, 0, rx116_fail
    sub $I10, rx116_pos, rx116_off
    is_cclass $I11, 8192, rx116_tgt, $I10
    if $I11, rx116_fail
    dec $I10
    is_cclass $I11, 8192, rx116_tgt, $I10
    unless $I11, rx116_fail
  # rx charclass_q N r 0..-1
    sub $I10, rx116_pos, rx116_off
    find_cclass $I11, 4096, rx116_tgt, $I10, rx116_eos
    add rx116_pos, rx116_off, $I11
    goto alt139_end
  alt139_1:
.annotate 'line', 81
  # rx subrule "panic" subtype=method negate=
    rx116_cur."!cursor_pos"(rx116_pos)
    $P10 = rx116_cur."panic"("=begin without matching =end")
    unless $P10, rx116_fail
    rx116_pos = $P10."pos"()
  alt139_end:
.annotate 'line', 77
    goto alt122_end
  alt122_3:
    set_addr $I10, alt122_4
    rx116_cur."!mark_push"(0, rx116_pos, $I10)
.annotate 'line', 83
  # rx subrule "identifier" subtype=capture negate=
    rx116_cur."!cursor_pos"(rx116_pos)
    $P10 = rx116_cur."identifier"()
    unless $P10, rx116_fail
    rx116_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx116_pos = $P10."pos"()
.annotate 'line', 84
  # rx rxquantf143 ** 0..*
    set_addr $I10, rxquantf143_loop
    rx116_cur."!mark_push"(0, rx116_pos, $I10)
    goto rxquantf143_done
  rxquantf143_loop:
  # rx charclass .
    ge rx116_pos, rx116_eos, rx116_fail
    inc rx116_pos
    set_addr $I10, rxquantf143_loop
    rx116_cur."!mark_push"(rx116_rep, rx116_pos, $I10)
  rxquantf143_done:
  # rxanchor bol
    eq rx116_pos, 0, rxanchor145_done
    ge rx116_pos, rx116_eos, rx116_fail
    sub $I10, rx116_pos, rx116_off
    dec $I10
    is_cclass $I11, 4096, rx116_tgt, $I10
    unless $I11, rx116_fail
  rxanchor145_done:
  # rx subrule "before" subtype=zerowidth negate=
    rx116_cur."!cursor_pos"(rx116_pos)
    .const 'Sub' $P147 = "28_1294592820.342" 
    capture_lex $P147
    $P10 = rx116_cur."before"($P147)
    unless $P10, rx116_fail
.annotate 'line', 83
    goto alt122_end
  alt122_4:
  alt153_0:
.annotate 'line', 90
    set_addr $I10, alt153_1
    rx116_cur."!mark_push"(0, rx116_pos, $I10)
  # rx charclass s
    ge rx116_pos, rx116_eos, rx116_fail
    sub $I10, rx116_pos, rx116_off
    is_cclass $I11, 32, rx116_tgt, $I10
    unless $I11, rx116_fail
    inc rx116_pos
    goto alt153_end
  alt153_1:
  # rx subrule "panic" subtype=method negate=
    rx116_cur."!cursor_pos"(rx116_pos)
    $P10 = rx116_cur."panic"("Illegal pod directive")
    unless $P10, rx116_fail
    rx116_pos = $P10."pos"()
  alt153_end:
.annotate 'line', 91
  # rx charclass_q N r 0..-1
    sub $I10, rx116_pos, rx116_off
    find_cclass $I11, 4096, rx116_tgt, $I10, rx116_eos
    add rx116_pos, rx116_off, $I11
  alt122_end:
.annotate 'line', 67
  # rx pass
    rx116_cur."!cursor_pass"(rx116_pos, "pod_comment")
    if_null rx116_debug, debug_449
    rx116_cur."!cursor_debug"("PASS", "pod_comment", " at pos=", rx116_pos)
  debug_449:
    .return (rx116_cur)
  rx116_restart:
.annotate 'line', 4
    if_null rx116_debug, debug_450
    rx116_cur."!cursor_debug"("NEXT", "pod_comment")
  debug_450:
  rx116_fail:
    (rx116_rep, rx116_pos, $I10, $P10) = rx116_cur."!mark_fail"(0)
    lt rx116_pos, -1, rx116_done
    eq rx116_pos, -1, rx116_fail
    jump $I10
  rx116_done:
    rx116_cur."!cursor_fail"()
    if_null rx116_debug, debug_451
    rx116_cur."!cursor_debug"("FAIL", "pod_comment")
  debug_451:
    .return (rx116_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__pod_comment"  :subid("27_1294592820.342") :method
.annotate 'line', 4
    new $P118, "ResizablePMCArray"
    push $P118, ""
    .return ($P118)
.end


.namespace ["NQP";"Grammar"]
.sub "_block146"  :anon :subid("28_1294592820.342") :method :outer("26_1294592820.342")
.annotate 'line', 84
    .local string rx148_tgt
    .local int rx148_pos
    .local int rx148_off
    .local int rx148_eos
    .local int rx148_rep
    .local pmc rx148_cur
    .local pmc rx148_debug
    (rx148_cur, rx148_pos, rx148_tgt, $I10) = self."!cursor_start"()
    getattribute rx148_debug, rx148_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx148_cur
    .local pmc match
    .lex "$/", match
    length rx148_eos, rx148_tgt
    gt rx148_pos, rx148_eos, rx148_done
    set rx148_off, 0
    lt rx148_pos, 2, rx148_start
    sub rx148_off, rx148_pos, 1
    substr rx148_tgt, rx148_tgt, rx148_off
  rx148_start:
    eq $I10, 1, rx148_restart
    if_null rx148_debug, debug_445
    rx148_cur."!cursor_debug"("START", "")
  debug_445:
    $I10 = self.'from'()
    ne $I10, -1, rxscan149_done
    goto rxscan149_scan
  rxscan149_loop:
    ($P10) = rx148_cur."from"()
    inc $P10
    set rx148_pos, $P10
    ge rx148_pos, rx148_eos, rxscan149_done
  rxscan149_scan:
    set_addr $I10, rxscan149_loop
    rx148_cur."!mark_push"(0, rx148_pos, $I10)
  rxscan149_done:
  # rx enumcharlist_q negate=0  r 0..-1
    sub $I10, rx148_pos, rx148_off
    set rx148_rep, 0
    sub $I12, rx148_eos, rx148_pos
  rxenumcharlistq150_loop:
    le $I12, 0, rxenumcharlistq150_done
    substr $S10, rx148_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq150_done
    inc rx148_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq150_loop
  rxenumcharlistq150_done:
    add rx148_pos, rx148_pos, rx148_rep
  alt151_0:
    set_addr $I10, alt151_1
    rx148_cur."!mark_push"(0, rx148_pos, $I10)
.annotate 'line', 85
  # rx literal  "="
    add $I11, rx148_pos, 1
    gt $I11, rx148_eos, rx148_fail
    sub $I11, rx148_pos, rx148_off
    ord $I11, rx148_tgt, $I11
    ne $I11, 61, rx148_fail
    add rx148_pos, 1
.annotate 'line', 87
  # rx rxquantr152 ** 0..1
    set_addr $I10, rxquantr152_done
    rx148_cur."!mark_push"(0, rx148_pos, $I10)
  rxquantr152_loop:
.annotate 'line', 86
  # rx literal  "cut"
    add $I11, rx148_pos, 3
    gt $I11, rx148_eos, rx148_fail
    sub $I11, rx148_pos, rx148_off
    substr $S10, rx148_tgt, $I11, 3
    ne $S10, "cut", rx148_fail
    add rx148_pos, 3
  # rxanchor rwb
    le rx148_pos, 0, rx148_fail
    sub $I10, rx148_pos, rx148_off
    is_cclass $I11, 8192, rx148_tgt, $I10
    if $I11, rx148_fail
    dec $I10
    is_cclass $I11, 8192, rx148_tgt, $I10
    unless $I11, rx148_fail
.annotate 'line', 87
  # rx subrule "panic" subtype=method negate=
    rx148_cur."!cursor_pos"(rx148_pos)
    $P10 = rx148_cur."panic"("Obsolete pod format, please use =begin/=end instead")
    unless $P10, rx148_fail
    rx148_pos = $P10."pos"()
    set_addr $I10, rxquantr152_done
    (rx148_rep) = rx148_cur."!mark_commit"($I10)
  rxquantr152_done:
.annotate 'line', 84
    goto alt151_end
  alt151_1:
.annotate 'line', 88
  # rx charclass nl
    ge rx148_pos, rx148_eos, rx148_fail
    sub $I10, rx148_pos, rx148_off
    is_cclass $I11, 4096, rx148_tgt, $I10
    unless $I11, rx148_fail
    substr $S10, rx148_tgt, $I10, 2
    iseq $I11, $S10, "\r\n"
    add rx148_pos, $I11
    inc rx148_pos
  alt151_end:
.annotate 'line', 84
  # rx pass
    rx148_cur."!cursor_pass"(rx148_pos, "")
    if_null rx148_debug, debug_446
    rx148_cur."!cursor_debug"("PASS", "", " at pos=", rx148_pos)
  debug_446:
    .return (rx148_cur)
  rx148_restart:
    if_null rx148_debug, debug_447
    rx148_cur."!cursor_debug"("NEXT", "")
  debug_447:
  rx148_fail:
    (rx148_rep, rx148_pos, $I10, $P10) = rx148_cur."!mark_fail"(0)
    lt rx148_pos, -1, rx148_done
    eq rx148_pos, -1, rx148_fail
    jump $I10
  rx148_done:
    rx148_cur."!cursor_fail"()
    if_null rx148_debug, debug_448
    rx148_cur."!cursor_debug"("FAIL", "")
  debug_448:
    .return (rx148_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "comp_unit"  :subid("29_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx155_tgt
    .local int rx155_pos
    .local int rx155_off
    .local int rx155_eos
    .local int rx155_rep
    .local pmc rx155_cur
    .local pmc rx155_debug
    (rx155_cur, rx155_pos, rx155_tgt, $I10) = self."!cursor_start"()
    getattribute rx155_debug, rx155_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx155_cur
    .local pmc match
    .lex "$/", match
    length rx155_eos, rx155_tgt
    gt rx155_pos, rx155_eos, rx155_done
    set rx155_off, 0
    lt rx155_pos, 2, rx155_start
    sub rx155_off, rx155_pos, 1
    substr rx155_tgt, rx155_tgt, rx155_off
  rx155_start:
    eq $I10, 1, rx155_restart
    if_null rx155_debug, debug_452
    rx155_cur."!cursor_debug"("START", "comp_unit")
  debug_452:
    $I10 = self.'from'()
    ne $I10, -1, rxscan159_done
    goto rxscan159_scan
  rxscan159_loop:
    ($P10) = rx155_cur."from"()
    inc $P10
    set rx155_pos, $P10
    ge rx155_pos, rx155_eos, rxscan159_done
  rxscan159_scan:
    set_addr $I10, rxscan159_loop
    rx155_cur."!mark_push"(0, rx155_pos, $I10)
  rxscan159_done:
.annotate 'line', 99
  # rx subrule "newpad" subtype=method negate=
    rx155_cur."!cursor_pos"(rx155_pos)
    $P10 = rx155_cur."newpad"()
    unless $P10, rx155_fail
    rx155_pos = $P10."pos"()
.annotate 'line', 100
  # rx subrule "outerctx" subtype=method negate=
    rx155_cur."!cursor_pos"(rx155_pos)
    $P10 = rx155_cur."outerctx"()
    unless $P10, rx155_fail
    rx155_pos = $P10."pos"()
.annotate 'line', 101
  # rx subrule "statementlist" subtype=capture negate=
    rx155_cur."!cursor_pos"(rx155_pos)
    $P10 = rx155_cur."statementlist"()
    unless $P10, rx155_fail
    rx155_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statementlist")
    rx155_pos = $P10."pos"()
  alt160_0:
.annotate 'line', 102
    set_addr $I10, alt160_1
    rx155_cur."!mark_push"(0, rx155_pos, $I10)
  # rxanchor eos
    ne rx155_pos, rx155_eos, rx155_fail
    goto alt160_end
  alt160_1:
  # rx subrule "panic" subtype=method negate=
    rx155_cur."!cursor_pos"(rx155_pos)
    $P10 = rx155_cur."panic"("Confused")
    unless $P10, rx155_fail
    rx155_pos = $P10."pos"()
  alt160_end:
.annotate 'line', 98
  # rx pass
    rx155_cur."!cursor_pass"(rx155_pos, "comp_unit")
    if_null rx155_debug, debug_453
    rx155_cur."!cursor_debug"("PASS", "comp_unit", " at pos=", rx155_pos)
  debug_453:
    .return (rx155_cur)
  rx155_restart:
.annotate 'line', 4
    if_null rx155_debug, debug_454
    rx155_cur."!cursor_debug"("NEXT", "comp_unit")
  debug_454:
  rx155_fail:
    (rx155_rep, rx155_pos, $I10, $P10) = rx155_cur."!mark_fail"(0)
    lt rx155_pos, -1, rx155_done
    eq rx155_pos, -1, rx155_fail
    jump $I10
  rx155_done:
    rx155_cur."!cursor_fail"()
    if_null rx155_debug, debug_455
    rx155_cur."!cursor_debug"("FAIL", "comp_unit")
  debug_455:
    .return (rx155_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__comp_unit"  :subid("30_1294592820.342") :method
.annotate 'line', 4
    $P157 = self."!PREFIX__!subrule"("newpad", "")
    new $P158, "ResizablePMCArray"
    push $P158, $P157
    .return ($P158)
.end


.namespace ["NQP";"Grammar"]
.sub "statementlist"  :subid("31_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx162_tgt
    .local int rx162_pos
    .local int rx162_off
    .local int rx162_eos
    .local int rx162_rep
    .local pmc rx162_cur
    .local pmc rx162_debug
    (rx162_cur, rx162_pos, rx162_tgt, $I10) = self."!cursor_start"()
    rx162_cur."!cursor_caparray"("statement")
    getattribute rx162_debug, rx162_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx162_cur
    .local pmc match
    .lex "$/", match
    length rx162_eos, rx162_tgt
    gt rx162_pos, rx162_eos, rx162_done
    set rx162_off, 0
    lt rx162_pos, 2, rx162_start
    sub rx162_off, rx162_pos, 1
    substr rx162_tgt, rx162_tgt, rx162_off
  rx162_start:
    eq $I10, 1, rx162_restart
    if_null rx162_debug, debug_456
    rx162_cur."!cursor_debug"("START", "statementlist")
  debug_456:
    $I10 = self.'from'()
    ne $I10, -1, rxscan167_done
    goto rxscan167_scan
  rxscan167_loop:
    ($P10) = rx162_cur."from"()
    inc $P10
    set rx162_pos, $P10
    ge rx162_pos, rx162_eos, rxscan167_done
  rxscan167_scan:
    set_addr $I10, rxscan167_loop
    rx162_cur."!mark_push"(0, rx162_pos, $I10)
  rxscan167_done:
  alt168_0:
.annotate 'line', 105
    set_addr $I10, alt168_1
    rx162_cur."!mark_push"(0, rx162_pos, $I10)
.annotate 'line', 106
  # rx subrule "ws" subtype=method negate=
    rx162_cur."!cursor_pos"(rx162_pos)
    $P10 = rx162_cur."ws"()
    unless $P10, rx162_fail
    rx162_pos = $P10."pos"()
  # rxanchor eos
    ne rx162_pos, rx162_eos, rx162_fail
  # rx subrule "ws" subtype=method negate=
    rx162_cur."!cursor_pos"(rx162_pos)
    $P10 = rx162_cur."ws"()
    unless $P10, rx162_fail
    rx162_pos = $P10."pos"()
    goto alt168_end
  alt168_1:
.annotate 'line', 107
  # rx subrule "ws" subtype=method negate=
    rx162_cur."!cursor_pos"(rx162_pos)
    $P10 = rx162_cur."ws"()
    unless $P10, rx162_fail
    rx162_pos = $P10."pos"()
  # rx rxquantr172 ** 0..*
    set_addr $I10, rxquantr172_done
    rx162_cur."!mark_push"(0, rx162_pos, $I10)
  rxquantr172_loop:
  # rx subrule "statement" subtype=capture negate=
    rx162_cur."!cursor_pos"(rx162_pos)
    $P10 = rx162_cur."statement"()
    unless $P10, rx162_fail
    rx162_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement")
    rx162_pos = $P10."pos"()
  # rx subrule "eat_terminator" subtype=method negate=
    rx162_cur."!cursor_pos"(rx162_pos)
    $P10 = rx162_cur."eat_terminator"()
    unless $P10, rx162_fail
    rx162_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx162_cur."!cursor_pos"(rx162_pos)
    $P10 = rx162_cur."ws"()
    unless $P10, rx162_fail
    rx162_pos = $P10."pos"()
    set_addr $I10, rxquantr172_done
    (rx162_rep) = rx162_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr172_done
    rx162_cur."!mark_push"(rx162_rep, rx162_pos, $I10)
    goto rxquantr172_loop
  rxquantr172_done:
  # rx subrule "ws" subtype=method negate=
    rx162_cur."!cursor_pos"(rx162_pos)
    $P10 = rx162_cur."ws"()
    unless $P10, rx162_fail
    rx162_pos = $P10."pos"()
  alt168_end:
.annotate 'line', 105
  # rx pass
    rx162_cur."!cursor_pass"(rx162_pos, "statementlist")
    if_null rx162_debug, debug_457
    rx162_cur."!cursor_debug"("PASS", "statementlist", " at pos=", rx162_pos)
  debug_457:
    .return (rx162_cur)
  rx162_restart:
.annotate 'line', 4
    if_null rx162_debug, debug_458
    rx162_cur."!cursor_debug"("NEXT", "statementlist")
  debug_458:
  rx162_fail:
    (rx162_rep, rx162_pos, $I10, $P10) = rx162_cur."!mark_fail"(0)
    lt rx162_pos, -1, rx162_done
    eq rx162_pos, -1, rx162_fail
    jump $I10
  rx162_done:
    rx162_cur."!cursor_fail"()
    if_null rx162_debug, debug_459
    rx162_cur."!cursor_debug"("FAIL", "statementlist")
  debug_459:
    .return (rx162_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statementlist"  :subid("32_1294592820.342") :method
.annotate 'line', 4
    $P164 = self."!PREFIX__!subrule"("ws", "")
    $P165 = self."!PREFIX__!subrule"("ws", "")
    new $P166, "ResizablePMCArray"
    push $P166, $P164
    push $P166, $P165
    .return ($P166)
.end


.namespace ["NQP";"Grammar"]
.sub "statement"  :subid("33_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .const 'Sub' $P181 = "35_1294592820.342" 
    capture_lex $P181
    .local string rx176_tgt
    .local int rx176_pos
    .local int rx176_off
    .local int rx176_eos
    .local int rx176_rep
    .local pmc rx176_cur
    .local pmc rx176_debug
    (rx176_cur, rx176_pos, rx176_tgt, $I10) = self."!cursor_start"()
    rx176_cur."!cursor_caparray"("statement_mod_cond", "statement_mod_loop")
    getattribute rx176_debug, rx176_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx176_cur
    .local pmc match
    .lex "$/", match
    length rx176_eos, rx176_tgt
    gt rx176_pos, rx176_eos, rx176_done
    set rx176_off, 0
    lt rx176_pos, 2, rx176_start
    sub rx176_off, rx176_pos, 1
    substr rx176_tgt, rx176_tgt, rx176_off
  rx176_start:
    eq $I10, 1, rx176_restart
    if_null rx176_debug, debug_460
    rx176_cur."!cursor_debug"("START", "statement")
  debug_460:
    $I10 = self.'from'()
    ne $I10, -1, rxscan179_done
    goto rxscan179_scan
  rxscan179_loop:
    ($P10) = rx176_cur."from"()
    inc $P10
    set rx176_pos, $P10
    ge rx176_pos, rx176_eos, rxscan179_done
  rxscan179_scan:
    set_addr $I10, rxscan179_loop
    rx176_cur."!mark_push"(0, rx176_pos, $I10)
  rxscan179_done:
.annotate 'line', 111
  # rx subrule "before" subtype=zerowidth negate=1
    rx176_cur."!cursor_pos"(rx176_pos)
    .const 'Sub' $P181 = "35_1294592820.342" 
    capture_lex $P181
    $P10 = rx176_cur."before"($P181)
    if $P10, rx176_fail
  alt185_0:
.annotate 'line', 112
    set_addr $I10, alt185_1
    rx176_cur."!mark_push"(0, rx176_pos, $I10)
.annotate 'line', 113
  # rx subrule "statement_control" subtype=capture negate=
    rx176_cur."!cursor_pos"(rx176_pos)
    $P10 = rx176_cur."statement_control"()
    unless $P10, rx176_fail
    rx176_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement_control")
    rx176_pos = $P10."pos"()
    goto alt185_end
  alt185_1:
.annotate 'line', 114
  # rx subrule "EXPR" subtype=capture negate=
    rx176_cur."!cursor_pos"(rx176_pos)
    $P10 = rx176_cur."EXPR"()
    unless $P10, rx176_fail
    rx176_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx176_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx176_cur."!cursor_pos"(rx176_pos)
    $P10 = rx176_cur."ws"()
    unless $P10, rx176_fail
    rx176_pos = $P10."pos"()
.annotate 'line', 119
  # rx rxquantr186 ** 0..1
    set_addr $I10, rxquantr186_done
    rx176_cur."!mark_push"(0, rx176_pos, $I10)
  rxquantr186_loop:
  alt187_0:
.annotate 'line', 115
    set_addr $I10, alt187_1
    rx176_cur."!mark_push"(0, rx176_pos, $I10)
.annotate 'line', 116
  # rx subrule "MARKED" subtype=zerowidth negate=
    rx176_cur."!cursor_pos"(rx176_pos)
    $P10 = rx176_cur."MARKED"("endstmt")
    unless $P10, rx176_fail
    goto alt187_end
  alt187_1:
    set_addr $I10, alt187_2
    rx176_cur."!mark_push"(0, rx176_pos, $I10)
.annotate 'line', 117
  # rx subrule "statement_mod_cond" subtype=capture negate=
    rx176_cur."!cursor_pos"(rx176_pos)
    $P10 = rx176_cur."statement_mod_cond"()
    unless $P10, rx176_fail
    rx176_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement_mod_cond")
    rx176_pos = $P10."pos"()
  # rx rxquantr188 ** 0..1
    set_addr $I10, rxquantr188_done
    rx176_cur."!mark_push"(0, rx176_pos, $I10)
  rxquantr188_loop:
  # rx subrule "statement_mod_loop" subtype=capture negate=
    rx176_cur."!cursor_pos"(rx176_pos)
    $P10 = rx176_cur."statement_mod_loop"()
    unless $P10, rx176_fail
    goto rxsubrule189_pass
  rxsubrule189_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx176_fail
  rxsubrule189_pass:
    set_addr $I10, rxsubrule189_back
    rx176_cur."!mark_push"(0, rx176_pos, $I10, $P10)
    $P10."!cursor_names"("statement_mod_loop")
    rx176_pos = $P10."pos"()
    set_addr $I10, rxquantr188_done
    (rx176_rep) = rx176_cur."!mark_commit"($I10)
  rxquantr188_done:
    goto alt187_end
  alt187_2:
.annotate 'line', 118
  # rx subrule "statement_mod_loop" subtype=capture negate=
    rx176_cur."!cursor_pos"(rx176_pos)
    $P10 = rx176_cur."statement_mod_loop"()
    unless $P10, rx176_fail
    rx176_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement_mod_loop")
    rx176_pos = $P10."pos"()
  alt187_end:
.annotate 'line', 119
    set_addr $I10, rxquantr186_done
    (rx176_rep) = rx176_cur."!mark_commit"($I10)
  rxquantr186_done:
  alt185_end:
.annotate 'line', 110
  # rx pass
    rx176_cur."!cursor_pass"(rx176_pos, "statement")
    if_null rx176_debug, debug_465
    rx176_cur."!cursor_debug"("PASS", "statement", " at pos=", rx176_pos)
  debug_465:
    .return (rx176_cur)
  rx176_restart:
.annotate 'line', 4
    if_null rx176_debug, debug_466
    rx176_cur."!cursor_debug"("NEXT", "statement")
  debug_466:
  rx176_fail:
    (rx176_rep, rx176_pos, $I10, $P10) = rx176_cur."!mark_fail"(0)
    lt rx176_pos, -1, rx176_done
    eq rx176_pos, -1, rx176_fail
    jump $I10
  rx176_done:
    rx176_cur."!cursor_fail"()
    if_null rx176_debug, debug_467
    rx176_cur."!cursor_debug"("FAIL", "statement")
  debug_467:
    .return (rx176_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement"  :subid("34_1294592820.342") :method
.annotate 'line', 4
    new $P178, "ResizablePMCArray"
    push $P178, ""
    .return ($P178)
.end


.namespace ["NQP";"Grammar"]
.sub "_block180"  :anon :subid("35_1294592820.342") :method :outer("33_1294592820.342")
.annotate 'line', 111
    .local string rx182_tgt
    .local int rx182_pos
    .local int rx182_off
    .local int rx182_eos
    .local int rx182_rep
    .local pmc rx182_cur
    .local pmc rx182_debug
    (rx182_cur, rx182_pos, rx182_tgt, $I10) = self."!cursor_start"()
    getattribute rx182_debug, rx182_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx182_cur
    .local pmc match
    .lex "$/", match
    length rx182_eos, rx182_tgt
    gt rx182_pos, rx182_eos, rx182_done
    set rx182_off, 0
    lt rx182_pos, 2, rx182_start
    sub rx182_off, rx182_pos, 1
    substr rx182_tgt, rx182_tgt, rx182_off
  rx182_start:
    eq $I10, 1, rx182_restart
    if_null rx182_debug, debug_461
    rx182_cur."!cursor_debug"("START", "")
  debug_461:
    $I10 = self.'from'()
    ne $I10, -1, rxscan183_done
    goto rxscan183_scan
  rxscan183_loop:
    ($P10) = rx182_cur."from"()
    inc $P10
    set rx182_pos, $P10
    ge rx182_pos, rx182_eos, rxscan183_done
  rxscan183_scan:
    set_addr $I10, rxscan183_loop
    rx182_cur."!mark_push"(0, rx182_pos, $I10)
  rxscan183_done:
  alt184_0:
    set_addr $I10, alt184_1
    rx182_cur."!mark_push"(0, rx182_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx182_pos, rx182_eos, rx182_fail
    sub $I10, rx182_pos, rx182_off
    substr $S10, rx182_tgt, $I10, 1
    index $I11, "])}", $S10
    lt $I11, 0, rx182_fail
    inc rx182_pos
    goto alt184_end
  alt184_1:
  # rxanchor eos
    ne rx182_pos, rx182_eos, rx182_fail
  alt184_end:
  # rx pass
    rx182_cur."!cursor_pass"(rx182_pos, "")
    if_null rx182_debug, debug_462
    rx182_cur."!cursor_debug"("PASS", "", " at pos=", rx182_pos)
  debug_462:
    .return (rx182_cur)
  rx182_restart:
    if_null rx182_debug, debug_463
    rx182_cur."!cursor_debug"("NEXT", "")
  debug_463:
  rx182_fail:
    (rx182_rep, rx182_pos, $I10, $P10) = rx182_cur."!mark_fail"(0)
    lt rx182_pos, -1, rx182_done
    eq rx182_pos, -1, rx182_fail
    jump $I10
  rx182_done:
    rx182_cur."!cursor_fail"()
    if_null rx182_debug, debug_464
    rx182_cur."!cursor_debug"("FAIL", "")
  debug_464:
    .return (rx182_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "eat_terminator"  :subid("36_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx191_tgt
    .local int rx191_pos
    .local int rx191_off
    .local int rx191_eos
    .local int rx191_rep
    .local pmc rx191_cur
    .local pmc rx191_debug
    (rx191_cur, rx191_pos, rx191_tgt, $I10) = self."!cursor_start"()
    getattribute rx191_debug, rx191_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx191_cur
    .local pmc match
    .lex "$/", match
    length rx191_eos, rx191_tgt
    gt rx191_pos, rx191_eos, rx191_done
    set rx191_off, 0
    lt rx191_pos, 2, rx191_start
    sub rx191_off, rx191_pos, 1
    substr rx191_tgt, rx191_tgt, rx191_off
  rx191_start:
    eq $I10, 1, rx191_restart
    if_null rx191_debug, debug_468
    rx191_cur."!cursor_debug"("START", "eat_terminator")
  debug_468:
    $I10 = self.'from'()
    ne $I10, -1, rxscan194_done
    goto rxscan194_scan
  rxscan194_loop:
    ($P10) = rx191_cur."from"()
    inc $P10
    set rx191_pos, $P10
    ge rx191_pos, rx191_eos, rxscan194_done
  rxscan194_scan:
    set_addr $I10, rxscan194_loop
    rx191_cur."!mark_push"(0, rx191_pos, $I10)
  rxscan194_done:
  alt195_0:
.annotate 'line', 123
    set_addr $I10, alt195_1
    rx191_cur."!mark_push"(0, rx191_pos, $I10)
.annotate 'line', 124
  # rx literal  ";"
    add $I11, rx191_pos, 1
    gt $I11, rx191_eos, rx191_fail
    sub $I11, rx191_pos, rx191_off
    ord $I11, rx191_tgt, $I11
    ne $I11, 59, rx191_fail
    add rx191_pos, 1
    goto alt195_end
  alt195_1:
    set_addr $I10, alt195_2
    rx191_cur."!mark_push"(0, rx191_pos, $I10)
.annotate 'line', 125
  # rx subrule "MARKED" subtype=zerowidth negate=
    rx191_cur."!cursor_pos"(rx191_pos)
    $P10 = rx191_cur."MARKED"("endstmt")
    unless $P10, rx191_fail
    goto alt195_end
  alt195_2:
    set_addr $I10, alt195_3
    rx191_cur."!mark_push"(0, rx191_pos, $I10)
.annotate 'line', 126
  # rx subrule "terminator" subtype=zerowidth negate=
    rx191_cur."!cursor_pos"(rx191_pos)
    $P10 = rx191_cur."terminator"()
    unless $P10, rx191_fail
    goto alt195_end
  alt195_3:
.annotate 'line', 127
  # rxanchor eos
    ne rx191_pos, rx191_eos, rx191_fail
  alt195_end:
.annotate 'line', 123
  # rx pass
    rx191_cur."!cursor_pass"(rx191_pos, "eat_terminator")
    if_null rx191_debug, debug_469
    rx191_cur."!cursor_debug"("PASS", "eat_terminator", " at pos=", rx191_pos)
  debug_469:
    .return (rx191_cur)
  rx191_restart:
.annotate 'line', 4
    if_null rx191_debug, debug_470
    rx191_cur."!cursor_debug"("NEXT", "eat_terminator")
  debug_470:
  rx191_fail:
    (rx191_rep, rx191_pos, $I10, $P10) = rx191_cur."!mark_fail"(0)
    lt rx191_pos, -1, rx191_done
    eq rx191_pos, -1, rx191_fail
    jump $I10
  rx191_done:
    rx191_cur."!cursor_fail"()
    if_null rx191_debug, debug_471
    rx191_cur."!cursor_debug"("FAIL", "eat_terminator")
  debug_471:
    .return (rx191_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__eat_terminator"  :subid("37_1294592820.342") :method
.annotate 'line', 4
    new $P193, "ResizablePMCArray"
    push $P193, ""
    push $P193, ""
    push $P193, ""
    push $P193, ";"
    .return ($P193)
.end


.namespace ["NQP";"Grammar"]
.sub "xblock"  :subid("38_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx197_tgt
    .local int rx197_pos
    .local int rx197_off
    .local int rx197_eos
    .local int rx197_rep
    .local pmc rx197_cur
    .local pmc rx197_debug
    (rx197_cur, rx197_pos, rx197_tgt, $I10) = self."!cursor_start"()
    getattribute rx197_debug, rx197_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx197_cur
    .local pmc match
    .lex "$/", match
    length rx197_eos, rx197_tgt
    gt rx197_pos, rx197_eos, rx197_done
    set rx197_off, 0
    lt rx197_pos, 2, rx197_start
    sub rx197_off, rx197_pos, 1
    substr rx197_tgt, rx197_tgt, rx197_off
  rx197_start:
    eq $I10, 1, rx197_restart
    if_null rx197_debug, debug_472
    rx197_cur."!cursor_debug"("START", "xblock")
  debug_472:
    $I10 = self.'from'()
    ne $I10, -1, rxscan201_done
    goto rxscan201_scan
  rxscan201_loop:
    ($P10) = rx197_cur."from"()
    inc $P10
    set rx197_pos, $P10
    ge rx197_pos, rx197_eos, rxscan201_done
  rxscan201_scan:
    set_addr $I10, rxscan201_loop
    rx197_cur."!mark_push"(0, rx197_pos, $I10)
  rxscan201_done:
.annotate 'line', 131
  # rx subrule "EXPR" subtype=capture negate=
    rx197_cur."!cursor_pos"(rx197_pos)
    $P10 = rx197_cur."EXPR"()
    unless $P10, rx197_fail
    rx197_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx197_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx197_cur."!cursor_pos"(rx197_pos)
    $P10 = rx197_cur."ws"()
    unless $P10, rx197_fail
    rx197_pos = $P10."pos"()
  # rx subrule "pblock" subtype=capture negate=
    rx197_cur."!cursor_pos"(rx197_pos)
    $P10 = rx197_cur."pblock"()
    unless $P10, rx197_fail
    rx197_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pblock")
    rx197_pos = $P10."pos"()
.annotate 'line', 130
  # rx pass
    rx197_cur."!cursor_pass"(rx197_pos, "xblock")
    if_null rx197_debug, debug_473
    rx197_cur."!cursor_debug"("PASS", "xblock", " at pos=", rx197_pos)
  debug_473:
    .return (rx197_cur)
  rx197_restart:
.annotate 'line', 4
    if_null rx197_debug, debug_474
    rx197_cur."!cursor_debug"("NEXT", "xblock")
  debug_474:
  rx197_fail:
    (rx197_rep, rx197_pos, $I10, $P10) = rx197_cur."!mark_fail"(0)
    lt rx197_pos, -1, rx197_done
    eq rx197_pos, -1, rx197_fail
    jump $I10
  rx197_done:
    rx197_cur."!cursor_fail"()
    if_null rx197_debug, debug_475
    rx197_cur."!cursor_debug"("FAIL", "xblock")
  debug_475:
    .return (rx197_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__xblock"  :subid("39_1294592820.342") :method
.annotate 'line', 4
    $P199 = self."!PREFIX__!subrule"("EXPR", "")
    new $P200, "ResizablePMCArray"
    push $P200, $P199
    .return ($P200)
.end


.namespace ["NQP";"Grammar"]
.sub "pblock"  :subid("40_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx203_tgt
    .local int rx203_pos
    .local int rx203_off
    .local int rx203_eos
    .local int rx203_rep
    .local pmc rx203_cur
    .local pmc rx203_debug
    (rx203_cur, rx203_pos, rx203_tgt, $I10) = self."!cursor_start"()
    getattribute rx203_debug, rx203_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx203_cur
    .local pmc match
    .lex "$/", match
    length rx203_eos, rx203_tgt
    gt rx203_pos, rx203_eos, rx203_done
    set rx203_off, 0
    lt rx203_pos, 2, rx203_start
    sub rx203_off, rx203_pos, 1
    substr rx203_tgt, rx203_tgt, rx203_off
  rx203_start:
    eq $I10, 1, rx203_restart
    if_null rx203_debug, debug_476
    rx203_cur."!cursor_debug"("START", "pblock")
  debug_476:
    $I10 = self.'from'()
    ne $I10, -1, rxscan208_done
    goto rxscan208_scan
  rxscan208_loop:
    ($P10) = rx203_cur."from"()
    inc $P10
    set rx203_pos, $P10
    ge rx203_pos, rx203_eos, rxscan208_done
  rxscan208_scan:
    set_addr $I10, rxscan208_loop
    rx203_cur."!mark_push"(0, rx203_pos, $I10)
  rxscan208_done:
  alt209_0:
.annotate 'line', 134
    set_addr $I10, alt209_1
    rx203_cur."!mark_push"(0, rx203_pos, $I10)
.annotate 'line', 135
  # rx subrule "lambda" subtype=method negate=
    rx203_cur."!cursor_pos"(rx203_pos)
    $P10 = rx203_cur."lambda"()
    unless $P10, rx203_fail
    rx203_pos = $P10."pos"()
.annotate 'line', 136
  # rx subrule "newpad" subtype=method negate=
    rx203_cur."!cursor_pos"(rx203_pos)
    $P10 = rx203_cur."newpad"()
    unless $P10, rx203_fail
    rx203_pos = $P10."pos"()
.annotate 'line', 137
  # rx subrule "signature" subtype=capture negate=
    rx203_cur."!cursor_pos"(rx203_pos)
    $P10 = rx203_cur."signature"()
    unless $P10, rx203_fail
    rx203_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("signature")
    rx203_pos = $P10."pos"()
.annotate 'line', 138
  # rx subrule "blockoid" subtype=capture negate=
    rx203_cur."!cursor_pos"(rx203_pos)
    $P10 = rx203_cur."blockoid"()
    unless $P10, rx203_fail
    rx203_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("blockoid")
    rx203_pos = $P10."pos"()
.annotate 'line', 135
    goto alt209_end
  alt209_1:
    set_addr $I10, alt209_2
    rx203_cur."!mark_push"(0, rx203_pos, $I10)
.annotate 'line', 139
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx203_pos, rx203_off
    substr $S10, rx203_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx203_fail
.annotate 'line', 140
  # rx subrule "newpad" subtype=method negate=
    rx203_cur."!cursor_pos"(rx203_pos)
    $P10 = rx203_cur."newpad"()
    unless $P10, rx203_fail
    rx203_pos = $P10."pos"()
.annotate 'line', 141
  # rx subrule "blockoid" subtype=capture negate=
    rx203_cur."!cursor_pos"(rx203_pos)
    $P10 = rx203_cur."blockoid"()
    unless $P10, rx203_fail
    rx203_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("blockoid")
    rx203_pos = $P10."pos"()
.annotate 'line', 139
    goto alt209_end
  alt209_2:
.annotate 'line', 142
  # rx subrule "panic" subtype=method negate=
    rx203_cur."!cursor_pos"(rx203_pos)
    $P10 = rx203_cur."panic"("Missing block")
    unless $P10, rx203_fail
    rx203_pos = $P10."pos"()
  alt209_end:
.annotate 'line', 134
  # rx pass
    rx203_cur."!cursor_pass"(rx203_pos, "pblock")
    if_null rx203_debug, debug_477
    rx203_cur."!cursor_debug"("PASS", "pblock", " at pos=", rx203_pos)
  debug_477:
    .return (rx203_cur)
  rx203_restart:
.annotate 'line', 4
    if_null rx203_debug, debug_478
    rx203_cur."!cursor_debug"("NEXT", "pblock")
  debug_478:
  rx203_fail:
    (rx203_rep, rx203_pos, $I10, $P10) = rx203_cur."!mark_fail"(0)
    lt rx203_pos, -1, rx203_done
    eq rx203_pos, -1, rx203_fail
    jump $I10
  rx203_done:
    rx203_cur."!cursor_fail"()
    if_null rx203_debug, debug_479
    rx203_cur."!cursor_debug"("FAIL", "pblock")
  debug_479:
    .return (rx203_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__pblock"  :subid("41_1294592820.342") :method
.annotate 'line', 4
    $P205 = self."!PREFIX__!subrule"("panic", "")
    $P206 = self."!PREFIX__!subrule"("lambda", "")
    new $P207, "ResizablePMCArray"
    push $P207, $P205
    push $P207, "{"
    push $P207, $P206
    .return ($P207)
.end


.namespace ["NQP";"Grammar"]
.sub "lambda"  :subid("42_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx211_tgt
    .local int rx211_pos
    .local int rx211_off
    .local int rx211_eos
    .local int rx211_rep
    .local pmc rx211_cur
    .local pmc rx211_debug
    (rx211_cur, rx211_pos, rx211_tgt, $I10) = self."!cursor_start"()
    getattribute rx211_debug, rx211_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx211_cur
    .local pmc match
    .lex "$/", match
    length rx211_eos, rx211_tgt
    gt rx211_pos, rx211_eos, rx211_done
    set rx211_off, 0
    lt rx211_pos, 2, rx211_start
    sub rx211_off, rx211_pos, 1
    substr rx211_tgt, rx211_tgt, rx211_off
  rx211_start:
    eq $I10, 1, rx211_restart
    if_null rx211_debug, debug_480
    rx211_cur."!cursor_debug"("START", "lambda")
  debug_480:
    $I10 = self.'from'()
    ne $I10, -1, rxscan214_done
    goto rxscan214_scan
  rxscan214_loop:
    ($P10) = rx211_cur."from"()
    inc $P10
    set rx211_pos, $P10
    ge rx211_pos, rx211_eos, rxscan214_done
  rxscan214_scan:
    set_addr $I10, rxscan214_loop
    rx211_cur."!mark_push"(0, rx211_pos, $I10)
  rxscan214_done:
  alt215_0:
.annotate 'line', 145
    set_addr $I10, alt215_1
    rx211_cur."!mark_push"(0, rx211_pos, $I10)
  # rx literal  "->"
    add $I11, rx211_pos, 2
    gt $I11, rx211_eos, rx211_fail
    sub $I11, rx211_pos, rx211_off
    substr $S10, rx211_tgt, $I11, 2
    ne $S10, "->", rx211_fail
    add rx211_pos, 2
    goto alt215_end
  alt215_1:
  # rx literal  "<->"
    add $I11, rx211_pos, 3
    gt $I11, rx211_eos, rx211_fail
    sub $I11, rx211_pos, rx211_off
    substr $S10, rx211_tgt, $I11, 3
    ne $S10, "<->", rx211_fail
    add rx211_pos, 3
  alt215_end:
  # rx pass
    rx211_cur."!cursor_pass"(rx211_pos, "lambda")
    if_null rx211_debug, debug_481
    rx211_cur."!cursor_debug"("PASS", "lambda", " at pos=", rx211_pos)
  debug_481:
    .return (rx211_cur)
  rx211_restart:
.annotate 'line', 4
    if_null rx211_debug, debug_482
    rx211_cur."!cursor_debug"("NEXT", "lambda")
  debug_482:
  rx211_fail:
    (rx211_rep, rx211_pos, $I10, $P10) = rx211_cur."!mark_fail"(0)
    lt rx211_pos, -1, rx211_done
    eq rx211_pos, -1, rx211_fail
    jump $I10
  rx211_done:
    rx211_cur."!cursor_fail"()
    if_null rx211_debug, debug_483
    rx211_cur."!cursor_debug"("FAIL", "lambda")
  debug_483:
    .return (rx211_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__lambda"  :subid("43_1294592820.342") :method
.annotate 'line', 4
    new $P213, "ResizablePMCArray"
    push $P213, "<->"
    push $P213, "->"
    .return ($P213)
.end


.namespace ["NQP";"Grammar"]
.sub "block"  :subid("44_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx217_tgt
    .local int rx217_pos
    .local int rx217_off
    .local int rx217_eos
    .local int rx217_rep
    .local pmc rx217_cur
    .local pmc rx217_debug
    (rx217_cur, rx217_pos, rx217_tgt, $I10) = self."!cursor_start"()
    getattribute rx217_debug, rx217_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx217_cur
    .local pmc match
    .lex "$/", match
    length rx217_eos, rx217_tgt
    gt rx217_pos, rx217_eos, rx217_done
    set rx217_off, 0
    lt rx217_pos, 2, rx217_start
    sub rx217_off, rx217_pos, 1
    substr rx217_tgt, rx217_tgt, rx217_off
  rx217_start:
    eq $I10, 1, rx217_restart
    if_null rx217_debug, debug_484
    rx217_cur."!cursor_debug"("START", "block")
  debug_484:
    $I10 = self.'from'()
    ne $I10, -1, rxscan221_done
    goto rxscan221_scan
  rxscan221_loop:
    ($P10) = rx217_cur."from"()
    inc $P10
    set rx217_pos, $P10
    ge rx217_pos, rx217_eos, rxscan221_done
  rxscan221_scan:
    set_addr $I10, rxscan221_loop
    rx217_cur."!mark_push"(0, rx217_pos, $I10)
  rxscan221_done:
  alt222_0:
.annotate 'line', 148
    set_addr $I10, alt222_1
    rx217_cur."!mark_push"(0, rx217_pos, $I10)
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx217_pos, rx217_off
    substr $S10, rx217_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx217_fail
    goto alt222_end
  alt222_1:
  # rx subrule "panic" subtype=method negate=
    rx217_cur."!cursor_pos"(rx217_pos)
    $P10 = rx217_cur."panic"("Missing block")
    unless $P10, rx217_fail
    rx217_pos = $P10."pos"()
  alt222_end:
.annotate 'line', 149
  # rx subrule "newpad" subtype=method negate=
    rx217_cur."!cursor_pos"(rx217_pos)
    $P10 = rx217_cur."newpad"()
    unless $P10, rx217_fail
    rx217_pos = $P10."pos"()
.annotate 'line', 150
  # rx subrule "blockoid" subtype=capture negate=
    rx217_cur."!cursor_pos"(rx217_pos)
    $P10 = rx217_cur."blockoid"()
    unless $P10, rx217_fail
    rx217_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("blockoid")
    rx217_pos = $P10."pos"()
.annotate 'line', 147
  # rx pass
    rx217_cur."!cursor_pass"(rx217_pos, "block")
    if_null rx217_debug, debug_485
    rx217_cur."!cursor_debug"("PASS", "block", " at pos=", rx217_pos)
  debug_485:
    .return (rx217_cur)
  rx217_restart:
.annotate 'line', 4
    if_null rx217_debug, debug_486
    rx217_cur."!cursor_debug"("NEXT", "block")
  debug_486:
  rx217_fail:
    (rx217_rep, rx217_pos, $I10, $P10) = rx217_cur."!mark_fail"(0)
    lt rx217_pos, -1, rx217_done
    eq rx217_pos, -1, rx217_fail
    jump $I10
  rx217_done:
    rx217_cur."!cursor_fail"()
    if_null rx217_debug, debug_487
    rx217_cur."!cursor_debug"("FAIL", "block")
  debug_487:
    .return (rx217_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__block"  :subid("45_1294592820.342") :method
.annotate 'line', 4
    $P219 = self."!PREFIX__!subrule"("panic", "")
    new $P220, "ResizablePMCArray"
    push $P220, $P219
    push $P220, "{"
    .return ($P220)
.end


.namespace ["NQP";"Grammar"]
.sub "blockoid"  :subid("46_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx224_tgt
    .local int rx224_pos
    .local int rx224_off
    .local int rx224_eos
    .local int rx224_rep
    .local pmc rx224_cur
    .local pmc rx224_debug
    (rx224_cur, rx224_pos, rx224_tgt, $I10) = self."!cursor_start"()
    getattribute rx224_debug, rx224_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx224_cur
    .local pmc match
    .lex "$/", match
    length rx224_eos, rx224_tgt
    gt rx224_pos, rx224_eos, rx224_done
    set rx224_off, 0
    lt rx224_pos, 2, rx224_start
    sub rx224_off, rx224_pos, 1
    substr rx224_tgt, rx224_tgt, rx224_off
  rx224_start:
    eq $I10, 1, rx224_restart
    if_null rx224_debug, debug_488
    rx224_cur."!cursor_debug"("START", "blockoid")
  debug_488:
    $I10 = self.'from'()
    ne $I10, -1, rxscan228_done
    goto rxscan228_scan
  rxscan228_loop:
    ($P10) = rx224_cur."from"()
    inc $P10
    set rx224_pos, $P10
    ge rx224_pos, rx224_eos, rxscan228_done
  rxscan228_scan:
    set_addr $I10, rxscan228_loop
    rx224_cur."!mark_push"(0, rx224_pos, $I10)
  rxscan228_done:
.annotate 'line', 154
  # rx subrule "finishpad" subtype=method negate=
    rx224_cur."!cursor_pos"(rx224_pos)
    $P10 = rx224_cur."finishpad"()
    unless $P10, rx224_fail
    rx224_pos = $P10."pos"()
.annotate 'line', 155
  # rx literal  "{"
    add $I11, rx224_pos, 1
    gt $I11, rx224_eos, rx224_fail
    sub $I11, rx224_pos, rx224_off
    ord $I11, rx224_tgt, $I11
    ne $I11, 123, rx224_fail
    add rx224_pos, 1
  # rx subrule "statementlist" subtype=capture negate=
    rx224_cur."!cursor_pos"(rx224_pos)
    $P10 = rx224_cur."statementlist"()
    unless $P10, rx224_fail
    rx224_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statementlist")
    rx224_pos = $P10."pos"()
  alt229_0:
    set_addr $I10, alt229_1
    rx224_cur."!mark_push"(0, rx224_pos, $I10)
  # rx literal  "}"
    add $I11, rx224_pos, 1
    gt $I11, rx224_eos, rx224_fail
    sub $I11, rx224_pos, rx224_off
    ord $I11, rx224_tgt, $I11
    ne $I11, 125, rx224_fail
    add rx224_pos, 1
    goto alt229_end
  alt229_1:
  # rx subrule "FAILGOAL" subtype=method negate=
    rx224_cur."!cursor_pos"(rx224_pos)
    $P10 = rx224_cur."FAILGOAL"("'}'")
    unless $P10, rx224_fail
    goto rxsubrule231_pass
  rxsubrule231_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx224_fail
  rxsubrule231_pass:
    set_addr $I10, rxsubrule231_back
    rx224_cur."!mark_push"(0, rx224_pos, $I10, $P10)
    rx224_pos = $P10."pos"()
  alt229_end:
.annotate 'line', 156
  # rx subrule "ENDSTMT" subtype=zerowidth negate=
    rx224_cur."!cursor_pos"(rx224_pos)
    $P10 = rx224_cur."ENDSTMT"()
    unless $P10, rx224_fail
.annotate 'line', 153
  # rx pass
    rx224_cur."!cursor_pass"(rx224_pos, "blockoid")
    if_null rx224_debug, debug_489
    rx224_cur."!cursor_debug"("PASS", "blockoid", " at pos=", rx224_pos)
  debug_489:
    .return (rx224_cur)
  rx224_restart:
.annotate 'line', 4
    if_null rx224_debug, debug_490
    rx224_cur."!cursor_debug"("NEXT", "blockoid")
  debug_490:
  rx224_fail:
    (rx224_rep, rx224_pos, $I10, $P10) = rx224_cur."!mark_fail"(0)
    lt rx224_pos, -1, rx224_done
    eq rx224_pos, -1, rx224_fail
    jump $I10
  rx224_done:
    rx224_cur."!cursor_fail"()
    if_null rx224_debug, debug_491
    rx224_cur."!cursor_debug"("FAIL", "blockoid")
  debug_491:
    .return (rx224_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__blockoid"  :subid("47_1294592820.342") :method
.annotate 'line', 4
    $P226 = self."!PREFIX__!subrule"("finishpad", "")
    new $P227, "ResizablePMCArray"
    push $P227, $P226
    .return ($P227)
.end


.namespace ["NQP";"Grammar"]
.sub "newpad"  :subid("48_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx233_tgt
    .local int rx233_pos
    .local int rx233_off
    .local int rx233_eos
    .local int rx233_rep
    .local pmc rx233_cur
    .local pmc rx233_debug
    (rx233_cur, rx233_pos, rx233_tgt, $I10) = self."!cursor_start"()
    getattribute rx233_debug, rx233_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx233_cur
    .local pmc match
    .lex "$/", match
    length rx233_eos, rx233_tgt
    gt rx233_pos, rx233_eos, rx233_done
    set rx233_off, 0
    lt rx233_pos, 2, rx233_start
    sub rx233_off, rx233_pos, 1
    substr rx233_tgt, rx233_tgt, rx233_off
  rx233_start:
    eq $I10, 1, rx233_restart
    if_null rx233_debug, debug_492
    rx233_cur."!cursor_debug"("START", "newpad")
  debug_492:
    $I10 = self.'from'()
    ne $I10, -1, rxscan236_done
    goto rxscan236_scan
  rxscan236_loop:
    ($P10) = rx233_cur."from"()
    inc $P10
    set rx233_pos, $P10
    ge rx233_pos, rx233_eos, rxscan236_done
  rxscan236_scan:
    set_addr $I10, rxscan236_loop
    rx233_cur."!mark_push"(0, rx233_pos, $I10)
  rxscan236_done:
.annotate 'line', 159
  # rx pass
    rx233_cur."!cursor_pass"(rx233_pos, "newpad")
    if_null rx233_debug, debug_493
    rx233_cur."!cursor_debug"("PASS", "newpad", " at pos=", rx233_pos)
  debug_493:
    .return (rx233_cur)
  rx233_restart:
.annotate 'line', 4
    if_null rx233_debug, debug_494
    rx233_cur."!cursor_debug"("NEXT", "newpad")
  debug_494:
  rx233_fail:
    (rx233_rep, rx233_pos, $I10, $P10) = rx233_cur."!mark_fail"(0)
    lt rx233_pos, -1, rx233_done
    eq rx233_pos, -1, rx233_fail
    jump $I10
  rx233_done:
    rx233_cur."!cursor_fail"()
    if_null rx233_debug, debug_495
    rx233_cur."!cursor_debug"("FAIL", "newpad")
  debug_495:
    .return (rx233_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__newpad"  :subid("49_1294592820.342") :method
.annotate 'line', 4
    new $P235, "ResizablePMCArray"
    push $P235, ""
    .return ($P235)
.end


.namespace ["NQP";"Grammar"]
.sub "outerctx"  :subid("50_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx238_tgt
    .local int rx238_pos
    .local int rx238_off
    .local int rx238_eos
    .local int rx238_rep
    .local pmc rx238_cur
    .local pmc rx238_debug
    (rx238_cur, rx238_pos, rx238_tgt, $I10) = self."!cursor_start"()
    getattribute rx238_debug, rx238_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx238_cur
    .local pmc match
    .lex "$/", match
    length rx238_eos, rx238_tgt
    gt rx238_pos, rx238_eos, rx238_done
    set rx238_off, 0
    lt rx238_pos, 2, rx238_start
    sub rx238_off, rx238_pos, 1
    substr rx238_tgt, rx238_tgt, rx238_off
  rx238_start:
    eq $I10, 1, rx238_restart
    if_null rx238_debug, debug_496
    rx238_cur."!cursor_debug"("START", "outerctx")
  debug_496:
    $I10 = self.'from'()
    ne $I10, -1, rxscan241_done
    goto rxscan241_scan
  rxscan241_loop:
    ($P10) = rx238_cur."from"()
    inc $P10
    set rx238_pos, $P10
    ge rx238_pos, rx238_eos, rxscan241_done
  rxscan241_scan:
    set_addr $I10, rxscan241_loop
    rx238_cur."!mark_push"(0, rx238_pos, $I10)
  rxscan241_done:
.annotate 'line', 160
  # rx pass
    rx238_cur."!cursor_pass"(rx238_pos, "outerctx")
    if_null rx238_debug, debug_497
    rx238_cur."!cursor_debug"("PASS", "outerctx", " at pos=", rx238_pos)
  debug_497:
    .return (rx238_cur)
  rx238_restart:
.annotate 'line', 4
    if_null rx238_debug, debug_498
    rx238_cur."!cursor_debug"("NEXT", "outerctx")
  debug_498:
  rx238_fail:
    (rx238_rep, rx238_pos, $I10, $P10) = rx238_cur."!mark_fail"(0)
    lt rx238_pos, -1, rx238_done
    eq rx238_pos, -1, rx238_fail
    jump $I10
  rx238_done:
    rx238_cur."!cursor_fail"()
    if_null rx238_debug, debug_499
    rx238_cur."!cursor_debug"("FAIL", "outerctx")
  debug_499:
    .return (rx238_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__outerctx"  :subid("51_1294592820.342") :method
.annotate 'line', 4
    new $P240, "ResizablePMCArray"
    push $P240, ""
    .return ($P240)
.end


.namespace ["NQP";"Grammar"]
.sub "finishpad"  :subid("52_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx243_tgt
    .local int rx243_pos
    .local int rx243_off
    .local int rx243_eos
    .local int rx243_rep
    .local pmc rx243_cur
    .local pmc rx243_debug
    (rx243_cur, rx243_pos, rx243_tgt, $I10) = self."!cursor_start"()
    getattribute rx243_debug, rx243_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx243_cur
    .local pmc match
    .lex "$/", match
    length rx243_eos, rx243_tgt
    gt rx243_pos, rx243_eos, rx243_done
    set rx243_off, 0
    lt rx243_pos, 2, rx243_start
    sub rx243_off, rx243_pos, 1
    substr rx243_tgt, rx243_tgt, rx243_off
  rx243_start:
    eq $I10, 1, rx243_restart
    if_null rx243_debug, debug_500
    rx243_cur."!cursor_debug"("START", "finishpad")
  debug_500:
    $I10 = self.'from'()
    ne $I10, -1, rxscan246_done
    goto rxscan246_scan
  rxscan246_loop:
    ($P10) = rx243_cur."from"()
    inc $P10
    set rx243_pos, $P10
    ge rx243_pos, rx243_eos, rxscan246_done
  rxscan246_scan:
    set_addr $I10, rxscan246_loop
    rx243_cur."!mark_push"(0, rx243_pos, $I10)
  rxscan246_done:
.annotate 'line', 161
  # rx pass
    rx243_cur."!cursor_pass"(rx243_pos, "finishpad")
    if_null rx243_debug, debug_501
    rx243_cur."!cursor_debug"("PASS", "finishpad", " at pos=", rx243_pos)
  debug_501:
    .return (rx243_cur)
  rx243_restart:
.annotate 'line', 4
    if_null rx243_debug, debug_502
    rx243_cur."!cursor_debug"("NEXT", "finishpad")
  debug_502:
  rx243_fail:
    (rx243_rep, rx243_pos, $I10, $P10) = rx243_cur."!mark_fail"(0)
    lt rx243_pos, -1, rx243_done
    eq rx243_pos, -1, rx243_fail
    jump $I10
  rx243_done:
    rx243_cur."!cursor_fail"()
    if_null rx243_debug, debug_503
    rx243_cur."!cursor_debug"("FAIL", "finishpad")
  debug_503:
    .return (rx243_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__finishpad"  :subid("53_1294592820.342") :method
.annotate 'line', 4
    new $P245, "ResizablePMCArray"
    push $P245, ""
    .return ($P245)
.end


.namespace ["NQP";"Grammar"]
.sub "terminator"  :subid("54_1294592820.342") :method
.annotate 'line', 163
    $P248 = self."!protoregex"("terminator")
    .return ($P248)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__terminator"  :subid("55_1294592820.342") :method
.annotate 'line', 163
    $P250 = self."!PREFIX__!protoregex"("terminator")
    .return ($P250)
.end


.namespace ["NQP";"Grammar"]
.sub "terminator:sym<;>"  :subid("56_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx252_tgt
    .local int rx252_pos
    .local int rx252_off
    .local int rx252_eos
    .local int rx252_rep
    .local pmc rx252_cur
    .local pmc rx252_debug
    (rx252_cur, rx252_pos, rx252_tgt, $I10) = self."!cursor_start"()
    getattribute rx252_debug, rx252_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx252_cur
    .local pmc match
    .lex "$/", match
    length rx252_eos, rx252_tgt
    gt rx252_pos, rx252_eos, rx252_done
    set rx252_off, 0
    lt rx252_pos, 2, rx252_start
    sub rx252_off, rx252_pos, 1
    substr rx252_tgt, rx252_tgt, rx252_off
  rx252_start:
    eq $I10, 1, rx252_restart
    if_null rx252_debug, debug_504
    rx252_cur."!cursor_debug"("START", "terminator:sym<;>")
  debug_504:
    $I10 = self.'from'()
    ne $I10, -1, rxscan255_done
    goto rxscan255_scan
  rxscan255_loop:
    ($P10) = rx252_cur."from"()
    inc $P10
    set rx252_pos, $P10
    ge rx252_pos, rx252_eos, rxscan255_done
  rxscan255_scan:
    set_addr $I10, rxscan255_loop
    rx252_cur."!mark_push"(0, rx252_pos, $I10)
  rxscan255_done:
.annotate 'line', 165
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx252_pos, rx252_off
    substr $S10, rx252_tgt, $I10, 1
    index $I11, ";", $S10
    lt $I11, 0, rx252_fail
  # rx pass
    rx252_cur."!cursor_pass"(rx252_pos, "terminator:sym<;>")
    if_null rx252_debug, debug_505
    rx252_cur."!cursor_debug"("PASS", "terminator:sym<;>", " at pos=", rx252_pos)
  debug_505:
    .return (rx252_cur)
  rx252_restart:
.annotate 'line', 4
    if_null rx252_debug, debug_506
    rx252_cur."!cursor_debug"("NEXT", "terminator:sym<;>")
  debug_506:
  rx252_fail:
    (rx252_rep, rx252_pos, $I10, $P10) = rx252_cur."!mark_fail"(0)
    lt rx252_pos, -1, rx252_done
    eq rx252_pos, -1, rx252_fail
    jump $I10
  rx252_done:
    rx252_cur."!cursor_fail"()
    if_null rx252_debug, debug_507
    rx252_cur."!cursor_debug"("FAIL", "terminator:sym<;>")
  debug_507:
    .return (rx252_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__terminator:sym<;>"  :subid("57_1294592820.342") :method
.annotate 'line', 4
    new $P254, "ResizablePMCArray"
    push $P254, ";"
    .return ($P254)
.end


.namespace ["NQP";"Grammar"]
.sub "terminator:sym<}>"  :subid("58_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx257_tgt
    .local int rx257_pos
    .local int rx257_off
    .local int rx257_eos
    .local int rx257_rep
    .local pmc rx257_cur
    .local pmc rx257_debug
    (rx257_cur, rx257_pos, rx257_tgt, $I10) = self."!cursor_start"()
    getattribute rx257_debug, rx257_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx257_cur
    .local pmc match
    .lex "$/", match
    length rx257_eos, rx257_tgt
    gt rx257_pos, rx257_eos, rx257_done
    set rx257_off, 0
    lt rx257_pos, 2, rx257_start
    sub rx257_off, rx257_pos, 1
    substr rx257_tgt, rx257_tgt, rx257_off
  rx257_start:
    eq $I10, 1, rx257_restart
    if_null rx257_debug, debug_508
    rx257_cur."!cursor_debug"("START", "terminator:sym<}>")
  debug_508:
    $I10 = self.'from'()
    ne $I10, -1, rxscan260_done
    goto rxscan260_scan
  rxscan260_loop:
    ($P10) = rx257_cur."from"()
    inc $P10
    set rx257_pos, $P10
    ge rx257_pos, rx257_eos, rxscan260_done
  rxscan260_scan:
    set_addr $I10, rxscan260_loop
    rx257_cur."!mark_push"(0, rx257_pos, $I10)
  rxscan260_done:
.annotate 'line', 166
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx257_pos, rx257_off
    substr $S10, rx257_tgt, $I10, 1
    index $I11, "}", $S10
    lt $I11, 0, rx257_fail
  # rx pass
    rx257_cur."!cursor_pass"(rx257_pos, "terminator:sym<}>")
    if_null rx257_debug, debug_509
    rx257_cur."!cursor_debug"("PASS", "terminator:sym<}>", " at pos=", rx257_pos)
  debug_509:
    .return (rx257_cur)
  rx257_restart:
.annotate 'line', 4
    if_null rx257_debug, debug_510
    rx257_cur."!cursor_debug"("NEXT", "terminator:sym<}>")
  debug_510:
  rx257_fail:
    (rx257_rep, rx257_pos, $I10, $P10) = rx257_cur."!mark_fail"(0)
    lt rx257_pos, -1, rx257_done
    eq rx257_pos, -1, rx257_fail
    jump $I10
  rx257_done:
    rx257_cur."!cursor_fail"()
    if_null rx257_debug, debug_511
    rx257_cur."!cursor_debug"("FAIL", "terminator:sym<}>")
  debug_511:
    .return (rx257_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__terminator:sym<}>"  :subid("59_1294592820.342") :method
.annotate 'line', 4
    new $P259, "ResizablePMCArray"
    push $P259, "}"
    .return ($P259)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control"  :subid("60_1294592820.342") :method
.annotate 'line', 170
    $P262 = self."!protoregex"("statement_control")
    .return ($P262)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control"  :subid("61_1294592820.342") :method
.annotate 'line', 170
    $P264 = self."!PREFIX__!protoregex"("statement_control")
    .return ($P264)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<if>"  :subid("62_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx266_tgt
    .local int rx266_pos
    .local int rx266_off
    .local int rx266_eos
    .local int rx266_rep
    .local pmc rx266_cur
    .local pmc rx266_debug
    (rx266_cur, rx266_pos, rx266_tgt, $I10) = self."!cursor_start"()
    rx266_cur."!cursor_caparray"("xblock", "else")
    getattribute rx266_debug, rx266_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx266_cur
    .local pmc match
    .lex "$/", match
    length rx266_eos, rx266_tgt
    gt rx266_pos, rx266_eos, rx266_done
    set rx266_off, 0
    lt rx266_pos, 2, rx266_start
    sub rx266_off, rx266_pos, 1
    substr rx266_tgt, rx266_tgt, rx266_off
  rx266_start:
    eq $I10, 1, rx266_restart
    if_null rx266_debug, debug_512
    rx266_cur."!cursor_debug"("START", "statement_control:sym<if>")
  debug_512:
    $I10 = self.'from'()
    ne $I10, -1, rxscan269_done
    goto rxscan269_scan
  rxscan269_loop:
    ($P10) = rx266_cur."from"()
    inc $P10
    set rx266_pos, $P10
    ge rx266_pos, rx266_eos, rxscan269_done
  rxscan269_scan:
    set_addr $I10, rxscan269_loop
    rx266_cur."!mark_push"(0, rx266_pos, $I10)
  rxscan269_done:
.annotate 'line', 173
  # rx subcapture "sym"
    set_addr $I10, rxcap_270_fail
    rx266_cur."!mark_push"(0, rx266_pos, $I10)
  # rx literal  "if"
    add $I11, rx266_pos, 2
    gt $I11, rx266_eos, rx266_fail
    sub $I11, rx266_pos, rx266_off
    substr $S10, rx266_tgt, $I11, 2
    ne $S10, "if", rx266_fail
    add rx266_pos, 2
    set_addr $I10, rxcap_270_fail
    ($I12, $I11) = rx266_cur."!mark_peek"($I10)
    rx266_cur."!cursor_pos"($I11)
    ($P10) = rx266_cur."!cursor_start"()
    $P10."!cursor_pass"(rx266_pos, "")
    rx266_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_270_done
  rxcap_270_fail:
    goto rx266_fail
  rxcap_270_done:
  # rx charclass s
    ge rx266_pos, rx266_eos, rx266_fail
    sub $I10, rx266_pos, rx266_off
    is_cclass $I11, 32, rx266_tgt, $I10
    unless $I11, rx266_fail
    inc rx266_pos
  # rx subrule "ws" subtype=method negate=
    rx266_cur."!cursor_pos"(rx266_pos)
    $P10 = rx266_cur."ws"()
    unless $P10, rx266_fail
    rx266_pos = $P10."pos"()
.annotate 'line', 174
  # rx subrule "xblock" subtype=capture negate=
    rx266_cur."!cursor_pos"(rx266_pos)
    $P10 = rx266_cur."xblock"()
    unless $P10, rx266_fail
    rx266_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx266_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx266_cur."!cursor_pos"(rx266_pos)
    $P10 = rx266_cur."ws"()
    unless $P10, rx266_fail
    rx266_pos = $P10."pos"()
.annotate 'line', 175
  # rx rxquantr273 ** 0..*
    set_addr $I10, rxquantr273_done
    rx266_cur."!mark_push"(0, rx266_pos, $I10)
  rxquantr273_loop:
  # rx subrule "ws" subtype=method negate=
    rx266_cur."!cursor_pos"(rx266_pos)
    $P10 = rx266_cur."ws"()
    unless $P10, rx266_fail
    rx266_pos = $P10."pos"()
  # rx literal  "elsif"
    add $I11, rx266_pos, 5
    gt $I11, rx266_eos, rx266_fail
    sub $I11, rx266_pos, rx266_off
    substr $S10, rx266_tgt, $I11, 5
    ne $S10, "elsif", rx266_fail
    add rx266_pos, 5
  # rx charclass s
    ge rx266_pos, rx266_eos, rx266_fail
    sub $I10, rx266_pos, rx266_off
    is_cclass $I11, 32, rx266_tgt, $I10
    unless $I11, rx266_fail
    inc rx266_pos
  # rx subrule "ws" subtype=method negate=
    rx266_cur."!cursor_pos"(rx266_pos)
    $P10 = rx266_cur."ws"()
    unless $P10, rx266_fail
    rx266_pos = $P10."pos"()
  # rx subrule "xblock" subtype=capture negate=
    rx266_cur."!cursor_pos"(rx266_pos)
    $P10 = rx266_cur."xblock"()
    unless $P10, rx266_fail
    rx266_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx266_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx266_cur."!cursor_pos"(rx266_pos)
    $P10 = rx266_cur."ws"()
    unless $P10, rx266_fail
    rx266_pos = $P10."pos"()
    set_addr $I10, rxquantr273_done
    (rx266_rep) = rx266_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr273_done
    rx266_cur."!mark_push"(rx266_rep, rx266_pos, $I10)
    goto rxquantr273_loop
  rxquantr273_done:
  # rx subrule "ws" subtype=method negate=
    rx266_cur."!cursor_pos"(rx266_pos)
    $P10 = rx266_cur."ws"()
    unless $P10, rx266_fail
    rx266_pos = $P10."pos"()
.annotate 'line', 176
  # rx rxquantr278 ** 0..1
    set_addr $I10, rxquantr278_done
    rx266_cur."!mark_push"(0, rx266_pos, $I10)
  rxquantr278_loop:
  # rx subrule "ws" subtype=method negate=
    rx266_cur."!cursor_pos"(rx266_pos)
    $P10 = rx266_cur."ws"()
    unless $P10, rx266_fail
    rx266_pos = $P10."pos"()
  # rx literal  "else"
    add $I11, rx266_pos, 4
    gt $I11, rx266_eos, rx266_fail
    sub $I11, rx266_pos, rx266_off
    substr $S10, rx266_tgt, $I11, 4
    ne $S10, "else", rx266_fail
    add rx266_pos, 4
  # rx charclass s
    ge rx266_pos, rx266_eos, rx266_fail
    sub $I10, rx266_pos, rx266_off
    is_cclass $I11, 32, rx266_tgt, $I10
    unless $I11, rx266_fail
    inc rx266_pos
  # rx subrule "ws" subtype=method negate=
    rx266_cur."!cursor_pos"(rx266_pos)
    $P10 = rx266_cur."ws"()
    unless $P10, rx266_fail
    rx266_pos = $P10."pos"()
  # rx subrule "pblock" subtype=capture negate=
    rx266_cur."!cursor_pos"(rx266_pos)
    $P10 = rx266_cur."pblock"()
    unless $P10, rx266_fail
    rx266_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("else")
    rx266_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx266_cur."!cursor_pos"(rx266_pos)
    $P10 = rx266_cur."ws"()
    unless $P10, rx266_fail
    rx266_pos = $P10."pos"()
    set_addr $I10, rxquantr278_done
    (rx266_rep) = rx266_cur."!mark_commit"($I10)
  rxquantr278_done:
  # rx subrule "ws" subtype=method negate=
    rx266_cur."!cursor_pos"(rx266_pos)
    $P10 = rx266_cur."ws"()
    unless $P10, rx266_fail
    rx266_pos = $P10."pos"()
.annotate 'line', 172
  # rx pass
    rx266_cur."!cursor_pass"(rx266_pos, "statement_control:sym<if>")
    if_null rx266_debug, debug_513
    rx266_cur."!cursor_debug"("PASS", "statement_control:sym<if>", " at pos=", rx266_pos)
  debug_513:
    .return (rx266_cur)
  rx266_restart:
.annotate 'line', 4
    if_null rx266_debug, debug_514
    rx266_cur."!cursor_debug"("NEXT", "statement_control:sym<if>")
  debug_514:
  rx266_fail:
    (rx266_rep, rx266_pos, $I10, $P10) = rx266_cur."!mark_fail"(0)
    lt rx266_pos, -1, rx266_done
    eq rx266_pos, -1, rx266_fail
    jump $I10
  rx266_done:
    rx266_cur."!cursor_fail"()
    if_null rx266_debug, debug_515
    rx266_cur."!cursor_debug"("FAIL", "statement_control:sym<if>")
  debug_515:
    .return (rx266_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<if>"  :subid("63_1294592820.342") :method
.annotate 'line', 4
    new $P268, "ResizablePMCArray"
    push $P268, "if"
    .return ($P268)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<unless>"  :subid("64_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .const 'Sub' $P294 = "66_1294592820.342" 
    capture_lex $P294
    .local string rx284_tgt
    .local int rx284_pos
    .local int rx284_off
    .local int rx284_eos
    .local int rx284_rep
    .local pmc rx284_cur
    .local pmc rx284_debug
    (rx284_cur, rx284_pos, rx284_tgt, $I10) = self."!cursor_start"()
    getattribute rx284_debug, rx284_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx284_cur
    .local pmc match
    .lex "$/", match
    length rx284_eos, rx284_tgt
    gt rx284_pos, rx284_eos, rx284_done
    set rx284_off, 0
    lt rx284_pos, 2, rx284_start
    sub rx284_off, rx284_pos, 1
    substr rx284_tgt, rx284_tgt, rx284_off
  rx284_start:
    eq $I10, 1, rx284_restart
    if_null rx284_debug, debug_516
    rx284_cur."!cursor_debug"("START", "statement_control:sym<unless>")
  debug_516:
    $I10 = self.'from'()
    ne $I10, -1, rxscan287_done
    goto rxscan287_scan
  rxscan287_loop:
    ($P10) = rx284_cur."from"()
    inc $P10
    set rx284_pos, $P10
    ge rx284_pos, rx284_eos, rxscan287_done
  rxscan287_scan:
    set_addr $I10, rxscan287_loop
    rx284_cur."!mark_push"(0, rx284_pos, $I10)
  rxscan287_done:
.annotate 'line', 180
  # rx subcapture "sym"
    set_addr $I10, rxcap_288_fail
    rx284_cur."!mark_push"(0, rx284_pos, $I10)
  # rx literal  "unless"
    add $I11, rx284_pos, 6
    gt $I11, rx284_eos, rx284_fail
    sub $I11, rx284_pos, rx284_off
    substr $S10, rx284_tgt, $I11, 6
    ne $S10, "unless", rx284_fail
    add rx284_pos, 6
    set_addr $I10, rxcap_288_fail
    ($I12, $I11) = rx284_cur."!mark_peek"($I10)
    rx284_cur."!cursor_pos"($I11)
    ($P10) = rx284_cur."!cursor_start"()
    $P10."!cursor_pass"(rx284_pos, "")
    rx284_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_288_done
  rxcap_288_fail:
    goto rx284_fail
  rxcap_288_done:
  # rx charclass s
    ge rx284_pos, rx284_eos, rx284_fail
    sub $I10, rx284_pos, rx284_off
    is_cclass $I11, 32, rx284_tgt, $I10
    unless $I11, rx284_fail
    inc rx284_pos
  # rx subrule "ws" subtype=method negate=
    rx284_cur."!cursor_pos"(rx284_pos)
    $P10 = rx284_cur."ws"()
    unless $P10, rx284_fail
    rx284_pos = $P10."pos"()
.annotate 'line', 181
  # rx subrule "xblock" subtype=capture negate=
    rx284_cur."!cursor_pos"(rx284_pos)
    $P10 = rx284_cur."xblock"()
    unless $P10, rx284_fail
    rx284_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx284_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx284_cur."!cursor_pos"(rx284_pos)
    $P10 = rx284_cur."ws"()
    unless $P10, rx284_fail
    rx284_pos = $P10."pos"()
  alt291_0:
.annotate 'line', 182
    set_addr $I10, alt291_1
    rx284_cur."!mark_push"(0, rx284_pos, $I10)
  # rx subrule "ws" subtype=method negate=
    rx284_cur."!cursor_pos"(rx284_pos)
    $P10 = rx284_cur."ws"()
    unless $P10, rx284_fail
    rx284_pos = $P10."pos"()
  # rx subrule "before" subtype=zerowidth negate=1
    rx284_cur."!cursor_pos"(rx284_pos)
    .const 'Sub' $P294 = "66_1294592820.342" 
    capture_lex $P294
    $P10 = rx284_cur."before"($P294)
    if $P10, rx284_fail
  # rx subrule "ws" subtype=method negate=
    rx284_cur."!cursor_pos"(rx284_pos)
    $P10 = rx284_cur."ws"()
    unless $P10, rx284_fail
    rx284_pos = $P10."pos"()
    goto alt291_end
  alt291_1:
  # rx subrule "ws" subtype=method negate=
    rx284_cur."!cursor_pos"(rx284_pos)
    $P10 = rx284_cur."ws"()
    unless $P10, rx284_fail
    rx284_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx284_cur."!cursor_pos"(rx284_pos)
    $P10 = rx284_cur."panic"("unless does not take \"else\", please rewrite using \"if\"")
    unless $P10, rx284_fail
    rx284_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx284_cur."!cursor_pos"(rx284_pos)
    $P10 = rx284_cur."ws"()
    unless $P10, rx284_fail
    rx284_pos = $P10."pos"()
  alt291_end:
  # rx subrule "ws" subtype=method negate=
    rx284_cur."!cursor_pos"(rx284_pos)
    $P10 = rx284_cur."ws"()
    unless $P10, rx284_fail
    rx284_pos = $P10."pos"()
.annotate 'line', 179
  # rx pass
    rx284_cur."!cursor_pass"(rx284_pos, "statement_control:sym<unless>")
    if_null rx284_debug, debug_521
    rx284_cur."!cursor_debug"("PASS", "statement_control:sym<unless>", " at pos=", rx284_pos)
  debug_521:
    .return (rx284_cur)
  rx284_restart:
.annotate 'line', 4
    if_null rx284_debug, debug_522
    rx284_cur."!cursor_debug"("NEXT", "statement_control:sym<unless>")
  debug_522:
  rx284_fail:
    (rx284_rep, rx284_pos, $I10, $P10) = rx284_cur."!mark_fail"(0)
    lt rx284_pos, -1, rx284_done
    eq rx284_pos, -1, rx284_fail
    jump $I10
  rx284_done:
    rx284_cur."!cursor_fail"()
    if_null rx284_debug, debug_523
    rx284_cur."!cursor_debug"("FAIL", "statement_control:sym<unless>")
  debug_523:
    .return (rx284_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<unless>"  :subid("65_1294592820.342") :method
.annotate 'line', 4
    new $P286, "ResizablePMCArray"
    push $P286, "unless"
    .return ($P286)
.end


.namespace ["NQP";"Grammar"]
.sub "_block293"  :anon :subid("66_1294592820.342") :method :outer("64_1294592820.342")
.annotate 'line', 182
    .local string rx295_tgt
    .local int rx295_pos
    .local int rx295_off
    .local int rx295_eos
    .local int rx295_rep
    .local pmc rx295_cur
    .local pmc rx295_debug
    (rx295_cur, rx295_pos, rx295_tgt, $I10) = self."!cursor_start"()
    getattribute rx295_debug, rx295_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx295_cur
    .local pmc match
    .lex "$/", match
    length rx295_eos, rx295_tgt
    gt rx295_pos, rx295_eos, rx295_done
    set rx295_off, 0
    lt rx295_pos, 2, rx295_start
    sub rx295_off, rx295_pos, 1
    substr rx295_tgt, rx295_tgt, rx295_off
  rx295_start:
    eq $I10, 1, rx295_restart
    if_null rx295_debug, debug_517
    rx295_cur."!cursor_debug"("START", "")
  debug_517:
    $I10 = self.'from'()
    ne $I10, -1, rxscan296_done
    goto rxscan296_scan
  rxscan296_loop:
    ($P10) = rx295_cur."from"()
    inc $P10
    set rx295_pos, $P10
    ge rx295_pos, rx295_eos, rxscan296_done
  rxscan296_scan:
    set_addr $I10, rxscan296_loop
    rx295_cur."!mark_push"(0, rx295_pos, $I10)
  rxscan296_done:
  # rx literal  "else"
    add $I11, rx295_pos, 4
    gt $I11, rx295_eos, rx295_fail
    sub $I11, rx295_pos, rx295_off
    substr $S10, rx295_tgt, $I11, 4
    ne $S10, "else", rx295_fail
    add rx295_pos, 4
  # rx pass
    rx295_cur."!cursor_pass"(rx295_pos, "")
    if_null rx295_debug, debug_518
    rx295_cur."!cursor_debug"("PASS", "", " at pos=", rx295_pos)
  debug_518:
    .return (rx295_cur)
  rx295_restart:
    if_null rx295_debug, debug_519
    rx295_cur."!cursor_debug"("NEXT", "")
  debug_519:
  rx295_fail:
    (rx295_rep, rx295_pos, $I10, $P10) = rx295_cur."!mark_fail"(0)
    lt rx295_pos, -1, rx295_done
    eq rx295_pos, -1, rx295_fail
    jump $I10
  rx295_done:
    rx295_cur."!cursor_fail"()
    if_null rx295_debug, debug_520
    rx295_cur."!cursor_debug"("FAIL", "")
  debug_520:
    .return (rx295_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<while>"  :subid("67_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx302_tgt
    .local int rx302_pos
    .local int rx302_off
    .local int rx302_eos
    .local int rx302_rep
    .local pmc rx302_cur
    .local pmc rx302_debug
    (rx302_cur, rx302_pos, rx302_tgt, $I10) = self."!cursor_start"()
    getattribute rx302_debug, rx302_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx302_cur
    .local pmc match
    .lex "$/", match
    length rx302_eos, rx302_tgt
    gt rx302_pos, rx302_eos, rx302_done
    set rx302_off, 0
    lt rx302_pos, 2, rx302_start
    sub rx302_off, rx302_pos, 1
    substr rx302_tgt, rx302_tgt, rx302_off
  rx302_start:
    eq $I10, 1, rx302_restart
    if_null rx302_debug, debug_524
    rx302_cur."!cursor_debug"("START", "statement_control:sym<while>")
  debug_524:
    $I10 = self.'from'()
    ne $I10, -1, rxscan305_done
    goto rxscan305_scan
  rxscan305_loop:
    ($P10) = rx302_cur."from"()
    inc $P10
    set rx302_pos, $P10
    ge rx302_pos, rx302_eos, rxscan305_done
  rxscan305_scan:
    set_addr $I10, rxscan305_loop
    rx302_cur."!mark_push"(0, rx302_pos, $I10)
  rxscan305_done:
.annotate 'line', 186
  # rx subcapture "sym"
    set_addr $I10, rxcap_307_fail
    rx302_cur."!mark_push"(0, rx302_pos, $I10)
  alt306_0:
    set_addr $I10, alt306_1
    rx302_cur."!mark_push"(0, rx302_pos, $I10)
  # rx literal  "while"
    add $I11, rx302_pos, 5
    gt $I11, rx302_eos, rx302_fail
    sub $I11, rx302_pos, rx302_off
    substr $S10, rx302_tgt, $I11, 5
    ne $S10, "while", rx302_fail
    add rx302_pos, 5
    goto alt306_end
  alt306_1:
  # rx literal  "until"
    add $I11, rx302_pos, 5
    gt $I11, rx302_eos, rx302_fail
    sub $I11, rx302_pos, rx302_off
    substr $S10, rx302_tgt, $I11, 5
    ne $S10, "until", rx302_fail
    add rx302_pos, 5
  alt306_end:
    set_addr $I10, rxcap_307_fail
    ($I12, $I11) = rx302_cur."!mark_peek"($I10)
    rx302_cur."!cursor_pos"($I11)
    ($P10) = rx302_cur."!cursor_start"()
    $P10."!cursor_pass"(rx302_pos, "")
    rx302_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_307_done
  rxcap_307_fail:
    goto rx302_fail
  rxcap_307_done:
  # rx charclass s
    ge rx302_pos, rx302_eos, rx302_fail
    sub $I10, rx302_pos, rx302_off
    is_cclass $I11, 32, rx302_tgt, $I10
    unless $I11, rx302_fail
    inc rx302_pos
  # rx subrule "ws" subtype=method negate=
    rx302_cur."!cursor_pos"(rx302_pos)
    $P10 = rx302_cur."ws"()
    unless $P10, rx302_fail
    rx302_pos = $P10."pos"()
.annotate 'line', 187
  # rx subrule "xblock" subtype=capture negate=
    rx302_cur."!cursor_pos"(rx302_pos)
    $P10 = rx302_cur."xblock"()
    unless $P10, rx302_fail
    rx302_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx302_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx302_cur."!cursor_pos"(rx302_pos)
    $P10 = rx302_cur."ws"()
    unless $P10, rx302_fail
    rx302_pos = $P10."pos"()
.annotate 'line', 185
  # rx pass
    rx302_cur."!cursor_pass"(rx302_pos, "statement_control:sym<while>")
    if_null rx302_debug, debug_525
    rx302_cur."!cursor_debug"("PASS", "statement_control:sym<while>", " at pos=", rx302_pos)
  debug_525:
    .return (rx302_cur)
  rx302_restart:
.annotate 'line', 4
    if_null rx302_debug, debug_526
    rx302_cur."!cursor_debug"("NEXT", "statement_control:sym<while>")
  debug_526:
  rx302_fail:
    (rx302_rep, rx302_pos, $I10, $P10) = rx302_cur."!mark_fail"(0)
    lt rx302_pos, -1, rx302_done
    eq rx302_pos, -1, rx302_fail
    jump $I10
  rx302_done:
    rx302_cur."!cursor_fail"()
    if_null rx302_debug, debug_527
    rx302_cur."!cursor_debug"("FAIL", "statement_control:sym<while>")
  debug_527:
    .return (rx302_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<while>"  :subid("68_1294592820.342") :method
.annotate 'line', 4
    new $P304, "ResizablePMCArray"
    push $P304, "until"
    push $P304, "while"
    .return ($P304)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<repeat>"  :subid("69_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx311_tgt
    .local int rx311_pos
    .local int rx311_off
    .local int rx311_eos
    .local int rx311_rep
    .local pmc rx311_cur
    .local pmc rx311_debug
    (rx311_cur, rx311_pos, rx311_tgt, $I10) = self."!cursor_start"()
    getattribute rx311_debug, rx311_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx311_cur
    .local pmc match
    .lex "$/", match
    length rx311_eos, rx311_tgt
    gt rx311_pos, rx311_eos, rx311_done
    set rx311_off, 0
    lt rx311_pos, 2, rx311_start
    sub rx311_off, rx311_pos, 1
    substr rx311_tgt, rx311_tgt, rx311_off
  rx311_start:
    eq $I10, 1, rx311_restart
    if_null rx311_debug, debug_528
    rx311_cur."!cursor_debug"("START", "statement_control:sym<repeat>")
  debug_528:
    $I10 = self.'from'()
    ne $I10, -1, rxscan314_done
    goto rxscan314_scan
  rxscan314_loop:
    ($P10) = rx311_cur."from"()
    inc $P10
    set rx311_pos, $P10
    ge rx311_pos, rx311_eos, rxscan314_done
  rxscan314_scan:
    set_addr $I10, rxscan314_loop
    rx311_cur."!mark_push"(0, rx311_pos, $I10)
  rxscan314_done:
.annotate 'line', 191
  # rx subcapture "sym"
    set_addr $I10, rxcap_315_fail
    rx311_cur."!mark_push"(0, rx311_pos, $I10)
  # rx literal  "repeat"
    add $I11, rx311_pos, 6
    gt $I11, rx311_eos, rx311_fail
    sub $I11, rx311_pos, rx311_off
    substr $S10, rx311_tgt, $I11, 6
    ne $S10, "repeat", rx311_fail
    add rx311_pos, 6
    set_addr $I10, rxcap_315_fail
    ($I12, $I11) = rx311_cur."!mark_peek"($I10)
    rx311_cur."!cursor_pos"($I11)
    ($P10) = rx311_cur."!cursor_start"()
    $P10."!cursor_pass"(rx311_pos, "")
    rx311_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_315_done
  rxcap_315_fail:
    goto rx311_fail
  rxcap_315_done:
  # rx charclass s
    ge rx311_pos, rx311_eos, rx311_fail
    sub $I10, rx311_pos, rx311_off
    is_cclass $I11, 32, rx311_tgt, $I10
    unless $I11, rx311_fail
    inc rx311_pos
  # rx subrule "ws" subtype=method negate=
    rx311_cur."!cursor_pos"(rx311_pos)
    $P10 = rx311_cur."ws"()
    unless $P10, rx311_fail
    rx311_pos = $P10."pos"()
  alt317_0:
.annotate 'line', 192
    set_addr $I10, alt317_1
    rx311_cur."!mark_push"(0, rx311_pos, $I10)
.annotate 'line', 193
  # rx subrule "ws" subtype=method negate=
    rx311_cur."!cursor_pos"(rx311_pos)
    $P10 = rx311_cur."ws"()
    unless $P10, rx311_fail
    rx311_pos = $P10."pos"()
  # rx subcapture "wu"
    set_addr $I10, rxcap_320_fail
    rx311_cur."!mark_push"(0, rx311_pos, $I10)
  alt319_0:
    set_addr $I10, alt319_1
    rx311_cur."!mark_push"(0, rx311_pos, $I10)
  # rx literal  "while"
    add $I11, rx311_pos, 5
    gt $I11, rx311_eos, rx311_fail
    sub $I11, rx311_pos, rx311_off
    substr $S10, rx311_tgt, $I11, 5
    ne $S10, "while", rx311_fail
    add rx311_pos, 5
    goto alt319_end
  alt319_1:
  # rx literal  "until"
    add $I11, rx311_pos, 5
    gt $I11, rx311_eos, rx311_fail
    sub $I11, rx311_pos, rx311_off
    substr $S10, rx311_tgt, $I11, 5
    ne $S10, "until", rx311_fail
    add rx311_pos, 5
  alt319_end:
    set_addr $I10, rxcap_320_fail
    ($I12, $I11) = rx311_cur."!mark_peek"($I10)
    rx311_cur."!cursor_pos"($I11)
    ($P10) = rx311_cur."!cursor_start"()
    $P10."!cursor_pass"(rx311_pos, "")
    rx311_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("wu")
    goto rxcap_320_done
  rxcap_320_fail:
    goto rx311_fail
  rxcap_320_done:
  # rx charclass s
    ge rx311_pos, rx311_eos, rx311_fail
    sub $I10, rx311_pos, rx311_off
    is_cclass $I11, 32, rx311_tgt, $I10
    unless $I11, rx311_fail
    inc rx311_pos
  # rx subrule "ws" subtype=method negate=
    rx311_cur."!cursor_pos"(rx311_pos)
    $P10 = rx311_cur."ws"()
    unless $P10, rx311_fail
    rx311_pos = $P10."pos"()
  # rx subrule "xblock" subtype=capture negate=
    rx311_cur."!cursor_pos"(rx311_pos)
    $P10 = rx311_cur."xblock"()
    unless $P10, rx311_fail
    rx311_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx311_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx311_cur."!cursor_pos"(rx311_pos)
    $P10 = rx311_cur."ws"()
    unless $P10, rx311_fail
    rx311_pos = $P10."pos"()
    goto alt317_end
  alt317_1:
.annotate 'line', 194
  # rx subrule "ws" subtype=method negate=
    rx311_cur."!cursor_pos"(rx311_pos)
    $P10 = rx311_cur."ws"()
    unless $P10, rx311_fail
    rx311_pos = $P10."pos"()
  # rx subrule "pblock" subtype=capture negate=
    rx311_cur."!cursor_pos"(rx311_pos)
    $P10 = rx311_cur."pblock"()
    unless $P10, rx311_fail
    rx311_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pblock")
    rx311_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx311_cur."!cursor_pos"(rx311_pos)
    $P10 = rx311_cur."ws"()
    unless $P10, rx311_fail
    rx311_pos = $P10."pos"()
  # rx subcapture "wu"
    set_addr $I10, rxcap_326_fail
    rx311_cur."!mark_push"(0, rx311_pos, $I10)
  alt325_0:
    set_addr $I10, alt325_1
    rx311_cur."!mark_push"(0, rx311_pos, $I10)
  # rx literal  "while"
    add $I11, rx311_pos, 5
    gt $I11, rx311_eos, rx311_fail
    sub $I11, rx311_pos, rx311_off
    substr $S10, rx311_tgt, $I11, 5
    ne $S10, "while", rx311_fail
    add rx311_pos, 5
    goto alt325_end
  alt325_1:
  # rx literal  "until"
    add $I11, rx311_pos, 5
    gt $I11, rx311_eos, rx311_fail
    sub $I11, rx311_pos, rx311_off
    substr $S10, rx311_tgt, $I11, 5
    ne $S10, "until", rx311_fail
    add rx311_pos, 5
  alt325_end:
    set_addr $I10, rxcap_326_fail
    ($I12, $I11) = rx311_cur."!mark_peek"($I10)
    rx311_cur."!cursor_pos"($I11)
    ($P10) = rx311_cur."!cursor_start"()
    $P10."!cursor_pass"(rx311_pos, "")
    rx311_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("wu")
    goto rxcap_326_done
  rxcap_326_fail:
    goto rx311_fail
  rxcap_326_done:
  # rx charclass s
    ge rx311_pos, rx311_eos, rx311_fail
    sub $I10, rx311_pos, rx311_off
    is_cclass $I11, 32, rx311_tgt, $I10
    unless $I11, rx311_fail
    inc rx311_pos
  # rx subrule "ws" subtype=method negate=
    rx311_cur."!cursor_pos"(rx311_pos)
    $P10 = rx311_cur."ws"()
    unless $P10, rx311_fail
    rx311_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx311_cur."!cursor_pos"(rx311_pos)
    $P10 = rx311_cur."EXPR"()
    unless $P10, rx311_fail
    rx311_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx311_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx311_cur."!cursor_pos"(rx311_pos)
    $P10 = rx311_cur."ws"()
    unless $P10, rx311_fail
    rx311_pos = $P10."pos"()
  alt317_end:
.annotate 'line', 195
  # rx subrule "ws" subtype=method negate=
    rx311_cur."!cursor_pos"(rx311_pos)
    $P10 = rx311_cur."ws"()
    unless $P10, rx311_fail
    rx311_pos = $P10."pos"()
.annotate 'line', 190
  # rx pass
    rx311_cur."!cursor_pass"(rx311_pos, "statement_control:sym<repeat>")
    if_null rx311_debug, debug_529
    rx311_cur."!cursor_debug"("PASS", "statement_control:sym<repeat>", " at pos=", rx311_pos)
  debug_529:
    .return (rx311_cur)
  rx311_restart:
.annotate 'line', 4
    if_null rx311_debug, debug_530
    rx311_cur."!cursor_debug"("NEXT", "statement_control:sym<repeat>")
  debug_530:
  rx311_fail:
    (rx311_rep, rx311_pos, $I10, $P10) = rx311_cur."!mark_fail"(0)
    lt rx311_pos, -1, rx311_done
    eq rx311_pos, -1, rx311_fail
    jump $I10
  rx311_done:
    rx311_cur."!cursor_fail"()
    if_null rx311_debug, debug_531
    rx311_cur."!cursor_debug"("FAIL", "statement_control:sym<repeat>")
  debug_531:
    .return (rx311_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<repeat>"  :subid("70_1294592820.342") :method
.annotate 'line', 4
    new $P313, "ResizablePMCArray"
    push $P313, "repeat"
    .return ($P313)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<for>"  :subid("71_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx331_tgt
    .local int rx331_pos
    .local int rx331_off
    .local int rx331_eos
    .local int rx331_rep
    .local pmc rx331_cur
    .local pmc rx331_debug
    (rx331_cur, rx331_pos, rx331_tgt, $I10) = self."!cursor_start"()
    getattribute rx331_debug, rx331_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx331_cur
    .local pmc match
    .lex "$/", match
    length rx331_eos, rx331_tgt
    gt rx331_pos, rx331_eos, rx331_done
    set rx331_off, 0
    lt rx331_pos, 2, rx331_start
    sub rx331_off, rx331_pos, 1
    substr rx331_tgt, rx331_tgt, rx331_off
  rx331_start:
    eq $I10, 1, rx331_restart
    if_null rx331_debug, debug_532
    rx331_cur."!cursor_debug"("START", "statement_control:sym<for>")
  debug_532:
    $I10 = self.'from'()
    ne $I10, -1, rxscan334_done
    goto rxscan334_scan
  rxscan334_loop:
    ($P10) = rx331_cur."from"()
    inc $P10
    set rx331_pos, $P10
    ge rx331_pos, rx331_eos, rxscan334_done
  rxscan334_scan:
    set_addr $I10, rxscan334_loop
    rx331_cur."!mark_push"(0, rx331_pos, $I10)
  rxscan334_done:
.annotate 'line', 199
  # rx subcapture "sym"
    set_addr $I10, rxcap_335_fail
    rx331_cur."!mark_push"(0, rx331_pos, $I10)
  # rx literal  "for"
    add $I11, rx331_pos, 3
    gt $I11, rx331_eos, rx331_fail
    sub $I11, rx331_pos, rx331_off
    substr $S10, rx331_tgt, $I11, 3
    ne $S10, "for", rx331_fail
    add rx331_pos, 3
    set_addr $I10, rxcap_335_fail
    ($I12, $I11) = rx331_cur."!mark_peek"($I10)
    rx331_cur."!cursor_pos"($I11)
    ($P10) = rx331_cur."!cursor_start"()
    $P10."!cursor_pass"(rx331_pos, "")
    rx331_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_335_done
  rxcap_335_fail:
    goto rx331_fail
  rxcap_335_done:
  # rx charclass s
    ge rx331_pos, rx331_eos, rx331_fail
    sub $I10, rx331_pos, rx331_off
    is_cclass $I11, 32, rx331_tgt, $I10
    unless $I11, rx331_fail
    inc rx331_pos
  # rx subrule "ws" subtype=method negate=
    rx331_cur."!cursor_pos"(rx331_pos)
    $P10 = rx331_cur."ws"()
    unless $P10, rx331_fail
    rx331_pos = $P10."pos"()
.annotate 'line', 200
  # rx subrule "xblock" subtype=capture negate=
    rx331_cur."!cursor_pos"(rx331_pos)
    $P10 = rx331_cur."xblock"()
    unless $P10, rx331_fail
    rx331_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx331_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx331_cur."!cursor_pos"(rx331_pos)
    $P10 = rx331_cur."ws"()
    unless $P10, rx331_fail
    rx331_pos = $P10."pos"()
.annotate 'line', 198
  # rx pass
    rx331_cur."!cursor_pass"(rx331_pos, "statement_control:sym<for>")
    if_null rx331_debug, debug_533
    rx331_cur."!cursor_debug"("PASS", "statement_control:sym<for>", " at pos=", rx331_pos)
  debug_533:
    .return (rx331_cur)
  rx331_restart:
.annotate 'line', 4
    if_null rx331_debug, debug_534
    rx331_cur."!cursor_debug"("NEXT", "statement_control:sym<for>")
  debug_534:
  rx331_fail:
    (rx331_rep, rx331_pos, $I10, $P10) = rx331_cur."!mark_fail"(0)
    lt rx331_pos, -1, rx331_done
    eq rx331_pos, -1, rx331_fail
    jump $I10
  rx331_done:
    rx331_cur."!cursor_fail"()
    if_null rx331_debug, debug_535
    rx331_cur."!cursor_debug"("FAIL", "statement_control:sym<for>")
  debug_535:
    .return (rx331_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<for>"  :subid("72_1294592820.342") :method
.annotate 'line', 4
    new $P333, "ResizablePMCArray"
    push $P333, "for"
    .return ($P333)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<CATCH>"  :subid("73_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx339_tgt
    .local int rx339_pos
    .local int rx339_off
    .local int rx339_eos
    .local int rx339_rep
    .local pmc rx339_cur
    .local pmc rx339_debug
    (rx339_cur, rx339_pos, rx339_tgt, $I10) = self."!cursor_start"()
    getattribute rx339_debug, rx339_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx339_cur
    .local pmc match
    .lex "$/", match
    length rx339_eos, rx339_tgt
    gt rx339_pos, rx339_eos, rx339_done
    set rx339_off, 0
    lt rx339_pos, 2, rx339_start
    sub rx339_off, rx339_pos, 1
    substr rx339_tgt, rx339_tgt, rx339_off
  rx339_start:
    eq $I10, 1, rx339_restart
    if_null rx339_debug, debug_536
    rx339_cur."!cursor_debug"("START", "statement_control:sym<CATCH>")
  debug_536:
    $I10 = self.'from'()
    ne $I10, -1, rxscan342_done
    goto rxscan342_scan
  rxscan342_loop:
    ($P10) = rx339_cur."from"()
    inc $P10
    set rx339_pos, $P10
    ge rx339_pos, rx339_eos, rxscan342_done
  rxscan342_scan:
    set_addr $I10, rxscan342_loop
    rx339_cur."!mark_push"(0, rx339_pos, $I10)
  rxscan342_done:
.annotate 'line', 204
  # rx subcapture "sym"
    set_addr $I10, rxcap_343_fail
    rx339_cur."!mark_push"(0, rx339_pos, $I10)
  # rx literal  "CATCH"
    add $I11, rx339_pos, 5
    gt $I11, rx339_eos, rx339_fail
    sub $I11, rx339_pos, rx339_off
    substr $S10, rx339_tgt, $I11, 5
    ne $S10, "CATCH", rx339_fail
    add rx339_pos, 5
    set_addr $I10, rxcap_343_fail
    ($I12, $I11) = rx339_cur."!mark_peek"($I10)
    rx339_cur."!cursor_pos"($I11)
    ($P10) = rx339_cur."!cursor_start"()
    $P10."!cursor_pass"(rx339_pos, "")
    rx339_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_343_done
  rxcap_343_fail:
    goto rx339_fail
  rxcap_343_done:
  # rx charclass s
    ge rx339_pos, rx339_eos, rx339_fail
    sub $I10, rx339_pos, rx339_off
    is_cclass $I11, 32, rx339_tgt, $I10
    unless $I11, rx339_fail
    inc rx339_pos
  # rx subrule "ws" subtype=method negate=
    rx339_cur."!cursor_pos"(rx339_pos)
    $P10 = rx339_cur."ws"()
    unless $P10, rx339_fail
    rx339_pos = $P10."pos"()
.annotate 'line', 205
  # rx subrule "block" subtype=capture negate=
    rx339_cur."!cursor_pos"(rx339_pos)
    $P10 = rx339_cur."block"()
    unless $P10, rx339_fail
    rx339_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("block")
    rx339_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx339_cur."!cursor_pos"(rx339_pos)
    $P10 = rx339_cur."ws"()
    unless $P10, rx339_fail
    rx339_pos = $P10."pos"()
.annotate 'line', 203
  # rx pass
    rx339_cur."!cursor_pass"(rx339_pos, "statement_control:sym<CATCH>")
    if_null rx339_debug, debug_537
    rx339_cur."!cursor_debug"("PASS", "statement_control:sym<CATCH>", " at pos=", rx339_pos)
  debug_537:
    .return (rx339_cur)
  rx339_restart:
.annotate 'line', 4
    if_null rx339_debug, debug_538
    rx339_cur."!cursor_debug"("NEXT", "statement_control:sym<CATCH>")
  debug_538:
  rx339_fail:
    (rx339_rep, rx339_pos, $I10, $P10) = rx339_cur."!mark_fail"(0)
    lt rx339_pos, -1, rx339_done
    eq rx339_pos, -1, rx339_fail
    jump $I10
  rx339_done:
    rx339_cur."!cursor_fail"()
    if_null rx339_debug, debug_539
    rx339_cur."!cursor_debug"("FAIL", "statement_control:sym<CATCH>")
  debug_539:
    .return (rx339_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<CATCH>"  :subid("74_1294592820.342") :method
.annotate 'line', 4
    new $P341, "ResizablePMCArray"
    push $P341, "CATCH"
    .return ($P341)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<CONTROL>"  :subid("75_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx347_tgt
    .local int rx347_pos
    .local int rx347_off
    .local int rx347_eos
    .local int rx347_rep
    .local pmc rx347_cur
    .local pmc rx347_debug
    (rx347_cur, rx347_pos, rx347_tgt, $I10) = self."!cursor_start"()
    getattribute rx347_debug, rx347_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx347_cur
    .local pmc match
    .lex "$/", match
    length rx347_eos, rx347_tgt
    gt rx347_pos, rx347_eos, rx347_done
    set rx347_off, 0
    lt rx347_pos, 2, rx347_start
    sub rx347_off, rx347_pos, 1
    substr rx347_tgt, rx347_tgt, rx347_off
  rx347_start:
    eq $I10, 1, rx347_restart
    if_null rx347_debug, debug_540
    rx347_cur."!cursor_debug"("START", "statement_control:sym<CONTROL>")
  debug_540:
    $I10 = self.'from'()
    ne $I10, -1, rxscan350_done
    goto rxscan350_scan
  rxscan350_loop:
    ($P10) = rx347_cur."from"()
    inc $P10
    set rx347_pos, $P10
    ge rx347_pos, rx347_eos, rxscan350_done
  rxscan350_scan:
    set_addr $I10, rxscan350_loop
    rx347_cur."!mark_push"(0, rx347_pos, $I10)
  rxscan350_done:
.annotate 'line', 209
  # rx subcapture "sym"
    set_addr $I10, rxcap_351_fail
    rx347_cur."!mark_push"(0, rx347_pos, $I10)
  # rx literal  "CONTROL"
    add $I11, rx347_pos, 7
    gt $I11, rx347_eos, rx347_fail
    sub $I11, rx347_pos, rx347_off
    substr $S10, rx347_tgt, $I11, 7
    ne $S10, "CONTROL", rx347_fail
    add rx347_pos, 7
    set_addr $I10, rxcap_351_fail
    ($I12, $I11) = rx347_cur."!mark_peek"($I10)
    rx347_cur."!cursor_pos"($I11)
    ($P10) = rx347_cur."!cursor_start"()
    $P10."!cursor_pass"(rx347_pos, "")
    rx347_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_351_done
  rxcap_351_fail:
    goto rx347_fail
  rxcap_351_done:
  # rx charclass s
    ge rx347_pos, rx347_eos, rx347_fail
    sub $I10, rx347_pos, rx347_off
    is_cclass $I11, 32, rx347_tgt, $I10
    unless $I11, rx347_fail
    inc rx347_pos
  # rx subrule "ws" subtype=method negate=
    rx347_cur."!cursor_pos"(rx347_pos)
    $P10 = rx347_cur."ws"()
    unless $P10, rx347_fail
    rx347_pos = $P10."pos"()
.annotate 'line', 210
  # rx subrule "block" subtype=capture negate=
    rx347_cur."!cursor_pos"(rx347_pos)
    $P10 = rx347_cur."block"()
    unless $P10, rx347_fail
    rx347_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("block")
    rx347_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx347_cur."!cursor_pos"(rx347_pos)
    $P10 = rx347_cur."ws"()
    unless $P10, rx347_fail
    rx347_pos = $P10."pos"()
.annotate 'line', 208
  # rx pass
    rx347_cur."!cursor_pass"(rx347_pos, "statement_control:sym<CONTROL>")
    if_null rx347_debug, debug_541
    rx347_cur."!cursor_debug"("PASS", "statement_control:sym<CONTROL>", " at pos=", rx347_pos)
  debug_541:
    .return (rx347_cur)
  rx347_restart:
.annotate 'line', 4
    if_null rx347_debug, debug_542
    rx347_cur."!cursor_debug"("NEXT", "statement_control:sym<CONTROL>")
  debug_542:
  rx347_fail:
    (rx347_rep, rx347_pos, $I10, $P10) = rx347_cur."!mark_fail"(0)
    lt rx347_pos, -1, rx347_done
    eq rx347_pos, -1, rx347_fail
    jump $I10
  rx347_done:
    rx347_cur."!cursor_fail"()
    if_null rx347_debug, debug_543
    rx347_cur."!cursor_debug"("FAIL", "statement_control:sym<CONTROL>")
  debug_543:
    .return (rx347_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<CONTROL>"  :subid("76_1294592820.342") :method
.annotate 'line', 4
    new $P349, "ResizablePMCArray"
    push $P349, "CONTROL"
    .return ($P349)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_prefix"  :subid("77_1294592820.342") :method
.annotate 'line', 213
    $P355 = self."!protoregex"("statement_prefix")
    .return ($P355)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_prefix"  :subid("78_1294592820.342") :method
.annotate 'line', 213
    $P357 = self."!PREFIX__!protoregex"("statement_prefix")
    .return ($P357)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_prefix:sym<INIT>"  :subid("79_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx359_tgt
    .local int rx359_pos
    .local int rx359_off
    .local int rx359_eos
    .local int rx359_rep
    .local pmc rx359_cur
    .local pmc rx359_debug
    (rx359_cur, rx359_pos, rx359_tgt, $I10) = self."!cursor_start"()
    getattribute rx359_debug, rx359_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx359_cur
    .local pmc match
    .lex "$/", match
    length rx359_eos, rx359_tgt
    gt rx359_pos, rx359_eos, rx359_done
    set rx359_off, 0
    lt rx359_pos, 2, rx359_start
    sub rx359_off, rx359_pos, 1
    substr rx359_tgt, rx359_tgt, rx359_off
  rx359_start:
    eq $I10, 1, rx359_restart
    if_null rx359_debug, debug_544
    rx359_cur."!cursor_debug"("START", "statement_prefix:sym<INIT>")
  debug_544:
    $I10 = self.'from'()
    ne $I10, -1, rxscan363_done
    goto rxscan363_scan
  rxscan363_loop:
    ($P10) = rx359_cur."from"()
    inc $P10
    set rx359_pos, $P10
    ge rx359_pos, rx359_eos, rxscan363_done
  rxscan363_scan:
    set_addr $I10, rxscan363_loop
    rx359_cur."!mark_push"(0, rx359_pos, $I10)
  rxscan363_done:
.annotate 'line', 214
  # rx subcapture "sym"
    set_addr $I10, rxcap_364_fail
    rx359_cur."!mark_push"(0, rx359_pos, $I10)
  # rx literal  "INIT"
    add $I11, rx359_pos, 4
    gt $I11, rx359_eos, rx359_fail
    sub $I11, rx359_pos, rx359_off
    substr $S10, rx359_tgt, $I11, 4
    ne $S10, "INIT", rx359_fail
    add rx359_pos, 4
    set_addr $I10, rxcap_364_fail
    ($I12, $I11) = rx359_cur."!mark_peek"($I10)
    rx359_cur."!cursor_pos"($I11)
    ($P10) = rx359_cur."!cursor_start"()
    $P10."!cursor_pass"(rx359_pos, "")
    rx359_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_364_done
  rxcap_364_fail:
    goto rx359_fail
  rxcap_364_done:
  # rx subrule "blorst" subtype=capture negate=
    rx359_cur."!cursor_pos"(rx359_pos)
    $P10 = rx359_cur."blorst"()
    unless $P10, rx359_fail
    rx359_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("blorst")
    rx359_pos = $P10."pos"()
  # rx pass
    rx359_cur."!cursor_pass"(rx359_pos, "statement_prefix:sym<INIT>")
    if_null rx359_debug, debug_545
    rx359_cur."!cursor_debug"("PASS", "statement_prefix:sym<INIT>", " at pos=", rx359_pos)
  debug_545:
    .return (rx359_cur)
  rx359_restart:
.annotate 'line', 4
    if_null rx359_debug, debug_546
    rx359_cur."!cursor_debug"("NEXT", "statement_prefix:sym<INIT>")
  debug_546:
  rx359_fail:
    (rx359_rep, rx359_pos, $I10, $P10) = rx359_cur."!mark_fail"(0)
    lt rx359_pos, -1, rx359_done
    eq rx359_pos, -1, rx359_fail
    jump $I10
  rx359_done:
    rx359_cur."!cursor_fail"()
    if_null rx359_debug, debug_547
    rx359_cur."!cursor_debug"("FAIL", "statement_prefix:sym<INIT>")
  debug_547:
    .return (rx359_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_prefix:sym<INIT>"  :subid("80_1294592820.342") :method
.annotate 'line', 4
    $P361 = self."!PREFIX__!subrule"("blorst", "INIT")
    new $P362, "ResizablePMCArray"
    push $P362, $P361
    .return ($P362)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_prefix:sym<try>"  :subid("81_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx366_tgt
    .local int rx366_pos
    .local int rx366_off
    .local int rx366_eos
    .local int rx366_rep
    .local pmc rx366_cur
    .local pmc rx366_debug
    (rx366_cur, rx366_pos, rx366_tgt, $I10) = self."!cursor_start"()
    getattribute rx366_debug, rx366_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx366_cur
    .local pmc match
    .lex "$/", match
    length rx366_eos, rx366_tgt
    gt rx366_pos, rx366_eos, rx366_done
    set rx366_off, 0
    lt rx366_pos, 2, rx366_start
    sub rx366_off, rx366_pos, 1
    substr rx366_tgt, rx366_tgt, rx366_off
  rx366_start:
    eq $I10, 1, rx366_restart
    if_null rx366_debug, debug_548
    rx366_cur."!cursor_debug"("START", "statement_prefix:sym<try>")
  debug_548:
    $I10 = self.'from'()
    ne $I10, -1, rxscan370_done
    goto rxscan370_scan
  rxscan370_loop:
    ($P10) = rx366_cur."from"()
    inc $P10
    set rx366_pos, $P10
    ge rx366_pos, rx366_eos, rxscan370_done
  rxscan370_scan:
    set_addr $I10, rxscan370_loop
    rx366_cur."!mark_push"(0, rx366_pos, $I10)
  rxscan370_done:
.annotate 'line', 217
  # rx subcapture "sym"
    set_addr $I10, rxcap_371_fail
    rx366_cur."!mark_push"(0, rx366_pos, $I10)
  # rx literal  "try"
    add $I11, rx366_pos, 3
    gt $I11, rx366_eos, rx366_fail
    sub $I11, rx366_pos, rx366_off
    substr $S10, rx366_tgt, $I11, 3
    ne $S10, "try", rx366_fail
    add rx366_pos, 3
    set_addr $I10, rxcap_371_fail
    ($I12, $I11) = rx366_cur."!mark_peek"($I10)
    rx366_cur."!cursor_pos"($I11)
    ($P10) = rx366_cur."!cursor_start"()
    $P10."!cursor_pass"(rx366_pos, "")
    rx366_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_371_done
  rxcap_371_fail:
    goto rx366_fail
  rxcap_371_done:
.annotate 'line', 218
  # rx subrule "blorst" subtype=capture negate=
    rx366_cur."!cursor_pos"(rx366_pos)
    $P10 = rx366_cur."blorst"()
    unless $P10, rx366_fail
    rx366_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("blorst")
    rx366_pos = $P10."pos"()
.annotate 'line', 216
  # rx pass
    rx366_cur."!cursor_pass"(rx366_pos, "statement_prefix:sym<try>")
    if_null rx366_debug, debug_549
    rx366_cur."!cursor_debug"("PASS", "statement_prefix:sym<try>", " at pos=", rx366_pos)
  debug_549:
    .return (rx366_cur)
  rx366_restart:
.annotate 'line', 4
    if_null rx366_debug, debug_550
    rx366_cur."!cursor_debug"("NEXT", "statement_prefix:sym<try>")
  debug_550:
  rx366_fail:
    (rx366_rep, rx366_pos, $I10, $P10) = rx366_cur."!mark_fail"(0)
    lt rx366_pos, -1, rx366_done
    eq rx366_pos, -1, rx366_fail
    jump $I10
  rx366_done:
    rx366_cur."!cursor_fail"()
    if_null rx366_debug, debug_551
    rx366_cur."!cursor_debug"("FAIL", "statement_prefix:sym<try>")
  debug_551:
    .return (rx366_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_prefix:sym<try>"  :subid("82_1294592820.342") :method
.annotate 'line', 4
    $P368 = self."!PREFIX__!subrule"("blorst", "try")
    new $P369, "ResizablePMCArray"
    push $P369, $P368
    .return ($P369)
.end


.namespace ["NQP";"Grammar"]
.sub "blorst"  :subid("83_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx373_tgt
    .local int rx373_pos
    .local int rx373_off
    .local int rx373_eos
    .local int rx373_rep
    .local pmc rx373_cur
    .local pmc rx373_debug
    (rx373_cur, rx373_pos, rx373_tgt, $I10) = self."!cursor_start"()
    getattribute rx373_debug, rx373_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx373_cur
    .local pmc match
    .lex "$/", match
    length rx373_eos, rx373_tgt
    gt rx373_pos, rx373_eos, rx373_done
    set rx373_off, 0
    lt rx373_pos, 2, rx373_start
    sub rx373_off, rx373_pos, 1
    substr rx373_tgt, rx373_tgt, rx373_off
  rx373_start:
    eq $I10, 1, rx373_restart
    if_null rx373_debug, debug_552
    rx373_cur."!cursor_debug"("START", "blorst")
  debug_552:
    $I10 = self.'from'()
    ne $I10, -1, rxscan376_done
    goto rxscan376_scan
  rxscan376_loop:
    ($P10) = rx373_cur."from"()
    inc $P10
    set rx373_pos, $P10
    ge rx373_pos, rx373_eos, rxscan376_done
  rxscan376_scan:
    set_addr $I10, rxscan376_loop
    rx373_cur."!mark_push"(0, rx373_pos, $I10)
  rxscan376_done:
.annotate 'line', 222
  # rx charclass s
    ge rx373_pos, rx373_eos, rx373_fail
    sub $I10, rx373_pos, rx373_off
    is_cclass $I11, 32, rx373_tgt, $I10
    unless $I11, rx373_fail
    inc rx373_pos
  # rx subrule "ws" subtype=method negate=
    rx373_cur."!cursor_pos"(rx373_pos)
    $P10 = rx373_cur."ws"()
    unless $P10, rx373_fail
    rx373_pos = $P10."pos"()
  alt377_0:
    set_addr $I10, alt377_1
    rx373_cur."!mark_push"(0, rx373_pos, $I10)
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx373_pos, rx373_off
    substr $S10, rx373_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx373_fail
  # rx subrule "block" subtype=capture negate=
    rx373_cur."!cursor_pos"(rx373_pos)
    $P10 = rx373_cur."block"()
    unless $P10, rx373_fail
    rx373_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("block")
    rx373_pos = $P10."pos"()
    goto alt377_end
  alt377_1:
  # rx subrule "statement" subtype=capture negate=
    rx373_cur."!cursor_pos"(rx373_pos)
    $P10 = rx373_cur."statement"()
    unless $P10, rx373_fail
    rx373_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement")
    rx373_pos = $P10."pos"()
  alt377_end:
.annotate 'line', 221
  # rx pass
    rx373_cur."!cursor_pass"(rx373_pos, "blorst")
    if_null rx373_debug, debug_553
    rx373_cur."!cursor_debug"("PASS", "blorst", " at pos=", rx373_pos)
  debug_553:
    .return (rx373_cur)
  rx373_restart:
.annotate 'line', 4
    if_null rx373_debug, debug_554
    rx373_cur."!cursor_debug"("NEXT", "blorst")
  debug_554:
  rx373_fail:
    (rx373_rep, rx373_pos, $I10, $P10) = rx373_cur."!mark_fail"(0)
    lt rx373_pos, -1, rx373_done
    eq rx373_pos, -1, rx373_fail
    jump $I10
  rx373_done:
    rx373_cur."!cursor_fail"()
    if_null rx373_debug, debug_555
    rx373_cur."!cursor_debug"("FAIL", "blorst")
  debug_555:
    .return (rx373_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__blorst"  :subid("84_1294592820.342") :method
.annotate 'line', 4
    new $P375, "ResizablePMCArray"
    push $P375, ""
    .return ($P375)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_mod_cond"  :subid("85_1294592820.342") :method
.annotate 'line', 227
    $P379 = self."!protoregex"("statement_mod_cond")
    .return ($P379)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_mod_cond"  :subid("86_1294592820.342") :method
.annotate 'line', 227
    $P381 = self."!PREFIX__!protoregex"("statement_mod_cond")
    .return ($P381)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_mod_cond:sym<if>"  :subid("87_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx383_tgt
    .local int rx383_pos
    .local int rx383_off
    .local int rx383_eos
    .local int rx383_rep
    .local pmc rx383_cur
    .local pmc rx383_debug
    (rx383_cur, rx383_pos, rx383_tgt, $I10) = self."!cursor_start"()
    getattribute rx383_debug, rx383_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx383_cur
    .local pmc match
    .lex "$/", match
    length rx383_eos, rx383_tgt
    gt rx383_pos, rx383_eos, rx383_done
    set rx383_off, 0
    lt rx383_pos, 2, rx383_start
    sub rx383_off, rx383_pos, 1
    substr rx383_tgt, rx383_tgt, rx383_off
  rx383_start:
    eq $I10, 1, rx383_restart
    if_null rx383_debug, debug_556
    rx383_cur."!cursor_debug"("START", "statement_mod_cond:sym<if>")
  debug_556:
    $I10 = self.'from'()
    ne $I10, -1, rxscan387_done
    goto rxscan387_scan
  rxscan387_loop:
    ($P10) = rx383_cur."from"()
    inc $P10
    set rx383_pos, $P10
    ge rx383_pos, rx383_eos, rxscan387_done
  rxscan387_scan:
    set_addr $I10, rxscan387_loop
    rx383_cur."!mark_push"(0, rx383_pos, $I10)
  rxscan387_done:
.annotate 'line', 229
  # rx subcapture "sym"
    set_addr $I10, rxcap_388_fail
    rx383_cur."!mark_push"(0, rx383_pos, $I10)
  # rx literal  "if"
    add $I11, rx383_pos, 2
    gt $I11, rx383_eos, rx383_fail
    sub $I11, rx383_pos, rx383_off
    substr $S10, rx383_tgt, $I11, 2
    ne $S10, "if", rx383_fail
    add rx383_pos, 2
    set_addr $I10, rxcap_388_fail
    ($I12, $I11) = rx383_cur."!mark_peek"($I10)
    rx383_cur."!cursor_pos"($I11)
    ($P10) = rx383_cur."!cursor_start"()
    $P10."!cursor_pass"(rx383_pos, "")
    rx383_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_388_done
  rxcap_388_fail:
    goto rx383_fail
  rxcap_388_done:
  # rx subrule "ws" subtype=method negate=
    rx383_cur."!cursor_pos"(rx383_pos)
    $P10 = rx383_cur."ws"()
    unless $P10, rx383_fail
    rx383_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx383_cur."!cursor_pos"(rx383_pos)
    $P10 = rx383_cur."EXPR"()
    unless $P10, rx383_fail
    rx383_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("cond")
    rx383_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx383_cur."!cursor_pos"(rx383_pos)
    $P10 = rx383_cur."ws"()
    unless $P10, rx383_fail
    rx383_pos = $P10."pos"()
  # rx pass
    rx383_cur."!cursor_pass"(rx383_pos, "statement_mod_cond:sym<if>")
    if_null rx383_debug, debug_557
    rx383_cur."!cursor_debug"("PASS", "statement_mod_cond:sym<if>", " at pos=", rx383_pos)
  debug_557:
    .return (rx383_cur)
  rx383_restart:
.annotate 'line', 4
    if_null rx383_debug, debug_558
    rx383_cur."!cursor_debug"("NEXT", "statement_mod_cond:sym<if>")
  debug_558:
  rx383_fail:
    (rx383_rep, rx383_pos, $I10, $P10) = rx383_cur."!mark_fail"(0)
    lt rx383_pos, -1, rx383_done
    eq rx383_pos, -1, rx383_fail
    jump $I10
  rx383_done:
    rx383_cur."!cursor_fail"()
    if_null rx383_debug, debug_559
    rx383_cur."!cursor_debug"("FAIL", "statement_mod_cond:sym<if>")
  debug_559:
    .return (rx383_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_mod_cond:sym<if>"  :subid("88_1294592820.342") :method
.annotate 'line', 4
    $P385 = self."!PREFIX__!subrule"("ws", "if")
    new $P386, "ResizablePMCArray"
    push $P386, $P385
    .return ($P386)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_mod_cond:sym<unless>"  :subid("89_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx392_tgt
    .local int rx392_pos
    .local int rx392_off
    .local int rx392_eos
    .local int rx392_rep
    .local pmc rx392_cur
    .local pmc rx392_debug
    (rx392_cur, rx392_pos, rx392_tgt, $I10) = self."!cursor_start"()
    getattribute rx392_debug, rx392_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx392_cur
    .local pmc match
    .lex "$/", match
    length rx392_eos, rx392_tgt
    gt rx392_pos, rx392_eos, rx392_done
    set rx392_off, 0
    lt rx392_pos, 2, rx392_start
    sub rx392_off, rx392_pos, 1
    substr rx392_tgt, rx392_tgt, rx392_off
  rx392_start:
    eq $I10, 1, rx392_restart
    if_null rx392_debug, debug_560
    rx392_cur."!cursor_debug"("START", "statement_mod_cond:sym<unless>")
  debug_560:
    $I10 = self.'from'()
    ne $I10, -1, rxscan396_done
    goto rxscan396_scan
  rxscan396_loop:
    ($P10) = rx392_cur."from"()
    inc $P10
    set rx392_pos, $P10
    ge rx392_pos, rx392_eos, rxscan396_done
  rxscan396_scan:
    set_addr $I10, rxscan396_loop
    rx392_cur."!mark_push"(0, rx392_pos, $I10)
  rxscan396_done:
.annotate 'line', 230
  # rx subcapture "sym"
    set_addr $I10, rxcap_397_fail
    rx392_cur."!mark_push"(0, rx392_pos, $I10)
  # rx literal  "unless"
    add $I11, rx392_pos, 6
    gt $I11, rx392_eos, rx392_fail
    sub $I11, rx392_pos, rx392_off
    substr $S10, rx392_tgt, $I11, 6
    ne $S10, "unless", rx392_fail
    add rx392_pos, 6
    set_addr $I10, rxcap_397_fail
    ($I12, $I11) = rx392_cur."!mark_peek"($I10)
    rx392_cur."!cursor_pos"($I11)
    ($P10) = rx392_cur."!cursor_start"()
    $P10."!cursor_pass"(rx392_pos, "")
    rx392_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_397_done
  rxcap_397_fail:
    goto rx392_fail
  rxcap_397_done:
  # rx subrule "ws" subtype=method negate=
    rx392_cur."!cursor_pos"(rx392_pos)
    $P10 = rx392_cur."ws"()
    unless $P10, rx392_fail
    rx392_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx392_cur."!cursor_pos"(rx392_pos)
    $P10 = rx392_cur."EXPR"()
    unless $P10, rx392_fail
    rx392_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("cond")
    rx392_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx392_cur."!cursor_pos"(rx392_pos)
    $P10 = rx392_cur."ws"()
    unless $P10, rx392_fail
    rx392_pos = $P10."pos"()
  # rx pass
    rx392_cur."!cursor_pass"(rx392_pos, "statement_mod_cond:sym<unless>")
    if_null rx392_debug, debug_561
    rx392_cur."!cursor_debug"("PASS", "statement_mod_cond:sym<unless>", " at pos=", rx392_pos)
  debug_561:
    .return (rx392_cur)
  rx392_restart:
.annotate 'line', 4
    if_null rx392_debug, debug_562
    rx392_cur."!cursor_debug"("NEXT", "statement_mod_cond:sym<unless>")
  debug_562:
  rx392_fail:
    (rx392_rep, rx392_pos, $I10, $P10) = rx392_cur."!mark_fail"(0)
    lt rx392_pos, -1, rx392_done
    eq rx392_pos, -1, rx392_fail
    jump $I10
  rx392_done:
    rx392_cur."!cursor_fail"()
    if_null rx392_debug, debug_563
    rx392_cur."!cursor_debug"("FAIL", "statement_mod_cond:sym<unless>")
  debug_563:
    .return (rx392_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_mod_cond:sym<unless>"  :subid("90_1294592820.342") :method
.annotate 'line', 4
    $P394 = self."!PREFIX__!subrule"("ws", "unless")
    new $P395, "ResizablePMCArray"
    push $P395, $P394
    .return ($P395)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_mod_loop"  :subid("91_1294592820.342") :method
.annotate 'line', 232
    $P401 = self."!protoregex"("statement_mod_loop")
    .return ($P401)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_mod_loop"  :subid("92_1294592820.342") :method
.annotate 'line', 232
    $P403 = self."!PREFIX__!protoregex"("statement_mod_loop")
    .return ($P403)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_mod_loop:sym<while>"  :subid("93_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx405_tgt
    .local int rx405_pos
    .local int rx405_off
    .local int rx405_eos
    .local int rx405_rep
    .local pmc rx405_cur
    .local pmc rx405_debug
    (rx405_cur, rx405_pos, rx405_tgt, $I10) = self."!cursor_start"()
    getattribute rx405_debug, rx405_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx405_cur
    .local pmc match
    .lex "$/", match
    length rx405_eos, rx405_tgt
    gt rx405_pos, rx405_eos, rx405_done
    set rx405_off, 0
    lt rx405_pos, 2, rx405_start
    sub rx405_off, rx405_pos, 1
    substr rx405_tgt, rx405_tgt, rx405_off
  rx405_start:
    eq $I10, 1, rx405_restart
    if_null rx405_debug, debug_564
    rx405_cur."!cursor_debug"("START", "statement_mod_loop:sym<while>")
  debug_564:
    $I10 = self.'from'()
    ne $I10, -1, rxscan409_done
    goto rxscan409_scan
  rxscan409_loop:
    ($P10) = rx405_cur."from"()
    inc $P10
    set rx405_pos, $P10
    ge rx405_pos, rx405_eos, rxscan409_done
  rxscan409_scan:
    set_addr $I10, rxscan409_loop
    rx405_cur."!mark_push"(0, rx405_pos, $I10)
  rxscan409_done:
.annotate 'line', 234
  # rx subcapture "sym"
    set_addr $I10, rxcap_410_fail
    rx405_cur."!mark_push"(0, rx405_pos, $I10)
  # rx literal  "while"
    add $I11, rx405_pos, 5
    gt $I11, rx405_eos, rx405_fail
    sub $I11, rx405_pos, rx405_off
    substr $S10, rx405_tgt, $I11, 5
    ne $S10, "while", rx405_fail
    add rx405_pos, 5
    set_addr $I10, rxcap_410_fail
    ($I12, $I11) = rx405_cur."!mark_peek"($I10)
    rx405_cur."!cursor_pos"($I11)
    ($P10) = rx405_cur."!cursor_start"()
    $P10."!cursor_pass"(rx405_pos, "")
    rx405_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_410_done
  rxcap_410_fail:
    goto rx405_fail
  rxcap_410_done:
  # rx subrule "ws" subtype=method negate=
    rx405_cur."!cursor_pos"(rx405_pos)
    $P10 = rx405_cur."ws"()
    unless $P10, rx405_fail
    rx405_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx405_cur."!cursor_pos"(rx405_pos)
    $P10 = rx405_cur."EXPR"()
    unless $P10, rx405_fail
    rx405_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("cond")
    rx405_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx405_cur."!cursor_pos"(rx405_pos)
    $P10 = rx405_cur."ws"()
    unless $P10, rx405_fail
    rx405_pos = $P10."pos"()
  # rx pass
    rx405_cur."!cursor_pass"(rx405_pos, "statement_mod_loop:sym<while>")
    if_null rx405_debug, debug_565
    rx405_cur."!cursor_debug"("PASS", "statement_mod_loop:sym<while>", " at pos=", rx405_pos)
  debug_565:
    .return (rx405_cur)
  rx405_restart:
.annotate 'line', 4
    if_null rx405_debug, debug_566
    rx405_cur."!cursor_debug"("NEXT", "statement_mod_loop:sym<while>")
  debug_566:
  rx405_fail:
    (rx405_rep, rx405_pos, $I10, $P10) = rx405_cur."!mark_fail"(0)
    lt rx405_pos, -1, rx405_done
    eq rx405_pos, -1, rx405_fail
    jump $I10
  rx405_done:
    rx405_cur."!cursor_fail"()
    if_null rx405_debug, debug_567
    rx405_cur."!cursor_debug"("FAIL", "statement_mod_loop:sym<while>")
  debug_567:
    .return (rx405_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_mod_loop:sym<while>"  :subid("94_1294592820.342") :method
.annotate 'line', 4
    $P407 = self."!PREFIX__!subrule"("ws", "while")
    new $P408, "ResizablePMCArray"
    push $P408, $P407
    .return ($P408)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_mod_loop:sym<until>"  :subid("95_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx414_tgt
    .local int rx414_pos
    .local int rx414_off
    .local int rx414_eos
    .local int rx414_rep
    .local pmc rx414_cur
    .local pmc rx414_debug
    (rx414_cur, rx414_pos, rx414_tgt, $I10) = self."!cursor_start"()
    getattribute rx414_debug, rx414_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx414_cur
    .local pmc match
    .lex "$/", match
    length rx414_eos, rx414_tgt
    gt rx414_pos, rx414_eos, rx414_done
    set rx414_off, 0
    lt rx414_pos, 2, rx414_start
    sub rx414_off, rx414_pos, 1
    substr rx414_tgt, rx414_tgt, rx414_off
  rx414_start:
    eq $I10, 1, rx414_restart
    if_null rx414_debug, debug_568
    rx414_cur."!cursor_debug"("START", "statement_mod_loop:sym<until>")
  debug_568:
    $I10 = self.'from'()
    ne $I10, -1, rxscan418_done
    goto rxscan418_scan
  rxscan418_loop:
    ($P10) = rx414_cur."from"()
    inc $P10
    set rx414_pos, $P10
    ge rx414_pos, rx414_eos, rxscan418_done
  rxscan418_scan:
    set_addr $I10, rxscan418_loop
    rx414_cur."!mark_push"(0, rx414_pos, $I10)
  rxscan418_done:
.annotate 'line', 235
  # rx subcapture "sym"
    set_addr $I10, rxcap_419_fail
    rx414_cur."!mark_push"(0, rx414_pos, $I10)
  # rx literal  "until"
    add $I11, rx414_pos, 5
    gt $I11, rx414_eos, rx414_fail
    sub $I11, rx414_pos, rx414_off
    substr $S10, rx414_tgt, $I11, 5
    ne $S10, "until", rx414_fail
    add rx414_pos, 5
    set_addr $I10, rxcap_419_fail
    ($I12, $I11) = rx414_cur."!mark_peek"($I10)
    rx414_cur."!cursor_pos"($I11)
    ($P10) = rx414_cur."!cursor_start"()
    $P10."!cursor_pass"(rx414_pos, "")
    rx414_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_419_done
  rxcap_419_fail:
    goto rx414_fail
  rxcap_419_done:
  # rx subrule "ws" subtype=method negate=
    rx414_cur."!cursor_pos"(rx414_pos)
    $P10 = rx414_cur."ws"()
    unless $P10, rx414_fail
    rx414_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx414_cur."!cursor_pos"(rx414_pos)
    $P10 = rx414_cur."EXPR"()
    unless $P10, rx414_fail
    rx414_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("cond")
    rx414_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx414_cur."!cursor_pos"(rx414_pos)
    $P10 = rx414_cur."ws"()
    unless $P10, rx414_fail
    rx414_pos = $P10."pos"()
  # rx pass
    rx414_cur."!cursor_pass"(rx414_pos, "statement_mod_loop:sym<until>")
    if_null rx414_debug, debug_569
    rx414_cur."!cursor_debug"("PASS", "statement_mod_loop:sym<until>", " at pos=", rx414_pos)
  debug_569:
    .return (rx414_cur)
  rx414_restart:
.annotate 'line', 4
    if_null rx414_debug, debug_570
    rx414_cur."!cursor_debug"("NEXT", "statement_mod_loop:sym<until>")
  debug_570:
  rx414_fail:
    (rx414_rep, rx414_pos, $I10, $P10) = rx414_cur."!mark_fail"(0)
    lt rx414_pos, -1, rx414_done
    eq rx414_pos, -1, rx414_fail
    jump $I10
  rx414_done:
    rx414_cur."!cursor_fail"()
    if_null rx414_debug, debug_571
    rx414_cur."!cursor_debug"("FAIL", "statement_mod_loop:sym<until>")
  debug_571:
    .return (rx414_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_mod_loop:sym<until>"  :subid("96_1294592820.342") :method
.annotate 'line', 4
    $P416 = self."!PREFIX__!subrule"("ws", "until")
    new $P417, "ResizablePMCArray"
    push $P417, $P416
    .return ($P417)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_mod_loop:sym<for>"  :subid("97_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx423_tgt
    .local int rx423_pos
    .local int rx423_off
    .local int rx423_eos
    .local int rx423_rep
    .local pmc rx423_cur
    .local pmc rx423_debug
    (rx423_cur, rx423_pos, rx423_tgt, $I10) = self."!cursor_start"()
    getattribute rx423_debug, rx423_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx423_cur
    .local pmc match
    .lex "$/", match
    length rx423_eos, rx423_tgt
    gt rx423_pos, rx423_eos, rx423_done
    set rx423_off, 0
    lt rx423_pos, 2, rx423_start
    sub rx423_off, rx423_pos, 1
    substr rx423_tgt, rx423_tgt, rx423_off
  rx423_start:
    eq $I10, 1, rx423_restart
    if_null rx423_debug, debug_572
    rx423_cur."!cursor_debug"("START", "statement_mod_loop:sym<for>")
  debug_572:
    $I10 = self.'from'()
    ne $I10, -1, rxscan427_done
    goto rxscan427_scan
  rxscan427_loop:
    ($P10) = rx423_cur."from"()
    inc $P10
    set rx423_pos, $P10
    ge rx423_pos, rx423_eos, rxscan427_done
  rxscan427_scan:
    set_addr $I10, rxscan427_loop
    rx423_cur."!mark_push"(0, rx423_pos, $I10)
  rxscan427_done:
.annotate 'line', 236
  # rx subcapture "sym"
    set_addr $I10, rxcap_428_fail
    rx423_cur."!mark_push"(0, rx423_pos, $I10)
  # rx literal  "for"
    add $I11, rx423_pos, 3
    gt $I11, rx423_eos, rx423_fail
    sub $I11, rx423_pos, rx423_off
    substr $S10, rx423_tgt, $I11, 3
    ne $S10, "for", rx423_fail
    add rx423_pos, 3
    set_addr $I10, rxcap_428_fail
    ($I12, $I11) = rx423_cur."!mark_peek"($I10)
    rx423_cur."!cursor_pos"($I11)
    ($P10) = rx423_cur."!cursor_start"()
    $P10."!cursor_pass"(rx423_pos, "")
    rx423_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_428_done
  rxcap_428_fail:
    goto rx423_fail
  rxcap_428_done:
  # rx subrule "ws" subtype=method negate=
    rx423_cur."!cursor_pos"(rx423_pos)
    $P10 = rx423_cur."ws"()
    unless $P10, rx423_fail
    rx423_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx423_cur."!cursor_pos"(rx423_pos)
    $P10 = rx423_cur."EXPR"()
    unless $P10, rx423_fail
    rx423_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("cond")
    rx423_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx423_cur."!cursor_pos"(rx423_pos)
    $P10 = rx423_cur."ws"()
    unless $P10, rx423_fail
    rx423_pos = $P10."pos"()
  # rx pass
    rx423_cur."!cursor_pass"(rx423_pos, "statement_mod_loop:sym<for>")
    if_null rx423_debug, debug_573
    rx423_cur."!cursor_debug"("PASS", "statement_mod_loop:sym<for>", " at pos=", rx423_pos)
  debug_573:
    .return (rx423_cur)
  rx423_restart:
.annotate 'line', 4
    if_null rx423_debug, debug_574
    rx423_cur."!cursor_debug"("NEXT", "statement_mod_loop:sym<for>")
  debug_574:
  rx423_fail:
    (rx423_rep, rx423_pos, $I10, $P10) = rx423_cur."!mark_fail"(0)
    lt rx423_pos, -1, rx423_done
    eq rx423_pos, -1, rx423_fail
    jump $I10
  rx423_done:
    rx423_cur."!cursor_fail"()
    if_null rx423_debug, debug_575
    rx423_cur."!cursor_debug"("FAIL", "statement_mod_loop:sym<for>")
  debug_575:
    .return (rx423_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_mod_loop:sym<for>"  :subid("98_1294592820.342") :method
.annotate 'line', 4
    $P425 = self."!PREFIX__!subrule"("ws", "for")
    new $P426, "ResizablePMCArray"
    push $P426, $P425
    .return ($P426)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<fatarrow>"  :subid("99_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx432_tgt
    .local int rx432_pos
    .local int rx432_off
    .local int rx432_eos
    .local int rx432_rep
    .local pmc rx432_cur
    .local pmc rx432_debug
    (rx432_cur, rx432_pos, rx432_tgt, $I10) = self."!cursor_start"()
    getattribute rx432_debug, rx432_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx432_cur
    .local pmc match
    .lex "$/", match
    length rx432_eos, rx432_tgt
    gt rx432_pos, rx432_eos, rx432_done
    set rx432_off, 0
    lt rx432_pos, 2, rx432_start
    sub rx432_off, rx432_pos, 1
    substr rx432_tgt, rx432_tgt, rx432_off
  rx432_start:
    eq $I10, 1, rx432_restart
    if_null rx432_debug, debug_576
    rx432_cur."!cursor_debug"("START", "term:sym<fatarrow>")
  debug_576:
    $I10 = self.'from'()
    ne $I10, -1, rxscan436_done
    goto rxscan436_scan
  rxscan436_loop:
    ($P10) = rx432_cur."from"()
    inc $P10
    set rx432_pos, $P10
    ge rx432_pos, rx432_eos, rxscan436_done
  rxscan436_scan:
    set_addr $I10, rxscan436_loop
    rx432_cur."!mark_push"(0, rx432_pos, $I10)
  rxscan436_done:
.annotate 'line', 240
  # rx subrule "fatarrow" subtype=capture negate=
    rx432_cur."!cursor_pos"(rx432_pos)
    $P10 = rx432_cur."fatarrow"()
    unless $P10, rx432_fail
    rx432_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("fatarrow")
    rx432_pos = $P10."pos"()
  # rx pass
    rx432_cur."!cursor_pass"(rx432_pos, "term:sym<fatarrow>")
    if_null rx432_debug, debug_577
    rx432_cur."!cursor_debug"("PASS", "term:sym<fatarrow>", " at pos=", rx432_pos)
  debug_577:
    .return (rx432_cur)
  rx432_restart:
.annotate 'line', 4
    if_null rx432_debug, debug_578
    rx432_cur."!cursor_debug"("NEXT", "term:sym<fatarrow>")
  debug_578:
  rx432_fail:
    (rx432_rep, rx432_pos, $I10, $P10) = rx432_cur."!mark_fail"(0)
    lt rx432_pos, -1, rx432_done
    eq rx432_pos, -1, rx432_fail
    jump $I10
  rx432_done:
    rx432_cur."!cursor_fail"()
    if_null rx432_debug, debug_579
    rx432_cur."!cursor_debug"("FAIL", "term:sym<fatarrow>")
  debug_579:
    .return (rx432_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<fatarrow>"  :subid("100_1294592820.342") :method
.annotate 'line', 4
    $P434 = self."!PREFIX__!subrule"("fatarrow", "")
    new $P435, "ResizablePMCArray"
    push $P435, $P434
    .return ($P435)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<colonpair>"  :subid("101_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx438_tgt
    .local int rx438_pos
    .local int rx438_off
    .local int rx438_eos
    .local int rx438_rep
    .local pmc rx438_cur
    .local pmc rx438_debug
    (rx438_cur, rx438_pos, rx438_tgt, $I10) = self."!cursor_start"()
    getattribute rx438_debug, rx438_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx438_cur
    .local pmc match
    .lex "$/", match
    length rx438_eos, rx438_tgt
    gt rx438_pos, rx438_eos, rx438_done
    set rx438_off, 0
    lt rx438_pos, 2, rx438_start
    sub rx438_off, rx438_pos, 1
    substr rx438_tgt, rx438_tgt, rx438_off
  rx438_start:
    eq $I10, 1, rx438_restart
    if_null rx438_debug, debug_580
    rx438_cur."!cursor_debug"("START", "term:sym<colonpair>")
  debug_580:
    $I10 = self.'from'()
    ne $I10, -1, rxscan442_done
    goto rxscan442_scan
  rxscan442_loop:
    ($P10) = rx438_cur."from"()
    inc $P10
    set rx438_pos, $P10
    ge rx438_pos, rx438_eos, rxscan442_done
  rxscan442_scan:
    set_addr $I10, rxscan442_loop
    rx438_cur."!mark_push"(0, rx438_pos, $I10)
  rxscan442_done:
.annotate 'line', 241
  # rx subrule "colonpair" subtype=capture negate=
    rx438_cur."!cursor_pos"(rx438_pos)
    $P10 = rx438_cur."colonpair"()
    unless $P10, rx438_fail
    rx438_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("colonpair")
    rx438_pos = $P10."pos"()
  # rx pass
    rx438_cur."!cursor_pass"(rx438_pos, "term:sym<colonpair>")
    if_null rx438_debug, debug_581
    rx438_cur."!cursor_debug"("PASS", "term:sym<colonpair>", " at pos=", rx438_pos)
  debug_581:
    .return (rx438_cur)
  rx438_restart:
.annotate 'line', 4
    if_null rx438_debug, debug_582
    rx438_cur."!cursor_debug"("NEXT", "term:sym<colonpair>")
  debug_582:
  rx438_fail:
    (rx438_rep, rx438_pos, $I10, $P10) = rx438_cur."!mark_fail"(0)
    lt rx438_pos, -1, rx438_done
    eq rx438_pos, -1, rx438_fail
    jump $I10
  rx438_done:
    rx438_cur."!cursor_fail"()
    if_null rx438_debug, debug_583
    rx438_cur."!cursor_debug"("FAIL", "term:sym<colonpair>")
  debug_583:
    .return (rx438_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<colonpair>"  :subid("102_1294592820.342") :method
.annotate 'line', 4
    $P440 = self."!PREFIX__!subrule"("colonpair", "")
    new $P441, "ResizablePMCArray"
    push $P441, $P440
    .return ($P441)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<variable>"  :subid("103_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx444_tgt
    .local int rx444_pos
    .local int rx444_off
    .local int rx444_eos
    .local int rx444_rep
    .local pmc rx444_cur
    .local pmc rx444_debug
    (rx444_cur, rx444_pos, rx444_tgt, $I10) = self."!cursor_start"()
    getattribute rx444_debug, rx444_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx444_cur
    .local pmc match
    .lex "$/", match
    length rx444_eos, rx444_tgt
    gt rx444_pos, rx444_eos, rx444_done
    set rx444_off, 0
    lt rx444_pos, 2, rx444_start
    sub rx444_off, rx444_pos, 1
    substr rx444_tgt, rx444_tgt, rx444_off
  rx444_start:
    eq $I10, 1, rx444_restart
    if_null rx444_debug, debug_584
    rx444_cur."!cursor_debug"("START", "term:sym<variable>")
  debug_584:
    $I10 = self.'from'()
    ne $I10, -1, rxscan448_done
    goto rxscan448_scan
  rxscan448_loop:
    ($P10) = rx444_cur."from"()
    inc $P10
    set rx444_pos, $P10
    ge rx444_pos, rx444_eos, rxscan448_done
  rxscan448_scan:
    set_addr $I10, rxscan448_loop
    rx444_cur."!mark_push"(0, rx444_pos, $I10)
  rxscan448_done:
.annotate 'line', 242
  # rx subrule "variable" subtype=capture negate=
    rx444_cur."!cursor_pos"(rx444_pos)
    $P10 = rx444_cur."variable"()
    unless $P10, rx444_fail
    rx444_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("variable")
    rx444_pos = $P10."pos"()
  # rx pass
    rx444_cur."!cursor_pass"(rx444_pos, "term:sym<variable>")
    if_null rx444_debug, debug_585
    rx444_cur."!cursor_debug"("PASS", "term:sym<variable>", " at pos=", rx444_pos)
  debug_585:
    .return (rx444_cur)
  rx444_restart:
.annotate 'line', 4
    if_null rx444_debug, debug_586
    rx444_cur."!cursor_debug"("NEXT", "term:sym<variable>")
  debug_586:
  rx444_fail:
    (rx444_rep, rx444_pos, $I10, $P10) = rx444_cur."!mark_fail"(0)
    lt rx444_pos, -1, rx444_done
    eq rx444_pos, -1, rx444_fail
    jump $I10
  rx444_done:
    rx444_cur."!cursor_fail"()
    if_null rx444_debug, debug_587
    rx444_cur."!cursor_debug"("FAIL", "term:sym<variable>")
  debug_587:
    .return (rx444_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<variable>"  :subid("104_1294592820.342") :method
.annotate 'line', 4
    $P446 = self."!PREFIX__!subrule"("variable", "")
    new $P447, "ResizablePMCArray"
    push $P447, $P446
    .return ($P447)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<package_declarator>"  :subid("105_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx450_tgt
    .local int rx450_pos
    .local int rx450_off
    .local int rx450_eos
    .local int rx450_rep
    .local pmc rx450_cur
    .local pmc rx450_debug
    (rx450_cur, rx450_pos, rx450_tgt, $I10) = self."!cursor_start"()
    getattribute rx450_debug, rx450_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx450_cur
    .local pmc match
    .lex "$/", match
    length rx450_eos, rx450_tgt
    gt rx450_pos, rx450_eos, rx450_done
    set rx450_off, 0
    lt rx450_pos, 2, rx450_start
    sub rx450_off, rx450_pos, 1
    substr rx450_tgt, rx450_tgt, rx450_off
  rx450_start:
    eq $I10, 1, rx450_restart
    if_null rx450_debug, debug_588
    rx450_cur."!cursor_debug"("START", "term:sym<package_declarator>")
  debug_588:
    $I10 = self.'from'()
    ne $I10, -1, rxscan454_done
    goto rxscan454_scan
  rxscan454_loop:
    ($P10) = rx450_cur."from"()
    inc $P10
    set rx450_pos, $P10
    ge rx450_pos, rx450_eos, rxscan454_done
  rxscan454_scan:
    set_addr $I10, rxscan454_loop
    rx450_cur."!mark_push"(0, rx450_pos, $I10)
  rxscan454_done:
.annotate 'line', 243
  # rx subrule "package_declarator" subtype=capture negate=
    rx450_cur."!cursor_pos"(rx450_pos)
    $P10 = rx450_cur."package_declarator"()
    unless $P10, rx450_fail
    rx450_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("package_declarator")
    rx450_pos = $P10."pos"()
  # rx pass
    rx450_cur."!cursor_pass"(rx450_pos, "term:sym<package_declarator>")
    if_null rx450_debug, debug_589
    rx450_cur."!cursor_debug"("PASS", "term:sym<package_declarator>", " at pos=", rx450_pos)
  debug_589:
    .return (rx450_cur)
  rx450_restart:
.annotate 'line', 4
    if_null rx450_debug, debug_590
    rx450_cur."!cursor_debug"("NEXT", "term:sym<package_declarator>")
  debug_590:
  rx450_fail:
    (rx450_rep, rx450_pos, $I10, $P10) = rx450_cur."!mark_fail"(0)
    lt rx450_pos, -1, rx450_done
    eq rx450_pos, -1, rx450_fail
    jump $I10
  rx450_done:
    rx450_cur."!cursor_fail"()
    if_null rx450_debug, debug_591
    rx450_cur."!cursor_debug"("FAIL", "term:sym<package_declarator>")
  debug_591:
    .return (rx450_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<package_declarator>"  :subid("106_1294592820.342") :method
.annotate 'line', 4
    $P452 = self."!PREFIX__!subrule"("package_declarator", "")
    new $P453, "ResizablePMCArray"
    push $P453, $P452
    .return ($P453)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<scope_declarator>"  :subid("107_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx456_tgt
    .local int rx456_pos
    .local int rx456_off
    .local int rx456_eos
    .local int rx456_rep
    .local pmc rx456_cur
    .local pmc rx456_debug
    (rx456_cur, rx456_pos, rx456_tgt, $I10) = self."!cursor_start"()
    getattribute rx456_debug, rx456_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx456_cur
    .local pmc match
    .lex "$/", match
    length rx456_eos, rx456_tgt
    gt rx456_pos, rx456_eos, rx456_done
    set rx456_off, 0
    lt rx456_pos, 2, rx456_start
    sub rx456_off, rx456_pos, 1
    substr rx456_tgt, rx456_tgt, rx456_off
  rx456_start:
    eq $I10, 1, rx456_restart
    if_null rx456_debug, debug_592
    rx456_cur."!cursor_debug"("START", "term:sym<scope_declarator>")
  debug_592:
    $I10 = self.'from'()
    ne $I10, -1, rxscan460_done
    goto rxscan460_scan
  rxscan460_loop:
    ($P10) = rx456_cur."from"()
    inc $P10
    set rx456_pos, $P10
    ge rx456_pos, rx456_eos, rxscan460_done
  rxscan460_scan:
    set_addr $I10, rxscan460_loop
    rx456_cur."!mark_push"(0, rx456_pos, $I10)
  rxscan460_done:
.annotate 'line', 244
  # rx subrule "scope_declarator" subtype=capture negate=
    rx456_cur."!cursor_pos"(rx456_pos)
    $P10 = rx456_cur."scope_declarator"()
    unless $P10, rx456_fail
    rx456_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("scope_declarator")
    rx456_pos = $P10."pos"()
  # rx pass
    rx456_cur."!cursor_pass"(rx456_pos, "term:sym<scope_declarator>")
    if_null rx456_debug, debug_593
    rx456_cur."!cursor_debug"("PASS", "term:sym<scope_declarator>", " at pos=", rx456_pos)
  debug_593:
    .return (rx456_cur)
  rx456_restart:
.annotate 'line', 4
    if_null rx456_debug, debug_594
    rx456_cur."!cursor_debug"("NEXT", "term:sym<scope_declarator>")
  debug_594:
  rx456_fail:
    (rx456_rep, rx456_pos, $I10, $P10) = rx456_cur."!mark_fail"(0)
    lt rx456_pos, -1, rx456_done
    eq rx456_pos, -1, rx456_fail
    jump $I10
  rx456_done:
    rx456_cur."!cursor_fail"()
    if_null rx456_debug, debug_595
    rx456_cur."!cursor_debug"("FAIL", "term:sym<scope_declarator>")
  debug_595:
    .return (rx456_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<scope_declarator>"  :subid("108_1294592820.342") :method
.annotate 'line', 4
    $P458 = self."!PREFIX__!subrule"("scope_declarator", "")
    new $P459, "ResizablePMCArray"
    push $P459, $P458
    .return ($P459)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<routine_declarator>"  :subid("109_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx462_tgt
    .local int rx462_pos
    .local int rx462_off
    .local int rx462_eos
    .local int rx462_rep
    .local pmc rx462_cur
    .local pmc rx462_debug
    (rx462_cur, rx462_pos, rx462_tgt, $I10) = self."!cursor_start"()
    getattribute rx462_debug, rx462_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx462_cur
    .local pmc match
    .lex "$/", match
    length rx462_eos, rx462_tgt
    gt rx462_pos, rx462_eos, rx462_done
    set rx462_off, 0
    lt rx462_pos, 2, rx462_start
    sub rx462_off, rx462_pos, 1
    substr rx462_tgt, rx462_tgt, rx462_off
  rx462_start:
    eq $I10, 1, rx462_restart
    if_null rx462_debug, debug_596
    rx462_cur."!cursor_debug"("START", "term:sym<routine_declarator>")
  debug_596:
    $I10 = self.'from'()
    ne $I10, -1, rxscan466_done
    goto rxscan466_scan
  rxscan466_loop:
    ($P10) = rx462_cur."from"()
    inc $P10
    set rx462_pos, $P10
    ge rx462_pos, rx462_eos, rxscan466_done
  rxscan466_scan:
    set_addr $I10, rxscan466_loop
    rx462_cur."!mark_push"(0, rx462_pos, $I10)
  rxscan466_done:
.annotate 'line', 245
  # rx subrule "routine_declarator" subtype=capture negate=
    rx462_cur."!cursor_pos"(rx462_pos)
    $P10 = rx462_cur."routine_declarator"()
    unless $P10, rx462_fail
    rx462_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("routine_declarator")
    rx462_pos = $P10."pos"()
  # rx pass
    rx462_cur."!cursor_pass"(rx462_pos, "term:sym<routine_declarator>")
    if_null rx462_debug, debug_597
    rx462_cur."!cursor_debug"("PASS", "term:sym<routine_declarator>", " at pos=", rx462_pos)
  debug_597:
    .return (rx462_cur)
  rx462_restart:
.annotate 'line', 4
    if_null rx462_debug, debug_598
    rx462_cur."!cursor_debug"("NEXT", "term:sym<routine_declarator>")
  debug_598:
  rx462_fail:
    (rx462_rep, rx462_pos, $I10, $P10) = rx462_cur."!mark_fail"(0)
    lt rx462_pos, -1, rx462_done
    eq rx462_pos, -1, rx462_fail
    jump $I10
  rx462_done:
    rx462_cur."!cursor_fail"()
    if_null rx462_debug, debug_599
    rx462_cur."!cursor_debug"("FAIL", "term:sym<routine_declarator>")
  debug_599:
    .return (rx462_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<routine_declarator>"  :subid("110_1294592820.342") :method
.annotate 'line', 4
    $P464 = self."!PREFIX__!subrule"("routine_declarator", "")
    new $P465, "ResizablePMCArray"
    push $P465, $P464
    .return ($P465)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<multi_declarator>"  :subid("111_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .const 'Sub' $P473 = "113_1294592820.342" 
    capture_lex $P473
    .local string rx468_tgt
    .local int rx468_pos
    .local int rx468_off
    .local int rx468_eos
    .local int rx468_rep
    .local pmc rx468_cur
    .local pmc rx468_debug
    (rx468_cur, rx468_pos, rx468_tgt, $I10) = self."!cursor_start"()
    getattribute rx468_debug, rx468_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx468_cur
    .local pmc match
    .lex "$/", match
    length rx468_eos, rx468_tgt
    gt rx468_pos, rx468_eos, rx468_done
    set rx468_off, 0
    lt rx468_pos, 2, rx468_start
    sub rx468_off, rx468_pos, 1
    substr rx468_tgt, rx468_tgt, rx468_off
  rx468_start:
    eq $I10, 1, rx468_restart
    if_null rx468_debug, debug_600
    rx468_cur."!cursor_debug"("START", "term:sym<multi_declarator>")
  debug_600:
    $I10 = self.'from'()
    ne $I10, -1, rxscan471_done
    goto rxscan471_scan
  rxscan471_loop:
    ($P10) = rx468_cur."from"()
    inc $P10
    set rx468_pos, $P10
    ge rx468_pos, rx468_eos, rxscan471_done
  rxscan471_scan:
    set_addr $I10, rxscan471_loop
    rx468_cur."!mark_push"(0, rx468_pos, $I10)
  rxscan471_done:
.annotate 'line', 246
  # rx subrule "before" subtype=zerowidth negate=
    rx468_cur."!cursor_pos"(rx468_pos)
    .const 'Sub' $P473 = "113_1294592820.342" 
    capture_lex $P473
    $P10 = rx468_cur."before"($P473)
    unless $P10, rx468_fail
  # rx subrule "multi_declarator" subtype=capture negate=
    rx468_cur."!cursor_pos"(rx468_pos)
    $P10 = rx468_cur."multi_declarator"()
    unless $P10, rx468_fail
    rx468_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("multi_declarator")
    rx468_pos = $P10."pos"()
  # rx pass
    rx468_cur."!cursor_pass"(rx468_pos, "term:sym<multi_declarator>")
    if_null rx468_debug, debug_605
    rx468_cur."!cursor_debug"("PASS", "term:sym<multi_declarator>", " at pos=", rx468_pos)
  debug_605:
    .return (rx468_cur)
  rx468_restart:
.annotate 'line', 4
    if_null rx468_debug, debug_606
    rx468_cur."!cursor_debug"("NEXT", "term:sym<multi_declarator>")
  debug_606:
  rx468_fail:
    (rx468_rep, rx468_pos, $I10, $P10) = rx468_cur."!mark_fail"(0)
    lt rx468_pos, -1, rx468_done
    eq rx468_pos, -1, rx468_fail
    jump $I10
  rx468_done:
    rx468_cur."!cursor_fail"()
    if_null rx468_debug, debug_607
    rx468_cur."!cursor_debug"("FAIL", "term:sym<multi_declarator>")
  debug_607:
    .return (rx468_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<multi_declarator>"  :subid("112_1294592820.342") :method
.annotate 'line', 4
    new $P470, "ResizablePMCArray"
    push $P470, ""
    .return ($P470)
.end


.namespace ["NQP";"Grammar"]
.sub "_block472"  :anon :subid("113_1294592820.342") :method :outer("111_1294592820.342")
.annotate 'line', 246
    .local string rx474_tgt
    .local int rx474_pos
    .local int rx474_off
    .local int rx474_eos
    .local int rx474_rep
    .local pmc rx474_cur
    .local pmc rx474_debug
    (rx474_cur, rx474_pos, rx474_tgt, $I10) = self."!cursor_start"()
    getattribute rx474_debug, rx474_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx474_cur
    .local pmc match
    .lex "$/", match
    length rx474_eos, rx474_tgt
    gt rx474_pos, rx474_eos, rx474_done
    set rx474_off, 0
    lt rx474_pos, 2, rx474_start
    sub rx474_off, rx474_pos, 1
    substr rx474_tgt, rx474_tgt, rx474_off
  rx474_start:
    eq $I10, 1, rx474_restart
    if_null rx474_debug, debug_601
    rx474_cur."!cursor_debug"("START", "")
  debug_601:
    $I10 = self.'from'()
    ne $I10, -1, rxscan475_done
    goto rxscan475_scan
  rxscan475_loop:
    ($P10) = rx474_cur."from"()
    inc $P10
    set rx474_pos, $P10
    ge rx474_pos, rx474_eos, rxscan475_done
  rxscan475_scan:
    set_addr $I10, rxscan475_loop
    rx474_cur."!mark_push"(0, rx474_pos, $I10)
  rxscan475_done:
  alt476_0:
    set_addr $I10, alt476_1
    rx474_cur."!mark_push"(0, rx474_pos, $I10)
  # rx literal  "multi"
    add $I11, rx474_pos, 5
    gt $I11, rx474_eos, rx474_fail
    sub $I11, rx474_pos, rx474_off
    substr $S10, rx474_tgt, $I11, 5
    ne $S10, "multi", rx474_fail
    add rx474_pos, 5
    goto alt476_end
  alt476_1:
    set_addr $I10, alt476_2
    rx474_cur."!mark_push"(0, rx474_pos, $I10)
  # rx literal  "proto"
    add $I11, rx474_pos, 5
    gt $I11, rx474_eos, rx474_fail
    sub $I11, rx474_pos, rx474_off
    substr $S10, rx474_tgt, $I11, 5
    ne $S10, "proto", rx474_fail
    add rx474_pos, 5
    goto alt476_end
  alt476_2:
  # rx literal  "only"
    add $I11, rx474_pos, 4
    gt $I11, rx474_eos, rx474_fail
    sub $I11, rx474_pos, rx474_off
    substr $S10, rx474_tgt, $I11, 4
    ne $S10, "only", rx474_fail
    add rx474_pos, 4
  alt476_end:
  # rx pass
    rx474_cur."!cursor_pass"(rx474_pos, "")
    if_null rx474_debug, debug_602
    rx474_cur."!cursor_debug"("PASS", "", " at pos=", rx474_pos)
  debug_602:
    .return (rx474_cur)
  rx474_restart:
    if_null rx474_debug, debug_603
    rx474_cur."!cursor_debug"("NEXT", "")
  debug_603:
  rx474_fail:
    (rx474_rep, rx474_pos, $I10, $P10) = rx474_cur."!mark_fail"(0)
    lt rx474_pos, -1, rx474_done
    eq rx474_pos, -1, rx474_fail
    jump $I10
  rx474_done:
    rx474_cur."!cursor_fail"()
    if_null rx474_debug, debug_604
    rx474_cur."!cursor_debug"("FAIL", "")
  debug_604:
    .return (rx474_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<regex_declarator>"  :subid("114_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx478_tgt
    .local int rx478_pos
    .local int rx478_off
    .local int rx478_eos
    .local int rx478_rep
    .local pmc rx478_cur
    .local pmc rx478_debug
    (rx478_cur, rx478_pos, rx478_tgt, $I10) = self."!cursor_start"()
    getattribute rx478_debug, rx478_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx478_cur
    .local pmc match
    .lex "$/", match
    length rx478_eos, rx478_tgt
    gt rx478_pos, rx478_eos, rx478_done
    set rx478_off, 0
    lt rx478_pos, 2, rx478_start
    sub rx478_off, rx478_pos, 1
    substr rx478_tgt, rx478_tgt, rx478_off
  rx478_start:
    eq $I10, 1, rx478_restart
    if_null rx478_debug, debug_608
    rx478_cur."!cursor_debug"("START", "term:sym<regex_declarator>")
  debug_608:
    $I10 = self.'from'()
    ne $I10, -1, rxscan482_done
    goto rxscan482_scan
  rxscan482_loop:
    ($P10) = rx478_cur."from"()
    inc $P10
    set rx478_pos, $P10
    ge rx478_pos, rx478_eos, rxscan482_done
  rxscan482_scan:
    set_addr $I10, rxscan482_loop
    rx478_cur."!mark_push"(0, rx478_pos, $I10)
  rxscan482_done:
.annotate 'line', 247
  # rx subrule "regex_declarator" subtype=capture negate=
    rx478_cur."!cursor_pos"(rx478_pos)
    $P10 = rx478_cur."regex_declarator"()
    unless $P10, rx478_fail
    rx478_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("regex_declarator")
    rx478_pos = $P10."pos"()
  # rx pass
    rx478_cur."!cursor_pass"(rx478_pos, "term:sym<regex_declarator>")
    if_null rx478_debug, debug_609
    rx478_cur."!cursor_debug"("PASS", "term:sym<regex_declarator>", " at pos=", rx478_pos)
  debug_609:
    .return (rx478_cur)
  rx478_restart:
.annotate 'line', 4
    if_null rx478_debug, debug_610
    rx478_cur."!cursor_debug"("NEXT", "term:sym<regex_declarator>")
  debug_610:
  rx478_fail:
    (rx478_rep, rx478_pos, $I10, $P10) = rx478_cur."!mark_fail"(0)
    lt rx478_pos, -1, rx478_done
    eq rx478_pos, -1, rx478_fail
    jump $I10
  rx478_done:
    rx478_cur."!cursor_fail"()
    if_null rx478_debug, debug_611
    rx478_cur."!cursor_debug"("FAIL", "term:sym<regex_declarator>")
  debug_611:
    .return (rx478_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<regex_declarator>"  :subid("115_1294592820.342") :method
.annotate 'line', 4
    $P480 = self."!PREFIX__!subrule"("regex_declarator", "")
    new $P481, "ResizablePMCArray"
    push $P481, $P480
    .return ($P481)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<statement_prefix>"  :subid("116_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx484_tgt
    .local int rx484_pos
    .local int rx484_off
    .local int rx484_eos
    .local int rx484_rep
    .local pmc rx484_cur
    .local pmc rx484_debug
    (rx484_cur, rx484_pos, rx484_tgt, $I10) = self."!cursor_start"()
    getattribute rx484_debug, rx484_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx484_cur
    .local pmc match
    .lex "$/", match
    length rx484_eos, rx484_tgt
    gt rx484_pos, rx484_eos, rx484_done
    set rx484_off, 0
    lt rx484_pos, 2, rx484_start
    sub rx484_off, rx484_pos, 1
    substr rx484_tgt, rx484_tgt, rx484_off
  rx484_start:
    eq $I10, 1, rx484_restart
    if_null rx484_debug, debug_612
    rx484_cur."!cursor_debug"("START", "term:sym<statement_prefix>")
  debug_612:
    $I10 = self.'from'()
    ne $I10, -1, rxscan488_done
    goto rxscan488_scan
  rxscan488_loop:
    ($P10) = rx484_cur."from"()
    inc $P10
    set rx484_pos, $P10
    ge rx484_pos, rx484_eos, rxscan488_done
  rxscan488_scan:
    set_addr $I10, rxscan488_loop
    rx484_cur."!mark_push"(0, rx484_pos, $I10)
  rxscan488_done:
.annotate 'line', 248
  # rx subrule "statement_prefix" subtype=capture negate=
    rx484_cur."!cursor_pos"(rx484_pos)
    $P10 = rx484_cur."statement_prefix"()
    unless $P10, rx484_fail
    rx484_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement_prefix")
    rx484_pos = $P10."pos"()
  # rx pass
    rx484_cur."!cursor_pass"(rx484_pos, "term:sym<statement_prefix>")
    if_null rx484_debug, debug_613
    rx484_cur."!cursor_debug"("PASS", "term:sym<statement_prefix>", " at pos=", rx484_pos)
  debug_613:
    .return (rx484_cur)
  rx484_restart:
.annotate 'line', 4
    if_null rx484_debug, debug_614
    rx484_cur."!cursor_debug"("NEXT", "term:sym<statement_prefix>")
  debug_614:
  rx484_fail:
    (rx484_rep, rx484_pos, $I10, $P10) = rx484_cur."!mark_fail"(0)
    lt rx484_pos, -1, rx484_done
    eq rx484_pos, -1, rx484_fail
    jump $I10
  rx484_done:
    rx484_cur."!cursor_fail"()
    if_null rx484_debug, debug_615
    rx484_cur."!cursor_debug"("FAIL", "term:sym<statement_prefix>")
  debug_615:
    .return (rx484_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<statement_prefix>"  :subid("117_1294592820.342") :method
.annotate 'line', 4
    $P486 = self."!PREFIX__!subrule"("statement_prefix", "")
    new $P487, "ResizablePMCArray"
    push $P487, $P486
    .return ($P487)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<lambda>"  :subid("118_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx490_tgt
    .local int rx490_pos
    .local int rx490_off
    .local int rx490_eos
    .local int rx490_rep
    .local pmc rx490_cur
    .local pmc rx490_debug
    (rx490_cur, rx490_pos, rx490_tgt, $I10) = self."!cursor_start"()
    getattribute rx490_debug, rx490_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx490_cur
    .local pmc match
    .lex "$/", match
    length rx490_eos, rx490_tgt
    gt rx490_pos, rx490_eos, rx490_done
    set rx490_off, 0
    lt rx490_pos, 2, rx490_start
    sub rx490_off, rx490_pos, 1
    substr rx490_tgt, rx490_tgt, rx490_off
  rx490_start:
    eq $I10, 1, rx490_restart
    if_null rx490_debug, debug_616
    rx490_cur."!cursor_debug"("START", "term:sym<lambda>")
  debug_616:
    $I10 = self.'from'()
    ne $I10, -1, rxscan493_done
    goto rxscan493_scan
  rxscan493_loop:
    ($P10) = rx490_cur."from"()
    inc $P10
    set rx490_pos, $P10
    ge rx490_pos, rx490_eos, rxscan493_done
  rxscan493_scan:
    set_addr $I10, rxscan493_loop
    rx490_cur."!mark_push"(0, rx490_pos, $I10)
  rxscan493_done:
.annotate 'line', 249
  # rx subrule "lambda" subtype=zerowidth negate=
    rx490_cur."!cursor_pos"(rx490_pos)
    $P10 = rx490_cur."lambda"()
    unless $P10, rx490_fail
  # rx subrule "pblock" subtype=capture negate=
    rx490_cur."!cursor_pos"(rx490_pos)
    $P10 = rx490_cur."pblock"()
    unless $P10, rx490_fail
    rx490_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pblock")
    rx490_pos = $P10."pos"()
  # rx pass
    rx490_cur."!cursor_pass"(rx490_pos, "term:sym<lambda>")
    if_null rx490_debug, debug_617
    rx490_cur."!cursor_debug"("PASS", "term:sym<lambda>", " at pos=", rx490_pos)
  debug_617:
    .return (rx490_cur)
  rx490_restart:
.annotate 'line', 4
    if_null rx490_debug, debug_618
    rx490_cur."!cursor_debug"("NEXT", "term:sym<lambda>")
  debug_618:
  rx490_fail:
    (rx490_rep, rx490_pos, $I10, $P10) = rx490_cur."!mark_fail"(0)
    lt rx490_pos, -1, rx490_done
    eq rx490_pos, -1, rx490_fail
    jump $I10
  rx490_done:
    rx490_cur."!cursor_fail"()
    if_null rx490_debug, debug_619
    rx490_cur."!cursor_debug"("FAIL", "term:sym<lambda>")
  debug_619:
    .return (rx490_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<lambda>"  :subid("119_1294592820.342") :method
.annotate 'line', 4
    new $P492, "ResizablePMCArray"
    push $P492, ""
    .return ($P492)
.end


.namespace ["NQP";"Grammar"]
.sub "fatarrow"  :subid("120_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx495_tgt
    .local int rx495_pos
    .local int rx495_off
    .local int rx495_eos
    .local int rx495_rep
    .local pmc rx495_cur
    .local pmc rx495_debug
    (rx495_cur, rx495_pos, rx495_tgt, $I10) = self."!cursor_start"()
    getattribute rx495_debug, rx495_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx495_cur
    .local pmc match
    .lex "$/", match
    length rx495_eos, rx495_tgt
    gt rx495_pos, rx495_eos, rx495_done
    set rx495_off, 0
    lt rx495_pos, 2, rx495_start
    sub rx495_off, rx495_pos, 1
    substr rx495_tgt, rx495_tgt, rx495_off
  rx495_start:
    eq $I10, 1, rx495_restart
    if_null rx495_debug, debug_620
    rx495_cur."!cursor_debug"("START", "fatarrow")
  debug_620:
    $I10 = self.'from'()
    ne $I10, -1, rxscan499_done
    goto rxscan499_scan
  rxscan499_loop:
    ($P10) = rx495_cur."from"()
    inc $P10
    set rx495_pos, $P10
    ge rx495_pos, rx495_eos, rxscan499_done
  rxscan499_scan:
    set_addr $I10, rxscan499_loop
    rx495_cur."!mark_push"(0, rx495_pos, $I10)
  rxscan499_done:
.annotate 'line', 252
  # rx subrule "identifier" subtype=capture negate=
    rx495_cur."!cursor_pos"(rx495_pos)
    $P10 = rx495_cur."identifier"()
    unless $P10, rx495_fail
    rx495_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("key")
    rx495_pos = $P10."pos"()
  # rx enumcharlist_q negate=0  r 0..-1
    sub $I10, rx495_pos, rx495_off
    set rx495_rep, 0
    sub $I12, rx495_eos, rx495_pos
  rxenumcharlistq500_loop:
    le $I12, 0, rxenumcharlistq500_done
    substr $S10, rx495_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq500_done
    inc rx495_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq500_loop
  rxenumcharlistq500_done:
    add rx495_pos, rx495_pos, rx495_rep
  # rx literal  "=>"
    add $I11, rx495_pos, 2
    gt $I11, rx495_eos, rx495_fail
    sub $I11, rx495_pos, rx495_off
    substr $S10, rx495_tgt, $I11, 2
    ne $S10, "=>", rx495_fail
    add rx495_pos, 2
  # rx subrule "ws" subtype=method negate=
    rx495_cur."!cursor_pos"(rx495_pos)
    $P10 = rx495_cur."ws"()
    unless $P10, rx495_fail
    rx495_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx495_cur."!cursor_pos"(rx495_pos)
    $P10 = rx495_cur."EXPR"("i=")
    unless $P10, rx495_fail
    rx495_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("val")
    rx495_pos = $P10."pos"()
.annotate 'line', 251
  # rx pass
    rx495_cur."!cursor_pass"(rx495_pos, "fatarrow")
    if_null rx495_debug, debug_621
    rx495_cur."!cursor_debug"("PASS", "fatarrow", " at pos=", rx495_pos)
  debug_621:
    .return (rx495_cur)
  rx495_restart:
.annotate 'line', 4
    if_null rx495_debug, debug_622
    rx495_cur."!cursor_debug"("NEXT", "fatarrow")
  debug_622:
  rx495_fail:
    (rx495_rep, rx495_pos, $I10, $P10) = rx495_cur."!mark_fail"(0)
    lt rx495_pos, -1, rx495_done
    eq rx495_pos, -1, rx495_fail
    jump $I10
  rx495_done:
    rx495_cur."!cursor_fail"()
    if_null rx495_debug, debug_623
    rx495_cur."!cursor_debug"("FAIL", "fatarrow")
  debug_623:
    .return (rx495_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__fatarrow"  :subid("121_1294592820.342") :method
.annotate 'line', 4
    $P497 = self."!PREFIX__!subrule"("identifier", "")
    new $P498, "ResizablePMCArray"
    push $P498, $P497
    .return ($P498)
.end


.namespace ["NQP";"Grammar"]
.sub "colonpair"  :subid("122_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx502_tgt
    .local int rx502_pos
    .local int rx502_off
    .local int rx502_eos
    .local int rx502_rep
    .local pmc rx502_cur
    .local pmc rx502_debug
    (rx502_cur, rx502_pos, rx502_tgt, $I10) = self."!cursor_start"()
    rx502_cur."!cursor_caparray"("circumfix")
    getattribute rx502_debug, rx502_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx502_cur
    .local pmc match
    .lex "$/", match
    length rx502_eos, rx502_tgt
    gt rx502_pos, rx502_eos, rx502_done
    set rx502_off, 0
    lt rx502_pos, 2, rx502_start
    sub rx502_off, rx502_pos, 1
    substr rx502_tgt, rx502_tgt, rx502_off
  rx502_start:
    eq $I10, 1, rx502_restart
    if_null rx502_debug, debug_624
    rx502_cur."!cursor_debug"("START", "colonpair")
  debug_624:
    $I10 = self.'from'()
    ne $I10, -1, rxscan508_done
    goto rxscan508_scan
  rxscan508_loop:
    ($P10) = rx502_cur."from"()
    inc $P10
    set rx502_pos, $P10
    ge rx502_pos, rx502_eos, rxscan508_done
  rxscan508_scan:
    set_addr $I10, rxscan508_loop
    rx502_cur."!mark_push"(0, rx502_pos, $I10)
  rxscan508_done:
.annotate 'line', 256
  # rx literal  ":"
    add $I11, rx502_pos, 1
    gt $I11, rx502_eos, rx502_fail
    sub $I11, rx502_pos, rx502_off
    ord $I11, rx502_tgt, $I11
    ne $I11, 58, rx502_fail
    add rx502_pos, 1
  alt509_0:
.annotate 'line', 257
    set_addr $I10, alt509_1
    rx502_cur."!mark_push"(0, rx502_pos, $I10)
.annotate 'line', 258
  # rx subcapture "not"
    set_addr $I10, rxcap_510_fail
    rx502_cur."!mark_push"(0, rx502_pos, $I10)
  # rx literal  "!"
    add $I11, rx502_pos, 1
    gt $I11, rx502_eos, rx502_fail
    sub $I11, rx502_pos, rx502_off
    ord $I11, rx502_tgt, $I11
    ne $I11, 33, rx502_fail
    add rx502_pos, 1
    set_addr $I10, rxcap_510_fail
    ($I12, $I11) = rx502_cur."!mark_peek"($I10)
    rx502_cur."!cursor_pos"($I11)
    ($P10) = rx502_cur."!cursor_start"()
    $P10."!cursor_pass"(rx502_pos, "")
    rx502_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("not")
    goto rxcap_510_done
  rxcap_510_fail:
    goto rx502_fail
  rxcap_510_done:
  # rx subrule "identifier" subtype=capture negate=
    rx502_cur."!cursor_pos"(rx502_pos)
    $P10 = rx502_cur."identifier"()
    unless $P10, rx502_fail
    rx502_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx502_pos = $P10."pos"()
    goto alt509_end
  alt509_1:
    set_addr $I10, alt509_2
    rx502_cur."!mark_push"(0, rx502_pos, $I10)
.annotate 'line', 259
  # rx subrule "identifier" subtype=capture negate=
    rx502_cur."!cursor_pos"(rx502_pos)
    $P10 = rx502_cur."identifier"()
    unless $P10, rx502_fail
    rx502_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx502_pos = $P10."pos"()
  # rx rxquantr511 ** 0..1
    set_addr $I10, rxquantr511_done
    rx502_cur."!mark_push"(0, rx502_pos, $I10)
  rxquantr511_loop:
  # rx subrule "circumfix" subtype=capture negate=
    rx502_cur."!cursor_pos"(rx502_pos)
    $P10 = rx502_cur."circumfix"()
    unless $P10, rx502_fail
    goto rxsubrule512_pass
  rxsubrule512_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx502_fail
  rxsubrule512_pass:
    set_addr $I10, rxsubrule512_back
    rx502_cur."!mark_push"(0, rx502_pos, $I10, $P10)
    $P10."!cursor_names"("circumfix")
    rx502_pos = $P10."pos"()
    set_addr $I10, rxquantr511_done
    (rx502_rep) = rx502_cur."!mark_commit"($I10)
  rxquantr511_done:
    goto alt509_end
  alt509_2:
.annotate 'line', 260
  # rx subrule "circumfix" subtype=capture negate=
    rx502_cur."!cursor_pos"(rx502_pos)
    $P10 = rx502_cur."circumfix"()
    unless $P10, rx502_fail
    rx502_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("circumfix")
    rx502_pos = $P10."pos"()
  alt509_end:
.annotate 'line', 255
  # rx pass
    rx502_cur."!cursor_pass"(rx502_pos, "colonpair")
    if_null rx502_debug, debug_625
    rx502_cur."!cursor_debug"("PASS", "colonpair", " at pos=", rx502_pos)
  debug_625:
    .return (rx502_cur)
  rx502_restart:
.annotate 'line', 4
    if_null rx502_debug, debug_626
    rx502_cur."!cursor_debug"("NEXT", "colonpair")
  debug_626:
  rx502_fail:
    (rx502_rep, rx502_pos, $I10, $P10) = rx502_cur."!mark_fail"(0)
    lt rx502_pos, -1, rx502_done
    eq rx502_pos, -1, rx502_fail
    jump $I10
  rx502_done:
    rx502_cur."!cursor_fail"()
    if_null rx502_debug, debug_627
    rx502_cur."!cursor_debug"("FAIL", "colonpair")
  debug_627:
    .return (rx502_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__colonpair"  :subid("123_1294592820.342") :method
.annotate 'line', 4
    $P504 = self."!PREFIX__!subrule"("circumfix", ":")
    $P505 = self."!PREFIX__!subrule"("identifier", ":")
    $P506 = self."!PREFIX__!subrule"("identifier", ":!")
    new $P507, "ResizablePMCArray"
    push $P507, $P504
    push $P507, $P505
    push $P507, $P506
    .return ($P507)
.end


.namespace ["NQP";"Grammar"]
.sub "variable"  :subid("124_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx514_tgt
    .local int rx514_pos
    .local int rx514_off
    .local int rx514_eos
    .local int rx514_rep
    .local pmc rx514_cur
    .local pmc rx514_debug
    (rx514_cur, rx514_pos, rx514_tgt, $I10) = self."!cursor_start"()
    rx514_cur."!cursor_caparray"("twigil")
    getattribute rx514_debug, rx514_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx514_cur
    .local pmc match
    .lex "$/", match
    length rx514_eos, rx514_tgt
    gt rx514_pos, rx514_eos, rx514_done
    set rx514_off, 0
    lt rx514_pos, 2, rx514_start
    sub rx514_off, rx514_pos, 1
    substr rx514_tgt, rx514_tgt, rx514_off
  rx514_start:
    eq $I10, 1, rx514_restart
    if_null rx514_debug, debug_628
    rx514_cur."!cursor_debug"("START", "variable")
  debug_628:
    $I10 = self.'from'()
    ne $I10, -1, rxscan519_done
    goto rxscan519_scan
  rxscan519_loop:
    ($P10) = rx514_cur."from"()
    inc $P10
    set rx514_pos, $P10
    ge rx514_pos, rx514_eos, rxscan519_done
  rxscan519_scan:
    set_addr $I10, rxscan519_loop
    rx514_cur."!mark_push"(0, rx514_pos, $I10)
  rxscan519_done:
  alt520_0:
.annotate 'line', 264
    set_addr $I10, alt520_1
    rx514_cur."!mark_push"(0, rx514_pos, $I10)
.annotate 'line', 265
  # rx subrule "sigil" subtype=capture negate=
    rx514_cur."!cursor_pos"(rx514_pos)
    $P10 = rx514_cur."sigil"()
    unless $P10, rx514_fail
    rx514_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sigil")
    rx514_pos = $P10."pos"()
  # rx rxquantr521 ** 0..1
    set_addr $I10, rxquantr521_done
    rx514_cur."!mark_push"(0, rx514_pos, $I10)
  rxquantr521_loop:
  # rx subrule "twigil" subtype=capture negate=
    rx514_cur."!cursor_pos"(rx514_pos)
    $P10 = rx514_cur."twigil"()
    unless $P10, rx514_fail
    goto rxsubrule522_pass
  rxsubrule522_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx514_fail
  rxsubrule522_pass:
    set_addr $I10, rxsubrule522_back
    rx514_cur."!mark_push"(0, rx514_pos, $I10, $P10)
    $P10."!cursor_names"("twigil")
    rx514_pos = $P10."pos"()
    set_addr $I10, rxquantr521_done
    (rx514_rep) = rx514_cur."!mark_commit"($I10)
  rxquantr521_done:
  # rx subrule "name" subtype=capture negate=
    rx514_cur."!cursor_pos"(rx514_pos)
    $P10 = rx514_cur."name"()
    unless $P10, rx514_fail
    rx514_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("desigilname")
    rx514_pos = $P10."pos"()
    goto alt520_end
  alt520_1:
    set_addr $I10, alt520_2
    rx514_cur."!mark_push"(0, rx514_pos, $I10)
.annotate 'line', 266
  # rx subrule "sigil" subtype=capture negate=
    rx514_cur."!cursor_pos"(rx514_pos)
    $P10 = rx514_cur."sigil"()
    unless $P10, rx514_fail
    rx514_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sigil")
    rx514_pos = $P10."pos"()
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx514_pos, rx514_off
    substr $S10, rx514_tgt, $I10, 1
    index $I11, "<[", $S10
    lt $I11, 0, rx514_fail
  # rx subrule "postcircumfix" subtype=capture negate=
    rx514_cur."!cursor_pos"(rx514_pos)
    $P10 = rx514_cur."postcircumfix"()
    unless $P10, rx514_fail
    rx514_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("postcircumfix")
    rx514_pos = $P10."pos"()
    goto alt520_end
  alt520_2:
.annotate 'line', 267
  # rx subcapture "sigil"
    set_addr $I10, rxcap_523_fail
    rx514_cur."!mark_push"(0, rx514_pos, $I10)
  # rx literal  "$"
    add $I11, rx514_pos, 1
    gt $I11, rx514_eos, rx514_fail
    sub $I11, rx514_pos, rx514_off
    ord $I11, rx514_tgt, $I11
    ne $I11, 36, rx514_fail
    add rx514_pos, 1
    set_addr $I10, rxcap_523_fail
    ($I12, $I11) = rx514_cur."!mark_peek"($I10)
    rx514_cur."!cursor_pos"($I11)
    ($P10) = rx514_cur."!cursor_start"()
    $P10."!cursor_pass"(rx514_pos, "")
    rx514_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sigil")
    goto rxcap_523_done
  rxcap_523_fail:
    goto rx514_fail
  rxcap_523_done:
  # rx subcapture "desigilname"
    set_addr $I10, rxcap_524_fail
    rx514_cur."!mark_push"(0, rx514_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx514_pos, rx514_eos, rx514_fail
    sub $I10, rx514_pos, rx514_off
    substr $S10, rx514_tgt, $I10, 1
    index $I11, "/_!", $S10
    lt $I11, 0, rx514_fail
    inc rx514_pos
    set_addr $I10, rxcap_524_fail
    ($I12, $I11) = rx514_cur."!mark_peek"($I10)
    rx514_cur."!cursor_pos"($I11)
    ($P10) = rx514_cur."!cursor_start"()
    $P10."!cursor_pass"(rx514_pos, "")
    rx514_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("desigilname")
    goto rxcap_524_done
  rxcap_524_fail:
    goto rx514_fail
  rxcap_524_done:
  alt520_end:
.annotate 'line', 264
  # rx pass
    rx514_cur."!cursor_pass"(rx514_pos, "variable")
    if_null rx514_debug, debug_629
    rx514_cur."!cursor_debug"("PASS", "variable", " at pos=", rx514_pos)
  debug_629:
    .return (rx514_cur)
  rx514_restart:
.annotate 'line', 4
    if_null rx514_debug, debug_630
    rx514_cur."!cursor_debug"("NEXT", "variable")
  debug_630:
  rx514_fail:
    (rx514_rep, rx514_pos, $I10, $P10) = rx514_cur."!mark_fail"(0)
    lt rx514_pos, -1, rx514_done
    eq rx514_pos, -1, rx514_fail
    jump $I10
  rx514_done:
    rx514_cur."!cursor_fail"()
    if_null rx514_debug, debug_631
    rx514_cur."!cursor_debug"("FAIL", "variable")
  debug_631:
    .return (rx514_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__variable"  :subid("125_1294592820.342") :method
.annotate 'line', 4
    $P516 = self."!PREFIX__!subrule"("sigil", "")
    $P517 = self."!PREFIX__!subrule"("sigil", "")
    new $P518, "ResizablePMCArray"
    push $P518, "$!"
    push $P518, "$_"
    push $P518, "$/"
    push $P518, $P516
    push $P518, $P517
    .return ($P518)
.end


.namespace ["NQP";"Grammar"]
.sub "sigil"  :subid("126_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx526_tgt
    .local int rx526_pos
    .local int rx526_off
    .local int rx526_eos
    .local int rx526_rep
    .local pmc rx526_cur
    .local pmc rx526_debug
    (rx526_cur, rx526_pos, rx526_tgt, $I10) = self."!cursor_start"()
    getattribute rx526_debug, rx526_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx526_cur
    .local pmc match
    .lex "$/", match
    length rx526_eos, rx526_tgt
    gt rx526_pos, rx526_eos, rx526_done
    set rx526_off, 0
    lt rx526_pos, 2, rx526_start
    sub rx526_off, rx526_pos, 1
    substr rx526_tgt, rx526_tgt, rx526_off
  rx526_start:
    eq $I10, 1, rx526_restart
    if_null rx526_debug, debug_632
    rx526_cur."!cursor_debug"("START", "sigil")
  debug_632:
    $I10 = self.'from'()
    ne $I10, -1, rxscan529_done
    goto rxscan529_scan
  rxscan529_loop:
    ($P10) = rx526_cur."from"()
    inc $P10
    set rx526_pos, $P10
    ge rx526_pos, rx526_eos, rxscan529_done
  rxscan529_scan:
    set_addr $I10, rxscan529_loop
    rx526_cur."!mark_push"(0, rx526_pos, $I10)
  rxscan529_done:
.annotate 'line', 270
  # rx enumcharlist negate=0 
    ge rx526_pos, rx526_eos, rx526_fail
    sub $I10, rx526_pos, rx526_off
    substr $S10, rx526_tgt, $I10, 1
    index $I11, "$@%&", $S10
    lt $I11, 0, rx526_fail
    inc rx526_pos
  # rx pass
    rx526_cur."!cursor_pass"(rx526_pos, "sigil")
    if_null rx526_debug, debug_633
    rx526_cur."!cursor_debug"("PASS", "sigil", " at pos=", rx526_pos)
  debug_633:
    .return (rx526_cur)
  rx526_restart:
.annotate 'line', 4
    if_null rx526_debug, debug_634
    rx526_cur."!cursor_debug"("NEXT", "sigil")
  debug_634:
  rx526_fail:
    (rx526_rep, rx526_pos, $I10, $P10) = rx526_cur."!mark_fail"(0)
    lt rx526_pos, -1, rx526_done
    eq rx526_pos, -1, rx526_fail
    jump $I10
  rx526_done:
    rx526_cur."!cursor_fail"()
    if_null rx526_debug, debug_635
    rx526_cur."!cursor_debug"("FAIL", "sigil")
  debug_635:
    .return (rx526_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__sigil"  :subid("127_1294592820.342") :method
.annotate 'line', 4
    new $P528, "ResizablePMCArray"
    push $P528, "&"
    push $P528, "%"
    push $P528, "@"
    push $P528, "$"
    .return ($P528)
.end


.namespace ["NQP";"Grammar"]
.sub "twigil"  :subid("128_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx531_tgt
    .local int rx531_pos
    .local int rx531_off
    .local int rx531_eos
    .local int rx531_rep
    .local pmc rx531_cur
    .local pmc rx531_debug
    (rx531_cur, rx531_pos, rx531_tgt, $I10) = self."!cursor_start"()
    getattribute rx531_debug, rx531_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx531_cur
    .local pmc match
    .lex "$/", match
    length rx531_eos, rx531_tgt
    gt rx531_pos, rx531_eos, rx531_done
    set rx531_off, 0
    lt rx531_pos, 2, rx531_start
    sub rx531_off, rx531_pos, 1
    substr rx531_tgt, rx531_tgt, rx531_off
  rx531_start:
    eq $I10, 1, rx531_restart
    if_null rx531_debug, debug_636
    rx531_cur."!cursor_debug"("START", "twigil")
  debug_636:
    $I10 = self.'from'()
    ne $I10, -1, rxscan534_done
    goto rxscan534_scan
  rxscan534_loop:
    ($P10) = rx531_cur."from"()
    inc $P10
    set rx531_pos, $P10
    ge rx531_pos, rx531_eos, rxscan534_done
  rxscan534_scan:
    set_addr $I10, rxscan534_loop
    rx531_cur."!mark_push"(0, rx531_pos, $I10)
  rxscan534_done:
.annotate 'line', 272
  # rx enumcharlist negate=0 
    ge rx531_pos, rx531_eos, rx531_fail
    sub $I10, rx531_pos, rx531_off
    substr $S10, rx531_tgt, $I10, 1
    index $I11, "*!?", $S10
    lt $I11, 0, rx531_fail
    inc rx531_pos
  # rx pass
    rx531_cur."!cursor_pass"(rx531_pos, "twigil")
    if_null rx531_debug, debug_637
    rx531_cur."!cursor_debug"("PASS", "twigil", " at pos=", rx531_pos)
  debug_637:
    .return (rx531_cur)
  rx531_restart:
.annotate 'line', 4
    if_null rx531_debug, debug_638
    rx531_cur."!cursor_debug"("NEXT", "twigil")
  debug_638:
  rx531_fail:
    (rx531_rep, rx531_pos, $I10, $P10) = rx531_cur."!mark_fail"(0)
    lt rx531_pos, -1, rx531_done
    eq rx531_pos, -1, rx531_fail
    jump $I10
  rx531_done:
    rx531_cur."!cursor_fail"()
    if_null rx531_debug, debug_639
    rx531_cur."!cursor_debug"("FAIL", "twigil")
  debug_639:
    .return (rx531_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__twigil"  :subid("129_1294592820.342") :method
.annotate 'line', 4
    new $P533, "ResizablePMCArray"
    push $P533, "?"
    push $P533, "!"
    push $P533, "*"
    .return ($P533)
.end


.namespace ["NQP";"Grammar"]
.sub "package_declarator"  :subid("130_1294592820.342") :method
.annotate 'line', 274
    $P536 = self."!protoregex"("package_declarator")
    .return ($P536)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__package_declarator"  :subid("131_1294592820.342") :method
.annotate 'line', 274
    $P538 = self."!PREFIX__!protoregex"("package_declarator")
    .return ($P538)
.end


.namespace ["NQP";"Grammar"]
.sub "package_declarator:sym<module>"  :subid("132_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx540_tgt
    .local int rx540_pos
    .local int rx540_off
    .local int rx540_eos
    .local int rx540_rep
    .local pmc rx540_cur
    .local pmc rx540_debug
    (rx540_cur, rx540_pos, rx540_tgt, $I10) = self."!cursor_start"()
    getattribute rx540_debug, rx540_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx540_cur
    .local pmc match
    .lex "$/", match
    length rx540_eos, rx540_tgt
    gt rx540_pos, rx540_eos, rx540_done
    set rx540_off, 0
    lt rx540_pos, 2, rx540_start
    sub rx540_off, rx540_pos, 1
    substr rx540_tgt, rx540_tgt, rx540_off
  rx540_start:
    eq $I10, 1, rx540_restart
    if_null rx540_debug, debug_640
    rx540_cur."!cursor_debug"("START", "package_declarator:sym<module>")
  debug_640:
    $I10 = self.'from'()
    ne $I10, -1, rxscan544_done
    goto rxscan544_scan
  rxscan544_loop:
    ($P10) = rx540_cur."from"()
    inc $P10
    set rx540_pos, $P10
    ge rx540_pos, rx540_eos, rxscan544_done
  rxscan544_scan:
    set_addr $I10, rxscan544_loop
    rx540_cur."!mark_push"(0, rx540_pos, $I10)
  rxscan544_done:
.annotate 'line', 275
  # rx subcapture "sym"
    set_addr $I10, rxcap_545_fail
    rx540_cur."!mark_push"(0, rx540_pos, $I10)
  # rx literal  "module"
    add $I11, rx540_pos, 6
    gt $I11, rx540_eos, rx540_fail
    sub $I11, rx540_pos, rx540_off
    substr $S10, rx540_tgt, $I11, 6
    ne $S10, "module", rx540_fail
    add rx540_pos, 6
    set_addr $I10, rxcap_545_fail
    ($I12, $I11) = rx540_cur."!mark_peek"($I10)
    rx540_cur."!cursor_pos"($I11)
    ($P10) = rx540_cur."!cursor_start"()
    $P10."!cursor_pass"(rx540_pos, "")
    rx540_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_545_done
  rxcap_545_fail:
    goto rx540_fail
  rxcap_545_done:
  # rx subrule "package_def" subtype=capture negate=
    rx540_cur."!cursor_pos"(rx540_pos)
    $P10 = rx540_cur."package_def"()
    unless $P10, rx540_fail
    rx540_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("package_def")
    rx540_pos = $P10."pos"()
  # rx pass
    rx540_cur."!cursor_pass"(rx540_pos, "package_declarator:sym<module>")
    if_null rx540_debug, debug_641
    rx540_cur."!cursor_debug"("PASS", "package_declarator:sym<module>", " at pos=", rx540_pos)
  debug_641:
    .return (rx540_cur)
  rx540_restart:
.annotate 'line', 4
    if_null rx540_debug, debug_642
    rx540_cur."!cursor_debug"("NEXT", "package_declarator:sym<module>")
  debug_642:
  rx540_fail:
    (rx540_rep, rx540_pos, $I10, $P10) = rx540_cur."!mark_fail"(0)
    lt rx540_pos, -1, rx540_done
    eq rx540_pos, -1, rx540_fail
    jump $I10
  rx540_done:
    rx540_cur."!cursor_fail"()
    if_null rx540_debug, debug_643
    rx540_cur."!cursor_debug"("FAIL", "package_declarator:sym<module>")
  debug_643:
    .return (rx540_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__package_declarator:sym<module>"  :subid("133_1294592820.342") :method
.annotate 'line', 4
    $P542 = self."!PREFIX__!subrule"("package_def", "module")
    new $P543, "ResizablePMCArray"
    push $P543, $P542
    .return ($P543)
.end


.namespace ["NQP";"Grammar"]
.sub "package_declarator:sym<knowhow>"  :subid("134_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 277
    new $P547, "Undef"
    .lex "$*PACKAGE-SETUP", $P547
.annotate 'line', 278
    new $P548, "Undef"
    .lex "$*PKGDECL", $P548
.annotate 'line', 4
    .local string rx549_tgt
    .local int rx549_pos
    .local int rx549_off
    .local int rx549_eos
    .local int rx549_rep
    .local pmc rx549_cur
    .local pmc rx549_debug
    (rx549_cur, rx549_pos, rx549_tgt, $I10) = self."!cursor_start"()
    getattribute rx549_debug, rx549_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx549_cur
    .local pmc match
    .lex "$/", match
    length rx549_eos, rx549_tgt
    gt rx549_pos, rx549_eos, rx549_done
    set rx549_off, 0
    lt rx549_pos, 2, rx549_start
    sub rx549_off, rx549_pos, 1
    substr rx549_tgt, rx549_tgt, rx549_off
  rx549_start:
    eq $I10, 1, rx549_restart
    if_null rx549_debug, debug_644
    rx549_cur."!cursor_debug"("START", "package_declarator:sym<knowhow>")
  debug_644:
    $I10 = self.'from'()
    ne $I10, -1, rxscan553_done
    goto rxscan553_scan
  rxscan553_loop:
    ($P10) = rx549_cur."from"()
    inc $P10
    set rx549_pos, $P10
    ge rx549_pos, rx549_eos, rxscan553_done
  rxscan553_scan:
    set_addr $I10, rxscan553_loop
    rx549_cur."!mark_push"(0, rx549_pos, $I10)
  rxscan553_done:
.annotate 'line', 277
    rx549_cur."!cursor_pos"(rx549_pos)
    get_hll_global $P554, ["PAST"], "Stmts"
    $P555 = $P554."new"()
    store_lex "$*PACKAGE-SETUP", $P555
.annotate 'line', 278
    rx549_cur."!cursor_pos"(rx549_pos)
    new $P556, "String"
    assign $P556, "knowhow"
    store_lex "$*PKGDECL", $P556
.annotate 'line', 279
  # rx subcapture "sym"
    set_addr $I10, rxcap_557_fail
    rx549_cur."!mark_push"(0, rx549_pos, $I10)
  # rx literal  "knowhow"
    add $I11, rx549_pos, 7
    gt $I11, rx549_eos, rx549_fail
    sub $I11, rx549_pos, rx549_off
    substr $S10, rx549_tgt, $I11, 7
    ne $S10, "knowhow", rx549_fail
    add rx549_pos, 7
    set_addr $I10, rxcap_557_fail
    ($I12, $I11) = rx549_cur."!mark_peek"($I10)
    rx549_cur."!cursor_pos"($I11)
    ($P10) = rx549_cur."!cursor_start"()
    $P10."!cursor_pass"(rx549_pos, "")
    rx549_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_557_done
  rxcap_557_fail:
    goto rx549_fail
  rxcap_557_done:
  # rx subrule "package_def" subtype=capture negate=
    rx549_cur."!cursor_pos"(rx549_pos)
    $P10 = rx549_cur."package_def"()
    unless $P10, rx549_fail
    rx549_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("package_def")
    rx549_pos = $P10."pos"()
.annotate 'line', 276
  # rx pass
    rx549_cur."!cursor_pass"(rx549_pos, "package_declarator:sym<knowhow>")
    if_null rx549_debug, debug_645
    rx549_cur."!cursor_debug"("PASS", "package_declarator:sym<knowhow>", " at pos=", rx549_pos)
  debug_645:
    .return (rx549_cur)
  rx549_restart:
.annotate 'line', 4
    if_null rx549_debug, debug_646
    rx549_cur."!cursor_debug"("NEXT", "package_declarator:sym<knowhow>")
  debug_646:
  rx549_fail:
    (rx549_rep, rx549_pos, $I10, $P10) = rx549_cur."!mark_fail"(0)
    lt rx549_pos, -1, rx549_done
    eq rx549_pos, -1, rx549_fail
    jump $I10
  rx549_done:
    rx549_cur."!cursor_fail"()
    if_null rx549_debug, debug_647
    rx549_cur."!cursor_debug"("FAIL", "package_declarator:sym<knowhow>")
  debug_647:
    .return (rx549_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__package_declarator:sym<knowhow>"  :subid("135_1294592820.342") :method
.annotate 'line', 4
    $P551 = self."!PREFIX__!subrule"("package_def", "knowhow")
    new $P552, "ResizablePMCArray"
    push $P552, $P551
    .return ($P552)
.end


.namespace ["NQP";"Grammar"]
.sub "package_declarator:sym<class>"  :subid("136_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 282
    new $P559, "Undef"
    .lex "$*PKGDECL", $P559
.annotate 'line', 4
    .local string rx560_tgt
    .local int rx560_pos
    .local int rx560_off
    .local int rx560_eos
    .local int rx560_rep
    .local pmc rx560_cur
    .local pmc rx560_debug
    (rx560_cur, rx560_pos, rx560_tgt, $I10) = self."!cursor_start"()
    getattribute rx560_debug, rx560_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx560_cur
    .local pmc match
    .lex "$/", match
    length rx560_eos, rx560_tgt
    gt rx560_pos, rx560_eos, rx560_done
    set rx560_off, 0
    lt rx560_pos, 2, rx560_start
    sub rx560_off, rx560_pos, 1
    substr rx560_tgt, rx560_tgt, rx560_off
  rx560_start:
    eq $I10, 1, rx560_restart
    if_null rx560_debug, debug_648
    rx560_cur."!cursor_debug"("START", "package_declarator:sym<class>")
  debug_648:
    $I10 = self.'from'()
    ne $I10, -1, rxscan564_done
    goto rxscan564_scan
  rxscan564_loop:
    ($P10) = rx560_cur."from"()
    inc $P10
    set rx560_pos, $P10
    ge rx560_pos, rx560_eos, rxscan564_done
  rxscan564_scan:
    set_addr $I10, rxscan564_loop
    rx560_cur."!mark_push"(0, rx560_pos, $I10)
  rxscan564_done:
.annotate 'line', 282
    rx560_cur."!cursor_pos"(rx560_pos)
    new $P565, "String"
    assign $P565, "class"
    store_lex "$*PKGDECL", $P565
.annotate 'line', 283
  # rx subcapture "sym"
    set_addr $I10, rxcap_566_fail
    rx560_cur."!mark_push"(0, rx560_pos, $I10)
  # rx literal  "class"
    add $I11, rx560_pos, 5
    gt $I11, rx560_eos, rx560_fail
    sub $I11, rx560_pos, rx560_off
    substr $S10, rx560_tgt, $I11, 5
    ne $S10, "class", rx560_fail
    add rx560_pos, 5
    set_addr $I10, rxcap_566_fail
    ($I12, $I11) = rx560_cur."!mark_peek"($I10)
    rx560_cur."!cursor_pos"($I11)
    ($P10) = rx560_cur."!cursor_start"()
    $P10."!cursor_pass"(rx560_pos, "")
    rx560_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_566_done
  rxcap_566_fail:
    goto rx560_fail
  rxcap_566_done:
  # rx subrule "package_def" subtype=capture negate=
    rx560_cur."!cursor_pos"(rx560_pos)
    $P10 = rx560_cur."package_def"()
    unless $P10, rx560_fail
    rx560_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("package_def")
    rx560_pos = $P10."pos"()
.annotate 'line', 281
  # rx pass
    rx560_cur."!cursor_pass"(rx560_pos, "package_declarator:sym<class>")
    if_null rx560_debug, debug_649
    rx560_cur."!cursor_debug"("PASS", "package_declarator:sym<class>", " at pos=", rx560_pos)
  debug_649:
    .return (rx560_cur)
  rx560_restart:
.annotate 'line', 4
    if_null rx560_debug, debug_650
    rx560_cur."!cursor_debug"("NEXT", "package_declarator:sym<class>")
  debug_650:
  rx560_fail:
    (rx560_rep, rx560_pos, $I10, $P10) = rx560_cur."!mark_fail"(0)
    lt rx560_pos, -1, rx560_done
    eq rx560_pos, -1, rx560_fail
    jump $I10
  rx560_done:
    rx560_cur."!cursor_fail"()
    if_null rx560_debug, debug_651
    rx560_cur."!cursor_debug"("FAIL", "package_declarator:sym<class>")
  debug_651:
    .return (rx560_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__package_declarator:sym<class>"  :subid("137_1294592820.342") :method
.annotate 'line', 4
    $P562 = self."!PREFIX__!subrule"("package_def", "class")
    new $P563, "ResizablePMCArray"
    push $P563, $P562
    .return ($P563)
.end


.namespace ["NQP";"Grammar"]
.sub "package_declarator:sym<class_6m>"  :subid("138_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 286
    new $P568, "Undef"
    .lex "$*PACKAGE-SETUP", $P568
.annotate 'line', 287
    new $P569, "Undef"
    .lex "$*PKGDECL", $P569
.annotate 'line', 4
    .local string rx570_tgt
    .local int rx570_pos
    .local int rx570_off
    .local int rx570_eos
    .local int rx570_rep
    .local pmc rx570_cur
    .local pmc rx570_debug
    (rx570_cur, rx570_pos, rx570_tgt, $I10) = self."!cursor_start"()
    getattribute rx570_debug, rx570_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx570_cur
    .local pmc match
    .lex "$/", match
    length rx570_eos, rx570_tgt
    gt rx570_pos, rx570_eos, rx570_done
    set rx570_off, 0
    lt rx570_pos, 2, rx570_start
    sub rx570_off, rx570_pos, 1
    substr rx570_tgt, rx570_tgt, rx570_off
  rx570_start:
    eq $I10, 1, rx570_restart
    if_null rx570_debug, debug_652
    rx570_cur."!cursor_debug"("START", "package_declarator:sym<class_6m>")
  debug_652:
    $I10 = self.'from'()
    ne $I10, -1, rxscan574_done
    goto rxscan574_scan
  rxscan574_loop:
    ($P10) = rx570_cur."from"()
    inc $P10
    set rx570_pos, $P10
    ge rx570_pos, rx570_eos, rxscan574_done
  rxscan574_scan:
    set_addr $I10, rxscan574_loop
    rx570_cur."!mark_push"(0, rx570_pos, $I10)
  rxscan574_done:
.annotate 'line', 286
    rx570_cur."!cursor_pos"(rx570_pos)
    get_hll_global $P575, ["PAST"], "Stmts"
    $P576 = $P575."new"()
    store_lex "$*PACKAGE-SETUP", $P576
.annotate 'line', 287
    rx570_cur."!cursor_pos"(rx570_pos)
    new $P577, "String"
    assign $P577, "class"
    store_lex "$*PKGDECL", $P577
.annotate 'line', 288
  # rx subcapture "sym"
    set_addr $I10, rxcap_578_fail
    rx570_cur."!mark_push"(0, rx570_pos, $I10)
  # rx literal  "class_6m"
    add $I11, rx570_pos, 8
    gt $I11, rx570_eos, rx570_fail
    sub $I11, rx570_pos, rx570_off
    substr $S10, rx570_tgt, $I11, 8
    ne $S10, "class_6m", rx570_fail
    add rx570_pos, 8
    set_addr $I10, rxcap_578_fail
    ($I12, $I11) = rx570_cur."!mark_peek"($I10)
    rx570_cur."!cursor_pos"($I11)
    ($P10) = rx570_cur."!cursor_start"()
    $P10."!cursor_pass"(rx570_pos, "")
    rx570_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_578_done
  rxcap_578_fail:
    goto rx570_fail
  rxcap_578_done:
  # rx subrule "package_def" subtype=capture negate=
    rx570_cur."!cursor_pos"(rx570_pos)
    $P10 = rx570_cur."package_def"()
    unless $P10, rx570_fail
    rx570_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("package_def")
    rx570_pos = $P10."pos"()
.annotate 'line', 285
  # rx pass
    rx570_cur."!cursor_pass"(rx570_pos, "package_declarator:sym<class_6m>")
    if_null rx570_debug, debug_653
    rx570_cur."!cursor_debug"("PASS", "package_declarator:sym<class_6m>", " at pos=", rx570_pos)
  debug_653:
    .return (rx570_cur)
  rx570_restart:
.annotate 'line', 4
    if_null rx570_debug, debug_654
    rx570_cur."!cursor_debug"("NEXT", "package_declarator:sym<class_6m>")
  debug_654:
  rx570_fail:
    (rx570_rep, rx570_pos, $I10, $P10) = rx570_cur."!mark_fail"(0)
    lt rx570_pos, -1, rx570_done
    eq rx570_pos, -1, rx570_fail
    jump $I10
  rx570_done:
    rx570_cur."!cursor_fail"()
    if_null rx570_debug, debug_655
    rx570_cur."!cursor_debug"("FAIL", "package_declarator:sym<class_6m>")
  debug_655:
    .return (rx570_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__package_declarator:sym<class_6m>"  :subid("139_1294592820.342") :method
.annotate 'line', 4
    $P572 = self."!PREFIX__!subrule"("package_def", "class_6m")
    new $P573, "ResizablePMCArray"
    push $P573, $P572
    .return ($P573)
.end


.namespace ["NQP";"Grammar"]
.sub "package_declarator:sym<grammar>"  :subid("140_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 291
    new $P580, "Undef"
    .lex "$*PKGDECL", $P580
.annotate 'line', 4
    .local string rx581_tgt
    .local int rx581_pos
    .local int rx581_off
    .local int rx581_eos
    .local int rx581_rep
    .local pmc rx581_cur
    .local pmc rx581_debug
    (rx581_cur, rx581_pos, rx581_tgt, $I10) = self."!cursor_start"()
    getattribute rx581_debug, rx581_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx581_cur
    .local pmc match
    .lex "$/", match
    length rx581_eos, rx581_tgt
    gt rx581_pos, rx581_eos, rx581_done
    set rx581_off, 0
    lt rx581_pos, 2, rx581_start
    sub rx581_off, rx581_pos, 1
    substr rx581_tgt, rx581_tgt, rx581_off
  rx581_start:
    eq $I10, 1, rx581_restart
    if_null rx581_debug, debug_656
    rx581_cur."!cursor_debug"("START", "package_declarator:sym<grammar>")
  debug_656:
    $I10 = self.'from'()
    ne $I10, -1, rxscan585_done
    goto rxscan585_scan
  rxscan585_loop:
    ($P10) = rx581_cur."from"()
    inc $P10
    set rx581_pos, $P10
    ge rx581_pos, rx581_eos, rxscan585_done
  rxscan585_scan:
    set_addr $I10, rxscan585_loop
    rx581_cur."!mark_push"(0, rx581_pos, $I10)
  rxscan585_done:
.annotate 'line', 291
    rx581_cur."!cursor_pos"(rx581_pos)
    new $P586, "String"
    assign $P586, "grammar"
    store_lex "$*PKGDECL", $P586
.annotate 'line', 292
  # rx subcapture "sym"
    set_addr $I10, rxcap_587_fail
    rx581_cur."!mark_push"(0, rx581_pos, $I10)
  # rx literal  "grammar"
    add $I11, rx581_pos, 7
    gt $I11, rx581_eos, rx581_fail
    sub $I11, rx581_pos, rx581_off
    substr $S10, rx581_tgt, $I11, 7
    ne $S10, "grammar", rx581_fail
    add rx581_pos, 7
    set_addr $I10, rxcap_587_fail
    ($I12, $I11) = rx581_cur."!mark_peek"($I10)
    rx581_cur."!cursor_pos"($I11)
    ($P10) = rx581_cur."!cursor_start"()
    $P10."!cursor_pass"(rx581_pos, "")
    rx581_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_587_done
  rxcap_587_fail:
    goto rx581_fail
  rxcap_587_done:
  # rx subrule "package_def" subtype=capture negate=
    rx581_cur."!cursor_pos"(rx581_pos)
    $P10 = rx581_cur."package_def"()
    unless $P10, rx581_fail
    rx581_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("package_def")
    rx581_pos = $P10."pos"()
.annotate 'line', 290
  # rx pass
    rx581_cur."!cursor_pass"(rx581_pos, "package_declarator:sym<grammar>")
    if_null rx581_debug, debug_657
    rx581_cur."!cursor_debug"("PASS", "package_declarator:sym<grammar>", " at pos=", rx581_pos)
  debug_657:
    .return (rx581_cur)
  rx581_restart:
.annotate 'line', 4
    if_null rx581_debug, debug_658
    rx581_cur."!cursor_debug"("NEXT", "package_declarator:sym<grammar>")
  debug_658:
  rx581_fail:
    (rx581_rep, rx581_pos, $I10, $P10) = rx581_cur."!mark_fail"(0)
    lt rx581_pos, -1, rx581_done
    eq rx581_pos, -1, rx581_fail
    jump $I10
  rx581_done:
    rx581_cur."!cursor_fail"()
    if_null rx581_debug, debug_659
    rx581_cur."!cursor_debug"("FAIL", "package_declarator:sym<grammar>")
  debug_659:
    .return (rx581_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__package_declarator:sym<grammar>"  :subid("141_1294592820.342") :method
.annotate 'line', 4
    $P583 = self."!PREFIX__!subrule"("package_def", "grammar")
    new $P584, "ResizablePMCArray"
    push $P584, $P583
    .return ($P584)
.end


.namespace ["NQP";"Grammar"]
.sub "package_declarator:sym<role>"  :subid("142_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 295
    new $P589, "Undef"
    .lex "$*PACKAGE-SETUP", $P589
.annotate 'line', 296
    new $P590, "Undef"
    .lex "$*PKGDECL", $P590
.annotate 'line', 4
    .local string rx591_tgt
    .local int rx591_pos
    .local int rx591_off
    .local int rx591_eos
    .local int rx591_rep
    .local pmc rx591_cur
    .local pmc rx591_debug
    (rx591_cur, rx591_pos, rx591_tgt, $I10) = self."!cursor_start"()
    getattribute rx591_debug, rx591_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx591_cur
    .local pmc match
    .lex "$/", match
    length rx591_eos, rx591_tgt
    gt rx591_pos, rx591_eos, rx591_done
    set rx591_off, 0
    lt rx591_pos, 2, rx591_start
    sub rx591_off, rx591_pos, 1
    substr rx591_tgt, rx591_tgt, rx591_off
  rx591_start:
    eq $I10, 1, rx591_restart
    if_null rx591_debug, debug_660
    rx591_cur."!cursor_debug"("START", "package_declarator:sym<role>")
  debug_660:
    $I10 = self.'from'()
    ne $I10, -1, rxscan595_done
    goto rxscan595_scan
  rxscan595_loop:
    ($P10) = rx591_cur."from"()
    inc $P10
    set rx591_pos, $P10
    ge rx591_pos, rx591_eos, rxscan595_done
  rxscan595_scan:
    set_addr $I10, rxscan595_loop
    rx591_cur."!mark_push"(0, rx591_pos, $I10)
  rxscan595_done:
.annotate 'line', 295
    rx591_cur."!cursor_pos"(rx591_pos)
    get_hll_global $P596, ["PAST"], "Stmts"
    $P597 = $P596."new"()
    store_lex "$*PACKAGE-SETUP", $P597
.annotate 'line', 296
    rx591_cur."!cursor_pos"(rx591_pos)
    new $P598, "String"
    assign $P598, "role"
    store_lex "$*PKGDECL", $P598
.annotate 'line', 297
  # rx subcapture "sym"
    set_addr $I10, rxcap_599_fail
    rx591_cur."!mark_push"(0, rx591_pos, $I10)
  # rx literal  "role"
    add $I11, rx591_pos, 4
    gt $I11, rx591_eos, rx591_fail
    sub $I11, rx591_pos, rx591_off
    substr $S10, rx591_tgt, $I11, 4
    ne $S10, "role", rx591_fail
    add rx591_pos, 4
    set_addr $I10, rxcap_599_fail
    ($I12, $I11) = rx591_cur."!mark_peek"($I10)
    rx591_cur."!cursor_pos"($I11)
    ($P10) = rx591_cur."!cursor_start"()
    $P10."!cursor_pass"(rx591_pos, "")
    rx591_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_599_done
  rxcap_599_fail:
    goto rx591_fail
  rxcap_599_done:
  # rx subrule "package_def" subtype=capture negate=
    rx591_cur."!cursor_pos"(rx591_pos)
    $P10 = rx591_cur."package_def"()
    unless $P10, rx591_fail
    rx591_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("package_def")
    rx591_pos = $P10."pos"()
.annotate 'line', 294
  # rx pass
    rx591_cur."!cursor_pass"(rx591_pos, "package_declarator:sym<role>")
    if_null rx591_debug, debug_661
    rx591_cur."!cursor_debug"("PASS", "package_declarator:sym<role>", " at pos=", rx591_pos)
  debug_661:
    .return (rx591_cur)
  rx591_restart:
.annotate 'line', 4
    if_null rx591_debug, debug_662
    rx591_cur."!cursor_debug"("NEXT", "package_declarator:sym<role>")
  debug_662:
  rx591_fail:
    (rx591_rep, rx591_pos, $I10, $P10) = rx591_cur."!mark_fail"(0)
    lt rx591_pos, -1, rx591_done
    eq rx591_pos, -1, rx591_fail
    jump $I10
  rx591_done:
    rx591_cur."!cursor_fail"()
    if_null rx591_debug, debug_663
    rx591_cur."!cursor_debug"("FAIL", "package_declarator:sym<role>")
  debug_663:
    .return (rx591_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__package_declarator:sym<role>"  :subid("143_1294592820.342") :method
.annotate 'line', 4
    $P593 = self."!PREFIX__!subrule"("package_def", "role")
    new $P594, "ResizablePMCArray"
    push $P594, $P593
    .return ($P594)
.end


.namespace ["NQP";"Grammar"]
.sub "package_def"  :subid("144_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx601_tgt
    .local int rx601_pos
    .local int rx601_off
    .local int rx601_eos
    .local int rx601_rep
    .local pmc rx601_cur
    .local pmc rx601_debug
    (rx601_cur, rx601_pos, rx601_tgt, $I10) = self."!cursor_start"()
    rx601_cur."!cursor_caparray"("repr", "parent")
    getattribute rx601_debug, rx601_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx601_cur
    .local pmc match
    .lex "$/", match
    length rx601_eos, rx601_tgt
    gt rx601_pos, rx601_eos, rx601_done
    set rx601_off, 0
    lt rx601_pos, 2, rx601_start
    sub rx601_off, rx601_pos, 1
    substr rx601_tgt, rx601_tgt, rx601_off
  rx601_start:
    eq $I10, 1, rx601_restart
    if_null rx601_debug, debug_664
    rx601_cur."!cursor_debug"("START", "package_def")
  debug_664:
    $I10 = self.'from'()
    ne $I10, -1, rxscan605_done
    goto rxscan605_scan
  rxscan605_loop:
    ($P10) = rx601_cur."from"()
    inc $P10
    set rx601_pos, $P10
    ge rx601_pos, rx601_eos, rxscan605_done
  rxscan605_scan:
    set_addr $I10, rxscan605_loop
    rx601_cur."!mark_push"(0, rx601_pos, $I10)
  rxscan605_done:
.annotate 'line', 300
  # rx subrule "ws" subtype=method negate=
    rx601_cur."!cursor_pos"(rx601_pos)
    $P10 = rx601_cur."ws"()
    unless $P10, rx601_fail
    rx601_pos = $P10."pos"()
.annotate 'line', 301
  # rx subrule "name" subtype=capture negate=
    rx601_cur."!cursor_pos"(rx601_pos)
    $P10 = rx601_cur."name"()
    unless $P10, rx601_fail
    rx601_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    rx601_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx601_cur."!cursor_pos"(rx601_pos)
    $P10 = rx601_cur."ws"()
    unless $P10, rx601_fail
    rx601_pos = $P10."pos"()
.annotate 'line', 302
  # rx rxquantr608 ** 0..1
    set_addr $I10, rxquantr608_done
    rx601_cur."!mark_push"(0, rx601_pos, $I10)
  rxquantr608_loop:
  # rx subrule "ws" subtype=method negate=
    rx601_cur."!cursor_pos"(rx601_pos)
    $P10 = rx601_cur."ws"()
    unless $P10, rx601_fail
    rx601_pos = $P10."pos"()
  # rx literal  "is"
    add $I11, rx601_pos, 2
    gt $I11, rx601_eos, rx601_fail
    sub $I11, rx601_pos, rx601_off
    substr $S10, rx601_tgt, $I11, 2
    ne $S10, "is", rx601_fail
    add rx601_pos, 2
  # rx subrule "ws" subtype=method negate=
    rx601_cur."!cursor_pos"(rx601_pos)
    $P10 = rx601_cur."ws"()
    unless $P10, rx601_fail
    rx601_pos = $P10."pos"()
  # rx literal  "repr("
    add $I11, rx601_pos, 5
    gt $I11, rx601_eos, rx601_fail
    sub $I11, rx601_pos, rx601_off
    substr $S10, rx601_tgt, $I11, 5
    ne $S10, "repr(", rx601_fail
    add rx601_pos, 5
  # rx subrule "ws" subtype=method negate=
    rx601_cur."!cursor_pos"(rx601_pos)
    $P10 = rx601_cur."ws"()
    unless $P10, rx601_fail
    rx601_pos = $P10."pos"()
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx601_cur."!cursor_pos"(rx601_pos)
    $P10 = rx601_cur."quote_EXPR"()
    unless $P10, rx601_fail
    rx601_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("repr")
    rx601_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx601_cur."!cursor_pos"(rx601_pos)
    $P10 = rx601_cur."ws"()
    unless $P10, rx601_fail
    rx601_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx601_pos, 1
    gt $I11, rx601_eos, rx601_fail
    sub $I11, rx601_pos, rx601_off
    ord $I11, rx601_tgt, $I11
    ne $I11, 41, rx601_fail
    add rx601_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx601_cur."!cursor_pos"(rx601_pos)
    $P10 = rx601_cur."ws"()
    unless $P10, rx601_fail
    rx601_pos = $P10."pos"()
    set_addr $I10, rxquantr608_done
    (rx601_rep) = rx601_cur."!mark_commit"($I10)
  rxquantr608_done:
  # rx subrule "ws" subtype=method negate=
    rx601_cur."!cursor_pos"(rx601_pos)
    $P10 = rx601_cur."ws"()
    unless $P10, rx601_fail
    rx601_pos = $P10."pos"()
.annotate 'line', 303
  # rx rxquantr615 ** 0..1
    set_addr $I10, rxquantr615_done
    rx601_cur."!mark_push"(0, rx601_pos, $I10)
  rxquantr615_loop:
  # rx subrule "ws" subtype=method negate=
    rx601_cur."!cursor_pos"(rx601_pos)
    $P10 = rx601_cur."ws"()
    unless $P10, rx601_fail
    rx601_pos = $P10."pos"()
  # rx literal  "is"
    add $I11, rx601_pos, 2
    gt $I11, rx601_eos, rx601_fail
    sub $I11, rx601_pos, rx601_off
    substr $S10, rx601_tgt, $I11, 2
    ne $S10, "is", rx601_fail
    add rx601_pos, 2
  # rx subrule "ws" subtype=method negate=
    rx601_cur."!cursor_pos"(rx601_pos)
    $P10 = rx601_cur."ws"()
    unless $P10, rx601_fail
    rx601_pos = $P10."pos"()
  # rx subrule "name" subtype=capture negate=
    rx601_cur."!cursor_pos"(rx601_pos)
    $P10 = rx601_cur."name"()
    unless $P10, rx601_fail
    rx601_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("parent")
    rx601_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx601_cur."!cursor_pos"(rx601_pos)
    $P10 = rx601_cur."ws"()
    unless $P10, rx601_fail
    rx601_pos = $P10."pos"()
    set_addr $I10, rxquantr615_done
    (rx601_rep) = rx601_cur."!mark_commit"($I10)
  rxquantr615_done:
  # rx subrule "ws" subtype=method negate=
    rx601_cur."!cursor_pos"(rx601_pos)
    $P10 = rx601_cur."ws"()
    unless $P10, rx601_fail
    rx601_pos = $P10."pos"()
  alt620_0:
.annotate 'line', 304
    set_addr $I10, alt620_1
    rx601_cur."!mark_push"(0, rx601_pos, $I10)
.annotate 'line', 305
  # rx subrule "ws" subtype=method negate=
    rx601_cur."!cursor_pos"(rx601_pos)
    $P10 = rx601_cur."ws"()
    unless $P10, rx601_fail
    rx601_pos = $P10."pos"()
  # rx literal  ";"
    add $I11, rx601_pos, 1
    gt $I11, rx601_eos, rx601_fail
    sub $I11, rx601_pos, rx601_off
    ord $I11, rx601_tgt, $I11
    ne $I11, 59, rx601_fail
    add rx601_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx601_cur."!cursor_pos"(rx601_pos)
    $P10 = rx601_cur."ws"()
    unless $P10, rx601_fail
    rx601_pos = $P10."pos"()
  # rx subrule "comp_unit" subtype=capture negate=
    rx601_cur."!cursor_pos"(rx601_pos)
    $P10 = rx601_cur."comp_unit"()
    unless $P10, rx601_fail
    rx601_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("comp_unit")
    rx601_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx601_cur."!cursor_pos"(rx601_pos)
    $P10 = rx601_cur."ws"()
    unless $P10, rx601_fail
    rx601_pos = $P10."pos"()
    goto alt620_end
  alt620_1:
    set_addr $I10, alt620_2
    rx601_cur."!mark_push"(0, rx601_pos, $I10)
.annotate 'line', 306
  # rx subrule "ws" subtype=method negate=
    rx601_cur."!cursor_pos"(rx601_pos)
    $P10 = rx601_cur."ws"()
    unless $P10, rx601_fail
    rx601_pos = $P10."pos"()
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx601_pos, rx601_off
    substr $S10, rx601_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx601_fail
  # rx subrule "ws" subtype=method negate=
    rx601_cur."!cursor_pos"(rx601_pos)
    $P10 = rx601_cur."ws"()
    unless $P10, rx601_fail
    rx601_pos = $P10."pos"()
  # rx subrule "block" subtype=capture negate=
    rx601_cur."!cursor_pos"(rx601_pos)
    $P10 = rx601_cur."block"()
    unless $P10, rx601_fail
    rx601_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("block")
    rx601_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx601_cur."!cursor_pos"(rx601_pos)
    $P10 = rx601_cur."ws"()
    unless $P10, rx601_fail
    rx601_pos = $P10."pos"()
    goto alt620_end
  alt620_2:
.annotate 'line', 307
  # rx subrule "ws" subtype=method negate=
    rx601_cur."!cursor_pos"(rx601_pos)
    $P10 = rx601_cur."ws"()
    unless $P10, rx601_fail
    rx601_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx601_cur."!cursor_pos"(rx601_pos)
    $P10 = rx601_cur."panic"("Malformed package declaration")
    unless $P10, rx601_fail
    rx601_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx601_cur."!cursor_pos"(rx601_pos)
    $P10 = rx601_cur."ws"()
    unless $P10, rx601_fail
    rx601_pos = $P10."pos"()
  alt620_end:
.annotate 'line', 308
  # rx subrule "ws" subtype=method negate=
    rx601_cur."!cursor_pos"(rx601_pos)
    $P10 = rx601_cur."ws"()
    unless $P10, rx601_fail
    rx601_pos = $P10."pos"()
.annotate 'line', 300
  # rx pass
    rx601_cur."!cursor_pass"(rx601_pos, "package_def")
    if_null rx601_debug, debug_665
    rx601_cur."!cursor_debug"("PASS", "package_def", " at pos=", rx601_pos)
  debug_665:
    .return (rx601_cur)
  rx601_restart:
.annotate 'line', 4
    if_null rx601_debug, debug_666
    rx601_cur."!cursor_debug"("NEXT", "package_def")
  debug_666:
  rx601_fail:
    (rx601_rep, rx601_pos, $I10, $P10) = rx601_cur."!mark_fail"(0)
    lt rx601_pos, -1, rx601_done
    eq rx601_pos, -1, rx601_fail
    jump $I10
  rx601_done:
    rx601_cur."!cursor_fail"()
    if_null rx601_debug, debug_667
    rx601_cur."!cursor_debug"("FAIL", "package_def")
  debug_667:
    .return (rx601_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__package_def"  :subid("145_1294592820.342") :method
.annotate 'line', 4
    $P603 = self."!PREFIX__!subrule"("ws", "")
    new $P604, "ResizablePMCArray"
    push $P604, $P603
    .return ($P604)
.end


.namespace ["NQP";"Grammar"]
.sub "scope_declarator"  :subid("146_1294592820.342") :method
.annotate 'line', 311
    $P631 = self."!protoregex"("scope_declarator")
    .return ($P631)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__scope_declarator"  :subid("147_1294592820.342") :method
.annotate 'line', 311
    $P633 = self."!PREFIX__!protoregex"("scope_declarator")
    .return ($P633)
.end


.namespace ["NQP";"Grammar"]
.sub "scope_declarator:sym<my>"  :subid("148_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx635_tgt
    .local int rx635_pos
    .local int rx635_off
    .local int rx635_eos
    .local int rx635_rep
    .local pmc rx635_cur
    .local pmc rx635_debug
    (rx635_cur, rx635_pos, rx635_tgt, $I10) = self."!cursor_start"()
    getattribute rx635_debug, rx635_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx635_cur
    .local pmc match
    .lex "$/", match
    length rx635_eos, rx635_tgt
    gt rx635_pos, rx635_eos, rx635_done
    set rx635_off, 0
    lt rx635_pos, 2, rx635_start
    sub rx635_off, rx635_pos, 1
    substr rx635_tgt, rx635_tgt, rx635_off
  rx635_start:
    eq $I10, 1, rx635_restart
    if_null rx635_debug, debug_668
    rx635_cur."!cursor_debug"("START", "scope_declarator:sym<my>")
  debug_668:
    $I10 = self.'from'()
    ne $I10, -1, rxscan639_done
    goto rxscan639_scan
  rxscan639_loop:
    ($P10) = rx635_cur."from"()
    inc $P10
    set rx635_pos, $P10
    ge rx635_pos, rx635_eos, rxscan639_done
  rxscan639_scan:
    set_addr $I10, rxscan639_loop
    rx635_cur."!mark_push"(0, rx635_pos, $I10)
  rxscan639_done:
.annotate 'line', 312
  # rx subcapture "sym"
    set_addr $I10, rxcap_640_fail
    rx635_cur."!mark_push"(0, rx635_pos, $I10)
  # rx literal  "my"
    add $I11, rx635_pos, 2
    gt $I11, rx635_eos, rx635_fail
    sub $I11, rx635_pos, rx635_off
    substr $S10, rx635_tgt, $I11, 2
    ne $S10, "my", rx635_fail
    add rx635_pos, 2
    set_addr $I10, rxcap_640_fail
    ($I12, $I11) = rx635_cur."!mark_peek"($I10)
    rx635_cur."!cursor_pos"($I11)
    ($P10) = rx635_cur."!cursor_start"()
    $P10."!cursor_pass"(rx635_pos, "")
    rx635_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_640_done
  rxcap_640_fail:
    goto rx635_fail
  rxcap_640_done:
  # rx subrule "scoped" subtype=capture negate=
    rx635_cur."!cursor_pos"(rx635_pos)
    $P10 = rx635_cur."scoped"("my")
    unless $P10, rx635_fail
    rx635_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("scoped")
    rx635_pos = $P10."pos"()
  # rx pass
    rx635_cur."!cursor_pass"(rx635_pos, "scope_declarator:sym<my>")
    if_null rx635_debug, debug_669
    rx635_cur."!cursor_debug"("PASS", "scope_declarator:sym<my>", " at pos=", rx635_pos)
  debug_669:
    .return (rx635_cur)
  rx635_restart:
.annotate 'line', 4
    if_null rx635_debug, debug_670
    rx635_cur."!cursor_debug"("NEXT", "scope_declarator:sym<my>")
  debug_670:
  rx635_fail:
    (rx635_rep, rx635_pos, $I10, $P10) = rx635_cur."!mark_fail"(0)
    lt rx635_pos, -1, rx635_done
    eq rx635_pos, -1, rx635_fail
    jump $I10
  rx635_done:
    rx635_cur."!cursor_fail"()
    if_null rx635_debug, debug_671
    rx635_cur."!cursor_debug"("FAIL", "scope_declarator:sym<my>")
  debug_671:
    .return (rx635_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__scope_declarator:sym<my>"  :subid("149_1294592820.342") :method
.annotate 'line', 4
    $P637 = self."!PREFIX__!subrule"("scoped", "my")
    new $P638, "ResizablePMCArray"
    push $P638, $P637
    .return ($P638)
.end


.namespace ["NQP";"Grammar"]
.sub "scope_declarator:sym<our>"  :subid("150_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx642_tgt
    .local int rx642_pos
    .local int rx642_off
    .local int rx642_eos
    .local int rx642_rep
    .local pmc rx642_cur
    .local pmc rx642_debug
    (rx642_cur, rx642_pos, rx642_tgt, $I10) = self."!cursor_start"()
    getattribute rx642_debug, rx642_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx642_cur
    .local pmc match
    .lex "$/", match
    length rx642_eos, rx642_tgt
    gt rx642_pos, rx642_eos, rx642_done
    set rx642_off, 0
    lt rx642_pos, 2, rx642_start
    sub rx642_off, rx642_pos, 1
    substr rx642_tgt, rx642_tgt, rx642_off
  rx642_start:
    eq $I10, 1, rx642_restart
    if_null rx642_debug, debug_672
    rx642_cur."!cursor_debug"("START", "scope_declarator:sym<our>")
  debug_672:
    $I10 = self.'from'()
    ne $I10, -1, rxscan646_done
    goto rxscan646_scan
  rxscan646_loop:
    ($P10) = rx642_cur."from"()
    inc $P10
    set rx642_pos, $P10
    ge rx642_pos, rx642_eos, rxscan646_done
  rxscan646_scan:
    set_addr $I10, rxscan646_loop
    rx642_cur."!mark_push"(0, rx642_pos, $I10)
  rxscan646_done:
.annotate 'line', 313
  # rx subcapture "sym"
    set_addr $I10, rxcap_647_fail
    rx642_cur."!mark_push"(0, rx642_pos, $I10)
  # rx literal  "our"
    add $I11, rx642_pos, 3
    gt $I11, rx642_eos, rx642_fail
    sub $I11, rx642_pos, rx642_off
    substr $S10, rx642_tgt, $I11, 3
    ne $S10, "our", rx642_fail
    add rx642_pos, 3
    set_addr $I10, rxcap_647_fail
    ($I12, $I11) = rx642_cur."!mark_peek"($I10)
    rx642_cur."!cursor_pos"($I11)
    ($P10) = rx642_cur."!cursor_start"()
    $P10."!cursor_pass"(rx642_pos, "")
    rx642_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_647_done
  rxcap_647_fail:
    goto rx642_fail
  rxcap_647_done:
  # rx subrule "scoped" subtype=capture negate=
    rx642_cur."!cursor_pos"(rx642_pos)
    $P10 = rx642_cur."scoped"("our")
    unless $P10, rx642_fail
    rx642_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("scoped")
    rx642_pos = $P10."pos"()
  # rx pass
    rx642_cur."!cursor_pass"(rx642_pos, "scope_declarator:sym<our>")
    if_null rx642_debug, debug_673
    rx642_cur."!cursor_debug"("PASS", "scope_declarator:sym<our>", " at pos=", rx642_pos)
  debug_673:
    .return (rx642_cur)
  rx642_restart:
.annotate 'line', 4
    if_null rx642_debug, debug_674
    rx642_cur."!cursor_debug"("NEXT", "scope_declarator:sym<our>")
  debug_674:
  rx642_fail:
    (rx642_rep, rx642_pos, $I10, $P10) = rx642_cur."!mark_fail"(0)
    lt rx642_pos, -1, rx642_done
    eq rx642_pos, -1, rx642_fail
    jump $I10
  rx642_done:
    rx642_cur."!cursor_fail"()
    if_null rx642_debug, debug_675
    rx642_cur."!cursor_debug"("FAIL", "scope_declarator:sym<our>")
  debug_675:
    .return (rx642_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__scope_declarator:sym<our>"  :subid("151_1294592820.342") :method
.annotate 'line', 4
    $P644 = self."!PREFIX__!subrule"("scoped", "our")
    new $P645, "ResizablePMCArray"
    push $P645, $P644
    .return ($P645)
.end


.namespace ["NQP";"Grammar"]
.sub "scope_declarator:sym<has>"  :subid("152_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx649_tgt
    .local int rx649_pos
    .local int rx649_off
    .local int rx649_eos
    .local int rx649_rep
    .local pmc rx649_cur
    .local pmc rx649_debug
    (rx649_cur, rx649_pos, rx649_tgt, $I10) = self."!cursor_start"()
    getattribute rx649_debug, rx649_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx649_cur
    .local pmc match
    .lex "$/", match
    length rx649_eos, rx649_tgt
    gt rx649_pos, rx649_eos, rx649_done
    set rx649_off, 0
    lt rx649_pos, 2, rx649_start
    sub rx649_off, rx649_pos, 1
    substr rx649_tgt, rx649_tgt, rx649_off
  rx649_start:
    eq $I10, 1, rx649_restart
    if_null rx649_debug, debug_676
    rx649_cur."!cursor_debug"("START", "scope_declarator:sym<has>")
  debug_676:
    $I10 = self.'from'()
    ne $I10, -1, rxscan653_done
    goto rxscan653_scan
  rxscan653_loop:
    ($P10) = rx649_cur."from"()
    inc $P10
    set rx649_pos, $P10
    ge rx649_pos, rx649_eos, rxscan653_done
  rxscan653_scan:
    set_addr $I10, rxscan653_loop
    rx649_cur."!mark_push"(0, rx649_pos, $I10)
  rxscan653_done:
.annotate 'line', 314
  # rx subcapture "sym"
    set_addr $I10, rxcap_654_fail
    rx649_cur."!mark_push"(0, rx649_pos, $I10)
  # rx literal  "has"
    add $I11, rx649_pos, 3
    gt $I11, rx649_eos, rx649_fail
    sub $I11, rx649_pos, rx649_off
    substr $S10, rx649_tgt, $I11, 3
    ne $S10, "has", rx649_fail
    add rx649_pos, 3
    set_addr $I10, rxcap_654_fail
    ($I12, $I11) = rx649_cur."!mark_peek"($I10)
    rx649_cur."!cursor_pos"($I11)
    ($P10) = rx649_cur."!cursor_start"()
    $P10."!cursor_pass"(rx649_pos, "")
    rx649_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_654_done
  rxcap_654_fail:
    goto rx649_fail
  rxcap_654_done:
  # rx subrule "scoped" subtype=capture negate=
    rx649_cur."!cursor_pos"(rx649_pos)
    $P10 = rx649_cur."scoped"("has")
    unless $P10, rx649_fail
    rx649_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("scoped")
    rx649_pos = $P10."pos"()
  # rx pass
    rx649_cur."!cursor_pass"(rx649_pos, "scope_declarator:sym<has>")
    if_null rx649_debug, debug_677
    rx649_cur."!cursor_debug"("PASS", "scope_declarator:sym<has>", " at pos=", rx649_pos)
  debug_677:
    .return (rx649_cur)
  rx649_restart:
.annotate 'line', 4
    if_null rx649_debug, debug_678
    rx649_cur."!cursor_debug"("NEXT", "scope_declarator:sym<has>")
  debug_678:
  rx649_fail:
    (rx649_rep, rx649_pos, $I10, $P10) = rx649_cur."!mark_fail"(0)
    lt rx649_pos, -1, rx649_done
    eq rx649_pos, -1, rx649_fail
    jump $I10
  rx649_done:
    rx649_cur."!cursor_fail"()
    if_null rx649_debug, debug_679
    rx649_cur."!cursor_debug"("FAIL", "scope_declarator:sym<has>")
  debug_679:
    .return (rx649_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__scope_declarator:sym<has>"  :subid("153_1294592820.342") :method
.annotate 'line', 4
    $P651 = self."!PREFIX__!subrule"("scoped", "has")
    new $P652, "ResizablePMCArray"
    push $P652, $P651
    .return ($P652)
.end


.namespace ["NQP";"Grammar"]
.sub "scoped"  :subid("154_1294592820.342") :method :outer("11_1294592820.342")
    .param pmc param_656
.annotate 'line', 316
    .lex "$*SCOPE", param_656
.annotate 'line', 4
    .local string rx657_tgt
    .local int rx657_pos
    .local int rx657_off
    .local int rx657_eos
    .local int rx657_rep
    .local pmc rx657_cur
    .local pmc rx657_debug
    (rx657_cur, rx657_pos, rx657_tgt, $I10) = self."!cursor_start"()
    getattribute rx657_debug, rx657_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx657_cur
    .local pmc match
    .lex "$/", match
    length rx657_eos, rx657_tgt
    gt rx657_pos, rx657_eos, rx657_done
    set rx657_off, 0
    lt rx657_pos, 2, rx657_start
    sub rx657_off, rx657_pos, 1
    substr rx657_tgt, rx657_tgt, rx657_off
  rx657_start:
    eq $I10, 1, rx657_restart
    if_null rx657_debug, debug_680
    rx657_cur."!cursor_debug"("START", "scoped")
  debug_680:
    $I10 = self.'from'()
    ne $I10, -1, rxscan662_done
    goto rxscan662_scan
  rxscan662_loop:
    ($P10) = rx657_cur."from"()
    inc $P10
    set rx657_pos, $P10
    ge rx657_pos, rx657_eos, rxscan662_done
  rxscan662_scan:
    set_addr $I10, rxscan662_loop
    rx657_cur."!mark_push"(0, rx657_pos, $I10)
  rxscan662_done:
  alt663_0:
.annotate 'line', 316
    set_addr $I10, alt663_1
    rx657_cur."!mark_push"(0, rx657_pos, $I10)
.annotate 'line', 317
  # rx subrule "ws" subtype=method negate=
    rx657_cur."!cursor_pos"(rx657_pos)
    $P10 = rx657_cur."ws"()
    unless $P10, rx657_fail
    rx657_pos = $P10."pos"()
  # rx subrule "declarator" subtype=capture negate=
    rx657_cur."!cursor_pos"(rx657_pos)
    $P10 = rx657_cur."declarator"()
    unless $P10, rx657_fail
    rx657_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("declarator")
    rx657_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx657_cur."!cursor_pos"(rx657_pos)
    $P10 = rx657_cur."ws"()
    unless $P10, rx657_fail
    rx657_pos = $P10."pos"()
    goto alt663_end
  alt663_1:
.annotate 'line', 318
  # rx subrule "ws" subtype=method negate=
    rx657_cur."!cursor_pos"(rx657_pos)
    $P10 = rx657_cur."ws"()
    unless $P10, rx657_fail
    rx657_pos = $P10."pos"()
  # rx subrule "multi_declarator" subtype=capture negate=
    rx657_cur."!cursor_pos"(rx657_pos)
    $P10 = rx657_cur."multi_declarator"()
    unless $P10, rx657_fail
    rx657_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("multi_declarator")
    rx657_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx657_cur."!cursor_pos"(rx657_pos)
    $P10 = rx657_cur."ws"()
    unless $P10, rx657_fail
    rx657_pos = $P10."pos"()
  alt663_end:
.annotate 'line', 316
  # rx pass
    rx657_cur."!cursor_pass"(rx657_pos, "scoped")
    if_null rx657_debug, debug_681
    rx657_cur."!cursor_debug"("PASS", "scoped", " at pos=", rx657_pos)
  debug_681:
    .return (rx657_cur)
  rx657_restart:
.annotate 'line', 4
    if_null rx657_debug, debug_682
    rx657_cur."!cursor_debug"("NEXT", "scoped")
  debug_682:
  rx657_fail:
    (rx657_rep, rx657_pos, $I10, $P10) = rx657_cur."!mark_fail"(0)
    lt rx657_pos, -1, rx657_done
    eq rx657_pos, -1, rx657_fail
    jump $I10
  rx657_done:
    rx657_cur."!cursor_fail"()
    if_null rx657_debug, debug_683
    rx657_cur."!cursor_debug"("FAIL", "scoped")
  debug_683:
    .return (rx657_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__scoped"  :subid("155_1294592820.342") :method
.annotate 'line', 4
    $P659 = self."!PREFIX__!subrule"("ws", "")
    $P660 = self."!PREFIX__!subrule"("ws", "")
    new $P661, "ResizablePMCArray"
    push $P661, $P659
    push $P661, $P660
    .return ($P661)
.end


.namespace ["NQP";"Grammar"]
.sub "typename"  :subid("156_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx669_tgt
    .local int rx669_pos
    .local int rx669_off
    .local int rx669_eos
    .local int rx669_rep
    .local pmc rx669_cur
    .local pmc rx669_debug
    (rx669_cur, rx669_pos, rx669_tgt, $I10) = self."!cursor_start"()
    getattribute rx669_debug, rx669_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx669_cur
    .local pmc match
    .lex "$/", match
    length rx669_eos, rx669_tgt
    gt rx669_pos, rx669_eos, rx669_done
    set rx669_off, 0
    lt rx669_pos, 2, rx669_start
    sub rx669_off, rx669_pos, 1
    substr rx669_tgt, rx669_tgt, rx669_off
  rx669_start:
    eq $I10, 1, rx669_restart
    if_null rx669_debug, debug_684
    rx669_cur."!cursor_debug"("START", "typename")
  debug_684:
    $I10 = self.'from'()
    ne $I10, -1, rxscan673_done
    goto rxscan673_scan
  rxscan673_loop:
    ($P10) = rx669_cur."from"()
    inc $P10
    set rx669_pos, $P10
    ge rx669_pos, rx669_eos, rxscan673_done
  rxscan673_scan:
    set_addr $I10, rxscan673_loop
    rx669_cur."!mark_push"(0, rx669_pos, $I10)
  rxscan673_done:
.annotate 'line', 321
  # rx subrule "name" subtype=capture negate=
    rx669_cur."!cursor_pos"(rx669_pos)
    $P10 = rx669_cur."name"()
    unless $P10, rx669_fail
    rx669_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    rx669_pos = $P10."pos"()
  # rx pass
    rx669_cur."!cursor_pass"(rx669_pos, "typename")
    if_null rx669_debug, debug_685
    rx669_cur."!cursor_debug"("PASS", "typename", " at pos=", rx669_pos)
  debug_685:
    .return (rx669_cur)
  rx669_restart:
.annotate 'line', 4
    if_null rx669_debug, debug_686
    rx669_cur."!cursor_debug"("NEXT", "typename")
  debug_686:
  rx669_fail:
    (rx669_rep, rx669_pos, $I10, $P10) = rx669_cur."!mark_fail"(0)
    lt rx669_pos, -1, rx669_done
    eq rx669_pos, -1, rx669_fail
    jump $I10
  rx669_done:
    rx669_cur."!cursor_fail"()
    if_null rx669_debug, debug_687
    rx669_cur."!cursor_debug"("FAIL", "typename")
  debug_687:
    .return (rx669_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__typename"  :subid("157_1294592820.342") :method
.annotate 'line', 4
    $P671 = self."!PREFIX__!subrule"("name", "")
    new $P672, "ResizablePMCArray"
    push $P672, $P671
    .return ($P672)
.end


.namespace ["NQP";"Grammar"]
.sub "declarator"  :subid("158_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx675_tgt
    .local int rx675_pos
    .local int rx675_off
    .local int rx675_eos
    .local int rx675_rep
    .local pmc rx675_cur
    .local pmc rx675_debug
    (rx675_cur, rx675_pos, rx675_tgt, $I10) = self."!cursor_start"()
    getattribute rx675_debug, rx675_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx675_cur
    .local pmc match
    .lex "$/", match
    length rx675_eos, rx675_tgt
    gt rx675_pos, rx675_eos, rx675_done
    set rx675_off, 0
    lt rx675_pos, 2, rx675_start
    sub rx675_off, rx675_pos, 1
    substr rx675_tgt, rx675_tgt, rx675_off
  rx675_start:
    eq $I10, 1, rx675_restart
    if_null rx675_debug, debug_688
    rx675_cur."!cursor_debug"("START", "declarator")
  debug_688:
    $I10 = self.'from'()
    ne $I10, -1, rxscan680_done
    goto rxscan680_scan
  rxscan680_loop:
    ($P10) = rx675_cur."from"()
    inc $P10
    set rx675_pos, $P10
    ge rx675_pos, rx675_eos, rxscan680_done
  rxscan680_scan:
    set_addr $I10, rxscan680_loop
    rx675_cur."!mark_push"(0, rx675_pos, $I10)
  rxscan680_done:
  alt681_0:
.annotate 'line', 323
    set_addr $I10, alt681_1
    rx675_cur."!mark_push"(0, rx675_pos, $I10)
.annotate 'line', 324
  # rx subrule "variable_declarator" subtype=capture negate=
    rx675_cur."!cursor_pos"(rx675_pos)
    $P10 = rx675_cur."variable_declarator"()
    unless $P10, rx675_fail
    rx675_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("variable_declarator")
    rx675_pos = $P10."pos"()
    goto alt681_end
  alt681_1:
.annotate 'line', 325
  # rx subrule "routine_declarator" subtype=capture negate=
    rx675_cur."!cursor_pos"(rx675_pos)
    $P10 = rx675_cur."routine_declarator"()
    unless $P10, rx675_fail
    rx675_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("routine_declarator")
    rx675_pos = $P10."pos"()
  alt681_end:
.annotate 'line', 323
  # rx pass
    rx675_cur."!cursor_pass"(rx675_pos, "declarator")
    if_null rx675_debug, debug_689
    rx675_cur."!cursor_debug"("PASS", "declarator", " at pos=", rx675_pos)
  debug_689:
    .return (rx675_cur)
  rx675_restart:
.annotate 'line', 4
    if_null rx675_debug, debug_690
    rx675_cur."!cursor_debug"("NEXT", "declarator")
  debug_690:
  rx675_fail:
    (rx675_rep, rx675_pos, $I10, $P10) = rx675_cur."!mark_fail"(0)
    lt rx675_pos, -1, rx675_done
    eq rx675_pos, -1, rx675_fail
    jump $I10
  rx675_done:
    rx675_cur."!cursor_fail"()
    if_null rx675_debug, debug_691
    rx675_cur."!cursor_debug"("FAIL", "declarator")
  debug_691:
    .return (rx675_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__declarator"  :subid("159_1294592820.342") :method
.annotate 'line', 4
    $P677 = self."!PREFIX__!subrule"("routine_declarator", "")
    $P678 = self."!PREFIX__!subrule"("variable_declarator", "")
    new $P679, "ResizablePMCArray"
    push $P679, $P677
    push $P679, $P678
    .return ($P679)
.end


.namespace ["NQP";"Grammar"]
.sub "variable_declarator"  :subid("160_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx683_tgt
    .local int rx683_pos
    .local int rx683_off
    .local int rx683_eos
    .local int rx683_rep
    .local pmc rx683_cur
    .local pmc rx683_debug
    (rx683_cur, rx683_pos, rx683_tgt, $I10) = self."!cursor_start"()
    getattribute rx683_debug, rx683_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx683_cur
    .local pmc match
    .lex "$/", match
    length rx683_eos, rx683_tgt
    gt rx683_pos, rx683_eos, rx683_done
    set rx683_off, 0
    lt rx683_pos, 2, rx683_start
    sub rx683_off, rx683_pos, 1
    substr rx683_tgt, rx683_tgt, rx683_off
  rx683_start:
    eq $I10, 1, rx683_restart
    if_null rx683_debug, debug_692
    rx683_cur."!cursor_debug"("START", "variable_declarator")
  debug_692:
    $I10 = self.'from'()
    ne $I10, -1, rxscan687_done
    goto rxscan687_scan
  rxscan687_loop:
    ($P10) = rx683_cur."from"()
    inc $P10
    set rx683_pos, $P10
    ge rx683_pos, rx683_eos, rxscan687_done
  rxscan687_scan:
    set_addr $I10, rxscan687_loop
    rx683_cur."!mark_push"(0, rx683_pos, $I10)
  rxscan687_done:
.annotate 'line', 328
  # rx subrule "variable" subtype=capture negate=
    rx683_cur."!cursor_pos"(rx683_pos)
    $P10 = rx683_cur."variable"()
    unless $P10, rx683_fail
    rx683_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("variable")
    rx683_pos = $P10."pos"()
  # rx pass
    rx683_cur."!cursor_pass"(rx683_pos, "variable_declarator")
    if_null rx683_debug, debug_693
    rx683_cur."!cursor_debug"("PASS", "variable_declarator", " at pos=", rx683_pos)
  debug_693:
    .return (rx683_cur)
  rx683_restart:
.annotate 'line', 4
    if_null rx683_debug, debug_694
    rx683_cur."!cursor_debug"("NEXT", "variable_declarator")
  debug_694:
  rx683_fail:
    (rx683_rep, rx683_pos, $I10, $P10) = rx683_cur."!mark_fail"(0)
    lt rx683_pos, -1, rx683_done
    eq rx683_pos, -1, rx683_fail
    jump $I10
  rx683_done:
    rx683_cur."!cursor_fail"()
    if_null rx683_debug, debug_695
    rx683_cur."!cursor_debug"("FAIL", "variable_declarator")
  debug_695:
    .return (rx683_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__variable_declarator"  :subid("161_1294592820.342") :method
.annotate 'line', 4
    $P685 = self."!PREFIX__!subrule"("variable", "")
    new $P686, "ResizablePMCArray"
    push $P686, $P685
    .return ($P686)
.end


.namespace ["NQP";"Grammar"]
.sub "routine_declarator"  :subid("162_1294592820.342") :method
.annotate 'line', 330
    $P689 = self."!protoregex"("routine_declarator")
    .return ($P689)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__routine_declarator"  :subid("163_1294592820.342") :method
.annotate 'line', 330
    $P691 = self."!PREFIX__!protoregex"("routine_declarator")
    .return ($P691)
.end


.namespace ["NQP";"Grammar"]
.sub "routine_declarator:sym<sub>"  :subid("164_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx693_tgt
    .local int rx693_pos
    .local int rx693_off
    .local int rx693_eos
    .local int rx693_rep
    .local pmc rx693_cur
    .local pmc rx693_debug
    (rx693_cur, rx693_pos, rx693_tgt, $I10) = self."!cursor_start"()
    getattribute rx693_debug, rx693_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx693_cur
    .local pmc match
    .lex "$/", match
    length rx693_eos, rx693_tgt
    gt rx693_pos, rx693_eos, rx693_done
    set rx693_off, 0
    lt rx693_pos, 2, rx693_start
    sub rx693_off, rx693_pos, 1
    substr rx693_tgt, rx693_tgt, rx693_off
  rx693_start:
    eq $I10, 1, rx693_restart
    if_null rx693_debug, debug_696
    rx693_cur."!cursor_debug"("START", "routine_declarator:sym<sub>")
  debug_696:
    $I10 = self.'from'()
    ne $I10, -1, rxscan697_done
    goto rxscan697_scan
  rxscan697_loop:
    ($P10) = rx693_cur."from"()
    inc $P10
    set rx693_pos, $P10
    ge rx693_pos, rx693_eos, rxscan697_done
  rxscan697_scan:
    set_addr $I10, rxscan697_loop
    rx693_cur."!mark_push"(0, rx693_pos, $I10)
  rxscan697_done:
.annotate 'line', 331
  # rx subcapture "sym"
    set_addr $I10, rxcap_698_fail
    rx693_cur."!mark_push"(0, rx693_pos, $I10)
  # rx literal  "sub"
    add $I11, rx693_pos, 3
    gt $I11, rx693_eos, rx693_fail
    sub $I11, rx693_pos, rx693_off
    substr $S10, rx693_tgt, $I11, 3
    ne $S10, "sub", rx693_fail
    add rx693_pos, 3
    set_addr $I10, rxcap_698_fail
    ($I12, $I11) = rx693_cur."!mark_peek"($I10)
    rx693_cur."!cursor_pos"($I11)
    ($P10) = rx693_cur."!cursor_start"()
    $P10."!cursor_pass"(rx693_pos, "")
    rx693_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_698_done
  rxcap_698_fail:
    goto rx693_fail
  rxcap_698_done:
  # rx subrule "routine_def" subtype=capture negate=
    rx693_cur."!cursor_pos"(rx693_pos)
    $P10 = rx693_cur."routine_def"()
    unless $P10, rx693_fail
    rx693_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("routine_def")
    rx693_pos = $P10."pos"()
  # rx pass
    rx693_cur."!cursor_pass"(rx693_pos, "routine_declarator:sym<sub>")
    if_null rx693_debug, debug_697
    rx693_cur."!cursor_debug"("PASS", "routine_declarator:sym<sub>", " at pos=", rx693_pos)
  debug_697:
    .return (rx693_cur)
  rx693_restart:
.annotate 'line', 4
    if_null rx693_debug, debug_698
    rx693_cur."!cursor_debug"("NEXT", "routine_declarator:sym<sub>")
  debug_698:
  rx693_fail:
    (rx693_rep, rx693_pos, $I10, $P10) = rx693_cur."!mark_fail"(0)
    lt rx693_pos, -1, rx693_done
    eq rx693_pos, -1, rx693_fail
    jump $I10
  rx693_done:
    rx693_cur."!cursor_fail"()
    if_null rx693_debug, debug_699
    rx693_cur."!cursor_debug"("FAIL", "routine_declarator:sym<sub>")
  debug_699:
    .return (rx693_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__routine_declarator:sym<sub>"  :subid("165_1294592820.342") :method
.annotate 'line', 4
    $P695 = self."!PREFIX__!subrule"("routine_def", "sub")
    new $P696, "ResizablePMCArray"
    push $P696, $P695
    .return ($P696)
.end


.namespace ["NQP";"Grammar"]
.sub "routine_declarator:sym<method>"  :subid("166_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx700_tgt
    .local int rx700_pos
    .local int rx700_off
    .local int rx700_eos
    .local int rx700_rep
    .local pmc rx700_cur
    .local pmc rx700_debug
    (rx700_cur, rx700_pos, rx700_tgt, $I10) = self."!cursor_start"()
    getattribute rx700_debug, rx700_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx700_cur
    .local pmc match
    .lex "$/", match
    length rx700_eos, rx700_tgt
    gt rx700_pos, rx700_eos, rx700_done
    set rx700_off, 0
    lt rx700_pos, 2, rx700_start
    sub rx700_off, rx700_pos, 1
    substr rx700_tgt, rx700_tgt, rx700_off
  rx700_start:
    eq $I10, 1, rx700_restart
    if_null rx700_debug, debug_700
    rx700_cur."!cursor_debug"("START", "routine_declarator:sym<method>")
  debug_700:
    $I10 = self.'from'()
    ne $I10, -1, rxscan704_done
    goto rxscan704_scan
  rxscan704_loop:
    ($P10) = rx700_cur."from"()
    inc $P10
    set rx700_pos, $P10
    ge rx700_pos, rx700_eos, rxscan704_done
  rxscan704_scan:
    set_addr $I10, rxscan704_loop
    rx700_cur."!mark_push"(0, rx700_pos, $I10)
  rxscan704_done:
.annotate 'line', 332
  # rx subcapture "sym"
    set_addr $I10, rxcap_705_fail
    rx700_cur."!mark_push"(0, rx700_pos, $I10)
  # rx literal  "method"
    add $I11, rx700_pos, 6
    gt $I11, rx700_eos, rx700_fail
    sub $I11, rx700_pos, rx700_off
    substr $S10, rx700_tgt, $I11, 6
    ne $S10, "method", rx700_fail
    add rx700_pos, 6
    set_addr $I10, rxcap_705_fail
    ($I12, $I11) = rx700_cur."!mark_peek"($I10)
    rx700_cur."!cursor_pos"($I11)
    ($P10) = rx700_cur."!cursor_start"()
    $P10."!cursor_pass"(rx700_pos, "")
    rx700_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_705_done
  rxcap_705_fail:
    goto rx700_fail
  rxcap_705_done:
  # rx subrule "method_def" subtype=capture negate=
    rx700_cur."!cursor_pos"(rx700_pos)
    $P10 = rx700_cur."method_def"()
    unless $P10, rx700_fail
    rx700_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("method_def")
    rx700_pos = $P10."pos"()
  # rx pass
    rx700_cur."!cursor_pass"(rx700_pos, "routine_declarator:sym<method>")
    if_null rx700_debug, debug_701
    rx700_cur."!cursor_debug"("PASS", "routine_declarator:sym<method>", " at pos=", rx700_pos)
  debug_701:
    .return (rx700_cur)
  rx700_restart:
.annotate 'line', 4
    if_null rx700_debug, debug_702
    rx700_cur."!cursor_debug"("NEXT", "routine_declarator:sym<method>")
  debug_702:
  rx700_fail:
    (rx700_rep, rx700_pos, $I10, $P10) = rx700_cur."!mark_fail"(0)
    lt rx700_pos, -1, rx700_done
    eq rx700_pos, -1, rx700_fail
    jump $I10
  rx700_done:
    rx700_cur."!cursor_fail"()
    if_null rx700_debug, debug_703
    rx700_cur."!cursor_debug"("FAIL", "routine_declarator:sym<method>")
  debug_703:
    .return (rx700_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__routine_declarator:sym<method>"  :subid("167_1294592820.342") :method
.annotate 'line', 4
    $P702 = self."!PREFIX__!subrule"("method_def", "method")
    new $P703, "ResizablePMCArray"
    push $P703, $P702
    .return ($P703)
.end


.namespace ["NQP";"Grammar"]
.sub "routine_def"  :subid("168_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx707_tgt
    .local int rx707_pos
    .local int rx707_off
    .local int rx707_eos
    .local int rx707_rep
    .local pmc rx707_cur
    .local pmc rx707_debug
    (rx707_cur, rx707_pos, rx707_tgt, $I10) = self."!cursor_start"()
    rx707_cur."!cursor_caparray"("sigil", "deflongname", "trait")
    getattribute rx707_debug, rx707_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx707_cur
    .local pmc match
    .lex "$/", match
    length rx707_eos, rx707_tgt
    gt rx707_pos, rx707_eos, rx707_done
    set rx707_off, 0
    lt rx707_pos, 2, rx707_start
    sub rx707_off, rx707_pos, 1
    substr rx707_tgt, rx707_tgt, rx707_off
  rx707_start:
    eq $I10, 1, rx707_restart
    if_null rx707_debug, debug_704
    rx707_cur."!cursor_debug"("START", "routine_def")
  debug_704:
    $I10 = self.'from'()
    ne $I10, -1, rxscan711_done
    goto rxscan711_scan
  rxscan711_loop:
    ($P10) = rx707_cur."from"()
    inc $P10
    set rx707_pos, $P10
    ge rx707_pos, rx707_eos, rxscan711_done
  rxscan711_scan:
    set_addr $I10, rxscan711_loop
    rx707_cur."!mark_push"(0, rx707_pos, $I10)
  rxscan711_done:
.annotate 'line', 334
  # rx subrule "ws" subtype=method negate=
    rx707_cur."!cursor_pos"(rx707_pos)
    $P10 = rx707_cur."ws"()
    unless $P10, rx707_fail
    rx707_pos = $P10."pos"()
.annotate 'line', 335
  # rx rxquantr713 ** 0..1
    set_addr $I10, rxquantr713_done
    rx707_cur."!mark_push"(0, rx707_pos, $I10)
  rxquantr713_loop:
  # rx subrule "ws" subtype=method negate=
    rx707_cur."!cursor_pos"(rx707_pos)
    $P10 = rx707_cur."ws"()
    unless $P10, rx707_fail
    rx707_pos = $P10."pos"()
  # rx subcapture "sigil"
    set_addr $I10, rxcap_716_fail
    rx707_cur."!mark_push"(0, rx707_pos, $I10)
  # rx rxquantr715 ** 0..1
    set_addr $I10, rxquantr715_done
    rx707_cur."!mark_push"(0, rx707_pos, $I10)
  rxquantr715_loop:
  # rx literal  "&"
    add $I11, rx707_pos, 1
    gt $I11, rx707_eos, rx707_fail
    sub $I11, rx707_pos, rx707_off
    ord $I11, rx707_tgt, $I11
    ne $I11, 38, rx707_fail
    add rx707_pos, 1
    set_addr $I10, rxquantr715_done
    (rx707_rep) = rx707_cur."!mark_commit"($I10)
  rxquantr715_done:
    set_addr $I10, rxcap_716_fail
    ($I12, $I11) = rx707_cur."!mark_peek"($I10)
    rx707_cur."!cursor_pos"($I11)
    ($P10) = rx707_cur."!cursor_start"()
    $P10."!cursor_pass"(rx707_pos, "")
    rx707_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sigil")
    goto rxcap_716_done
  rxcap_716_fail:
    goto rx707_fail
  rxcap_716_done:
  # rx subrule "deflongname" subtype=capture negate=
    rx707_cur."!cursor_pos"(rx707_pos)
    $P10 = rx707_cur."deflongname"()
    unless $P10, rx707_fail
    rx707_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("deflongname")
    rx707_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx707_cur."!cursor_pos"(rx707_pos)
    $P10 = rx707_cur."ws"()
    unless $P10, rx707_fail
    rx707_pos = $P10."pos"()
    set_addr $I10, rxquantr713_done
    (rx707_rep) = rx707_cur."!mark_commit"($I10)
  rxquantr713_done:
  # rx subrule "ws" subtype=method negate=
    rx707_cur."!cursor_pos"(rx707_pos)
    $P10 = rx707_cur."ws"()
    unless $P10, rx707_fail
    rx707_pos = $P10."pos"()
.annotate 'line', 336
  # rx subrule "newpad" subtype=method negate=
    rx707_cur."!cursor_pos"(rx707_pos)
    $P10 = rx707_cur."newpad"()
    unless $P10, rx707_fail
    rx707_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx707_cur."!cursor_pos"(rx707_pos)
    $P10 = rx707_cur."ws"()
    unless $P10, rx707_fail
    rx707_pos = $P10."pos"()
  alt720_0:
.annotate 'line', 337
    set_addr $I10, alt720_1
    rx707_cur."!mark_push"(0, rx707_pos, $I10)
  # rx subrule "ws" subtype=method negate=
    rx707_cur."!cursor_pos"(rx707_pos)
    $P10 = rx707_cur."ws"()
    unless $P10, rx707_fail
    rx707_pos = $P10."pos"()
  # rx literal  "("
    add $I11, rx707_pos, 1
    gt $I11, rx707_eos, rx707_fail
    sub $I11, rx707_pos, rx707_off
    ord $I11, rx707_tgt, $I11
    ne $I11, 40, rx707_fail
    add rx707_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx707_cur."!cursor_pos"(rx707_pos)
    $P10 = rx707_cur."ws"()
    unless $P10, rx707_fail
    rx707_pos = $P10."pos"()
  # rx subrule "signature" subtype=capture negate=
    rx707_cur."!cursor_pos"(rx707_pos)
    $P10 = rx707_cur."signature"()
    unless $P10, rx707_fail
    rx707_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("signature")
    rx707_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx707_cur."!cursor_pos"(rx707_pos)
    $P10 = rx707_cur."ws"()
    unless $P10, rx707_fail
    rx707_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx707_pos, 1
    gt $I11, rx707_eos, rx707_fail
    sub $I11, rx707_pos, rx707_off
    ord $I11, rx707_tgt, $I11
    ne $I11, 41, rx707_fail
    add rx707_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx707_cur."!cursor_pos"(rx707_pos)
    $P10 = rx707_cur."ws"()
    unless $P10, rx707_fail
    rx707_pos = $P10."pos"()
    goto alt720_end
  alt720_1:
.annotate 'line', 338
  # rx subrule "ws" subtype=method negate=
    rx707_cur."!cursor_pos"(rx707_pos)
    $P10 = rx707_cur."ws"()
    unless $P10, rx707_fail
    rx707_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx707_cur."!cursor_pos"(rx707_pos)
    $P10 = rx707_cur."panic"("Routine declaration requires a signature")
    unless $P10, rx707_fail
    rx707_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx707_cur."!cursor_pos"(rx707_pos)
    $P10 = rx707_cur."ws"()
    unless $P10, rx707_fail
    rx707_pos = $P10."pos"()
  alt720_end:
  # rx subrule "ws" subtype=method negate=
    rx707_cur."!cursor_pos"(rx707_pos)
    $P10 = rx707_cur."ws"()
    unless $P10, rx707_fail
    rx707_pos = $P10."pos"()
.annotate 'line', 339
  # rx rxquantr728 ** 0..*
    set_addr $I10, rxquantr728_done
    rx707_cur."!mark_push"(0, rx707_pos, $I10)
  rxquantr728_loop:
  # rx subrule "trait" subtype=capture negate=
    rx707_cur."!cursor_pos"(rx707_pos)
    $P10 = rx707_cur."trait"()
    unless $P10, rx707_fail
    goto rxsubrule729_pass
  rxsubrule729_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx707_fail
  rxsubrule729_pass:
    set_addr $I10, rxsubrule729_back
    rx707_cur."!mark_push"(0, rx707_pos, $I10, $P10)
    $P10."!cursor_names"("trait")
    rx707_pos = $P10."pos"()
    set_addr $I10, rxquantr728_done
    (rx707_rep) = rx707_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr728_done
    rx707_cur."!mark_push"(rx707_rep, rx707_pos, $I10)
    goto rxquantr728_loop
  rxquantr728_done:
  # rx subrule "ws" subtype=method negate=
    rx707_cur."!cursor_pos"(rx707_pos)
    $P10 = rx707_cur."ws"()
    unless $P10, rx707_fail
    rx707_pos = $P10."pos"()
.annotate 'line', 340
  # rx subrule "blockoid" subtype=capture negate=
    rx707_cur."!cursor_pos"(rx707_pos)
    $P10 = rx707_cur."blockoid"()
    unless $P10, rx707_fail
    rx707_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("blockoid")
    rx707_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx707_cur."!cursor_pos"(rx707_pos)
    $P10 = rx707_cur."ws"()
    unless $P10, rx707_fail
    rx707_pos = $P10."pos"()
.annotate 'line', 334
  # rx pass
    rx707_cur."!cursor_pass"(rx707_pos, "routine_def")
    if_null rx707_debug, debug_705
    rx707_cur."!cursor_debug"("PASS", "routine_def", " at pos=", rx707_pos)
  debug_705:
    .return (rx707_cur)
  rx707_restart:
.annotate 'line', 4
    if_null rx707_debug, debug_706
    rx707_cur."!cursor_debug"("NEXT", "routine_def")
  debug_706:
  rx707_fail:
    (rx707_rep, rx707_pos, $I10, $P10) = rx707_cur."!mark_fail"(0)
    lt rx707_pos, -1, rx707_done
    eq rx707_pos, -1, rx707_fail
    jump $I10
  rx707_done:
    rx707_cur."!cursor_fail"()
    if_null rx707_debug, debug_707
    rx707_cur."!cursor_debug"("FAIL", "routine_def")
  debug_707:
    .return (rx707_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__routine_def"  :subid("169_1294592820.342") :method
.annotate 'line', 4
    $P709 = self."!PREFIX__!subrule"("ws", "")
    new $P710, "ResizablePMCArray"
    push $P710, $P709
    .return ($P710)
.end


.namespace ["NQP";"Grammar"]
.sub "method_def"  :subid("170_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx733_tgt
    .local int rx733_pos
    .local int rx733_off
    .local int rx733_eos
    .local int rx733_rep
    .local pmc rx733_cur
    .local pmc rx733_debug
    (rx733_cur, rx733_pos, rx733_tgt, $I10) = self."!cursor_start"()
    rx733_cur."!cursor_caparray"("deflongname", "trait")
    getattribute rx733_debug, rx733_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx733_cur
    .local pmc match
    .lex "$/", match
    length rx733_eos, rx733_tgt
    gt rx733_pos, rx733_eos, rx733_done
    set rx733_off, 0
    lt rx733_pos, 2, rx733_start
    sub rx733_off, rx733_pos, 1
    substr rx733_tgt, rx733_tgt, rx733_off
  rx733_start:
    eq $I10, 1, rx733_restart
    if_null rx733_debug, debug_708
    rx733_cur."!cursor_debug"("START", "method_def")
  debug_708:
    $I10 = self.'from'()
    ne $I10, -1, rxscan737_done
    goto rxscan737_scan
  rxscan737_loop:
    ($P10) = rx733_cur."from"()
    inc $P10
    set rx733_pos, $P10
    ge rx733_pos, rx733_eos, rxscan737_done
  rxscan737_scan:
    set_addr $I10, rxscan737_loop
    rx733_cur."!mark_push"(0, rx733_pos, $I10)
  rxscan737_done:
.annotate 'line', 343
  # rx subrule "ws" subtype=method negate=
    rx733_cur."!cursor_pos"(rx733_pos)
    $P10 = rx733_cur."ws"()
    unless $P10, rx733_fail
    rx733_pos = $P10."pos"()
.annotate 'line', 344
  # rx rxquantr739 ** 0..1
    set_addr $I10, rxquantr739_done
    rx733_cur."!mark_push"(0, rx733_pos, $I10)
  rxquantr739_loop:
  # rx subrule "deflongname" subtype=capture negate=
    rx733_cur."!cursor_pos"(rx733_pos)
    $P10 = rx733_cur."deflongname"()
    unless $P10, rx733_fail
    goto rxsubrule740_pass
  rxsubrule740_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx733_fail
  rxsubrule740_pass:
    set_addr $I10, rxsubrule740_back
    rx733_cur."!mark_push"(0, rx733_pos, $I10, $P10)
    $P10."!cursor_names"("deflongname")
    rx733_pos = $P10."pos"()
    set_addr $I10, rxquantr739_done
    (rx733_rep) = rx733_cur."!mark_commit"($I10)
  rxquantr739_done:
  # rx subrule "ws" subtype=method negate=
    rx733_cur."!cursor_pos"(rx733_pos)
    $P10 = rx733_cur."ws"()
    unless $P10, rx733_fail
    rx733_pos = $P10."pos"()
.annotate 'line', 345
  # rx subrule "newpad" subtype=method negate=
    rx733_cur."!cursor_pos"(rx733_pos)
    $P10 = rx733_cur."newpad"()
    unless $P10, rx733_fail
    rx733_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx733_cur."!cursor_pos"(rx733_pos)
    $P10 = rx733_cur."ws"()
    unless $P10, rx733_fail
    rx733_pos = $P10."pos"()
  alt743_0:
.annotate 'line', 346
    set_addr $I10, alt743_1
    rx733_cur."!mark_push"(0, rx733_pos, $I10)
  # rx subrule "ws" subtype=method negate=
    rx733_cur."!cursor_pos"(rx733_pos)
    $P10 = rx733_cur."ws"()
    unless $P10, rx733_fail
    rx733_pos = $P10."pos"()
  # rx literal  "("
    add $I11, rx733_pos, 1
    gt $I11, rx733_eos, rx733_fail
    sub $I11, rx733_pos, rx733_off
    ord $I11, rx733_tgt, $I11
    ne $I11, 40, rx733_fail
    add rx733_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx733_cur."!cursor_pos"(rx733_pos)
    $P10 = rx733_cur."ws"()
    unless $P10, rx733_fail
    rx733_pos = $P10."pos"()
  # rx subrule "signature" subtype=capture negate=
    rx733_cur."!cursor_pos"(rx733_pos)
    $P10 = rx733_cur."signature"()
    unless $P10, rx733_fail
    rx733_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("signature")
    rx733_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx733_cur."!cursor_pos"(rx733_pos)
    $P10 = rx733_cur."ws"()
    unless $P10, rx733_fail
    rx733_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx733_pos, 1
    gt $I11, rx733_eos, rx733_fail
    sub $I11, rx733_pos, rx733_off
    ord $I11, rx733_tgt, $I11
    ne $I11, 41, rx733_fail
    add rx733_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx733_cur."!cursor_pos"(rx733_pos)
    $P10 = rx733_cur."ws"()
    unless $P10, rx733_fail
    rx733_pos = $P10."pos"()
    goto alt743_end
  alt743_1:
.annotate 'line', 347
  # rx subrule "ws" subtype=method negate=
    rx733_cur."!cursor_pos"(rx733_pos)
    $P10 = rx733_cur."ws"()
    unless $P10, rx733_fail
    rx733_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx733_cur."!cursor_pos"(rx733_pos)
    $P10 = rx733_cur."panic"("Routine declaration requires a signature")
    unless $P10, rx733_fail
    rx733_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx733_cur."!cursor_pos"(rx733_pos)
    $P10 = rx733_cur."ws"()
    unless $P10, rx733_fail
    rx733_pos = $P10."pos"()
  alt743_end:
  # rx subrule "ws" subtype=method negate=
    rx733_cur."!cursor_pos"(rx733_pos)
    $P10 = rx733_cur."ws"()
    unless $P10, rx733_fail
    rx733_pos = $P10."pos"()
.annotate 'line', 348
  # rx rxquantr751 ** 0..*
    set_addr $I10, rxquantr751_done
    rx733_cur."!mark_push"(0, rx733_pos, $I10)
  rxquantr751_loop:
  # rx subrule "trait" subtype=capture negate=
    rx733_cur."!cursor_pos"(rx733_pos)
    $P10 = rx733_cur."trait"()
    unless $P10, rx733_fail
    goto rxsubrule752_pass
  rxsubrule752_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx733_fail
  rxsubrule752_pass:
    set_addr $I10, rxsubrule752_back
    rx733_cur."!mark_push"(0, rx733_pos, $I10, $P10)
    $P10."!cursor_names"("trait")
    rx733_pos = $P10."pos"()
    set_addr $I10, rxquantr751_done
    (rx733_rep) = rx733_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr751_done
    rx733_cur."!mark_push"(rx733_rep, rx733_pos, $I10)
    goto rxquantr751_loop
  rxquantr751_done:
  # rx subrule "ws" subtype=method negate=
    rx733_cur."!cursor_pos"(rx733_pos)
    $P10 = rx733_cur."ws"()
    unless $P10, rx733_fail
    rx733_pos = $P10."pos"()
.annotate 'line', 349
  # rx subrule "blockoid" subtype=capture negate=
    rx733_cur."!cursor_pos"(rx733_pos)
    $P10 = rx733_cur."blockoid"()
    unless $P10, rx733_fail
    rx733_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("blockoid")
    rx733_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx733_cur."!cursor_pos"(rx733_pos)
    $P10 = rx733_cur."ws"()
    unless $P10, rx733_fail
    rx733_pos = $P10."pos"()
.annotate 'line', 343
  # rx pass
    rx733_cur."!cursor_pass"(rx733_pos, "method_def")
    if_null rx733_debug, debug_709
    rx733_cur."!cursor_debug"("PASS", "method_def", " at pos=", rx733_pos)
  debug_709:
    .return (rx733_cur)
  rx733_restart:
.annotate 'line', 4
    if_null rx733_debug, debug_710
    rx733_cur."!cursor_debug"("NEXT", "method_def")
  debug_710:
  rx733_fail:
    (rx733_rep, rx733_pos, $I10, $P10) = rx733_cur."!mark_fail"(0)
    lt rx733_pos, -1, rx733_done
    eq rx733_pos, -1, rx733_fail
    jump $I10
  rx733_done:
    rx733_cur."!cursor_fail"()
    if_null rx733_debug, debug_711
    rx733_cur."!cursor_debug"("FAIL", "method_def")
  debug_711:
    .return (rx733_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__method_def"  :subid("171_1294592820.342") :method
.annotate 'line', 4
    $P735 = self."!PREFIX__!subrule"("ws", "")
    new $P736, "ResizablePMCArray"
    push $P736, $P735
    .return ($P736)
.end


.namespace ["NQP";"Grammar"]
.sub "multi_declarator"  :subid("172_1294592820.342") :method
.annotate 'line', 352
    $P756 = self."!protoregex"("multi_declarator")
    .return ($P756)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__multi_declarator"  :subid("173_1294592820.342") :method
.annotate 'line', 352
    $P758 = self."!PREFIX__!protoregex"("multi_declarator")
    .return ($P758)
.end


.namespace ["NQP";"Grammar"]
.sub "multi_declarator:sym<multi>"  :subid("174_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 354
    new $P760, "Undef"
    .lex "$*MULTINESS", $P760
.annotate 'line', 4
    .local string rx761_tgt
    .local int rx761_pos
    .local int rx761_off
    .local int rx761_eos
    .local int rx761_rep
    .local pmc rx761_cur
    .local pmc rx761_debug
    (rx761_cur, rx761_pos, rx761_tgt, $I10) = self."!cursor_start"()
    getattribute rx761_debug, rx761_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx761_cur
    .local pmc match
    .lex "$/", match
    length rx761_eos, rx761_tgt
    gt rx761_pos, rx761_eos, rx761_done
    set rx761_off, 0
    lt rx761_pos, 2, rx761_start
    sub rx761_off, rx761_pos, 1
    substr rx761_tgt, rx761_tgt, rx761_off
  rx761_start:
    eq $I10, 1, rx761_restart
    if_null rx761_debug, debug_712
    rx761_cur."!cursor_debug"("START", "multi_declarator:sym<multi>")
  debug_712:
    $I10 = self.'from'()
    ne $I10, -1, rxscan765_done
    goto rxscan765_scan
  rxscan765_loop:
    ($P10) = rx761_cur."from"()
    inc $P10
    set rx761_pos, $P10
    ge rx761_pos, rx761_eos, rxscan765_done
  rxscan765_scan:
    set_addr $I10, rxscan765_loop
    rx761_cur."!mark_push"(0, rx761_pos, $I10)
  rxscan765_done:
.annotate 'line', 354
    rx761_cur."!cursor_pos"(rx761_pos)
    new $P766, "String"
    assign $P766, "multi"
    store_lex "$*MULTINESS", $P766
.annotate 'line', 355
  # rx subcapture "sym"
    set_addr $I10, rxcap_767_fail
    rx761_cur."!mark_push"(0, rx761_pos, $I10)
  # rx literal  "multi"
    add $I11, rx761_pos, 5
    gt $I11, rx761_eos, rx761_fail
    sub $I11, rx761_pos, rx761_off
    substr $S10, rx761_tgt, $I11, 5
    ne $S10, "multi", rx761_fail
    add rx761_pos, 5
    set_addr $I10, rxcap_767_fail
    ($I12, $I11) = rx761_cur."!mark_peek"($I10)
    rx761_cur."!cursor_pos"($I11)
    ($P10) = rx761_cur."!cursor_start"()
    $P10."!cursor_pass"(rx761_pos, "")
    rx761_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_767_done
  rxcap_767_fail:
    goto rx761_fail
  rxcap_767_done:
.annotate 'line', 356
  # rx subrule "ws" subtype=method negate=
    rx761_cur."!cursor_pos"(rx761_pos)
    $P10 = rx761_cur."ws"()
    unless $P10, rx761_fail
    rx761_pos = $P10."pos"()
  alt768_0:
    set_addr $I10, alt768_1
    rx761_cur."!mark_push"(0, rx761_pos, $I10)
  # rx subrule "declarator" subtype=capture negate=
    rx761_cur."!cursor_pos"(rx761_pos)
    $P10 = rx761_cur."declarator"()
    unless $P10, rx761_fail
    rx761_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("declarator")
    rx761_pos = $P10."pos"()
    goto alt768_end
  alt768_1:
    set_addr $I10, alt768_2
    rx761_cur."!mark_push"(0, rx761_pos, $I10)
  # rx subrule "routine_def" subtype=capture negate=
    rx761_cur."!cursor_pos"(rx761_pos)
    $P10 = rx761_cur."routine_def"()
    unless $P10, rx761_fail
    rx761_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("routine_def")
    rx761_pos = $P10."pos"()
    goto alt768_end
  alt768_2:
  # rx subrule "panic" subtype=method negate=
    rx761_cur."!cursor_pos"(rx761_pos)
    $P10 = rx761_cur."panic"("Malformed multi")
    unless $P10, rx761_fail
    rx761_pos = $P10."pos"()
  alt768_end:
.annotate 'line', 353
  # rx pass
    rx761_cur."!cursor_pass"(rx761_pos, "multi_declarator:sym<multi>")
    if_null rx761_debug, debug_713
    rx761_cur."!cursor_debug"("PASS", "multi_declarator:sym<multi>", " at pos=", rx761_pos)
  debug_713:
    .return (rx761_cur)
  rx761_restart:
.annotate 'line', 4
    if_null rx761_debug, debug_714
    rx761_cur."!cursor_debug"("NEXT", "multi_declarator:sym<multi>")
  debug_714:
  rx761_fail:
    (rx761_rep, rx761_pos, $I10, $P10) = rx761_cur."!mark_fail"(0)
    lt rx761_pos, -1, rx761_done
    eq rx761_pos, -1, rx761_fail
    jump $I10
  rx761_done:
    rx761_cur."!cursor_fail"()
    if_null rx761_debug, debug_715
    rx761_cur."!cursor_debug"("FAIL", "multi_declarator:sym<multi>")
  debug_715:
    .return (rx761_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__multi_declarator:sym<multi>"  :subid("175_1294592820.342") :method
.annotate 'line', 4
    $P763 = self."!PREFIX__!subrule"("ws", "multi")
    new $P764, "ResizablePMCArray"
    push $P764, $P763
    .return ($P764)
.end


.namespace ["NQP";"Grammar"]
.sub "multi_declarator:sym<null>"  :subid("176_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 359
    new $P770, "Undef"
    .lex "$*MULTINESS", $P770
.annotate 'line', 4
    .local string rx771_tgt
    .local int rx771_pos
    .local int rx771_off
    .local int rx771_eos
    .local int rx771_rep
    .local pmc rx771_cur
    .local pmc rx771_debug
    (rx771_cur, rx771_pos, rx771_tgt, $I10) = self."!cursor_start"()
    getattribute rx771_debug, rx771_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx771_cur
    .local pmc match
    .lex "$/", match
    length rx771_eos, rx771_tgt
    gt rx771_pos, rx771_eos, rx771_done
    set rx771_off, 0
    lt rx771_pos, 2, rx771_start
    sub rx771_off, rx771_pos, 1
    substr rx771_tgt, rx771_tgt, rx771_off
  rx771_start:
    eq $I10, 1, rx771_restart
    if_null rx771_debug, debug_716
    rx771_cur."!cursor_debug"("START", "multi_declarator:sym<null>")
  debug_716:
    $I10 = self.'from'()
    ne $I10, -1, rxscan775_done
    goto rxscan775_scan
  rxscan775_loop:
    ($P10) = rx771_cur."from"()
    inc $P10
    set rx771_pos, $P10
    ge rx771_pos, rx771_eos, rxscan775_done
  rxscan775_scan:
    set_addr $I10, rxscan775_loop
    rx771_cur."!mark_push"(0, rx771_pos, $I10)
  rxscan775_done:
.annotate 'line', 359
    rx771_cur."!cursor_pos"(rx771_pos)
    new $P776, "String"
    assign $P776, ""
    store_lex "$*MULTINESS", $P776
.annotate 'line', 360
  # rx subrule "declarator" subtype=capture negate=
    rx771_cur."!cursor_pos"(rx771_pos)
    $P10 = rx771_cur."declarator"()
    unless $P10, rx771_fail
    rx771_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("declarator")
    rx771_pos = $P10."pos"()
.annotate 'line', 358
  # rx pass
    rx771_cur."!cursor_pass"(rx771_pos, "multi_declarator:sym<null>")
    if_null rx771_debug, debug_717
    rx771_cur."!cursor_debug"("PASS", "multi_declarator:sym<null>", " at pos=", rx771_pos)
  debug_717:
    .return (rx771_cur)
  rx771_restart:
.annotate 'line', 4
    if_null rx771_debug, debug_718
    rx771_cur."!cursor_debug"("NEXT", "multi_declarator:sym<null>")
  debug_718:
  rx771_fail:
    (rx771_rep, rx771_pos, $I10, $P10) = rx771_cur."!mark_fail"(0)
    lt rx771_pos, -1, rx771_done
    eq rx771_pos, -1, rx771_fail
    jump $I10
  rx771_done:
    rx771_cur."!cursor_fail"()
    if_null rx771_debug, debug_719
    rx771_cur."!cursor_debug"("FAIL", "multi_declarator:sym<null>")
  debug_719:
    .return (rx771_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__multi_declarator:sym<null>"  :subid("177_1294592820.342") :method
.annotate 'line', 4
    $P773 = self."!PREFIX__!subrule"("declarator", "")
    new $P774, "ResizablePMCArray"
    push $P774, $P773
    .return ($P774)
.end


.namespace ["NQP";"Grammar"]
.sub "signature"  :subid("178_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx778_tgt
    .local int rx778_pos
    .local int rx778_off
    .local int rx778_eos
    .local int rx778_rep
    .local pmc rx778_cur
    .local pmc rx778_debug
    (rx778_cur, rx778_pos, rx778_tgt, $I10) = self."!cursor_start"()
    rx778_cur."!cursor_caparray"("parameter")
    getattribute rx778_debug, rx778_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx778_cur
    .local pmc match
    .lex "$/", match
    length rx778_eos, rx778_tgt
    gt rx778_pos, rx778_eos, rx778_done
    set rx778_off, 0
    lt rx778_pos, 2, rx778_start
    sub rx778_off, rx778_pos, 1
    substr rx778_tgt, rx778_tgt, rx778_off
  rx778_start:
    eq $I10, 1, rx778_restart
    if_null rx778_debug, debug_720
    rx778_cur."!cursor_debug"("START", "signature")
  debug_720:
    $I10 = self.'from'()
    ne $I10, -1, rxscan781_done
    goto rxscan781_scan
  rxscan781_loop:
    ($P10) = rx778_cur."from"()
    inc $P10
    set rx778_pos, $P10
    ge rx778_pos, rx778_eos, rxscan781_done
  rxscan781_scan:
    set_addr $I10, rxscan781_loop
    rx778_cur."!mark_push"(0, rx778_pos, $I10)
  rxscan781_done:
.annotate 'line', 363
  # rx rxquantr782 ** 0..1
    set_addr $I10, rxquantr782_done
    rx778_cur."!mark_push"(0, rx778_pos, $I10)
  rxquantr782_loop:
  # rx rxquantr783 ** 1..*
    set_addr $I10, rxquantr783_done
    rx778_cur."!mark_push"(0, -1, $I10)
  rxquantr783_loop:
  # rx subrule "ws" subtype=method negate=
    rx778_cur."!cursor_pos"(rx778_pos)
    $P10 = rx778_cur."ws"()
    unless $P10, rx778_fail
    rx778_pos = $P10."pos"()
  # rx subrule "parameter" subtype=capture negate=
    rx778_cur."!cursor_pos"(rx778_pos)
    $P10 = rx778_cur."parameter"()
    unless $P10, rx778_fail
    rx778_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("parameter")
    rx778_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx778_cur."!cursor_pos"(rx778_pos)
    $P10 = rx778_cur."ws"()
    unless $P10, rx778_fail
    rx778_pos = $P10."pos"()
    set_addr $I10, rxquantr783_done
    (rx778_rep) = rx778_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr783_done
    rx778_cur."!mark_push"(rx778_rep, rx778_pos, $I10)
  # rx literal  ","
    add $I11, rx778_pos, 1
    gt $I11, rx778_eos, rx778_fail
    sub $I11, rx778_pos, rx778_off
    ord $I11, rx778_tgt, $I11
    ne $I11, 44, rx778_fail
    add rx778_pos, 1
    goto rxquantr783_loop
  rxquantr783_done:
    set_addr $I10, rxquantr782_done
    (rx778_rep) = rx778_cur."!mark_commit"($I10)
  rxquantr782_done:
  # rx pass
    rx778_cur."!cursor_pass"(rx778_pos, "signature")
    if_null rx778_debug, debug_721
    rx778_cur."!cursor_debug"("PASS", "signature", " at pos=", rx778_pos)
  debug_721:
    .return (rx778_cur)
  rx778_restart:
.annotate 'line', 4
    if_null rx778_debug, debug_722
    rx778_cur."!cursor_debug"("NEXT", "signature")
  debug_722:
  rx778_fail:
    (rx778_rep, rx778_pos, $I10, $P10) = rx778_cur."!mark_fail"(0)
    lt rx778_pos, -1, rx778_done
    eq rx778_pos, -1, rx778_fail
    jump $I10
  rx778_done:
    rx778_cur."!cursor_fail"()
    if_null rx778_debug, debug_723
    rx778_cur."!cursor_debug"("FAIL", "signature")
  debug_723:
    .return (rx778_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__signature"  :subid("179_1294592820.342") :method
.annotate 'line', 4
    new $P780, "ResizablePMCArray"
    push $P780, ""
    .return ($P780)
.end


.namespace ["NQP";"Grammar"]
.sub "parameter"  :subid("180_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx785_tgt
    .local int rx785_pos
    .local int rx785_off
    .local int rx785_eos
    .local int rx785_rep
    .local pmc rx785_cur
    .local pmc rx785_debug
    (rx785_cur, rx785_pos, rx785_tgt, $I10) = self."!cursor_start"()
    rx785_cur."!cursor_caparray"("typename", "default_value")
    getattribute rx785_debug, rx785_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx785_cur
    .local pmc match
    .lex "$/", match
    length rx785_eos, rx785_tgt
    gt rx785_pos, rx785_eos, rx785_done
    set rx785_off, 0
    lt rx785_pos, 2, rx785_start
    sub rx785_off, rx785_pos, 1
    substr rx785_tgt, rx785_tgt, rx785_off
  rx785_start:
    eq $I10, 1, rx785_restart
    if_null rx785_debug, debug_724
    rx785_cur."!cursor_debug"("START", "parameter")
  debug_724:
    $I10 = self.'from'()
    ne $I10, -1, rxscan788_done
    goto rxscan788_scan
  rxscan788_loop:
    ($P10) = rx785_cur."from"()
    inc $P10
    set rx785_pos, $P10
    ge rx785_pos, rx785_eos, rxscan788_done
  rxscan788_scan:
    set_addr $I10, rxscan788_loop
    rx785_cur."!mark_push"(0, rx785_pos, $I10)
  rxscan788_done:
.annotate 'line', 366
  # rx rxquantr789 ** 0..*
    set_addr $I10, rxquantr789_done
    rx785_cur."!mark_push"(0, rx785_pos, $I10)
  rxquantr789_loop:
  # rx subrule "typename" subtype=capture negate=
    rx785_cur."!cursor_pos"(rx785_pos)
    $P10 = rx785_cur."typename"()
    unless $P10, rx785_fail
    rx785_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("typename")
    rx785_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx785_cur."!cursor_pos"(rx785_pos)
    $P10 = rx785_cur."ws"()
    unless $P10, rx785_fail
    rx785_pos = $P10."pos"()
    set_addr $I10, rxquantr789_done
    (rx785_rep) = rx785_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr789_done
    rx785_cur."!mark_push"(rx785_rep, rx785_pos, $I10)
    goto rxquantr789_loop
  rxquantr789_done:
  alt790_0:
.annotate 'line', 367
    set_addr $I10, alt790_1
    rx785_cur."!mark_push"(0, rx785_pos, $I10)
.annotate 'line', 368
  # rx subcapture "quant"
    set_addr $I10, rxcap_791_fail
    rx785_cur."!mark_push"(0, rx785_pos, $I10)
  # rx literal  "*"
    add $I11, rx785_pos, 1
    gt $I11, rx785_eos, rx785_fail
    sub $I11, rx785_pos, rx785_off
    ord $I11, rx785_tgt, $I11
    ne $I11, 42, rx785_fail
    add rx785_pos, 1
    set_addr $I10, rxcap_791_fail
    ($I12, $I11) = rx785_cur."!mark_peek"($I10)
    rx785_cur."!cursor_pos"($I11)
    ($P10) = rx785_cur."!cursor_start"()
    $P10."!cursor_pass"(rx785_pos, "")
    rx785_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quant")
    goto rxcap_791_done
  rxcap_791_fail:
    goto rx785_fail
  rxcap_791_done:
  # rx subrule "param_var" subtype=capture negate=
    rx785_cur."!cursor_pos"(rx785_pos)
    $P10 = rx785_cur."param_var"()
    unless $P10, rx785_fail
    rx785_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("param_var")
    rx785_pos = $P10."pos"()
    goto alt790_end
  alt790_1:
  alt792_0:
.annotate 'line', 369
    set_addr $I10, alt792_1
    rx785_cur."!mark_push"(0, rx785_pos, $I10)
  # rx subrule "param_var" subtype=capture negate=
    rx785_cur."!cursor_pos"(rx785_pos)
    $P10 = rx785_cur."param_var"()
    unless $P10, rx785_fail
    rx785_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("param_var")
    rx785_pos = $P10."pos"()
    goto alt792_end
  alt792_1:
  # rx subrule "named_param" subtype=capture negate=
    rx785_cur."!cursor_pos"(rx785_pos)
    $P10 = rx785_cur."named_param"()
    unless $P10, rx785_fail
    rx785_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("named_param")
    rx785_pos = $P10."pos"()
  alt792_end:
  # rx subcapture "quant"
    set_addr $I10, rxcap_794_fail
    rx785_cur."!mark_push"(0, rx785_pos, $I10)
  alt793_0:
    set_addr $I10, alt793_1
    rx785_cur."!mark_push"(0, rx785_pos, $I10)
  # rx literal  "?"
    add $I11, rx785_pos, 1
    gt $I11, rx785_eos, rx785_fail
    sub $I11, rx785_pos, rx785_off
    ord $I11, rx785_tgt, $I11
    ne $I11, 63, rx785_fail
    add rx785_pos, 1
    goto alt793_end
  alt793_1:
    set_addr $I10, alt793_2
    rx785_cur."!mark_push"(0, rx785_pos, $I10)
  # rx literal  "!"
    add $I11, rx785_pos, 1
    gt $I11, rx785_eos, rx785_fail
    sub $I11, rx785_pos, rx785_off
    ord $I11, rx785_tgt, $I11
    ne $I11, 33, rx785_fail
    add rx785_pos, 1
    goto alt793_end
  alt793_2:
  alt793_end:
    set_addr $I10, rxcap_794_fail
    ($I12, $I11) = rx785_cur."!mark_peek"($I10)
    rx785_cur."!cursor_pos"($I11)
    ($P10) = rx785_cur."!cursor_start"()
    $P10."!cursor_pass"(rx785_pos, "")
    rx785_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quant")
    goto rxcap_794_done
  rxcap_794_fail:
    goto rx785_fail
  rxcap_794_done:
  alt790_end:
.annotate 'line', 371
  # rx rxquantr795 ** 0..1
    set_addr $I10, rxquantr795_done
    rx785_cur."!mark_push"(0, rx785_pos, $I10)
  rxquantr795_loop:
  # rx subrule "default_value" subtype=capture negate=
    rx785_cur."!cursor_pos"(rx785_pos)
    $P10 = rx785_cur."default_value"()
    unless $P10, rx785_fail
    goto rxsubrule796_pass
  rxsubrule796_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx785_fail
  rxsubrule796_pass:
    set_addr $I10, rxsubrule796_back
    rx785_cur."!mark_push"(0, rx785_pos, $I10, $P10)
    $P10."!cursor_names"("default_value")
    rx785_pos = $P10."pos"()
    set_addr $I10, rxquantr795_done
    (rx785_rep) = rx785_cur."!mark_commit"($I10)
  rxquantr795_done:
.annotate 'line', 365
  # rx pass
    rx785_cur."!cursor_pass"(rx785_pos, "parameter")
    if_null rx785_debug, debug_725
    rx785_cur."!cursor_debug"("PASS", "parameter", " at pos=", rx785_pos)
  debug_725:
    .return (rx785_cur)
  rx785_restart:
.annotate 'line', 4
    if_null rx785_debug, debug_726
    rx785_cur."!cursor_debug"("NEXT", "parameter")
  debug_726:
  rx785_fail:
    (rx785_rep, rx785_pos, $I10, $P10) = rx785_cur."!mark_fail"(0)
    lt rx785_pos, -1, rx785_done
    eq rx785_pos, -1, rx785_fail
    jump $I10
  rx785_done:
    rx785_cur."!cursor_fail"()
    if_null rx785_debug, debug_727
    rx785_cur."!cursor_debug"("FAIL", "parameter")
  debug_727:
    .return (rx785_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__parameter"  :subid("181_1294592820.342") :method
.annotate 'line', 4
    new $P787, "ResizablePMCArray"
    push $P787, ""
    .return ($P787)
.end


.namespace ["NQP";"Grammar"]
.sub "param_var"  :subid("182_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx798_tgt
    .local int rx798_pos
    .local int rx798_off
    .local int rx798_eos
    .local int rx798_rep
    .local pmc rx798_cur
    .local pmc rx798_debug
    (rx798_cur, rx798_pos, rx798_tgt, $I10) = self."!cursor_start"()
    rx798_cur."!cursor_caparray"("twigil")
    getattribute rx798_debug, rx798_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx798_cur
    .local pmc match
    .lex "$/", match
    length rx798_eos, rx798_tgt
    gt rx798_pos, rx798_eos, rx798_done
    set rx798_off, 0
    lt rx798_pos, 2, rx798_start
    sub rx798_off, rx798_pos, 1
    substr rx798_tgt, rx798_tgt, rx798_off
  rx798_start:
    eq $I10, 1, rx798_restart
    if_null rx798_debug, debug_728
    rx798_cur."!cursor_debug"("START", "param_var")
  debug_728:
    $I10 = self.'from'()
    ne $I10, -1, rxscan802_done
    goto rxscan802_scan
  rxscan802_loop:
    ($P10) = rx798_cur."from"()
    inc $P10
    set rx798_pos, $P10
    ge rx798_pos, rx798_eos, rxscan802_done
  rxscan802_scan:
    set_addr $I10, rxscan802_loop
    rx798_cur."!mark_push"(0, rx798_pos, $I10)
  rxscan802_done:
.annotate 'line', 375
  # rx subrule "sigil" subtype=capture negate=
    rx798_cur."!cursor_pos"(rx798_pos)
    $P10 = rx798_cur."sigil"()
    unless $P10, rx798_fail
    rx798_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sigil")
    rx798_pos = $P10."pos"()
  # rx rxquantr803 ** 0..1
    set_addr $I10, rxquantr803_done
    rx798_cur."!mark_push"(0, rx798_pos, $I10)
  rxquantr803_loop:
  # rx subrule "twigil" subtype=capture negate=
    rx798_cur."!cursor_pos"(rx798_pos)
    $P10 = rx798_cur."twigil"()
    unless $P10, rx798_fail
    goto rxsubrule804_pass
  rxsubrule804_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx798_fail
  rxsubrule804_pass:
    set_addr $I10, rxsubrule804_back
    rx798_cur."!mark_push"(0, rx798_pos, $I10, $P10)
    $P10."!cursor_names"("twigil")
    rx798_pos = $P10."pos"()
    set_addr $I10, rxquantr803_done
    (rx798_rep) = rx798_cur."!mark_commit"($I10)
  rxquantr803_done:
  alt805_0:
.annotate 'line', 376
    set_addr $I10, alt805_1
    rx798_cur."!mark_push"(0, rx798_pos, $I10)
  # rx subrule "ident" subtype=capture negate=
    rx798_cur."!cursor_pos"(rx798_pos)
    $P10 = rx798_cur."ident"()
    unless $P10, rx798_fail
    rx798_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    rx798_pos = $P10."pos"()
    goto alt805_end
  alt805_1:
  # rx subcapture "name"
    set_addr $I10, rxcap_806_fail
    rx798_cur."!mark_push"(0, rx798_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx798_pos, rx798_eos, rx798_fail
    sub $I10, rx798_pos, rx798_off
    substr $S10, rx798_tgt, $I10, 1
    index $I11, "/!", $S10
    lt $I11, 0, rx798_fail
    inc rx798_pos
    set_addr $I10, rxcap_806_fail
    ($I12, $I11) = rx798_cur."!mark_peek"($I10)
    rx798_cur."!cursor_pos"($I11)
    ($P10) = rx798_cur."!cursor_start"()
    $P10."!cursor_pass"(rx798_pos, "")
    rx798_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    goto rxcap_806_done
  rxcap_806_fail:
    goto rx798_fail
  rxcap_806_done:
  alt805_end:
.annotate 'line', 374
  # rx pass
    rx798_cur."!cursor_pass"(rx798_pos, "param_var")
    if_null rx798_debug, debug_729
    rx798_cur."!cursor_debug"("PASS", "param_var", " at pos=", rx798_pos)
  debug_729:
    .return (rx798_cur)
  rx798_restart:
.annotate 'line', 4
    if_null rx798_debug, debug_730
    rx798_cur."!cursor_debug"("NEXT", "param_var")
  debug_730:
  rx798_fail:
    (rx798_rep, rx798_pos, $I10, $P10) = rx798_cur."!mark_fail"(0)
    lt rx798_pos, -1, rx798_done
    eq rx798_pos, -1, rx798_fail
    jump $I10
  rx798_done:
    rx798_cur."!cursor_fail"()
    if_null rx798_debug, debug_731
    rx798_cur."!cursor_debug"("FAIL", "param_var")
  debug_731:
    .return (rx798_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__param_var"  :subid("183_1294592820.342") :method
.annotate 'line', 4
    $P800 = self."!PREFIX__!subrule"("sigil", "")
    new $P801, "ResizablePMCArray"
    push $P801, $P800
    .return ($P801)
.end


.namespace ["NQP";"Grammar"]
.sub "named_param"  :subid("184_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx808_tgt
    .local int rx808_pos
    .local int rx808_off
    .local int rx808_eos
    .local int rx808_rep
    .local pmc rx808_cur
    .local pmc rx808_debug
    (rx808_cur, rx808_pos, rx808_tgt, $I10) = self."!cursor_start"()
    getattribute rx808_debug, rx808_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx808_cur
    .local pmc match
    .lex "$/", match
    length rx808_eos, rx808_tgt
    gt rx808_pos, rx808_eos, rx808_done
    set rx808_off, 0
    lt rx808_pos, 2, rx808_start
    sub rx808_off, rx808_pos, 1
    substr rx808_tgt, rx808_tgt, rx808_off
  rx808_start:
    eq $I10, 1, rx808_restart
    if_null rx808_debug, debug_732
    rx808_cur."!cursor_debug"("START", "named_param")
  debug_732:
    $I10 = self.'from'()
    ne $I10, -1, rxscan812_done
    goto rxscan812_scan
  rxscan812_loop:
    ($P10) = rx808_cur."from"()
    inc $P10
    set rx808_pos, $P10
    ge rx808_pos, rx808_eos, rxscan812_done
  rxscan812_scan:
    set_addr $I10, rxscan812_loop
    rx808_cur."!mark_push"(0, rx808_pos, $I10)
  rxscan812_done:
.annotate 'line', 380
  # rx literal  ":"
    add $I11, rx808_pos, 1
    gt $I11, rx808_eos, rx808_fail
    sub $I11, rx808_pos, rx808_off
    ord $I11, rx808_tgt, $I11
    ne $I11, 58, rx808_fail
    add rx808_pos, 1
  # rx subrule "param_var" subtype=capture negate=
    rx808_cur."!cursor_pos"(rx808_pos)
    $P10 = rx808_cur."param_var"()
    unless $P10, rx808_fail
    rx808_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("param_var")
    rx808_pos = $P10."pos"()
.annotate 'line', 379
  # rx pass
    rx808_cur."!cursor_pass"(rx808_pos, "named_param")
    if_null rx808_debug, debug_733
    rx808_cur."!cursor_debug"("PASS", "named_param", " at pos=", rx808_pos)
  debug_733:
    .return (rx808_cur)
  rx808_restart:
.annotate 'line', 4
    if_null rx808_debug, debug_734
    rx808_cur."!cursor_debug"("NEXT", "named_param")
  debug_734:
  rx808_fail:
    (rx808_rep, rx808_pos, $I10, $P10) = rx808_cur."!mark_fail"(0)
    lt rx808_pos, -1, rx808_done
    eq rx808_pos, -1, rx808_fail
    jump $I10
  rx808_done:
    rx808_cur."!cursor_fail"()
    if_null rx808_debug, debug_735
    rx808_cur."!cursor_debug"("FAIL", "named_param")
  debug_735:
    .return (rx808_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__named_param"  :subid("185_1294592820.342") :method
.annotate 'line', 4
    $P810 = self."!PREFIX__!subrule"("param_var", ":")
    new $P811, "ResizablePMCArray"
    push $P811, $P810
    .return ($P811)
.end


.namespace ["NQP";"Grammar"]
.sub "default_value"  :subid("186_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx814_tgt
    .local int rx814_pos
    .local int rx814_off
    .local int rx814_eos
    .local int rx814_rep
    .local pmc rx814_cur
    .local pmc rx814_debug
    (rx814_cur, rx814_pos, rx814_tgt, $I10) = self."!cursor_start"()
    getattribute rx814_debug, rx814_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx814_cur
    .local pmc match
    .lex "$/", match
    length rx814_eos, rx814_tgt
    gt rx814_pos, rx814_eos, rx814_done
    set rx814_off, 0
    lt rx814_pos, 2, rx814_start
    sub rx814_off, rx814_pos, 1
    substr rx814_tgt, rx814_tgt, rx814_off
  rx814_start:
    eq $I10, 1, rx814_restart
    if_null rx814_debug, debug_736
    rx814_cur."!cursor_debug"("START", "default_value")
  debug_736:
    $I10 = self.'from'()
    ne $I10, -1, rxscan818_done
    goto rxscan818_scan
  rxscan818_loop:
    ($P10) = rx814_cur."from"()
    inc $P10
    set rx814_pos, $P10
    ge rx814_pos, rx814_eos, rxscan818_done
  rxscan818_scan:
    set_addr $I10, rxscan818_loop
    rx814_cur."!mark_push"(0, rx814_pos, $I10)
  rxscan818_done:
.annotate 'line', 383
  # rx subrule "ws" subtype=method negate=
    rx814_cur."!cursor_pos"(rx814_pos)
    $P10 = rx814_cur."ws"()
    unless $P10, rx814_fail
    rx814_pos = $P10."pos"()
  # rx literal  "="
    add $I11, rx814_pos, 1
    gt $I11, rx814_eos, rx814_fail
    sub $I11, rx814_pos, rx814_off
    ord $I11, rx814_tgt, $I11
    ne $I11, 61, rx814_fail
    add rx814_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx814_cur."!cursor_pos"(rx814_pos)
    $P10 = rx814_cur."ws"()
    unless $P10, rx814_fail
    rx814_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx814_cur."!cursor_pos"(rx814_pos)
    $P10 = rx814_cur."EXPR"("i=")
    unless $P10, rx814_fail
    rx814_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx814_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx814_cur."!cursor_pos"(rx814_pos)
    $P10 = rx814_cur."ws"()
    unless $P10, rx814_fail
    rx814_pos = $P10."pos"()
  # rx pass
    rx814_cur."!cursor_pass"(rx814_pos, "default_value")
    if_null rx814_debug, debug_737
    rx814_cur."!cursor_debug"("PASS", "default_value", " at pos=", rx814_pos)
  debug_737:
    .return (rx814_cur)
  rx814_restart:
.annotate 'line', 4
    if_null rx814_debug, debug_738
    rx814_cur."!cursor_debug"("NEXT", "default_value")
  debug_738:
  rx814_fail:
    (rx814_rep, rx814_pos, $I10, $P10) = rx814_cur."!mark_fail"(0)
    lt rx814_pos, -1, rx814_done
    eq rx814_pos, -1, rx814_fail
    jump $I10
  rx814_done:
    rx814_cur."!cursor_fail"()
    if_null rx814_debug, debug_739
    rx814_cur."!cursor_debug"("FAIL", "default_value")
  debug_739:
    .return (rx814_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__default_value"  :subid("187_1294592820.342") :method
.annotate 'line', 4
    $P816 = self."!PREFIX__!subrule"("ws", "")
    new $P817, "ResizablePMCArray"
    push $P817, $P816
    .return ($P817)
.end


.namespace ["NQP";"Grammar"]
.sub "trait"  :subid("188_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx823_tgt
    .local int rx823_pos
    .local int rx823_off
    .local int rx823_eos
    .local int rx823_rep
    .local pmc rx823_cur
    .local pmc rx823_debug
    (rx823_cur, rx823_pos, rx823_tgt, $I10) = self."!cursor_start"()
    getattribute rx823_debug, rx823_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx823_cur
    .local pmc match
    .lex "$/", match
    length rx823_eos, rx823_tgt
    gt rx823_pos, rx823_eos, rx823_done
    set rx823_off, 0
    lt rx823_pos, 2, rx823_start
    sub rx823_off, rx823_pos, 1
    substr rx823_tgt, rx823_tgt, rx823_off
  rx823_start:
    eq $I10, 1, rx823_restart
    if_null rx823_debug, debug_740
    rx823_cur."!cursor_debug"("START", "trait")
  debug_740:
    $I10 = self.'from'()
    ne $I10, -1, rxscan827_done
    goto rxscan827_scan
  rxscan827_loop:
    ($P10) = rx823_cur."from"()
    inc $P10
    set rx823_pos, $P10
    ge rx823_pos, rx823_eos, rxscan827_done
  rxscan827_scan:
    set_addr $I10, rxscan827_loop
    rx823_cur."!mark_push"(0, rx823_pos, $I10)
  rxscan827_done:
.annotate 'line', 385
  # rx subrule "ws" subtype=method negate=
    rx823_cur."!cursor_pos"(rx823_pos)
    $P10 = rx823_cur."ws"()
    unless $P10, rx823_fail
    rx823_pos = $P10."pos"()
  # rx subrule "trait_mod" subtype=capture negate=
    rx823_cur."!cursor_pos"(rx823_pos)
    $P10 = rx823_cur."trait_mod"()
    unless $P10, rx823_fail
    rx823_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("trait_mod")
    rx823_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx823_cur."!cursor_pos"(rx823_pos)
    $P10 = rx823_cur."ws"()
    unless $P10, rx823_fail
    rx823_pos = $P10."pos"()
  # rx pass
    rx823_cur."!cursor_pass"(rx823_pos, "trait")
    if_null rx823_debug, debug_741
    rx823_cur."!cursor_debug"("PASS", "trait", " at pos=", rx823_pos)
  debug_741:
    .return (rx823_cur)
  rx823_restart:
.annotate 'line', 4
    if_null rx823_debug, debug_742
    rx823_cur."!cursor_debug"("NEXT", "trait")
  debug_742:
  rx823_fail:
    (rx823_rep, rx823_pos, $I10, $P10) = rx823_cur."!mark_fail"(0)
    lt rx823_pos, -1, rx823_done
    eq rx823_pos, -1, rx823_fail
    jump $I10
  rx823_done:
    rx823_cur."!cursor_fail"()
    if_null rx823_debug, debug_743
    rx823_cur."!cursor_debug"("FAIL", "trait")
  debug_743:
    .return (rx823_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__trait"  :subid("189_1294592820.342") :method
.annotate 'line', 4
    $P825 = self."!PREFIX__!subrule"("ws", "")
    new $P826, "ResizablePMCArray"
    push $P826, $P825
    .return ($P826)
.end


.namespace ["NQP";"Grammar"]
.sub "trait_mod"  :subid("190_1294592820.342") :method
.annotate 'line', 387
    $P831 = self."!protoregex"("trait_mod")
    .return ($P831)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__trait_mod"  :subid("191_1294592820.342") :method
.annotate 'line', 387
    $P833 = self."!PREFIX__!protoregex"("trait_mod")
    .return ($P833)
.end


.namespace ["NQP";"Grammar"]
.sub "trait_mod:sym<is>"  :subid("192_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx835_tgt
    .local int rx835_pos
    .local int rx835_off
    .local int rx835_eos
    .local int rx835_rep
    .local pmc rx835_cur
    .local pmc rx835_debug
    (rx835_cur, rx835_pos, rx835_tgt, $I10) = self."!cursor_start"()
    rx835_cur."!cursor_caparray"("circumfix")
    getattribute rx835_debug, rx835_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx835_cur
    .local pmc match
    .lex "$/", match
    length rx835_eos, rx835_tgt
    gt rx835_pos, rx835_eos, rx835_done
    set rx835_off, 0
    lt rx835_pos, 2, rx835_start
    sub rx835_off, rx835_pos, 1
    substr rx835_tgt, rx835_tgt, rx835_off
  rx835_start:
    eq $I10, 1, rx835_restart
    if_null rx835_debug, debug_744
    rx835_cur."!cursor_debug"("START", "trait_mod:sym<is>")
  debug_744:
    $I10 = self.'from'()
    ne $I10, -1, rxscan839_done
    goto rxscan839_scan
  rxscan839_loop:
    ($P10) = rx835_cur."from"()
    inc $P10
    set rx835_pos, $P10
    ge rx835_pos, rx835_eos, rxscan839_done
  rxscan839_scan:
    set_addr $I10, rxscan839_loop
    rx835_cur."!mark_push"(0, rx835_pos, $I10)
  rxscan839_done:
.annotate 'line', 388
  # rx subcapture "sym"
    set_addr $I10, rxcap_840_fail
    rx835_cur."!mark_push"(0, rx835_pos, $I10)
  # rx literal  "is"
    add $I11, rx835_pos, 2
    gt $I11, rx835_eos, rx835_fail
    sub $I11, rx835_pos, rx835_off
    substr $S10, rx835_tgt, $I11, 2
    ne $S10, "is", rx835_fail
    add rx835_pos, 2
    set_addr $I10, rxcap_840_fail
    ($I12, $I11) = rx835_cur."!mark_peek"($I10)
    rx835_cur."!cursor_pos"($I11)
    ($P10) = rx835_cur."!cursor_start"()
    $P10."!cursor_pass"(rx835_pos, "")
    rx835_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_840_done
  rxcap_840_fail:
    goto rx835_fail
  rxcap_840_done:
  # rx subrule "ws" subtype=method negate=
    rx835_cur."!cursor_pos"(rx835_pos)
    $P10 = rx835_cur."ws"()
    unless $P10, rx835_fail
    rx835_pos = $P10."pos"()
  # rx subrule "deflongname" subtype=capture negate=
    rx835_cur."!cursor_pos"(rx835_pos)
    $P10 = rx835_cur."deflongname"()
    unless $P10, rx835_fail
    rx835_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("longname")
    rx835_pos = $P10."pos"()
  # rx rxquantr842 ** 0..1
    set_addr $I10, rxquantr842_done
    rx835_cur."!mark_push"(0, rx835_pos, $I10)
  rxquantr842_loop:
  # rx subrule "circumfix" subtype=capture negate=
    rx835_cur."!cursor_pos"(rx835_pos)
    $P10 = rx835_cur."circumfix"()
    unless $P10, rx835_fail
    goto rxsubrule843_pass
  rxsubrule843_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx835_fail
  rxsubrule843_pass:
    set_addr $I10, rxsubrule843_back
    rx835_cur."!mark_push"(0, rx835_pos, $I10, $P10)
    $P10."!cursor_names"("circumfix")
    rx835_pos = $P10."pos"()
    set_addr $I10, rxquantr842_done
    (rx835_rep) = rx835_cur."!mark_commit"($I10)
  rxquantr842_done:
  # rx subrule "ws" subtype=method negate=
    rx835_cur."!cursor_pos"(rx835_pos)
    $P10 = rx835_cur."ws"()
    unless $P10, rx835_fail
    rx835_pos = $P10."pos"()
  # rx pass
    rx835_cur."!cursor_pass"(rx835_pos, "trait_mod:sym<is>")
    if_null rx835_debug, debug_745
    rx835_cur."!cursor_debug"("PASS", "trait_mod:sym<is>", " at pos=", rx835_pos)
  debug_745:
    .return (rx835_cur)
  rx835_restart:
.annotate 'line', 4
    if_null rx835_debug, debug_746
    rx835_cur."!cursor_debug"("NEXT", "trait_mod:sym<is>")
  debug_746:
  rx835_fail:
    (rx835_rep, rx835_pos, $I10, $P10) = rx835_cur."!mark_fail"(0)
    lt rx835_pos, -1, rx835_done
    eq rx835_pos, -1, rx835_fail
    jump $I10
  rx835_done:
    rx835_cur."!cursor_fail"()
    if_null rx835_debug, debug_747
    rx835_cur."!cursor_debug"("FAIL", "trait_mod:sym<is>")
  debug_747:
    .return (rx835_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__trait_mod:sym<is>"  :subid("193_1294592820.342") :method
.annotate 'line', 4
    $P837 = self."!PREFIX__!subrule"("ws", "is")
    new $P838, "ResizablePMCArray"
    push $P838, $P837
    .return ($P838)
.end


.namespace ["NQP";"Grammar"]
.sub "regex_declarator"  :subid("194_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx846_tgt
    .local int rx846_pos
    .local int rx846_off
    .local int rx846_eos
    .local int rx846_rep
    .local pmc rx846_cur
    .local pmc rx846_debug
    (rx846_cur, rx846_pos, rx846_tgt, $I10) = self."!cursor_start"()
    rx846_cur."!cursor_caparray"("signature")
    getattribute rx846_debug, rx846_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx846_cur
    .local pmc match
    .lex "$/", match
    length rx846_eos, rx846_tgt
    gt rx846_pos, rx846_eos, rx846_done
    set rx846_off, 0
    lt rx846_pos, 2, rx846_start
    sub rx846_off, rx846_pos, 1
    substr rx846_tgt, rx846_tgt, rx846_off
  rx846_start:
    eq $I10, 1, rx846_restart
    if_null rx846_debug, debug_748
    rx846_cur."!cursor_debug"("START", "regex_declarator")
  debug_748:
    $I10 = self.'from'()
    ne $I10, -1, rxscan850_done
    goto rxscan850_scan
  rxscan850_loop:
    ($P10) = rx846_cur."from"()
    inc $P10
    set rx846_pos, $P10
    ge rx846_pos, rx846_eos, rxscan850_done
  rxscan850_scan:
    set_addr $I10, rxscan850_loop
    rx846_cur."!mark_push"(0, rx846_pos, $I10)
  rxscan850_done:
.annotate 'line', 390
  # rx subrule "ws" subtype=method negate=
    rx846_cur."!cursor_pos"(rx846_pos)
    $P10 = rx846_cur."ws"()
    unless $P10, rx846_fail
    rx846_pos = $P10."pos"()
  alt852_0:
.annotate 'line', 391
    set_addr $I10, alt852_1
    rx846_cur."!mark_push"(0, rx846_pos, $I10)
.annotate 'line', 392
  # rx subrule "ws" subtype=method negate=
    rx846_cur."!cursor_pos"(rx846_pos)
    $P10 = rx846_cur."ws"()
    unless $P10, rx846_fail
    rx846_pos = $P10."pos"()
  # rx subcapture "proto"
    set_addr $I10, rxcap_854_fail
    rx846_cur."!mark_push"(0, rx846_pos, $I10)
  # rx literal  "proto"
    add $I11, rx846_pos, 5
    gt $I11, rx846_eos, rx846_fail
    sub $I11, rx846_pos, rx846_off
    substr $S10, rx846_tgt, $I11, 5
    ne $S10, "proto", rx846_fail
    add rx846_pos, 5
    set_addr $I10, rxcap_854_fail
    ($I12, $I11) = rx846_cur."!mark_peek"($I10)
    rx846_cur."!cursor_pos"($I11)
    ($P10) = rx846_cur."!cursor_start"()
    $P10."!cursor_pass"(rx846_pos, "")
    rx846_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("proto")
    goto rxcap_854_done
  rxcap_854_fail:
    goto rx846_fail
  rxcap_854_done:
  # rx subrule "ws" subtype=method negate=
    rx846_cur."!cursor_pos"(rx846_pos)
    $P10 = rx846_cur."ws"()
    unless $P10, rx846_fail
    rx846_pos = $P10."pos"()
  alt856_0:
    set_addr $I10, alt856_1
    rx846_cur."!mark_push"(0, rx846_pos, $I10)
  # rx literal  "regex"
    add $I11, rx846_pos, 5
    gt $I11, rx846_eos, rx846_fail
    sub $I11, rx846_pos, rx846_off
    substr $S10, rx846_tgt, $I11, 5
    ne $S10, "regex", rx846_fail
    add rx846_pos, 5
    goto alt856_end
  alt856_1:
    set_addr $I10, alt856_2
    rx846_cur."!mark_push"(0, rx846_pos, $I10)
  # rx literal  "token"
    add $I11, rx846_pos, 5
    gt $I11, rx846_eos, rx846_fail
    sub $I11, rx846_pos, rx846_off
    substr $S10, rx846_tgt, $I11, 5
    ne $S10, "token", rx846_fail
    add rx846_pos, 5
    goto alt856_end
  alt856_2:
  # rx literal  "rule"
    add $I11, rx846_pos, 4
    gt $I11, rx846_eos, rx846_fail
    sub $I11, rx846_pos, rx846_off
    substr $S10, rx846_tgt, $I11, 4
    ne $S10, "rule", rx846_fail
    add rx846_pos, 4
  alt856_end:
  # rx subrule "ws" subtype=method negate=
    rx846_cur."!cursor_pos"(rx846_pos)
    $P10 = rx846_cur."ws"()
    unless $P10, rx846_fail
    rx846_pos = $P10."pos"()
.annotate 'line', 393
  # rx subrule "deflongname" subtype=capture negate=
    rx846_cur."!cursor_pos"(rx846_pos)
    $P10 = rx846_cur."deflongname"()
    unless $P10, rx846_fail
    rx846_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("deflongname")
    rx846_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx846_cur."!cursor_pos"(rx846_pos)
    $P10 = rx846_cur."ws"()
    unless $P10, rx846_fail
    rx846_pos = $P10."pos"()
  alt859_0:
.annotate 'line', 394
    set_addr $I10, alt859_1
    rx846_cur."!mark_push"(0, rx846_pos, $I10)
.annotate 'line', 395
  # rx subrule "ws" subtype=method negate=
    rx846_cur."!cursor_pos"(rx846_pos)
    $P10 = rx846_cur."ws"()
    unless $P10, rx846_fail
    rx846_pos = $P10."pos"()
  # rx literal  "{"
    add $I11, rx846_pos, 1
    gt $I11, rx846_eos, rx846_fail
    sub $I11, rx846_pos, rx846_off
    ord $I11, rx846_tgt, $I11
    ne $I11, 123, rx846_fail
    add rx846_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx846_cur."!cursor_pos"(rx846_pos)
    $P10 = rx846_cur."ws"()
    unless $P10, rx846_fail
    rx846_pos = $P10."pos"()
  # rx literal  "<...>"
    add $I11, rx846_pos, 5
    gt $I11, rx846_eos, rx846_fail
    sub $I11, rx846_pos, rx846_off
    substr $S10, rx846_tgt, $I11, 5
    ne $S10, "<...>", rx846_fail
    add rx846_pos, 5
  # rx subrule "ws" subtype=method negate=
    rx846_cur."!cursor_pos"(rx846_pos)
    $P10 = rx846_cur."ws"()
    unless $P10, rx846_fail
    rx846_pos = $P10."pos"()
  # rx literal  "}"
    add $I11, rx846_pos, 1
    gt $I11, rx846_eos, rx846_fail
    sub $I11, rx846_pos, rx846_off
    ord $I11, rx846_tgt, $I11
    ne $I11, 125, rx846_fail
    add rx846_pos, 1
  # rx subrule "ENDSTMT" subtype=zerowidth negate=
    rx846_cur."!cursor_pos"(rx846_pos)
    $P10 = rx846_cur."ENDSTMT"()
    unless $P10, rx846_fail
  # rx subrule "ws" subtype=method negate=
    rx846_cur."!cursor_pos"(rx846_pos)
    $P10 = rx846_cur."ws"()
    unless $P10, rx846_fail
    rx846_pos = $P10."pos"()
    goto alt859_end
  alt859_1:
.annotate 'line', 396
  # rx subrule "ws" subtype=method negate=
    rx846_cur."!cursor_pos"(rx846_pos)
    $P10 = rx846_cur."ws"()
    unless $P10, rx846_fail
    rx846_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx846_cur."!cursor_pos"(rx846_pos)
    $P10 = rx846_cur."panic"("Proto regex body must be <...>")
    unless $P10, rx846_fail
    rx846_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx846_cur."!cursor_pos"(rx846_pos)
    $P10 = rx846_cur."ws"()
    unless $P10, rx846_fail
    rx846_pos = $P10."pos"()
  alt859_end:
.annotate 'line', 397
  # rx subrule "ws" subtype=method negate=
    rx846_cur."!cursor_pos"(rx846_pos)
    $P10 = rx846_cur."ws"()
    unless $P10, rx846_fail
    rx846_pos = $P10."pos"()
.annotate 'line', 392
    goto alt852_end
  alt852_1:
.annotate 'line', 398
  # rx subrule "ws" subtype=method negate=
    rx846_cur."!cursor_pos"(rx846_pos)
    $P10 = rx846_cur."ws"()
    unless $P10, rx846_fail
    rx846_pos = $P10."pos"()
  # rx subcapture "sym"
    set_addr $I10, rxcap_869_fail
    rx846_cur."!mark_push"(0, rx846_pos, $I10)
  alt868_0:
    set_addr $I10, alt868_1
    rx846_cur."!mark_push"(0, rx846_pos, $I10)
  # rx literal  "regex"
    add $I11, rx846_pos, 5
    gt $I11, rx846_eos, rx846_fail
    sub $I11, rx846_pos, rx846_off
    substr $S10, rx846_tgt, $I11, 5
    ne $S10, "regex", rx846_fail
    add rx846_pos, 5
    goto alt868_end
  alt868_1:
    set_addr $I10, alt868_2
    rx846_cur."!mark_push"(0, rx846_pos, $I10)
  # rx literal  "token"
    add $I11, rx846_pos, 5
    gt $I11, rx846_eos, rx846_fail
    sub $I11, rx846_pos, rx846_off
    substr $S10, rx846_tgt, $I11, 5
    ne $S10, "token", rx846_fail
    add rx846_pos, 5
    goto alt868_end
  alt868_2:
  # rx literal  "rule"
    add $I11, rx846_pos, 4
    gt $I11, rx846_eos, rx846_fail
    sub $I11, rx846_pos, rx846_off
    substr $S10, rx846_tgt, $I11, 4
    ne $S10, "rule", rx846_fail
    add rx846_pos, 4
  alt868_end:
    set_addr $I10, rxcap_869_fail
    ($I12, $I11) = rx846_cur."!mark_peek"($I10)
    rx846_cur."!cursor_pos"($I11)
    ($P10) = rx846_cur."!cursor_start"()
    $P10."!cursor_pass"(rx846_pos, "")
    rx846_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_869_done
  rxcap_869_fail:
    goto rx846_fail
  rxcap_869_done:
  # rx subrule "ws" subtype=method negate=
    rx846_cur."!cursor_pos"(rx846_pos)
    $P10 = rx846_cur."ws"()
    unless $P10, rx846_fail
    rx846_pos = $P10."pos"()
.annotate 'line', 399
  # rx subrule "deflongname" subtype=capture negate=
    rx846_cur."!cursor_pos"(rx846_pos)
    $P10 = rx846_cur."deflongname"()
    unless $P10, rx846_fail
    rx846_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("deflongname")
    rx846_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx846_cur."!cursor_pos"(rx846_pos)
    $P10 = rx846_cur."ws"()
    unless $P10, rx846_fail
    rx846_pos = $P10."pos"()
.annotate 'line', 400
  # rx subrule "newpad" subtype=method negate=
    rx846_cur."!cursor_pos"(rx846_pos)
    $P10 = rx846_cur."newpad"()
    unless $P10, rx846_fail
    rx846_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx846_cur."!cursor_pos"(rx846_pos)
    $P10 = rx846_cur."ws"()
    unless $P10, rx846_fail
    rx846_pos = $P10."pos"()
.annotate 'line', 401
  # rx rxquantr873 ** 0..1
    set_addr $I10, rxquantr873_done
    rx846_cur."!mark_push"(0, rx846_pos, $I10)
  rxquantr873_loop:
  # rx subrule "ws" subtype=method negate=
    rx846_cur."!cursor_pos"(rx846_pos)
    $P10 = rx846_cur."ws"()
    unless $P10, rx846_fail
    rx846_pos = $P10."pos"()
  # rx literal  "("
    add $I11, rx846_pos, 1
    gt $I11, rx846_eos, rx846_fail
    sub $I11, rx846_pos, rx846_off
    ord $I11, rx846_tgt, $I11
    ne $I11, 40, rx846_fail
    add rx846_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx846_cur."!cursor_pos"(rx846_pos)
    $P10 = rx846_cur."ws"()
    unless $P10, rx846_fail
    rx846_pos = $P10."pos"()
  # rx subrule "signature" subtype=capture negate=
    rx846_cur."!cursor_pos"(rx846_pos)
    $P10 = rx846_cur."signature"()
    unless $P10, rx846_fail
    rx846_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("signature")
    rx846_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx846_cur."!cursor_pos"(rx846_pos)
    $P10 = rx846_cur."ws"()
    unless $P10, rx846_fail
    rx846_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx846_pos, 1
    gt $I11, rx846_eos, rx846_fail
    sub $I11, rx846_pos, rx846_off
    ord $I11, rx846_tgt, $I11
    ne $I11, 41, rx846_fail
    add rx846_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx846_cur."!cursor_pos"(rx846_pos)
    $P10 = rx846_cur."ws"()
    unless $P10, rx846_fail
    rx846_pos = $P10."pos"()
    set_addr $I10, rxquantr873_done
    (rx846_rep) = rx846_cur."!mark_commit"($I10)
  rxquantr873_done:
  # rx subrule "ws" subtype=method negate=
    rx846_cur."!cursor_pos"(rx846_pos)
    $P10 = rx846_cur."ws"()
    unless $P10, rx846_fail
    rx846_pos = $P10."pos"()
.annotate 'line', 402
  # rx reduce name="regex_declarator" key="open"
    rx846_cur."!cursor_pos"(rx846_pos)
    rx846_cur."!reduce"("regex_declarator", "open")
  # rx subrule "ws" subtype=method negate=
    rx846_cur."!cursor_pos"(rx846_pos)
    $P10 = rx846_cur."ws"()
    unless $P10, rx846_fail
    rx846_pos = $P10."pos"()
.annotate 'line', 403
  # rx literal  "{"
    add $I11, rx846_pos, 1
    gt $I11, rx846_eos, rx846_fail
    sub $I11, rx846_pos, rx846_off
    ord $I11, rx846_tgt, $I11
    ne $I11, 123, rx846_fail
    add rx846_pos, 1
  # rx subrule "LANG" subtype=capture negate=
    rx846_cur."!cursor_pos"(rx846_pos)
    $P10 = rx846_cur."LANG"("Regex", "nibbler")
    unless $P10, rx846_fail
    rx846_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("p6regex")
    rx846_pos = $P10."pos"()
  # rx literal  "}"
    add $I11, rx846_pos, 1
    gt $I11, rx846_eos, rx846_fail
    sub $I11, rx846_pos, rx846_off
    ord $I11, rx846_tgt, $I11
    ne $I11, 125, rx846_fail
    add rx846_pos, 1
  # rx subrule "ENDSTMT" subtype=zerowidth negate=
    rx846_cur."!cursor_pos"(rx846_pos)
    $P10 = rx846_cur."ENDSTMT"()
    unless $P10, rx846_fail
  # rx subrule "ws" subtype=method negate=
    rx846_cur."!cursor_pos"(rx846_pos)
    $P10 = rx846_cur."ws"()
    unless $P10, rx846_fail
    rx846_pos = $P10."pos"()
  alt852_end:
.annotate 'line', 404
  # rx subrule "ws" subtype=method negate=
    rx846_cur."!cursor_pos"(rx846_pos)
    $P10 = rx846_cur."ws"()
    unless $P10, rx846_fail
    rx846_pos = $P10."pos"()
.annotate 'line', 390
  # rx pass
    rx846_cur."!cursor_pass"(rx846_pos, "regex_declarator")
    if_null rx846_debug, debug_749
    rx846_cur."!cursor_debug"("PASS", "regex_declarator", " at pos=", rx846_pos)
  debug_749:
    .return (rx846_cur)
  rx846_restart:
.annotate 'line', 4
    if_null rx846_debug, debug_750
    rx846_cur."!cursor_debug"("NEXT", "regex_declarator")
  debug_750:
  rx846_fail:
    (rx846_rep, rx846_pos, $I10, $P10) = rx846_cur."!mark_fail"(0)
    lt rx846_pos, -1, rx846_done
    eq rx846_pos, -1, rx846_fail
    jump $I10
  rx846_done:
    rx846_cur."!cursor_fail"()
    if_null rx846_debug, debug_751
    rx846_cur."!cursor_debug"("FAIL", "regex_declarator")
  debug_751:
    .return (rx846_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__regex_declarator"  :subid("195_1294592820.342") :method
.annotate 'line', 4
    $P848 = self."!PREFIX__!subrule"("ws", "")
    new $P849, "ResizablePMCArray"
    push $P849, $P848
    .return ($P849)
.end


.namespace ["NQP";"Grammar"]
.sub "dotty"  :subid("196_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx883_tgt
    .local int rx883_pos
    .local int rx883_off
    .local int rx883_eos
    .local int rx883_rep
    .local pmc rx883_cur
    .local pmc rx883_debug
    (rx883_cur, rx883_pos, rx883_tgt, $I10) = self."!cursor_start"()
    rx883_cur."!cursor_caparray"("args")
    getattribute rx883_debug, rx883_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx883_cur
    .local pmc match
    .lex "$/", match
    length rx883_eos, rx883_tgt
    gt rx883_pos, rx883_eos, rx883_done
    set rx883_off, 0
    lt rx883_pos, 2, rx883_start
    sub rx883_off, rx883_pos, 1
    substr rx883_tgt, rx883_tgt, rx883_off
  rx883_start:
    eq $I10, 1, rx883_restart
    if_null rx883_debug, debug_752
    rx883_cur."!cursor_debug"("START", "dotty")
  debug_752:
    $I10 = self.'from'()
    ne $I10, -1, rxscan887_done
    goto rxscan887_scan
  rxscan887_loop:
    ($P10) = rx883_cur."from"()
    inc $P10
    set rx883_pos, $P10
    ge rx883_pos, rx883_eos, rxscan887_done
  rxscan887_scan:
    set_addr $I10, rxscan887_loop
    rx883_cur."!mark_push"(0, rx883_pos, $I10)
  rxscan887_done:
.annotate 'line', 408
  # rx literal  "."
    add $I11, rx883_pos, 1
    gt $I11, rx883_eos, rx883_fail
    sub $I11, rx883_pos, rx883_off
    ord $I11, rx883_tgt, $I11
    ne $I11, 46, rx883_fail
    add rx883_pos, 1
  alt888_0:
.annotate 'line', 409
    set_addr $I10, alt888_1
    rx883_cur."!mark_push"(0, rx883_pos, $I10)
  # rx subrule "deflongname" subtype=capture negate=
    rx883_cur."!cursor_pos"(rx883_pos)
    $P10 = rx883_cur."deflongname"()
    unless $P10, rx883_fail
    rx883_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("longname=deflongname")
    rx883_pos = $P10."pos"()
    goto alt888_end
  alt888_1:
.annotate 'line', 410
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx883_pos, rx883_off
    substr $S10, rx883_tgt, $I10, 1
    index $I11, "'\"", $S10
    lt $I11, 0, rx883_fail
  # rx subrule "quote" subtype=capture negate=
    rx883_cur."!cursor_pos"(rx883_pos)
    $P10 = rx883_cur."quote"()
    unless $P10, rx883_fail
    rx883_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote")
    rx883_pos = $P10."pos"()
  alt889_0:
.annotate 'line', 411
    set_addr $I10, alt889_1
    rx883_cur."!mark_push"(0, rx883_pos, $I10)
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx883_pos, rx883_off
    substr $S10, rx883_tgt, $I10, 1
    index $I11, "(", $S10
    lt $I11, 0, rx883_fail
    goto alt889_end
  alt889_1:
  # rx subrule "panic" subtype=method negate=
    rx883_cur."!cursor_pos"(rx883_pos)
    $P10 = rx883_cur."panic"("Quoted method name requires parenthesized arguments")
    unless $P10, rx883_fail
    rx883_pos = $P10."pos"()
  alt889_end:
  alt888_end:
.annotate 'line', 417
  # rx rxquantr890 ** 0..1
    set_addr $I10, rxquantr890_done
    rx883_cur."!mark_push"(0, rx883_pos, $I10)
  rxquantr890_loop:
  alt891_0:
.annotate 'line', 414
    set_addr $I10, alt891_1
    rx883_cur."!mark_push"(0, rx883_pos, $I10)
.annotate 'line', 415
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx883_pos, rx883_off
    substr $S10, rx883_tgt, $I10, 1
    index $I11, "(", $S10
    lt $I11, 0, rx883_fail
  # rx subrule "args" subtype=capture negate=
    rx883_cur."!cursor_pos"(rx883_pos)
    $P10 = rx883_cur."args"()
    unless $P10, rx883_fail
    rx883_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("args")
    rx883_pos = $P10."pos"()
    goto alt891_end
  alt891_1:
.annotate 'line', 416
  # rx literal  ":"
    add $I11, rx883_pos, 1
    gt $I11, rx883_eos, rx883_fail
    sub $I11, rx883_pos, rx883_off
    ord $I11, rx883_tgt, $I11
    ne $I11, 58, rx883_fail
    add rx883_pos, 1
  # rx charclass s
    ge rx883_pos, rx883_eos, rx883_fail
    sub $I10, rx883_pos, rx883_off
    is_cclass $I11, 32, rx883_tgt, $I10
    unless $I11, rx883_fail
    inc rx883_pos
  # rx subrule "arglist" subtype=capture negate=
    rx883_cur."!cursor_pos"(rx883_pos)
    $P10 = rx883_cur."arglist"()
    unless $P10, rx883_fail
    rx883_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("args")
    rx883_pos = $P10."pos"()
  alt891_end:
.annotate 'line', 417
    set_addr $I10, rxquantr890_done
    (rx883_rep) = rx883_cur."!mark_commit"($I10)
  rxquantr890_done:
.annotate 'line', 407
  # rx pass
    rx883_cur."!cursor_pass"(rx883_pos, "dotty")
    if_null rx883_debug, debug_753
    rx883_cur."!cursor_debug"("PASS", "dotty", " at pos=", rx883_pos)
  debug_753:
    .return (rx883_cur)
  rx883_restart:
.annotate 'line', 4
    if_null rx883_debug, debug_754
    rx883_cur."!cursor_debug"("NEXT", "dotty")
  debug_754:
  rx883_fail:
    (rx883_rep, rx883_pos, $I10, $P10) = rx883_cur."!mark_fail"(0)
    lt rx883_pos, -1, rx883_done
    eq rx883_pos, -1, rx883_fail
    jump $I10
  rx883_done:
    rx883_cur."!cursor_fail"()
    if_null rx883_debug, debug_755
    rx883_cur."!cursor_debug"("FAIL", "dotty")
  debug_755:
    .return (rx883_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__dotty"  :subid("197_1294592820.342") :method
.annotate 'line', 4
    $P885 = self."!PREFIX__!subrule"("deflongname", ".")
    new $P886, "ResizablePMCArray"
    push $P886, "'"
    push $P886, "\""
    push $P886, $P885
    .return ($P886)
.end


.namespace ["NQP";"Grammar"]
.sub "term"  :subid("198_1294592820.342") :method
.annotate 'line', 421
    $P893 = self."!protoregex"("term")
    .return ($P893)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term"  :subid("199_1294592820.342") :method
.annotate 'line', 421
    $P895 = self."!PREFIX__!protoregex"("term")
    .return ($P895)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<self>"  :subid("200_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx897_tgt
    .local int rx897_pos
    .local int rx897_off
    .local int rx897_eos
    .local int rx897_rep
    .local pmc rx897_cur
    .local pmc rx897_debug
    (rx897_cur, rx897_pos, rx897_tgt, $I10) = self."!cursor_start"()
    getattribute rx897_debug, rx897_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx897_cur
    .local pmc match
    .lex "$/", match
    length rx897_eos, rx897_tgt
    gt rx897_pos, rx897_eos, rx897_done
    set rx897_off, 0
    lt rx897_pos, 2, rx897_start
    sub rx897_off, rx897_pos, 1
    substr rx897_tgt, rx897_tgt, rx897_off
  rx897_start:
    eq $I10, 1, rx897_restart
    if_null rx897_debug, debug_756
    rx897_cur."!cursor_debug"("START", "term:sym<self>")
  debug_756:
    $I10 = self.'from'()
    ne $I10, -1, rxscan900_done
    goto rxscan900_scan
  rxscan900_loop:
    ($P10) = rx897_cur."from"()
    inc $P10
    set rx897_pos, $P10
    ge rx897_pos, rx897_eos, rxscan900_done
  rxscan900_scan:
    set_addr $I10, rxscan900_loop
    rx897_cur."!mark_push"(0, rx897_pos, $I10)
  rxscan900_done:
.annotate 'line', 423
  # rx subcapture "sym"
    set_addr $I10, rxcap_901_fail
    rx897_cur."!mark_push"(0, rx897_pos, $I10)
  # rx literal  "self"
    add $I11, rx897_pos, 4
    gt $I11, rx897_eos, rx897_fail
    sub $I11, rx897_pos, rx897_off
    substr $S10, rx897_tgt, $I11, 4
    ne $S10, "self", rx897_fail
    add rx897_pos, 4
    set_addr $I10, rxcap_901_fail
    ($I12, $I11) = rx897_cur."!mark_peek"($I10)
    rx897_cur."!cursor_pos"($I11)
    ($P10) = rx897_cur."!cursor_start"()
    $P10."!cursor_pass"(rx897_pos, "")
    rx897_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_901_done
  rxcap_901_fail:
    goto rx897_fail
  rxcap_901_done:
  # rxanchor rwb
    le rx897_pos, 0, rx897_fail
    sub $I10, rx897_pos, rx897_off
    is_cclass $I11, 8192, rx897_tgt, $I10
    if $I11, rx897_fail
    dec $I10
    is_cclass $I11, 8192, rx897_tgt, $I10
    unless $I11, rx897_fail
  # rx pass
    rx897_cur."!cursor_pass"(rx897_pos, "term:sym<self>")
    if_null rx897_debug, debug_757
    rx897_cur."!cursor_debug"("PASS", "term:sym<self>", " at pos=", rx897_pos)
  debug_757:
    .return (rx897_cur)
  rx897_restart:
.annotate 'line', 4
    if_null rx897_debug, debug_758
    rx897_cur."!cursor_debug"("NEXT", "term:sym<self>")
  debug_758:
  rx897_fail:
    (rx897_rep, rx897_pos, $I10, $P10) = rx897_cur."!mark_fail"(0)
    lt rx897_pos, -1, rx897_done
    eq rx897_pos, -1, rx897_fail
    jump $I10
  rx897_done:
    rx897_cur."!cursor_fail"()
    if_null rx897_debug, debug_759
    rx897_cur."!cursor_debug"("FAIL", "term:sym<self>")
  debug_759:
    .return (rx897_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<self>"  :subid("201_1294592820.342") :method
.annotate 'line', 4
    new $P899, "ResizablePMCArray"
    push $P899, "self"
    .return ($P899)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<identifier>"  :subid("202_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx903_tgt
    .local int rx903_pos
    .local int rx903_off
    .local int rx903_eos
    .local int rx903_rep
    .local pmc rx903_cur
    .local pmc rx903_debug
    (rx903_cur, rx903_pos, rx903_tgt, $I10) = self."!cursor_start"()
    getattribute rx903_debug, rx903_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx903_cur
    .local pmc match
    .lex "$/", match
    length rx903_eos, rx903_tgt
    gt rx903_pos, rx903_eos, rx903_done
    set rx903_off, 0
    lt rx903_pos, 2, rx903_start
    sub rx903_off, rx903_pos, 1
    substr rx903_tgt, rx903_tgt, rx903_off
  rx903_start:
    eq $I10, 1, rx903_restart
    if_null rx903_debug, debug_760
    rx903_cur."!cursor_debug"("START", "term:sym<identifier>")
  debug_760:
    $I10 = self.'from'()
    ne $I10, -1, rxscan907_done
    goto rxscan907_scan
  rxscan907_loop:
    ($P10) = rx903_cur."from"()
    inc $P10
    set rx903_pos, $P10
    ge rx903_pos, rx903_eos, rxscan907_done
  rxscan907_scan:
    set_addr $I10, rxscan907_loop
    rx903_cur."!mark_push"(0, rx903_pos, $I10)
  rxscan907_done:
.annotate 'line', 426
  # rx subrule "deflongname" subtype=capture negate=
    rx903_cur."!cursor_pos"(rx903_pos)
    $P10 = rx903_cur."deflongname"()
    unless $P10, rx903_fail
    rx903_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("deflongname")
    rx903_pos = $P10."pos"()
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx903_pos, rx903_off
    substr $S10, rx903_tgt, $I10, 1
    index $I11, "(", $S10
    lt $I11, 0, rx903_fail
  # rx subrule "args" subtype=capture negate=
    rx903_cur."!cursor_pos"(rx903_pos)
    $P10 = rx903_cur."args"()
    unless $P10, rx903_fail
    rx903_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("args")
    rx903_pos = $P10."pos"()
.annotate 'line', 425
  # rx pass
    rx903_cur."!cursor_pass"(rx903_pos, "term:sym<identifier>")
    if_null rx903_debug, debug_761
    rx903_cur."!cursor_debug"("PASS", "term:sym<identifier>", " at pos=", rx903_pos)
  debug_761:
    .return (rx903_cur)
  rx903_restart:
.annotate 'line', 4
    if_null rx903_debug, debug_762
    rx903_cur."!cursor_debug"("NEXT", "term:sym<identifier>")
  debug_762:
  rx903_fail:
    (rx903_rep, rx903_pos, $I10, $P10) = rx903_cur."!mark_fail"(0)
    lt rx903_pos, -1, rx903_done
    eq rx903_pos, -1, rx903_fail
    jump $I10
  rx903_done:
    rx903_cur."!cursor_fail"()
    if_null rx903_debug, debug_763
    rx903_cur."!cursor_debug"("FAIL", "term:sym<identifier>")
  debug_763:
    .return (rx903_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<identifier>"  :subid("203_1294592820.342") :method
.annotate 'line', 4
    $P905 = self."!PREFIX__!subrule"("deflongname", "")
    new $P906, "ResizablePMCArray"
    push $P906, $P905
    .return ($P906)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<name>"  :subid("204_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx909_tgt
    .local int rx909_pos
    .local int rx909_off
    .local int rx909_eos
    .local int rx909_rep
    .local pmc rx909_cur
    .local pmc rx909_debug
    (rx909_cur, rx909_pos, rx909_tgt, $I10) = self."!cursor_start"()
    rx909_cur."!cursor_caparray"("args")
    getattribute rx909_debug, rx909_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx909_cur
    .local pmc match
    .lex "$/", match
    length rx909_eos, rx909_tgt
    gt rx909_pos, rx909_eos, rx909_done
    set rx909_off, 0
    lt rx909_pos, 2, rx909_start
    sub rx909_off, rx909_pos, 1
    substr rx909_tgt, rx909_tgt, rx909_off
  rx909_start:
    eq $I10, 1, rx909_restart
    if_null rx909_debug, debug_764
    rx909_cur."!cursor_debug"("START", "term:sym<name>")
  debug_764:
    $I10 = self.'from'()
    ne $I10, -1, rxscan913_done
    goto rxscan913_scan
  rxscan913_loop:
    ($P10) = rx909_cur."from"()
    inc $P10
    set rx909_pos, $P10
    ge rx909_pos, rx909_eos, rxscan913_done
  rxscan913_scan:
    set_addr $I10, rxscan913_loop
    rx909_cur."!mark_push"(0, rx909_pos, $I10)
  rxscan913_done:
.annotate 'line', 430
  # rx subrule "name" subtype=capture negate=
    rx909_cur."!cursor_pos"(rx909_pos)
    $P10 = rx909_cur."name"()
    unless $P10, rx909_fail
    rx909_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    rx909_pos = $P10."pos"()
  # rx rxquantr914 ** 0..1
    set_addr $I10, rxquantr914_done
    rx909_cur."!mark_push"(0, rx909_pos, $I10)
  rxquantr914_loop:
  # rx subrule "args" subtype=capture negate=
    rx909_cur."!cursor_pos"(rx909_pos)
    $P10 = rx909_cur."args"()
    unless $P10, rx909_fail
    goto rxsubrule915_pass
  rxsubrule915_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx909_fail
  rxsubrule915_pass:
    set_addr $I10, rxsubrule915_back
    rx909_cur."!mark_push"(0, rx909_pos, $I10, $P10)
    $P10."!cursor_names"("args")
    rx909_pos = $P10."pos"()
    set_addr $I10, rxquantr914_done
    (rx909_rep) = rx909_cur."!mark_commit"($I10)
  rxquantr914_done:
.annotate 'line', 429
  # rx pass
    rx909_cur."!cursor_pass"(rx909_pos, "term:sym<name>")
    if_null rx909_debug, debug_765
    rx909_cur."!cursor_debug"("PASS", "term:sym<name>", " at pos=", rx909_pos)
  debug_765:
    .return (rx909_cur)
  rx909_restart:
.annotate 'line', 4
    if_null rx909_debug, debug_766
    rx909_cur."!cursor_debug"("NEXT", "term:sym<name>")
  debug_766:
  rx909_fail:
    (rx909_rep, rx909_pos, $I10, $P10) = rx909_cur."!mark_fail"(0)
    lt rx909_pos, -1, rx909_done
    eq rx909_pos, -1, rx909_fail
    jump $I10
  rx909_done:
    rx909_cur."!cursor_fail"()
    if_null rx909_debug, debug_767
    rx909_cur."!cursor_debug"("FAIL", "term:sym<name>")
  debug_767:
    .return (rx909_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<name>"  :subid("205_1294592820.342") :method
.annotate 'line', 4
    $P911 = self."!PREFIX__!subrule"("name", "")
    new $P912, "ResizablePMCArray"
    push $P912, $P911
    .return ($P912)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<pir::op>"  :subid("206_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx917_tgt
    .local int rx917_pos
    .local int rx917_off
    .local int rx917_eos
    .local int rx917_rep
    .local pmc rx917_cur
    .local pmc rx917_debug
    (rx917_cur, rx917_pos, rx917_tgt, $I10) = self."!cursor_start"()
    rx917_cur."!cursor_caparray"("args")
    getattribute rx917_debug, rx917_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx917_cur
    .local pmc match
    .lex "$/", match
    length rx917_eos, rx917_tgt
    gt rx917_pos, rx917_eos, rx917_done
    set rx917_off, 0
    lt rx917_pos, 2, rx917_start
    sub rx917_off, rx917_pos, 1
    substr rx917_tgt, rx917_tgt, rx917_off
  rx917_start:
    eq $I10, 1, rx917_restart
    if_null rx917_debug, debug_768
    rx917_cur."!cursor_debug"("START", "term:sym<pir::op>")
  debug_768:
    $I10 = self.'from'()
    ne $I10, -1, rxscan920_done
    goto rxscan920_scan
  rxscan920_loop:
    ($P10) = rx917_cur."from"()
    inc $P10
    set rx917_pos, $P10
    ge rx917_pos, rx917_eos, rxscan920_done
  rxscan920_scan:
    set_addr $I10, rxscan920_loop
    rx917_cur."!mark_push"(0, rx917_pos, $I10)
  rxscan920_done:
.annotate 'line', 434
  # rx literal  "pir::"
    add $I11, rx917_pos, 5
    gt $I11, rx917_eos, rx917_fail
    sub $I11, rx917_pos, rx917_off
    substr $S10, rx917_tgt, $I11, 5
    ne $S10, "pir::", rx917_fail
    add rx917_pos, 5
  # rx subcapture "op"
    set_addr $I10, rxcap_921_fail
    rx917_cur."!mark_push"(0, rx917_pos, $I10)
  # rx charclass_q w r 1..-1
    sub $I10, rx917_pos, rx917_off
    find_not_cclass $I11, 8192, rx917_tgt, $I10, rx917_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx917_fail
    add rx917_pos, rx917_off, $I11
    set_addr $I10, rxcap_921_fail
    ($I12, $I11) = rx917_cur."!mark_peek"($I10)
    rx917_cur."!cursor_pos"($I11)
    ($P10) = rx917_cur."!cursor_start"()
    $P10."!cursor_pass"(rx917_pos, "")
    rx917_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("op")
    goto rxcap_921_done
  rxcap_921_fail:
    goto rx917_fail
  rxcap_921_done:
  # rx rxquantr922 ** 0..1
    set_addr $I10, rxquantr922_done
    rx917_cur."!mark_push"(0, rx917_pos, $I10)
  rxquantr922_loop:
  # rx subrule "args" subtype=capture negate=
    rx917_cur."!cursor_pos"(rx917_pos)
    $P10 = rx917_cur."args"()
    unless $P10, rx917_fail
    goto rxsubrule923_pass
  rxsubrule923_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx917_fail
  rxsubrule923_pass:
    set_addr $I10, rxsubrule923_back
    rx917_cur."!mark_push"(0, rx917_pos, $I10, $P10)
    $P10."!cursor_names"("args")
    rx917_pos = $P10."pos"()
    set_addr $I10, rxquantr922_done
    (rx917_rep) = rx917_cur."!mark_commit"($I10)
  rxquantr922_done:
.annotate 'line', 433
  # rx pass
    rx917_cur."!cursor_pass"(rx917_pos, "term:sym<pir::op>")
    if_null rx917_debug, debug_769
    rx917_cur."!cursor_debug"("PASS", "term:sym<pir::op>", " at pos=", rx917_pos)
  debug_769:
    .return (rx917_cur)
  rx917_restart:
.annotate 'line', 4
    if_null rx917_debug, debug_770
    rx917_cur."!cursor_debug"("NEXT", "term:sym<pir::op>")
  debug_770:
  rx917_fail:
    (rx917_rep, rx917_pos, $I10, $P10) = rx917_cur."!mark_fail"(0)
    lt rx917_pos, -1, rx917_done
    eq rx917_pos, -1, rx917_fail
    jump $I10
  rx917_done:
    rx917_cur."!cursor_fail"()
    if_null rx917_debug, debug_771
    rx917_cur."!cursor_debug"("FAIL", "term:sym<pir::op>")
  debug_771:
    .return (rx917_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<pir::op>"  :subid("207_1294592820.342") :method
.annotate 'line', 4
    new $P919, "ResizablePMCArray"
    push $P919, "pir::"
    .return ($P919)
.end


.namespace ["NQP";"Grammar"]
.sub "args"  :subid("208_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx925_tgt
    .local int rx925_pos
    .local int rx925_off
    .local int rx925_eos
    .local int rx925_rep
    .local pmc rx925_cur
    .local pmc rx925_debug
    (rx925_cur, rx925_pos, rx925_tgt, $I10) = self."!cursor_start"()
    getattribute rx925_debug, rx925_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx925_cur
    .local pmc match
    .lex "$/", match
    length rx925_eos, rx925_tgt
    gt rx925_pos, rx925_eos, rx925_done
    set rx925_off, 0
    lt rx925_pos, 2, rx925_start
    sub rx925_off, rx925_pos, 1
    substr rx925_tgt, rx925_tgt, rx925_off
  rx925_start:
    eq $I10, 1, rx925_restart
    if_null rx925_debug, debug_772
    rx925_cur."!cursor_debug"("START", "args")
  debug_772:
    $I10 = self.'from'()
    ne $I10, -1, rxscan929_done
    goto rxscan929_scan
  rxscan929_loop:
    ($P10) = rx925_cur."from"()
    inc $P10
    set rx925_pos, $P10
    ge rx925_pos, rx925_eos, rxscan929_done
  rxscan929_scan:
    set_addr $I10, rxscan929_loop
    rx925_cur."!mark_push"(0, rx925_pos, $I10)
  rxscan929_done:
.annotate 'line', 438
  # rx literal  "("
    add $I11, rx925_pos, 1
    gt $I11, rx925_eos, rx925_fail
    sub $I11, rx925_pos, rx925_off
    ord $I11, rx925_tgt, $I11
    ne $I11, 40, rx925_fail
    add rx925_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx925_cur."!cursor_pos"(rx925_pos)
    $P10 = rx925_cur."arglist"()
    unless $P10, rx925_fail
    rx925_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx925_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx925_pos, 1
    gt $I11, rx925_eos, rx925_fail
    sub $I11, rx925_pos, rx925_off
    ord $I11, rx925_tgt, $I11
    ne $I11, 41, rx925_fail
    add rx925_pos, 1
  # rx pass
    rx925_cur."!cursor_pass"(rx925_pos, "args")
    if_null rx925_debug, debug_773
    rx925_cur."!cursor_debug"("PASS", "args", " at pos=", rx925_pos)
  debug_773:
    .return (rx925_cur)
  rx925_restart:
.annotate 'line', 4
    if_null rx925_debug, debug_774
    rx925_cur."!cursor_debug"("NEXT", "args")
  debug_774:
  rx925_fail:
    (rx925_rep, rx925_pos, $I10, $P10) = rx925_cur."!mark_fail"(0)
    lt rx925_pos, -1, rx925_done
    eq rx925_pos, -1, rx925_fail
    jump $I10
  rx925_done:
    rx925_cur."!cursor_fail"()
    if_null rx925_debug, debug_775
    rx925_cur."!cursor_debug"("FAIL", "args")
  debug_775:
    .return (rx925_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__args"  :subid("209_1294592820.342") :method
.annotate 'line', 4
    $P927 = self."!PREFIX__!subrule"("arglist", "(")
    new $P928, "ResizablePMCArray"
    push $P928, $P927
    .return ($P928)
.end


.namespace ["NQP";"Grammar"]
.sub "arglist"  :subid("210_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx931_tgt
    .local int rx931_pos
    .local int rx931_off
    .local int rx931_eos
    .local int rx931_rep
    .local pmc rx931_cur
    .local pmc rx931_debug
    (rx931_cur, rx931_pos, rx931_tgt, $I10) = self."!cursor_start"()
    getattribute rx931_debug, rx931_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx931_cur
    .local pmc match
    .lex "$/", match
    length rx931_eos, rx931_tgt
    gt rx931_pos, rx931_eos, rx931_done
    set rx931_off, 0
    lt rx931_pos, 2, rx931_start
    sub rx931_off, rx931_pos, 1
    substr rx931_tgt, rx931_tgt, rx931_off
  rx931_start:
    eq $I10, 1, rx931_restart
    if_null rx931_debug, debug_776
    rx931_cur."!cursor_debug"("START", "arglist")
  debug_776:
    $I10 = self.'from'()
    ne $I10, -1, rxscan935_done
    goto rxscan935_scan
  rxscan935_loop:
    ($P10) = rx931_cur."from"()
    inc $P10
    set rx931_pos, $P10
    ge rx931_pos, rx931_eos, rxscan935_done
  rxscan935_scan:
    set_addr $I10, rxscan935_loop
    rx931_cur."!mark_push"(0, rx931_pos, $I10)
  rxscan935_done:
.annotate 'line', 442
  # rx subrule "ws" subtype=method negate=
    rx931_cur."!cursor_pos"(rx931_pos)
    $P10 = rx931_cur."ws"()
    unless $P10, rx931_fail
    rx931_pos = $P10."pos"()
  alt936_0:
.annotate 'line', 443
    set_addr $I10, alt936_1
    rx931_cur."!mark_push"(0, rx931_pos, $I10)
.annotate 'line', 444
  # rx subrule "EXPR" subtype=capture negate=
    rx931_cur."!cursor_pos"(rx931_pos)
    $P10 = rx931_cur."EXPR"("f=")
    unless $P10, rx931_fail
    rx931_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx931_pos = $P10."pos"()
    goto alt936_end
  alt936_1:
  alt936_end:
.annotate 'line', 441
  # rx pass
    rx931_cur."!cursor_pass"(rx931_pos, "arglist")
    if_null rx931_debug, debug_777
    rx931_cur."!cursor_debug"("PASS", "arglist", " at pos=", rx931_pos)
  debug_777:
    .return (rx931_cur)
  rx931_restart:
.annotate 'line', 4
    if_null rx931_debug, debug_778
    rx931_cur."!cursor_debug"("NEXT", "arglist")
  debug_778:
  rx931_fail:
    (rx931_rep, rx931_pos, $I10, $P10) = rx931_cur."!mark_fail"(0)
    lt rx931_pos, -1, rx931_done
    eq rx931_pos, -1, rx931_fail
    jump $I10
  rx931_done:
    rx931_cur."!cursor_fail"()
    if_null rx931_debug, debug_779
    rx931_cur."!cursor_debug"("FAIL", "arglist")
  debug_779:
    .return (rx931_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__arglist"  :subid("211_1294592820.342") :method
.annotate 'line', 4
    $P933 = self."!PREFIX__!subrule"("ws", "")
    new $P934, "ResizablePMCArray"
    push $P934, $P933
    .return ($P934)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<value>"  :subid("212_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx938_tgt
    .local int rx938_pos
    .local int rx938_off
    .local int rx938_eos
    .local int rx938_rep
    .local pmc rx938_cur
    .local pmc rx938_debug
    (rx938_cur, rx938_pos, rx938_tgt, $I10) = self."!cursor_start"()
    getattribute rx938_debug, rx938_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx938_cur
    .local pmc match
    .lex "$/", match
    length rx938_eos, rx938_tgt
    gt rx938_pos, rx938_eos, rx938_done
    set rx938_off, 0
    lt rx938_pos, 2, rx938_start
    sub rx938_off, rx938_pos, 1
    substr rx938_tgt, rx938_tgt, rx938_off
  rx938_start:
    eq $I10, 1, rx938_restart
    if_null rx938_debug, debug_780
    rx938_cur."!cursor_debug"("START", "term:sym<value>")
  debug_780:
    $I10 = self.'from'()
    ne $I10, -1, rxscan942_done
    goto rxscan942_scan
  rxscan942_loop:
    ($P10) = rx938_cur."from"()
    inc $P10
    set rx938_pos, $P10
    ge rx938_pos, rx938_eos, rxscan942_done
  rxscan942_scan:
    set_addr $I10, rxscan942_loop
    rx938_cur."!mark_push"(0, rx938_pos, $I10)
  rxscan942_done:
.annotate 'line', 450
  # rx subrule "value" subtype=capture negate=
    rx938_cur."!cursor_pos"(rx938_pos)
    $P10 = rx938_cur."value"()
    unless $P10, rx938_fail
    rx938_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("value")
    rx938_pos = $P10."pos"()
  # rx pass
    rx938_cur."!cursor_pass"(rx938_pos, "term:sym<value>")
    if_null rx938_debug, debug_781
    rx938_cur."!cursor_debug"("PASS", "term:sym<value>", " at pos=", rx938_pos)
  debug_781:
    .return (rx938_cur)
  rx938_restart:
.annotate 'line', 4
    if_null rx938_debug, debug_782
    rx938_cur."!cursor_debug"("NEXT", "term:sym<value>")
  debug_782:
  rx938_fail:
    (rx938_rep, rx938_pos, $I10, $P10) = rx938_cur."!mark_fail"(0)
    lt rx938_pos, -1, rx938_done
    eq rx938_pos, -1, rx938_fail
    jump $I10
  rx938_done:
    rx938_cur."!cursor_fail"()
    if_null rx938_debug, debug_783
    rx938_cur."!cursor_debug"("FAIL", "term:sym<value>")
  debug_783:
    .return (rx938_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<value>"  :subid("213_1294592820.342") :method
.annotate 'line', 4
    $P940 = self."!PREFIX__!subrule"("value", "")
    new $P941, "ResizablePMCArray"
    push $P941, $P940
    .return ($P941)
.end


.namespace ["NQP";"Grammar"]
.sub "value"  :subid("214_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx944_tgt
    .local int rx944_pos
    .local int rx944_off
    .local int rx944_eos
    .local int rx944_rep
    .local pmc rx944_cur
    .local pmc rx944_debug
    (rx944_cur, rx944_pos, rx944_tgt, $I10) = self."!cursor_start"()
    getattribute rx944_debug, rx944_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx944_cur
    .local pmc match
    .lex "$/", match
    length rx944_eos, rx944_tgt
    gt rx944_pos, rx944_eos, rx944_done
    set rx944_off, 0
    lt rx944_pos, 2, rx944_start
    sub rx944_off, rx944_pos, 1
    substr rx944_tgt, rx944_tgt, rx944_off
  rx944_start:
    eq $I10, 1, rx944_restart
    if_null rx944_debug, debug_784
    rx944_cur."!cursor_debug"("START", "value")
  debug_784:
    $I10 = self.'from'()
    ne $I10, -1, rxscan949_done
    goto rxscan949_scan
  rxscan949_loop:
    ($P10) = rx944_cur."from"()
    inc $P10
    set rx944_pos, $P10
    ge rx944_pos, rx944_eos, rxscan949_done
  rxscan949_scan:
    set_addr $I10, rxscan949_loop
    rx944_cur."!mark_push"(0, rx944_pos, $I10)
  rxscan949_done:
  alt950_0:
.annotate 'line', 452
    set_addr $I10, alt950_1
    rx944_cur."!mark_push"(0, rx944_pos, $I10)
.annotate 'line', 453
  # rx subrule "quote" subtype=capture negate=
    rx944_cur."!cursor_pos"(rx944_pos)
    $P10 = rx944_cur."quote"()
    unless $P10, rx944_fail
    rx944_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote")
    rx944_pos = $P10."pos"()
    goto alt950_end
  alt950_1:
.annotate 'line', 454
  # rx subrule "number" subtype=capture negate=
    rx944_cur."!cursor_pos"(rx944_pos)
    $P10 = rx944_cur."number"()
    unless $P10, rx944_fail
    rx944_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("number")
    rx944_pos = $P10."pos"()
  alt950_end:
.annotate 'line', 452
  # rx pass
    rx944_cur."!cursor_pass"(rx944_pos, "value")
    if_null rx944_debug, debug_785
    rx944_cur."!cursor_debug"("PASS", "value", " at pos=", rx944_pos)
  debug_785:
    .return (rx944_cur)
  rx944_restart:
.annotate 'line', 4
    if_null rx944_debug, debug_786
    rx944_cur."!cursor_debug"("NEXT", "value")
  debug_786:
  rx944_fail:
    (rx944_rep, rx944_pos, $I10, $P10) = rx944_cur."!mark_fail"(0)
    lt rx944_pos, -1, rx944_done
    eq rx944_pos, -1, rx944_fail
    jump $I10
  rx944_done:
    rx944_cur."!cursor_fail"()
    if_null rx944_debug, debug_787
    rx944_cur."!cursor_debug"("FAIL", "value")
  debug_787:
    .return (rx944_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__value"  :subid("215_1294592820.342") :method
.annotate 'line', 4
    $P946 = self."!PREFIX__!subrule"("number", "")
    $P947 = self."!PREFIX__!subrule"("quote", "")
    new $P948, "ResizablePMCArray"
    push $P948, $P946
    push $P948, $P947
    .return ($P948)
.end


.namespace ["NQP";"Grammar"]
.sub "number"  :subid("216_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx952_tgt
    .local int rx952_pos
    .local int rx952_off
    .local int rx952_eos
    .local int rx952_rep
    .local pmc rx952_cur
    .local pmc rx952_debug
    (rx952_cur, rx952_pos, rx952_tgt, $I10) = self."!cursor_start"()
    getattribute rx952_debug, rx952_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx952_cur
    .local pmc match
    .lex "$/", match
    length rx952_eos, rx952_tgt
    gt rx952_pos, rx952_eos, rx952_done
    set rx952_off, 0
    lt rx952_pos, 2, rx952_start
    sub rx952_off, rx952_pos, 1
    substr rx952_tgt, rx952_tgt, rx952_off
  rx952_start:
    eq $I10, 1, rx952_restart
    if_null rx952_debug, debug_788
    rx952_cur."!cursor_debug"("START", "number")
  debug_788:
    $I10 = self.'from'()
    ne $I10, -1, rxscan955_done
    goto rxscan955_scan
  rxscan955_loop:
    ($P10) = rx952_cur."from"()
    inc $P10
    set rx952_pos, $P10
    ge rx952_pos, rx952_eos, rxscan955_done
  rxscan955_scan:
    set_addr $I10, rxscan955_loop
    rx952_cur."!mark_push"(0, rx952_pos, $I10)
  rxscan955_done:
.annotate 'line', 458
  # rx subcapture "sign"
    set_addr $I10, rxcap_957_fail
    rx952_cur."!mark_push"(0, rx952_pos, $I10)
  # rx enumcharlist_q negate=0  r 0..1
    sub $I10, rx952_pos, rx952_off
    set rx952_rep, 0
    sub $I12, rx952_eos, rx952_pos
    le $I12, 1, rxenumcharlistq956_loop
    set $I12, 1
  rxenumcharlistq956_loop:
    le $I12, 0, rxenumcharlistq956_done
    substr $S10, rx952_tgt, $I10, 1
    index $I11, "+-", $S10
    lt $I11, 0, rxenumcharlistq956_done
    inc rx952_rep
  rxenumcharlistq956_done:
    add rx952_pos, rx952_pos, rx952_rep
    set_addr $I10, rxcap_957_fail
    ($I12, $I11) = rx952_cur."!mark_peek"($I10)
    rx952_cur."!cursor_pos"($I11)
    ($P10) = rx952_cur."!cursor_start"()
    $P10."!cursor_pass"(rx952_pos, "")
    rx952_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sign")
    goto rxcap_957_done
  rxcap_957_fail:
    goto rx952_fail
  rxcap_957_done:
  alt958_0:
.annotate 'line', 459
    set_addr $I10, alt958_1
    rx952_cur."!mark_push"(0, rx952_pos, $I10)
  # rx subrule "dec_number" subtype=capture negate=
    rx952_cur."!cursor_pos"(rx952_pos)
    $P10 = rx952_cur."dec_number"()
    unless $P10, rx952_fail
    rx952_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("dec_number")
    rx952_pos = $P10."pos"()
    goto alt958_end
  alt958_1:
  # rx subrule "integer" subtype=capture negate=
    rx952_cur."!cursor_pos"(rx952_pos)
    $P10 = rx952_cur."integer"()
    unless $P10, rx952_fail
    rx952_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("integer")
    rx952_pos = $P10."pos"()
  alt958_end:
.annotate 'line', 457
  # rx pass
    rx952_cur."!cursor_pass"(rx952_pos, "number")
    if_null rx952_debug, debug_789
    rx952_cur."!cursor_debug"("PASS", "number", " at pos=", rx952_pos)
  debug_789:
    .return (rx952_cur)
  rx952_restart:
.annotate 'line', 4
    if_null rx952_debug, debug_790
    rx952_cur."!cursor_debug"("NEXT", "number")
  debug_790:
  rx952_fail:
    (rx952_rep, rx952_pos, $I10, $P10) = rx952_cur."!mark_fail"(0)
    lt rx952_pos, -1, rx952_done
    eq rx952_pos, -1, rx952_fail
    jump $I10
  rx952_done:
    rx952_cur."!cursor_fail"()
    if_null rx952_debug, debug_791
    rx952_cur."!cursor_debug"("FAIL", "number")
  debug_791:
    .return (rx952_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__number"  :subid("217_1294592820.342") :method
.annotate 'line', 4
    new $P954, "ResizablePMCArray"
    push $P954, ""
    .return ($P954)
.end


.namespace ["NQP";"Grammar"]
.sub "quote"  :subid("218_1294592820.342") :method
.annotate 'line', 462
    $P960 = self."!protoregex"("quote")
    .return ($P960)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote"  :subid("219_1294592820.342") :method
.annotate 'line', 462
    $P962 = self."!PREFIX__!protoregex"("quote")
    .return ($P962)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<apos>"  :subid("220_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx964_tgt
    .local int rx964_pos
    .local int rx964_off
    .local int rx964_eos
    .local int rx964_rep
    .local pmc rx964_cur
    .local pmc rx964_debug
    (rx964_cur, rx964_pos, rx964_tgt, $I10) = self."!cursor_start"()
    getattribute rx964_debug, rx964_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx964_cur
    .local pmc match
    .lex "$/", match
    length rx964_eos, rx964_tgt
    gt rx964_pos, rx964_eos, rx964_done
    set rx964_off, 0
    lt rx964_pos, 2, rx964_start
    sub rx964_off, rx964_pos, 1
    substr rx964_tgt, rx964_tgt, rx964_off
  rx964_start:
    eq $I10, 1, rx964_restart
    if_null rx964_debug, debug_792
    rx964_cur."!cursor_debug"("START", "quote:sym<apos>")
  debug_792:
    $I10 = self.'from'()
    ne $I10, -1, rxscan967_done
    goto rxscan967_scan
  rxscan967_loop:
    ($P10) = rx964_cur."from"()
    inc $P10
    set rx964_pos, $P10
    ge rx964_pos, rx964_eos, rxscan967_done
  rxscan967_scan:
    set_addr $I10, rxscan967_loop
    rx964_cur."!mark_push"(0, rx964_pos, $I10)
  rxscan967_done:
.annotate 'line', 463
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx964_pos, rx964_off
    substr $S10, rx964_tgt, $I10, 1
    index $I11, "'", $S10
    lt $I11, 0, rx964_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx964_cur."!cursor_pos"(rx964_pos)
    $P10 = rx964_cur."quote_EXPR"(":q")
    unless $P10, rx964_fail
    rx964_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx964_pos = $P10."pos"()
  # rx pass
    rx964_cur."!cursor_pass"(rx964_pos, "quote:sym<apos>")
    if_null rx964_debug, debug_793
    rx964_cur."!cursor_debug"("PASS", "quote:sym<apos>", " at pos=", rx964_pos)
  debug_793:
    .return (rx964_cur)
  rx964_restart:
.annotate 'line', 4
    if_null rx964_debug, debug_794
    rx964_cur."!cursor_debug"("NEXT", "quote:sym<apos>")
  debug_794:
  rx964_fail:
    (rx964_rep, rx964_pos, $I10, $P10) = rx964_cur."!mark_fail"(0)
    lt rx964_pos, -1, rx964_done
    eq rx964_pos, -1, rx964_fail
    jump $I10
  rx964_done:
    rx964_cur."!cursor_fail"()
    if_null rx964_debug, debug_795
    rx964_cur."!cursor_debug"("FAIL", "quote:sym<apos>")
  debug_795:
    .return (rx964_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<apos>"  :subid("221_1294592820.342") :method
.annotate 'line', 4
    new $P966, "ResizablePMCArray"
    push $P966, "'"
    .return ($P966)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<dblq>"  :subid("222_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx969_tgt
    .local int rx969_pos
    .local int rx969_off
    .local int rx969_eos
    .local int rx969_rep
    .local pmc rx969_cur
    .local pmc rx969_debug
    (rx969_cur, rx969_pos, rx969_tgt, $I10) = self."!cursor_start"()
    getattribute rx969_debug, rx969_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx969_cur
    .local pmc match
    .lex "$/", match
    length rx969_eos, rx969_tgt
    gt rx969_pos, rx969_eos, rx969_done
    set rx969_off, 0
    lt rx969_pos, 2, rx969_start
    sub rx969_off, rx969_pos, 1
    substr rx969_tgt, rx969_tgt, rx969_off
  rx969_start:
    eq $I10, 1, rx969_restart
    if_null rx969_debug, debug_796
    rx969_cur."!cursor_debug"("START", "quote:sym<dblq>")
  debug_796:
    $I10 = self.'from'()
    ne $I10, -1, rxscan972_done
    goto rxscan972_scan
  rxscan972_loop:
    ($P10) = rx969_cur."from"()
    inc $P10
    set rx969_pos, $P10
    ge rx969_pos, rx969_eos, rxscan972_done
  rxscan972_scan:
    set_addr $I10, rxscan972_loop
    rx969_cur."!mark_push"(0, rx969_pos, $I10)
  rxscan972_done:
.annotate 'line', 464
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx969_pos, rx969_off
    substr $S10, rx969_tgt, $I10, 1
    index $I11, "\"", $S10
    lt $I11, 0, rx969_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx969_cur."!cursor_pos"(rx969_pos)
    $P10 = rx969_cur."quote_EXPR"(":qq")
    unless $P10, rx969_fail
    rx969_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx969_pos = $P10."pos"()
  # rx pass
    rx969_cur."!cursor_pass"(rx969_pos, "quote:sym<dblq>")
    if_null rx969_debug, debug_797
    rx969_cur."!cursor_debug"("PASS", "quote:sym<dblq>", " at pos=", rx969_pos)
  debug_797:
    .return (rx969_cur)
  rx969_restart:
.annotate 'line', 4
    if_null rx969_debug, debug_798
    rx969_cur."!cursor_debug"("NEXT", "quote:sym<dblq>")
  debug_798:
  rx969_fail:
    (rx969_rep, rx969_pos, $I10, $P10) = rx969_cur."!mark_fail"(0)
    lt rx969_pos, -1, rx969_done
    eq rx969_pos, -1, rx969_fail
    jump $I10
  rx969_done:
    rx969_cur."!cursor_fail"()
    if_null rx969_debug, debug_799
    rx969_cur."!cursor_debug"("FAIL", "quote:sym<dblq>")
  debug_799:
    .return (rx969_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<dblq>"  :subid("223_1294592820.342") :method
.annotate 'line', 4
    new $P971, "ResizablePMCArray"
    push $P971, "\""
    .return ($P971)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<q>"  :subid("224_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx974_tgt
    .local int rx974_pos
    .local int rx974_off
    .local int rx974_eos
    .local int rx974_rep
    .local pmc rx974_cur
    .local pmc rx974_debug
    (rx974_cur, rx974_pos, rx974_tgt, $I10) = self."!cursor_start"()
    getattribute rx974_debug, rx974_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx974_cur
    .local pmc match
    .lex "$/", match
    length rx974_eos, rx974_tgt
    gt rx974_pos, rx974_eos, rx974_done
    set rx974_off, 0
    lt rx974_pos, 2, rx974_start
    sub rx974_off, rx974_pos, 1
    substr rx974_tgt, rx974_tgt, rx974_off
  rx974_start:
    eq $I10, 1, rx974_restart
    if_null rx974_debug, debug_800
    rx974_cur."!cursor_debug"("START", "quote:sym<q>")
  debug_800:
    $I10 = self.'from'()
    ne $I10, -1, rxscan978_done
    goto rxscan978_scan
  rxscan978_loop:
    ($P10) = rx974_cur."from"()
    inc $P10
    set rx974_pos, $P10
    ge rx974_pos, rx974_eos, rxscan978_done
  rxscan978_scan:
    set_addr $I10, rxscan978_loop
    rx974_cur."!mark_push"(0, rx974_pos, $I10)
  rxscan978_done:
.annotate 'line', 465
  # rx literal  "q"
    add $I11, rx974_pos, 1
    gt $I11, rx974_eos, rx974_fail
    sub $I11, rx974_pos, rx974_off
    ord $I11, rx974_tgt, $I11
    ne $I11, 113, rx974_fail
    add rx974_pos, 1
  # rxanchor rwb
    le rx974_pos, 0, rx974_fail
    sub $I10, rx974_pos, rx974_off
    is_cclass $I11, 8192, rx974_tgt, $I10
    if $I11, rx974_fail
    dec $I10
    is_cclass $I11, 8192, rx974_tgt, $I10
    unless $I11, rx974_fail
  # rx enumcharlist negate=1 zerowidth
    sub $I10, rx974_pos, rx974_off
    substr $S10, rx974_tgt, $I10, 1
    index $I11, "(", $S10
    ge $I11, 0, rx974_fail
  # rx subrule "ws" subtype=method negate=
    rx974_cur."!cursor_pos"(rx974_pos)
    $P10 = rx974_cur."ws"()
    unless $P10, rx974_fail
    rx974_pos = $P10."pos"()
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx974_cur."!cursor_pos"(rx974_pos)
    $P10 = rx974_cur."quote_EXPR"(":q")
    unless $P10, rx974_fail
    rx974_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx974_pos = $P10."pos"()
  # rx pass
    rx974_cur."!cursor_pass"(rx974_pos, "quote:sym<q>")
    if_null rx974_debug, debug_801
    rx974_cur."!cursor_debug"("PASS", "quote:sym<q>", " at pos=", rx974_pos)
  debug_801:
    .return (rx974_cur)
  rx974_restart:
.annotate 'line', 4
    if_null rx974_debug, debug_802
    rx974_cur."!cursor_debug"("NEXT", "quote:sym<q>")
  debug_802:
  rx974_fail:
    (rx974_rep, rx974_pos, $I10, $P10) = rx974_cur."!mark_fail"(0)
    lt rx974_pos, -1, rx974_done
    eq rx974_pos, -1, rx974_fail
    jump $I10
  rx974_done:
    rx974_cur."!cursor_fail"()
    if_null rx974_debug, debug_803
    rx974_cur."!cursor_debug"("FAIL", "quote:sym<q>")
  debug_803:
    .return (rx974_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<q>"  :subid("225_1294592820.342") :method
.annotate 'line', 4
    $P976 = self."!PREFIX__!subrule"("ws", "q")
    new $P977, "ResizablePMCArray"
    push $P977, $P976
    .return ($P977)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<qq>"  :subid("226_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx980_tgt
    .local int rx980_pos
    .local int rx980_off
    .local int rx980_eos
    .local int rx980_rep
    .local pmc rx980_cur
    .local pmc rx980_debug
    (rx980_cur, rx980_pos, rx980_tgt, $I10) = self."!cursor_start"()
    getattribute rx980_debug, rx980_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx980_cur
    .local pmc match
    .lex "$/", match
    length rx980_eos, rx980_tgt
    gt rx980_pos, rx980_eos, rx980_done
    set rx980_off, 0
    lt rx980_pos, 2, rx980_start
    sub rx980_off, rx980_pos, 1
    substr rx980_tgt, rx980_tgt, rx980_off
  rx980_start:
    eq $I10, 1, rx980_restart
    if_null rx980_debug, debug_804
    rx980_cur."!cursor_debug"("START", "quote:sym<qq>")
  debug_804:
    $I10 = self.'from'()
    ne $I10, -1, rxscan984_done
    goto rxscan984_scan
  rxscan984_loop:
    ($P10) = rx980_cur."from"()
    inc $P10
    set rx980_pos, $P10
    ge rx980_pos, rx980_eos, rxscan984_done
  rxscan984_scan:
    set_addr $I10, rxscan984_loop
    rx980_cur."!mark_push"(0, rx980_pos, $I10)
  rxscan984_done:
.annotate 'line', 466
  # rx literal  "qq"
    add $I11, rx980_pos, 2
    gt $I11, rx980_eos, rx980_fail
    sub $I11, rx980_pos, rx980_off
    substr $S10, rx980_tgt, $I11, 2
    ne $S10, "qq", rx980_fail
    add rx980_pos, 2
  # rxanchor rwb
    le rx980_pos, 0, rx980_fail
    sub $I10, rx980_pos, rx980_off
    is_cclass $I11, 8192, rx980_tgt, $I10
    if $I11, rx980_fail
    dec $I10
    is_cclass $I11, 8192, rx980_tgt, $I10
    unless $I11, rx980_fail
  # rx enumcharlist negate=1 zerowidth
    sub $I10, rx980_pos, rx980_off
    substr $S10, rx980_tgt, $I10, 1
    index $I11, "(", $S10
    ge $I11, 0, rx980_fail
  # rx subrule "ws" subtype=method negate=
    rx980_cur."!cursor_pos"(rx980_pos)
    $P10 = rx980_cur."ws"()
    unless $P10, rx980_fail
    rx980_pos = $P10."pos"()
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx980_cur."!cursor_pos"(rx980_pos)
    $P10 = rx980_cur."quote_EXPR"(":qq")
    unless $P10, rx980_fail
    rx980_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx980_pos = $P10."pos"()
  # rx pass
    rx980_cur."!cursor_pass"(rx980_pos, "quote:sym<qq>")
    if_null rx980_debug, debug_805
    rx980_cur."!cursor_debug"("PASS", "quote:sym<qq>", " at pos=", rx980_pos)
  debug_805:
    .return (rx980_cur)
  rx980_restart:
.annotate 'line', 4
    if_null rx980_debug, debug_806
    rx980_cur."!cursor_debug"("NEXT", "quote:sym<qq>")
  debug_806:
  rx980_fail:
    (rx980_rep, rx980_pos, $I10, $P10) = rx980_cur."!mark_fail"(0)
    lt rx980_pos, -1, rx980_done
    eq rx980_pos, -1, rx980_fail
    jump $I10
  rx980_done:
    rx980_cur."!cursor_fail"()
    if_null rx980_debug, debug_807
    rx980_cur."!cursor_debug"("FAIL", "quote:sym<qq>")
  debug_807:
    .return (rx980_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<qq>"  :subid("227_1294592820.342") :method
.annotate 'line', 4
    $P982 = self."!PREFIX__!subrule"("ws", "qq")
    new $P983, "ResizablePMCArray"
    push $P983, $P982
    .return ($P983)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<Q>"  :subid("228_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx986_tgt
    .local int rx986_pos
    .local int rx986_off
    .local int rx986_eos
    .local int rx986_rep
    .local pmc rx986_cur
    .local pmc rx986_debug
    (rx986_cur, rx986_pos, rx986_tgt, $I10) = self."!cursor_start"()
    getattribute rx986_debug, rx986_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx986_cur
    .local pmc match
    .lex "$/", match
    length rx986_eos, rx986_tgt
    gt rx986_pos, rx986_eos, rx986_done
    set rx986_off, 0
    lt rx986_pos, 2, rx986_start
    sub rx986_off, rx986_pos, 1
    substr rx986_tgt, rx986_tgt, rx986_off
  rx986_start:
    eq $I10, 1, rx986_restart
    if_null rx986_debug, debug_808
    rx986_cur."!cursor_debug"("START", "quote:sym<Q>")
  debug_808:
    $I10 = self.'from'()
    ne $I10, -1, rxscan990_done
    goto rxscan990_scan
  rxscan990_loop:
    ($P10) = rx986_cur."from"()
    inc $P10
    set rx986_pos, $P10
    ge rx986_pos, rx986_eos, rxscan990_done
  rxscan990_scan:
    set_addr $I10, rxscan990_loop
    rx986_cur."!mark_push"(0, rx986_pos, $I10)
  rxscan990_done:
.annotate 'line', 467
  # rx literal  "Q"
    add $I11, rx986_pos, 1
    gt $I11, rx986_eos, rx986_fail
    sub $I11, rx986_pos, rx986_off
    ord $I11, rx986_tgt, $I11
    ne $I11, 81, rx986_fail
    add rx986_pos, 1
  # rxanchor rwb
    le rx986_pos, 0, rx986_fail
    sub $I10, rx986_pos, rx986_off
    is_cclass $I11, 8192, rx986_tgt, $I10
    if $I11, rx986_fail
    dec $I10
    is_cclass $I11, 8192, rx986_tgt, $I10
    unless $I11, rx986_fail
  # rx enumcharlist negate=1 zerowidth
    sub $I10, rx986_pos, rx986_off
    substr $S10, rx986_tgt, $I10, 1
    index $I11, "(", $S10
    ge $I11, 0, rx986_fail
  # rx subrule "ws" subtype=method negate=
    rx986_cur."!cursor_pos"(rx986_pos)
    $P10 = rx986_cur."ws"()
    unless $P10, rx986_fail
    rx986_pos = $P10."pos"()
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx986_cur."!cursor_pos"(rx986_pos)
    $P10 = rx986_cur."quote_EXPR"()
    unless $P10, rx986_fail
    rx986_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx986_pos = $P10."pos"()
  # rx pass
    rx986_cur."!cursor_pass"(rx986_pos, "quote:sym<Q>")
    if_null rx986_debug, debug_809
    rx986_cur."!cursor_debug"("PASS", "quote:sym<Q>", " at pos=", rx986_pos)
  debug_809:
    .return (rx986_cur)
  rx986_restart:
.annotate 'line', 4
    if_null rx986_debug, debug_810
    rx986_cur."!cursor_debug"("NEXT", "quote:sym<Q>")
  debug_810:
  rx986_fail:
    (rx986_rep, rx986_pos, $I10, $P10) = rx986_cur."!mark_fail"(0)
    lt rx986_pos, -1, rx986_done
    eq rx986_pos, -1, rx986_fail
    jump $I10
  rx986_done:
    rx986_cur."!cursor_fail"()
    if_null rx986_debug, debug_811
    rx986_cur."!cursor_debug"("FAIL", "quote:sym<Q>")
  debug_811:
    .return (rx986_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<Q>"  :subid("229_1294592820.342") :method
.annotate 'line', 4
    $P988 = self."!PREFIX__!subrule"("ws", "Q")
    new $P989, "ResizablePMCArray"
    push $P989, $P988
    .return ($P989)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<Q:PIR>"  :subid("230_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx992_tgt
    .local int rx992_pos
    .local int rx992_off
    .local int rx992_eos
    .local int rx992_rep
    .local pmc rx992_cur
    .local pmc rx992_debug
    (rx992_cur, rx992_pos, rx992_tgt, $I10) = self."!cursor_start"()
    getattribute rx992_debug, rx992_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx992_cur
    .local pmc match
    .lex "$/", match
    length rx992_eos, rx992_tgt
    gt rx992_pos, rx992_eos, rx992_done
    set rx992_off, 0
    lt rx992_pos, 2, rx992_start
    sub rx992_off, rx992_pos, 1
    substr rx992_tgt, rx992_tgt, rx992_off
  rx992_start:
    eq $I10, 1, rx992_restart
    if_null rx992_debug, debug_812
    rx992_cur."!cursor_debug"("START", "quote:sym<Q:PIR>")
  debug_812:
    $I10 = self.'from'()
    ne $I10, -1, rxscan996_done
    goto rxscan996_scan
  rxscan996_loop:
    ($P10) = rx992_cur."from"()
    inc $P10
    set rx992_pos, $P10
    ge rx992_pos, rx992_eos, rxscan996_done
  rxscan996_scan:
    set_addr $I10, rxscan996_loop
    rx992_cur."!mark_push"(0, rx992_pos, $I10)
  rxscan996_done:
.annotate 'line', 468
  # rx literal  "Q:PIR"
    add $I11, rx992_pos, 5
    gt $I11, rx992_eos, rx992_fail
    sub $I11, rx992_pos, rx992_off
    substr $S10, rx992_tgt, $I11, 5
    ne $S10, "Q:PIR", rx992_fail
    add rx992_pos, 5
  # rx subrule "ws" subtype=method negate=
    rx992_cur."!cursor_pos"(rx992_pos)
    $P10 = rx992_cur."ws"()
    unless $P10, rx992_fail
    rx992_pos = $P10."pos"()
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx992_cur."!cursor_pos"(rx992_pos)
    $P10 = rx992_cur."quote_EXPR"()
    unless $P10, rx992_fail
    rx992_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx992_pos = $P10."pos"()
  # rx pass
    rx992_cur."!cursor_pass"(rx992_pos, "quote:sym<Q:PIR>")
    if_null rx992_debug, debug_813
    rx992_cur."!cursor_debug"("PASS", "quote:sym<Q:PIR>", " at pos=", rx992_pos)
  debug_813:
    .return (rx992_cur)
  rx992_restart:
.annotate 'line', 4
    if_null rx992_debug, debug_814
    rx992_cur."!cursor_debug"("NEXT", "quote:sym<Q:PIR>")
  debug_814:
  rx992_fail:
    (rx992_rep, rx992_pos, $I10, $P10) = rx992_cur."!mark_fail"(0)
    lt rx992_pos, -1, rx992_done
    eq rx992_pos, -1, rx992_fail
    jump $I10
  rx992_done:
    rx992_cur."!cursor_fail"()
    if_null rx992_debug, debug_815
    rx992_cur."!cursor_debug"("FAIL", "quote:sym<Q:PIR>")
  debug_815:
    .return (rx992_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<Q:PIR>"  :subid("231_1294592820.342") :method
.annotate 'line', 4
    $P994 = self."!PREFIX__!subrule"("ws", "Q:PIR")
    new $P995, "ResizablePMCArray"
    push $P995, $P994
    .return ($P995)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym</ />"  :subid("232_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx998_tgt
    .local int rx998_pos
    .local int rx998_off
    .local int rx998_eos
    .local int rx998_rep
    .local pmc rx998_cur
    .local pmc rx998_debug
    (rx998_cur, rx998_pos, rx998_tgt, $I10) = self."!cursor_start"()
    getattribute rx998_debug, rx998_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx998_cur
    .local pmc match
    .lex "$/", match
    length rx998_eos, rx998_tgt
    gt rx998_pos, rx998_eos, rx998_done
    set rx998_off, 0
    lt rx998_pos, 2, rx998_start
    sub rx998_off, rx998_pos, 1
    substr rx998_tgt, rx998_tgt, rx998_off
  rx998_start:
    eq $I10, 1, rx998_restart
    if_null rx998_debug, debug_816
    rx998_cur."!cursor_debug"("START", "quote:sym</ />")
  debug_816:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1002_done
    goto rxscan1002_scan
  rxscan1002_loop:
    ($P10) = rx998_cur."from"()
    inc $P10
    set rx998_pos, $P10
    ge rx998_pos, rx998_eos, rxscan1002_done
  rxscan1002_scan:
    set_addr $I10, rxscan1002_loop
    rx998_cur."!mark_push"(0, rx998_pos, $I10)
  rxscan1002_done:
.annotate 'line', 470
  # rx literal  "/"
    add $I11, rx998_pos, 1
    gt $I11, rx998_eos, rx998_fail
    sub $I11, rx998_pos, rx998_off
    ord $I11, rx998_tgt, $I11
    ne $I11, 47, rx998_fail
    add rx998_pos, 1
.annotate 'line', 471
  # rx subrule "newpad" subtype=method negate=
    rx998_cur."!cursor_pos"(rx998_pos)
    $P10 = rx998_cur."newpad"()
    unless $P10, rx998_fail
    rx998_pos = $P10."pos"()
.annotate 'line', 472
  # rx reduce name="quote:sym</ />" key="open"
    rx998_cur."!cursor_pos"(rx998_pos)
    rx998_cur."!reduce"("quote:sym</ />", "open")
.annotate 'line', 473
  # rx subrule "LANG" subtype=capture negate=
    rx998_cur."!cursor_pos"(rx998_pos)
    $P10 = rx998_cur."LANG"("Regex", "nibbler")
    unless $P10, rx998_fail
    rx998_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("p6regex")
    rx998_pos = $P10."pos"()
.annotate 'line', 474
  # rx literal  "/"
    add $I11, rx998_pos, 1
    gt $I11, rx998_eos, rx998_fail
    sub $I11, rx998_pos, rx998_off
    ord $I11, rx998_tgt, $I11
    ne $I11, 47, rx998_fail
    add rx998_pos, 1
.annotate 'line', 469
  # rx pass
    rx998_cur."!cursor_pass"(rx998_pos, "quote:sym</ />")
    if_null rx998_debug, debug_817
    rx998_cur."!cursor_debug"("PASS", "quote:sym</ />", " at pos=", rx998_pos)
  debug_817:
    .return (rx998_cur)
  rx998_restart:
.annotate 'line', 4
    if_null rx998_debug, debug_818
    rx998_cur."!cursor_debug"("NEXT", "quote:sym</ />")
  debug_818:
  rx998_fail:
    (rx998_rep, rx998_pos, $I10, $P10) = rx998_cur."!mark_fail"(0)
    lt rx998_pos, -1, rx998_done
    eq rx998_pos, -1, rx998_fail
    jump $I10
  rx998_done:
    rx998_cur."!cursor_fail"()
    if_null rx998_debug, debug_819
    rx998_cur."!cursor_debug"("FAIL", "quote:sym</ />")
  debug_819:
    .return (rx998_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym</ />"  :subid("233_1294592820.342") :method
.annotate 'line', 4
    $P1000 = self."!PREFIX__!subrule"("newpad", "/")
    new $P1001, "ResizablePMCArray"
    push $P1001, $P1000
    .return ($P1001)
.end


.namespace ["NQP";"Grammar"]
.sub "quote_escape:sym<$>"  :subid("234_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx1004_tgt
    .local int rx1004_pos
    .local int rx1004_off
    .local int rx1004_eos
    .local int rx1004_rep
    .local pmc rx1004_cur
    .local pmc rx1004_debug
    (rx1004_cur, rx1004_pos, rx1004_tgt, $I10) = self."!cursor_start"()
    getattribute rx1004_debug, rx1004_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1004_cur
    .local pmc match
    .lex "$/", match
    length rx1004_eos, rx1004_tgt
    gt rx1004_pos, rx1004_eos, rx1004_done
    set rx1004_off, 0
    lt rx1004_pos, 2, rx1004_start
    sub rx1004_off, rx1004_pos, 1
    substr rx1004_tgt, rx1004_tgt, rx1004_off
  rx1004_start:
    eq $I10, 1, rx1004_restart
    if_null rx1004_debug, debug_820
    rx1004_cur."!cursor_debug"("START", "quote_escape:sym<$>")
  debug_820:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1007_done
    goto rxscan1007_scan
  rxscan1007_loop:
    ($P10) = rx1004_cur."from"()
    inc $P10
    set rx1004_pos, $P10
    ge rx1004_pos, rx1004_eos, rxscan1007_done
  rxscan1007_scan:
    set_addr $I10, rxscan1007_loop
    rx1004_cur."!mark_push"(0, rx1004_pos, $I10)
  rxscan1007_done:
.annotate 'line', 477
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx1004_pos, rx1004_off
    substr $S10, rx1004_tgt, $I10, 1
    index $I11, "$", $S10
    lt $I11, 0, rx1004_fail
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx1004_cur."!cursor_pos"(rx1004_pos)
    $P10 = rx1004_cur."quotemod_check"("s")
    unless $P10, rx1004_fail
  # rx subrule "variable" subtype=capture negate=
    rx1004_cur."!cursor_pos"(rx1004_pos)
    $P10 = rx1004_cur."variable"()
    unless $P10, rx1004_fail
    rx1004_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("variable")
    rx1004_pos = $P10."pos"()
  # rx pass
    rx1004_cur."!cursor_pass"(rx1004_pos, "quote_escape:sym<$>")
    if_null rx1004_debug, debug_821
    rx1004_cur."!cursor_debug"("PASS", "quote_escape:sym<$>", " at pos=", rx1004_pos)
  debug_821:
    .return (rx1004_cur)
  rx1004_restart:
.annotate 'line', 4
    if_null rx1004_debug, debug_822
    rx1004_cur."!cursor_debug"("NEXT", "quote_escape:sym<$>")
  debug_822:
  rx1004_fail:
    (rx1004_rep, rx1004_pos, $I10, $P10) = rx1004_cur."!mark_fail"(0)
    lt rx1004_pos, -1, rx1004_done
    eq rx1004_pos, -1, rx1004_fail
    jump $I10
  rx1004_done:
    rx1004_cur."!cursor_fail"()
    if_null rx1004_debug, debug_823
    rx1004_cur."!cursor_debug"("FAIL", "quote_escape:sym<$>")
  debug_823:
    .return (rx1004_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote_escape:sym<$>"  :subid("235_1294592820.342") :method
.annotate 'line', 4
    new $P1006, "ResizablePMCArray"
    push $P1006, "$"
    .return ($P1006)
.end


.namespace ["NQP";"Grammar"]
.sub "quote_escape:sym<{ }>"  :subid("236_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx1009_tgt
    .local int rx1009_pos
    .local int rx1009_off
    .local int rx1009_eos
    .local int rx1009_rep
    .local pmc rx1009_cur
    .local pmc rx1009_debug
    (rx1009_cur, rx1009_pos, rx1009_tgt, $I10) = self."!cursor_start"()
    getattribute rx1009_debug, rx1009_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1009_cur
    .local pmc match
    .lex "$/", match
    length rx1009_eos, rx1009_tgt
    gt rx1009_pos, rx1009_eos, rx1009_done
    set rx1009_off, 0
    lt rx1009_pos, 2, rx1009_start
    sub rx1009_off, rx1009_pos, 1
    substr rx1009_tgt, rx1009_tgt, rx1009_off
  rx1009_start:
    eq $I10, 1, rx1009_restart
    if_null rx1009_debug, debug_824
    rx1009_cur."!cursor_debug"("START", "quote_escape:sym<{ }>")
  debug_824:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1012_done
    goto rxscan1012_scan
  rxscan1012_loop:
    ($P10) = rx1009_cur."from"()
    inc $P10
    set rx1009_pos, $P10
    ge rx1009_pos, rx1009_eos, rxscan1012_done
  rxscan1012_scan:
    set_addr $I10, rxscan1012_loop
    rx1009_cur."!mark_push"(0, rx1009_pos, $I10)
  rxscan1012_done:
.annotate 'line', 478
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx1009_pos, rx1009_off
    substr $S10, rx1009_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx1009_fail
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx1009_cur."!cursor_pos"(rx1009_pos)
    $P10 = rx1009_cur."quotemod_check"("c")
    unless $P10, rx1009_fail
  # rx subrule "block" subtype=capture negate=
    rx1009_cur."!cursor_pos"(rx1009_pos)
    $P10 = rx1009_cur."block"()
    unless $P10, rx1009_fail
    rx1009_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("block")
    rx1009_pos = $P10."pos"()
  # rx pass
    rx1009_cur."!cursor_pass"(rx1009_pos, "quote_escape:sym<{ }>")
    if_null rx1009_debug, debug_825
    rx1009_cur."!cursor_debug"("PASS", "quote_escape:sym<{ }>", " at pos=", rx1009_pos)
  debug_825:
    .return (rx1009_cur)
  rx1009_restart:
.annotate 'line', 4
    if_null rx1009_debug, debug_826
    rx1009_cur."!cursor_debug"("NEXT", "quote_escape:sym<{ }>")
  debug_826:
  rx1009_fail:
    (rx1009_rep, rx1009_pos, $I10, $P10) = rx1009_cur."!mark_fail"(0)
    lt rx1009_pos, -1, rx1009_done
    eq rx1009_pos, -1, rx1009_fail
    jump $I10
  rx1009_done:
    rx1009_cur."!cursor_fail"()
    if_null rx1009_debug, debug_827
    rx1009_cur."!cursor_debug"("FAIL", "quote_escape:sym<{ }>")
  debug_827:
    .return (rx1009_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote_escape:sym<{ }>"  :subid("237_1294592820.342") :method
.annotate 'line', 4
    new $P1011, "ResizablePMCArray"
    push $P1011, "{"
    .return ($P1011)
.end


.namespace ["NQP";"Grammar"]
.sub "quote_escape:sym<esc>"  :subid("238_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx1014_tgt
    .local int rx1014_pos
    .local int rx1014_off
    .local int rx1014_eos
    .local int rx1014_rep
    .local pmc rx1014_cur
    .local pmc rx1014_debug
    (rx1014_cur, rx1014_pos, rx1014_tgt, $I10) = self."!cursor_start"()
    getattribute rx1014_debug, rx1014_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1014_cur
    .local pmc match
    .lex "$/", match
    length rx1014_eos, rx1014_tgt
    gt rx1014_pos, rx1014_eos, rx1014_done
    set rx1014_off, 0
    lt rx1014_pos, 2, rx1014_start
    sub rx1014_off, rx1014_pos, 1
    substr rx1014_tgt, rx1014_tgt, rx1014_off
  rx1014_start:
    eq $I10, 1, rx1014_restart
    if_null rx1014_debug, debug_828
    rx1014_cur."!cursor_debug"("START", "quote_escape:sym<esc>")
  debug_828:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1017_done
    goto rxscan1017_scan
  rxscan1017_loop:
    ($P10) = rx1014_cur."from"()
    inc $P10
    set rx1014_pos, $P10
    ge rx1014_pos, rx1014_eos, rxscan1017_done
  rxscan1017_scan:
    set_addr $I10, rxscan1017_loop
    rx1014_cur."!mark_push"(0, rx1014_pos, $I10)
  rxscan1017_done:
.annotate 'line', 479
  # rx literal  "\\e"
    add $I11, rx1014_pos, 2
    gt $I11, rx1014_eos, rx1014_fail
    sub $I11, rx1014_pos, rx1014_off
    substr $S10, rx1014_tgt, $I11, 2
    ne $S10, "\\e", rx1014_fail
    add rx1014_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx1014_cur."!cursor_pos"(rx1014_pos)
    $P10 = rx1014_cur."quotemod_check"("b")
    unless $P10, rx1014_fail
  # rx pass
    rx1014_cur."!cursor_pass"(rx1014_pos, "quote_escape:sym<esc>")
    if_null rx1014_debug, debug_829
    rx1014_cur."!cursor_debug"("PASS", "quote_escape:sym<esc>", " at pos=", rx1014_pos)
  debug_829:
    .return (rx1014_cur)
  rx1014_restart:
.annotate 'line', 4
    if_null rx1014_debug, debug_830
    rx1014_cur."!cursor_debug"("NEXT", "quote_escape:sym<esc>")
  debug_830:
  rx1014_fail:
    (rx1014_rep, rx1014_pos, $I10, $P10) = rx1014_cur."!mark_fail"(0)
    lt rx1014_pos, -1, rx1014_done
    eq rx1014_pos, -1, rx1014_fail
    jump $I10
  rx1014_done:
    rx1014_cur."!cursor_fail"()
    if_null rx1014_debug, debug_831
    rx1014_cur."!cursor_debug"("FAIL", "quote_escape:sym<esc>")
  debug_831:
    .return (rx1014_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote_escape:sym<esc>"  :subid("239_1294592820.342") :method
.annotate 'line', 4
    new $P1016, "ResizablePMCArray"
    push $P1016, "\\e"
    .return ($P1016)
.end


.namespace ["NQP";"Grammar"]
.sub "circumfix:sym<( )>"  :subid("240_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx1019_tgt
    .local int rx1019_pos
    .local int rx1019_off
    .local int rx1019_eos
    .local int rx1019_rep
    .local pmc rx1019_cur
    .local pmc rx1019_debug
    (rx1019_cur, rx1019_pos, rx1019_tgt, $I10) = self."!cursor_start"()
    rx1019_cur."!cursor_caparray"("EXPR")
    getattribute rx1019_debug, rx1019_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1019_cur
    .local pmc match
    .lex "$/", match
    length rx1019_eos, rx1019_tgt
    gt rx1019_pos, rx1019_eos, rx1019_done
    set rx1019_off, 0
    lt rx1019_pos, 2, rx1019_start
    sub rx1019_off, rx1019_pos, 1
    substr rx1019_tgt, rx1019_tgt, rx1019_off
  rx1019_start:
    eq $I10, 1, rx1019_restart
    if_null rx1019_debug, debug_832
    rx1019_cur."!cursor_debug"("START", "circumfix:sym<( )>")
  debug_832:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1023_done
    goto rxscan1023_scan
  rxscan1023_loop:
    ($P10) = rx1019_cur."from"()
    inc $P10
    set rx1019_pos, $P10
    ge rx1019_pos, rx1019_eos, rxscan1023_done
  rxscan1023_scan:
    set_addr $I10, rxscan1023_loop
    rx1019_cur."!mark_push"(0, rx1019_pos, $I10)
  rxscan1023_done:
.annotate 'line', 481
  # rx literal  "("
    add $I11, rx1019_pos, 1
    gt $I11, rx1019_eos, rx1019_fail
    sub $I11, rx1019_pos, rx1019_off
    ord $I11, rx1019_tgt, $I11
    ne $I11, 40, rx1019_fail
    add rx1019_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx1019_cur."!cursor_pos"(rx1019_pos)
    $P10 = rx1019_cur."ws"()
    unless $P10, rx1019_fail
    rx1019_pos = $P10."pos"()
  # rx rxquantr1024 ** 0..1
    set_addr $I10, rxquantr1024_done
    rx1019_cur."!mark_push"(0, rx1019_pos, $I10)
  rxquantr1024_loop:
  # rx subrule "EXPR" subtype=capture negate=
    rx1019_cur."!cursor_pos"(rx1019_pos)
    $P10 = rx1019_cur."EXPR"()
    unless $P10, rx1019_fail
    goto rxsubrule1025_pass
  rxsubrule1025_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx1019_fail
  rxsubrule1025_pass:
    set_addr $I10, rxsubrule1025_back
    rx1019_cur."!mark_push"(0, rx1019_pos, $I10, $P10)
    $P10."!cursor_names"("EXPR")
    rx1019_pos = $P10."pos"()
    set_addr $I10, rxquantr1024_done
    (rx1019_rep) = rx1019_cur."!mark_commit"($I10)
  rxquantr1024_done:
  # rx literal  ")"
    add $I11, rx1019_pos, 1
    gt $I11, rx1019_eos, rx1019_fail
    sub $I11, rx1019_pos, rx1019_off
    ord $I11, rx1019_tgt, $I11
    ne $I11, 41, rx1019_fail
    add rx1019_pos, 1
  # rx pass
    rx1019_cur."!cursor_pass"(rx1019_pos, "circumfix:sym<( )>")
    if_null rx1019_debug, debug_833
    rx1019_cur."!cursor_debug"("PASS", "circumfix:sym<( )>", " at pos=", rx1019_pos)
  debug_833:
    .return (rx1019_cur)
  rx1019_restart:
.annotate 'line', 4
    if_null rx1019_debug, debug_834
    rx1019_cur."!cursor_debug"("NEXT", "circumfix:sym<( )>")
  debug_834:
  rx1019_fail:
    (rx1019_rep, rx1019_pos, $I10, $P10) = rx1019_cur."!mark_fail"(0)
    lt rx1019_pos, -1, rx1019_done
    eq rx1019_pos, -1, rx1019_fail
    jump $I10
  rx1019_done:
    rx1019_cur."!cursor_fail"()
    if_null rx1019_debug, debug_835
    rx1019_cur."!cursor_debug"("FAIL", "circumfix:sym<( )>")
  debug_835:
    .return (rx1019_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__circumfix:sym<( )>"  :subid("241_1294592820.342") :method
.annotate 'line', 4
    $P1021 = self."!PREFIX__!subrule"("ws", "(")
    new $P1022, "ResizablePMCArray"
    push $P1022, $P1021
    .return ($P1022)
.end


.namespace ["NQP";"Grammar"]
.sub "circumfix:sym<[ ]>"  :subid("242_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx1027_tgt
    .local int rx1027_pos
    .local int rx1027_off
    .local int rx1027_eos
    .local int rx1027_rep
    .local pmc rx1027_cur
    .local pmc rx1027_debug
    (rx1027_cur, rx1027_pos, rx1027_tgt, $I10) = self."!cursor_start"()
    rx1027_cur."!cursor_caparray"("EXPR")
    getattribute rx1027_debug, rx1027_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1027_cur
    .local pmc match
    .lex "$/", match
    length rx1027_eos, rx1027_tgt
    gt rx1027_pos, rx1027_eos, rx1027_done
    set rx1027_off, 0
    lt rx1027_pos, 2, rx1027_start
    sub rx1027_off, rx1027_pos, 1
    substr rx1027_tgt, rx1027_tgt, rx1027_off
  rx1027_start:
    eq $I10, 1, rx1027_restart
    if_null rx1027_debug, debug_836
    rx1027_cur."!cursor_debug"("START", "circumfix:sym<[ ]>")
  debug_836:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1031_done
    goto rxscan1031_scan
  rxscan1031_loop:
    ($P10) = rx1027_cur."from"()
    inc $P10
    set rx1027_pos, $P10
    ge rx1027_pos, rx1027_eos, rxscan1031_done
  rxscan1031_scan:
    set_addr $I10, rxscan1031_loop
    rx1027_cur."!mark_push"(0, rx1027_pos, $I10)
  rxscan1031_done:
.annotate 'line', 482
  # rx literal  "["
    add $I11, rx1027_pos, 1
    gt $I11, rx1027_eos, rx1027_fail
    sub $I11, rx1027_pos, rx1027_off
    ord $I11, rx1027_tgt, $I11
    ne $I11, 91, rx1027_fail
    add rx1027_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx1027_cur."!cursor_pos"(rx1027_pos)
    $P10 = rx1027_cur."ws"()
    unless $P10, rx1027_fail
    rx1027_pos = $P10."pos"()
  # rx rxquantr1032 ** 0..1
    set_addr $I10, rxquantr1032_done
    rx1027_cur."!mark_push"(0, rx1027_pos, $I10)
  rxquantr1032_loop:
  # rx subrule "EXPR" subtype=capture negate=
    rx1027_cur."!cursor_pos"(rx1027_pos)
    $P10 = rx1027_cur."EXPR"()
    unless $P10, rx1027_fail
    goto rxsubrule1033_pass
  rxsubrule1033_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx1027_fail
  rxsubrule1033_pass:
    set_addr $I10, rxsubrule1033_back
    rx1027_cur."!mark_push"(0, rx1027_pos, $I10, $P10)
    $P10."!cursor_names"("EXPR")
    rx1027_pos = $P10."pos"()
    set_addr $I10, rxquantr1032_done
    (rx1027_rep) = rx1027_cur."!mark_commit"($I10)
  rxquantr1032_done:
  # rx literal  "]"
    add $I11, rx1027_pos, 1
    gt $I11, rx1027_eos, rx1027_fail
    sub $I11, rx1027_pos, rx1027_off
    ord $I11, rx1027_tgt, $I11
    ne $I11, 93, rx1027_fail
    add rx1027_pos, 1
  # rx pass
    rx1027_cur."!cursor_pass"(rx1027_pos, "circumfix:sym<[ ]>")
    if_null rx1027_debug, debug_837
    rx1027_cur."!cursor_debug"("PASS", "circumfix:sym<[ ]>", " at pos=", rx1027_pos)
  debug_837:
    .return (rx1027_cur)
  rx1027_restart:
.annotate 'line', 4
    if_null rx1027_debug, debug_838
    rx1027_cur."!cursor_debug"("NEXT", "circumfix:sym<[ ]>")
  debug_838:
  rx1027_fail:
    (rx1027_rep, rx1027_pos, $I10, $P10) = rx1027_cur."!mark_fail"(0)
    lt rx1027_pos, -1, rx1027_done
    eq rx1027_pos, -1, rx1027_fail
    jump $I10
  rx1027_done:
    rx1027_cur."!cursor_fail"()
    if_null rx1027_debug, debug_839
    rx1027_cur."!cursor_debug"("FAIL", "circumfix:sym<[ ]>")
  debug_839:
    .return (rx1027_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__circumfix:sym<[ ]>"  :subid("243_1294592820.342") :method
.annotate 'line', 4
    $P1029 = self."!PREFIX__!subrule"("ws", "[")
    new $P1030, "ResizablePMCArray"
    push $P1030, $P1029
    .return ($P1030)
.end


.namespace ["NQP";"Grammar"]
.sub "circumfix:sym<ang>"  :subid("244_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx1035_tgt
    .local int rx1035_pos
    .local int rx1035_off
    .local int rx1035_eos
    .local int rx1035_rep
    .local pmc rx1035_cur
    .local pmc rx1035_debug
    (rx1035_cur, rx1035_pos, rx1035_tgt, $I10) = self."!cursor_start"()
    getattribute rx1035_debug, rx1035_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1035_cur
    .local pmc match
    .lex "$/", match
    length rx1035_eos, rx1035_tgt
    gt rx1035_pos, rx1035_eos, rx1035_done
    set rx1035_off, 0
    lt rx1035_pos, 2, rx1035_start
    sub rx1035_off, rx1035_pos, 1
    substr rx1035_tgt, rx1035_tgt, rx1035_off
  rx1035_start:
    eq $I10, 1, rx1035_restart
    if_null rx1035_debug, debug_840
    rx1035_cur."!cursor_debug"("START", "circumfix:sym<ang>")
  debug_840:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1038_done
    goto rxscan1038_scan
  rxscan1038_loop:
    ($P10) = rx1035_cur."from"()
    inc $P10
    set rx1035_pos, $P10
    ge rx1035_pos, rx1035_eos, rxscan1038_done
  rxscan1038_scan:
    set_addr $I10, rxscan1038_loop
    rx1035_cur."!mark_push"(0, rx1035_pos, $I10)
  rxscan1038_done:
.annotate 'line', 483
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx1035_pos, rx1035_off
    substr $S10, rx1035_tgt, $I10, 1
    index $I11, "<", $S10
    lt $I11, 0, rx1035_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx1035_cur."!cursor_pos"(rx1035_pos)
    $P10 = rx1035_cur."quote_EXPR"(":q", ":w")
    unless $P10, rx1035_fail
    rx1035_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx1035_pos = $P10."pos"()
  # rx pass
    rx1035_cur."!cursor_pass"(rx1035_pos, "circumfix:sym<ang>")
    if_null rx1035_debug, debug_841
    rx1035_cur."!cursor_debug"("PASS", "circumfix:sym<ang>", " at pos=", rx1035_pos)
  debug_841:
    .return (rx1035_cur)
  rx1035_restart:
.annotate 'line', 4
    if_null rx1035_debug, debug_842
    rx1035_cur."!cursor_debug"("NEXT", "circumfix:sym<ang>")
  debug_842:
  rx1035_fail:
    (rx1035_rep, rx1035_pos, $I10, $P10) = rx1035_cur."!mark_fail"(0)
    lt rx1035_pos, -1, rx1035_done
    eq rx1035_pos, -1, rx1035_fail
    jump $I10
  rx1035_done:
    rx1035_cur."!cursor_fail"()
    if_null rx1035_debug, debug_843
    rx1035_cur."!cursor_debug"("FAIL", "circumfix:sym<ang>")
  debug_843:
    .return (rx1035_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__circumfix:sym<ang>"  :subid("245_1294592820.342") :method
.annotate 'line', 4
    new $P1037, "ResizablePMCArray"
    push $P1037, "<"
    .return ($P1037)
.end


.namespace ["NQP";"Grammar"]
.sub unicode:"circumfix:sym<\x{ab} \x{bb}>"  :subid("246_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx1040_tgt
    .local int rx1040_pos
    .local int rx1040_off
    .local int rx1040_eos
    .local int rx1040_rep
    .local pmc rx1040_cur
    .local pmc rx1040_debug
    (rx1040_cur, rx1040_pos, rx1040_tgt, $I10) = self."!cursor_start"()
    getattribute rx1040_debug, rx1040_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1040_cur
    .local pmc match
    .lex "$/", match
    length rx1040_eos, rx1040_tgt
    gt rx1040_pos, rx1040_eos, rx1040_done
    set rx1040_off, 0
    lt rx1040_pos, 2, rx1040_start
    sub rx1040_off, rx1040_pos, 1
    substr rx1040_tgt, rx1040_tgt, rx1040_off
  rx1040_start:
    eq $I10, 1, rx1040_restart
    if_null rx1040_debug, debug_844
    rx1040_cur."!cursor_debug"("START", unicode:"circumfix:sym<\x{ab} \x{bb}>")
  debug_844:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1043_done
    goto rxscan1043_scan
  rxscan1043_loop:
    ($P10) = rx1040_cur."from"()
    inc $P10
    set rx1040_pos, $P10
    ge rx1040_pos, rx1040_eos, rxscan1043_done
  rxscan1043_scan:
    set_addr $I10, rxscan1043_loop
    rx1040_cur."!mark_push"(0, rx1040_pos, $I10)
  rxscan1043_done:
.annotate 'line', 484
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx1040_pos, rx1040_off
    substr $S10, rx1040_tgt, $I10, 1
    index $I11, unicode:"\x{ab}", $S10
    lt $I11, 0, rx1040_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx1040_cur."!cursor_pos"(rx1040_pos)
    $P10 = rx1040_cur."quote_EXPR"(":qq", ":w")
    unless $P10, rx1040_fail
    rx1040_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx1040_pos = $P10."pos"()
  # rx pass
    rx1040_cur."!cursor_pass"(rx1040_pos, unicode:"circumfix:sym<\x{ab} \x{bb}>")
    if_null rx1040_debug, debug_845
    rx1040_cur."!cursor_debug"("PASS", unicode:"circumfix:sym<\x{ab} \x{bb}>", " at pos=", rx1040_pos)
  debug_845:
    .return (rx1040_cur)
  rx1040_restart:
.annotate 'line', 4
    if_null rx1040_debug, debug_846
    rx1040_cur."!cursor_debug"("NEXT", unicode:"circumfix:sym<\x{ab} \x{bb}>")
  debug_846:
  rx1040_fail:
    (rx1040_rep, rx1040_pos, $I10, $P10) = rx1040_cur."!mark_fail"(0)
    lt rx1040_pos, -1, rx1040_done
    eq rx1040_pos, -1, rx1040_fail
    jump $I10
  rx1040_done:
    rx1040_cur."!cursor_fail"()
    if_null rx1040_debug, debug_847
    rx1040_cur."!cursor_debug"("FAIL", unicode:"circumfix:sym<\x{ab} \x{bb}>")
  debug_847:
    .return (rx1040_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub unicode:"!PREFIX__circumfix:sym<\x{ab} \x{bb}>"  :subid("247_1294592820.342") :method
.annotate 'line', 4
    new $P1042, "ResizablePMCArray"
    push $P1042, unicode:"\x{ab}"
    .return ($P1042)
.end


.namespace ["NQP";"Grammar"]
.sub "circumfix:sym<{ }>"  :subid("248_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx1045_tgt
    .local int rx1045_pos
    .local int rx1045_off
    .local int rx1045_eos
    .local int rx1045_rep
    .local pmc rx1045_cur
    .local pmc rx1045_debug
    (rx1045_cur, rx1045_pos, rx1045_tgt, $I10) = self."!cursor_start"()
    getattribute rx1045_debug, rx1045_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1045_cur
    .local pmc match
    .lex "$/", match
    length rx1045_eos, rx1045_tgt
    gt rx1045_pos, rx1045_eos, rx1045_done
    set rx1045_off, 0
    lt rx1045_pos, 2, rx1045_start
    sub rx1045_off, rx1045_pos, 1
    substr rx1045_tgt, rx1045_tgt, rx1045_off
  rx1045_start:
    eq $I10, 1, rx1045_restart
    if_null rx1045_debug, debug_848
    rx1045_cur."!cursor_debug"("START", "circumfix:sym<{ }>")
  debug_848:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1048_done
    goto rxscan1048_scan
  rxscan1048_loop:
    ($P10) = rx1045_cur."from"()
    inc $P10
    set rx1045_pos, $P10
    ge rx1045_pos, rx1045_eos, rxscan1048_done
  rxscan1048_scan:
    set_addr $I10, rxscan1048_loop
    rx1045_cur."!mark_push"(0, rx1045_pos, $I10)
  rxscan1048_done:
.annotate 'line', 485
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx1045_pos, rx1045_off
    substr $S10, rx1045_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx1045_fail
  # rx subrule "pblock" subtype=capture negate=
    rx1045_cur."!cursor_pos"(rx1045_pos)
    $P10 = rx1045_cur."pblock"()
    unless $P10, rx1045_fail
    rx1045_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pblock")
    rx1045_pos = $P10."pos"()
  # rx pass
    rx1045_cur."!cursor_pass"(rx1045_pos, "circumfix:sym<{ }>")
    if_null rx1045_debug, debug_849
    rx1045_cur."!cursor_debug"("PASS", "circumfix:sym<{ }>", " at pos=", rx1045_pos)
  debug_849:
    .return (rx1045_cur)
  rx1045_restart:
.annotate 'line', 4
    if_null rx1045_debug, debug_850
    rx1045_cur."!cursor_debug"("NEXT", "circumfix:sym<{ }>")
  debug_850:
  rx1045_fail:
    (rx1045_rep, rx1045_pos, $I10, $P10) = rx1045_cur."!mark_fail"(0)
    lt rx1045_pos, -1, rx1045_done
    eq rx1045_pos, -1, rx1045_fail
    jump $I10
  rx1045_done:
    rx1045_cur."!cursor_fail"()
    if_null rx1045_debug, debug_851
    rx1045_cur."!cursor_debug"("FAIL", "circumfix:sym<{ }>")
  debug_851:
    .return (rx1045_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__circumfix:sym<{ }>"  :subid("249_1294592820.342") :method
.annotate 'line', 4
    new $P1047, "ResizablePMCArray"
    push $P1047, "{"
    .return ($P1047)
.end


.namespace ["NQP";"Grammar"]
.sub "circumfix:sym<sigil>"  :subid("250_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx1050_tgt
    .local int rx1050_pos
    .local int rx1050_off
    .local int rx1050_eos
    .local int rx1050_rep
    .local pmc rx1050_cur
    .local pmc rx1050_debug
    (rx1050_cur, rx1050_pos, rx1050_tgt, $I10) = self."!cursor_start"()
    getattribute rx1050_debug, rx1050_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1050_cur
    .local pmc match
    .lex "$/", match
    length rx1050_eos, rx1050_tgt
    gt rx1050_pos, rx1050_eos, rx1050_done
    set rx1050_off, 0
    lt rx1050_pos, 2, rx1050_start
    sub rx1050_off, rx1050_pos, 1
    substr rx1050_tgt, rx1050_tgt, rx1050_off
  rx1050_start:
    eq $I10, 1, rx1050_restart
    if_null rx1050_debug, debug_852
    rx1050_cur."!cursor_debug"("START", "circumfix:sym<sigil>")
  debug_852:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1054_done
    goto rxscan1054_scan
  rxscan1054_loop:
    ($P10) = rx1050_cur."from"()
    inc $P10
    set rx1050_pos, $P10
    ge rx1050_pos, rx1050_eos, rxscan1054_done
  rxscan1054_scan:
    set_addr $I10, rxscan1054_loop
    rx1050_cur."!mark_push"(0, rx1050_pos, $I10)
  rxscan1054_done:
.annotate 'line', 486
  # rx subrule "sigil" subtype=capture negate=
    rx1050_cur."!cursor_pos"(rx1050_pos)
    $P10 = rx1050_cur."sigil"()
    unless $P10, rx1050_fail
    rx1050_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sigil")
    rx1050_pos = $P10."pos"()
  # rx literal  "("
    add $I11, rx1050_pos, 1
    gt $I11, rx1050_eos, rx1050_fail
    sub $I11, rx1050_pos, rx1050_off
    ord $I11, rx1050_tgt, $I11
    ne $I11, 40, rx1050_fail
    add rx1050_pos, 1
  # rx subrule "semilist" subtype=capture negate=
    rx1050_cur."!cursor_pos"(rx1050_pos)
    $P10 = rx1050_cur."semilist"()
    unless $P10, rx1050_fail
    rx1050_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("semilist")
    rx1050_pos = $P10."pos"()
  alt1055_0:
    set_addr $I10, alt1055_1
    rx1050_cur."!mark_push"(0, rx1050_pos, $I10)
  # rx literal  ")"
    add $I11, rx1050_pos, 1
    gt $I11, rx1050_eos, rx1050_fail
    sub $I11, rx1050_pos, rx1050_off
    ord $I11, rx1050_tgt, $I11
    ne $I11, 41, rx1050_fail
    add rx1050_pos, 1
    goto alt1055_end
  alt1055_1:
  # rx subrule "FAILGOAL" subtype=method negate=
    rx1050_cur."!cursor_pos"(rx1050_pos)
    $P10 = rx1050_cur."FAILGOAL"("')'")
    unless $P10, rx1050_fail
    goto rxsubrule1057_pass
  rxsubrule1057_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx1050_fail
  rxsubrule1057_pass:
    set_addr $I10, rxsubrule1057_back
    rx1050_cur."!mark_push"(0, rx1050_pos, $I10, $P10)
    rx1050_pos = $P10."pos"()
  alt1055_end:
  # rx pass
    rx1050_cur."!cursor_pass"(rx1050_pos, "circumfix:sym<sigil>")
    if_null rx1050_debug, debug_853
    rx1050_cur."!cursor_debug"("PASS", "circumfix:sym<sigil>", " at pos=", rx1050_pos)
  debug_853:
    .return (rx1050_cur)
  rx1050_restart:
.annotate 'line', 4
    if_null rx1050_debug, debug_854
    rx1050_cur."!cursor_debug"("NEXT", "circumfix:sym<sigil>")
  debug_854:
  rx1050_fail:
    (rx1050_rep, rx1050_pos, $I10, $P10) = rx1050_cur."!mark_fail"(0)
    lt rx1050_pos, -1, rx1050_done
    eq rx1050_pos, -1, rx1050_fail
    jump $I10
  rx1050_done:
    rx1050_cur."!cursor_fail"()
    if_null rx1050_debug, debug_855
    rx1050_cur."!cursor_debug"("FAIL", "circumfix:sym<sigil>")
  debug_855:
    .return (rx1050_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__circumfix:sym<sigil>"  :subid("251_1294592820.342") :method
.annotate 'line', 4
    $P1052 = self."!PREFIX__!subrule"("sigil", "")
    new $P1053, "ResizablePMCArray"
    push $P1053, $P1052
    .return ($P1053)
.end


.namespace ["NQP";"Grammar"]
.sub "semilist"  :subid("252_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 4
    .local string rx1059_tgt
    .local int rx1059_pos
    .local int rx1059_off
    .local int rx1059_eos
    .local int rx1059_rep
    .local pmc rx1059_cur
    .local pmc rx1059_debug
    (rx1059_cur, rx1059_pos, rx1059_tgt, $I10) = self."!cursor_start"()
    getattribute rx1059_debug, rx1059_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1059_cur
    .local pmc match
    .lex "$/", match
    length rx1059_eos, rx1059_tgt
    gt rx1059_pos, rx1059_eos, rx1059_done
    set rx1059_off, 0
    lt rx1059_pos, 2, rx1059_start
    sub rx1059_off, rx1059_pos, 1
    substr rx1059_tgt, rx1059_tgt, rx1059_off
  rx1059_start:
    eq $I10, 1, rx1059_restart
    if_null rx1059_debug, debug_856
    rx1059_cur."!cursor_debug"("START", "semilist")
  debug_856:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1063_done
    goto rxscan1063_scan
  rxscan1063_loop:
    ($P10) = rx1059_cur."from"()
    inc $P10
    set rx1059_pos, $P10
    ge rx1059_pos, rx1059_eos, rxscan1063_done
  rxscan1063_scan:
    set_addr $I10, rxscan1063_loop
    rx1059_cur."!mark_push"(0, rx1059_pos, $I10)
  rxscan1063_done:
.annotate 'line', 488
  # rx subrule "ws" subtype=method negate=
    rx1059_cur."!cursor_pos"(rx1059_pos)
    $P10 = rx1059_cur."ws"()
    unless $P10, rx1059_fail
    rx1059_pos = $P10."pos"()
  # rx subrule "statement" subtype=capture negate=
    rx1059_cur."!cursor_pos"(rx1059_pos)
    $P10 = rx1059_cur."statement"()
    unless $P10, rx1059_fail
    rx1059_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement")
    rx1059_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx1059_cur."!cursor_pos"(rx1059_pos)
    $P10 = rx1059_cur."ws"()
    unless $P10, rx1059_fail
    rx1059_pos = $P10."pos"()
  # rx pass
    rx1059_cur."!cursor_pass"(rx1059_pos, "semilist")
    if_null rx1059_debug, debug_857
    rx1059_cur."!cursor_debug"("PASS", "semilist", " at pos=", rx1059_pos)
  debug_857:
    .return (rx1059_cur)
  rx1059_restart:
.annotate 'line', 4
    if_null rx1059_debug, debug_858
    rx1059_cur."!cursor_debug"("NEXT", "semilist")
  debug_858:
  rx1059_fail:
    (rx1059_rep, rx1059_pos, $I10, $P10) = rx1059_cur."!mark_fail"(0)
    lt rx1059_pos, -1, rx1059_done
    eq rx1059_pos, -1, rx1059_fail
    jump $I10
  rx1059_done:
    rx1059_cur."!cursor_fail"()
    if_null rx1059_debug, debug_859
    rx1059_cur."!cursor_debug"("FAIL", "semilist")
  debug_859:
    .return (rx1059_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__semilist"  :subid("253_1294592820.342") :method
.annotate 'line', 4
    $P1061 = self."!PREFIX__!subrule"("ws", "")
    new $P1062, "ResizablePMCArray"
    push $P1062, $P1061
    .return ($P1062)
.end


.namespace ["NQP";"Grammar"]
.sub "infixish"  :subid("254_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 492
    .local string rx1067_tgt
    .local int rx1067_pos
    .local int rx1067_off
    .local int rx1067_eos
    .local int rx1067_rep
    .local pmc rx1067_cur
    .local pmc rx1067_debug
    (rx1067_cur, rx1067_pos, rx1067_tgt, $I10) = self."!cursor_start"()
    getattribute rx1067_debug, rx1067_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1067_cur
    .local pmc match
    .lex "$/", match
    length rx1067_eos, rx1067_tgt
    gt rx1067_pos, rx1067_eos, rx1067_done
    set rx1067_off, 0
    lt rx1067_pos, 2, rx1067_start
    sub rx1067_off, rx1067_pos, 1
    substr rx1067_tgt, rx1067_tgt, rx1067_off
  rx1067_start:
    eq $I10, 1, rx1067_restart
    if_null rx1067_debug, debug_860
    rx1067_cur."!cursor_debug"("START", "infixish")
  debug_860:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1070_done
    goto rxscan1070_scan
  rxscan1070_loop:
    ($P10) = rx1067_cur."from"()
    inc $P10
    set rx1067_pos, $P10
    ge rx1067_pos, rx1067_eos, rxscan1070_done
  rxscan1070_scan:
    set_addr $I10, rxscan1070_loop
    rx1067_cur."!mark_push"(0, rx1067_pos, $I10)
  rxscan1070_done:
.annotate 'line', 511
  # rx subrule "infixstopper" subtype=zerowidth negate=1
    rx1067_cur."!cursor_pos"(rx1067_pos)
    $P10 = rx1067_cur."infixstopper"()
    if $P10, rx1067_fail
  # rx subrule "infix" subtype=capture negate=
    rx1067_cur."!cursor_pos"(rx1067_pos)
    $P10 = rx1067_cur."infix"()
    unless $P10, rx1067_fail
    rx1067_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=infix")
    rx1067_pos = $P10."pos"()
  # rx pass
    rx1067_cur."!cursor_pass"(rx1067_pos, "infixish")
    if_null rx1067_debug, debug_861
    rx1067_cur."!cursor_debug"("PASS", "infixish", " at pos=", rx1067_pos)
  debug_861:
    .return (rx1067_cur)
  rx1067_restart:
.annotate 'line', 492
    if_null rx1067_debug, debug_862
    rx1067_cur."!cursor_debug"("NEXT", "infixish")
  debug_862:
  rx1067_fail:
    (rx1067_rep, rx1067_pos, $I10, $P10) = rx1067_cur."!mark_fail"(0)
    lt rx1067_pos, -1, rx1067_done
    eq rx1067_pos, -1, rx1067_fail
    jump $I10
  rx1067_done:
    rx1067_cur."!cursor_fail"()
    if_null rx1067_debug, debug_863
    rx1067_cur."!cursor_debug"("FAIL", "infixish")
  debug_863:
    .return (rx1067_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infixish"  :subid("255_1294592820.342") :method
.annotate 'line', 492
    new $P1069, "ResizablePMCArray"
    push $P1069, ""
    .return ($P1069)
.end


.namespace ["NQP";"Grammar"]
.sub "infixstopper"  :subid("256_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 492
    .local string rx1072_tgt
    .local int rx1072_pos
    .local int rx1072_off
    .local int rx1072_eos
    .local int rx1072_rep
    .local pmc rx1072_cur
    .local pmc rx1072_debug
    (rx1072_cur, rx1072_pos, rx1072_tgt, $I10) = self."!cursor_start"()
    getattribute rx1072_debug, rx1072_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1072_cur
    .local pmc match
    .lex "$/", match
    length rx1072_eos, rx1072_tgt
    gt rx1072_pos, rx1072_eos, rx1072_done
    set rx1072_off, 0
    lt rx1072_pos, 2, rx1072_start
    sub rx1072_off, rx1072_pos, 1
    substr rx1072_tgt, rx1072_tgt, rx1072_off
  rx1072_start:
    eq $I10, 1, rx1072_restart
    if_null rx1072_debug, debug_864
    rx1072_cur."!cursor_debug"("START", "infixstopper")
  debug_864:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1075_done
    goto rxscan1075_scan
  rxscan1075_loop:
    ($P10) = rx1072_cur."from"()
    inc $P10
    set rx1072_pos, $P10
    ge rx1072_pos, rx1072_eos, rxscan1075_done
  rxscan1075_scan:
    set_addr $I10, rxscan1075_loop
    rx1072_cur."!mark_push"(0, rx1072_pos, $I10)
  rxscan1075_done:
.annotate 'line', 512
  # rx subrule "lambda" subtype=zerowidth negate=
    rx1072_cur."!cursor_pos"(rx1072_pos)
    $P10 = rx1072_cur."lambda"()
    unless $P10, rx1072_fail
  # rx pass
    rx1072_cur."!cursor_pass"(rx1072_pos, "infixstopper")
    if_null rx1072_debug, debug_865
    rx1072_cur."!cursor_debug"("PASS", "infixstopper", " at pos=", rx1072_pos)
  debug_865:
    .return (rx1072_cur)
  rx1072_restart:
.annotate 'line', 492
    if_null rx1072_debug, debug_866
    rx1072_cur."!cursor_debug"("NEXT", "infixstopper")
  debug_866:
  rx1072_fail:
    (rx1072_rep, rx1072_pos, $I10, $P10) = rx1072_cur."!mark_fail"(0)
    lt rx1072_pos, -1, rx1072_done
    eq rx1072_pos, -1, rx1072_fail
    jump $I10
  rx1072_done:
    rx1072_cur."!cursor_fail"()
    if_null rx1072_debug, debug_867
    rx1072_cur."!cursor_debug"("FAIL", "infixstopper")
  debug_867:
    .return (rx1072_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infixstopper"  :subid("257_1294592820.342") :method
.annotate 'line', 492
    new $P1074, "ResizablePMCArray"
    push $P1074, ""
    .return ($P1074)
.end


.namespace ["NQP";"Grammar"]
.sub "postcircumfix:sym<[ ]>"  :subid("258_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 492
    .local string rx1077_tgt
    .local int rx1077_pos
    .local int rx1077_off
    .local int rx1077_eos
    .local int rx1077_rep
    .local pmc rx1077_cur
    .local pmc rx1077_debug
    (rx1077_cur, rx1077_pos, rx1077_tgt, $I10) = self."!cursor_start"()
    getattribute rx1077_debug, rx1077_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1077_cur
    .local pmc match
    .lex "$/", match
    length rx1077_eos, rx1077_tgt
    gt rx1077_pos, rx1077_eos, rx1077_done
    set rx1077_off, 0
    lt rx1077_pos, 2, rx1077_start
    sub rx1077_off, rx1077_pos, 1
    substr rx1077_tgt, rx1077_tgt, rx1077_off
  rx1077_start:
    eq $I10, 1, rx1077_restart
    if_null rx1077_debug, debug_868
    rx1077_cur."!cursor_debug"("START", "postcircumfix:sym<[ ]>")
  debug_868:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1081_done
    goto rxscan1081_scan
  rxscan1081_loop:
    ($P10) = rx1077_cur."from"()
    inc $P10
    set rx1077_pos, $P10
    ge rx1077_pos, rx1077_eos, rxscan1081_done
  rxscan1081_scan:
    set_addr $I10, rxscan1081_loop
    rx1077_cur."!mark_push"(0, rx1077_pos, $I10)
  rxscan1081_done:
.annotate 'line', 515
  # rx literal  "["
    add $I11, rx1077_pos, 1
    gt $I11, rx1077_eos, rx1077_fail
    sub $I11, rx1077_pos, rx1077_off
    ord $I11, rx1077_tgt, $I11
    ne $I11, 91, rx1077_fail
    add rx1077_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx1077_cur."!cursor_pos"(rx1077_pos)
    $P10 = rx1077_cur."ws"()
    unless $P10, rx1077_fail
    rx1077_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx1077_cur."!cursor_pos"(rx1077_pos)
    $P10 = rx1077_cur."EXPR"()
    unless $P10, rx1077_fail
    rx1077_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx1077_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx1077_pos, 1
    gt $I11, rx1077_eos, rx1077_fail
    sub $I11, rx1077_pos, rx1077_off
    ord $I11, rx1077_tgt, $I11
    ne $I11, 93, rx1077_fail
    add rx1077_pos, 1
.annotate 'line', 516
  # rx subrule "O" subtype=capture negate=
    rx1077_cur."!cursor_pos"(rx1077_pos)
    $P10 = rx1077_cur."O"("%methodop")
    unless $P10, rx1077_fail
    rx1077_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1077_pos = $P10."pos"()
.annotate 'line', 514
  # rx pass
    rx1077_cur."!cursor_pass"(rx1077_pos, "postcircumfix:sym<[ ]>")
    if_null rx1077_debug, debug_869
    rx1077_cur."!cursor_debug"("PASS", "postcircumfix:sym<[ ]>", " at pos=", rx1077_pos)
  debug_869:
    .return (rx1077_cur)
  rx1077_restart:
.annotate 'line', 492
    if_null rx1077_debug, debug_870
    rx1077_cur."!cursor_debug"("NEXT", "postcircumfix:sym<[ ]>")
  debug_870:
  rx1077_fail:
    (rx1077_rep, rx1077_pos, $I10, $P10) = rx1077_cur."!mark_fail"(0)
    lt rx1077_pos, -1, rx1077_done
    eq rx1077_pos, -1, rx1077_fail
    jump $I10
  rx1077_done:
    rx1077_cur."!cursor_fail"()
    if_null rx1077_debug, debug_871
    rx1077_cur."!cursor_debug"("FAIL", "postcircumfix:sym<[ ]>")
  debug_871:
    .return (rx1077_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postcircumfix:sym<[ ]>"  :subid("259_1294592820.342") :method
.annotate 'line', 492
    $P1079 = self."!PREFIX__!subrule"("ws", "[")
    new $P1080, "ResizablePMCArray"
    push $P1080, $P1079
    .return ($P1080)
.end


.namespace ["NQP";"Grammar"]
.sub "postcircumfix:sym<{ }>"  :subid("260_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 492
    .local string rx1083_tgt
    .local int rx1083_pos
    .local int rx1083_off
    .local int rx1083_eos
    .local int rx1083_rep
    .local pmc rx1083_cur
    .local pmc rx1083_debug
    (rx1083_cur, rx1083_pos, rx1083_tgt, $I10) = self."!cursor_start"()
    getattribute rx1083_debug, rx1083_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1083_cur
    .local pmc match
    .lex "$/", match
    length rx1083_eos, rx1083_tgt
    gt rx1083_pos, rx1083_eos, rx1083_done
    set rx1083_off, 0
    lt rx1083_pos, 2, rx1083_start
    sub rx1083_off, rx1083_pos, 1
    substr rx1083_tgt, rx1083_tgt, rx1083_off
  rx1083_start:
    eq $I10, 1, rx1083_restart
    if_null rx1083_debug, debug_872
    rx1083_cur."!cursor_debug"("START", "postcircumfix:sym<{ }>")
  debug_872:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1087_done
    goto rxscan1087_scan
  rxscan1087_loop:
    ($P10) = rx1083_cur."from"()
    inc $P10
    set rx1083_pos, $P10
    ge rx1083_pos, rx1083_eos, rxscan1087_done
  rxscan1087_scan:
    set_addr $I10, rxscan1087_loop
    rx1083_cur."!mark_push"(0, rx1083_pos, $I10)
  rxscan1087_done:
.annotate 'line', 520
  # rx literal  "{"
    add $I11, rx1083_pos, 1
    gt $I11, rx1083_eos, rx1083_fail
    sub $I11, rx1083_pos, rx1083_off
    ord $I11, rx1083_tgt, $I11
    ne $I11, 123, rx1083_fail
    add rx1083_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx1083_cur."!cursor_pos"(rx1083_pos)
    $P10 = rx1083_cur."ws"()
    unless $P10, rx1083_fail
    rx1083_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx1083_cur."!cursor_pos"(rx1083_pos)
    $P10 = rx1083_cur."EXPR"()
    unless $P10, rx1083_fail
    rx1083_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx1083_pos = $P10."pos"()
  # rx literal  "}"
    add $I11, rx1083_pos, 1
    gt $I11, rx1083_eos, rx1083_fail
    sub $I11, rx1083_pos, rx1083_off
    ord $I11, rx1083_tgt, $I11
    ne $I11, 125, rx1083_fail
    add rx1083_pos, 1
.annotate 'line', 521
  # rx subrule "O" subtype=capture negate=
    rx1083_cur."!cursor_pos"(rx1083_pos)
    $P10 = rx1083_cur."O"("%methodop")
    unless $P10, rx1083_fail
    rx1083_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1083_pos = $P10."pos"()
.annotate 'line', 519
  # rx pass
    rx1083_cur."!cursor_pass"(rx1083_pos, "postcircumfix:sym<{ }>")
    if_null rx1083_debug, debug_873
    rx1083_cur."!cursor_debug"("PASS", "postcircumfix:sym<{ }>", " at pos=", rx1083_pos)
  debug_873:
    .return (rx1083_cur)
  rx1083_restart:
.annotate 'line', 492
    if_null rx1083_debug, debug_874
    rx1083_cur."!cursor_debug"("NEXT", "postcircumfix:sym<{ }>")
  debug_874:
  rx1083_fail:
    (rx1083_rep, rx1083_pos, $I10, $P10) = rx1083_cur."!mark_fail"(0)
    lt rx1083_pos, -1, rx1083_done
    eq rx1083_pos, -1, rx1083_fail
    jump $I10
  rx1083_done:
    rx1083_cur."!cursor_fail"()
    if_null rx1083_debug, debug_875
    rx1083_cur."!cursor_debug"("FAIL", "postcircumfix:sym<{ }>")
  debug_875:
    .return (rx1083_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postcircumfix:sym<{ }>"  :subid("261_1294592820.342") :method
.annotate 'line', 492
    $P1085 = self."!PREFIX__!subrule"("ws", "{")
    new $P1086, "ResizablePMCArray"
    push $P1086, $P1085
    .return ($P1086)
.end


.namespace ["NQP";"Grammar"]
.sub "postcircumfix:sym<ang>"  :subid("262_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 492
    .local string rx1089_tgt
    .local int rx1089_pos
    .local int rx1089_off
    .local int rx1089_eos
    .local int rx1089_rep
    .local pmc rx1089_cur
    .local pmc rx1089_debug
    (rx1089_cur, rx1089_pos, rx1089_tgt, $I10) = self."!cursor_start"()
    getattribute rx1089_debug, rx1089_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1089_cur
    .local pmc match
    .lex "$/", match
    length rx1089_eos, rx1089_tgt
    gt rx1089_pos, rx1089_eos, rx1089_done
    set rx1089_off, 0
    lt rx1089_pos, 2, rx1089_start
    sub rx1089_off, rx1089_pos, 1
    substr rx1089_tgt, rx1089_tgt, rx1089_off
  rx1089_start:
    eq $I10, 1, rx1089_restart
    if_null rx1089_debug, debug_876
    rx1089_cur."!cursor_debug"("START", "postcircumfix:sym<ang>")
  debug_876:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1092_done
    goto rxscan1092_scan
  rxscan1092_loop:
    ($P10) = rx1089_cur."from"()
    inc $P10
    set rx1089_pos, $P10
    ge rx1089_pos, rx1089_eos, rxscan1092_done
  rxscan1092_scan:
    set_addr $I10, rxscan1092_loop
    rx1089_cur."!mark_push"(0, rx1089_pos, $I10)
  rxscan1092_done:
.annotate 'line', 525
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx1089_pos, rx1089_off
    substr $S10, rx1089_tgt, $I10, 1
    index $I11, "<", $S10
    lt $I11, 0, rx1089_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx1089_cur."!cursor_pos"(rx1089_pos)
    $P10 = rx1089_cur."quote_EXPR"(":q")
    unless $P10, rx1089_fail
    rx1089_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx1089_pos = $P10."pos"()
.annotate 'line', 526
  # rx subrule "O" subtype=capture negate=
    rx1089_cur."!cursor_pos"(rx1089_pos)
    $P10 = rx1089_cur."O"("%methodop")
    unless $P10, rx1089_fail
    rx1089_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1089_pos = $P10."pos"()
.annotate 'line', 524
  # rx pass
    rx1089_cur."!cursor_pass"(rx1089_pos, "postcircumfix:sym<ang>")
    if_null rx1089_debug, debug_877
    rx1089_cur."!cursor_debug"("PASS", "postcircumfix:sym<ang>", " at pos=", rx1089_pos)
  debug_877:
    .return (rx1089_cur)
  rx1089_restart:
.annotate 'line', 492
    if_null rx1089_debug, debug_878
    rx1089_cur."!cursor_debug"("NEXT", "postcircumfix:sym<ang>")
  debug_878:
  rx1089_fail:
    (rx1089_rep, rx1089_pos, $I10, $P10) = rx1089_cur."!mark_fail"(0)
    lt rx1089_pos, -1, rx1089_done
    eq rx1089_pos, -1, rx1089_fail
    jump $I10
  rx1089_done:
    rx1089_cur."!cursor_fail"()
    if_null rx1089_debug, debug_879
    rx1089_cur."!cursor_debug"("FAIL", "postcircumfix:sym<ang>")
  debug_879:
    .return (rx1089_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postcircumfix:sym<ang>"  :subid("263_1294592820.342") :method
.annotate 'line', 492
    new $P1091, "ResizablePMCArray"
    push $P1091, "<"
    .return ($P1091)
.end


.namespace ["NQP";"Grammar"]
.sub "postcircumfix:sym<( )>"  :subid("264_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 492
    .local string rx1094_tgt
    .local int rx1094_pos
    .local int rx1094_off
    .local int rx1094_eos
    .local int rx1094_rep
    .local pmc rx1094_cur
    .local pmc rx1094_debug
    (rx1094_cur, rx1094_pos, rx1094_tgt, $I10) = self."!cursor_start"()
    getattribute rx1094_debug, rx1094_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1094_cur
    .local pmc match
    .lex "$/", match
    length rx1094_eos, rx1094_tgt
    gt rx1094_pos, rx1094_eos, rx1094_done
    set rx1094_off, 0
    lt rx1094_pos, 2, rx1094_start
    sub rx1094_off, rx1094_pos, 1
    substr rx1094_tgt, rx1094_tgt, rx1094_off
  rx1094_start:
    eq $I10, 1, rx1094_restart
    if_null rx1094_debug, debug_880
    rx1094_cur."!cursor_debug"("START", "postcircumfix:sym<( )>")
  debug_880:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1098_done
    goto rxscan1098_scan
  rxscan1098_loop:
    ($P10) = rx1094_cur."from"()
    inc $P10
    set rx1094_pos, $P10
    ge rx1094_pos, rx1094_eos, rxscan1098_done
  rxscan1098_scan:
    set_addr $I10, rxscan1098_loop
    rx1094_cur."!mark_push"(0, rx1094_pos, $I10)
  rxscan1098_done:
.annotate 'line', 530
  # rx literal  "("
    add $I11, rx1094_pos, 1
    gt $I11, rx1094_eos, rx1094_fail
    sub $I11, rx1094_pos, rx1094_off
    ord $I11, rx1094_tgt, $I11
    ne $I11, 40, rx1094_fail
    add rx1094_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx1094_cur."!cursor_pos"(rx1094_pos)
    $P10 = rx1094_cur."ws"()
    unless $P10, rx1094_fail
    rx1094_pos = $P10."pos"()
  # rx subrule "arglist" subtype=capture negate=
    rx1094_cur."!cursor_pos"(rx1094_pos)
    $P10 = rx1094_cur."arglist"()
    unless $P10, rx1094_fail
    rx1094_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx1094_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx1094_pos, 1
    gt $I11, rx1094_eos, rx1094_fail
    sub $I11, rx1094_pos, rx1094_off
    ord $I11, rx1094_tgt, $I11
    ne $I11, 41, rx1094_fail
    add rx1094_pos, 1
.annotate 'line', 531
  # rx subrule "O" subtype=capture negate=
    rx1094_cur."!cursor_pos"(rx1094_pos)
    $P10 = rx1094_cur."O"("%methodop")
    unless $P10, rx1094_fail
    rx1094_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1094_pos = $P10."pos"()
.annotate 'line', 529
  # rx pass
    rx1094_cur."!cursor_pass"(rx1094_pos, "postcircumfix:sym<( )>")
    if_null rx1094_debug, debug_881
    rx1094_cur."!cursor_debug"("PASS", "postcircumfix:sym<( )>", " at pos=", rx1094_pos)
  debug_881:
    .return (rx1094_cur)
  rx1094_restart:
.annotate 'line', 492
    if_null rx1094_debug, debug_882
    rx1094_cur."!cursor_debug"("NEXT", "postcircumfix:sym<( )>")
  debug_882:
  rx1094_fail:
    (rx1094_rep, rx1094_pos, $I10, $P10) = rx1094_cur."!mark_fail"(0)
    lt rx1094_pos, -1, rx1094_done
    eq rx1094_pos, -1, rx1094_fail
    jump $I10
  rx1094_done:
    rx1094_cur."!cursor_fail"()
    if_null rx1094_debug, debug_883
    rx1094_cur."!cursor_debug"("FAIL", "postcircumfix:sym<( )>")
  debug_883:
    .return (rx1094_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postcircumfix:sym<( )>"  :subid("265_1294592820.342") :method
.annotate 'line', 492
    $P1096 = self."!PREFIX__!subrule"("ws", "(")
    new $P1097, "ResizablePMCArray"
    push $P1097, $P1096
    .return ($P1097)
.end


.namespace ["NQP";"Grammar"]
.sub "postfix:sym<.>"  :subid("266_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 492
    .local string rx1100_tgt
    .local int rx1100_pos
    .local int rx1100_off
    .local int rx1100_eos
    .local int rx1100_rep
    .local pmc rx1100_cur
    .local pmc rx1100_debug
    (rx1100_cur, rx1100_pos, rx1100_tgt, $I10) = self."!cursor_start"()
    getattribute rx1100_debug, rx1100_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1100_cur
    .local pmc match
    .lex "$/", match
    length rx1100_eos, rx1100_tgt
    gt rx1100_pos, rx1100_eos, rx1100_done
    set rx1100_off, 0
    lt rx1100_pos, 2, rx1100_start
    sub rx1100_off, rx1100_pos, 1
    substr rx1100_tgt, rx1100_tgt, rx1100_off
  rx1100_start:
    eq $I10, 1, rx1100_restart
    if_null rx1100_debug, debug_884
    rx1100_cur."!cursor_debug"("START", "postfix:sym<.>")
  debug_884:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1104_done
    goto rxscan1104_scan
  rxscan1104_loop:
    ($P10) = rx1100_cur."from"()
    inc $P10
    set rx1100_pos, $P10
    ge rx1100_pos, rx1100_eos, rxscan1104_done
  rxscan1104_scan:
    set_addr $I10, rxscan1104_loop
    rx1100_cur."!mark_push"(0, rx1100_pos, $I10)
  rxscan1104_done:
.annotate 'line', 534
  # rx subrule "dotty" subtype=capture negate=
    rx1100_cur."!cursor_pos"(rx1100_pos)
    $P10 = rx1100_cur."dotty"()
    unless $P10, rx1100_fail
    rx1100_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("dotty")
    rx1100_pos = $P10."pos"()
  # rx subrule "O" subtype=capture negate=
    rx1100_cur."!cursor_pos"(rx1100_pos)
    $P10 = rx1100_cur."O"("%methodop")
    unless $P10, rx1100_fail
    rx1100_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1100_pos = $P10."pos"()
  # rx pass
    rx1100_cur."!cursor_pass"(rx1100_pos, "postfix:sym<.>")
    if_null rx1100_debug, debug_885
    rx1100_cur."!cursor_debug"("PASS", "postfix:sym<.>", " at pos=", rx1100_pos)
  debug_885:
    .return (rx1100_cur)
  rx1100_restart:
.annotate 'line', 492
    if_null rx1100_debug, debug_886
    rx1100_cur."!cursor_debug"("NEXT", "postfix:sym<.>")
  debug_886:
  rx1100_fail:
    (rx1100_rep, rx1100_pos, $I10, $P10) = rx1100_cur."!mark_fail"(0)
    lt rx1100_pos, -1, rx1100_done
    eq rx1100_pos, -1, rx1100_fail
    jump $I10
  rx1100_done:
    rx1100_cur."!cursor_fail"()
    if_null rx1100_debug, debug_887
    rx1100_cur."!cursor_debug"("FAIL", "postfix:sym<.>")
  debug_887:
    .return (rx1100_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postfix:sym<.>"  :subid("267_1294592820.342") :method
.annotate 'line', 492
    $P1102 = self."!PREFIX__!subrule"("dotty", "")
    new $P1103, "ResizablePMCArray"
    push $P1103, $P1102
    .return ($P1103)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<++>"  :subid("268_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 492
    .local string rx1106_tgt
    .local int rx1106_pos
    .local int rx1106_off
    .local int rx1106_eos
    .local int rx1106_rep
    .local pmc rx1106_cur
    .local pmc rx1106_debug
    (rx1106_cur, rx1106_pos, rx1106_tgt, $I10) = self."!cursor_start"()
    getattribute rx1106_debug, rx1106_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1106_cur
    .local pmc match
    .lex "$/", match
    length rx1106_eos, rx1106_tgt
    gt rx1106_pos, rx1106_eos, rx1106_done
    set rx1106_off, 0
    lt rx1106_pos, 2, rx1106_start
    sub rx1106_off, rx1106_pos, 1
    substr rx1106_tgt, rx1106_tgt, rx1106_off
  rx1106_start:
    eq $I10, 1, rx1106_restart
    if_null rx1106_debug, debug_888
    rx1106_cur."!cursor_debug"("START", "prefix:sym<++>")
  debug_888:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1110_done
    goto rxscan1110_scan
  rxscan1110_loop:
    ($P10) = rx1106_cur."from"()
    inc $P10
    set rx1106_pos, $P10
    ge rx1106_pos, rx1106_eos, rxscan1110_done
  rxscan1110_scan:
    set_addr $I10, rxscan1110_loop
    rx1106_cur."!mark_push"(0, rx1106_pos, $I10)
  rxscan1110_done:
.annotate 'line', 536
  # rx subcapture "sym"
    set_addr $I10, rxcap_1111_fail
    rx1106_cur."!mark_push"(0, rx1106_pos, $I10)
  # rx literal  "++"
    add $I11, rx1106_pos, 2
    gt $I11, rx1106_eos, rx1106_fail
    sub $I11, rx1106_pos, rx1106_off
    substr $S10, rx1106_tgt, $I11, 2
    ne $S10, "++", rx1106_fail
    add rx1106_pos, 2
    set_addr $I10, rxcap_1111_fail
    ($I12, $I11) = rx1106_cur."!mark_peek"($I10)
    rx1106_cur."!cursor_pos"($I11)
    ($P10) = rx1106_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1106_pos, "")
    rx1106_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1111_done
  rxcap_1111_fail:
    goto rx1106_fail
  rxcap_1111_done:
  # rx subrule "O" subtype=capture negate=
    rx1106_cur."!cursor_pos"(rx1106_pos)
    $P10 = rx1106_cur."O"("%autoincrement, :pirop<inc>")
    unless $P10, rx1106_fail
    rx1106_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1106_pos = $P10."pos"()
  # rx pass
    rx1106_cur."!cursor_pass"(rx1106_pos, "prefix:sym<++>")
    if_null rx1106_debug, debug_889
    rx1106_cur."!cursor_debug"("PASS", "prefix:sym<++>", " at pos=", rx1106_pos)
  debug_889:
    .return (rx1106_cur)
  rx1106_restart:
.annotate 'line', 492
    if_null rx1106_debug, debug_890
    rx1106_cur."!cursor_debug"("NEXT", "prefix:sym<++>")
  debug_890:
  rx1106_fail:
    (rx1106_rep, rx1106_pos, $I10, $P10) = rx1106_cur."!mark_fail"(0)
    lt rx1106_pos, -1, rx1106_done
    eq rx1106_pos, -1, rx1106_fail
    jump $I10
  rx1106_done:
    rx1106_cur."!cursor_fail"()
    if_null rx1106_debug, debug_891
    rx1106_cur."!cursor_debug"("FAIL", "prefix:sym<++>")
  debug_891:
    .return (rx1106_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<++>"  :subid("269_1294592820.342") :method
.annotate 'line', 492
    $P1108 = self."!PREFIX__!subrule"("O", "++")
    new $P1109, "ResizablePMCArray"
    push $P1109, $P1108
    .return ($P1109)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<-->"  :subid("270_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 492
    .local string rx1113_tgt
    .local int rx1113_pos
    .local int rx1113_off
    .local int rx1113_eos
    .local int rx1113_rep
    .local pmc rx1113_cur
    .local pmc rx1113_debug
    (rx1113_cur, rx1113_pos, rx1113_tgt, $I10) = self."!cursor_start"()
    getattribute rx1113_debug, rx1113_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1113_cur
    .local pmc match
    .lex "$/", match
    length rx1113_eos, rx1113_tgt
    gt rx1113_pos, rx1113_eos, rx1113_done
    set rx1113_off, 0
    lt rx1113_pos, 2, rx1113_start
    sub rx1113_off, rx1113_pos, 1
    substr rx1113_tgt, rx1113_tgt, rx1113_off
  rx1113_start:
    eq $I10, 1, rx1113_restart
    if_null rx1113_debug, debug_892
    rx1113_cur."!cursor_debug"("START", "prefix:sym<-->")
  debug_892:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1117_done
    goto rxscan1117_scan
  rxscan1117_loop:
    ($P10) = rx1113_cur."from"()
    inc $P10
    set rx1113_pos, $P10
    ge rx1113_pos, rx1113_eos, rxscan1117_done
  rxscan1117_scan:
    set_addr $I10, rxscan1117_loop
    rx1113_cur."!mark_push"(0, rx1113_pos, $I10)
  rxscan1117_done:
.annotate 'line', 537
  # rx subcapture "sym"
    set_addr $I10, rxcap_1118_fail
    rx1113_cur."!mark_push"(0, rx1113_pos, $I10)
  # rx literal  "--"
    add $I11, rx1113_pos, 2
    gt $I11, rx1113_eos, rx1113_fail
    sub $I11, rx1113_pos, rx1113_off
    substr $S10, rx1113_tgt, $I11, 2
    ne $S10, "--", rx1113_fail
    add rx1113_pos, 2
    set_addr $I10, rxcap_1118_fail
    ($I12, $I11) = rx1113_cur."!mark_peek"($I10)
    rx1113_cur."!cursor_pos"($I11)
    ($P10) = rx1113_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1113_pos, "")
    rx1113_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1118_done
  rxcap_1118_fail:
    goto rx1113_fail
  rxcap_1118_done:
  # rx subrule "O" subtype=capture negate=
    rx1113_cur."!cursor_pos"(rx1113_pos)
    $P10 = rx1113_cur."O"("%autoincrement, :pirop<dec>")
    unless $P10, rx1113_fail
    rx1113_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1113_pos = $P10."pos"()
  # rx pass
    rx1113_cur."!cursor_pass"(rx1113_pos, "prefix:sym<-->")
    if_null rx1113_debug, debug_893
    rx1113_cur."!cursor_debug"("PASS", "prefix:sym<-->", " at pos=", rx1113_pos)
  debug_893:
    .return (rx1113_cur)
  rx1113_restart:
.annotate 'line', 492
    if_null rx1113_debug, debug_894
    rx1113_cur."!cursor_debug"("NEXT", "prefix:sym<-->")
  debug_894:
  rx1113_fail:
    (rx1113_rep, rx1113_pos, $I10, $P10) = rx1113_cur."!mark_fail"(0)
    lt rx1113_pos, -1, rx1113_done
    eq rx1113_pos, -1, rx1113_fail
    jump $I10
  rx1113_done:
    rx1113_cur."!cursor_fail"()
    if_null rx1113_debug, debug_895
    rx1113_cur."!cursor_debug"("FAIL", "prefix:sym<-->")
  debug_895:
    .return (rx1113_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<-->"  :subid("271_1294592820.342") :method
.annotate 'line', 492
    $P1115 = self."!PREFIX__!subrule"("O", "--")
    new $P1116, "ResizablePMCArray"
    push $P1116, $P1115
    .return ($P1116)
.end


.namespace ["NQP";"Grammar"]
.sub "postfix:sym<++>"  :subid("272_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 492
    .local string rx1120_tgt
    .local int rx1120_pos
    .local int rx1120_off
    .local int rx1120_eos
    .local int rx1120_rep
    .local pmc rx1120_cur
    .local pmc rx1120_debug
    (rx1120_cur, rx1120_pos, rx1120_tgt, $I10) = self."!cursor_start"()
    getattribute rx1120_debug, rx1120_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1120_cur
    .local pmc match
    .lex "$/", match
    length rx1120_eos, rx1120_tgt
    gt rx1120_pos, rx1120_eos, rx1120_done
    set rx1120_off, 0
    lt rx1120_pos, 2, rx1120_start
    sub rx1120_off, rx1120_pos, 1
    substr rx1120_tgt, rx1120_tgt, rx1120_off
  rx1120_start:
    eq $I10, 1, rx1120_restart
    if_null rx1120_debug, debug_896
    rx1120_cur."!cursor_debug"("START", "postfix:sym<++>")
  debug_896:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1124_done
    goto rxscan1124_scan
  rxscan1124_loop:
    ($P10) = rx1120_cur."from"()
    inc $P10
    set rx1120_pos, $P10
    ge rx1120_pos, rx1120_eos, rxscan1124_done
  rxscan1124_scan:
    set_addr $I10, rxscan1124_loop
    rx1120_cur."!mark_push"(0, rx1120_pos, $I10)
  rxscan1124_done:
.annotate 'line', 540
  # rx subcapture "sym"
    set_addr $I10, rxcap_1125_fail
    rx1120_cur."!mark_push"(0, rx1120_pos, $I10)
  # rx literal  "++"
    add $I11, rx1120_pos, 2
    gt $I11, rx1120_eos, rx1120_fail
    sub $I11, rx1120_pos, rx1120_off
    substr $S10, rx1120_tgt, $I11, 2
    ne $S10, "++", rx1120_fail
    add rx1120_pos, 2
    set_addr $I10, rxcap_1125_fail
    ($I12, $I11) = rx1120_cur."!mark_peek"($I10)
    rx1120_cur."!cursor_pos"($I11)
    ($P10) = rx1120_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1120_pos, "")
    rx1120_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1125_done
  rxcap_1125_fail:
    goto rx1120_fail
  rxcap_1125_done:
  # rx subrule "O" subtype=capture negate=
    rx1120_cur."!cursor_pos"(rx1120_pos)
    $P10 = rx1120_cur."O"("%autoincrement")
    unless $P10, rx1120_fail
    rx1120_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1120_pos = $P10."pos"()
  # rx pass
    rx1120_cur."!cursor_pass"(rx1120_pos, "postfix:sym<++>")
    if_null rx1120_debug, debug_897
    rx1120_cur."!cursor_debug"("PASS", "postfix:sym<++>", " at pos=", rx1120_pos)
  debug_897:
    .return (rx1120_cur)
  rx1120_restart:
.annotate 'line', 492
    if_null rx1120_debug, debug_898
    rx1120_cur."!cursor_debug"("NEXT", "postfix:sym<++>")
  debug_898:
  rx1120_fail:
    (rx1120_rep, rx1120_pos, $I10, $P10) = rx1120_cur."!mark_fail"(0)
    lt rx1120_pos, -1, rx1120_done
    eq rx1120_pos, -1, rx1120_fail
    jump $I10
  rx1120_done:
    rx1120_cur."!cursor_fail"()
    if_null rx1120_debug, debug_899
    rx1120_cur."!cursor_debug"("FAIL", "postfix:sym<++>")
  debug_899:
    .return (rx1120_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postfix:sym<++>"  :subid("273_1294592820.342") :method
.annotate 'line', 492
    $P1122 = self."!PREFIX__!subrule"("O", "++")
    new $P1123, "ResizablePMCArray"
    push $P1123, $P1122
    .return ($P1123)
.end


.namespace ["NQP";"Grammar"]
.sub "postfix:sym<-->"  :subid("274_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 492
    .local string rx1127_tgt
    .local int rx1127_pos
    .local int rx1127_off
    .local int rx1127_eos
    .local int rx1127_rep
    .local pmc rx1127_cur
    .local pmc rx1127_debug
    (rx1127_cur, rx1127_pos, rx1127_tgt, $I10) = self."!cursor_start"()
    getattribute rx1127_debug, rx1127_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1127_cur
    .local pmc match
    .lex "$/", match
    length rx1127_eos, rx1127_tgt
    gt rx1127_pos, rx1127_eos, rx1127_done
    set rx1127_off, 0
    lt rx1127_pos, 2, rx1127_start
    sub rx1127_off, rx1127_pos, 1
    substr rx1127_tgt, rx1127_tgt, rx1127_off
  rx1127_start:
    eq $I10, 1, rx1127_restart
    if_null rx1127_debug, debug_900
    rx1127_cur."!cursor_debug"("START", "postfix:sym<-->")
  debug_900:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1131_done
    goto rxscan1131_scan
  rxscan1131_loop:
    ($P10) = rx1127_cur."from"()
    inc $P10
    set rx1127_pos, $P10
    ge rx1127_pos, rx1127_eos, rxscan1131_done
  rxscan1131_scan:
    set_addr $I10, rxscan1131_loop
    rx1127_cur."!mark_push"(0, rx1127_pos, $I10)
  rxscan1131_done:
.annotate 'line', 541
  # rx subcapture "sym"
    set_addr $I10, rxcap_1132_fail
    rx1127_cur."!mark_push"(0, rx1127_pos, $I10)
  # rx literal  "--"
    add $I11, rx1127_pos, 2
    gt $I11, rx1127_eos, rx1127_fail
    sub $I11, rx1127_pos, rx1127_off
    substr $S10, rx1127_tgt, $I11, 2
    ne $S10, "--", rx1127_fail
    add rx1127_pos, 2
    set_addr $I10, rxcap_1132_fail
    ($I12, $I11) = rx1127_cur."!mark_peek"($I10)
    rx1127_cur."!cursor_pos"($I11)
    ($P10) = rx1127_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1127_pos, "")
    rx1127_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1132_done
  rxcap_1132_fail:
    goto rx1127_fail
  rxcap_1132_done:
  # rx subrule "O" subtype=capture negate=
    rx1127_cur."!cursor_pos"(rx1127_pos)
    $P10 = rx1127_cur."O"("%autoincrement")
    unless $P10, rx1127_fail
    rx1127_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1127_pos = $P10."pos"()
  # rx pass
    rx1127_cur."!cursor_pass"(rx1127_pos, "postfix:sym<-->")
    if_null rx1127_debug, debug_901
    rx1127_cur."!cursor_debug"("PASS", "postfix:sym<-->", " at pos=", rx1127_pos)
  debug_901:
    .return (rx1127_cur)
  rx1127_restart:
.annotate 'line', 492
    if_null rx1127_debug, debug_902
    rx1127_cur."!cursor_debug"("NEXT", "postfix:sym<-->")
  debug_902:
  rx1127_fail:
    (rx1127_rep, rx1127_pos, $I10, $P10) = rx1127_cur."!mark_fail"(0)
    lt rx1127_pos, -1, rx1127_done
    eq rx1127_pos, -1, rx1127_fail
    jump $I10
  rx1127_done:
    rx1127_cur."!cursor_fail"()
    if_null rx1127_debug, debug_903
    rx1127_cur."!cursor_debug"("FAIL", "postfix:sym<-->")
  debug_903:
    .return (rx1127_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postfix:sym<-->"  :subid("275_1294592820.342") :method
.annotate 'line', 492
    $P1129 = self."!PREFIX__!subrule"("O", "--")
    new $P1130, "ResizablePMCArray"
    push $P1130, $P1129
    .return ($P1130)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<**>"  :subid("276_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 492
    .local string rx1134_tgt
    .local int rx1134_pos
    .local int rx1134_off
    .local int rx1134_eos
    .local int rx1134_rep
    .local pmc rx1134_cur
    .local pmc rx1134_debug
    (rx1134_cur, rx1134_pos, rx1134_tgt, $I10) = self."!cursor_start"()
    getattribute rx1134_debug, rx1134_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1134_cur
    .local pmc match
    .lex "$/", match
    length rx1134_eos, rx1134_tgt
    gt rx1134_pos, rx1134_eos, rx1134_done
    set rx1134_off, 0
    lt rx1134_pos, 2, rx1134_start
    sub rx1134_off, rx1134_pos, 1
    substr rx1134_tgt, rx1134_tgt, rx1134_off
  rx1134_start:
    eq $I10, 1, rx1134_restart
    if_null rx1134_debug, debug_904
    rx1134_cur."!cursor_debug"("START", "infix:sym<**>")
  debug_904:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1138_done
    goto rxscan1138_scan
  rxscan1138_loop:
    ($P10) = rx1134_cur."from"()
    inc $P10
    set rx1134_pos, $P10
    ge rx1134_pos, rx1134_eos, rxscan1138_done
  rxscan1138_scan:
    set_addr $I10, rxscan1138_loop
    rx1134_cur."!mark_push"(0, rx1134_pos, $I10)
  rxscan1138_done:
.annotate 'line', 543
  # rx subcapture "sym"
    set_addr $I10, rxcap_1139_fail
    rx1134_cur."!mark_push"(0, rx1134_pos, $I10)
  # rx literal  "**"
    add $I11, rx1134_pos, 2
    gt $I11, rx1134_eos, rx1134_fail
    sub $I11, rx1134_pos, rx1134_off
    substr $S10, rx1134_tgt, $I11, 2
    ne $S10, "**", rx1134_fail
    add rx1134_pos, 2
    set_addr $I10, rxcap_1139_fail
    ($I12, $I11) = rx1134_cur."!mark_peek"($I10)
    rx1134_cur."!cursor_pos"($I11)
    ($P10) = rx1134_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1134_pos, "")
    rx1134_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1139_done
  rxcap_1139_fail:
    goto rx1134_fail
  rxcap_1139_done:
  # rx subrule "O" subtype=capture negate=
    rx1134_cur."!cursor_pos"(rx1134_pos)
    $P10 = rx1134_cur."O"("%exponentiation, :pirop<pow>")
    unless $P10, rx1134_fail
    rx1134_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1134_pos = $P10."pos"()
  # rx pass
    rx1134_cur."!cursor_pass"(rx1134_pos, "infix:sym<**>")
    if_null rx1134_debug, debug_905
    rx1134_cur."!cursor_debug"("PASS", "infix:sym<**>", " at pos=", rx1134_pos)
  debug_905:
    .return (rx1134_cur)
  rx1134_restart:
.annotate 'line', 492
    if_null rx1134_debug, debug_906
    rx1134_cur."!cursor_debug"("NEXT", "infix:sym<**>")
  debug_906:
  rx1134_fail:
    (rx1134_rep, rx1134_pos, $I10, $P10) = rx1134_cur."!mark_fail"(0)
    lt rx1134_pos, -1, rx1134_done
    eq rx1134_pos, -1, rx1134_fail
    jump $I10
  rx1134_done:
    rx1134_cur."!cursor_fail"()
    if_null rx1134_debug, debug_907
    rx1134_cur."!cursor_debug"("FAIL", "infix:sym<**>")
  debug_907:
    .return (rx1134_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<**>"  :subid("277_1294592820.342") :method
.annotate 'line', 492
    $P1136 = self."!PREFIX__!subrule"("O", "**")
    new $P1137, "ResizablePMCArray"
    push $P1137, $P1136
    .return ($P1137)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<+>"  :subid("278_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 492
    .local string rx1141_tgt
    .local int rx1141_pos
    .local int rx1141_off
    .local int rx1141_eos
    .local int rx1141_rep
    .local pmc rx1141_cur
    .local pmc rx1141_debug
    (rx1141_cur, rx1141_pos, rx1141_tgt, $I10) = self."!cursor_start"()
    getattribute rx1141_debug, rx1141_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1141_cur
    .local pmc match
    .lex "$/", match
    length rx1141_eos, rx1141_tgt
    gt rx1141_pos, rx1141_eos, rx1141_done
    set rx1141_off, 0
    lt rx1141_pos, 2, rx1141_start
    sub rx1141_off, rx1141_pos, 1
    substr rx1141_tgt, rx1141_tgt, rx1141_off
  rx1141_start:
    eq $I10, 1, rx1141_restart
    if_null rx1141_debug, debug_908
    rx1141_cur."!cursor_debug"("START", "prefix:sym<+>")
  debug_908:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1145_done
    goto rxscan1145_scan
  rxscan1145_loop:
    ($P10) = rx1141_cur."from"()
    inc $P10
    set rx1141_pos, $P10
    ge rx1141_pos, rx1141_eos, rxscan1145_done
  rxscan1145_scan:
    set_addr $I10, rxscan1145_loop
    rx1141_cur."!mark_push"(0, rx1141_pos, $I10)
  rxscan1145_done:
.annotate 'line', 545
  # rx subcapture "sym"
    set_addr $I10, rxcap_1146_fail
    rx1141_cur."!mark_push"(0, rx1141_pos, $I10)
  # rx literal  "+"
    add $I11, rx1141_pos, 1
    gt $I11, rx1141_eos, rx1141_fail
    sub $I11, rx1141_pos, rx1141_off
    ord $I11, rx1141_tgt, $I11
    ne $I11, 43, rx1141_fail
    add rx1141_pos, 1
    set_addr $I10, rxcap_1146_fail
    ($I12, $I11) = rx1141_cur."!mark_peek"($I10)
    rx1141_cur."!cursor_pos"($I11)
    ($P10) = rx1141_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1141_pos, "")
    rx1141_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1146_done
  rxcap_1146_fail:
    goto rx1141_fail
  rxcap_1146_done:
  # rx subrule "O" subtype=capture negate=
    rx1141_cur."!cursor_pos"(rx1141_pos)
    $P10 = rx1141_cur."O"("%symbolic_unary, :pirop<set N*>")
    unless $P10, rx1141_fail
    rx1141_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1141_pos = $P10."pos"()
  # rx pass
    rx1141_cur."!cursor_pass"(rx1141_pos, "prefix:sym<+>")
    if_null rx1141_debug, debug_909
    rx1141_cur."!cursor_debug"("PASS", "prefix:sym<+>", " at pos=", rx1141_pos)
  debug_909:
    .return (rx1141_cur)
  rx1141_restart:
.annotate 'line', 492
    if_null rx1141_debug, debug_910
    rx1141_cur."!cursor_debug"("NEXT", "prefix:sym<+>")
  debug_910:
  rx1141_fail:
    (rx1141_rep, rx1141_pos, $I10, $P10) = rx1141_cur."!mark_fail"(0)
    lt rx1141_pos, -1, rx1141_done
    eq rx1141_pos, -1, rx1141_fail
    jump $I10
  rx1141_done:
    rx1141_cur."!cursor_fail"()
    if_null rx1141_debug, debug_911
    rx1141_cur."!cursor_debug"("FAIL", "prefix:sym<+>")
  debug_911:
    .return (rx1141_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<+>"  :subid("279_1294592820.342") :method
.annotate 'line', 492
    $P1143 = self."!PREFIX__!subrule"("O", "+")
    new $P1144, "ResizablePMCArray"
    push $P1144, $P1143
    .return ($P1144)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<~>"  :subid("280_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 492
    .local string rx1148_tgt
    .local int rx1148_pos
    .local int rx1148_off
    .local int rx1148_eos
    .local int rx1148_rep
    .local pmc rx1148_cur
    .local pmc rx1148_debug
    (rx1148_cur, rx1148_pos, rx1148_tgt, $I10) = self."!cursor_start"()
    getattribute rx1148_debug, rx1148_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1148_cur
    .local pmc match
    .lex "$/", match
    length rx1148_eos, rx1148_tgt
    gt rx1148_pos, rx1148_eos, rx1148_done
    set rx1148_off, 0
    lt rx1148_pos, 2, rx1148_start
    sub rx1148_off, rx1148_pos, 1
    substr rx1148_tgt, rx1148_tgt, rx1148_off
  rx1148_start:
    eq $I10, 1, rx1148_restart
    if_null rx1148_debug, debug_912
    rx1148_cur."!cursor_debug"("START", "prefix:sym<~>")
  debug_912:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1152_done
    goto rxscan1152_scan
  rxscan1152_loop:
    ($P10) = rx1148_cur."from"()
    inc $P10
    set rx1148_pos, $P10
    ge rx1148_pos, rx1148_eos, rxscan1152_done
  rxscan1152_scan:
    set_addr $I10, rxscan1152_loop
    rx1148_cur."!mark_push"(0, rx1148_pos, $I10)
  rxscan1152_done:
.annotate 'line', 546
  # rx subcapture "sym"
    set_addr $I10, rxcap_1153_fail
    rx1148_cur."!mark_push"(0, rx1148_pos, $I10)
  # rx literal  "~"
    add $I11, rx1148_pos, 1
    gt $I11, rx1148_eos, rx1148_fail
    sub $I11, rx1148_pos, rx1148_off
    ord $I11, rx1148_tgt, $I11
    ne $I11, 126, rx1148_fail
    add rx1148_pos, 1
    set_addr $I10, rxcap_1153_fail
    ($I12, $I11) = rx1148_cur."!mark_peek"($I10)
    rx1148_cur."!cursor_pos"($I11)
    ($P10) = rx1148_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1148_pos, "")
    rx1148_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1153_done
  rxcap_1153_fail:
    goto rx1148_fail
  rxcap_1153_done:
  # rx subrule "O" subtype=capture negate=
    rx1148_cur."!cursor_pos"(rx1148_pos)
    $P10 = rx1148_cur."O"("%symbolic_unary, :pirop<set S*>")
    unless $P10, rx1148_fail
    rx1148_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1148_pos = $P10."pos"()
  # rx pass
    rx1148_cur."!cursor_pass"(rx1148_pos, "prefix:sym<~>")
    if_null rx1148_debug, debug_913
    rx1148_cur."!cursor_debug"("PASS", "prefix:sym<~>", " at pos=", rx1148_pos)
  debug_913:
    .return (rx1148_cur)
  rx1148_restart:
.annotate 'line', 492
    if_null rx1148_debug, debug_914
    rx1148_cur."!cursor_debug"("NEXT", "prefix:sym<~>")
  debug_914:
  rx1148_fail:
    (rx1148_rep, rx1148_pos, $I10, $P10) = rx1148_cur."!mark_fail"(0)
    lt rx1148_pos, -1, rx1148_done
    eq rx1148_pos, -1, rx1148_fail
    jump $I10
  rx1148_done:
    rx1148_cur."!cursor_fail"()
    if_null rx1148_debug, debug_915
    rx1148_cur."!cursor_debug"("FAIL", "prefix:sym<~>")
  debug_915:
    .return (rx1148_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<~>"  :subid("281_1294592820.342") :method
.annotate 'line', 492
    $P1150 = self."!PREFIX__!subrule"("O", "~")
    new $P1151, "ResizablePMCArray"
    push $P1151, $P1150
    .return ($P1151)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<->"  :subid("282_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 492
    .local string rx1155_tgt
    .local int rx1155_pos
    .local int rx1155_off
    .local int rx1155_eos
    .local int rx1155_rep
    .local pmc rx1155_cur
    .local pmc rx1155_debug
    (rx1155_cur, rx1155_pos, rx1155_tgt, $I10) = self."!cursor_start"()
    getattribute rx1155_debug, rx1155_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1155_cur
    .local pmc match
    .lex "$/", match
    length rx1155_eos, rx1155_tgt
    gt rx1155_pos, rx1155_eos, rx1155_done
    set rx1155_off, 0
    lt rx1155_pos, 2, rx1155_start
    sub rx1155_off, rx1155_pos, 1
    substr rx1155_tgt, rx1155_tgt, rx1155_off
  rx1155_start:
    eq $I10, 1, rx1155_restart
    if_null rx1155_debug, debug_916
    rx1155_cur."!cursor_debug"("START", "prefix:sym<->")
  debug_916:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1158_done
    goto rxscan1158_scan
  rxscan1158_loop:
    ($P10) = rx1155_cur."from"()
    inc $P10
    set rx1155_pos, $P10
    ge rx1155_pos, rx1155_eos, rxscan1158_done
  rxscan1158_scan:
    set_addr $I10, rxscan1158_loop
    rx1155_cur."!mark_push"(0, rx1155_pos, $I10)
  rxscan1158_done:
.annotate 'line', 547
  # rx subcapture "sym"
    set_addr $I10, rxcap_1159_fail
    rx1155_cur."!mark_push"(0, rx1155_pos, $I10)
  # rx literal  "-"
    add $I11, rx1155_pos, 1
    gt $I11, rx1155_eos, rx1155_fail
    sub $I11, rx1155_pos, rx1155_off
    ord $I11, rx1155_tgt, $I11
    ne $I11, 45, rx1155_fail
    add rx1155_pos, 1
    set_addr $I10, rxcap_1159_fail
    ($I12, $I11) = rx1155_cur."!mark_peek"($I10)
    rx1155_cur."!cursor_pos"($I11)
    ($P10) = rx1155_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1155_pos, "")
    rx1155_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1159_done
  rxcap_1159_fail:
    goto rx1155_fail
  rxcap_1159_done:
  # rx enumcharlist negate=1 zerowidth
    sub $I10, rx1155_pos, rx1155_off
    substr $S10, rx1155_tgt, $I10, 1
    index $I11, ">", $S10
    ge $I11, 0, rx1155_fail
  # rx subrule "number" subtype=zerowidth negate=1
    rx1155_cur."!cursor_pos"(rx1155_pos)
    $P10 = rx1155_cur."number"()
    if $P10, rx1155_fail
  # rx subrule "O" subtype=capture negate=
    rx1155_cur."!cursor_pos"(rx1155_pos)
    $P10 = rx1155_cur."O"("%symbolic_unary, :pirop<neg>")
    unless $P10, rx1155_fail
    rx1155_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1155_pos = $P10."pos"()
  # rx pass
    rx1155_cur."!cursor_pass"(rx1155_pos, "prefix:sym<->")
    if_null rx1155_debug, debug_917
    rx1155_cur."!cursor_debug"("PASS", "prefix:sym<->", " at pos=", rx1155_pos)
  debug_917:
    .return (rx1155_cur)
  rx1155_restart:
.annotate 'line', 492
    if_null rx1155_debug, debug_918
    rx1155_cur."!cursor_debug"("NEXT", "prefix:sym<->")
  debug_918:
  rx1155_fail:
    (rx1155_rep, rx1155_pos, $I10, $P10) = rx1155_cur."!mark_fail"(0)
    lt rx1155_pos, -1, rx1155_done
    eq rx1155_pos, -1, rx1155_fail
    jump $I10
  rx1155_done:
    rx1155_cur."!cursor_fail"()
    if_null rx1155_debug, debug_919
    rx1155_cur."!cursor_debug"("FAIL", "prefix:sym<->")
  debug_919:
    .return (rx1155_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<->"  :subid("283_1294592820.342") :method
.annotate 'line', 492
    new $P1157, "ResizablePMCArray"
    push $P1157, "-"
    .return ($P1157)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<?>"  :subid("284_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 492
    .local string rx1161_tgt
    .local int rx1161_pos
    .local int rx1161_off
    .local int rx1161_eos
    .local int rx1161_rep
    .local pmc rx1161_cur
    .local pmc rx1161_debug
    (rx1161_cur, rx1161_pos, rx1161_tgt, $I10) = self."!cursor_start"()
    getattribute rx1161_debug, rx1161_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1161_cur
    .local pmc match
    .lex "$/", match
    length rx1161_eos, rx1161_tgt
    gt rx1161_pos, rx1161_eos, rx1161_done
    set rx1161_off, 0
    lt rx1161_pos, 2, rx1161_start
    sub rx1161_off, rx1161_pos, 1
    substr rx1161_tgt, rx1161_tgt, rx1161_off
  rx1161_start:
    eq $I10, 1, rx1161_restart
    if_null rx1161_debug, debug_920
    rx1161_cur."!cursor_debug"("START", "prefix:sym<?>")
  debug_920:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1165_done
    goto rxscan1165_scan
  rxscan1165_loop:
    ($P10) = rx1161_cur."from"()
    inc $P10
    set rx1161_pos, $P10
    ge rx1161_pos, rx1161_eos, rxscan1165_done
  rxscan1165_scan:
    set_addr $I10, rxscan1165_loop
    rx1161_cur."!mark_push"(0, rx1161_pos, $I10)
  rxscan1165_done:
.annotate 'line', 548
  # rx subcapture "sym"
    set_addr $I10, rxcap_1166_fail
    rx1161_cur."!mark_push"(0, rx1161_pos, $I10)
  # rx literal  "?"
    add $I11, rx1161_pos, 1
    gt $I11, rx1161_eos, rx1161_fail
    sub $I11, rx1161_pos, rx1161_off
    ord $I11, rx1161_tgt, $I11
    ne $I11, 63, rx1161_fail
    add rx1161_pos, 1
    set_addr $I10, rxcap_1166_fail
    ($I12, $I11) = rx1161_cur."!mark_peek"($I10)
    rx1161_cur."!cursor_pos"($I11)
    ($P10) = rx1161_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1161_pos, "")
    rx1161_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1166_done
  rxcap_1166_fail:
    goto rx1161_fail
  rxcap_1166_done:
  # rx subrule "O" subtype=capture negate=
    rx1161_cur."!cursor_pos"(rx1161_pos)
    $P10 = rx1161_cur."O"("%symbolic_unary, :pirop<istrue>")
    unless $P10, rx1161_fail
    rx1161_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1161_pos = $P10."pos"()
  # rx pass
    rx1161_cur."!cursor_pass"(rx1161_pos, "prefix:sym<?>")
    if_null rx1161_debug, debug_921
    rx1161_cur."!cursor_debug"("PASS", "prefix:sym<?>", " at pos=", rx1161_pos)
  debug_921:
    .return (rx1161_cur)
  rx1161_restart:
.annotate 'line', 492
    if_null rx1161_debug, debug_922
    rx1161_cur."!cursor_debug"("NEXT", "prefix:sym<?>")
  debug_922:
  rx1161_fail:
    (rx1161_rep, rx1161_pos, $I10, $P10) = rx1161_cur."!mark_fail"(0)
    lt rx1161_pos, -1, rx1161_done
    eq rx1161_pos, -1, rx1161_fail
    jump $I10
  rx1161_done:
    rx1161_cur."!cursor_fail"()
    if_null rx1161_debug, debug_923
    rx1161_cur."!cursor_debug"("FAIL", "prefix:sym<?>")
  debug_923:
    .return (rx1161_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<?>"  :subid("285_1294592820.342") :method
.annotate 'line', 492
    $P1163 = self."!PREFIX__!subrule"("O", "?")
    new $P1164, "ResizablePMCArray"
    push $P1164, $P1163
    .return ($P1164)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<!>"  :subid("286_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 492
    .local string rx1168_tgt
    .local int rx1168_pos
    .local int rx1168_off
    .local int rx1168_eos
    .local int rx1168_rep
    .local pmc rx1168_cur
    .local pmc rx1168_debug
    (rx1168_cur, rx1168_pos, rx1168_tgt, $I10) = self."!cursor_start"()
    getattribute rx1168_debug, rx1168_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1168_cur
    .local pmc match
    .lex "$/", match
    length rx1168_eos, rx1168_tgt
    gt rx1168_pos, rx1168_eos, rx1168_done
    set rx1168_off, 0
    lt rx1168_pos, 2, rx1168_start
    sub rx1168_off, rx1168_pos, 1
    substr rx1168_tgt, rx1168_tgt, rx1168_off
  rx1168_start:
    eq $I10, 1, rx1168_restart
    if_null rx1168_debug, debug_924
    rx1168_cur."!cursor_debug"("START", "prefix:sym<!>")
  debug_924:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1172_done
    goto rxscan1172_scan
  rxscan1172_loop:
    ($P10) = rx1168_cur."from"()
    inc $P10
    set rx1168_pos, $P10
    ge rx1168_pos, rx1168_eos, rxscan1172_done
  rxscan1172_scan:
    set_addr $I10, rxscan1172_loop
    rx1168_cur."!mark_push"(0, rx1168_pos, $I10)
  rxscan1172_done:
.annotate 'line', 549
  # rx subcapture "sym"
    set_addr $I10, rxcap_1173_fail
    rx1168_cur."!mark_push"(0, rx1168_pos, $I10)
  # rx literal  "!"
    add $I11, rx1168_pos, 1
    gt $I11, rx1168_eos, rx1168_fail
    sub $I11, rx1168_pos, rx1168_off
    ord $I11, rx1168_tgt, $I11
    ne $I11, 33, rx1168_fail
    add rx1168_pos, 1
    set_addr $I10, rxcap_1173_fail
    ($I12, $I11) = rx1168_cur."!mark_peek"($I10)
    rx1168_cur."!cursor_pos"($I11)
    ($P10) = rx1168_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1168_pos, "")
    rx1168_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1173_done
  rxcap_1173_fail:
    goto rx1168_fail
  rxcap_1173_done:
  # rx subrule "O" subtype=capture negate=
    rx1168_cur."!cursor_pos"(rx1168_pos)
    $P10 = rx1168_cur."O"("%symbolic_unary, :pirop<isfalse>")
    unless $P10, rx1168_fail
    rx1168_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1168_pos = $P10."pos"()
  # rx pass
    rx1168_cur."!cursor_pass"(rx1168_pos, "prefix:sym<!>")
    if_null rx1168_debug, debug_925
    rx1168_cur."!cursor_debug"("PASS", "prefix:sym<!>", " at pos=", rx1168_pos)
  debug_925:
    .return (rx1168_cur)
  rx1168_restart:
.annotate 'line', 492
    if_null rx1168_debug, debug_926
    rx1168_cur."!cursor_debug"("NEXT", "prefix:sym<!>")
  debug_926:
  rx1168_fail:
    (rx1168_rep, rx1168_pos, $I10, $P10) = rx1168_cur."!mark_fail"(0)
    lt rx1168_pos, -1, rx1168_done
    eq rx1168_pos, -1, rx1168_fail
    jump $I10
  rx1168_done:
    rx1168_cur."!cursor_fail"()
    if_null rx1168_debug, debug_927
    rx1168_cur."!cursor_debug"("FAIL", "prefix:sym<!>")
  debug_927:
    .return (rx1168_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<!>"  :subid("287_1294592820.342") :method
.annotate 'line', 492
    $P1170 = self."!PREFIX__!subrule"("O", "!")
    new $P1171, "ResizablePMCArray"
    push $P1171, $P1170
    .return ($P1171)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<|>"  :subid("288_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 492
    .local string rx1175_tgt
    .local int rx1175_pos
    .local int rx1175_off
    .local int rx1175_eos
    .local int rx1175_rep
    .local pmc rx1175_cur
    .local pmc rx1175_debug
    (rx1175_cur, rx1175_pos, rx1175_tgt, $I10) = self."!cursor_start"()
    getattribute rx1175_debug, rx1175_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1175_cur
    .local pmc match
    .lex "$/", match
    length rx1175_eos, rx1175_tgt
    gt rx1175_pos, rx1175_eos, rx1175_done
    set rx1175_off, 0
    lt rx1175_pos, 2, rx1175_start
    sub rx1175_off, rx1175_pos, 1
    substr rx1175_tgt, rx1175_tgt, rx1175_off
  rx1175_start:
    eq $I10, 1, rx1175_restart
    if_null rx1175_debug, debug_928
    rx1175_cur."!cursor_debug"("START", "prefix:sym<|>")
  debug_928:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1179_done
    goto rxscan1179_scan
  rxscan1179_loop:
    ($P10) = rx1175_cur."from"()
    inc $P10
    set rx1175_pos, $P10
    ge rx1175_pos, rx1175_eos, rxscan1179_done
  rxscan1179_scan:
    set_addr $I10, rxscan1179_loop
    rx1175_cur."!mark_push"(0, rx1175_pos, $I10)
  rxscan1179_done:
.annotate 'line', 550
  # rx subcapture "sym"
    set_addr $I10, rxcap_1180_fail
    rx1175_cur."!mark_push"(0, rx1175_pos, $I10)
  # rx literal  "|"
    add $I11, rx1175_pos, 1
    gt $I11, rx1175_eos, rx1175_fail
    sub $I11, rx1175_pos, rx1175_off
    ord $I11, rx1175_tgt, $I11
    ne $I11, 124, rx1175_fail
    add rx1175_pos, 1
    set_addr $I10, rxcap_1180_fail
    ($I12, $I11) = rx1175_cur."!mark_peek"($I10)
    rx1175_cur."!cursor_pos"($I11)
    ($P10) = rx1175_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1175_pos, "")
    rx1175_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1180_done
  rxcap_1180_fail:
    goto rx1175_fail
  rxcap_1180_done:
  # rx subrule "O" subtype=capture negate=
    rx1175_cur."!cursor_pos"(rx1175_pos)
    $P10 = rx1175_cur."O"("%symbolic_unary")
    unless $P10, rx1175_fail
    rx1175_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1175_pos = $P10."pos"()
  # rx pass
    rx1175_cur."!cursor_pass"(rx1175_pos, "prefix:sym<|>")
    if_null rx1175_debug, debug_929
    rx1175_cur."!cursor_debug"("PASS", "prefix:sym<|>", " at pos=", rx1175_pos)
  debug_929:
    .return (rx1175_cur)
  rx1175_restart:
.annotate 'line', 492
    if_null rx1175_debug, debug_930
    rx1175_cur."!cursor_debug"("NEXT", "prefix:sym<|>")
  debug_930:
  rx1175_fail:
    (rx1175_rep, rx1175_pos, $I10, $P10) = rx1175_cur."!mark_fail"(0)
    lt rx1175_pos, -1, rx1175_done
    eq rx1175_pos, -1, rx1175_fail
    jump $I10
  rx1175_done:
    rx1175_cur."!cursor_fail"()
    if_null rx1175_debug, debug_931
    rx1175_cur."!cursor_debug"("FAIL", "prefix:sym<|>")
  debug_931:
    .return (rx1175_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<|>"  :subid("289_1294592820.342") :method
.annotate 'line', 492
    $P1177 = self."!PREFIX__!subrule"("O", "|")
    new $P1178, "ResizablePMCArray"
    push $P1178, $P1177
    .return ($P1178)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<*>"  :subid("290_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 492
    .local string rx1182_tgt
    .local int rx1182_pos
    .local int rx1182_off
    .local int rx1182_eos
    .local int rx1182_rep
    .local pmc rx1182_cur
    .local pmc rx1182_debug
    (rx1182_cur, rx1182_pos, rx1182_tgt, $I10) = self."!cursor_start"()
    getattribute rx1182_debug, rx1182_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1182_cur
    .local pmc match
    .lex "$/", match
    length rx1182_eos, rx1182_tgt
    gt rx1182_pos, rx1182_eos, rx1182_done
    set rx1182_off, 0
    lt rx1182_pos, 2, rx1182_start
    sub rx1182_off, rx1182_pos, 1
    substr rx1182_tgt, rx1182_tgt, rx1182_off
  rx1182_start:
    eq $I10, 1, rx1182_restart
    if_null rx1182_debug, debug_932
    rx1182_cur."!cursor_debug"("START", "infix:sym<*>")
  debug_932:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1186_done
    goto rxscan1186_scan
  rxscan1186_loop:
    ($P10) = rx1182_cur."from"()
    inc $P10
    set rx1182_pos, $P10
    ge rx1182_pos, rx1182_eos, rxscan1186_done
  rxscan1186_scan:
    set_addr $I10, rxscan1186_loop
    rx1182_cur."!mark_push"(0, rx1182_pos, $I10)
  rxscan1186_done:
.annotate 'line', 552
  # rx subcapture "sym"
    set_addr $I10, rxcap_1187_fail
    rx1182_cur."!mark_push"(0, rx1182_pos, $I10)
  # rx literal  "*"
    add $I11, rx1182_pos, 1
    gt $I11, rx1182_eos, rx1182_fail
    sub $I11, rx1182_pos, rx1182_off
    ord $I11, rx1182_tgt, $I11
    ne $I11, 42, rx1182_fail
    add rx1182_pos, 1
    set_addr $I10, rxcap_1187_fail
    ($I12, $I11) = rx1182_cur."!mark_peek"($I10)
    rx1182_cur."!cursor_pos"($I11)
    ($P10) = rx1182_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1182_pos, "")
    rx1182_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1187_done
  rxcap_1187_fail:
    goto rx1182_fail
  rxcap_1187_done:
  # rx subrule "O" subtype=capture negate=
    rx1182_cur."!cursor_pos"(rx1182_pos)
    $P10 = rx1182_cur."O"("%multiplicative, :pirop<mul>")
    unless $P10, rx1182_fail
    rx1182_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1182_pos = $P10."pos"()
  # rx pass
    rx1182_cur."!cursor_pass"(rx1182_pos, "infix:sym<*>")
    if_null rx1182_debug, debug_933
    rx1182_cur."!cursor_debug"("PASS", "infix:sym<*>", " at pos=", rx1182_pos)
  debug_933:
    .return (rx1182_cur)
  rx1182_restart:
.annotate 'line', 492
    if_null rx1182_debug, debug_934
    rx1182_cur."!cursor_debug"("NEXT", "infix:sym<*>")
  debug_934:
  rx1182_fail:
    (rx1182_rep, rx1182_pos, $I10, $P10) = rx1182_cur."!mark_fail"(0)
    lt rx1182_pos, -1, rx1182_done
    eq rx1182_pos, -1, rx1182_fail
    jump $I10
  rx1182_done:
    rx1182_cur."!cursor_fail"()
    if_null rx1182_debug, debug_935
    rx1182_cur."!cursor_debug"("FAIL", "infix:sym<*>")
  debug_935:
    .return (rx1182_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<*>"  :subid("291_1294592820.342") :method
.annotate 'line', 492
    $P1184 = self."!PREFIX__!subrule"("O", "*")
    new $P1185, "ResizablePMCArray"
    push $P1185, $P1184
    .return ($P1185)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym</>"  :subid("292_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 492
    .local string rx1189_tgt
    .local int rx1189_pos
    .local int rx1189_off
    .local int rx1189_eos
    .local int rx1189_rep
    .local pmc rx1189_cur
    .local pmc rx1189_debug
    (rx1189_cur, rx1189_pos, rx1189_tgt, $I10) = self."!cursor_start"()
    getattribute rx1189_debug, rx1189_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1189_cur
    .local pmc match
    .lex "$/", match
    length rx1189_eos, rx1189_tgt
    gt rx1189_pos, rx1189_eos, rx1189_done
    set rx1189_off, 0
    lt rx1189_pos, 2, rx1189_start
    sub rx1189_off, rx1189_pos, 1
    substr rx1189_tgt, rx1189_tgt, rx1189_off
  rx1189_start:
    eq $I10, 1, rx1189_restart
    if_null rx1189_debug, debug_936
    rx1189_cur."!cursor_debug"("START", "infix:sym</>")
  debug_936:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1193_done
    goto rxscan1193_scan
  rxscan1193_loop:
    ($P10) = rx1189_cur."from"()
    inc $P10
    set rx1189_pos, $P10
    ge rx1189_pos, rx1189_eos, rxscan1193_done
  rxscan1193_scan:
    set_addr $I10, rxscan1193_loop
    rx1189_cur."!mark_push"(0, rx1189_pos, $I10)
  rxscan1193_done:
.annotate 'line', 553
  # rx subcapture "sym"
    set_addr $I10, rxcap_1194_fail
    rx1189_cur."!mark_push"(0, rx1189_pos, $I10)
  # rx literal  "/"
    add $I11, rx1189_pos, 1
    gt $I11, rx1189_eos, rx1189_fail
    sub $I11, rx1189_pos, rx1189_off
    ord $I11, rx1189_tgt, $I11
    ne $I11, 47, rx1189_fail
    add rx1189_pos, 1
    set_addr $I10, rxcap_1194_fail
    ($I12, $I11) = rx1189_cur."!mark_peek"($I10)
    rx1189_cur."!cursor_pos"($I11)
    ($P10) = rx1189_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1189_pos, "")
    rx1189_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1194_done
  rxcap_1194_fail:
    goto rx1189_fail
  rxcap_1194_done:
  # rx subrule "O" subtype=capture negate=
    rx1189_cur."!cursor_pos"(rx1189_pos)
    $P10 = rx1189_cur."O"("%multiplicative, :pirop<div>")
    unless $P10, rx1189_fail
    rx1189_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1189_pos = $P10."pos"()
  # rx pass
    rx1189_cur."!cursor_pass"(rx1189_pos, "infix:sym</>")
    if_null rx1189_debug, debug_937
    rx1189_cur."!cursor_debug"("PASS", "infix:sym</>", " at pos=", rx1189_pos)
  debug_937:
    .return (rx1189_cur)
  rx1189_restart:
.annotate 'line', 492
    if_null rx1189_debug, debug_938
    rx1189_cur."!cursor_debug"("NEXT", "infix:sym</>")
  debug_938:
  rx1189_fail:
    (rx1189_rep, rx1189_pos, $I10, $P10) = rx1189_cur."!mark_fail"(0)
    lt rx1189_pos, -1, rx1189_done
    eq rx1189_pos, -1, rx1189_fail
    jump $I10
  rx1189_done:
    rx1189_cur."!cursor_fail"()
    if_null rx1189_debug, debug_939
    rx1189_cur."!cursor_debug"("FAIL", "infix:sym</>")
  debug_939:
    .return (rx1189_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym</>"  :subid("293_1294592820.342") :method
.annotate 'line', 492
    $P1191 = self."!PREFIX__!subrule"("O", "/")
    new $P1192, "ResizablePMCArray"
    push $P1192, $P1191
    .return ($P1192)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<%>"  :subid("294_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 492
    .local string rx1196_tgt
    .local int rx1196_pos
    .local int rx1196_off
    .local int rx1196_eos
    .local int rx1196_rep
    .local pmc rx1196_cur
    .local pmc rx1196_debug
    (rx1196_cur, rx1196_pos, rx1196_tgt, $I10) = self."!cursor_start"()
    getattribute rx1196_debug, rx1196_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1196_cur
    .local pmc match
    .lex "$/", match
    length rx1196_eos, rx1196_tgt
    gt rx1196_pos, rx1196_eos, rx1196_done
    set rx1196_off, 0
    lt rx1196_pos, 2, rx1196_start
    sub rx1196_off, rx1196_pos, 1
    substr rx1196_tgt, rx1196_tgt, rx1196_off
  rx1196_start:
    eq $I10, 1, rx1196_restart
    if_null rx1196_debug, debug_940
    rx1196_cur."!cursor_debug"("START", "infix:sym<%>")
  debug_940:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1200_done
    goto rxscan1200_scan
  rxscan1200_loop:
    ($P10) = rx1196_cur."from"()
    inc $P10
    set rx1196_pos, $P10
    ge rx1196_pos, rx1196_eos, rxscan1200_done
  rxscan1200_scan:
    set_addr $I10, rxscan1200_loop
    rx1196_cur."!mark_push"(0, rx1196_pos, $I10)
  rxscan1200_done:
.annotate 'line', 554
  # rx subcapture "sym"
    set_addr $I10, rxcap_1201_fail
    rx1196_cur."!mark_push"(0, rx1196_pos, $I10)
  # rx literal  "%"
    add $I11, rx1196_pos, 1
    gt $I11, rx1196_eos, rx1196_fail
    sub $I11, rx1196_pos, rx1196_off
    ord $I11, rx1196_tgt, $I11
    ne $I11, 37, rx1196_fail
    add rx1196_pos, 1
    set_addr $I10, rxcap_1201_fail
    ($I12, $I11) = rx1196_cur."!mark_peek"($I10)
    rx1196_cur."!cursor_pos"($I11)
    ($P10) = rx1196_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1196_pos, "")
    rx1196_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1201_done
  rxcap_1201_fail:
    goto rx1196_fail
  rxcap_1201_done:
  # rx subrule "O" subtype=capture negate=
    rx1196_cur."!cursor_pos"(rx1196_pos)
    $P10 = rx1196_cur."O"("%multiplicative, :pirop<mod>")
    unless $P10, rx1196_fail
    rx1196_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1196_pos = $P10."pos"()
  # rx pass
    rx1196_cur."!cursor_pass"(rx1196_pos, "infix:sym<%>")
    if_null rx1196_debug, debug_941
    rx1196_cur."!cursor_debug"("PASS", "infix:sym<%>", " at pos=", rx1196_pos)
  debug_941:
    .return (rx1196_cur)
  rx1196_restart:
.annotate 'line', 492
    if_null rx1196_debug, debug_942
    rx1196_cur."!cursor_debug"("NEXT", "infix:sym<%>")
  debug_942:
  rx1196_fail:
    (rx1196_rep, rx1196_pos, $I10, $P10) = rx1196_cur."!mark_fail"(0)
    lt rx1196_pos, -1, rx1196_done
    eq rx1196_pos, -1, rx1196_fail
    jump $I10
  rx1196_done:
    rx1196_cur."!cursor_fail"()
    if_null rx1196_debug, debug_943
    rx1196_cur."!cursor_debug"("FAIL", "infix:sym<%>")
  debug_943:
    .return (rx1196_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<%>"  :subid("295_1294592820.342") :method
.annotate 'line', 492
    $P1198 = self."!PREFIX__!subrule"("O", "%")
    new $P1199, "ResizablePMCArray"
    push $P1199, $P1198
    .return ($P1199)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<+&>"  :subid("296_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 492
    .local string rx1203_tgt
    .local int rx1203_pos
    .local int rx1203_off
    .local int rx1203_eos
    .local int rx1203_rep
    .local pmc rx1203_cur
    .local pmc rx1203_debug
    (rx1203_cur, rx1203_pos, rx1203_tgt, $I10) = self."!cursor_start"()
    getattribute rx1203_debug, rx1203_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1203_cur
    .local pmc match
    .lex "$/", match
    length rx1203_eos, rx1203_tgt
    gt rx1203_pos, rx1203_eos, rx1203_done
    set rx1203_off, 0
    lt rx1203_pos, 2, rx1203_start
    sub rx1203_off, rx1203_pos, 1
    substr rx1203_tgt, rx1203_tgt, rx1203_off
  rx1203_start:
    eq $I10, 1, rx1203_restart
    if_null rx1203_debug, debug_944
    rx1203_cur."!cursor_debug"("START", "infix:sym<+&>")
  debug_944:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1207_done
    goto rxscan1207_scan
  rxscan1207_loop:
    ($P10) = rx1203_cur."from"()
    inc $P10
    set rx1203_pos, $P10
    ge rx1203_pos, rx1203_eos, rxscan1207_done
  rxscan1207_scan:
    set_addr $I10, rxscan1207_loop
    rx1203_cur."!mark_push"(0, rx1203_pos, $I10)
  rxscan1207_done:
.annotate 'line', 555
  # rx subcapture "sym"
    set_addr $I10, rxcap_1208_fail
    rx1203_cur."!mark_push"(0, rx1203_pos, $I10)
  # rx literal  "+&"
    add $I11, rx1203_pos, 2
    gt $I11, rx1203_eos, rx1203_fail
    sub $I11, rx1203_pos, rx1203_off
    substr $S10, rx1203_tgt, $I11, 2
    ne $S10, "+&", rx1203_fail
    add rx1203_pos, 2
    set_addr $I10, rxcap_1208_fail
    ($I12, $I11) = rx1203_cur."!mark_peek"($I10)
    rx1203_cur."!cursor_pos"($I11)
    ($P10) = rx1203_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1203_pos, "")
    rx1203_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1208_done
  rxcap_1208_fail:
    goto rx1203_fail
  rxcap_1208_done:
  # rx subrule "O" subtype=capture negate=
    rx1203_cur."!cursor_pos"(rx1203_pos)
    $P10 = rx1203_cur."O"("%multiplicative, :pirop<band III>")
    unless $P10, rx1203_fail
    rx1203_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1203_pos = $P10."pos"()
  # rx pass
    rx1203_cur."!cursor_pass"(rx1203_pos, "infix:sym<+&>")
    if_null rx1203_debug, debug_945
    rx1203_cur."!cursor_debug"("PASS", "infix:sym<+&>", " at pos=", rx1203_pos)
  debug_945:
    .return (rx1203_cur)
  rx1203_restart:
.annotate 'line', 492
    if_null rx1203_debug, debug_946
    rx1203_cur."!cursor_debug"("NEXT", "infix:sym<+&>")
  debug_946:
  rx1203_fail:
    (rx1203_rep, rx1203_pos, $I10, $P10) = rx1203_cur."!mark_fail"(0)
    lt rx1203_pos, -1, rx1203_done
    eq rx1203_pos, -1, rx1203_fail
    jump $I10
  rx1203_done:
    rx1203_cur."!cursor_fail"()
    if_null rx1203_debug, debug_947
    rx1203_cur."!cursor_debug"("FAIL", "infix:sym<+&>")
  debug_947:
    .return (rx1203_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<+&>"  :subid("297_1294592820.342") :method
.annotate 'line', 492
    $P1205 = self."!PREFIX__!subrule"("O", "+&")
    new $P1206, "ResizablePMCArray"
    push $P1206, $P1205
    .return ($P1206)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<+>"  :subid("298_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 492
    .local string rx1210_tgt
    .local int rx1210_pos
    .local int rx1210_off
    .local int rx1210_eos
    .local int rx1210_rep
    .local pmc rx1210_cur
    .local pmc rx1210_debug
    (rx1210_cur, rx1210_pos, rx1210_tgt, $I10) = self."!cursor_start"()
    getattribute rx1210_debug, rx1210_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1210_cur
    .local pmc match
    .lex "$/", match
    length rx1210_eos, rx1210_tgt
    gt rx1210_pos, rx1210_eos, rx1210_done
    set rx1210_off, 0
    lt rx1210_pos, 2, rx1210_start
    sub rx1210_off, rx1210_pos, 1
    substr rx1210_tgt, rx1210_tgt, rx1210_off
  rx1210_start:
    eq $I10, 1, rx1210_restart
    if_null rx1210_debug, debug_948
    rx1210_cur."!cursor_debug"("START", "infix:sym<+>")
  debug_948:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1214_done
    goto rxscan1214_scan
  rxscan1214_loop:
    ($P10) = rx1210_cur."from"()
    inc $P10
    set rx1210_pos, $P10
    ge rx1210_pos, rx1210_eos, rxscan1214_done
  rxscan1214_scan:
    set_addr $I10, rxscan1214_loop
    rx1210_cur."!mark_push"(0, rx1210_pos, $I10)
  rxscan1214_done:
.annotate 'line', 557
  # rx subcapture "sym"
    set_addr $I10, rxcap_1215_fail
    rx1210_cur."!mark_push"(0, rx1210_pos, $I10)
  # rx literal  "+"
    add $I11, rx1210_pos, 1
    gt $I11, rx1210_eos, rx1210_fail
    sub $I11, rx1210_pos, rx1210_off
    ord $I11, rx1210_tgt, $I11
    ne $I11, 43, rx1210_fail
    add rx1210_pos, 1
    set_addr $I10, rxcap_1215_fail
    ($I12, $I11) = rx1210_cur."!mark_peek"($I10)
    rx1210_cur."!cursor_pos"($I11)
    ($P10) = rx1210_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1210_pos, "")
    rx1210_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1215_done
  rxcap_1215_fail:
    goto rx1210_fail
  rxcap_1215_done:
  # rx subrule "O" subtype=capture negate=
    rx1210_cur."!cursor_pos"(rx1210_pos)
    $P10 = rx1210_cur."O"("%additive, :pirop<add>")
    unless $P10, rx1210_fail
    rx1210_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1210_pos = $P10."pos"()
  # rx pass
    rx1210_cur."!cursor_pass"(rx1210_pos, "infix:sym<+>")
    if_null rx1210_debug, debug_949
    rx1210_cur."!cursor_debug"("PASS", "infix:sym<+>", " at pos=", rx1210_pos)
  debug_949:
    .return (rx1210_cur)
  rx1210_restart:
.annotate 'line', 492
    if_null rx1210_debug, debug_950
    rx1210_cur."!cursor_debug"("NEXT", "infix:sym<+>")
  debug_950:
  rx1210_fail:
    (rx1210_rep, rx1210_pos, $I10, $P10) = rx1210_cur."!mark_fail"(0)
    lt rx1210_pos, -1, rx1210_done
    eq rx1210_pos, -1, rx1210_fail
    jump $I10
  rx1210_done:
    rx1210_cur."!cursor_fail"()
    if_null rx1210_debug, debug_951
    rx1210_cur."!cursor_debug"("FAIL", "infix:sym<+>")
  debug_951:
    .return (rx1210_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<+>"  :subid("299_1294592820.342") :method
.annotate 'line', 492
    $P1212 = self."!PREFIX__!subrule"("O", "+")
    new $P1213, "ResizablePMCArray"
    push $P1213, $P1212
    .return ($P1213)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<->"  :subid("300_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 492
    .local string rx1217_tgt
    .local int rx1217_pos
    .local int rx1217_off
    .local int rx1217_eos
    .local int rx1217_rep
    .local pmc rx1217_cur
    .local pmc rx1217_debug
    (rx1217_cur, rx1217_pos, rx1217_tgt, $I10) = self."!cursor_start"()
    getattribute rx1217_debug, rx1217_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1217_cur
    .local pmc match
    .lex "$/", match
    length rx1217_eos, rx1217_tgt
    gt rx1217_pos, rx1217_eos, rx1217_done
    set rx1217_off, 0
    lt rx1217_pos, 2, rx1217_start
    sub rx1217_off, rx1217_pos, 1
    substr rx1217_tgt, rx1217_tgt, rx1217_off
  rx1217_start:
    eq $I10, 1, rx1217_restart
    if_null rx1217_debug, debug_952
    rx1217_cur."!cursor_debug"("START", "infix:sym<->")
  debug_952:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1221_done
    goto rxscan1221_scan
  rxscan1221_loop:
    ($P10) = rx1217_cur."from"()
    inc $P10
    set rx1217_pos, $P10
    ge rx1217_pos, rx1217_eos, rxscan1221_done
  rxscan1221_scan:
    set_addr $I10, rxscan1221_loop
    rx1217_cur."!mark_push"(0, rx1217_pos, $I10)
  rxscan1221_done:
.annotate 'line', 558
  # rx subcapture "sym"
    set_addr $I10, rxcap_1222_fail
    rx1217_cur."!mark_push"(0, rx1217_pos, $I10)
  # rx literal  "-"
    add $I11, rx1217_pos, 1
    gt $I11, rx1217_eos, rx1217_fail
    sub $I11, rx1217_pos, rx1217_off
    ord $I11, rx1217_tgt, $I11
    ne $I11, 45, rx1217_fail
    add rx1217_pos, 1
    set_addr $I10, rxcap_1222_fail
    ($I12, $I11) = rx1217_cur."!mark_peek"($I10)
    rx1217_cur."!cursor_pos"($I11)
    ($P10) = rx1217_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1217_pos, "")
    rx1217_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1222_done
  rxcap_1222_fail:
    goto rx1217_fail
  rxcap_1222_done:
  # rx subrule "O" subtype=capture negate=
    rx1217_cur."!cursor_pos"(rx1217_pos)
    $P10 = rx1217_cur."O"("%additive, :pirop<sub>")
    unless $P10, rx1217_fail
    rx1217_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1217_pos = $P10."pos"()
  # rx pass
    rx1217_cur."!cursor_pass"(rx1217_pos, "infix:sym<->")
    if_null rx1217_debug, debug_953
    rx1217_cur."!cursor_debug"("PASS", "infix:sym<->", " at pos=", rx1217_pos)
  debug_953:
    .return (rx1217_cur)
  rx1217_restart:
.annotate 'line', 492
    if_null rx1217_debug, debug_954
    rx1217_cur."!cursor_debug"("NEXT", "infix:sym<->")
  debug_954:
  rx1217_fail:
    (rx1217_rep, rx1217_pos, $I10, $P10) = rx1217_cur."!mark_fail"(0)
    lt rx1217_pos, -1, rx1217_done
    eq rx1217_pos, -1, rx1217_fail
    jump $I10
  rx1217_done:
    rx1217_cur."!cursor_fail"()
    if_null rx1217_debug, debug_955
    rx1217_cur."!cursor_debug"("FAIL", "infix:sym<->")
  debug_955:
    .return (rx1217_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<->"  :subid("301_1294592820.342") :method
.annotate 'line', 492
    $P1219 = self."!PREFIX__!subrule"("O", "-")
    new $P1220, "ResizablePMCArray"
    push $P1220, $P1219
    .return ($P1220)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<+|>"  :subid("302_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 492
    .local string rx1224_tgt
    .local int rx1224_pos
    .local int rx1224_off
    .local int rx1224_eos
    .local int rx1224_rep
    .local pmc rx1224_cur
    .local pmc rx1224_debug
    (rx1224_cur, rx1224_pos, rx1224_tgt, $I10) = self."!cursor_start"()
    getattribute rx1224_debug, rx1224_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1224_cur
    .local pmc match
    .lex "$/", match
    length rx1224_eos, rx1224_tgt
    gt rx1224_pos, rx1224_eos, rx1224_done
    set rx1224_off, 0
    lt rx1224_pos, 2, rx1224_start
    sub rx1224_off, rx1224_pos, 1
    substr rx1224_tgt, rx1224_tgt, rx1224_off
  rx1224_start:
    eq $I10, 1, rx1224_restart
    if_null rx1224_debug, debug_956
    rx1224_cur."!cursor_debug"("START", "infix:sym<+|>")
  debug_956:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1228_done
    goto rxscan1228_scan
  rxscan1228_loop:
    ($P10) = rx1224_cur."from"()
    inc $P10
    set rx1224_pos, $P10
    ge rx1224_pos, rx1224_eos, rxscan1228_done
  rxscan1228_scan:
    set_addr $I10, rxscan1228_loop
    rx1224_cur."!mark_push"(0, rx1224_pos, $I10)
  rxscan1228_done:
.annotate 'line', 559
  # rx subcapture "sym"
    set_addr $I10, rxcap_1229_fail
    rx1224_cur."!mark_push"(0, rx1224_pos, $I10)
  # rx literal  "+|"
    add $I11, rx1224_pos, 2
    gt $I11, rx1224_eos, rx1224_fail
    sub $I11, rx1224_pos, rx1224_off
    substr $S10, rx1224_tgt, $I11, 2
    ne $S10, "+|", rx1224_fail
    add rx1224_pos, 2
    set_addr $I10, rxcap_1229_fail
    ($I12, $I11) = rx1224_cur."!mark_peek"($I10)
    rx1224_cur."!cursor_pos"($I11)
    ($P10) = rx1224_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1224_pos, "")
    rx1224_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1229_done
  rxcap_1229_fail:
    goto rx1224_fail
  rxcap_1229_done:
  # rx subrule "O" subtype=capture negate=
    rx1224_cur."!cursor_pos"(rx1224_pos)
    $P10 = rx1224_cur."O"("%additive, :pirop<bor III>")
    unless $P10, rx1224_fail
    rx1224_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1224_pos = $P10."pos"()
  # rx pass
    rx1224_cur."!cursor_pass"(rx1224_pos, "infix:sym<+|>")
    if_null rx1224_debug, debug_957
    rx1224_cur."!cursor_debug"("PASS", "infix:sym<+|>", " at pos=", rx1224_pos)
  debug_957:
    .return (rx1224_cur)
  rx1224_restart:
.annotate 'line', 492
    if_null rx1224_debug, debug_958
    rx1224_cur."!cursor_debug"("NEXT", "infix:sym<+|>")
  debug_958:
  rx1224_fail:
    (rx1224_rep, rx1224_pos, $I10, $P10) = rx1224_cur."!mark_fail"(0)
    lt rx1224_pos, -1, rx1224_done
    eq rx1224_pos, -1, rx1224_fail
    jump $I10
  rx1224_done:
    rx1224_cur."!cursor_fail"()
    if_null rx1224_debug, debug_959
    rx1224_cur."!cursor_debug"("FAIL", "infix:sym<+|>")
  debug_959:
    .return (rx1224_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<+|>"  :subid("303_1294592820.342") :method
.annotate 'line', 492
    $P1226 = self."!PREFIX__!subrule"("O", "+|")
    new $P1227, "ResizablePMCArray"
    push $P1227, $P1226
    .return ($P1227)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<+^>"  :subid("304_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 492
    .local string rx1231_tgt
    .local int rx1231_pos
    .local int rx1231_off
    .local int rx1231_eos
    .local int rx1231_rep
    .local pmc rx1231_cur
    .local pmc rx1231_debug
    (rx1231_cur, rx1231_pos, rx1231_tgt, $I10) = self."!cursor_start"()
    getattribute rx1231_debug, rx1231_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1231_cur
    .local pmc match
    .lex "$/", match
    length rx1231_eos, rx1231_tgt
    gt rx1231_pos, rx1231_eos, rx1231_done
    set rx1231_off, 0
    lt rx1231_pos, 2, rx1231_start
    sub rx1231_off, rx1231_pos, 1
    substr rx1231_tgt, rx1231_tgt, rx1231_off
  rx1231_start:
    eq $I10, 1, rx1231_restart
    if_null rx1231_debug, debug_960
    rx1231_cur."!cursor_debug"("START", "infix:sym<+^>")
  debug_960:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1235_done
    goto rxscan1235_scan
  rxscan1235_loop:
    ($P10) = rx1231_cur."from"()
    inc $P10
    set rx1231_pos, $P10
    ge rx1231_pos, rx1231_eos, rxscan1235_done
  rxscan1235_scan:
    set_addr $I10, rxscan1235_loop
    rx1231_cur."!mark_push"(0, rx1231_pos, $I10)
  rxscan1235_done:
.annotate 'line', 560
  # rx subcapture "sym"
    set_addr $I10, rxcap_1236_fail
    rx1231_cur."!mark_push"(0, rx1231_pos, $I10)
  # rx literal  "+^"
    add $I11, rx1231_pos, 2
    gt $I11, rx1231_eos, rx1231_fail
    sub $I11, rx1231_pos, rx1231_off
    substr $S10, rx1231_tgt, $I11, 2
    ne $S10, "+^", rx1231_fail
    add rx1231_pos, 2
    set_addr $I10, rxcap_1236_fail
    ($I12, $I11) = rx1231_cur."!mark_peek"($I10)
    rx1231_cur."!cursor_pos"($I11)
    ($P10) = rx1231_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1231_pos, "")
    rx1231_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1236_done
  rxcap_1236_fail:
    goto rx1231_fail
  rxcap_1236_done:
  # rx subrule "O" subtype=capture negate=
    rx1231_cur."!cursor_pos"(rx1231_pos)
    $P10 = rx1231_cur."O"("%additive, :pirop<bxor III>")
    unless $P10, rx1231_fail
    rx1231_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1231_pos = $P10."pos"()
  # rx pass
    rx1231_cur."!cursor_pass"(rx1231_pos, "infix:sym<+^>")
    if_null rx1231_debug, debug_961
    rx1231_cur."!cursor_debug"("PASS", "infix:sym<+^>", " at pos=", rx1231_pos)
  debug_961:
    .return (rx1231_cur)
  rx1231_restart:
.annotate 'line', 492
    if_null rx1231_debug, debug_962
    rx1231_cur."!cursor_debug"("NEXT", "infix:sym<+^>")
  debug_962:
  rx1231_fail:
    (rx1231_rep, rx1231_pos, $I10, $P10) = rx1231_cur."!mark_fail"(0)
    lt rx1231_pos, -1, rx1231_done
    eq rx1231_pos, -1, rx1231_fail
    jump $I10
  rx1231_done:
    rx1231_cur."!cursor_fail"()
    if_null rx1231_debug, debug_963
    rx1231_cur."!cursor_debug"("FAIL", "infix:sym<+^>")
  debug_963:
    .return (rx1231_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<+^>"  :subid("305_1294592820.342") :method
.annotate 'line', 492
    $P1233 = self."!PREFIX__!subrule"("O", "+^")
    new $P1234, "ResizablePMCArray"
    push $P1234, $P1233
    .return ($P1234)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<~>"  :subid("306_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 492
    .local string rx1238_tgt
    .local int rx1238_pos
    .local int rx1238_off
    .local int rx1238_eos
    .local int rx1238_rep
    .local pmc rx1238_cur
    .local pmc rx1238_debug
    (rx1238_cur, rx1238_pos, rx1238_tgt, $I10) = self."!cursor_start"()
    getattribute rx1238_debug, rx1238_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1238_cur
    .local pmc match
    .lex "$/", match
    length rx1238_eos, rx1238_tgt
    gt rx1238_pos, rx1238_eos, rx1238_done
    set rx1238_off, 0
    lt rx1238_pos, 2, rx1238_start
    sub rx1238_off, rx1238_pos, 1
    substr rx1238_tgt, rx1238_tgt, rx1238_off
  rx1238_start:
    eq $I10, 1, rx1238_restart
    if_null rx1238_debug, debug_964
    rx1238_cur."!cursor_debug"("START", "infix:sym<~>")
  debug_964:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1242_done
    goto rxscan1242_scan
  rxscan1242_loop:
    ($P10) = rx1238_cur."from"()
    inc $P10
    set rx1238_pos, $P10
    ge rx1238_pos, rx1238_eos, rxscan1242_done
  rxscan1242_scan:
    set_addr $I10, rxscan1242_loop
    rx1238_cur."!mark_push"(0, rx1238_pos, $I10)
  rxscan1242_done:
.annotate 'line', 562
  # rx subcapture "sym"
    set_addr $I10, rxcap_1243_fail
    rx1238_cur."!mark_push"(0, rx1238_pos, $I10)
  # rx literal  "~"
    add $I11, rx1238_pos, 1
    gt $I11, rx1238_eos, rx1238_fail
    sub $I11, rx1238_pos, rx1238_off
    ord $I11, rx1238_tgt, $I11
    ne $I11, 126, rx1238_fail
    add rx1238_pos, 1
    set_addr $I10, rxcap_1243_fail
    ($I12, $I11) = rx1238_cur."!mark_peek"($I10)
    rx1238_cur."!cursor_pos"($I11)
    ($P10) = rx1238_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1238_pos, "")
    rx1238_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1243_done
  rxcap_1243_fail:
    goto rx1238_fail
  rxcap_1243_done:
  # rx subrule "O" subtype=capture negate=
    rx1238_cur."!cursor_pos"(rx1238_pos)
    $P10 = rx1238_cur."O"("%concatenation , :pirop<concat>")
    unless $P10, rx1238_fail
    rx1238_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1238_pos = $P10."pos"()
  # rx pass
    rx1238_cur."!cursor_pass"(rx1238_pos, "infix:sym<~>")
    if_null rx1238_debug, debug_965
    rx1238_cur."!cursor_debug"("PASS", "infix:sym<~>", " at pos=", rx1238_pos)
  debug_965:
    .return (rx1238_cur)
  rx1238_restart:
.annotate 'line', 492
    if_null rx1238_debug, debug_966
    rx1238_cur."!cursor_debug"("NEXT", "infix:sym<~>")
  debug_966:
  rx1238_fail:
    (rx1238_rep, rx1238_pos, $I10, $P10) = rx1238_cur."!mark_fail"(0)
    lt rx1238_pos, -1, rx1238_done
    eq rx1238_pos, -1, rx1238_fail
    jump $I10
  rx1238_done:
    rx1238_cur."!cursor_fail"()
    if_null rx1238_debug, debug_967
    rx1238_cur."!cursor_debug"("FAIL", "infix:sym<~>")
  debug_967:
    .return (rx1238_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<~>"  :subid("307_1294592820.342") :method
.annotate 'line', 492
    $P1240 = self."!PREFIX__!subrule"("O", "~")
    new $P1241, "ResizablePMCArray"
    push $P1241, $P1240
    .return ($P1241)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<==>"  :subid("308_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 492
    .local string rx1245_tgt
    .local int rx1245_pos
    .local int rx1245_off
    .local int rx1245_eos
    .local int rx1245_rep
    .local pmc rx1245_cur
    .local pmc rx1245_debug
    (rx1245_cur, rx1245_pos, rx1245_tgt, $I10) = self."!cursor_start"()
    getattribute rx1245_debug, rx1245_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1245_cur
    .local pmc match
    .lex "$/", match
    length rx1245_eos, rx1245_tgt
    gt rx1245_pos, rx1245_eos, rx1245_done
    set rx1245_off, 0
    lt rx1245_pos, 2, rx1245_start
    sub rx1245_off, rx1245_pos, 1
    substr rx1245_tgt, rx1245_tgt, rx1245_off
  rx1245_start:
    eq $I10, 1, rx1245_restart
    if_null rx1245_debug, debug_968
    rx1245_cur."!cursor_debug"("START", "infix:sym<==>")
  debug_968:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1249_done
    goto rxscan1249_scan
  rxscan1249_loop:
    ($P10) = rx1245_cur."from"()
    inc $P10
    set rx1245_pos, $P10
    ge rx1245_pos, rx1245_eos, rxscan1249_done
  rxscan1249_scan:
    set_addr $I10, rxscan1249_loop
    rx1245_cur."!mark_push"(0, rx1245_pos, $I10)
  rxscan1249_done:
.annotate 'line', 564
  # rx subcapture "sym"
    set_addr $I10, rxcap_1250_fail
    rx1245_cur."!mark_push"(0, rx1245_pos, $I10)
  # rx literal  "=="
    add $I11, rx1245_pos, 2
    gt $I11, rx1245_eos, rx1245_fail
    sub $I11, rx1245_pos, rx1245_off
    substr $S10, rx1245_tgt, $I11, 2
    ne $S10, "==", rx1245_fail
    add rx1245_pos, 2
    set_addr $I10, rxcap_1250_fail
    ($I12, $I11) = rx1245_cur."!mark_peek"($I10)
    rx1245_cur."!cursor_pos"($I11)
    ($P10) = rx1245_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1245_pos, "")
    rx1245_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1250_done
  rxcap_1250_fail:
    goto rx1245_fail
  rxcap_1250_done:
  # rx subrule "O" subtype=capture negate=
    rx1245_cur."!cursor_pos"(rx1245_pos)
    $P10 = rx1245_cur."O"("%relational, :pirop<iseq INn>")
    unless $P10, rx1245_fail
    rx1245_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1245_pos = $P10."pos"()
  # rx pass
    rx1245_cur."!cursor_pass"(rx1245_pos, "infix:sym<==>")
    if_null rx1245_debug, debug_969
    rx1245_cur."!cursor_debug"("PASS", "infix:sym<==>", " at pos=", rx1245_pos)
  debug_969:
    .return (rx1245_cur)
  rx1245_restart:
.annotate 'line', 492
    if_null rx1245_debug, debug_970
    rx1245_cur."!cursor_debug"("NEXT", "infix:sym<==>")
  debug_970:
  rx1245_fail:
    (rx1245_rep, rx1245_pos, $I10, $P10) = rx1245_cur."!mark_fail"(0)
    lt rx1245_pos, -1, rx1245_done
    eq rx1245_pos, -1, rx1245_fail
    jump $I10
  rx1245_done:
    rx1245_cur."!cursor_fail"()
    if_null rx1245_debug, debug_971
    rx1245_cur."!cursor_debug"("FAIL", "infix:sym<==>")
  debug_971:
    .return (rx1245_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<==>"  :subid("309_1294592820.342") :method
.annotate 'line', 492
    $P1247 = self."!PREFIX__!subrule"("O", "==")
    new $P1248, "ResizablePMCArray"
    push $P1248, $P1247
    .return ($P1248)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<!=>"  :subid("310_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 492
    .local string rx1252_tgt
    .local int rx1252_pos
    .local int rx1252_off
    .local int rx1252_eos
    .local int rx1252_rep
    .local pmc rx1252_cur
    .local pmc rx1252_debug
    (rx1252_cur, rx1252_pos, rx1252_tgt, $I10) = self."!cursor_start"()
    getattribute rx1252_debug, rx1252_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1252_cur
    .local pmc match
    .lex "$/", match
    length rx1252_eos, rx1252_tgt
    gt rx1252_pos, rx1252_eos, rx1252_done
    set rx1252_off, 0
    lt rx1252_pos, 2, rx1252_start
    sub rx1252_off, rx1252_pos, 1
    substr rx1252_tgt, rx1252_tgt, rx1252_off
  rx1252_start:
    eq $I10, 1, rx1252_restart
    if_null rx1252_debug, debug_972
    rx1252_cur."!cursor_debug"("START", "infix:sym<!=>")
  debug_972:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1256_done
    goto rxscan1256_scan
  rxscan1256_loop:
    ($P10) = rx1252_cur."from"()
    inc $P10
    set rx1252_pos, $P10
    ge rx1252_pos, rx1252_eos, rxscan1256_done
  rxscan1256_scan:
    set_addr $I10, rxscan1256_loop
    rx1252_cur."!mark_push"(0, rx1252_pos, $I10)
  rxscan1256_done:
.annotate 'line', 565
  # rx subcapture "sym"
    set_addr $I10, rxcap_1257_fail
    rx1252_cur."!mark_push"(0, rx1252_pos, $I10)
  # rx literal  "!="
    add $I11, rx1252_pos, 2
    gt $I11, rx1252_eos, rx1252_fail
    sub $I11, rx1252_pos, rx1252_off
    substr $S10, rx1252_tgt, $I11, 2
    ne $S10, "!=", rx1252_fail
    add rx1252_pos, 2
    set_addr $I10, rxcap_1257_fail
    ($I12, $I11) = rx1252_cur."!mark_peek"($I10)
    rx1252_cur."!cursor_pos"($I11)
    ($P10) = rx1252_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1252_pos, "")
    rx1252_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1257_done
  rxcap_1257_fail:
    goto rx1252_fail
  rxcap_1257_done:
  # rx subrule "O" subtype=capture negate=
    rx1252_cur."!cursor_pos"(rx1252_pos)
    $P10 = rx1252_cur."O"("%relational, :pirop<isne INn>")
    unless $P10, rx1252_fail
    rx1252_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1252_pos = $P10."pos"()
  # rx pass
    rx1252_cur."!cursor_pass"(rx1252_pos, "infix:sym<!=>")
    if_null rx1252_debug, debug_973
    rx1252_cur."!cursor_debug"("PASS", "infix:sym<!=>", " at pos=", rx1252_pos)
  debug_973:
    .return (rx1252_cur)
  rx1252_restart:
.annotate 'line', 492
    if_null rx1252_debug, debug_974
    rx1252_cur."!cursor_debug"("NEXT", "infix:sym<!=>")
  debug_974:
  rx1252_fail:
    (rx1252_rep, rx1252_pos, $I10, $P10) = rx1252_cur."!mark_fail"(0)
    lt rx1252_pos, -1, rx1252_done
    eq rx1252_pos, -1, rx1252_fail
    jump $I10
  rx1252_done:
    rx1252_cur."!cursor_fail"()
    if_null rx1252_debug, debug_975
    rx1252_cur."!cursor_debug"("FAIL", "infix:sym<!=>")
  debug_975:
    .return (rx1252_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<!=>"  :subid("311_1294592820.342") :method
.annotate 'line', 492
    $P1254 = self."!PREFIX__!subrule"("O", "!=")
    new $P1255, "ResizablePMCArray"
    push $P1255, $P1254
    .return ($P1255)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<<=>"  :subid("312_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 492
    .local string rx1259_tgt
    .local int rx1259_pos
    .local int rx1259_off
    .local int rx1259_eos
    .local int rx1259_rep
    .local pmc rx1259_cur
    .local pmc rx1259_debug
    (rx1259_cur, rx1259_pos, rx1259_tgt, $I10) = self."!cursor_start"()
    getattribute rx1259_debug, rx1259_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1259_cur
    .local pmc match
    .lex "$/", match
    length rx1259_eos, rx1259_tgt
    gt rx1259_pos, rx1259_eos, rx1259_done
    set rx1259_off, 0
    lt rx1259_pos, 2, rx1259_start
    sub rx1259_off, rx1259_pos, 1
    substr rx1259_tgt, rx1259_tgt, rx1259_off
  rx1259_start:
    eq $I10, 1, rx1259_restart
    if_null rx1259_debug, debug_976
    rx1259_cur."!cursor_debug"("START", "infix:sym<<=>")
  debug_976:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1263_done
    goto rxscan1263_scan
  rxscan1263_loop:
    ($P10) = rx1259_cur."from"()
    inc $P10
    set rx1259_pos, $P10
    ge rx1259_pos, rx1259_eos, rxscan1263_done
  rxscan1263_scan:
    set_addr $I10, rxscan1263_loop
    rx1259_cur."!mark_push"(0, rx1259_pos, $I10)
  rxscan1263_done:
.annotate 'line', 566
  # rx subcapture "sym"
    set_addr $I10, rxcap_1264_fail
    rx1259_cur."!mark_push"(0, rx1259_pos, $I10)
  # rx literal  "<="
    add $I11, rx1259_pos, 2
    gt $I11, rx1259_eos, rx1259_fail
    sub $I11, rx1259_pos, rx1259_off
    substr $S10, rx1259_tgt, $I11, 2
    ne $S10, "<=", rx1259_fail
    add rx1259_pos, 2
    set_addr $I10, rxcap_1264_fail
    ($I12, $I11) = rx1259_cur."!mark_peek"($I10)
    rx1259_cur."!cursor_pos"($I11)
    ($P10) = rx1259_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1259_pos, "")
    rx1259_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1264_done
  rxcap_1264_fail:
    goto rx1259_fail
  rxcap_1264_done:
  # rx subrule "O" subtype=capture negate=
    rx1259_cur."!cursor_pos"(rx1259_pos)
    $P10 = rx1259_cur."O"("%relational, :pirop<isle INn>")
    unless $P10, rx1259_fail
    rx1259_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1259_pos = $P10."pos"()
  # rx pass
    rx1259_cur."!cursor_pass"(rx1259_pos, "infix:sym<<=>")
    if_null rx1259_debug, debug_977
    rx1259_cur."!cursor_debug"("PASS", "infix:sym<<=>", " at pos=", rx1259_pos)
  debug_977:
    .return (rx1259_cur)
  rx1259_restart:
.annotate 'line', 492
    if_null rx1259_debug, debug_978
    rx1259_cur."!cursor_debug"("NEXT", "infix:sym<<=>")
  debug_978:
  rx1259_fail:
    (rx1259_rep, rx1259_pos, $I10, $P10) = rx1259_cur."!mark_fail"(0)
    lt rx1259_pos, -1, rx1259_done
    eq rx1259_pos, -1, rx1259_fail
    jump $I10
  rx1259_done:
    rx1259_cur."!cursor_fail"()
    if_null rx1259_debug, debug_979
    rx1259_cur."!cursor_debug"("FAIL", "infix:sym<<=>")
  debug_979:
    .return (rx1259_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<<=>"  :subid("313_1294592820.342") :method
.annotate 'line', 492
    $P1261 = self."!PREFIX__!subrule"("O", "<=")
    new $P1262, "ResizablePMCArray"
    push $P1262, $P1261
    .return ($P1262)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<>=>"  :subid("314_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 492
    .local string rx1266_tgt
    .local int rx1266_pos
    .local int rx1266_off
    .local int rx1266_eos
    .local int rx1266_rep
    .local pmc rx1266_cur
    .local pmc rx1266_debug
    (rx1266_cur, rx1266_pos, rx1266_tgt, $I10) = self."!cursor_start"()
    getattribute rx1266_debug, rx1266_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1266_cur
    .local pmc match
    .lex "$/", match
    length rx1266_eos, rx1266_tgt
    gt rx1266_pos, rx1266_eos, rx1266_done
    set rx1266_off, 0
    lt rx1266_pos, 2, rx1266_start
    sub rx1266_off, rx1266_pos, 1
    substr rx1266_tgt, rx1266_tgt, rx1266_off
  rx1266_start:
    eq $I10, 1, rx1266_restart
    if_null rx1266_debug, debug_980
    rx1266_cur."!cursor_debug"("START", "infix:sym<>=>")
  debug_980:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1270_done
    goto rxscan1270_scan
  rxscan1270_loop:
    ($P10) = rx1266_cur."from"()
    inc $P10
    set rx1266_pos, $P10
    ge rx1266_pos, rx1266_eos, rxscan1270_done
  rxscan1270_scan:
    set_addr $I10, rxscan1270_loop
    rx1266_cur."!mark_push"(0, rx1266_pos, $I10)
  rxscan1270_done:
.annotate 'line', 567
  # rx subcapture "sym"
    set_addr $I10, rxcap_1271_fail
    rx1266_cur."!mark_push"(0, rx1266_pos, $I10)
  # rx literal  ">="
    add $I11, rx1266_pos, 2
    gt $I11, rx1266_eos, rx1266_fail
    sub $I11, rx1266_pos, rx1266_off
    substr $S10, rx1266_tgt, $I11, 2
    ne $S10, ">=", rx1266_fail
    add rx1266_pos, 2
    set_addr $I10, rxcap_1271_fail
    ($I12, $I11) = rx1266_cur."!mark_peek"($I10)
    rx1266_cur."!cursor_pos"($I11)
    ($P10) = rx1266_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1266_pos, "")
    rx1266_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1271_done
  rxcap_1271_fail:
    goto rx1266_fail
  rxcap_1271_done:
  # rx subrule "O" subtype=capture negate=
    rx1266_cur."!cursor_pos"(rx1266_pos)
    $P10 = rx1266_cur."O"("%relational, :pirop<isge INn>")
    unless $P10, rx1266_fail
    rx1266_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1266_pos = $P10."pos"()
  # rx pass
    rx1266_cur."!cursor_pass"(rx1266_pos, "infix:sym<>=>")
    if_null rx1266_debug, debug_981
    rx1266_cur."!cursor_debug"("PASS", "infix:sym<>=>", " at pos=", rx1266_pos)
  debug_981:
    .return (rx1266_cur)
  rx1266_restart:
.annotate 'line', 492
    if_null rx1266_debug, debug_982
    rx1266_cur."!cursor_debug"("NEXT", "infix:sym<>=>")
  debug_982:
  rx1266_fail:
    (rx1266_rep, rx1266_pos, $I10, $P10) = rx1266_cur."!mark_fail"(0)
    lt rx1266_pos, -1, rx1266_done
    eq rx1266_pos, -1, rx1266_fail
    jump $I10
  rx1266_done:
    rx1266_cur."!cursor_fail"()
    if_null rx1266_debug, debug_983
    rx1266_cur."!cursor_debug"("FAIL", "infix:sym<>=>")
  debug_983:
    .return (rx1266_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<>=>"  :subid("315_1294592820.342") :method
.annotate 'line', 492
    $P1268 = self."!PREFIX__!subrule"("O", ">=")
    new $P1269, "ResizablePMCArray"
    push $P1269, $P1268
    .return ($P1269)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<<>"  :subid("316_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 492
    .local string rx1273_tgt
    .local int rx1273_pos
    .local int rx1273_off
    .local int rx1273_eos
    .local int rx1273_rep
    .local pmc rx1273_cur
    .local pmc rx1273_debug
    (rx1273_cur, rx1273_pos, rx1273_tgt, $I10) = self."!cursor_start"()
    getattribute rx1273_debug, rx1273_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1273_cur
    .local pmc match
    .lex "$/", match
    length rx1273_eos, rx1273_tgt
    gt rx1273_pos, rx1273_eos, rx1273_done
    set rx1273_off, 0
    lt rx1273_pos, 2, rx1273_start
    sub rx1273_off, rx1273_pos, 1
    substr rx1273_tgt, rx1273_tgt, rx1273_off
  rx1273_start:
    eq $I10, 1, rx1273_restart
    if_null rx1273_debug, debug_984
    rx1273_cur."!cursor_debug"("START", "infix:sym<<>")
  debug_984:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1277_done
    goto rxscan1277_scan
  rxscan1277_loop:
    ($P10) = rx1273_cur."from"()
    inc $P10
    set rx1273_pos, $P10
    ge rx1273_pos, rx1273_eos, rxscan1277_done
  rxscan1277_scan:
    set_addr $I10, rxscan1277_loop
    rx1273_cur."!mark_push"(0, rx1273_pos, $I10)
  rxscan1277_done:
.annotate 'line', 568
  # rx subcapture "sym"
    set_addr $I10, rxcap_1278_fail
    rx1273_cur."!mark_push"(0, rx1273_pos, $I10)
  # rx literal  "<"
    add $I11, rx1273_pos, 1
    gt $I11, rx1273_eos, rx1273_fail
    sub $I11, rx1273_pos, rx1273_off
    ord $I11, rx1273_tgt, $I11
    ne $I11, 60, rx1273_fail
    add rx1273_pos, 1
    set_addr $I10, rxcap_1278_fail
    ($I12, $I11) = rx1273_cur."!mark_peek"($I10)
    rx1273_cur."!cursor_pos"($I11)
    ($P10) = rx1273_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1273_pos, "")
    rx1273_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1278_done
  rxcap_1278_fail:
    goto rx1273_fail
  rxcap_1278_done:
  # rx subrule "O" subtype=capture negate=
    rx1273_cur."!cursor_pos"(rx1273_pos)
    $P10 = rx1273_cur."O"("%relational, :pirop<islt INn>")
    unless $P10, rx1273_fail
    rx1273_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1273_pos = $P10."pos"()
  # rx pass
    rx1273_cur."!cursor_pass"(rx1273_pos, "infix:sym<<>")
    if_null rx1273_debug, debug_985
    rx1273_cur."!cursor_debug"("PASS", "infix:sym<<>", " at pos=", rx1273_pos)
  debug_985:
    .return (rx1273_cur)
  rx1273_restart:
.annotate 'line', 492
    if_null rx1273_debug, debug_986
    rx1273_cur."!cursor_debug"("NEXT", "infix:sym<<>")
  debug_986:
  rx1273_fail:
    (rx1273_rep, rx1273_pos, $I10, $P10) = rx1273_cur."!mark_fail"(0)
    lt rx1273_pos, -1, rx1273_done
    eq rx1273_pos, -1, rx1273_fail
    jump $I10
  rx1273_done:
    rx1273_cur."!cursor_fail"()
    if_null rx1273_debug, debug_987
    rx1273_cur."!cursor_debug"("FAIL", "infix:sym<<>")
  debug_987:
    .return (rx1273_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<<>"  :subid("317_1294592820.342") :method
.annotate 'line', 492
    $P1275 = self."!PREFIX__!subrule"("O", "<")
    new $P1276, "ResizablePMCArray"
    push $P1276, $P1275
    .return ($P1276)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<>>"  :subid("318_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 492
    .local string rx1280_tgt
    .local int rx1280_pos
    .local int rx1280_off
    .local int rx1280_eos
    .local int rx1280_rep
    .local pmc rx1280_cur
    .local pmc rx1280_debug
    (rx1280_cur, rx1280_pos, rx1280_tgt, $I10) = self."!cursor_start"()
    getattribute rx1280_debug, rx1280_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1280_cur
    .local pmc match
    .lex "$/", match
    length rx1280_eos, rx1280_tgt
    gt rx1280_pos, rx1280_eos, rx1280_done
    set rx1280_off, 0
    lt rx1280_pos, 2, rx1280_start
    sub rx1280_off, rx1280_pos, 1
    substr rx1280_tgt, rx1280_tgt, rx1280_off
  rx1280_start:
    eq $I10, 1, rx1280_restart
    if_null rx1280_debug, debug_988
    rx1280_cur."!cursor_debug"("START", "infix:sym<>>")
  debug_988:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1284_done
    goto rxscan1284_scan
  rxscan1284_loop:
    ($P10) = rx1280_cur."from"()
    inc $P10
    set rx1280_pos, $P10
    ge rx1280_pos, rx1280_eos, rxscan1284_done
  rxscan1284_scan:
    set_addr $I10, rxscan1284_loop
    rx1280_cur."!mark_push"(0, rx1280_pos, $I10)
  rxscan1284_done:
.annotate 'line', 569
  # rx subcapture "sym"
    set_addr $I10, rxcap_1285_fail
    rx1280_cur."!mark_push"(0, rx1280_pos, $I10)
  # rx literal  ">"
    add $I11, rx1280_pos, 1
    gt $I11, rx1280_eos, rx1280_fail
    sub $I11, rx1280_pos, rx1280_off
    ord $I11, rx1280_tgt, $I11
    ne $I11, 62, rx1280_fail
    add rx1280_pos, 1
    set_addr $I10, rxcap_1285_fail
    ($I12, $I11) = rx1280_cur."!mark_peek"($I10)
    rx1280_cur."!cursor_pos"($I11)
    ($P10) = rx1280_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1280_pos, "")
    rx1280_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1285_done
  rxcap_1285_fail:
    goto rx1280_fail
  rxcap_1285_done:
  # rx subrule "O" subtype=capture negate=
    rx1280_cur."!cursor_pos"(rx1280_pos)
    $P10 = rx1280_cur."O"("%relational, :pirop<isgt INn>")
    unless $P10, rx1280_fail
    rx1280_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1280_pos = $P10."pos"()
  # rx pass
    rx1280_cur."!cursor_pass"(rx1280_pos, "infix:sym<>>")
    if_null rx1280_debug, debug_989
    rx1280_cur."!cursor_debug"("PASS", "infix:sym<>>", " at pos=", rx1280_pos)
  debug_989:
    .return (rx1280_cur)
  rx1280_restart:
.annotate 'line', 492
    if_null rx1280_debug, debug_990
    rx1280_cur."!cursor_debug"("NEXT", "infix:sym<>>")
  debug_990:
  rx1280_fail:
    (rx1280_rep, rx1280_pos, $I10, $P10) = rx1280_cur."!mark_fail"(0)
    lt rx1280_pos, -1, rx1280_done
    eq rx1280_pos, -1, rx1280_fail
    jump $I10
  rx1280_done:
    rx1280_cur."!cursor_fail"()
    if_null rx1280_debug, debug_991
    rx1280_cur."!cursor_debug"("FAIL", "infix:sym<>>")
  debug_991:
    .return (rx1280_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<>>"  :subid("319_1294592820.342") :method
.annotate 'line', 492
    $P1282 = self."!PREFIX__!subrule"("O", ">")
    new $P1283, "ResizablePMCArray"
    push $P1283, $P1282
    .return ($P1283)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<eq>"  :subid("320_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 492
    .local string rx1287_tgt
    .local int rx1287_pos
    .local int rx1287_off
    .local int rx1287_eos
    .local int rx1287_rep
    .local pmc rx1287_cur
    .local pmc rx1287_debug
    (rx1287_cur, rx1287_pos, rx1287_tgt, $I10) = self."!cursor_start"()
    getattribute rx1287_debug, rx1287_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1287_cur
    .local pmc match
    .lex "$/", match
    length rx1287_eos, rx1287_tgt
    gt rx1287_pos, rx1287_eos, rx1287_done
    set rx1287_off, 0
    lt rx1287_pos, 2, rx1287_start
    sub rx1287_off, rx1287_pos, 1
    substr rx1287_tgt, rx1287_tgt, rx1287_off
  rx1287_start:
    eq $I10, 1, rx1287_restart
    if_null rx1287_debug, debug_992
    rx1287_cur."!cursor_debug"("START", "infix:sym<eq>")
  debug_992:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1291_done
    goto rxscan1291_scan
  rxscan1291_loop:
    ($P10) = rx1287_cur."from"()
    inc $P10
    set rx1287_pos, $P10
    ge rx1287_pos, rx1287_eos, rxscan1291_done
  rxscan1291_scan:
    set_addr $I10, rxscan1291_loop
    rx1287_cur."!mark_push"(0, rx1287_pos, $I10)
  rxscan1291_done:
.annotate 'line', 570
  # rx subcapture "sym"
    set_addr $I10, rxcap_1292_fail
    rx1287_cur."!mark_push"(0, rx1287_pos, $I10)
  # rx literal  "eq"
    add $I11, rx1287_pos, 2
    gt $I11, rx1287_eos, rx1287_fail
    sub $I11, rx1287_pos, rx1287_off
    substr $S10, rx1287_tgt, $I11, 2
    ne $S10, "eq", rx1287_fail
    add rx1287_pos, 2
    set_addr $I10, rxcap_1292_fail
    ($I12, $I11) = rx1287_cur."!mark_peek"($I10)
    rx1287_cur."!cursor_pos"($I11)
    ($P10) = rx1287_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1287_pos, "")
    rx1287_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1292_done
  rxcap_1292_fail:
    goto rx1287_fail
  rxcap_1292_done:
  # rx subrule "O" subtype=capture negate=
    rx1287_cur."!cursor_pos"(rx1287_pos)
    $P10 = rx1287_cur."O"("%relational, :pirop<iseq ISs>")
    unless $P10, rx1287_fail
    rx1287_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1287_pos = $P10."pos"()
  # rx pass
    rx1287_cur."!cursor_pass"(rx1287_pos, "infix:sym<eq>")
    if_null rx1287_debug, debug_993
    rx1287_cur."!cursor_debug"("PASS", "infix:sym<eq>", " at pos=", rx1287_pos)
  debug_993:
    .return (rx1287_cur)
  rx1287_restart:
.annotate 'line', 492
    if_null rx1287_debug, debug_994
    rx1287_cur."!cursor_debug"("NEXT", "infix:sym<eq>")
  debug_994:
  rx1287_fail:
    (rx1287_rep, rx1287_pos, $I10, $P10) = rx1287_cur."!mark_fail"(0)
    lt rx1287_pos, -1, rx1287_done
    eq rx1287_pos, -1, rx1287_fail
    jump $I10
  rx1287_done:
    rx1287_cur."!cursor_fail"()
    if_null rx1287_debug, debug_995
    rx1287_cur."!cursor_debug"("FAIL", "infix:sym<eq>")
  debug_995:
    .return (rx1287_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<eq>"  :subid("321_1294592820.342") :method
.annotate 'line', 492
    $P1289 = self."!PREFIX__!subrule"("O", "eq")
    new $P1290, "ResizablePMCArray"
    push $P1290, $P1289
    .return ($P1290)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<ne>"  :subid("322_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 492
    .local string rx1294_tgt
    .local int rx1294_pos
    .local int rx1294_off
    .local int rx1294_eos
    .local int rx1294_rep
    .local pmc rx1294_cur
    .local pmc rx1294_debug
    (rx1294_cur, rx1294_pos, rx1294_tgt, $I10) = self."!cursor_start"()
    getattribute rx1294_debug, rx1294_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1294_cur
    .local pmc match
    .lex "$/", match
    length rx1294_eos, rx1294_tgt
    gt rx1294_pos, rx1294_eos, rx1294_done
    set rx1294_off, 0
    lt rx1294_pos, 2, rx1294_start
    sub rx1294_off, rx1294_pos, 1
    substr rx1294_tgt, rx1294_tgt, rx1294_off
  rx1294_start:
    eq $I10, 1, rx1294_restart
    if_null rx1294_debug, debug_996
    rx1294_cur."!cursor_debug"("START", "infix:sym<ne>")
  debug_996:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1298_done
    goto rxscan1298_scan
  rxscan1298_loop:
    ($P10) = rx1294_cur."from"()
    inc $P10
    set rx1294_pos, $P10
    ge rx1294_pos, rx1294_eos, rxscan1298_done
  rxscan1298_scan:
    set_addr $I10, rxscan1298_loop
    rx1294_cur."!mark_push"(0, rx1294_pos, $I10)
  rxscan1298_done:
.annotate 'line', 571
  # rx subcapture "sym"
    set_addr $I10, rxcap_1299_fail
    rx1294_cur."!mark_push"(0, rx1294_pos, $I10)
  # rx literal  "ne"
    add $I11, rx1294_pos, 2
    gt $I11, rx1294_eos, rx1294_fail
    sub $I11, rx1294_pos, rx1294_off
    substr $S10, rx1294_tgt, $I11, 2
    ne $S10, "ne", rx1294_fail
    add rx1294_pos, 2
    set_addr $I10, rxcap_1299_fail
    ($I12, $I11) = rx1294_cur."!mark_peek"($I10)
    rx1294_cur."!cursor_pos"($I11)
    ($P10) = rx1294_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1294_pos, "")
    rx1294_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1299_done
  rxcap_1299_fail:
    goto rx1294_fail
  rxcap_1299_done:
  # rx subrule "O" subtype=capture negate=
    rx1294_cur."!cursor_pos"(rx1294_pos)
    $P10 = rx1294_cur."O"("%relational, :pirop<isne ISs>")
    unless $P10, rx1294_fail
    rx1294_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1294_pos = $P10."pos"()
  # rx pass
    rx1294_cur."!cursor_pass"(rx1294_pos, "infix:sym<ne>")
    if_null rx1294_debug, debug_997
    rx1294_cur."!cursor_debug"("PASS", "infix:sym<ne>", " at pos=", rx1294_pos)
  debug_997:
    .return (rx1294_cur)
  rx1294_restart:
.annotate 'line', 492
    if_null rx1294_debug, debug_998
    rx1294_cur."!cursor_debug"("NEXT", "infix:sym<ne>")
  debug_998:
  rx1294_fail:
    (rx1294_rep, rx1294_pos, $I10, $P10) = rx1294_cur."!mark_fail"(0)
    lt rx1294_pos, -1, rx1294_done
    eq rx1294_pos, -1, rx1294_fail
    jump $I10
  rx1294_done:
    rx1294_cur."!cursor_fail"()
    if_null rx1294_debug, debug_999
    rx1294_cur."!cursor_debug"("FAIL", "infix:sym<ne>")
  debug_999:
    .return (rx1294_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<ne>"  :subid("323_1294592820.342") :method
.annotate 'line', 492
    $P1296 = self."!PREFIX__!subrule"("O", "ne")
    new $P1297, "ResizablePMCArray"
    push $P1297, $P1296
    .return ($P1297)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<le>"  :subid("324_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 492
    .local string rx1301_tgt
    .local int rx1301_pos
    .local int rx1301_off
    .local int rx1301_eos
    .local int rx1301_rep
    .local pmc rx1301_cur
    .local pmc rx1301_debug
    (rx1301_cur, rx1301_pos, rx1301_tgt, $I10) = self."!cursor_start"()
    getattribute rx1301_debug, rx1301_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1301_cur
    .local pmc match
    .lex "$/", match
    length rx1301_eos, rx1301_tgt
    gt rx1301_pos, rx1301_eos, rx1301_done
    set rx1301_off, 0
    lt rx1301_pos, 2, rx1301_start
    sub rx1301_off, rx1301_pos, 1
    substr rx1301_tgt, rx1301_tgt, rx1301_off
  rx1301_start:
    eq $I10, 1, rx1301_restart
    if_null rx1301_debug, debug_1000
    rx1301_cur."!cursor_debug"("START", "infix:sym<le>")
  debug_1000:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1305_done
    goto rxscan1305_scan
  rxscan1305_loop:
    ($P10) = rx1301_cur."from"()
    inc $P10
    set rx1301_pos, $P10
    ge rx1301_pos, rx1301_eos, rxscan1305_done
  rxscan1305_scan:
    set_addr $I10, rxscan1305_loop
    rx1301_cur."!mark_push"(0, rx1301_pos, $I10)
  rxscan1305_done:
.annotate 'line', 572
  # rx subcapture "sym"
    set_addr $I10, rxcap_1306_fail
    rx1301_cur."!mark_push"(0, rx1301_pos, $I10)
  # rx literal  "le"
    add $I11, rx1301_pos, 2
    gt $I11, rx1301_eos, rx1301_fail
    sub $I11, rx1301_pos, rx1301_off
    substr $S10, rx1301_tgt, $I11, 2
    ne $S10, "le", rx1301_fail
    add rx1301_pos, 2
    set_addr $I10, rxcap_1306_fail
    ($I12, $I11) = rx1301_cur."!mark_peek"($I10)
    rx1301_cur."!cursor_pos"($I11)
    ($P10) = rx1301_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1301_pos, "")
    rx1301_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1306_done
  rxcap_1306_fail:
    goto rx1301_fail
  rxcap_1306_done:
  # rx subrule "O" subtype=capture negate=
    rx1301_cur."!cursor_pos"(rx1301_pos)
    $P10 = rx1301_cur."O"("%relational, :pirop<isle ISs>")
    unless $P10, rx1301_fail
    rx1301_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1301_pos = $P10."pos"()
  # rx pass
    rx1301_cur."!cursor_pass"(rx1301_pos, "infix:sym<le>")
    if_null rx1301_debug, debug_1001
    rx1301_cur."!cursor_debug"("PASS", "infix:sym<le>", " at pos=", rx1301_pos)
  debug_1001:
    .return (rx1301_cur)
  rx1301_restart:
.annotate 'line', 492
    if_null rx1301_debug, debug_1002
    rx1301_cur."!cursor_debug"("NEXT", "infix:sym<le>")
  debug_1002:
  rx1301_fail:
    (rx1301_rep, rx1301_pos, $I10, $P10) = rx1301_cur."!mark_fail"(0)
    lt rx1301_pos, -1, rx1301_done
    eq rx1301_pos, -1, rx1301_fail
    jump $I10
  rx1301_done:
    rx1301_cur."!cursor_fail"()
    if_null rx1301_debug, debug_1003
    rx1301_cur."!cursor_debug"("FAIL", "infix:sym<le>")
  debug_1003:
    .return (rx1301_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<le>"  :subid("325_1294592820.342") :method
.annotate 'line', 492
    $P1303 = self."!PREFIX__!subrule"("O", "le")
    new $P1304, "ResizablePMCArray"
    push $P1304, $P1303
    .return ($P1304)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<ge>"  :subid("326_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 492
    .local string rx1308_tgt
    .local int rx1308_pos
    .local int rx1308_off
    .local int rx1308_eos
    .local int rx1308_rep
    .local pmc rx1308_cur
    .local pmc rx1308_debug
    (rx1308_cur, rx1308_pos, rx1308_tgt, $I10) = self."!cursor_start"()
    getattribute rx1308_debug, rx1308_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1308_cur
    .local pmc match
    .lex "$/", match
    length rx1308_eos, rx1308_tgt
    gt rx1308_pos, rx1308_eos, rx1308_done
    set rx1308_off, 0
    lt rx1308_pos, 2, rx1308_start
    sub rx1308_off, rx1308_pos, 1
    substr rx1308_tgt, rx1308_tgt, rx1308_off
  rx1308_start:
    eq $I10, 1, rx1308_restart
    if_null rx1308_debug, debug_1004
    rx1308_cur."!cursor_debug"("START", "infix:sym<ge>")
  debug_1004:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1312_done
    goto rxscan1312_scan
  rxscan1312_loop:
    ($P10) = rx1308_cur."from"()
    inc $P10
    set rx1308_pos, $P10
    ge rx1308_pos, rx1308_eos, rxscan1312_done
  rxscan1312_scan:
    set_addr $I10, rxscan1312_loop
    rx1308_cur."!mark_push"(0, rx1308_pos, $I10)
  rxscan1312_done:
.annotate 'line', 573
  # rx subcapture "sym"
    set_addr $I10, rxcap_1313_fail
    rx1308_cur."!mark_push"(0, rx1308_pos, $I10)
  # rx literal  "ge"
    add $I11, rx1308_pos, 2
    gt $I11, rx1308_eos, rx1308_fail
    sub $I11, rx1308_pos, rx1308_off
    substr $S10, rx1308_tgt, $I11, 2
    ne $S10, "ge", rx1308_fail
    add rx1308_pos, 2
    set_addr $I10, rxcap_1313_fail
    ($I12, $I11) = rx1308_cur."!mark_peek"($I10)
    rx1308_cur."!cursor_pos"($I11)
    ($P10) = rx1308_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1308_pos, "")
    rx1308_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1313_done
  rxcap_1313_fail:
    goto rx1308_fail
  rxcap_1313_done:
  # rx subrule "O" subtype=capture negate=
    rx1308_cur."!cursor_pos"(rx1308_pos)
    $P10 = rx1308_cur."O"("%relational, :pirop<isge ISs>")
    unless $P10, rx1308_fail
    rx1308_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1308_pos = $P10."pos"()
  # rx pass
    rx1308_cur."!cursor_pass"(rx1308_pos, "infix:sym<ge>")
    if_null rx1308_debug, debug_1005
    rx1308_cur."!cursor_debug"("PASS", "infix:sym<ge>", " at pos=", rx1308_pos)
  debug_1005:
    .return (rx1308_cur)
  rx1308_restart:
.annotate 'line', 492
    if_null rx1308_debug, debug_1006
    rx1308_cur."!cursor_debug"("NEXT", "infix:sym<ge>")
  debug_1006:
  rx1308_fail:
    (rx1308_rep, rx1308_pos, $I10, $P10) = rx1308_cur."!mark_fail"(0)
    lt rx1308_pos, -1, rx1308_done
    eq rx1308_pos, -1, rx1308_fail
    jump $I10
  rx1308_done:
    rx1308_cur."!cursor_fail"()
    if_null rx1308_debug, debug_1007
    rx1308_cur."!cursor_debug"("FAIL", "infix:sym<ge>")
  debug_1007:
    .return (rx1308_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<ge>"  :subid("327_1294592820.342") :method
.annotate 'line', 492
    $P1310 = self."!PREFIX__!subrule"("O", "ge")
    new $P1311, "ResizablePMCArray"
    push $P1311, $P1310
    .return ($P1311)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<lt>"  :subid("328_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 492
    .local string rx1315_tgt
    .local int rx1315_pos
    .local int rx1315_off
    .local int rx1315_eos
    .local int rx1315_rep
    .local pmc rx1315_cur
    .local pmc rx1315_debug
    (rx1315_cur, rx1315_pos, rx1315_tgt, $I10) = self."!cursor_start"()
    getattribute rx1315_debug, rx1315_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1315_cur
    .local pmc match
    .lex "$/", match
    length rx1315_eos, rx1315_tgt
    gt rx1315_pos, rx1315_eos, rx1315_done
    set rx1315_off, 0
    lt rx1315_pos, 2, rx1315_start
    sub rx1315_off, rx1315_pos, 1
    substr rx1315_tgt, rx1315_tgt, rx1315_off
  rx1315_start:
    eq $I10, 1, rx1315_restart
    if_null rx1315_debug, debug_1008
    rx1315_cur."!cursor_debug"("START", "infix:sym<lt>")
  debug_1008:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1319_done
    goto rxscan1319_scan
  rxscan1319_loop:
    ($P10) = rx1315_cur."from"()
    inc $P10
    set rx1315_pos, $P10
    ge rx1315_pos, rx1315_eos, rxscan1319_done
  rxscan1319_scan:
    set_addr $I10, rxscan1319_loop
    rx1315_cur."!mark_push"(0, rx1315_pos, $I10)
  rxscan1319_done:
.annotate 'line', 574
  # rx subcapture "sym"
    set_addr $I10, rxcap_1320_fail
    rx1315_cur."!mark_push"(0, rx1315_pos, $I10)
  # rx literal  "lt"
    add $I11, rx1315_pos, 2
    gt $I11, rx1315_eos, rx1315_fail
    sub $I11, rx1315_pos, rx1315_off
    substr $S10, rx1315_tgt, $I11, 2
    ne $S10, "lt", rx1315_fail
    add rx1315_pos, 2
    set_addr $I10, rxcap_1320_fail
    ($I12, $I11) = rx1315_cur."!mark_peek"($I10)
    rx1315_cur."!cursor_pos"($I11)
    ($P10) = rx1315_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1315_pos, "")
    rx1315_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1320_done
  rxcap_1320_fail:
    goto rx1315_fail
  rxcap_1320_done:
  # rx subrule "O" subtype=capture negate=
    rx1315_cur."!cursor_pos"(rx1315_pos)
    $P10 = rx1315_cur."O"("%relational, :pirop<islt ISs>")
    unless $P10, rx1315_fail
    rx1315_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1315_pos = $P10."pos"()
  # rx pass
    rx1315_cur."!cursor_pass"(rx1315_pos, "infix:sym<lt>")
    if_null rx1315_debug, debug_1009
    rx1315_cur."!cursor_debug"("PASS", "infix:sym<lt>", " at pos=", rx1315_pos)
  debug_1009:
    .return (rx1315_cur)
  rx1315_restart:
.annotate 'line', 492
    if_null rx1315_debug, debug_1010
    rx1315_cur."!cursor_debug"("NEXT", "infix:sym<lt>")
  debug_1010:
  rx1315_fail:
    (rx1315_rep, rx1315_pos, $I10, $P10) = rx1315_cur."!mark_fail"(0)
    lt rx1315_pos, -1, rx1315_done
    eq rx1315_pos, -1, rx1315_fail
    jump $I10
  rx1315_done:
    rx1315_cur."!cursor_fail"()
    if_null rx1315_debug, debug_1011
    rx1315_cur."!cursor_debug"("FAIL", "infix:sym<lt>")
  debug_1011:
    .return (rx1315_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<lt>"  :subid("329_1294592820.342") :method
.annotate 'line', 492
    $P1317 = self."!PREFIX__!subrule"("O", "lt")
    new $P1318, "ResizablePMCArray"
    push $P1318, $P1317
    .return ($P1318)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<gt>"  :subid("330_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 492
    .local string rx1322_tgt
    .local int rx1322_pos
    .local int rx1322_off
    .local int rx1322_eos
    .local int rx1322_rep
    .local pmc rx1322_cur
    .local pmc rx1322_debug
    (rx1322_cur, rx1322_pos, rx1322_tgt, $I10) = self."!cursor_start"()
    getattribute rx1322_debug, rx1322_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1322_cur
    .local pmc match
    .lex "$/", match
    length rx1322_eos, rx1322_tgt
    gt rx1322_pos, rx1322_eos, rx1322_done
    set rx1322_off, 0
    lt rx1322_pos, 2, rx1322_start
    sub rx1322_off, rx1322_pos, 1
    substr rx1322_tgt, rx1322_tgt, rx1322_off
  rx1322_start:
    eq $I10, 1, rx1322_restart
    if_null rx1322_debug, debug_1012
    rx1322_cur."!cursor_debug"("START", "infix:sym<gt>")
  debug_1012:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1326_done
    goto rxscan1326_scan
  rxscan1326_loop:
    ($P10) = rx1322_cur."from"()
    inc $P10
    set rx1322_pos, $P10
    ge rx1322_pos, rx1322_eos, rxscan1326_done
  rxscan1326_scan:
    set_addr $I10, rxscan1326_loop
    rx1322_cur."!mark_push"(0, rx1322_pos, $I10)
  rxscan1326_done:
.annotate 'line', 575
  # rx subcapture "sym"
    set_addr $I10, rxcap_1327_fail
    rx1322_cur."!mark_push"(0, rx1322_pos, $I10)
  # rx literal  "gt"
    add $I11, rx1322_pos, 2
    gt $I11, rx1322_eos, rx1322_fail
    sub $I11, rx1322_pos, rx1322_off
    substr $S10, rx1322_tgt, $I11, 2
    ne $S10, "gt", rx1322_fail
    add rx1322_pos, 2
    set_addr $I10, rxcap_1327_fail
    ($I12, $I11) = rx1322_cur."!mark_peek"($I10)
    rx1322_cur."!cursor_pos"($I11)
    ($P10) = rx1322_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1322_pos, "")
    rx1322_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1327_done
  rxcap_1327_fail:
    goto rx1322_fail
  rxcap_1327_done:
  # rx subrule "O" subtype=capture negate=
    rx1322_cur."!cursor_pos"(rx1322_pos)
    $P10 = rx1322_cur."O"("%relational, :pirop<isgt ISs>")
    unless $P10, rx1322_fail
    rx1322_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1322_pos = $P10."pos"()
  # rx pass
    rx1322_cur."!cursor_pass"(rx1322_pos, "infix:sym<gt>")
    if_null rx1322_debug, debug_1013
    rx1322_cur."!cursor_debug"("PASS", "infix:sym<gt>", " at pos=", rx1322_pos)
  debug_1013:
    .return (rx1322_cur)
  rx1322_restart:
.annotate 'line', 492
    if_null rx1322_debug, debug_1014
    rx1322_cur."!cursor_debug"("NEXT", "infix:sym<gt>")
  debug_1014:
  rx1322_fail:
    (rx1322_rep, rx1322_pos, $I10, $P10) = rx1322_cur."!mark_fail"(0)
    lt rx1322_pos, -1, rx1322_done
    eq rx1322_pos, -1, rx1322_fail
    jump $I10
  rx1322_done:
    rx1322_cur."!cursor_fail"()
    if_null rx1322_debug, debug_1015
    rx1322_cur."!cursor_debug"("FAIL", "infix:sym<gt>")
  debug_1015:
    .return (rx1322_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<gt>"  :subid("331_1294592820.342") :method
.annotate 'line', 492
    $P1324 = self."!PREFIX__!subrule"("O", "gt")
    new $P1325, "ResizablePMCArray"
    push $P1325, $P1324
    .return ($P1325)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<=:=>"  :subid("332_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 492
    .local string rx1329_tgt
    .local int rx1329_pos
    .local int rx1329_off
    .local int rx1329_eos
    .local int rx1329_rep
    .local pmc rx1329_cur
    .local pmc rx1329_debug
    (rx1329_cur, rx1329_pos, rx1329_tgt, $I10) = self."!cursor_start"()
    getattribute rx1329_debug, rx1329_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1329_cur
    .local pmc match
    .lex "$/", match
    length rx1329_eos, rx1329_tgt
    gt rx1329_pos, rx1329_eos, rx1329_done
    set rx1329_off, 0
    lt rx1329_pos, 2, rx1329_start
    sub rx1329_off, rx1329_pos, 1
    substr rx1329_tgt, rx1329_tgt, rx1329_off
  rx1329_start:
    eq $I10, 1, rx1329_restart
    if_null rx1329_debug, debug_1016
    rx1329_cur."!cursor_debug"("START", "infix:sym<=:=>")
  debug_1016:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1333_done
    goto rxscan1333_scan
  rxscan1333_loop:
    ($P10) = rx1329_cur."from"()
    inc $P10
    set rx1329_pos, $P10
    ge rx1329_pos, rx1329_eos, rxscan1333_done
  rxscan1333_scan:
    set_addr $I10, rxscan1333_loop
    rx1329_cur."!mark_push"(0, rx1329_pos, $I10)
  rxscan1333_done:
.annotate 'line', 576
  # rx subcapture "sym"
    set_addr $I10, rxcap_1334_fail
    rx1329_cur."!mark_push"(0, rx1329_pos, $I10)
  # rx literal  "=:="
    add $I11, rx1329_pos, 3
    gt $I11, rx1329_eos, rx1329_fail
    sub $I11, rx1329_pos, rx1329_off
    substr $S10, rx1329_tgt, $I11, 3
    ne $S10, "=:=", rx1329_fail
    add rx1329_pos, 3
    set_addr $I10, rxcap_1334_fail
    ($I12, $I11) = rx1329_cur."!mark_peek"($I10)
    rx1329_cur."!cursor_pos"($I11)
    ($P10) = rx1329_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1329_pos, "")
    rx1329_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1334_done
  rxcap_1334_fail:
    goto rx1329_fail
  rxcap_1334_done:
  # rx subrule "O" subtype=capture negate=
    rx1329_cur."!cursor_pos"(rx1329_pos)
    $P10 = rx1329_cur."O"("%relational, :pirop<issame>")
    unless $P10, rx1329_fail
    rx1329_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1329_pos = $P10."pos"()
  # rx pass
    rx1329_cur."!cursor_pass"(rx1329_pos, "infix:sym<=:=>")
    if_null rx1329_debug, debug_1017
    rx1329_cur."!cursor_debug"("PASS", "infix:sym<=:=>", " at pos=", rx1329_pos)
  debug_1017:
    .return (rx1329_cur)
  rx1329_restart:
.annotate 'line', 492
    if_null rx1329_debug, debug_1018
    rx1329_cur."!cursor_debug"("NEXT", "infix:sym<=:=>")
  debug_1018:
  rx1329_fail:
    (rx1329_rep, rx1329_pos, $I10, $P10) = rx1329_cur."!mark_fail"(0)
    lt rx1329_pos, -1, rx1329_done
    eq rx1329_pos, -1, rx1329_fail
    jump $I10
  rx1329_done:
    rx1329_cur."!cursor_fail"()
    if_null rx1329_debug, debug_1019
    rx1329_cur."!cursor_debug"("FAIL", "infix:sym<=:=>")
  debug_1019:
    .return (rx1329_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<=:=>"  :subid("333_1294592820.342") :method
.annotate 'line', 492
    $P1331 = self."!PREFIX__!subrule"("O", "=:=")
    new $P1332, "ResizablePMCArray"
    push $P1332, $P1331
    .return ($P1332)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<~~>"  :subid("334_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 492
    .local string rx1336_tgt
    .local int rx1336_pos
    .local int rx1336_off
    .local int rx1336_eos
    .local int rx1336_rep
    .local pmc rx1336_cur
    .local pmc rx1336_debug
    (rx1336_cur, rx1336_pos, rx1336_tgt, $I10) = self."!cursor_start"()
    getattribute rx1336_debug, rx1336_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1336_cur
    .local pmc match
    .lex "$/", match
    length rx1336_eos, rx1336_tgt
    gt rx1336_pos, rx1336_eos, rx1336_done
    set rx1336_off, 0
    lt rx1336_pos, 2, rx1336_start
    sub rx1336_off, rx1336_pos, 1
    substr rx1336_tgt, rx1336_tgt, rx1336_off
  rx1336_start:
    eq $I10, 1, rx1336_restart
    if_null rx1336_debug, debug_1020
    rx1336_cur."!cursor_debug"("START", "infix:sym<~~>")
  debug_1020:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1340_done
    goto rxscan1340_scan
  rxscan1340_loop:
    ($P10) = rx1336_cur."from"()
    inc $P10
    set rx1336_pos, $P10
    ge rx1336_pos, rx1336_eos, rxscan1340_done
  rxscan1340_scan:
    set_addr $I10, rxscan1340_loop
    rx1336_cur."!mark_push"(0, rx1336_pos, $I10)
  rxscan1340_done:
.annotate 'line', 577
  # rx subcapture "sym"
    set_addr $I10, rxcap_1341_fail
    rx1336_cur."!mark_push"(0, rx1336_pos, $I10)
  # rx literal  "~~"
    add $I11, rx1336_pos, 2
    gt $I11, rx1336_eos, rx1336_fail
    sub $I11, rx1336_pos, rx1336_off
    substr $S10, rx1336_tgt, $I11, 2
    ne $S10, "~~", rx1336_fail
    add rx1336_pos, 2
    set_addr $I10, rxcap_1341_fail
    ($I12, $I11) = rx1336_cur."!mark_peek"($I10)
    rx1336_cur."!cursor_pos"($I11)
    ($P10) = rx1336_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1336_pos, "")
    rx1336_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1341_done
  rxcap_1341_fail:
    goto rx1336_fail
  rxcap_1341_done:
  # rx subrule "O" subtype=capture negate=
    rx1336_cur."!cursor_pos"(rx1336_pos)
    $P10 = rx1336_cur."O"("%relational, :reducecheck<smartmatch>")
    unless $P10, rx1336_fail
    rx1336_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1336_pos = $P10."pos"()
  # rx pass
    rx1336_cur."!cursor_pass"(rx1336_pos, "infix:sym<~~>")
    if_null rx1336_debug, debug_1021
    rx1336_cur."!cursor_debug"("PASS", "infix:sym<~~>", " at pos=", rx1336_pos)
  debug_1021:
    .return (rx1336_cur)
  rx1336_restart:
.annotate 'line', 492
    if_null rx1336_debug, debug_1022
    rx1336_cur."!cursor_debug"("NEXT", "infix:sym<~~>")
  debug_1022:
  rx1336_fail:
    (rx1336_rep, rx1336_pos, $I10, $P10) = rx1336_cur."!mark_fail"(0)
    lt rx1336_pos, -1, rx1336_done
    eq rx1336_pos, -1, rx1336_fail
    jump $I10
  rx1336_done:
    rx1336_cur."!cursor_fail"()
    if_null rx1336_debug, debug_1023
    rx1336_cur."!cursor_debug"("FAIL", "infix:sym<~~>")
  debug_1023:
    .return (rx1336_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<~~>"  :subid("335_1294592820.342") :method
.annotate 'line', 492
    $P1338 = self."!PREFIX__!subrule"("O", "~~")
    new $P1339, "ResizablePMCArray"
    push $P1339, $P1338
    .return ($P1339)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<&&>"  :subid("336_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 492
    .local string rx1343_tgt
    .local int rx1343_pos
    .local int rx1343_off
    .local int rx1343_eos
    .local int rx1343_rep
    .local pmc rx1343_cur
    .local pmc rx1343_debug
    (rx1343_cur, rx1343_pos, rx1343_tgt, $I10) = self."!cursor_start"()
    getattribute rx1343_debug, rx1343_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1343_cur
    .local pmc match
    .lex "$/", match
    length rx1343_eos, rx1343_tgt
    gt rx1343_pos, rx1343_eos, rx1343_done
    set rx1343_off, 0
    lt rx1343_pos, 2, rx1343_start
    sub rx1343_off, rx1343_pos, 1
    substr rx1343_tgt, rx1343_tgt, rx1343_off
  rx1343_start:
    eq $I10, 1, rx1343_restart
    if_null rx1343_debug, debug_1024
    rx1343_cur."!cursor_debug"("START", "infix:sym<&&>")
  debug_1024:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1347_done
    goto rxscan1347_scan
  rxscan1347_loop:
    ($P10) = rx1343_cur."from"()
    inc $P10
    set rx1343_pos, $P10
    ge rx1343_pos, rx1343_eos, rxscan1347_done
  rxscan1347_scan:
    set_addr $I10, rxscan1347_loop
    rx1343_cur."!mark_push"(0, rx1343_pos, $I10)
  rxscan1347_done:
.annotate 'line', 579
  # rx subcapture "sym"
    set_addr $I10, rxcap_1348_fail
    rx1343_cur."!mark_push"(0, rx1343_pos, $I10)
  # rx literal  "&&"
    add $I11, rx1343_pos, 2
    gt $I11, rx1343_eos, rx1343_fail
    sub $I11, rx1343_pos, rx1343_off
    substr $S10, rx1343_tgt, $I11, 2
    ne $S10, "&&", rx1343_fail
    add rx1343_pos, 2
    set_addr $I10, rxcap_1348_fail
    ($I12, $I11) = rx1343_cur."!mark_peek"($I10)
    rx1343_cur."!cursor_pos"($I11)
    ($P10) = rx1343_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1343_pos, "")
    rx1343_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1348_done
  rxcap_1348_fail:
    goto rx1343_fail
  rxcap_1348_done:
  # rx subrule "O" subtype=capture negate=
    rx1343_cur."!cursor_pos"(rx1343_pos)
    $P10 = rx1343_cur."O"("%tight_and, :pasttype<if>")
    unless $P10, rx1343_fail
    rx1343_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1343_pos = $P10."pos"()
  # rx pass
    rx1343_cur."!cursor_pass"(rx1343_pos, "infix:sym<&&>")
    if_null rx1343_debug, debug_1025
    rx1343_cur."!cursor_debug"("PASS", "infix:sym<&&>", " at pos=", rx1343_pos)
  debug_1025:
    .return (rx1343_cur)
  rx1343_restart:
.annotate 'line', 492
    if_null rx1343_debug, debug_1026
    rx1343_cur."!cursor_debug"("NEXT", "infix:sym<&&>")
  debug_1026:
  rx1343_fail:
    (rx1343_rep, rx1343_pos, $I10, $P10) = rx1343_cur."!mark_fail"(0)
    lt rx1343_pos, -1, rx1343_done
    eq rx1343_pos, -1, rx1343_fail
    jump $I10
  rx1343_done:
    rx1343_cur."!cursor_fail"()
    if_null rx1343_debug, debug_1027
    rx1343_cur."!cursor_debug"("FAIL", "infix:sym<&&>")
  debug_1027:
    .return (rx1343_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<&&>"  :subid("337_1294592820.342") :method
.annotate 'line', 492
    $P1345 = self."!PREFIX__!subrule"("O", "&&")
    new $P1346, "ResizablePMCArray"
    push $P1346, $P1345
    .return ($P1346)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<||>"  :subid("338_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 492
    .local string rx1350_tgt
    .local int rx1350_pos
    .local int rx1350_off
    .local int rx1350_eos
    .local int rx1350_rep
    .local pmc rx1350_cur
    .local pmc rx1350_debug
    (rx1350_cur, rx1350_pos, rx1350_tgt, $I10) = self."!cursor_start"()
    getattribute rx1350_debug, rx1350_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1350_cur
    .local pmc match
    .lex "$/", match
    length rx1350_eos, rx1350_tgt
    gt rx1350_pos, rx1350_eos, rx1350_done
    set rx1350_off, 0
    lt rx1350_pos, 2, rx1350_start
    sub rx1350_off, rx1350_pos, 1
    substr rx1350_tgt, rx1350_tgt, rx1350_off
  rx1350_start:
    eq $I10, 1, rx1350_restart
    if_null rx1350_debug, debug_1028
    rx1350_cur."!cursor_debug"("START", "infix:sym<||>")
  debug_1028:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1354_done
    goto rxscan1354_scan
  rxscan1354_loop:
    ($P10) = rx1350_cur."from"()
    inc $P10
    set rx1350_pos, $P10
    ge rx1350_pos, rx1350_eos, rxscan1354_done
  rxscan1354_scan:
    set_addr $I10, rxscan1354_loop
    rx1350_cur."!mark_push"(0, rx1350_pos, $I10)
  rxscan1354_done:
.annotate 'line', 581
  # rx subcapture "sym"
    set_addr $I10, rxcap_1355_fail
    rx1350_cur."!mark_push"(0, rx1350_pos, $I10)
  # rx literal  "||"
    add $I11, rx1350_pos, 2
    gt $I11, rx1350_eos, rx1350_fail
    sub $I11, rx1350_pos, rx1350_off
    substr $S10, rx1350_tgt, $I11, 2
    ne $S10, "||", rx1350_fail
    add rx1350_pos, 2
    set_addr $I10, rxcap_1355_fail
    ($I12, $I11) = rx1350_cur."!mark_peek"($I10)
    rx1350_cur."!cursor_pos"($I11)
    ($P10) = rx1350_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1350_pos, "")
    rx1350_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1355_done
  rxcap_1355_fail:
    goto rx1350_fail
  rxcap_1355_done:
  # rx subrule "O" subtype=capture negate=
    rx1350_cur."!cursor_pos"(rx1350_pos)
    $P10 = rx1350_cur."O"("%tight_or, :pasttype<unless>")
    unless $P10, rx1350_fail
    rx1350_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1350_pos = $P10."pos"()
  # rx pass
    rx1350_cur."!cursor_pass"(rx1350_pos, "infix:sym<||>")
    if_null rx1350_debug, debug_1029
    rx1350_cur."!cursor_debug"("PASS", "infix:sym<||>", " at pos=", rx1350_pos)
  debug_1029:
    .return (rx1350_cur)
  rx1350_restart:
.annotate 'line', 492
    if_null rx1350_debug, debug_1030
    rx1350_cur."!cursor_debug"("NEXT", "infix:sym<||>")
  debug_1030:
  rx1350_fail:
    (rx1350_rep, rx1350_pos, $I10, $P10) = rx1350_cur."!mark_fail"(0)
    lt rx1350_pos, -1, rx1350_done
    eq rx1350_pos, -1, rx1350_fail
    jump $I10
  rx1350_done:
    rx1350_cur."!cursor_fail"()
    if_null rx1350_debug, debug_1031
    rx1350_cur."!cursor_debug"("FAIL", "infix:sym<||>")
  debug_1031:
    .return (rx1350_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<||>"  :subid("339_1294592820.342") :method
.annotate 'line', 492
    $P1352 = self."!PREFIX__!subrule"("O", "||")
    new $P1353, "ResizablePMCArray"
    push $P1353, $P1352
    .return ($P1353)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<//>"  :subid("340_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 492
    .local string rx1357_tgt
    .local int rx1357_pos
    .local int rx1357_off
    .local int rx1357_eos
    .local int rx1357_rep
    .local pmc rx1357_cur
    .local pmc rx1357_debug
    (rx1357_cur, rx1357_pos, rx1357_tgt, $I10) = self."!cursor_start"()
    getattribute rx1357_debug, rx1357_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1357_cur
    .local pmc match
    .lex "$/", match
    length rx1357_eos, rx1357_tgt
    gt rx1357_pos, rx1357_eos, rx1357_done
    set rx1357_off, 0
    lt rx1357_pos, 2, rx1357_start
    sub rx1357_off, rx1357_pos, 1
    substr rx1357_tgt, rx1357_tgt, rx1357_off
  rx1357_start:
    eq $I10, 1, rx1357_restart
    if_null rx1357_debug, debug_1032
    rx1357_cur."!cursor_debug"("START", "infix:sym<//>")
  debug_1032:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1361_done
    goto rxscan1361_scan
  rxscan1361_loop:
    ($P10) = rx1357_cur."from"()
    inc $P10
    set rx1357_pos, $P10
    ge rx1357_pos, rx1357_eos, rxscan1361_done
  rxscan1361_scan:
    set_addr $I10, rxscan1361_loop
    rx1357_cur."!mark_push"(0, rx1357_pos, $I10)
  rxscan1361_done:
.annotate 'line', 582
  # rx subcapture "sym"
    set_addr $I10, rxcap_1362_fail
    rx1357_cur."!mark_push"(0, rx1357_pos, $I10)
  # rx literal  "//"
    add $I11, rx1357_pos, 2
    gt $I11, rx1357_eos, rx1357_fail
    sub $I11, rx1357_pos, rx1357_off
    substr $S10, rx1357_tgt, $I11, 2
    ne $S10, "//", rx1357_fail
    add rx1357_pos, 2
    set_addr $I10, rxcap_1362_fail
    ($I12, $I11) = rx1357_cur."!mark_peek"($I10)
    rx1357_cur."!cursor_pos"($I11)
    ($P10) = rx1357_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1357_pos, "")
    rx1357_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1362_done
  rxcap_1362_fail:
    goto rx1357_fail
  rxcap_1362_done:
  # rx subrule "O" subtype=capture negate=
    rx1357_cur."!cursor_pos"(rx1357_pos)
    $P10 = rx1357_cur."O"("%tight_or, :pasttype<def_or>")
    unless $P10, rx1357_fail
    rx1357_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1357_pos = $P10."pos"()
  # rx pass
    rx1357_cur."!cursor_pass"(rx1357_pos, "infix:sym<//>")
    if_null rx1357_debug, debug_1033
    rx1357_cur."!cursor_debug"("PASS", "infix:sym<//>", " at pos=", rx1357_pos)
  debug_1033:
    .return (rx1357_cur)
  rx1357_restart:
.annotate 'line', 492
    if_null rx1357_debug, debug_1034
    rx1357_cur."!cursor_debug"("NEXT", "infix:sym<//>")
  debug_1034:
  rx1357_fail:
    (rx1357_rep, rx1357_pos, $I10, $P10) = rx1357_cur."!mark_fail"(0)
    lt rx1357_pos, -1, rx1357_done
    eq rx1357_pos, -1, rx1357_fail
    jump $I10
  rx1357_done:
    rx1357_cur."!cursor_fail"()
    if_null rx1357_debug, debug_1035
    rx1357_cur."!cursor_debug"("FAIL", "infix:sym<//>")
  debug_1035:
    .return (rx1357_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<//>"  :subid("341_1294592820.342") :method
.annotate 'line', 492
    $P1359 = self."!PREFIX__!subrule"("O", "//")
    new $P1360, "ResizablePMCArray"
    push $P1360, $P1359
    .return ($P1360)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<?? !!>"  :subid("342_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 492
    .local string rx1364_tgt
    .local int rx1364_pos
    .local int rx1364_off
    .local int rx1364_eos
    .local int rx1364_rep
    .local pmc rx1364_cur
    .local pmc rx1364_debug
    (rx1364_cur, rx1364_pos, rx1364_tgt, $I10) = self."!cursor_start"()
    getattribute rx1364_debug, rx1364_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1364_cur
    .local pmc match
    .lex "$/", match
    length rx1364_eos, rx1364_tgt
    gt rx1364_pos, rx1364_eos, rx1364_done
    set rx1364_off, 0
    lt rx1364_pos, 2, rx1364_start
    sub rx1364_off, rx1364_pos, 1
    substr rx1364_tgt, rx1364_tgt, rx1364_off
  rx1364_start:
    eq $I10, 1, rx1364_restart
    if_null rx1364_debug, debug_1036
    rx1364_cur."!cursor_debug"("START", "infix:sym<?? !!>")
  debug_1036:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1368_done
    goto rxscan1368_scan
  rxscan1368_loop:
    ($P10) = rx1364_cur."from"()
    inc $P10
    set rx1364_pos, $P10
    ge rx1364_pos, rx1364_eos, rxscan1368_done
  rxscan1368_scan:
    set_addr $I10, rxscan1368_loop
    rx1364_cur."!mark_push"(0, rx1364_pos, $I10)
  rxscan1368_done:
.annotate 'line', 585
  # rx literal  "??"
    add $I11, rx1364_pos, 2
    gt $I11, rx1364_eos, rx1364_fail
    sub $I11, rx1364_pos, rx1364_off
    substr $S10, rx1364_tgt, $I11, 2
    ne $S10, "??", rx1364_fail
    add rx1364_pos, 2
.annotate 'line', 586
  # rx subrule "ws" subtype=method negate=
    rx1364_cur."!cursor_pos"(rx1364_pos)
    $P10 = rx1364_cur."ws"()
    unless $P10, rx1364_fail
    rx1364_pos = $P10."pos"()
.annotate 'line', 587
  # rx subrule "EXPR" subtype=capture negate=
    rx1364_cur."!cursor_pos"(rx1364_pos)
    $P10 = rx1364_cur."EXPR"("i=")
    unless $P10, rx1364_fail
    rx1364_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx1364_pos = $P10."pos"()
.annotate 'line', 588
  # rx literal  "!!"
    add $I11, rx1364_pos, 2
    gt $I11, rx1364_eos, rx1364_fail
    sub $I11, rx1364_pos, rx1364_off
    substr $S10, rx1364_tgt, $I11, 2
    ne $S10, "!!", rx1364_fail
    add rx1364_pos, 2
.annotate 'line', 589
  # rx subrule "O" subtype=capture negate=
    rx1364_cur."!cursor_pos"(rx1364_pos)
    $P10 = rx1364_cur."O"("%conditional, :reducecheck<ternary>, :pasttype<if>")
    unless $P10, rx1364_fail
    rx1364_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1364_pos = $P10."pos"()
.annotate 'line', 584
  # rx pass
    rx1364_cur."!cursor_pass"(rx1364_pos, "infix:sym<?? !!>")
    if_null rx1364_debug, debug_1037
    rx1364_cur."!cursor_debug"("PASS", "infix:sym<?? !!>", " at pos=", rx1364_pos)
  debug_1037:
    .return (rx1364_cur)
  rx1364_restart:
.annotate 'line', 492
    if_null rx1364_debug, debug_1038
    rx1364_cur."!cursor_debug"("NEXT", "infix:sym<?? !!>")
  debug_1038:
  rx1364_fail:
    (rx1364_rep, rx1364_pos, $I10, $P10) = rx1364_cur."!mark_fail"(0)
    lt rx1364_pos, -1, rx1364_done
    eq rx1364_pos, -1, rx1364_fail
    jump $I10
  rx1364_done:
    rx1364_cur."!cursor_fail"()
    if_null rx1364_debug, debug_1039
    rx1364_cur."!cursor_debug"("FAIL", "infix:sym<?? !!>")
  debug_1039:
    .return (rx1364_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<?? !!>"  :subid("343_1294592820.342") :method
.annotate 'line', 492
    $P1366 = self."!PREFIX__!subrule"("ws", "??")
    new $P1367, "ResizablePMCArray"
    push $P1367, $P1366
    .return ($P1367)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<=>"  :subid("344_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 492
    .local string rx1370_tgt
    .local int rx1370_pos
    .local int rx1370_off
    .local int rx1370_eos
    .local int rx1370_rep
    .local pmc rx1370_cur
    .local pmc rx1370_debug
    (rx1370_cur, rx1370_pos, rx1370_tgt, $I10) = self."!cursor_start"()
    getattribute rx1370_debug, rx1370_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1370_cur
    .local pmc match
    .lex "$/", match
    length rx1370_eos, rx1370_tgt
    gt rx1370_pos, rx1370_eos, rx1370_done
    set rx1370_off, 0
    lt rx1370_pos, 2, rx1370_start
    sub rx1370_off, rx1370_pos, 1
    substr rx1370_tgt, rx1370_tgt, rx1370_off
  rx1370_start:
    eq $I10, 1, rx1370_restart
    if_null rx1370_debug, debug_1040
    rx1370_cur."!cursor_debug"("START", "infix:sym<=>")
  debug_1040:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1374_done
    goto rxscan1374_scan
  rxscan1374_loop:
    ($P10) = rx1370_cur."from"()
    inc $P10
    set rx1370_pos, $P10
    ge rx1370_pos, rx1370_eos, rxscan1374_done
  rxscan1374_scan:
    set_addr $I10, rxscan1374_loop
    rx1370_cur."!mark_push"(0, rx1370_pos, $I10)
  rxscan1374_done:
.annotate 'line', 593
  # rx subcapture "sym"
    set_addr $I10, rxcap_1375_fail
    rx1370_cur."!mark_push"(0, rx1370_pos, $I10)
  # rx literal  "="
    add $I11, rx1370_pos, 1
    gt $I11, rx1370_eos, rx1370_fail
    sub $I11, rx1370_pos, rx1370_off
    ord $I11, rx1370_tgt, $I11
    ne $I11, 61, rx1370_fail
    add rx1370_pos, 1
    set_addr $I10, rxcap_1375_fail
    ($I12, $I11) = rx1370_cur."!mark_peek"($I10)
    rx1370_cur."!cursor_pos"($I11)
    ($P10) = rx1370_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1370_pos, "")
    rx1370_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1375_done
  rxcap_1375_fail:
    goto rx1370_fail
  rxcap_1375_done:
  # rx subrule "panic" subtype=method negate=
    rx1370_cur."!cursor_pos"(rx1370_pos)
    $P10 = rx1370_cur."panic"("Assignment (\"=\") not supported in NQP, use \":=\" instead")
    unless $P10, rx1370_fail
    rx1370_pos = $P10."pos"()
.annotate 'line', 592
  # rx pass
    rx1370_cur."!cursor_pass"(rx1370_pos, "infix:sym<=>")
    if_null rx1370_debug, debug_1041
    rx1370_cur."!cursor_debug"("PASS", "infix:sym<=>", " at pos=", rx1370_pos)
  debug_1041:
    .return (rx1370_cur)
  rx1370_restart:
.annotate 'line', 492
    if_null rx1370_debug, debug_1042
    rx1370_cur."!cursor_debug"("NEXT", "infix:sym<=>")
  debug_1042:
  rx1370_fail:
    (rx1370_rep, rx1370_pos, $I10, $P10) = rx1370_cur."!mark_fail"(0)
    lt rx1370_pos, -1, rx1370_done
    eq rx1370_pos, -1, rx1370_fail
    jump $I10
  rx1370_done:
    rx1370_cur."!cursor_fail"()
    if_null rx1370_debug, debug_1043
    rx1370_cur."!cursor_debug"("FAIL", "infix:sym<=>")
  debug_1043:
    .return (rx1370_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<=>"  :subid("345_1294592820.342") :method
.annotate 'line', 492
    $P1372 = self."!PREFIX__!subrule"("panic", "=")
    new $P1373, "ResizablePMCArray"
    push $P1373, $P1372
    .return ($P1373)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<:=>"  :subid("346_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 492
    .local string rx1377_tgt
    .local int rx1377_pos
    .local int rx1377_off
    .local int rx1377_eos
    .local int rx1377_rep
    .local pmc rx1377_cur
    .local pmc rx1377_debug
    (rx1377_cur, rx1377_pos, rx1377_tgt, $I10) = self."!cursor_start"()
    getattribute rx1377_debug, rx1377_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1377_cur
    .local pmc match
    .lex "$/", match
    length rx1377_eos, rx1377_tgt
    gt rx1377_pos, rx1377_eos, rx1377_done
    set rx1377_off, 0
    lt rx1377_pos, 2, rx1377_start
    sub rx1377_off, rx1377_pos, 1
    substr rx1377_tgt, rx1377_tgt, rx1377_off
  rx1377_start:
    eq $I10, 1, rx1377_restart
    if_null rx1377_debug, debug_1044
    rx1377_cur."!cursor_debug"("START", "infix:sym<:=>")
  debug_1044:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1381_done
    goto rxscan1381_scan
  rxscan1381_loop:
    ($P10) = rx1377_cur."from"()
    inc $P10
    set rx1377_pos, $P10
    ge rx1377_pos, rx1377_eos, rxscan1381_done
  rxscan1381_scan:
    set_addr $I10, rxscan1381_loop
    rx1377_cur."!mark_push"(0, rx1377_pos, $I10)
  rxscan1381_done:
.annotate 'line', 595
  # rx subcapture "sym"
    set_addr $I10, rxcap_1382_fail
    rx1377_cur."!mark_push"(0, rx1377_pos, $I10)
  # rx literal  ":="
    add $I11, rx1377_pos, 2
    gt $I11, rx1377_eos, rx1377_fail
    sub $I11, rx1377_pos, rx1377_off
    substr $S10, rx1377_tgt, $I11, 2
    ne $S10, ":=", rx1377_fail
    add rx1377_pos, 2
    set_addr $I10, rxcap_1382_fail
    ($I12, $I11) = rx1377_cur."!mark_peek"($I10)
    rx1377_cur."!cursor_pos"($I11)
    ($P10) = rx1377_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1377_pos, "")
    rx1377_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1382_done
  rxcap_1382_fail:
    goto rx1377_fail
  rxcap_1382_done:
  # rx subrule "O" subtype=capture negate=
    rx1377_cur."!cursor_pos"(rx1377_pos)
    $P10 = rx1377_cur."O"("%assignment, :pasttype<bind>")
    unless $P10, rx1377_fail
    rx1377_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1377_pos = $P10."pos"()
  # rx pass
    rx1377_cur."!cursor_pass"(rx1377_pos, "infix:sym<:=>")
    if_null rx1377_debug, debug_1045
    rx1377_cur."!cursor_debug"("PASS", "infix:sym<:=>", " at pos=", rx1377_pos)
  debug_1045:
    .return (rx1377_cur)
  rx1377_restart:
.annotate 'line', 492
    if_null rx1377_debug, debug_1046
    rx1377_cur."!cursor_debug"("NEXT", "infix:sym<:=>")
  debug_1046:
  rx1377_fail:
    (rx1377_rep, rx1377_pos, $I10, $P10) = rx1377_cur."!mark_fail"(0)
    lt rx1377_pos, -1, rx1377_done
    eq rx1377_pos, -1, rx1377_fail
    jump $I10
  rx1377_done:
    rx1377_cur."!cursor_fail"()
    if_null rx1377_debug, debug_1047
    rx1377_cur."!cursor_debug"("FAIL", "infix:sym<:=>")
  debug_1047:
    .return (rx1377_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<:=>"  :subid("347_1294592820.342") :method
.annotate 'line', 492
    $P1379 = self."!PREFIX__!subrule"("O", ":=")
    new $P1380, "ResizablePMCArray"
    push $P1380, $P1379
    .return ($P1380)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<::=>"  :subid("348_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 492
    .local string rx1384_tgt
    .local int rx1384_pos
    .local int rx1384_off
    .local int rx1384_eos
    .local int rx1384_rep
    .local pmc rx1384_cur
    .local pmc rx1384_debug
    (rx1384_cur, rx1384_pos, rx1384_tgt, $I10) = self."!cursor_start"()
    getattribute rx1384_debug, rx1384_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1384_cur
    .local pmc match
    .lex "$/", match
    length rx1384_eos, rx1384_tgt
    gt rx1384_pos, rx1384_eos, rx1384_done
    set rx1384_off, 0
    lt rx1384_pos, 2, rx1384_start
    sub rx1384_off, rx1384_pos, 1
    substr rx1384_tgt, rx1384_tgt, rx1384_off
  rx1384_start:
    eq $I10, 1, rx1384_restart
    if_null rx1384_debug, debug_1048
    rx1384_cur."!cursor_debug"("START", "infix:sym<::=>")
  debug_1048:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1388_done
    goto rxscan1388_scan
  rxscan1388_loop:
    ($P10) = rx1384_cur."from"()
    inc $P10
    set rx1384_pos, $P10
    ge rx1384_pos, rx1384_eos, rxscan1388_done
  rxscan1388_scan:
    set_addr $I10, rxscan1388_loop
    rx1384_cur."!mark_push"(0, rx1384_pos, $I10)
  rxscan1388_done:
.annotate 'line', 596
  # rx subcapture "sym"
    set_addr $I10, rxcap_1389_fail
    rx1384_cur."!mark_push"(0, rx1384_pos, $I10)
  # rx literal  "::="
    add $I11, rx1384_pos, 3
    gt $I11, rx1384_eos, rx1384_fail
    sub $I11, rx1384_pos, rx1384_off
    substr $S10, rx1384_tgt, $I11, 3
    ne $S10, "::=", rx1384_fail
    add rx1384_pos, 3
    set_addr $I10, rxcap_1389_fail
    ($I12, $I11) = rx1384_cur."!mark_peek"($I10)
    rx1384_cur."!cursor_pos"($I11)
    ($P10) = rx1384_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1384_pos, "")
    rx1384_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1389_done
  rxcap_1389_fail:
    goto rx1384_fail
  rxcap_1389_done:
  # rx subrule "O" subtype=capture negate=
    rx1384_cur."!cursor_pos"(rx1384_pos)
    $P10 = rx1384_cur."O"("%assignment, :pasttype<bind>")
    unless $P10, rx1384_fail
    rx1384_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1384_pos = $P10."pos"()
  # rx pass
    rx1384_cur."!cursor_pass"(rx1384_pos, "infix:sym<::=>")
    if_null rx1384_debug, debug_1049
    rx1384_cur."!cursor_debug"("PASS", "infix:sym<::=>", " at pos=", rx1384_pos)
  debug_1049:
    .return (rx1384_cur)
  rx1384_restart:
.annotate 'line', 492
    if_null rx1384_debug, debug_1050
    rx1384_cur."!cursor_debug"("NEXT", "infix:sym<::=>")
  debug_1050:
  rx1384_fail:
    (rx1384_rep, rx1384_pos, $I10, $P10) = rx1384_cur."!mark_fail"(0)
    lt rx1384_pos, -1, rx1384_done
    eq rx1384_pos, -1, rx1384_fail
    jump $I10
  rx1384_done:
    rx1384_cur."!cursor_fail"()
    if_null rx1384_debug, debug_1051
    rx1384_cur."!cursor_debug"("FAIL", "infix:sym<::=>")
  debug_1051:
    .return (rx1384_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<::=>"  :subid("349_1294592820.342") :method
.annotate 'line', 492
    $P1386 = self."!PREFIX__!subrule"("O", "::=")
    new $P1387, "ResizablePMCArray"
    push $P1387, $P1386
    .return ($P1387)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<,>"  :subid("350_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 492
    .local string rx1391_tgt
    .local int rx1391_pos
    .local int rx1391_off
    .local int rx1391_eos
    .local int rx1391_rep
    .local pmc rx1391_cur
    .local pmc rx1391_debug
    (rx1391_cur, rx1391_pos, rx1391_tgt, $I10) = self."!cursor_start"()
    getattribute rx1391_debug, rx1391_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1391_cur
    .local pmc match
    .lex "$/", match
    length rx1391_eos, rx1391_tgt
    gt rx1391_pos, rx1391_eos, rx1391_done
    set rx1391_off, 0
    lt rx1391_pos, 2, rx1391_start
    sub rx1391_off, rx1391_pos, 1
    substr rx1391_tgt, rx1391_tgt, rx1391_off
  rx1391_start:
    eq $I10, 1, rx1391_restart
    if_null rx1391_debug, debug_1052
    rx1391_cur."!cursor_debug"("START", "infix:sym<,>")
  debug_1052:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1395_done
    goto rxscan1395_scan
  rxscan1395_loop:
    ($P10) = rx1391_cur."from"()
    inc $P10
    set rx1391_pos, $P10
    ge rx1391_pos, rx1391_eos, rxscan1395_done
  rxscan1395_scan:
    set_addr $I10, rxscan1395_loop
    rx1391_cur."!mark_push"(0, rx1391_pos, $I10)
  rxscan1395_done:
.annotate 'line', 598
  # rx subcapture "sym"
    set_addr $I10, rxcap_1396_fail
    rx1391_cur."!mark_push"(0, rx1391_pos, $I10)
  # rx literal  ","
    add $I11, rx1391_pos, 1
    gt $I11, rx1391_eos, rx1391_fail
    sub $I11, rx1391_pos, rx1391_off
    ord $I11, rx1391_tgt, $I11
    ne $I11, 44, rx1391_fail
    add rx1391_pos, 1
    set_addr $I10, rxcap_1396_fail
    ($I12, $I11) = rx1391_cur."!mark_peek"($I10)
    rx1391_cur."!cursor_pos"($I11)
    ($P10) = rx1391_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1391_pos, "")
    rx1391_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1396_done
  rxcap_1396_fail:
    goto rx1391_fail
  rxcap_1396_done:
  # rx subrule "O" subtype=capture negate=
    rx1391_cur."!cursor_pos"(rx1391_pos)
    $P10 = rx1391_cur."O"("%comma, :pasttype<list>")
    unless $P10, rx1391_fail
    rx1391_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1391_pos = $P10."pos"()
  # rx pass
    rx1391_cur."!cursor_pass"(rx1391_pos, "infix:sym<,>")
    if_null rx1391_debug, debug_1053
    rx1391_cur."!cursor_debug"("PASS", "infix:sym<,>", " at pos=", rx1391_pos)
  debug_1053:
    .return (rx1391_cur)
  rx1391_restart:
.annotate 'line', 492
    if_null rx1391_debug, debug_1054
    rx1391_cur."!cursor_debug"("NEXT", "infix:sym<,>")
  debug_1054:
  rx1391_fail:
    (rx1391_rep, rx1391_pos, $I10, $P10) = rx1391_cur."!mark_fail"(0)
    lt rx1391_pos, -1, rx1391_done
    eq rx1391_pos, -1, rx1391_fail
    jump $I10
  rx1391_done:
    rx1391_cur."!cursor_fail"()
    if_null rx1391_debug, debug_1055
    rx1391_cur."!cursor_debug"("FAIL", "infix:sym<,>")
  debug_1055:
    .return (rx1391_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<,>"  :subid("351_1294592820.342") :method
.annotate 'line', 492
    $P1393 = self."!PREFIX__!subrule"("O", ",")
    new $P1394, "ResizablePMCArray"
    push $P1394, $P1393
    .return ($P1394)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<return>"  :subid("352_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 492
    .local string rx1398_tgt
    .local int rx1398_pos
    .local int rx1398_off
    .local int rx1398_eos
    .local int rx1398_rep
    .local pmc rx1398_cur
    .local pmc rx1398_debug
    (rx1398_cur, rx1398_pos, rx1398_tgt, $I10) = self."!cursor_start"()
    getattribute rx1398_debug, rx1398_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1398_cur
    .local pmc match
    .lex "$/", match
    length rx1398_eos, rx1398_tgt
    gt rx1398_pos, rx1398_eos, rx1398_done
    set rx1398_off, 0
    lt rx1398_pos, 2, rx1398_start
    sub rx1398_off, rx1398_pos, 1
    substr rx1398_tgt, rx1398_tgt, rx1398_off
  rx1398_start:
    eq $I10, 1, rx1398_restart
    if_null rx1398_debug, debug_1056
    rx1398_cur."!cursor_debug"("START", "prefix:sym<return>")
  debug_1056:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1401_done
    goto rxscan1401_scan
  rxscan1401_loop:
    ($P10) = rx1398_cur."from"()
    inc $P10
    set rx1398_pos, $P10
    ge rx1398_pos, rx1398_eos, rxscan1401_done
  rxscan1401_scan:
    set_addr $I10, rxscan1401_loop
    rx1398_cur."!mark_push"(0, rx1398_pos, $I10)
  rxscan1401_done:
.annotate 'line', 600
  # rx subcapture "sym"
    set_addr $I10, rxcap_1402_fail
    rx1398_cur."!mark_push"(0, rx1398_pos, $I10)
  # rx literal  "return"
    add $I11, rx1398_pos, 6
    gt $I11, rx1398_eos, rx1398_fail
    sub $I11, rx1398_pos, rx1398_off
    substr $S10, rx1398_tgt, $I11, 6
    ne $S10, "return", rx1398_fail
    add rx1398_pos, 6
    set_addr $I10, rxcap_1402_fail
    ($I12, $I11) = rx1398_cur."!mark_peek"($I10)
    rx1398_cur."!cursor_pos"($I11)
    ($P10) = rx1398_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1398_pos, "")
    rx1398_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1402_done
  rxcap_1402_fail:
    goto rx1398_fail
  rxcap_1402_done:
  # rx charclass s
    ge rx1398_pos, rx1398_eos, rx1398_fail
    sub $I10, rx1398_pos, rx1398_off
    is_cclass $I11, 32, rx1398_tgt, $I10
    unless $I11, rx1398_fail
    inc rx1398_pos
  # rx subrule "O" subtype=capture negate=
    rx1398_cur."!cursor_pos"(rx1398_pos)
    $P10 = rx1398_cur."O"("%list_prefix, :pasttype<return>")
    unless $P10, rx1398_fail
    rx1398_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1398_pos = $P10."pos"()
  # rx pass
    rx1398_cur."!cursor_pass"(rx1398_pos, "prefix:sym<return>")
    if_null rx1398_debug, debug_1057
    rx1398_cur."!cursor_debug"("PASS", "prefix:sym<return>", " at pos=", rx1398_pos)
  debug_1057:
    .return (rx1398_cur)
  rx1398_restart:
.annotate 'line', 492
    if_null rx1398_debug, debug_1058
    rx1398_cur."!cursor_debug"("NEXT", "prefix:sym<return>")
  debug_1058:
  rx1398_fail:
    (rx1398_rep, rx1398_pos, $I10, $P10) = rx1398_cur."!mark_fail"(0)
    lt rx1398_pos, -1, rx1398_done
    eq rx1398_pos, -1, rx1398_fail
    jump $I10
  rx1398_done:
    rx1398_cur."!cursor_fail"()
    if_null rx1398_debug, debug_1059
    rx1398_cur."!cursor_debug"("FAIL", "prefix:sym<return>")
  debug_1059:
    .return (rx1398_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<return>"  :subid("353_1294592820.342") :method
.annotate 'line', 492
    new $P1400, "ResizablePMCArray"
    push $P1400, "return"
    .return ($P1400)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<make>"  :subid("354_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 492
    .local string rx1404_tgt
    .local int rx1404_pos
    .local int rx1404_off
    .local int rx1404_eos
    .local int rx1404_rep
    .local pmc rx1404_cur
    .local pmc rx1404_debug
    (rx1404_cur, rx1404_pos, rx1404_tgt, $I10) = self."!cursor_start"()
    getattribute rx1404_debug, rx1404_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1404_cur
    .local pmc match
    .lex "$/", match
    length rx1404_eos, rx1404_tgt
    gt rx1404_pos, rx1404_eos, rx1404_done
    set rx1404_off, 0
    lt rx1404_pos, 2, rx1404_start
    sub rx1404_off, rx1404_pos, 1
    substr rx1404_tgt, rx1404_tgt, rx1404_off
  rx1404_start:
    eq $I10, 1, rx1404_restart
    if_null rx1404_debug, debug_1060
    rx1404_cur."!cursor_debug"("START", "prefix:sym<make>")
  debug_1060:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1407_done
    goto rxscan1407_scan
  rxscan1407_loop:
    ($P10) = rx1404_cur."from"()
    inc $P10
    set rx1404_pos, $P10
    ge rx1404_pos, rx1404_eos, rxscan1407_done
  rxscan1407_scan:
    set_addr $I10, rxscan1407_loop
    rx1404_cur."!mark_push"(0, rx1404_pos, $I10)
  rxscan1407_done:
.annotate 'line', 601
  # rx subcapture "sym"
    set_addr $I10, rxcap_1408_fail
    rx1404_cur."!mark_push"(0, rx1404_pos, $I10)
  # rx literal  "make"
    add $I11, rx1404_pos, 4
    gt $I11, rx1404_eos, rx1404_fail
    sub $I11, rx1404_pos, rx1404_off
    substr $S10, rx1404_tgt, $I11, 4
    ne $S10, "make", rx1404_fail
    add rx1404_pos, 4
    set_addr $I10, rxcap_1408_fail
    ($I12, $I11) = rx1404_cur."!mark_peek"($I10)
    rx1404_cur."!cursor_pos"($I11)
    ($P10) = rx1404_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1404_pos, "")
    rx1404_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1408_done
  rxcap_1408_fail:
    goto rx1404_fail
  rxcap_1408_done:
  # rx charclass s
    ge rx1404_pos, rx1404_eos, rx1404_fail
    sub $I10, rx1404_pos, rx1404_off
    is_cclass $I11, 32, rx1404_tgt, $I10
    unless $I11, rx1404_fail
    inc rx1404_pos
  # rx subrule "O" subtype=capture negate=
    rx1404_cur."!cursor_pos"(rx1404_pos)
    $P10 = rx1404_cur."O"("%list_prefix")
    unless $P10, rx1404_fail
    rx1404_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1404_pos = $P10."pos"()
  # rx pass
    rx1404_cur."!cursor_pass"(rx1404_pos, "prefix:sym<make>")
    if_null rx1404_debug, debug_1061
    rx1404_cur."!cursor_debug"("PASS", "prefix:sym<make>", " at pos=", rx1404_pos)
  debug_1061:
    .return (rx1404_cur)
  rx1404_restart:
.annotate 'line', 492
    if_null rx1404_debug, debug_1062
    rx1404_cur."!cursor_debug"("NEXT", "prefix:sym<make>")
  debug_1062:
  rx1404_fail:
    (rx1404_rep, rx1404_pos, $I10, $P10) = rx1404_cur."!mark_fail"(0)
    lt rx1404_pos, -1, rx1404_done
    eq rx1404_pos, -1, rx1404_fail
    jump $I10
  rx1404_done:
    rx1404_cur."!cursor_fail"()
    if_null rx1404_debug, debug_1063
    rx1404_cur."!cursor_debug"("FAIL", "prefix:sym<make>")
  debug_1063:
    .return (rx1404_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<make>"  :subid("355_1294592820.342") :method
.annotate 'line', 492
    new $P1406, "ResizablePMCArray"
    push $P1406, "make"
    .return ($P1406)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<last>"  :subid("356_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 492
    .local string rx1410_tgt
    .local int rx1410_pos
    .local int rx1410_off
    .local int rx1410_eos
    .local int rx1410_rep
    .local pmc rx1410_cur
    .local pmc rx1410_debug
    (rx1410_cur, rx1410_pos, rx1410_tgt, $I10) = self."!cursor_start"()
    getattribute rx1410_debug, rx1410_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1410_cur
    .local pmc match
    .lex "$/", match
    length rx1410_eos, rx1410_tgt
    gt rx1410_pos, rx1410_eos, rx1410_done
    set rx1410_off, 0
    lt rx1410_pos, 2, rx1410_start
    sub rx1410_off, rx1410_pos, 1
    substr rx1410_tgt, rx1410_tgt, rx1410_off
  rx1410_start:
    eq $I10, 1, rx1410_restart
    if_null rx1410_debug, debug_1064
    rx1410_cur."!cursor_debug"("START", "term:sym<last>")
  debug_1064:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1413_done
    goto rxscan1413_scan
  rxscan1413_loop:
    ($P10) = rx1410_cur."from"()
    inc $P10
    set rx1410_pos, $P10
    ge rx1410_pos, rx1410_eos, rxscan1413_done
  rxscan1413_scan:
    set_addr $I10, rxscan1413_loop
    rx1410_cur."!mark_push"(0, rx1410_pos, $I10)
  rxscan1413_done:
.annotate 'line', 602
  # rx subcapture "sym"
    set_addr $I10, rxcap_1414_fail
    rx1410_cur."!mark_push"(0, rx1410_pos, $I10)
  # rx literal  "last"
    add $I11, rx1410_pos, 4
    gt $I11, rx1410_eos, rx1410_fail
    sub $I11, rx1410_pos, rx1410_off
    substr $S10, rx1410_tgt, $I11, 4
    ne $S10, "last", rx1410_fail
    add rx1410_pos, 4
    set_addr $I10, rxcap_1414_fail
    ($I12, $I11) = rx1410_cur."!mark_peek"($I10)
    rx1410_cur."!cursor_pos"($I11)
    ($P10) = rx1410_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1410_pos, "")
    rx1410_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1414_done
  rxcap_1414_fail:
    goto rx1410_fail
  rxcap_1414_done:
  # rx pass
    rx1410_cur."!cursor_pass"(rx1410_pos, "term:sym<last>")
    if_null rx1410_debug, debug_1065
    rx1410_cur."!cursor_debug"("PASS", "term:sym<last>", " at pos=", rx1410_pos)
  debug_1065:
    .return (rx1410_cur)
  rx1410_restart:
.annotate 'line', 492
    if_null rx1410_debug, debug_1066
    rx1410_cur."!cursor_debug"("NEXT", "term:sym<last>")
  debug_1066:
  rx1410_fail:
    (rx1410_rep, rx1410_pos, $I10, $P10) = rx1410_cur."!mark_fail"(0)
    lt rx1410_pos, -1, rx1410_done
    eq rx1410_pos, -1, rx1410_fail
    jump $I10
  rx1410_done:
    rx1410_cur."!cursor_fail"()
    if_null rx1410_debug, debug_1067
    rx1410_cur."!cursor_debug"("FAIL", "term:sym<last>")
  debug_1067:
    .return (rx1410_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<last>"  :subid("357_1294592820.342") :method
.annotate 'line', 492
    new $P1412, "ResizablePMCArray"
    push $P1412, "last"
    .return ($P1412)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<next>"  :subid("358_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 492
    .local string rx1416_tgt
    .local int rx1416_pos
    .local int rx1416_off
    .local int rx1416_eos
    .local int rx1416_rep
    .local pmc rx1416_cur
    .local pmc rx1416_debug
    (rx1416_cur, rx1416_pos, rx1416_tgt, $I10) = self."!cursor_start"()
    getattribute rx1416_debug, rx1416_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1416_cur
    .local pmc match
    .lex "$/", match
    length rx1416_eos, rx1416_tgt
    gt rx1416_pos, rx1416_eos, rx1416_done
    set rx1416_off, 0
    lt rx1416_pos, 2, rx1416_start
    sub rx1416_off, rx1416_pos, 1
    substr rx1416_tgt, rx1416_tgt, rx1416_off
  rx1416_start:
    eq $I10, 1, rx1416_restart
    if_null rx1416_debug, debug_1068
    rx1416_cur."!cursor_debug"("START", "term:sym<next>")
  debug_1068:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1419_done
    goto rxscan1419_scan
  rxscan1419_loop:
    ($P10) = rx1416_cur."from"()
    inc $P10
    set rx1416_pos, $P10
    ge rx1416_pos, rx1416_eos, rxscan1419_done
  rxscan1419_scan:
    set_addr $I10, rxscan1419_loop
    rx1416_cur."!mark_push"(0, rx1416_pos, $I10)
  rxscan1419_done:
.annotate 'line', 603
  # rx subcapture "sym"
    set_addr $I10, rxcap_1420_fail
    rx1416_cur."!mark_push"(0, rx1416_pos, $I10)
  # rx literal  "next"
    add $I11, rx1416_pos, 4
    gt $I11, rx1416_eos, rx1416_fail
    sub $I11, rx1416_pos, rx1416_off
    substr $S10, rx1416_tgt, $I11, 4
    ne $S10, "next", rx1416_fail
    add rx1416_pos, 4
    set_addr $I10, rxcap_1420_fail
    ($I12, $I11) = rx1416_cur."!mark_peek"($I10)
    rx1416_cur."!cursor_pos"($I11)
    ($P10) = rx1416_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1416_pos, "")
    rx1416_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1420_done
  rxcap_1420_fail:
    goto rx1416_fail
  rxcap_1420_done:
  # rx pass
    rx1416_cur."!cursor_pass"(rx1416_pos, "term:sym<next>")
    if_null rx1416_debug, debug_1069
    rx1416_cur."!cursor_debug"("PASS", "term:sym<next>", " at pos=", rx1416_pos)
  debug_1069:
    .return (rx1416_cur)
  rx1416_restart:
.annotate 'line', 492
    if_null rx1416_debug, debug_1070
    rx1416_cur."!cursor_debug"("NEXT", "term:sym<next>")
  debug_1070:
  rx1416_fail:
    (rx1416_rep, rx1416_pos, $I10, $P10) = rx1416_cur."!mark_fail"(0)
    lt rx1416_pos, -1, rx1416_done
    eq rx1416_pos, -1, rx1416_fail
    jump $I10
  rx1416_done:
    rx1416_cur."!cursor_fail"()
    if_null rx1416_debug, debug_1071
    rx1416_cur."!cursor_debug"("FAIL", "term:sym<next>")
  debug_1071:
    .return (rx1416_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<next>"  :subid("359_1294592820.342") :method
.annotate 'line', 492
    new $P1418, "ResizablePMCArray"
    push $P1418, "next"
    .return ($P1418)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<redo>"  :subid("360_1294592820.342") :method :outer("11_1294592820.342")
.annotate 'line', 492
    .local string rx1422_tgt
    .local int rx1422_pos
    .local int rx1422_off
    .local int rx1422_eos
    .local int rx1422_rep
    .local pmc rx1422_cur
    .local pmc rx1422_debug
    (rx1422_cur, rx1422_pos, rx1422_tgt, $I10) = self."!cursor_start"()
    getattribute rx1422_debug, rx1422_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1422_cur
    .local pmc match
    .lex "$/", match
    length rx1422_eos, rx1422_tgt
    gt rx1422_pos, rx1422_eos, rx1422_done
    set rx1422_off, 0
    lt rx1422_pos, 2, rx1422_start
    sub rx1422_off, rx1422_pos, 1
    substr rx1422_tgt, rx1422_tgt, rx1422_off
  rx1422_start:
    eq $I10, 1, rx1422_restart
    if_null rx1422_debug, debug_1072
    rx1422_cur."!cursor_debug"("START", "term:sym<redo>")
  debug_1072:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1425_done
    goto rxscan1425_scan
  rxscan1425_loop:
    ($P10) = rx1422_cur."from"()
    inc $P10
    set rx1422_pos, $P10
    ge rx1422_pos, rx1422_eos, rxscan1425_done
  rxscan1425_scan:
    set_addr $I10, rxscan1425_loop
    rx1422_cur."!mark_push"(0, rx1422_pos, $I10)
  rxscan1425_done:
.annotate 'line', 604
  # rx subcapture "sym"
    set_addr $I10, rxcap_1426_fail
    rx1422_cur."!mark_push"(0, rx1422_pos, $I10)
  # rx literal  "redo"
    add $I11, rx1422_pos, 4
    gt $I11, rx1422_eos, rx1422_fail
    sub $I11, rx1422_pos, rx1422_off
    substr $S10, rx1422_tgt, $I11, 4
    ne $S10, "redo", rx1422_fail
    add rx1422_pos, 4
    set_addr $I10, rxcap_1426_fail
    ($I12, $I11) = rx1422_cur."!mark_peek"($I10)
    rx1422_cur."!cursor_pos"($I11)
    ($P10) = rx1422_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1422_pos, "")
    rx1422_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1426_done
  rxcap_1426_fail:
    goto rx1422_fail
  rxcap_1426_done:
  # rx pass
    rx1422_cur."!cursor_pass"(rx1422_pos, "term:sym<redo>")
    if_null rx1422_debug, debug_1073
    rx1422_cur."!cursor_debug"("PASS", "term:sym<redo>", " at pos=", rx1422_pos)
  debug_1073:
    .return (rx1422_cur)
  rx1422_restart:
.annotate 'line', 492
    if_null rx1422_debug, debug_1074
    rx1422_cur."!cursor_debug"("NEXT", "term:sym<redo>")
  debug_1074:
  rx1422_fail:
    (rx1422_rep, rx1422_pos, $I10, $P10) = rx1422_cur."!mark_fail"(0)
    lt rx1422_pos, -1, rx1422_done
    eq rx1422_pos, -1, rx1422_fail
    jump $I10
  rx1422_done:
    rx1422_cur."!cursor_fail"()
    if_null rx1422_debug, debug_1075
    rx1422_cur."!cursor_debug"("FAIL", "term:sym<redo>")
  debug_1075:
    .return (rx1422_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<redo>"  :subid("361_1294592820.342") :method
.annotate 'line', 492
    new $P1424, "ResizablePMCArray"
    push $P1424, "redo"
    .return ($P1424)
.end


.namespace ["NQP";"Grammar"]
.include "except_types.pasm"
.sub "smartmatch"  :subid("362_1294592820.342") :method :outer("11_1294592820.342")
    .param pmc param_1430
.annotate 'line', 606
    new $P1429, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1429, control_1428
    push_eh $P1429
    .lex "self", self
    .lex "$/", param_1430
.annotate 'line', 608
    new $P1431, "Undef"
    .lex "$t", $P1431
    find_lex $P1432, "$/"
    unless_null $P1432, vivify_1076
    $P1432 = root_new ['parrot';'ResizablePMCArray']
  vivify_1076:
    set $P1433, $P1432[0]
    unless_null $P1433, vivify_1077
    new $P1433, "Undef"
  vivify_1077:
    store_lex "$t", $P1433
    find_lex $P1434, "$/"
    unless_null $P1434, vivify_1078
    $P1434 = root_new ['parrot';'ResizablePMCArray']
  vivify_1078:
    set $P1435, $P1434[1]
    unless_null $P1435, vivify_1079
    new $P1435, "Undef"
  vivify_1079:
    find_lex $P1436, "$/"
    unless_null $P1436, vivify_1080
    $P1436 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$/", $P1436
  vivify_1080:
    set $P1436[0], $P1435
    find_lex $P1437, "$t"
    find_lex $P1438, "$/"
    unless_null $P1438, vivify_1081
    $P1438 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$/", $P1438
  vivify_1081:
    set $P1438[1], $P1437
.annotate 'line', 606
    .return ($P1437)
  control_1428:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1439, exception, "payload"
    .return ($P1439)
.end


.namespace ["NQP";"Regex"]
.sub "_block1440"  :subid("363_1294592820.342") :outer("11_1294592820.342")
.annotate 'line', 612
    .const 'Sub' $P1497 = "382_1294592820.342" 
    capture_lex $P1497
    .const 'Sub' $P1492 = "380_1294592820.342" 
    capture_lex $P1492
    .const 'Sub' $P1480 = "377_1294592820.342" 
    capture_lex $P1480
    .const 'Sub' $P1470 = "374_1294592820.342" 
    capture_lex $P1470
    .const 'Sub' $P1465 = "372_1294592820.342" 
    capture_lex $P1465
    .const 'Sub' $P1456 = "369_1294592820.342" 
    capture_lex $P1456
    .const 'Sub' $P1451 = "367_1294592820.342" 
    capture_lex $P1451
    .const 'Sub' $P1442 = "364_1294592820.342" 
    capture_lex $P1442
    .const 'Sub' $P1497 = "382_1294592820.342" 
    capture_lex $P1497
    .return ($P1497)
.end


.namespace ["NQP";"Regex"]
.sub "metachar:sym<:my>"  :subid("364_1294592820.342") :method :outer("363_1294592820.342")
.annotate 'line', 612
    .const 'Sub' $P1448 = "366_1294592820.342" 
    capture_lex $P1448
    .local string rx1443_tgt
    .local int rx1443_pos
    .local int rx1443_off
    .local int rx1443_eos
    .local int rx1443_rep
    .local pmc rx1443_cur
    .local pmc rx1443_debug
    (rx1443_cur, rx1443_pos, rx1443_tgt, $I10) = self."!cursor_start"()
    getattribute rx1443_debug, rx1443_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1443_cur
    .local pmc match
    .lex "$/", match
    length rx1443_eos, rx1443_tgt
    gt rx1443_pos, rx1443_eos, rx1443_done
    set rx1443_off, 0
    lt rx1443_pos, 2, rx1443_start
    sub rx1443_off, rx1443_pos, 1
    substr rx1443_tgt, rx1443_tgt, rx1443_off
  rx1443_start:
    eq $I10, 1, rx1443_restart
    if_null rx1443_debug, debug_1082
    rx1443_cur."!cursor_debug"("START", "metachar:sym<:my>")
  debug_1082:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1446_done
    goto rxscan1446_scan
  rxscan1446_loop:
    ($P10) = rx1443_cur."from"()
    inc $P10
    set rx1443_pos, $P10
    ge rx1443_pos, rx1443_eos, rxscan1446_done
  rxscan1446_scan:
    set_addr $I10, rxscan1446_loop
    rx1443_cur."!mark_push"(0, rx1443_pos, $I10)
  rxscan1446_done:
.annotate 'line', 614
  # rx literal  ":"
    add $I11, rx1443_pos, 1
    gt $I11, rx1443_eos, rx1443_fail
    sub $I11, rx1443_pos, rx1443_off
    ord $I11, rx1443_tgt, $I11
    ne $I11, 58, rx1443_fail
    add rx1443_pos, 1
  # rx subrule "before" subtype=zerowidth negate=
    rx1443_cur."!cursor_pos"(rx1443_pos)
    .const 'Sub' $P1448 = "366_1294592820.342" 
    capture_lex $P1448
    $P10 = rx1443_cur."before"($P1448)
    unless $P10, rx1443_fail
  # rx subrule "LANG" subtype=capture negate=
    rx1443_cur."!cursor_pos"(rx1443_pos)
    $P10 = rx1443_cur."LANG"("MAIN", "statement")
    unless $P10, rx1443_fail
    rx1443_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement")
    rx1443_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx1443_cur."!cursor_pos"(rx1443_pos)
    $P10 = rx1443_cur."ws"()
    unless $P10, rx1443_fail
    rx1443_pos = $P10."pos"()
  # rx literal  ";"
    add $I11, rx1443_pos, 1
    gt $I11, rx1443_eos, rx1443_fail
    sub $I11, rx1443_pos, rx1443_off
    ord $I11, rx1443_tgt, $I11
    ne $I11, 59, rx1443_fail
    add rx1443_pos, 1
.annotate 'line', 613
  # rx pass
    rx1443_cur."!cursor_pass"(rx1443_pos, "metachar:sym<:my>")
    if_null rx1443_debug, debug_1087
    rx1443_cur."!cursor_debug"("PASS", "metachar:sym<:my>", " at pos=", rx1443_pos)
  debug_1087:
    .return (rx1443_cur)
  rx1443_restart:
.annotate 'line', 612
    if_null rx1443_debug, debug_1088
    rx1443_cur."!cursor_debug"("NEXT", "metachar:sym<:my>")
  debug_1088:
  rx1443_fail:
    (rx1443_rep, rx1443_pos, $I10, $P10) = rx1443_cur."!mark_fail"(0)
    lt rx1443_pos, -1, rx1443_done
    eq rx1443_pos, -1, rx1443_fail
    jump $I10
  rx1443_done:
    rx1443_cur."!cursor_fail"()
    if_null rx1443_debug, debug_1089
    rx1443_cur."!cursor_debug"("FAIL", "metachar:sym<:my>")
  debug_1089:
    .return (rx1443_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "!PREFIX__metachar:sym<:my>"  :subid("365_1294592820.342") :method
.annotate 'line', 612
    new $P1445, "ResizablePMCArray"
    push $P1445, ":"
    .return ($P1445)
.end


.namespace ["NQP";"Regex"]
.sub "_block1447"  :anon :subid("366_1294592820.342") :method :outer("364_1294592820.342")
.annotate 'line', 614
    .local string rx1449_tgt
    .local int rx1449_pos
    .local int rx1449_off
    .local int rx1449_eos
    .local int rx1449_rep
    .local pmc rx1449_cur
    .local pmc rx1449_debug
    (rx1449_cur, rx1449_pos, rx1449_tgt, $I10) = self."!cursor_start"()
    getattribute rx1449_debug, rx1449_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1449_cur
    .local pmc match
    .lex "$/", match
    length rx1449_eos, rx1449_tgt
    gt rx1449_pos, rx1449_eos, rx1449_done
    set rx1449_off, 0
    lt rx1449_pos, 2, rx1449_start
    sub rx1449_off, rx1449_pos, 1
    substr rx1449_tgt, rx1449_tgt, rx1449_off
  rx1449_start:
    eq $I10, 1, rx1449_restart
    if_null rx1449_debug, debug_1083
    rx1449_cur."!cursor_debug"("START", "")
  debug_1083:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1450_done
    goto rxscan1450_scan
  rxscan1450_loop:
    ($P10) = rx1449_cur."from"()
    inc $P10
    set rx1449_pos, $P10
    ge rx1449_pos, rx1449_eos, rxscan1450_done
  rxscan1450_scan:
    set_addr $I10, rxscan1450_loop
    rx1449_cur."!mark_push"(0, rx1449_pos, $I10)
  rxscan1450_done:
  # rx literal  "my"
    add $I11, rx1449_pos, 2
    gt $I11, rx1449_eos, rx1449_fail
    sub $I11, rx1449_pos, rx1449_off
    substr $S10, rx1449_tgt, $I11, 2
    ne $S10, "my", rx1449_fail
    add rx1449_pos, 2
  # rx pass
    rx1449_cur."!cursor_pass"(rx1449_pos, "")
    if_null rx1449_debug, debug_1084
    rx1449_cur."!cursor_debug"("PASS", "", " at pos=", rx1449_pos)
  debug_1084:
    .return (rx1449_cur)
  rx1449_restart:
    if_null rx1449_debug, debug_1085
    rx1449_cur."!cursor_debug"("NEXT", "")
  debug_1085:
  rx1449_fail:
    (rx1449_rep, rx1449_pos, $I10, $P10) = rx1449_cur."!mark_fail"(0)
    lt rx1449_pos, -1, rx1449_done
    eq rx1449_pos, -1, rx1449_fail
    jump $I10
  rx1449_done:
    rx1449_cur."!cursor_fail"()
    if_null rx1449_debug, debug_1086
    rx1449_cur."!cursor_debug"("FAIL", "")
  debug_1086:
    .return (rx1449_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "metachar:sym<{ }>"  :subid("367_1294592820.342") :method :outer("363_1294592820.342")
.annotate 'line', 612
    .local string rx1452_tgt
    .local int rx1452_pos
    .local int rx1452_off
    .local int rx1452_eos
    .local int rx1452_rep
    .local pmc rx1452_cur
    .local pmc rx1452_debug
    (rx1452_cur, rx1452_pos, rx1452_tgt, $I10) = self."!cursor_start"()
    getattribute rx1452_debug, rx1452_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1452_cur
    .local pmc match
    .lex "$/", match
    length rx1452_eos, rx1452_tgt
    gt rx1452_pos, rx1452_eos, rx1452_done
    set rx1452_off, 0
    lt rx1452_pos, 2, rx1452_start
    sub rx1452_off, rx1452_pos, 1
    substr rx1452_tgt, rx1452_tgt, rx1452_off
  rx1452_start:
    eq $I10, 1, rx1452_restart
    if_null rx1452_debug, debug_1090
    rx1452_cur."!cursor_debug"("START", "metachar:sym<{ }>")
  debug_1090:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1455_done
    goto rxscan1455_scan
  rxscan1455_loop:
    ($P10) = rx1452_cur."from"()
    inc $P10
    set rx1452_pos, $P10
    ge rx1452_pos, rx1452_eos, rxscan1455_done
  rxscan1455_scan:
    set_addr $I10, rxscan1455_loop
    rx1452_cur."!mark_push"(0, rx1452_pos, $I10)
  rxscan1455_done:
.annotate 'line', 618
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx1452_pos, rx1452_off
    substr $S10, rx1452_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx1452_fail
  # rx subrule "codeblock" subtype=capture negate=
    rx1452_cur."!cursor_pos"(rx1452_pos)
    $P10 = rx1452_cur."codeblock"()
    unless $P10, rx1452_fail
    rx1452_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("codeblock")
    rx1452_pos = $P10."pos"()
.annotate 'line', 617
  # rx pass
    rx1452_cur."!cursor_pass"(rx1452_pos, "metachar:sym<{ }>")
    if_null rx1452_debug, debug_1091
    rx1452_cur."!cursor_debug"("PASS", "metachar:sym<{ }>", " at pos=", rx1452_pos)
  debug_1091:
    .return (rx1452_cur)
  rx1452_restart:
.annotate 'line', 612
    if_null rx1452_debug, debug_1092
    rx1452_cur."!cursor_debug"("NEXT", "metachar:sym<{ }>")
  debug_1092:
  rx1452_fail:
    (rx1452_rep, rx1452_pos, $I10, $P10) = rx1452_cur."!mark_fail"(0)
    lt rx1452_pos, -1, rx1452_done
    eq rx1452_pos, -1, rx1452_fail
    jump $I10
  rx1452_done:
    rx1452_cur."!cursor_fail"()
    if_null rx1452_debug, debug_1093
    rx1452_cur."!cursor_debug"("FAIL", "metachar:sym<{ }>")
  debug_1093:
    .return (rx1452_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "!PREFIX__metachar:sym<{ }>"  :subid("368_1294592820.342") :method
.annotate 'line', 612
    new $P1454, "ResizablePMCArray"
    push $P1454, "{"
    .return ($P1454)
.end


.namespace ["NQP";"Regex"]
.sub "metachar:sym<nqpvar>"  :subid("369_1294592820.342") :method :outer("363_1294592820.342")
.annotate 'line', 612
    .const 'Sub' $P1462 = "371_1294592820.342" 
    capture_lex $P1462
    .local string rx1457_tgt
    .local int rx1457_pos
    .local int rx1457_off
    .local int rx1457_eos
    .local int rx1457_rep
    .local pmc rx1457_cur
    .local pmc rx1457_debug
    (rx1457_cur, rx1457_pos, rx1457_tgt, $I10) = self."!cursor_start"()
    getattribute rx1457_debug, rx1457_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1457_cur
    .local pmc match
    .lex "$/", match
    length rx1457_eos, rx1457_tgt
    gt rx1457_pos, rx1457_eos, rx1457_done
    set rx1457_off, 0
    lt rx1457_pos, 2, rx1457_start
    sub rx1457_off, rx1457_pos, 1
    substr rx1457_tgt, rx1457_tgt, rx1457_off
  rx1457_start:
    eq $I10, 1, rx1457_restart
    if_null rx1457_debug, debug_1094
    rx1457_cur."!cursor_debug"("START", "metachar:sym<nqpvar>")
  debug_1094:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1460_done
    goto rxscan1460_scan
  rxscan1460_loop:
    ($P10) = rx1457_cur."from"()
    inc $P10
    set rx1457_pos, $P10
    ge rx1457_pos, rx1457_eos, rxscan1460_done
  rxscan1460_scan:
    set_addr $I10, rxscan1460_loop
    rx1457_cur."!mark_push"(0, rx1457_pos, $I10)
  rxscan1460_done:
.annotate 'line', 622
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx1457_pos, rx1457_off
    substr $S10, rx1457_tgt, $I10, 1
    index $I11, "$@", $S10
    lt $I11, 0, rx1457_fail
  # rx subrule "before" subtype=zerowidth negate=
    rx1457_cur."!cursor_pos"(rx1457_pos)
    .const 'Sub' $P1462 = "371_1294592820.342" 
    capture_lex $P1462
    $P10 = rx1457_cur."before"($P1462)
    unless $P10, rx1457_fail
  # rx subrule "LANG" subtype=capture negate=
    rx1457_cur."!cursor_pos"(rx1457_pos)
    $P10 = rx1457_cur."LANG"("MAIN", "variable")
    unless $P10, rx1457_fail
    rx1457_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("var")
    rx1457_pos = $P10."pos"()
.annotate 'line', 621
  # rx pass
    rx1457_cur."!cursor_pass"(rx1457_pos, "metachar:sym<nqpvar>")
    if_null rx1457_debug, debug_1099
    rx1457_cur."!cursor_debug"("PASS", "metachar:sym<nqpvar>", " at pos=", rx1457_pos)
  debug_1099:
    .return (rx1457_cur)
  rx1457_restart:
.annotate 'line', 612
    if_null rx1457_debug, debug_1100
    rx1457_cur."!cursor_debug"("NEXT", "metachar:sym<nqpvar>")
  debug_1100:
  rx1457_fail:
    (rx1457_rep, rx1457_pos, $I10, $P10) = rx1457_cur."!mark_fail"(0)
    lt rx1457_pos, -1, rx1457_done
    eq rx1457_pos, -1, rx1457_fail
    jump $I10
  rx1457_done:
    rx1457_cur."!cursor_fail"()
    if_null rx1457_debug, debug_1101
    rx1457_cur."!cursor_debug"("FAIL", "metachar:sym<nqpvar>")
  debug_1101:
    .return (rx1457_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "!PREFIX__metachar:sym<nqpvar>"  :subid("370_1294592820.342") :method
.annotate 'line', 612
    new $P1459, "ResizablePMCArray"
    push $P1459, "$"
    push $P1459, "@"
    .return ($P1459)
.end


.namespace ["NQP";"Regex"]
.sub "_block1461"  :anon :subid("371_1294592820.342") :method :outer("369_1294592820.342")
.annotate 'line', 622
    .local string rx1463_tgt
    .local int rx1463_pos
    .local int rx1463_off
    .local int rx1463_eos
    .local int rx1463_rep
    .local pmc rx1463_cur
    .local pmc rx1463_debug
    (rx1463_cur, rx1463_pos, rx1463_tgt, $I10) = self."!cursor_start"()
    getattribute rx1463_debug, rx1463_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1463_cur
    .local pmc match
    .lex "$/", match
    length rx1463_eos, rx1463_tgt
    gt rx1463_pos, rx1463_eos, rx1463_done
    set rx1463_off, 0
    lt rx1463_pos, 2, rx1463_start
    sub rx1463_off, rx1463_pos, 1
    substr rx1463_tgt, rx1463_tgt, rx1463_off
  rx1463_start:
    eq $I10, 1, rx1463_restart
    if_null rx1463_debug, debug_1095
    rx1463_cur."!cursor_debug"("START", "")
  debug_1095:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1464_done
    goto rxscan1464_scan
  rxscan1464_loop:
    ($P10) = rx1463_cur."from"()
    inc $P10
    set rx1463_pos, $P10
    ge rx1463_pos, rx1463_eos, rxscan1464_done
  rxscan1464_scan:
    set_addr $I10, rxscan1464_loop
    rx1463_cur."!mark_push"(0, rx1463_pos, $I10)
  rxscan1464_done:
  # rx charclass .
    ge rx1463_pos, rx1463_eos, rx1463_fail
    inc rx1463_pos
  # rx charclass w
    ge rx1463_pos, rx1463_eos, rx1463_fail
    sub $I10, rx1463_pos, rx1463_off
    is_cclass $I11, 8192, rx1463_tgt, $I10
    unless $I11, rx1463_fail
    inc rx1463_pos
  # rx pass
    rx1463_cur."!cursor_pass"(rx1463_pos, "")
    if_null rx1463_debug, debug_1096
    rx1463_cur."!cursor_debug"("PASS", "", " at pos=", rx1463_pos)
  debug_1096:
    .return (rx1463_cur)
  rx1463_restart:
    if_null rx1463_debug, debug_1097
    rx1463_cur."!cursor_debug"("NEXT", "")
  debug_1097:
  rx1463_fail:
    (rx1463_rep, rx1463_pos, $I10, $P10) = rx1463_cur."!mark_fail"(0)
    lt rx1463_pos, -1, rx1463_done
    eq rx1463_pos, -1, rx1463_fail
    jump $I10
  rx1463_done:
    rx1463_cur."!cursor_fail"()
    if_null rx1463_debug, debug_1098
    rx1463_cur."!cursor_debug"("FAIL", "")
  debug_1098:
    .return (rx1463_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "assertion:sym<{ }>"  :subid("372_1294592820.342") :method :outer("363_1294592820.342")
.annotate 'line', 612
    .local string rx1466_tgt
    .local int rx1466_pos
    .local int rx1466_off
    .local int rx1466_eos
    .local int rx1466_rep
    .local pmc rx1466_cur
    .local pmc rx1466_debug
    (rx1466_cur, rx1466_pos, rx1466_tgt, $I10) = self."!cursor_start"()
    getattribute rx1466_debug, rx1466_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1466_cur
    .local pmc match
    .lex "$/", match
    length rx1466_eos, rx1466_tgt
    gt rx1466_pos, rx1466_eos, rx1466_done
    set rx1466_off, 0
    lt rx1466_pos, 2, rx1466_start
    sub rx1466_off, rx1466_pos, 1
    substr rx1466_tgt, rx1466_tgt, rx1466_off
  rx1466_start:
    eq $I10, 1, rx1466_restart
    if_null rx1466_debug, debug_1102
    rx1466_cur."!cursor_debug"("START", "assertion:sym<{ }>")
  debug_1102:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1469_done
    goto rxscan1469_scan
  rxscan1469_loop:
    ($P10) = rx1466_cur."from"()
    inc $P10
    set rx1466_pos, $P10
    ge rx1466_pos, rx1466_eos, rxscan1469_done
  rxscan1469_scan:
    set_addr $I10, rxscan1469_loop
    rx1466_cur."!mark_push"(0, rx1466_pos, $I10)
  rxscan1469_done:
.annotate 'line', 626
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx1466_pos, rx1466_off
    substr $S10, rx1466_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx1466_fail
  # rx subrule "codeblock" subtype=capture negate=
    rx1466_cur."!cursor_pos"(rx1466_pos)
    $P10 = rx1466_cur."codeblock"()
    unless $P10, rx1466_fail
    rx1466_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("codeblock")
    rx1466_pos = $P10."pos"()
.annotate 'line', 625
  # rx pass
    rx1466_cur."!cursor_pass"(rx1466_pos, "assertion:sym<{ }>")
    if_null rx1466_debug, debug_1103
    rx1466_cur."!cursor_debug"("PASS", "assertion:sym<{ }>", " at pos=", rx1466_pos)
  debug_1103:
    .return (rx1466_cur)
  rx1466_restart:
.annotate 'line', 612
    if_null rx1466_debug, debug_1104
    rx1466_cur."!cursor_debug"("NEXT", "assertion:sym<{ }>")
  debug_1104:
  rx1466_fail:
    (rx1466_rep, rx1466_pos, $I10, $P10) = rx1466_cur."!mark_fail"(0)
    lt rx1466_pos, -1, rx1466_done
    eq rx1466_pos, -1, rx1466_fail
    jump $I10
  rx1466_done:
    rx1466_cur."!cursor_fail"()
    if_null rx1466_debug, debug_1105
    rx1466_cur."!cursor_debug"("FAIL", "assertion:sym<{ }>")
  debug_1105:
    .return (rx1466_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "!PREFIX__assertion:sym<{ }>"  :subid("373_1294592820.342") :method
.annotate 'line', 612
    new $P1468, "ResizablePMCArray"
    push $P1468, "{"
    .return ($P1468)
.end


.namespace ["NQP";"Regex"]
.sub "assertion:sym<?{ }>"  :subid("374_1294592820.342") :method :outer("363_1294592820.342")
.annotate 'line', 612
    .const 'Sub' $P1476 = "376_1294592820.342" 
    capture_lex $P1476
    .local string rx1471_tgt
    .local int rx1471_pos
    .local int rx1471_off
    .local int rx1471_eos
    .local int rx1471_rep
    .local pmc rx1471_cur
    .local pmc rx1471_debug
    (rx1471_cur, rx1471_pos, rx1471_tgt, $I10) = self."!cursor_start"()
    getattribute rx1471_debug, rx1471_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1471_cur
    .local pmc match
    .lex "$/", match
    length rx1471_eos, rx1471_tgt
    gt rx1471_pos, rx1471_eos, rx1471_done
    set rx1471_off, 0
    lt rx1471_pos, 2, rx1471_start
    sub rx1471_off, rx1471_pos, 1
    substr rx1471_tgt, rx1471_tgt, rx1471_off
  rx1471_start:
    eq $I10, 1, rx1471_restart
    if_null rx1471_debug, debug_1106
    rx1471_cur."!cursor_debug"("START", "assertion:sym<?{ }>")
  debug_1106:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1474_done
    goto rxscan1474_scan
  rxscan1474_loop:
    ($P10) = rx1471_cur."from"()
    inc $P10
    set rx1471_pos, $P10
    ge rx1471_pos, rx1471_eos, rxscan1474_done
  rxscan1474_scan:
    set_addr $I10, rxscan1474_loop
    rx1471_cur."!mark_push"(0, rx1471_pos, $I10)
  rxscan1474_done:
.annotate 'line', 630
  # rx subcapture "zw"
    set_addr $I10, rxcap_1479_fail
    rx1471_cur."!mark_push"(0, rx1471_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx1471_pos, rx1471_eos, rx1471_fail
    sub $I10, rx1471_pos, rx1471_off
    substr $S10, rx1471_tgt, $I10, 1
    index $I11, "?!", $S10
    lt $I11, 0, rx1471_fail
    inc rx1471_pos
  # rx subrule "before" subtype=zerowidth negate=
    rx1471_cur."!cursor_pos"(rx1471_pos)
    .const 'Sub' $P1476 = "376_1294592820.342" 
    capture_lex $P1476
    $P10 = rx1471_cur."before"($P1476)
    unless $P10, rx1471_fail
    set_addr $I10, rxcap_1479_fail
    ($I12, $I11) = rx1471_cur."!mark_peek"($I10)
    rx1471_cur."!cursor_pos"($I11)
    ($P10) = rx1471_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1471_pos, "")
    rx1471_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("zw")
    goto rxcap_1479_done
  rxcap_1479_fail:
    goto rx1471_fail
  rxcap_1479_done:
  # rx subrule "codeblock" subtype=capture negate=
    rx1471_cur."!cursor_pos"(rx1471_pos)
    $P10 = rx1471_cur."codeblock"()
    unless $P10, rx1471_fail
    rx1471_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("codeblock")
    rx1471_pos = $P10."pos"()
.annotate 'line', 629
  # rx pass
    rx1471_cur."!cursor_pass"(rx1471_pos, "assertion:sym<?{ }>")
    if_null rx1471_debug, debug_1111
    rx1471_cur."!cursor_debug"("PASS", "assertion:sym<?{ }>", " at pos=", rx1471_pos)
  debug_1111:
    .return (rx1471_cur)
  rx1471_restart:
.annotate 'line', 612
    if_null rx1471_debug, debug_1112
    rx1471_cur."!cursor_debug"("NEXT", "assertion:sym<?{ }>")
  debug_1112:
  rx1471_fail:
    (rx1471_rep, rx1471_pos, $I10, $P10) = rx1471_cur."!mark_fail"(0)
    lt rx1471_pos, -1, rx1471_done
    eq rx1471_pos, -1, rx1471_fail
    jump $I10
  rx1471_done:
    rx1471_cur."!cursor_fail"()
    if_null rx1471_debug, debug_1113
    rx1471_cur."!cursor_debug"("FAIL", "assertion:sym<?{ }>")
  debug_1113:
    .return (rx1471_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "!PREFIX__assertion:sym<?{ }>"  :subid("375_1294592820.342") :method
.annotate 'line', 612
    new $P1473, "ResizablePMCArray"
    push $P1473, "!"
    push $P1473, "?"
    .return ($P1473)
.end


.namespace ["NQP";"Regex"]
.sub "_block1475"  :anon :subid("376_1294592820.342") :method :outer("374_1294592820.342")
.annotate 'line', 630
    .local string rx1477_tgt
    .local int rx1477_pos
    .local int rx1477_off
    .local int rx1477_eos
    .local int rx1477_rep
    .local pmc rx1477_cur
    .local pmc rx1477_debug
    (rx1477_cur, rx1477_pos, rx1477_tgt, $I10) = self."!cursor_start"()
    getattribute rx1477_debug, rx1477_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1477_cur
    .local pmc match
    .lex "$/", match
    length rx1477_eos, rx1477_tgt
    gt rx1477_pos, rx1477_eos, rx1477_done
    set rx1477_off, 0
    lt rx1477_pos, 2, rx1477_start
    sub rx1477_off, rx1477_pos, 1
    substr rx1477_tgt, rx1477_tgt, rx1477_off
  rx1477_start:
    eq $I10, 1, rx1477_restart
    if_null rx1477_debug, debug_1107
    rx1477_cur."!cursor_debug"("START", "")
  debug_1107:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1478_done
    goto rxscan1478_scan
  rxscan1478_loop:
    ($P10) = rx1477_cur."from"()
    inc $P10
    set rx1477_pos, $P10
    ge rx1477_pos, rx1477_eos, rxscan1478_done
  rxscan1478_scan:
    set_addr $I10, rxscan1478_loop
    rx1477_cur."!mark_push"(0, rx1477_pos, $I10)
  rxscan1478_done:
  # rx literal  "{"
    add $I11, rx1477_pos, 1
    gt $I11, rx1477_eos, rx1477_fail
    sub $I11, rx1477_pos, rx1477_off
    ord $I11, rx1477_tgt, $I11
    ne $I11, 123, rx1477_fail
    add rx1477_pos, 1
  # rx pass
    rx1477_cur."!cursor_pass"(rx1477_pos, "")
    if_null rx1477_debug, debug_1108
    rx1477_cur."!cursor_debug"("PASS", "", " at pos=", rx1477_pos)
  debug_1108:
    .return (rx1477_cur)
  rx1477_restart:
    if_null rx1477_debug, debug_1109
    rx1477_cur."!cursor_debug"("NEXT", "")
  debug_1109:
  rx1477_fail:
    (rx1477_rep, rx1477_pos, $I10, $P10) = rx1477_cur."!mark_fail"(0)
    lt rx1477_pos, -1, rx1477_done
    eq rx1477_pos, -1, rx1477_fail
    jump $I10
  rx1477_done:
    rx1477_cur."!cursor_fail"()
    if_null rx1477_debug, debug_1110
    rx1477_cur."!cursor_debug"("FAIL", "")
  debug_1110:
    .return (rx1477_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "assertion:sym<name>"  :subid("377_1294592820.342") :method :outer("363_1294592820.342")
.annotate 'line', 612
    .const 'Sub' $P1489 = "379_1294592820.342" 
    capture_lex $P1489
    .local string rx1481_tgt
    .local int rx1481_pos
    .local int rx1481_off
    .local int rx1481_eos
    .local int rx1481_rep
    .local pmc rx1481_cur
    .local pmc rx1481_debug
    (rx1481_cur, rx1481_pos, rx1481_tgt, $I10) = self."!cursor_start"()
    rx1481_cur."!cursor_caparray"("assertion", "arglist", "nibbler")
    getattribute rx1481_debug, rx1481_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1481_cur
    .local pmc match
    .lex "$/", match
    length rx1481_eos, rx1481_tgt
    gt rx1481_pos, rx1481_eos, rx1481_done
    set rx1481_off, 0
    lt rx1481_pos, 2, rx1481_start
    sub rx1481_off, rx1481_pos, 1
    substr rx1481_tgt, rx1481_tgt, rx1481_off
  rx1481_start:
    eq $I10, 1, rx1481_restart
    if_null rx1481_debug, debug_1114
    rx1481_cur."!cursor_debug"("START", "assertion:sym<name>")
  debug_1114:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1485_done
    goto rxscan1485_scan
  rxscan1485_loop:
    ($P10) = rx1481_cur."from"()
    inc $P10
    set rx1481_pos, $P10
    ge rx1481_pos, rx1481_eos, rxscan1485_done
  rxscan1485_scan:
    set_addr $I10, rxscan1485_loop
    rx1481_cur."!mark_push"(0, rx1481_pos, $I10)
  rxscan1485_done:
.annotate 'line', 634
  # rx subrule "identifier" subtype=capture negate=
    rx1481_cur."!cursor_pos"(rx1481_pos)
    $P10 = rx1481_cur."identifier"()
    unless $P10, rx1481_fail
    rx1481_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("longname")
    rx1481_pos = $P10."pos"()
.annotate 'line', 641
  # rx rxquantr1486 ** 0..1
    set_addr $I10, rxquantr1486_done
    rx1481_cur."!mark_push"(0, rx1481_pos, $I10)
  rxquantr1486_loop:
  alt1487_0:
.annotate 'line', 635
    set_addr $I10, alt1487_1
    rx1481_cur."!mark_push"(0, rx1481_pos, $I10)
.annotate 'line', 636
  # rx subrule "before" subtype=zerowidth negate=
    rx1481_cur."!cursor_pos"(rx1481_pos)
    .const 'Sub' $P1489 = "379_1294592820.342" 
    capture_lex $P1489
    $P10 = rx1481_cur."before"($P1489)
    unless $P10, rx1481_fail
    goto alt1487_end
  alt1487_1:
    set_addr $I10, alt1487_2
    rx1481_cur."!mark_push"(0, rx1481_pos, $I10)
.annotate 'line', 637
  # rx literal  "="
    add $I11, rx1481_pos, 1
    gt $I11, rx1481_eos, rx1481_fail
    sub $I11, rx1481_pos, rx1481_off
    ord $I11, rx1481_tgt, $I11
    ne $I11, 61, rx1481_fail
    add rx1481_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx1481_cur."!cursor_pos"(rx1481_pos)
    $P10 = rx1481_cur."assertion"()
    unless $P10, rx1481_fail
    rx1481_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx1481_pos = $P10."pos"()
    goto alt1487_end
  alt1487_2:
    set_addr $I10, alt1487_3
    rx1481_cur."!mark_push"(0, rx1481_pos, $I10)
.annotate 'line', 638
  # rx literal  ":"
    add $I11, rx1481_pos, 1
    gt $I11, rx1481_eos, rx1481_fail
    sub $I11, rx1481_pos, rx1481_off
    ord $I11, rx1481_tgt, $I11
    ne $I11, 58, rx1481_fail
    add rx1481_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx1481_cur."!cursor_pos"(rx1481_pos)
    $P10 = rx1481_cur."arglist"()
    unless $P10, rx1481_fail
    rx1481_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx1481_pos = $P10."pos"()
    goto alt1487_end
  alt1487_3:
    set_addr $I10, alt1487_4
    rx1481_cur."!mark_push"(0, rx1481_pos, $I10)
.annotate 'line', 639
  # rx literal  "("
    add $I11, rx1481_pos, 1
    gt $I11, rx1481_eos, rx1481_fail
    sub $I11, rx1481_pos, rx1481_off
    ord $I11, rx1481_tgt, $I11
    ne $I11, 40, rx1481_fail
    add rx1481_pos, 1
  # rx subrule "LANG" subtype=capture negate=
    rx1481_cur."!cursor_pos"(rx1481_pos)
    $P10 = rx1481_cur."LANG"("MAIN", "arglist")
    unless $P10, rx1481_fail
    rx1481_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx1481_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx1481_pos, 1
    gt $I11, rx1481_eos, rx1481_fail
    sub $I11, rx1481_pos, rx1481_off
    ord $I11, rx1481_tgt, $I11
    ne $I11, 41, rx1481_fail
    add rx1481_pos, 1
    goto alt1487_end
  alt1487_4:
.annotate 'line', 640
  # rx subrule "normspace" subtype=method negate=
    rx1481_cur."!cursor_pos"(rx1481_pos)
    $P10 = rx1481_cur."normspace"()
    unless $P10, rx1481_fail
    rx1481_pos = $P10."pos"()
  # rx subrule "nibbler" subtype=capture negate=
    rx1481_cur."!cursor_pos"(rx1481_pos)
    $P10 = rx1481_cur."nibbler"()
    unless $P10, rx1481_fail
    rx1481_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx1481_pos = $P10."pos"()
  alt1487_end:
.annotate 'line', 641
    set_addr $I10, rxquantr1486_done
    (rx1481_rep) = rx1481_cur."!mark_commit"($I10)
  rxquantr1486_done:
.annotate 'line', 633
  # rx pass
    rx1481_cur."!cursor_pass"(rx1481_pos, "assertion:sym<name>")
    if_null rx1481_debug, debug_1119
    rx1481_cur."!cursor_debug"("PASS", "assertion:sym<name>", " at pos=", rx1481_pos)
  debug_1119:
    .return (rx1481_cur)
  rx1481_restart:
.annotate 'line', 612
    if_null rx1481_debug, debug_1120
    rx1481_cur."!cursor_debug"("NEXT", "assertion:sym<name>")
  debug_1120:
  rx1481_fail:
    (rx1481_rep, rx1481_pos, $I10, $P10) = rx1481_cur."!mark_fail"(0)
    lt rx1481_pos, -1, rx1481_done
    eq rx1481_pos, -1, rx1481_fail
    jump $I10
  rx1481_done:
    rx1481_cur."!cursor_fail"()
    if_null rx1481_debug, debug_1121
    rx1481_cur."!cursor_debug"("FAIL", "assertion:sym<name>")
  debug_1121:
    .return (rx1481_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "!PREFIX__assertion:sym<name>"  :subid("378_1294592820.342") :method
.annotate 'line', 612
    $P1483 = self."!PREFIX__!subrule"("identifier", "")
    new $P1484, "ResizablePMCArray"
    push $P1484, $P1483
    .return ($P1484)
.end


.namespace ["NQP";"Regex"]
.sub "_block1488"  :anon :subid("379_1294592820.342") :method :outer("377_1294592820.342")
.annotate 'line', 636
    .local string rx1490_tgt
    .local int rx1490_pos
    .local int rx1490_off
    .local int rx1490_eos
    .local int rx1490_rep
    .local pmc rx1490_cur
    .local pmc rx1490_debug
    (rx1490_cur, rx1490_pos, rx1490_tgt, $I10) = self."!cursor_start"()
    getattribute rx1490_debug, rx1490_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1490_cur
    .local pmc match
    .lex "$/", match
    length rx1490_eos, rx1490_tgt
    gt rx1490_pos, rx1490_eos, rx1490_done
    set rx1490_off, 0
    lt rx1490_pos, 2, rx1490_start
    sub rx1490_off, rx1490_pos, 1
    substr rx1490_tgt, rx1490_tgt, rx1490_off
  rx1490_start:
    eq $I10, 1, rx1490_restart
    if_null rx1490_debug, debug_1115
    rx1490_cur."!cursor_debug"("START", "")
  debug_1115:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1491_done
    goto rxscan1491_scan
  rxscan1491_loop:
    ($P10) = rx1490_cur."from"()
    inc $P10
    set rx1490_pos, $P10
    ge rx1490_pos, rx1490_eos, rxscan1491_done
  rxscan1491_scan:
    set_addr $I10, rxscan1491_loop
    rx1490_cur."!mark_push"(0, rx1490_pos, $I10)
  rxscan1491_done:
  # rx literal  ">"
    add $I11, rx1490_pos, 1
    gt $I11, rx1490_eos, rx1490_fail
    sub $I11, rx1490_pos, rx1490_off
    ord $I11, rx1490_tgt, $I11
    ne $I11, 62, rx1490_fail
    add rx1490_pos, 1
  # rx pass
    rx1490_cur."!cursor_pass"(rx1490_pos, "")
    if_null rx1490_debug, debug_1116
    rx1490_cur."!cursor_debug"("PASS", "", " at pos=", rx1490_pos)
  debug_1116:
    .return (rx1490_cur)
  rx1490_restart:
    if_null rx1490_debug, debug_1117
    rx1490_cur."!cursor_debug"("NEXT", "")
  debug_1117:
  rx1490_fail:
    (rx1490_rep, rx1490_pos, $I10, $P10) = rx1490_cur."!mark_fail"(0)
    lt rx1490_pos, -1, rx1490_done
    eq rx1490_pos, -1, rx1490_fail
    jump $I10
  rx1490_done:
    rx1490_cur."!cursor_fail"()
    if_null rx1490_debug, debug_1118
    rx1490_cur."!cursor_debug"("FAIL", "")
  debug_1118:
    .return (rx1490_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "assertion:sym<var>"  :subid("380_1294592820.342") :method :outer("363_1294592820.342")
.annotate 'line', 612
    .local string rx1493_tgt
    .local int rx1493_pos
    .local int rx1493_off
    .local int rx1493_eos
    .local int rx1493_rep
    .local pmc rx1493_cur
    .local pmc rx1493_debug
    (rx1493_cur, rx1493_pos, rx1493_tgt, $I10) = self."!cursor_start"()
    getattribute rx1493_debug, rx1493_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1493_cur
    .local pmc match
    .lex "$/", match
    length rx1493_eos, rx1493_tgt
    gt rx1493_pos, rx1493_eos, rx1493_done
    set rx1493_off, 0
    lt rx1493_pos, 2, rx1493_start
    sub rx1493_off, rx1493_pos, 1
    substr rx1493_tgt, rx1493_tgt, rx1493_off
  rx1493_start:
    eq $I10, 1, rx1493_restart
    if_null rx1493_debug, debug_1122
    rx1493_cur."!cursor_debug"("START", "assertion:sym<var>")
  debug_1122:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1496_done
    goto rxscan1496_scan
  rxscan1496_loop:
    ($P10) = rx1493_cur."from"()
    inc $P10
    set rx1493_pos, $P10
    ge rx1493_pos, rx1493_eos, rxscan1496_done
  rxscan1496_scan:
    set_addr $I10, rxscan1496_loop
    rx1493_cur."!mark_push"(0, rx1493_pos, $I10)
  rxscan1496_done:
.annotate 'line', 645
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx1493_pos, rx1493_off
    substr $S10, rx1493_tgt, $I10, 1
    index $I11, "$@", $S10
    lt $I11, 0, rx1493_fail
  # rx subrule "LANG" subtype=capture negate=
    rx1493_cur."!cursor_pos"(rx1493_pos)
    $P10 = rx1493_cur."LANG"("MAIN", "variable")
    unless $P10, rx1493_fail
    rx1493_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("var")
    rx1493_pos = $P10."pos"()
.annotate 'line', 644
  # rx pass
    rx1493_cur."!cursor_pass"(rx1493_pos, "assertion:sym<var>")
    if_null rx1493_debug, debug_1123
    rx1493_cur."!cursor_debug"("PASS", "assertion:sym<var>", " at pos=", rx1493_pos)
  debug_1123:
    .return (rx1493_cur)
  rx1493_restart:
.annotate 'line', 612
    if_null rx1493_debug, debug_1124
    rx1493_cur."!cursor_debug"("NEXT", "assertion:sym<var>")
  debug_1124:
  rx1493_fail:
    (rx1493_rep, rx1493_pos, $I10, $P10) = rx1493_cur."!mark_fail"(0)
    lt rx1493_pos, -1, rx1493_done
    eq rx1493_pos, -1, rx1493_fail
    jump $I10
  rx1493_done:
    rx1493_cur."!cursor_fail"()
    if_null rx1493_debug, debug_1125
    rx1493_cur."!cursor_debug"("FAIL", "assertion:sym<var>")
  debug_1125:
    .return (rx1493_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "!PREFIX__assertion:sym<var>"  :subid("381_1294592820.342") :method
.annotate 'line', 612
    new $P1495, "ResizablePMCArray"
    push $P1495, "$"
    push $P1495, "@"
    .return ($P1495)
.end


.namespace ["NQP";"Regex"]
.sub "codeblock"  :subid("382_1294592820.342") :method :outer("363_1294592820.342")
.annotate 'line', 612
    .local string rx1498_tgt
    .local int rx1498_pos
    .local int rx1498_off
    .local int rx1498_eos
    .local int rx1498_rep
    .local pmc rx1498_cur
    .local pmc rx1498_debug
    (rx1498_cur, rx1498_pos, rx1498_tgt, $I10) = self."!cursor_start"()
    getattribute rx1498_debug, rx1498_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1498_cur
    .local pmc match
    .lex "$/", match
    length rx1498_eos, rx1498_tgt
    gt rx1498_pos, rx1498_eos, rx1498_done
    set rx1498_off, 0
    lt rx1498_pos, 2, rx1498_start
    sub rx1498_off, rx1498_pos, 1
    substr rx1498_tgt, rx1498_tgt, rx1498_off
  rx1498_start:
    eq $I10, 1, rx1498_restart
    if_null rx1498_debug, debug_1126
    rx1498_cur."!cursor_debug"("START", "codeblock")
  debug_1126:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1502_done
    goto rxscan1502_scan
  rxscan1502_loop:
    ($P10) = rx1498_cur."from"()
    inc $P10
    set rx1498_pos, $P10
    ge rx1498_pos, rx1498_eos, rxscan1502_done
  rxscan1502_scan:
    set_addr $I10, rxscan1502_loop
    rx1498_cur."!mark_push"(0, rx1498_pos, $I10)
  rxscan1502_done:
.annotate 'line', 649
  # rx subrule "LANG" subtype=capture negate=
    rx1498_cur."!cursor_pos"(rx1498_pos)
    $P10 = rx1498_cur."LANG"("MAIN", "pblock")
    unless $P10, rx1498_fail
    rx1498_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("block")
    rx1498_pos = $P10."pos"()
.annotate 'line', 648
  # rx pass
    rx1498_cur."!cursor_pass"(rx1498_pos, "codeblock")
    if_null rx1498_debug, debug_1127
    rx1498_cur."!cursor_debug"("PASS", "codeblock", " at pos=", rx1498_pos)
  debug_1127:
    .return (rx1498_cur)
  rx1498_restart:
.annotate 'line', 612
    if_null rx1498_debug, debug_1128
    rx1498_cur."!cursor_debug"("NEXT", "codeblock")
  debug_1128:
  rx1498_fail:
    (rx1498_rep, rx1498_pos, $I10, $P10) = rx1498_cur."!mark_fail"(0)
    lt rx1498_pos, -1, rx1498_done
    eq rx1498_pos, -1, rx1498_fail
    jump $I10
  rx1498_done:
    rx1498_cur."!cursor_fail"()
    if_null rx1498_debug, debug_1129
    rx1498_cur."!cursor_debug"("FAIL", "codeblock")
  debug_1129:
    .return (rx1498_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "!PREFIX__codeblock"  :subid("383_1294592820.342") :method
.annotate 'line', 612
    $P1500 = self."!PREFIX__!subrule"("LANG", "")
    new $P1501, "ResizablePMCArray"
    push $P1501, $P1500
    .return ($P1501)
.end


.namespace ["NQP";"Grammar"]
.sub "_block1504" :load :anon :subid("384_1294592820.342")
.annotate 'line', 4
    .const 'Sub' $P1506 = "11_1294592820.342" 
    $P1507 = $P1506()
    .return ($P1507)
.end


.namespace []
.sub "_block1525" :load :anon :subid("385_1294592820.342")
.annotate 'line', 1
    .const 'Sub' $P1527 = "10_1294592820.342" 
    $P1528 = $P1527()
    .return ($P1528)
.end

### .include 'gen/nqp-actions.pir'

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1294592831.858")
.annotate 'line', 0
    get_hll_global $P14, ["NQP";"Actions"], "_block13" 
    capture_lex $P14
.annotate 'line', 1
    nqp_dynop_setup 
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 3
    get_hll_global $P14, ["NQP";"Actions"], "_block13" 
    capture_lex $P14
    $P2853 = $P14()
.annotate 'line', 1
    .return ($P2853)
    .const 'Sub' $P2855 = "160_1294592831.858" 
    .return ($P2855)
.end


.namespace []
.sub "" :load :init :subid("post161") :outer("10_1294592831.858")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1294592831.858" 
    .local pmc block
    set block, $P12
    $P2858 = get_root_global ["parrot"], "P6metaclass"
    $P2858."new_class"("NQP::Actions", "HLL::Actions" :named("parent"))
.end


.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace ["NQP";"Actions"]
.sub "_block13"  :subid("11_1294592831.858") :outer("10_1294592831.858")
.annotate 'line', 3
    .const 'Sub' $P2849 = "159_1294592831.858" 
    capture_lex $P2849
    get_hll_global $P2732, ["NQP";"RegexActions"], "_block2731" 
    capture_lex $P2732
    .const 'Sub' $P2721 = "149_1294592831.858" 
    capture_lex $P2721
    .const 'Sub' $P2714 = "148_1294592831.858" 
    capture_lex $P2714
    .const 'Sub' $P2707 = "147_1294592831.858" 
    capture_lex $P2707
    .const 'Sub' $P2700 = "146_1294592831.858" 
    capture_lex $P2700
    .const 'Sub' $P2687 = "145_1294592831.858" 
    capture_lex $P2687
    .const 'Sub' $P2677 = "144_1294592831.858" 
    capture_lex $P2677
    .const 'Sub' $P2667 = "143_1294592831.858" 
    capture_lex $P2667
    .const 'Sub' $P2657 = "142_1294592831.858" 
    capture_lex $P2657
    .const 'Sub' $P2650 = "141_1294592831.858" 
    capture_lex $P2650
    .const 'Sub' $P2636 = "140_1294592831.858" 
    capture_lex $P2636
    .const 'Sub' $P2626 = "139_1294592831.858" 
    capture_lex $P2626
    .const 'Sub' $P2589 = "138_1294592831.858" 
    capture_lex $P2589
    .const 'Sub' $P2575 = "137_1294592831.858" 
    capture_lex $P2575
    .const 'Sub' $P2565 = "136_1294592831.858" 
    capture_lex $P2565
    .const 'Sub' $P2555 = "135_1294592831.858" 
    capture_lex $P2555
    .const 'Sub' $P2545 = "134_1294592831.858" 
    capture_lex $P2545
    .const 'Sub' $P2535 = "133_1294592831.858" 
    capture_lex $P2535
    .const 'Sub' $P2525 = "132_1294592831.858" 
    capture_lex $P2525
    .const 'Sub' $P2497 = "131_1294592831.858" 
    capture_lex $P2497
    .const 'Sub' $P2480 = "130_1294592831.858" 
    capture_lex $P2480
    .const 'Sub' $P2470 = "129_1294592831.858" 
    capture_lex $P2470
    .const 'Sub' $P2457 = "128_1294592831.858" 
    capture_lex $P2457
    .const 'Sub' $P2444 = "127_1294592831.858" 
    capture_lex $P2444
    .const 'Sub' $P2431 = "126_1294592831.858" 
    capture_lex $P2431
    .const 'Sub' $P2421 = "125_1294592831.858" 
    capture_lex $P2421
    .const 'Sub' $P2392 = "124_1294592831.858" 
    capture_lex $P2392
    .const 'Sub' $P2368 = "123_1294592831.858" 
    capture_lex $P2368
    .const 'Sub' $P2358 = "122_1294592831.858" 
    capture_lex $P2358
    .const 'Sub' $P2348 = "121_1294592831.858" 
    capture_lex $P2348
    .const 'Sub' $P2321 = "120_1294592831.858" 
    capture_lex $P2321
    .const 'Sub' $P2303 = "119_1294592831.858" 
    capture_lex $P2303
    .const 'Sub' $P2293 = "118_1294592831.858" 
    capture_lex $P2293
    .const 'Sub' $P2189 = "115_1294592831.858" 
    capture_lex $P2189
    .const 'Sub' $P2179 = "114_1294592831.858" 
    capture_lex $P2179
    .const 'Sub' $P2150 = "113_1294592831.858" 
    capture_lex $P2150
    .const 'Sub' $P2108 = "112_1294592831.858" 
    capture_lex $P2108
    .const 'Sub' $P2092 = "111_1294592831.858" 
    capture_lex $P2092
    .const 'Sub' $P2083 = "110_1294592831.858" 
    capture_lex $P2083
    .const 'Sub' $P2037 = "109_1294592831.858" 
    capture_lex $P2037
    .const 'Sub' $P1938 = "106_1294592831.858" 
    capture_lex $P1938
    .const 'Sub' $P1896 = "104_1294592831.858" 
    capture_lex $P1896
    .const 'Sub' $P1886 = "103_1294592831.858" 
    capture_lex $P1886
    .const 'Sub' $P1869 = "102_1294592831.858" 
    capture_lex $P1869
    .const 'Sub' $P1849 = "101_1294592831.858" 
    capture_lex $P1849
    .const 'Sub' $P1737 = "98_1294592831.858" 
    capture_lex $P1737
    .const 'Sub' $P1668 = "94_1294592831.858" 
    capture_lex $P1668
    .const 'Sub' $P1539 = "88_1294592831.858" 
    capture_lex $P1539
    .const 'Sub' $P1467 = "85_1294592831.858" 
    capture_lex $P1467
    .const 'Sub' $P1457 = "84_1294592831.858" 
    capture_lex $P1457
    .const 'Sub' $P1447 = "83_1294592831.858" 
    capture_lex $P1447
    .const 'Sub' $P1347 = "80_1294592831.858" 
    capture_lex $P1347
    .const 'Sub' $P1337 = "79_1294592831.858" 
    capture_lex $P1337
    .const 'Sub' $P1320 = "78_1294592831.858" 
    capture_lex $P1320
    .const 'Sub' $P1303 = "77_1294592831.858" 
    capture_lex $P1303
    .const 'Sub' $P1286 = "76_1294592831.858" 
    capture_lex $P1286
    .const 'Sub' $P1276 = "75_1294592831.858" 
    capture_lex $P1276
    .const 'Sub' $P1266 = "74_1294592831.858" 
    capture_lex $P1266
    .const 'Sub' $P1256 = "73_1294592831.858" 
    capture_lex $P1256
    .const 'Sub' $P1232 = "72_1294592831.858" 
    capture_lex $P1232
    .const 'Sub' $P1221 = "71_1294592831.858" 
    capture_lex $P1221
    .const 'Sub' $P1212 = "70_1294592831.858" 
    capture_lex $P1212
    .const 'Sub' $P1203 = "69_1294592831.858" 
    capture_lex $P1203
    .const 'Sub' $P1194 = "68_1294592831.858" 
    capture_lex $P1194
    .const 'Sub' $P1185 = "67_1294592831.858" 
    capture_lex $P1185
    .const 'Sub' $P1175 = "66_1294592831.858" 
    capture_lex $P1175
    .const 'Sub' $P1080 = "64_1294592831.858" 
    capture_lex $P1080
    .const 'Sub' $P1054 = "63_1294592831.858" 
    capture_lex $P1054
    .const 'Sub' $P1038 = "62_1294592831.858" 
    capture_lex $P1038
    .const 'Sub' $P1028 = "61_1294592831.858" 
    capture_lex $P1028
    .const 'Sub' $P1018 = "60_1294592831.858" 
    capture_lex $P1018
    .const 'Sub' $P1008 = "59_1294592831.858" 
    capture_lex $P1008
    .const 'Sub' $P998 = "58_1294592831.858" 
    capture_lex $P998
    .const 'Sub' $P988 = "57_1294592831.858" 
    capture_lex $P988
    .const 'Sub' $P978 = "56_1294592831.858" 
    capture_lex $P978
    .const 'Sub' $P968 = "55_1294592831.858" 
    capture_lex $P968
    .const 'Sub' $P958 = "54_1294592831.858" 
    capture_lex $P958
    .const 'Sub' $P948 = "53_1294592831.858" 
    capture_lex $P948
    .const 'Sub' $P938 = "52_1294592831.858" 
    capture_lex $P938
    .const 'Sub' $P928 = "51_1294592831.858" 
    capture_lex $P928
    .const 'Sub' $P918 = "50_1294592831.858" 
    capture_lex $P918
    .const 'Sub' $P908 = "49_1294592831.858" 
    capture_lex $P908
    .const 'Sub' $P890 = "48_1294592831.858" 
    capture_lex $P890
    .const 'Sub' $P855 = "47_1294592831.858" 
    capture_lex $P855
    .const 'Sub' $P839 = "46_1294592831.858" 
    capture_lex $P839
    .const 'Sub' $P818 = "45_1294592831.858" 
    capture_lex $P818
    .const 'Sub' $P798 = "44_1294592831.858" 
    capture_lex $P798
    .const 'Sub' $P785 = "43_1294592831.858" 
    capture_lex $P785
    .const 'Sub' $P759 = "42_1294592831.858" 
    capture_lex $P759
    .const 'Sub' $P723 = "41_1294592831.858" 
    capture_lex $P723
    .const 'Sub' $P706 = "40_1294592831.858" 
    capture_lex $P706
    .const 'Sub' $P692 = "39_1294592831.858" 
    capture_lex $P692
    .const 'Sub' $P639 = "37_1294592831.858" 
    capture_lex $P639
    .const 'Sub' $P628 = "36_1294592831.858" 
    capture_lex $P628
    .const 'Sub' $P615 = "35_1294592831.858" 
    capture_lex $P615
    .const 'Sub' $P595 = "34_1294592831.858" 
    capture_lex $P595
    .const 'Sub' $P585 = "33_1294592831.858" 
    capture_lex $P585
    .const 'Sub' $P575 = "32_1294592831.858" 
    capture_lex $P575
    .const 'Sub' $P559 = "31_1294592831.858" 
    capture_lex $P559
    .const 'Sub' $P476 = "29_1294592831.858" 
    capture_lex $P476
    .const 'Sub' $P433 = "27_1294592831.858" 
    capture_lex $P433
    .const 'Sub' $P397 = "26_1294592831.858" 
    capture_lex $P397
    .const 'Sub' $P364 = "25_1294592831.858" 
    capture_lex $P364
    .const 'Sub' $P354 = "24_1294592831.858" 
    capture_lex $P354
    .const 'Sub' $P335 = "23_1294592831.858" 
    capture_lex $P335
    .const 'Sub' $P281 = "22_1294592831.858" 
    capture_lex $P281
    .const 'Sub' $P151 = "19_1294592831.858" 
    capture_lex $P151
    .const 'Sub' $P100 = "18_1294592831.858" 
    capture_lex $P100
    .const 'Sub' $P84 = "17_1294592831.858" 
    capture_lex $P84
    .const 'Sub' $P63 = "16_1294592831.858" 
    capture_lex $P63
    .const 'Sub' $P27 = "13_1294592831.858" 
    capture_lex $P27
    .const 'Sub' $P16 = "12_1294592831.858" 
    capture_lex $P16
    nqp_dynop_setup 
    get_global $P15, "@BLOCK"
    unless_null $P15, vivify_164
    $P15 = root_new ['parrot';'ResizablePMCArray']
    set_global "@BLOCK", $P15
  vivify_164:
.annotate 'line', 9
    .const 'Sub' $P16 = "12_1294592831.858" 
    newclosure $P26, $P16
    .lex "xblock_immediate", $P26
.annotate 'line', 14
    .const 'Sub' $P27 = "13_1294592831.858" 
    newclosure $P62, $P27
    .lex "block_immediate", $P62
.annotate 'line', 24
    .const 'Sub' $P63 = "16_1294592831.858" 
    newclosure $P83, $P63
    .lex "vivitype", $P83
.annotate 'line', 43
    .const 'Sub' $P84 = "17_1294592831.858" 
    newclosure $P99, $P84
    .lex "colonpair_str", $P99
.annotate 'line', 227
    .const 'Sub' $P100 = "18_1294592831.858" 
    newclosure $P150, $P100
    .lex "push_block_handler", $P150
.annotate 'line', 382
    .const 'Sub' $P151 = "19_1294592831.858" 
    newclosure $P280, $P151
    .lex "package", $P280
.annotate 'line', 457
    .const 'Sub' $P281 = "22_1294592831.858" 
    newclosure $P334, $P281
    .lex "old_package", $P334
.annotate 'line', 1016
    .const 'Sub' $P335 = "23_1294592831.858" 
    newclosure $P349, $P335
    .lex "control", $P349
.annotate 'line', 3
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
    get_global $P350, "@BLOCK"
.annotate 'line', 5
    find_lex $P351, "xblock_immediate"
    find_lex $P352, "block_immediate"
    find_lex $P353, "vivitype"
.annotate 'line', 35
    find_lex $P396, "colonpair_str"
.annotate 'line', 220
    find_lex $P838, "push_block_handler"
.annotate 'line', 380
    find_lex $P1230, "package"
    find_lex $P1231, "old_package"
.annotate 'line', 1007
    find_lex $P2699, "control"
.annotate 'line', 1034
    get_hll_global $P2732, ["NQP";"RegexActions"], "_block2731" 
    capture_lex $P2732
    $P2843 = $P2732()
.annotate 'line', 3
    .return ($P2843)
    .const 'Sub' $P2845 = "158_1294592831.858" 
    .return ($P2845)
.end


.namespace ["NQP";"Actions"]
.sub "" :load :init :subid("post162") :outer("11_1294592831.858")
.annotate 'line', 3
    get_hll_global $P14, ["NQP";"Actions"], "_block13" 
    .local pmc block
    set block, $P14
.annotate 'line', 5
    .const 'Sub' $P2849 = "159_1294592831.858" 
    capture_lex $P2849
    $P2849()
    $P2852 = get_root_global ["parrot"], "P6metaclass"
    $P2852."new_class"("NQP::RegexActions", "Regex::P6Regex::Actions" :named("parent"))
.end


.namespace ["NQP";"Actions"]
.sub "_block2848"  :anon :subid("159_1294592831.858") :outer("11_1294592831.858")
.annotate 'line', 6
    get_global $P2850, "@BLOCK"
    unless_null $P2850, vivify_163
    $P2850 = root_new ['parrot';'ResizablePMCArray']
    set_global "@BLOCK", $P2850
  vivify_163:
 $P2851 = new ['ResizablePMCArray'] 
    set_global "@BLOCK", $P2851
.annotate 'line', 5
    .return ($P2851)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "xblock_immediate"  :subid("12_1294592831.858") :outer("11_1294592831.858")
    .param pmc param_19
.annotate 'line', 9
    new $P18, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P18, control_17
    push_eh $P18
    .lex "$xblock", param_19
.annotate 'line', 10
    find_lex $P20, "$xblock"
    unless_null $P20, vivify_165
    $P20 = root_new ['parrot';'ResizablePMCArray']
  vivify_165:
    set $P21, $P20[1]
    unless_null $P21, vivify_166
    new $P21, "Undef"
  vivify_166:
    $P22 = "block_immediate"($P21)
    find_lex $P23, "$xblock"
    unless_null $P23, vivify_167
    $P23 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$xblock", $P23
  vivify_167:
    set $P23[1], $P22
    find_lex $P24, "$xblock"
.annotate 'line', 9
    .return ($P24)
  control_17:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P25, exception, "payload"
    .return ($P25)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "block_immediate"  :subid("13_1294592831.858") :outer("11_1294592831.858")
    .param pmc param_30
.annotate 'line', 14
    .const 'Sub' $P40 = "14_1294592831.858" 
    capture_lex $P40
    new $P29, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P29, control_28
    push_eh $P29
    .lex "$block", param_30
.annotate 'line', 15
    find_lex $P31, "$block"
    $P31."blocktype"("immediate")
.annotate 'line', 16
    find_lex $P35, "$block"
    $P36 = $P35."symtable"()
    unless $P36, unless_34
    set $P33, $P36
    goto unless_34_end
  unless_34:
    find_lex $P37, "$block"
    $P38 = $P37."handlers"()
    set $P33, $P38
  unless_34_end:
    if $P33, unless_32_end
    .const 'Sub' $P40 = "14_1294592831.858" 
    capture_lex $P40
    $P40()
  unless_32_end:
    find_lex $P60, "$block"
.annotate 'line', 14
    .return ($P60)
  control_28:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P61, exception, "payload"
    .return ($P61)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "_block39"  :anon :subid("14_1294592831.858") :outer("13_1294592831.858")
.annotate 'line', 16
    .const 'Sub' $P51 = "15_1294592831.858" 
    capture_lex $P51
.annotate 'line', 17
    new $P41, "Undef"
    .lex "$stmts", $P41
    get_hll_global $P42, ["PAST"], "Stmts"
    find_lex $P43, "$block"
    $P44 = $P42."new"($P43 :named("node"))
    store_lex "$stmts", $P44
.annotate 'line', 18
    find_lex $P46, "$block"
    $P47 = $P46."list"()
    defined $I48, $P47
    unless $I48, for_undef_168
    iter $P45, $P47
    new $P57, 'ExceptionHandler'
    set_addr $P57, loop56_handler
    $P57."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P57
  loop56_test:
    unless $P45, loop56_done
    shift $P49, $P45
  loop56_redo:
    .const 'Sub' $P51 = "15_1294592831.858" 
    capture_lex $P51
    $P51($P49)
  loop56_next:
    goto loop56_test
  loop56_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P58, exception, 'type'
    eq $P58, .CONTROL_LOOP_NEXT, loop56_next
    eq $P58, .CONTROL_LOOP_REDO, loop56_redo
  loop56_done:
    pop_eh 
  for_undef_168:
.annotate 'line', 19
    find_lex $P59, "$stmts"
    store_lex "$block", $P59
.annotate 'line', 16
    .return ($P59)
.end


.namespace ["NQP";"Actions"]
.sub "_block50"  :anon :subid("15_1294592831.858") :outer("14_1294592831.858")
    .param pmc param_52
.annotate 'line', 18
    .lex "$_", param_52
    find_lex $P53, "$stmts"
    find_lex $P54, "$_"
    $P55 = $P53."push"($P54)
    .return ($P55)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "vivitype"  :subid("16_1294592831.858") :outer("11_1294592831.858")
    .param pmc param_66
.annotate 'line', 24
    new $P65, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P65, control_64
    push_eh $P65
    .lex "$sigil", param_66
.annotate 'line', 25
    find_lex $P69, "$sigil"
    set $S70, $P69
    iseq $I71, $S70, "%"
    if $I71, if_68
.annotate 'line', 27
    find_lex $P76, "$sigil"
    set $S77, $P76
    iseq $I78, $S77, "@"
    if $I78, if_75
    new $P81, "String"
    assign $P81, "Undef"
    set $P74, $P81
    goto if_75_end
  if_75:
.annotate 'line', 28
    get_hll_global $P79, ["PAST"], "Op"
    $P80 = $P79."new"("    %r = root_new ['parrot';'ResizablePMCArray']" :named("inline"))
    set $P74, $P80
  if_75_end:
    set $P67, $P74
.annotate 'line', 25
    goto if_68_end
  if_68:
.annotate 'line', 26
    get_hll_global $P72, ["PAST"], "Op"
    $P73 = $P72."new"("    %r = root_new ['parrot';'Hash']" :named("inline"))
    set $P67, $P73
  if_68_end:
.annotate 'line', 24
    .return ($P67)
  control_64:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P82, exception, "payload"
    .return ($P82)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "colonpair_str"  :subid("17_1294592831.858") :outer("11_1294592831.858")
    .param pmc param_87
.annotate 'line', 43
    new $P86, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P86, control_85
    push_eh $P86
    .lex "$ast", param_87
.annotate 'line', 44
    get_hll_global $P90, ["PAST"], "Op"
    find_lex $P91, "$ast"
    $P92 = $P90."ACCEPTS"($P91)
    if $P92, if_89
.annotate 'line', 46
    find_lex $P96, "$ast"
    $P97 = $P96."value"()
    set $P88, $P97
.annotate 'line', 44
    goto if_89_end
  if_89:
.annotate 'line', 45
    find_lex $P93, "$ast"
    $P94 = $P93."list"()
    join $S95, " ", $P94
    new $P88, 'String'
    set $P88, $S95
  if_89_end:
.annotate 'line', 43
    .return ($P88)
  control_85:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P98, exception, "payload"
    .return ($P98)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "push_block_handler"  :subid("18_1294592831.858") :outer("11_1294592831.858")
    .param pmc param_103
    .param pmc param_104
.annotate 'line', 227
    new $P102, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P102, control_101
    push_eh $P102
    .lex "$/", param_103
    .lex "$block", param_104
.annotate 'line', 228
    get_global $P106, "@BLOCK"
    unless_null $P106, vivify_169
    $P106 = root_new ['parrot';'ResizablePMCArray']
  vivify_169:
    set $P107, $P106[0]
    unless_null $P107, vivify_170
    new $P107, "Undef"
  vivify_170:
    $P108 = $P107."handlers"()
    if $P108, unless_105_end
.annotate 'line', 229
    get_global $P109, "@BLOCK"
    unless_null $P109, vivify_171
    $P109 = root_new ['parrot';'ResizablePMCArray']
  vivify_171:
    set $P110, $P109[0]
    unless_null $P110, vivify_172
    new $P110, "Undef"
  vivify_172:
    new $P111, "ResizablePMCArray"
    $P110."handlers"($P111)
  unless_105_end:
.annotate 'line', 231
    find_lex $P113, "$block"
    $P114 = $P113."arity"()
    if $P114, unless_112_end
.annotate 'line', 232
    find_lex $P115, "$block"
.annotate 'line', 233
    get_hll_global $P116, ["PAST"], "Op"
.annotate 'line', 234
    get_hll_global $P117, ["PAST"], "Var"
    $P118 = $P117."new"("lexical" :named("scope"), "$!" :named("name"), 1 :named("isdecl"))
.annotate 'line', 235
    get_hll_global $P119, ["PAST"], "Var"
    $P120 = $P119."new"("lexical" :named("scope"), "$_" :named("name"))
    $P121 = $P116."new"($P118, $P120, "bind" :named("pasttype"))
.annotate 'line', 233
    $P115."unshift"($P121)
.annotate 'line', 238
    find_lex $P122, "$block"
    get_hll_global $P123, ["PAST"], "Var"
    $P124 = $P123."new"("$_" :named("name"), "parameter" :named("scope"))
    $P122."unshift"($P124)
.annotate 'line', 239
    find_lex $P125, "$block"
    $P125."symbol"("$_", "lexical" :named("scope"))
.annotate 'line', 240
    find_lex $P126, "$block"
    $P126."symbol"("$!", "lexical" :named("scope"))
.annotate 'line', 241
    find_lex $P127, "$block"
    $P127."arity"(1)
  unless_112_end:
.annotate 'line', 243
    find_lex $P128, "$block"
    $P128."blocktype"("declaration")
.annotate 'line', 244
    get_global $P129, "@BLOCK"
    unless_null $P129, vivify_173
    $P129 = root_new ['parrot';'ResizablePMCArray']
  vivify_173:
    set $P130, $P129[0]
    unless_null $P130, vivify_174
    new $P130, "Undef"
  vivify_174:
    $P131 = $P130."handlers"()
.annotate 'line', 245
    get_hll_global $P132, ["PAST"], "Control"
    find_lex $P133, "$/"
.annotate 'line', 247
    get_hll_global $P134, ["PAST"], "Stmts"
.annotate 'line', 248
    get_hll_global $P135, ["PAST"], "Op"
    find_lex $P136, "$block"
.annotate 'line', 250
    get_hll_global $P137, ["PAST"], "Var"
    $P138 = $P137."new"("register" :named("scope"), "exception" :named("name"))
    $P139 = $P135."new"($P136, $P138, "call" :named("pasttype"))
.annotate 'line', 252
    get_hll_global $P140, ["PAST"], "Op"
.annotate 'line', 253
    get_hll_global $P141, ["PAST"], "Var"
.annotate 'line', 254
    get_hll_global $P142, ["PAST"], "Var"
    $P143 = $P142."new"("register" :named("scope"), "exception" :named("name"))
    $P144 = $P141."new"($P143, "handled", "keyed" :named("scope"))
.annotate 'line', 253
    $P145 = $P140."new"($P144, 1, "bind" :named("pasttype"))
.annotate 'line', 252
    $P146 = $P134."new"($P139, $P145)
.annotate 'line', 247
    $P147 = $P132."new"($P146, $P133 :named("node"))
.annotate 'line', 245
    $P148 = $P131."unshift"($P147)
.annotate 'line', 227
    .return ($P148)
  control_101:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P149, exception, "payload"
    .return ($P149)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "package"  :subid("19_1294592831.858") :outer("11_1294592831.858")
    .param pmc param_154
.annotate 'line', 382
    .const 'Sub' $P221 = "21_1294592831.858" 
    capture_lex $P221
    .const 'Sub' $P202 = "20_1294592831.858" 
    capture_lex $P202
    new $P153, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P153, control_152
    push_eh $P153
    .lex "$/", param_154
.annotate 'line', 383
    $P155 = root_new ['parrot';'ResizablePMCArray']
    .lex "@ns", $P155
.annotate 'line', 384
    new $P156, "Undef"
    .lex "$name", $P156
.annotate 'line', 445
    new $P157, "Undef"
    .lex "$past", $P157
.annotate 'line', 383
    find_lex $P158, "$/"
    unless_null $P158, vivify_175
    $P158 = root_new ['parrot';'Hash']
  vivify_175:
    set $P159, $P158["package_def"]
    unless_null $P159, vivify_176
    $P159 = root_new ['parrot';'Hash']
  vivify_176:
    set $P160, $P159["name"]
    unless_null $P160, vivify_177
    $P160 = root_new ['parrot';'Hash']
  vivify_177:
    set $P161, $P160["identifier"]
    unless_null $P161, vivify_178
    new $P161, "Undef"
  vivify_178:
    clone $P162, $P161
    store_lex "@ns", $P162
.annotate 'line', 384
    find_lex $P163, "@ns"
    $P164 = $P163."pop"()
    set $S165, $P164
    new $P166, 'String'
    set $P166, $S165
    store_lex "$name", $P166
.annotate 'line', 388
    find_dynamic_lex $P167, "$*PACKAGE-SETUP"
    unless_null $P167, vivify_179
    get_hll_global $P167, "$PACKAGE-SETUP"
    unless_null $P167, vivify_180
    die "Contextual $*PACKAGE-SETUP not found"
  vivify_180:
  vivify_179:
    get_hll_global $P168, ["PAST"], "Stmts"
.annotate 'line', 389
    get_hll_global $P169, ["PAST"], "Op"
.annotate 'line', 390
    get_hll_global $P170, ["PAST"], "Var"
    $P171 = $P170."new"("type_obj" :named("name"), "register" :named("scope"), 1 :named("isdecl"))
.annotate 'line', 391
    get_hll_global $P172, ["PAST"], "Op"
.annotate 'line', 393
    get_hll_global $P173, ["PAST"], "Var"
    find_lex $P174, "$/"
    unless_null $P174, vivify_181
    $P174 = root_new ['parrot';'Hash']
  vivify_181:
    set $P175, $P174["sym"]
    unless_null $P175, vivify_182
    new $P175, "Undef"
  vivify_182:
    set $S176, $P175
    find_dynamic_lex $P177, "%*HOW"
    unless_null $P177, vivify_183
    get_hll_global $P177, "%HOW"
    unless_null $P177, vivify_184
    die "Contextual %*HOW not found"
  vivify_184:
  vivify_183:
    set $P178, $P177[$S176]
    unless_null $P178, vivify_185
    new $P178, "Undef"
  vivify_185:
    $P179 = $P173."new"($P178 :named("name"), "" :named("namespace"), "package" :named("scope"))
    $P180 = $P172."new"($P179, "callmethod" :named("pasttype"), "new_type" :named("name"))
.annotate 'line', 391
    $P181 = $P169."new"($P171, $P180, "bind" :named("pasttype"))
.annotate 'line', 396
    get_hll_global $P182, ["PAST"], "Op"
.annotate 'line', 397
    get_hll_global $P183, ["PAST"], "Var"
    find_lex $P184, "$name"
    find_lex $P185, "@ns"
    $P186 = $P183."new"($P184 :named("name"), $P185 :named("namespace"), "package" :named("scope"))
.annotate 'line', 398
    get_hll_global $P187, ["PAST"], "Var"
    $P188 = $P187."new"("type_obj" :named("name"), "register" :named("scope"))
    $P189 = $P182."new"($P186, $P188, "bind" :named("pasttype"))
.annotate 'line', 400
    get_hll_global $P190, ["PAST"], "Op"
.annotate 'line', 401
    get_hll_global $P191, ["PAST"], "Var"
    $P192 = $P191."new"("$?CLASS" :named("name"))
.annotate 'line', 402
    get_hll_global $P193, ["PAST"], "Var"
    $P194 = $P193."new"("type_obj" :named("name"), "register" :named("scope"))
    $P195 = $P190."new"($P192, $P194, "bind" :named("pasttype"))
.annotate 'line', 400
    $P196 = $P168."new"($P181, $P189, $P195)
.annotate 'line', 388
    $P167."unshift"($P196)
.annotate 'line', 406
    find_lex $P198, "$/"
    unless_null $P198, vivify_186
    $P198 = root_new ['parrot';'Hash']
  vivify_186:
    set $P199, $P198["package_def"]
    unless_null $P199, vivify_187
    $P199 = root_new ['parrot';'Hash']
  vivify_187:
    set $P200, $P199["repr"]
    unless_null $P200, vivify_188
    new $P200, "Undef"
  vivify_188:
    unless $P200, if_197_end
    .const 'Sub' $P202 = "20_1294592831.858" 
    capture_lex $P202
    $P202()
  if_197_end:
.annotate 'line', 414
    find_lex $P217, "$/"
    unless_null $P217, vivify_198
    $P217 = root_new ['parrot';'Hash']
  vivify_198:
    set $P218, $P217["package_def"]
    unless_null $P218, vivify_199
    $P218 = root_new ['parrot';'Hash']
  vivify_199:
    set $P219, $P218["parent"]
    unless_null $P219, vivify_200
    new $P219, "Undef"
  vivify_200:
    unless $P219, if_216_end
    .const 'Sub' $P221 = "21_1294592831.858" 
    capture_lex $P221
    $P221()
  if_216_end:
.annotate 'line', 430
    find_dynamic_lex $P249, "$*PACKAGE-SETUP"
    unless_null $P249, vivify_208
    get_hll_global $P249, "$PACKAGE-SETUP"
    unless_null $P249, vivify_209
    die "Contextual $*PACKAGE-SETUP not found"
  vivify_209:
  vivify_208:
    get_hll_global $P250, ["PAST"], "Op"
.annotate 'line', 432
    get_hll_global $P251, ["PAST"], "Op"
.annotate 'line', 435
    get_hll_global $P252, ["PAST"], "Var"
    $P253 = $P252."new"("type_obj" :named("name"), "register" :named("scope"))
    $P254 = $P251."new"($P253, "get_how PP" :named("pirop"))
.annotate 'line', 437
    get_hll_global $P255, ["PAST"], "Var"
    $P256 = $P255."new"("type_obj" :named("name"), "register" :named("scope"))
    $P257 = $P250."new"($P254, $P256, "callmethod" :named("pasttype"), "compose" :named("name"))
.annotate 'line', 430
    $P249."push"($P257)
.annotate 'line', 441
    get_global $P258, "@BLOCK"
    unless_null $P258, vivify_210
    $P258 = root_new ['parrot';'ResizablePMCArray']
  vivify_210:
    set $P259, $P258[0]
    unless_null $P259, vivify_211
    $P259 = root_new ['parrot';'ResizablePMCArray']
  vivify_211:
    set $P260, $P259[0]
    unless_null $P260, vivify_212
    new $P260, "Undef"
  vivify_212:
    get_hll_global $P261, ["PAST"], "Var"
    find_lex $P262, "$name"
    find_lex $P263, "@ns"
    $P264 = $P261."new"($P262 :named("name"), $P263 :named("namespace"), "package" :named("scope"), 1 :named("isdecl"))
    $P260."unshift"($P264)
.annotate 'line', 445
    find_lex $P265, "$/"
    unless_null $P265, vivify_213
    $P265 = root_new ['parrot';'Hash']
  vivify_213:
    set $P266, $P265["package_def"]
    unless_null $P266, vivify_214
    new $P266, "Undef"
  vivify_214:
    $P267 = $P266."ast"()
    store_lex "$past", $P267
.annotate 'line', 446
    find_lex $P268, "$past"
    get_hll_global $P269, ["PAST"], "Var"
    $P270 = $P269."new"("$?CLASS" :named("name"), "package" :named("scope"), 1 :named("isdecl"))
    $P268."unshift"($P270)
.annotate 'line', 447
    find_lex $P271, "$past"
    $P271."symbol"("$?CLASS", "package" :named("scope"))
.annotate 'line', 450
    find_lex $P272, "$past"
    $P273 = $P272."loadinit"()
    get_hll_global $P274, ["PAST"], "Block"
    find_dynamic_lex $P275, "$*PACKAGE-SETUP"
    unless_null $P275, vivify_215
    get_hll_global $P275, "$PACKAGE-SETUP"
    unless_null $P275, vivify_216
    die "Contextual $*PACKAGE-SETUP not found"
  vivify_216:
  vivify_215:
    $P276 = $P274."new"($P275, "immediate" :named("blocktype"))
    $P273."push"($P276)
.annotate 'line', 452
    new $P277, "Exception"
    set $P277['type'], .CONTROL_RETURN
    find_lex $P278, "$past"
    setattribute $P277, 'payload', $P278
    throw $P277
.annotate 'line', 382
    .return ()
  control_152:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P279, exception, "payload"
    .return ($P279)
.end


.namespace ["NQP";"Actions"]
.sub "_block201"  :anon :subid("20_1294592831.858") :outer("19_1294592831.858")
.annotate 'line', 407
    new $P203, "Undef"
    .lex "$repr_name", $P203
    find_lex $P204, "$/"
    unless_null $P204, vivify_189
    $P204 = root_new ['parrot';'Hash']
  vivify_189:
    set $P205, $P204["package_def"]
    unless_null $P205, vivify_190
    $P205 = root_new ['parrot';'Hash']
  vivify_190:
    set $P206, $P205["repr"]
    unless_null $P206, vivify_191
    $P206 = root_new ['parrot';'ResizablePMCArray']
  vivify_191:
    set $P207, $P206[0]
    unless_null $P207, vivify_192
    new $P207, "Undef"
  vivify_192:
    $P208 = $P207."ast"()
    store_lex "$repr_name", $P208
.annotate 'line', 408
    find_lex $P209, "$repr_name"
    $P209."named"("repr")
.annotate 'line', 409
    find_dynamic_lex $P210, "$*PACKAGE-SETUP"
    unless_null $P210, vivify_193
    get_hll_global $P210, "$PACKAGE-SETUP"
    unless_null $P210, vivify_194
    die "Contextual $*PACKAGE-SETUP not found"
  vivify_194:
  vivify_193:
    set $P211, $P210[0]
    unless_null $P211, vivify_195
    $P211 = root_new ['parrot';'ResizablePMCArray']
  vivify_195:
    set $P212, $P211[0]
    unless_null $P212, vivify_196
    $P212 = root_new ['parrot';'ResizablePMCArray']
  vivify_196:
    set $P213, $P212[1]
    unless_null $P213, vivify_197
    new $P213, "Undef"
  vivify_197:
    find_lex $P214, "$repr_name"
    $P215 = $P213."push"($P214)
.annotate 'line', 406
    .return ($P215)
.end


.namespace ["NQP";"Actions"]
.sub "_block220"  :anon :subid("21_1294592831.858") :outer("19_1294592831.858")
.annotate 'line', 415
    $P222 = root_new ['parrot';'ResizablePMCArray']
    .lex "@ns", $P222
.annotate 'line', 416
    new $P223, "Undef"
    .lex "$name", $P223
.annotate 'line', 415
    find_lex $P224, "$/"
    unless_null $P224, vivify_201
    $P224 = root_new ['parrot';'Hash']
  vivify_201:
    set $P225, $P224["package_def"]
    unless_null $P225, vivify_202
    $P225 = root_new ['parrot';'Hash']
  vivify_202:
    set $P226, $P225["parent"]
    unless_null $P226, vivify_203
    $P226 = root_new ['parrot';'ResizablePMCArray']
  vivify_203:
    set $P227, $P226[0]
    unless_null $P227, vivify_204
    $P227 = root_new ['parrot';'Hash']
  vivify_204:
    set $P228, $P227["identifier"]
    unless_null $P228, vivify_205
    new $P228, "Undef"
  vivify_205:
    clone $P229, $P228
    store_lex "@ns", $P229
.annotate 'line', 416
    find_lex $P230, "@ns"
    $P231 = $P230."pop"()
    set $S232, $P231
    new $P233, 'String'
    set $P233, $S232
    store_lex "$name", $P233
.annotate 'line', 417
    find_dynamic_lex $P234, "$*PACKAGE-SETUP"
    unless_null $P234, vivify_206
    get_hll_global $P234, "$PACKAGE-SETUP"
    unless_null $P234, vivify_207
    die "Contextual $*PACKAGE-SETUP not found"
  vivify_207:
  vivify_206:
    get_hll_global $P235, ["PAST"], "Op"
.annotate 'line', 419
    get_hll_global $P236, ["PAST"], "Op"
.annotate 'line', 422
    get_hll_global $P237, ["PAST"], "Var"
    $P238 = $P237."new"("type_obj" :named("name"), "register" :named("scope"))
    $P239 = $P236."new"($P238, "get_how PP" :named("pirop"))
.annotate 'line', 424
    get_hll_global $P240, ["PAST"], "Var"
    $P241 = $P240."new"("type_obj" :named("name"), "register" :named("scope"))
.annotate 'line', 425
    get_hll_global $P242, ["PAST"], "Var"
    find_lex $P243, "$name"
    set $S244, $P243
    find_lex $P245, "@ns"
    $P246 = $P242."new"($S244 :named("name"), $P245 :named("namespace"), "package" :named("scope"))
    $P247 = $P235."new"($P239, $P241, $P246, "callmethod" :named("pasttype"), "add_parent" :named("name"))
.annotate 'line', 417
    $P248 = $P234."push"($P247)
.annotate 'line', 414
    .return ($P248)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "old_package"  :subid("22_1294592831.858") :outer("11_1294592831.858")
    .param pmc param_284
.annotate 'line', 457
    new $P283, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P283, control_282
    push_eh $P283
    .lex "$/", param_284
.annotate 'line', 458
    new $P285, "Undef"
    .lex "$past", $P285
.annotate 'line', 459
    new $P286, "Undef"
    .lex "$classinit", $P286
.annotate 'line', 468
    new $P287, "Undef"
    .lex "$parent", $P287
.annotate 'line', 458
    find_lex $P288, "$/"
    unless_null $P288, vivify_217
    $P288 = root_new ['parrot';'Hash']
  vivify_217:
    set $P289, $P288["package_def"]
    unless_null $P289, vivify_218
    new $P289, "Undef"
  vivify_218:
    $P290 = $P289."ast"()
    store_lex "$past", $P290
.annotate 'line', 460
    get_hll_global $P291, ["PAST"], "Op"
.annotate 'line', 461
    get_hll_global $P292, ["PAST"], "Op"
    $P293 = $P292."new"("    %r = get_root_global [\"parrot\"], \"P6metaclass\"" :named("inline"))
.annotate 'line', 464
    find_lex $P294, "$/"
    unless_null $P294, vivify_219
    $P294 = root_new ['parrot';'Hash']
  vivify_219:
    set $P295, $P294["package_def"]
    unless_null $P295, vivify_220
    $P295 = root_new ['parrot';'Hash']
  vivify_220:
    set $P296, $P295["name"]
    unless_null $P296, vivify_221
    new $P296, "Undef"
  vivify_221:
    set $S297, $P296
    $P298 = $P291."new"($P293, $S297, "new_class" :named("name"), "callmethod" :named("pasttype"))
.annotate 'line', 460
    store_lex "$classinit", $P298
.annotate 'line', 468
    find_lex $P301, "$/"
    unless_null $P301, vivify_222
    $P301 = root_new ['parrot';'Hash']
  vivify_222:
    set $P302, $P301["package_def"]
    unless_null $P302, vivify_223
    $P302 = root_new ['parrot';'Hash']
  vivify_223:
    set $P303, $P302["parent"]
    unless_null $P303, vivify_224
    $P303 = root_new ['parrot';'ResizablePMCArray']
  vivify_224:
    set $P304, $P303[0]
    unless_null $P304, vivify_225
    new $P304, "Undef"
  vivify_225:
    set $S305, $P304
    unless $S305, unless_300
    new $P299, 'String'
    set $P299, $S305
    goto unless_300_end
  unless_300:
.annotate 'line', 469
    find_lex $P308, "$/"
    unless_null $P308, vivify_226
    $P308 = root_new ['parrot';'Hash']
  vivify_226:
    set $P309, $P308["sym"]
    unless_null $P309, vivify_227
    new $P309, "Undef"
  vivify_227:
    set $S310, $P309
    iseq $I311, $S310, "grammar"
    if $I311, if_307
    new $P313, "String"
    assign $P313, ""
    set $P306, $P313
    goto if_307_end
  if_307:
    new $P312, "String"
    assign $P312, "Regex::Cursor"
    set $P306, $P312
  if_307_end:
    set $P299, $P306
  unless_300_end:
    store_lex "$parent", $P299
.annotate 'line', 470
    find_lex $P315, "$parent"
    unless $P315, if_314_end
.annotate 'line', 471
    find_lex $P316, "$classinit"
    get_hll_global $P317, ["PAST"], "Val"
    find_lex $P318, "$parent"
    $P319 = $P317."new"($P318 :named("value"), "parent" :named("named"))
    $P316."push"($P319)
  if_314_end:
.annotate 'line', 473
    find_lex $P321, "$past"
    unless_null $P321, vivify_228
    $P321 = root_new ['parrot';'Hash']
  vivify_228:
    set $P322, $P321["attributes"]
    unless_null $P322, vivify_229
    new $P322, "Undef"
  vivify_229:
    unless $P322, if_320_end
.annotate 'line', 474
    find_lex $P323, "$classinit"
    find_lex $P324, "$past"
    unless_null $P324, vivify_230
    $P324 = root_new ['parrot';'Hash']
  vivify_230:
    set $P325, $P324["attributes"]
    unless_null $P325, vivify_231
    new $P325, "Undef"
  vivify_231:
    $P323."push"($P325)
  if_320_end:
.annotate 'line', 476
    get_global $P326, "@BLOCK"
    unless_null $P326, vivify_232
    $P326 = root_new ['parrot';'ResizablePMCArray']
  vivify_232:
    set $P327, $P326[0]
    unless_null $P327, vivify_233
    new $P327, "Undef"
  vivify_233:
    $P328 = $P327."loadinit"()
    find_lex $P329, "$classinit"
    $P328."push"($P329)
.annotate 'line', 477
    find_lex $P330, "$/"
    find_lex $P331, "$past"
    $P332 = $P330."!make"($P331)
.annotate 'line', 457
    .return ($P332)
  control_282:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P333, exception, "payload"
    .return ($P333)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "control"  :subid("23_1294592831.858") :outer("11_1294592831.858")
    .param pmc param_338
    .param pmc param_339
.annotate 'line', 1016
    new $P337, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P337, control_336
    push_eh $P337
    .lex "$/", param_338
    .lex "$type", param_339
.annotate 'line', 1017
    find_lex $P340, "$/"
    get_hll_global $P341, ["PAST"], "Op"
    find_lex $P342, "$/"
.annotate 'line', 1021
    get_hll_global $P343, ["PAST"], "Val"
    find_lex $P344, "$type"
    $P345 = $P343."new"($P344 :named("value"), "!except_types" :named("returns"))
    $P346 = $P341."new"(0, $P345, $P342 :named("node"), "die__vii" :named("pirop"))
.annotate 'line', 1017
    $P347 = $P340."!make"($P346)
.annotate 'line', 1016
    .return ($P347)
  control_336:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P348, exception, "payload"
    .return ($P348)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "TOP"  :subid("24_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_357
.annotate 'line', 33
    new $P356, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P356, control_355
    push_eh $P356
    .lex "self", self
    .lex "$/", param_357
    find_lex $P358, "$/"
    find_lex $P359, "$/"
    unless_null $P359, vivify_234
    $P359 = root_new ['parrot';'Hash']
  vivify_234:
    set $P360, $P359["comp_unit"]
    unless_null $P360, vivify_235
    new $P360, "Undef"
  vivify_235:
    $P361 = $P360."ast"()
    $P362 = $P358."!make"($P361)
    .return ($P362)
  control_355:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P363, exception, "payload"
    .return ($P363)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "deflongname"  :subid("25_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_367
.annotate 'line', 35
    new $P366, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P366, control_365
    push_eh $P366
    .lex "self", self
    .lex "$/", param_367
.annotate 'line', 36
    find_lex $P368, "$/"
.annotate 'line', 37
    find_lex $P371, "$/"
    unless_null $P371, vivify_236
    $P371 = root_new ['parrot';'Hash']
  vivify_236:
    set $P372, $P371["colonpair"]
    unless_null $P372, vivify_237
    new $P372, "Undef"
  vivify_237:
    if $P372, if_370
.annotate 'line', 39
    find_lex $P392, "$/"
    set $S393, $P392
    new $P369, 'String'
    set $P369, $S393
.annotate 'line', 37
    goto if_370_end
  if_370:
    find_lex $P373, "$/"
    unless_null $P373, vivify_238
    $P373 = root_new ['parrot';'Hash']
  vivify_238:
    set $P374, $P373["identifier"]
    unless_null $P374, vivify_239
    new $P374, "Undef"
  vivify_239:
    set $S375, $P374
    new $P376, 'String'
    set $P376, $S375
    concat $P377, $P376, ":"
    find_lex $P378, "$/"
    unless_null $P378, vivify_240
    $P378 = root_new ['parrot';'Hash']
  vivify_240:
    set $P379, $P378["colonpair"]
    unless_null $P379, vivify_241
    $P379 = root_new ['parrot';'ResizablePMCArray']
  vivify_241:
    set $P380, $P379[0]
    unless_null $P380, vivify_242
    new $P380, "Undef"
  vivify_242:
    $P381 = $P380."ast"()
    $S382 = $P381."named"()
    concat $P383, $P377, $S382
    concat $P384, $P383, "<"
.annotate 'line', 38
    find_lex $P385, "$/"
    unless_null $P385, vivify_243
    $P385 = root_new ['parrot';'Hash']
  vivify_243:
    set $P386, $P385["colonpair"]
    unless_null $P386, vivify_244
    $P386 = root_new ['parrot';'ResizablePMCArray']
  vivify_244:
    set $P387, $P386[0]
    unless_null $P387, vivify_245
    new $P387, "Undef"
  vivify_245:
    $P388 = $P387."ast"()
    $S389 = "colonpair_str"($P388)
    concat $P390, $P384, $S389
    concat $P391, $P390, ">"
    set $P369, $P391
  if_370_end:
.annotate 'line', 37
    $P394 = $P368."!make"($P369)
.annotate 'line', 35
    .return ($P394)
  control_365:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P395, exception, "payload"
    .return ($P395)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "comp_unit"  :subid("26_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_400
.annotate 'line', 49
    new $P399, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P399, control_398
    push_eh $P399
    .lex "self", self
    .lex "$/", param_400
.annotate 'line', 50
    new $P401, "Undef"
    .lex "$mainline", $P401
.annotate 'line', 51
    new $P402, "Undef"
    .lex "$unit", $P402
.annotate 'line', 50
    find_lex $P403, "$/"
    unless_null $P403, vivify_246
    $P403 = root_new ['parrot';'Hash']
  vivify_246:
    set $P404, $P403["statementlist"]
    unless_null $P404, vivify_247
    new $P404, "Undef"
  vivify_247:
    $P405 = $P404."ast"()
    store_lex "$mainline", $P405
.annotate 'line', 51
    get_global $P406, "@BLOCK"
    $P407 = $P406."shift"()
    store_lex "$unit", $P407
.annotate 'line', 55
    find_lex $P408, "$unit"
    find_lex $P409, "self"
    $P410 = $P409."CTXSAVE"()
    $P408."push"($P410)
.annotate 'line', 58
    find_lex $P411, "$unit"
    $P411."loadlibs"("nqp_group", "nqp_ops")
.annotate 'line', 59
    find_lex $P412, "$unit"
    get_hll_global $P413, ["PAST"], "Op"
    $P414 = $P413."new"("nqp_dynop_setup v" :named("pirop"))
    $P412."unshift"($P414)
.annotate 'line', 64
    find_lex $P415, "$unit"
.annotate 'line', 65
    get_hll_global $P416, ["PAST"], "Op"
    find_lex $P417, "$mainline"
    $P418 = $P416."new"($P417, "return" :named("pirop"))
    $P415."push"($P418)
.annotate 'line', 70
    find_lex $P419, "$unit"
.annotate 'line', 71
    get_hll_global $P420, ["PAST"], "Block"
.annotate 'line', 73
    get_hll_global $P421, ["PAST"], "Op"
    get_hll_global $P422, ["PAST"], "Val"
    find_lex $P423, "$unit"
    $P424 = $P422."new"($P423 :named("value"))
    $P425 = $P421."new"($P424, "call" :named("pasttype"))
    $P426 = $P420."new"($P425, ":load" :named("pirflags"), 0 :named("lexical"), "" :named("namespace"))
.annotate 'line', 71
    $P419."push"($P426)
.annotate 'line', 76
    find_lex $P427, "$unit"
    find_lex $P428, "$/"
    $P427."node"($P428)
.annotate 'line', 77
    find_lex $P429, "$/"
    find_lex $P430, "$unit"
    $P431 = $P429."!make"($P430)
.annotate 'line', 49
    .return ($P431)
  control_398:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P432, exception, "payload"
    .return ($P432)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "statementlist"  :subid("27_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_436
.annotate 'line', 80
    .const 'Sub' $P450 = "28_1294592831.858" 
    capture_lex $P450
    new $P435, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P435, control_434
    push_eh $P435
    .lex "self", self
    .lex "$/", param_436
.annotate 'line', 81
    new $P437, "Undef"
    .lex "$past", $P437
    get_hll_global $P438, ["PAST"], "Stmts"
    find_lex $P439, "$/"
    $P440 = $P438."new"($P439 :named("node"))
    store_lex "$past", $P440
.annotate 'line', 82
    find_lex $P442, "$/"
    unless_null $P442, vivify_248
    $P442 = root_new ['parrot';'Hash']
  vivify_248:
    set $P443, $P442["statement"]
    unless_null $P443, vivify_249
    new $P443, "Undef"
  vivify_249:
    unless $P443, if_441_end
.annotate 'line', 83
    find_lex $P445, "$/"
    unless_null $P445, vivify_250
    $P445 = root_new ['parrot';'Hash']
  vivify_250:
    set $P446, $P445["statement"]
    unless_null $P446, vivify_251
    new $P446, "Undef"
  vivify_251:
    defined $I447, $P446
    unless $I447, for_undef_252
    iter $P444, $P446
    new $P470, 'ExceptionHandler'
    set_addr $P470, loop469_handler
    $P470."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P470
  loop469_test:
    unless $P444, loop469_done
    shift $P448, $P444
  loop469_redo:
    .const 'Sub' $P450 = "28_1294592831.858" 
    capture_lex $P450
    $P450($P448)
  loop469_next:
    goto loop469_test
  loop469_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P471, exception, 'type'
    eq $P471, .CONTROL_LOOP_NEXT, loop469_next
    eq $P471, .CONTROL_LOOP_REDO, loop469_redo
  loop469_done:
    pop_eh 
  for_undef_252:
  if_441_end:
.annotate 'line', 90
    find_lex $P472, "$/"
    find_lex $P473, "$past"
    $P474 = $P472."!make"($P473)
.annotate 'line', 80
    .return ($P474)
  control_434:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P475, exception, "payload"
    .return ($P475)
.end


.namespace ["NQP";"Actions"]
.sub "_block449"  :anon :subid("28_1294592831.858") :outer("27_1294592831.858")
    .param pmc param_452
.annotate 'line', 84
    new $P451, "Undef"
    .lex "$ast", $P451
    .lex "$_", param_452
    find_lex $P453, "$_"
    $P454 = $P453."ast"()
    store_lex "$ast", $P454
.annotate 'line', 85
    find_lex $P456, "$ast"
    unless_null $P456, vivify_253
    $P456 = root_new ['parrot';'Hash']
  vivify_253:
    set $P457, $P456["sink"]
    unless_null $P457, vivify_254
    new $P457, "Undef"
  vivify_254:
    defined $I458, $P457
    unless $I458, if_455_end
    find_lex $P459, "$ast"
    unless_null $P459, vivify_255
    $P459 = root_new ['parrot';'Hash']
  vivify_255:
    set $P460, $P459["sink"]
    unless_null $P460, vivify_256
    new $P460, "Undef"
  vivify_256:
    store_lex "$ast", $P460
  if_455_end:
.annotate 'line', 86
    find_lex $P462, "$ast"
    unless_null $P462, vivify_257
    $P462 = root_new ['parrot';'Hash']
  vivify_257:
    set $P463, $P462["bareblock"]
    unless_null $P463, vivify_258
    new $P463, "Undef"
  vivify_258:
    unless $P463, if_461_end
    find_lex $P464, "$ast"
    $P465 = "block_immediate"($P464)
    store_lex "$ast", $P465
  if_461_end:
.annotate 'line', 87
    find_lex $P466, "$past"
    find_lex $P467, "$ast"
    $P468 = $P466."push"($P467)
.annotate 'line', 83
    .return ($P468)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "statement"  :subid("29_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_479
    .param pmc param_480 :optional
    .param int has_param_480 :opt_flag
.annotate 'line', 93
    .const 'Sub' $P488 = "30_1294592831.858" 
    capture_lex $P488
    new $P478, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P478, control_477
    push_eh $P478
    .lex "self", self
    .lex "$/", param_479
    if has_param_480, optparam_259
    new $P481, "Undef"
    set param_480, $P481
  optparam_259:
    .lex "$key", param_480
.annotate 'line', 94
    new $P482, "Undef"
    .lex "$past", $P482
.annotate 'line', 93
    find_lex $P483, "$past"
.annotate 'line', 95
    find_lex $P485, "$/"
    unless_null $P485, vivify_260
    $P485 = root_new ['parrot';'Hash']
  vivify_260:
    set $P486, $P485["EXPR"]
    unless_null $P486, vivify_261
    new $P486, "Undef"
  vivify_261:
    if $P486, if_484
.annotate 'line', 116
    find_lex $P549, "$/"
    unless_null $P549, vivify_262
    $P549 = root_new ['parrot';'Hash']
  vivify_262:
    set $P550, $P549["statement_control"]
    unless_null $P550, vivify_263
    new $P550, "Undef"
  vivify_263:
    if $P550, if_548
.annotate 'line', 117
    new $P554, "Integer"
    assign $P554, 0
    store_lex "$past", $P554
    goto if_548_end
  if_548:
.annotate 'line', 116
    find_lex $P551, "$/"
    unless_null $P551, vivify_264
    $P551 = root_new ['parrot';'Hash']
  vivify_264:
    set $P552, $P551["statement_control"]
    unless_null $P552, vivify_265
    new $P552, "Undef"
  vivify_265:
    $P553 = $P552."ast"()
    store_lex "$past", $P553
  if_548_end:
    goto if_484_end
  if_484:
.annotate 'line', 95
    .const 'Sub' $P488 = "30_1294592831.858" 
    capture_lex $P488
    $P488()
  if_484_end:
.annotate 'line', 118
    find_lex $P555, "$/"
    find_lex $P556, "$past"
    $P557 = $P555."!make"($P556)
.annotate 'line', 93
    .return ($P557)
  control_477:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P558, exception, "payload"
    .return ($P558)
.end


.namespace ["NQP";"Actions"]
.sub "_block487"  :anon :subid("30_1294592831.858") :outer("29_1294592831.858")
.annotate 'line', 96
    new $P489, "Undef"
    .lex "$mc", $P489
.annotate 'line', 97
    new $P490, "Undef"
    .lex "$ml", $P490
.annotate 'line', 96
    find_lex $P491, "$/"
    unless_null $P491, vivify_266
    $P491 = root_new ['parrot';'Hash']
  vivify_266:
    set $P492, $P491["statement_mod_cond"]
    unless_null $P492, vivify_267
    $P492 = root_new ['parrot';'ResizablePMCArray']
  vivify_267:
    set $P493, $P492[0]
    unless_null $P493, vivify_268
    new $P493, "Undef"
  vivify_268:
    store_lex "$mc", $P493
.annotate 'line', 97
    find_lex $P494, "$/"
    unless_null $P494, vivify_269
    $P494 = root_new ['parrot';'Hash']
  vivify_269:
    set $P495, $P494["statement_mod_loop"]
    unless_null $P495, vivify_270
    $P495 = root_new ['parrot';'ResizablePMCArray']
  vivify_270:
    set $P496, $P495[0]
    unless_null $P496, vivify_271
    new $P496, "Undef"
  vivify_271:
    store_lex "$ml", $P496
.annotate 'line', 98
    find_lex $P497, "$/"
    unless_null $P497, vivify_272
    $P497 = root_new ['parrot';'Hash']
  vivify_272:
    set $P498, $P497["EXPR"]
    unless_null $P498, vivify_273
    new $P498, "Undef"
  vivify_273:
    $P499 = $P498."ast"()
    store_lex "$past", $P499
.annotate 'line', 99
    find_lex $P501, "$mc"
    unless $P501, if_500_end
.annotate 'line', 100
    get_hll_global $P502, ["PAST"], "Op"
    find_lex $P503, "$mc"
    unless_null $P503, vivify_274
    $P503 = root_new ['parrot';'Hash']
  vivify_274:
    set $P504, $P503["cond"]
    unless_null $P504, vivify_275
    new $P504, "Undef"
  vivify_275:
    $P505 = $P504."ast"()
    find_lex $P506, "$past"
    find_lex $P507, "$mc"
    unless_null $P507, vivify_276
    $P507 = root_new ['parrot';'Hash']
  vivify_276:
    set $P508, $P507["sym"]
    unless_null $P508, vivify_277
    new $P508, "Undef"
  vivify_277:
    set $S509, $P508
    find_lex $P510, "$/"
    $P511 = $P502."new"($P505, $P506, $S509 :named("pasttype"), $P510 :named("node"))
    store_lex "$past", $P511
  if_500_end:
.annotate 'line', 102
    find_lex $P514, "$ml"
    if $P514, if_513
    set $P512, $P514
    goto if_513_end
  if_513:
.annotate 'line', 103
    find_lex $P517, "$ml"
    unless_null $P517, vivify_278
    $P517 = root_new ['parrot';'Hash']
  vivify_278:
    set $P518, $P517["sym"]
    unless_null $P518, vivify_279
    new $P518, "Undef"
  vivify_279:
    set $S519, $P518
    iseq $I520, $S519, "for"
    if $I520, if_516
.annotate 'line', 112
    get_hll_global $P538, ["PAST"], "Op"
    find_lex $P539, "$ml"
    unless_null $P539, vivify_280
    $P539 = root_new ['parrot';'Hash']
  vivify_280:
    set $P540, $P539["cond"]
    unless_null $P540, vivify_281
    new $P540, "Undef"
  vivify_281:
    $P541 = $P540."ast"()
    find_lex $P542, "$past"
    find_lex $P543, "$ml"
    unless_null $P543, vivify_282
    $P543 = root_new ['parrot';'Hash']
  vivify_282:
    set $P544, $P543["sym"]
    unless_null $P544, vivify_283
    new $P544, "Undef"
  vivify_283:
    set $S545, $P544
    find_lex $P546, "$/"
    $P547 = $P538."new"($P541, $P542, $S545 :named("pasttype"), $P546 :named("node"))
    store_lex "$past", $P547
.annotate 'line', 111
    set $P515, $P547
.annotate 'line', 103
    goto if_516_end
  if_516:
.annotate 'line', 104
    get_hll_global $P521, ["PAST"], "Block"
.annotate 'line', 105
    get_hll_global $P522, ["PAST"], "Var"
    $P523 = $P522."new"("$_" :named("name"), "parameter" :named("scope"), 1 :named("isdecl"))
    find_lex $P524, "$past"
    $P525 = $P521."new"($P523, $P524, "immediate" :named("blocktype"))
.annotate 'line', 104
    store_lex "$past", $P525
.annotate 'line', 107
    find_lex $P526, "$past"
    $P526."symbol"("$_", "lexical" :named("scope"))
.annotate 'line', 108
    find_lex $P527, "$past"
    $P527."arity"(1)
.annotate 'line', 109
    get_hll_global $P528, ["PAST"], "Op"
    find_lex $P529, "$ml"
    unless_null $P529, vivify_284
    $P529 = root_new ['parrot';'Hash']
  vivify_284:
    set $P530, $P529["cond"]
    unless_null $P530, vivify_285
    new $P530, "Undef"
  vivify_285:
    $P531 = $P530."ast"()
    find_lex $P532, "$past"
    find_lex $P533, "$ml"
    unless_null $P533, vivify_286
    $P533 = root_new ['parrot';'Hash']
  vivify_286:
    set $P534, $P533["sym"]
    unless_null $P534, vivify_287
    new $P534, "Undef"
  vivify_287:
    set $S535, $P534
    find_lex $P536, "$/"
    $P537 = $P528."new"($P531, $P532, $S535 :named("pasttype"), $P536 :named("node"))
    store_lex "$past", $P537
.annotate 'line', 103
    set $P515, $P537
  if_516_end:
.annotate 'line', 102
    set $P512, $P515
  if_513_end:
.annotate 'line', 95
    .return ($P512)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "xblock"  :subid("31_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_562
.annotate 'line', 121
    new $P561, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P561, control_560
    push_eh $P561
    .lex "self", self
    .lex "$/", param_562
.annotate 'line', 122
    find_lex $P563, "$/"
    get_hll_global $P564, ["PAST"], "Op"
    find_lex $P565, "$/"
    unless_null $P565, vivify_288
    $P565 = root_new ['parrot';'Hash']
  vivify_288:
    set $P566, $P565["EXPR"]
    unless_null $P566, vivify_289
    new $P566, "Undef"
  vivify_289:
    $P567 = $P566."ast"()
    find_lex $P568, "$/"
    unless_null $P568, vivify_290
    $P568 = root_new ['parrot';'Hash']
  vivify_290:
    set $P569, $P568["pblock"]
    unless_null $P569, vivify_291
    new $P569, "Undef"
  vivify_291:
    $P570 = $P569."ast"()
    find_lex $P571, "$/"
    $P572 = $P564."new"($P567, $P570, "if" :named("pasttype"), $P571 :named("node"))
    $P573 = $P563."!make"($P572)
.annotate 'line', 121
    .return ($P573)
  control_560:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P574, exception, "payload"
    .return ($P574)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "pblock"  :subid("32_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_578
.annotate 'line', 125
    new $P577, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P577, control_576
    push_eh $P577
    .lex "self", self
    .lex "$/", param_578
.annotate 'line', 126
    find_lex $P579, "$/"
    find_lex $P580, "$/"
    unless_null $P580, vivify_292
    $P580 = root_new ['parrot';'Hash']
  vivify_292:
    set $P581, $P580["blockoid"]
    unless_null $P581, vivify_293
    new $P581, "Undef"
  vivify_293:
    $P582 = $P581."ast"()
    $P583 = $P579."!make"($P582)
.annotate 'line', 125
    .return ($P583)
  control_576:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P584, exception, "payload"
    .return ($P584)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "block"  :subid("33_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_588
.annotate 'line', 129
    new $P587, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P587, control_586
    push_eh $P587
    .lex "self", self
    .lex "$/", param_588
.annotate 'line', 130
    find_lex $P589, "$/"
    find_lex $P590, "$/"
    unless_null $P590, vivify_294
    $P590 = root_new ['parrot';'Hash']
  vivify_294:
    set $P591, $P590["blockoid"]
    unless_null $P591, vivify_295
    new $P591, "Undef"
  vivify_295:
    $P592 = $P591."ast"()
    $P593 = $P589."!make"($P592)
.annotate 'line', 129
    .return ($P593)
  control_586:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P594, exception, "payload"
    .return ($P594)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "blockoid"  :subid("34_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_598
.annotate 'line', 133
    new $P597, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P597, control_596
    push_eh $P597
    .lex "self", self
    .lex "$/", param_598
.annotate 'line', 134
    new $P599, "Undef"
    .lex "$past", $P599
.annotate 'line', 135
    new $P600, "Undef"
    .lex "$BLOCK", $P600
.annotate 'line', 134
    find_lex $P601, "$/"
    unless_null $P601, vivify_296
    $P601 = root_new ['parrot';'Hash']
  vivify_296:
    set $P602, $P601["statementlist"]
    unless_null $P602, vivify_297
    new $P602, "Undef"
  vivify_297:
    $P603 = $P602."ast"()
    store_lex "$past", $P603
.annotate 'line', 135
    get_global $P604, "@BLOCK"
    $P605 = $P604."shift"()
    store_lex "$BLOCK", $P605
.annotate 'line', 136
    find_lex $P606, "$BLOCK"
    find_lex $P607, "$past"
    $P606."push"($P607)
.annotate 'line', 137
    find_lex $P608, "$BLOCK"
    find_lex $P609, "$/"
    $P608."node"($P609)
.annotate 'line', 138
    find_lex $P610, "$BLOCK"
    $P610."closure"(1)
.annotate 'line', 139
    find_lex $P611, "$/"
    find_lex $P612, "$BLOCK"
    $P613 = $P611."!make"($P612)
.annotate 'line', 133
    .return ($P613)
  control_596:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P614, exception, "payload"
    .return ($P614)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "newpad"  :subid("35_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_618
.annotate 'line', 142
    new $P617, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P617, control_616
    push_eh $P617
    .lex "self", self
    .lex "$/", param_618
.annotate 'line', 143
    get_global $P619, "@BLOCK"
    unless_null $P619, vivify_298
    $P619 = root_new ['parrot';'ResizablePMCArray']
    set_global "@BLOCK", $P619
  vivify_298:
.annotate 'line', 142
    get_global $P620, "@BLOCK"
.annotate 'line', 144
    get_global $P621, "@BLOCK"
    get_hll_global $P622, ["PAST"], "Block"
    get_hll_global $P623, ["PAST"], "Stmts"
    $P624 = $P623."new"()
    $P625 = $P622."new"($P624)
    $P626 = $P621."unshift"($P625)
.annotate 'line', 142
    .return ($P626)
  control_616:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P627, exception, "payload"
    .return ($P627)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "outerctx"  :subid("36_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_631
.annotate 'line', 147
    new $P630, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P630, control_629
    push_eh $P630
    .lex "self", self
    .lex "$/", param_631
.annotate 'line', 148
    get_global $P632, "@BLOCK"
    unless_null $P632, vivify_299
    $P632 = root_new ['parrot';'ResizablePMCArray']
    set_global "@BLOCK", $P632
  vivify_299:
.annotate 'line', 147
    get_global $P633, "@BLOCK"
.annotate 'line', 149
    find_lex $P634, "self"
    get_global $P635, "@BLOCK"
    unless_null $P635, vivify_300
    $P635 = root_new ['parrot';'ResizablePMCArray']
  vivify_300:
    set $P636, $P635[0]
    unless_null $P636, vivify_301
    new $P636, "Undef"
  vivify_301:
    $P637 = $P634."SET_BLOCK_OUTER_CTX"($P636)
.annotate 'line', 147
    .return ($P637)
  control_629:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P638, exception, "payload"
    .return ($P638)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "statement_control:sym<if>"  :subid("37_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_642
.annotate 'line', 154
    .const 'Sub' $P670 = "38_1294592831.858" 
    capture_lex $P670
    new $P641, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P641, control_640
    push_eh $P641
    .lex "self", self
    .lex "$/", param_642
.annotate 'line', 155
    new $P643, "Undef"
    .lex "$count", $P643
.annotate 'line', 156
    new $P644, "Undef"
    .lex "$past", $P644
.annotate 'line', 155
    find_lex $P645, "$/"
    unless_null $P645, vivify_302
    $P645 = root_new ['parrot';'Hash']
  vivify_302:
    set $P646, $P645["xblock"]
    unless_null $P646, vivify_303
    new $P646, "Undef"
  vivify_303:
    set $N647, $P646
    new $P648, 'Float'
    set $P648, $N647
    sub $P649, $P648, 1
    store_lex "$count", $P649
.annotate 'line', 156
    find_lex $P650, "$count"
    set $I651, $P650
    find_lex $P652, "$/"
    unless_null $P652, vivify_304
    $P652 = root_new ['parrot';'Hash']
  vivify_304:
    set $P653, $P652["xblock"]
    unless_null $P653, vivify_305
    $P653 = root_new ['parrot';'ResizablePMCArray']
  vivify_305:
    set $P654, $P653[$I651]
    unless_null $P654, vivify_306
    new $P654, "Undef"
  vivify_306:
    $P655 = $P654."ast"()
    $P656 = "xblock_immediate"($P655)
    store_lex "$past", $P656
.annotate 'line', 157
    find_lex $P658, "$/"
    unless_null $P658, vivify_307
    $P658 = root_new ['parrot';'Hash']
  vivify_307:
    set $P659, $P658["else"]
    unless_null $P659, vivify_308
    new $P659, "Undef"
  vivify_308:
    unless $P659, if_657_end
.annotate 'line', 158
    find_lex $P660, "$past"
    find_lex $P661, "$/"
    unless_null $P661, vivify_309
    $P661 = root_new ['parrot';'Hash']
  vivify_309:
    set $P662, $P661["else"]
    unless_null $P662, vivify_310
    $P662 = root_new ['parrot';'ResizablePMCArray']
  vivify_310:
    set $P663, $P662[0]
    unless_null $P663, vivify_311
    new $P663, "Undef"
  vivify_311:
    $P664 = $P663."ast"()
    $P665 = "block_immediate"($P664)
    $P660."push"($P665)
  if_657_end:
.annotate 'line', 161
    new $P686, 'ExceptionHandler'
    set_addr $P686, loop685_handler
    $P686."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P686
  loop685_test:
    find_lex $P666, "$count"
    set $N667, $P666
    isgt $I668, $N667, 0.0
    unless $I668, loop685_done
  loop685_redo:
    .const 'Sub' $P670 = "38_1294592831.858" 
    capture_lex $P670
    $P670()
  loop685_next:
    goto loop685_test
  loop685_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P687, exception, 'type'
    eq $P687, .CONTROL_LOOP_NEXT, loop685_next
    eq $P687, .CONTROL_LOOP_REDO, loop685_redo
  loop685_done:
    pop_eh 
.annotate 'line', 167
    find_lex $P688, "$/"
    find_lex $P689, "$past"
    $P690 = $P688."!make"($P689)
.annotate 'line', 154
    .return ($P690)
  control_640:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P691, exception, "payload"
    .return ($P691)
.end


.namespace ["NQP";"Actions"]
.sub "_block669"  :anon :subid("38_1294592831.858") :outer("37_1294592831.858")
.annotate 'line', 163
    new $P671, "Undef"
    .lex "$else", $P671
.annotate 'line', 161
    find_lex $P672, "$count"
    clone $P673, $P672
    dec $P672
.annotate 'line', 163
    find_lex $P674, "$past"
    store_lex "$else", $P674
.annotate 'line', 164
    find_lex $P675, "$count"
    set $I676, $P675
    find_lex $P677, "$/"
    unless_null $P677, vivify_312
    $P677 = root_new ['parrot';'Hash']
  vivify_312:
    set $P678, $P677["xblock"]
    unless_null $P678, vivify_313
    $P678 = root_new ['parrot';'ResizablePMCArray']
  vivify_313:
    set $P679, $P678[$I676]
    unless_null $P679, vivify_314
    new $P679, "Undef"
  vivify_314:
    $P680 = $P679."ast"()
    $P681 = "xblock_immediate"($P680)
    store_lex "$past", $P681
.annotate 'line', 165
    find_lex $P682, "$past"
    find_lex $P683, "$else"
    $P684 = $P682."push"($P683)
.annotate 'line', 161
    .return ($P684)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "statement_control:sym<unless>"  :subid("39_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_695
.annotate 'line', 170
    new $P694, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P694, control_693
    push_eh $P694
    .lex "self", self
    .lex "$/", param_695
.annotate 'line', 171
    new $P696, "Undef"
    .lex "$past", $P696
    find_lex $P697, "$/"
    unless_null $P697, vivify_315
    $P697 = root_new ['parrot';'Hash']
  vivify_315:
    set $P698, $P697["xblock"]
    unless_null $P698, vivify_316
    new $P698, "Undef"
  vivify_316:
    $P699 = $P698."ast"()
    $P700 = "xblock_immediate"($P699)
    store_lex "$past", $P700
.annotate 'line', 172
    find_lex $P701, "$past"
    $P701."pasttype"("unless")
.annotate 'line', 173
    find_lex $P702, "$/"
    find_lex $P703, "$past"
    $P704 = $P702."!make"($P703)
.annotate 'line', 170
    .return ($P704)
  control_693:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P705, exception, "payload"
    .return ($P705)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "statement_control:sym<while>"  :subid("40_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_709
.annotate 'line', 176
    new $P708, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P708, control_707
    push_eh $P708
    .lex "self", self
    .lex "$/", param_709
.annotate 'line', 177
    new $P710, "Undef"
    .lex "$past", $P710
    find_lex $P711, "$/"
    unless_null $P711, vivify_317
    $P711 = root_new ['parrot';'Hash']
  vivify_317:
    set $P712, $P711["xblock"]
    unless_null $P712, vivify_318
    new $P712, "Undef"
  vivify_318:
    $P713 = $P712."ast"()
    $P714 = "xblock_immediate"($P713)
    store_lex "$past", $P714
.annotate 'line', 178
    find_lex $P715, "$past"
    find_lex $P716, "$/"
    unless_null $P716, vivify_319
    $P716 = root_new ['parrot';'Hash']
  vivify_319:
    set $P717, $P716["sym"]
    unless_null $P717, vivify_320
    new $P717, "Undef"
  vivify_320:
    set $S718, $P717
    $P715."pasttype"($S718)
.annotate 'line', 179
    find_lex $P719, "$/"
    find_lex $P720, "$past"
    $P721 = $P719."!make"($P720)
.annotate 'line', 176
    .return ($P721)
  control_707:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P722, exception, "payload"
    .return ($P722)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "statement_control:sym<repeat>"  :subid("41_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_726
.annotate 'line', 182
    new $P725, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P725, control_724
    push_eh $P725
    .lex "self", self
    .lex "$/", param_726
.annotate 'line', 183
    new $P727, "Undef"
    .lex "$pasttype", $P727
.annotate 'line', 184
    new $P728, "Undef"
    .lex "$past", $P728
.annotate 'line', 183
    new $P729, "String"
    assign $P729, "repeat_"
    find_lex $P730, "$/"
    unless_null $P730, vivify_321
    $P730 = root_new ['parrot';'Hash']
  vivify_321:
    set $P731, $P730["wu"]
    unless_null $P731, vivify_322
    new $P731, "Undef"
  vivify_322:
    set $S732, $P731
    concat $P733, $P729, $S732
    store_lex "$pasttype", $P733
    find_lex $P734, "$past"
.annotate 'line', 185
    find_lex $P736, "$/"
    unless_null $P736, vivify_323
    $P736 = root_new ['parrot';'Hash']
  vivify_323:
    set $P737, $P736["xblock"]
    unless_null $P737, vivify_324
    new $P737, "Undef"
  vivify_324:
    if $P737, if_735
.annotate 'line', 190
    get_hll_global $P744, ["PAST"], "Op"
    find_lex $P745, "$/"
    unless_null $P745, vivify_325
    $P745 = root_new ['parrot';'Hash']
  vivify_325:
    set $P746, $P745["EXPR"]
    unless_null $P746, vivify_326
    new $P746, "Undef"
  vivify_326:
    $P747 = $P746."ast"()
    find_lex $P748, "$/"
    unless_null $P748, vivify_327
    $P748 = root_new ['parrot';'Hash']
  vivify_327:
    set $P749, $P748["pblock"]
    unless_null $P749, vivify_328
    new $P749, "Undef"
  vivify_328:
    $P750 = $P749."ast"()
    $P751 = "block_immediate"($P750)
    find_lex $P752, "$pasttype"
    find_lex $P753, "$/"
    $P754 = $P744."new"($P747, $P751, $P752 :named("pasttype"), $P753 :named("node"))
    store_lex "$past", $P754
.annotate 'line', 189
    goto if_735_end
  if_735:
.annotate 'line', 186
    find_lex $P738, "$/"
    unless_null $P738, vivify_329
    $P738 = root_new ['parrot';'Hash']
  vivify_329:
    set $P739, $P738["xblock"]
    unless_null $P739, vivify_330
    new $P739, "Undef"
  vivify_330:
    $P740 = $P739."ast"()
    $P741 = "xblock_immediate"($P740)
    store_lex "$past", $P741
.annotate 'line', 187
    find_lex $P742, "$past"
    find_lex $P743, "$pasttype"
    $P742."pasttype"($P743)
  if_735_end:
.annotate 'line', 193
    find_lex $P755, "$/"
    find_lex $P756, "$past"
    $P757 = $P755."!make"($P756)
.annotate 'line', 182
    .return ($P757)
  control_724:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P758, exception, "payload"
    .return ($P758)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "statement_control:sym<for>"  :subid("42_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_762
.annotate 'line', 196
    new $P761, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P761, control_760
    push_eh $P761
    .lex "self", self
    .lex "$/", param_762
.annotate 'line', 197
    new $P763, "Undef"
    .lex "$past", $P763
.annotate 'line', 199
    new $P764, "Undef"
    .lex "$block", $P764
.annotate 'line', 197
    find_lex $P765, "$/"
    unless_null $P765, vivify_331
    $P765 = root_new ['parrot';'Hash']
  vivify_331:
    set $P766, $P765["xblock"]
    unless_null $P766, vivify_332
    new $P766, "Undef"
  vivify_332:
    $P767 = $P766."ast"()
    store_lex "$past", $P767
.annotate 'line', 198
    find_lex $P768, "$past"
    $P768."pasttype"("for")
.annotate 'line', 199
    find_lex $P769, "$past"
    unless_null $P769, vivify_333
    $P769 = root_new ['parrot';'ResizablePMCArray']
  vivify_333:
    set $P770, $P769[1]
    unless_null $P770, vivify_334
    new $P770, "Undef"
  vivify_334:
    store_lex "$block", $P770
.annotate 'line', 200
    find_lex $P772, "$block"
    $P773 = $P772."arity"()
    if $P773, unless_771_end
.annotate 'line', 201
    find_lex $P774, "$block"
    unless_null $P774, vivify_335
    $P774 = root_new ['parrot';'ResizablePMCArray']
  vivify_335:
    set $P775, $P774[0]
    unless_null $P775, vivify_336
    new $P775, "Undef"
  vivify_336:
    get_hll_global $P776, ["PAST"], "Var"
    $P777 = $P776."new"("$_" :named("name"), "parameter" :named("scope"))
    $P775."push"($P777)
.annotate 'line', 202
    find_lex $P778, "$block"
    $P778."symbol"("$_", "lexical" :named("scope"))
.annotate 'line', 203
    find_lex $P779, "$block"
    $P779."arity"(1)
  unless_771_end:
.annotate 'line', 205
    find_lex $P780, "$block"
    $P780."blocktype"("immediate")
.annotate 'line', 206
    find_lex $P781, "$/"
    find_lex $P782, "$past"
    $P783 = $P781."!make"($P782)
.annotate 'line', 196
    .return ($P783)
  control_760:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P784, exception, "payload"
    .return ($P784)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "statement_control:sym<return>"  :subid("43_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_788
.annotate 'line', 209
    new $P787, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P787, control_786
    push_eh $P787
    .lex "self", self
    .lex "$/", param_788
.annotate 'line', 210
    find_lex $P789, "$/"
    get_hll_global $P790, ["PAST"], "Op"
    find_lex $P791, "$/"
    unless_null $P791, vivify_337
    $P791 = root_new ['parrot';'Hash']
  vivify_337:
    set $P792, $P791["EXPR"]
    unless_null $P792, vivify_338
    new $P792, "Undef"
  vivify_338:
    $P793 = $P792."ast"()
    find_lex $P794, "$/"
    $P795 = $P790."new"($P793, "return" :named("pasttype"), $P794 :named("node"))
    $P796 = $P789."!make"($P795)
.annotate 'line', 209
    .return ($P796)
  control_786:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P797, exception, "payload"
    .return ($P797)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "statement_control:sym<CATCH>"  :subid("44_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_801
.annotate 'line', 213
    new $P800, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P800, control_799
    push_eh $P800
    .lex "self", self
    .lex "$/", param_801
.annotate 'line', 214
    new $P802, "Undef"
    .lex "$block", $P802
    find_lex $P803, "$/"
    unless_null $P803, vivify_339
    $P803 = root_new ['parrot';'Hash']
  vivify_339:
    set $P804, $P803["block"]
    unless_null $P804, vivify_340
    new $P804, "Undef"
  vivify_340:
    $P805 = $P804."ast"()
    store_lex "$block", $P805
.annotate 'line', 215
    find_lex $P806, "$/"
    find_lex $P807, "$block"
    "push_block_handler"($P806, $P807)
.annotate 'line', 216
    get_global $P808, "@BLOCK"
    unless_null $P808, vivify_341
    $P808 = root_new ['parrot';'ResizablePMCArray']
  vivify_341:
    set $P809, $P808[0]
    unless_null $P809, vivify_342
    new $P809, "Undef"
  vivify_342:
    $P810 = $P809."handlers"()
    set $P811, $P810[0]
    unless_null $P811, vivify_343
    new $P811, "Undef"
  vivify_343:
    $P811."handle_types_except"("CONTROL")
.annotate 'line', 217
    find_lex $P812, "$/"
    get_hll_global $P813, ["PAST"], "Stmts"
    find_lex $P814, "$/"
    $P815 = $P813."new"($P814 :named("node"))
    $P816 = $P812."!make"($P815)
.annotate 'line', 213
    .return ($P816)
  control_799:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P817, exception, "payload"
    .return ($P817)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "statement_control:sym<CONTROL>"  :subid("45_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_821
.annotate 'line', 220
    new $P820, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P820, control_819
    push_eh $P820
    .lex "self", self
    .lex "$/", param_821
.annotate 'line', 221
    new $P822, "Undef"
    .lex "$block", $P822
    find_lex $P823, "$/"
    unless_null $P823, vivify_344
    $P823 = root_new ['parrot';'Hash']
  vivify_344:
    set $P824, $P823["block"]
    unless_null $P824, vivify_345
    new $P824, "Undef"
  vivify_345:
    $P825 = $P824."ast"()
    store_lex "$block", $P825
.annotate 'line', 222
    find_lex $P826, "$/"
    find_lex $P827, "$block"
    "push_block_handler"($P826, $P827)
.annotate 'line', 223
    get_global $P828, "@BLOCK"
    unless_null $P828, vivify_346
    $P828 = root_new ['parrot';'ResizablePMCArray']
  vivify_346:
    set $P829, $P828[0]
    unless_null $P829, vivify_347
    new $P829, "Undef"
  vivify_347:
    $P830 = $P829."handlers"()
    set $P831, $P830[0]
    unless_null $P831, vivify_348
    new $P831, "Undef"
  vivify_348:
    $P831."handle_types"("CONTROL")
.annotate 'line', 224
    find_lex $P832, "$/"
    get_hll_global $P833, ["PAST"], "Stmts"
    find_lex $P834, "$/"
    $P835 = $P833."new"($P834 :named("node"))
    $P836 = $P832."!make"($P835)
.annotate 'line', 220
    .return ($P836)
  control_819:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P837, exception, "payload"
    .return ($P837)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "statement_prefix:sym<INIT>"  :subid("46_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_842
.annotate 'line', 264
    new $P841, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P841, control_840
    push_eh $P841
    .lex "self", self
    .lex "$/", param_842
.annotate 'line', 265
    get_global $P843, "@BLOCK"
    unless_null $P843, vivify_349
    $P843 = root_new ['parrot';'ResizablePMCArray']
  vivify_349:
    set $P844, $P843[0]
    unless_null $P844, vivify_350
    new $P844, "Undef"
  vivify_350:
    $P845 = $P844."loadinit"()
    find_lex $P846, "$/"
    unless_null $P846, vivify_351
    $P846 = root_new ['parrot';'Hash']
  vivify_351:
    set $P847, $P846["blorst"]
    unless_null $P847, vivify_352
    new $P847, "Undef"
  vivify_352:
    $P848 = $P847."ast"()
    $P845."push"($P848)
.annotate 'line', 266
    find_lex $P849, "$/"
    get_hll_global $P850, ["PAST"], "Stmts"
    find_lex $P851, "$/"
    $P852 = $P850."new"($P851 :named("node"))
    $P853 = $P849."!make"($P852)
.annotate 'line', 264
    .return ($P853)
  control_840:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P854, exception, "payload"
    .return ($P854)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "statement_prefix:sym<try>"  :subid("47_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_858
.annotate 'line', 269
    new $P857, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P857, control_856
    push_eh $P857
    .lex "self", self
    .lex "$/", param_858
.annotate 'line', 270
    new $P859, "Undef"
    .lex "$past", $P859
    find_lex $P860, "$/"
    unless_null $P860, vivify_353
    $P860 = root_new ['parrot';'Hash']
  vivify_353:
    set $P861, $P860["blorst"]
    unless_null $P861, vivify_354
    new $P861, "Undef"
  vivify_354:
    $P862 = $P861."ast"()
    store_lex "$past", $P862
.annotate 'line', 271
    get_hll_global $P864, ["PAST"], "Block"
    find_lex $P865, "$past"
    $P866 = $P864."ACCEPTS"($P865)
    if $P866, unless_863_end
.annotate 'line', 272
    get_hll_global $P867, ["PAST"], "Block"
    find_lex $P868, "$past"
    find_lex $P869, "$/"
    $P870 = $P867."new"($P868, "immediate" :named("blocktype"), $P869 :named("node"))
    store_lex "$past", $P870
  unless_863_end:
.annotate 'line', 274
    find_lex $P872, "$past"
    $P873 = $P872."handlers"()
    if $P873, unless_871_end
.annotate 'line', 275
    find_lex $P874, "$past"
    get_hll_global $P875, ["PAST"], "Control"
.annotate 'line', 277
    get_hll_global $P876, ["PAST"], "Stmts"
.annotate 'line', 278
    get_hll_global $P877, ["PAST"], "Op"
.annotate 'line', 279
    get_hll_global $P878, ["PAST"], "Var"
.annotate 'line', 280
    get_hll_global $P879, ["PAST"], "Var"
    $P880 = $P879."new"("register" :named("scope"), "exception" :named("name"))
    $P881 = $P878."new"($P880, "handled", "keyed" :named("scope"))
.annotate 'line', 279
    $P882 = $P877."new"($P881, 1, "bind" :named("pasttype"))
.annotate 'line', 278
    $P883 = $P876."new"($P882)
.annotate 'line', 277
    $P884 = $P875."new"($P883, "CONTROL" :named("handle_types_except"))
.annotate 'line', 275
    new $P885, "ResizablePMCArray"
    push $P885, $P884
    $P874."handlers"($P885)
  unless_871_end:
.annotate 'line', 289
    find_lex $P886, "$/"
    find_lex $P887, "$past"
    $P888 = $P886."!make"($P887)
.annotate 'line', 269
    .return ($P888)
  control_856:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P889, exception, "payload"
    .return ($P889)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "blorst"  :subid("48_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_893
.annotate 'line', 292
    new $P892, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P892, control_891
    push_eh $P892
    .lex "self", self
    .lex "$/", param_893
.annotate 'line', 293
    find_lex $P894, "$/"
.annotate 'line', 294
    find_lex $P897, "$/"
    unless_null $P897, vivify_355
    $P897 = root_new ['parrot';'Hash']
  vivify_355:
    set $P898, $P897["block"]
    unless_null $P898, vivify_356
    new $P898, "Undef"
  vivify_356:
    if $P898, if_896
.annotate 'line', 295
    find_lex $P903, "$/"
    unless_null $P903, vivify_357
    $P903 = root_new ['parrot';'Hash']
  vivify_357:
    set $P904, $P903["statement"]
    unless_null $P904, vivify_358
    new $P904, "Undef"
  vivify_358:
    $P905 = $P904."ast"()
    set $P895, $P905
.annotate 'line', 294
    goto if_896_end
  if_896:
    find_lex $P899, "$/"
    unless_null $P899, vivify_359
    $P899 = root_new ['parrot';'Hash']
  vivify_359:
    set $P900, $P899["block"]
    unless_null $P900, vivify_360
    new $P900, "Undef"
  vivify_360:
    $P901 = $P900."ast"()
    $P902 = "block_immediate"($P901)
    set $P895, $P902
  if_896_end:
    $P906 = $P894."!make"($P895)
.annotate 'line', 292
    .return ($P906)
  control_891:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P907, exception, "payload"
    .return ($P907)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "statement_mod_cond:sym<if>"  :subid("49_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_911
.annotate 'line', 300
    new $P910, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P910, control_909
    push_eh $P910
    .lex "self", self
    .lex "$/", param_911
    find_lex $P912, "$/"
    find_lex $P913, "$/"
    unless_null $P913, vivify_361
    $P913 = root_new ['parrot';'Hash']
  vivify_361:
    set $P914, $P913["cond"]
    unless_null $P914, vivify_362
    new $P914, "Undef"
  vivify_362:
    $P915 = $P914."ast"()
    $P916 = $P912."!make"($P915)
    .return ($P916)
  control_909:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P917, exception, "payload"
    .return ($P917)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "statement_mod_cond:sym<unless>"  :subid("50_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_921
.annotate 'line', 301
    new $P920, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P920, control_919
    push_eh $P920
    .lex "self", self
    .lex "$/", param_921
    find_lex $P922, "$/"
    find_lex $P923, "$/"
    unless_null $P923, vivify_363
    $P923 = root_new ['parrot';'Hash']
  vivify_363:
    set $P924, $P923["cond"]
    unless_null $P924, vivify_364
    new $P924, "Undef"
  vivify_364:
    $P925 = $P924."ast"()
    $P926 = $P922."!make"($P925)
    .return ($P926)
  control_919:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P927, exception, "payload"
    .return ($P927)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "statement_mod_loop:sym<while>"  :subid("51_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_931
.annotate 'line', 303
    new $P930, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P930, control_929
    push_eh $P930
    .lex "self", self
    .lex "$/", param_931
    find_lex $P932, "$/"
    find_lex $P933, "$/"
    unless_null $P933, vivify_365
    $P933 = root_new ['parrot';'Hash']
  vivify_365:
    set $P934, $P933["cond"]
    unless_null $P934, vivify_366
    new $P934, "Undef"
  vivify_366:
    $P935 = $P934."ast"()
    $P936 = $P932."!make"($P935)
    .return ($P936)
  control_929:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P937, exception, "payload"
    .return ($P937)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "statement_mod_loop:sym<until>"  :subid("52_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_941
.annotate 'line', 304
    new $P940, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P940, control_939
    push_eh $P940
    .lex "self", self
    .lex "$/", param_941
    find_lex $P942, "$/"
    find_lex $P943, "$/"
    unless_null $P943, vivify_367
    $P943 = root_new ['parrot';'Hash']
  vivify_367:
    set $P944, $P943["cond"]
    unless_null $P944, vivify_368
    new $P944, "Undef"
  vivify_368:
    $P945 = $P944."ast"()
    $P946 = $P942."!make"($P945)
    .return ($P946)
  control_939:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P947, exception, "payload"
    .return ($P947)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "term:sym<fatarrow>"  :subid("53_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_951
.annotate 'line', 308
    new $P950, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P950, control_949
    push_eh $P950
    .lex "self", self
    .lex "$/", param_951
    find_lex $P952, "$/"
    find_lex $P953, "$/"
    unless_null $P953, vivify_369
    $P953 = root_new ['parrot';'Hash']
  vivify_369:
    set $P954, $P953["fatarrow"]
    unless_null $P954, vivify_370
    new $P954, "Undef"
  vivify_370:
    $P955 = $P954."ast"()
    $P956 = $P952."!make"($P955)
    .return ($P956)
  control_949:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P957, exception, "payload"
    .return ($P957)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "term:sym<colonpair>"  :subid("54_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_961
.annotate 'line', 309
    new $P960, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P960, control_959
    push_eh $P960
    .lex "self", self
    .lex "$/", param_961
    find_lex $P962, "$/"
    find_lex $P963, "$/"
    unless_null $P963, vivify_371
    $P963 = root_new ['parrot';'Hash']
  vivify_371:
    set $P964, $P963["colonpair"]
    unless_null $P964, vivify_372
    new $P964, "Undef"
  vivify_372:
    $P965 = $P964."ast"()
    $P966 = $P962."!make"($P965)
    .return ($P966)
  control_959:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P967, exception, "payload"
    .return ($P967)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "term:sym<variable>"  :subid("55_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_971
.annotate 'line', 310
    new $P970, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P970, control_969
    push_eh $P970
    .lex "self", self
    .lex "$/", param_971
    find_lex $P972, "$/"
    find_lex $P973, "$/"
    unless_null $P973, vivify_373
    $P973 = root_new ['parrot';'Hash']
  vivify_373:
    set $P974, $P973["variable"]
    unless_null $P974, vivify_374
    new $P974, "Undef"
  vivify_374:
    $P975 = $P974."ast"()
    $P976 = $P972."!make"($P975)
    .return ($P976)
  control_969:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P977, exception, "payload"
    .return ($P977)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "term:sym<package_declarator>"  :subid("56_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_981
.annotate 'line', 311
    new $P980, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P980, control_979
    push_eh $P980
    .lex "self", self
    .lex "$/", param_981
    find_lex $P982, "$/"
    find_lex $P983, "$/"
    unless_null $P983, vivify_375
    $P983 = root_new ['parrot';'Hash']
  vivify_375:
    set $P984, $P983["package_declarator"]
    unless_null $P984, vivify_376
    new $P984, "Undef"
  vivify_376:
    $P985 = $P984."ast"()
    $P986 = $P982."!make"($P985)
    .return ($P986)
  control_979:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P987, exception, "payload"
    .return ($P987)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "term:sym<scope_declarator>"  :subid("57_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_991
.annotate 'line', 312
    new $P990, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P990, control_989
    push_eh $P990
    .lex "self", self
    .lex "$/", param_991
    find_lex $P992, "$/"
    find_lex $P993, "$/"
    unless_null $P993, vivify_377
    $P993 = root_new ['parrot';'Hash']
  vivify_377:
    set $P994, $P993["scope_declarator"]
    unless_null $P994, vivify_378
    new $P994, "Undef"
  vivify_378:
    $P995 = $P994."ast"()
    $P996 = $P992."!make"($P995)
    .return ($P996)
  control_989:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P997, exception, "payload"
    .return ($P997)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "term:sym<routine_declarator>"  :subid("58_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_1001
.annotate 'line', 313
    new $P1000, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1000, control_999
    push_eh $P1000
    .lex "self", self
    .lex "$/", param_1001
    find_lex $P1002, "$/"
    find_lex $P1003, "$/"
    unless_null $P1003, vivify_379
    $P1003 = root_new ['parrot';'Hash']
  vivify_379:
    set $P1004, $P1003["routine_declarator"]
    unless_null $P1004, vivify_380
    new $P1004, "Undef"
  vivify_380:
    $P1005 = $P1004."ast"()
    $P1006 = $P1002."!make"($P1005)
    .return ($P1006)
  control_999:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1007, exception, "payload"
    .return ($P1007)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "term:sym<regex_declarator>"  :subid("59_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_1011
.annotate 'line', 314
    new $P1010, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1010, control_1009
    push_eh $P1010
    .lex "self", self
    .lex "$/", param_1011
    find_lex $P1012, "$/"
    find_lex $P1013, "$/"
    unless_null $P1013, vivify_381
    $P1013 = root_new ['parrot';'Hash']
  vivify_381:
    set $P1014, $P1013["regex_declarator"]
    unless_null $P1014, vivify_382
    new $P1014, "Undef"
  vivify_382:
    $P1015 = $P1014."ast"()
    $P1016 = $P1012."!make"($P1015)
    .return ($P1016)
  control_1009:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1017, exception, "payload"
    .return ($P1017)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "term:sym<statement_prefix>"  :subid("60_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_1021
.annotate 'line', 315
    new $P1020, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1020, control_1019
    push_eh $P1020
    .lex "self", self
    .lex "$/", param_1021
    find_lex $P1022, "$/"
    find_lex $P1023, "$/"
    unless_null $P1023, vivify_383
    $P1023 = root_new ['parrot';'Hash']
  vivify_383:
    set $P1024, $P1023["statement_prefix"]
    unless_null $P1024, vivify_384
    new $P1024, "Undef"
  vivify_384:
    $P1025 = $P1024."ast"()
    $P1026 = $P1022."!make"($P1025)
    .return ($P1026)
  control_1019:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1027, exception, "payload"
    .return ($P1027)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "term:sym<lambda>"  :subid("61_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_1031
.annotate 'line', 316
    new $P1030, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1030, control_1029
    push_eh $P1030
    .lex "self", self
    .lex "$/", param_1031
    find_lex $P1032, "$/"
    find_lex $P1033, "$/"
    unless_null $P1033, vivify_385
    $P1033 = root_new ['parrot';'Hash']
  vivify_385:
    set $P1034, $P1033["pblock"]
    unless_null $P1034, vivify_386
    new $P1034, "Undef"
  vivify_386:
    $P1035 = $P1034."ast"()
    $P1036 = $P1032."!make"($P1035)
    .return ($P1036)
  control_1029:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1037, exception, "payload"
    .return ($P1037)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "fatarrow"  :subid("62_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_1041
.annotate 'line', 318
    new $P1040, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1040, control_1039
    push_eh $P1040
    .lex "self", self
    .lex "$/", param_1041
.annotate 'line', 319
    new $P1042, "Undef"
    .lex "$past", $P1042
    find_lex $P1043, "$/"
    unless_null $P1043, vivify_387
    $P1043 = root_new ['parrot';'Hash']
  vivify_387:
    set $P1044, $P1043["val"]
    unless_null $P1044, vivify_388
    new $P1044, "Undef"
  vivify_388:
    $P1045 = $P1044."ast"()
    store_lex "$past", $P1045
.annotate 'line', 320
    find_lex $P1046, "$past"
    find_lex $P1047, "$/"
    unless_null $P1047, vivify_389
    $P1047 = root_new ['parrot';'Hash']
  vivify_389:
    set $P1048, $P1047["key"]
    unless_null $P1048, vivify_390
    new $P1048, "Undef"
  vivify_390:
    $P1049 = $P1048."Str"()
    $P1046."named"($P1049)
.annotate 'line', 321
    find_lex $P1050, "$/"
    find_lex $P1051, "$past"
    $P1052 = $P1050."!make"($P1051)
.annotate 'line', 318
    .return ($P1052)
  control_1039:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1053, exception, "payload"
    .return ($P1053)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "colonpair"  :subid("63_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_1057
.annotate 'line', 324
    new $P1056, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1056, control_1055
    push_eh $P1056
    .lex "self", self
    .lex "$/", param_1057
.annotate 'line', 325
    new $P1058, "Undef"
    .lex "$past", $P1058
.annotate 'line', 326
    find_lex $P1061, "$/"
    unless_null $P1061, vivify_391
    $P1061 = root_new ['parrot';'Hash']
  vivify_391:
    set $P1062, $P1061["circumfix"]
    unless_null $P1062, vivify_392
    new $P1062, "Undef"
  vivify_392:
    if $P1062, if_1060
.annotate 'line', 327
    get_hll_global $P1067, ["PAST"], "Val"
    find_lex $P1068, "$/"
    unless_null $P1068, vivify_393
    $P1068 = root_new ['parrot';'Hash']
  vivify_393:
    set $P1069, $P1068["not"]
    unless_null $P1069, vivify_394
    new $P1069, "Undef"
  vivify_394:
    isfalse $I1070, $P1069
    $P1071 = $P1067."new"($I1070 :named("value"))
    set $P1059, $P1071
.annotate 'line', 326
    goto if_1060_end
  if_1060:
    find_lex $P1063, "$/"
    unless_null $P1063, vivify_395
    $P1063 = root_new ['parrot';'Hash']
  vivify_395:
    set $P1064, $P1063["circumfix"]
    unless_null $P1064, vivify_396
    $P1064 = root_new ['parrot';'ResizablePMCArray']
  vivify_396:
    set $P1065, $P1064[0]
    unless_null $P1065, vivify_397
    new $P1065, "Undef"
  vivify_397:
    $P1066 = $P1065."ast"()
    set $P1059, $P1066
  if_1060_end:
    store_lex "$past", $P1059
.annotate 'line', 328
    find_lex $P1072, "$past"
    find_lex $P1073, "$/"
    unless_null $P1073, vivify_398
    $P1073 = root_new ['parrot';'Hash']
  vivify_398:
    set $P1074, $P1073["identifier"]
    unless_null $P1074, vivify_399
    new $P1074, "Undef"
  vivify_399:
    set $S1075, $P1074
    $P1072."named"($S1075)
.annotate 'line', 329
    find_lex $P1076, "$/"
    find_lex $P1077, "$past"
    $P1078 = $P1076."!make"($P1077)
.annotate 'line', 324
    .return ($P1078)
  control_1055:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1079, exception, "payload"
    .return ($P1079)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "variable"  :subid("64_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_1083
.annotate 'line', 332
    .const 'Sub' $P1096 = "65_1294592831.858" 
    capture_lex $P1096
    new $P1082, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1082, control_1081
    push_eh $P1082
    .lex "self", self
    .lex "$/", param_1083
.annotate 'line', 333
    new $P1084, "Undef"
    .lex "$past", $P1084
.annotate 'line', 332
    find_lex $P1085, "$past"
.annotate 'line', 334
    find_lex $P1087, "$/"
    unless_null $P1087, vivify_400
    $P1087 = root_new ['parrot';'Hash']
  vivify_400:
    set $P1088, $P1087["postcircumfix"]
    unless_null $P1088, vivify_401
    new $P1088, "Undef"
  vivify_401:
    if $P1088, if_1086
.annotate 'line', 338
    .const 'Sub' $P1096 = "65_1294592831.858" 
    capture_lex $P1096
    $P1096()
    goto if_1086_end
  if_1086:
.annotate 'line', 335
    find_lex $P1089, "$/"
    unless_null $P1089, vivify_420
    $P1089 = root_new ['parrot';'Hash']
  vivify_420:
    set $P1090, $P1089["postcircumfix"]
    unless_null $P1090, vivify_421
    new $P1090, "Undef"
  vivify_421:
    $P1091 = $P1090."ast"()
    store_lex "$past", $P1091
.annotate 'line', 336
    find_lex $P1092, "$past"
    get_hll_global $P1093, ["PAST"], "Var"
    $P1094 = $P1093."new"("$/" :named("name"))
    $P1092."unshift"($P1094)
  if_1086_end:
.annotate 'line', 372
    find_lex $P1171, "$/"
    find_lex $P1172, "$past"
    $P1173 = $P1171."!make"($P1172)
.annotate 'line', 332
    .return ($P1173)
  control_1081:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1174, exception, "payload"
    .return ($P1174)
.end


.namespace ["NQP";"Actions"]
.sub "_block1095"  :anon :subid("65_1294592831.858") :outer("64_1294592831.858")
.annotate 'line', 339
    $P1097 = root_new ['parrot';'ResizablePMCArray']
    .lex "@name", $P1097
    get_hll_global $P1098, ["NQP"], "Compiler"
    find_lex $P1099, "$/"
    set $S1100, $P1099
    $P1101 = $P1098."parse_name"($S1100)
    store_lex "@name", $P1101
.annotate 'line', 340
    get_hll_global $P1102, ["PAST"], "Var"
    find_lex $P1103, "@name"
    $P1104 = $P1103."pop"()
    set $S1105, $P1104
    $P1106 = $P1102."new"($S1105 :named("name"))
    store_lex "$past", $P1106
.annotate 'line', 341
    find_lex $P1108, "@name"
    unless $P1108, if_1107_end
.annotate 'line', 342
    find_lex $P1110, "@name"
    unless_null $P1110, vivify_402
    $P1110 = root_new ['parrot';'ResizablePMCArray']
  vivify_402:
    set $P1111, $P1110[0]
    unless_null $P1111, vivify_403
    new $P1111, "Undef"
  vivify_403:
    set $S1112, $P1111
    iseq $I1113, $S1112, "GLOBAL"
    unless $I1113, if_1109_end
    find_lex $P1114, "@name"
    $P1114."shift"()
  if_1109_end:
.annotate 'line', 343
    find_lex $P1115, "$past"
    find_lex $P1116, "@name"
    $P1115."namespace"($P1116)
.annotate 'line', 344
    find_lex $P1117, "$past"
    $P1117."scope"("package")
.annotate 'line', 345
    find_lex $P1118, "$past"
    find_lex $P1119, "$/"
    unless_null $P1119, vivify_404
    $P1119 = root_new ['parrot';'Hash']
  vivify_404:
    set $P1120, $P1119["sigil"]
    unless_null $P1120, vivify_405
    new $P1120, "Undef"
  vivify_405:
    $P1121 = "vivitype"($P1120)
    $P1118."viviself"($P1121)
.annotate 'line', 346
    find_lex $P1122, "$past"
    $P1122."lvalue"(1)
  if_1107_end:
.annotate 'line', 348
    find_lex $P1125, "$/"
    unless_null $P1125, vivify_406
    $P1125 = root_new ['parrot';'Hash']
  vivify_406:
    set $P1126, $P1125["twigil"]
    unless_null $P1126, vivify_407
    $P1126 = root_new ['parrot';'ResizablePMCArray']
  vivify_407:
    set $P1127, $P1126[0]
    unless_null $P1127, vivify_408
    new $P1127, "Undef"
  vivify_408:
    set $S1128, $P1127
    iseq $I1129, $S1128, "*"
    if $I1129, if_1124
.annotate 'line', 361
    find_lex $P1151, "$/"
    unless_null $P1151, vivify_409
    $P1151 = root_new ['parrot';'Hash']
  vivify_409:
    set $P1152, $P1151["twigil"]
    unless_null $P1152, vivify_410
    $P1152 = root_new ['parrot';'ResizablePMCArray']
  vivify_410:
    set $P1153, $P1152[0]
    unless_null $P1153, vivify_411
    new $P1153, "Undef"
  vivify_411:
    set $S1154, $P1153
    iseq $I1155, $S1154, "!"
    if $I1155, if_1150
    new $P1149, 'Integer'
    set $P1149, $I1155
    goto if_1150_end
  if_1150:
.annotate 'line', 362
    find_lex $P1156, "$past"
    get_hll_global $P1157, ["PAST"], "Var"
    $P1158 = $P1157."new"("self" :named("name"))
    $P1156."push"($P1158)
.annotate 'line', 363
    find_lex $P1159, "$past"
    $P1159."scope"("attribute")
.annotate 'line', 364
    find_lex $P1160, "$past"
    find_lex $P1161, "$/"
    unless_null $P1161, vivify_412
    $P1161 = root_new ['parrot';'Hash']
  vivify_412:
    set $P1162, $P1161["sigil"]
    unless_null $P1162, vivify_413
    new $P1162, "Undef"
  vivify_413:
    $P1163 = "vivitype"($P1162)
    $P1160."viviself"($P1163)
.annotate 'line', 365
    find_dynamic_lex $P1166, "$*PACKAGE-SETUP"
    unless_null $P1166, vivify_414
    get_hll_global $P1166, "$PACKAGE-SETUP"
    unless_null $P1166, vivify_415
    die "Contextual $*PACKAGE-SETUP not found"
  vivify_415:
  vivify_414:
    if $P1166, if_1165
    set $P1164, $P1166
    goto if_1165_end
  if_1165:
.annotate 'line', 368
    find_lex $P1167, "$past"
    get_hll_global $P1168, ["PAST"], "Var"
    $P1169 = $P1168."new"("$?CLASS" :named("name"))
    $P1170 = $P1167."push"($P1169)
.annotate 'line', 365
    set $P1164, $P1170
  if_1165_end:
.annotate 'line', 361
    set $P1149, $P1164
  if_1150_end:
    set $P1123, $P1149
.annotate 'line', 348
    goto if_1124_end
  if_1124:
.annotate 'line', 349
    find_lex $P1130, "$past"
    $P1130."scope"("contextual")
.annotate 'line', 350
    find_lex $P1131, "$past"
.annotate 'line', 351
    get_hll_global $P1132, ["PAST"], "Var"
.annotate 'line', 353
    find_lex $P1133, "$/"
    unless_null $P1133, vivify_416
    $P1133 = root_new ['parrot';'Hash']
  vivify_416:
    set $P1134, $P1133["sigil"]
    unless_null $P1134, vivify_417
    new $P1134, "Undef"
  vivify_417:
    set $S1135, $P1134
    new $P1136, 'String'
    set $P1136, $S1135
    find_lex $P1137, "$/"
    unless_null $P1137, vivify_418
    $P1137 = root_new ['parrot';'Hash']
  vivify_418:
    set $P1138, $P1137["desigilname"]
    unless_null $P1138, vivify_419
    new $P1138, "Undef"
  vivify_419:
    concat $P1139, $P1136, $P1138
.annotate 'line', 355
    get_hll_global $P1140, ["PAST"], "Op"
    new $P1141, "String"
    assign $P1141, "Contextual "
    find_lex $P1142, "$/"
    set $S1143, $P1142
    concat $P1144, $P1141, $S1143
    concat $P1145, $P1144, " not found"
    $P1146 = $P1140."new"($P1145, "die" :named("pirop"))
    $P1147 = $P1132."new"("package" :named("scope"), "" :named("namespace"), $P1139 :named("name"), $P1146 :named("viviself"))
.annotate 'line', 351
    $P1148 = $P1131."viviself"($P1147)
.annotate 'line', 348
    set $P1123, $P1148
  if_1124_end:
.annotate 'line', 338
    .return ($P1123)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "package_declarator:sym<module>"  :subid("66_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_1178
.annotate 'line', 375
    new $P1177, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1177, control_1176
    push_eh $P1177
    .lex "self", self
    .lex "$/", param_1178
    find_lex $P1179, "$/"
    find_lex $P1180, "$/"
    unless_null $P1180, vivify_422
    $P1180 = root_new ['parrot';'Hash']
  vivify_422:
    set $P1181, $P1180["package_def"]
    unless_null $P1181, vivify_423
    new $P1181, "Undef"
  vivify_423:
    $P1182 = $P1181."ast"()
    $P1183 = $P1179."!make"($P1182)
    .return ($P1183)
  control_1176:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1184, exception, "payload"
    .return ($P1184)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "package_declarator:sym<knowhow>"  :subid("67_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_1188
.annotate 'line', 376
    new $P1187, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1187, control_1186
    push_eh $P1187
    .lex "self", self
    .lex "$/", param_1188
    find_lex $P1189, "$/"
    find_lex $P1190, "$/"
    $P1191 = "package"($P1190)
    $P1192 = $P1189."!make"($P1191)
    .return ($P1192)
  control_1186:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1193, exception, "payload"
    .return ($P1193)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "package_declarator:sym<class>"  :subid("68_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_1197
.annotate 'line', 377
    new $P1196, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1196, control_1195
    push_eh $P1196
    .lex "self", self
    .lex "$/", param_1197
    find_lex $P1198, "$/"
    find_lex $P1199, "$/"
    $P1200 = "old_package"($P1199)
    $P1201 = $P1198."!make"($P1200)
    .return ($P1201)
  control_1195:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1202, exception, "payload"
    .return ($P1202)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "package_declarator:sym<class_6m>"  :subid("69_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_1206
.annotate 'line', 378
    new $P1205, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1205, control_1204
    push_eh $P1205
    .lex "self", self
    .lex "$/", param_1206
    find_lex $P1207, "$/"
    find_lex $P1208, "$/"
    $P1209 = "package"($P1208)
    $P1210 = $P1207."!make"($P1209)
    .return ($P1210)
  control_1204:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1211, exception, "payload"
    .return ($P1211)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "package_declarator:sym<grammar>"  :subid("70_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_1215
.annotate 'line', 379
    new $P1214, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1214, control_1213
    push_eh $P1214
    .lex "self", self
    .lex "$/", param_1215
    find_lex $P1216, "$/"
    find_lex $P1217, "$/"
    $P1218 = "old_package"($P1217)
    $P1219 = $P1216."!make"($P1218)
    .return ($P1219)
  control_1213:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1220, exception, "payload"
    .return ($P1220)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "package_declarator:sym<role>"  :subid("71_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_1224
.annotate 'line', 380
    new $P1223, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1223, control_1222
    push_eh $P1223
    .lex "self", self
    .lex "$/", param_1224
    find_lex $P1225, "$/"
    find_lex $P1226, "$/"
    $P1227 = "package"($P1226)
    $P1228 = $P1225."!make"($P1227)
    .return ($P1228)
  control_1222:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1229, exception, "payload"
    .return ($P1229)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "package_def"  :subid("72_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_1235
.annotate 'line', 480
    new $P1234, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1234, control_1233
    push_eh $P1234
    .lex "self", self
    .lex "$/", param_1235
.annotate 'line', 481
    new $P1236, "Undef"
    .lex "$past", $P1236
    find_lex $P1239, "$/"
    unless_null $P1239, vivify_424
    $P1239 = root_new ['parrot';'Hash']
  vivify_424:
    set $P1240, $P1239["block"]
    unless_null $P1240, vivify_425
    new $P1240, "Undef"
  vivify_425:
    if $P1240, if_1238
    find_lex $P1244, "$/"
    unless_null $P1244, vivify_426
    $P1244 = root_new ['parrot';'Hash']
  vivify_426:
    set $P1245, $P1244["comp_unit"]
    unless_null $P1245, vivify_427
    new $P1245, "Undef"
  vivify_427:
    $P1246 = $P1245."ast"()
    set $P1237, $P1246
    goto if_1238_end
  if_1238:
    find_lex $P1241, "$/"
    unless_null $P1241, vivify_428
    $P1241 = root_new ['parrot';'Hash']
  vivify_428:
    set $P1242, $P1241["block"]
    unless_null $P1242, vivify_429
    new $P1242, "Undef"
  vivify_429:
    $P1243 = $P1242."ast"()
    set $P1237, $P1243
  if_1238_end:
    store_lex "$past", $P1237
.annotate 'line', 482
    find_lex $P1247, "$past"
    find_lex $P1248, "$/"
    unless_null $P1248, vivify_430
    $P1248 = root_new ['parrot';'Hash']
  vivify_430:
    set $P1249, $P1248["name"]
    unless_null $P1249, vivify_431
    $P1249 = root_new ['parrot';'Hash']
  vivify_431:
    set $P1250, $P1249["identifier"]
    unless_null $P1250, vivify_432
    new $P1250, "Undef"
  vivify_432:
    $P1247."namespace"($P1250)
.annotate 'line', 483
    find_lex $P1251, "$past"
    $P1251."blocktype"("immediate")
.annotate 'line', 484
    find_lex $P1252, "$/"
    find_lex $P1253, "$past"
    $P1254 = $P1252."!make"($P1253)
.annotate 'line', 480
    .return ($P1254)
  control_1233:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1255, exception, "payload"
    .return ($P1255)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "scope_declarator:sym<my>"  :subid("73_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_1259
.annotate 'line', 487
    new $P1258, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1258, control_1257
    push_eh $P1258
    .lex "self", self
    .lex "$/", param_1259
    find_lex $P1260, "$/"
    find_lex $P1261, "$/"
    unless_null $P1261, vivify_433
    $P1261 = root_new ['parrot';'Hash']
  vivify_433:
    set $P1262, $P1261["scoped"]
    unless_null $P1262, vivify_434
    new $P1262, "Undef"
  vivify_434:
    $P1263 = $P1262."ast"()
    $P1264 = $P1260."!make"($P1263)
    .return ($P1264)
  control_1257:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1265, exception, "payload"
    .return ($P1265)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "scope_declarator:sym<our>"  :subid("74_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_1269
.annotate 'line', 488
    new $P1268, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1268, control_1267
    push_eh $P1268
    .lex "self", self
    .lex "$/", param_1269
    find_lex $P1270, "$/"
    find_lex $P1271, "$/"
    unless_null $P1271, vivify_435
    $P1271 = root_new ['parrot';'Hash']
  vivify_435:
    set $P1272, $P1271["scoped"]
    unless_null $P1272, vivify_436
    new $P1272, "Undef"
  vivify_436:
    $P1273 = $P1272."ast"()
    $P1274 = $P1270."!make"($P1273)
    .return ($P1274)
  control_1267:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1275, exception, "payload"
    .return ($P1275)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "scope_declarator:sym<has>"  :subid("75_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_1279
.annotate 'line', 489
    new $P1278, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1278, control_1277
    push_eh $P1278
    .lex "self", self
    .lex "$/", param_1279
    find_lex $P1280, "$/"
    find_lex $P1281, "$/"
    unless_null $P1281, vivify_437
    $P1281 = root_new ['parrot';'Hash']
  vivify_437:
    set $P1282, $P1281["scoped"]
    unless_null $P1282, vivify_438
    new $P1282, "Undef"
  vivify_438:
    $P1283 = $P1282."ast"()
    $P1284 = $P1280."!make"($P1283)
    .return ($P1284)
  control_1277:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1285, exception, "payload"
    .return ($P1285)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "scoped"  :subid("76_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_1289
.annotate 'line', 491
    new $P1288, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1288, control_1287
    push_eh $P1288
    .lex "self", self
    .lex "$/", param_1289
.annotate 'line', 492
    find_lex $P1290, "$/"
.annotate 'line', 493
    find_lex $P1293, "$/"
    unless_null $P1293, vivify_439
    $P1293 = root_new ['parrot';'Hash']
  vivify_439:
    set $P1294, $P1293["declarator"]
    unless_null $P1294, vivify_440
    new $P1294, "Undef"
  vivify_440:
    if $P1294, if_1292
.annotate 'line', 494
    find_lex $P1298, "$/"
    unless_null $P1298, vivify_441
    $P1298 = root_new ['parrot';'Hash']
  vivify_441:
    set $P1299, $P1298["multi_declarator"]
    unless_null $P1299, vivify_442
    new $P1299, "Undef"
  vivify_442:
    $P1300 = $P1299."ast"()
    set $P1291, $P1300
.annotate 'line', 493
    goto if_1292_end
  if_1292:
    find_lex $P1295, "$/"
    unless_null $P1295, vivify_443
    $P1295 = root_new ['parrot';'Hash']
  vivify_443:
    set $P1296, $P1295["declarator"]
    unless_null $P1296, vivify_444
    new $P1296, "Undef"
  vivify_444:
    $P1297 = $P1296."ast"()
    set $P1291, $P1297
  if_1292_end:
    $P1301 = $P1290."!make"($P1291)
.annotate 'line', 491
    .return ($P1301)
  control_1287:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1302, exception, "payload"
    .return ($P1302)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "declarator"  :subid("77_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_1306
.annotate 'line', 497
    new $P1305, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1305, control_1304
    push_eh $P1305
    .lex "self", self
    .lex "$/", param_1306
.annotate 'line', 498
    find_lex $P1307, "$/"
.annotate 'line', 499
    find_lex $P1310, "$/"
    unless_null $P1310, vivify_445
    $P1310 = root_new ['parrot';'Hash']
  vivify_445:
    set $P1311, $P1310["routine_declarator"]
    unless_null $P1311, vivify_446
    new $P1311, "Undef"
  vivify_446:
    if $P1311, if_1309
.annotate 'line', 500
    find_lex $P1315, "$/"
    unless_null $P1315, vivify_447
    $P1315 = root_new ['parrot';'Hash']
  vivify_447:
    set $P1316, $P1315["variable_declarator"]
    unless_null $P1316, vivify_448
    new $P1316, "Undef"
  vivify_448:
    $P1317 = $P1316."ast"()
    set $P1308, $P1317
.annotate 'line', 499
    goto if_1309_end
  if_1309:
    find_lex $P1312, "$/"
    unless_null $P1312, vivify_449
    $P1312 = root_new ['parrot';'Hash']
  vivify_449:
    set $P1313, $P1312["routine_declarator"]
    unless_null $P1313, vivify_450
    new $P1313, "Undef"
  vivify_450:
    $P1314 = $P1313."ast"()
    set $P1308, $P1314
  if_1309_end:
    $P1318 = $P1307."!make"($P1308)
.annotate 'line', 497
    .return ($P1318)
  control_1304:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1319, exception, "payload"
    .return ($P1319)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "multi_declarator:sym<multi>"  :subid("78_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_1323
.annotate 'line', 503
    new $P1322, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1322, control_1321
    push_eh $P1322
    .lex "self", self
    .lex "$/", param_1323
    find_lex $P1324, "$/"
    find_lex $P1327, "$/"
    unless_null $P1327, vivify_451
    $P1327 = root_new ['parrot';'Hash']
  vivify_451:
    set $P1328, $P1327["declarator"]
    unless_null $P1328, vivify_452
    new $P1328, "Undef"
  vivify_452:
    if $P1328, if_1326
    find_lex $P1332, "$/"
    unless_null $P1332, vivify_453
    $P1332 = root_new ['parrot';'Hash']
  vivify_453:
    set $P1333, $P1332["routine_def"]
    unless_null $P1333, vivify_454
    new $P1333, "Undef"
  vivify_454:
    $P1334 = $P1333."ast"()
    set $P1325, $P1334
    goto if_1326_end
  if_1326:
    find_lex $P1329, "$/"
    unless_null $P1329, vivify_455
    $P1329 = root_new ['parrot';'Hash']
  vivify_455:
    set $P1330, $P1329["declarator"]
    unless_null $P1330, vivify_456
    new $P1330, "Undef"
  vivify_456:
    $P1331 = $P1330."ast"()
    set $P1325, $P1331
  if_1326_end:
    $P1335 = $P1324."!make"($P1325)
    .return ($P1335)
  control_1321:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1336, exception, "payload"
    .return ($P1336)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "multi_declarator:sym<null>"  :subid("79_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_1340
.annotate 'line', 504
    new $P1339, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1339, control_1338
    push_eh $P1339
    .lex "self", self
    .lex "$/", param_1340
    find_lex $P1341, "$/"
    find_lex $P1342, "$/"
    unless_null $P1342, vivify_457
    $P1342 = root_new ['parrot';'Hash']
  vivify_457:
    set $P1343, $P1342["declarator"]
    unless_null $P1343, vivify_458
    new $P1343, "Undef"
  vivify_458:
    $P1344 = $P1343."ast"()
    $P1345 = $P1341."!make"($P1344)
    .return ($P1345)
  control_1338:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1346, exception, "payload"
    .return ($P1346)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "variable_declarator"  :subid("80_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_1350
.annotate 'line', 507
    .const 'Sub' $P1419 = "82_1294592831.858" 
    capture_lex $P1419
    .const 'Sub' $P1381 = "81_1294592831.858" 
    capture_lex $P1381
    new $P1349, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1349, control_1348
    push_eh $P1349
    .lex "self", self
    .lex "$/", param_1350
.annotate 'line', 508
    new $P1351, "Undef"
    .lex "$past", $P1351
.annotate 'line', 509
    new $P1352, "Undef"
    .lex "$sigil", $P1352
.annotate 'line', 510
    new $P1353, "Undef"
    .lex "$name", $P1353
.annotate 'line', 511
    new $P1354, "Undef"
    .lex "$BLOCK", $P1354
.annotate 'line', 508
    find_lex $P1355, "$/"
    unless_null $P1355, vivify_459
    $P1355 = root_new ['parrot';'Hash']
  vivify_459:
    set $P1356, $P1355["variable"]
    unless_null $P1356, vivify_460
    new $P1356, "Undef"
  vivify_460:
    $P1357 = $P1356."ast"()
    store_lex "$past", $P1357
.annotate 'line', 509
    find_lex $P1358, "$/"
    unless_null $P1358, vivify_461
    $P1358 = root_new ['parrot';'Hash']
  vivify_461:
    set $P1359, $P1358["variable"]
    unless_null $P1359, vivify_462
    $P1359 = root_new ['parrot';'Hash']
  vivify_462:
    set $P1360, $P1359["sigil"]
    unless_null $P1360, vivify_463
    new $P1360, "Undef"
  vivify_463:
    store_lex "$sigil", $P1360
.annotate 'line', 510
    find_lex $P1361, "$past"
    $P1362 = $P1361."name"()
    store_lex "$name", $P1362
.annotate 'line', 511
    get_global $P1363, "@BLOCK"
    unless_null $P1363, vivify_464
    $P1363 = root_new ['parrot';'ResizablePMCArray']
  vivify_464:
    set $P1364, $P1363[0]
    unless_null $P1364, vivify_465
    new $P1364, "Undef"
  vivify_465:
    store_lex "$BLOCK", $P1364
.annotate 'line', 512
    find_lex $P1366, "$BLOCK"
    find_lex $P1367, "$name"
    $P1368 = $P1366."symbol"($P1367)
    unless $P1368, if_1365_end
.annotate 'line', 513
    find_lex $P1369, "$/"
    $P1370 = $P1369."CURSOR"()
    find_lex $P1371, "$name"
    $P1370."panic"("Redeclaration of symbol ", $P1371)
  if_1365_end:
.annotate 'line', 515
    find_dynamic_lex $P1373, "$*SCOPE"
    unless_null $P1373, vivify_466
    get_hll_global $P1373, "$SCOPE"
    unless_null $P1373, vivify_467
    die "Contextual $*SCOPE not found"
  vivify_467:
  vivify_466:
    set $S1374, $P1373
    iseq $I1375, $S1374, "has"
    if $I1375, if_1372
.annotate 'line', 544
    .const 'Sub' $P1419 = "82_1294592831.858" 
    capture_lex $P1419
    $P1419()
    goto if_1372_end
  if_1372:
.annotate 'line', 516
    find_lex $P1376, "$BLOCK"
    find_lex $P1377, "$name"
    $P1376."symbol"($P1377, "attribute" :named("scope"))
.annotate 'line', 517
    find_dynamic_lex $P1379, "$*PACKAGE-SETUP"
    unless_null $P1379, vivify_472
    get_hll_global $P1379, "$PACKAGE-SETUP"
    unless_null $P1379, vivify_473
    die "Contextual $*PACKAGE-SETUP not found"
  vivify_473:
  vivify_472:
    if $P1379, if_1378
.annotate 'line', 536
    find_lex $P1408, "$BLOCK"
    unless_null $P1408, vivify_474
    $P1408 = root_new ['parrot';'Hash']
  vivify_474:
    set $P1409, $P1408["attributes"]
    unless_null $P1409, vivify_475
    new $P1409, "Undef"
  vivify_475:
    if $P1409, unless_1407_end
.annotate 'line', 538
    get_hll_global $P1410, ["PAST"], "Op"
    $P1411 = $P1410."new"("list" :named("pasttype"), "attr" :named("named"))
    find_lex $P1412, "$BLOCK"
    unless_null $P1412, vivify_476
    $P1412 = root_new ['parrot';'Hash']
    store_lex "$BLOCK", $P1412
  vivify_476:
    set $P1412["attributes"], $P1411
  unless_1407_end:
.annotate 'line', 540
    find_lex $P1413, "$BLOCK"
    unless_null $P1413, vivify_477
    $P1413 = root_new ['parrot';'Hash']
  vivify_477:
    set $P1414, $P1413["attributes"]
    unless_null $P1414, vivify_478
    new $P1414, "Undef"
  vivify_478:
    find_lex $P1415, "$name"
    $P1414."push"($P1415)
.annotate 'line', 534
    goto if_1378_end
  if_1378:
.annotate 'line', 517
    .const 'Sub' $P1381 = "81_1294592831.858" 
    capture_lex $P1381
    $P1381()
  if_1378_end:
.annotate 'line', 542
    get_hll_global $P1416, ["PAST"], "Stmts"
    $P1417 = $P1416."new"()
    store_lex "$past", $P1417
  if_1372_end:
.annotate 'line', 552
    find_lex $P1443, "$/"
    find_lex $P1444, "$past"
    $P1445 = $P1443."!make"($P1444)
.annotate 'line', 507
    .return ($P1445)
  control_1348:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1446, exception, "payload"
    .return ($P1446)
.end


.namespace ["NQP";"Actions"]
.sub "_block1418"  :anon :subid("82_1294592831.858") :outer("80_1294592831.858")
.annotate 'line', 545
    new $P1420, "Undef"
    .lex "$scope", $P1420
.annotate 'line', 546
    new $P1421, "Undef"
    .lex "$decl", $P1421
.annotate 'line', 545
    find_dynamic_lex $P1424, "$*SCOPE"
    unless_null $P1424, vivify_468
    get_hll_global $P1424, "$SCOPE"
    unless_null $P1424, vivify_469
    die "Contextual $*SCOPE not found"
  vivify_469:
  vivify_468:
    set $S1425, $P1424
    iseq $I1426, $S1425, "our"
    if $I1426, if_1423
    new $P1428, "String"
    assign $P1428, "lexical"
    set $P1422, $P1428
    goto if_1423_end
  if_1423:
    new $P1427, "String"
    assign $P1427, "package"
    set $P1422, $P1427
  if_1423_end:
    store_lex "$scope", $P1422
.annotate 'line', 546
    get_hll_global $P1429, ["PAST"], "Var"
    find_lex $P1430, "$name"
    find_lex $P1431, "$scope"
.annotate 'line', 547
    find_lex $P1432, "$sigil"
    $P1433 = "vivitype"($P1432)
    find_lex $P1434, "$/"
    $P1435 = $P1429."new"($P1430 :named("name"), $P1431 :named("scope"), 1 :named("isdecl"), 1 :named("lvalue"), $P1433 :named("viviself"), $P1434 :named("node"))
.annotate 'line', 546
    store_lex "$decl", $P1435
.annotate 'line', 549
    find_lex $P1436, "$BLOCK"
    find_lex $P1437, "$name"
    find_lex $P1438, "$scope"
    $P1436."symbol"($P1437, $P1438 :named("scope"))
.annotate 'line', 550
    find_lex $P1439, "$BLOCK"
    unless_null $P1439, vivify_470
    $P1439 = root_new ['parrot';'ResizablePMCArray']
  vivify_470:
    set $P1440, $P1439[0]
    unless_null $P1440, vivify_471
    new $P1440, "Undef"
  vivify_471:
    find_lex $P1441, "$decl"
    $P1442 = $P1440."push"($P1441)
.annotate 'line', 544
    .return ($P1442)
.end


.namespace ["NQP";"Actions"]
.sub "_block1380"  :anon :subid("81_1294592831.858") :outer("80_1294592831.858")
.annotate 'line', 519
    new $P1382, "Undef"
    .lex "$meta-attr-type", $P1382
    find_dynamic_lex $P1385, "$*PKGDECL"
    unless_null $P1385, vivify_479
    get_hll_global $P1385, "$PKGDECL"
    unless_null $P1385, vivify_480
    die "Contextual $*PKGDECL not found"
  vivify_480:
  vivify_479:
    find_dynamic_lex $P1386, "%*HOW-METAATTR"
    unless_null $P1386, vivify_481
    get_hll_global $P1386, "%HOW-METAATTR"
    unless_null $P1386, vivify_482
    die "Contextual %*HOW-METAATTR not found"
  vivify_482:
  vivify_481:
    set $P1387, $P1386[$P1385]
    unless_null $P1387, vivify_483
    new $P1387, "Undef"
  vivify_483:
    unless $P1387, unless_1384
    set $P1383, $P1387
    goto unless_1384_end
  unless_1384:
    find_dynamic_lex $P1388, "$*DEFAULT-METAATTR"
    unless_null $P1388, vivify_484
    get_hll_global $P1388, "$DEFAULT-METAATTR"
    unless_null $P1388, vivify_485
    die "Contextual $*DEFAULT-METAATTR not found"
  vivify_485:
  vivify_484:
    set $P1383, $P1388
  unless_1384_end:
    store_lex "$meta-attr-type", $P1383
.annotate 'line', 520
    find_dynamic_lex $P1389, "$*PACKAGE-SETUP"
    unless_null $P1389, vivify_486
    get_hll_global $P1389, "$PACKAGE-SETUP"
    unless_null $P1389, vivify_487
    die "Contextual $*PACKAGE-SETUP not found"
  vivify_487:
  vivify_486:
    get_hll_global $P1390, ["PAST"], "Op"
.annotate 'line', 522
    get_hll_global $P1391, ["PAST"], "Op"
.annotate 'line', 524
    get_hll_global $P1392, ["PAST"], "Var"
    $P1393 = $P1392."new"("type_obj" :named("name"), "register" :named("scope"))
    $P1394 = $P1391."new"($P1393, "get_how PP" :named("pirop"))
.annotate 'line', 526
    get_hll_global $P1395, ["PAST"], "Var"
    $P1396 = $P1395."new"("type_obj" :named("name"), "register" :named("scope"))
.annotate 'line', 527
    get_hll_global $P1397, ["PAST"], "Op"
.annotate 'line', 529
    get_hll_global $P1398, ["PAST"], "Var"
    find_lex $P1399, "$meta-attr-type"
    $P1400 = $P1398."new"($P1399 :named("name"), "" :named("namespace"), "package" :named("scope"))
.annotate 'line', 530
    get_hll_global $P1401, ["PAST"], "Val"
    find_lex $P1402, "$name"
    $P1403 = $P1401."new"($P1402 :named("value"), "name" :named("named"))
    $P1404 = $P1397."new"($P1400, $P1403, "callmethod" :named("pasttype"), "new" :named("name"))
.annotate 'line', 527
    $P1405 = $P1390."new"($P1394, $P1396, $P1404, "callmethod" :named("pasttype"), "add_attribute" :named("name"))
.annotate 'line', 520
    $P1406 = $P1389."push"($P1405)
.annotate 'line', 517
    .return ($P1406)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "routine_declarator:sym<sub>"  :subid("83_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_1450
.annotate 'line', 555
    new $P1449, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1449, control_1448
    push_eh $P1449
    .lex "self", self
    .lex "$/", param_1450
    find_lex $P1451, "$/"
    find_lex $P1452, "$/"
    unless_null $P1452, vivify_488
    $P1452 = root_new ['parrot';'Hash']
  vivify_488:
    set $P1453, $P1452["routine_def"]
    unless_null $P1453, vivify_489
    new $P1453, "Undef"
  vivify_489:
    $P1454 = $P1453."ast"()
    $P1455 = $P1451."!make"($P1454)
    .return ($P1455)
  control_1448:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1456, exception, "payload"
    .return ($P1456)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "routine_declarator:sym<method>"  :subid("84_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_1460
.annotate 'line', 556
    new $P1459, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1459, control_1458
    push_eh $P1459
    .lex "self", self
    .lex "$/", param_1460
    find_lex $P1461, "$/"
    find_lex $P1462, "$/"
    unless_null $P1462, vivify_490
    $P1462 = root_new ['parrot';'Hash']
  vivify_490:
    set $P1463, $P1462["method_def"]
    unless_null $P1463, vivify_491
    new $P1463, "Undef"
  vivify_491:
    $P1464 = $P1463."ast"()
    $P1465 = $P1461."!make"($P1464)
    .return ($P1465)
  control_1458:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1466, exception, "payload"
    .return ($P1466)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "routine_def"  :subid("85_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_1470
.annotate 'line', 558
    .const 'Sub' $P1529 = "87_1294592831.858" 
    capture_lex $P1529
    .const 'Sub' $P1483 = "86_1294592831.858" 
    capture_lex $P1483
    new $P1469, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1469, control_1468
    push_eh $P1469
    .lex "self", self
    .lex "$/", param_1470
.annotate 'line', 559
    new $P1471, "Undef"
    .lex "$block", $P1471
.annotate 'line', 562
    new $P1472, "Undef"
    .lex "$past", $P1472
.annotate 'line', 559
    find_lex $P1473, "$/"
    unless_null $P1473, vivify_492
    $P1473 = root_new ['parrot';'Hash']
  vivify_492:
    set $P1474, $P1473["blockoid"]
    unless_null $P1474, vivify_493
    new $P1474, "Undef"
  vivify_493:
    $P1475 = $P1474."ast"()
    store_lex "$block", $P1475
.annotate 'line', 560
    find_lex $P1476, "$block"
    $P1476."blocktype"("declaration")
.annotate 'line', 561
    find_lex $P1477, "$block"
    $P1477."control"("return_pir")
.annotate 'line', 562
    find_lex $P1478, "$block"
    store_lex "$past", $P1478
.annotate 'line', 563
    find_lex $P1480, "$/"
    unless_null $P1480, vivify_494
    $P1480 = root_new ['parrot';'Hash']
  vivify_494:
    set $P1481, $P1480["deflongname"]
    unless_null $P1481, vivify_495
    new $P1481, "Undef"
  vivify_495:
    unless $P1481, if_1479_end
    .const 'Sub' $P1483 = "86_1294592831.858" 
    capture_lex $P1483
    $P1483()
  if_1479_end:
.annotate 'line', 573
    find_lex $P1515, "$block"
    find_lex $P1516, "$past"
    unless_null $P1516, vivify_509
    $P1516 = root_new ['parrot';'Hash']
    store_lex "$past", $P1516
  vivify_509:
    set $P1516["block_past"], $P1515
.annotate 'line', 574
    find_lex $P1517, "$/"
    find_lex $P1518, "$past"
    $P1517."!make"($P1518)
.annotate 'line', 575
    find_lex $P1521, "$/"
    unless_null $P1521, vivify_510
    $P1521 = root_new ['parrot';'Hash']
  vivify_510:
    set $P1522, $P1521["trait"]
    unless_null $P1522, vivify_511
    new $P1522, "Undef"
  vivify_511:
    if $P1522, if_1520
    set $P1519, $P1522
    goto if_1520_end
  if_1520:
.annotate 'line', 576
    find_lex $P1524, "$/"
    unless_null $P1524, vivify_512
    $P1524 = root_new ['parrot';'Hash']
  vivify_512:
    set $P1525, $P1524["trait"]
    unless_null $P1525, vivify_513
    new $P1525, "Undef"
  vivify_513:
    defined $I1526, $P1525
    unless $I1526, for_undef_514
    iter $P1523, $P1525
    new $P1536, 'ExceptionHandler'
    set_addr $P1536, loop1535_handler
    $P1536."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1536
  loop1535_test:
    unless $P1523, loop1535_done
    shift $P1527, $P1523
  loop1535_redo:
    .const 'Sub' $P1529 = "87_1294592831.858" 
    capture_lex $P1529
    $P1529($P1527)
  loop1535_next:
    goto loop1535_test
  loop1535_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1537, exception, 'type'
    eq $P1537, .CONTROL_LOOP_NEXT, loop1535_next
    eq $P1537, .CONTROL_LOOP_REDO, loop1535_redo
  loop1535_done:
    pop_eh 
  for_undef_514:
.annotate 'line', 575
    set $P1519, $P1523
  if_1520_end:
.annotate 'line', 558
    .return ($P1519)
  control_1468:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1538, exception, "payload"
    .return ($P1538)
.end


.namespace ["NQP";"Actions"]
.sub "_block1482"  :anon :subid("86_1294592831.858") :outer("85_1294592831.858")
.annotate 'line', 564
    new $P1484, "Undef"
    .lex "$name", $P1484
    find_lex $P1485, "$/"
    unless_null $P1485, vivify_496
    $P1485 = root_new ['parrot';'Hash']
  vivify_496:
    set $P1486, $P1485["sigil"]
    unless_null $P1486, vivify_497
    $P1486 = root_new ['parrot';'ResizablePMCArray']
  vivify_497:
    set $P1487, $P1486[0]
    unless_null $P1487, vivify_498
    new $P1487, "Undef"
  vivify_498:
    set $S1488, $P1487
    new $P1489, 'String'
    set $P1489, $S1488
    find_lex $P1490, "$/"
    unless_null $P1490, vivify_499
    $P1490 = root_new ['parrot';'Hash']
  vivify_499:
    set $P1491, $P1490["deflongname"]
    unless_null $P1491, vivify_500
    $P1491 = root_new ['parrot';'ResizablePMCArray']
  vivify_500:
    set $P1492, $P1491[0]
    unless_null $P1492, vivify_501
    new $P1492, "Undef"
  vivify_501:
    $S1493 = $P1492."ast"()
    concat $P1494, $P1489, $S1493
    store_lex "$name", $P1494
.annotate 'line', 565
    find_lex $P1495, "$past"
    find_lex $P1496, "$name"
    $P1495."name"($P1496)
.annotate 'line', 566
    find_dynamic_lex $P1499, "$*SCOPE"
    unless_null $P1499, vivify_502
    get_hll_global $P1499, "$SCOPE"
    unless_null $P1499, vivify_503
    die "Contextual $*SCOPE not found"
  vivify_503:
  vivify_502:
    set $S1500, $P1499
    isne $I1501, $S1500, "our"
    if $I1501, if_1498
    new $P1497, 'Integer'
    set $P1497, $I1501
    goto if_1498_end
  if_1498:
.annotate 'line', 567
    get_global $P1502, "@BLOCK"
    unless_null $P1502, vivify_504
    $P1502 = root_new ['parrot';'ResizablePMCArray']
  vivify_504:
    set $P1503, $P1502[0]
    unless_null $P1503, vivify_505
    $P1503 = root_new ['parrot';'ResizablePMCArray']
  vivify_505:
    set $P1504, $P1503[0]
    unless_null $P1504, vivify_506
    new $P1504, "Undef"
  vivify_506:
    get_hll_global $P1505, ["PAST"], "Var"
    find_lex $P1506, "$name"
    find_lex $P1507, "$past"
    $P1508 = $P1505."new"($P1506 :named("name"), 1 :named("isdecl"), $P1507 :named("viviself"), "lexical" :named("scope"))
    $P1504."push"($P1508)
.annotate 'line', 569
    get_global $P1509, "@BLOCK"
    unless_null $P1509, vivify_507
    $P1509 = root_new ['parrot';'ResizablePMCArray']
  vivify_507:
    set $P1510, $P1509[0]
    unless_null $P1510, vivify_508
    new $P1510, "Undef"
  vivify_508:
    find_lex $P1511, "$name"
    $P1510."symbol"($P1511, "lexical" :named("scope"))
.annotate 'line', 570
    get_hll_global $P1512, ["PAST"], "Var"
    find_lex $P1513, "$name"
    $P1514 = $P1512."new"($P1513 :named("name"))
    store_lex "$past", $P1514
.annotate 'line', 566
    set $P1497, $P1514
  if_1498_end:
.annotate 'line', 563
    .return ($P1497)
.end


.namespace ["NQP";"Actions"]
.sub "_block1528"  :anon :subid("87_1294592831.858") :outer("85_1294592831.858")
    .param pmc param_1530
.annotate 'line', 576
    .lex "$_", param_1530
    find_lex $P1531, "$_"
    $P1532 = $P1531."ast"()
    find_lex $P1533, "$/"
    $P1534 = $P1532($P1533)
    .return ($P1534)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "method_def"  :subid("88_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_1542
.annotate 'line', 581
    .const 'Sub' $P1658 = "93_1294592831.858" 
    capture_lex $P1658
    .const 'Sub' $P1605 = "91_1294592831.858" 
    capture_lex $P1605
    .const 'Sub' $P1546 = "89_1294592831.858" 
    capture_lex $P1546
    new $P1541, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1541, control_1540
    push_eh $P1541
    .lex "self", self
    .lex "$/", param_1542
.annotate 'line', 582
    find_dynamic_lex $P1544, "$*PACKAGE-SETUP"
    unless_null $P1544, vivify_515
    get_hll_global $P1544, "$PACKAGE-SETUP"
    unless_null $P1544, vivify_516
    die "Contextual $*PACKAGE-SETUP not found"
  vivify_516:
  vivify_515:
    if $P1544, if_1543
.annotate 'line', 612
    .const 'Sub' $P1605 = "91_1294592831.858" 
    capture_lex $P1605
    $P1605()
    goto if_1543_end
  if_1543:
.annotate 'line', 582
    .const 'Sub' $P1546 = "89_1294592831.858" 
    capture_lex $P1546
    $P1546()
  if_1543_end:
.annotate 'line', 629
    find_lex $P1650, "$/"
    unless_null $P1650, vivify_547
    $P1650 = root_new ['parrot';'Hash']
  vivify_547:
    set $P1651, $P1650["trait"]
    unless_null $P1651, vivify_548
    new $P1651, "Undef"
  vivify_548:
    if $P1651, if_1649
    set $P1648, $P1651
    goto if_1649_end
  if_1649:
.annotate 'line', 630
    find_lex $P1653, "$/"
    unless_null $P1653, vivify_549
    $P1653 = root_new ['parrot';'Hash']
  vivify_549:
    set $P1654, $P1653["trait"]
    unless_null $P1654, vivify_550
    new $P1654, "Undef"
  vivify_550:
    defined $I1655, $P1654
    unless $I1655, for_undef_551
    iter $P1652, $P1654
    new $P1665, 'ExceptionHandler'
    set_addr $P1665, loop1664_handler
    $P1665."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1665
  loop1664_test:
    unless $P1652, loop1664_done
    shift $P1656, $P1652
  loop1664_redo:
    .const 'Sub' $P1658 = "93_1294592831.858" 
    capture_lex $P1658
    $P1658($P1656)
  loop1664_next:
    goto loop1664_test
  loop1664_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1666, exception, 'type'
    eq $P1666, .CONTROL_LOOP_NEXT, loop1664_next
    eq $P1666, .CONTROL_LOOP_REDO, loop1664_redo
  loop1664_done:
    pop_eh 
  for_undef_551:
.annotate 'line', 629
    set $P1648, $P1652
  if_1649_end:
.annotate 'line', 581
    .return ($P1648)
  control_1540:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1667, exception, "payload"
    .return ($P1667)
.end


.namespace ["NQP";"Actions"]
.sub "_block1604"  :anon :subid("91_1294592831.858") :outer("88_1294592831.858")
.annotate 'line', 612
    .const 'Sub' $P1626 = "92_1294592831.858" 
    capture_lex $P1626
.annotate 'line', 613
    new $P1606, "Undef"
    .lex "$past", $P1606
    find_lex $P1607, "$/"
    unless_null $P1607, vivify_517
    $P1607 = root_new ['parrot';'Hash']
  vivify_517:
    set $P1608, $P1607["blockoid"]
    unless_null $P1608, vivify_518
    new $P1608, "Undef"
  vivify_518:
    $P1609 = $P1608."ast"()
    store_lex "$past", $P1609
.annotate 'line', 614
    find_lex $P1610, "$past"
    $P1610."blocktype"("method")
.annotate 'line', 615
    find_dynamic_lex $P1612, "$*SCOPE"
    unless_null $P1612, vivify_519
    get_hll_global $P1612, "$SCOPE"
    unless_null $P1612, vivify_520
    die "Contextual $*SCOPE not found"
  vivify_520:
  vivify_519:
    set $S1613, $P1612
    iseq $I1614, $S1613, "our"
    unless $I1614, if_1611_end
.annotate 'line', 616
    find_lex $P1615, "$past"
    $P1615."pirflags"(":nsentry")
  if_1611_end:
.annotate 'line', 618
    find_lex $P1616, "$past"
    $P1616."control"("return_pir")
.annotate 'line', 619
    find_lex $P1617, "$past"
    unless_null $P1617, vivify_521
    $P1617 = root_new ['parrot';'ResizablePMCArray']
  vivify_521:
    set $P1618, $P1617[0]
    unless_null $P1618, vivify_522
    new $P1618, "Undef"
  vivify_522:
    get_hll_global $P1619, ["PAST"], "Op"
    $P1620 = $P1619."new"("    .lex \"self\", self" :named("inline"))
    $P1618."unshift"($P1620)
.annotate 'line', 620
    find_lex $P1621, "$past"
    $P1621."symbol"("self", "lexical" :named("scope"))
.annotate 'line', 621
    find_lex $P1623, "$/"
    unless_null $P1623, vivify_523
    $P1623 = root_new ['parrot';'Hash']
  vivify_523:
    set $P1624, $P1623["deflongname"]
    unless_null $P1624, vivify_524
    new $P1624, "Undef"
  vivify_524:
    unless $P1624, if_1622_end
    .const 'Sub' $P1626 = "92_1294592831.858" 
    capture_lex $P1626
    $P1626()
  if_1622_end:
.annotate 'line', 625
    find_dynamic_lex $P1638, "$*MULTINESS"
    unless_null $P1638, vivify_528
    get_hll_global $P1638, "$MULTINESS"
    unless_null $P1638, vivify_529
    die "Contextual $*MULTINESS not found"
  vivify_529:
  vivify_528:
    set $S1639, $P1638
    iseq $I1640, $S1639, "multi"
    unless $I1640, if_1637_end
    find_lex $P1641, "$past"
    $P1642 = $P1641."multi"()
    $P1642."unshift"("_")
  if_1637_end:
.annotate 'line', 626
    find_lex $P1643, "$past"
    find_lex $P1644, "$past"
    unless_null $P1644, vivify_530
    $P1644 = root_new ['parrot';'Hash']
    store_lex "$past", $P1644
  vivify_530:
    set $P1644["block_past"], $P1643
.annotate 'line', 627
    find_dynamic_lex $P1645, "$/"
    find_lex $P1646, "$past"
    $P1647 = $P1645."!make"($P1646)
.annotate 'line', 612
    .return ($P1647)
.end


.namespace ["NQP";"Actions"]
.sub "_block1625"  :anon :subid("92_1294592831.858") :outer("91_1294592831.858")
.annotate 'line', 622
    new $P1627, "Undef"
    .lex "$name", $P1627
    find_lex $P1628, "$/"
    unless_null $P1628, vivify_525
    $P1628 = root_new ['parrot';'Hash']
  vivify_525:
    set $P1629, $P1628["deflongname"]
    unless_null $P1629, vivify_526
    $P1629 = root_new ['parrot';'ResizablePMCArray']
  vivify_526:
    set $P1630, $P1629[0]
    unless_null $P1630, vivify_527
    new $P1630, "Undef"
  vivify_527:
    $P1631 = $P1630."ast"()
    set $S1632, $P1631
    new $P1633, 'String'
    set $P1633, $S1632
    store_lex "$name", $P1633
.annotate 'line', 623
    find_lex $P1634, "$past"
    find_lex $P1635, "$name"
    $P1636 = $P1634."name"($P1635)
.annotate 'line', 621
    .return ($P1636)
.end


.namespace ["NQP";"Actions"]
.sub "_block1545"  :anon :subid("89_1294592831.858") :outer("88_1294592831.858")
.annotate 'line', 582
    .const 'Sub' $P1561 = "90_1294592831.858" 
    capture_lex $P1561
.annotate 'line', 584
    new $P1547, "Undef"
    .lex "$past", $P1547
    find_lex $P1548, "$/"
    unless_null $P1548, vivify_531
    $P1548 = root_new ['parrot';'Hash']
  vivify_531:
    set $P1549, $P1548["blockoid"]
    unless_null $P1549, vivify_532
    new $P1549, "Undef"
  vivify_532:
    $P1550 = $P1549."ast"()
    store_lex "$past", $P1550
.annotate 'line', 585
    find_lex $P1551, "$past"
    $P1551."control"("return_pir")
.annotate 'line', 586
    find_lex $P1552, "$past"
    unless_null $P1552, vivify_533
    $P1552 = root_new ['parrot';'ResizablePMCArray']
  vivify_533:
    set $P1553, $P1552[0]
    unless_null $P1553, vivify_534
    new $P1553, "Undef"
  vivify_534:
    get_hll_global $P1554, ["PAST"], "Var"
    $P1555 = $P1554."new"("self" :named("name"), "parameter" :named("scope"))
    $P1553."unshift"($P1555)
.annotate 'line', 587
    find_lex $P1556, "$past"
    $P1556."symbol"("self", "lexical" :named("scope"))
.annotate 'line', 590
    find_lex $P1558, "$/"
    unless_null $P1558, vivify_535
    $P1558 = root_new ['parrot';'Hash']
  vivify_535:
    set $P1559, $P1558["deflongname"]
    unless_null $P1559, vivify_536
    new $P1559, "Undef"
  vivify_536:
    unless $P1559, if_1557_end
    .const 'Sub' $P1561 = "90_1294592831.858" 
    capture_lex $P1561
    $P1561()
  if_1557_end:
.annotate 'line', 605
    find_dynamic_lex $P1595, "$*SCOPE"
    unless_null $P1595, vivify_544
    get_hll_global $P1595, "$SCOPE"
    unless_null $P1595, vivify_545
    die "Contextual $*SCOPE not found"
  vivify_545:
  vivify_544:
    set $S1596, $P1595
    iseq $I1597, $S1596, "our"
    unless $I1597, if_1594_end
.annotate 'line', 606
    find_lex $P1598, "$past"
    $P1598."pirflags"(":nsentry")
  if_1594_end:
.annotate 'line', 609
    find_lex $P1599, "$past"
    find_lex $P1600, "$past"
    unless_null $P1600, vivify_546
    $P1600 = root_new ['parrot';'Hash']
    store_lex "$past", $P1600
  vivify_546:
    set $P1600["block_past"], $P1599
.annotate 'line', 610
    find_dynamic_lex $P1601, "$/"
    find_lex $P1602, "$past"
    $P1603 = $P1601."!make"($P1602)
.annotate 'line', 582
    .return ($P1603)
.end


.namespace ["NQP";"Actions"]
.sub "_block1560"  :anon :subid("90_1294592831.858") :outer("89_1294592831.858")
.annotate 'line', 591
    new $P1562, "Undef"
    .lex "$name", $P1562
    find_lex $P1563, "$/"
    unless_null $P1563, vivify_537
    $P1563 = root_new ['parrot';'Hash']
  vivify_537:
    set $P1564, $P1563["deflongname"]
    unless_null $P1564, vivify_538
    $P1564 = root_new ['parrot';'ResizablePMCArray']
  vivify_538:
    set $P1565, $P1564[0]
    unless_null $P1565, vivify_539
    new $P1565, "Undef"
  vivify_539:
    $P1566 = $P1565."ast"()
    set $S1567, $P1566
    new $P1568, 'String'
    set $P1568, $S1567
    store_lex "$name", $P1568
.annotate 'line', 592
    find_lex $P1569, "$past"
    find_lex $P1570, "$name"
    $P1569."name"($P1570)
.annotate 'line', 593
    find_dynamic_lex $P1571, "$*PACKAGE-SETUP"
    unless_null $P1571, vivify_540
    get_hll_global $P1571, "$PACKAGE-SETUP"
    unless_null $P1571, vivify_541
    die "Contextual $*PACKAGE-SETUP not found"
  vivify_541:
  vivify_540:
    get_hll_global $P1572, ["PAST"], "Op"
.annotate 'line', 594
    find_dynamic_lex $P1575, "$*MULTINESS"
    unless_null $P1575, vivify_542
    get_hll_global $P1575, "$MULTINESS"
    unless_null $P1575, vivify_543
    die "Contextual $*MULTINESS not found"
  vivify_543:
  vivify_542:
    set $S1576, $P1575
    iseq $I1577, $S1576, "multi"
    if $I1577, if_1574
    new $P1579, "String"
    assign $P1579, "add_method"
    set $P1573, $P1579
    goto if_1574_end
  if_1574:
    new $P1578, "String"
    assign $P1578, "add_multi_method"
    set $P1573, $P1578
  if_1574_end:
.annotate 'line', 595
    get_hll_global $P1580, ["PAST"], "Op"
.annotate 'line', 598
    get_hll_global $P1581, ["PAST"], "Var"
    $P1582 = $P1581."new"("type_obj" :named("name"), "register" :named("scope"))
    $P1583 = $P1580."new"($P1582, "get_how PP" :named("pirop"))
.annotate 'line', 600
    get_hll_global $P1584, ["PAST"], "Var"
    $P1585 = $P1584."new"("type_obj" :named("name"), "register" :named("scope"))
.annotate 'line', 601
    get_hll_global $P1586, ["PAST"], "Val"
    find_lex $P1587, "$name"
    $P1588 = $P1586."new"($P1587 :named("value"))
.annotate 'line', 602
    get_hll_global $P1589, ["PAST"], "Val"
    find_lex $P1590, "$past"
    $P1591 = $P1589."new"($P1590 :named("value"))
    $P1592 = $P1572."new"($P1583, $P1585, $P1588, $P1591, "callmethod" :named("pasttype"), $P1573 :named("name"))
.annotate 'line', 593
    $P1593 = $P1571."push"($P1592)
.annotate 'line', 590
    .return ($P1593)
.end


.namespace ["NQP";"Actions"]
.sub "_block1657"  :anon :subid("93_1294592831.858") :outer("88_1294592831.858")
    .param pmc param_1659
.annotate 'line', 630
    .lex "$_", param_1659
    find_lex $P1660, "$_"
    $P1661 = $P1660."ast"()
    find_lex $P1662, "$/"
    $P1663 = $P1661($P1662)
    .return ($P1663)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "signature"  :subid("94_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_1671
.annotate 'line', 635
    .const 'Sub' $P1697 = "96_1294592831.858" 
    capture_lex $P1697
    .const 'Sub' $P1682 = "95_1294592831.858" 
    capture_lex $P1682
    new $P1670, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1670, control_1669
    push_eh $P1670
    .lex "self", self
    .lex "$/", param_1671
.annotate 'line', 636
    new $P1672, "Undef"
    .lex "$BLOCKINIT", $P1672
    get_global $P1673, "@BLOCK"
    unless_null $P1673, vivify_552
    $P1673 = root_new ['parrot';'ResizablePMCArray']
  vivify_552:
    set $P1674, $P1673[0]
    unless_null $P1674, vivify_553
    $P1674 = root_new ['parrot';'ResizablePMCArray']
  vivify_553:
    set $P1675, $P1674[0]
    unless_null $P1675, vivify_554
    new $P1675, "Undef"
  vivify_554:
    store_lex "$BLOCKINIT", $P1675
.annotate 'line', 638
    find_lex $P1677, "$/"
    unless_null $P1677, vivify_555
    $P1677 = root_new ['parrot';'Hash']
  vivify_555:
    set $P1678, $P1677["parameter"]
    unless_null $P1678, vivify_556
    new $P1678, "Undef"
  vivify_556:
    defined $I1679, $P1678
    unless $I1679, for_undef_557
    iter $P1676, $P1678
    new $P1689, 'ExceptionHandler'
    set_addr $P1689, loop1688_handler
    $P1689."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1689
  loop1688_test:
    unless $P1676, loop1688_done
    shift $P1680, $P1676
  loop1688_redo:
    .const 'Sub' $P1682 = "95_1294592831.858" 
    capture_lex $P1682
    $P1682($P1680)
  loop1688_next:
    goto loop1688_test
  loop1688_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1690, exception, 'type'
    eq $P1690, .CONTROL_LOOP_NEXT, loop1688_next
    eq $P1690, .CONTROL_LOOP_REDO, loop1688_redo
  loop1688_done:
    pop_eh 
  for_undef_557:
.annotate 'line', 641
    find_dynamic_lex $P1693, "$*MULTINESS"
    unless_null $P1693, vivify_558
    get_hll_global $P1693, "$MULTINESS"
    unless_null $P1693, vivify_559
    die "Contextual $*MULTINESS not found"
  vivify_559:
  vivify_558:
    set $S1694, $P1693
    iseq $I1695, $S1694, "multi"
    if $I1695, if_1692
    new $P1691, 'Integer'
    set $P1691, $I1695
    goto if_1692_end
  if_1692:
    .const 'Sub' $P1697 = "96_1294592831.858" 
    capture_lex $P1697
    $P1735 = $P1697()
    set $P1691, $P1735
  if_1692_end:
.annotate 'line', 635
    .return ($P1691)
  control_1669:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1736, exception, "payload"
    .return ($P1736)
.end


.namespace ["NQP";"Actions"]
.sub "_block1681"  :anon :subid("95_1294592831.858") :outer("94_1294592831.858")
    .param pmc param_1683
.annotate 'line', 638
    .lex "$_", param_1683
    find_lex $P1684, "$BLOCKINIT"
    find_lex $P1685, "$_"
    $P1686 = $P1685."ast"()
    $P1687 = $P1684."push"($P1686)
    .return ($P1687)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "_block1696"  :anon :subid("96_1294592831.858") :outer("94_1294592831.858")
.annotate 'line', 641
    .const 'Sub' $P1706 = "97_1294592831.858" 
    capture_lex $P1706
.annotate 'line', 642
    $P1698 = root_new ['parrot';'ResizablePMCArray']
    .lex "@params", $P1698
.annotate 'line', 641
    find_lex $P1699, "@params"
.annotate 'line', 643
    find_lex $P1701, "$BLOCKINIT"
    $P1702 = $P1701."list"()
    defined $I1703, $P1702
    unless $I1703, for_undef_560
    iter $P1700, $P1702
    new $P1729, 'ExceptionHandler'
    set_addr $P1729, loop1728_handler
    $P1729."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1729
  loop1728_test:
    unless $P1700, loop1728_done
    shift $P1704, $P1700
  loop1728_redo:
    .const 'Sub' $P1706 = "97_1294592831.858" 
    capture_lex $P1706
    $P1706($P1704)
  loop1728_next:
    goto loop1728_test
  loop1728_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1730, exception, 'type'
    eq $P1730, .CONTROL_LOOP_NEXT, loop1728_next
    eq $P1730, .CONTROL_LOOP_REDO, loop1728_redo
  loop1728_done:
    pop_eh 
  for_undef_560:
.annotate 'line', 647
    get_global $P1731, "@BLOCK"
    unless_null $P1731, vivify_561
    $P1731 = root_new ['parrot';'ResizablePMCArray']
  vivify_561:
    set $P1732, $P1731[0]
    unless_null $P1732, vivify_562
    new $P1732, "Undef"
  vivify_562:
    find_lex $P1733, "@params"
    $P1734 = $P1732."multi"($P1733)
.annotate 'line', 641
    .return ($P1734)
.end


.namespace ["NQP";"Actions"]
.sub "_block1705"  :anon :subid("97_1294592831.858") :outer("96_1294592831.858")
    .param pmc param_1707
.annotate 'line', 643
    .lex "$_", param_1707
.annotate 'line', 645
    find_lex $P1714, "$_"
    $P1715 = $P1714."slurpy"()
    unless $P1715, unless_1713
    set $P1712, $P1715
    goto unless_1713_end
  unless_1713:
    find_lex $P1716, "$_"
    $P1717 = $P1716."named"()
    set $P1712, $P1717
  unless_1713_end:
    unless $P1712, unless_1711
    set $P1710, $P1712
    goto unless_1711_end
  unless_1711:
    find_lex $P1718, "$_"
    $P1719 = $P1718."viviself"()
    set $P1710, $P1719
  unless_1711_end:
    unless $P1710, unless_1709
    set $P1708, $P1710
    goto unless_1709_end
  unless_1709:
.annotate 'line', 644
    find_lex $P1720, "@params"
    find_lex $P1722, "$_"
    $P1723 = $P1722."multitype"()
    set $P1721, $P1723
    defined $I1725, $P1721
    if $I1725, default_1724
    new $P1726, "String"
    assign $P1726, "_"
    set $P1721, $P1726
  default_1724:
    $P1727 = $P1720."push"($P1721)
    set $P1708, $P1727
  unless_1709_end:
.annotate 'line', 643
    .return ($P1708)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "parameter"  :subid("98_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_1740
.annotate 'line', 651
    .const 'Sub' $P1821 = "99_1294592831.858" 
    capture_lex $P1821
    new $P1739, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1739, control_1738
    push_eh $P1739
    .lex "self", self
    .lex "$/", param_1740
.annotate 'line', 652
    new $P1741, "Undef"
    .lex "$quant", $P1741
.annotate 'line', 653
    new $P1742, "Undef"
    .lex "$past", $P1742
.annotate 'line', 652
    find_lex $P1743, "$/"
    unless_null $P1743, vivify_563
    $P1743 = root_new ['parrot';'Hash']
  vivify_563:
    set $P1744, $P1743["quant"]
    unless_null $P1744, vivify_564
    new $P1744, "Undef"
  vivify_564:
    store_lex "$quant", $P1744
    find_lex $P1745, "$past"
.annotate 'line', 654
    find_lex $P1747, "$/"
    unless_null $P1747, vivify_565
    $P1747 = root_new ['parrot';'Hash']
  vivify_565:
    set $P1748, $P1747["named_param"]
    unless_null $P1748, vivify_566
    new $P1748, "Undef"
  vivify_566:
    if $P1748, if_1746
.annotate 'line', 661
    find_lex $P1762, "$/"
    unless_null $P1762, vivify_567
    $P1762 = root_new ['parrot';'Hash']
  vivify_567:
    set $P1763, $P1762["param_var"]
    unless_null $P1763, vivify_568
    new $P1763, "Undef"
  vivify_568:
    $P1764 = $P1763."ast"()
    store_lex "$past", $P1764
.annotate 'line', 662
    find_lex $P1766, "$quant"
    set $S1767, $P1766
    iseq $I1768, $S1767, "*"
    if $I1768, if_1765
.annotate 'line', 666
    find_lex $P1777, "$quant"
    set $S1778, $P1777
    iseq $I1779, $S1778, "?"
    unless $I1779, if_1776_end
.annotate 'line', 667
    find_lex $P1780, "$past"
    find_lex $P1781, "$/"
    unless_null $P1781, vivify_569
    $P1781 = root_new ['parrot';'Hash']
  vivify_569:
    set $P1782, $P1781["param_var"]
    unless_null $P1782, vivify_570
    $P1782 = root_new ['parrot';'Hash']
  vivify_570:
    set $P1783, $P1782["sigil"]
    unless_null $P1783, vivify_571
    new $P1783, "Undef"
  vivify_571:
    $P1784 = "vivitype"($P1783)
    $P1780."viviself"($P1784)
  if_1776_end:
.annotate 'line', 666
    goto if_1765_end
  if_1765:
.annotate 'line', 663
    find_lex $P1769, "$past"
    $P1769."slurpy"(1)
.annotate 'line', 664
    find_lex $P1770, "$past"
    find_lex $P1771, "$/"
    unless_null $P1771, vivify_572
    $P1771 = root_new ['parrot';'Hash']
  vivify_572:
    set $P1772, $P1771["param_var"]
    unless_null $P1772, vivify_573
    $P1772 = root_new ['parrot';'Hash']
  vivify_573:
    set $P1773, $P1772["sigil"]
    unless_null $P1773, vivify_574
    new $P1773, "Undef"
  vivify_574:
    set $S1774, $P1773
    iseq $I1775, $S1774, "%"
    $P1770."named"($I1775)
  if_1765_end:
.annotate 'line', 660
    goto if_1746_end
  if_1746:
.annotate 'line', 655
    find_lex $P1749, "$/"
    unless_null $P1749, vivify_575
    $P1749 = root_new ['parrot';'Hash']
  vivify_575:
    set $P1750, $P1749["named_param"]
    unless_null $P1750, vivify_576
    new $P1750, "Undef"
  vivify_576:
    $P1751 = $P1750."ast"()
    store_lex "$past", $P1751
.annotate 'line', 656
    find_lex $P1753, "$quant"
    set $S1754, $P1753
    isne $I1755, $S1754, "!"
    unless $I1755, if_1752_end
.annotate 'line', 657
    find_lex $P1756, "$past"
    find_lex $P1757, "$/"
    unless_null $P1757, vivify_577
    $P1757 = root_new ['parrot';'Hash']
  vivify_577:
    set $P1758, $P1757["named_param"]
    unless_null $P1758, vivify_578
    $P1758 = root_new ['parrot';'Hash']
  vivify_578:
    set $P1759, $P1758["param_var"]
    unless_null $P1759, vivify_579
    $P1759 = root_new ['parrot';'Hash']
  vivify_579:
    set $P1760, $P1759["sigil"]
    unless_null $P1760, vivify_580
    new $P1760, "Undef"
  vivify_580:
    $P1761 = "vivitype"($P1760)
    $P1756."viviself"($P1761)
  if_1752_end:
  if_1746_end:
.annotate 'line', 670
    find_lex $P1786, "$/"
    unless_null $P1786, vivify_581
    $P1786 = root_new ['parrot';'Hash']
  vivify_581:
    set $P1787, $P1786["default_value"]
    unless_null $P1787, vivify_582
    new $P1787, "Undef"
  vivify_582:
    unless $P1787, if_1785_end
.annotate 'line', 671
    find_lex $P1789, "$quant"
    set $S1790, $P1789
    iseq $I1791, $S1790, "*"
    unless $I1791, if_1788_end
.annotate 'line', 672
    find_lex $P1792, "$/"
    $P1793 = $P1792."CURSOR"()
    $P1793."panic"("Can't put default on slurpy parameter")
  if_1788_end:
.annotate 'line', 674
    find_lex $P1795, "$quant"
    set $S1796, $P1795
    iseq $I1797, $S1796, "!"
    unless $I1797, if_1794_end
.annotate 'line', 675
    find_lex $P1798, "$/"
    $P1799 = $P1798."CURSOR"()
    $P1799."panic"("Can't put default on required parameter")
  if_1794_end:
.annotate 'line', 677
    find_lex $P1800, "$past"
    find_lex $P1801, "$/"
    unless_null $P1801, vivify_583
    $P1801 = root_new ['parrot';'Hash']
  vivify_583:
    set $P1802, $P1801["default_value"]
    unless_null $P1802, vivify_584
    $P1802 = root_new ['parrot';'ResizablePMCArray']
  vivify_584:
    set $P1803, $P1802[0]
    unless_null $P1803, vivify_585
    $P1803 = root_new ['parrot';'Hash']
  vivify_585:
    set $P1804, $P1803["EXPR"]
    unless_null $P1804, vivify_586
    new $P1804, "Undef"
  vivify_586:
    $P1805 = $P1804."ast"()
    $P1800."viviself"($P1805)
  if_1785_end:
.annotate 'line', 679
    find_lex $P1807, "$past"
    $P1808 = $P1807."viviself"()
    if $P1808, unless_1806_end
    get_global $P1809, "@BLOCK"
    unless_null $P1809, vivify_587
    $P1809 = root_new ['parrot';'ResizablePMCArray']
  vivify_587:
    set $P1810, $P1809[0]
    unless_null $P1810, vivify_588
    new $P1810, "Undef"
  vivify_588:
    get_global $P1811, "@BLOCK"
    unless_null $P1811, vivify_589
    $P1811 = root_new ['parrot';'ResizablePMCArray']
  vivify_589:
    set $P1812, $P1811[0]
    unless_null $P1812, vivify_590
    new $P1812, "Undef"
  vivify_590:
    $P1813 = $P1812."arity"()
    set $N1814, $P1813
    new $P1815, 'Float'
    set $P1815, $N1814
    add $P1816, $P1815, 1
    $P1810."arity"($P1816)
  unless_1806_end:
.annotate 'line', 682
    find_lex $P1818, "$/"
    unless_null $P1818, vivify_591
    $P1818 = root_new ['parrot';'Hash']
  vivify_591:
    set $P1819, $P1818["typename"]
    unless_null $P1819, vivify_592
    new $P1819, "Undef"
  vivify_592:
    unless $P1819, if_1817_end
    .const 'Sub' $P1821 = "99_1294592831.858" 
    capture_lex $P1821
    $P1821()
  if_1817_end:
.annotate 'line', 688
    find_lex $P1845, "$/"
    find_lex $P1846, "$past"
    $P1847 = $P1845."!make"($P1846)
.annotate 'line', 651
    .return ($P1847)
  control_1738:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1848, exception, "payload"
    .return ($P1848)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "_block1820"  :anon :subid("99_1294592831.858") :outer("98_1294592831.858")
.annotate 'line', 682
    .const 'Sub' $P1833 = "100_1294592831.858" 
    capture_lex $P1833
.annotate 'line', 683
    $P1822 = root_new ['parrot';'ResizablePMCArray']
    .lex "@multitype", $P1822
.annotate 'line', 682
    find_lex $P1823, "@multitype"
.annotate 'line', 684
    find_lex $P1825, "$/"
    unless_null $P1825, vivify_593
    $P1825 = root_new ['parrot';'Hash']
  vivify_593:
    set $P1826, $P1825["typename"]
    unless_null $P1826, vivify_594
    $P1826 = root_new ['parrot';'ResizablePMCArray']
  vivify_594:
    set $P1827, $P1826[0]
    unless_null $P1827, vivify_595
    $P1827 = root_new ['parrot';'Hash']
  vivify_595:
    set $P1828, $P1827["name"]
    unless_null $P1828, vivify_596
    $P1828 = root_new ['parrot';'Hash']
  vivify_596:
    set $P1829, $P1828["identifier"]
    unless_null $P1829, vivify_597
    new $P1829, "Undef"
  vivify_597:
    defined $I1830, $P1829
    unless $I1830, for_undef_598
    iter $P1824, $P1829
    new $P1840, 'ExceptionHandler'
    set_addr $P1840, loop1839_handler
    $P1840."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1840
  loop1839_test:
    unless $P1824, loop1839_done
    shift $P1831, $P1824
  loop1839_redo:
    .const 'Sub' $P1833 = "100_1294592831.858" 
    capture_lex $P1833
    $P1833($P1831)
  loop1839_next:
    goto loop1839_test
  loop1839_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1841, exception, 'type'
    eq $P1841, .CONTROL_LOOP_NEXT, loop1839_next
    eq $P1841, .CONTROL_LOOP_REDO, loop1839_redo
  loop1839_done:
    pop_eh 
  for_undef_598:
.annotate 'line', 685
    find_lex $P1842, "$past"
    find_lex $P1843, "@multitype"
    $P1844 = $P1842."multitype"($P1843)
.annotate 'line', 682
    .return ($P1844)
.end


.namespace ["NQP";"Actions"]
.sub "_block1832"  :anon :subid("100_1294592831.858") :outer("99_1294592831.858")
    .param pmc param_1834
.annotate 'line', 684
    .lex "$_", param_1834
    find_lex $P1835, "@multitype"
    find_lex $P1836, "$_"
    set $S1837, $P1836
    $P1838 = $P1835."push"($S1837)
    .return ($P1838)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "param_var"  :subid("101_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_1852
.annotate 'line', 691
    new $P1851, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1851, control_1850
    push_eh $P1851
    .lex "self", self
    .lex "$/", param_1852
.annotate 'line', 692
    new $P1853, "Undef"
    .lex "$name", $P1853
.annotate 'line', 693
    new $P1854, "Undef"
    .lex "$past", $P1854
.annotate 'line', 692
    find_lex $P1855, "$/"
    set $S1856, $P1855
    new $P1857, 'String'
    set $P1857, $S1856
    store_lex "$name", $P1857
.annotate 'line', 693
    get_hll_global $P1858, ["PAST"], "Var"
    find_lex $P1859, "$name"
    find_lex $P1860, "$/"
    $P1861 = $P1858."new"($P1859 :named("name"), "parameter" :named("scope"), 1 :named("isdecl"), $P1860 :named("node"))
    store_lex "$past", $P1861
.annotate 'line', 695
    get_global $P1862, "@BLOCK"
    unless_null $P1862, vivify_599
    $P1862 = root_new ['parrot';'ResizablePMCArray']
  vivify_599:
    set $P1863, $P1862[0]
    unless_null $P1863, vivify_600
    new $P1863, "Undef"
  vivify_600:
    find_lex $P1864, "$name"
    $P1863."symbol"($P1864, "lexical" :named("scope"))
.annotate 'line', 696
    find_lex $P1865, "$/"
    find_lex $P1866, "$past"
    $P1867 = $P1865."!make"($P1866)
.annotate 'line', 691
    .return ($P1867)
  control_1850:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1868, exception, "payload"
    .return ($P1868)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "named_param"  :subid("102_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_1872
.annotate 'line', 699
    new $P1871, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1871, control_1870
    push_eh $P1871
    .lex "self", self
    .lex "$/", param_1872
.annotate 'line', 700
    new $P1873, "Undef"
    .lex "$past", $P1873
    find_lex $P1874, "$/"
    unless_null $P1874, vivify_601
    $P1874 = root_new ['parrot';'Hash']
  vivify_601:
    set $P1875, $P1874["param_var"]
    unless_null $P1875, vivify_602
    new $P1875, "Undef"
  vivify_602:
    $P1876 = $P1875."ast"()
    store_lex "$past", $P1876
.annotate 'line', 701
    find_lex $P1877, "$past"
    find_lex $P1878, "$/"
    unless_null $P1878, vivify_603
    $P1878 = root_new ['parrot';'Hash']
  vivify_603:
    set $P1879, $P1878["param_var"]
    unless_null $P1879, vivify_604
    $P1879 = root_new ['parrot';'Hash']
  vivify_604:
    set $P1880, $P1879["name"]
    unless_null $P1880, vivify_605
    new $P1880, "Undef"
  vivify_605:
    set $S1881, $P1880
    $P1877."named"($S1881)
.annotate 'line', 702
    find_lex $P1882, "$/"
    find_lex $P1883, "$past"
    $P1884 = $P1882."!make"($P1883)
.annotate 'line', 699
    .return ($P1884)
  control_1870:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1885, exception, "payload"
    .return ($P1885)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "trait"  :subid("103_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_1889
.annotate 'line', 705
    new $P1888, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1888, control_1887
    push_eh $P1888
    .lex "self", self
    .lex "$/", param_1889
.annotate 'line', 706
    find_lex $P1890, "$/"
    find_lex $P1891, "$/"
    unless_null $P1891, vivify_606
    $P1891 = root_new ['parrot';'Hash']
  vivify_606:
    set $P1892, $P1891["trait_mod"]
    unless_null $P1892, vivify_607
    new $P1892, "Undef"
  vivify_607:
    $P1893 = $P1892."ast"()
    $P1894 = $P1890."!make"($P1893)
.annotate 'line', 705
    .return ($P1894)
  control_1887:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1895, exception, "payload"
    .return ($P1895)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "trait_mod:sym<is>"  :subid("104_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_1899
.annotate 'line', 709
    .const 'Sub' $P1919 = "105_1294592831.858" 
    capture_lex $P1919
    new $P1898, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1898, control_1897
    push_eh $P1898
    .lex "self", self
    .lex "$/", param_1899
.annotate 'line', 710
    new $P1900, "Undef"
    .lex "$cpast", $P1900
    find_lex $P1901, "$/"
    unless_null $P1901, vivify_608
    $P1901 = root_new ['parrot';'Hash']
  vivify_608:
    set $P1902, $P1901["circumfix"]
    unless_null $P1902, vivify_609
    $P1902 = root_new ['parrot';'ResizablePMCArray']
  vivify_609:
    set $P1903, $P1902[0]
    unless_null $P1903, vivify_610
    new $P1903, "Undef"
  vivify_610:
    $P1904 = $P1903."ast"()
    store_lex "$cpast", $P1904
.annotate 'line', 711
    find_lex $P1907, "$/"
    unless_null $P1907, vivify_611
    $P1907 = root_new ['parrot';'Hash']
  vivify_611:
    set $P1908, $P1907["longname"]
    unless_null $P1908, vivify_612
    new $P1908, "Undef"
  vivify_612:
    set $S1909, $P1908
    iseq $I1910, $S1909, "pirflags"
    if $I1910, if_1906
.annotate 'line', 717
    find_lex $P1929, "$/"
    $P1930 = $P1929."CURSOR"()
    new $P1931, 'String'
    set $P1931, "Trait '"
    find_lex $P1932, "$/"
    unless_null $P1932, vivify_613
    $P1932 = root_new ['parrot';'Hash']
  vivify_613:
    set $P1933, $P1932["longname"]
    unless_null $P1933, vivify_614
    new $P1933, "Undef"
  vivify_614:
    concat $P1934, $P1931, $P1933
    concat $P1935, $P1934, "' not implemented"
    $P1936 = $P1930."panic"($P1935)
.annotate 'line', 716
    set $P1905, $P1936
.annotate 'line', 711
    goto if_1906_end
  if_1906:
.annotate 'line', 713
    get_hll_global $P1912, ["PAST"], "Val"
    find_lex $P1913, "$cpast"
    $P1914 = $P1912."ACCEPTS"($P1913)
    if $P1914, unless_1911_end
.annotate 'line', 712
    find_lex $P1915, "$/"
    $P1916 = $P1915."CURSOR"()
    $P1916."panic"("Trait 'pirflags' requires constant scalar argument")
  unless_1911_end:
.annotate 'line', 714
    find_lex $P1917, "$/"
    .const 'Sub' $P1919 = "105_1294592831.858" 
    newclosure $P1927, $P1919
    $P1928 = $P1917."!make"($P1927)
.annotate 'line', 711
    set $P1905, $P1928
  if_1906_end:
.annotate 'line', 709
    .return ($P1905)
  control_1897:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1937, exception, "payload"
    .return ($P1937)
.end


.namespace ["NQP";"Actions"]
.sub "_block1918"  :anon :subid("105_1294592831.858") :outer("104_1294592831.858")
    .param pmc param_1920
.annotate 'line', 714
    .lex "$match", param_1920
    find_lex $P1921, "$match"
    $P1922 = $P1921."ast"()
    set $P1923, $P1922["block_past"]
    unless_null $P1923, vivify_615
    new $P1923, "Undef"
  vivify_615:
    find_lex $P1924, "$cpast"
    $P1925 = $P1924."value"()
    $P1926 = $P1923."pirflags"($P1925)
    .return ($P1926)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "regex_declarator"  :subid("106_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_1941
    .param pmc param_1942 :optional
    .param int has_param_1942 :opt_flag
.annotate 'line', 721
    .const 'Sub' $P2012 = "108_1294592831.858" 
    capture_lex $P2012
    .const 'Sub' $P1984 = "107_1294592831.858" 
    capture_lex $P1984
    new $P1940, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1940, control_1939
    push_eh $P1940
    .lex "self", self
    .lex "$/", param_1941
    if has_param_1942, optparam_616
    new $P1943, "Undef"
    set param_1942, $P1943
  optparam_616:
    .lex "$key", param_1942
.annotate 'line', 722
    $P1944 = root_new ['parrot';'ResizablePMCArray']
    .lex "@MODIFIERS", $P1944
.annotate 'line', 725
    new $P1945, "Undef"
    .lex "$name", $P1945
.annotate 'line', 726
    new $P1946, "Undef"
    .lex "$past", $P1946
.annotate 'line', 722

        $P1947 = get_hll_global ['Regex';'P6Regex';'Actions'], '@MODIFIERS'
    
    store_lex "@MODIFIERS", $P1947
.annotate 'line', 725
    find_lex $P1948, "$/"
    unless_null $P1948, vivify_617
    $P1948 = root_new ['parrot';'Hash']
  vivify_617:
    set $P1949, $P1948["deflongname"]
    unless_null $P1949, vivify_618
    new $P1949, "Undef"
  vivify_618:
    $P1950 = $P1949."ast"()
    set $S1951, $P1950
    new $P1952, 'String'
    set $P1952, $S1951
    store_lex "$name", $P1952
    find_lex $P1953, "$past"
.annotate 'line', 727
    find_lex $P1955, "$/"
    unless_null $P1955, vivify_619
    $P1955 = root_new ['parrot';'Hash']
  vivify_619:
    set $P1956, $P1955["proto"]
    unless_null $P1956, vivify_620
    new $P1956, "Undef"
  vivify_620:
    if $P1956, if_1954
.annotate 'line', 754
    find_lex $P1980, "$key"
    set $S1981, $P1980
    iseq $I1982, $S1981, "open"
    if $I1982, if_1979
.annotate 'line', 767
    .const 'Sub' $P2012 = "108_1294592831.858" 
    capture_lex $P2012
    $P2012()
    goto if_1979_end
  if_1979:
.annotate 'line', 754
    .const 'Sub' $P1984 = "107_1294592831.858" 
    capture_lex $P1984
    $P1984()
  if_1979_end:
    goto if_1954_end
  if_1954:
.annotate 'line', 729
    get_hll_global $P1957, ["PAST"], "Stmts"
.annotate 'line', 730
    get_hll_global $P1958, ["PAST"], "Block"
    find_lex $P1959, "$name"
.annotate 'line', 731
    get_hll_global $P1960, ["PAST"], "Op"
.annotate 'line', 732
    get_hll_global $P1961, ["PAST"], "Var"
    $P1962 = $P1961."new"("self" :named("name"), "register" :named("scope"))
    find_lex $P1963, "$name"
    $P1964 = $P1960."new"($P1962, $P1963, "!protoregex" :named("name"), "callmethod" :named("pasttype"))
.annotate 'line', 731
    find_lex $P1965, "$/"
    $P1966 = $P1958."new"($P1964, $P1959 :named("name"), "method" :named("blocktype"), 0 :named("lexical"), $P1965 :named("node"))
.annotate 'line', 741
    get_hll_global $P1967, ["PAST"], "Block"
    new $P1968, "String"
    assign $P1968, "!PREFIX__"
    find_lex $P1969, "$name"
    concat $P1970, $P1968, $P1969
.annotate 'line', 742
    get_hll_global $P1971, ["PAST"], "Op"
.annotate 'line', 743
    get_hll_global $P1972, ["PAST"], "Var"
    $P1973 = $P1972."new"("self" :named("name"), "register" :named("scope"))
    find_lex $P1974, "$name"
    $P1975 = $P1971."new"($P1973, $P1974, "!PREFIX__!protoregex" :named("name"), "callmethod" :named("pasttype"))
.annotate 'line', 742
    find_lex $P1976, "$/"
    $P1977 = $P1967."new"($P1975, $P1970 :named("name"), "method" :named("blocktype"), 0 :named("lexical"), $P1976 :named("node"))
.annotate 'line', 741
    $P1978 = $P1957."new"($P1966, $P1977)
.annotate 'line', 729
    store_lex "$past", $P1978
  if_1954_end:
.annotate 'line', 781
    find_lex $P2033, "$/"
    find_lex $P2034, "$past"
    $P2035 = $P2033."!make"($P2034)
.annotate 'line', 721
    .return ($P2035)
  control_1939:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2036, exception, "payload"
    .return ($P2036)
.end


.namespace ["NQP";"Actions"]
.sub "_block2011"  :anon :subid("108_1294592831.858") :outer("106_1294592831.858")
.annotate 'line', 768
    new $P2013, "Undef"
    .lex "$regex", $P2013
.annotate 'line', 769
    get_hll_global $P2014, ["Regex";"P6Regex";"Actions"], "buildsub"
    find_lex $P2015, "$/"
    unless_null $P2015, vivify_621
    $P2015 = root_new ['parrot';'Hash']
  vivify_621:
    set $P2016, $P2015["p6regex"]
    unless_null $P2016, vivify_622
    new $P2016, "Undef"
  vivify_622:
    $P2017 = $P2016."ast"()
    get_global $P2018, "@BLOCK"
    $P2019 = $P2018."shift"()
    $P2020 = $P2014($P2017, $P2019)
    store_lex "$regex", $P2020
.annotate 'line', 770
    find_lex $P2021, "$regex"
    find_lex $P2022, "$name"
    $P2021."name"($P2022)
.annotate 'line', 772
    get_hll_global $P2023, ["PAST"], "Op"
.annotate 'line', 774
    get_hll_global $P2024, ["PAST"], "Var"
    new $P2025, "ResizablePMCArray"
    push $P2025, "Regex"
    $P2026 = $P2024."new"("Method" :named("name"), $P2025 :named("namespace"), "package" :named("scope"))
    find_lex $P2027, "$regex"
    $P2028 = $P2023."new"($P2026, $P2027, "callmethod" :named("pasttype"), "new" :named("name"))
.annotate 'line', 772
    store_lex "$past", $P2028
.annotate 'line', 778
    find_lex $P2029, "$regex"
    find_lex $P2030, "$past"
    unless_null $P2030, vivify_623
    $P2030 = root_new ['parrot';'Hash']
    store_lex "$past", $P2030
  vivify_623:
    set $P2030["sink"], $P2029
.annotate 'line', 779
    find_lex $P2031, "@MODIFIERS"
    $P2032 = $P2031."shift"()
.annotate 'line', 767
    .return ($P2032)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "_block1983"  :anon :subid("107_1294592831.858") :outer("106_1294592831.858")
.annotate 'line', 755
    $P1985 = root_new ['parrot';'Hash']
    .lex "%h", $P1985
.annotate 'line', 754
    find_lex $P1986, "%h"
.annotate 'line', 756
    find_lex $P1988, "$/"
    unless_null $P1988, vivify_624
    $P1988 = root_new ['parrot';'Hash']
  vivify_624:
    set $P1989, $P1988["sym"]
    unless_null $P1989, vivify_625
    new $P1989, "Undef"
  vivify_625:
    set $S1990, $P1989
    iseq $I1991, $S1990, "token"
    unless $I1991, if_1987_end
    new $P1992, "Integer"
    assign $P1992, 1
    find_lex $P1993, "%h"
    unless_null $P1993, vivify_626
    $P1993 = root_new ['parrot';'Hash']
    store_lex "%h", $P1993
  vivify_626:
    set $P1993["r"], $P1992
  if_1987_end:
.annotate 'line', 757
    find_lex $P1995, "$/"
    unless_null $P1995, vivify_627
    $P1995 = root_new ['parrot';'Hash']
  vivify_627:
    set $P1996, $P1995["sym"]
    unless_null $P1996, vivify_628
    new $P1996, "Undef"
  vivify_628:
    set $S1997, $P1996
    iseq $I1998, $S1997, "rule"
    unless $I1998, if_1994_end
    new $P1999, "Integer"
    assign $P1999, 1
    find_lex $P2000, "%h"
    unless_null $P2000, vivify_629
    $P2000 = root_new ['parrot';'Hash']
    store_lex "%h", $P2000
  vivify_629:
    set $P2000["r"], $P1999
    new $P2001, "Integer"
    assign $P2001, 1
    find_lex $P2002, "%h"
    unless_null $P2002, vivify_630
    $P2002 = root_new ['parrot';'Hash']
    store_lex "%h", $P2002
  vivify_630:
    set $P2002["s"], $P2001
  if_1994_end:
.annotate 'line', 758
    find_lex $P2003, "@MODIFIERS"
    find_lex $P2004, "%h"
    $P2003."unshift"($P2004)
.annotate 'line', 759

            $P0 = find_lex '$name'
            set_hll_global ['Regex';'P6Regex';'Actions'], '$REGEXNAME', $P0
        
.annotate 'line', 763
    get_global $P2005, "@BLOCK"
    unless_null $P2005, vivify_631
    $P2005 = root_new ['parrot';'ResizablePMCArray']
  vivify_631:
    set $P2006, $P2005[0]
    unless_null $P2006, vivify_632
    new $P2006, "Undef"
  vivify_632:
    $P2006."symbol"(unicode:"$\x{a2}", "lexical" :named("scope"))
.annotate 'line', 764
    get_global $P2007, "@BLOCK"
    unless_null $P2007, vivify_633
    $P2007 = root_new ['parrot';'ResizablePMCArray']
  vivify_633:
    set $P2008, $P2007[0]
    unless_null $P2008, vivify_634
    new $P2008, "Undef"
  vivify_634:
    $P2008."symbol"("$/", "lexical" :named("scope"))
.annotate 'line', 765
    new $P2009, "Exception"
    set $P2009['type'], .CONTROL_RETURN
    new $P2010, "Integer"
    assign $P2010, 0
    setattribute $P2009, 'payload', $P2010
    throw $P2009
.annotate 'line', 754
    .return ()
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "dotty"  :subid("109_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_2040
.annotate 'line', 785
    new $P2039, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2039, control_2038
    push_eh $P2039
    .lex "self", self
    .lex "$/", param_2040
.annotate 'line', 786
    new $P2041, "Undef"
    .lex "$past", $P2041
    find_lex $P2044, "$/"
    unless_null $P2044, vivify_635
    $P2044 = root_new ['parrot';'Hash']
  vivify_635:
    set $P2045, $P2044["args"]
    unless_null $P2045, vivify_636
    new $P2045, "Undef"
  vivify_636:
    if $P2045, if_2043
    get_hll_global $P2050, ["PAST"], "Op"
    find_lex $P2051, "$/"
    $P2052 = $P2050."new"($P2051 :named("node"))
    set $P2042, $P2052
    goto if_2043_end
  if_2043:
    find_lex $P2046, "$/"
    unless_null $P2046, vivify_637
    $P2046 = root_new ['parrot';'Hash']
  vivify_637:
    set $P2047, $P2046["args"]
    unless_null $P2047, vivify_638
    $P2047 = root_new ['parrot';'ResizablePMCArray']
  vivify_638:
    set $P2048, $P2047[0]
    unless_null $P2048, vivify_639
    new $P2048, "Undef"
  vivify_639:
    $P2049 = $P2048."ast"()
    set $P2042, $P2049
  if_2043_end:
    store_lex "$past", $P2042
.annotate 'line', 787
    find_lex $P2054, "$/"
    unless_null $P2054, vivify_640
    $P2054 = root_new ['parrot';'Hash']
  vivify_640:
    set $P2055, $P2054["quote"]
    unless_null $P2055, vivify_641
    new $P2055, "Undef"
  vivify_641:
    if $P2055, if_2053
.annotate 'line', 791
    find_lex $P2062, "$/"
    unless_null $P2062, vivify_642
    $P2062 = root_new ['parrot';'Hash']
  vivify_642:
    set $P2063, $P2062["longname"]
    unless_null $P2063, vivify_643
    new $P2063, "Undef"
  vivify_643:
    set $S2064, $P2063
    iseq $I2065, $S2064, "HOW"
    if $I2065, if_2061
.annotate 'line', 795
    find_lex $P2069, "$/"
    unless_null $P2069, vivify_644
    $P2069 = root_new ['parrot';'Hash']
  vivify_644:
    set $P2070, $P2069["longname"]
    unless_null $P2070, vivify_645
    new $P2070, "Undef"
  vivify_645:
    set $S2071, $P2070
    iseq $I2072, $S2071, "WHAT"
    if $I2072, if_2068
.annotate 'line', 799
    find_lex $P2074, "$past"
    find_lex $P2075, "$/"
    unless_null $P2075, vivify_646
    $P2075 = root_new ['parrot';'Hash']
  vivify_646:
    set $P2076, $P2075["longname"]
    unless_null $P2076, vivify_647
    new $P2076, "Undef"
  vivify_647:
    set $S2077, $P2076
    $P2074."name"($S2077)
.annotate 'line', 800
    find_lex $P2078, "$past"
    $P2078."pasttype"("callmethod")
.annotate 'line', 798
    goto if_2068_end
  if_2068:
.annotate 'line', 796
    find_lex $P2073, "$past"
    $P2073."pirop"("get_what PP")
  if_2068_end:
.annotate 'line', 795
    goto if_2061_end
  if_2061:
.annotate 'line', 792
    find_lex $P2066, "$past"
    $P2066."pirop"("get_how PP")
.annotate 'line', 793
    find_lex $P2067, "$past"
    $P2067."pasttype"("pirop")
  if_2061_end:
.annotate 'line', 791
    goto if_2053_end
  if_2053:
.annotate 'line', 788
    find_lex $P2056, "$past"
    find_lex $P2057, "$/"
    unless_null $P2057, vivify_648
    $P2057 = root_new ['parrot';'Hash']
  vivify_648:
    set $P2058, $P2057["quote"]
    unless_null $P2058, vivify_649
    new $P2058, "Undef"
  vivify_649:
    $P2059 = $P2058."ast"()
    $P2056."name"($P2059)
.annotate 'line', 789
    find_lex $P2060, "$past"
    $P2060."pasttype"("callmethod")
  if_2053_end:
.annotate 'line', 802
    find_lex $P2079, "$/"
    find_lex $P2080, "$past"
    $P2081 = $P2079."!make"($P2080)
.annotate 'line', 785
    .return ($P2081)
  control_2038:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2082, exception, "payload"
    .return ($P2082)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "term:sym<self>"  :subid("110_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_2086
.annotate 'line', 807
    new $P2085, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2085, control_2084
    push_eh $P2085
    .lex "self", self
    .lex "$/", param_2086
.annotate 'line', 808
    find_lex $P2087, "$/"
    get_hll_global $P2088, ["PAST"], "Var"
    $P2089 = $P2088."new"("self" :named("name"))
    $P2090 = $P2087."!make"($P2089)
.annotate 'line', 807
    .return ($P2090)
  control_2084:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2091, exception, "payload"
    .return ($P2091)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "term:sym<identifier>"  :subid("111_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_2095
.annotate 'line', 811
    new $P2094, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2094, control_2093
    push_eh $P2094
    .lex "self", self
    .lex "$/", param_2095
.annotate 'line', 812
    new $P2096, "Undef"
    .lex "$past", $P2096
    find_lex $P2097, "$/"
    unless_null $P2097, vivify_650
    $P2097 = root_new ['parrot';'Hash']
  vivify_650:
    set $P2098, $P2097["args"]
    unless_null $P2098, vivify_651
    new $P2098, "Undef"
  vivify_651:
    $P2099 = $P2098."ast"()
    store_lex "$past", $P2099
.annotate 'line', 813
    find_lex $P2100, "$past"
    find_lex $P2101, "$/"
    unless_null $P2101, vivify_652
    $P2101 = root_new ['parrot';'Hash']
  vivify_652:
    set $P2102, $P2101["deflongname"]
    unless_null $P2102, vivify_653
    new $P2102, "Undef"
  vivify_653:
    set $S2103, $P2102
    $P2100."name"($S2103)
.annotate 'line', 814
    find_lex $P2104, "$/"
    find_lex $P2105, "$past"
    $P2106 = $P2104."!make"($P2105)
.annotate 'line', 811
    .return ($P2106)
  control_2093:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2107, exception, "payload"
    .return ($P2107)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "term:sym<name>"  :subid("112_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_2111
.annotate 'line', 817
    new $P2110, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2110, control_2109
    push_eh $P2110
    .lex "self", self
    .lex "$/", param_2111
.annotate 'line', 818
    $P2112 = root_new ['parrot';'ResizablePMCArray']
    .lex "@ns", $P2112
.annotate 'line', 819
    new $P2113, "Undef"
    .lex "$name", $P2113
.annotate 'line', 821
    new $P2114, "Undef"
    .lex "$var", $P2114
.annotate 'line', 823
    new $P2115, "Undef"
    .lex "$past", $P2115
.annotate 'line', 818
    find_lex $P2116, "$/"
    unless_null $P2116, vivify_654
    $P2116 = root_new ['parrot';'Hash']
  vivify_654:
    set $P2117, $P2116["name"]
    unless_null $P2117, vivify_655
    $P2117 = root_new ['parrot';'Hash']
  vivify_655:
    set $P2118, $P2117["identifier"]
    unless_null $P2118, vivify_656
    new $P2118, "Undef"
  vivify_656:
    clone $P2119, $P2118
    store_lex "@ns", $P2119
.annotate 'line', 819
    find_lex $P2120, "@ns"
    $P2121 = $P2120."pop"()
    store_lex "$name", $P2121
.annotate 'line', 820
    find_lex $P2125, "@ns"
    if $P2125, if_2124
    set $P2123, $P2125
    goto if_2124_end
  if_2124:
    find_lex $P2126, "@ns"
    unless_null $P2126, vivify_657
    $P2126 = root_new ['parrot';'ResizablePMCArray']
  vivify_657:
    set $P2127, $P2126[0]
    unless_null $P2127, vivify_658
    new $P2127, "Undef"
  vivify_658:
    set $S2128, $P2127
    iseq $I2129, $S2128, "GLOBAL"
    new $P2123, 'Integer'
    set $P2123, $I2129
  if_2124_end:
    unless $P2123, if_2122_end
    find_lex $P2130, "@ns"
    $P2130."shift"()
  if_2122_end:
.annotate 'line', 822
    get_hll_global $P2131, ["PAST"], "Var"
    find_lex $P2132, "$name"
    set $S2133, $P2132
    find_lex $P2134, "@ns"
    $P2135 = $P2131."new"($S2133 :named("name"), $P2134 :named("namespace"), "package" :named("scope"))
    store_lex "$var", $P2135
.annotate 'line', 823
    find_lex $P2136, "$var"
    store_lex "$past", $P2136
.annotate 'line', 824
    find_lex $P2138, "$/"
    unless_null $P2138, vivify_659
    $P2138 = root_new ['parrot';'Hash']
  vivify_659:
    set $P2139, $P2138["args"]
    unless_null $P2139, vivify_660
    new $P2139, "Undef"
  vivify_660:
    unless $P2139, if_2137_end
.annotate 'line', 825
    find_lex $P2140, "$/"
    unless_null $P2140, vivify_661
    $P2140 = root_new ['parrot';'Hash']
  vivify_661:
    set $P2141, $P2140["args"]
    unless_null $P2141, vivify_662
    $P2141 = root_new ['parrot';'ResizablePMCArray']
  vivify_662:
    set $P2142, $P2141[0]
    unless_null $P2142, vivify_663
    new $P2142, "Undef"
  vivify_663:
    $P2143 = $P2142."ast"()
    store_lex "$past", $P2143
.annotate 'line', 826
    find_lex $P2144, "$past"
    find_lex $P2145, "$var"
    $P2144."unshift"($P2145)
  if_2137_end:
.annotate 'line', 828
    find_lex $P2146, "$/"
    find_lex $P2147, "$past"
    $P2148 = $P2146."!make"($P2147)
.annotate 'line', 817
    .return ($P2148)
  control_2109:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2149, exception, "payload"
    .return ($P2149)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "term:sym<pir::op>"  :subid("113_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_2153
.annotate 'line', 831
    new $P2152, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2152, control_2151
    push_eh $P2152
    .lex "self", self
    .lex "$/", param_2153
.annotate 'line', 832
    new $P2154, "Undef"
    .lex "$past", $P2154
.annotate 'line', 833
    new $P2155, "Undef"
    .lex "$pirop", $P2155
.annotate 'line', 832
    find_lex $P2158, "$/"
    unless_null $P2158, vivify_664
    $P2158 = root_new ['parrot';'Hash']
  vivify_664:
    set $P2159, $P2158["args"]
    unless_null $P2159, vivify_665
    new $P2159, "Undef"
  vivify_665:
    if $P2159, if_2157
    get_hll_global $P2164, ["PAST"], "Op"
    find_lex $P2165, "$/"
    $P2166 = $P2164."new"($P2165 :named("node"))
    set $P2156, $P2166
    goto if_2157_end
  if_2157:
    find_lex $P2160, "$/"
    unless_null $P2160, vivify_666
    $P2160 = root_new ['parrot';'Hash']
  vivify_666:
    set $P2161, $P2160["args"]
    unless_null $P2161, vivify_667
    $P2161 = root_new ['parrot';'ResizablePMCArray']
  vivify_667:
    set $P2162, $P2161[0]
    unless_null $P2162, vivify_668
    new $P2162, "Undef"
  vivify_668:
    $P2163 = $P2162."ast"()
    set $P2156, $P2163
  if_2157_end:
    store_lex "$past", $P2156
.annotate 'line', 833
    find_lex $P2167, "$/"
    unless_null $P2167, vivify_669
    $P2167 = root_new ['parrot';'Hash']
  vivify_669:
    set $P2168, $P2167["op"]
    unless_null $P2168, vivify_670
    new $P2168, "Undef"
  vivify_670:
    set $S2169, $P2168
    new $P2170, 'String'
    set $P2170, $S2169
    store_lex "$pirop", $P2170
.annotate 'line', 834

        $P0 = find_lex '$pirop'
        $S0 = $P0
        $P0 = split '__', $S0
        $S0 = join ' ', $P0
        $P2171 = box $S0
    
    store_lex "$pirop", $P2171
.annotate 'line', 841
    find_lex $P2172, "$past"
    find_lex $P2173, "$pirop"
    $P2172."pirop"($P2173)
.annotate 'line', 842
    find_lex $P2174, "$past"
    $P2174."pasttype"("pirop")
.annotate 'line', 843
    find_lex $P2175, "$/"
    find_lex $P2176, "$past"
    $P2177 = $P2175."!make"($P2176)
.annotate 'line', 831
    .return ($P2177)
  control_2151:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2178, exception, "payload"
    .return ($P2178)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "args"  :subid("114_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_2182
.annotate 'line', 846
    new $P2181, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2181, control_2180
    push_eh $P2181
    .lex "self", self
    .lex "$/", param_2182
    find_lex $P2183, "$/"
    find_lex $P2184, "$/"
    unless_null $P2184, vivify_671
    $P2184 = root_new ['parrot';'Hash']
  vivify_671:
    set $P2185, $P2184["arglist"]
    unless_null $P2185, vivify_672
    new $P2185, "Undef"
  vivify_672:
    $P2186 = $P2185."ast"()
    $P2187 = $P2183."!make"($P2186)
    .return ($P2187)
  control_2180:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2188, exception, "payload"
    .return ($P2188)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "arglist"  :subid("115_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_2192
.annotate 'line', 848
    .const 'Sub' $P2203 = "116_1294592831.858" 
    capture_lex $P2203
    new $P2191, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2191, control_2190
    push_eh $P2191
    .lex "self", self
    .lex "$/", param_2192
.annotate 'line', 849
    new $P2193, "Undef"
    .lex "$past", $P2193
.annotate 'line', 857
    new $P2194, "Undef"
    .lex "$i", $P2194
.annotate 'line', 858
    new $P2195, "Undef"
    .lex "$n", $P2195
.annotate 'line', 849
    get_hll_global $P2196, ["PAST"], "Op"
    find_lex $P2197, "$/"
    $P2198 = $P2196."new"("call" :named("pasttype"), $P2197 :named("node"))
    store_lex "$past", $P2198
.annotate 'line', 850
    find_lex $P2200, "$/"
    unless_null $P2200, vivify_673
    $P2200 = root_new ['parrot';'Hash']
  vivify_673:
    set $P2201, $P2200["EXPR"]
    unless_null $P2201, vivify_674
    new $P2201, "Undef"
  vivify_674:
    unless $P2201, if_2199_end
    .const 'Sub' $P2203 = "116_1294592831.858" 
    capture_lex $P2203
    $P2203()
  if_2199_end:
.annotate 'line', 857
    new $P2235, "Integer"
    assign $P2235, 0
    store_lex "$i", $P2235
.annotate 'line', 858
    find_lex $P2236, "$past"
    $P2237 = $P2236."list"()
    set $N2238, $P2237
    new $P2239, 'Float'
    set $P2239, $N2238
    store_lex "$n", $P2239
.annotate 'line', 859
    new $P2287, 'ExceptionHandler'
    set_addr $P2287, loop2286_handler
    $P2287."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2287
  loop2286_test:
    find_lex $P2240, "$i"
    set $N2241, $P2240
    find_lex $P2242, "$n"
    set $N2243, $P2242
    islt $I2244, $N2241, $N2243
    unless $I2244, loop2286_done
  loop2286_redo:
.annotate 'line', 860
    find_lex $P2246, "$i"
    set $I2247, $P2246
    find_lex $P2248, "$past"
    unless_null $P2248, vivify_678
    $P2248 = root_new ['parrot';'ResizablePMCArray']
  vivify_678:
    set $P2249, $P2248[$I2247]
    unless_null $P2249, vivify_679
    new $P2249, "Undef"
  vivify_679:
    $S2250 = $P2249."name"()
    iseq $I2251, $S2250, "&prefix:<|>"
    unless $I2251, if_2245_end
.annotate 'line', 861
    find_lex $P2252, "$i"
    set $I2253, $P2252
    find_lex $P2254, "$past"
    unless_null $P2254, vivify_680
    $P2254 = root_new ['parrot';'ResizablePMCArray']
  vivify_680:
    set $P2255, $P2254[$I2253]
    unless_null $P2255, vivify_681
    $P2255 = root_new ['parrot';'ResizablePMCArray']
  vivify_681:
    set $P2256, $P2255[0]
    unless_null $P2256, vivify_682
    new $P2256, "Undef"
  vivify_682:
    find_lex $P2257, "$i"
    set $I2258, $P2257
    find_lex $P2259, "$past"
    unless_null $P2259, vivify_683
    $P2259 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$past", $P2259
  vivify_683:
    set $P2259[$I2258], $P2256
.annotate 'line', 862
    find_lex $P2260, "$i"
    set $I2261, $P2260
    find_lex $P2262, "$past"
    unless_null $P2262, vivify_684
    $P2262 = root_new ['parrot';'ResizablePMCArray']
  vivify_684:
    set $P2263, $P2262[$I2261]
    unless_null $P2263, vivify_685
    new $P2263, "Undef"
  vivify_685:
    $P2263."flat"(1)
.annotate 'line', 863
    find_lex $P2267, "$i"
    set $I2268, $P2267
    find_lex $P2269, "$past"
    unless_null $P2269, vivify_686
    $P2269 = root_new ['parrot';'ResizablePMCArray']
  vivify_686:
    set $P2270, $P2269[$I2268]
    unless_null $P2270, vivify_687
    new $P2270, "Undef"
  vivify_687:
    get_hll_global $P2271, ["PAST"], "Val"
    $P2272 = $P2270."isa"($P2271)
    if $P2272, if_2266
    set $P2265, $P2272
    goto if_2266_end
  if_2266:
.annotate 'line', 864
    find_lex $P2273, "$i"
    set $I2274, $P2273
    find_lex $P2275, "$past"
    unless_null $P2275, vivify_688
    $P2275 = root_new ['parrot';'ResizablePMCArray']
  vivify_688:
    set $P2276, $P2275[$I2274]
    unless_null $P2276, vivify_689
    new $P2276, "Undef"
  vivify_689:
    $S2277 = $P2276."name"()
    substr $S2278, $S2277, 0, 1
    iseq $I2279, $S2278, "%"
    new $P2265, 'Integer'
    set $P2265, $I2279
  if_2266_end:
    unless $P2265, if_2264_end
.annotate 'line', 865
    find_lex $P2280, "$i"
    set $I2281, $P2280
    find_lex $P2282, "$past"
    unless_null $P2282, vivify_690
    $P2282 = root_new ['parrot';'ResizablePMCArray']
  vivify_690:
    set $P2283, $P2282[$I2281]
    unless_null $P2283, vivify_691
    new $P2283, "Undef"
  vivify_691:
    $P2283."named"(1)
  if_2264_end:
  if_2245_end:
.annotate 'line', 860
    find_lex $P2284, "$i"
    clone $P2285, $P2284
    inc $P2284
  loop2286_next:
.annotate 'line', 859
    goto loop2286_test
  loop2286_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2288, exception, 'type'
    eq $P2288, .CONTROL_LOOP_NEXT, loop2286_next
    eq $P2288, .CONTROL_LOOP_REDO, loop2286_redo
  loop2286_done:
    pop_eh 
.annotate 'line', 870
    find_lex $P2289, "$/"
    find_lex $P2290, "$past"
    $P2291 = $P2289."!make"($P2290)
.annotate 'line', 848
    .return ($P2291)
  control_2190:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2292, exception, "payload"
    .return ($P2292)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "_block2202"  :anon :subid("116_1294592831.858") :outer("115_1294592831.858")
.annotate 'line', 850
    .const 'Sub' $P2224 = "117_1294592831.858" 
    capture_lex $P2224
.annotate 'line', 851
    new $P2204, "Undef"
    .lex "$expr", $P2204
    find_lex $P2205, "$/"
    unless_null $P2205, vivify_675
    $P2205 = root_new ['parrot';'Hash']
  vivify_675:
    set $P2206, $P2205["EXPR"]
    unless_null $P2206, vivify_676
    new $P2206, "Undef"
  vivify_676:
    $P2207 = $P2206."ast"()
    store_lex "$expr", $P2207
.annotate 'line', 852
    find_lex $P2212, "$expr"
    $S2213 = $P2212."name"()
    iseq $I2214, $S2213, "&infix:<,>"
    if $I2214, if_2211
    new $P2210, 'Integer'
    set $P2210, $I2214
    goto if_2211_end
  if_2211:
    find_lex $P2215, "$expr"
    $P2216 = $P2215."named"()
    isfalse $I2217, $P2216
    new $P2210, 'Integer'
    set $P2210, $I2217
  if_2211_end:
    if $P2210, if_2209
.annotate 'line', 855
    find_lex $P2232, "$past"
    find_lex $P2233, "$expr"
    $P2234 = $P2232."push"($P2233)
    set $P2208, $P2234
.annotate 'line', 852
    goto if_2209_end
  if_2209:
.annotate 'line', 853
    find_lex $P2219, "$expr"
    $P2220 = $P2219."list"()
    defined $I2221, $P2220
    unless $I2221, for_undef_677
    iter $P2218, $P2220
    new $P2230, 'ExceptionHandler'
    set_addr $P2230, loop2229_handler
    $P2230."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2230
  loop2229_test:
    unless $P2218, loop2229_done
    shift $P2222, $P2218
  loop2229_redo:
    .const 'Sub' $P2224 = "117_1294592831.858" 
    capture_lex $P2224
    $P2224($P2222)
  loop2229_next:
    goto loop2229_test
  loop2229_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2231, exception, 'type'
    eq $P2231, .CONTROL_LOOP_NEXT, loop2229_next
    eq $P2231, .CONTROL_LOOP_REDO, loop2229_redo
  loop2229_done:
    pop_eh 
  for_undef_677:
.annotate 'line', 852
    set $P2208, $P2218
  if_2209_end:
.annotate 'line', 850
    .return ($P2208)
.end


.namespace ["NQP";"Actions"]
.sub "_block2223"  :anon :subid("117_1294592831.858") :outer("116_1294592831.858")
    .param pmc param_2225
.annotate 'line', 853
    .lex "$_", param_2225
    find_lex $P2226, "$past"
    find_lex $P2227, "$_"
    $P2228 = $P2226."push"($P2227)
    .return ($P2228)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "term:sym<value>"  :subid("118_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_2296
.annotate 'line', 874
    new $P2295, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2295, control_2294
    push_eh $P2295
    .lex "self", self
    .lex "$/", param_2296
    find_lex $P2297, "$/"
    find_lex $P2298, "$/"
    unless_null $P2298, vivify_692
    $P2298 = root_new ['parrot';'Hash']
  vivify_692:
    set $P2299, $P2298["value"]
    unless_null $P2299, vivify_693
    new $P2299, "Undef"
  vivify_693:
    $P2300 = $P2299."ast"()
    $P2301 = $P2297."!make"($P2300)
    .return ($P2301)
  control_2294:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2302, exception, "payload"
    .return ($P2302)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "circumfix:sym<( )>"  :subid("119_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_2306
.annotate 'line', 876
    new $P2305, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2305, control_2304
    push_eh $P2305
    .lex "self", self
    .lex "$/", param_2306
.annotate 'line', 877
    find_lex $P2307, "$/"
.annotate 'line', 878
    find_lex $P2310, "$/"
    unless_null $P2310, vivify_694
    $P2310 = root_new ['parrot';'Hash']
  vivify_694:
    set $P2311, $P2310["EXPR"]
    unless_null $P2311, vivify_695
    new $P2311, "Undef"
  vivify_695:
    if $P2311, if_2309
.annotate 'line', 879
    get_hll_global $P2316, ["PAST"], "Op"
    find_lex $P2317, "$/"
    $P2318 = $P2316."new"("list" :named("pasttype"), $P2317 :named("node"))
    set $P2308, $P2318
.annotate 'line', 878
    goto if_2309_end
  if_2309:
    find_lex $P2312, "$/"
    unless_null $P2312, vivify_696
    $P2312 = root_new ['parrot';'Hash']
  vivify_696:
    set $P2313, $P2312["EXPR"]
    unless_null $P2313, vivify_697
    $P2313 = root_new ['parrot';'ResizablePMCArray']
  vivify_697:
    set $P2314, $P2313[0]
    unless_null $P2314, vivify_698
    new $P2314, "Undef"
  vivify_698:
    $P2315 = $P2314."ast"()
    set $P2308, $P2315
  if_2309_end:
    $P2319 = $P2307."!make"($P2308)
.annotate 'line', 876
    .return ($P2319)
  control_2304:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2320, exception, "payload"
    .return ($P2320)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "circumfix:sym<[ ]>"  :subid("120_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_2324
.annotate 'line', 882
    new $P2323, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2323, control_2322
    push_eh $P2323
    .lex "self", self
    .lex "$/", param_2324
.annotate 'line', 883
    new $P2325, "Undef"
    .lex "$past", $P2325
.annotate 'line', 882
    find_lex $P2326, "$past"
.annotate 'line', 884
    find_lex $P2328, "$/"
    unless_null $P2328, vivify_699
    $P2328 = root_new ['parrot';'Hash']
  vivify_699:
    set $P2329, $P2328["EXPR"]
    unless_null $P2329, vivify_700
    new $P2329, "Undef"
  vivify_700:
    if $P2329, if_2327
.annotate 'line', 891
    get_hll_global $P2341, ["PAST"], "Op"
    $P2342 = $P2341."new"("list" :named("pasttype"))
    store_lex "$past", $P2342
.annotate 'line', 890
    goto if_2327_end
  if_2327:
.annotate 'line', 885
    find_lex $P2330, "$/"
    unless_null $P2330, vivify_701
    $P2330 = root_new ['parrot';'Hash']
  vivify_701:
    set $P2331, $P2330["EXPR"]
    unless_null $P2331, vivify_702
    $P2331 = root_new ['parrot';'ResizablePMCArray']
  vivify_702:
    set $P2332, $P2331[0]
    unless_null $P2332, vivify_703
    new $P2332, "Undef"
  vivify_703:
    $P2333 = $P2332."ast"()
    store_lex "$past", $P2333
.annotate 'line', 886
    find_lex $P2335, "$past"
    $S2336 = $P2335."name"()
    isne $I2337, $S2336, "&infix:<,>"
    unless $I2337, if_2334_end
.annotate 'line', 887
    get_hll_global $P2338, ["PAST"], "Op"
    find_lex $P2339, "$past"
    $P2340 = $P2338."new"($P2339, "list" :named("pasttype"))
    store_lex "$past", $P2340
  if_2334_end:
  if_2327_end:
.annotate 'line', 893
    find_lex $P2343, "$past"
    $P2343."name"("&circumfix:<[ ]>")
.annotate 'line', 894
    find_lex $P2344, "$/"
    find_lex $P2345, "$past"
    $P2346 = $P2344."!make"($P2345)
.annotate 'line', 882
    .return ($P2346)
  control_2322:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2347, exception, "payload"
    .return ($P2347)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "circumfix:sym<ang>"  :subid("121_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_2351
.annotate 'line', 897
    new $P2350, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2350, control_2349
    push_eh $P2350
    .lex "self", self
    .lex "$/", param_2351
    find_lex $P2352, "$/"
    find_lex $P2353, "$/"
    unless_null $P2353, vivify_704
    $P2353 = root_new ['parrot';'Hash']
  vivify_704:
    set $P2354, $P2353["quote_EXPR"]
    unless_null $P2354, vivify_705
    new $P2354, "Undef"
  vivify_705:
    $P2355 = $P2354."ast"()
    $P2356 = $P2352."!make"($P2355)
    .return ($P2356)
  control_2349:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2357, exception, "payload"
    .return ($P2357)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub unicode:"circumfix:sym<\x{ab} \x{bb}>"  :subid("122_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_2361
.annotate 'line', 898
    new $P2360, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2360, control_2359
    push_eh $P2360
    .lex "self", self
    .lex "$/", param_2361
    find_lex $P2362, "$/"
    find_lex $P2363, "$/"
    unless_null $P2363, vivify_706
    $P2363 = root_new ['parrot';'Hash']
  vivify_706:
    set $P2364, $P2363["quote_EXPR"]
    unless_null $P2364, vivify_707
    new $P2364, "Undef"
  vivify_707:
    $P2365 = $P2364."ast"()
    $P2366 = $P2362."!make"($P2365)
    .return ($P2366)
  control_2359:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2367, exception, "payload"
    .return ($P2367)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "circumfix:sym<{ }>"  :subid("123_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_2371
.annotate 'line', 900
    new $P2370, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2370, control_2369
    push_eh $P2370
    .lex "self", self
    .lex "$/", param_2371
.annotate 'line', 901
    new $P2372, "Undef"
    .lex "$past", $P2372
    find_lex $P2375, "$/"
    unless_null $P2375, vivify_708
    $P2375 = root_new ['parrot';'Hash']
  vivify_708:
    set $P2376, $P2375["pblock"]
    unless_null $P2376, vivify_709
    $P2376 = root_new ['parrot';'Hash']
  vivify_709:
    set $P2377, $P2376["blockoid"]
    unless_null $P2377, vivify_710
    $P2377 = root_new ['parrot';'Hash']
  vivify_710:
    set $P2378, $P2377["statementlist"]
    unless_null $P2378, vivify_711
    $P2378 = root_new ['parrot';'Hash']
  vivify_711:
    set $P2379, $P2378["statement"]
    unless_null $P2379, vivify_712
    new $P2379, "Undef"
  vivify_712:
    set $N2380, $P2379
    isgt $I2381, $N2380, 0.0
    if $I2381, if_2374
.annotate 'line', 903
    $P2385 = "vivitype"("%")
    set $P2373, $P2385
.annotate 'line', 901
    goto if_2374_end
  if_2374:
.annotate 'line', 902
    find_lex $P2382, "$/"
    unless_null $P2382, vivify_713
    $P2382 = root_new ['parrot';'Hash']
  vivify_713:
    set $P2383, $P2382["pblock"]
    unless_null $P2383, vivify_714
    new $P2383, "Undef"
  vivify_714:
    $P2384 = $P2383."ast"()
    set $P2373, $P2384
  if_2374_end:
    store_lex "$past", $P2373
.annotate 'line', 904
    new $P2386, "Integer"
    assign $P2386, 1
    find_lex $P2387, "$past"
    unless_null $P2387, vivify_715
    $P2387 = root_new ['parrot';'Hash']
    store_lex "$past", $P2387
  vivify_715:
    set $P2387["bareblock"], $P2386
.annotate 'line', 905
    find_lex $P2388, "$/"
    find_lex $P2389, "$past"
    $P2390 = $P2388."!make"($P2389)
.annotate 'line', 900
    .return ($P2390)
  control_2369:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2391, exception, "payload"
    .return ($P2391)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "circumfix:sym<sigil>"  :subid("124_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_2395
.annotate 'line', 908
    new $P2394, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2394, control_2393
    push_eh $P2394
    .lex "self", self
    .lex "$/", param_2395
.annotate 'line', 909
    new $P2396, "Undef"
    .lex "$name", $P2396
    find_lex $P2399, "$/"
    unless_null $P2399, vivify_716
    $P2399 = root_new ['parrot';'Hash']
  vivify_716:
    set $P2400, $P2399["sigil"]
    unless_null $P2400, vivify_717
    new $P2400, "Undef"
  vivify_717:
    set $S2401, $P2400
    iseq $I2402, $S2401, "@"
    if $I2402, if_2398
.annotate 'line', 910
    find_lex $P2406, "$/"
    unless_null $P2406, vivify_718
    $P2406 = root_new ['parrot';'Hash']
  vivify_718:
    set $P2407, $P2406["sigil"]
    unless_null $P2407, vivify_719
    new $P2407, "Undef"
  vivify_719:
    set $S2408, $P2407
    iseq $I2409, $S2408, "%"
    if $I2409, if_2405
    new $P2411, "String"
    assign $P2411, "item"
    set $P2404, $P2411
    goto if_2405_end
  if_2405:
    new $P2410, "String"
    assign $P2410, "hash"
    set $P2404, $P2410
  if_2405_end:
    set $P2397, $P2404
.annotate 'line', 909
    goto if_2398_end
  if_2398:
    new $P2403, "String"
    assign $P2403, "list"
    set $P2397, $P2403
  if_2398_end:
    store_lex "$name", $P2397
.annotate 'line', 912
    find_lex $P2412, "$/"
    get_hll_global $P2413, ["PAST"], "Op"
    find_lex $P2414, "$name"
    find_lex $P2415, "$/"
    unless_null $P2415, vivify_720
    $P2415 = root_new ['parrot';'Hash']
  vivify_720:
    set $P2416, $P2415["semilist"]
    unless_null $P2416, vivify_721
    new $P2416, "Undef"
  vivify_721:
    $P2417 = $P2416."ast"()
    $P2418 = $P2413."new"($P2417, "callmethod" :named("pasttype"), $P2414 :named("name"))
    $P2419 = $P2412."!make"($P2418)
.annotate 'line', 908
    .return ($P2419)
  control_2393:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2420, exception, "payload"
    .return ($P2420)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "semilist"  :subid("125_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_2424
.annotate 'line', 915
    new $P2423, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2423, control_2422
    push_eh $P2423
    .lex "self", self
    .lex "$/", param_2424
    find_lex $P2425, "$/"
    find_lex $P2426, "$/"
    unless_null $P2426, vivify_722
    $P2426 = root_new ['parrot';'Hash']
  vivify_722:
    set $P2427, $P2426["statement"]
    unless_null $P2427, vivify_723
    new $P2427, "Undef"
  vivify_723:
    $P2428 = $P2427."ast"()
    $P2429 = $P2425."!make"($P2428)
    .return ($P2429)
  control_2422:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2430, exception, "payload"
    .return ($P2430)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "postcircumfix:sym<[ ]>"  :subid("126_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_2434
.annotate 'line', 917
    new $P2433, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2433, control_2432
    push_eh $P2433
    .lex "self", self
    .lex "$/", param_2434
.annotate 'line', 918
    find_lex $P2435, "$/"
    get_hll_global $P2436, ["PAST"], "Var"
    find_lex $P2437, "$/"
    unless_null $P2437, vivify_724
    $P2437 = root_new ['parrot';'Hash']
  vivify_724:
    set $P2438, $P2437["EXPR"]
    unless_null $P2438, vivify_725
    new $P2438, "Undef"
  vivify_725:
    $P2439 = $P2438."ast"()
.annotate 'line', 920
    $P2440 = "vivitype"("@")
    $P2441 = $P2436."new"($P2439, "keyed_int" :named("scope"), "Undef" :named("viviself"), $P2440 :named("vivibase"))
.annotate 'line', 918
    $P2442 = $P2435."!make"($P2441)
.annotate 'line', 917
    .return ($P2442)
  control_2432:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2443, exception, "payload"
    .return ($P2443)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "postcircumfix:sym<{ }>"  :subid("127_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_2447
.annotate 'line', 923
    new $P2446, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2446, control_2445
    push_eh $P2446
    .lex "self", self
    .lex "$/", param_2447
.annotate 'line', 924
    find_lex $P2448, "$/"
    get_hll_global $P2449, ["PAST"], "Var"
    find_lex $P2450, "$/"
    unless_null $P2450, vivify_726
    $P2450 = root_new ['parrot';'Hash']
  vivify_726:
    set $P2451, $P2450["EXPR"]
    unless_null $P2451, vivify_727
    new $P2451, "Undef"
  vivify_727:
    $P2452 = $P2451."ast"()
.annotate 'line', 926
    $P2453 = "vivitype"("%")
    $P2454 = $P2449."new"($P2452, "keyed" :named("scope"), "Undef" :named("viviself"), $P2453 :named("vivibase"))
.annotate 'line', 924
    $P2455 = $P2448."!make"($P2454)
.annotate 'line', 923
    .return ($P2455)
  control_2445:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2456, exception, "payload"
    .return ($P2456)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "postcircumfix:sym<ang>"  :subid("128_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_2460
.annotate 'line', 929
    new $P2459, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2459, control_2458
    push_eh $P2459
    .lex "self", self
    .lex "$/", param_2460
.annotate 'line', 930
    find_lex $P2461, "$/"
    get_hll_global $P2462, ["PAST"], "Var"
    find_lex $P2463, "$/"
    unless_null $P2463, vivify_728
    $P2463 = root_new ['parrot';'Hash']
  vivify_728:
    set $P2464, $P2463["quote_EXPR"]
    unless_null $P2464, vivify_729
    new $P2464, "Undef"
  vivify_729:
    $P2465 = $P2464."ast"()
.annotate 'line', 932
    $P2466 = "vivitype"("%")
    $P2467 = $P2462."new"($P2465, "keyed" :named("scope"), "Undef" :named("viviself"), $P2466 :named("vivibase"))
.annotate 'line', 930
    $P2468 = $P2461."!make"($P2467)
.annotate 'line', 929
    .return ($P2468)
  control_2458:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2469, exception, "payload"
    .return ($P2469)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "postcircumfix:sym<( )>"  :subid("129_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_2473
.annotate 'line', 935
    new $P2472, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2472, control_2471
    push_eh $P2472
    .lex "self", self
    .lex "$/", param_2473
.annotate 'line', 936
    find_lex $P2474, "$/"
    find_lex $P2475, "$/"
    unless_null $P2475, vivify_730
    $P2475 = root_new ['parrot';'Hash']
  vivify_730:
    set $P2476, $P2475["arglist"]
    unless_null $P2476, vivify_731
    new $P2476, "Undef"
  vivify_731:
    $P2477 = $P2476."ast"()
    $P2478 = $P2474."!make"($P2477)
.annotate 'line', 935
    .return ($P2478)
  control_2471:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2479, exception, "payload"
    .return ($P2479)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "value"  :subid("130_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_2483
.annotate 'line', 939
    new $P2482, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2482, control_2481
    push_eh $P2482
    .lex "self", self
    .lex "$/", param_2483
.annotate 'line', 940
    find_lex $P2484, "$/"
    find_lex $P2487, "$/"
    unless_null $P2487, vivify_732
    $P2487 = root_new ['parrot';'Hash']
  vivify_732:
    set $P2488, $P2487["quote"]
    unless_null $P2488, vivify_733
    new $P2488, "Undef"
  vivify_733:
    if $P2488, if_2486
    find_lex $P2492, "$/"
    unless_null $P2492, vivify_734
    $P2492 = root_new ['parrot';'Hash']
  vivify_734:
    set $P2493, $P2492["number"]
    unless_null $P2493, vivify_735
    new $P2493, "Undef"
  vivify_735:
    $P2494 = $P2493."ast"()
    set $P2485, $P2494
    goto if_2486_end
  if_2486:
    find_lex $P2489, "$/"
    unless_null $P2489, vivify_736
    $P2489 = root_new ['parrot';'Hash']
  vivify_736:
    set $P2490, $P2489["quote"]
    unless_null $P2490, vivify_737
    new $P2490, "Undef"
  vivify_737:
    $P2491 = $P2490."ast"()
    set $P2485, $P2491
  if_2486_end:
    $P2495 = $P2484."!make"($P2485)
.annotate 'line', 939
    .return ($P2495)
  control_2481:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2496, exception, "payload"
    .return ($P2496)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "number"  :subid("131_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_2500
.annotate 'line', 943
    new $P2499, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2499, control_2498
    push_eh $P2499
    .lex "self", self
    .lex "$/", param_2500
.annotate 'line', 944
    new $P2501, "Undef"
    .lex "$value", $P2501
    find_lex $P2504, "$/"
    unless_null $P2504, vivify_738
    $P2504 = root_new ['parrot';'Hash']
  vivify_738:
    set $P2505, $P2504["dec_number"]
    unless_null $P2505, vivify_739
    new $P2505, "Undef"
  vivify_739:
    if $P2505, if_2503
    find_lex $P2509, "$/"
    unless_null $P2509, vivify_740
    $P2509 = root_new ['parrot';'Hash']
  vivify_740:
    set $P2510, $P2509["integer"]
    unless_null $P2510, vivify_741
    new $P2510, "Undef"
  vivify_741:
    $P2511 = $P2510."ast"()
    set $P2502, $P2511
    goto if_2503_end
  if_2503:
    find_lex $P2506, "$/"
    unless_null $P2506, vivify_742
    $P2506 = root_new ['parrot';'Hash']
  vivify_742:
    set $P2507, $P2506["dec_number"]
    unless_null $P2507, vivify_743
    new $P2507, "Undef"
  vivify_743:
    $P2508 = $P2507."ast"()
    set $P2502, $P2508
  if_2503_end:
    store_lex "$value", $P2502
.annotate 'line', 945
    find_lex $P2513, "$/"
    unless_null $P2513, vivify_744
    $P2513 = root_new ['parrot';'Hash']
  vivify_744:
    set $P2514, $P2513["sign"]
    unless_null $P2514, vivify_745
    new $P2514, "Undef"
  vivify_745:
    set $S2515, $P2514
    iseq $I2516, $S2515, "-"
    unless $I2516, if_2512_end
    find_lex $P2517, "$value"
    neg $P2518, $P2517
    store_lex "$value", $P2518
  if_2512_end:
.annotate 'line', 946
    find_lex $P2519, "$/"
    get_hll_global $P2520, ["PAST"], "Val"
    find_lex $P2521, "$value"
    $P2522 = $P2520."new"($P2521 :named("value"))
    $P2523 = $P2519."!make"($P2522)
.annotate 'line', 943
    .return ($P2523)
  control_2498:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2524, exception, "payload"
    .return ($P2524)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "quote:sym<apos>"  :subid("132_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_2528
.annotate 'line', 949
    new $P2527, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2527, control_2526
    push_eh $P2527
    .lex "self", self
    .lex "$/", param_2528
    find_lex $P2529, "$/"
    find_lex $P2530, "$/"
    unless_null $P2530, vivify_746
    $P2530 = root_new ['parrot';'Hash']
  vivify_746:
    set $P2531, $P2530["quote_EXPR"]
    unless_null $P2531, vivify_747
    new $P2531, "Undef"
  vivify_747:
    $P2532 = $P2531."ast"()
    $P2533 = $P2529."!make"($P2532)
    .return ($P2533)
  control_2526:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2534, exception, "payload"
    .return ($P2534)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "quote:sym<dblq>"  :subid("133_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_2538
.annotate 'line', 950
    new $P2537, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2537, control_2536
    push_eh $P2537
    .lex "self", self
    .lex "$/", param_2538
    find_lex $P2539, "$/"
    find_lex $P2540, "$/"
    unless_null $P2540, vivify_748
    $P2540 = root_new ['parrot';'Hash']
  vivify_748:
    set $P2541, $P2540["quote_EXPR"]
    unless_null $P2541, vivify_749
    new $P2541, "Undef"
  vivify_749:
    $P2542 = $P2541."ast"()
    $P2543 = $P2539."!make"($P2542)
    .return ($P2543)
  control_2536:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2544, exception, "payload"
    .return ($P2544)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "quote:sym<qq>"  :subid("134_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_2548
.annotate 'line', 951
    new $P2547, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2547, control_2546
    push_eh $P2547
    .lex "self", self
    .lex "$/", param_2548
    find_lex $P2549, "$/"
    find_lex $P2550, "$/"
    unless_null $P2550, vivify_750
    $P2550 = root_new ['parrot';'Hash']
  vivify_750:
    set $P2551, $P2550["quote_EXPR"]
    unless_null $P2551, vivify_751
    new $P2551, "Undef"
  vivify_751:
    $P2552 = $P2551."ast"()
    $P2553 = $P2549."!make"($P2552)
    .return ($P2553)
  control_2546:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2554, exception, "payload"
    .return ($P2554)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "quote:sym<q>"  :subid("135_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_2558
.annotate 'line', 952
    new $P2557, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2557, control_2556
    push_eh $P2557
    .lex "self", self
    .lex "$/", param_2558
    find_lex $P2559, "$/"
    find_lex $P2560, "$/"
    unless_null $P2560, vivify_752
    $P2560 = root_new ['parrot';'Hash']
  vivify_752:
    set $P2561, $P2560["quote_EXPR"]
    unless_null $P2561, vivify_753
    new $P2561, "Undef"
  vivify_753:
    $P2562 = $P2561."ast"()
    $P2563 = $P2559."!make"($P2562)
    .return ($P2563)
  control_2556:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2564, exception, "payload"
    .return ($P2564)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "quote:sym<Q>"  :subid("136_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_2568
.annotate 'line', 953
    new $P2567, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2567, control_2566
    push_eh $P2567
    .lex "self", self
    .lex "$/", param_2568
    find_lex $P2569, "$/"
    find_lex $P2570, "$/"
    unless_null $P2570, vivify_754
    $P2570 = root_new ['parrot';'Hash']
  vivify_754:
    set $P2571, $P2570["quote_EXPR"]
    unless_null $P2571, vivify_755
    new $P2571, "Undef"
  vivify_755:
    $P2572 = $P2571."ast"()
    $P2573 = $P2569."!make"($P2572)
    .return ($P2573)
  control_2566:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2574, exception, "payload"
    .return ($P2574)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "quote:sym<Q:PIR>"  :subid("137_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_2578
.annotate 'line', 954
    new $P2577, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2577, control_2576
    push_eh $P2577
    .lex "self", self
    .lex "$/", param_2578
.annotate 'line', 955
    find_lex $P2579, "$/"
    get_hll_global $P2580, ["PAST"], "Op"
    find_lex $P2581, "$/"
    unless_null $P2581, vivify_756
    $P2581 = root_new ['parrot';'Hash']
  vivify_756:
    set $P2582, $P2581["quote_EXPR"]
    unless_null $P2582, vivify_757
    new $P2582, "Undef"
  vivify_757:
    $P2583 = $P2582."ast"()
    $P2584 = $P2583."value"()
    find_lex $P2585, "$/"
    $P2586 = $P2580."new"($P2584 :named("inline"), "inline" :named("pasttype"), $P2585 :named("node"))
    $P2587 = $P2579."!make"($P2586)
.annotate 'line', 954
    .return ($P2587)
  control_2576:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2588, exception, "payload"
    .return ($P2588)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "quote:sym</ />"  :subid("138_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_2592
    .param pmc param_2593 :optional
    .param int has_param_2593 :opt_flag
.annotate 'line', 960
    new $P2591, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2591, control_2590
    push_eh $P2591
    .lex "self", self
    .lex "$/", param_2592
    if has_param_2593, optparam_758
    new $P2594, "Undef"
    set param_2593, $P2594
  optparam_758:
    .lex "$key", param_2593
.annotate 'line', 970
    new $P2595, "Undef"
    .lex "$regex", $P2595
.annotate 'line', 972
    new $P2596, "Undef"
    .lex "$past", $P2596
.annotate 'line', 961
    find_lex $P2598, "$key"
    set $S2599, $P2598
    iseq $I2600, $S2599, "open"
    unless $I2600, if_2597_end
.annotate 'line', 962

            null $P0
            set_hll_global ['Regex';'P6Regex';'Actions'], '$REGEXNAME', $P0
        
.annotate 'line', 966
    get_global $P2601, "@BLOCK"
    unless_null $P2601, vivify_759
    $P2601 = root_new ['parrot';'ResizablePMCArray']
  vivify_759:
    set $P2602, $P2601[0]
    unless_null $P2602, vivify_760
    new $P2602, "Undef"
  vivify_760:
    $P2602."symbol"(unicode:"$\x{a2}", "lexical" :named("scope"))
.annotate 'line', 967
    get_global $P2603, "@BLOCK"
    unless_null $P2603, vivify_761
    $P2603 = root_new ['parrot';'ResizablePMCArray']
  vivify_761:
    set $P2604, $P2603[0]
    unless_null $P2604, vivify_762
    new $P2604, "Undef"
  vivify_762:
    $P2604."symbol"("$/", "lexical" :named("scope"))
.annotate 'line', 968
    new $P2605, "Exception"
    set $P2605['type'], .CONTROL_RETURN
    new $P2606, "Integer"
    assign $P2606, 0
    setattribute $P2605, 'payload', $P2606
    throw $P2605
  if_2597_end:
.annotate 'line', 971
    get_hll_global $P2607, ["Regex";"P6Regex";"Actions"], "buildsub"
    find_lex $P2608, "$/"
    unless_null $P2608, vivify_763
    $P2608 = root_new ['parrot';'Hash']
  vivify_763:
    set $P2609, $P2608["p6regex"]
    unless_null $P2609, vivify_764
    new $P2609, "Undef"
  vivify_764:
    $P2610 = $P2609."ast"()
    get_global $P2611, "@BLOCK"
    $P2612 = $P2611."shift"()
    $P2613 = $P2607($P2610, $P2612)
    store_lex "$regex", $P2613
.annotate 'line', 973
    get_hll_global $P2614, ["PAST"], "Op"
.annotate 'line', 975
    get_hll_global $P2615, ["PAST"], "Var"
    new $P2616, "ResizablePMCArray"
    push $P2616, "Regex"
    $P2617 = $P2615."new"("Regex" :named("name"), $P2616 :named("namespace"), "package" :named("scope"))
    find_lex $P2618, "$regex"
    $P2619 = $P2614."new"($P2617, $P2618, "callmethod" :named("pasttype"), "new" :named("name"))
.annotate 'line', 973
    store_lex "$past", $P2619
.annotate 'line', 979
    find_lex $P2620, "$regex"
    find_lex $P2621, "$past"
    unless_null $P2621, vivify_765
    $P2621 = root_new ['parrot';'Hash']
    store_lex "$past", $P2621
  vivify_765:
    set $P2621["sink"], $P2620
.annotate 'line', 980
    find_lex $P2622, "$/"
    find_lex $P2623, "$past"
    $P2624 = $P2622."!make"($P2623)
.annotate 'line', 960
    .return ($P2624)
  control_2590:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2625, exception, "payload"
    .return ($P2625)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "quote_escape:sym<$>"  :subid("139_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_2629
.annotate 'line', 983
    new $P2628, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2628, control_2627
    push_eh $P2628
    .lex "self", self
    .lex "$/", param_2629
    find_lex $P2630, "$/"
    find_lex $P2631, "$/"
    unless_null $P2631, vivify_766
    $P2631 = root_new ['parrot';'Hash']
  vivify_766:
    set $P2632, $P2631["variable"]
    unless_null $P2632, vivify_767
    new $P2632, "Undef"
  vivify_767:
    $P2633 = $P2632."ast"()
    $P2634 = $P2630."!make"($P2633)
    .return ($P2634)
  control_2627:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2635, exception, "payload"
    .return ($P2635)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "quote_escape:sym<{ }>"  :subid("140_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_2639
.annotate 'line', 984
    new $P2638, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2638, control_2637
    push_eh $P2638
    .lex "self", self
    .lex "$/", param_2639
.annotate 'line', 985
    find_lex $P2640, "$/"
    get_hll_global $P2641, ["PAST"], "Op"
.annotate 'line', 986
    find_lex $P2642, "$/"
    unless_null $P2642, vivify_768
    $P2642 = root_new ['parrot';'Hash']
  vivify_768:
    set $P2643, $P2642["block"]
    unless_null $P2643, vivify_769
    new $P2643, "Undef"
  vivify_769:
    $P2644 = $P2643."ast"()
    $P2645 = "block_immediate"($P2644)
    find_lex $P2646, "$/"
    $P2647 = $P2641."new"($P2645, "set S*" :named("pirop"), $P2646 :named("node"))
.annotate 'line', 985
    $P2648 = $P2640."!make"($P2647)
.annotate 'line', 984
    .return ($P2648)
  control_2637:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2649, exception, "payload"
    .return ($P2649)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "quote_escape:sym<esc>"  :subid("141_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_2653
.annotate 'line', 989
    new $P2652, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2652, control_2651
    push_eh $P2652
    .lex "self", self
    .lex "$/", param_2653
    find_lex $P2654, "$/"
    $P2655 = $P2654."!make"("\e")
    .return ($P2655)
  control_2651:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2656, exception, "payload"
    .return ($P2656)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "postfix:sym<.>"  :subid("142_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_2660
.annotate 'line', 993
    new $P2659, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2659, control_2658
    push_eh $P2659
    .lex "self", self
    .lex "$/", param_2660
    find_lex $P2661, "$/"
    find_lex $P2662, "$/"
    unless_null $P2662, vivify_770
    $P2662 = root_new ['parrot';'Hash']
  vivify_770:
    set $P2663, $P2662["dotty"]
    unless_null $P2663, vivify_771
    new $P2663, "Undef"
  vivify_771:
    $P2664 = $P2663."ast"()
    $P2665 = $P2661."!make"($P2664)
    .return ($P2665)
  control_2658:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2666, exception, "payload"
    .return ($P2666)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "postfix:sym<++>"  :subid("143_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_2670
.annotate 'line', 995
    new $P2669, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2669, control_2668
    push_eh $P2669
    .lex "self", self
    .lex "$/", param_2670
.annotate 'line', 996
    find_lex $P2671, "$/"
    get_hll_global $P2672, ["PAST"], "Op"
.annotate 'line', 997
    new $P2673, "ResizablePMCArray"
    push $P2673, "    clone %r, %0"
    push $P2673, "    inc %0"
    $P2674 = $P2672."new"("postfix:<++>" :named("name"), $P2673 :named("inline"), "inline" :named("pasttype"))
.annotate 'line', 996
    $P2675 = $P2671."!make"($P2674)
.annotate 'line', 995
    .return ($P2675)
  control_2668:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2676, exception, "payload"
    .return ($P2676)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "postfix:sym<-->"  :subid("144_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_2680
.annotate 'line', 1001
    new $P2679, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2679, control_2678
    push_eh $P2679
    .lex "self", self
    .lex "$/", param_2680
.annotate 'line', 1002
    find_lex $P2681, "$/"
    get_hll_global $P2682, ["PAST"], "Op"
.annotate 'line', 1003
    new $P2683, "ResizablePMCArray"
    push $P2683, "    clone %r, %0"
    push $P2683, "    dec %0"
    $P2684 = $P2682."new"("postfix:<-->" :named("name"), $P2683 :named("inline"), "inline" :named("pasttype"))
.annotate 'line', 1002
    $P2685 = $P2681."!make"($P2684)
.annotate 'line', 1001
    .return ($P2685)
  control_2678:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2686, exception, "payload"
    .return ($P2686)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "prefix:sym<make>"  :subid("145_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_2690
.annotate 'line', 1007
    new $P2689, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2689, control_2688
    push_eh $P2689
    .lex "self", self
    .lex "$/", param_2690
.annotate 'line', 1008
    find_lex $P2691, "$/"
    get_hll_global $P2692, ["PAST"], "Op"
.annotate 'line', 1009
    get_hll_global $P2693, ["PAST"], "Var"
    $P2694 = $P2693."new"("$/" :named("name"), "contextual" :named("scope"))
    find_lex $P2695, "$/"
    $P2696 = $P2692."new"($P2694, "callmethod" :named("pasttype"), "!make" :named("name"), $P2695 :named("node"))
.annotate 'line', 1008
    $P2697 = $P2691."!make"($P2696)
.annotate 'line', 1007
    .return ($P2697)
  control_2688:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2698, exception, "payload"
    .return ($P2698)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "term:sym<next>"  :subid("146_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_2703
.annotate 'line', 1025
    new $P2702, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2702, control_2701
    push_eh $P2702
    .lex "self", self
    .lex "$/", param_2703
    find_lex $P2704, "$/"
    $P2705 = "control"($P2704, "CONTROL_LOOP_NEXT")
    .return ($P2705)
  control_2701:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2706, exception, "payload"
    .return ($P2706)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "term:sym<last>"  :subid("147_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_2710
.annotate 'line', 1026
    new $P2709, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2709, control_2708
    push_eh $P2709
    .lex "self", self
    .lex "$/", param_2710
    find_lex $P2711, "$/"
    $P2712 = "control"($P2711, "CONTROL_LOOP_LAST")
    .return ($P2712)
  control_2708:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2713, exception, "payload"
    .return ($P2713)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "term:sym<redo>"  :subid("148_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_2717
.annotate 'line', 1027
    new $P2716, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2716, control_2715
    push_eh $P2716
    .lex "self", self
    .lex "$/", param_2717
    find_lex $P2718, "$/"
    $P2719 = "control"($P2718, "CONTROL_LOOP_REDO")
    .return ($P2719)
  control_2715:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2720, exception, "payload"
    .return ($P2720)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "infix:sym<~~>"  :subid("149_1294592831.858") :method :outer("11_1294592831.858")
    .param pmc param_2724
.annotate 'line', 1029
    new $P2723, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2723, control_2722
    push_eh $P2723
    .lex "self", self
    .lex "$/", param_2724
.annotate 'line', 1030
    find_lex $P2725, "$/"
    get_hll_global $P2726, ["PAST"], "Op"
    find_lex $P2727, "$/"
    $P2728 = $P2726."new"("callmethod" :named("pasttype"), "ACCEPTS" :named("name"), $P2727 :named("node"))
    $P2729 = $P2725."!make"($P2728)
.annotate 'line', 1029
    .return ($P2729)
  control_2722:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2730, exception, "payload"
    .return ($P2730)
.end


.namespace ["NQP";"RegexActions"]
.sub "_block2731"  :subid("150_1294592831.858") :outer("11_1294592831.858")
.annotate 'line', 1034
    .const 'Sub' $P2817 = "157_1294592831.858" 
    capture_lex $P2817
    .const 'Sub' $P2804 = "156_1294592831.858" 
    capture_lex $P2804
    .const 'Sub' $P2787 = "155_1294592831.858" 
    capture_lex $P2787
    .const 'Sub' $P2774 = "154_1294592831.858" 
    capture_lex $P2774
    .const 'Sub' $P2761 = "153_1294592831.858" 
    capture_lex $P2761
    .const 'Sub' $P2748 = "152_1294592831.858" 
    capture_lex $P2748
    .const 'Sub' $P2733 = "151_1294592831.858" 
    capture_lex $P2733
.annotate 'line', 1068
    .const 'Sub' $P2817 = "157_1294592831.858" 
    newclosure $P2842, $P2817
.annotate 'line', 1034
    .return ($P2842)
.end


.namespace ["NQP";"RegexActions"]
.include "except_types.pasm"
.sub "metachar:sym<:my>"  :subid("151_1294592831.858") :method :outer("150_1294592831.858")
    .param pmc param_2736
.annotate 'line', 1036
    new $P2735, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2735, control_2734
    push_eh $P2735
    .lex "self", self
    .lex "$/", param_2736
.annotate 'line', 1037
    new $P2737, "Undef"
    .lex "$past", $P2737
    find_lex $P2738, "$/"
    unless_null $P2738, vivify_772
    $P2738 = root_new ['parrot';'Hash']
  vivify_772:
    set $P2739, $P2738["statement"]
    unless_null $P2739, vivify_773
    new $P2739, "Undef"
  vivify_773:
    $P2740 = $P2739."ast"()
    store_lex "$past", $P2740
.annotate 'line', 1038
    find_lex $P2741, "$/"
    get_hll_global $P2742, ["PAST"], "Regex"
    find_lex $P2743, "$past"
    find_lex $P2744, "$/"
    $P2745 = $P2742."new"($P2743, "pastnode" :named("pasttype"), "declarative" :named("subtype"), $P2744 :named("node"))
    $P2746 = $P2741."!make"($P2745)
.annotate 'line', 1036
    .return ($P2746)
  control_2734:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2747, exception, "payload"
    .return ($P2747)
.end


.namespace ["NQP";"RegexActions"]
.include "except_types.pasm"
.sub "metachar:sym<{ }>"  :subid("152_1294592831.858") :method :outer("150_1294592831.858")
    .param pmc param_2751
.annotate 'line', 1042
    new $P2750, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2750, control_2749
    push_eh $P2750
    .lex "self", self
    .lex "$/", param_2751
.annotate 'line', 1043
    find_lex $P2752, "$/"
    get_hll_global $P2753, ["PAST"], "Regex"
    find_lex $P2754, "$/"
    unless_null $P2754, vivify_774
    $P2754 = root_new ['parrot';'Hash']
  vivify_774:
    set $P2755, $P2754["codeblock"]
    unless_null $P2755, vivify_775
    new $P2755, "Undef"
  vivify_775:
    $P2756 = $P2755."ast"()
    find_lex $P2757, "$/"
    $P2758 = $P2753."new"($P2756, "pastnode" :named("pasttype"), $P2757 :named("node"))
    $P2759 = $P2752."!make"($P2758)
.annotate 'line', 1042
    .return ($P2759)
  control_2749:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2760, exception, "payload"
    .return ($P2760)
.end


.namespace ["NQP";"RegexActions"]
.include "except_types.pasm"
.sub "metachar:sym<nqpvar>"  :subid("153_1294592831.858") :method :outer("150_1294592831.858")
    .param pmc param_2764
.annotate 'line', 1047
    new $P2763, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2763, control_2762
    push_eh $P2763
    .lex "self", self
    .lex "$/", param_2764
.annotate 'line', 1048
    find_lex $P2765, "$/"
    get_hll_global $P2766, ["PAST"], "Regex"
    find_lex $P2767, "$/"
    unless_null $P2767, vivify_776
    $P2767 = root_new ['parrot';'Hash']
  vivify_776:
    set $P2768, $P2767["var"]
    unless_null $P2768, vivify_777
    new $P2768, "Undef"
  vivify_777:
    $P2769 = $P2768."ast"()
    find_lex $P2770, "$/"
    $P2771 = $P2766."new"("!INTERPOLATE", $P2769, "subrule" :named("pasttype"), "method" :named("subtype"), $P2770 :named("node"))
    $P2772 = $P2765."!make"($P2771)
.annotate 'line', 1047
    .return ($P2772)
  control_2762:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2773, exception, "payload"
    .return ($P2773)
.end


.namespace ["NQP";"RegexActions"]
.include "except_types.pasm"
.sub "assertion:sym<{ }>"  :subid("154_1294592831.858") :method :outer("150_1294592831.858")
    .param pmc param_2777
.annotate 'line', 1052
    new $P2776, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2776, control_2775
    push_eh $P2776
    .lex "self", self
    .lex "$/", param_2777
.annotate 'line', 1053
    find_lex $P2778, "$/"
    get_hll_global $P2779, ["PAST"], "Regex"
    find_lex $P2780, "$/"
    unless_null $P2780, vivify_778
    $P2780 = root_new ['parrot';'Hash']
  vivify_778:
    set $P2781, $P2780["codeblock"]
    unless_null $P2781, vivify_779
    new $P2781, "Undef"
  vivify_779:
    $P2782 = $P2781."ast"()
    find_lex $P2783, "$/"
    $P2784 = $P2779."new"("!INTERPOLATE_REGEX", $P2782, "subrule" :named("pasttype"), "method" :named("subtype"), $P2783 :named("node"))
    $P2785 = $P2778."!make"($P2784)
.annotate 'line', 1052
    .return ($P2785)
  control_2775:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2786, exception, "payload"
    .return ($P2786)
.end


.namespace ["NQP";"RegexActions"]
.include "except_types.pasm"
.sub "assertion:sym<?{ }>"  :subid("155_1294592831.858") :method :outer("150_1294592831.858")
    .param pmc param_2790
.annotate 'line', 1057
    new $P2789, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2789, control_2788
    push_eh $P2789
    .lex "self", self
    .lex "$/", param_2790
.annotate 'line', 1058
    find_lex $P2791, "$/"
    get_hll_global $P2792, ["PAST"], "Regex"
    find_lex $P2793, "$/"
    unless_null $P2793, vivify_780
    $P2793 = root_new ['parrot';'Hash']
  vivify_780:
    set $P2794, $P2793["codeblock"]
    unless_null $P2794, vivify_781
    new $P2794, "Undef"
  vivify_781:
    $P2795 = $P2794."ast"()
.annotate 'line', 1059
    find_lex $P2796, "$/"
    unless_null $P2796, vivify_782
    $P2796 = root_new ['parrot';'Hash']
  vivify_782:
    set $P2797, $P2796["zw"]
    unless_null $P2797, vivify_783
    new $P2797, "Undef"
  vivify_783:
    set $S2798, $P2797
    iseq $I2799, $S2798, "!"
    find_lex $P2800, "$/"
    $P2801 = $P2792."new"($P2795, "zerowidth" :named("subtype"), $I2799 :named("negate"), "pastnode" :named("pasttype"), $P2800 :named("node"))
.annotate 'line', 1058
    $P2802 = $P2791."!make"($P2801)
.annotate 'line', 1057
    .return ($P2802)
  control_2788:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2803, exception, "payload"
    .return ($P2803)
.end


.namespace ["NQP";"RegexActions"]
.include "except_types.pasm"
.sub "assertion:sym<var>"  :subid("156_1294592831.858") :method :outer("150_1294592831.858")
    .param pmc param_2807
.annotate 'line', 1063
    new $P2806, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2806, control_2805
    push_eh $P2806
    .lex "self", self
    .lex "$/", param_2807
.annotate 'line', 1064
    find_lex $P2808, "$/"
    get_hll_global $P2809, ["PAST"], "Regex"
    find_lex $P2810, "$/"
    unless_null $P2810, vivify_784
    $P2810 = root_new ['parrot';'Hash']
  vivify_784:
    set $P2811, $P2810["var"]
    unless_null $P2811, vivify_785
    new $P2811, "Undef"
  vivify_785:
    $P2812 = $P2811."ast"()
    find_lex $P2813, "$/"
    $P2814 = $P2809."new"("!INTERPOLATE_REGEX", $P2812, "subrule" :named("pasttype"), "method" :named("subtype"), $P2813 :named("node"))
    $P2815 = $P2808."!make"($P2814)
.annotate 'line', 1063
    .return ($P2815)
  control_2805:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2816, exception, "payload"
    .return ($P2816)
.end


.namespace ["NQP";"RegexActions"]
.include "except_types.pasm"
.sub "codeblock"  :subid("157_1294592831.858") :method :outer("150_1294592831.858")
    .param pmc param_2820
.annotate 'line', 1068
    new $P2819, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2819, control_2818
    push_eh $P2819
    .lex "self", self
    .lex "$/", param_2820
.annotate 'line', 1069
    new $P2821, "Undef"
    .lex "$block", $P2821
.annotate 'line', 1071
    new $P2822, "Undef"
    .lex "$past", $P2822
.annotate 'line', 1069
    find_lex $P2823, "$/"
    unless_null $P2823, vivify_786
    $P2823 = root_new ['parrot';'Hash']
  vivify_786:
    set $P2824, $P2823["block"]
    unless_null $P2824, vivify_787
    new $P2824, "Undef"
  vivify_787:
    $P2825 = $P2824."ast"()
    store_lex "$block", $P2825
.annotate 'line', 1070
    find_lex $P2826, "$block"
    $P2826."blocktype"("immediate")
.annotate 'line', 1072
    get_hll_global $P2827, ["PAST"], "Stmts"
.annotate 'line', 1073
    get_hll_global $P2828, ["PAST"], "Op"
.annotate 'line', 1074
    get_hll_global $P2829, ["PAST"], "Var"
    $P2830 = $P2829."new"("$/" :named("name"))
.annotate 'line', 1075
    get_hll_global $P2831, ["PAST"], "Op"
.annotate 'line', 1076
    get_hll_global $P2832, ["PAST"], "Var"
    $P2833 = $P2832."new"(unicode:"$\x{a2}" :named("name"))
    $P2834 = $P2831."new"($P2833, "MATCH" :named("name"), "callmethod" :named("pasttype"))
.annotate 'line', 1075
    $P2835 = $P2828."new"($P2830, $P2834, "bind" :named("pasttype"))
.annotate 'line', 1073
    find_lex $P2836, "$block"
    $P2837 = $P2827."new"($P2835, $P2836)
.annotate 'line', 1072
    store_lex "$past", $P2837
.annotate 'line', 1084
    find_lex $P2838, "$/"
    find_lex $P2839, "$past"
    $P2840 = $P2838."!make"($P2839)
.annotate 'line', 1068
    .return ($P2840)
  control_2818:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2841, exception, "payload"
    .return ($P2841)
.end


.namespace ["NQP";"Actions"]
.sub "_block2844" :load :anon :subid("158_1294592831.858")
.annotate 'line', 3
    .const 'Sub' $P2846 = "11_1294592831.858" 
    $P2847 = $P2846()
    .return ($P2847)
.end


.namespace []
.sub "_block2854" :load :anon :subid("160_1294592831.858")
.annotate 'line', 1
    .const 'Sub' $P2856 = "10_1294592831.858" 
    $P2857 = $P2856()
    .return ($P2857)
.end

### .include 'src/cheats/nqp-builtins.pir'
.namespace []

.sub 'print'
    .param pmc list            :slurpy
    .local pmc list_it
    list_it = iter list
  list_loop:
    unless list_it goto list_done
    $P0 = shift list_it
    print $P0
    goto list_loop
  list_done:
    .return (1)
.end

.sub 'say'
    .param pmc list            :slurpy
    .tailcall 'print'(list :flat, "\n")
.end

.sub 'ok'
    .param pmc    condition
    .param string description :optional
    .param int    has_desc    :opt_flag
    if condition goto it_was_ok
        print "not "
  it_was_ok:
    print "ok "
    $P0 = get_global "$test_counter"
    $P0 += 1
    print $P0
    unless has_desc goto no_description
        print " # "
        print description
  no_description:
    print "\n"
    .return (1)
.end

.sub 'plan'
    .param int quantity
    print "1.."
    print quantity
    print "\n"
.end

.sub '' :anon :init :load
    $P0 = box 0
    set_global '$test_counter', $P0
.end



.namespace ['NQP';'Compiler']

.sub '' :anon :load :init
    .local pmc p6meta, nqpproto, nqpcomp
    p6meta = get_hll_global 'P6metaclass'
    nqpproto = p6meta.'new_class'('NQP::Compiler', 'parent'=>'HLL::Compiler')
    nqpcomp = nqpproto.'new'()
    nqpcomp.'BUILD'() # XXX
    nqpcomp.'language'('NQP-rx')
    $P0 = get_hll_global ['NQP'], 'Grammar'
    nqpcomp.'parsegrammar'($P0)
    $P0 = get_hll_global ['NQP'], 'Actions'
    nqpcomp.'parseactions'($P0)
    $P0 = getattribute nqpcomp, '@!cmdoptions'
    push $P0, 'parsetrace'
.end

.sub 'main' :main
    .param pmc args_str

    $P0 = compreg 'NQP-rx'
    $P1 = $P0.'command_line'(args_str, 'encoding'=>'utf8', 'transcode'=>'ascii iso-8859-1')
    exit 0
.end

# Local Variables:
#   mode: pir
#   fill-column: 100
# End:
# vim: expandtab shiftwidth=4 ft=pir:
