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
.sub "_block11"  :anon :subid("10_1294786929.093")
.annotate 'line', 0
    get_hll_global $P731, ["NQPMu"], "_block730" 
    capture_lex $P731
    get_hll_global $P682, ["NQPAttribute"], "_block681" 
    capture_lex $P682
    get_hll_global $P50, ["NQPClassHOW"], "_block49" 
    capture_lex $P50
    get_hll_global $P18, ["KnowHOWAttribute"], "_block17" 
    capture_lex $P18
.annotate 'line', 1
    nqp_dynop_setup 
    get_hll_global $P13, "NQPMu"
    get_hll_global $P14, "NQPAttribute"
    get_hll_global $P15, "NQPClassHOW"
    get_hll_global $P16, "KnowHOWAttribute"
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 10
    get_hll_global $P18, ["KnowHOWAttribute"], "_block17" 
    capture_lex $P18
    $P18()
.annotate 'line', 26
    get_hll_global $P50, ["NQPClassHOW"], "_block49" 
    capture_lex $P50
    $P50()
.annotate 'line', 294
    get_hll_global $P682, ["NQPAttribute"], "_block681" 
    capture_lex $P682
    $P682()
.annotate 'line', 313
    get_hll_global $P731, ["NQPMu"], "_block730" 
    capture_lex $P731
    $P758 = $P731()
.annotate 'line', 1
    .return ($P758)
    .const 'Sub' $P760 = "58_1294786929.093" 
    .return ($P760)
.end


.namespace ["KnowHOWAttribute"]
.sub "_block17"  :subid("11_1294786929.093") :outer("10_1294786929.093")
.annotate 'line', 10
    .const 'Sub' $P40 = "14_1294786929.093" 
    capture_lex $P40
    .const 'Sub' $P31 = "13_1294786929.093" 
    capture_lex $P31
    .const 'Sub' $P20 = "12_1294786929.093" 
    capture_lex $P20
    get_global $P19, "$?CLASS"
.annotate 'line', 14
    .const 'Sub' $P31 = "13_1294786929.093" 
    newclosure $P38, $P31
.annotate 'line', 10
    .return ($P38)
.end


.namespace ["KnowHOWAttribute"]
.sub "" :load :init :subid("post59") :outer("11_1294786929.093")
.annotate 'line', 10
    get_hll_global $P18, ["KnowHOWAttribute"], "_block17" 
    .local pmc block
    set block, $P18
    .const 'Sub' $P40 = "14_1294786929.093" 
    capture_lex $P40
    $P40()
.end


.namespace ["KnowHOWAttribute"]
.sub "_block39"  :anon :subid("14_1294786929.093") :outer("11_1294786929.093")
.annotate 'line', 10
    get_hll_global $P41, "KnowHOW"
    $P42 = $P41."new_type"("KnowHOWAttribute" :named("name"), "P6str" :named("repr"))
    .local pmc type_obj
    set type_obj, $P42
    set_hll_global "KnowHOWAttribute", type_obj
    set_global "$?CLASS", type_obj
    get_how $P43, type_obj
    .const 'Sub' $P44 = "12_1294786929.093" 
    $P43."add_method"(type_obj, "new", $P44)
    get_how $P45, type_obj
    .const 'Sub' $P46 = "13_1294786929.093" 
    $P45."add_method"(type_obj, "name", $P46)
    get_how $P47, type_obj
    $P48 = $P47."compose"(type_obj)
    .return ($P48)
.end


.namespace ["KnowHOWAttribute"]
.include "except_types.pasm"
.sub "new"  :subid("12_1294786929.093") :outer("11_1294786929.093")
    .param pmc param_23
    .param pmc param_24 :optional :named("name")
    .param int has_param_24 :opt_flag
.annotate 'line', 11
    new $P22, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P22, control_21
    push_eh $P22
    .lex "self", param_23
    if has_param_24, optparam_60
    new $P25, "Undef"
    set param_24, $P25
  optparam_60:
    .lex "$name", param_24
.annotate 'line', 12
    find_lex $P26, "$name"
    set $S27, $P26
    get_hll_global $P28, "KnowHOWAttribute"
    repr_box_str $P29, $S27, $P28
.annotate 'line', 11
    .return ($P29)
  control_21:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P30, exception, "payload"
    .return ($P30)
.end


.namespace ["KnowHOWAttribute"]
.include "except_types.pasm"
.sub "name"  :subid("13_1294786929.093") :outer("11_1294786929.093")
    .param pmc param_34
.annotate 'line', 14
    new $P33, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P33, control_32
    push_eh $P33
    .lex "self", param_34
.annotate 'line', 15
    find_lex $P35, "self"
    repr_unbox_str $S36, $P35
.annotate 'line', 14
    .return ($S36)
  control_32:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P37, exception, "payload"
    .return ($P37)
.end


.namespace ["NQPClassHOW"]
.sub "_block49"  :subid("15_1294786929.093") :outer("10_1294786929.093")
.annotate 'line', 26
    .const 'Sub' $P612 = "48_1294786929.093" 
    capture_lex $P612
    .const 'Sub' $P575 = "46_1294786929.093" 
    capture_lex $P575
    .const 'Sub' $P539 = "44_1294786929.093" 
    capture_lex $P539
    .const 'Sub' $P505 = "43_1294786929.093" 
    capture_lex $P505
    .const 'Sub' $P468 = "42_1294786929.093" 
    capture_lex $P468
    .const 'Sub' $P442 = "40_1294786929.093" 
    capture_lex $P442
    .const 'Sub' $P433 = "39_1294786929.093" 
    capture_lex $P433
    .const 'Sub' $P424 = "38_1294786929.093" 
    capture_lex $P424
    .const 'Sub' $P398 = "36_1294786929.093" 
    capture_lex $P398
    .const 'Sub' $P388 = "35_1294786929.093" 
    capture_lex $P388
    .const 'Sub' $P378 = "34_1294786929.093" 
    capture_lex $P378
    .const 'Sub' $P358 = "33_1294786929.093" 
    capture_lex $P358
    .const 'Sub' $P317 = "31_1294786929.093" 
    capture_lex $P317
    .const 'Sub' $P293 = "30_1294786929.093" 
    capture_lex $P293
    .const 'Sub' $P271 = "29_1294786929.093" 
    capture_lex $P271
    .const 'Sub' $P254 = "28_1294786929.093" 
    capture_lex $P254
    .const 'Sub' $P244 = "27_1294786929.093" 
    capture_lex $P244
    .const 'Sub' $P231 = "26_1294786929.093" 
    capture_lex $P231
    .const 'Sub' $P94 = "19_1294786929.093" 
    capture_lex $P94
    .const 'Sub' $P52 = "16_1294786929.093" 
    capture_lex $P52
    get_global $P51, "$?CLASS"
.annotate 'line', 116
    .const 'Sub' $P52 = "16_1294786929.093" 
    newclosure $P93, $P52
    .lex "compute_c3_mro", $P93
.annotate 'line', 138
    .const 'Sub' $P94 = "19_1294786929.093" 
    newclosure $P230, $P94
    .lex "c3_merge", $P230
.annotate 'line', 102
    find_lex $P376, "compute_c3_mro"
    find_lex $P377, "c3_merge"
.annotate 'line', 281
    .const 'Sub' $P575 = "46_1294786929.093" 
    newclosure $P610, $P575
.annotate 'line', 26
    .return ($P610)
.end


.namespace ["NQPClassHOW"]
.sub "" :load :init :subid("post61") :outer("15_1294786929.093")
.annotate 'line', 26
    get_hll_global $P50, ["NQPClassHOW"], "_block49" 
    .local pmc block
    set block, $P50
    .const 'Sub' $P612 = "48_1294786929.093" 
    capture_lex $P612
    $P612()
.end


.namespace ["NQPClassHOW"]
.sub "_block611"  :anon :subid("48_1294786929.093") :outer("15_1294786929.093")
.annotate 'line', 26
    get_hll_global $P613, "KnowHOW"
    $P614 = $P613."new_type"("NQPClassHOW" :named("name"))
    .local pmc type_obj
    set type_obj, $P614
    set_hll_global "NQPClassHOW", type_obj
    set_global "$?CLASS", type_obj
    get_how $P615, type_obj
    get_hll_global $P616, "KnowHOWAttribute"
    $P617 = $P616."new"("$!name" :named("name"))
    $P615."add_attribute"(type_obj, $P617)
    get_how $P618, type_obj
    get_hll_global $P619, "KnowHOWAttribute"
    $P620 = $P619."new"("%!attributes" :named("name"))
    $P618."add_attribute"(type_obj, $P620)
    get_how $P621, type_obj
    get_hll_global $P622, "KnowHOWAttribute"
    $P623 = $P622."new"("%!methods" :named("name"))
    $P621."add_attribute"(type_obj, $P623)
    get_how $P624, type_obj
    get_hll_global $P625, "KnowHOWAttribute"
    $P626 = $P625."new"("@!parents" :named("name"))
    $P624."add_attribute"(type_obj, $P626)
    get_how $P627, type_obj
    get_hll_global $P628, "KnowHOWAttribute"
    $P629 = $P628."new"("@!roles" :named("name"))
    $P627."add_attribute"(type_obj, $P629)
    get_how $P630, type_obj
    get_hll_global $P631, "KnowHOWAttribute"
    $P632 = $P631."new"("@!vtable" :named("name"))
    $P630."add_attribute"(type_obj, $P632)
    get_how $P633, type_obj
    get_hll_global $P634, "KnowHOWAttribute"
    $P635 = $P634."new"("%!method-vtable-slots" :named("name"))
    $P633."add_attribute"(type_obj, $P635)
    get_how $P636, type_obj
    get_hll_global $P637, "KnowHOWAttribute"
    $P638 = $P637."new"("$!composed" :named("name"))
    $P636."add_attribute"(type_obj, $P638)
    get_how $P639, type_obj
    get_hll_global $P640, "KnowHOWAttribute"
    $P641 = $P640."new"("@!mro" :named("name"))
    $P639."add_attribute"(type_obj, $P641)
    get_how $P642, type_obj
    get_hll_global $P643, "KnowHOWAttribute"
    $P644 = $P643."new"("@!done" :named("name"))
    $P642."add_attribute"(type_obj, $P644)
    get_how $P645, type_obj
    .const 'Sub' $P646 = "26_1294786929.093" 
    $P645."add_method"(type_obj, "new", $P646)
    get_how $P647, type_obj
    .const 'Sub' $P648 = "27_1294786929.093" 
    $P647."add_method"(type_obj, "BUILD", $P648)
    get_how $P649, type_obj
    .const 'Sub' $P650 = "28_1294786929.093" 
    $P649."add_method"(type_obj, "new_type", $P650)
    get_how $P651, type_obj
    .const 'Sub' $P652 = "29_1294786929.093" 
    $P651."add_method"(type_obj, "add_method", $P652)
    get_how $P653, type_obj
    .const 'Sub' $P654 = "30_1294786929.093" 
    $P653."add_method"(type_obj, "add_attribute", $P654)
    get_how $P655, type_obj
    .const 'Sub' $P656 = "31_1294786929.093" 
    $P655."add_method"(type_obj, "add_parent", $P656)
    get_how $P657, type_obj
    .const 'Sub' $P658 = "33_1294786929.093" 
    $P657."add_method"(type_obj, "compose", $P658)
    get_how $P659, type_obj
    .const 'Sub' $P660 = "34_1294786929.093" 
    $P659."add_method"(type_obj, "parents", $P660)
    get_how $P661, type_obj
    .const 'Sub' $P662 = "35_1294786929.093" 
    $P661."add_method"(type_obj, "roles", $P662)
    get_how $P663, type_obj
    .const 'Sub' $P664 = "36_1294786929.093" 
    $P663."add_method"(type_obj, "methods", $P664)
    get_how $P665, type_obj
    .const 'Sub' $P666 = "38_1294786929.093" 
    $P665."add_method"(type_obj, "method_table", $P666)
    get_how $P667, type_obj
    .const 'Sub' $P668 = "39_1294786929.093" 
    $P667."add_method"(type_obj, "name", $P668)
    get_how $P669, type_obj
    .const 'Sub' $P670 = "40_1294786929.093" 
    $P669."add_method"(type_obj, "attributes", $P670)
    get_how $P671, type_obj
    .const 'Sub' $P672 = "42_1294786929.093" 
    $P671."add_method"(type_obj, "isa", $P672)
    get_how $P673, type_obj
    .const 'Sub' $P674 = "43_1294786929.093" 
    $P673."add_method"(type_obj, "does", $P674)
    get_how $P675, type_obj
    .const 'Sub' $P676 = "44_1294786929.093" 
    $P675."add_method"(type_obj, "can", $P676)
    get_how $P677, type_obj
    .const 'Sub' $P678 = "46_1294786929.093" 
    $P677."add_method"(type_obj, "find_method", $P678)
    get_how $P679, type_obj
    $P680 = $P679."compose"(type_obj)
    .return ($P680)
.end


.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "compute_c3_mro"  :subid("16_1294786929.093") :outer("15_1294786929.093")
    .param pmc param_55
.annotate 'line', 116
    .const 'Sub' $P67 = "17_1294786929.093" 
    capture_lex $P67
    new $P54, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P54, control_53
    push_eh $P54
    .lex "$class", param_55
.annotate 'line', 117
    $P56 = root_new ['parrot';'ResizablePMCArray']
    .lex "@immediate_parents", $P56
.annotate 'line', 120
    $P57 = root_new ['parrot';'ResizablePMCArray']
    .lex "@result", $P57
.annotate 'line', 117
    find_lex $P58, "$class"
    get_how $P59, $P58
    find_lex $P60, "$class"
    $P61 = $P59."parents"($P60, 1 :named("local"))
    store_lex "@immediate_parents", $P61
    find_lex $P62, "@result"
.annotate 'line', 121
    find_lex $P64, "@immediate_parents"
    set $N65, $P64
    unless $N65, if_63_end
    .const 'Sub' $P67 = "17_1294786929.093" 
    capture_lex $P67
    $P67()
  if_63_end:
.annotate 'line', 133
    find_lex $P88, "@result"
    find_lex $P89, "$class"
    $P88."unshift"($P89)
.annotate 'line', 134
    new $P90, "Exception"
    set $P90['type'], .CONTROL_RETURN
    find_lex $P91, "@result"
    setattribute $P90, 'payload', $P91
    throw $P90
.annotate 'line', 116
    .return ()
  control_53:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P92, exception, "payload"
    .return ($P92)
.end


.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block66"  :anon :subid("17_1294786929.093") :outer("16_1294786929.093")
.annotate 'line', 121
    .const 'Sub' $P75 = "18_1294786929.093" 
    capture_lex $P75
.annotate 'line', 124
    $P68 = root_new ['parrot';'ResizablePMCArray']
    .lex "@merge_list", $P68
.annotate 'line', 121
    find_lex $P69, "@merge_list"
.annotate 'line', 125
    find_lex $P71, "@immediate_parents"
    defined $I72, $P71
    unless $I72, for_undef_62
    iter $P70, $P71
    new $P82, 'ExceptionHandler'
    set_addr $P82, loop81_handler
    $P82."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P82
  loop81_test:
    unless $P70, loop81_done
    shift $P73, $P70
  loop81_redo:
    .const 'Sub' $P75 = "18_1294786929.093" 
    capture_lex $P75
    $P75($P73)
  loop81_next:
    goto loop81_test
  loop81_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P83, exception, 'type'
    eq $P83, .CONTROL_LOOP_NEXT, loop81_next
    eq $P83, .CONTROL_LOOP_REDO, loop81_redo
  loop81_done:
    pop_eh 
  for_undef_62:
.annotate 'line', 128
    find_lex $P84, "@merge_list"
    find_lex $P85, "@immediate_parents"
    $P84."push"($P85)
.annotate 'line', 129
    find_lex $P86, "@merge_list"
    $P87 = "c3_merge"($P86)
    store_lex "@result", $P87
.annotate 'line', 121
    .return ($P87)
.end


.namespace ["NQPClassHOW"]
.sub "_block74"  :anon :subid("18_1294786929.093") :outer("17_1294786929.093")
    .param pmc param_76
.annotate 'line', 125
    .lex "$_", param_76
.annotate 'line', 126
    find_lex $P77, "@merge_list"
    find_lex $P78, "$_"
    $P79 = "compute_c3_mro"($P78)
    $P80 = $P77."push"($P79)
.annotate 'line', 125
    .return ($P80)
.end


.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "c3_merge"  :subid("19_1294786929.093") :outer("15_1294786929.093")
    .param pmc param_97
.annotate 'line', 138
    .const 'Sub' $P190 = "24_1294786929.093" 
    capture_lex $P190
    .const 'Sub' $P112 = "20_1294786929.093" 
    capture_lex $P112
    new $P96, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P96, control_95
    push_eh $P96
    .lex "@merge_list", param_97
.annotate 'line', 139
    $P98 = root_new ['parrot';'ResizablePMCArray']
    .lex "@result", $P98
.annotate 'line', 140
    new $P99, "Undef"
    .lex "$accepted", $P99
.annotate 'line', 141
    new $P100, "Undef"
    .lex "$something_accepted", $P100
.annotate 'line', 142
    new $P101, "Undef"
    .lex "$cand_count", $P101
.annotate 'line', 185
    new $P102, "Undef"
    .lex "$i", $P102
.annotate 'line', 138
    find_lex $P103, "@result"
    find_lex $P104, "$accepted"
.annotate 'line', 141
    new $P105, "Integer"
    assign $P105, 0
    store_lex "$something_accepted", $P105
.annotate 'line', 142
    new $P106, "Integer"
    assign $P106, 0
    store_lex "$cand_count", $P106
.annotate 'line', 145
    find_lex $P108, "@merge_list"
    defined $I109, $P108
    unless $I109, for_undef_63
    iter $P107, $P108
    new $P173, 'ExceptionHandler'
    set_addr $P173, loop172_handler
    $P173."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P173
  loop172_test:
    unless $P107, loop172_done
    shift $P110, $P107
  loop172_redo:
    .const 'Sub' $P112 = "20_1294786929.093" 
    capture_lex $P112
    $P112($P110)
  loop172_next:
    goto loop172_test
  loop172_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P174, exception, 'type'
    eq $P174, .CONTROL_LOOP_NEXT, loop172_next
    eq $P174, .CONTROL_LOOP_REDO, loop172_redo
  loop172_done:
    pop_eh 
  for_undef_63:
.annotate 'line', 175
    find_lex $P176, "$cand_count"
    set $N177, $P176
    iseq $I178, $N177, 0.0
    unless $I178, if_175_end
.annotate 'line', 176
    new $P179, "Exception"
    set $P179['type'], .CONTROL_RETURN
    find_lex $P180, "@result"
    setattribute $P179, 'payload', $P180
    throw $P179
  if_175_end:
.annotate 'line', 180
    find_lex $P182, "$something_accepted"
    if $P182, unless_181_end
.annotate 'line', 181
    die "Could not build C3 linearization: ambiguous hierarchy"
  unless_181_end:
.annotate 'line', 185
    new $P183, "Integer"
    assign $P183, 0
    store_lex "$i", $P183
.annotate 'line', 186
    new $P221, 'ExceptionHandler'
    set_addr $P221, loop220_handler
    $P221."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P221
  loop220_test:
    find_lex $P184, "$i"
    set $N185, $P184
    find_lex $P186, "@merge_list"
    set $N187, $P186
    islt $I188, $N185, $N187
    unless $I188, loop220_done
  loop220_redo:
    .const 'Sub' $P190 = "24_1294786929.093" 
    capture_lex $P190
    $P190()
  loop220_next:
    goto loop220_test
  loop220_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P222, exception, 'type'
    eq $P222, .CONTROL_LOOP_NEXT, loop220_next
    eq $P222, .CONTROL_LOOP_REDO, loop220_redo
  loop220_done:
    pop_eh 
.annotate 'line', 199
    find_lex $P223, "@merge_list"
    $P224 = "c3_merge"($P223)
    store_lex "@result", $P224
.annotate 'line', 200
    find_lex $P225, "@result"
    find_lex $P226, "$accepted"
    $P225."unshift"($P226)
.annotate 'line', 201
    new $P227, "Exception"
    set $P227['type'], .CONTROL_RETURN
    find_lex $P228, "@result"
    setattribute $P227, 'payload', $P228
    throw $P227
.annotate 'line', 138
    .return ()
  control_95:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P229, exception, "payload"
    .return ($P229)
.end


.namespace ["NQPClassHOW"]
.sub "_block111"  :anon :subid("20_1294786929.093") :outer("19_1294786929.093")
    .param pmc param_114
.annotate 'line', 145
    .const 'Sub' $P121 = "21_1294786929.093" 
    capture_lex $P121
.annotate 'line', 146
    $P113 = root_new ['parrot';'ResizablePMCArray']
    .lex "@cand_list", $P113
    .lex "$_", param_114
    find_lex $P115, "$_"
    store_lex "@cand_list", $P115
.annotate 'line', 147
    find_lex $P118, "@cand_list"
    set $N119, $P118
    if $N119, if_117
    new $P116, 'Float'
    set $P116, $N119
    goto if_117_end
  if_117:
    .const 'Sub' $P121 = "21_1294786929.093" 
    capture_lex $P121
    $P171 = $P121()
    set $P116, $P171
  if_117_end:
.annotate 'line', 145
    .return ($P116)
.end


.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block120"  :anon :subid("21_1294786929.093") :outer("20_1294786929.093")
.annotate 'line', 147
    .const 'Sub' $P134 = "22_1294786929.093" 
    capture_lex $P134
.annotate 'line', 148
    new $P122, "Undef"
    .lex "$rejected", $P122
.annotate 'line', 149
    new $P123, "Undef"
    .lex "$cand_class", $P123
.annotate 'line', 148
    new $P124, "Integer"
    assign $P124, 0
    store_lex "$rejected", $P124
.annotate 'line', 149
    find_lex $P125, "@cand_list"
    unless_null $P125, vivify_64
    $P125 = root_new ['parrot';'ResizablePMCArray']
  vivify_64:
    set $P126, $P125[0]
    unless_null $P126, vivify_65
    new $P126, "Undef"
  vivify_65:
    store_lex "$cand_class", $P126
.annotate 'line', 150
    find_lex $P127, "$cand_count"
    add $P128, $P127, 1
    store_lex "$cand_count", $P128
.annotate 'line', 151
    find_lex $P130, "@merge_list"
    defined $I131, $P130
    unless $I131, for_undef_66
    iter $P129, $P130
    new $P169, 'ExceptionHandler'
    set_addr $P169, loop168_handler
    $P169."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P169
  loop168_test:
    unless $P129, loop168_done
    shift $P132, $P129
  loop168_redo:
    .const 'Sub' $P134 = "22_1294786929.093" 
    capture_lex $P134
    $P134($P132)
  loop168_next:
    goto loop168_test
  loop168_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P170, exception, 'type'
    eq $P170, .CONTROL_LOOP_NEXT, loop168_next
    eq $P170, .CONTROL_LOOP_REDO, loop168_redo
  loop168_done:
    pop_eh 
  for_undef_66:
.annotate 'line', 147
    .return ($P129)
.end


.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block133"  :anon :subid("22_1294786929.093") :outer("21_1294786929.093")
    .param pmc param_135
.annotate 'line', 151
    .const 'Sub' $P141 = "23_1294786929.093" 
    capture_lex $P141
    .lex "$_", param_135
.annotate 'line', 153
    find_lex $P137, "$_"
    find_lex $P138, "@cand_list"
    issame $I139, $P137, $P138
    if $I139, unless_136_end
    .const 'Sub' $P141 = "23_1294786929.093" 
    capture_lex $P141
    $P141()
  unless_136_end:
.annotate 'line', 165
    find_lex $P164, "$rejected"
    unless $P164, unless_163
    set $P162, $P164
    goto unless_163_end
  unless_163:
.annotate 'line', 166
    find_lex $P165, "$cand_class"
    store_lex "$accepted", $P165
.annotate 'line', 167
    new $P166, "Integer"
    assign $P166, 1
    store_lex "$something_accepted", $P166
.annotate 'line', 168
    set $I167, .CONTROL_LOOP_LAST
    die 0, $I167
  unless_163_end:
.annotate 'line', 151
    .return ($P162)
.end


.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block140"  :anon :subid("23_1294786929.093") :outer("22_1294786929.093")
.annotate 'line', 155
    new $P142, "Undef"
    .lex "$cur_pos", $P142
    new $P143, "Integer"
    assign $P143, 1
    store_lex "$cur_pos", $P143
.annotate 'line', 156
    new $P160, 'ExceptionHandler'
    set_addr $P160, loop159_handler
    $P160."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P160
  loop159_test:
    find_lex $P144, "$cur_pos"
    set $N145, $P144
    find_lex $P146, "$_"
    set $N147, $P146
    isle $I148, $N145, $N147
    unless $I148, loop159_done
  loop159_redo:
.annotate 'line', 157
    find_lex $P150, "$cur_pos"
    set $I151, $P150
    find_lex $P152, "$_"
    unless_null $P152, vivify_67
    $P152 = root_new ['parrot';'ResizablePMCArray']
  vivify_67:
    set $P153, $P152[$I151]
    unless_null $P153, vivify_68
    new $P153, "Undef"
  vivify_68:
    find_lex $P154, "$cand_class"
    issame $I155, $P153, $P154
    unless $I155, if_149_end
.annotate 'line', 158
    new $P156, "Integer"
    assign $P156, 1
    store_lex "$rejected", $P156
  if_149_end:
.annotate 'line', 160
    find_lex $P157, "$cur_pos"
    add $P158, $P157, 1
    store_lex "$cur_pos", $P158
  loop159_next:
.annotate 'line', 156
    goto loop159_test
  loop159_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P161, exception, 'type'
    eq $P161, .CONTROL_LOOP_NEXT, loop159_next
    eq $P161, .CONTROL_LOOP_REDO, loop159_redo
  loop159_done:
    pop_eh 
.annotate 'line', 153
    .return ($I148)
.end


.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block189"  :anon :subid("24_1294786929.093") :outer("19_1294786929.093")
.annotate 'line', 186
    .const 'Sub' $P201 = "25_1294786929.093" 
    capture_lex $P201
.annotate 'line', 187
    $P191 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new_list", $P191
.annotate 'line', 186
    find_lex $P192, "@new_list"
.annotate 'line', 188
    find_lex $P194, "$i"
    set $I195, $P194
    find_lex $P196, "@merge_list"
    unless_null $P196, vivify_69
    $P196 = root_new ['parrot';'ResizablePMCArray']
  vivify_69:
    set $P197, $P196[$I195]
    unless_null $P197, vivify_70
    new $P197, "Undef"
  vivify_70:
    defined $I198, $P197
    unless $I198, for_undef_71
    iter $P193, $P197
    new $P212, 'ExceptionHandler'
    set_addr $P212, loop211_handler
    $P212."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P212
  loop211_test:
    unless $P193, loop211_done
    shift $P199, $P193
  loop211_redo:
    .const 'Sub' $P201 = "25_1294786929.093" 
    capture_lex $P201
    $P201($P199)
  loop211_next:
    goto loop211_test
  loop211_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P213, exception, 'type'
    eq $P213, .CONTROL_LOOP_NEXT, loop211_next
    eq $P213, .CONTROL_LOOP_REDO, loop211_redo
  loop211_done:
    pop_eh 
  for_undef_71:
.annotate 'line', 193
    find_lex $P214, "@new_list"
    find_lex $P215, "$i"
    set $I216, $P215
    find_lex $P217, "@merge_list"
    unless_null $P217, vivify_72
    $P217 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@merge_list", $P217
  vivify_72:
    set $P217[$I216], $P214
.annotate 'line', 194
    find_lex $P218, "$i"
    add $P219, $P218, 1
    store_lex "$i", $P219
.annotate 'line', 186
    .return ($P219)
.end


.namespace ["NQPClassHOW"]
.sub "_block200"  :anon :subid("25_1294786929.093") :outer("24_1294786929.093")
    .param pmc param_202
.annotate 'line', 188
    .lex "$_", param_202
.annotate 'line', 189
    find_lex $P205, "$_"
    find_lex $P206, "$accepted"
    issame $I207, $P205, $P206
    unless $I207, unless_204
    new $P203, 'Integer'
    set $P203, $I207
    goto unless_204_end
  unless_204:
.annotate 'line', 190
    find_lex $P208, "@new_list"
    find_lex $P209, "$_"
    $P210 = $P208."push"($P209)
.annotate 'line', 189
    set $P203, $P210
  unless_204_end:
.annotate 'line', 188
    .return ($P203)
.end


.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "new"  :subid("26_1294786929.093") :outer("15_1294786929.093")
    .param pmc param_234
    .param pmc param_235 :optional :named("name")
    .param int has_param_235 :opt_flag
.annotate 'line', 58
    new $P233, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P233, control_232
    push_eh $P233
    .lex "self", param_234
    if has_param_235, optparam_73
    new $P236, "Undef"
    set param_235, $P236
  optparam_73:
    .lex "$name", param_235
.annotate 'line', 59
    new $P237, "Undef"
    .lex "$obj", $P237
    find_lex $P238, "self"
    repr_instance_of $P239, $P238
    store_lex "$obj", $P239
.annotate 'line', 60
    find_lex $P240, "$obj"
    find_lex $P241, "$name"
    $P240."BUILD"($P241 :named("name"))
    find_lex $P242, "$obj"
.annotate 'line', 58
    .return ($P242)
  control_232:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P243, exception, "payload"
    .return ($P243)
.end


.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "BUILD"  :subid("27_1294786929.093") :outer("15_1294786929.093")
    .param pmc param_247
    .param pmc param_248 :optional :named("name")
    .param int has_param_248 :opt_flag
.annotate 'line', 64
    new $P246, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P246, control_245
    push_eh $P246
    .lex "self", param_247
    if has_param_248, optparam_74
    new $P249, "Undef"
    set param_248, $P249
  optparam_74:
    .lex "$name", param_248
.annotate 'line', 65
    find_lex $P250, "$name"
    find_lex $P251, "self"
    get_global $P252, "$?CLASS"
    setattribute $P251, $P252, "$!name", $P250
.annotate 'line', 64
    .return ($P250)
  control_245:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P253, exception, "payload"
    .return ($P253)
.end


.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "new_type"  :subid("28_1294786929.093") :outer("15_1294786929.093")
    .param pmc param_257
    .param pmc param_258 :optional :named("name")
    .param int has_param_258 :opt_flag
    .param pmc param_260 :optional :named("repr")
    .param int has_param_260 :opt_flag
.annotate 'line', 70
    new $P256, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P256, control_255
    push_eh $P256
    .lex "self", param_257
    if has_param_258, optparam_75
    new $P259, "String"
    assign $P259, "<anon>"
    set param_258, $P259
  optparam_75:
    .lex "$name", param_258
    if has_param_260, optparam_76
    new $P261, "String"
    assign $P261, "P6opaque"
    set param_260, $P261
  optparam_76:
    .lex "$repr", param_260
.annotate 'line', 71
    new $P262, "Undef"
    .lex "$metaclass", $P262
    find_lex $P263, "self"
    find_lex $P264, "$name"
    $P265 = $P263."new"($P264 :named("name"))
    store_lex "$metaclass", $P265
.annotate 'line', 72
    find_lex $P266, "$metaclass"
    find_lex $P267, "$repr"
    set $S268, $P267
    repr_type_object_for $P269, $P266, $S268
.annotate 'line', 70
    .return ($P269)
  control_255:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P270, exception, "payload"
    .return ($P270)
.end


.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_method"  :subid("29_1294786929.093") :outer("15_1294786929.093")
    .param pmc param_274
    .param pmc param_275
    .param pmc param_276
    .param pmc param_277
.annotate 'line', 75
    new $P273, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P273, control_272
    push_eh $P273
    .lex "self", param_274
    .lex "$obj", param_275
    .lex "$name", param_276
    .lex "$code_obj", param_277
.annotate 'line', 76
    find_lex $P279, "$name"
    find_lex $P280, "self"
    get_global $P281, "$?CLASS"
    getattribute $P282, $P280, $P281, "%!methods"
    unless_null $P282, vivify_77
    $P282 = root_new ['parrot';'Hash']
  vivify_77:
    set $P283, $P282[$P279]
    unless_null $P283, vivify_78
    new $P283, "Undef"
  vivify_78:
    unless $P283, if_278_end
.annotate 'line', 77
    new $P284, "String"
    assign $P284, "This class already has a method named "
    find_lex $P285, "$name"
    concat $P286, $P284, $P285
    die $P286
  if_278_end:
.annotate 'line', 79
    find_lex $P287, "$code_obj"
    find_lex $P288, "$name"
    find_lex $P289, "self"
    get_global $P290, "$?CLASS"
    getattribute $P291, $P289, $P290, "%!methods"
    unless_null $P291, vivify_79
    $P291 = root_new ['parrot';'Hash']
    setattribute $P289, $P290, "%!methods", $P291
  vivify_79:
    set $P291[$P288], $P287
.annotate 'line', 75
    .return ($P287)
  control_272:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P292, exception, "payload"
    .return ($P292)
.end


.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_attribute"  :subid("30_1294786929.093") :outer("15_1294786929.093")
    .param pmc param_296
    .param pmc param_297
    .param pmc param_298
.annotate 'line', 82
    new $P295, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P295, control_294
    push_eh $P295
    .lex "self", param_296
    .lex "$obj", param_297
    .lex "$meta_attr", param_298
.annotate 'line', 83
    new $P299, "Undef"
    .lex "$name", $P299
    find_lex $P300, "$meta_attr"
    $P301 = $P300."name"()
    store_lex "$name", $P301
.annotate 'line', 84
    find_lex $P303, "$name"
    find_lex $P304, "self"
    get_global $P305, "$?CLASS"
    getattribute $P306, $P304, $P305, "%!attributes"
    unless_null $P306, vivify_80
    $P306 = root_new ['parrot';'Hash']
  vivify_80:
    set $P307, $P306[$P303]
    unless_null $P307, vivify_81
    new $P307, "Undef"
  vivify_81:
    unless $P307, if_302_end
.annotate 'line', 85
    new $P308, "String"
    assign $P308, "This class already has an attribute named "
    find_lex $P309, "$name"
    concat $P310, $P308, $P309
    die $P310
  if_302_end:
.annotate 'line', 87
    find_lex $P311, "$meta_attr"
    find_lex $P312, "$name"
    find_lex $P313, "self"
    get_global $P314, "$?CLASS"
    getattribute $P315, $P313, $P314, "%!attributes"
    unless_null $P315, vivify_82
    $P315 = root_new ['parrot';'Hash']
    setattribute $P313, $P314, "%!attributes", $P315
  vivify_82:
    set $P315[$P312], $P311
.annotate 'line', 82
    .return ($P311)
  control_294:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P316, exception, "payload"
    .return ($P316)
.end


.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_parent"  :subid("31_1294786929.093") :outer("15_1294786929.093")
    .param pmc param_320
    .param pmc param_321
    .param pmc param_322
.annotate 'line', 90
    .const 'Sub' $P334 = "32_1294786929.093" 
    capture_lex $P334
    new $P319, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P319, control_318
    push_eh $P319
    .lex "self", param_320
    .lex "$obj", param_321
    .lex "$parent", param_322
.annotate 'line', 91
    find_lex $P324, "self"
    get_global $P325, "$?CLASS"
    getattribute $P326, $P324, $P325, "$!composed"
    unless_null $P326, vivify_83
    new $P326, "Undef"
  vivify_83:
    unless $P326, if_323_end
.annotate 'line', 92
    die "NQPClassHOW does not support adding parents after being composed."
  if_323_end:
.annotate 'line', 94
    find_lex $P328, "self"
    get_global $P329, "$?CLASS"
    getattribute $P330, $P328, $P329, "@!parents"
    unless_null $P330, vivify_84
    $P330 = root_new ['parrot';'ResizablePMCArray']
  vivify_84:
    defined $I331, $P330
    unless $I331, for_undef_85
    iter $P327, $P330
    new $P346, 'ExceptionHandler'
    set_addr $P346, loop345_handler
    $P346."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P346
  loop345_test:
    unless $P327, loop345_done
    shift $P332, $P327
  loop345_redo:
    .const 'Sub' $P334 = "32_1294786929.093" 
    capture_lex $P334
    $P334($P332)
  loop345_next:
    goto loop345_test
  loop345_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P347, exception, 'type'
    eq $P347, .CONTROL_LOOP_NEXT, loop345_next
    eq $P347, .CONTROL_LOOP_REDO, loop345_redo
  loop345_done:
    pop_eh 
  for_undef_85:
.annotate 'line', 99
    find_lex $P348, "$parent"
    find_lex $P349, "self"
    get_global $P350, "$?CLASS"
    getattribute $P351, $P349, $P350, "@!parents"
    unless_null $P351, vivify_86
    $P351 = root_new ['parrot';'ResizablePMCArray']
  vivify_86:
    set $N352, $P351
    set $I353, $N352
    find_lex $P354, "self"
    get_global $P355, "$?CLASS"
    getattribute $P356, $P354, $P355, "@!parents"
    unless_null $P356, vivify_87
    $P356 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P354, $P355, "@!parents", $P356
  vivify_87:
    set $P356[$I353], $P348
.annotate 'line', 90
    .return ($P348)
  control_318:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P357, exception, "payload"
    .return ($P357)
.end


.namespace ["NQPClassHOW"]
.sub "_block333"  :anon :subid("32_1294786929.093") :outer("31_1294786929.093")
    .param pmc param_335
.annotate 'line', 94
    .lex "$_", param_335
.annotate 'line', 95
    find_lex $P338, "$_"
    find_lex $P339, "$parent"
    issame $I340, $P338, $P339
    if $I340, if_337
    new $P336, 'Integer'
    set $P336, $I340
    goto if_337_end
  if_337:
.annotate 'line', 96
    new $P341, "String"
    assign $P341, "Already have "
    find_lex $P342, "$parent"
    concat $P343, $P341, $P342
    concat $P344, $P343, " as a parent class."
    die $P344
  if_337_end:
.annotate 'line', 94
    .return ($P336)
.end


.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "compose"  :subid("33_1294786929.093") :outer("15_1294786929.093")
    .param pmc param_361
    .param pmc param_362
.annotate 'line', 102
    new $P360, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P360, control_359
    push_eh $P360
    .lex "self", param_361
    .lex "$obj", param_362
.annotate 'line', 107
    find_lex $P364, "self"
    get_global $P365, "$?CLASS"
    getattribute $P366, $P364, $P365, "$!composed"
    unless_null $P366, vivify_88
    new $P366, "Undef"
  vivify_88:
    if $P366, unless_363_end
.annotate 'line', 108
    find_lex $P367, "$obj"
    $P368 = "compute_c3_mro"($P367)
    find_lex $P369, "self"
    get_global $P370, "$?CLASS"
    setattribute $P369, $P370, "@!mro", $P368
.annotate 'line', 109
    new $P371, "Integer"
    assign $P371, 1
    find_lex $P372, "self"
    get_global $P373, "$?CLASS"
    setattribute $P372, $P373, "$!composed", $P371
  unless_363_end:
.annotate 'line', 107
    find_lex $P374, "$obj"
.annotate 'line', 102
    .return ($P374)
  control_359:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P375, exception, "payload"
    .return ($P375)
.end


.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "parents"  :subid("34_1294786929.093") :outer("15_1294786929.093")
    .param pmc param_381
    .param pmc param_382
    .param pmc param_383 :named("local")
.annotate 'line', 208
    new $P380, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P380, control_379
    push_eh $P380
    .lex "self", param_381
    .lex "$obj", param_382
    .lex "$local", param_383
    find_lex $P384, "self"
    get_global $P385, "$?CLASS"
    getattribute $P386, $P384, $P385, "@!parents"
    unless_null $P386, vivify_89
    $P386 = root_new ['parrot';'ResizablePMCArray']
  vivify_89:
    .return ($P386)
  control_379:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P387, exception, "payload"
    .return ($P387)
.end


.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "roles"  :subid("35_1294786929.093") :outer("15_1294786929.093")
    .param pmc param_391
    .param pmc param_392
    .param pmc param_393 :named("local")
.annotate 'line', 212
    new $P390, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P390, control_389
    push_eh $P390
    .lex "self", param_391
    .lex "$obj", param_392
    .lex "$local", param_393
    find_lex $P394, "self"
    get_global $P395, "$?CLASS"
    getattribute $P396, $P394, $P395, "@!roles"
    unless_null $P396, vivify_90
    $P396 = root_new ['parrot';'ResizablePMCArray']
  vivify_90:
    .return ($P396)
  control_389:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P397, exception, "payload"
    .return ($P397)
.end


.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "methods"  :subid("36_1294786929.093") :outer("15_1294786929.093")
    .param pmc param_401
    .param pmc param_402
    .param pmc param_403 :named("local")
.annotate 'line', 216
    .const 'Sub' $P413 = "37_1294786929.093" 
    capture_lex $P413
    new $P400, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P400, control_399
    push_eh $P400
    .lex "self", param_401
    .lex "$obj", param_402
    .lex "$local", param_403
.annotate 'line', 217
    $P404 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meths", $P404
.annotate 'line', 216
    find_lex $P405, "@meths"
.annotate 'line', 218
    find_lex $P407, "self"
    get_global $P408, "$?CLASS"
    getattribute $P409, $P407, $P408, "%!methods"
    unless_null $P409, vivify_91
    $P409 = root_new ['parrot';'Hash']
  vivify_91:
    defined $I410, $P409
    unless $I410, for_undef_92
    iter $P406, $P409
    new $P420, 'ExceptionHandler'
    set_addr $P420, loop419_handler
    $P420."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P420
  loop419_test:
    unless $P406, loop419_done
    shift $P411, $P406
  loop419_redo:
    .const 'Sub' $P413 = "37_1294786929.093" 
    capture_lex $P413
    $P413($P411)
  loop419_next:
    goto loop419_test
  loop419_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P421, exception, 'type'
    eq $P421, .CONTROL_LOOP_NEXT, loop419_next
    eq $P421, .CONTROL_LOOP_REDO, loop419_redo
  loop419_done:
    pop_eh 
  for_undef_92:
    find_lex $P422, "@meths"
.annotate 'line', 216
    .return ($P422)
  control_399:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P423, exception, "payload"
    .return ($P423)
.end


.namespace ["NQPClassHOW"]
.sub "_block412"  :anon :subid("37_1294786929.093") :outer("36_1294786929.093")
    .param pmc param_414
.annotate 'line', 218
    .lex "$_", param_414
.annotate 'line', 219
    find_lex $P415, "@meths"
    find_lex $P416, "$_"
    $P417 = $P416."value"()
    $P418 = $P415."push"($P417)
.annotate 'line', 218
    .return ($P418)
.end


.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "method_table"  :subid("38_1294786929.093") :outer("15_1294786929.093")
    .param pmc param_427
    .param pmc param_428
.annotate 'line', 224
    new $P426, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P426, control_425
    push_eh $P426
    .lex "self", param_427
    .lex "$obj", param_428
    find_lex $P429, "self"
    get_global $P430, "$?CLASS"
    getattribute $P431, $P429, $P430, "%!methods"
    unless_null $P431, vivify_93
    $P431 = root_new ['parrot';'Hash']
  vivify_93:
    .return ($P431)
  control_425:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P432, exception, "payload"
    .return ($P432)
.end


.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "name"  :subid("39_1294786929.093") :outer("15_1294786929.093")
    .param pmc param_436
    .param pmc param_437
.annotate 'line', 228
    new $P435, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P435, control_434
    push_eh $P435
    .lex "self", param_436
    .lex "$obj", param_437
    find_lex $P438, "self"
    get_global $P439, "$?CLASS"
    getattribute $P440, $P438, $P439, "$!name"
    unless_null $P440, vivify_94
    new $P440, "Undef"
  vivify_94:
    .return ($P440)
  control_434:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P441, exception, "payload"
    .return ($P441)
.end


.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "attributes"  :subid("40_1294786929.093") :outer("15_1294786929.093")
    .param pmc param_445
    .param pmc param_446
    .param pmc param_447 :named("local")
.annotate 'line', 232
    .const 'Sub' $P457 = "41_1294786929.093" 
    capture_lex $P457
    new $P444, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P444, control_443
    push_eh $P444
    .lex "self", param_445
    .lex "$obj", param_446
    .lex "$local", param_447
.annotate 'line', 233
    $P448 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attrs", $P448
.annotate 'line', 232
    find_lex $P449, "@attrs"
.annotate 'line', 234
    find_lex $P451, "self"
    get_global $P452, "$?CLASS"
    getattribute $P453, $P451, $P452, "%!attributes"
    unless_null $P453, vivify_95
    $P453 = root_new ['parrot';'Hash']
  vivify_95:
    defined $I454, $P453
    unless $I454, for_undef_96
    iter $P450, $P453
    new $P464, 'ExceptionHandler'
    set_addr $P464, loop463_handler
    $P464."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P464
  loop463_test:
    unless $P450, loop463_done
    shift $P455, $P450
  loop463_redo:
    .const 'Sub' $P457 = "41_1294786929.093" 
    capture_lex $P457
    $P457($P455)
  loop463_next:
    goto loop463_test
  loop463_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P465, exception, 'type'
    eq $P465, .CONTROL_LOOP_NEXT, loop463_next
    eq $P465, .CONTROL_LOOP_REDO, loop463_redo
  loop463_done:
    pop_eh 
  for_undef_96:
    find_lex $P466, "@attrs"
.annotate 'line', 232
    .return ($P466)
  control_443:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P467, exception, "payload"
    .return ($P467)
.end


.namespace ["NQPClassHOW"]
.sub "_block456"  :anon :subid("41_1294786929.093") :outer("40_1294786929.093")
    .param pmc param_458
.annotate 'line', 234
    .lex "$_", param_458
.annotate 'line', 235
    find_lex $P459, "@attrs"
    find_lex $P460, "$_"
    $P461 = $P460."value"()
    $P462 = $P459."push"($P461)
.annotate 'line', 234
    .return ($P462)
.end


.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "isa"  :subid("42_1294786929.093") :outer("15_1294786929.093")
    .param pmc param_471
    .param pmc param_472
    .param pmc param_473
.annotate 'line', 244
    new $P470, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P470, control_469
    push_eh $P470
    .lex "self", param_471
    .lex "$obj", param_472
    .lex "$check", param_473
.annotate 'line', 245
    new $P474, "Undef"
    .lex "$check-class", $P474
.annotate 'line', 246
    new $P475, "Undef"
    .lex "$i", $P475
.annotate 'line', 245
    find_lex $P476, "$check"
    get_what $P477, $P476
    store_lex "$check-class", $P477
.annotate 'line', 246
    find_lex $P478, "self"
    get_global $P479, "$?CLASS"
    getattribute $P480, $P478, $P479, "@!mro"
    unless_null $P480, vivify_97
    $P480 = root_new ['parrot';'ResizablePMCArray']
  vivify_97:
    set $N481, $P480
    new $P482, 'Float'
    set $P482, $N481
    store_lex "$i", $P482
.annotate 'line', 247
    new $P500, 'ExceptionHandler'
    set_addr $P500, loop499_handler
    $P500."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P500
  loop499_test:
    find_lex $P483, "$i"
    set $N484, $P483
    isgt $I485, $N484, 0.0
    unless $I485, loop499_done
  loop499_redo:
.annotate 'line', 248
    find_lex $P486, "$i"
    sub $P487, $P486, 1
    store_lex "$i", $P487
.annotate 'line', 249
    find_lex $P489, "$i"
    set $I490, $P489
    find_lex $P491, "self"
    get_global $P492, "$?CLASS"
    getattribute $P493, $P491, $P492, "@!mro"
    unless_null $P493, vivify_98
    $P493 = root_new ['parrot';'ResizablePMCArray']
  vivify_98:
    set $P494, $P493[$I490]
    unless_null $P494, vivify_99
    new $P494, "Undef"
  vivify_99:
    find_lex $P495, "$check-class"
    issame $I496, $P494, $P495
    unless $I496, if_488_end
.annotate 'line', 250
    new $P497, "Exception"
    set $P497['type'], .CONTROL_RETURN
    new $P498, "Integer"
    assign $P498, 1
    setattribute $P497, 'payload', $P498
    throw $P497
  if_488_end:
  loop499_next:
.annotate 'line', 247
    goto loop499_test
  loop499_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P501, exception, 'type'
    eq $P501, .CONTROL_LOOP_NEXT, loop499_next
    eq $P501, .CONTROL_LOOP_REDO, loop499_redo
  loop499_done:
    pop_eh 
.annotate 'line', 253
    new $P502, "Exception"
    set $P502['type'], .CONTROL_RETURN
    new $P503, "Integer"
    assign $P503, 0
    setattribute $P502, 'payload', $P503
    throw $P502
.annotate 'line', 244
    .return ()
  control_469:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P504, exception, "payload"
    .return ($P504)
.end


.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "does"  :subid("43_1294786929.093") :outer("15_1294786929.093")
    .param pmc param_508
    .param pmc param_509
    .param pmc param_510
.annotate 'line', 256
    new $P507, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P507, control_506
    push_eh $P507
    .lex "self", param_508
    .lex "$obj", param_509
    .lex "$check", param_510
.annotate 'line', 257
    new $P511, "Undef"
    .lex "$i", $P511
    find_lex $P512, "self"
    get_global $P513, "$?CLASS"
    getattribute $P514, $P512, $P513, "@!done"
    unless_null $P514, vivify_100
    $P514 = root_new ['parrot';'ResizablePMCArray']
  vivify_100:
    set $N515, $P514
    new $P516, 'Float'
    set $P516, $N515
    store_lex "$i", $P516
.annotate 'line', 258
    new $P534, 'ExceptionHandler'
    set_addr $P534, loop533_handler
    $P534."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P534
  loop533_test:
    find_lex $P517, "$i"
    set $N518, $P517
    isgt $I519, $N518, 0.0
    unless $I519, loop533_done
  loop533_redo:
.annotate 'line', 259
    find_lex $P520, "$i"
    sub $P521, $P520, 1
    store_lex "$i", $P521
.annotate 'line', 260
    find_lex $P523, "$i"
    set $I524, $P523
    find_lex $P525, "self"
    get_global $P526, "$?CLASS"
    getattribute $P527, $P525, $P526, "@!done"
    unless_null $P527, vivify_101
    $P527 = root_new ['parrot';'ResizablePMCArray']
  vivify_101:
    set $P528, $P527[$I524]
    unless_null $P528, vivify_102
    new $P528, "Undef"
  vivify_102:
    find_lex $P529, "$check"
    issame $I530, $P528, $P529
    unless $I530, if_522_end
.annotate 'line', 261
    new $P531, "Exception"
    set $P531['type'], .CONTROL_RETURN
    new $P532, "Integer"
    assign $P532, 1
    setattribute $P531, 'payload', $P532
    throw $P531
  if_522_end:
  loop533_next:
.annotate 'line', 258
    goto loop533_test
  loop533_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P535, exception, 'type'
    eq $P535, .CONTROL_LOOP_NEXT, loop533_next
    eq $P535, .CONTROL_LOOP_REDO, loop533_redo
  loop533_done:
    pop_eh 
.annotate 'line', 264
    new $P536, "Exception"
    set $P536['type'], .CONTROL_RETURN
    new $P537, "Integer"
    assign $P537, 0
    setattribute $P536, 'payload', $P537
    throw $P536
.annotate 'line', 256
    .return ()
  control_506:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P538, exception, "payload"
    .return ($P538)
.end


.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "can"  :subid("44_1294786929.093") :outer("15_1294786929.093")
    .param pmc param_542
    .param pmc param_543
    .param pmc param_544
.annotate 'line', 267
    .const 'Sub' $P552 = "45_1294786929.093" 
    capture_lex $P552
    new $P541, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P541, control_540
    push_eh $P541
    .lex "self", param_542
    .lex "$obj", param_543
    .lex "$name", param_544
.annotate 'line', 268
    find_lex $P546, "self"
    get_global $P547, "$?CLASS"
    getattribute $P548, $P546, $P547, "@!mro"
    unless_null $P548, vivify_103
    $P548 = root_new ['parrot';'ResizablePMCArray']
  vivify_103:
    defined $I549, $P548
    unless $I549, for_undef_104
    iter $P545, $P548
    new $P570, 'ExceptionHandler'
    set_addr $P570, loop569_handler
    $P570."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P570
  loop569_test:
    unless $P545, loop569_done
    shift $P550, $P545
  loop569_redo:
    .const 'Sub' $P552 = "45_1294786929.093" 
    capture_lex $P552
    $P552($P550)
  loop569_next:
    goto loop569_test
  loop569_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P571, exception, 'type'
    eq $P571, .CONTROL_LOOP_NEXT, loop569_next
    eq $P571, .CONTROL_LOOP_REDO, loop569_redo
  loop569_done:
    pop_eh 
  for_undef_104:
.annotate 'line', 275
    new $P572, "Exception"
    set $P572['type'], .CONTROL_RETURN
    new $P573, "Integer"
    assign $P573, 0
    setattribute $P572, 'payload', $P573
    throw $P572
.annotate 'line', 267
    .return ()
  control_540:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P574, exception, "payload"
    .return ($P574)
.end


.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block551"  :anon :subid("45_1294786929.093") :outer("44_1294786929.093")
    .param pmc param_555
.annotate 'line', 269
    $P553 = root_new ['parrot';'Hash']
    .lex "%meths", $P553
.annotate 'line', 270
    new $P554, "Undef"
    .lex "$can", $P554
    .lex "$_", param_555
.annotate 'line', 269
    find_lex $P556, "$_"
    get_how $P557, $P556
    find_lex $P558, "$obj"
    $P559 = $P557."method_table"($P558)
    store_lex "%meths", $P559
.annotate 'line', 270
    find_lex $P560, "$name"
    find_lex $P561, "%meths"
    unless_null $P561, vivify_105
    $P561 = root_new ['parrot';'Hash']
  vivify_105:
    set $P562, $P561[$P560]
    unless_null $P562, vivify_106
    new $P562, "Undef"
  vivify_106:
    store_lex "$can", $P562
.annotate 'line', 271
    find_lex $P565, "$can"
    defined $I566, $P565
    if $I566, if_564
    new $P563, 'Integer'
    set $P563, $I566
    goto if_564_end
  if_564:
.annotate 'line', 272
    new $P567, "Exception"
    set $P567['type'], .CONTROL_RETURN
    find_lex $P568, "$can"
    setattribute $P567, 'payload', $P568
    throw $P567
  if_564_end:
.annotate 'line', 268
    .return ($P563)
.end


.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "find_method"  :subid("46_1294786929.093") :outer("15_1294786929.093")
    .param pmc param_578
    .param pmc param_579
    .param pmc param_580
.annotate 'line', 281
    .const 'Sub' $P588 = "47_1294786929.093" 
    capture_lex $P588
    new $P577, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P577, control_576
    push_eh $P577
    .lex "self", param_578
    .lex "$obj", param_579
    .lex "$name", param_580
.annotate 'line', 282
    find_lex $P582, "self"
    get_global $P583, "$?CLASS"
    getattribute $P584, $P582, $P583, "@!mro"
    unless_null $P584, vivify_107
    $P584 = root_new ['parrot';'ResizablePMCArray']
  vivify_107:
    defined $I585, $P584
    unless $I585, for_undef_108
    iter $P581, $P584
    new $P606, 'ExceptionHandler'
    set_addr $P606, loop605_handler
    $P606."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P606
  loop605_test:
    unless $P581, loop605_done
    shift $P586, $P581
  loop605_redo:
    .const 'Sub' $P588 = "47_1294786929.093" 
    capture_lex $P588
    $P588($P586)
  loop605_next:
    goto loop605_test
  loop605_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P607, exception, 'type'
    eq $P607, .CONTROL_LOOP_NEXT, loop605_next
    eq $P607, .CONTROL_LOOP_REDO, loop605_redo
  loop605_done:
    pop_eh 
  for_undef_108:
.annotate 'line', 289
    null $P608
.annotate 'line', 281
    .return ($P608)
  control_576:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P609, exception, "payload"
    .return ($P609)
.end


.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block587"  :anon :subid("47_1294786929.093") :outer("46_1294786929.093")
    .param pmc param_591
.annotate 'line', 283
    $P589 = root_new ['parrot';'Hash']
    .lex "%meths", $P589
.annotate 'line', 284
    new $P590, "Undef"
    .lex "$found", $P590
    .lex "$_", param_591
.annotate 'line', 283
    find_lex $P592, "$_"
    get_how $P593, $P592
    find_lex $P594, "$obj"
    $P595 = $P593."method_table"($P594)
    store_lex "%meths", $P595
.annotate 'line', 284
    find_lex $P596, "$name"
    find_lex $P597, "%meths"
    unless_null $P597, vivify_109
    $P597 = root_new ['parrot';'Hash']
  vivify_109:
    set $P598, $P597[$P596]
    unless_null $P598, vivify_110
    new $P598, "Undef"
  vivify_110:
    store_lex "$found", $P598
.annotate 'line', 285
    find_lex $P601, "$found"
    defined $I602, $P601
    if $I602, if_600
    new $P599, 'Integer'
    set $P599, $I602
    goto if_600_end
  if_600:
.annotate 'line', 286
    new $P603, "Exception"
    set $P603['type'], .CONTROL_RETURN
    find_lex $P604, "$found"
    setattribute $P603, 'payload', $P604
    throw $P603
  if_600_end:
.annotate 'line', 282
    .return ($P599)
.end


.namespace ["NQPAttribute"]
.sub "_block681"  :subid("49_1294786929.093") :outer("10_1294786929.093")
.annotate 'line', 294
    .const 'Sub' $P716 = "53_1294786929.093" 
    capture_lex $P716
    .const 'Sub' $P706 = "52_1294786929.093" 
    capture_lex $P706
    .const 'Sub' $P696 = "51_1294786929.093" 
    capture_lex $P696
    .const 'Sub' $P684 = "50_1294786929.093" 
    capture_lex $P684
    get_global $P683, "$?CLASS"
.annotate 'line', 307
    .const 'Sub' $P706 = "52_1294786929.093" 
    newclosure $P714, $P706
.annotate 'line', 294
    .return ($P714)
.end


.namespace ["NQPAttribute"]
.sub "" :load :init :subid("post111") :outer("49_1294786929.093")
.annotate 'line', 294
    get_hll_global $P682, ["NQPAttribute"], "_block681" 
    .local pmc block
    set block, $P682
    .const 'Sub' $P716 = "53_1294786929.093" 
    capture_lex $P716
    $P716()
.end


.namespace ["NQPAttribute"]
.sub "_block715"  :anon :subid("53_1294786929.093") :outer("49_1294786929.093")
.annotate 'line', 294
    get_hll_global $P717, "KnowHOW"
    $P718 = $P717."new_type"("NQPAttribute" :named("name"))
    .local pmc type_obj
    set type_obj, $P718
    set_hll_global "NQPAttribute", type_obj
    set_global "$?CLASS", type_obj
    get_how $P719, type_obj
    get_hll_global $P720, "KnowHOWAttribute"
    $P721 = $P720."new"("$!name" :named("name"))
    $P719."add_attribute"(type_obj, $P721)
    get_how $P722, type_obj
    .const 'Sub' $P723 = "50_1294786929.093" 
    $P722."add_method"(type_obj, "new", $P723)
    get_how $P724, type_obj
    .const 'Sub' $P725 = "51_1294786929.093" 
    $P724."add_method"(type_obj, "BUILD", $P725)
    get_how $P726, type_obj
    .const 'Sub' $P727 = "52_1294786929.093" 
    $P726."add_method"(type_obj, "name", $P727)
    get_how $P728, type_obj
    $P729 = $P728."compose"(type_obj)
    .return ($P729)
.end


.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "new"  :subid("50_1294786929.093") :outer("49_1294786929.093")
    .param pmc param_687
    .param pmc param_688 :named("name")
.annotate 'line', 297
    new $P686, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P686, control_685
    push_eh $P686
    .lex "self", param_687
    .lex "$name", param_688
.annotate 'line', 298
    new $P689, "Undef"
    .lex "$attr", $P689
    find_lex $P690, "self"
    repr_instance_of $P691, $P690
    store_lex "$attr", $P691
.annotate 'line', 299
    find_lex $P692, "$attr"
    find_lex $P693, "$name"
    $P692."BUILD"($P693 :named("name"))
    find_lex $P694, "$attr"
.annotate 'line', 297
    .return ($P694)
  control_685:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P695, exception, "payload"
    .return ($P695)
.end


.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "BUILD"  :subid("51_1294786929.093") :outer("49_1294786929.093")
    .param pmc param_699
    .param pmc param_700 :optional :named("name")
    .param int has_param_700 :opt_flag
.annotate 'line', 303
    new $P698, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P698, control_697
    push_eh $P698
    .lex "self", param_699
    if has_param_700, optparam_112
    new $P701, "Undef"
    set param_700, $P701
  optparam_112:
    .lex "$name", param_700
.annotate 'line', 304
    find_lex $P702, "$name"
    find_lex $P703, "self"
    get_global $P704, "$?CLASS"
    setattribute $P703, $P704, "$!name", $P702
.annotate 'line', 303
    .return ($P702)
  control_697:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P705, exception, "payload"
    .return ($P705)
.end


.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "name"  :subid("52_1294786929.093") :outer("49_1294786929.093")
    .param pmc param_709
.annotate 'line', 307
    new $P708, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P708, control_707
    push_eh $P708
    .lex "self", param_709
    find_lex $P710, "self"
    get_global $P711, "$?CLASS"
    getattribute $P712, $P710, $P711, "$!name"
    unless_null $P712, vivify_113
    new $P712, "Undef"
  vivify_113:
    .return ($P712)
  control_707:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P713, exception, "payload"
    .return ($P713)
.end


.namespace ["NQPMu"]
.sub "_block730"  :subid("54_1294786929.093") :outer("10_1294786929.093")
.annotate 'line', 313
    .const 'Sub' $P749 = "57_1294786929.093" 
    capture_lex $P749
    .const 'Sub' $P740 = "56_1294786929.093" 
    capture_lex $P740
    .const 'Sub' $P733 = "55_1294786929.093" 
    capture_lex $P733
    get_global $P732, "$?CLASS"
.annotate 'line', 317
    .const 'Sub' $P740 = "56_1294786929.093" 
    newclosure $P747, $P740
.annotate 'line', 313
    .return ($P747)
.end


.namespace ["NQPMu"]
.sub "" :load :init :subid("post114") :outer("54_1294786929.093")
.annotate 'line', 313
    get_hll_global $P731, ["NQPMu"], "_block730" 
    .local pmc block
    set block, $P731
    .const 'Sub' $P749 = "57_1294786929.093" 
    capture_lex $P749
    $P749()
.end


.namespace ["NQPMu"]
.sub "_block748"  :anon :subid("57_1294786929.093") :outer("54_1294786929.093")
.annotate 'line', 313
    get_hll_global $P750, "NQPClassHOW"
    $P751 = $P750."new_type"("NQPMu" :named("name"))
    .local pmc type_obj
    set type_obj, $P751
    set_hll_global "NQPMu", type_obj
    set_global "$?CLASS", type_obj
    get_how $P752, type_obj
    .const 'Sub' $P753 = "55_1294786929.093" 
    $P752."add_method"(type_obj, "CREATE", $P753)
    get_how $P754, type_obj
    .const 'Sub' $P755 = "56_1294786929.093" 
    $P754."add_method"(type_obj, "new", $P755)
    get_how $P756, type_obj
    $P757 = $P756."compose"(type_obj)
    .return ($P757)
.end


.namespace ["NQPMu"]
.include "except_types.pasm"
.sub "CREATE"  :subid("55_1294786929.093") :outer("54_1294786929.093")
    .param pmc param_736
.annotate 'line', 314
    new $P735, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P735, control_734
    push_eh $P735
    .lex "self", param_736
.annotate 'line', 315
    find_lex $P737, "self"
    repr_instance_of $P738, $P737
.annotate 'line', 314
    .return ($P738)
  control_734:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P739, exception, "payload"
    .return ($P739)
.end


.namespace ["NQPMu"]
.include "except_types.pasm"
.sub "new"  :subid("56_1294786929.093") :outer("54_1294786929.093")
    .param pmc param_743
.annotate 'line', 317
    new $P742, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P742, control_741
    push_eh $P742
    .lex "self", param_743
.annotate 'line', 318
    find_lex $P744, "self"
    $P745 = $P744."CREATE"()
.annotate 'line', 317
    .return ($P745)
  control_741:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P746, exception, "payload"
    .return ($P746)
.end


.namespace []
.sub "_block759" :load :anon :subid("58_1294786929.093")
.annotate 'line', 1
    .const 'Sub' $P761 = "10_1294786929.093" 
    $P762 = $P761()
    .return ($P762)
.end


.sub '' :anon :load :init
    load_bytecode 'P6Regex.pbc'
.end

### .include 'gen/nqp-grammar.pir'

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1294786939.75")
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
    .const 'Sub' $P1526 = "385_1294786939.75" 
    .return ($P1526)
.end


.namespace []
.sub "" :load :init :subid("post386") :outer("10_1294786939.75")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1294786939.75" 
    .local pmc block
    set block, $P12
    $P1529 = get_root_global ["parrot"], "P6metaclass"
    $P1529."new_class"("NQP::Grammar", "HLL::Grammar" :named("parent"))
.end


.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace ["NQP";"Grammar"]
.sub "_block13"  :subid("11_1294786939.75") :outer("10_1294786939.75")
.annotate 'line', 4
    get_hll_global $P1441, ["NQP";"Regex"], "_block1440" 
    capture_lex $P1441
    .const 'Sub' $P1427 = "362_1294786939.75" 
    capture_lex $P1427
    .const 'Sub' $P1421 = "360_1294786939.75" 
    capture_lex $P1421
    .const 'Sub' $P1415 = "358_1294786939.75" 
    capture_lex $P1415
    .const 'Sub' $P1409 = "356_1294786939.75" 
    capture_lex $P1409
    .const 'Sub' $P1403 = "354_1294786939.75" 
    capture_lex $P1403
    .const 'Sub' $P1397 = "352_1294786939.75" 
    capture_lex $P1397
    .const 'Sub' $P1390 = "350_1294786939.75" 
    capture_lex $P1390
    .const 'Sub' $P1383 = "348_1294786939.75" 
    capture_lex $P1383
    .const 'Sub' $P1376 = "346_1294786939.75" 
    capture_lex $P1376
    .const 'Sub' $P1369 = "344_1294786939.75" 
    capture_lex $P1369
    .const 'Sub' $P1363 = "342_1294786939.75" 
    capture_lex $P1363
    .const 'Sub' $P1356 = "340_1294786939.75" 
    capture_lex $P1356
    .const 'Sub' $P1349 = "338_1294786939.75" 
    capture_lex $P1349
    .const 'Sub' $P1342 = "336_1294786939.75" 
    capture_lex $P1342
    .const 'Sub' $P1335 = "334_1294786939.75" 
    capture_lex $P1335
    .const 'Sub' $P1328 = "332_1294786939.75" 
    capture_lex $P1328
    .const 'Sub' $P1321 = "330_1294786939.75" 
    capture_lex $P1321
    .const 'Sub' $P1314 = "328_1294786939.75" 
    capture_lex $P1314
    .const 'Sub' $P1307 = "326_1294786939.75" 
    capture_lex $P1307
    .const 'Sub' $P1300 = "324_1294786939.75" 
    capture_lex $P1300
    .const 'Sub' $P1293 = "322_1294786939.75" 
    capture_lex $P1293
    .const 'Sub' $P1286 = "320_1294786939.75" 
    capture_lex $P1286
    .const 'Sub' $P1279 = "318_1294786939.75" 
    capture_lex $P1279
    .const 'Sub' $P1272 = "316_1294786939.75" 
    capture_lex $P1272
    .const 'Sub' $P1265 = "314_1294786939.75" 
    capture_lex $P1265
    .const 'Sub' $P1258 = "312_1294786939.75" 
    capture_lex $P1258
    .const 'Sub' $P1251 = "310_1294786939.75" 
    capture_lex $P1251
    .const 'Sub' $P1244 = "308_1294786939.75" 
    capture_lex $P1244
    .const 'Sub' $P1237 = "306_1294786939.75" 
    capture_lex $P1237
    .const 'Sub' $P1230 = "304_1294786939.75" 
    capture_lex $P1230
    .const 'Sub' $P1223 = "302_1294786939.75" 
    capture_lex $P1223
    .const 'Sub' $P1216 = "300_1294786939.75" 
    capture_lex $P1216
    .const 'Sub' $P1209 = "298_1294786939.75" 
    capture_lex $P1209
    .const 'Sub' $P1202 = "296_1294786939.75" 
    capture_lex $P1202
    .const 'Sub' $P1195 = "294_1294786939.75" 
    capture_lex $P1195
    .const 'Sub' $P1188 = "292_1294786939.75" 
    capture_lex $P1188
    .const 'Sub' $P1181 = "290_1294786939.75" 
    capture_lex $P1181
    .const 'Sub' $P1174 = "288_1294786939.75" 
    capture_lex $P1174
    .const 'Sub' $P1167 = "286_1294786939.75" 
    capture_lex $P1167
    .const 'Sub' $P1160 = "284_1294786939.75" 
    capture_lex $P1160
    .const 'Sub' $P1154 = "282_1294786939.75" 
    capture_lex $P1154
    .const 'Sub' $P1147 = "280_1294786939.75" 
    capture_lex $P1147
    .const 'Sub' $P1140 = "278_1294786939.75" 
    capture_lex $P1140
    .const 'Sub' $P1133 = "276_1294786939.75" 
    capture_lex $P1133
    .const 'Sub' $P1126 = "274_1294786939.75" 
    capture_lex $P1126
    .const 'Sub' $P1119 = "272_1294786939.75" 
    capture_lex $P1119
    .const 'Sub' $P1112 = "270_1294786939.75" 
    capture_lex $P1112
    .const 'Sub' $P1105 = "268_1294786939.75" 
    capture_lex $P1105
    .const 'Sub' $P1099 = "266_1294786939.75" 
    capture_lex $P1099
    .const 'Sub' $P1093 = "264_1294786939.75" 
    capture_lex $P1093
    .const 'Sub' $P1088 = "262_1294786939.75" 
    capture_lex $P1088
    .const 'Sub' $P1082 = "260_1294786939.75" 
    capture_lex $P1082
    .const 'Sub' $P1076 = "258_1294786939.75" 
    capture_lex $P1076
    .const 'Sub' $P1071 = "256_1294786939.75" 
    capture_lex $P1071
    .const 'Sub' $P1066 = "254_1294786939.75" 
    capture_lex $P1066
    .const 'Sub' $P1058 = "252_1294786939.75" 
    capture_lex $P1058
    .const 'Sub' $P1049 = "250_1294786939.75" 
    capture_lex $P1049
    .const 'Sub' $P1044 = "248_1294786939.75" 
    capture_lex $P1044
    .const 'Sub' $P1039 = "246_1294786939.75" 
    capture_lex $P1039
    .const 'Sub' $P1034 = "244_1294786939.75" 
    capture_lex $P1034
    .const 'Sub' $P1026 = "242_1294786939.75" 
    capture_lex $P1026
    .const 'Sub' $P1018 = "240_1294786939.75" 
    capture_lex $P1018
    .const 'Sub' $P1013 = "238_1294786939.75" 
    capture_lex $P1013
    .const 'Sub' $P1008 = "236_1294786939.75" 
    capture_lex $P1008
    .const 'Sub' $P1003 = "234_1294786939.75" 
    capture_lex $P1003
    .const 'Sub' $P997 = "232_1294786939.75" 
    capture_lex $P997
    .const 'Sub' $P991 = "230_1294786939.75" 
    capture_lex $P991
    .const 'Sub' $P985 = "228_1294786939.75" 
    capture_lex $P985
    .const 'Sub' $P979 = "226_1294786939.75" 
    capture_lex $P979
    .const 'Sub' $P973 = "224_1294786939.75" 
    capture_lex $P973
    .const 'Sub' $P968 = "222_1294786939.75" 
    capture_lex $P968
    .const 'Sub' $P963 = "220_1294786939.75" 
    capture_lex $P963
    .const 'Sub' $P951 = "216_1294786939.75" 
    capture_lex $P951
    .const 'Sub' $P943 = "214_1294786939.75" 
    capture_lex $P943
    .const 'Sub' $P937 = "212_1294786939.75" 
    capture_lex $P937
    .const 'Sub' $P930 = "210_1294786939.75" 
    capture_lex $P930
    .const 'Sub' $P924 = "208_1294786939.75" 
    capture_lex $P924
    .const 'Sub' $P916 = "206_1294786939.75" 
    capture_lex $P916
    .const 'Sub' $P908 = "204_1294786939.75" 
    capture_lex $P908
    .const 'Sub' $P902 = "202_1294786939.75" 
    capture_lex $P902
    .const 'Sub' $P896 = "200_1294786939.75" 
    capture_lex $P896
    .const 'Sub' $P882 = "196_1294786939.75" 
    capture_lex $P882
    .const 'Sub' $P845 = "194_1294786939.75" 
    capture_lex $P845
    .const 'Sub' $P834 = "192_1294786939.75" 
    capture_lex $P834
    .const 'Sub' $P822 = "188_1294786939.75" 
    capture_lex $P822
    .const 'Sub' $P813 = "186_1294786939.75" 
    capture_lex $P813
    .const 'Sub' $P807 = "184_1294786939.75" 
    capture_lex $P807
    .const 'Sub' $P797 = "182_1294786939.75" 
    capture_lex $P797
    .const 'Sub' $P784 = "180_1294786939.75" 
    capture_lex $P784
    .const 'Sub' $P777 = "178_1294786939.75" 
    capture_lex $P777
    .const 'Sub' $P769 = "176_1294786939.75" 
    capture_lex $P769
    .const 'Sub' $P759 = "174_1294786939.75" 
    capture_lex $P759
    .const 'Sub' $P732 = "170_1294786939.75" 
    capture_lex $P732
    .const 'Sub' $P706 = "168_1294786939.75" 
    capture_lex $P706
    .const 'Sub' $P699 = "166_1294786939.75" 
    capture_lex $P699
    .const 'Sub' $P692 = "164_1294786939.75" 
    capture_lex $P692
    .const 'Sub' $P682 = "160_1294786939.75" 
    capture_lex $P682
    .const 'Sub' $P674 = "158_1294786939.75" 
    capture_lex $P674
    .const 'Sub' $P668 = "156_1294786939.75" 
    capture_lex $P668
    .const 'Sub' $P655 = "154_1294786939.75" 
    capture_lex $P655
    .const 'Sub' $P648 = "152_1294786939.75" 
    capture_lex $P648
    .const 'Sub' $P641 = "150_1294786939.75" 
    capture_lex $P641
    .const 'Sub' $P634 = "148_1294786939.75" 
    capture_lex $P634
    .const 'Sub' $P600 = "144_1294786939.75" 
    capture_lex $P600
    .const 'Sub' $P588 = "142_1294786939.75" 
    capture_lex $P588
    .const 'Sub' $P579 = "140_1294786939.75" 
    capture_lex $P579
    .const 'Sub' $P567 = "138_1294786939.75" 
    capture_lex $P567
    .const 'Sub' $P558 = "136_1294786939.75" 
    capture_lex $P558
    .const 'Sub' $P546 = "134_1294786939.75" 
    capture_lex $P546
    .const 'Sub' $P539 = "132_1294786939.75" 
    capture_lex $P539
    .const 'Sub' $P530 = "128_1294786939.75" 
    capture_lex $P530
    .const 'Sub' $P525 = "126_1294786939.75" 
    capture_lex $P525
    .const 'Sub' $P513 = "124_1294786939.75" 
    capture_lex $P513
    .const 'Sub' $P501 = "122_1294786939.75" 
    capture_lex $P501
    .const 'Sub' $P494 = "120_1294786939.75" 
    capture_lex $P494
    .const 'Sub' $P489 = "118_1294786939.75" 
    capture_lex $P489
    .const 'Sub' $P483 = "116_1294786939.75" 
    capture_lex $P483
    .const 'Sub' $P477 = "114_1294786939.75" 
    capture_lex $P477
    .const 'Sub' $P467 = "111_1294786939.75" 
    capture_lex $P467
    .const 'Sub' $P461 = "109_1294786939.75" 
    capture_lex $P461
    .const 'Sub' $P455 = "107_1294786939.75" 
    capture_lex $P455
    .const 'Sub' $P449 = "105_1294786939.75" 
    capture_lex $P449
    .const 'Sub' $P443 = "103_1294786939.75" 
    capture_lex $P443
    .const 'Sub' $P437 = "101_1294786939.75" 
    capture_lex $P437
    .const 'Sub' $P431 = "99_1294786939.75" 
    capture_lex $P431
    .const 'Sub' $P422 = "97_1294786939.75" 
    capture_lex $P422
    .const 'Sub' $P413 = "95_1294786939.75" 
    capture_lex $P413
    .const 'Sub' $P404 = "93_1294786939.75" 
    capture_lex $P404
    .const 'Sub' $P391 = "89_1294786939.75" 
    capture_lex $P391
    .const 'Sub' $P382 = "87_1294786939.75" 
    capture_lex $P382
    .const 'Sub' $P372 = "83_1294786939.75" 
    capture_lex $P372
    .const 'Sub' $P365 = "81_1294786939.75" 
    capture_lex $P365
    .const 'Sub' $P358 = "79_1294786939.75" 
    capture_lex $P358
    .const 'Sub' $P346 = "75_1294786939.75" 
    capture_lex $P346
    .const 'Sub' $P338 = "73_1294786939.75" 
    capture_lex $P338
    .const 'Sub' $P330 = "71_1294786939.75" 
    capture_lex $P330
    .const 'Sub' $P310 = "69_1294786939.75" 
    capture_lex $P310
    .const 'Sub' $P301 = "67_1294786939.75" 
    capture_lex $P301
    .const 'Sub' $P283 = "64_1294786939.75" 
    capture_lex $P283
    .const 'Sub' $P265 = "62_1294786939.75" 
    capture_lex $P265
    .const 'Sub' $P256 = "58_1294786939.75" 
    capture_lex $P256
    .const 'Sub' $P251 = "56_1294786939.75" 
    capture_lex $P251
    .const 'Sub' $P242 = "52_1294786939.75" 
    capture_lex $P242
    .const 'Sub' $P237 = "50_1294786939.75" 
    capture_lex $P237
    .const 'Sub' $P232 = "48_1294786939.75" 
    capture_lex $P232
    .const 'Sub' $P223 = "46_1294786939.75" 
    capture_lex $P223
    .const 'Sub' $P216 = "44_1294786939.75" 
    capture_lex $P216
    .const 'Sub' $P210 = "42_1294786939.75" 
    capture_lex $P210
    .const 'Sub' $P202 = "40_1294786939.75" 
    capture_lex $P202
    .const 'Sub' $P196 = "38_1294786939.75" 
    capture_lex $P196
    .const 'Sub' $P190 = "36_1294786939.75" 
    capture_lex $P190
    .const 'Sub' $P175 = "33_1294786939.75" 
    capture_lex $P175
    .const 'Sub' $P161 = "31_1294786939.75" 
    capture_lex $P161
    .const 'Sub' $P154 = "29_1294786939.75" 
    capture_lex $P154
    .const 'Sub' $P115 = "26_1294786939.75" 
    capture_lex $P115
    .const 'Sub' $P100 = "23_1294786939.75" 
    capture_lex $P100
    .const 'Sub' $P89 = "21_1294786939.75" 
    capture_lex $P89
    .const 'Sub' $P77 = "19_1294786939.75" 
    capture_lex $P77
    .const 'Sub' $P69 = "17_1294786939.75" 
    capture_lex $P69
    .const 'Sub' $P62 = "15_1294786939.75" 
    capture_lex $P62
    .const 'Sub' $P55 = "13_1294786939.75" 
    capture_lex $P55
    .const 'Sub' $P15 = "12_1294786939.75" 
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
    .const 'Sub' $P1505 = "384_1294786939.75" 
    .return ($P1505)
.end


.namespace ["NQP";"Grammar"]
.sub "" :load :init :subid("post387") :outer("11_1294786939.75")
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
.sub "TOP"  :subid("12_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "identifier"  :subid("13_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__identifier"  :subid("14_1294786939.75") :method
.annotate 'line', 4
    $P58 = self."!PREFIX__!subrule"("ident", "")
    new $P59, "ResizablePMCArray"
    push $P59, $P58
    .return ($P59)
.end


.namespace ["NQP";"Grammar"]
.sub "name"  :subid("15_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__name"  :subid("16_1294786939.75") :method
.annotate 'line', 4
    new $P65, "ResizablePMCArray"
    push $P65, ""
    .return ($P65)
.end


.namespace ["NQP";"Grammar"]
.sub "deflongname"  :subid("17_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__deflongname"  :subid("18_1294786939.75") :method
.annotate 'line', 4
    $P72 = self."!PREFIX__!subrule"("identifier", "")
    new $P73, "ResizablePMCArray"
    push $P73, $P72
    .return ($P73)
.end


.namespace ["NQP";"Grammar"]
.sub "ENDSTMT"  :subid("19_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__ENDSTMT"  :subid("20_1294786939.75") :method
.annotate 'line', 4
    new $P80, "ResizablePMCArray"
    push $P80, ""
    .return ($P80)
.end


.namespace ["NQP";"Grammar"]
.sub "ws"  :subid("21_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__ws"  :subid("22_1294786939.75") :method
.annotate 'line', 4
    new $P92, "ResizablePMCArray"
    push $P92, ""
    push $P92, ""
    .return ($P92)
.end


.namespace ["NQP";"Grammar"]
.sub "unv"  :subid("23_1294786939.75") :method :outer("11_1294786939.75")
.annotate 'line', 4
    .const 'Sub' $P108 = "25_1294786939.75" 
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
    .const 'Sub' $P108 = "25_1294786939.75" 
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
.sub "!PREFIX__unv"  :subid("24_1294786939.75") :method
.annotate 'line', 4
    new $P103, "ResizablePMCArray"
    push $P103, ""
    push $P103, ""
    push $P103, ""
    .return ($P103)
.end


.namespace ["NQP";"Grammar"]
.sub "_block107"  :anon :subid("25_1294786939.75") :method :outer("23_1294786939.75")
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
.sub "pod_comment"  :subid("26_1294786939.75") :method :outer("11_1294786939.75")
.annotate 'line', 4
    .const 'Sub' $P147 = "28_1294786939.75" 
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
    .const 'Sub' $P147 = "28_1294786939.75" 
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
.sub "!PREFIX__pod_comment"  :subid("27_1294786939.75") :method
.annotate 'line', 4
    new $P118, "ResizablePMCArray"
    push $P118, ""
    .return ($P118)
.end


.namespace ["NQP";"Grammar"]
.sub "_block146"  :anon :subid("28_1294786939.75") :method :outer("26_1294786939.75")
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
.sub "comp_unit"  :subid("29_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__comp_unit"  :subid("30_1294786939.75") :method
.annotate 'line', 4
    $P157 = self."!PREFIX__!subrule"("newpad", "")
    new $P158, "ResizablePMCArray"
    push $P158, $P157
    .return ($P158)
.end


.namespace ["NQP";"Grammar"]
.sub "statementlist"  :subid("31_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__statementlist"  :subid("32_1294786939.75") :method
.annotate 'line', 4
    $P164 = self."!PREFIX__!subrule"("ws", "")
    $P165 = self."!PREFIX__!subrule"("ws", "")
    new $P166, "ResizablePMCArray"
    push $P166, $P164
    push $P166, $P165
    .return ($P166)
.end


.namespace ["NQP";"Grammar"]
.sub "statement"  :subid("33_1294786939.75") :method :outer("11_1294786939.75")
.annotate 'line', 4
    .const 'Sub' $P181 = "35_1294786939.75" 
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
    .const 'Sub' $P181 = "35_1294786939.75" 
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
.sub "!PREFIX__statement"  :subid("34_1294786939.75") :method
.annotate 'line', 4
    new $P178, "ResizablePMCArray"
    push $P178, ""
    .return ($P178)
.end


.namespace ["NQP";"Grammar"]
.sub "_block180"  :anon :subid("35_1294786939.75") :method :outer("33_1294786939.75")
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
.sub "eat_terminator"  :subid("36_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__eat_terminator"  :subid("37_1294786939.75") :method
.annotate 'line', 4
    new $P193, "ResizablePMCArray"
    push $P193, ""
    push $P193, ""
    push $P193, ""
    push $P193, ";"
    .return ($P193)
.end


.namespace ["NQP";"Grammar"]
.sub "xblock"  :subid("38_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__xblock"  :subid("39_1294786939.75") :method
.annotate 'line', 4
    $P199 = self."!PREFIX__!subrule"("EXPR", "")
    new $P200, "ResizablePMCArray"
    push $P200, $P199
    .return ($P200)
.end


.namespace ["NQP";"Grammar"]
.sub "pblock"  :subid("40_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__pblock"  :subid("41_1294786939.75") :method
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
.sub "lambda"  :subid("42_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__lambda"  :subid("43_1294786939.75") :method
.annotate 'line', 4
    new $P213, "ResizablePMCArray"
    push $P213, "<->"
    push $P213, "->"
    .return ($P213)
.end


.namespace ["NQP";"Grammar"]
.sub "block"  :subid("44_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__block"  :subid("45_1294786939.75") :method
.annotate 'line', 4
    $P219 = self."!PREFIX__!subrule"("panic", "")
    new $P220, "ResizablePMCArray"
    push $P220, $P219
    push $P220, "{"
    .return ($P220)
.end


.namespace ["NQP";"Grammar"]
.sub "blockoid"  :subid("46_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__blockoid"  :subid("47_1294786939.75") :method
.annotate 'line', 4
    $P226 = self."!PREFIX__!subrule"("finishpad", "")
    new $P227, "ResizablePMCArray"
    push $P227, $P226
    .return ($P227)
.end


.namespace ["NQP";"Grammar"]
.sub "newpad"  :subid("48_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__newpad"  :subid("49_1294786939.75") :method
.annotate 'line', 4
    new $P235, "ResizablePMCArray"
    push $P235, ""
    .return ($P235)
.end


.namespace ["NQP";"Grammar"]
.sub "outerctx"  :subid("50_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__outerctx"  :subid("51_1294786939.75") :method
.annotate 'line', 4
    new $P240, "ResizablePMCArray"
    push $P240, ""
    .return ($P240)
.end


.namespace ["NQP";"Grammar"]
.sub "finishpad"  :subid("52_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__finishpad"  :subid("53_1294786939.75") :method
.annotate 'line', 4
    new $P245, "ResizablePMCArray"
    push $P245, ""
    .return ($P245)
.end


.namespace ["NQP";"Grammar"]
.sub "terminator"  :subid("54_1294786939.75") :method
.annotate 'line', 163
    $P248 = self."!protoregex"("terminator")
    .return ($P248)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__terminator"  :subid("55_1294786939.75") :method
.annotate 'line', 163
    $P250 = self."!PREFIX__!protoregex"("terminator")
    .return ($P250)
.end


.namespace ["NQP";"Grammar"]
.sub "terminator:sym<;>"  :subid("56_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__terminator:sym<;>"  :subid("57_1294786939.75") :method
.annotate 'line', 4
    new $P254, "ResizablePMCArray"
    push $P254, ";"
    .return ($P254)
.end


.namespace ["NQP";"Grammar"]
.sub "terminator:sym<}>"  :subid("58_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__terminator:sym<}>"  :subid("59_1294786939.75") :method
.annotate 'line', 4
    new $P259, "ResizablePMCArray"
    push $P259, "}"
    .return ($P259)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control"  :subid("60_1294786939.75") :method
.annotate 'line', 170
    $P262 = self."!protoregex"("statement_control")
    .return ($P262)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control"  :subid("61_1294786939.75") :method
.annotate 'line', 170
    $P264 = self."!PREFIX__!protoregex"("statement_control")
    .return ($P264)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<if>"  :subid("62_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__statement_control:sym<if>"  :subid("63_1294786939.75") :method
.annotate 'line', 4
    new $P268, "ResizablePMCArray"
    push $P268, "if"
    .return ($P268)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<unless>"  :subid("64_1294786939.75") :method :outer("11_1294786939.75")
.annotate 'line', 4
    .const 'Sub' $P294 = "66_1294786939.75" 
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
    .const 'Sub' $P294 = "66_1294786939.75" 
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
.sub "!PREFIX__statement_control:sym<unless>"  :subid("65_1294786939.75") :method
.annotate 'line', 4
    new $P286, "ResizablePMCArray"
    push $P286, "unless"
    .return ($P286)
.end


.namespace ["NQP";"Grammar"]
.sub "_block293"  :anon :subid("66_1294786939.75") :method :outer("64_1294786939.75")
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
.sub "statement_control:sym<while>"  :subid("67_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__statement_control:sym<while>"  :subid("68_1294786939.75") :method
.annotate 'line', 4
    new $P304, "ResizablePMCArray"
    push $P304, "until"
    push $P304, "while"
    .return ($P304)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<repeat>"  :subid("69_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__statement_control:sym<repeat>"  :subid("70_1294786939.75") :method
.annotate 'line', 4
    new $P313, "ResizablePMCArray"
    push $P313, "repeat"
    .return ($P313)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<for>"  :subid("71_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__statement_control:sym<for>"  :subid("72_1294786939.75") :method
.annotate 'line', 4
    new $P333, "ResizablePMCArray"
    push $P333, "for"
    .return ($P333)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<CATCH>"  :subid("73_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__statement_control:sym<CATCH>"  :subid("74_1294786939.75") :method
.annotate 'line', 4
    new $P341, "ResizablePMCArray"
    push $P341, "CATCH"
    .return ($P341)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<CONTROL>"  :subid("75_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__statement_control:sym<CONTROL>"  :subid("76_1294786939.75") :method
.annotate 'line', 4
    new $P349, "ResizablePMCArray"
    push $P349, "CONTROL"
    .return ($P349)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_prefix"  :subid("77_1294786939.75") :method
.annotate 'line', 213
    $P355 = self."!protoregex"("statement_prefix")
    .return ($P355)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_prefix"  :subid("78_1294786939.75") :method
.annotate 'line', 213
    $P357 = self."!PREFIX__!protoregex"("statement_prefix")
    .return ($P357)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_prefix:sym<INIT>"  :subid("79_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__statement_prefix:sym<INIT>"  :subid("80_1294786939.75") :method
.annotate 'line', 4
    $P361 = self."!PREFIX__!subrule"("blorst", "INIT")
    new $P362, "ResizablePMCArray"
    push $P362, $P361
    .return ($P362)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_prefix:sym<try>"  :subid("81_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__statement_prefix:sym<try>"  :subid("82_1294786939.75") :method
.annotate 'line', 4
    $P368 = self."!PREFIX__!subrule"("blorst", "try")
    new $P369, "ResizablePMCArray"
    push $P369, $P368
    .return ($P369)
.end


.namespace ["NQP";"Grammar"]
.sub "blorst"  :subid("83_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__blorst"  :subid("84_1294786939.75") :method
.annotate 'line', 4
    new $P375, "ResizablePMCArray"
    push $P375, ""
    .return ($P375)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_mod_cond"  :subid("85_1294786939.75") :method
.annotate 'line', 227
    $P379 = self."!protoregex"("statement_mod_cond")
    .return ($P379)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_mod_cond"  :subid("86_1294786939.75") :method
.annotate 'line', 227
    $P381 = self."!PREFIX__!protoregex"("statement_mod_cond")
    .return ($P381)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_mod_cond:sym<if>"  :subid("87_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__statement_mod_cond:sym<if>"  :subid("88_1294786939.75") :method
.annotate 'line', 4
    $P385 = self."!PREFIX__!subrule"("ws", "if")
    new $P386, "ResizablePMCArray"
    push $P386, $P385
    .return ($P386)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_mod_cond:sym<unless>"  :subid("89_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__statement_mod_cond:sym<unless>"  :subid("90_1294786939.75") :method
.annotate 'line', 4
    $P394 = self."!PREFIX__!subrule"("ws", "unless")
    new $P395, "ResizablePMCArray"
    push $P395, $P394
    .return ($P395)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_mod_loop"  :subid("91_1294786939.75") :method
.annotate 'line', 232
    $P401 = self."!protoregex"("statement_mod_loop")
    .return ($P401)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_mod_loop"  :subid("92_1294786939.75") :method
.annotate 'line', 232
    $P403 = self."!PREFIX__!protoregex"("statement_mod_loop")
    .return ($P403)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_mod_loop:sym<while>"  :subid("93_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__statement_mod_loop:sym<while>"  :subid("94_1294786939.75") :method
.annotate 'line', 4
    $P407 = self."!PREFIX__!subrule"("ws", "while")
    new $P408, "ResizablePMCArray"
    push $P408, $P407
    .return ($P408)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_mod_loop:sym<until>"  :subid("95_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__statement_mod_loop:sym<until>"  :subid("96_1294786939.75") :method
.annotate 'line', 4
    $P416 = self."!PREFIX__!subrule"("ws", "until")
    new $P417, "ResizablePMCArray"
    push $P417, $P416
    .return ($P417)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_mod_loop:sym<for>"  :subid("97_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__statement_mod_loop:sym<for>"  :subid("98_1294786939.75") :method
.annotate 'line', 4
    $P425 = self."!PREFIX__!subrule"("ws", "for")
    new $P426, "ResizablePMCArray"
    push $P426, $P425
    .return ($P426)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<fatarrow>"  :subid("99_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__term:sym<fatarrow>"  :subid("100_1294786939.75") :method
.annotate 'line', 4
    $P434 = self."!PREFIX__!subrule"("fatarrow", "")
    new $P435, "ResizablePMCArray"
    push $P435, $P434
    .return ($P435)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<colonpair>"  :subid("101_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__term:sym<colonpair>"  :subid("102_1294786939.75") :method
.annotate 'line', 4
    $P440 = self."!PREFIX__!subrule"("colonpair", "")
    new $P441, "ResizablePMCArray"
    push $P441, $P440
    .return ($P441)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<variable>"  :subid("103_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__term:sym<variable>"  :subid("104_1294786939.75") :method
.annotate 'line', 4
    $P446 = self."!PREFIX__!subrule"("variable", "")
    new $P447, "ResizablePMCArray"
    push $P447, $P446
    .return ($P447)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<package_declarator>"  :subid("105_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__term:sym<package_declarator>"  :subid("106_1294786939.75") :method
.annotate 'line', 4
    $P452 = self."!PREFIX__!subrule"("package_declarator", "")
    new $P453, "ResizablePMCArray"
    push $P453, $P452
    .return ($P453)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<scope_declarator>"  :subid("107_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__term:sym<scope_declarator>"  :subid("108_1294786939.75") :method
.annotate 'line', 4
    $P458 = self."!PREFIX__!subrule"("scope_declarator", "")
    new $P459, "ResizablePMCArray"
    push $P459, $P458
    .return ($P459)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<routine_declarator>"  :subid("109_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__term:sym<routine_declarator>"  :subid("110_1294786939.75") :method
.annotate 'line', 4
    $P464 = self."!PREFIX__!subrule"("routine_declarator", "")
    new $P465, "ResizablePMCArray"
    push $P465, $P464
    .return ($P465)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<multi_declarator>"  :subid("111_1294786939.75") :method :outer("11_1294786939.75")
.annotate 'line', 4
    .const 'Sub' $P473 = "113_1294786939.75" 
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
    .const 'Sub' $P473 = "113_1294786939.75" 
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
.sub "!PREFIX__term:sym<multi_declarator>"  :subid("112_1294786939.75") :method
.annotate 'line', 4
    new $P470, "ResizablePMCArray"
    push $P470, ""
    .return ($P470)
.end


.namespace ["NQP";"Grammar"]
.sub "_block472"  :anon :subid("113_1294786939.75") :method :outer("111_1294786939.75")
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
.sub "term:sym<regex_declarator>"  :subid("114_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__term:sym<regex_declarator>"  :subid("115_1294786939.75") :method
.annotate 'line', 4
    $P480 = self."!PREFIX__!subrule"("regex_declarator", "")
    new $P481, "ResizablePMCArray"
    push $P481, $P480
    .return ($P481)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<statement_prefix>"  :subid("116_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__term:sym<statement_prefix>"  :subid("117_1294786939.75") :method
.annotate 'line', 4
    $P486 = self."!PREFIX__!subrule"("statement_prefix", "")
    new $P487, "ResizablePMCArray"
    push $P487, $P486
    .return ($P487)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<lambda>"  :subid("118_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__term:sym<lambda>"  :subid("119_1294786939.75") :method
.annotate 'line', 4
    new $P492, "ResizablePMCArray"
    push $P492, ""
    .return ($P492)
.end


.namespace ["NQP";"Grammar"]
.sub "fatarrow"  :subid("120_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__fatarrow"  :subid("121_1294786939.75") :method
.annotate 'line', 4
    $P497 = self."!PREFIX__!subrule"("identifier", "")
    new $P498, "ResizablePMCArray"
    push $P498, $P497
    .return ($P498)
.end


.namespace ["NQP";"Grammar"]
.sub "colonpair"  :subid("122_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__colonpair"  :subid("123_1294786939.75") :method
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
.sub "variable"  :subid("124_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__variable"  :subid("125_1294786939.75") :method
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
.sub "sigil"  :subid("126_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__sigil"  :subid("127_1294786939.75") :method
.annotate 'line', 4
    new $P528, "ResizablePMCArray"
    push $P528, "&"
    push $P528, "%"
    push $P528, "@"
    push $P528, "$"
    .return ($P528)
.end


.namespace ["NQP";"Grammar"]
.sub "twigil"  :subid("128_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__twigil"  :subid("129_1294786939.75") :method
.annotate 'line', 4
    new $P533, "ResizablePMCArray"
    push $P533, "?"
    push $P533, "!"
    push $P533, "*"
    .return ($P533)
.end


.namespace ["NQP";"Grammar"]
.sub "package_declarator"  :subid("130_1294786939.75") :method
.annotate 'line', 274
    $P536 = self."!protoregex"("package_declarator")
    .return ($P536)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__package_declarator"  :subid("131_1294786939.75") :method
.annotate 'line', 274
    $P538 = self."!PREFIX__!protoregex"("package_declarator")
    .return ($P538)
.end


.namespace ["NQP";"Grammar"]
.sub "package_declarator:sym<module>"  :subid("132_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__package_declarator:sym<module>"  :subid("133_1294786939.75") :method
.annotate 'line', 4
    $P542 = self."!PREFIX__!subrule"("package_def", "module")
    new $P543, "ResizablePMCArray"
    push $P543, $P542
    .return ($P543)
.end


.namespace ["NQP";"Grammar"]
.sub "package_declarator:sym<knowhow>"  :subid("134_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__package_declarator:sym<knowhow>"  :subid("135_1294786939.75") :method
.annotate 'line', 4
    $P551 = self."!PREFIX__!subrule"("package_def", "knowhow")
    new $P552, "ResizablePMCArray"
    push $P552, $P551
    .return ($P552)
.end


.namespace ["NQP";"Grammar"]
.sub "package_declarator:sym<class>"  :subid("136_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__package_declarator:sym<class>"  :subid("137_1294786939.75") :method
.annotate 'line', 4
    $P562 = self."!PREFIX__!subrule"("package_def", "class")
    new $P563, "ResizablePMCArray"
    push $P563, $P562
    .return ($P563)
.end


.namespace ["NQP";"Grammar"]
.sub "package_declarator:sym<class_6m>"  :subid("138_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__package_declarator:sym<class_6m>"  :subid("139_1294786939.75") :method
.annotate 'line', 4
    $P572 = self."!PREFIX__!subrule"("package_def", "class_6m")
    new $P573, "ResizablePMCArray"
    push $P573, $P572
    .return ($P573)
.end


.namespace ["NQP";"Grammar"]
.sub "package_declarator:sym<grammar>"  :subid("140_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__package_declarator:sym<grammar>"  :subid("141_1294786939.75") :method
.annotate 'line', 4
    $P583 = self."!PREFIX__!subrule"("package_def", "grammar")
    new $P584, "ResizablePMCArray"
    push $P584, $P583
    .return ($P584)
.end


.namespace ["NQP";"Grammar"]
.sub "package_declarator:sym<role>"  :subid("142_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__package_declarator:sym<role>"  :subid("143_1294786939.75") :method
.annotate 'line', 4
    $P593 = self."!PREFIX__!subrule"("package_def", "role")
    new $P594, "ResizablePMCArray"
    push $P594, $P593
    .return ($P594)
.end


.namespace ["NQP";"Grammar"]
.sub "package_def"  :subid("144_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__package_def"  :subid("145_1294786939.75") :method
.annotate 'line', 4
    $P603 = self."!PREFIX__!subrule"("ws", "")
    new $P604, "ResizablePMCArray"
    push $P604, $P603
    .return ($P604)
.end


.namespace ["NQP";"Grammar"]
.sub "scope_declarator"  :subid("146_1294786939.75") :method
.annotate 'line', 311
    $P631 = self."!protoregex"("scope_declarator")
    .return ($P631)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__scope_declarator"  :subid("147_1294786939.75") :method
.annotate 'line', 311
    $P633 = self."!PREFIX__!protoregex"("scope_declarator")
    .return ($P633)
.end


.namespace ["NQP";"Grammar"]
.sub "scope_declarator:sym<my>"  :subid("148_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__scope_declarator:sym<my>"  :subid("149_1294786939.75") :method
.annotate 'line', 4
    $P637 = self."!PREFIX__!subrule"("scoped", "my")
    new $P638, "ResizablePMCArray"
    push $P638, $P637
    .return ($P638)
.end


.namespace ["NQP";"Grammar"]
.sub "scope_declarator:sym<our>"  :subid("150_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__scope_declarator:sym<our>"  :subid("151_1294786939.75") :method
.annotate 'line', 4
    $P644 = self."!PREFIX__!subrule"("scoped", "our")
    new $P645, "ResizablePMCArray"
    push $P645, $P644
    .return ($P645)
.end


.namespace ["NQP";"Grammar"]
.sub "scope_declarator:sym<has>"  :subid("152_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__scope_declarator:sym<has>"  :subid("153_1294786939.75") :method
.annotate 'line', 4
    $P651 = self."!PREFIX__!subrule"("scoped", "has")
    new $P652, "ResizablePMCArray"
    push $P652, $P651
    .return ($P652)
.end


.namespace ["NQP";"Grammar"]
.sub "scoped"  :subid("154_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__scoped"  :subid("155_1294786939.75") :method
.annotate 'line', 4
    $P659 = self."!PREFIX__!subrule"("ws", "")
    $P660 = self."!PREFIX__!subrule"("ws", "")
    new $P661, "ResizablePMCArray"
    push $P661, $P659
    push $P661, $P660
    .return ($P661)
.end


.namespace ["NQP";"Grammar"]
.sub "typename"  :subid("156_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__typename"  :subid("157_1294786939.75") :method
.annotate 'line', 4
    $P671 = self."!PREFIX__!subrule"("name", "")
    new $P672, "ResizablePMCArray"
    push $P672, $P671
    .return ($P672)
.end


.namespace ["NQP";"Grammar"]
.sub "declarator"  :subid("158_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__declarator"  :subid("159_1294786939.75") :method
.annotate 'line', 4
    $P677 = self."!PREFIX__!subrule"("routine_declarator", "")
    $P678 = self."!PREFIX__!subrule"("variable_declarator", "")
    new $P679, "ResizablePMCArray"
    push $P679, $P677
    push $P679, $P678
    .return ($P679)
.end


.namespace ["NQP";"Grammar"]
.sub "variable_declarator"  :subid("160_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__variable_declarator"  :subid("161_1294786939.75") :method
.annotate 'line', 4
    $P685 = self."!PREFIX__!subrule"("variable", "")
    new $P686, "ResizablePMCArray"
    push $P686, $P685
    .return ($P686)
.end


.namespace ["NQP";"Grammar"]
.sub "routine_declarator"  :subid("162_1294786939.75") :method
.annotate 'line', 330
    $P689 = self."!protoregex"("routine_declarator")
    .return ($P689)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__routine_declarator"  :subid("163_1294786939.75") :method
.annotate 'line', 330
    $P691 = self."!PREFIX__!protoregex"("routine_declarator")
    .return ($P691)
.end


.namespace ["NQP";"Grammar"]
.sub "routine_declarator:sym<sub>"  :subid("164_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__routine_declarator:sym<sub>"  :subid("165_1294786939.75") :method
.annotate 'line', 4
    $P695 = self."!PREFIX__!subrule"("routine_def", "sub")
    new $P696, "ResizablePMCArray"
    push $P696, $P695
    .return ($P696)
.end


.namespace ["NQP";"Grammar"]
.sub "routine_declarator:sym<method>"  :subid("166_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__routine_declarator:sym<method>"  :subid("167_1294786939.75") :method
.annotate 'line', 4
    $P702 = self."!PREFIX__!subrule"("method_def", "method")
    new $P703, "ResizablePMCArray"
    push $P703, $P702
    .return ($P703)
.end


.namespace ["NQP";"Grammar"]
.sub "routine_def"  :subid("168_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__routine_def"  :subid("169_1294786939.75") :method
.annotate 'line', 4
    $P709 = self."!PREFIX__!subrule"("ws", "")
    new $P710, "ResizablePMCArray"
    push $P710, $P709
    .return ($P710)
.end


.namespace ["NQP";"Grammar"]
.sub "method_def"  :subid("170_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__method_def"  :subid("171_1294786939.75") :method
.annotate 'line', 4
    $P735 = self."!PREFIX__!subrule"("ws", "")
    new $P736, "ResizablePMCArray"
    push $P736, $P735
    .return ($P736)
.end


.namespace ["NQP";"Grammar"]
.sub "multi_declarator"  :subid("172_1294786939.75") :method
.annotate 'line', 352
    $P756 = self."!protoregex"("multi_declarator")
    .return ($P756)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__multi_declarator"  :subid("173_1294786939.75") :method
.annotate 'line', 352
    $P758 = self."!PREFIX__!protoregex"("multi_declarator")
    .return ($P758)
.end


.namespace ["NQP";"Grammar"]
.sub "multi_declarator:sym<multi>"  :subid("174_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__multi_declarator:sym<multi>"  :subid("175_1294786939.75") :method
.annotate 'line', 4
    $P763 = self."!PREFIX__!subrule"("ws", "multi")
    new $P764, "ResizablePMCArray"
    push $P764, $P763
    .return ($P764)
.end


.namespace ["NQP";"Grammar"]
.sub "multi_declarator:sym<null>"  :subid("176_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__multi_declarator:sym<null>"  :subid("177_1294786939.75") :method
.annotate 'line', 4
    $P773 = self."!PREFIX__!subrule"("declarator", "")
    new $P774, "ResizablePMCArray"
    push $P774, $P773
    .return ($P774)
.end


.namespace ["NQP";"Grammar"]
.sub "signature"  :subid("178_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__signature"  :subid("179_1294786939.75") :method
.annotate 'line', 4
    new $P780, "ResizablePMCArray"
    push $P780, ""
    .return ($P780)
.end


.namespace ["NQP";"Grammar"]
.sub "parameter"  :subid("180_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__parameter"  :subid("181_1294786939.75") :method
.annotate 'line', 4
    new $P787, "ResizablePMCArray"
    push $P787, ""
    .return ($P787)
.end


.namespace ["NQP";"Grammar"]
.sub "param_var"  :subid("182_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__param_var"  :subid("183_1294786939.75") :method
.annotate 'line', 4
    $P800 = self."!PREFIX__!subrule"("sigil", "")
    new $P801, "ResizablePMCArray"
    push $P801, $P800
    .return ($P801)
.end


.namespace ["NQP";"Grammar"]
.sub "named_param"  :subid("184_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__named_param"  :subid("185_1294786939.75") :method
.annotate 'line', 4
    $P810 = self."!PREFIX__!subrule"("param_var", ":")
    new $P811, "ResizablePMCArray"
    push $P811, $P810
    .return ($P811)
.end


.namespace ["NQP";"Grammar"]
.sub "default_value"  :subid("186_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__default_value"  :subid("187_1294786939.75") :method
.annotate 'line', 4
    $P816 = self."!PREFIX__!subrule"("ws", "")
    new $P817, "ResizablePMCArray"
    push $P817, $P816
    .return ($P817)
.end


.namespace ["NQP";"Grammar"]
.sub "trait"  :subid("188_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__trait"  :subid("189_1294786939.75") :method
.annotate 'line', 4
    $P825 = self."!PREFIX__!subrule"("ws", "")
    new $P826, "ResizablePMCArray"
    push $P826, $P825
    .return ($P826)
.end


.namespace ["NQP";"Grammar"]
.sub "trait_mod"  :subid("190_1294786939.75") :method
.annotate 'line', 387
    $P831 = self."!protoregex"("trait_mod")
    .return ($P831)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__trait_mod"  :subid("191_1294786939.75") :method
.annotate 'line', 387
    $P833 = self."!PREFIX__!protoregex"("trait_mod")
    .return ($P833)
.end


.namespace ["NQP";"Grammar"]
.sub "trait_mod:sym<is>"  :subid("192_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__trait_mod:sym<is>"  :subid("193_1294786939.75") :method
.annotate 'line', 4
    $P837 = self."!PREFIX__!subrule"("ws", "is")
    new $P838, "ResizablePMCArray"
    push $P838, $P837
    .return ($P838)
.end


.namespace ["NQP";"Grammar"]
.sub "regex_declarator"  :subid("194_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__regex_declarator"  :subid("195_1294786939.75") :method
.annotate 'line', 4
    $P848 = self."!PREFIX__!subrule"("ws", "")
    new $P849, "ResizablePMCArray"
    push $P849, $P848
    .return ($P849)
.end


.namespace ["NQP";"Grammar"]
.sub "dotty"  :subid("196_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__dotty"  :subid("197_1294786939.75") :method
.annotate 'line', 4
    $P885 = self."!PREFIX__!subrule"("deflongname", ".")
    new $P886, "ResizablePMCArray"
    push $P886, "'"
    push $P886, "\""
    push $P886, $P885
    .return ($P886)
.end


.namespace ["NQP";"Grammar"]
.sub "term"  :subid("198_1294786939.75") :method
.annotate 'line', 421
    $P893 = self."!protoregex"("term")
    .return ($P893)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term"  :subid("199_1294786939.75") :method
.annotate 'line', 421
    $P895 = self."!PREFIX__!protoregex"("term")
    .return ($P895)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<self>"  :subid("200_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__term:sym<self>"  :subid("201_1294786939.75") :method
.annotate 'line', 4
    new $P899, "ResizablePMCArray"
    push $P899, "self"
    .return ($P899)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<identifier>"  :subid("202_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__term:sym<identifier>"  :subid("203_1294786939.75") :method
.annotate 'line', 4
    $P905 = self."!PREFIX__!subrule"("deflongname", "")
    new $P906, "ResizablePMCArray"
    push $P906, $P905
    .return ($P906)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<name>"  :subid("204_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__term:sym<name>"  :subid("205_1294786939.75") :method
.annotate 'line', 4
    $P911 = self."!PREFIX__!subrule"("name", "")
    new $P912, "ResizablePMCArray"
    push $P912, $P911
    .return ($P912)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<pir::op>"  :subid("206_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__term:sym<pir::op>"  :subid("207_1294786939.75") :method
.annotate 'line', 4
    new $P919, "ResizablePMCArray"
    push $P919, "pir::"
    .return ($P919)
.end


.namespace ["NQP";"Grammar"]
.sub "args"  :subid("208_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__args"  :subid("209_1294786939.75") :method
.annotate 'line', 4
    $P927 = self."!PREFIX__!subrule"("arglist", "(")
    new $P928, "ResizablePMCArray"
    push $P928, $P927
    .return ($P928)
.end


.namespace ["NQP";"Grammar"]
.sub "arglist"  :subid("210_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__arglist"  :subid("211_1294786939.75") :method
.annotate 'line', 4
    $P933 = self."!PREFIX__!subrule"("ws", "")
    new $P934, "ResizablePMCArray"
    push $P934, $P933
    .return ($P934)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<value>"  :subid("212_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__term:sym<value>"  :subid("213_1294786939.75") :method
.annotate 'line', 4
    $P940 = self."!PREFIX__!subrule"("value", "")
    new $P941, "ResizablePMCArray"
    push $P941, $P940
    .return ($P941)
.end


.namespace ["NQP";"Grammar"]
.sub "value"  :subid("214_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__value"  :subid("215_1294786939.75") :method
.annotate 'line', 4
    $P946 = self."!PREFIX__!subrule"("number", "")
    $P947 = self."!PREFIX__!subrule"("quote", "")
    new $P948, "ResizablePMCArray"
    push $P948, $P946
    push $P948, $P947
    .return ($P948)
.end


.namespace ["NQP";"Grammar"]
.sub "number"  :subid("216_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__number"  :subid("217_1294786939.75") :method
.annotate 'line', 4
    new $P954, "ResizablePMCArray"
    push $P954, ""
    .return ($P954)
.end


.namespace ["NQP";"Grammar"]
.sub "quote"  :subid("218_1294786939.75") :method
.annotate 'line', 462
    $P960 = self."!protoregex"("quote")
    .return ($P960)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote"  :subid("219_1294786939.75") :method
.annotate 'line', 462
    $P962 = self."!PREFIX__!protoregex"("quote")
    .return ($P962)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<apos>"  :subid("220_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__quote:sym<apos>"  :subid("221_1294786939.75") :method
.annotate 'line', 4
    new $P966, "ResizablePMCArray"
    push $P966, "'"
    .return ($P966)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<dblq>"  :subid("222_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__quote:sym<dblq>"  :subid("223_1294786939.75") :method
.annotate 'line', 4
    new $P971, "ResizablePMCArray"
    push $P971, "\""
    .return ($P971)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<q>"  :subid("224_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__quote:sym<q>"  :subid("225_1294786939.75") :method
.annotate 'line', 4
    $P976 = self."!PREFIX__!subrule"("ws", "q")
    new $P977, "ResizablePMCArray"
    push $P977, $P976
    .return ($P977)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<qq>"  :subid("226_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__quote:sym<qq>"  :subid("227_1294786939.75") :method
.annotate 'line', 4
    $P982 = self."!PREFIX__!subrule"("ws", "qq")
    new $P983, "ResizablePMCArray"
    push $P983, $P982
    .return ($P983)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<Q>"  :subid("228_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__quote:sym<Q>"  :subid("229_1294786939.75") :method
.annotate 'line', 4
    $P988 = self."!PREFIX__!subrule"("ws", "Q")
    new $P989, "ResizablePMCArray"
    push $P989, $P988
    .return ($P989)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<Q:PIR>"  :subid("230_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__quote:sym<Q:PIR>"  :subid("231_1294786939.75") :method
.annotate 'line', 4
    $P994 = self."!PREFIX__!subrule"("ws", "Q:PIR")
    new $P995, "ResizablePMCArray"
    push $P995, $P994
    .return ($P995)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym</ />"  :subid("232_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__quote:sym</ />"  :subid("233_1294786939.75") :method
.annotate 'line', 4
    $P1000 = self."!PREFIX__!subrule"("newpad", "/")
    new $P1001, "ResizablePMCArray"
    push $P1001, $P1000
    .return ($P1001)
.end


.namespace ["NQP";"Grammar"]
.sub "quote_escape:sym<$>"  :subid("234_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__quote_escape:sym<$>"  :subid("235_1294786939.75") :method
.annotate 'line', 4
    new $P1006, "ResizablePMCArray"
    push $P1006, "$"
    .return ($P1006)
.end


.namespace ["NQP";"Grammar"]
.sub "quote_escape:sym<{ }>"  :subid("236_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__quote_escape:sym<{ }>"  :subid("237_1294786939.75") :method
.annotate 'line', 4
    new $P1011, "ResizablePMCArray"
    push $P1011, "{"
    .return ($P1011)
.end


.namespace ["NQP";"Grammar"]
.sub "quote_escape:sym<esc>"  :subid("238_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__quote_escape:sym<esc>"  :subid("239_1294786939.75") :method
.annotate 'line', 4
    new $P1016, "ResizablePMCArray"
    push $P1016, "\\e"
    .return ($P1016)
.end


.namespace ["NQP";"Grammar"]
.sub "circumfix:sym<( )>"  :subid("240_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__circumfix:sym<( )>"  :subid("241_1294786939.75") :method
.annotate 'line', 4
    $P1021 = self."!PREFIX__!subrule"("ws", "(")
    new $P1022, "ResizablePMCArray"
    push $P1022, $P1021
    .return ($P1022)
.end


.namespace ["NQP";"Grammar"]
.sub "circumfix:sym<[ ]>"  :subid("242_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__circumfix:sym<[ ]>"  :subid("243_1294786939.75") :method
.annotate 'line', 4
    $P1029 = self."!PREFIX__!subrule"("ws", "[")
    new $P1030, "ResizablePMCArray"
    push $P1030, $P1029
    .return ($P1030)
.end


.namespace ["NQP";"Grammar"]
.sub "circumfix:sym<ang>"  :subid("244_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__circumfix:sym<ang>"  :subid("245_1294786939.75") :method
.annotate 'line', 4
    new $P1037, "ResizablePMCArray"
    push $P1037, "<"
    .return ($P1037)
.end


.namespace ["NQP";"Grammar"]
.sub unicode:"circumfix:sym<\x{ab} \x{bb}>"  :subid("246_1294786939.75") :method :outer("11_1294786939.75")
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
.sub unicode:"!PREFIX__circumfix:sym<\x{ab} \x{bb}>"  :subid("247_1294786939.75") :method
.annotate 'line', 4
    new $P1042, "ResizablePMCArray"
    push $P1042, unicode:"\x{ab}"
    .return ($P1042)
.end


.namespace ["NQP";"Grammar"]
.sub "circumfix:sym<{ }>"  :subid("248_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__circumfix:sym<{ }>"  :subid("249_1294786939.75") :method
.annotate 'line', 4
    new $P1047, "ResizablePMCArray"
    push $P1047, "{"
    .return ($P1047)
.end


.namespace ["NQP";"Grammar"]
.sub "circumfix:sym<sigil>"  :subid("250_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__circumfix:sym<sigil>"  :subid("251_1294786939.75") :method
.annotate 'line', 4
    $P1052 = self."!PREFIX__!subrule"("sigil", "")
    new $P1053, "ResizablePMCArray"
    push $P1053, $P1052
    .return ($P1053)
.end


.namespace ["NQP";"Grammar"]
.sub "semilist"  :subid("252_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__semilist"  :subid("253_1294786939.75") :method
.annotate 'line', 4
    $P1061 = self."!PREFIX__!subrule"("ws", "")
    new $P1062, "ResizablePMCArray"
    push $P1062, $P1061
    .return ($P1062)
.end


.namespace ["NQP";"Grammar"]
.sub "infixish"  :subid("254_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__infixish"  :subid("255_1294786939.75") :method
.annotate 'line', 492
    new $P1069, "ResizablePMCArray"
    push $P1069, ""
    .return ($P1069)
.end


.namespace ["NQP";"Grammar"]
.sub "infixstopper"  :subid("256_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__infixstopper"  :subid("257_1294786939.75") :method
.annotate 'line', 492
    new $P1074, "ResizablePMCArray"
    push $P1074, ""
    .return ($P1074)
.end


.namespace ["NQP";"Grammar"]
.sub "postcircumfix:sym<[ ]>"  :subid("258_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__postcircumfix:sym<[ ]>"  :subid("259_1294786939.75") :method
.annotate 'line', 492
    $P1079 = self."!PREFIX__!subrule"("ws", "[")
    new $P1080, "ResizablePMCArray"
    push $P1080, $P1079
    .return ($P1080)
.end


.namespace ["NQP";"Grammar"]
.sub "postcircumfix:sym<{ }>"  :subid("260_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__postcircumfix:sym<{ }>"  :subid("261_1294786939.75") :method
.annotate 'line', 492
    $P1085 = self."!PREFIX__!subrule"("ws", "{")
    new $P1086, "ResizablePMCArray"
    push $P1086, $P1085
    .return ($P1086)
.end


.namespace ["NQP";"Grammar"]
.sub "postcircumfix:sym<ang>"  :subid("262_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__postcircumfix:sym<ang>"  :subid("263_1294786939.75") :method
.annotate 'line', 492
    new $P1091, "ResizablePMCArray"
    push $P1091, "<"
    .return ($P1091)
.end


.namespace ["NQP";"Grammar"]
.sub "postcircumfix:sym<( )>"  :subid("264_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__postcircumfix:sym<( )>"  :subid("265_1294786939.75") :method
.annotate 'line', 492
    $P1096 = self."!PREFIX__!subrule"("ws", "(")
    new $P1097, "ResizablePMCArray"
    push $P1097, $P1096
    .return ($P1097)
.end


.namespace ["NQP";"Grammar"]
.sub "postfix:sym<.>"  :subid("266_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__postfix:sym<.>"  :subid("267_1294786939.75") :method
.annotate 'line', 492
    $P1102 = self."!PREFIX__!subrule"("dotty", "")
    new $P1103, "ResizablePMCArray"
    push $P1103, $P1102
    .return ($P1103)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<++>"  :subid("268_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__prefix:sym<++>"  :subid("269_1294786939.75") :method
.annotate 'line', 492
    $P1108 = self."!PREFIX__!subrule"("O", "++")
    new $P1109, "ResizablePMCArray"
    push $P1109, $P1108
    .return ($P1109)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<-->"  :subid("270_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__prefix:sym<-->"  :subid("271_1294786939.75") :method
.annotate 'line', 492
    $P1115 = self."!PREFIX__!subrule"("O", "--")
    new $P1116, "ResizablePMCArray"
    push $P1116, $P1115
    .return ($P1116)
.end


.namespace ["NQP";"Grammar"]
.sub "postfix:sym<++>"  :subid("272_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__postfix:sym<++>"  :subid("273_1294786939.75") :method
.annotate 'line', 492
    $P1122 = self."!PREFIX__!subrule"("O", "++")
    new $P1123, "ResizablePMCArray"
    push $P1123, $P1122
    .return ($P1123)
.end


.namespace ["NQP";"Grammar"]
.sub "postfix:sym<-->"  :subid("274_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__postfix:sym<-->"  :subid("275_1294786939.75") :method
.annotate 'line', 492
    $P1129 = self."!PREFIX__!subrule"("O", "--")
    new $P1130, "ResizablePMCArray"
    push $P1130, $P1129
    .return ($P1130)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<**>"  :subid("276_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__infix:sym<**>"  :subid("277_1294786939.75") :method
.annotate 'line', 492
    $P1136 = self."!PREFIX__!subrule"("O", "**")
    new $P1137, "ResizablePMCArray"
    push $P1137, $P1136
    .return ($P1137)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<+>"  :subid("278_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__prefix:sym<+>"  :subid("279_1294786939.75") :method
.annotate 'line', 492
    $P1143 = self."!PREFIX__!subrule"("O", "+")
    new $P1144, "ResizablePMCArray"
    push $P1144, $P1143
    .return ($P1144)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<~>"  :subid("280_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__prefix:sym<~>"  :subid("281_1294786939.75") :method
.annotate 'line', 492
    $P1150 = self."!PREFIX__!subrule"("O", "~")
    new $P1151, "ResizablePMCArray"
    push $P1151, $P1150
    .return ($P1151)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<->"  :subid("282_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__prefix:sym<->"  :subid("283_1294786939.75") :method
.annotate 'line', 492
    new $P1157, "ResizablePMCArray"
    push $P1157, "-"
    .return ($P1157)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<?>"  :subid("284_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__prefix:sym<?>"  :subid("285_1294786939.75") :method
.annotate 'line', 492
    $P1163 = self."!PREFIX__!subrule"("O", "?")
    new $P1164, "ResizablePMCArray"
    push $P1164, $P1163
    .return ($P1164)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<!>"  :subid("286_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__prefix:sym<!>"  :subid("287_1294786939.75") :method
.annotate 'line', 492
    $P1170 = self."!PREFIX__!subrule"("O", "!")
    new $P1171, "ResizablePMCArray"
    push $P1171, $P1170
    .return ($P1171)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<|>"  :subid("288_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__prefix:sym<|>"  :subid("289_1294786939.75") :method
.annotate 'line', 492
    $P1177 = self."!PREFIX__!subrule"("O", "|")
    new $P1178, "ResizablePMCArray"
    push $P1178, $P1177
    .return ($P1178)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<*>"  :subid("290_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__infix:sym<*>"  :subid("291_1294786939.75") :method
.annotate 'line', 492
    $P1184 = self."!PREFIX__!subrule"("O", "*")
    new $P1185, "ResizablePMCArray"
    push $P1185, $P1184
    .return ($P1185)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym</>"  :subid("292_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__infix:sym</>"  :subid("293_1294786939.75") :method
.annotate 'line', 492
    $P1191 = self."!PREFIX__!subrule"("O", "/")
    new $P1192, "ResizablePMCArray"
    push $P1192, $P1191
    .return ($P1192)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<%>"  :subid("294_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__infix:sym<%>"  :subid("295_1294786939.75") :method
.annotate 'line', 492
    $P1198 = self."!PREFIX__!subrule"("O", "%")
    new $P1199, "ResizablePMCArray"
    push $P1199, $P1198
    .return ($P1199)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<+&>"  :subid("296_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__infix:sym<+&>"  :subid("297_1294786939.75") :method
.annotate 'line', 492
    $P1205 = self."!PREFIX__!subrule"("O", "+&")
    new $P1206, "ResizablePMCArray"
    push $P1206, $P1205
    .return ($P1206)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<+>"  :subid("298_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__infix:sym<+>"  :subid("299_1294786939.75") :method
.annotate 'line', 492
    $P1212 = self."!PREFIX__!subrule"("O", "+")
    new $P1213, "ResizablePMCArray"
    push $P1213, $P1212
    .return ($P1213)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<->"  :subid("300_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__infix:sym<->"  :subid("301_1294786939.75") :method
.annotate 'line', 492
    $P1219 = self."!PREFIX__!subrule"("O", "-")
    new $P1220, "ResizablePMCArray"
    push $P1220, $P1219
    .return ($P1220)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<+|>"  :subid("302_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__infix:sym<+|>"  :subid("303_1294786939.75") :method
.annotate 'line', 492
    $P1226 = self."!PREFIX__!subrule"("O", "+|")
    new $P1227, "ResizablePMCArray"
    push $P1227, $P1226
    .return ($P1227)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<+^>"  :subid("304_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__infix:sym<+^>"  :subid("305_1294786939.75") :method
.annotate 'line', 492
    $P1233 = self."!PREFIX__!subrule"("O", "+^")
    new $P1234, "ResizablePMCArray"
    push $P1234, $P1233
    .return ($P1234)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<~>"  :subid("306_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__infix:sym<~>"  :subid("307_1294786939.75") :method
.annotate 'line', 492
    $P1240 = self."!PREFIX__!subrule"("O", "~")
    new $P1241, "ResizablePMCArray"
    push $P1241, $P1240
    .return ($P1241)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<==>"  :subid("308_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__infix:sym<==>"  :subid("309_1294786939.75") :method
.annotate 'line', 492
    $P1247 = self."!PREFIX__!subrule"("O", "==")
    new $P1248, "ResizablePMCArray"
    push $P1248, $P1247
    .return ($P1248)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<!=>"  :subid("310_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__infix:sym<!=>"  :subid("311_1294786939.75") :method
.annotate 'line', 492
    $P1254 = self."!PREFIX__!subrule"("O", "!=")
    new $P1255, "ResizablePMCArray"
    push $P1255, $P1254
    .return ($P1255)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<<=>"  :subid("312_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__infix:sym<<=>"  :subid("313_1294786939.75") :method
.annotate 'line', 492
    $P1261 = self."!PREFIX__!subrule"("O", "<=")
    new $P1262, "ResizablePMCArray"
    push $P1262, $P1261
    .return ($P1262)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<>=>"  :subid("314_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__infix:sym<>=>"  :subid("315_1294786939.75") :method
.annotate 'line', 492
    $P1268 = self."!PREFIX__!subrule"("O", ">=")
    new $P1269, "ResizablePMCArray"
    push $P1269, $P1268
    .return ($P1269)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<<>"  :subid("316_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__infix:sym<<>"  :subid("317_1294786939.75") :method
.annotate 'line', 492
    $P1275 = self."!PREFIX__!subrule"("O", "<")
    new $P1276, "ResizablePMCArray"
    push $P1276, $P1275
    .return ($P1276)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<>>"  :subid("318_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__infix:sym<>>"  :subid("319_1294786939.75") :method
.annotate 'line', 492
    $P1282 = self."!PREFIX__!subrule"("O", ">")
    new $P1283, "ResizablePMCArray"
    push $P1283, $P1282
    .return ($P1283)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<eq>"  :subid("320_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__infix:sym<eq>"  :subid("321_1294786939.75") :method
.annotate 'line', 492
    $P1289 = self."!PREFIX__!subrule"("O", "eq")
    new $P1290, "ResizablePMCArray"
    push $P1290, $P1289
    .return ($P1290)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<ne>"  :subid("322_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__infix:sym<ne>"  :subid("323_1294786939.75") :method
.annotate 'line', 492
    $P1296 = self."!PREFIX__!subrule"("O", "ne")
    new $P1297, "ResizablePMCArray"
    push $P1297, $P1296
    .return ($P1297)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<le>"  :subid("324_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__infix:sym<le>"  :subid("325_1294786939.75") :method
.annotate 'line', 492
    $P1303 = self."!PREFIX__!subrule"("O", "le")
    new $P1304, "ResizablePMCArray"
    push $P1304, $P1303
    .return ($P1304)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<ge>"  :subid("326_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__infix:sym<ge>"  :subid("327_1294786939.75") :method
.annotate 'line', 492
    $P1310 = self."!PREFIX__!subrule"("O", "ge")
    new $P1311, "ResizablePMCArray"
    push $P1311, $P1310
    .return ($P1311)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<lt>"  :subid("328_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__infix:sym<lt>"  :subid("329_1294786939.75") :method
.annotate 'line', 492
    $P1317 = self."!PREFIX__!subrule"("O", "lt")
    new $P1318, "ResizablePMCArray"
    push $P1318, $P1317
    .return ($P1318)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<gt>"  :subid("330_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__infix:sym<gt>"  :subid("331_1294786939.75") :method
.annotate 'line', 492
    $P1324 = self."!PREFIX__!subrule"("O", "gt")
    new $P1325, "ResizablePMCArray"
    push $P1325, $P1324
    .return ($P1325)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<=:=>"  :subid("332_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__infix:sym<=:=>"  :subid("333_1294786939.75") :method
.annotate 'line', 492
    $P1331 = self."!PREFIX__!subrule"("O", "=:=")
    new $P1332, "ResizablePMCArray"
    push $P1332, $P1331
    .return ($P1332)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<~~>"  :subid("334_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__infix:sym<~~>"  :subid("335_1294786939.75") :method
.annotate 'line', 492
    $P1338 = self."!PREFIX__!subrule"("O", "~~")
    new $P1339, "ResizablePMCArray"
    push $P1339, $P1338
    .return ($P1339)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<&&>"  :subid("336_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__infix:sym<&&>"  :subid("337_1294786939.75") :method
.annotate 'line', 492
    $P1345 = self."!PREFIX__!subrule"("O", "&&")
    new $P1346, "ResizablePMCArray"
    push $P1346, $P1345
    .return ($P1346)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<||>"  :subid("338_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__infix:sym<||>"  :subid("339_1294786939.75") :method
.annotate 'line', 492
    $P1352 = self."!PREFIX__!subrule"("O", "||")
    new $P1353, "ResizablePMCArray"
    push $P1353, $P1352
    .return ($P1353)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<//>"  :subid("340_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__infix:sym<//>"  :subid("341_1294786939.75") :method
.annotate 'line', 492
    $P1359 = self."!PREFIX__!subrule"("O", "//")
    new $P1360, "ResizablePMCArray"
    push $P1360, $P1359
    .return ($P1360)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<?? !!>"  :subid("342_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__infix:sym<?? !!>"  :subid("343_1294786939.75") :method
.annotate 'line', 492
    $P1366 = self."!PREFIX__!subrule"("ws", "??")
    new $P1367, "ResizablePMCArray"
    push $P1367, $P1366
    .return ($P1367)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<=>"  :subid("344_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__infix:sym<=>"  :subid("345_1294786939.75") :method
.annotate 'line', 492
    $P1372 = self."!PREFIX__!subrule"("panic", "=")
    new $P1373, "ResizablePMCArray"
    push $P1373, $P1372
    .return ($P1373)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<:=>"  :subid("346_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__infix:sym<:=>"  :subid("347_1294786939.75") :method
.annotate 'line', 492
    $P1379 = self."!PREFIX__!subrule"("O", ":=")
    new $P1380, "ResizablePMCArray"
    push $P1380, $P1379
    .return ($P1380)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<::=>"  :subid("348_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__infix:sym<::=>"  :subid("349_1294786939.75") :method
.annotate 'line', 492
    $P1386 = self."!PREFIX__!subrule"("O", "::=")
    new $P1387, "ResizablePMCArray"
    push $P1387, $P1386
    .return ($P1387)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<,>"  :subid("350_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__infix:sym<,>"  :subid("351_1294786939.75") :method
.annotate 'line', 492
    $P1393 = self."!PREFIX__!subrule"("O", ",")
    new $P1394, "ResizablePMCArray"
    push $P1394, $P1393
    .return ($P1394)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<return>"  :subid("352_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__prefix:sym<return>"  :subid("353_1294786939.75") :method
.annotate 'line', 492
    new $P1400, "ResizablePMCArray"
    push $P1400, "return"
    .return ($P1400)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<make>"  :subid("354_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__prefix:sym<make>"  :subid("355_1294786939.75") :method
.annotate 'line', 492
    new $P1406, "ResizablePMCArray"
    push $P1406, "make"
    .return ($P1406)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<last>"  :subid("356_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__term:sym<last>"  :subid("357_1294786939.75") :method
.annotate 'line', 492
    new $P1412, "ResizablePMCArray"
    push $P1412, "last"
    .return ($P1412)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<next>"  :subid("358_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__term:sym<next>"  :subid("359_1294786939.75") :method
.annotate 'line', 492
    new $P1418, "ResizablePMCArray"
    push $P1418, "next"
    .return ($P1418)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<redo>"  :subid("360_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "!PREFIX__term:sym<redo>"  :subid("361_1294786939.75") :method
.annotate 'line', 492
    new $P1424, "ResizablePMCArray"
    push $P1424, "redo"
    .return ($P1424)
.end


.namespace ["NQP";"Grammar"]
.include "except_types.pasm"
.sub "smartmatch"  :subid("362_1294786939.75") :method :outer("11_1294786939.75")
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
.sub "_block1440"  :subid("363_1294786939.75") :outer("11_1294786939.75")
.annotate 'line', 612
    .const 'Sub' $P1497 = "382_1294786939.75" 
    capture_lex $P1497
    .const 'Sub' $P1492 = "380_1294786939.75" 
    capture_lex $P1492
    .const 'Sub' $P1480 = "377_1294786939.75" 
    capture_lex $P1480
    .const 'Sub' $P1470 = "374_1294786939.75" 
    capture_lex $P1470
    .const 'Sub' $P1465 = "372_1294786939.75" 
    capture_lex $P1465
    .const 'Sub' $P1456 = "369_1294786939.75" 
    capture_lex $P1456
    .const 'Sub' $P1451 = "367_1294786939.75" 
    capture_lex $P1451
    .const 'Sub' $P1442 = "364_1294786939.75" 
    capture_lex $P1442
    .const 'Sub' $P1497 = "382_1294786939.75" 
    capture_lex $P1497
    .return ($P1497)
.end


.namespace ["NQP";"Regex"]
.sub "metachar:sym<:my>"  :subid("364_1294786939.75") :method :outer("363_1294786939.75")
.annotate 'line', 612
    .const 'Sub' $P1448 = "366_1294786939.75" 
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
    .const 'Sub' $P1448 = "366_1294786939.75" 
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
.sub "!PREFIX__metachar:sym<:my>"  :subid("365_1294786939.75") :method
.annotate 'line', 612
    new $P1445, "ResizablePMCArray"
    push $P1445, ":"
    .return ($P1445)
.end


.namespace ["NQP";"Regex"]
.sub "_block1447"  :anon :subid("366_1294786939.75") :method :outer("364_1294786939.75")
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
.sub "metachar:sym<{ }>"  :subid("367_1294786939.75") :method :outer("363_1294786939.75")
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
.sub "!PREFIX__metachar:sym<{ }>"  :subid("368_1294786939.75") :method
.annotate 'line', 612
    new $P1454, "ResizablePMCArray"
    push $P1454, "{"
    .return ($P1454)
.end


.namespace ["NQP";"Regex"]
.sub "metachar:sym<nqpvar>"  :subid("369_1294786939.75") :method :outer("363_1294786939.75")
.annotate 'line', 612
    .const 'Sub' $P1462 = "371_1294786939.75" 
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
    .const 'Sub' $P1462 = "371_1294786939.75" 
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
.sub "!PREFIX__metachar:sym<nqpvar>"  :subid("370_1294786939.75") :method
.annotate 'line', 612
    new $P1459, "ResizablePMCArray"
    push $P1459, "$"
    push $P1459, "@"
    .return ($P1459)
.end


.namespace ["NQP";"Regex"]
.sub "_block1461"  :anon :subid("371_1294786939.75") :method :outer("369_1294786939.75")
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
.sub "assertion:sym<{ }>"  :subid("372_1294786939.75") :method :outer("363_1294786939.75")
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
.sub "!PREFIX__assertion:sym<{ }>"  :subid("373_1294786939.75") :method
.annotate 'line', 612
    new $P1468, "ResizablePMCArray"
    push $P1468, "{"
    .return ($P1468)
.end


.namespace ["NQP";"Regex"]
.sub "assertion:sym<?{ }>"  :subid("374_1294786939.75") :method :outer("363_1294786939.75")
.annotate 'line', 612
    .const 'Sub' $P1476 = "376_1294786939.75" 
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
    .const 'Sub' $P1476 = "376_1294786939.75" 
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
.sub "!PREFIX__assertion:sym<?{ }>"  :subid("375_1294786939.75") :method
.annotate 'line', 612
    new $P1473, "ResizablePMCArray"
    push $P1473, "!"
    push $P1473, "?"
    .return ($P1473)
.end


.namespace ["NQP";"Regex"]
.sub "_block1475"  :anon :subid("376_1294786939.75") :method :outer("374_1294786939.75")
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
.sub "assertion:sym<name>"  :subid("377_1294786939.75") :method :outer("363_1294786939.75")
.annotate 'line', 612
    .const 'Sub' $P1489 = "379_1294786939.75" 
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
    .const 'Sub' $P1489 = "379_1294786939.75" 
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
.sub "!PREFIX__assertion:sym<name>"  :subid("378_1294786939.75") :method
.annotate 'line', 612
    $P1483 = self."!PREFIX__!subrule"("identifier", "")
    new $P1484, "ResizablePMCArray"
    push $P1484, $P1483
    .return ($P1484)
.end


.namespace ["NQP";"Regex"]
.sub "_block1488"  :anon :subid("379_1294786939.75") :method :outer("377_1294786939.75")
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
.sub "assertion:sym<var>"  :subid("380_1294786939.75") :method :outer("363_1294786939.75")
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
.sub "!PREFIX__assertion:sym<var>"  :subid("381_1294786939.75") :method
.annotate 'line', 612
    new $P1495, "ResizablePMCArray"
    push $P1495, "$"
    push $P1495, "@"
    .return ($P1495)
.end


.namespace ["NQP";"Regex"]
.sub "codeblock"  :subid("382_1294786939.75") :method :outer("363_1294786939.75")
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
.sub "!PREFIX__codeblock"  :subid("383_1294786939.75") :method
.annotate 'line', 612
    $P1500 = self."!PREFIX__!subrule"("LANG", "")
    new $P1501, "ResizablePMCArray"
    push $P1501, $P1500
    .return ($P1501)
.end


.namespace ["NQP";"Grammar"]
.sub "_block1504" :load :anon :subid("384_1294786939.75")
.annotate 'line', 4
    .const 'Sub' $P1506 = "11_1294786939.75" 
    $P1507 = $P1506()
    .return ($P1507)
.end


.namespace []
.sub "_block1525" :load :anon :subid("385_1294786939.75")
.annotate 'line', 1
    .const 'Sub' $P1527 = "10_1294786939.75" 
    $P1528 = $P1527()
    .return ($P1528)
.end

### .include 'gen/nqp-actions.pir'

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1294786958.359")
.annotate 'line', 0
    get_hll_global $P15, ["NQP";"Actions"], "_block14" 
    capture_lex $P15
.annotate 'line', 1
    nqp_dynop_setup 
    get_hll_global $P13, ["NQP"], "Actions"
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 3
    get_hll_global $P15, ["NQP";"Actions"], "_block14" 
    capture_lex $P15
    $P3205 = $P15()
.annotate 'line', 1
    .return ($P3205)
    .const 'Sub' $P3207 = "162_1294786958.359" 
    .return ($P3207)
.end


.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace ["NQP";"Actions"]
.sub "_block14"  :subid("11_1294786958.359") :outer("10_1294786958.359")
.annotate 'line', 3
    .const 'Sub' $P2992 = "161_1294786958.359" 
    capture_lex $P2992
    .const 'Sub' $P2988 = "160_1294786958.359" 
    capture_lex $P2988
    get_hll_global $P2841, ["NQP";"RegexActions"], "_block2840" 
    capture_lex $P2841
    .const 'Sub' $P2829 = "149_1294786958.359" 
    capture_lex $P2829
    .const 'Sub' $P2821 = "148_1294786958.359" 
    capture_lex $P2821
    .const 'Sub' $P2813 = "147_1294786958.359" 
    capture_lex $P2813
    .const 'Sub' $P2805 = "146_1294786958.359" 
    capture_lex $P2805
    .const 'Sub' $P2791 = "145_1294786958.359" 
    capture_lex $P2791
    .const 'Sub' $P2780 = "144_1294786958.359" 
    capture_lex $P2780
    .const 'Sub' $P2769 = "143_1294786958.359" 
    capture_lex $P2769
    .const 'Sub' $P2758 = "142_1294786958.359" 
    capture_lex $P2758
    .const 'Sub' $P2750 = "141_1294786958.359" 
    capture_lex $P2750
    .const 'Sub' $P2735 = "140_1294786958.359" 
    capture_lex $P2735
    .const 'Sub' $P2724 = "139_1294786958.359" 
    capture_lex $P2724
    .const 'Sub' $P2686 = "138_1294786958.359" 
    capture_lex $P2686
    .const 'Sub' $P2671 = "137_1294786958.359" 
    capture_lex $P2671
    .const 'Sub' $P2660 = "136_1294786958.359" 
    capture_lex $P2660
    .const 'Sub' $P2649 = "135_1294786958.359" 
    capture_lex $P2649
    .const 'Sub' $P2638 = "134_1294786958.359" 
    capture_lex $P2638
    .const 'Sub' $P2627 = "133_1294786958.359" 
    capture_lex $P2627
    .const 'Sub' $P2616 = "132_1294786958.359" 
    capture_lex $P2616
    .const 'Sub' $P2587 = "131_1294786958.359" 
    capture_lex $P2587
    .const 'Sub' $P2569 = "130_1294786958.359" 
    capture_lex $P2569
    .const 'Sub' $P2558 = "129_1294786958.359" 
    capture_lex $P2558
    .const 'Sub' $P2544 = "128_1294786958.359" 
    capture_lex $P2544
    .const 'Sub' $P2530 = "127_1294786958.359" 
    capture_lex $P2530
    .const 'Sub' $P2516 = "126_1294786958.359" 
    capture_lex $P2516
    .const 'Sub' $P2505 = "125_1294786958.359" 
    capture_lex $P2505
    .const 'Sub' $P2475 = "124_1294786958.359" 
    capture_lex $P2475
    .const 'Sub' $P2450 = "123_1294786958.359" 
    capture_lex $P2450
    .const 'Sub' $P2439 = "122_1294786958.359" 
    capture_lex $P2439
    .const 'Sub' $P2428 = "121_1294786958.359" 
    capture_lex $P2428
    .const 'Sub' $P2400 = "120_1294786958.359" 
    capture_lex $P2400
    .const 'Sub' $P2381 = "119_1294786958.359" 
    capture_lex $P2381
    .const 'Sub' $P2370 = "118_1294786958.359" 
    capture_lex $P2370
    .const 'Sub' $P2265 = "115_1294786958.359" 
    capture_lex $P2265
    .const 'Sub' $P2254 = "114_1294786958.359" 
    capture_lex $P2254
    .const 'Sub' $P2224 = "113_1294786958.359" 
    capture_lex $P2224
    .const 'Sub' $P2181 = "112_1294786958.359" 
    capture_lex $P2181
    .const 'Sub' $P2164 = "111_1294786958.359" 
    capture_lex $P2164
    .const 'Sub' $P2154 = "110_1294786958.359" 
    capture_lex $P2154
    .const 'Sub' $P2107 = "109_1294786958.359" 
    capture_lex $P2107
    .const 'Sub' $P2007 = "106_1294786958.359" 
    capture_lex $P2007
    .const 'Sub' $P1964 = "104_1294786958.359" 
    capture_lex $P1964
    .const 'Sub' $P1953 = "103_1294786958.359" 
    capture_lex $P1953
    .const 'Sub' $P1935 = "102_1294786958.359" 
    capture_lex $P1935
    .const 'Sub' $P1914 = "101_1294786958.359" 
    capture_lex $P1914
    .const 'Sub' $P1801 = "98_1294786958.359" 
    capture_lex $P1801
    .const 'Sub' $P1731 = "94_1294786958.359" 
    capture_lex $P1731
    .const 'Sub' $P1601 = "88_1294786958.359" 
    capture_lex $P1601
    .const 'Sub' $P1528 = "85_1294786958.359" 
    capture_lex $P1528
    .const 'Sub' $P1517 = "84_1294786958.359" 
    capture_lex $P1517
    .const 'Sub' $P1506 = "83_1294786958.359" 
    capture_lex $P1506
    .const 'Sub' $P1405 = "80_1294786958.359" 
    capture_lex $P1405
    .const 'Sub' $P1394 = "79_1294786958.359" 
    capture_lex $P1394
    .const 'Sub' $P1376 = "78_1294786958.359" 
    capture_lex $P1376
    .const 'Sub' $P1358 = "77_1294786958.359" 
    capture_lex $P1358
    .const 'Sub' $P1340 = "76_1294786958.359" 
    capture_lex $P1340
    .const 'Sub' $P1329 = "75_1294786958.359" 
    capture_lex $P1329
    .const 'Sub' $P1318 = "74_1294786958.359" 
    capture_lex $P1318
    .const 'Sub' $P1307 = "73_1294786958.359" 
    capture_lex $P1307
    .const 'Sub' $P1282 = "72_1294786958.359" 
    capture_lex $P1282
    .const 'Sub' $P1270 = "71_1294786958.359" 
    capture_lex $P1270
    .const 'Sub' $P1260 = "70_1294786958.359" 
    capture_lex $P1260
    .const 'Sub' $P1250 = "69_1294786958.359" 
    capture_lex $P1250
    .const 'Sub' $P1240 = "68_1294786958.359" 
    capture_lex $P1240
    .const 'Sub' $P1230 = "67_1294786958.359" 
    capture_lex $P1230
    .const 'Sub' $P1219 = "66_1294786958.359" 
    capture_lex $P1219
    .const 'Sub' $P1123 = "64_1294786958.359" 
    capture_lex $P1123
    .const 'Sub' $P1096 = "63_1294786958.359" 
    capture_lex $P1096
    .const 'Sub' $P1079 = "62_1294786958.359" 
    capture_lex $P1079
    .const 'Sub' $P1068 = "61_1294786958.359" 
    capture_lex $P1068
    .const 'Sub' $P1057 = "60_1294786958.359" 
    capture_lex $P1057
    .const 'Sub' $P1046 = "59_1294786958.359" 
    capture_lex $P1046
    .const 'Sub' $P1035 = "58_1294786958.359" 
    capture_lex $P1035
    .const 'Sub' $P1024 = "57_1294786958.359" 
    capture_lex $P1024
    .const 'Sub' $P1013 = "56_1294786958.359" 
    capture_lex $P1013
    .const 'Sub' $P1002 = "55_1294786958.359" 
    capture_lex $P1002
    .const 'Sub' $P991 = "54_1294786958.359" 
    capture_lex $P991
    .const 'Sub' $P980 = "53_1294786958.359" 
    capture_lex $P980
    .const 'Sub' $P969 = "52_1294786958.359" 
    capture_lex $P969
    .const 'Sub' $P958 = "51_1294786958.359" 
    capture_lex $P958
    .const 'Sub' $P947 = "50_1294786958.359" 
    capture_lex $P947
    .const 'Sub' $P936 = "49_1294786958.359" 
    capture_lex $P936
    .const 'Sub' $P917 = "48_1294786958.359" 
    capture_lex $P917
    .const 'Sub' $P881 = "47_1294786958.359" 
    capture_lex $P881
    .const 'Sub' $P864 = "46_1294786958.359" 
    capture_lex $P864
    .const 'Sub' $P842 = "45_1294786958.359" 
    capture_lex $P842
    .const 'Sub' $P821 = "44_1294786958.359" 
    capture_lex $P821
    .const 'Sub' $P807 = "43_1294786958.359" 
    capture_lex $P807
    .const 'Sub' $P780 = "42_1294786958.359" 
    capture_lex $P780
    .const 'Sub' $P743 = "41_1294786958.359" 
    capture_lex $P743
    .const 'Sub' $P725 = "40_1294786958.359" 
    capture_lex $P725
    .const 'Sub' $P710 = "39_1294786958.359" 
    capture_lex $P710
    .const 'Sub' $P656 = "37_1294786958.359" 
    capture_lex $P656
    .const 'Sub' $P644 = "36_1294786958.359" 
    capture_lex $P644
    .const 'Sub' $P630 = "35_1294786958.359" 
    capture_lex $P630
    .const 'Sub' $P609 = "34_1294786958.359" 
    capture_lex $P609
    .const 'Sub' $P598 = "33_1294786958.359" 
    capture_lex $P598
    .const 'Sub' $P587 = "32_1294786958.359" 
    capture_lex $P587
    .const 'Sub' $P570 = "31_1294786958.359" 
    capture_lex $P570
    .const 'Sub' $P486 = "29_1294786958.359" 
    capture_lex $P486
    .const 'Sub' $P442 = "27_1294786958.359" 
    capture_lex $P442
    .const 'Sub' $P405 = "26_1294786958.359" 
    capture_lex $P405
    .const 'Sub' $P371 = "25_1294786958.359" 
    capture_lex $P371
    .const 'Sub' $P360 = "24_1294786958.359" 
    capture_lex $P360
    .const 'Sub' $P341 = "23_1294786958.359" 
    capture_lex $P341
    .const 'Sub' $P287 = "22_1294786958.359" 
    capture_lex $P287
    .const 'Sub' $P154 = "19_1294786958.359" 
    capture_lex $P154
    .const 'Sub' $P103 = "18_1294786958.359" 
    capture_lex $P103
    .const 'Sub' $P87 = "17_1294786958.359" 
    capture_lex $P87
    .const 'Sub' $P66 = "16_1294786958.359" 
    capture_lex $P66
    .const 'Sub' $P30 = "13_1294786958.359" 
    capture_lex $P30
    .const 'Sub' $P19 = "12_1294786958.359" 
    capture_lex $P19
    get_global $P16, "$?CLASS"
    nqp_dynop_setup 
    get_hll_global $P17, ["NQP"], "RegexActions"
    get_global $P18, "@BLOCK"
    unless_null $P18, vivify_165
    $P18 = root_new ['parrot';'ResizablePMCArray']
    set_global "@BLOCK", $P18
  vivify_165:
.annotate 'line', 9
    .const 'Sub' $P19 = "12_1294786958.359" 
    newclosure $P29, $P19
    .lex "xblock_immediate", $P29
.annotate 'line', 14
    .const 'Sub' $P30 = "13_1294786958.359" 
    newclosure $P65, $P30
    .lex "block_immediate", $P65
.annotate 'line', 24
    .const 'Sub' $P66 = "16_1294786958.359" 
    newclosure $P86, $P66
    .lex "vivitype", $P86
.annotate 'line', 43
    .const 'Sub' $P87 = "17_1294786958.359" 
    newclosure $P102, $P87
    .lex "colonpair_str", $P102
.annotate 'line', 227
    .const 'Sub' $P103 = "18_1294786958.359" 
    newclosure $P153, $P103
    .lex "push_block_handler", $P153
.annotate 'line', 382
    .const 'Sub' $P154 = "19_1294786958.359" 
    newclosure $P286, $P154
    .lex "package", $P286
.annotate 'line', 458
    .const 'Sub' $P287 = "22_1294786958.359" 
    newclosure $P340, $P287
    .lex "old_package", $P340
.annotate 'line', 1017
    .const 'Sub' $P341 = "23_1294786958.359" 
    newclosure $P355, $P341
    .lex "control", $P355
.annotate 'line', 3
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
    get_global $P356, "@BLOCK"
.annotate 'line', 5
    find_lex $P357, "xblock_immediate"
    find_lex $P358, "block_immediate"
    find_lex $P359, "vivitype"
.annotate 'line', 35
    find_lex $P404, "colonpair_str"
.annotate 'line', 220
    find_lex $P863, "push_block_handler"
.annotate 'line', 380
    find_lex $P1280, "package"
    find_lex $P1281, "old_package"
.annotate 'line', 1008
    find_lex $P2804, "control"
.annotate 'line', 1035
    get_hll_global $P2841, ["NQP";"RegexActions"], "_block2840" 
    capture_lex $P2841
    $P2982 = $P2841()
.annotate 'line', 3
    .return ($P2982)
    .const 'Sub' $P2984 = "159_1294786958.359" 
    .return ($P2984)
.end


.namespace ["NQP";"Actions"]
.sub "" :load :init :subid("post163") :outer("11_1294786958.359")
.annotate 'line', 3
    get_hll_global $P15, ["NQP";"Actions"], "_block14" 
    .local pmc block
    set block, $P15
.annotate 'line', 5
    .const 'Sub' $P2988 = "160_1294786958.359" 
    capture_lex $P2988
    $P2988()
    .const 'Sub' $P2992 = "161_1294786958.359" 
    capture_lex $P2992
    $P2992()
.end


.namespace ["NQP";"Actions"]
.sub "_block2987"  :anon :subid("160_1294786958.359") :outer("11_1294786958.359")
.annotate 'line', 6
    get_global $P2989, "@BLOCK"
    unless_null $P2989, vivify_164
    $P2989 = root_new ['parrot';'ResizablePMCArray']
    set_global "@BLOCK", $P2989
  vivify_164:
 $P2990 = new ['ResizablePMCArray'] 
    set_global "@BLOCK", $P2990
.annotate 'line', 5
    .return ($P2990)
.end


.namespace ["NQP";"Actions"]
.sub "_block2991"  :anon :subid("161_1294786958.359") :outer("11_1294786958.359")
.annotate 'line', 5
    get_hll_global $P2993, "NQPClassHOW"
    $P2994 = $P2993."new_type"("Actions" :named("name"))
    .local pmc type_obj
    set type_obj, $P2994
    set_hll_global ["NQP"], "Actions", type_obj
    set_global "$?CLASS", type_obj
    get_how $P2995, type_obj
    .const 'Sub' $P2996 = "24_1294786958.359" 
    $P2995."add_method"(type_obj, "TOP", $P2996)
    get_how $P2997, type_obj
    .const 'Sub' $P2998 = "25_1294786958.359" 
    $P2997."add_method"(type_obj, "deflongname", $P2998)
    get_how $P2999, type_obj
    .const 'Sub' $P3000 = "26_1294786958.359" 
    $P2999."add_method"(type_obj, "comp_unit", $P3000)
    get_how $P3001, type_obj
    .const 'Sub' $P3002 = "27_1294786958.359" 
    $P3001."add_method"(type_obj, "statementlist", $P3002)
    get_how $P3003, type_obj
    .const 'Sub' $P3004 = "29_1294786958.359" 
    $P3003."add_method"(type_obj, "statement", $P3004)
    get_how $P3005, type_obj
    .const 'Sub' $P3006 = "31_1294786958.359" 
    $P3005."add_method"(type_obj, "xblock", $P3006)
    get_how $P3007, type_obj
    .const 'Sub' $P3008 = "32_1294786958.359" 
    $P3007."add_method"(type_obj, "pblock", $P3008)
    get_how $P3009, type_obj
    .const 'Sub' $P3010 = "33_1294786958.359" 
    $P3009."add_method"(type_obj, "block", $P3010)
    get_how $P3011, type_obj
    .const 'Sub' $P3012 = "34_1294786958.359" 
    $P3011."add_method"(type_obj, "blockoid", $P3012)
    get_how $P3013, type_obj
    .const 'Sub' $P3014 = "35_1294786958.359" 
    $P3013."add_method"(type_obj, "newpad", $P3014)
    get_how $P3015, type_obj
    .const 'Sub' $P3016 = "36_1294786958.359" 
    $P3015."add_method"(type_obj, "outerctx", $P3016)
    get_how $P3017, type_obj
    .const 'Sub' $P3018 = "37_1294786958.359" 
    $P3017."add_method"(type_obj, "statement_control:sym<if>", $P3018)
    get_how $P3019, type_obj
    .const 'Sub' $P3020 = "39_1294786958.359" 
    $P3019."add_method"(type_obj, "statement_control:sym<unless>", $P3020)
    get_how $P3021, type_obj
    .const 'Sub' $P3022 = "40_1294786958.359" 
    $P3021."add_method"(type_obj, "statement_control:sym<while>", $P3022)
    get_how $P3023, type_obj
    .const 'Sub' $P3024 = "41_1294786958.359" 
    $P3023."add_method"(type_obj, "statement_control:sym<repeat>", $P3024)
    get_how $P3025, type_obj
    .const 'Sub' $P3026 = "42_1294786958.359" 
    $P3025."add_method"(type_obj, "statement_control:sym<for>", $P3026)
    get_how $P3027, type_obj
    .const 'Sub' $P3028 = "43_1294786958.359" 
    $P3027."add_method"(type_obj, "statement_control:sym<return>", $P3028)
    get_how $P3029, type_obj
    .const 'Sub' $P3030 = "44_1294786958.359" 
    $P3029."add_method"(type_obj, "statement_control:sym<CATCH>", $P3030)
    get_how $P3031, type_obj
    .const 'Sub' $P3032 = "45_1294786958.359" 
    $P3031."add_method"(type_obj, "statement_control:sym<CONTROL>", $P3032)
    get_how $P3033, type_obj
    .const 'Sub' $P3034 = "46_1294786958.359" 
    $P3033."add_method"(type_obj, "statement_prefix:sym<INIT>", $P3034)
    get_how $P3035, type_obj
    .const 'Sub' $P3036 = "47_1294786958.359" 
    $P3035."add_method"(type_obj, "statement_prefix:sym<try>", $P3036)
    get_how $P3037, type_obj
    .const 'Sub' $P3038 = "48_1294786958.359" 
    $P3037."add_method"(type_obj, "blorst", $P3038)
    get_how $P3039, type_obj
    .const 'Sub' $P3040 = "49_1294786958.359" 
    $P3039."add_method"(type_obj, "statement_mod_cond:sym<if>", $P3040)
    get_how $P3041, type_obj
    .const 'Sub' $P3042 = "50_1294786958.359" 
    $P3041."add_method"(type_obj, "statement_mod_cond:sym<unless>", $P3042)
    get_how $P3043, type_obj
    .const 'Sub' $P3044 = "51_1294786958.359" 
    $P3043."add_method"(type_obj, "statement_mod_loop:sym<while>", $P3044)
    get_how $P3045, type_obj
    .const 'Sub' $P3046 = "52_1294786958.359" 
    $P3045."add_method"(type_obj, "statement_mod_loop:sym<until>", $P3046)
    get_how $P3047, type_obj
    .const 'Sub' $P3048 = "53_1294786958.359" 
    $P3047."add_method"(type_obj, "term:sym<fatarrow>", $P3048)
    get_how $P3049, type_obj
    .const 'Sub' $P3050 = "54_1294786958.359" 
    $P3049."add_method"(type_obj, "term:sym<colonpair>", $P3050)
    get_how $P3051, type_obj
    .const 'Sub' $P3052 = "55_1294786958.359" 
    $P3051."add_method"(type_obj, "term:sym<variable>", $P3052)
    get_how $P3053, type_obj
    .const 'Sub' $P3054 = "56_1294786958.359" 
    $P3053."add_method"(type_obj, "term:sym<package_declarator>", $P3054)
    get_how $P3055, type_obj
    .const 'Sub' $P3056 = "57_1294786958.359" 
    $P3055."add_method"(type_obj, "term:sym<scope_declarator>", $P3056)
    get_how $P3057, type_obj
    .const 'Sub' $P3058 = "58_1294786958.359" 
    $P3057."add_method"(type_obj, "term:sym<routine_declarator>", $P3058)
    get_how $P3059, type_obj
    .const 'Sub' $P3060 = "59_1294786958.359" 
    $P3059."add_method"(type_obj, "term:sym<regex_declarator>", $P3060)
    get_how $P3061, type_obj
    .const 'Sub' $P3062 = "60_1294786958.359" 
    $P3061."add_method"(type_obj, "term:sym<statement_prefix>", $P3062)
    get_how $P3063, type_obj
    .const 'Sub' $P3064 = "61_1294786958.359" 
    $P3063."add_method"(type_obj, "term:sym<lambda>", $P3064)
    get_how $P3065, type_obj
    .const 'Sub' $P3066 = "62_1294786958.359" 
    $P3065."add_method"(type_obj, "fatarrow", $P3066)
    get_how $P3067, type_obj
    .const 'Sub' $P3068 = "63_1294786958.359" 
    $P3067."add_method"(type_obj, "colonpair", $P3068)
    get_how $P3069, type_obj
    .const 'Sub' $P3070 = "64_1294786958.359" 
    $P3069."add_method"(type_obj, "variable", $P3070)
    get_how $P3071, type_obj
    .const 'Sub' $P3072 = "66_1294786958.359" 
    $P3071."add_method"(type_obj, "package_declarator:sym<module>", $P3072)
    get_how $P3073, type_obj
    .const 'Sub' $P3074 = "67_1294786958.359" 
    $P3073."add_method"(type_obj, "package_declarator:sym<knowhow>", $P3074)
    get_how $P3075, type_obj
    .const 'Sub' $P3076 = "68_1294786958.359" 
    $P3075."add_method"(type_obj, "package_declarator:sym<class>", $P3076)
    get_how $P3077, type_obj
    .const 'Sub' $P3078 = "69_1294786958.359" 
    $P3077."add_method"(type_obj, "package_declarator:sym<class_6m>", $P3078)
    get_how $P3079, type_obj
    .const 'Sub' $P3080 = "70_1294786958.359" 
    $P3079."add_method"(type_obj, "package_declarator:sym<grammar>", $P3080)
    get_how $P3081, type_obj
    .const 'Sub' $P3082 = "71_1294786958.359" 
    $P3081."add_method"(type_obj, "package_declarator:sym<role>", $P3082)
    get_how $P3083, type_obj
    .const 'Sub' $P3084 = "72_1294786958.359" 
    $P3083."add_method"(type_obj, "package_def", $P3084)
    get_how $P3085, type_obj
    .const 'Sub' $P3086 = "73_1294786958.359" 
    $P3085."add_method"(type_obj, "scope_declarator:sym<my>", $P3086)
    get_how $P3087, type_obj
    .const 'Sub' $P3088 = "74_1294786958.359" 
    $P3087."add_method"(type_obj, "scope_declarator:sym<our>", $P3088)
    get_how $P3089, type_obj
    .const 'Sub' $P3090 = "75_1294786958.359" 
    $P3089."add_method"(type_obj, "scope_declarator:sym<has>", $P3090)
    get_how $P3091, type_obj
    .const 'Sub' $P3092 = "76_1294786958.359" 
    $P3091."add_method"(type_obj, "scoped", $P3092)
    get_how $P3093, type_obj
    .const 'Sub' $P3094 = "77_1294786958.359" 
    $P3093."add_method"(type_obj, "declarator", $P3094)
    get_how $P3095, type_obj
    .const 'Sub' $P3096 = "78_1294786958.359" 
    $P3095."add_method"(type_obj, "multi_declarator:sym<multi>", $P3096)
    get_how $P3097, type_obj
    .const 'Sub' $P3098 = "79_1294786958.359" 
    $P3097."add_method"(type_obj, "multi_declarator:sym<null>", $P3098)
    get_how $P3099, type_obj
    .const 'Sub' $P3100 = "80_1294786958.359" 
    $P3099."add_method"(type_obj, "variable_declarator", $P3100)
    get_how $P3101, type_obj
    .const 'Sub' $P3102 = "83_1294786958.359" 
    $P3101."add_method"(type_obj, "routine_declarator:sym<sub>", $P3102)
    get_how $P3103, type_obj
    .const 'Sub' $P3104 = "84_1294786958.359" 
    $P3103."add_method"(type_obj, "routine_declarator:sym<method>", $P3104)
    get_how $P3105, type_obj
    .const 'Sub' $P3106 = "85_1294786958.359" 
    $P3105."add_method"(type_obj, "routine_def", $P3106)
    get_how $P3107, type_obj
    .const 'Sub' $P3108 = "88_1294786958.359" 
    $P3107."add_method"(type_obj, "method_def", $P3108)
    get_how $P3109, type_obj
    .const 'Sub' $P3110 = "94_1294786958.359" 
    $P3109."add_method"(type_obj, "signature", $P3110)
    get_how $P3111, type_obj
    .const 'Sub' $P3112 = "98_1294786958.359" 
    $P3111."add_method"(type_obj, "parameter", $P3112)
    get_how $P3113, type_obj
    .const 'Sub' $P3114 = "101_1294786958.359" 
    $P3113."add_method"(type_obj, "param_var", $P3114)
    get_how $P3115, type_obj
    .const 'Sub' $P3116 = "102_1294786958.359" 
    $P3115."add_method"(type_obj, "named_param", $P3116)
    get_how $P3117, type_obj
    .const 'Sub' $P3118 = "103_1294786958.359" 
    $P3117."add_method"(type_obj, "trait", $P3118)
    get_how $P3119, type_obj
    .const 'Sub' $P3120 = "104_1294786958.359" 
    $P3119."add_method"(type_obj, "trait_mod:sym<is>", $P3120)
    get_how $P3121, type_obj
    .const 'Sub' $P3122 = "106_1294786958.359" 
    $P3121."add_method"(type_obj, "regex_declarator", $P3122)
    get_how $P3123, type_obj
    .const 'Sub' $P3124 = "109_1294786958.359" 
    $P3123."add_method"(type_obj, "dotty", $P3124)
    get_how $P3125, type_obj
    .const 'Sub' $P3126 = "110_1294786958.359" 
    $P3125."add_method"(type_obj, "term:sym<self>", $P3126)
    get_how $P3127, type_obj
    .const 'Sub' $P3128 = "111_1294786958.359" 
    $P3127."add_method"(type_obj, "term:sym<identifier>", $P3128)
    get_how $P3129, type_obj
    .const 'Sub' $P3130 = "112_1294786958.359" 
    $P3129."add_method"(type_obj, "term:sym<name>", $P3130)
    get_how $P3131, type_obj
    .const 'Sub' $P3132 = "113_1294786958.359" 
    $P3131."add_method"(type_obj, "term:sym<pir::op>", $P3132)
    get_how $P3133, type_obj
    .const 'Sub' $P3134 = "114_1294786958.359" 
    $P3133."add_method"(type_obj, "args", $P3134)
    get_how $P3135, type_obj
    .const 'Sub' $P3136 = "115_1294786958.359" 
    $P3135."add_method"(type_obj, "arglist", $P3136)
    get_how $P3137, type_obj
    .const 'Sub' $P3138 = "118_1294786958.359" 
    $P3137."add_method"(type_obj, "term:sym<value>", $P3138)
    get_how $P3139, type_obj
    .const 'Sub' $P3140 = "119_1294786958.359" 
    $P3139."add_method"(type_obj, "circumfix:sym<( )>", $P3140)
    get_how $P3141, type_obj
    .const 'Sub' $P3142 = "120_1294786958.359" 
    $P3141."add_method"(type_obj, "circumfix:sym<[ ]>", $P3142)
    get_how $P3143, type_obj
    .const 'Sub' $P3144 = "121_1294786958.359" 
    $P3143."add_method"(type_obj, "circumfix:sym<ang>", $P3144)
    get_how $P3145, type_obj
    .const 'Sub' $P3146 = "122_1294786958.359" 
    $P3145."add_method"(type_obj, unicode:"circumfix:sym<\x{ab} \x{bb}>", $P3146)
    get_how $P3147, type_obj
    .const 'Sub' $P3148 = "123_1294786958.359" 
    $P3147."add_method"(type_obj, "circumfix:sym<{ }>", $P3148)
    get_how $P3149, type_obj
    .const 'Sub' $P3150 = "124_1294786958.359" 
    $P3149."add_method"(type_obj, "circumfix:sym<sigil>", $P3150)
    get_how $P3151, type_obj
    .const 'Sub' $P3152 = "125_1294786958.359" 
    $P3151."add_method"(type_obj, "semilist", $P3152)
    get_how $P3153, type_obj
    .const 'Sub' $P3154 = "126_1294786958.359" 
    $P3153."add_method"(type_obj, "postcircumfix:sym<[ ]>", $P3154)
    get_how $P3155, type_obj
    .const 'Sub' $P3156 = "127_1294786958.359" 
    $P3155."add_method"(type_obj, "postcircumfix:sym<{ }>", $P3156)
    get_how $P3157, type_obj
    .const 'Sub' $P3158 = "128_1294786958.359" 
    $P3157."add_method"(type_obj, "postcircumfix:sym<ang>", $P3158)
    get_how $P3159, type_obj
    .const 'Sub' $P3160 = "129_1294786958.359" 
    $P3159."add_method"(type_obj, "postcircumfix:sym<( )>", $P3160)
    get_how $P3161, type_obj
    .const 'Sub' $P3162 = "130_1294786958.359" 
    $P3161."add_method"(type_obj, "value", $P3162)
    get_how $P3163, type_obj
    .const 'Sub' $P3164 = "131_1294786958.359" 
    $P3163."add_method"(type_obj, "number", $P3164)
    get_how $P3165, type_obj
    .const 'Sub' $P3166 = "132_1294786958.359" 
    $P3165."add_method"(type_obj, "quote:sym<apos>", $P3166)
    get_how $P3167, type_obj
    .const 'Sub' $P3168 = "133_1294786958.359" 
    $P3167."add_method"(type_obj, "quote:sym<dblq>", $P3168)
    get_how $P3169, type_obj
    .const 'Sub' $P3170 = "134_1294786958.359" 
    $P3169."add_method"(type_obj, "quote:sym<qq>", $P3170)
    get_how $P3171, type_obj
    .const 'Sub' $P3172 = "135_1294786958.359" 
    $P3171."add_method"(type_obj, "quote:sym<q>", $P3172)
    get_how $P3173, type_obj
    .const 'Sub' $P3174 = "136_1294786958.359" 
    $P3173."add_method"(type_obj, "quote:sym<Q>", $P3174)
    get_how $P3175, type_obj
    .const 'Sub' $P3176 = "137_1294786958.359" 
    $P3175."add_method"(type_obj, "quote:sym<Q:PIR>", $P3176)
    get_how $P3177, type_obj
    .const 'Sub' $P3178 = "138_1294786958.359" 
    $P3177."add_method"(type_obj, "quote:sym</ />", $P3178)
    get_how $P3179, type_obj
    .const 'Sub' $P3180 = "139_1294786958.359" 
    $P3179."add_method"(type_obj, "quote_escape:sym<$>", $P3180)
    get_how $P3181, type_obj
    .const 'Sub' $P3182 = "140_1294786958.359" 
    $P3181."add_method"(type_obj, "quote_escape:sym<{ }>", $P3182)
    get_how $P3183, type_obj
    .const 'Sub' $P3184 = "141_1294786958.359" 
    $P3183."add_method"(type_obj, "quote_escape:sym<esc>", $P3184)
    get_how $P3185, type_obj
    .const 'Sub' $P3186 = "142_1294786958.359" 
    $P3185."add_method"(type_obj, "postfix:sym<.>", $P3186)
    get_how $P3187, type_obj
    .const 'Sub' $P3188 = "143_1294786958.359" 
    $P3187."add_method"(type_obj, "postfix:sym<++>", $P3188)
    get_how $P3189, type_obj
    .const 'Sub' $P3190 = "144_1294786958.359" 
    $P3189."add_method"(type_obj, "postfix:sym<-->", $P3190)
    get_how $P3191, type_obj
    .const 'Sub' $P3192 = "145_1294786958.359" 
    $P3191."add_method"(type_obj, "prefix:sym<make>", $P3192)
    get_how $P3193, type_obj
    .const 'Sub' $P3194 = "146_1294786958.359" 
    $P3193."add_method"(type_obj, "term:sym<next>", $P3194)
    get_how $P3195, type_obj
    .const 'Sub' $P3196 = "147_1294786958.359" 
    $P3195."add_method"(type_obj, "term:sym<last>", $P3196)
    get_how $P3197, type_obj
    .const 'Sub' $P3198 = "148_1294786958.359" 
    $P3197."add_method"(type_obj, "term:sym<redo>", $P3198)
    get_how $P3199, type_obj
    .const 'Sub' $P3200 = "149_1294786958.359" 
    $P3199."add_method"(type_obj, "infix:sym<~~>", $P3200)
    get_how $P3201, type_obj
    get_hll_global $P3202, ["HLL"], "Actions"
    $P3201."add_parent"(type_obj, $P3202)
    get_how $P3203, type_obj
    $P3204 = $P3203."compose"(type_obj)
    .return ($P3204)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "xblock_immediate"  :subid("12_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_22
.annotate 'line', 9
    new $P21, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P21, control_20
    push_eh $P21
    .lex "$xblock", param_22
.annotate 'line', 10
    find_lex $P23, "$xblock"
    unless_null $P23, vivify_166
    $P23 = root_new ['parrot';'ResizablePMCArray']
  vivify_166:
    set $P24, $P23[1]
    unless_null $P24, vivify_167
    new $P24, "Undef"
  vivify_167:
    $P25 = "block_immediate"($P24)
    find_lex $P26, "$xblock"
    unless_null $P26, vivify_168
    $P26 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$xblock", $P26
  vivify_168:
    set $P26[1], $P25
    find_lex $P27, "$xblock"
.annotate 'line', 9
    .return ($P27)
  control_20:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P28, exception, "payload"
    .return ($P28)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "block_immediate"  :subid("13_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_33
.annotate 'line', 14
    .const 'Sub' $P43 = "14_1294786958.359" 
    capture_lex $P43
    new $P32, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P32, control_31
    push_eh $P32
    .lex "$block", param_33
.annotate 'line', 15
    find_lex $P34, "$block"
    $P34."blocktype"("immediate")
.annotate 'line', 16
    find_lex $P38, "$block"
    $P39 = $P38."symtable"()
    unless $P39, unless_37
    set $P36, $P39
    goto unless_37_end
  unless_37:
    find_lex $P40, "$block"
    $P41 = $P40."handlers"()
    set $P36, $P41
  unless_37_end:
    if $P36, unless_35_end
    .const 'Sub' $P43 = "14_1294786958.359" 
    capture_lex $P43
    $P43()
  unless_35_end:
    find_lex $P63, "$block"
.annotate 'line', 14
    .return ($P63)
  control_31:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P64, exception, "payload"
    .return ($P64)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "_block42"  :anon :subid("14_1294786958.359") :outer("13_1294786958.359")
.annotate 'line', 16
    .const 'Sub' $P54 = "15_1294786958.359" 
    capture_lex $P54
.annotate 'line', 17
    new $P44, "Undef"
    .lex "$stmts", $P44
    get_hll_global $P45, ["PAST"], "Stmts"
    find_lex $P46, "$block"
    $P47 = $P45."new"($P46 :named("node"))
    store_lex "$stmts", $P47
.annotate 'line', 18
    find_lex $P49, "$block"
    $P50 = $P49."list"()
    defined $I51, $P50
    unless $I51, for_undef_169
    iter $P48, $P50
    new $P60, 'ExceptionHandler'
    set_addr $P60, loop59_handler
    $P60."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P60
  loop59_test:
    unless $P48, loop59_done
    shift $P52, $P48
  loop59_redo:
    .const 'Sub' $P54 = "15_1294786958.359" 
    capture_lex $P54
    $P54($P52)
  loop59_next:
    goto loop59_test
  loop59_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P61, exception, 'type'
    eq $P61, .CONTROL_LOOP_NEXT, loop59_next
    eq $P61, .CONTROL_LOOP_REDO, loop59_redo
  loop59_done:
    pop_eh 
  for_undef_169:
.annotate 'line', 19
    find_lex $P62, "$stmts"
    store_lex "$block", $P62
.annotate 'line', 16
    .return ($P62)
.end


.namespace ["NQP";"Actions"]
.sub "_block53"  :anon :subid("15_1294786958.359") :outer("14_1294786958.359")
    .param pmc param_55
.annotate 'line', 18
    .lex "$_", param_55
    find_lex $P56, "$stmts"
    find_lex $P57, "$_"
    $P58 = $P56."push"($P57)
    .return ($P58)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "vivitype"  :subid("16_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_69
.annotate 'line', 24
    new $P68, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P68, control_67
    push_eh $P68
    .lex "$sigil", param_69
.annotate 'line', 25
    find_lex $P72, "$sigil"
    set $S73, $P72
    iseq $I74, $S73, "%"
    if $I74, if_71
.annotate 'line', 27
    find_lex $P79, "$sigil"
    set $S80, $P79
    iseq $I81, $S80, "@"
    if $I81, if_78
    new $P84, "String"
    assign $P84, "Undef"
    set $P77, $P84
    goto if_78_end
  if_78:
.annotate 'line', 28
    get_hll_global $P82, ["PAST"], "Op"
    $P83 = $P82."new"("    %r = root_new ['parrot';'ResizablePMCArray']" :named("inline"))
    set $P77, $P83
  if_78_end:
    set $P70, $P77
.annotate 'line', 25
    goto if_71_end
  if_71:
.annotate 'line', 26
    get_hll_global $P75, ["PAST"], "Op"
    $P76 = $P75."new"("    %r = root_new ['parrot';'Hash']" :named("inline"))
    set $P70, $P76
  if_71_end:
.annotate 'line', 24
    .return ($P70)
  control_67:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P85, exception, "payload"
    .return ($P85)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "colonpair_str"  :subid("17_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_90
.annotate 'line', 43
    new $P89, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P89, control_88
    push_eh $P89
    .lex "$ast", param_90
.annotate 'line', 44
    get_hll_global $P93, ["PAST"], "Op"
    find_lex $P94, "$ast"
    $P95 = $P93."ACCEPTS"($P94)
    if $P95, if_92
.annotate 'line', 46
    find_lex $P99, "$ast"
    $P100 = $P99."value"()
    set $P91, $P100
.annotate 'line', 44
    goto if_92_end
  if_92:
.annotate 'line', 45
    find_lex $P96, "$ast"
    $P97 = $P96."list"()
    join $S98, " ", $P97
    new $P91, 'String'
    set $P91, $S98
  if_92_end:
.annotate 'line', 43
    .return ($P91)
  control_88:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P101, exception, "payload"
    .return ($P101)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "push_block_handler"  :subid("18_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_106
    .param pmc param_107
.annotate 'line', 227
    new $P105, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P105, control_104
    push_eh $P105
    .lex "$/", param_106
    .lex "$block", param_107
.annotate 'line', 228
    get_global $P109, "@BLOCK"
    unless_null $P109, vivify_170
    $P109 = root_new ['parrot';'ResizablePMCArray']
  vivify_170:
    set $P110, $P109[0]
    unless_null $P110, vivify_171
    new $P110, "Undef"
  vivify_171:
    $P111 = $P110."handlers"()
    if $P111, unless_108_end
.annotate 'line', 229
    get_global $P112, "@BLOCK"
    unless_null $P112, vivify_172
    $P112 = root_new ['parrot';'ResizablePMCArray']
  vivify_172:
    set $P113, $P112[0]
    unless_null $P113, vivify_173
    new $P113, "Undef"
  vivify_173:
    new $P114, "ResizablePMCArray"
    $P113."handlers"($P114)
  unless_108_end:
.annotate 'line', 231
    find_lex $P116, "$block"
    $P117 = $P116."arity"()
    if $P117, unless_115_end
.annotate 'line', 232
    find_lex $P118, "$block"
.annotate 'line', 233
    get_hll_global $P119, ["PAST"], "Op"
.annotate 'line', 234
    get_hll_global $P120, ["PAST"], "Var"
    $P121 = $P120."new"("lexical" :named("scope"), "$!" :named("name"), 1 :named("isdecl"))
.annotate 'line', 235
    get_hll_global $P122, ["PAST"], "Var"
    $P123 = $P122."new"("lexical" :named("scope"), "$_" :named("name"))
    $P124 = $P119."new"($P121, $P123, "bind" :named("pasttype"))
.annotate 'line', 233
    $P118."unshift"($P124)
.annotate 'line', 238
    find_lex $P125, "$block"
    get_hll_global $P126, ["PAST"], "Var"
    $P127 = $P126."new"("$_" :named("name"), "parameter" :named("scope"))
    $P125."unshift"($P127)
.annotate 'line', 239
    find_lex $P128, "$block"
    $P128."symbol"("$_", "lexical" :named("scope"))
.annotate 'line', 240
    find_lex $P129, "$block"
    $P129."symbol"("$!", "lexical" :named("scope"))
.annotate 'line', 241
    find_lex $P130, "$block"
    $P130."arity"(1)
  unless_115_end:
.annotate 'line', 243
    find_lex $P131, "$block"
    $P131."blocktype"("declaration")
.annotate 'line', 244
    get_global $P132, "@BLOCK"
    unless_null $P132, vivify_174
    $P132 = root_new ['parrot';'ResizablePMCArray']
  vivify_174:
    set $P133, $P132[0]
    unless_null $P133, vivify_175
    new $P133, "Undef"
  vivify_175:
    $P134 = $P133."handlers"()
.annotate 'line', 245
    get_hll_global $P135, ["PAST"], "Control"
    find_lex $P136, "$/"
.annotate 'line', 247
    get_hll_global $P137, ["PAST"], "Stmts"
.annotate 'line', 248
    get_hll_global $P138, ["PAST"], "Op"
    find_lex $P139, "$block"
.annotate 'line', 250
    get_hll_global $P140, ["PAST"], "Var"
    $P141 = $P140."new"("register" :named("scope"), "exception" :named("name"))
    $P142 = $P138."new"($P139, $P141, "call" :named("pasttype"))
.annotate 'line', 252
    get_hll_global $P143, ["PAST"], "Op"
.annotate 'line', 253
    get_hll_global $P144, ["PAST"], "Var"
.annotate 'line', 254
    get_hll_global $P145, ["PAST"], "Var"
    $P146 = $P145."new"("register" :named("scope"), "exception" :named("name"))
    $P147 = $P144."new"($P146, "handled", "keyed" :named("scope"))
.annotate 'line', 253
    $P148 = $P143."new"($P147, 1, "bind" :named("pasttype"))
.annotate 'line', 252
    $P149 = $P137."new"($P142, $P148)
.annotate 'line', 247
    $P150 = $P135."new"($P149, $P136 :named("node"))
.annotate 'line', 245
    $P151 = $P134."unshift"($P150)
.annotate 'line', 227
    .return ($P151)
  control_104:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P152, exception, "payload"
    .return ($P152)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "package"  :subid("19_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_157
.annotate 'line', 382
    .const 'Sub' $P227 = "21_1294786958.359" 
    capture_lex $P227
    .const 'Sub' $P208 = "20_1294786958.359" 
    capture_lex $P208
    new $P156, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P156, control_155
    push_eh $P156
    .lex "$/", param_157
.annotate 'line', 383
    $P158 = root_new ['parrot';'ResizablePMCArray']
    .lex "@ns", $P158
.annotate 'line', 384
    new $P159, "Undef"
    .lex "$name", $P159
.annotate 'line', 446
    new $P160, "Undef"
    .lex "$past", $P160
.annotate 'line', 383
    find_lex $P161, "$/"
    unless_null $P161, vivify_176
    $P161 = root_new ['parrot';'Hash']
  vivify_176:
    set $P162, $P161["package_def"]
    unless_null $P162, vivify_177
    $P162 = root_new ['parrot';'Hash']
  vivify_177:
    set $P163, $P162["name"]
    unless_null $P163, vivify_178
    $P163 = root_new ['parrot';'Hash']
  vivify_178:
    set $P164, $P163["identifier"]
    unless_null $P164, vivify_179
    new $P164, "Undef"
  vivify_179:
    clone $P165, $P164
    store_lex "@ns", $P165
.annotate 'line', 384
    find_lex $P166, "@ns"
    $P167 = $P166."pop"()
    set $S168, $P167
    new $P169, 'String'
    set $P169, $S168
    store_lex "$name", $P169
.annotate 'line', 388
    find_dynamic_lex $P170, "$*PACKAGE-SETUP"
    unless_null $P170, vivify_180
    get_hll_global $P170, "$PACKAGE-SETUP"
    unless_null $P170, vivify_181
    die "Contextual $*PACKAGE-SETUP not found"
  vivify_181:
  vivify_180:
    get_hll_global $P171, ["PAST"], "Stmts"
.annotate 'line', 389
    get_hll_global $P172, ["PAST"], "Op"
.annotate 'line', 390
    get_hll_global $P173, ["PAST"], "Var"
    $P174 = $P173."new"("type_obj" :named("name"), "register" :named("scope"), 1 :named("isdecl"))
.annotate 'line', 391
    get_hll_global $P175, ["PAST"], "Op"
.annotate 'line', 393
    get_hll_global $P176, ["PAST"], "Var"
    find_lex $P177, "$/"
    unless_null $P177, vivify_182
    $P177 = root_new ['parrot';'Hash']
  vivify_182:
    set $P178, $P177["sym"]
    unless_null $P178, vivify_183
    new $P178, "Undef"
  vivify_183:
    set $S179, $P178
    find_dynamic_lex $P180, "%*HOW"
    unless_null $P180, vivify_184
    get_hll_global $P180, "%HOW"
    unless_null $P180, vivify_185
    die "Contextual %*HOW not found"
  vivify_185:
  vivify_184:
    set $P181, $P180[$S179]
    unless_null $P181, vivify_186
    new $P181, "Undef"
  vivify_186:
    $P182 = $P176."new"($P181 :named("name"), "" :named("namespace"), "package" :named("scope"))
.annotate 'line', 394
    get_hll_global $P183, ["PAST"], "Val"
    find_lex $P184, "$name"
    $P185 = $P183."new"($P184 :named("value"), "name" :named("named"))
    $P186 = $P175."new"($P182, $P185, "callmethod" :named("pasttype"), "new_type" :named("name"))
.annotate 'line', 391
    $P187 = $P172."new"($P174, $P186, "bind" :named("pasttype"))
.annotate 'line', 397
    get_hll_global $P188, ["PAST"], "Op"
.annotate 'line', 398
    get_hll_global $P189, ["PAST"], "Var"
    find_lex $P190, "$name"
    find_lex $P191, "@ns"
    $P192 = $P189."new"($P190 :named("name"), $P191 :named("namespace"), "package" :named("scope"))
.annotate 'line', 399
    get_hll_global $P193, ["PAST"], "Var"
    $P194 = $P193."new"("type_obj" :named("name"), "register" :named("scope"))
    $P195 = $P188."new"($P192, $P194, "bind" :named("pasttype"))
.annotate 'line', 401
    get_hll_global $P196, ["PAST"], "Op"
.annotate 'line', 402
    get_hll_global $P197, ["PAST"], "Var"
    $P198 = $P197."new"("$?CLASS" :named("name"))
.annotate 'line', 403
    get_hll_global $P199, ["PAST"], "Var"
    $P200 = $P199."new"("type_obj" :named("name"), "register" :named("scope"))
    $P201 = $P196."new"($P198, $P200, "bind" :named("pasttype"))
.annotate 'line', 401
    $P202 = $P171."new"($P187, $P195, $P201)
.annotate 'line', 388
    $P170."unshift"($P202)
.annotate 'line', 407
    find_lex $P204, "$/"
    unless_null $P204, vivify_187
    $P204 = root_new ['parrot';'Hash']
  vivify_187:
    set $P205, $P204["package_def"]
    unless_null $P205, vivify_188
    $P205 = root_new ['parrot';'Hash']
  vivify_188:
    set $P206, $P205["repr"]
    unless_null $P206, vivify_189
    new $P206, "Undef"
  vivify_189:
    unless $P206, if_203_end
    .const 'Sub' $P208 = "20_1294786958.359" 
    capture_lex $P208
    $P208()
  if_203_end:
.annotate 'line', 415
    find_lex $P223, "$/"
    unless_null $P223, vivify_199
    $P223 = root_new ['parrot';'Hash']
  vivify_199:
    set $P224, $P223["package_def"]
    unless_null $P224, vivify_200
    $P224 = root_new ['parrot';'Hash']
  vivify_200:
    set $P225, $P224["parent"]
    unless_null $P225, vivify_201
    new $P225, "Undef"
  vivify_201:
    unless $P225, if_222_end
    .const 'Sub' $P227 = "21_1294786958.359" 
    capture_lex $P227
    $P227()
  if_222_end:
.annotate 'line', 431
    find_dynamic_lex $P255, "$*PACKAGE-SETUP"
    unless_null $P255, vivify_209
    get_hll_global $P255, "$PACKAGE-SETUP"
    unless_null $P255, vivify_210
    die "Contextual $*PACKAGE-SETUP not found"
  vivify_210:
  vivify_209:
    get_hll_global $P256, ["PAST"], "Op"
.annotate 'line', 433
    get_hll_global $P257, ["PAST"], "Op"
.annotate 'line', 436
    get_hll_global $P258, ["PAST"], "Var"
    $P259 = $P258."new"("type_obj" :named("name"), "register" :named("scope"))
    $P260 = $P257."new"($P259, "get_how PP" :named("pirop"))
.annotate 'line', 438
    get_hll_global $P261, ["PAST"], "Var"
    $P262 = $P261."new"("type_obj" :named("name"), "register" :named("scope"))
    $P263 = $P256."new"($P260, $P262, "callmethod" :named("pasttype"), "compose" :named("name"))
.annotate 'line', 431
    $P255."push"($P263)
.annotate 'line', 442
    get_global $P264, "@BLOCK"
    unless_null $P264, vivify_211
    $P264 = root_new ['parrot';'ResizablePMCArray']
  vivify_211:
    set $P265, $P264[0]
    unless_null $P265, vivify_212
    $P265 = root_new ['parrot';'ResizablePMCArray']
  vivify_212:
    set $P266, $P265[0]
    unless_null $P266, vivify_213
    new $P266, "Undef"
  vivify_213:
    get_hll_global $P267, ["PAST"], "Var"
    find_lex $P268, "$name"
    find_lex $P269, "@ns"
    $P270 = $P267."new"($P268 :named("name"), $P269 :named("namespace"), "package" :named("scope"), 1 :named("isdecl"))
    $P266."unshift"($P270)
.annotate 'line', 446
    find_lex $P271, "$/"
    unless_null $P271, vivify_214
    $P271 = root_new ['parrot';'Hash']
  vivify_214:
    set $P272, $P271["package_def"]
    unless_null $P272, vivify_215
    new $P272, "Undef"
  vivify_215:
    $P273 = $P272."ast"()
    store_lex "$past", $P273
.annotate 'line', 447
    find_lex $P274, "$past"
    get_hll_global $P275, ["PAST"], "Var"
    $P276 = $P275."new"("$?CLASS" :named("name"), "package" :named("scope"), 1 :named("isdecl"))
    $P274."unshift"($P276)
.annotate 'line', 448
    find_lex $P277, "$past"
    $P277."symbol"("$?CLASS", "package" :named("scope"))
.annotate 'line', 451
    find_lex $P278, "$past"
    $P279 = $P278."loadinit"()
    get_hll_global $P280, ["PAST"], "Block"
    find_dynamic_lex $P281, "$*PACKAGE-SETUP"
    unless_null $P281, vivify_216
    get_hll_global $P281, "$PACKAGE-SETUP"
    unless_null $P281, vivify_217
    die "Contextual $*PACKAGE-SETUP not found"
  vivify_217:
  vivify_216:
    $P282 = $P280."new"($P281, "immediate" :named("blocktype"))
    $P279."push"($P282)
.annotate 'line', 453
    new $P283, "Exception"
    set $P283['type'], .CONTROL_RETURN
    find_lex $P284, "$past"
    setattribute $P283, 'payload', $P284
    throw $P283
.annotate 'line', 382
    .return ()
  control_155:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P285, exception, "payload"
    .return ($P285)
.end


.namespace ["NQP";"Actions"]
.sub "_block207"  :anon :subid("20_1294786958.359") :outer("19_1294786958.359")
.annotate 'line', 408
    new $P209, "Undef"
    .lex "$repr_name", $P209
    find_lex $P210, "$/"
    unless_null $P210, vivify_190
    $P210 = root_new ['parrot';'Hash']
  vivify_190:
    set $P211, $P210["package_def"]
    unless_null $P211, vivify_191
    $P211 = root_new ['parrot';'Hash']
  vivify_191:
    set $P212, $P211["repr"]
    unless_null $P212, vivify_192
    $P212 = root_new ['parrot';'ResizablePMCArray']
  vivify_192:
    set $P213, $P212[0]
    unless_null $P213, vivify_193
    new $P213, "Undef"
  vivify_193:
    $P214 = $P213."ast"()
    store_lex "$repr_name", $P214
.annotate 'line', 409
    find_lex $P215, "$repr_name"
    $P215."named"("repr")
.annotate 'line', 410
    find_dynamic_lex $P216, "$*PACKAGE-SETUP"
    unless_null $P216, vivify_194
    get_hll_global $P216, "$PACKAGE-SETUP"
    unless_null $P216, vivify_195
    die "Contextual $*PACKAGE-SETUP not found"
  vivify_195:
  vivify_194:
    set $P217, $P216[0]
    unless_null $P217, vivify_196
    $P217 = root_new ['parrot';'ResizablePMCArray']
  vivify_196:
    set $P218, $P217[0]
    unless_null $P218, vivify_197
    $P218 = root_new ['parrot';'ResizablePMCArray']
  vivify_197:
    set $P219, $P218[1]
    unless_null $P219, vivify_198
    new $P219, "Undef"
  vivify_198:
    find_lex $P220, "$repr_name"
    $P221 = $P219."push"($P220)
.annotate 'line', 407
    .return ($P221)
.end


.namespace ["NQP";"Actions"]
.sub "_block226"  :anon :subid("21_1294786958.359") :outer("19_1294786958.359")
.annotate 'line', 416
    $P228 = root_new ['parrot';'ResizablePMCArray']
    .lex "@ns", $P228
.annotate 'line', 417
    new $P229, "Undef"
    .lex "$name", $P229
.annotate 'line', 416
    find_lex $P230, "$/"
    unless_null $P230, vivify_202
    $P230 = root_new ['parrot';'Hash']
  vivify_202:
    set $P231, $P230["package_def"]
    unless_null $P231, vivify_203
    $P231 = root_new ['parrot';'Hash']
  vivify_203:
    set $P232, $P231["parent"]
    unless_null $P232, vivify_204
    $P232 = root_new ['parrot';'ResizablePMCArray']
  vivify_204:
    set $P233, $P232[0]
    unless_null $P233, vivify_205
    $P233 = root_new ['parrot';'Hash']
  vivify_205:
    set $P234, $P233["identifier"]
    unless_null $P234, vivify_206
    new $P234, "Undef"
  vivify_206:
    clone $P235, $P234
    store_lex "@ns", $P235
.annotate 'line', 417
    find_lex $P236, "@ns"
    $P237 = $P236."pop"()
    set $S238, $P237
    new $P239, 'String'
    set $P239, $S238
    store_lex "$name", $P239
.annotate 'line', 418
    find_dynamic_lex $P240, "$*PACKAGE-SETUP"
    unless_null $P240, vivify_207
    get_hll_global $P240, "$PACKAGE-SETUP"
    unless_null $P240, vivify_208
    die "Contextual $*PACKAGE-SETUP not found"
  vivify_208:
  vivify_207:
    get_hll_global $P241, ["PAST"], "Op"
.annotate 'line', 420
    get_hll_global $P242, ["PAST"], "Op"
.annotate 'line', 423
    get_hll_global $P243, ["PAST"], "Var"
    $P244 = $P243."new"("type_obj" :named("name"), "register" :named("scope"))
    $P245 = $P242."new"($P244, "get_how PP" :named("pirop"))
.annotate 'line', 425
    get_hll_global $P246, ["PAST"], "Var"
    $P247 = $P246."new"("type_obj" :named("name"), "register" :named("scope"))
.annotate 'line', 426
    get_hll_global $P248, ["PAST"], "Var"
    find_lex $P249, "$name"
    set $S250, $P249
    find_lex $P251, "@ns"
    $P252 = $P248."new"($S250 :named("name"), $P251 :named("namespace"), "package" :named("scope"))
    $P253 = $P241."new"($P245, $P247, $P252, "callmethod" :named("pasttype"), "add_parent" :named("name"))
.annotate 'line', 418
    $P254 = $P240."push"($P253)
.annotate 'line', 415
    .return ($P254)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "old_package"  :subid("22_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_290
.annotate 'line', 458
    new $P289, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P289, control_288
    push_eh $P289
    .lex "$/", param_290
.annotate 'line', 459
    new $P291, "Undef"
    .lex "$past", $P291
.annotate 'line', 460
    new $P292, "Undef"
    .lex "$classinit", $P292
.annotate 'line', 469
    new $P293, "Undef"
    .lex "$parent", $P293
.annotate 'line', 459
    find_lex $P294, "$/"
    unless_null $P294, vivify_218
    $P294 = root_new ['parrot';'Hash']
  vivify_218:
    set $P295, $P294["package_def"]
    unless_null $P295, vivify_219
    new $P295, "Undef"
  vivify_219:
    $P296 = $P295."ast"()
    store_lex "$past", $P296
.annotate 'line', 461
    get_hll_global $P297, ["PAST"], "Op"
.annotate 'line', 462
    get_hll_global $P298, ["PAST"], "Op"
    $P299 = $P298."new"("    %r = get_root_global [\"parrot\"], \"P6metaclass\"" :named("inline"))
.annotate 'line', 465
    find_lex $P300, "$/"
    unless_null $P300, vivify_220
    $P300 = root_new ['parrot';'Hash']
  vivify_220:
    set $P301, $P300["package_def"]
    unless_null $P301, vivify_221
    $P301 = root_new ['parrot';'Hash']
  vivify_221:
    set $P302, $P301["name"]
    unless_null $P302, vivify_222
    new $P302, "Undef"
  vivify_222:
    set $S303, $P302
    $P304 = $P297."new"($P299, $S303, "new_class" :named("name"), "callmethod" :named("pasttype"))
.annotate 'line', 461
    store_lex "$classinit", $P304
.annotate 'line', 469
    find_lex $P307, "$/"
    unless_null $P307, vivify_223
    $P307 = root_new ['parrot';'Hash']
  vivify_223:
    set $P308, $P307["package_def"]
    unless_null $P308, vivify_224
    $P308 = root_new ['parrot';'Hash']
  vivify_224:
    set $P309, $P308["parent"]
    unless_null $P309, vivify_225
    $P309 = root_new ['parrot';'ResizablePMCArray']
  vivify_225:
    set $P310, $P309[0]
    unless_null $P310, vivify_226
    new $P310, "Undef"
  vivify_226:
    set $S311, $P310
    unless $S311, unless_306
    new $P305, 'String'
    set $P305, $S311
    goto unless_306_end
  unless_306:
.annotate 'line', 470
    find_lex $P314, "$/"
    unless_null $P314, vivify_227
    $P314 = root_new ['parrot';'Hash']
  vivify_227:
    set $P315, $P314["sym"]
    unless_null $P315, vivify_228
    new $P315, "Undef"
  vivify_228:
    set $S316, $P315
    iseq $I317, $S316, "grammar"
    if $I317, if_313
    new $P319, "String"
    assign $P319, ""
    set $P312, $P319
    goto if_313_end
  if_313:
    new $P318, "String"
    assign $P318, "Regex::Cursor"
    set $P312, $P318
  if_313_end:
    set $P305, $P312
  unless_306_end:
    store_lex "$parent", $P305
.annotate 'line', 471
    find_lex $P321, "$parent"
    unless $P321, if_320_end
.annotate 'line', 472
    find_lex $P322, "$classinit"
    get_hll_global $P323, ["PAST"], "Val"
    find_lex $P324, "$parent"
    $P325 = $P323."new"($P324 :named("value"), "parent" :named("named"))
    $P322."push"($P325)
  if_320_end:
.annotate 'line', 474
    find_lex $P327, "$past"
    unless_null $P327, vivify_229
    $P327 = root_new ['parrot';'Hash']
  vivify_229:
    set $P328, $P327["attributes"]
    unless_null $P328, vivify_230
    new $P328, "Undef"
  vivify_230:
    unless $P328, if_326_end
.annotate 'line', 475
    find_lex $P329, "$classinit"
    find_lex $P330, "$past"
    unless_null $P330, vivify_231
    $P330 = root_new ['parrot';'Hash']
  vivify_231:
    set $P331, $P330["attributes"]
    unless_null $P331, vivify_232
    new $P331, "Undef"
  vivify_232:
    $P329."push"($P331)
  if_326_end:
.annotate 'line', 477
    get_global $P332, "@BLOCK"
    unless_null $P332, vivify_233
    $P332 = root_new ['parrot';'ResizablePMCArray']
  vivify_233:
    set $P333, $P332[0]
    unless_null $P333, vivify_234
    new $P333, "Undef"
  vivify_234:
    $P334 = $P333."loadinit"()
    find_lex $P335, "$classinit"
    $P334."push"($P335)
.annotate 'line', 478
    find_lex $P336, "$/"
    find_lex $P337, "$past"
    $P338 = $P336."!make"($P337)
.annotate 'line', 458
    .return ($P338)
  control_288:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P339, exception, "payload"
    .return ($P339)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "control"  :subid("23_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_344
    .param pmc param_345
.annotate 'line', 1017
    new $P343, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P343, control_342
    push_eh $P343
    .lex "$/", param_344
    .lex "$type", param_345
.annotate 'line', 1018
    find_lex $P346, "$/"
    get_hll_global $P347, ["PAST"], "Op"
    find_lex $P348, "$/"
.annotate 'line', 1022
    get_hll_global $P349, ["PAST"], "Val"
    find_lex $P350, "$type"
    $P351 = $P349."new"($P350 :named("value"), "!except_types" :named("returns"))
    $P352 = $P347."new"(0, $P351, $P348 :named("node"), "die__vii" :named("pirop"))
.annotate 'line', 1018
    $P353 = $P346."!make"($P352)
.annotate 'line', 1017
    .return ($P353)
  control_342:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P354, exception, "payload"
    .return ($P354)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "TOP"  :subid("24_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_363
    .param pmc param_364
.annotate 'line', 33
    new $P362, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P362, control_361
    push_eh $P362
    .lex "self", param_363
    .lex "$/", param_364
    find_lex $P365, "$/"
    find_lex $P366, "$/"
    unless_null $P366, vivify_235
    $P366 = root_new ['parrot';'Hash']
  vivify_235:
    set $P367, $P366["comp_unit"]
    unless_null $P367, vivify_236
    new $P367, "Undef"
  vivify_236:
    $P368 = $P367."ast"()
    $P369 = $P365."!make"($P368)
    .return ($P369)
  control_361:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P370, exception, "payload"
    .return ($P370)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "deflongname"  :subid("25_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_374
    .param pmc param_375
.annotate 'line', 35
    new $P373, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P373, control_372
    push_eh $P373
    .lex "self", param_374
    .lex "$/", param_375
.annotate 'line', 36
    find_lex $P376, "$/"
.annotate 'line', 37
    find_lex $P379, "$/"
    unless_null $P379, vivify_237
    $P379 = root_new ['parrot';'Hash']
  vivify_237:
    set $P380, $P379["colonpair"]
    unless_null $P380, vivify_238
    new $P380, "Undef"
  vivify_238:
    if $P380, if_378
.annotate 'line', 39
    find_lex $P400, "$/"
    set $S401, $P400
    new $P377, 'String'
    set $P377, $S401
.annotate 'line', 37
    goto if_378_end
  if_378:
    find_lex $P381, "$/"
    unless_null $P381, vivify_239
    $P381 = root_new ['parrot';'Hash']
  vivify_239:
    set $P382, $P381["identifier"]
    unless_null $P382, vivify_240
    new $P382, "Undef"
  vivify_240:
    set $S383, $P382
    new $P384, 'String'
    set $P384, $S383
    concat $P385, $P384, ":"
    find_lex $P386, "$/"
    unless_null $P386, vivify_241
    $P386 = root_new ['parrot';'Hash']
  vivify_241:
    set $P387, $P386["colonpair"]
    unless_null $P387, vivify_242
    $P387 = root_new ['parrot';'ResizablePMCArray']
  vivify_242:
    set $P388, $P387[0]
    unless_null $P388, vivify_243
    new $P388, "Undef"
  vivify_243:
    $P389 = $P388."ast"()
    $S390 = $P389."named"()
    concat $P391, $P385, $S390
    concat $P392, $P391, "<"
.annotate 'line', 38
    find_lex $P393, "$/"
    unless_null $P393, vivify_244
    $P393 = root_new ['parrot';'Hash']
  vivify_244:
    set $P394, $P393["colonpair"]
    unless_null $P394, vivify_245
    $P394 = root_new ['parrot';'ResizablePMCArray']
  vivify_245:
    set $P395, $P394[0]
    unless_null $P395, vivify_246
    new $P395, "Undef"
  vivify_246:
    $P396 = $P395."ast"()
    $S397 = "colonpair_str"($P396)
    concat $P398, $P392, $S397
    concat $P399, $P398, ">"
    set $P377, $P399
  if_378_end:
.annotate 'line', 37
    $P402 = $P376."!make"($P377)
.annotate 'line', 35
    .return ($P402)
  control_372:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P403, exception, "payload"
    .return ($P403)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "comp_unit"  :subid("26_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_408
    .param pmc param_409
.annotate 'line', 49
    new $P407, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P407, control_406
    push_eh $P407
    .lex "self", param_408
    .lex "$/", param_409
.annotate 'line', 50
    new $P410, "Undef"
    .lex "$mainline", $P410
.annotate 'line', 51
    new $P411, "Undef"
    .lex "$unit", $P411
.annotate 'line', 50
    find_lex $P412, "$/"
    unless_null $P412, vivify_247
    $P412 = root_new ['parrot';'Hash']
  vivify_247:
    set $P413, $P412["statementlist"]
    unless_null $P413, vivify_248
    new $P413, "Undef"
  vivify_248:
    $P414 = $P413."ast"()
    store_lex "$mainline", $P414
.annotate 'line', 51
    get_global $P415, "@BLOCK"
    $P416 = $P415."shift"()
    store_lex "$unit", $P416
.annotate 'line', 55
    find_lex $P417, "$unit"
    find_lex $P418, "self"
    $P419 = $P418."CTXSAVE"()
    $P417."push"($P419)
.annotate 'line', 58
    find_lex $P420, "$unit"
    $P420."loadlibs"("nqp_group", "nqp_ops")
.annotate 'line', 59
    find_lex $P421, "$unit"
    get_hll_global $P422, ["PAST"], "Op"
    $P423 = $P422."new"("nqp_dynop_setup v" :named("pirop"))
    $P421."unshift"($P423)
.annotate 'line', 64
    find_lex $P424, "$unit"
.annotate 'line', 65
    get_hll_global $P425, ["PAST"], "Op"
    find_lex $P426, "$mainline"
    $P427 = $P425."new"($P426, "return" :named("pirop"))
    $P424."push"($P427)
.annotate 'line', 70
    find_lex $P428, "$unit"
.annotate 'line', 71
    get_hll_global $P429, ["PAST"], "Block"
.annotate 'line', 73
    get_hll_global $P430, ["PAST"], "Op"
    get_hll_global $P431, ["PAST"], "Val"
    find_lex $P432, "$unit"
    $P433 = $P431."new"($P432 :named("value"))
    $P434 = $P430."new"($P433, "call" :named("pasttype"))
    $P435 = $P429."new"($P434, ":load" :named("pirflags"), 0 :named("lexical"), "" :named("namespace"))
.annotate 'line', 71
    $P428."push"($P435)
.annotate 'line', 76
    find_lex $P436, "$unit"
    find_lex $P437, "$/"
    $P436."node"($P437)
.annotate 'line', 77
    find_lex $P438, "$/"
    find_lex $P439, "$unit"
    $P440 = $P438."!make"($P439)
.annotate 'line', 49
    .return ($P440)
  control_406:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P441, exception, "payload"
    .return ($P441)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "statementlist"  :subid("27_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_445
    .param pmc param_446
.annotate 'line', 80
    .const 'Sub' $P460 = "28_1294786958.359" 
    capture_lex $P460
    new $P444, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P444, control_443
    push_eh $P444
    .lex "self", param_445
    .lex "$/", param_446
.annotate 'line', 81
    new $P447, "Undef"
    .lex "$past", $P447
    get_hll_global $P448, ["PAST"], "Stmts"
    find_lex $P449, "$/"
    $P450 = $P448."new"($P449 :named("node"))
    store_lex "$past", $P450
.annotate 'line', 82
    find_lex $P452, "$/"
    unless_null $P452, vivify_249
    $P452 = root_new ['parrot';'Hash']
  vivify_249:
    set $P453, $P452["statement"]
    unless_null $P453, vivify_250
    new $P453, "Undef"
  vivify_250:
    unless $P453, if_451_end
.annotate 'line', 83
    find_lex $P455, "$/"
    unless_null $P455, vivify_251
    $P455 = root_new ['parrot';'Hash']
  vivify_251:
    set $P456, $P455["statement"]
    unless_null $P456, vivify_252
    new $P456, "Undef"
  vivify_252:
    defined $I457, $P456
    unless $I457, for_undef_253
    iter $P454, $P456
    new $P480, 'ExceptionHandler'
    set_addr $P480, loop479_handler
    $P480."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P480
  loop479_test:
    unless $P454, loop479_done
    shift $P458, $P454
  loop479_redo:
    .const 'Sub' $P460 = "28_1294786958.359" 
    capture_lex $P460
    $P460($P458)
  loop479_next:
    goto loop479_test
  loop479_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P481, exception, 'type'
    eq $P481, .CONTROL_LOOP_NEXT, loop479_next
    eq $P481, .CONTROL_LOOP_REDO, loop479_redo
  loop479_done:
    pop_eh 
  for_undef_253:
  if_451_end:
.annotate 'line', 90
    find_lex $P482, "$/"
    find_lex $P483, "$past"
    $P484 = $P482."!make"($P483)
.annotate 'line', 80
    .return ($P484)
  control_443:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P485, exception, "payload"
    .return ($P485)
.end


.namespace ["NQP";"Actions"]
.sub "_block459"  :anon :subid("28_1294786958.359") :outer("27_1294786958.359")
    .param pmc param_462
.annotate 'line', 84
    new $P461, "Undef"
    .lex "$ast", $P461
    .lex "$_", param_462
    find_lex $P463, "$_"
    $P464 = $P463."ast"()
    store_lex "$ast", $P464
.annotate 'line', 85
    find_lex $P466, "$ast"
    unless_null $P466, vivify_254
    $P466 = root_new ['parrot';'Hash']
  vivify_254:
    set $P467, $P466["sink"]
    unless_null $P467, vivify_255
    new $P467, "Undef"
  vivify_255:
    defined $I468, $P467
    unless $I468, if_465_end
    find_lex $P469, "$ast"
    unless_null $P469, vivify_256
    $P469 = root_new ['parrot';'Hash']
  vivify_256:
    set $P470, $P469["sink"]
    unless_null $P470, vivify_257
    new $P470, "Undef"
  vivify_257:
    store_lex "$ast", $P470
  if_465_end:
.annotate 'line', 86
    find_lex $P472, "$ast"
    unless_null $P472, vivify_258
    $P472 = root_new ['parrot';'Hash']
  vivify_258:
    set $P473, $P472["bareblock"]
    unless_null $P473, vivify_259
    new $P473, "Undef"
  vivify_259:
    unless $P473, if_471_end
    find_lex $P474, "$ast"
    $P475 = "block_immediate"($P474)
    store_lex "$ast", $P475
  if_471_end:
.annotate 'line', 87
    find_lex $P476, "$past"
    find_lex $P477, "$ast"
    $P478 = $P476."push"($P477)
.annotate 'line', 83
    .return ($P478)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "statement"  :subid("29_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_489
    .param pmc param_490
    .param pmc param_491 :optional
    .param int has_param_491 :opt_flag
.annotate 'line', 93
    .const 'Sub' $P499 = "30_1294786958.359" 
    capture_lex $P499
    new $P488, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P488, control_487
    push_eh $P488
    .lex "self", param_489
    .lex "$/", param_490
    if has_param_491, optparam_260
    new $P492, "Undef"
    set param_491, $P492
  optparam_260:
    .lex "$key", param_491
.annotate 'line', 94
    new $P493, "Undef"
    .lex "$past", $P493
.annotate 'line', 93
    find_lex $P494, "$past"
.annotate 'line', 95
    find_lex $P496, "$/"
    unless_null $P496, vivify_261
    $P496 = root_new ['parrot';'Hash']
  vivify_261:
    set $P497, $P496["EXPR"]
    unless_null $P497, vivify_262
    new $P497, "Undef"
  vivify_262:
    if $P497, if_495
.annotate 'line', 116
    find_lex $P560, "$/"
    unless_null $P560, vivify_263
    $P560 = root_new ['parrot';'Hash']
  vivify_263:
    set $P561, $P560["statement_control"]
    unless_null $P561, vivify_264
    new $P561, "Undef"
  vivify_264:
    if $P561, if_559
.annotate 'line', 117
    new $P565, "Integer"
    assign $P565, 0
    store_lex "$past", $P565
    goto if_559_end
  if_559:
.annotate 'line', 116
    find_lex $P562, "$/"
    unless_null $P562, vivify_265
    $P562 = root_new ['parrot';'Hash']
  vivify_265:
    set $P563, $P562["statement_control"]
    unless_null $P563, vivify_266
    new $P563, "Undef"
  vivify_266:
    $P564 = $P563."ast"()
    store_lex "$past", $P564
  if_559_end:
    goto if_495_end
  if_495:
.annotate 'line', 95
    .const 'Sub' $P499 = "30_1294786958.359" 
    capture_lex $P499
    $P499()
  if_495_end:
.annotate 'line', 118
    find_lex $P566, "$/"
    find_lex $P567, "$past"
    $P568 = $P566."!make"($P567)
.annotate 'line', 93
    .return ($P568)
  control_487:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P569, exception, "payload"
    .return ($P569)
.end


.namespace ["NQP";"Actions"]
.sub "_block498"  :anon :subid("30_1294786958.359") :outer("29_1294786958.359")
.annotate 'line', 96
    new $P500, "Undef"
    .lex "$mc", $P500
.annotate 'line', 97
    new $P501, "Undef"
    .lex "$ml", $P501
.annotate 'line', 96
    find_lex $P502, "$/"
    unless_null $P502, vivify_267
    $P502 = root_new ['parrot';'Hash']
  vivify_267:
    set $P503, $P502["statement_mod_cond"]
    unless_null $P503, vivify_268
    $P503 = root_new ['parrot';'ResizablePMCArray']
  vivify_268:
    set $P504, $P503[0]
    unless_null $P504, vivify_269
    new $P504, "Undef"
  vivify_269:
    store_lex "$mc", $P504
.annotate 'line', 97
    find_lex $P505, "$/"
    unless_null $P505, vivify_270
    $P505 = root_new ['parrot';'Hash']
  vivify_270:
    set $P506, $P505["statement_mod_loop"]
    unless_null $P506, vivify_271
    $P506 = root_new ['parrot';'ResizablePMCArray']
  vivify_271:
    set $P507, $P506[0]
    unless_null $P507, vivify_272
    new $P507, "Undef"
  vivify_272:
    store_lex "$ml", $P507
.annotate 'line', 98
    find_lex $P508, "$/"
    unless_null $P508, vivify_273
    $P508 = root_new ['parrot';'Hash']
  vivify_273:
    set $P509, $P508["EXPR"]
    unless_null $P509, vivify_274
    new $P509, "Undef"
  vivify_274:
    $P510 = $P509."ast"()
    store_lex "$past", $P510
.annotate 'line', 99
    find_lex $P512, "$mc"
    unless $P512, if_511_end
.annotate 'line', 100
    get_hll_global $P513, ["PAST"], "Op"
    find_lex $P514, "$mc"
    unless_null $P514, vivify_275
    $P514 = root_new ['parrot';'Hash']
  vivify_275:
    set $P515, $P514["cond"]
    unless_null $P515, vivify_276
    new $P515, "Undef"
  vivify_276:
    $P516 = $P515."ast"()
    find_lex $P517, "$past"
    find_lex $P518, "$mc"
    unless_null $P518, vivify_277
    $P518 = root_new ['parrot';'Hash']
  vivify_277:
    set $P519, $P518["sym"]
    unless_null $P519, vivify_278
    new $P519, "Undef"
  vivify_278:
    set $S520, $P519
    find_lex $P521, "$/"
    $P522 = $P513."new"($P516, $P517, $S520 :named("pasttype"), $P521 :named("node"))
    store_lex "$past", $P522
  if_511_end:
.annotate 'line', 102
    find_lex $P525, "$ml"
    if $P525, if_524
    set $P523, $P525
    goto if_524_end
  if_524:
.annotate 'line', 103
    find_lex $P528, "$ml"
    unless_null $P528, vivify_279
    $P528 = root_new ['parrot';'Hash']
  vivify_279:
    set $P529, $P528["sym"]
    unless_null $P529, vivify_280
    new $P529, "Undef"
  vivify_280:
    set $S530, $P529
    iseq $I531, $S530, "for"
    if $I531, if_527
.annotate 'line', 112
    get_hll_global $P549, ["PAST"], "Op"
    find_lex $P550, "$ml"
    unless_null $P550, vivify_281
    $P550 = root_new ['parrot';'Hash']
  vivify_281:
    set $P551, $P550["cond"]
    unless_null $P551, vivify_282
    new $P551, "Undef"
  vivify_282:
    $P552 = $P551."ast"()
    find_lex $P553, "$past"
    find_lex $P554, "$ml"
    unless_null $P554, vivify_283
    $P554 = root_new ['parrot';'Hash']
  vivify_283:
    set $P555, $P554["sym"]
    unless_null $P555, vivify_284
    new $P555, "Undef"
  vivify_284:
    set $S556, $P555
    find_lex $P557, "$/"
    $P558 = $P549."new"($P552, $P553, $S556 :named("pasttype"), $P557 :named("node"))
    store_lex "$past", $P558
.annotate 'line', 111
    set $P526, $P558
.annotate 'line', 103
    goto if_527_end
  if_527:
.annotate 'line', 104
    get_hll_global $P532, ["PAST"], "Block"
.annotate 'line', 105
    get_hll_global $P533, ["PAST"], "Var"
    $P534 = $P533."new"("$_" :named("name"), "parameter" :named("scope"), 1 :named("isdecl"))
    find_lex $P535, "$past"
    $P536 = $P532."new"($P534, $P535, "immediate" :named("blocktype"))
.annotate 'line', 104
    store_lex "$past", $P536
.annotate 'line', 107
    find_lex $P537, "$past"
    $P537."symbol"("$_", "lexical" :named("scope"))
.annotate 'line', 108
    find_lex $P538, "$past"
    $P538."arity"(1)
.annotate 'line', 109
    get_hll_global $P539, ["PAST"], "Op"
    find_lex $P540, "$ml"
    unless_null $P540, vivify_285
    $P540 = root_new ['parrot';'Hash']
  vivify_285:
    set $P541, $P540["cond"]
    unless_null $P541, vivify_286
    new $P541, "Undef"
  vivify_286:
    $P542 = $P541."ast"()
    find_lex $P543, "$past"
    find_lex $P544, "$ml"
    unless_null $P544, vivify_287
    $P544 = root_new ['parrot';'Hash']
  vivify_287:
    set $P545, $P544["sym"]
    unless_null $P545, vivify_288
    new $P545, "Undef"
  vivify_288:
    set $S546, $P545
    find_lex $P547, "$/"
    $P548 = $P539."new"($P542, $P543, $S546 :named("pasttype"), $P547 :named("node"))
    store_lex "$past", $P548
.annotate 'line', 103
    set $P526, $P548
  if_527_end:
.annotate 'line', 102
    set $P523, $P526
  if_524_end:
.annotate 'line', 95
    .return ($P523)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "xblock"  :subid("31_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_573
    .param pmc param_574
.annotate 'line', 121
    new $P572, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P572, control_571
    push_eh $P572
    .lex "self", param_573
    .lex "$/", param_574
.annotate 'line', 122
    find_lex $P575, "$/"
    get_hll_global $P576, ["PAST"], "Op"
    find_lex $P577, "$/"
    unless_null $P577, vivify_289
    $P577 = root_new ['parrot';'Hash']
  vivify_289:
    set $P578, $P577["EXPR"]
    unless_null $P578, vivify_290
    new $P578, "Undef"
  vivify_290:
    $P579 = $P578."ast"()
    find_lex $P580, "$/"
    unless_null $P580, vivify_291
    $P580 = root_new ['parrot';'Hash']
  vivify_291:
    set $P581, $P580["pblock"]
    unless_null $P581, vivify_292
    new $P581, "Undef"
  vivify_292:
    $P582 = $P581."ast"()
    find_lex $P583, "$/"
    $P584 = $P576."new"($P579, $P582, "if" :named("pasttype"), $P583 :named("node"))
    $P585 = $P575."!make"($P584)
.annotate 'line', 121
    .return ($P585)
  control_571:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P586, exception, "payload"
    .return ($P586)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "pblock"  :subid("32_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_590
    .param pmc param_591
.annotate 'line', 125
    new $P589, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P589, control_588
    push_eh $P589
    .lex "self", param_590
    .lex "$/", param_591
.annotate 'line', 126
    find_lex $P592, "$/"
    find_lex $P593, "$/"
    unless_null $P593, vivify_293
    $P593 = root_new ['parrot';'Hash']
  vivify_293:
    set $P594, $P593["blockoid"]
    unless_null $P594, vivify_294
    new $P594, "Undef"
  vivify_294:
    $P595 = $P594."ast"()
    $P596 = $P592."!make"($P595)
.annotate 'line', 125
    .return ($P596)
  control_588:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P597, exception, "payload"
    .return ($P597)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "block"  :subid("33_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_601
    .param pmc param_602
.annotate 'line', 129
    new $P600, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P600, control_599
    push_eh $P600
    .lex "self", param_601
    .lex "$/", param_602
.annotate 'line', 130
    find_lex $P603, "$/"
    find_lex $P604, "$/"
    unless_null $P604, vivify_295
    $P604 = root_new ['parrot';'Hash']
  vivify_295:
    set $P605, $P604["blockoid"]
    unless_null $P605, vivify_296
    new $P605, "Undef"
  vivify_296:
    $P606 = $P605."ast"()
    $P607 = $P603."!make"($P606)
.annotate 'line', 129
    .return ($P607)
  control_599:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P608, exception, "payload"
    .return ($P608)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "blockoid"  :subid("34_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_612
    .param pmc param_613
.annotate 'line', 133
    new $P611, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P611, control_610
    push_eh $P611
    .lex "self", param_612
    .lex "$/", param_613
.annotate 'line', 134
    new $P614, "Undef"
    .lex "$past", $P614
.annotate 'line', 135
    new $P615, "Undef"
    .lex "$BLOCK", $P615
.annotate 'line', 134
    find_lex $P616, "$/"
    unless_null $P616, vivify_297
    $P616 = root_new ['parrot';'Hash']
  vivify_297:
    set $P617, $P616["statementlist"]
    unless_null $P617, vivify_298
    new $P617, "Undef"
  vivify_298:
    $P618 = $P617."ast"()
    store_lex "$past", $P618
.annotate 'line', 135
    get_global $P619, "@BLOCK"
    $P620 = $P619."shift"()
    store_lex "$BLOCK", $P620
.annotate 'line', 136
    find_lex $P621, "$BLOCK"
    find_lex $P622, "$past"
    $P621."push"($P622)
.annotate 'line', 137
    find_lex $P623, "$BLOCK"
    find_lex $P624, "$/"
    $P623."node"($P624)
.annotate 'line', 138
    find_lex $P625, "$BLOCK"
    $P625."closure"(1)
.annotate 'line', 139
    find_lex $P626, "$/"
    find_lex $P627, "$BLOCK"
    $P628 = $P626."!make"($P627)
.annotate 'line', 133
    .return ($P628)
  control_610:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P629, exception, "payload"
    .return ($P629)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "newpad"  :subid("35_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_633
    .param pmc param_634
.annotate 'line', 142
    new $P632, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P632, control_631
    push_eh $P632
    .lex "self", param_633
    .lex "$/", param_634
.annotate 'line', 143
    get_global $P635, "@BLOCK"
    unless_null $P635, vivify_299
    $P635 = root_new ['parrot';'ResizablePMCArray']
    set_global "@BLOCK", $P635
  vivify_299:
.annotate 'line', 142
    get_global $P636, "@BLOCK"
.annotate 'line', 144
    get_global $P637, "@BLOCK"
    get_hll_global $P638, ["PAST"], "Block"
    get_hll_global $P639, ["PAST"], "Stmts"
    $P640 = $P639."new"()
    $P641 = $P638."new"($P640)
    $P642 = $P637."unshift"($P641)
.annotate 'line', 142
    .return ($P642)
  control_631:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P643, exception, "payload"
    .return ($P643)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "outerctx"  :subid("36_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_647
    .param pmc param_648
.annotate 'line', 147
    new $P646, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P646, control_645
    push_eh $P646
    .lex "self", param_647
    .lex "$/", param_648
.annotate 'line', 148
    get_global $P649, "@BLOCK"
    unless_null $P649, vivify_300
    $P649 = root_new ['parrot';'ResizablePMCArray']
    set_global "@BLOCK", $P649
  vivify_300:
.annotate 'line', 147
    get_global $P650, "@BLOCK"
.annotate 'line', 149
    find_lex $P651, "self"
    get_global $P652, "@BLOCK"
    unless_null $P652, vivify_301
    $P652 = root_new ['parrot';'ResizablePMCArray']
  vivify_301:
    set $P653, $P652[0]
    unless_null $P653, vivify_302
    new $P653, "Undef"
  vivify_302:
    $P654 = $P651."SET_BLOCK_OUTER_CTX"($P653)
.annotate 'line', 147
    .return ($P654)
  control_645:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P655, exception, "payload"
    .return ($P655)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "statement_control:sym<if>"  :subid("37_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_659
    .param pmc param_660
.annotate 'line', 154
    .const 'Sub' $P688 = "38_1294786958.359" 
    capture_lex $P688
    new $P658, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P658, control_657
    push_eh $P658
    .lex "self", param_659
    .lex "$/", param_660
.annotate 'line', 155
    new $P661, "Undef"
    .lex "$count", $P661
.annotate 'line', 156
    new $P662, "Undef"
    .lex "$past", $P662
.annotate 'line', 155
    find_lex $P663, "$/"
    unless_null $P663, vivify_303
    $P663 = root_new ['parrot';'Hash']
  vivify_303:
    set $P664, $P663["xblock"]
    unless_null $P664, vivify_304
    new $P664, "Undef"
  vivify_304:
    set $N665, $P664
    new $P666, 'Float'
    set $P666, $N665
    sub $P667, $P666, 1
    store_lex "$count", $P667
.annotate 'line', 156
    find_lex $P668, "$count"
    set $I669, $P668
    find_lex $P670, "$/"
    unless_null $P670, vivify_305
    $P670 = root_new ['parrot';'Hash']
  vivify_305:
    set $P671, $P670["xblock"]
    unless_null $P671, vivify_306
    $P671 = root_new ['parrot';'ResizablePMCArray']
  vivify_306:
    set $P672, $P671[$I669]
    unless_null $P672, vivify_307
    new $P672, "Undef"
  vivify_307:
    $P673 = $P672."ast"()
    $P674 = "xblock_immediate"($P673)
    store_lex "$past", $P674
.annotate 'line', 157
    find_lex $P676, "$/"
    unless_null $P676, vivify_308
    $P676 = root_new ['parrot';'Hash']
  vivify_308:
    set $P677, $P676["else"]
    unless_null $P677, vivify_309
    new $P677, "Undef"
  vivify_309:
    unless $P677, if_675_end
.annotate 'line', 158
    find_lex $P678, "$past"
    find_lex $P679, "$/"
    unless_null $P679, vivify_310
    $P679 = root_new ['parrot';'Hash']
  vivify_310:
    set $P680, $P679["else"]
    unless_null $P680, vivify_311
    $P680 = root_new ['parrot';'ResizablePMCArray']
  vivify_311:
    set $P681, $P680[0]
    unless_null $P681, vivify_312
    new $P681, "Undef"
  vivify_312:
    $P682 = $P681."ast"()
    $P683 = "block_immediate"($P682)
    $P678."push"($P683)
  if_675_end:
.annotate 'line', 161
    new $P704, 'ExceptionHandler'
    set_addr $P704, loop703_handler
    $P704."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P704
  loop703_test:
    find_lex $P684, "$count"
    set $N685, $P684
    isgt $I686, $N685, 0.0
    unless $I686, loop703_done
  loop703_redo:
    .const 'Sub' $P688 = "38_1294786958.359" 
    capture_lex $P688
    $P688()
  loop703_next:
    goto loop703_test
  loop703_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P705, exception, 'type'
    eq $P705, .CONTROL_LOOP_NEXT, loop703_next
    eq $P705, .CONTROL_LOOP_REDO, loop703_redo
  loop703_done:
    pop_eh 
.annotate 'line', 167
    find_lex $P706, "$/"
    find_lex $P707, "$past"
    $P708 = $P706."!make"($P707)
.annotate 'line', 154
    .return ($P708)
  control_657:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P709, exception, "payload"
    .return ($P709)
.end


.namespace ["NQP";"Actions"]
.sub "_block687"  :anon :subid("38_1294786958.359") :outer("37_1294786958.359")
.annotate 'line', 163
    new $P689, "Undef"
    .lex "$else", $P689
.annotate 'line', 161
    find_lex $P690, "$count"
    clone $P691, $P690
    dec $P690
.annotate 'line', 163
    find_lex $P692, "$past"
    store_lex "$else", $P692
.annotate 'line', 164
    find_lex $P693, "$count"
    set $I694, $P693
    find_lex $P695, "$/"
    unless_null $P695, vivify_313
    $P695 = root_new ['parrot';'Hash']
  vivify_313:
    set $P696, $P695["xblock"]
    unless_null $P696, vivify_314
    $P696 = root_new ['parrot';'ResizablePMCArray']
  vivify_314:
    set $P697, $P696[$I694]
    unless_null $P697, vivify_315
    new $P697, "Undef"
  vivify_315:
    $P698 = $P697."ast"()
    $P699 = "xblock_immediate"($P698)
    store_lex "$past", $P699
.annotate 'line', 165
    find_lex $P700, "$past"
    find_lex $P701, "$else"
    $P702 = $P700."push"($P701)
.annotate 'line', 161
    .return ($P702)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "statement_control:sym<unless>"  :subid("39_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_713
    .param pmc param_714
.annotate 'line', 170
    new $P712, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P712, control_711
    push_eh $P712
    .lex "self", param_713
    .lex "$/", param_714
.annotate 'line', 171
    new $P715, "Undef"
    .lex "$past", $P715
    find_lex $P716, "$/"
    unless_null $P716, vivify_316
    $P716 = root_new ['parrot';'Hash']
  vivify_316:
    set $P717, $P716["xblock"]
    unless_null $P717, vivify_317
    new $P717, "Undef"
  vivify_317:
    $P718 = $P717."ast"()
    $P719 = "xblock_immediate"($P718)
    store_lex "$past", $P719
.annotate 'line', 172
    find_lex $P720, "$past"
    $P720."pasttype"("unless")
.annotate 'line', 173
    find_lex $P721, "$/"
    find_lex $P722, "$past"
    $P723 = $P721."!make"($P722)
.annotate 'line', 170
    .return ($P723)
  control_711:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P724, exception, "payload"
    .return ($P724)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "statement_control:sym<while>"  :subid("40_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_728
    .param pmc param_729
.annotate 'line', 176
    new $P727, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P727, control_726
    push_eh $P727
    .lex "self", param_728
    .lex "$/", param_729
.annotate 'line', 177
    new $P730, "Undef"
    .lex "$past", $P730
    find_lex $P731, "$/"
    unless_null $P731, vivify_318
    $P731 = root_new ['parrot';'Hash']
  vivify_318:
    set $P732, $P731["xblock"]
    unless_null $P732, vivify_319
    new $P732, "Undef"
  vivify_319:
    $P733 = $P732."ast"()
    $P734 = "xblock_immediate"($P733)
    store_lex "$past", $P734
.annotate 'line', 178
    find_lex $P735, "$past"
    find_lex $P736, "$/"
    unless_null $P736, vivify_320
    $P736 = root_new ['parrot';'Hash']
  vivify_320:
    set $P737, $P736["sym"]
    unless_null $P737, vivify_321
    new $P737, "Undef"
  vivify_321:
    set $S738, $P737
    $P735."pasttype"($S738)
.annotate 'line', 179
    find_lex $P739, "$/"
    find_lex $P740, "$past"
    $P741 = $P739."!make"($P740)
.annotate 'line', 176
    .return ($P741)
  control_726:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P742, exception, "payload"
    .return ($P742)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "statement_control:sym<repeat>"  :subid("41_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_746
    .param pmc param_747
.annotate 'line', 182
    new $P745, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P745, control_744
    push_eh $P745
    .lex "self", param_746
    .lex "$/", param_747
.annotate 'line', 183
    new $P748, "Undef"
    .lex "$pasttype", $P748
.annotate 'line', 184
    new $P749, "Undef"
    .lex "$past", $P749
.annotate 'line', 183
    new $P750, "String"
    assign $P750, "repeat_"
    find_lex $P751, "$/"
    unless_null $P751, vivify_322
    $P751 = root_new ['parrot';'Hash']
  vivify_322:
    set $P752, $P751["wu"]
    unless_null $P752, vivify_323
    new $P752, "Undef"
  vivify_323:
    set $S753, $P752
    concat $P754, $P750, $S753
    store_lex "$pasttype", $P754
    find_lex $P755, "$past"
.annotate 'line', 185
    find_lex $P757, "$/"
    unless_null $P757, vivify_324
    $P757 = root_new ['parrot';'Hash']
  vivify_324:
    set $P758, $P757["xblock"]
    unless_null $P758, vivify_325
    new $P758, "Undef"
  vivify_325:
    if $P758, if_756
.annotate 'line', 190
    get_hll_global $P765, ["PAST"], "Op"
    find_lex $P766, "$/"
    unless_null $P766, vivify_326
    $P766 = root_new ['parrot';'Hash']
  vivify_326:
    set $P767, $P766["EXPR"]
    unless_null $P767, vivify_327
    new $P767, "Undef"
  vivify_327:
    $P768 = $P767."ast"()
    find_lex $P769, "$/"
    unless_null $P769, vivify_328
    $P769 = root_new ['parrot';'Hash']
  vivify_328:
    set $P770, $P769["pblock"]
    unless_null $P770, vivify_329
    new $P770, "Undef"
  vivify_329:
    $P771 = $P770."ast"()
    $P772 = "block_immediate"($P771)
    find_lex $P773, "$pasttype"
    find_lex $P774, "$/"
    $P775 = $P765."new"($P768, $P772, $P773 :named("pasttype"), $P774 :named("node"))
    store_lex "$past", $P775
.annotate 'line', 189
    goto if_756_end
  if_756:
.annotate 'line', 186
    find_lex $P759, "$/"
    unless_null $P759, vivify_330
    $P759 = root_new ['parrot';'Hash']
  vivify_330:
    set $P760, $P759["xblock"]
    unless_null $P760, vivify_331
    new $P760, "Undef"
  vivify_331:
    $P761 = $P760."ast"()
    $P762 = "xblock_immediate"($P761)
    store_lex "$past", $P762
.annotate 'line', 187
    find_lex $P763, "$past"
    find_lex $P764, "$pasttype"
    $P763."pasttype"($P764)
  if_756_end:
.annotate 'line', 193
    find_lex $P776, "$/"
    find_lex $P777, "$past"
    $P778 = $P776."!make"($P777)
.annotate 'line', 182
    .return ($P778)
  control_744:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P779, exception, "payload"
    .return ($P779)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "statement_control:sym<for>"  :subid("42_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_783
    .param pmc param_784
.annotate 'line', 196
    new $P782, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P782, control_781
    push_eh $P782
    .lex "self", param_783
    .lex "$/", param_784
.annotate 'line', 197
    new $P785, "Undef"
    .lex "$past", $P785
.annotate 'line', 199
    new $P786, "Undef"
    .lex "$block", $P786
.annotate 'line', 197
    find_lex $P787, "$/"
    unless_null $P787, vivify_332
    $P787 = root_new ['parrot';'Hash']
  vivify_332:
    set $P788, $P787["xblock"]
    unless_null $P788, vivify_333
    new $P788, "Undef"
  vivify_333:
    $P789 = $P788."ast"()
    store_lex "$past", $P789
.annotate 'line', 198
    find_lex $P790, "$past"
    $P790."pasttype"("for")
.annotate 'line', 199
    find_lex $P791, "$past"
    unless_null $P791, vivify_334
    $P791 = root_new ['parrot';'ResizablePMCArray']
  vivify_334:
    set $P792, $P791[1]
    unless_null $P792, vivify_335
    new $P792, "Undef"
  vivify_335:
    store_lex "$block", $P792
.annotate 'line', 200
    find_lex $P794, "$block"
    $P795 = $P794."arity"()
    if $P795, unless_793_end
.annotate 'line', 201
    find_lex $P796, "$block"
    unless_null $P796, vivify_336
    $P796 = root_new ['parrot';'ResizablePMCArray']
  vivify_336:
    set $P797, $P796[0]
    unless_null $P797, vivify_337
    new $P797, "Undef"
  vivify_337:
    get_hll_global $P798, ["PAST"], "Var"
    $P799 = $P798."new"("$_" :named("name"), "parameter" :named("scope"))
    $P797."push"($P799)
.annotate 'line', 202
    find_lex $P800, "$block"
    $P800."symbol"("$_", "lexical" :named("scope"))
.annotate 'line', 203
    find_lex $P801, "$block"
    $P801."arity"(1)
  unless_793_end:
.annotate 'line', 205
    find_lex $P802, "$block"
    $P802."blocktype"("immediate")
.annotate 'line', 206
    find_lex $P803, "$/"
    find_lex $P804, "$past"
    $P805 = $P803."!make"($P804)
.annotate 'line', 196
    .return ($P805)
  control_781:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P806, exception, "payload"
    .return ($P806)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "statement_control:sym<return>"  :subid("43_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_810
    .param pmc param_811
.annotate 'line', 209
    new $P809, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P809, control_808
    push_eh $P809
    .lex "self", param_810
    .lex "$/", param_811
.annotate 'line', 210
    find_lex $P812, "$/"
    get_hll_global $P813, ["PAST"], "Op"
    find_lex $P814, "$/"
    unless_null $P814, vivify_338
    $P814 = root_new ['parrot';'Hash']
  vivify_338:
    set $P815, $P814["EXPR"]
    unless_null $P815, vivify_339
    new $P815, "Undef"
  vivify_339:
    $P816 = $P815."ast"()
    find_lex $P817, "$/"
    $P818 = $P813."new"($P816, "return" :named("pasttype"), $P817 :named("node"))
    $P819 = $P812."!make"($P818)
.annotate 'line', 209
    .return ($P819)
  control_808:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P820, exception, "payload"
    .return ($P820)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "statement_control:sym<CATCH>"  :subid("44_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_824
    .param pmc param_825
.annotate 'line', 213
    new $P823, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P823, control_822
    push_eh $P823
    .lex "self", param_824
    .lex "$/", param_825
.annotate 'line', 214
    new $P826, "Undef"
    .lex "$block", $P826
    find_lex $P827, "$/"
    unless_null $P827, vivify_340
    $P827 = root_new ['parrot';'Hash']
  vivify_340:
    set $P828, $P827["block"]
    unless_null $P828, vivify_341
    new $P828, "Undef"
  vivify_341:
    $P829 = $P828."ast"()
    store_lex "$block", $P829
.annotate 'line', 215
    find_lex $P830, "$/"
    find_lex $P831, "$block"
    "push_block_handler"($P830, $P831)
.annotate 'line', 216
    get_global $P832, "@BLOCK"
    unless_null $P832, vivify_342
    $P832 = root_new ['parrot';'ResizablePMCArray']
  vivify_342:
    set $P833, $P832[0]
    unless_null $P833, vivify_343
    new $P833, "Undef"
  vivify_343:
    $P834 = $P833."handlers"()
    set $P835, $P834[0]
    unless_null $P835, vivify_344
    new $P835, "Undef"
  vivify_344:
    $P835."handle_types_except"("CONTROL")
.annotate 'line', 217
    find_lex $P836, "$/"
    get_hll_global $P837, ["PAST"], "Stmts"
    find_lex $P838, "$/"
    $P839 = $P837."new"($P838 :named("node"))
    $P840 = $P836."!make"($P839)
.annotate 'line', 213
    .return ($P840)
  control_822:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P841, exception, "payload"
    .return ($P841)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "statement_control:sym<CONTROL>"  :subid("45_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_845
    .param pmc param_846
.annotate 'line', 220
    new $P844, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P844, control_843
    push_eh $P844
    .lex "self", param_845
    .lex "$/", param_846
.annotate 'line', 221
    new $P847, "Undef"
    .lex "$block", $P847
    find_lex $P848, "$/"
    unless_null $P848, vivify_345
    $P848 = root_new ['parrot';'Hash']
  vivify_345:
    set $P849, $P848["block"]
    unless_null $P849, vivify_346
    new $P849, "Undef"
  vivify_346:
    $P850 = $P849."ast"()
    store_lex "$block", $P850
.annotate 'line', 222
    find_lex $P851, "$/"
    find_lex $P852, "$block"
    "push_block_handler"($P851, $P852)
.annotate 'line', 223
    get_global $P853, "@BLOCK"
    unless_null $P853, vivify_347
    $P853 = root_new ['parrot';'ResizablePMCArray']
  vivify_347:
    set $P854, $P853[0]
    unless_null $P854, vivify_348
    new $P854, "Undef"
  vivify_348:
    $P855 = $P854."handlers"()
    set $P856, $P855[0]
    unless_null $P856, vivify_349
    new $P856, "Undef"
  vivify_349:
    $P856."handle_types"("CONTROL")
.annotate 'line', 224
    find_lex $P857, "$/"
    get_hll_global $P858, ["PAST"], "Stmts"
    find_lex $P859, "$/"
    $P860 = $P858."new"($P859 :named("node"))
    $P861 = $P857."!make"($P860)
.annotate 'line', 220
    .return ($P861)
  control_843:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P862, exception, "payload"
    .return ($P862)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "statement_prefix:sym<INIT>"  :subid("46_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_867
    .param pmc param_868
.annotate 'line', 264
    new $P866, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P866, control_865
    push_eh $P866
    .lex "self", param_867
    .lex "$/", param_868
.annotate 'line', 265
    get_global $P869, "@BLOCK"
    unless_null $P869, vivify_350
    $P869 = root_new ['parrot';'ResizablePMCArray']
  vivify_350:
    set $P870, $P869[0]
    unless_null $P870, vivify_351
    new $P870, "Undef"
  vivify_351:
    $P871 = $P870."loadinit"()
    find_lex $P872, "$/"
    unless_null $P872, vivify_352
    $P872 = root_new ['parrot';'Hash']
  vivify_352:
    set $P873, $P872["blorst"]
    unless_null $P873, vivify_353
    new $P873, "Undef"
  vivify_353:
    $P874 = $P873."ast"()
    $P871."push"($P874)
.annotate 'line', 266
    find_lex $P875, "$/"
    get_hll_global $P876, ["PAST"], "Stmts"
    find_lex $P877, "$/"
    $P878 = $P876."new"($P877 :named("node"))
    $P879 = $P875."!make"($P878)
.annotate 'line', 264
    .return ($P879)
  control_865:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P880, exception, "payload"
    .return ($P880)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "statement_prefix:sym<try>"  :subid("47_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_884
    .param pmc param_885
.annotate 'line', 269
    new $P883, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P883, control_882
    push_eh $P883
    .lex "self", param_884
    .lex "$/", param_885
.annotate 'line', 270
    new $P886, "Undef"
    .lex "$past", $P886
    find_lex $P887, "$/"
    unless_null $P887, vivify_354
    $P887 = root_new ['parrot';'Hash']
  vivify_354:
    set $P888, $P887["blorst"]
    unless_null $P888, vivify_355
    new $P888, "Undef"
  vivify_355:
    $P889 = $P888."ast"()
    store_lex "$past", $P889
.annotate 'line', 271
    get_hll_global $P891, ["PAST"], "Block"
    find_lex $P892, "$past"
    $P893 = $P891."ACCEPTS"($P892)
    if $P893, unless_890_end
.annotate 'line', 272
    get_hll_global $P894, ["PAST"], "Block"
    find_lex $P895, "$past"
    find_lex $P896, "$/"
    $P897 = $P894."new"($P895, "immediate" :named("blocktype"), $P896 :named("node"))
    store_lex "$past", $P897
  unless_890_end:
.annotate 'line', 274
    find_lex $P899, "$past"
    $P900 = $P899."handlers"()
    if $P900, unless_898_end
.annotate 'line', 275
    find_lex $P901, "$past"
    get_hll_global $P902, ["PAST"], "Control"
.annotate 'line', 277
    get_hll_global $P903, ["PAST"], "Stmts"
.annotate 'line', 278
    get_hll_global $P904, ["PAST"], "Op"
.annotate 'line', 279
    get_hll_global $P905, ["PAST"], "Var"
.annotate 'line', 280
    get_hll_global $P906, ["PAST"], "Var"
    $P907 = $P906."new"("register" :named("scope"), "exception" :named("name"))
    $P908 = $P905."new"($P907, "handled", "keyed" :named("scope"))
.annotate 'line', 279
    $P909 = $P904."new"($P908, 1, "bind" :named("pasttype"))
.annotate 'line', 278
    $P910 = $P903."new"($P909)
.annotate 'line', 277
    $P911 = $P902."new"($P910, "CONTROL" :named("handle_types_except"))
.annotate 'line', 275
    new $P912, "ResizablePMCArray"
    push $P912, $P911
    $P901."handlers"($P912)
  unless_898_end:
.annotate 'line', 289
    find_lex $P913, "$/"
    find_lex $P914, "$past"
    $P915 = $P913."!make"($P914)
.annotate 'line', 269
    .return ($P915)
  control_882:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P916, exception, "payload"
    .return ($P916)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "blorst"  :subid("48_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_920
    .param pmc param_921
.annotate 'line', 292
    new $P919, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P919, control_918
    push_eh $P919
    .lex "self", param_920
    .lex "$/", param_921
.annotate 'line', 293
    find_lex $P922, "$/"
.annotate 'line', 294
    find_lex $P925, "$/"
    unless_null $P925, vivify_356
    $P925 = root_new ['parrot';'Hash']
  vivify_356:
    set $P926, $P925["block"]
    unless_null $P926, vivify_357
    new $P926, "Undef"
  vivify_357:
    if $P926, if_924
.annotate 'line', 295
    find_lex $P931, "$/"
    unless_null $P931, vivify_358
    $P931 = root_new ['parrot';'Hash']
  vivify_358:
    set $P932, $P931["statement"]
    unless_null $P932, vivify_359
    new $P932, "Undef"
  vivify_359:
    $P933 = $P932."ast"()
    set $P923, $P933
.annotate 'line', 294
    goto if_924_end
  if_924:
    find_lex $P927, "$/"
    unless_null $P927, vivify_360
    $P927 = root_new ['parrot';'Hash']
  vivify_360:
    set $P928, $P927["block"]
    unless_null $P928, vivify_361
    new $P928, "Undef"
  vivify_361:
    $P929 = $P928."ast"()
    $P930 = "block_immediate"($P929)
    set $P923, $P930
  if_924_end:
    $P934 = $P922."!make"($P923)
.annotate 'line', 292
    .return ($P934)
  control_918:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P935, exception, "payload"
    .return ($P935)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "statement_mod_cond:sym<if>"  :subid("49_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_939
    .param pmc param_940
.annotate 'line', 300
    new $P938, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P938, control_937
    push_eh $P938
    .lex "self", param_939
    .lex "$/", param_940
    find_lex $P941, "$/"
    find_lex $P942, "$/"
    unless_null $P942, vivify_362
    $P942 = root_new ['parrot';'Hash']
  vivify_362:
    set $P943, $P942["cond"]
    unless_null $P943, vivify_363
    new $P943, "Undef"
  vivify_363:
    $P944 = $P943."ast"()
    $P945 = $P941."!make"($P944)
    .return ($P945)
  control_937:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P946, exception, "payload"
    .return ($P946)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "statement_mod_cond:sym<unless>"  :subid("50_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_950
    .param pmc param_951
.annotate 'line', 301
    new $P949, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P949, control_948
    push_eh $P949
    .lex "self", param_950
    .lex "$/", param_951
    find_lex $P952, "$/"
    find_lex $P953, "$/"
    unless_null $P953, vivify_364
    $P953 = root_new ['parrot';'Hash']
  vivify_364:
    set $P954, $P953["cond"]
    unless_null $P954, vivify_365
    new $P954, "Undef"
  vivify_365:
    $P955 = $P954."ast"()
    $P956 = $P952."!make"($P955)
    .return ($P956)
  control_948:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P957, exception, "payload"
    .return ($P957)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "statement_mod_loop:sym<while>"  :subid("51_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_961
    .param pmc param_962
.annotate 'line', 303
    new $P960, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P960, control_959
    push_eh $P960
    .lex "self", param_961
    .lex "$/", param_962
    find_lex $P963, "$/"
    find_lex $P964, "$/"
    unless_null $P964, vivify_366
    $P964 = root_new ['parrot';'Hash']
  vivify_366:
    set $P965, $P964["cond"]
    unless_null $P965, vivify_367
    new $P965, "Undef"
  vivify_367:
    $P966 = $P965."ast"()
    $P967 = $P963."!make"($P966)
    .return ($P967)
  control_959:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P968, exception, "payload"
    .return ($P968)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "statement_mod_loop:sym<until>"  :subid("52_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_972
    .param pmc param_973
.annotate 'line', 304
    new $P971, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P971, control_970
    push_eh $P971
    .lex "self", param_972
    .lex "$/", param_973
    find_lex $P974, "$/"
    find_lex $P975, "$/"
    unless_null $P975, vivify_368
    $P975 = root_new ['parrot';'Hash']
  vivify_368:
    set $P976, $P975["cond"]
    unless_null $P976, vivify_369
    new $P976, "Undef"
  vivify_369:
    $P977 = $P976."ast"()
    $P978 = $P974."!make"($P977)
    .return ($P978)
  control_970:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P979, exception, "payload"
    .return ($P979)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "term:sym<fatarrow>"  :subid("53_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_983
    .param pmc param_984
.annotate 'line', 308
    new $P982, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P982, control_981
    push_eh $P982
    .lex "self", param_983
    .lex "$/", param_984
    find_lex $P985, "$/"
    find_lex $P986, "$/"
    unless_null $P986, vivify_370
    $P986 = root_new ['parrot';'Hash']
  vivify_370:
    set $P987, $P986["fatarrow"]
    unless_null $P987, vivify_371
    new $P987, "Undef"
  vivify_371:
    $P988 = $P987."ast"()
    $P989 = $P985."!make"($P988)
    .return ($P989)
  control_981:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P990, exception, "payload"
    .return ($P990)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "term:sym<colonpair>"  :subid("54_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_994
    .param pmc param_995
.annotate 'line', 309
    new $P993, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P993, control_992
    push_eh $P993
    .lex "self", param_994
    .lex "$/", param_995
    find_lex $P996, "$/"
    find_lex $P997, "$/"
    unless_null $P997, vivify_372
    $P997 = root_new ['parrot';'Hash']
  vivify_372:
    set $P998, $P997["colonpair"]
    unless_null $P998, vivify_373
    new $P998, "Undef"
  vivify_373:
    $P999 = $P998."ast"()
    $P1000 = $P996."!make"($P999)
    .return ($P1000)
  control_992:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1001, exception, "payload"
    .return ($P1001)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "term:sym<variable>"  :subid("55_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_1005
    .param pmc param_1006
.annotate 'line', 310
    new $P1004, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1004, control_1003
    push_eh $P1004
    .lex "self", param_1005
    .lex "$/", param_1006
    find_lex $P1007, "$/"
    find_lex $P1008, "$/"
    unless_null $P1008, vivify_374
    $P1008 = root_new ['parrot';'Hash']
  vivify_374:
    set $P1009, $P1008["variable"]
    unless_null $P1009, vivify_375
    new $P1009, "Undef"
  vivify_375:
    $P1010 = $P1009."ast"()
    $P1011 = $P1007."!make"($P1010)
    .return ($P1011)
  control_1003:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1012, exception, "payload"
    .return ($P1012)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "term:sym<package_declarator>"  :subid("56_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_1016
    .param pmc param_1017
.annotate 'line', 311
    new $P1015, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1015, control_1014
    push_eh $P1015
    .lex "self", param_1016
    .lex "$/", param_1017
    find_lex $P1018, "$/"
    find_lex $P1019, "$/"
    unless_null $P1019, vivify_376
    $P1019 = root_new ['parrot';'Hash']
  vivify_376:
    set $P1020, $P1019["package_declarator"]
    unless_null $P1020, vivify_377
    new $P1020, "Undef"
  vivify_377:
    $P1021 = $P1020."ast"()
    $P1022 = $P1018."!make"($P1021)
    .return ($P1022)
  control_1014:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1023, exception, "payload"
    .return ($P1023)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "term:sym<scope_declarator>"  :subid("57_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_1027
    .param pmc param_1028
.annotate 'line', 312
    new $P1026, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1026, control_1025
    push_eh $P1026
    .lex "self", param_1027
    .lex "$/", param_1028
    find_lex $P1029, "$/"
    find_lex $P1030, "$/"
    unless_null $P1030, vivify_378
    $P1030 = root_new ['parrot';'Hash']
  vivify_378:
    set $P1031, $P1030["scope_declarator"]
    unless_null $P1031, vivify_379
    new $P1031, "Undef"
  vivify_379:
    $P1032 = $P1031."ast"()
    $P1033 = $P1029."!make"($P1032)
    .return ($P1033)
  control_1025:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1034, exception, "payload"
    .return ($P1034)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "term:sym<routine_declarator>"  :subid("58_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_1038
    .param pmc param_1039
.annotate 'line', 313
    new $P1037, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1037, control_1036
    push_eh $P1037
    .lex "self", param_1038
    .lex "$/", param_1039
    find_lex $P1040, "$/"
    find_lex $P1041, "$/"
    unless_null $P1041, vivify_380
    $P1041 = root_new ['parrot';'Hash']
  vivify_380:
    set $P1042, $P1041["routine_declarator"]
    unless_null $P1042, vivify_381
    new $P1042, "Undef"
  vivify_381:
    $P1043 = $P1042."ast"()
    $P1044 = $P1040."!make"($P1043)
    .return ($P1044)
  control_1036:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1045, exception, "payload"
    .return ($P1045)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "term:sym<regex_declarator>"  :subid("59_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_1049
    .param pmc param_1050
.annotate 'line', 314
    new $P1048, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1048, control_1047
    push_eh $P1048
    .lex "self", param_1049
    .lex "$/", param_1050
    find_lex $P1051, "$/"
    find_lex $P1052, "$/"
    unless_null $P1052, vivify_382
    $P1052 = root_new ['parrot';'Hash']
  vivify_382:
    set $P1053, $P1052["regex_declarator"]
    unless_null $P1053, vivify_383
    new $P1053, "Undef"
  vivify_383:
    $P1054 = $P1053."ast"()
    $P1055 = $P1051."!make"($P1054)
    .return ($P1055)
  control_1047:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1056, exception, "payload"
    .return ($P1056)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "term:sym<statement_prefix>"  :subid("60_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_1060
    .param pmc param_1061
.annotate 'line', 315
    new $P1059, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1059, control_1058
    push_eh $P1059
    .lex "self", param_1060
    .lex "$/", param_1061
    find_lex $P1062, "$/"
    find_lex $P1063, "$/"
    unless_null $P1063, vivify_384
    $P1063 = root_new ['parrot';'Hash']
  vivify_384:
    set $P1064, $P1063["statement_prefix"]
    unless_null $P1064, vivify_385
    new $P1064, "Undef"
  vivify_385:
    $P1065 = $P1064."ast"()
    $P1066 = $P1062."!make"($P1065)
    .return ($P1066)
  control_1058:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1067, exception, "payload"
    .return ($P1067)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "term:sym<lambda>"  :subid("61_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_1071
    .param pmc param_1072
.annotate 'line', 316
    new $P1070, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1070, control_1069
    push_eh $P1070
    .lex "self", param_1071
    .lex "$/", param_1072
    find_lex $P1073, "$/"
    find_lex $P1074, "$/"
    unless_null $P1074, vivify_386
    $P1074 = root_new ['parrot';'Hash']
  vivify_386:
    set $P1075, $P1074["pblock"]
    unless_null $P1075, vivify_387
    new $P1075, "Undef"
  vivify_387:
    $P1076 = $P1075."ast"()
    $P1077 = $P1073."!make"($P1076)
    .return ($P1077)
  control_1069:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1078, exception, "payload"
    .return ($P1078)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "fatarrow"  :subid("62_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_1082
    .param pmc param_1083
.annotate 'line', 318
    new $P1081, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1081, control_1080
    push_eh $P1081
    .lex "self", param_1082
    .lex "$/", param_1083
.annotate 'line', 319
    new $P1084, "Undef"
    .lex "$past", $P1084
    find_lex $P1085, "$/"
    unless_null $P1085, vivify_388
    $P1085 = root_new ['parrot';'Hash']
  vivify_388:
    set $P1086, $P1085["val"]
    unless_null $P1086, vivify_389
    new $P1086, "Undef"
  vivify_389:
    $P1087 = $P1086."ast"()
    store_lex "$past", $P1087
.annotate 'line', 320
    find_lex $P1088, "$past"
    find_lex $P1089, "$/"
    unless_null $P1089, vivify_390
    $P1089 = root_new ['parrot';'Hash']
  vivify_390:
    set $P1090, $P1089["key"]
    unless_null $P1090, vivify_391
    new $P1090, "Undef"
  vivify_391:
    $P1091 = $P1090."Str"()
    $P1088."named"($P1091)
.annotate 'line', 321
    find_lex $P1092, "$/"
    find_lex $P1093, "$past"
    $P1094 = $P1092."!make"($P1093)
.annotate 'line', 318
    .return ($P1094)
  control_1080:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1095, exception, "payload"
    .return ($P1095)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "colonpair"  :subid("63_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_1099
    .param pmc param_1100
.annotate 'line', 324
    new $P1098, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1098, control_1097
    push_eh $P1098
    .lex "self", param_1099
    .lex "$/", param_1100
.annotate 'line', 325
    new $P1101, "Undef"
    .lex "$past", $P1101
.annotate 'line', 326
    find_lex $P1104, "$/"
    unless_null $P1104, vivify_392
    $P1104 = root_new ['parrot';'Hash']
  vivify_392:
    set $P1105, $P1104["circumfix"]
    unless_null $P1105, vivify_393
    new $P1105, "Undef"
  vivify_393:
    if $P1105, if_1103
.annotate 'line', 327
    get_hll_global $P1110, ["PAST"], "Val"
    find_lex $P1111, "$/"
    unless_null $P1111, vivify_394
    $P1111 = root_new ['parrot';'Hash']
  vivify_394:
    set $P1112, $P1111["not"]
    unless_null $P1112, vivify_395
    new $P1112, "Undef"
  vivify_395:
    isfalse $I1113, $P1112
    $P1114 = $P1110."new"($I1113 :named("value"))
    set $P1102, $P1114
.annotate 'line', 326
    goto if_1103_end
  if_1103:
    find_lex $P1106, "$/"
    unless_null $P1106, vivify_396
    $P1106 = root_new ['parrot';'Hash']
  vivify_396:
    set $P1107, $P1106["circumfix"]
    unless_null $P1107, vivify_397
    $P1107 = root_new ['parrot';'ResizablePMCArray']
  vivify_397:
    set $P1108, $P1107[0]
    unless_null $P1108, vivify_398
    new $P1108, "Undef"
  vivify_398:
    $P1109 = $P1108."ast"()
    set $P1102, $P1109
  if_1103_end:
    store_lex "$past", $P1102
.annotate 'line', 328
    find_lex $P1115, "$past"
    find_lex $P1116, "$/"
    unless_null $P1116, vivify_399
    $P1116 = root_new ['parrot';'Hash']
  vivify_399:
    set $P1117, $P1116["identifier"]
    unless_null $P1117, vivify_400
    new $P1117, "Undef"
  vivify_400:
    set $S1118, $P1117
    $P1115."named"($S1118)
.annotate 'line', 329
    find_lex $P1119, "$/"
    find_lex $P1120, "$past"
    $P1121 = $P1119."!make"($P1120)
.annotate 'line', 324
    .return ($P1121)
  control_1097:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1122, exception, "payload"
    .return ($P1122)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "variable"  :subid("64_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_1126
    .param pmc param_1127
.annotate 'line', 332
    .const 'Sub' $P1140 = "65_1294786958.359" 
    capture_lex $P1140
    new $P1125, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1125, control_1124
    push_eh $P1125
    .lex "self", param_1126
    .lex "$/", param_1127
.annotate 'line', 333
    new $P1128, "Undef"
    .lex "$past", $P1128
.annotate 'line', 332
    find_lex $P1129, "$past"
.annotate 'line', 334
    find_lex $P1131, "$/"
    unless_null $P1131, vivify_401
    $P1131 = root_new ['parrot';'Hash']
  vivify_401:
    set $P1132, $P1131["postcircumfix"]
    unless_null $P1132, vivify_402
    new $P1132, "Undef"
  vivify_402:
    if $P1132, if_1130
.annotate 'line', 338
    .const 'Sub' $P1140 = "65_1294786958.359" 
    capture_lex $P1140
    $P1140()
    goto if_1130_end
  if_1130:
.annotate 'line', 335
    find_lex $P1133, "$/"
    unless_null $P1133, vivify_421
    $P1133 = root_new ['parrot';'Hash']
  vivify_421:
    set $P1134, $P1133["postcircumfix"]
    unless_null $P1134, vivify_422
    new $P1134, "Undef"
  vivify_422:
    $P1135 = $P1134."ast"()
    store_lex "$past", $P1135
.annotate 'line', 336
    find_lex $P1136, "$past"
    get_hll_global $P1137, ["PAST"], "Var"
    $P1138 = $P1137."new"("$/" :named("name"))
    $P1136."unshift"($P1138)
  if_1130_end:
.annotate 'line', 372
    find_lex $P1215, "$/"
    find_lex $P1216, "$past"
    $P1217 = $P1215."!make"($P1216)
.annotate 'line', 332
    .return ($P1217)
  control_1124:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1218, exception, "payload"
    .return ($P1218)
.end


.namespace ["NQP";"Actions"]
.sub "_block1139"  :anon :subid("65_1294786958.359") :outer("64_1294786958.359")
.annotate 'line', 339
    $P1141 = root_new ['parrot';'ResizablePMCArray']
    .lex "@name", $P1141
    get_hll_global $P1142, ["NQP"], "Compiler"
    find_lex $P1143, "$/"
    set $S1144, $P1143
    $P1145 = $P1142."parse_name"($S1144)
    store_lex "@name", $P1145
.annotate 'line', 340
    get_hll_global $P1146, ["PAST"], "Var"
    find_lex $P1147, "@name"
    $P1148 = $P1147."pop"()
    set $S1149, $P1148
    $P1150 = $P1146."new"($S1149 :named("name"))
    store_lex "$past", $P1150
.annotate 'line', 341
    find_lex $P1152, "@name"
    unless $P1152, if_1151_end
.annotate 'line', 342
    find_lex $P1154, "@name"
    unless_null $P1154, vivify_403
    $P1154 = root_new ['parrot';'ResizablePMCArray']
  vivify_403:
    set $P1155, $P1154[0]
    unless_null $P1155, vivify_404
    new $P1155, "Undef"
  vivify_404:
    set $S1156, $P1155
    iseq $I1157, $S1156, "GLOBAL"
    unless $I1157, if_1153_end
    find_lex $P1158, "@name"
    $P1158."shift"()
  if_1153_end:
.annotate 'line', 343
    find_lex $P1159, "$past"
    find_lex $P1160, "@name"
    $P1159."namespace"($P1160)
.annotate 'line', 344
    find_lex $P1161, "$past"
    $P1161."scope"("package")
.annotate 'line', 345
    find_lex $P1162, "$past"
    find_lex $P1163, "$/"
    unless_null $P1163, vivify_405
    $P1163 = root_new ['parrot';'Hash']
  vivify_405:
    set $P1164, $P1163["sigil"]
    unless_null $P1164, vivify_406
    new $P1164, "Undef"
  vivify_406:
    $P1165 = "vivitype"($P1164)
    $P1162."viviself"($P1165)
.annotate 'line', 346
    find_lex $P1166, "$past"
    $P1166."lvalue"(1)
  if_1151_end:
.annotate 'line', 348
    find_lex $P1169, "$/"
    unless_null $P1169, vivify_407
    $P1169 = root_new ['parrot';'Hash']
  vivify_407:
    set $P1170, $P1169["twigil"]
    unless_null $P1170, vivify_408
    $P1170 = root_new ['parrot';'ResizablePMCArray']
  vivify_408:
    set $P1171, $P1170[0]
    unless_null $P1171, vivify_409
    new $P1171, "Undef"
  vivify_409:
    set $S1172, $P1171
    iseq $I1173, $S1172, "*"
    if $I1173, if_1168
.annotate 'line', 361
    find_lex $P1195, "$/"
    unless_null $P1195, vivify_410
    $P1195 = root_new ['parrot';'Hash']
  vivify_410:
    set $P1196, $P1195["twigil"]
    unless_null $P1196, vivify_411
    $P1196 = root_new ['parrot';'ResizablePMCArray']
  vivify_411:
    set $P1197, $P1196[0]
    unless_null $P1197, vivify_412
    new $P1197, "Undef"
  vivify_412:
    set $S1198, $P1197
    iseq $I1199, $S1198, "!"
    if $I1199, if_1194
    new $P1193, 'Integer'
    set $P1193, $I1199
    goto if_1194_end
  if_1194:
.annotate 'line', 362
    find_lex $P1200, "$past"
    get_hll_global $P1201, ["PAST"], "Var"
    $P1202 = $P1201."new"("self" :named("name"))
    $P1200."push"($P1202)
.annotate 'line', 363
    find_lex $P1203, "$past"
    $P1203."scope"("attribute")
.annotate 'line', 364
    find_lex $P1204, "$past"
    find_lex $P1205, "$/"
    unless_null $P1205, vivify_413
    $P1205 = root_new ['parrot';'Hash']
  vivify_413:
    set $P1206, $P1205["sigil"]
    unless_null $P1206, vivify_414
    new $P1206, "Undef"
  vivify_414:
    $P1207 = "vivitype"($P1206)
    $P1204."viviself"($P1207)
.annotate 'line', 365
    find_dynamic_lex $P1210, "$*PACKAGE-SETUP"
    unless_null $P1210, vivify_415
    get_hll_global $P1210, "$PACKAGE-SETUP"
    unless_null $P1210, vivify_416
    die "Contextual $*PACKAGE-SETUP not found"
  vivify_416:
  vivify_415:
    if $P1210, if_1209
    set $P1208, $P1210
    goto if_1209_end
  if_1209:
.annotate 'line', 368
    find_lex $P1211, "$past"
    get_hll_global $P1212, ["PAST"], "Var"
    $P1213 = $P1212."new"("$?CLASS" :named("name"))
    $P1214 = $P1211."push"($P1213)
.annotate 'line', 365
    set $P1208, $P1214
  if_1209_end:
.annotate 'line', 361
    set $P1193, $P1208
  if_1194_end:
    set $P1167, $P1193
.annotate 'line', 348
    goto if_1168_end
  if_1168:
.annotate 'line', 349
    find_lex $P1174, "$past"
    $P1174."scope"("contextual")
.annotate 'line', 350
    find_lex $P1175, "$past"
.annotate 'line', 351
    get_hll_global $P1176, ["PAST"], "Var"
.annotate 'line', 353
    find_lex $P1177, "$/"
    unless_null $P1177, vivify_417
    $P1177 = root_new ['parrot';'Hash']
  vivify_417:
    set $P1178, $P1177["sigil"]
    unless_null $P1178, vivify_418
    new $P1178, "Undef"
  vivify_418:
    set $S1179, $P1178
    new $P1180, 'String'
    set $P1180, $S1179
    find_lex $P1181, "$/"
    unless_null $P1181, vivify_419
    $P1181 = root_new ['parrot';'Hash']
  vivify_419:
    set $P1182, $P1181["desigilname"]
    unless_null $P1182, vivify_420
    new $P1182, "Undef"
  vivify_420:
    concat $P1183, $P1180, $P1182
.annotate 'line', 355
    get_hll_global $P1184, ["PAST"], "Op"
    new $P1185, "String"
    assign $P1185, "Contextual "
    find_lex $P1186, "$/"
    set $S1187, $P1186
    concat $P1188, $P1185, $S1187
    concat $P1189, $P1188, " not found"
    $P1190 = $P1184."new"($P1189, "die" :named("pirop"))
    $P1191 = $P1176."new"("package" :named("scope"), "" :named("namespace"), $P1183 :named("name"), $P1190 :named("viviself"))
.annotate 'line', 351
    $P1192 = $P1175."viviself"($P1191)
.annotate 'line', 348
    set $P1167, $P1192
  if_1168_end:
.annotate 'line', 338
    .return ($P1167)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "package_declarator:sym<module>"  :subid("66_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_1222
    .param pmc param_1223
.annotate 'line', 375
    new $P1221, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1221, control_1220
    push_eh $P1221
    .lex "self", param_1222
    .lex "$/", param_1223
    find_lex $P1224, "$/"
    find_lex $P1225, "$/"
    unless_null $P1225, vivify_423
    $P1225 = root_new ['parrot';'Hash']
  vivify_423:
    set $P1226, $P1225["package_def"]
    unless_null $P1226, vivify_424
    new $P1226, "Undef"
  vivify_424:
    $P1227 = $P1226."ast"()
    $P1228 = $P1224."!make"($P1227)
    .return ($P1228)
  control_1220:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1229, exception, "payload"
    .return ($P1229)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "package_declarator:sym<knowhow>"  :subid("67_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_1233
    .param pmc param_1234
.annotate 'line', 376
    new $P1232, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1232, control_1231
    push_eh $P1232
    .lex "self", param_1233
    .lex "$/", param_1234
    find_lex $P1235, "$/"
    find_lex $P1236, "$/"
    $P1237 = "package"($P1236)
    $P1238 = $P1235."!make"($P1237)
    .return ($P1238)
  control_1231:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1239, exception, "payload"
    .return ($P1239)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "package_declarator:sym<class>"  :subid("68_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_1243
    .param pmc param_1244
.annotate 'line', 377
    new $P1242, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1242, control_1241
    push_eh $P1242
    .lex "self", param_1243
    .lex "$/", param_1244
    find_lex $P1245, "$/"
    find_lex $P1246, "$/"
    $P1247 = "old_package"($P1246)
    $P1248 = $P1245."!make"($P1247)
    .return ($P1248)
  control_1241:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1249, exception, "payload"
    .return ($P1249)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "package_declarator:sym<class_6m>"  :subid("69_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_1253
    .param pmc param_1254
.annotate 'line', 378
    new $P1252, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1252, control_1251
    push_eh $P1252
    .lex "self", param_1253
    .lex "$/", param_1254
    find_lex $P1255, "$/"
    find_lex $P1256, "$/"
    $P1257 = "package"($P1256)
    $P1258 = $P1255."!make"($P1257)
    .return ($P1258)
  control_1251:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1259, exception, "payload"
    .return ($P1259)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "package_declarator:sym<grammar>"  :subid("70_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_1263
    .param pmc param_1264
.annotate 'line', 379
    new $P1262, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1262, control_1261
    push_eh $P1262
    .lex "self", param_1263
    .lex "$/", param_1264
    find_lex $P1265, "$/"
    find_lex $P1266, "$/"
    $P1267 = "old_package"($P1266)
    $P1268 = $P1265."!make"($P1267)
    .return ($P1268)
  control_1261:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1269, exception, "payload"
    .return ($P1269)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "package_declarator:sym<role>"  :subid("71_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_1273
    .param pmc param_1274
.annotate 'line', 380
    new $P1272, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1272, control_1271
    push_eh $P1272
    .lex "self", param_1273
    .lex "$/", param_1274
    find_lex $P1275, "$/"
    find_lex $P1276, "$/"
    $P1277 = "package"($P1276)
    $P1278 = $P1275."!make"($P1277)
    .return ($P1278)
  control_1271:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1279, exception, "payload"
    .return ($P1279)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "package_def"  :subid("72_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_1285
    .param pmc param_1286
.annotate 'line', 481
    new $P1284, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1284, control_1283
    push_eh $P1284
    .lex "self", param_1285
    .lex "$/", param_1286
.annotate 'line', 482
    new $P1287, "Undef"
    .lex "$past", $P1287
    find_lex $P1290, "$/"
    unless_null $P1290, vivify_425
    $P1290 = root_new ['parrot';'Hash']
  vivify_425:
    set $P1291, $P1290["block"]
    unless_null $P1291, vivify_426
    new $P1291, "Undef"
  vivify_426:
    if $P1291, if_1289
    find_lex $P1295, "$/"
    unless_null $P1295, vivify_427
    $P1295 = root_new ['parrot';'Hash']
  vivify_427:
    set $P1296, $P1295["comp_unit"]
    unless_null $P1296, vivify_428
    new $P1296, "Undef"
  vivify_428:
    $P1297 = $P1296."ast"()
    set $P1288, $P1297
    goto if_1289_end
  if_1289:
    find_lex $P1292, "$/"
    unless_null $P1292, vivify_429
    $P1292 = root_new ['parrot';'Hash']
  vivify_429:
    set $P1293, $P1292["block"]
    unless_null $P1293, vivify_430
    new $P1293, "Undef"
  vivify_430:
    $P1294 = $P1293."ast"()
    set $P1288, $P1294
  if_1289_end:
    store_lex "$past", $P1288
.annotate 'line', 483
    find_lex $P1298, "$past"
    find_lex $P1299, "$/"
    unless_null $P1299, vivify_431
    $P1299 = root_new ['parrot';'Hash']
  vivify_431:
    set $P1300, $P1299["name"]
    unless_null $P1300, vivify_432
    $P1300 = root_new ['parrot';'Hash']
  vivify_432:
    set $P1301, $P1300["identifier"]
    unless_null $P1301, vivify_433
    new $P1301, "Undef"
  vivify_433:
    $P1298."namespace"($P1301)
.annotate 'line', 484
    find_lex $P1302, "$past"
    $P1302."blocktype"("immediate")
.annotate 'line', 485
    find_lex $P1303, "$/"
    find_lex $P1304, "$past"
    $P1305 = $P1303."!make"($P1304)
.annotate 'line', 481
    .return ($P1305)
  control_1283:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1306, exception, "payload"
    .return ($P1306)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "scope_declarator:sym<my>"  :subid("73_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_1310
    .param pmc param_1311
.annotate 'line', 488
    new $P1309, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1309, control_1308
    push_eh $P1309
    .lex "self", param_1310
    .lex "$/", param_1311
    find_lex $P1312, "$/"
    find_lex $P1313, "$/"
    unless_null $P1313, vivify_434
    $P1313 = root_new ['parrot';'Hash']
  vivify_434:
    set $P1314, $P1313["scoped"]
    unless_null $P1314, vivify_435
    new $P1314, "Undef"
  vivify_435:
    $P1315 = $P1314."ast"()
    $P1316 = $P1312."!make"($P1315)
    .return ($P1316)
  control_1308:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1317, exception, "payload"
    .return ($P1317)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "scope_declarator:sym<our>"  :subid("74_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_1321
    .param pmc param_1322
.annotate 'line', 489
    new $P1320, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1320, control_1319
    push_eh $P1320
    .lex "self", param_1321
    .lex "$/", param_1322
    find_lex $P1323, "$/"
    find_lex $P1324, "$/"
    unless_null $P1324, vivify_436
    $P1324 = root_new ['parrot';'Hash']
  vivify_436:
    set $P1325, $P1324["scoped"]
    unless_null $P1325, vivify_437
    new $P1325, "Undef"
  vivify_437:
    $P1326 = $P1325."ast"()
    $P1327 = $P1323."!make"($P1326)
    .return ($P1327)
  control_1319:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1328, exception, "payload"
    .return ($P1328)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "scope_declarator:sym<has>"  :subid("75_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_1332
    .param pmc param_1333
.annotate 'line', 490
    new $P1331, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1331, control_1330
    push_eh $P1331
    .lex "self", param_1332
    .lex "$/", param_1333
    find_lex $P1334, "$/"
    find_lex $P1335, "$/"
    unless_null $P1335, vivify_438
    $P1335 = root_new ['parrot';'Hash']
  vivify_438:
    set $P1336, $P1335["scoped"]
    unless_null $P1336, vivify_439
    new $P1336, "Undef"
  vivify_439:
    $P1337 = $P1336."ast"()
    $P1338 = $P1334."!make"($P1337)
    .return ($P1338)
  control_1330:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1339, exception, "payload"
    .return ($P1339)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "scoped"  :subid("76_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_1343
    .param pmc param_1344
.annotate 'line', 492
    new $P1342, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1342, control_1341
    push_eh $P1342
    .lex "self", param_1343
    .lex "$/", param_1344
.annotate 'line', 493
    find_lex $P1345, "$/"
.annotate 'line', 494
    find_lex $P1348, "$/"
    unless_null $P1348, vivify_440
    $P1348 = root_new ['parrot';'Hash']
  vivify_440:
    set $P1349, $P1348["declarator"]
    unless_null $P1349, vivify_441
    new $P1349, "Undef"
  vivify_441:
    if $P1349, if_1347
.annotate 'line', 495
    find_lex $P1353, "$/"
    unless_null $P1353, vivify_442
    $P1353 = root_new ['parrot';'Hash']
  vivify_442:
    set $P1354, $P1353["multi_declarator"]
    unless_null $P1354, vivify_443
    new $P1354, "Undef"
  vivify_443:
    $P1355 = $P1354."ast"()
    set $P1346, $P1355
.annotate 'line', 494
    goto if_1347_end
  if_1347:
    find_lex $P1350, "$/"
    unless_null $P1350, vivify_444
    $P1350 = root_new ['parrot';'Hash']
  vivify_444:
    set $P1351, $P1350["declarator"]
    unless_null $P1351, vivify_445
    new $P1351, "Undef"
  vivify_445:
    $P1352 = $P1351."ast"()
    set $P1346, $P1352
  if_1347_end:
    $P1356 = $P1345."!make"($P1346)
.annotate 'line', 492
    .return ($P1356)
  control_1341:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1357, exception, "payload"
    .return ($P1357)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "declarator"  :subid("77_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_1361
    .param pmc param_1362
.annotate 'line', 498
    new $P1360, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1360, control_1359
    push_eh $P1360
    .lex "self", param_1361
    .lex "$/", param_1362
.annotate 'line', 499
    find_lex $P1363, "$/"
.annotate 'line', 500
    find_lex $P1366, "$/"
    unless_null $P1366, vivify_446
    $P1366 = root_new ['parrot';'Hash']
  vivify_446:
    set $P1367, $P1366["routine_declarator"]
    unless_null $P1367, vivify_447
    new $P1367, "Undef"
  vivify_447:
    if $P1367, if_1365
.annotate 'line', 501
    find_lex $P1371, "$/"
    unless_null $P1371, vivify_448
    $P1371 = root_new ['parrot';'Hash']
  vivify_448:
    set $P1372, $P1371["variable_declarator"]
    unless_null $P1372, vivify_449
    new $P1372, "Undef"
  vivify_449:
    $P1373 = $P1372."ast"()
    set $P1364, $P1373
.annotate 'line', 500
    goto if_1365_end
  if_1365:
    find_lex $P1368, "$/"
    unless_null $P1368, vivify_450
    $P1368 = root_new ['parrot';'Hash']
  vivify_450:
    set $P1369, $P1368["routine_declarator"]
    unless_null $P1369, vivify_451
    new $P1369, "Undef"
  vivify_451:
    $P1370 = $P1369."ast"()
    set $P1364, $P1370
  if_1365_end:
    $P1374 = $P1363."!make"($P1364)
.annotate 'line', 498
    .return ($P1374)
  control_1359:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1375, exception, "payload"
    .return ($P1375)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "multi_declarator:sym<multi>"  :subid("78_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_1379
    .param pmc param_1380
.annotate 'line', 504
    new $P1378, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1378, control_1377
    push_eh $P1378
    .lex "self", param_1379
    .lex "$/", param_1380
    find_lex $P1381, "$/"
    find_lex $P1384, "$/"
    unless_null $P1384, vivify_452
    $P1384 = root_new ['parrot';'Hash']
  vivify_452:
    set $P1385, $P1384["declarator"]
    unless_null $P1385, vivify_453
    new $P1385, "Undef"
  vivify_453:
    if $P1385, if_1383
    find_lex $P1389, "$/"
    unless_null $P1389, vivify_454
    $P1389 = root_new ['parrot';'Hash']
  vivify_454:
    set $P1390, $P1389["routine_def"]
    unless_null $P1390, vivify_455
    new $P1390, "Undef"
  vivify_455:
    $P1391 = $P1390."ast"()
    set $P1382, $P1391
    goto if_1383_end
  if_1383:
    find_lex $P1386, "$/"
    unless_null $P1386, vivify_456
    $P1386 = root_new ['parrot';'Hash']
  vivify_456:
    set $P1387, $P1386["declarator"]
    unless_null $P1387, vivify_457
    new $P1387, "Undef"
  vivify_457:
    $P1388 = $P1387."ast"()
    set $P1382, $P1388
  if_1383_end:
    $P1392 = $P1381."!make"($P1382)
    .return ($P1392)
  control_1377:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1393, exception, "payload"
    .return ($P1393)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "multi_declarator:sym<null>"  :subid("79_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_1397
    .param pmc param_1398
.annotate 'line', 505
    new $P1396, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1396, control_1395
    push_eh $P1396
    .lex "self", param_1397
    .lex "$/", param_1398
    find_lex $P1399, "$/"
    find_lex $P1400, "$/"
    unless_null $P1400, vivify_458
    $P1400 = root_new ['parrot';'Hash']
  vivify_458:
    set $P1401, $P1400["declarator"]
    unless_null $P1401, vivify_459
    new $P1401, "Undef"
  vivify_459:
    $P1402 = $P1401."ast"()
    $P1403 = $P1399."!make"($P1402)
    .return ($P1403)
  control_1395:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1404, exception, "payload"
    .return ($P1404)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "variable_declarator"  :subid("80_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_1408
    .param pmc param_1409
.annotate 'line', 508
    .const 'Sub' $P1478 = "82_1294786958.359" 
    capture_lex $P1478
    .const 'Sub' $P1440 = "81_1294786958.359" 
    capture_lex $P1440
    new $P1407, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1407, control_1406
    push_eh $P1407
    .lex "self", param_1408
    .lex "$/", param_1409
.annotate 'line', 509
    new $P1410, "Undef"
    .lex "$past", $P1410
.annotate 'line', 510
    new $P1411, "Undef"
    .lex "$sigil", $P1411
.annotate 'line', 511
    new $P1412, "Undef"
    .lex "$name", $P1412
.annotate 'line', 512
    new $P1413, "Undef"
    .lex "$BLOCK", $P1413
.annotate 'line', 509
    find_lex $P1414, "$/"
    unless_null $P1414, vivify_460
    $P1414 = root_new ['parrot';'Hash']
  vivify_460:
    set $P1415, $P1414["variable"]
    unless_null $P1415, vivify_461
    new $P1415, "Undef"
  vivify_461:
    $P1416 = $P1415."ast"()
    store_lex "$past", $P1416
.annotate 'line', 510
    find_lex $P1417, "$/"
    unless_null $P1417, vivify_462
    $P1417 = root_new ['parrot';'Hash']
  vivify_462:
    set $P1418, $P1417["variable"]
    unless_null $P1418, vivify_463
    $P1418 = root_new ['parrot';'Hash']
  vivify_463:
    set $P1419, $P1418["sigil"]
    unless_null $P1419, vivify_464
    new $P1419, "Undef"
  vivify_464:
    store_lex "$sigil", $P1419
.annotate 'line', 511
    find_lex $P1420, "$past"
    $P1421 = $P1420."name"()
    store_lex "$name", $P1421
.annotate 'line', 512
    get_global $P1422, "@BLOCK"
    unless_null $P1422, vivify_465
    $P1422 = root_new ['parrot';'ResizablePMCArray']
  vivify_465:
    set $P1423, $P1422[0]
    unless_null $P1423, vivify_466
    new $P1423, "Undef"
  vivify_466:
    store_lex "$BLOCK", $P1423
.annotate 'line', 513
    find_lex $P1425, "$BLOCK"
    find_lex $P1426, "$name"
    $P1427 = $P1425."symbol"($P1426)
    unless $P1427, if_1424_end
.annotate 'line', 514
    find_lex $P1428, "$/"
    $P1429 = $P1428."CURSOR"()
    find_lex $P1430, "$name"
    $P1429."panic"("Redeclaration of symbol ", $P1430)
  if_1424_end:
.annotate 'line', 516
    find_dynamic_lex $P1432, "$*SCOPE"
    unless_null $P1432, vivify_467
    get_hll_global $P1432, "$SCOPE"
    unless_null $P1432, vivify_468
    die "Contextual $*SCOPE not found"
  vivify_468:
  vivify_467:
    set $S1433, $P1432
    iseq $I1434, $S1433, "has"
    if $I1434, if_1431
.annotate 'line', 545
    .const 'Sub' $P1478 = "82_1294786958.359" 
    capture_lex $P1478
    $P1478()
    goto if_1431_end
  if_1431:
.annotate 'line', 517
    find_lex $P1435, "$BLOCK"
    find_lex $P1436, "$name"
    $P1435."symbol"($P1436, "attribute" :named("scope"))
.annotate 'line', 518
    find_dynamic_lex $P1438, "$*PACKAGE-SETUP"
    unless_null $P1438, vivify_473
    get_hll_global $P1438, "$PACKAGE-SETUP"
    unless_null $P1438, vivify_474
    die "Contextual $*PACKAGE-SETUP not found"
  vivify_474:
  vivify_473:
    if $P1438, if_1437
.annotate 'line', 537
    find_lex $P1467, "$BLOCK"
    unless_null $P1467, vivify_475
    $P1467 = root_new ['parrot';'Hash']
  vivify_475:
    set $P1468, $P1467["attributes"]
    unless_null $P1468, vivify_476
    new $P1468, "Undef"
  vivify_476:
    if $P1468, unless_1466_end
.annotate 'line', 539
    get_hll_global $P1469, ["PAST"], "Op"
    $P1470 = $P1469."new"("list" :named("pasttype"), "attr" :named("named"))
    find_lex $P1471, "$BLOCK"
    unless_null $P1471, vivify_477
    $P1471 = root_new ['parrot';'Hash']
    store_lex "$BLOCK", $P1471
  vivify_477:
    set $P1471["attributes"], $P1470
  unless_1466_end:
.annotate 'line', 541
    find_lex $P1472, "$BLOCK"
    unless_null $P1472, vivify_478
    $P1472 = root_new ['parrot';'Hash']
  vivify_478:
    set $P1473, $P1472["attributes"]
    unless_null $P1473, vivify_479
    new $P1473, "Undef"
  vivify_479:
    find_lex $P1474, "$name"
    $P1473."push"($P1474)
.annotate 'line', 535
    goto if_1437_end
  if_1437:
.annotate 'line', 518
    .const 'Sub' $P1440 = "81_1294786958.359" 
    capture_lex $P1440
    $P1440()
  if_1437_end:
.annotate 'line', 543
    get_hll_global $P1475, ["PAST"], "Stmts"
    $P1476 = $P1475."new"()
    store_lex "$past", $P1476
  if_1431_end:
.annotate 'line', 553
    find_lex $P1502, "$/"
    find_lex $P1503, "$past"
    $P1504 = $P1502."!make"($P1503)
.annotate 'line', 508
    .return ($P1504)
  control_1406:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1505, exception, "payload"
    .return ($P1505)
.end


.namespace ["NQP";"Actions"]
.sub "_block1477"  :anon :subid("82_1294786958.359") :outer("80_1294786958.359")
.annotate 'line', 546
    new $P1479, "Undef"
    .lex "$scope", $P1479
.annotate 'line', 547
    new $P1480, "Undef"
    .lex "$decl", $P1480
.annotate 'line', 546
    find_dynamic_lex $P1483, "$*SCOPE"
    unless_null $P1483, vivify_469
    get_hll_global $P1483, "$SCOPE"
    unless_null $P1483, vivify_470
    die "Contextual $*SCOPE not found"
  vivify_470:
  vivify_469:
    set $S1484, $P1483
    iseq $I1485, $S1484, "our"
    if $I1485, if_1482
    new $P1487, "String"
    assign $P1487, "lexical"
    set $P1481, $P1487
    goto if_1482_end
  if_1482:
    new $P1486, "String"
    assign $P1486, "package"
    set $P1481, $P1486
  if_1482_end:
    store_lex "$scope", $P1481
.annotate 'line', 547
    get_hll_global $P1488, ["PAST"], "Var"
    find_lex $P1489, "$name"
    find_lex $P1490, "$scope"
.annotate 'line', 548
    find_lex $P1491, "$sigil"
    $P1492 = "vivitype"($P1491)
    find_lex $P1493, "$/"
    $P1494 = $P1488."new"($P1489 :named("name"), $P1490 :named("scope"), 1 :named("isdecl"), 1 :named("lvalue"), $P1492 :named("viviself"), $P1493 :named("node"))
.annotate 'line', 547
    store_lex "$decl", $P1494
.annotate 'line', 550
    find_lex $P1495, "$BLOCK"
    find_lex $P1496, "$name"
    find_lex $P1497, "$scope"
    $P1495."symbol"($P1496, $P1497 :named("scope"))
.annotate 'line', 551
    find_lex $P1498, "$BLOCK"
    unless_null $P1498, vivify_471
    $P1498 = root_new ['parrot';'ResizablePMCArray']
  vivify_471:
    set $P1499, $P1498[0]
    unless_null $P1499, vivify_472
    new $P1499, "Undef"
  vivify_472:
    find_lex $P1500, "$decl"
    $P1501 = $P1499."push"($P1500)
.annotate 'line', 545
    .return ($P1501)
.end


.namespace ["NQP";"Actions"]
.sub "_block1439"  :anon :subid("81_1294786958.359") :outer("80_1294786958.359")
.annotate 'line', 520
    new $P1441, "Undef"
    .lex "$meta-attr-type", $P1441
    find_dynamic_lex $P1444, "$*PKGDECL"
    unless_null $P1444, vivify_480
    get_hll_global $P1444, "$PKGDECL"
    unless_null $P1444, vivify_481
    die "Contextual $*PKGDECL not found"
  vivify_481:
  vivify_480:
    find_dynamic_lex $P1445, "%*HOW-METAATTR"
    unless_null $P1445, vivify_482
    get_hll_global $P1445, "%HOW-METAATTR"
    unless_null $P1445, vivify_483
    die "Contextual %*HOW-METAATTR not found"
  vivify_483:
  vivify_482:
    set $P1446, $P1445[$P1444]
    unless_null $P1446, vivify_484
    new $P1446, "Undef"
  vivify_484:
    unless $P1446, unless_1443
    set $P1442, $P1446
    goto unless_1443_end
  unless_1443:
    find_dynamic_lex $P1447, "$*DEFAULT-METAATTR"
    unless_null $P1447, vivify_485
    get_hll_global $P1447, "$DEFAULT-METAATTR"
    unless_null $P1447, vivify_486
    die "Contextual $*DEFAULT-METAATTR not found"
  vivify_486:
  vivify_485:
    set $P1442, $P1447
  unless_1443_end:
    store_lex "$meta-attr-type", $P1442
.annotate 'line', 521
    find_dynamic_lex $P1448, "$*PACKAGE-SETUP"
    unless_null $P1448, vivify_487
    get_hll_global $P1448, "$PACKAGE-SETUP"
    unless_null $P1448, vivify_488
    die "Contextual $*PACKAGE-SETUP not found"
  vivify_488:
  vivify_487:
    get_hll_global $P1449, ["PAST"], "Op"
.annotate 'line', 523
    get_hll_global $P1450, ["PAST"], "Op"
.annotate 'line', 525
    get_hll_global $P1451, ["PAST"], "Var"
    $P1452 = $P1451."new"("type_obj" :named("name"), "register" :named("scope"))
    $P1453 = $P1450."new"($P1452, "get_how PP" :named("pirop"))
.annotate 'line', 527
    get_hll_global $P1454, ["PAST"], "Var"
    $P1455 = $P1454."new"("type_obj" :named("name"), "register" :named("scope"))
.annotate 'line', 528
    get_hll_global $P1456, ["PAST"], "Op"
.annotate 'line', 530
    get_hll_global $P1457, ["PAST"], "Var"
    find_lex $P1458, "$meta-attr-type"
    $P1459 = $P1457."new"($P1458 :named("name"), "" :named("namespace"), "package" :named("scope"))
.annotate 'line', 531
    get_hll_global $P1460, ["PAST"], "Val"
    find_lex $P1461, "$name"
    $P1462 = $P1460."new"($P1461 :named("value"), "name" :named("named"))
    $P1463 = $P1456."new"($P1459, $P1462, "callmethod" :named("pasttype"), "new" :named("name"))
.annotate 'line', 528
    $P1464 = $P1449."new"($P1453, $P1455, $P1463, "callmethod" :named("pasttype"), "add_attribute" :named("name"))
.annotate 'line', 521
    $P1465 = $P1448."push"($P1464)
.annotate 'line', 518
    .return ($P1465)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "routine_declarator:sym<sub>"  :subid("83_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_1509
    .param pmc param_1510
.annotate 'line', 556
    new $P1508, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1508, control_1507
    push_eh $P1508
    .lex "self", param_1509
    .lex "$/", param_1510
    find_lex $P1511, "$/"
    find_lex $P1512, "$/"
    unless_null $P1512, vivify_489
    $P1512 = root_new ['parrot';'Hash']
  vivify_489:
    set $P1513, $P1512["routine_def"]
    unless_null $P1513, vivify_490
    new $P1513, "Undef"
  vivify_490:
    $P1514 = $P1513."ast"()
    $P1515 = $P1511."!make"($P1514)
    .return ($P1515)
  control_1507:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1516, exception, "payload"
    .return ($P1516)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "routine_declarator:sym<method>"  :subid("84_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_1520
    .param pmc param_1521
.annotate 'line', 557
    new $P1519, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1519, control_1518
    push_eh $P1519
    .lex "self", param_1520
    .lex "$/", param_1521
    find_lex $P1522, "$/"
    find_lex $P1523, "$/"
    unless_null $P1523, vivify_491
    $P1523 = root_new ['parrot';'Hash']
  vivify_491:
    set $P1524, $P1523["method_def"]
    unless_null $P1524, vivify_492
    new $P1524, "Undef"
  vivify_492:
    $P1525 = $P1524."ast"()
    $P1526 = $P1522."!make"($P1525)
    .return ($P1526)
  control_1518:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1527, exception, "payload"
    .return ($P1527)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "routine_def"  :subid("85_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_1531
    .param pmc param_1532
.annotate 'line', 559
    .const 'Sub' $P1591 = "87_1294786958.359" 
    capture_lex $P1591
    .const 'Sub' $P1545 = "86_1294786958.359" 
    capture_lex $P1545
    new $P1530, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1530, control_1529
    push_eh $P1530
    .lex "self", param_1531
    .lex "$/", param_1532
.annotate 'line', 560
    new $P1533, "Undef"
    .lex "$block", $P1533
.annotate 'line', 563
    new $P1534, "Undef"
    .lex "$past", $P1534
.annotate 'line', 560
    find_lex $P1535, "$/"
    unless_null $P1535, vivify_493
    $P1535 = root_new ['parrot';'Hash']
  vivify_493:
    set $P1536, $P1535["blockoid"]
    unless_null $P1536, vivify_494
    new $P1536, "Undef"
  vivify_494:
    $P1537 = $P1536."ast"()
    store_lex "$block", $P1537
.annotate 'line', 561
    find_lex $P1538, "$block"
    $P1538."blocktype"("declaration")
.annotate 'line', 562
    find_lex $P1539, "$block"
    $P1539."control"("return_pir")
.annotate 'line', 563
    find_lex $P1540, "$block"
    store_lex "$past", $P1540
.annotate 'line', 564
    find_lex $P1542, "$/"
    unless_null $P1542, vivify_495
    $P1542 = root_new ['parrot';'Hash']
  vivify_495:
    set $P1543, $P1542["deflongname"]
    unless_null $P1543, vivify_496
    new $P1543, "Undef"
  vivify_496:
    unless $P1543, if_1541_end
    .const 'Sub' $P1545 = "86_1294786958.359" 
    capture_lex $P1545
    $P1545()
  if_1541_end:
.annotate 'line', 574
    find_lex $P1577, "$block"
    find_lex $P1578, "$past"
    unless_null $P1578, vivify_510
    $P1578 = root_new ['parrot';'Hash']
    store_lex "$past", $P1578
  vivify_510:
    set $P1578["block_past"], $P1577
.annotate 'line', 575
    find_lex $P1579, "$/"
    find_lex $P1580, "$past"
    $P1579."!make"($P1580)
.annotate 'line', 576
    find_lex $P1583, "$/"
    unless_null $P1583, vivify_511
    $P1583 = root_new ['parrot';'Hash']
  vivify_511:
    set $P1584, $P1583["trait"]
    unless_null $P1584, vivify_512
    new $P1584, "Undef"
  vivify_512:
    if $P1584, if_1582
    set $P1581, $P1584
    goto if_1582_end
  if_1582:
.annotate 'line', 577
    find_lex $P1586, "$/"
    unless_null $P1586, vivify_513
    $P1586 = root_new ['parrot';'Hash']
  vivify_513:
    set $P1587, $P1586["trait"]
    unless_null $P1587, vivify_514
    new $P1587, "Undef"
  vivify_514:
    defined $I1588, $P1587
    unless $I1588, for_undef_515
    iter $P1585, $P1587
    new $P1598, 'ExceptionHandler'
    set_addr $P1598, loop1597_handler
    $P1598."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1598
  loop1597_test:
    unless $P1585, loop1597_done
    shift $P1589, $P1585
  loop1597_redo:
    .const 'Sub' $P1591 = "87_1294786958.359" 
    capture_lex $P1591
    $P1591($P1589)
  loop1597_next:
    goto loop1597_test
  loop1597_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1599, exception, 'type'
    eq $P1599, .CONTROL_LOOP_NEXT, loop1597_next
    eq $P1599, .CONTROL_LOOP_REDO, loop1597_redo
  loop1597_done:
    pop_eh 
  for_undef_515:
.annotate 'line', 576
    set $P1581, $P1585
  if_1582_end:
.annotate 'line', 559
    .return ($P1581)
  control_1529:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1600, exception, "payload"
    .return ($P1600)
.end


.namespace ["NQP";"Actions"]
.sub "_block1544"  :anon :subid("86_1294786958.359") :outer("85_1294786958.359")
.annotate 'line', 565
    new $P1546, "Undef"
    .lex "$name", $P1546
    find_lex $P1547, "$/"
    unless_null $P1547, vivify_497
    $P1547 = root_new ['parrot';'Hash']
  vivify_497:
    set $P1548, $P1547["sigil"]
    unless_null $P1548, vivify_498
    $P1548 = root_new ['parrot';'ResizablePMCArray']
  vivify_498:
    set $P1549, $P1548[0]
    unless_null $P1549, vivify_499
    new $P1549, "Undef"
  vivify_499:
    set $S1550, $P1549
    new $P1551, 'String'
    set $P1551, $S1550
    find_lex $P1552, "$/"
    unless_null $P1552, vivify_500
    $P1552 = root_new ['parrot';'Hash']
  vivify_500:
    set $P1553, $P1552["deflongname"]
    unless_null $P1553, vivify_501
    $P1553 = root_new ['parrot';'ResizablePMCArray']
  vivify_501:
    set $P1554, $P1553[0]
    unless_null $P1554, vivify_502
    new $P1554, "Undef"
  vivify_502:
    $S1555 = $P1554."ast"()
    concat $P1556, $P1551, $S1555
    store_lex "$name", $P1556
.annotate 'line', 566
    find_lex $P1557, "$past"
    find_lex $P1558, "$name"
    $P1557."name"($P1558)
.annotate 'line', 567
    find_dynamic_lex $P1561, "$*SCOPE"
    unless_null $P1561, vivify_503
    get_hll_global $P1561, "$SCOPE"
    unless_null $P1561, vivify_504
    die "Contextual $*SCOPE not found"
  vivify_504:
  vivify_503:
    set $S1562, $P1561
    isne $I1563, $S1562, "our"
    if $I1563, if_1560
    new $P1559, 'Integer'
    set $P1559, $I1563
    goto if_1560_end
  if_1560:
.annotate 'line', 568
    get_global $P1564, "@BLOCK"
    unless_null $P1564, vivify_505
    $P1564 = root_new ['parrot';'ResizablePMCArray']
  vivify_505:
    set $P1565, $P1564[0]
    unless_null $P1565, vivify_506
    $P1565 = root_new ['parrot';'ResizablePMCArray']
  vivify_506:
    set $P1566, $P1565[0]
    unless_null $P1566, vivify_507
    new $P1566, "Undef"
  vivify_507:
    get_hll_global $P1567, ["PAST"], "Var"
    find_lex $P1568, "$name"
    find_lex $P1569, "$past"
    $P1570 = $P1567."new"($P1568 :named("name"), 1 :named("isdecl"), $P1569 :named("viviself"), "lexical" :named("scope"))
    $P1566."push"($P1570)
.annotate 'line', 570
    get_global $P1571, "@BLOCK"
    unless_null $P1571, vivify_508
    $P1571 = root_new ['parrot';'ResizablePMCArray']
  vivify_508:
    set $P1572, $P1571[0]
    unless_null $P1572, vivify_509
    new $P1572, "Undef"
  vivify_509:
    find_lex $P1573, "$name"
    $P1572."symbol"($P1573, "lexical" :named("scope"))
.annotate 'line', 571
    get_hll_global $P1574, ["PAST"], "Var"
    find_lex $P1575, "$name"
    $P1576 = $P1574."new"($P1575 :named("name"))
    store_lex "$past", $P1576
.annotate 'line', 567
    set $P1559, $P1576
  if_1560_end:
.annotate 'line', 564
    .return ($P1559)
.end


.namespace ["NQP";"Actions"]
.sub "_block1590"  :anon :subid("87_1294786958.359") :outer("85_1294786958.359")
    .param pmc param_1592
.annotate 'line', 577
    .lex "$_", param_1592
    find_lex $P1593, "$_"
    $P1594 = $P1593."ast"()
    find_lex $P1595, "$/"
    $P1596 = $P1594($P1595)
    .return ($P1596)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "method_def"  :subid("88_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_1604
    .param pmc param_1605
.annotate 'line', 582
    .const 'Sub' $P1721 = "93_1294786958.359" 
    capture_lex $P1721
    .const 'Sub' $P1668 = "91_1294786958.359" 
    capture_lex $P1668
    .const 'Sub' $P1609 = "89_1294786958.359" 
    capture_lex $P1609
    new $P1603, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1603, control_1602
    push_eh $P1603
    .lex "self", param_1604
    .lex "$/", param_1605
.annotate 'line', 583
    find_dynamic_lex $P1607, "$*PACKAGE-SETUP"
    unless_null $P1607, vivify_516
    get_hll_global $P1607, "$PACKAGE-SETUP"
    unless_null $P1607, vivify_517
    die "Contextual $*PACKAGE-SETUP not found"
  vivify_517:
  vivify_516:
    if $P1607, if_1606
.annotate 'line', 613
    .const 'Sub' $P1668 = "91_1294786958.359" 
    capture_lex $P1668
    $P1668()
    goto if_1606_end
  if_1606:
.annotate 'line', 583
    .const 'Sub' $P1609 = "89_1294786958.359" 
    capture_lex $P1609
    $P1609()
  if_1606_end:
.annotate 'line', 630
    find_lex $P1713, "$/"
    unless_null $P1713, vivify_548
    $P1713 = root_new ['parrot';'Hash']
  vivify_548:
    set $P1714, $P1713["trait"]
    unless_null $P1714, vivify_549
    new $P1714, "Undef"
  vivify_549:
    if $P1714, if_1712
    set $P1711, $P1714
    goto if_1712_end
  if_1712:
.annotate 'line', 631
    find_lex $P1716, "$/"
    unless_null $P1716, vivify_550
    $P1716 = root_new ['parrot';'Hash']
  vivify_550:
    set $P1717, $P1716["trait"]
    unless_null $P1717, vivify_551
    new $P1717, "Undef"
  vivify_551:
    defined $I1718, $P1717
    unless $I1718, for_undef_552
    iter $P1715, $P1717
    new $P1728, 'ExceptionHandler'
    set_addr $P1728, loop1727_handler
    $P1728."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1728
  loop1727_test:
    unless $P1715, loop1727_done
    shift $P1719, $P1715
  loop1727_redo:
    .const 'Sub' $P1721 = "93_1294786958.359" 
    capture_lex $P1721
    $P1721($P1719)
  loop1727_next:
    goto loop1727_test
  loop1727_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1729, exception, 'type'
    eq $P1729, .CONTROL_LOOP_NEXT, loop1727_next
    eq $P1729, .CONTROL_LOOP_REDO, loop1727_redo
  loop1727_done:
    pop_eh 
  for_undef_552:
.annotate 'line', 630
    set $P1711, $P1715
  if_1712_end:
.annotate 'line', 582
    .return ($P1711)
  control_1602:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1730, exception, "payload"
    .return ($P1730)
.end


.namespace ["NQP";"Actions"]
.sub "_block1667"  :anon :subid("91_1294786958.359") :outer("88_1294786958.359")
.annotate 'line', 613
    .const 'Sub' $P1689 = "92_1294786958.359" 
    capture_lex $P1689
.annotate 'line', 614
    new $P1669, "Undef"
    .lex "$past", $P1669
    find_lex $P1670, "$/"
    unless_null $P1670, vivify_518
    $P1670 = root_new ['parrot';'Hash']
  vivify_518:
    set $P1671, $P1670["blockoid"]
    unless_null $P1671, vivify_519
    new $P1671, "Undef"
  vivify_519:
    $P1672 = $P1671."ast"()
    store_lex "$past", $P1672
.annotate 'line', 615
    find_lex $P1673, "$past"
    $P1673."blocktype"("method")
.annotate 'line', 616
    find_dynamic_lex $P1675, "$*SCOPE"
    unless_null $P1675, vivify_520
    get_hll_global $P1675, "$SCOPE"
    unless_null $P1675, vivify_521
    die "Contextual $*SCOPE not found"
  vivify_521:
  vivify_520:
    set $S1676, $P1675
    iseq $I1677, $S1676, "our"
    unless $I1677, if_1674_end
.annotate 'line', 617
    find_lex $P1678, "$past"
    $P1678."pirflags"(":nsentry")
  if_1674_end:
.annotate 'line', 619
    find_lex $P1679, "$past"
    $P1679."control"("return_pir")
.annotate 'line', 620
    find_lex $P1680, "$past"
    unless_null $P1680, vivify_522
    $P1680 = root_new ['parrot';'ResizablePMCArray']
  vivify_522:
    set $P1681, $P1680[0]
    unless_null $P1681, vivify_523
    new $P1681, "Undef"
  vivify_523:
    get_hll_global $P1682, ["PAST"], "Op"
    $P1683 = $P1682."new"("    .lex \"self\", self" :named("inline"))
    $P1681."unshift"($P1683)
.annotate 'line', 621
    find_lex $P1684, "$past"
    $P1684."symbol"("self", "lexical" :named("scope"))
.annotate 'line', 622
    find_lex $P1686, "$/"
    unless_null $P1686, vivify_524
    $P1686 = root_new ['parrot';'Hash']
  vivify_524:
    set $P1687, $P1686["deflongname"]
    unless_null $P1687, vivify_525
    new $P1687, "Undef"
  vivify_525:
    unless $P1687, if_1685_end
    .const 'Sub' $P1689 = "92_1294786958.359" 
    capture_lex $P1689
    $P1689()
  if_1685_end:
.annotate 'line', 626
    find_dynamic_lex $P1701, "$*MULTINESS"
    unless_null $P1701, vivify_529
    get_hll_global $P1701, "$MULTINESS"
    unless_null $P1701, vivify_530
    die "Contextual $*MULTINESS not found"
  vivify_530:
  vivify_529:
    set $S1702, $P1701
    iseq $I1703, $S1702, "multi"
    unless $I1703, if_1700_end
    find_lex $P1704, "$past"
    $P1705 = $P1704."multi"()
    $P1705."unshift"("_")
  if_1700_end:
.annotate 'line', 627
    find_lex $P1706, "$past"
    find_lex $P1707, "$past"
    unless_null $P1707, vivify_531
    $P1707 = root_new ['parrot';'Hash']
    store_lex "$past", $P1707
  vivify_531:
    set $P1707["block_past"], $P1706
.annotate 'line', 628
    find_dynamic_lex $P1708, "$/"
    find_lex $P1709, "$past"
    $P1710 = $P1708."!make"($P1709)
.annotate 'line', 613
    .return ($P1710)
.end


.namespace ["NQP";"Actions"]
.sub "_block1688"  :anon :subid("92_1294786958.359") :outer("91_1294786958.359")
.annotate 'line', 623
    new $P1690, "Undef"
    .lex "$name", $P1690
    find_lex $P1691, "$/"
    unless_null $P1691, vivify_526
    $P1691 = root_new ['parrot';'Hash']
  vivify_526:
    set $P1692, $P1691["deflongname"]
    unless_null $P1692, vivify_527
    $P1692 = root_new ['parrot';'ResizablePMCArray']
  vivify_527:
    set $P1693, $P1692[0]
    unless_null $P1693, vivify_528
    new $P1693, "Undef"
  vivify_528:
    $P1694 = $P1693."ast"()
    set $S1695, $P1694
    new $P1696, 'String'
    set $P1696, $S1695
    store_lex "$name", $P1696
.annotate 'line', 624
    find_lex $P1697, "$past"
    find_lex $P1698, "$name"
    $P1699 = $P1697."name"($P1698)
.annotate 'line', 622
    .return ($P1699)
.end


.namespace ["NQP";"Actions"]
.sub "_block1608"  :anon :subid("89_1294786958.359") :outer("88_1294786958.359")
.annotate 'line', 583
    .const 'Sub' $P1624 = "90_1294786958.359" 
    capture_lex $P1624
.annotate 'line', 585
    new $P1610, "Undef"
    .lex "$past", $P1610
    find_lex $P1611, "$/"
    unless_null $P1611, vivify_532
    $P1611 = root_new ['parrot';'Hash']
  vivify_532:
    set $P1612, $P1611["blockoid"]
    unless_null $P1612, vivify_533
    new $P1612, "Undef"
  vivify_533:
    $P1613 = $P1612."ast"()
    store_lex "$past", $P1613
.annotate 'line', 586
    find_lex $P1614, "$past"
    $P1614."control"("return_pir")
.annotate 'line', 587
    find_lex $P1615, "$past"
    unless_null $P1615, vivify_534
    $P1615 = root_new ['parrot';'ResizablePMCArray']
  vivify_534:
    set $P1616, $P1615[0]
    unless_null $P1616, vivify_535
    new $P1616, "Undef"
  vivify_535:
    get_hll_global $P1617, ["PAST"], "Var"
    $P1618 = $P1617."new"("self" :named("name"), "parameter" :named("scope"))
    $P1616."unshift"($P1618)
.annotate 'line', 588
    find_lex $P1619, "$past"
    $P1619."symbol"("self", "lexical" :named("scope"))
.annotate 'line', 591
    find_lex $P1621, "$/"
    unless_null $P1621, vivify_536
    $P1621 = root_new ['parrot';'Hash']
  vivify_536:
    set $P1622, $P1621["deflongname"]
    unless_null $P1622, vivify_537
    new $P1622, "Undef"
  vivify_537:
    unless $P1622, if_1620_end
    .const 'Sub' $P1624 = "90_1294786958.359" 
    capture_lex $P1624
    $P1624()
  if_1620_end:
.annotate 'line', 606
    find_dynamic_lex $P1658, "$*SCOPE"
    unless_null $P1658, vivify_545
    get_hll_global $P1658, "$SCOPE"
    unless_null $P1658, vivify_546
    die "Contextual $*SCOPE not found"
  vivify_546:
  vivify_545:
    set $S1659, $P1658
    iseq $I1660, $S1659, "our"
    unless $I1660, if_1657_end
.annotate 'line', 607
    find_lex $P1661, "$past"
    $P1661."pirflags"(":nsentry")
  if_1657_end:
.annotate 'line', 610
    find_lex $P1662, "$past"
    find_lex $P1663, "$past"
    unless_null $P1663, vivify_547
    $P1663 = root_new ['parrot';'Hash']
    store_lex "$past", $P1663
  vivify_547:
    set $P1663["block_past"], $P1662
.annotate 'line', 611
    find_dynamic_lex $P1664, "$/"
    find_lex $P1665, "$past"
    $P1666 = $P1664."!make"($P1665)
.annotate 'line', 583
    .return ($P1666)
.end


.namespace ["NQP";"Actions"]
.sub "_block1623"  :anon :subid("90_1294786958.359") :outer("89_1294786958.359")
.annotate 'line', 592
    new $P1625, "Undef"
    .lex "$name", $P1625
    find_lex $P1626, "$/"
    unless_null $P1626, vivify_538
    $P1626 = root_new ['parrot';'Hash']
  vivify_538:
    set $P1627, $P1626["deflongname"]
    unless_null $P1627, vivify_539
    $P1627 = root_new ['parrot';'ResizablePMCArray']
  vivify_539:
    set $P1628, $P1627[0]
    unless_null $P1628, vivify_540
    new $P1628, "Undef"
  vivify_540:
    $P1629 = $P1628."ast"()
    set $S1630, $P1629
    new $P1631, 'String'
    set $P1631, $S1630
    store_lex "$name", $P1631
.annotate 'line', 593
    find_lex $P1632, "$past"
    find_lex $P1633, "$name"
    $P1632."name"($P1633)
.annotate 'line', 594
    find_dynamic_lex $P1634, "$*PACKAGE-SETUP"
    unless_null $P1634, vivify_541
    get_hll_global $P1634, "$PACKAGE-SETUP"
    unless_null $P1634, vivify_542
    die "Contextual $*PACKAGE-SETUP not found"
  vivify_542:
  vivify_541:
    get_hll_global $P1635, ["PAST"], "Op"
.annotate 'line', 595
    find_dynamic_lex $P1638, "$*MULTINESS"
    unless_null $P1638, vivify_543
    get_hll_global $P1638, "$MULTINESS"
    unless_null $P1638, vivify_544
    die "Contextual $*MULTINESS not found"
  vivify_544:
  vivify_543:
    set $S1639, $P1638
    iseq $I1640, $S1639, "multi"
    if $I1640, if_1637
    new $P1642, "String"
    assign $P1642, "add_method"
    set $P1636, $P1642
    goto if_1637_end
  if_1637:
    new $P1641, "String"
    assign $P1641, "add_multi_method"
    set $P1636, $P1641
  if_1637_end:
.annotate 'line', 596
    get_hll_global $P1643, ["PAST"], "Op"
.annotate 'line', 599
    get_hll_global $P1644, ["PAST"], "Var"
    $P1645 = $P1644."new"("type_obj" :named("name"), "register" :named("scope"))
    $P1646 = $P1643."new"($P1645, "get_how PP" :named("pirop"))
.annotate 'line', 601
    get_hll_global $P1647, ["PAST"], "Var"
    $P1648 = $P1647."new"("type_obj" :named("name"), "register" :named("scope"))
.annotate 'line', 602
    get_hll_global $P1649, ["PAST"], "Val"
    find_lex $P1650, "$name"
    $P1651 = $P1649."new"($P1650 :named("value"))
.annotate 'line', 603
    get_hll_global $P1652, ["PAST"], "Val"
    find_lex $P1653, "$past"
    $P1654 = $P1652."new"($P1653 :named("value"))
    $P1655 = $P1635."new"($P1646, $P1648, $P1651, $P1654, "callmethod" :named("pasttype"), $P1636 :named("name"))
.annotate 'line', 594
    $P1656 = $P1634."push"($P1655)
.annotate 'line', 591
    .return ($P1656)
.end


.namespace ["NQP";"Actions"]
.sub "_block1720"  :anon :subid("93_1294786958.359") :outer("88_1294786958.359")
    .param pmc param_1722
.annotate 'line', 631
    .lex "$_", param_1722
    find_lex $P1723, "$_"
    $P1724 = $P1723."ast"()
    find_lex $P1725, "$/"
    $P1726 = $P1724($P1725)
    .return ($P1726)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "signature"  :subid("94_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_1734
    .param pmc param_1735
.annotate 'line', 636
    .const 'Sub' $P1761 = "96_1294786958.359" 
    capture_lex $P1761
    .const 'Sub' $P1746 = "95_1294786958.359" 
    capture_lex $P1746
    new $P1733, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1733, control_1732
    push_eh $P1733
    .lex "self", param_1734
    .lex "$/", param_1735
.annotate 'line', 637
    new $P1736, "Undef"
    .lex "$BLOCKINIT", $P1736
    get_global $P1737, "@BLOCK"
    unless_null $P1737, vivify_553
    $P1737 = root_new ['parrot';'ResizablePMCArray']
  vivify_553:
    set $P1738, $P1737[0]
    unless_null $P1738, vivify_554
    $P1738 = root_new ['parrot';'ResizablePMCArray']
  vivify_554:
    set $P1739, $P1738[0]
    unless_null $P1739, vivify_555
    new $P1739, "Undef"
  vivify_555:
    store_lex "$BLOCKINIT", $P1739
.annotate 'line', 639
    find_lex $P1741, "$/"
    unless_null $P1741, vivify_556
    $P1741 = root_new ['parrot';'Hash']
  vivify_556:
    set $P1742, $P1741["parameter"]
    unless_null $P1742, vivify_557
    new $P1742, "Undef"
  vivify_557:
    defined $I1743, $P1742
    unless $I1743, for_undef_558
    iter $P1740, $P1742
    new $P1753, 'ExceptionHandler'
    set_addr $P1753, loop1752_handler
    $P1753."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1753
  loop1752_test:
    unless $P1740, loop1752_done
    shift $P1744, $P1740
  loop1752_redo:
    .const 'Sub' $P1746 = "95_1294786958.359" 
    capture_lex $P1746
    $P1746($P1744)
  loop1752_next:
    goto loop1752_test
  loop1752_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1754, exception, 'type'
    eq $P1754, .CONTROL_LOOP_NEXT, loop1752_next
    eq $P1754, .CONTROL_LOOP_REDO, loop1752_redo
  loop1752_done:
    pop_eh 
  for_undef_558:
.annotate 'line', 642
    find_dynamic_lex $P1757, "$*MULTINESS"
    unless_null $P1757, vivify_559
    get_hll_global $P1757, "$MULTINESS"
    unless_null $P1757, vivify_560
    die "Contextual $*MULTINESS not found"
  vivify_560:
  vivify_559:
    set $S1758, $P1757
    iseq $I1759, $S1758, "multi"
    if $I1759, if_1756
    new $P1755, 'Integer'
    set $P1755, $I1759
    goto if_1756_end
  if_1756:
    .const 'Sub' $P1761 = "96_1294786958.359" 
    capture_lex $P1761
    $P1799 = $P1761()
    set $P1755, $P1799
  if_1756_end:
.annotate 'line', 636
    .return ($P1755)
  control_1732:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1800, exception, "payload"
    .return ($P1800)
.end


.namespace ["NQP";"Actions"]
.sub "_block1745"  :anon :subid("95_1294786958.359") :outer("94_1294786958.359")
    .param pmc param_1747
.annotate 'line', 639
    .lex "$_", param_1747
    find_lex $P1748, "$BLOCKINIT"
    find_lex $P1749, "$_"
    $P1750 = $P1749."ast"()
    $P1751 = $P1748."push"($P1750)
    .return ($P1751)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "_block1760"  :anon :subid("96_1294786958.359") :outer("94_1294786958.359")
.annotate 'line', 642
    .const 'Sub' $P1770 = "97_1294786958.359" 
    capture_lex $P1770
.annotate 'line', 643
    $P1762 = root_new ['parrot';'ResizablePMCArray']
    .lex "@params", $P1762
.annotate 'line', 642
    find_lex $P1763, "@params"
.annotate 'line', 644
    find_lex $P1765, "$BLOCKINIT"
    $P1766 = $P1765."list"()
    defined $I1767, $P1766
    unless $I1767, for_undef_561
    iter $P1764, $P1766
    new $P1793, 'ExceptionHandler'
    set_addr $P1793, loop1792_handler
    $P1793."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1793
  loop1792_test:
    unless $P1764, loop1792_done
    shift $P1768, $P1764
  loop1792_redo:
    .const 'Sub' $P1770 = "97_1294786958.359" 
    capture_lex $P1770
    $P1770($P1768)
  loop1792_next:
    goto loop1792_test
  loop1792_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1794, exception, 'type'
    eq $P1794, .CONTROL_LOOP_NEXT, loop1792_next
    eq $P1794, .CONTROL_LOOP_REDO, loop1792_redo
  loop1792_done:
    pop_eh 
  for_undef_561:
.annotate 'line', 648
    get_global $P1795, "@BLOCK"
    unless_null $P1795, vivify_562
    $P1795 = root_new ['parrot';'ResizablePMCArray']
  vivify_562:
    set $P1796, $P1795[0]
    unless_null $P1796, vivify_563
    new $P1796, "Undef"
  vivify_563:
    find_lex $P1797, "@params"
    $P1798 = $P1796."multi"($P1797)
.annotate 'line', 642
    .return ($P1798)
.end


.namespace ["NQP";"Actions"]
.sub "_block1769"  :anon :subid("97_1294786958.359") :outer("96_1294786958.359")
    .param pmc param_1771
.annotate 'line', 644
    .lex "$_", param_1771
.annotate 'line', 646
    find_lex $P1778, "$_"
    $P1779 = $P1778."slurpy"()
    unless $P1779, unless_1777
    set $P1776, $P1779
    goto unless_1777_end
  unless_1777:
    find_lex $P1780, "$_"
    $P1781 = $P1780."named"()
    set $P1776, $P1781
  unless_1777_end:
    unless $P1776, unless_1775
    set $P1774, $P1776
    goto unless_1775_end
  unless_1775:
    find_lex $P1782, "$_"
    $P1783 = $P1782."viviself"()
    set $P1774, $P1783
  unless_1775_end:
    unless $P1774, unless_1773
    set $P1772, $P1774
    goto unless_1773_end
  unless_1773:
.annotate 'line', 645
    find_lex $P1784, "@params"
    find_lex $P1786, "$_"
    $P1787 = $P1786."multitype"()
    set $P1785, $P1787
    defined $I1789, $P1785
    if $I1789, default_1788
    new $P1790, "String"
    assign $P1790, "_"
    set $P1785, $P1790
  default_1788:
    $P1791 = $P1784."push"($P1785)
    set $P1772, $P1791
  unless_1773_end:
.annotate 'line', 644
    .return ($P1772)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "parameter"  :subid("98_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_1804
    .param pmc param_1805
.annotate 'line', 652
    .const 'Sub' $P1886 = "99_1294786958.359" 
    capture_lex $P1886
    new $P1803, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1803, control_1802
    push_eh $P1803
    .lex "self", param_1804
    .lex "$/", param_1805
.annotate 'line', 653
    new $P1806, "Undef"
    .lex "$quant", $P1806
.annotate 'line', 654
    new $P1807, "Undef"
    .lex "$past", $P1807
.annotate 'line', 653
    find_lex $P1808, "$/"
    unless_null $P1808, vivify_564
    $P1808 = root_new ['parrot';'Hash']
  vivify_564:
    set $P1809, $P1808["quant"]
    unless_null $P1809, vivify_565
    new $P1809, "Undef"
  vivify_565:
    store_lex "$quant", $P1809
    find_lex $P1810, "$past"
.annotate 'line', 655
    find_lex $P1812, "$/"
    unless_null $P1812, vivify_566
    $P1812 = root_new ['parrot';'Hash']
  vivify_566:
    set $P1813, $P1812["named_param"]
    unless_null $P1813, vivify_567
    new $P1813, "Undef"
  vivify_567:
    if $P1813, if_1811
.annotate 'line', 662
    find_lex $P1827, "$/"
    unless_null $P1827, vivify_568
    $P1827 = root_new ['parrot';'Hash']
  vivify_568:
    set $P1828, $P1827["param_var"]
    unless_null $P1828, vivify_569
    new $P1828, "Undef"
  vivify_569:
    $P1829 = $P1828."ast"()
    store_lex "$past", $P1829
.annotate 'line', 663
    find_lex $P1831, "$quant"
    set $S1832, $P1831
    iseq $I1833, $S1832, "*"
    if $I1833, if_1830
.annotate 'line', 667
    find_lex $P1842, "$quant"
    set $S1843, $P1842
    iseq $I1844, $S1843, "?"
    unless $I1844, if_1841_end
.annotate 'line', 668
    find_lex $P1845, "$past"
    find_lex $P1846, "$/"
    unless_null $P1846, vivify_570
    $P1846 = root_new ['parrot';'Hash']
  vivify_570:
    set $P1847, $P1846["param_var"]
    unless_null $P1847, vivify_571
    $P1847 = root_new ['parrot';'Hash']
  vivify_571:
    set $P1848, $P1847["sigil"]
    unless_null $P1848, vivify_572
    new $P1848, "Undef"
  vivify_572:
    $P1849 = "vivitype"($P1848)
    $P1845."viviself"($P1849)
  if_1841_end:
.annotate 'line', 667
    goto if_1830_end
  if_1830:
.annotate 'line', 664
    find_lex $P1834, "$past"
    $P1834."slurpy"(1)
.annotate 'line', 665
    find_lex $P1835, "$past"
    find_lex $P1836, "$/"
    unless_null $P1836, vivify_573
    $P1836 = root_new ['parrot';'Hash']
  vivify_573:
    set $P1837, $P1836["param_var"]
    unless_null $P1837, vivify_574
    $P1837 = root_new ['parrot';'Hash']
  vivify_574:
    set $P1838, $P1837["sigil"]
    unless_null $P1838, vivify_575
    new $P1838, "Undef"
  vivify_575:
    set $S1839, $P1838
    iseq $I1840, $S1839, "%"
    $P1835."named"($I1840)
  if_1830_end:
.annotate 'line', 661
    goto if_1811_end
  if_1811:
.annotate 'line', 656
    find_lex $P1814, "$/"
    unless_null $P1814, vivify_576
    $P1814 = root_new ['parrot';'Hash']
  vivify_576:
    set $P1815, $P1814["named_param"]
    unless_null $P1815, vivify_577
    new $P1815, "Undef"
  vivify_577:
    $P1816 = $P1815."ast"()
    store_lex "$past", $P1816
.annotate 'line', 657
    find_lex $P1818, "$quant"
    set $S1819, $P1818
    isne $I1820, $S1819, "!"
    unless $I1820, if_1817_end
.annotate 'line', 658
    find_lex $P1821, "$past"
    find_lex $P1822, "$/"
    unless_null $P1822, vivify_578
    $P1822 = root_new ['parrot';'Hash']
  vivify_578:
    set $P1823, $P1822["named_param"]
    unless_null $P1823, vivify_579
    $P1823 = root_new ['parrot';'Hash']
  vivify_579:
    set $P1824, $P1823["param_var"]
    unless_null $P1824, vivify_580
    $P1824 = root_new ['parrot';'Hash']
  vivify_580:
    set $P1825, $P1824["sigil"]
    unless_null $P1825, vivify_581
    new $P1825, "Undef"
  vivify_581:
    $P1826 = "vivitype"($P1825)
    $P1821."viviself"($P1826)
  if_1817_end:
  if_1811_end:
.annotate 'line', 671
    find_lex $P1851, "$/"
    unless_null $P1851, vivify_582
    $P1851 = root_new ['parrot';'Hash']
  vivify_582:
    set $P1852, $P1851["default_value"]
    unless_null $P1852, vivify_583
    new $P1852, "Undef"
  vivify_583:
    unless $P1852, if_1850_end
.annotate 'line', 672
    find_lex $P1854, "$quant"
    set $S1855, $P1854
    iseq $I1856, $S1855, "*"
    unless $I1856, if_1853_end
.annotate 'line', 673
    find_lex $P1857, "$/"
    $P1858 = $P1857."CURSOR"()
    $P1858."panic"("Can't put default on slurpy parameter")
  if_1853_end:
.annotate 'line', 675
    find_lex $P1860, "$quant"
    set $S1861, $P1860
    iseq $I1862, $S1861, "!"
    unless $I1862, if_1859_end
.annotate 'line', 676
    find_lex $P1863, "$/"
    $P1864 = $P1863."CURSOR"()
    $P1864."panic"("Can't put default on required parameter")
  if_1859_end:
.annotate 'line', 678
    find_lex $P1865, "$past"
    find_lex $P1866, "$/"
    unless_null $P1866, vivify_584
    $P1866 = root_new ['parrot';'Hash']
  vivify_584:
    set $P1867, $P1866["default_value"]
    unless_null $P1867, vivify_585
    $P1867 = root_new ['parrot';'ResizablePMCArray']
  vivify_585:
    set $P1868, $P1867[0]
    unless_null $P1868, vivify_586
    $P1868 = root_new ['parrot';'Hash']
  vivify_586:
    set $P1869, $P1868["EXPR"]
    unless_null $P1869, vivify_587
    new $P1869, "Undef"
  vivify_587:
    $P1870 = $P1869."ast"()
    $P1865."viviself"($P1870)
  if_1850_end:
.annotate 'line', 680
    find_lex $P1872, "$past"
    $P1873 = $P1872."viviself"()
    if $P1873, unless_1871_end
    get_global $P1874, "@BLOCK"
    unless_null $P1874, vivify_588
    $P1874 = root_new ['parrot';'ResizablePMCArray']
  vivify_588:
    set $P1875, $P1874[0]
    unless_null $P1875, vivify_589
    new $P1875, "Undef"
  vivify_589:
    get_global $P1876, "@BLOCK"
    unless_null $P1876, vivify_590
    $P1876 = root_new ['parrot';'ResizablePMCArray']
  vivify_590:
    set $P1877, $P1876[0]
    unless_null $P1877, vivify_591
    new $P1877, "Undef"
  vivify_591:
    $P1878 = $P1877."arity"()
    set $N1879, $P1878
    new $P1880, 'Float'
    set $P1880, $N1879
    add $P1881, $P1880, 1
    $P1875."arity"($P1881)
  unless_1871_end:
.annotate 'line', 683
    find_lex $P1883, "$/"
    unless_null $P1883, vivify_592
    $P1883 = root_new ['parrot';'Hash']
  vivify_592:
    set $P1884, $P1883["typename"]
    unless_null $P1884, vivify_593
    new $P1884, "Undef"
  vivify_593:
    unless $P1884, if_1882_end
    .const 'Sub' $P1886 = "99_1294786958.359" 
    capture_lex $P1886
    $P1886()
  if_1882_end:
.annotate 'line', 689
    find_lex $P1910, "$/"
    find_lex $P1911, "$past"
    $P1912 = $P1910."!make"($P1911)
.annotate 'line', 652
    .return ($P1912)
  control_1802:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1913, exception, "payload"
    .return ($P1913)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "_block1885"  :anon :subid("99_1294786958.359") :outer("98_1294786958.359")
.annotate 'line', 683
    .const 'Sub' $P1898 = "100_1294786958.359" 
    capture_lex $P1898
.annotate 'line', 684
    $P1887 = root_new ['parrot';'ResizablePMCArray']
    .lex "@multitype", $P1887
.annotate 'line', 683
    find_lex $P1888, "@multitype"
.annotate 'line', 685
    find_lex $P1890, "$/"
    unless_null $P1890, vivify_594
    $P1890 = root_new ['parrot';'Hash']
  vivify_594:
    set $P1891, $P1890["typename"]
    unless_null $P1891, vivify_595
    $P1891 = root_new ['parrot';'ResizablePMCArray']
  vivify_595:
    set $P1892, $P1891[0]
    unless_null $P1892, vivify_596
    $P1892 = root_new ['parrot';'Hash']
  vivify_596:
    set $P1893, $P1892["name"]
    unless_null $P1893, vivify_597
    $P1893 = root_new ['parrot';'Hash']
  vivify_597:
    set $P1894, $P1893["identifier"]
    unless_null $P1894, vivify_598
    new $P1894, "Undef"
  vivify_598:
    defined $I1895, $P1894
    unless $I1895, for_undef_599
    iter $P1889, $P1894
    new $P1905, 'ExceptionHandler'
    set_addr $P1905, loop1904_handler
    $P1905."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1905
  loop1904_test:
    unless $P1889, loop1904_done
    shift $P1896, $P1889
  loop1904_redo:
    .const 'Sub' $P1898 = "100_1294786958.359" 
    capture_lex $P1898
    $P1898($P1896)
  loop1904_next:
    goto loop1904_test
  loop1904_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1906, exception, 'type'
    eq $P1906, .CONTROL_LOOP_NEXT, loop1904_next
    eq $P1906, .CONTROL_LOOP_REDO, loop1904_redo
  loop1904_done:
    pop_eh 
  for_undef_599:
.annotate 'line', 686
    find_lex $P1907, "$past"
    find_lex $P1908, "@multitype"
    $P1909 = $P1907."multitype"($P1908)
.annotate 'line', 683
    .return ($P1909)
.end


.namespace ["NQP";"Actions"]
.sub "_block1897"  :anon :subid("100_1294786958.359") :outer("99_1294786958.359")
    .param pmc param_1899
.annotate 'line', 685
    .lex "$_", param_1899
    find_lex $P1900, "@multitype"
    find_lex $P1901, "$_"
    set $S1902, $P1901
    $P1903 = $P1900."push"($S1902)
    .return ($P1903)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "param_var"  :subid("101_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_1917
    .param pmc param_1918
.annotate 'line', 692
    new $P1916, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1916, control_1915
    push_eh $P1916
    .lex "self", param_1917
    .lex "$/", param_1918
.annotate 'line', 693
    new $P1919, "Undef"
    .lex "$name", $P1919
.annotate 'line', 694
    new $P1920, "Undef"
    .lex "$past", $P1920
.annotate 'line', 693
    find_lex $P1921, "$/"
    set $S1922, $P1921
    new $P1923, 'String'
    set $P1923, $S1922
    store_lex "$name", $P1923
.annotate 'line', 694
    get_hll_global $P1924, ["PAST"], "Var"
    find_lex $P1925, "$name"
    find_lex $P1926, "$/"
    $P1927 = $P1924."new"($P1925 :named("name"), "parameter" :named("scope"), 1 :named("isdecl"), $P1926 :named("node"))
    store_lex "$past", $P1927
.annotate 'line', 696
    get_global $P1928, "@BLOCK"
    unless_null $P1928, vivify_600
    $P1928 = root_new ['parrot';'ResizablePMCArray']
  vivify_600:
    set $P1929, $P1928[0]
    unless_null $P1929, vivify_601
    new $P1929, "Undef"
  vivify_601:
    find_lex $P1930, "$name"
    $P1929."symbol"($P1930, "lexical" :named("scope"))
.annotate 'line', 697
    find_lex $P1931, "$/"
    find_lex $P1932, "$past"
    $P1933 = $P1931."!make"($P1932)
.annotate 'line', 692
    .return ($P1933)
  control_1915:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1934, exception, "payload"
    .return ($P1934)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "named_param"  :subid("102_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_1938
    .param pmc param_1939
.annotate 'line', 700
    new $P1937, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1937, control_1936
    push_eh $P1937
    .lex "self", param_1938
    .lex "$/", param_1939
.annotate 'line', 701
    new $P1940, "Undef"
    .lex "$past", $P1940
    find_lex $P1941, "$/"
    unless_null $P1941, vivify_602
    $P1941 = root_new ['parrot';'Hash']
  vivify_602:
    set $P1942, $P1941["param_var"]
    unless_null $P1942, vivify_603
    new $P1942, "Undef"
  vivify_603:
    $P1943 = $P1942."ast"()
    store_lex "$past", $P1943
.annotate 'line', 702
    find_lex $P1944, "$past"
    find_lex $P1945, "$/"
    unless_null $P1945, vivify_604
    $P1945 = root_new ['parrot';'Hash']
  vivify_604:
    set $P1946, $P1945["param_var"]
    unless_null $P1946, vivify_605
    $P1946 = root_new ['parrot';'Hash']
  vivify_605:
    set $P1947, $P1946["name"]
    unless_null $P1947, vivify_606
    new $P1947, "Undef"
  vivify_606:
    set $S1948, $P1947
    $P1944."named"($S1948)
.annotate 'line', 703
    find_lex $P1949, "$/"
    find_lex $P1950, "$past"
    $P1951 = $P1949."!make"($P1950)
.annotate 'line', 700
    .return ($P1951)
  control_1936:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1952, exception, "payload"
    .return ($P1952)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "trait"  :subid("103_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_1956
    .param pmc param_1957
.annotate 'line', 706
    new $P1955, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1955, control_1954
    push_eh $P1955
    .lex "self", param_1956
    .lex "$/", param_1957
.annotate 'line', 707
    find_lex $P1958, "$/"
    find_lex $P1959, "$/"
    unless_null $P1959, vivify_607
    $P1959 = root_new ['parrot';'Hash']
  vivify_607:
    set $P1960, $P1959["trait_mod"]
    unless_null $P1960, vivify_608
    new $P1960, "Undef"
  vivify_608:
    $P1961 = $P1960."ast"()
    $P1962 = $P1958."!make"($P1961)
.annotate 'line', 706
    .return ($P1962)
  control_1954:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1963, exception, "payload"
    .return ($P1963)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "trait_mod:sym<is>"  :subid("104_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_1967
    .param pmc param_1968
.annotate 'line', 710
    .const 'Sub' $P1988 = "105_1294786958.359" 
    capture_lex $P1988
    new $P1966, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1966, control_1965
    push_eh $P1966
    .lex "self", param_1967
    .lex "$/", param_1968
.annotate 'line', 711
    new $P1969, "Undef"
    .lex "$cpast", $P1969
    find_lex $P1970, "$/"
    unless_null $P1970, vivify_609
    $P1970 = root_new ['parrot';'Hash']
  vivify_609:
    set $P1971, $P1970["circumfix"]
    unless_null $P1971, vivify_610
    $P1971 = root_new ['parrot';'ResizablePMCArray']
  vivify_610:
    set $P1972, $P1971[0]
    unless_null $P1972, vivify_611
    new $P1972, "Undef"
  vivify_611:
    $P1973 = $P1972."ast"()
    store_lex "$cpast", $P1973
.annotate 'line', 712
    find_lex $P1976, "$/"
    unless_null $P1976, vivify_612
    $P1976 = root_new ['parrot';'Hash']
  vivify_612:
    set $P1977, $P1976["longname"]
    unless_null $P1977, vivify_613
    new $P1977, "Undef"
  vivify_613:
    set $S1978, $P1977
    iseq $I1979, $S1978, "pirflags"
    if $I1979, if_1975
.annotate 'line', 718
    find_lex $P1998, "$/"
    $P1999 = $P1998."CURSOR"()
    new $P2000, 'String'
    set $P2000, "Trait '"
    find_lex $P2001, "$/"
    unless_null $P2001, vivify_614
    $P2001 = root_new ['parrot';'Hash']
  vivify_614:
    set $P2002, $P2001["longname"]
    unless_null $P2002, vivify_615
    new $P2002, "Undef"
  vivify_615:
    concat $P2003, $P2000, $P2002
    concat $P2004, $P2003, "' not implemented"
    $P2005 = $P1999."panic"($P2004)
.annotate 'line', 717
    set $P1974, $P2005
.annotate 'line', 712
    goto if_1975_end
  if_1975:
.annotate 'line', 714
    get_hll_global $P1981, ["PAST"], "Val"
    find_lex $P1982, "$cpast"
    $P1983 = $P1981."ACCEPTS"($P1982)
    if $P1983, unless_1980_end
.annotate 'line', 713
    find_lex $P1984, "$/"
    $P1985 = $P1984."CURSOR"()
    $P1985."panic"("Trait 'pirflags' requires constant scalar argument")
  unless_1980_end:
.annotate 'line', 715
    find_lex $P1986, "$/"
    .const 'Sub' $P1988 = "105_1294786958.359" 
    newclosure $P1996, $P1988
    $P1997 = $P1986."!make"($P1996)
.annotate 'line', 712
    set $P1974, $P1997
  if_1975_end:
.annotate 'line', 710
    .return ($P1974)
  control_1965:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2006, exception, "payload"
    .return ($P2006)
.end


.namespace ["NQP";"Actions"]
.sub "_block1987"  :anon :subid("105_1294786958.359") :outer("104_1294786958.359")
    .param pmc param_1989
.annotate 'line', 715
    .lex "$match", param_1989
    find_lex $P1990, "$match"
    $P1991 = $P1990."ast"()
    set $P1992, $P1991["block_past"]
    unless_null $P1992, vivify_616
    new $P1992, "Undef"
  vivify_616:
    find_lex $P1993, "$cpast"
    $P1994 = $P1993."value"()
    $P1995 = $P1992."pirflags"($P1994)
    .return ($P1995)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "regex_declarator"  :subid("106_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_2010
    .param pmc param_2011
    .param pmc param_2012 :optional
    .param int has_param_2012 :opt_flag
.annotate 'line', 722
    .const 'Sub' $P2082 = "108_1294786958.359" 
    capture_lex $P2082
    .const 'Sub' $P2054 = "107_1294786958.359" 
    capture_lex $P2054
    new $P2009, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2009, control_2008
    push_eh $P2009
    .lex "self", param_2010
    .lex "$/", param_2011
    if has_param_2012, optparam_617
    new $P2013, "Undef"
    set param_2012, $P2013
  optparam_617:
    .lex "$key", param_2012
.annotate 'line', 723
    $P2014 = root_new ['parrot';'ResizablePMCArray']
    .lex "@MODIFIERS", $P2014
.annotate 'line', 726
    new $P2015, "Undef"
    .lex "$name", $P2015
.annotate 'line', 727
    new $P2016, "Undef"
    .lex "$past", $P2016
.annotate 'line', 723

        $P2017 = get_hll_global ['Regex';'P6Regex';'Actions'], '@MODIFIERS'
    
    store_lex "@MODIFIERS", $P2017
.annotate 'line', 726
    find_lex $P2018, "$/"
    unless_null $P2018, vivify_618
    $P2018 = root_new ['parrot';'Hash']
  vivify_618:
    set $P2019, $P2018["deflongname"]
    unless_null $P2019, vivify_619
    new $P2019, "Undef"
  vivify_619:
    $P2020 = $P2019."ast"()
    set $S2021, $P2020
    new $P2022, 'String'
    set $P2022, $S2021
    store_lex "$name", $P2022
    find_lex $P2023, "$past"
.annotate 'line', 728
    find_lex $P2025, "$/"
    unless_null $P2025, vivify_620
    $P2025 = root_new ['parrot';'Hash']
  vivify_620:
    set $P2026, $P2025["proto"]
    unless_null $P2026, vivify_621
    new $P2026, "Undef"
  vivify_621:
    if $P2026, if_2024
.annotate 'line', 755
    find_lex $P2050, "$key"
    set $S2051, $P2050
    iseq $I2052, $S2051, "open"
    if $I2052, if_2049
.annotate 'line', 768
    .const 'Sub' $P2082 = "108_1294786958.359" 
    capture_lex $P2082
    $P2082()
    goto if_2049_end
  if_2049:
.annotate 'line', 755
    .const 'Sub' $P2054 = "107_1294786958.359" 
    capture_lex $P2054
    $P2054()
  if_2049_end:
    goto if_2024_end
  if_2024:
.annotate 'line', 730
    get_hll_global $P2027, ["PAST"], "Stmts"
.annotate 'line', 731
    get_hll_global $P2028, ["PAST"], "Block"
    find_lex $P2029, "$name"
.annotate 'line', 732
    get_hll_global $P2030, ["PAST"], "Op"
.annotate 'line', 733
    get_hll_global $P2031, ["PAST"], "Var"
    $P2032 = $P2031."new"("self" :named("name"), "register" :named("scope"))
    find_lex $P2033, "$name"
    $P2034 = $P2030."new"($P2032, $P2033, "!protoregex" :named("name"), "callmethod" :named("pasttype"))
.annotate 'line', 732
    find_lex $P2035, "$/"
    $P2036 = $P2028."new"($P2034, $P2029 :named("name"), "method" :named("blocktype"), 0 :named("lexical"), $P2035 :named("node"))
.annotate 'line', 742
    get_hll_global $P2037, ["PAST"], "Block"
    new $P2038, "String"
    assign $P2038, "!PREFIX__"
    find_lex $P2039, "$name"
    concat $P2040, $P2038, $P2039
.annotate 'line', 743
    get_hll_global $P2041, ["PAST"], "Op"
.annotate 'line', 744
    get_hll_global $P2042, ["PAST"], "Var"
    $P2043 = $P2042."new"("self" :named("name"), "register" :named("scope"))
    find_lex $P2044, "$name"
    $P2045 = $P2041."new"($P2043, $P2044, "!PREFIX__!protoregex" :named("name"), "callmethod" :named("pasttype"))
.annotate 'line', 743
    find_lex $P2046, "$/"
    $P2047 = $P2037."new"($P2045, $P2040 :named("name"), "method" :named("blocktype"), 0 :named("lexical"), $P2046 :named("node"))
.annotate 'line', 742
    $P2048 = $P2027."new"($P2036, $P2047)
.annotate 'line', 730
    store_lex "$past", $P2048
  if_2024_end:
.annotate 'line', 782
    find_lex $P2103, "$/"
    find_lex $P2104, "$past"
    $P2105 = $P2103."!make"($P2104)
.annotate 'line', 722
    .return ($P2105)
  control_2008:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2106, exception, "payload"
    .return ($P2106)
.end


.namespace ["NQP";"Actions"]
.sub "_block2081"  :anon :subid("108_1294786958.359") :outer("106_1294786958.359")
.annotate 'line', 769
    new $P2083, "Undef"
    .lex "$regex", $P2083
.annotate 'line', 770
    get_hll_global $P2084, ["Regex";"P6Regex";"Actions"], "buildsub"
    find_lex $P2085, "$/"
    unless_null $P2085, vivify_622
    $P2085 = root_new ['parrot';'Hash']
  vivify_622:
    set $P2086, $P2085["p6regex"]
    unless_null $P2086, vivify_623
    new $P2086, "Undef"
  vivify_623:
    $P2087 = $P2086."ast"()
    get_global $P2088, "@BLOCK"
    $P2089 = $P2088."shift"()
    $P2090 = $P2084($P2087, $P2089)
    store_lex "$regex", $P2090
.annotate 'line', 771
    find_lex $P2091, "$regex"
    find_lex $P2092, "$name"
    $P2091."name"($P2092)
.annotate 'line', 773
    get_hll_global $P2093, ["PAST"], "Op"
.annotate 'line', 775
    get_hll_global $P2094, ["PAST"], "Var"
    new $P2095, "ResizablePMCArray"
    push $P2095, "Regex"
    $P2096 = $P2094."new"("Method" :named("name"), $P2095 :named("namespace"), "package" :named("scope"))
    find_lex $P2097, "$regex"
    $P2098 = $P2093."new"($P2096, $P2097, "callmethod" :named("pasttype"), "new" :named("name"))
.annotate 'line', 773
    store_lex "$past", $P2098
.annotate 'line', 779
    find_lex $P2099, "$regex"
    find_lex $P2100, "$past"
    unless_null $P2100, vivify_624
    $P2100 = root_new ['parrot';'Hash']
    store_lex "$past", $P2100
  vivify_624:
    set $P2100["sink"], $P2099
.annotate 'line', 780
    find_lex $P2101, "@MODIFIERS"
    $P2102 = $P2101."shift"()
.annotate 'line', 768
    .return ($P2102)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "_block2053"  :anon :subid("107_1294786958.359") :outer("106_1294786958.359")
.annotate 'line', 756
    $P2055 = root_new ['parrot';'Hash']
    .lex "%h", $P2055
.annotate 'line', 755
    find_lex $P2056, "%h"
.annotate 'line', 757
    find_lex $P2058, "$/"
    unless_null $P2058, vivify_625
    $P2058 = root_new ['parrot';'Hash']
  vivify_625:
    set $P2059, $P2058["sym"]
    unless_null $P2059, vivify_626
    new $P2059, "Undef"
  vivify_626:
    set $S2060, $P2059
    iseq $I2061, $S2060, "token"
    unless $I2061, if_2057_end
    new $P2062, "Integer"
    assign $P2062, 1
    find_lex $P2063, "%h"
    unless_null $P2063, vivify_627
    $P2063 = root_new ['parrot';'Hash']
    store_lex "%h", $P2063
  vivify_627:
    set $P2063["r"], $P2062
  if_2057_end:
.annotate 'line', 758
    find_lex $P2065, "$/"
    unless_null $P2065, vivify_628
    $P2065 = root_new ['parrot';'Hash']
  vivify_628:
    set $P2066, $P2065["sym"]
    unless_null $P2066, vivify_629
    new $P2066, "Undef"
  vivify_629:
    set $S2067, $P2066
    iseq $I2068, $S2067, "rule"
    unless $I2068, if_2064_end
    new $P2069, "Integer"
    assign $P2069, 1
    find_lex $P2070, "%h"
    unless_null $P2070, vivify_630
    $P2070 = root_new ['parrot';'Hash']
    store_lex "%h", $P2070
  vivify_630:
    set $P2070["r"], $P2069
    new $P2071, "Integer"
    assign $P2071, 1
    find_lex $P2072, "%h"
    unless_null $P2072, vivify_631
    $P2072 = root_new ['parrot';'Hash']
    store_lex "%h", $P2072
  vivify_631:
    set $P2072["s"], $P2071
  if_2064_end:
.annotate 'line', 759
    find_lex $P2073, "@MODIFIERS"
    find_lex $P2074, "%h"
    $P2073."unshift"($P2074)
.annotate 'line', 760

            $P0 = find_lex '$name'
            set_hll_global ['Regex';'P6Regex';'Actions'], '$REGEXNAME', $P0
        
.annotate 'line', 764
    get_global $P2075, "@BLOCK"
    unless_null $P2075, vivify_632
    $P2075 = root_new ['parrot';'ResizablePMCArray']
  vivify_632:
    set $P2076, $P2075[0]
    unless_null $P2076, vivify_633
    new $P2076, "Undef"
  vivify_633:
    $P2076."symbol"(unicode:"$\x{a2}", "lexical" :named("scope"))
.annotate 'line', 765
    get_global $P2077, "@BLOCK"
    unless_null $P2077, vivify_634
    $P2077 = root_new ['parrot';'ResizablePMCArray']
  vivify_634:
    set $P2078, $P2077[0]
    unless_null $P2078, vivify_635
    new $P2078, "Undef"
  vivify_635:
    $P2078."symbol"("$/", "lexical" :named("scope"))
.annotate 'line', 766
    new $P2079, "Exception"
    set $P2079['type'], .CONTROL_RETURN
    new $P2080, "Integer"
    assign $P2080, 0
    setattribute $P2079, 'payload', $P2080
    throw $P2079
.annotate 'line', 755
    .return ()
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "dotty"  :subid("109_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_2110
    .param pmc param_2111
.annotate 'line', 786
    new $P2109, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2109, control_2108
    push_eh $P2109
    .lex "self", param_2110
    .lex "$/", param_2111
.annotate 'line', 787
    new $P2112, "Undef"
    .lex "$past", $P2112
    find_lex $P2115, "$/"
    unless_null $P2115, vivify_636
    $P2115 = root_new ['parrot';'Hash']
  vivify_636:
    set $P2116, $P2115["args"]
    unless_null $P2116, vivify_637
    new $P2116, "Undef"
  vivify_637:
    if $P2116, if_2114
    get_hll_global $P2121, ["PAST"], "Op"
    find_lex $P2122, "$/"
    $P2123 = $P2121."new"($P2122 :named("node"))
    set $P2113, $P2123
    goto if_2114_end
  if_2114:
    find_lex $P2117, "$/"
    unless_null $P2117, vivify_638
    $P2117 = root_new ['parrot';'Hash']
  vivify_638:
    set $P2118, $P2117["args"]
    unless_null $P2118, vivify_639
    $P2118 = root_new ['parrot';'ResizablePMCArray']
  vivify_639:
    set $P2119, $P2118[0]
    unless_null $P2119, vivify_640
    new $P2119, "Undef"
  vivify_640:
    $P2120 = $P2119."ast"()
    set $P2113, $P2120
  if_2114_end:
    store_lex "$past", $P2113
.annotate 'line', 788
    find_lex $P2125, "$/"
    unless_null $P2125, vivify_641
    $P2125 = root_new ['parrot';'Hash']
  vivify_641:
    set $P2126, $P2125["quote"]
    unless_null $P2126, vivify_642
    new $P2126, "Undef"
  vivify_642:
    if $P2126, if_2124
.annotate 'line', 792
    find_lex $P2133, "$/"
    unless_null $P2133, vivify_643
    $P2133 = root_new ['parrot';'Hash']
  vivify_643:
    set $P2134, $P2133["longname"]
    unless_null $P2134, vivify_644
    new $P2134, "Undef"
  vivify_644:
    set $S2135, $P2134
    iseq $I2136, $S2135, "HOW"
    if $I2136, if_2132
.annotate 'line', 796
    find_lex $P2140, "$/"
    unless_null $P2140, vivify_645
    $P2140 = root_new ['parrot';'Hash']
  vivify_645:
    set $P2141, $P2140["longname"]
    unless_null $P2141, vivify_646
    new $P2141, "Undef"
  vivify_646:
    set $S2142, $P2141
    iseq $I2143, $S2142, "WHAT"
    if $I2143, if_2139
.annotate 'line', 800
    find_lex $P2145, "$past"
    find_lex $P2146, "$/"
    unless_null $P2146, vivify_647
    $P2146 = root_new ['parrot';'Hash']
  vivify_647:
    set $P2147, $P2146["longname"]
    unless_null $P2147, vivify_648
    new $P2147, "Undef"
  vivify_648:
    set $S2148, $P2147
    $P2145."name"($S2148)
.annotate 'line', 801
    find_lex $P2149, "$past"
    $P2149."pasttype"("callmethod")
.annotate 'line', 799
    goto if_2139_end
  if_2139:
.annotate 'line', 797
    find_lex $P2144, "$past"
    $P2144."pirop"("get_what PP")
  if_2139_end:
.annotate 'line', 796
    goto if_2132_end
  if_2132:
.annotate 'line', 793
    find_lex $P2137, "$past"
    $P2137."pirop"("get_how PP")
.annotate 'line', 794
    find_lex $P2138, "$past"
    $P2138."pasttype"("pirop")
  if_2132_end:
.annotate 'line', 792
    goto if_2124_end
  if_2124:
.annotate 'line', 789
    find_lex $P2127, "$past"
    find_lex $P2128, "$/"
    unless_null $P2128, vivify_649
    $P2128 = root_new ['parrot';'Hash']
  vivify_649:
    set $P2129, $P2128["quote"]
    unless_null $P2129, vivify_650
    new $P2129, "Undef"
  vivify_650:
    $P2130 = $P2129."ast"()
    $P2127."name"($P2130)
.annotate 'line', 790
    find_lex $P2131, "$past"
    $P2131."pasttype"("callmethod")
  if_2124_end:
.annotate 'line', 803
    find_lex $P2150, "$/"
    find_lex $P2151, "$past"
    $P2152 = $P2150."!make"($P2151)
.annotate 'line', 786
    .return ($P2152)
  control_2108:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2153, exception, "payload"
    .return ($P2153)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "term:sym<self>"  :subid("110_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_2157
    .param pmc param_2158
.annotate 'line', 808
    new $P2156, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2156, control_2155
    push_eh $P2156
    .lex "self", param_2157
    .lex "$/", param_2158
.annotate 'line', 809
    find_lex $P2159, "$/"
    get_hll_global $P2160, ["PAST"], "Var"
    $P2161 = $P2160."new"("self" :named("name"))
    $P2162 = $P2159."!make"($P2161)
.annotate 'line', 808
    .return ($P2162)
  control_2155:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2163, exception, "payload"
    .return ($P2163)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "term:sym<identifier>"  :subid("111_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_2167
    .param pmc param_2168
.annotate 'line', 812
    new $P2166, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2166, control_2165
    push_eh $P2166
    .lex "self", param_2167
    .lex "$/", param_2168
.annotate 'line', 813
    new $P2169, "Undef"
    .lex "$past", $P2169
    find_lex $P2170, "$/"
    unless_null $P2170, vivify_651
    $P2170 = root_new ['parrot';'Hash']
  vivify_651:
    set $P2171, $P2170["args"]
    unless_null $P2171, vivify_652
    new $P2171, "Undef"
  vivify_652:
    $P2172 = $P2171."ast"()
    store_lex "$past", $P2172
.annotate 'line', 814
    find_lex $P2173, "$past"
    find_lex $P2174, "$/"
    unless_null $P2174, vivify_653
    $P2174 = root_new ['parrot';'Hash']
  vivify_653:
    set $P2175, $P2174["deflongname"]
    unless_null $P2175, vivify_654
    new $P2175, "Undef"
  vivify_654:
    set $S2176, $P2175
    $P2173."name"($S2176)
.annotate 'line', 815
    find_lex $P2177, "$/"
    find_lex $P2178, "$past"
    $P2179 = $P2177."!make"($P2178)
.annotate 'line', 812
    .return ($P2179)
  control_2165:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2180, exception, "payload"
    .return ($P2180)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "term:sym<name>"  :subid("112_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_2184
    .param pmc param_2185
.annotate 'line', 818
    new $P2183, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2183, control_2182
    push_eh $P2183
    .lex "self", param_2184
    .lex "$/", param_2185
.annotate 'line', 819
    $P2186 = root_new ['parrot';'ResizablePMCArray']
    .lex "@ns", $P2186
.annotate 'line', 820
    new $P2187, "Undef"
    .lex "$name", $P2187
.annotate 'line', 822
    new $P2188, "Undef"
    .lex "$var", $P2188
.annotate 'line', 824
    new $P2189, "Undef"
    .lex "$past", $P2189
.annotate 'line', 819
    find_lex $P2190, "$/"
    unless_null $P2190, vivify_655
    $P2190 = root_new ['parrot';'Hash']
  vivify_655:
    set $P2191, $P2190["name"]
    unless_null $P2191, vivify_656
    $P2191 = root_new ['parrot';'Hash']
  vivify_656:
    set $P2192, $P2191["identifier"]
    unless_null $P2192, vivify_657
    new $P2192, "Undef"
  vivify_657:
    clone $P2193, $P2192
    store_lex "@ns", $P2193
.annotate 'line', 820
    find_lex $P2194, "@ns"
    $P2195 = $P2194."pop"()
    store_lex "$name", $P2195
.annotate 'line', 821
    find_lex $P2199, "@ns"
    if $P2199, if_2198
    set $P2197, $P2199
    goto if_2198_end
  if_2198:
    find_lex $P2200, "@ns"
    unless_null $P2200, vivify_658
    $P2200 = root_new ['parrot';'ResizablePMCArray']
  vivify_658:
    set $P2201, $P2200[0]
    unless_null $P2201, vivify_659
    new $P2201, "Undef"
  vivify_659:
    set $S2202, $P2201
    iseq $I2203, $S2202, "GLOBAL"
    new $P2197, 'Integer'
    set $P2197, $I2203
  if_2198_end:
    unless $P2197, if_2196_end
    find_lex $P2204, "@ns"
    $P2204."shift"()
  if_2196_end:
.annotate 'line', 823
    get_hll_global $P2205, ["PAST"], "Var"
    find_lex $P2206, "$name"
    set $S2207, $P2206
    find_lex $P2208, "@ns"
    $P2209 = $P2205."new"($S2207 :named("name"), $P2208 :named("namespace"), "package" :named("scope"))
    store_lex "$var", $P2209
.annotate 'line', 824
    find_lex $P2210, "$var"
    store_lex "$past", $P2210
.annotate 'line', 825
    find_lex $P2212, "$/"
    unless_null $P2212, vivify_660
    $P2212 = root_new ['parrot';'Hash']
  vivify_660:
    set $P2213, $P2212["args"]
    unless_null $P2213, vivify_661
    new $P2213, "Undef"
  vivify_661:
    unless $P2213, if_2211_end
.annotate 'line', 826
    find_lex $P2214, "$/"
    unless_null $P2214, vivify_662
    $P2214 = root_new ['parrot';'Hash']
  vivify_662:
    set $P2215, $P2214["args"]
    unless_null $P2215, vivify_663
    $P2215 = root_new ['parrot';'ResizablePMCArray']
  vivify_663:
    set $P2216, $P2215[0]
    unless_null $P2216, vivify_664
    new $P2216, "Undef"
  vivify_664:
    $P2217 = $P2216."ast"()
    store_lex "$past", $P2217
.annotate 'line', 827
    find_lex $P2218, "$past"
    find_lex $P2219, "$var"
    $P2218."unshift"($P2219)
  if_2211_end:
.annotate 'line', 829
    find_lex $P2220, "$/"
    find_lex $P2221, "$past"
    $P2222 = $P2220."!make"($P2221)
.annotate 'line', 818
    .return ($P2222)
  control_2182:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2223, exception, "payload"
    .return ($P2223)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "term:sym<pir::op>"  :subid("113_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_2227
    .param pmc param_2228
.annotate 'line', 832
    new $P2226, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2226, control_2225
    push_eh $P2226
    .lex "self", param_2227
    .lex "$/", param_2228
.annotate 'line', 833
    new $P2229, "Undef"
    .lex "$past", $P2229
.annotate 'line', 834
    new $P2230, "Undef"
    .lex "$pirop", $P2230
.annotate 'line', 833
    find_lex $P2233, "$/"
    unless_null $P2233, vivify_665
    $P2233 = root_new ['parrot';'Hash']
  vivify_665:
    set $P2234, $P2233["args"]
    unless_null $P2234, vivify_666
    new $P2234, "Undef"
  vivify_666:
    if $P2234, if_2232
    get_hll_global $P2239, ["PAST"], "Op"
    find_lex $P2240, "$/"
    $P2241 = $P2239."new"($P2240 :named("node"))
    set $P2231, $P2241
    goto if_2232_end
  if_2232:
    find_lex $P2235, "$/"
    unless_null $P2235, vivify_667
    $P2235 = root_new ['parrot';'Hash']
  vivify_667:
    set $P2236, $P2235["args"]
    unless_null $P2236, vivify_668
    $P2236 = root_new ['parrot';'ResizablePMCArray']
  vivify_668:
    set $P2237, $P2236[0]
    unless_null $P2237, vivify_669
    new $P2237, "Undef"
  vivify_669:
    $P2238 = $P2237."ast"()
    set $P2231, $P2238
  if_2232_end:
    store_lex "$past", $P2231
.annotate 'line', 834
    find_lex $P2242, "$/"
    unless_null $P2242, vivify_670
    $P2242 = root_new ['parrot';'Hash']
  vivify_670:
    set $P2243, $P2242["op"]
    unless_null $P2243, vivify_671
    new $P2243, "Undef"
  vivify_671:
    set $S2244, $P2243
    new $P2245, 'String'
    set $P2245, $S2244
    store_lex "$pirop", $P2245
.annotate 'line', 835

        $P0 = find_lex '$pirop'
        $S0 = $P0
        $P0 = split '__', $S0
        $S0 = join ' ', $P0
        $P2246 = box $S0
    
    store_lex "$pirop", $P2246
.annotate 'line', 842
    find_lex $P2247, "$past"
    find_lex $P2248, "$pirop"
    $P2247."pirop"($P2248)
.annotate 'line', 843
    find_lex $P2249, "$past"
    $P2249."pasttype"("pirop")
.annotate 'line', 844
    find_lex $P2250, "$/"
    find_lex $P2251, "$past"
    $P2252 = $P2250."!make"($P2251)
.annotate 'line', 832
    .return ($P2252)
  control_2225:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2253, exception, "payload"
    .return ($P2253)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "args"  :subid("114_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_2257
    .param pmc param_2258
.annotate 'line', 847
    new $P2256, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2256, control_2255
    push_eh $P2256
    .lex "self", param_2257
    .lex "$/", param_2258
    find_lex $P2259, "$/"
    find_lex $P2260, "$/"
    unless_null $P2260, vivify_672
    $P2260 = root_new ['parrot';'Hash']
  vivify_672:
    set $P2261, $P2260["arglist"]
    unless_null $P2261, vivify_673
    new $P2261, "Undef"
  vivify_673:
    $P2262 = $P2261."ast"()
    $P2263 = $P2259."!make"($P2262)
    .return ($P2263)
  control_2255:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2264, exception, "payload"
    .return ($P2264)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "arglist"  :subid("115_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_2268
    .param pmc param_2269
.annotate 'line', 849
    .const 'Sub' $P2280 = "116_1294786958.359" 
    capture_lex $P2280
    new $P2267, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2267, control_2266
    push_eh $P2267
    .lex "self", param_2268
    .lex "$/", param_2269
.annotate 'line', 850
    new $P2270, "Undef"
    .lex "$past", $P2270
.annotate 'line', 858
    new $P2271, "Undef"
    .lex "$i", $P2271
.annotate 'line', 859
    new $P2272, "Undef"
    .lex "$n", $P2272
.annotate 'line', 850
    get_hll_global $P2273, ["PAST"], "Op"
    find_lex $P2274, "$/"
    $P2275 = $P2273."new"("call" :named("pasttype"), $P2274 :named("node"))
    store_lex "$past", $P2275
.annotate 'line', 851
    find_lex $P2277, "$/"
    unless_null $P2277, vivify_674
    $P2277 = root_new ['parrot';'Hash']
  vivify_674:
    set $P2278, $P2277["EXPR"]
    unless_null $P2278, vivify_675
    new $P2278, "Undef"
  vivify_675:
    unless $P2278, if_2276_end
    .const 'Sub' $P2280 = "116_1294786958.359" 
    capture_lex $P2280
    $P2280()
  if_2276_end:
.annotate 'line', 858
    new $P2312, "Integer"
    assign $P2312, 0
    store_lex "$i", $P2312
.annotate 'line', 859
    find_lex $P2313, "$past"
    $P2314 = $P2313."list"()
    set $N2315, $P2314
    new $P2316, 'Float'
    set $P2316, $N2315
    store_lex "$n", $P2316
.annotate 'line', 860
    new $P2364, 'ExceptionHandler'
    set_addr $P2364, loop2363_handler
    $P2364."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2364
  loop2363_test:
    find_lex $P2317, "$i"
    set $N2318, $P2317
    find_lex $P2319, "$n"
    set $N2320, $P2319
    islt $I2321, $N2318, $N2320
    unless $I2321, loop2363_done
  loop2363_redo:
.annotate 'line', 861
    find_lex $P2323, "$i"
    set $I2324, $P2323
    find_lex $P2325, "$past"
    unless_null $P2325, vivify_679
    $P2325 = root_new ['parrot';'ResizablePMCArray']
  vivify_679:
    set $P2326, $P2325[$I2324]
    unless_null $P2326, vivify_680
    new $P2326, "Undef"
  vivify_680:
    $S2327 = $P2326."name"()
    iseq $I2328, $S2327, "&prefix:<|>"
    unless $I2328, if_2322_end
.annotate 'line', 862
    find_lex $P2329, "$i"
    set $I2330, $P2329
    find_lex $P2331, "$past"
    unless_null $P2331, vivify_681
    $P2331 = root_new ['parrot';'ResizablePMCArray']
  vivify_681:
    set $P2332, $P2331[$I2330]
    unless_null $P2332, vivify_682
    $P2332 = root_new ['parrot';'ResizablePMCArray']
  vivify_682:
    set $P2333, $P2332[0]
    unless_null $P2333, vivify_683
    new $P2333, "Undef"
  vivify_683:
    find_lex $P2334, "$i"
    set $I2335, $P2334
    find_lex $P2336, "$past"
    unless_null $P2336, vivify_684
    $P2336 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$past", $P2336
  vivify_684:
    set $P2336[$I2335], $P2333
.annotate 'line', 863
    find_lex $P2337, "$i"
    set $I2338, $P2337
    find_lex $P2339, "$past"
    unless_null $P2339, vivify_685
    $P2339 = root_new ['parrot';'ResizablePMCArray']
  vivify_685:
    set $P2340, $P2339[$I2338]
    unless_null $P2340, vivify_686
    new $P2340, "Undef"
  vivify_686:
    $P2340."flat"(1)
.annotate 'line', 864
    find_lex $P2344, "$i"
    set $I2345, $P2344
    find_lex $P2346, "$past"
    unless_null $P2346, vivify_687
    $P2346 = root_new ['parrot';'ResizablePMCArray']
  vivify_687:
    set $P2347, $P2346[$I2345]
    unless_null $P2347, vivify_688
    new $P2347, "Undef"
  vivify_688:
    get_hll_global $P2348, ["PAST"], "Val"
    $P2349 = $P2347."isa"($P2348)
    if $P2349, if_2343
    set $P2342, $P2349
    goto if_2343_end
  if_2343:
.annotate 'line', 865
    find_lex $P2350, "$i"
    set $I2351, $P2350
    find_lex $P2352, "$past"
    unless_null $P2352, vivify_689
    $P2352 = root_new ['parrot';'ResizablePMCArray']
  vivify_689:
    set $P2353, $P2352[$I2351]
    unless_null $P2353, vivify_690
    new $P2353, "Undef"
  vivify_690:
    $S2354 = $P2353."name"()
    substr $S2355, $S2354, 0, 1
    iseq $I2356, $S2355, "%"
    new $P2342, 'Integer'
    set $P2342, $I2356
  if_2343_end:
    unless $P2342, if_2341_end
.annotate 'line', 866
    find_lex $P2357, "$i"
    set $I2358, $P2357
    find_lex $P2359, "$past"
    unless_null $P2359, vivify_691
    $P2359 = root_new ['parrot';'ResizablePMCArray']
  vivify_691:
    set $P2360, $P2359[$I2358]
    unless_null $P2360, vivify_692
    new $P2360, "Undef"
  vivify_692:
    $P2360."named"(1)
  if_2341_end:
  if_2322_end:
.annotate 'line', 861
    find_lex $P2361, "$i"
    clone $P2362, $P2361
    inc $P2361
  loop2363_next:
.annotate 'line', 860
    goto loop2363_test
  loop2363_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2365, exception, 'type'
    eq $P2365, .CONTROL_LOOP_NEXT, loop2363_next
    eq $P2365, .CONTROL_LOOP_REDO, loop2363_redo
  loop2363_done:
    pop_eh 
.annotate 'line', 871
    find_lex $P2366, "$/"
    find_lex $P2367, "$past"
    $P2368 = $P2366."!make"($P2367)
.annotate 'line', 849
    .return ($P2368)
  control_2266:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2369, exception, "payload"
    .return ($P2369)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "_block2279"  :anon :subid("116_1294786958.359") :outer("115_1294786958.359")
.annotate 'line', 851
    .const 'Sub' $P2301 = "117_1294786958.359" 
    capture_lex $P2301
.annotate 'line', 852
    new $P2281, "Undef"
    .lex "$expr", $P2281
    find_lex $P2282, "$/"
    unless_null $P2282, vivify_676
    $P2282 = root_new ['parrot';'Hash']
  vivify_676:
    set $P2283, $P2282["EXPR"]
    unless_null $P2283, vivify_677
    new $P2283, "Undef"
  vivify_677:
    $P2284 = $P2283."ast"()
    store_lex "$expr", $P2284
.annotate 'line', 853
    find_lex $P2289, "$expr"
    $S2290 = $P2289."name"()
    iseq $I2291, $S2290, "&infix:<,>"
    if $I2291, if_2288
    new $P2287, 'Integer'
    set $P2287, $I2291
    goto if_2288_end
  if_2288:
    find_lex $P2292, "$expr"
    $P2293 = $P2292."named"()
    isfalse $I2294, $P2293
    new $P2287, 'Integer'
    set $P2287, $I2294
  if_2288_end:
    if $P2287, if_2286
.annotate 'line', 856
    find_lex $P2309, "$past"
    find_lex $P2310, "$expr"
    $P2311 = $P2309."push"($P2310)
    set $P2285, $P2311
.annotate 'line', 853
    goto if_2286_end
  if_2286:
.annotate 'line', 854
    find_lex $P2296, "$expr"
    $P2297 = $P2296."list"()
    defined $I2298, $P2297
    unless $I2298, for_undef_678
    iter $P2295, $P2297
    new $P2307, 'ExceptionHandler'
    set_addr $P2307, loop2306_handler
    $P2307."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2307
  loop2306_test:
    unless $P2295, loop2306_done
    shift $P2299, $P2295
  loop2306_redo:
    .const 'Sub' $P2301 = "117_1294786958.359" 
    capture_lex $P2301
    $P2301($P2299)
  loop2306_next:
    goto loop2306_test
  loop2306_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2308, exception, 'type'
    eq $P2308, .CONTROL_LOOP_NEXT, loop2306_next
    eq $P2308, .CONTROL_LOOP_REDO, loop2306_redo
  loop2306_done:
    pop_eh 
  for_undef_678:
.annotate 'line', 853
    set $P2285, $P2295
  if_2286_end:
.annotate 'line', 851
    .return ($P2285)
.end


.namespace ["NQP";"Actions"]
.sub "_block2300"  :anon :subid("117_1294786958.359") :outer("116_1294786958.359")
    .param pmc param_2302
.annotate 'line', 854
    .lex "$_", param_2302
    find_lex $P2303, "$past"
    find_lex $P2304, "$_"
    $P2305 = $P2303."push"($P2304)
    .return ($P2305)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "term:sym<value>"  :subid("118_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_2373
    .param pmc param_2374
.annotate 'line', 875
    new $P2372, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2372, control_2371
    push_eh $P2372
    .lex "self", param_2373
    .lex "$/", param_2374
    find_lex $P2375, "$/"
    find_lex $P2376, "$/"
    unless_null $P2376, vivify_693
    $P2376 = root_new ['parrot';'Hash']
  vivify_693:
    set $P2377, $P2376["value"]
    unless_null $P2377, vivify_694
    new $P2377, "Undef"
  vivify_694:
    $P2378 = $P2377."ast"()
    $P2379 = $P2375."!make"($P2378)
    .return ($P2379)
  control_2371:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2380, exception, "payload"
    .return ($P2380)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "circumfix:sym<( )>"  :subid("119_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_2384
    .param pmc param_2385
.annotate 'line', 877
    new $P2383, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2383, control_2382
    push_eh $P2383
    .lex "self", param_2384
    .lex "$/", param_2385
.annotate 'line', 878
    find_lex $P2386, "$/"
.annotate 'line', 879
    find_lex $P2389, "$/"
    unless_null $P2389, vivify_695
    $P2389 = root_new ['parrot';'Hash']
  vivify_695:
    set $P2390, $P2389["EXPR"]
    unless_null $P2390, vivify_696
    new $P2390, "Undef"
  vivify_696:
    if $P2390, if_2388
.annotate 'line', 880
    get_hll_global $P2395, ["PAST"], "Op"
    find_lex $P2396, "$/"
    $P2397 = $P2395."new"("list" :named("pasttype"), $P2396 :named("node"))
    set $P2387, $P2397
.annotate 'line', 879
    goto if_2388_end
  if_2388:
    find_lex $P2391, "$/"
    unless_null $P2391, vivify_697
    $P2391 = root_new ['parrot';'Hash']
  vivify_697:
    set $P2392, $P2391["EXPR"]
    unless_null $P2392, vivify_698
    $P2392 = root_new ['parrot';'ResizablePMCArray']
  vivify_698:
    set $P2393, $P2392[0]
    unless_null $P2393, vivify_699
    new $P2393, "Undef"
  vivify_699:
    $P2394 = $P2393."ast"()
    set $P2387, $P2394
  if_2388_end:
    $P2398 = $P2386."!make"($P2387)
.annotate 'line', 877
    .return ($P2398)
  control_2382:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2399, exception, "payload"
    .return ($P2399)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "circumfix:sym<[ ]>"  :subid("120_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_2403
    .param pmc param_2404
.annotate 'line', 883
    new $P2402, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2402, control_2401
    push_eh $P2402
    .lex "self", param_2403
    .lex "$/", param_2404
.annotate 'line', 884
    new $P2405, "Undef"
    .lex "$past", $P2405
.annotate 'line', 883
    find_lex $P2406, "$past"
.annotate 'line', 885
    find_lex $P2408, "$/"
    unless_null $P2408, vivify_700
    $P2408 = root_new ['parrot';'Hash']
  vivify_700:
    set $P2409, $P2408["EXPR"]
    unless_null $P2409, vivify_701
    new $P2409, "Undef"
  vivify_701:
    if $P2409, if_2407
.annotate 'line', 892
    get_hll_global $P2421, ["PAST"], "Op"
    $P2422 = $P2421."new"("list" :named("pasttype"))
    store_lex "$past", $P2422
.annotate 'line', 891
    goto if_2407_end
  if_2407:
.annotate 'line', 886
    find_lex $P2410, "$/"
    unless_null $P2410, vivify_702
    $P2410 = root_new ['parrot';'Hash']
  vivify_702:
    set $P2411, $P2410["EXPR"]
    unless_null $P2411, vivify_703
    $P2411 = root_new ['parrot';'ResizablePMCArray']
  vivify_703:
    set $P2412, $P2411[0]
    unless_null $P2412, vivify_704
    new $P2412, "Undef"
  vivify_704:
    $P2413 = $P2412."ast"()
    store_lex "$past", $P2413
.annotate 'line', 887
    find_lex $P2415, "$past"
    $S2416 = $P2415."name"()
    isne $I2417, $S2416, "&infix:<,>"
    unless $I2417, if_2414_end
.annotate 'line', 888
    get_hll_global $P2418, ["PAST"], "Op"
    find_lex $P2419, "$past"
    $P2420 = $P2418."new"($P2419, "list" :named("pasttype"))
    store_lex "$past", $P2420
  if_2414_end:
  if_2407_end:
.annotate 'line', 894
    find_lex $P2423, "$past"
    $P2423."name"("&circumfix:<[ ]>")
.annotate 'line', 895
    find_lex $P2424, "$/"
    find_lex $P2425, "$past"
    $P2426 = $P2424."!make"($P2425)
.annotate 'line', 883
    .return ($P2426)
  control_2401:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2427, exception, "payload"
    .return ($P2427)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "circumfix:sym<ang>"  :subid("121_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_2431
    .param pmc param_2432
.annotate 'line', 898
    new $P2430, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2430, control_2429
    push_eh $P2430
    .lex "self", param_2431
    .lex "$/", param_2432
    find_lex $P2433, "$/"
    find_lex $P2434, "$/"
    unless_null $P2434, vivify_705
    $P2434 = root_new ['parrot';'Hash']
  vivify_705:
    set $P2435, $P2434["quote_EXPR"]
    unless_null $P2435, vivify_706
    new $P2435, "Undef"
  vivify_706:
    $P2436 = $P2435."ast"()
    $P2437 = $P2433."!make"($P2436)
    .return ($P2437)
  control_2429:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2438, exception, "payload"
    .return ($P2438)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub unicode:"circumfix:sym<\x{ab} \x{bb}>"  :subid("122_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_2442
    .param pmc param_2443
.annotate 'line', 899
    new $P2441, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2441, control_2440
    push_eh $P2441
    .lex "self", param_2442
    .lex "$/", param_2443
    find_lex $P2444, "$/"
    find_lex $P2445, "$/"
    unless_null $P2445, vivify_707
    $P2445 = root_new ['parrot';'Hash']
  vivify_707:
    set $P2446, $P2445["quote_EXPR"]
    unless_null $P2446, vivify_708
    new $P2446, "Undef"
  vivify_708:
    $P2447 = $P2446."ast"()
    $P2448 = $P2444."!make"($P2447)
    .return ($P2448)
  control_2440:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2449, exception, "payload"
    .return ($P2449)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "circumfix:sym<{ }>"  :subid("123_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_2453
    .param pmc param_2454
.annotate 'line', 901
    new $P2452, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2452, control_2451
    push_eh $P2452
    .lex "self", param_2453
    .lex "$/", param_2454
.annotate 'line', 902
    new $P2455, "Undef"
    .lex "$past", $P2455
    find_lex $P2458, "$/"
    unless_null $P2458, vivify_709
    $P2458 = root_new ['parrot';'Hash']
  vivify_709:
    set $P2459, $P2458["pblock"]
    unless_null $P2459, vivify_710
    $P2459 = root_new ['parrot';'Hash']
  vivify_710:
    set $P2460, $P2459["blockoid"]
    unless_null $P2460, vivify_711
    $P2460 = root_new ['parrot';'Hash']
  vivify_711:
    set $P2461, $P2460["statementlist"]
    unless_null $P2461, vivify_712
    $P2461 = root_new ['parrot';'Hash']
  vivify_712:
    set $P2462, $P2461["statement"]
    unless_null $P2462, vivify_713
    new $P2462, "Undef"
  vivify_713:
    set $N2463, $P2462
    isgt $I2464, $N2463, 0.0
    if $I2464, if_2457
.annotate 'line', 904
    $P2468 = "vivitype"("%")
    set $P2456, $P2468
.annotate 'line', 902
    goto if_2457_end
  if_2457:
.annotate 'line', 903
    find_lex $P2465, "$/"
    unless_null $P2465, vivify_714
    $P2465 = root_new ['parrot';'Hash']
  vivify_714:
    set $P2466, $P2465["pblock"]
    unless_null $P2466, vivify_715
    new $P2466, "Undef"
  vivify_715:
    $P2467 = $P2466."ast"()
    set $P2456, $P2467
  if_2457_end:
    store_lex "$past", $P2456
.annotate 'line', 905
    new $P2469, "Integer"
    assign $P2469, 1
    find_lex $P2470, "$past"
    unless_null $P2470, vivify_716
    $P2470 = root_new ['parrot';'Hash']
    store_lex "$past", $P2470
  vivify_716:
    set $P2470["bareblock"], $P2469
.annotate 'line', 906
    find_lex $P2471, "$/"
    find_lex $P2472, "$past"
    $P2473 = $P2471."!make"($P2472)
.annotate 'line', 901
    .return ($P2473)
  control_2451:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2474, exception, "payload"
    .return ($P2474)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "circumfix:sym<sigil>"  :subid("124_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_2478
    .param pmc param_2479
.annotate 'line', 909
    new $P2477, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2477, control_2476
    push_eh $P2477
    .lex "self", param_2478
    .lex "$/", param_2479
.annotate 'line', 910
    new $P2480, "Undef"
    .lex "$name", $P2480
    find_lex $P2483, "$/"
    unless_null $P2483, vivify_717
    $P2483 = root_new ['parrot';'Hash']
  vivify_717:
    set $P2484, $P2483["sigil"]
    unless_null $P2484, vivify_718
    new $P2484, "Undef"
  vivify_718:
    set $S2485, $P2484
    iseq $I2486, $S2485, "@"
    if $I2486, if_2482
.annotate 'line', 911
    find_lex $P2490, "$/"
    unless_null $P2490, vivify_719
    $P2490 = root_new ['parrot';'Hash']
  vivify_719:
    set $P2491, $P2490["sigil"]
    unless_null $P2491, vivify_720
    new $P2491, "Undef"
  vivify_720:
    set $S2492, $P2491
    iseq $I2493, $S2492, "%"
    if $I2493, if_2489
    new $P2495, "String"
    assign $P2495, "item"
    set $P2488, $P2495
    goto if_2489_end
  if_2489:
    new $P2494, "String"
    assign $P2494, "hash"
    set $P2488, $P2494
  if_2489_end:
    set $P2481, $P2488
.annotate 'line', 910
    goto if_2482_end
  if_2482:
    new $P2487, "String"
    assign $P2487, "list"
    set $P2481, $P2487
  if_2482_end:
    store_lex "$name", $P2481
.annotate 'line', 913
    find_lex $P2496, "$/"
    get_hll_global $P2497, ["PAST"], "Op"
    find_lex $P2498, "$name"
    find_lex $P2499, "$/"
    unless_null $P2499, vivify_721
    $P2499 = root_new ['parrot';'Hash']
  vivify_721:
    set $P2500, $P2499["semilist"]
    unless_null $P2500, vivify_722
    new $P2500, "Undef"
  vivify_722:
    $P2501 = $P2500."ast"()
    $P2502 = $P2497."new"($P2501, "callmethod" :named("pasttype"), $P2498 :named("name"))
    $P2503 = $P2496."!make"($P2502)
.annotate 'line', 909
    .return ($P2503)
  control_2476:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2504, exception, "payload"
    .return ($P2504)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "semilist"  :subid("125_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_2508
    .param pmc param_2509
.annotate 'line', 916
    new $P2507, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2507, control_2506
    push_eh $P2507
    .lex "self", param_2508
    .lex "$/", param_2509
    find_lex $P2510, "$/"
    find_lex $P2511, "$/"
    unless_null $P2511, vivify_723
    $P2511 = root_new ['parrot';'Hash']
  vivify_723:
    set $P2512, $P2511["statement"]
    unless_null $P2512, vivify_724
    new $P2512, "Undef"
  vivify_724:
    $P2513 = $P2512."ast"()
    $P2514 = $P2510."!make"($P2513)
    .return ($P2514)
  control_2506:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2515, exception, "payload"
    .return ($P2515)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "postcircumfix:sym<[ ]>"  :subid("126_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_2519
    .param pmc param_2520
.annotate 'line', 918
    new $P2518, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2518, control_2517
    push_eh $P2518
    .lex "self", param_2519
    .lex "$/", param_2520
.annotate 'line', 919
    find_lex $P2521, "$/"
    get_hll_global $P2522, ["PAST"], "Var"
    find_lex $P2523, "$/"
    unless_null $P2523, vivify_725
    $P2523 = root_new ['parrot';'Hash']
  vivify_725:
    set $P2524, $P2523["EXPR"]
    unless_null $P2524, vivify_726
    new $P2524, "Undef"
  vivify_726:
    $P2525 = $P2524."ast"()
.annotate 'line', 921
    $P2526 = "vivitype"("@")
    $P2527 = $P2522."new"($P2525, "keyed_int" :named("scope"), "Undef" :named("viviself"), $P2526 :named("vivibase"))
.annotate 'line', 919
    $P2528 = $P2521."!make"($P2527)
.annotate 'line', 918
    .return ($P2528)
  control_2517:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2529, exception, "payload"
    .return ($P2529)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "postcircumfix:sym<{ }>"  :subid("127_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_2533
    .param pmc param_2534
.annotate 'line', 924
    new $P2532, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2532, control_2531
    push_eh $P2532
    .lex "self", param_2533
    .lex "$/", param_2534
.annotate 'line', 925
    find_lex $P2535, "$/"
    get_hll_global $P2536, ["PAST"], "Var"
    find_lex $P2537, "$/"
    unless_null $P2537, vivify_727
    $P2537 = root_new ['parrot';'Hash']
  vivify_727:
    set $P2538, $P2537["EXPR"]
    unless_null $P2538, vivify_728
    new $P2538, "Undef"
  vivify_728:
    $P2539 = $P2538."ast"()
.annotate 'line', 927
    $P2540 = "vivitype"("%")
    $P2541 = $P2536."new"($P2539, "keyed" :named("scope"), "Undef" :named("viviself"), $P2540 :named("vivibase"))
.annotate 'line', 925
    $P2542 = $P2535."!make"($P2541)
.annotate 'line', 924
    .return ($P2542)
  control_2531:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2543, exception, "payload"
    .return ($P2543)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "postcircumfix:sym<ang>"  :subid("128_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_2547
    .param pmc param_2548
.annotate 'line', 930
    new $P2546, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2546, control_2545
    push_eh $P2546
    .lex "self", param_2547
    .lex "$/", param_2548
.annotate 'line', 931
    find_lex $P2549, "$/"
    get_hll_global $P2550, ["PAST"], "Var"
    find_lex $P2551, "$/"
    unless_null $P2551, vivify_729
    $P2551 = root_new ['parrot';'Hash']
  vivify_729:
    set $P2552, $P2551["quote_EXPR"]
    unless_null $P2552, vivify_730
    new $P2552, "Undef"
  vivify_730:
    $P2553 = $P2552."ast"()
.annotate 'line', 933
    $P2554 = "vivitype"("%")
    $P2555 = $P2550."new"($P2553, "keyed" :named("scope"), "Undef" :named("viviself"), $P2554 :named("vivibase"))
.annotate 'line', 931
    $P2556 = $P2549."!make"($P2555)
.annotate 'line', 930
    .return ($P2556)
  control_2545:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2557, exception, "payload"
    .return ($P2557)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "postcircumfix:sym<( )>"  :subid("129_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_2561
    .param pmc param_2562
.annotate 'line', 936
    new $P2560, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2560, control_2559
    push_eh $P2560
    .lex "self", param_2561
    .lex "$/", param_2562
.annotate 'line', 937
    find_lex $P2563, "$/"
    find_lex $P2564, "$/"
    unless_null $P2564, vivify_731
    $P2564 = root_new ['parrot';'Hash']
  vivify_731:
    set $P2565, $P2564["arglist"]
    unless_null $P2565, vivify_732
    new $P2565, "Undef"
  vivify_732:
    $P2566 = $P2565."ast"()
    $P2567 = $P2563."!make"($P2566)
.annotate 'line', 936
    .return ($P2567)
  control_2559:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2568, exception, "payload"
    .return ($P2568)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "value"  :subid("130_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_2572
    .param pmc param_2573
.annotate 'line', 940
    new $P2571, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2571, control_2570
    push_eh $P2571
    .lex "self", param_2572
    .lex "$/", param_2573
.annotate 'line', 941
    find_lex $P2574, "$/"
    find_lex $P2577, "$/"
    unless_null $P2577, vivify_733
    $P2577 = root_new ['parrot';'Hash']
  vivify_733:
    set $P2578, $P2577["quote"]
    unless_null $P2578, vivify_734
    new $P2578, "Undef"
  vivify_734:
    if $P2578, if_2576
    find_lex $P2582, "$/"
    unless_null $P2582, vivify_735
    $P2582 = root_new ['parrot';'Hash']
  vivify_735:
    set $P2583, $P2582["number"]
    unless_null $P2583, vivify_736
    new $P2583, "Undef"
  vivify_736:
    $P2584 = $P2583."ast"()
    set $P2575, $P2584
    goto if_2576_end
  if_2576:
    find_lex $P2579, "$/"
    unless_null $P2579, vivify_737
    $P2579 = root_new ['parrot';'Hash']
  vivify_737:
    set $P2580, $P2579["quote"]
    unless_null $P2580, vivify_738
    new $P2580, "Undef"
  vivify_738:
    $P2581 = $P2580."ast"()
    set $P2575, $P2581
  if_2576_end:
    $P2585 = $P2574."!make"($P2575)
.annotate 'line', 940
    .return ($P2585)
  control_2570:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2586, exception, "payload"
    .return ($P2586)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "number"  :subid("131_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_2590
    .param pmc param_2591
.annotate 'line', 944
    new $P2589, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2589, control_2588
    push_eh $P2589
    .lex "self", param_2590
    .lex "$/", param_2591
.annotate 'line', 945
    new $P2592, "Undef"
    .lex "$value", $P2592
    find_lex $P2595, "$/"
    unless_null $P2595, vivify_739
    $P2595 = root_new ['parrot';'Hash']
  vivify_739:
    set $P2596, $P2595["dec_number"]
    unless_null $P2596, vivify_740
    new $P2596, "Undef"
  vivify_740:
    if $P2596, if_2594
    find_lex $P2600, "$/"
    unless_null $P2600, vivify_741
    $P2600 = root_new ['parrot';'Hash']
  vivify_741:
    set $P2601, $P2600["integer"]
    unless_null $P2601, vivify_742
    new $P2601, "Undef"
  vivify_742:
    $P2602 = $P2601."ast"()
    set $P2593, $P2602
    goto if_2594_end
  if_2594:
    find_lex $P2597, "$/"
    unless_null $P2597, vivify_743
    $P2597 = root_new ['parrot';'Hash']
  vivify_743:
    set $P2598, $P2597["dec_number"]
    unless_null $P2598, vivify_744
    new $P2598, "Undef"
  vivify_744:
    $P2599 = $P2598."ast"()
    set $P2593, $P2599
  if_2594_end:
    store_lex "$value", $P2593
.annotate 'line', 946
    find_lex $P2604, "$/"
    unless_null $P2604, vivify_745
    $P2604 = root_new ['parrot';'Hash']
  vivify_745:
    set $P2605, $P2604["sign"]
    unless_null $P2605, vivify_746
    new $P2605, "Undef"
  vivify_746:
    set $S2606, $P2605
    iseq $I2607, $S2606, "-"
    unless $I2607, if_2603_end
    find_lex $P2608, "$value"
    neg $P2609, $P2608
    store_lex "$value", $P2609
  if_2603_end:
.annotate 'line', 947
    find_lex $P2610, "$/"
    get_hll_global $P2611, ["PAST"], "Val"
    find_lex $P2612, "$value"
    $P2613 = $P2611."new"($P2612 :named("value"))
    $P2614 = $P2610."!make"($P2613)
.annotate 'line', 944
    .return ($P2614)
  control_2588:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2615, exception, "payload"
    .return ($P2615)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "quote:sym<apos>"  :subid("132_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_2619
    .param pmc param_2620
.annotate 'line', 950
    new $P2618, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2618, control_2617
    push_eh $P2618
    .lex "self", param_2619
    .lex "$/", param_2620
    find_lex $P2621, "$/"
    find_lex $P2622, "$/"
    unless_null $P2622, vivify_747
    $P2622 = root_new ['parrot';'Hash']
  vivify_747:
    set $P2623, $P2622["quote_EXPR"]
    unless_null $P2623, vivify_748
    new $P2623, "Undef"
  vivify_748:
    $P2624 = $P2623."ast"()
    $P2625 = $P2621."!make"($P2624)
    .return ($P2625)
  control_2617:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2626, exception, "payload"
    .return ($P2626)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "quote:sym<dblq>"  :subid("133_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_2630
    .param pmc param_2631
.annotate 'line', 951
    new $P2629, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2629, control_2628
    push_eh $P2629
    .lex "self", param_2630
    .lex "$/", param_2631
    find_lex $P2632, "$/"
    find_lex $P2633, "$/"
    unless_null $P2633, vivify_749
    $P2633 = root_new ['parrot';'Hash']
  vivify_749:
    set $P2634, $P2633["quote_EXPR"]
    unless_null $P2634, vivify_750
    new $P2634, "Undef"
  vivify_750:
    $P2635 = $P2634."ast"()
    $P2636 = $P2632."!make"($P2635)
    .return ($P2636)
  control_2628:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2637, exception, "payload"
    .return ($P2637)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "quote:sym<qq>"  :subid("134_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_2641
    .param pmc param_2642
.annotate 'line', 952
    new $P2640, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2640, control_2639
    push_eh $P2640
    .lex "self", param_2641
    .lex "$/", param_2642
    find_lex $P2643, "$/"
    find_lex $P2644, "$/"
    unless_null $P2644, vivify_751
    $P2644 = root_new ['parrot';'Hash']
  vivify_751:
    set $P2645, $P2644["quote_EXPR"]
    unless_null $P2645, vivify_752
    new $P2645, "Undef"
  vivify_752:
    $P2646 = $P2645."ast"()
    $P2647 = $P2643."!make"($P2646)
    .return ($P2647)
  control_2639:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2648, exception, "payload"
    .return ($P2648)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "quote:sym<q>"  :subid("135_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_2652
    .param pmc param_2653
.annotate 'line', 953
    new $P2651, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2651, control_2650
    push_eh $P2651
    .lex "self", param_2652
    .lex "$/", param_2653
    find_lex $P2654, "$/"
    find_lex $P2655, "$/"
    unless_null $P2655, vivify_753
    $P2655 = root_new ['parrot';'Hash']
  vivify_753:
    set $P2656, $P2655["quote_EXPR"]
    unless_null $P2656, vivify_754
    new $P2656, "Undef"
  vivify_754:
    $P2657 = $P2656."ast"()
    $P2658 = $P2654."!make"($P2657)
    .return ($P2658)
  control_2650:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2659, exception, "payload"
    .return ($P2659)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "quote:sym<Q>"  :subid("136_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_2663
    .param pmc param_2664
.annotate 'line', 954
    new $P2662, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2662, control_2661
    push_eh $P2662
    .lex "self", param_2663
    .lex "$/", param_2664
    find_lex $P2665, "$/"
    find_lex $P2666, "$/"
    unless_null $P2666, vivify_755
    $P2666 = root_new ['parrot';'Hash']
  vivify_755:
    set $P2667, $P2666["quote_EXPR"]
    unless_null $P2667, vivify_756
    new $P2667, "Undef"
  vivify_756:
    $P2668 = $P2667."ast"()
    $P2669 = $P2665."!make"($P2668)
    .return ($P2669)
  control_2661:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2670, exception, "payload"
    .return ($P2670)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "quote:sym<Q:PIR>"  :subid("137_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_2674
    .param pmc param_2675
.annotate 'line', 955
    new $P2673, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2673, control_2672
    push_eh $P2673
    .lex "self", param_2674
    .lex "$/", param_2675
.annotate 'line', 956
    find_lex $P2676, "$/"
    get_hll_global $P2677, ["PAST"], "Op"
    find_lex $P2678, "$/"
    unless_null $P2678, vivify_757
    $P2678 = root_new ['parrot';'Hash']
  vivify_757:
    set $P2679, $P2678["quote_EXPR"]
    unless_null $P2679, vivify_758
    new $P2679, "Undef"
  vivify_758:
    $P2680 = $P2679."ast"()
    $P2681 = $P2680."value"()
    find_lex $P2682, "$/"
    $P2683 = $P2677."new"($P2681 :named("inline"), "inline" :named("pasttype"), $P2682 :named("node"))
    $P2684 = $P2676."!make"($P2683)
.annotate 'line', 955
    .return ($P2684)
  control_2672:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2685, exception, "payload"
    .return ($P2685)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "quote:sym</ />"  :subid("138_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_2689
    .param pmc param_2690
    .param pmc param_2691 :optional
    .param int has_param_2691 :opt_flag
.annotate 'line', 961
    new $P2688, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2688, control_2687
    push_eh $P2688
    .lex "self", param_2689
    .lex "$/", param_2690
    if has_param_2691, optparam_759
    new $P2692, "Undef"
    set param_2691, $P2692
  optparam_759:
    .lex "$key", param_2691
.annotate 'line', 971
    new $P2693, "Undef"
    .lex "$regex", $P2693
.annotate 'line', 973
    new $P2694, "Undef"
    .lex "$past", $P2694
.annotate 'line', 962
    find_lex $P2696, "$key"
    set $S2697, $P2696
    iseq $I2698, $S2697, "open"
    unless $I2698, if_2695_end
.annotate 'line', 963

            null $P0
            set_hll_global ['Regex';'P6Regex';'Actions'], '$REGEXNAME', $P0
        
.annotate 'line', 967
    get_global $P2699, "@BLOCK"
    unless_null $P2699, vivify_760
    $P2699 = root_new ['parrot';'ResizablePMCArray']
  vivify_760:
    set $P2700, $P2699[0]
    unless_null $P2700, vivify_761
    new $P2700, "Undef"
  vivify_761:
    $P2700."symbol"(unicode:"$\x{a2}", "lexical" :named("scope"))
.annotate 'line', 968
    get_global $P2701, "@BLOCK"
    unless_null $P2701, vivify_762
    $P2701 = root_new ['parrot';'ResizablePMCArray']
  vivify_762:
    set $P2702, $P2701[0]
    unless_null $P2702, vivify_763
    new $P2702, "Undef"
  vivify_763:
    $P2702."symbol"("$/", "lexical" :named("scope"))
.annotate 'line', 969
    new $P2703, "Exception"
    set $P2703['type'], .CONTROL_RETURN
    new $P2704, "Integer"
    assign $P2704, 0
    setattribute $P2703, 'payload', $P2704
    throw $P2703
  if_2695_end:
.annotate 'line', 972
    get_hll_global $P2705, ["Regex";"P6Regex";"Actions"], "buildsub"
    find_lex $P2706, "$/"
    unless_null $P2706, vivify_764
    $P2706 = root_new ['parrot';'Hash']
  vivify_764:
    set $P2707, $P2706["p6regex"]
    unless_null $P2707, vivify_765
    new $P2707, "Undef"
  vivify_765:
    $P2708 = $P2707."ast"()
    get_global $P2709, "@BLOCK"
    $P2710 = $P2709."shift"()
    $P2711 = $P2705($P2708, $P2710)
    store_lex "$regex", $P2711
.annotate 'line', 974
    get_hll_global $P2712, ["PAST"], "Op"
.annotate 'line', 976
    get_hll_global $P2713, ["PAST"], "Var"
    new $P2714, "ResizablePMCArray"
    push $P2714, "Regex"
    $P2715 = $P2713."new"("Regex" :named("name"), $P2714 :named("namespace"), "package" :named("scope"))
    find_lex $P2716, "$regex"
    $P2717 = $P2712."new"($P2715, $P2716, "callmethod" :named("pasttype"), "new" :named("name"))
.annotate 'line', 974
    store_lex "$past", $P2717
.annotate 'line', 980
    find_lex $P2718, "$regex"
    find_lex $P2719, "$past"
    unless_null $P2719, vivify_766
    $P2719 = root_new ['parrot';'Hash']
    store_lex "$past", $P2719
  vivify_766:
    set $P2719["sink"], $P2718
.annotate 'line', 981
    find_lex $P2720, "$/"
    find_lex $P2721, "$past"
    $P2722 = $P2720."!make"($P2721)
.annotate 'line', 961
    .return ($P2722)
  control_2687:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2723, exception, "payload"
    .return ($P2723)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "quote_escape:sym<$>"  :subid("139_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_2727
    .param pmc param_2728
.annotate 'line', 984
    new $P2726, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2726, control_2725
    push_eh $P2726
    .lex "self", param_2727
    .lex "$/", param_2728
    find_lex $P2729, "$/"
    find_lex $P2730, "$/"
    unless_null $P2730, vivify_767
    $P2730 = root_new ['parrot';'Hash']
  vivify_767:
    set $P2731, $P2730["variable"]
    unless_null $P2731, vivify_768
    new $P2731, "Undef"
  vivify_768:
    $P2732 = $P2731."ast"()
    $P2733 = $P2729."!make"($P2732)
    .return ($P2733)
  control_2725:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2734, exception, "payload"
    .return ($P2734)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "quote_escape:sym<{ }>"  :subid("140_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_2738
    .param pmc param_2739
.annotate 'line', 985
    new $P2737, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2737, control_2736
    push_eh $P2737
    .lex "self", param_2738
    .lex "$/", param_2739
.annotate 'line', 986
    find_lex $P2740, "$/"
    get_hll_global $P2741, ["PAST"], "Op"
.annotate 'line', 987
    find_lex $P2742, "$/"
    unless_null $P2742, vivify_769
    $P2742 = root_new ['parrot';'Hash']
  vivify_769:
    set $P2743, $P2742["block"]
    unless_null $P2743, vivify_770
    new $P2743, "Undef"
  vivify_770:
    $P2744 = $P2743."ast"()
    $P2745 = "block_immediate"($P2744)
    find_lex $P2746, "$/"
    $P2747 = $P2741."new"($P2745, "set S*" :named("pirop"), $P2746 :named("node"))
.annotate 'line', 986
    $P2748 = $P2740."!make"($P2747)
.annotate 'line', 985
    .return ($P2748)
  control_2736:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2749, exception, "payload"
    .return ($P2749)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "quote_escape:sym<esc>"  :subid("141_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_2753
    .param pmc param_2754
.annotate 'line', 990
    new $P2752, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2752, control_2751
    push_eh $P2752
    .lex "self", param_2753
    .lex "$/", param_2754
    find_lex $P2755, "$/"
    $P2756 = $P2755."!make"("\e")
    .return ($P2756)
  control_2751:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2757, exception, "payload"
    .return ($P2757)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "postfix:sym<.>"  :subid("142_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_2761
    .param pmc param_2762
.annotate 'line', 994
    new $P2760, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2760, control_2759
    push_eh $P2760
    .lex "self", param_2761
    .lex "$/", param_2762
    find_lex $P2763, "$/"
    find_lex $P2764, "$/"
    unless_null $P2764, vivify_771
    $P2764 = root_new ['parrot';'Hash']
  vivify_771:
    set $P2765, $P2764["dotty"]
    unless_null $P2765, vivify_772
    new $P2765, "Undef"
  vivify_772:
    $P2766 = $P2765."ast"()
    $P2767 = $P2763."!make"($P2766)
    .return ($P2767)
  control_2759:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2768, exception, "payload"
    .return ($P2768)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "postfix:sym<++>"  :subid("143_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_2772
    .param pmc param_2773
.annotate 'line', 996
    new $P2771, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2771, control_2770
    push_eh $P2771
    .lex "self", param_2772
    .lex "$/", param_2773
.annotate 'line', 997
    find_lex $P2774, "$/"
    get_hll_global $P2775, ["PAST"], "Op"
.annotate 'line', 998
    new $P2776, "ResizablePMCArray"
    push $P2776, "    clone %r, %0"
    push $P2776, "    inc %0"
    $P2777 = $P2775."new"("postfix:<++>" :named("name"), $P2776 :named("inline"), "inline" :named("pasttype"))
.annotate 'line', 997
    $P2778 = $P2774."!make"($P2777)
.annotate 'line', 996
    .return ($P2778)
  control_2770:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2779, exception, "payload"
    .return ($P2779)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "postfix:sym<-->"  :subid("144_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_2783
    .param pmc param_2784
.annotate 'line', 1002
    new $P2782, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2782, control_2781
    push_eh $P2782
    .lex "self", param_2783
    .lex "$/", param_2784
.annotate 'line', 1003
    find_lex $P2785, "$/"
    get_hll_global $P2786, ["PAST"], "Op"
.annotate 'line', 1004
    new $P2787, "ResizablePMCArray"
    push $P2787, "    clone %r, %0"
    push $P2787, "    dec %0"
    $P2788 = $P2786."new"("postfix:<-->" :named("name"), $P2787 :named("inline"), "inline" :named("pasttype"))
.annotate 'line', 1003
    $P2789 = $P2785."!make"($P2788)
.annotate 'line', 1002
    .return ($P2789)
  control_2781:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2790, exception, "payload"
    .return ($P2790)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "prefix:sym<make>"  :subid("145_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_2794
    .param pmc param_2795
.annotate 'line', 1008
    new $P2793, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2793, control_2792
    push_eh $P2793
    .lex "self", param_2794
    .lex "$/", param_2795
.annotate 'line', 1009
    find_lex $P2796, "$/"
    get_hll_global $P2797, ["PAST"], "Op"
.annotate 'line', 1010
    get_hll_global $P2798, ["PAST"], "Var"
    $P2799 = $P2798."new"("$/" :named("name"), "contextual" :named("scope"))
    find_lex $P2800, "$/"
    $P2801 = $P2797."new"($P2799, "callmethod" :named("pasttype"), "!make" :named("name"), $P2800 :named("node"))
.annotate 'line', 1009
    $P2802 = $P2796."!make"($P2801)
.annotate 'line', 1008
    .return ($P2802)
  control_2792:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2803, exception, "payload"
    .return ($P2803)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "term:sym<next>"  :subid("146_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_2808
    .param pmc param_2809
.annotate 'line', 1026
    new $P2807, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2807, control_2806
    push_eh $P2807
    .lex "self", param_2808
    .lex "$/", param_2809
    find_lex $P2810, "$/"
    $P2811 = "control"($P2810, "CONTROL_LOOP_NEXT")
    .return ($P2811)
  control_2806:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2812, exception, "payload"
    .return ($P2812)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "term:sym<last>"  :subid("147_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_2816
    .param pmc param_2817
.annotate 'line', 1027
    new $P2815, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2815, control_2814
    push_eh $P2815
    .lex "self", param_2816
    .lex "$/", param_2817
    find_lex $P2818, "$/"
    $P2819 = "control"($P2818, "CONTROL_LOOP_LAST")
    .return ($P2819)
  control_2814:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2820, exception, "payload"
    .return ($P2820)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "term:sym<redo>"  :subid("148_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_2824
    .param pmc param_2825
.annotate 'line', 1028
    new $P2823, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2823, control_2822
    push_eh $P2823
    .lex "self", param_2824
    .lex "$/", param_2825
    find_lex $P2826, "$/"
    $P2827 = "control"($P2826, "CONTROL_LOOP_REDO")
    .return ($P2827)
  control_2822:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2828, exception, "payload"
    .return ($P2828)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "infix:sym<~~>"  :subid("149_1294786958.359") :outer("11_1294786958.359")
    .param pmc param_2832
    .param pmc param_2833
.annotate 'line', 1030
    new $P2831, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2831, control_2830
    push_eh $P2831
    .lex "self", param_2832
    .lex "$/", param_2833
.annotate 'line', 1031
    find_lex $P2834, "$/"
    get_hll_global $P2835, ["PAST"], "Op"
    find_lex $P2836, "$/"
    $P2837 = $P2835."new"("callmethod" :named("pasttype"), "ACCEPTS" :named("name"), $P2836 :named("node"))
    $P2838 = $P2834."!make"($P2837)
.annotate 'line', 1030
    .return ($P2838)
  control_2830:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2839, exception, "payload"
    .return ($P2839)
.end


.namespace ["NQP";"RegexActions"]
.sub "_block2840"  :subid("150_1294786958.359") :outer("11_1294786958.359")
.annotate 'line', 1035
    .const 'Sub' $P2961 = "158_1294786958.359" 
    capture_lex $P2961
    .const 'Sub' $P2933 = "157_1294786958.359" 
    capture_lex $P2933
    .const 'Sub' $P2919 = "156_1294786958.359" 
    capture_lex $P2919
    .const 'Sub' $P2901 = "155_1294786958.359" 
    capture_lex $P2901
    .const 'Sub' $P2887 = "154_1294786958.359" 
    capture_lex $P2887
    .const 'Sub' $P2873 = "153_1294786958.359" 
    capture_lex $P2873
    .const 'Sub' $P2859 = "152_1294786958.359" 
    capture_lex $P2859
    .const 'Sub' $P2843 = "151_1294786958.359" 
    capture_lex $P2843
    get_global $P2842, "$?CLASS"
.annotate 'line', 1069
    .const 'Sub' $P2933 = "157_1294786958.359" 
    newclosure $P2959, $P2933
.annotate 'line', 1035
    .return ($P2959)
.end


.namespace ["NQP";"RegexActions"]
.sub "" :load :init :subid("post773") :outer("150_1294786958.359")
.annotate 'line', 1035
    get_hll_global $P2841, ["NQP";"RegexActions"], "_block2840" 
    .local pmc block
    set block, $P2841
    .const 'Sub' $P2961 = "158_1294786958.359" 
    capture_lex $P2961
    $P2961()
.end


.namespace ["NQP";"RegexActions"]
.sub "_block2960"  :anon :subid("158_1294786958.359") :outer("150_1294786958.359")
.annotate 'line', 1035
    get_hll_global $P2962, "NQPClassHOW"
    $P2963 = $P2962."new_type"("RegexActions" :named("name"))
    .local pmc type_obj
    set type_obj, $P2963
    set_hll_global ["NQP"], "RegexActions", type_obj
    set_global "$?CLASS", type_obj
    get_how $P2964, type_obj
    .const 'Sub' $P2965 = "151_1294786958.359" 
    $P2964."add_method"(type_obj, "metachar:sym<:my>", $P2965)
    get_how $P2966, type_obj
    .const 'Sub' $P2967 = "152_1294786958.359" 
    $P2966."add_method"(type_obj, "metachar:sym<{ }>", $P2967)
    get_how $P2968, type_obj
    .const 'Sub' $P2969 = "153_1294786958.359" 
    $P2968."add_method"(type_obj, "metachar:sym<nqpvar>", $P2969)
    get_how $P2970, type_obj
    .const 'Sub' $P2971 = "154_1294786958.359" 
    $P2970."add_method"(type_obj, "assertion:sym<{ }>", $P2971)
    get_how $P2972, type_obj
    .const 'Sub' $P2973 = "155_1294786958.359" 
    $P2972."add_method"(type_obj, "assertion:sym<?{ }>", $P2973)
    get_how $P2974, type_obj
    .const 'Sub' $P2975 = "156_1294786958.359" 
    $P2974."add_method"(type_obj, "assertion:sym<var>", $P2975)
    get_how $P2976, type_obj
    .const 'Sub' $P2977 = "157_1294786958.359" 
    $P2976."add_method"(type_obj, "codeblock", $P2977)
    get_how $P2978, type_obj
    get_hll_global $P2979, ["Regex";"P6Regex"], "Actions"
    $P2978."add_parent"(type_obj, $P2979)
    get_how $P2980, type_obj
    $P2981 = $P2980."compose"(type_obj)
    .return ($P2981)
.end


.namespace ["NQP";"RegexActions"]
.include "except_types.pasm"
.sub "metachar:sym<:my>"  :subid("151_1294786958.359") :outer("150_1294786958.359")
    .param pmc param_2846
    .param pmc param_2847
.annotate 'line', 1037
    new $P2845, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2845, control_2844
    push_eh $P2845
    .lex "self", param_2846
    .lex "$/", param_2847
.annotate 'line', 1038
    new $P2848, "Undef"
    .lex "$past", $P2848
    find_lex $P2849, "$/"
    unless_null $P2849, vivify_774
    $P2849 = root_new ['parrot';'Hash']
  vivify_774:
    set $P2850, $P2849["statement"]
    unless_null $P2850, vivify_775
    new $P2850, "Undef"
  vivify_775:
    $P2851 = $P2850."ast"()
    store_lex "$past", $P2851
.annotate 'line', 1039
    find_lex $P2852, "$/"
    get_hll_global $P2853, ["PAST"], "Regex"
    find_lex $P2854, "$past"
    find_lex $P2855, "$/"
    $P2856 = $P2853."new"($P2854, "pastnode" :named("pasttype"), "declarative" :named("subtype"), $P2855 :named("node"))
    $P2857 = $P2852."!make"($P2856)
.annotate 'line', 1037
    .return ($P2857)
  control_2844:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2858, exception, "payload"
    .return ($P2858)
.end


.namespace ["NQP";"RegexActions"]
.include "except_types.pasm"
.sub "metachar:sym<{ }>"  :subid("152_1294786958.359") :outer("150_1294786958.359")
    .param pmc param_2862
    .param pmc param_2863
.annotate 'line', 1043
    new $P2861, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2861, control_2860
    push_eh $P2861
    .lex "self", param_2862
    .lex "$/", param_2863
.annotate 'line', 1044
    find_lex $P2864, "$/"
    get_hll_global $P2865, ["PAST"], "Regex"
    find_lex $P2866, "$/"
    unless_null $P2866, vivify_776
    $P2866 = root_new ['parrot';'Hash']
  vivify_776:
    set $P2867, $P2866["codeblock"]
    unless_null $P2867, vivify_777
    new $P2867, "Undef"
  vivify_777:
    $P2868 = $P2867."ast"()
    find_lex $P2869, "$/"
    $P2870 = $P2865."new"($P2868, "pastnode" :named("pasttype"), $P2869 :named("node"))
    $P2871 = $P2864."!make"($P2870)
.annotate 'line', 1043
    .return ($P2871)
  control_2860:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2872, exception, "payload"
    .return ($P2872)
.end


.namespace ["NQP";"RegexActions"]
.include "except_types.pasm"
.sub "metachar:sym<nqpvar>"  :subid("153_1294786958.359") :outer("150_1294786958.359")
    .param pmc param_2876
    .param pmc param_2877
.annotate 'line', 1048
    new $P2875, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2875, control_2874
    push_eh $P2875
    .lex "self", param_2876
    .lex "$/", param_2877
.annotate 'line', 1049
    find_lex $P2878, "$/"
    get_hll_global $P2879, ["PAST"], "Regex"
    find_lex $P2880, "$/"
    unless_null $P2880, vivify_778
    $P2880 = root_new ['parrot';'Hash']
  vivify_778:
    set $P2881, $P2880["var"]
    unless_null $P2881, vivify_779
    new $P2881, "Undef"
  vivify_779:
    $P2882 = $P2881."ast"()
    find_lex $P2883, "$/"
    $P2884 = $P2879."new"("!INTERPOLATE", $P2882, "subrule" :named("pasttype"), "method" :named("subtype"), $P2883 :named("node"))
    $P2885 = $P2878."!make"($P2884)
.annotate 'line', 1048
    .return ($P2885)
  control_2874:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2886, exception, "payload"
    .return ($P2886)
.end


.namespace ["NQP";"RegexActions"]
.include "except_types.pasm"
.sub "assertion:sym<{ }>"  :subid("154_1294786958.359") :outer("150_1294786958.359")
    .param pmc param_2890
    .param pmc param_2891
.annotate 'line', 1053
    new $P2889, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2889, control_2888
    push_eh $P2889
    .lex "self", param_2890
    .lex "$/", param_2891
.annotate 'line', 1054
    find_lex $P2892, "$/"
    get_hll_global $P2893, ["PAST"], "Regex"
    find_lex $P2894, "$/"
    unless_null $P2894, vivify_780
    $P2894 = root_new ['parrot';'Hash']
  vivify_780:
    set $P2895, $P2894["codeblock"]
    unless_null $P2895, vivify_781
    new $P2895, "Undef"
  vivify_781:
    $P2896 = $P2895."ast"()
    find_lex $P2897, "$/"
    $P2898 = $P2893."new"("!INTERPOLATE_REGEX", $P2896, "subrule" :named("pasttype"), "method" :named("subtype"), $P2897 :named("node"))
    $P2899 = $P2892."!make"($P2898)
.annotate 'line', 1053
    .return ($P2899)
  control_2888:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2900, exception, "payload"
    .return ($P2900)
.end


.namespace ["NQP";"RegexActions"]
.include "except_types.pasm"
.sub "assertion:sym<?{ }>"  :subid("155_1294786958.359") :outer("150_1294786958.359")
    .param pmc param_2904
    .param pmc param_2905
.annotate 'line', 1058
    new $P2903, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2903, control_2902
    push_eh $P2903
    .lex "self", param_2904
    .lex "$/", param_2905
.annotate 'line', 1059
    find_lex $P2906, "$/"
    get_hll_global $P2907, ["PAST"], "Regex"
    find_lex $P2908, "$/"
    unless_null $P2908, vivify_782
    $P2908 = root_new ['parrot';'Hash']
  vivify_782:
    set $P2909, $P2908["codeblock"]
    unless_null $P2909, vivify_783
    new $P2909, "Undef"
  vivify_783:
    $P2910 = $P2909."ast"()
.annotate 'line', 1060
    find_lex $P2911, "$/"
    unless_null $P2911, vivify_784
    $P2911 = root_new ['parrot';'Hash']
  vivify_784:
    set $P2912, $P2911["zw"]
    unless_null $P2912, vivify_785
    new $P2912, "Undef"
  vivify_785:
    set $S2913, $P2912
    iseq $I2914, $S2913, "!"
    find_lex $P2915, "$/"
    $P2916 = $P2907."new"($P2910, "zerowidth" :named("subtype"), $I2914 :named("negate"), "pastnode" :named("pasttype"), $P2915 :named("node"))
.annotate 'line', 1059
    $P2917 = $P2906."!make"($P2916)
.annotate 'line', 1058
    .return ($P2917)
  control_2902:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2918, exception, "payload"
    .return ($P2918)
.end


.namespace ["NQP";"RegexActions"]
.include "except_types.pasm"
.sub "assertion:sym<var>"  :subid("156_1294786958.359") :outer("150_1294786958.359")
    .param pmc param_2922
    .param pmc param_2923
.annotate 'line', 1064
    new $P2921, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2921, control_2920
    push_eh $P2921
    .lex "self", param_2922
    .lex "$/", param_2923
.annotate 'line', 1065
    find_lex $P2924, "$/"
    get_hll_global $P2925, ["PAST"], "Regex"
    find_lex $P2926, "$/"
    unless_null $P2926, vivify_786
    $P2926 = root_new ['parrot';'Hash']
  vivify_786:
    set $P2927, $P2926["var"]
    unless_null $P2927, vivify_787
    new $P2927, "Undef"
  vivify_787:
    $P2928 = $P2927."ast"()
    find_lex $P2929, "$/"
    $P2930 = $P2925."new"("!INTERPOLATE_REGEX", $P2928, "subrule" :named("pasttype"), "method" :named("subtype"), $P2929 :named("node"))
    $P2931 = $P2924."!make"($P2930)
.annotate 'line', 1064
    .return ($P2931)
  control_2920:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2932, exception, "payload"
    .return ($P2932)
.end


.namespace ["NQP";"RegexActions"]
.include "except_types.pasm"
.sub "codeblock"  :subid("157_1294786958.359") :outer("150_1294786958.359")
    .param pmc param_2936
    .param pmc param_2937
.annotate 'line', 1069
    new $P2935, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2935, control_2934
    push_eh $P2935
    .lex "self", param_2936
    .lex "$/", param_2937
.annotate 'line', 1070
    new $P2938, "Undef"
    .lex "$block", $P2938
.annotate 'line', 1072
    new $P2939, "Undef"
    .lex "$past", $P2939
.annotate 'line', 1070
    find_lex $P2940, "$/"
    unless_null $P2940, vivify_788
    $P2940 = root_new ['parrot';'Hash']
  vivify_788:
    set $P2941, $P2940["block"]
    unless_null $P2941, vivify_789
    new $P2941, "Undef"
  vivify_789:
    $P2942 = $P2941."ast"()
    store_lex "$block", $P2942
.annotate 'line', 1071
    find_lex $P2943, "$block"
    $P2943."blocktype"("immediate")
.annotate 'line', 1073
    get_hll_global $P2944, ["PAST"], "Stmts"
.annotate 'line', 1074
    get_hll_global $P2945, ["PAST"], "Op"
.annotate 'line', 1075
    get_hll_global $P2946, ["PAST"], "Var"
    $P2947 = $P2946."new"("$/" :named("name"))
.annotate 'line', 1076
    get_hll_global $P2948, ["PAST"], "Op"
.annotate 'line', 1077
    get_hll_global $P2949, ["PAST"], "Var"
    $P2950 = $P2949."new"(unicode:"$\x{a2}" :named("name"))
    $P2951 = $P2948."new"($P2950, "MATCH" :named("name"), "callmethod" :named("pasttype"))
.annotate 'line', 1076
    $P2952 = $P2945."new"($P2947, $P2951, "bind" :named("pasttype"))
.annotate 'line', 1074
    find_lex $P2953, "$block"
    $P2954 = $P2944."new"($P2952, $P2953)
.annotate 'line', 1073
    store_lex "$past", $P2954
.annotate 'line', 1085
    find_lex $P2955, "$/"
    find_lex $P2956, "$past"
    $P2957 = $P2955."!make"($P2956)
.annotate 'line', 1069
    .return ($P2957)
  control_2934:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2958, exception, "payload"
    .return ($P2958)
.end


.namespace ["NQP";"Actions"]
.sub "_block2983" :load :anon :subid("159_1294786958.359")
.annotate 'line', 3
    .const 'Sub' $P2985 = "11_1294786958.359" 
    $P2986 = $P2985()
    .return ($P2986)
.end


.namespace []
.sub "_block3206" :load :anon :subid("162_1294786958.359")
.annotate 'line', 1
    .const 'Sub' $P3208 = "10_1294786958.359" 
    $P3209 = $P3208()
    .return ($P3209)
.end

### .include 'gen/nqp-compiler.pir'

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1294786960.609")
.annotate 'line', 0
    get_hll_global $P15, ["NQP";"Compiler"], "_block14" 
    capture_lex $P15
.annotate 'line', 1
    nqp_dynop_setup 
    get_hll_global $P13, ["NQP"], "Compiler"
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
    get_hll_global $P15, ["NQP";"Compiler"], "_block14" 
    capture_lex $P15
    $P25 = $P15()
    .return ($P25)
    .const 'Sub' $P27 = "13_1294786960.609" 
    .return ($P27)
.end


.namespace ["NQP";"Compiler"]
.sub "_block14"  :subid("11_1294786960.609") :outer("10_1294786960.609")
.annotate 'line', 1
    .const 'Sub' $P18 = "12_1294786960.609" 
    capture_lex $P18
    get_global $P16, "$?CLASS"
    .return ()
.end


.namespace ["NQP";"Compiler"]
.sub "" :load :init :subid("post14") :outer("11_1294786960.609")
.annotate 'line', 1
    get_hll_global $P15, ["NQP";"Compiler"], "_block14" 
    .local pmc block
    set block, $P15
    .const 'Sub' $P18 = "12_1294786960.609" 
    capture_lex $P18
    $P18()
.end


.namespace ["NQP";"Compiler"]
.sub "_block17"  :anon :subid("12_1294786960.609") :outer("11_1294786960.609")
.annotate 'line', 1
    get_hll_global $P19, "NQPClassHOW"
    $P20 = $P19."new_type"("Compiler" :named("name"))
    .local pmc type_obj
    set type_obj, $P20
    set_hll_global ["NQP"], "Compiler", type_obj
    set_global "$?CLASS", type_obj
    get_how $P21, type_obj
    get_hll_global $P22, ["HLL"], "Compiler"
    $P21."add_parent"(type_obj, $P22)
    get_how $P23, type_obj
    $P24 = $P23."compose"(type_obj)
    .return ($P24)
.end


.namespace []
.sub "_block26" :load :anon :subid("13_1294786960.609")
.annotate 'line', 1
    .const 'Sub' $P28 = "10_1294786960.609" 
    $P29 = $P28()
    .return ($P29)
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
    .local pmc nqpproto, nqpcomp
    nqpproto = get_hll_global ['NQP'], 'Compiler'
    nqpcomp = nqpproto.'new'()
    nqpcomp.'language'('NQP-rx')
    $P0 = get_hll_global ['NQP'], 'Grammar'
    nqpcomp.'parsegrammar'($P0)
    $P0 = get_hll_global ['NQP'], 'Actions'
    nqpcomp.'parseactions'($P0)
    $P0 = nqpcomp.'commandline_options'()
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
