
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1299591517.57")
.annotate 'line', 0
    get_hll_global $P2534, ["NQPModuleHOW"], "_block2533" 
    capture_lex $P2534
    get_hll_global $P2304, ["RoleToRoleApplier"], "_block2303" 
    capture_lex $P2304
    get_hll_global $P2088, ["RoleToClassApplier"], "_block2087" 
    capture_lex $P2088
    get_hll_global $P1732, ["NQPParametricRoleHOW"], "_block1731" 
    capture_lex $P1732
    get_hll_global $P1410, ["NQPConcreteRoleHOW"], "_block1409" 
    capture_lex $P1410
    get_hll_global $P1198, ["NQPAttribute"], "_block1197" 
    capture_lex $P1198
    get_hll_global $P1110, ["NQPNativeHOW"], "_block1109" 
    capture_lex $P1110
    get_hll_global $P52, ["NQPClassHOW"], "_block51" 
    capture_lex $P52
    get_hll_global $P26, ["KnowHOWAttribute"], "_block25" 
    capture_lex $P26
.annotate 'line', 1
    getinterp $P13
    get_class $P14, "LexPad"
    get_class $P15, "NQPLexPad"
    $P13."hll_map"($P14, $P15)
    get_hll_global $P16, "NQPModuleHOW"
    get_hll_global $P17, "RoleToRoleApplier"
    get_hll_global $P18, "RoleToClassApplier"
    get_hll_global $P19, "NQPParametricRoleHOW"
    get_hll_global $P20, "NQPConcreteRoleHOW"
    get_hll_global $P21, "NQPAttribute"
    get_hll_global $P22, "NQPNativeHOW"
    get_hll_global $P23, "NQPClassHOW"
    get_hll_global $P24, "KnowHOWAttribute"
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 10
    get_hll_global $P26, ["KnowHOWAttribute"], "_block25" 
    capture_lex $P26
    $P26()
.annotate 'line', 26
    get_hll_global $P52, ["NQPClassHOW"], "_block51" 
    capture_lex $P52
    $P52()
.annotate 'line', 454
    get_hll_global $P1110, ["NQPNativeHOW"], "_block1109" 
    capture_lex $P1110
    $P1110()
.annotate 'line', 498
    get_hll_global $P1198, ["NQPAttribute"], "_block1197" 
    capture_lex $P1198
    $P1198()
.annotate 'line', 571
    get_hll_global $P1410, ["NQPConcreteRoleHOW"], "_block1409" 
    capture_lex $P1410
    $P1410()
.annotate 'line', 720
    get_hll_global $P1732, ["NQPParametricRoleHOW"], "_block1731" 
    capture_lex $P1732
    $P1732()
.annotate 'line', 886
    get_hll_global $P2088, ["RoleToClassApplier"], "_block2087" 
    capture_lex $P2088
    $P2088()
.annotate 'line', 958
    get_hll_global $P2304, ["RoleToRoleApplier"], "_block2303" 
    capture_lex $P2304
    $P2304()
.annotate 'line', 1048
    get_hll_global $P2534, ["NQPModuleHOW"], "_block2533" 
    capture_lex $P2534
    $P2622 = $P2534()
.annotate 'line', 1
    .return ($P2622)
    .const 'Sub' $P2624 = "174_1299591517.57" 
    .return ($P2624)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post175") :outer("10_1299591517.57")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1299591517.57" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P2628, "1299591513.044"
    isnull $I2629, $P2628
    if $I2629, if_2627
    goto if_2627_end
  if_2627:
    nqp_dynop_setup 
    load_bytecode "nqpmo.pbc"
    nqp_create_sc $P2630, "1299591513.044"
  if_2627_end:
.end


.HLL "nqp"

.namespace ["KnowHOWAttribute"]
.sub "_block25"  :subid("11_1299591517.57") :outer("10_1299591517.57")
.annotate 'line', 10
    .const 'Sub' $P42 = "14_1299591517.57" 
    capture_lex $P42
    .const 'Sub' $P36 = "13_1299591517.57" 
    capture_lex $P36
    .const 'Sub' $P28 = "12_1299591517.57" 
    capture_lex $P28
    get_global $P27, "$?CLASS"
.annotate 'line', 14
    .const 'Sub' $P36 = "13_1299591517.57" 
    newclosure $P40, $P36
.annotate 'line', 10
    .return ($P40)
.end


.HLL "nqp"

.namespace ["KnowHOWAttribute"]
.sub "" :load :init :subid("post176") :outer("11_1299591517.57")
.annotate 'line', 10
    get_hll_global $P26, ["KnowHOWAttribute"], "_block25" 
    .local pmc block
    set block, $P26
    .const 'Sub' $P42 = "14_1299591517.57" 
    capture_lex $P42
    $P42()
.end


.HLL "nqp"

.namespace ["KnowHOWAttribute"]
.sub "_block41"  :anon :subid("14_1299591517.57") :outer("11_1299591517.57")
.annotate 'line', 10
    get_hll_global $P43, "KnowHOW"
    $P44 = $P43."new_type"("KnowHOWAttribute" :named("name"), "P6str" :named("repr"))
    .local pmc type_obj
    set type_obj, $P44
    set_hll_global "KnowHOWAttribute", type_obj
    set_global "$?CLASS", type_obj
    get_how $P45, type_obj
    .const 'Sub' $P46 = "12_1299591517.57" 
    $P45."add_method"(type_obj, "new", $P46)
    get_how $P47, type_obj
    .const 'Sub' $P48 = "13_1299591517.57" 
    $P47."add_method"(type_obj, "name", $P48)
    get_how $P49, type_obj
    $P50 = $P49."compose"(type_obj)
    .return ($P50)
.end


.HLL "nqp"

.namespace ["KnowHOWAttribute"]
.sub "new"  :subid("12_1299591517.57") :outer("11_1299591517.57")
    .param pmc param_29
    .param pmc param_30 :optional :named("name")
    .param int has_param_30 :opt_flag
.annotate 'line', 11
    .lex "self", param_29
    if has_param_30, optparam_177
    new $P31, "Undef"
    set param_30, $P31
  optparam_177:
    .lex "$name", param_30
.annotate 'line', 12
    find_lex $P32, "$name"
    set $S33, $P32
    get_hll_global $P34, "KnowHOWAttribute"
    repr_box_str $P35, $S33, $P34
.annotate 'line', 11
    .return ($P35)
.end


.HLL "nqp"

.namespace ["KnowHOWAttribute"]
.sub "name"  :subid("13_1299591517.57") :outer("11_1299591517.57")
    .param pmc param_37
.annotate 'line', 14
    .lex "self", param_37
.annotate 'line', 15
    find_lex $P38, "self"
    repr_unbox_str $S39, $P38
.annotate 'line', 14
    .return ($S39)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block51"  :subid("15_1299591517.57") :outer("10_1299591517.57")
.annotate 'line', 26
    .const 'Sub' $P1018 = "70_1299591517.57" 
    capture_lex $P1018
    .const 'Sub' $P981 = "68_1299591517.57" 
    capture_lex $P981
    .const 'Sub' $P945 = "66_1299591517.57" 
    capture_lex $P945
    .const 'Sub' $P911 = "65_1299591517.57" 
    capture_lex $P911
    .const 'Sub' $P874 = "64_1299591517.57" 
    capture_lex $P874
    .const 'Sub' $P867 = "63_1299591517.57" 
    capture_lex $P867
    .const 'Sub' $P844 = "61_1299591517.57" 
    capture_lex $P844
    .const 'Sub' $P838 = "60_1299591517.57" 
    capture_lex $P838
    .const 'Sub' $P832 = "59_1299591517.57" 
    capture_lex $P832
    .const 'Sub' $P809 = "57_1299591517.57" 
    capture_lex $P809
    .const 'Sub' $P802 = "56_1299591517.57" 
    capture_lex $P802
    .const 'Sub' $P788 = "55_1299591517.57" 
    capture_lex $P788
    .const 'Sub' $P739 = "52_1299591517.57" 
    capture_lex $P739
    .const 'Sub' $P694 = "49_1299591517.57" 
    capture_lex $P694
    .const 'Sub' $P657 = "46_1299591517.57" 
    capture_lex $P657
    .const 'Sub' $P527 = "41_1299591517.57" 
    capture_lex $P527
    .const 'Sub' $P423 = "37_1299591517.57" 
    capture_lex $P423
    .const 'Sub' $P397 = "36_1299591517.57" 
    capture_lex $P397
    .const 'Sub' $P363 = "34_1299591517.57" 
    capture_lex $P363
    .const 'Sub' $P325 = "32_1299591517.57" 
    capture_lex $P325
    .const 'Sub' $P304 = "31_1299591517.57" 
    capture_lex $P304
    .const 'Sub' $P283 = "30_1299591517.57" 
    capture_lex $P283
    .const 'Sub' $P264 = "29_1299591517.57" 
    capture_lex $P264
    .const 'Sub' $P250 = "28_1299591517.57" 
    capture_lex $P250
    .const 'Sub' $P243 = "27_1299591517.57" 
    capture_lex $P243
    .const 'Sub' $P233 = "26_1299591517.57" 
    capture_lex $P233
    .const 'Sub' $P96 = "19_1299591517.57" 
    capture_lex $P96
    .const 'Sub' $P54 = "16_1299591517.57" 
    capture_lex $P54
    get_global $P53, "$?CLASS"
.annotate 'line', 235
    .const 'Sub' $P54 = "16_1299591517.57" 
    newclosure $P95, $P54
    .lex "compute_c3_mro", $P95
.annotate 'line', 257
    .const 'Sub' $P96 = "19_1299591517.57" 
    newclosure $P232, $P96
    .lex "c3_merge", $P232
.annotate 'line', 181
    find_lex $P655, "compute_c3_mro"
    find_lex $P656, "c3_merge"
.annotate 'line', 441
    .const 'Sub' $P981 = "68_1299591517.57" 
    newclosure $P1016, $P981
.annotate 'line', 26
    .return ($P1016)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "" :load :init :subid("post178") :outer("15_1299591517.57")
.annotate 'line', 26
    get_hll_global $P52, ["NQPClassHOW"], "_block51" 
    .local pmc block
    set block, $P52
    .const 'Sub' $P1018 = "70_1299591517.57" 
    capture_lex $P1018
    $P1018()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1017"  :anon :subid("70_1299591517.57") :outer("15_1299591517.57")
.annotate 'line', 26
    get_hll_global $P1019, "KnowHOW"
    $P1020 = $P1019."new_type"("NQPClassHOW" :named("name"))
    .local pmc type_obj
    set type_obj, $P1020
    set_hll_global "NQPClassHOW", type_obj
    set_global "$?CLASS", type_obj
    get_how $P1021, type_obj
    get_hll_global $P1022, "KnowHOWAttribute"
    $P1023 = $P1022."new"("$!name" :named("name"))
    $P1021."add_attribute"(type_obj, $P1023)
    get_how $P1024, type_obj
    get_hll_global $P1025, "KnowHOWAttribute"
    $P1026 = $P1025."new"("%!attributes" :named("name"))
    $P1024."add_attribute"(type_obj, $P1026)
    get_how $P1027, type_obj
    get_hll_global $P1028, "KnowHOWAttribute"
    $P1029 = $P1028."new"("%!methods" :named("name"))
    $P1027."add_attribute"(type_obj, $P1029)
    get_how $P1030, type_obj
    get_hll_global $P1031, "KnowHOWAttribute"
    $P1032 = $P1031."new"("@!multi_methods_to_incorporate" :named("name"))
    $P1030."add_attribute"(type_obj, $P1032)
    get_how $P1033, type_obj
    get_hll_global $P1034, "KnowHOWAttribute"
    $P1035 = $P1034."new"("@!parents" :named("name"))
    $P1033."add_attribute"(type_obj, $P1035)
    get_how $P1036, type_obj
    get_hll_global $P1037, "KnowHOWAttribute"
    $P1038 = $P1037."new"("@!roles" :named("name"))
    $P1036."add_attribute"(type_obj, $P1038)
    get_how $P1039, type_obj
    get_hll_global $P1040, "KnowHOWAttribute"
    $P1041 = $P1040."new"("@!vtable" :named("name"))
    $P1039."add_attribute"(type_obj, $P1041)
    get_how $P1042, type_obj
    get_hll_global $P1043, "KnowHOWAttribute"
    $P1044 = $P1043."new"("%!method-vtable-slots" :named("name"))
    $P1042."add_attribute"(type_obj, $P1044)
    get_how $P1045, type_obj
    get_hll_global $P1046, "KnowHOWAttribute"
    $P1047 = $P1046."new"("$!composed" :named("name"))
    $P1045."add_attribute"(type_obj, $P1047)
    get_how $P1048, type_obj
    get_hll_global $P1049, "KnowHOWAttribute"
    $P1050 = $P1049."new"("@!mro" :named("name"))
    $P1048."add_attribute"(type_obj, $P1050)
    get_how $P1051, type_obj
    get_hll_global $P1052, "KnowHOWAttribute"
    $P1053 = $P1052."new"("@!done" :named("name"))
    $P1051."add_attribute"(type_obj, $P1053)
    get_how $P1054, type_obj
    get_hll_global $P1055, "KnowHOWAttribute"
    $P1056 = $P1055."new"("%!parrot_vtable_mapping" :named("name"))
    $P1054."add_attribute"(type_obj, $P1056)
    get_how $P1057, type_obj
    .const 'Sub' $P1058 = "26_1299591517.57" 
    $P1057."add_method"(type_obj, "new", $P1058)
    get_how $P1059, type_obj
    .const 'Sub' $P1060 = "27_1299591517.57" 
    $P1059."add_method"(type_obj, "BUILD", $P1060)
    get_how $P1061, type_obj
    .const 'Sub' $P1062 = "28_1299591517.57" 
    $P1061."add_method"(type_obj, "new_type", $P1062)
    get_how $P1063, type_obj
    .const 'Sub' $P1064 = "29_1299591517.57" 
    $P1063."add_method"(type_obj, "add_method", $P1064)
    get_how $P1065, type_obj
    .const 'Sub' $P1066 = "30_1299591517.57" 
    $P1065."add_method"(type_obj, "add_multi_method", $P1066)
    get_how $P1067, type_obj
    .const 'Sub' $P1068 = "31_1299591517.57" 
    $P1067."add_method"(type_obj, "add_attribute", $P1068)
    get_how $P1069, type_obj
    .const 'Sub' $P1070 = "32_1299591517.57" 
    $P1069."add_method"(type_obj, "add_parent", $P1070)
    get_how $P1071, type_obj
    .const 'Sub' $P1072 = "34_1299591517.57" 
    $P1071."add_method"(type_obj, "add_role", $P1072)
    get_how $P1073, type_obj
    .const 'Sub' $P1074 = "36_1299591517.57" 
    $P1073."add_method"(type_obj, "add_parrot_vtable_mapping", $P1074)
    get_how $P1075, type_obj
    .const 'Sub' $P1076 = "37_1299591517.57" 
    $P1075."add_method"(type_obj, "compose", $P1076)
    get_how $P1077, type_obj
    .const 'Sub' $P1078 = "41_1299591517.57" 
    $P1077."add_method"(type_obj, "incorporate_multi_candidates", $P1078)
    get_how $P1079, type_obj
    .const 'Sub' $P1080 = "46_1299591517.57" 
    $P1079."add_method"(type_obj, "publish_type_cache", $P1080)
    get_how $P1081, type_obj
    .const 'Sub' $P1082 = "49_1299591517.57" 
    $P1081."add_method"(type_obj, "publish_method_cache", $P1082)
    get_how $P1083, type_obj
    .const 'Sub' $P1084 = "52_1299591517.57" 
    $P1083."add_method"(type_obj, "publish_parrot_vtable_mapping", $P1084)
    get_how $P1085, type_obj
    .const 'Sub' $P1086 = "55_1299591517.57" 
    $P1085."add_method"(type_obj, "parents", $P1086)
    get_how $P1087, type_obj
    .const 'Sub' $P1088 = "56_1299591517.57" 
    $P1087."add_method"(type_obj, "roles", $P1088)
    get_how $P1089, type_obj
    .const 'Sub' $P1090 = "57_1299591517.57" 
    $P1089."add_method"(type_obj, "methods", $P1090)
    get_how $P1091, type_obj
    .const 'Sub' $P1092 = "59_1299591517.57" 
    $P1091."add_method"(type_obj, "method_table", $P1092)
    get_how $P1093, type_obj
    .const 'Sub' $P1094 = "60_1299591517.57" 
    $P1093."add_method"(type_obj, "name", $P1094)
    get_how $P1095, type_obj
    .const 'Sub' $P1096 = "61_1299591517.57" 
    $P1095."add_method"(type_obj, "attributes", $P1096)
    get_how $P1097, type_obj
    .const 'Sub' $P1098 = "63_1299591517.57" 
    $P1097."add_method"(type_obj, "parrot_vtable_mappings", $P1098)
    get_how $P1099, type_obj
    .const 'Sub' $P1100 = "64_1299591517.57" 
    $P1099."add_method"(type_obj, "isa", $P1100)
    get_how $P1101, type_obj
    .const 'Sub' $P1102 = "65_1299591517.57" 
    $P1101."add_method"(type_obj, "does", $P1102)
    get_how $P1103, type_obj
    .const 'Sub' $P1104 = "66_1299591517.57" 
    $P1103."add_method"(type_obj, "can", $P1104)
    get_how $P1105, type_obj
    .const 'Sub' $P1106 = "68_1299591517.57" 
    $P1105."add_method"(type_obj, "find_method", $P1106)
    get_how $P1107, type_obj
    $P1108 = $P1107."compose"(type_obj)
    .return ($P1108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "compute_c3_mro"  :subid("16_1299591517.57") :outer("15_1299591517.57")
    .param pmc param_57
.annotate 'line', 235
    .const 'Sub' $P69 = "17_1299591517.57" 
    capture_lex $P69
    new $P56, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P56, control_55
    push_eh $P56
    .lex "$class", param_57
.annotate 'line', 236
    $P58 = root_new ['parrot';'ResizablePMCArray']
    .lex "@immediate_parents", $P58
.annotate 'line', 239
    $P59 = root_new ['parrot';'ResizablePMCArray']
    .lex "@result", $P59
.annotate 'line', 236
    find_lex $P60, "$class"
    get_how $P61, $P60
    find_lex $P62, "$class"
    $P63 = $P61."parents"($P62, 1 :named("local"))
    store_lex "@immediate_parents", $P63
    find_lex $P64, "@result"
.annotate 'line', 240
    find_lex $P66, "@immediate_parents"
    set $N67, $P66
    unless $N67, if_65_end
    .const 'Sub' $P69 = "17_1299591517.57" 
    capture_lex $P69
    $P69()
  if_65_end:
.annotate 'line', 252
    find_lex $P90, "@result"
    find_lex $P91, "$class"
    $P90."unshift"($P91)
.annotate 'line', 253
    new $P92, "Exception"
    set $P92['type'], .CONTROL_RETURN
    find_lex $P93, "@result"
    setattribute $P92, 'payload', $P93
    throw $P92
.annotate 'line', 235
    .return ()
  control_55:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P94, exception, "payload"
    .return ($P94)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block68"  :anon :subid("17_1299591517.57") :outer("16_1299591517.57")
.annotate 'line', 240
    .const 'Sub' $P77 = "18_1299591517.57" 
    capture_lex $P77
.annotate 'line', 243
    $P70 = root_new ['parrot';'ResizablePMCArray']
    .lex "@merge_list", $P70
.annotate 'line', 240
    find_lex $P71, "@merge_list"
.annotate 'line', 244
    find_lex $P73, "@immediate_parents"
    defined $I74, $P73
    unless $I74, for_undef_179
    iter $P72, $P73
    new $P84, 'ExceptionHandler'
    set_label $P84, loop83_handler
    $P84."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P84
  loop83_test:
    unless $P72, loop83_done
    shift $P75, $P72
  loop83_redo:
    .const 'Sub' $P77 = "18_1299591517.57" 
    capture_lex $P77
    $P77($P75)
  loop83_next:
    goto loop83_test
  loop83_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P85, exception, 'type'
    eq $P85, .CONTROL_LOOP_NEXT, loop83_next
    eq $P85, .CONTROL_LOOP_REDO, loop83_redo
  loop83_done:
    pop_eh 
  for_undef_179:
.annotate 'line', 247
    find_lex $P86, "@merge_list"
    find_lex $P87, "@immediate_parents"
    $P86."push"($P87)
.annotate 'line', 248
    find_lex $P88, "@merge_list"
    $P89 = "c3_merge"($P88)
    store_lex "@result", $P89
.annotate 'line', 240
    .return ($P89)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block76"  :anon :subid("18_1299591517.57") :outer("17_1299591517.57")
    .param pmc param_78
.annotate 'line', 244
    .lex "$_", param_78
.annotate 'line', 245
    find_lex $P79, "@merge_list"
    find_lex $P80, "$_"
    $P81 = "compute_c3_mro"($P80)
    $P82 = $P79."push"($P81)
.annotate 'line', 244
    .return ($P82)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "c3_merge"  :subid("19_1299591517.57") :outer("15_1299591517.57")
    .param pmc param_99
.annotate 'line', 257
    .const 'Sub' $P192 = "24_1299591517.57" 
    capture_lex $P192
    .const 'Sub' $P114 = "20_1299591517.57" 
    capture_lex $P114
    new $P98, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P98, control_97
    push_eh $P98
    .lex "@merge_list", param_99
.annotate 'line', 258
    $P100 = root_new ['parrot';'ResizablePMCArray']
    .lex "@result", $P100
.annotate 'line', 259
    new $P101, "Undef"
    .lex "$accepted", $P101
.annotate 'line', 260
    new $P102, "Undef"
    .lex "$something_accepted", $P102
.annotate 'line', 261
    new $P103, "Undef"
    .lex "$cand_count", $P103
.annotate 'line', 304
    new $P104, "Undef"
    .lex "$i", $P104
.annotate 'line', 257
    find_lex $P105, "@result"
    find_lex $P106, "$accepted"
.annotate 'line', 260
    new $P107, "Integer"
    assign $P107, 0
    store_lex "$something_accepted", $P107
.annotate 'line', 261
    new $P108, "Integer"
    assign $P108, 0
    store_lex "$cand_count", $P108
.annotate 'line', 264
    find_lex $P110, "@merge_list"
    defined $I111, $P110
    unless $I111, for_undef_180
    iter $P109, $P110
    new $P175, 'ExceptionHandler'
    set_label $P175, loop174_handler
    $P175."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P175
  loop174_test:
    unless $P109, loop174_done
    shift $P112, $P109
  loop174_redo:
    .const 'Sub' $P114 = "20_1299591517.57" 
    capture_lex $P114
    $P114($P112)
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
  for_undef_180:
.annotate 'line', 294
    find_lex $P178, "$cand_count"
    set $N179, $P178
    iseq $I180, $N179, 0.0
    unless $I180, if_177_end
.annotate 'line', 295
    new $P181, "Exception"
    set $P181['type'], .CONTROL_RETURN
    find_lex $P182, "@result"
    setattribute $P181, 'payload', $P182
    throw $P181
  if_177_end:
.annotate 'line', 299
    find_lex $P184, "$something_accepted"
    if $P184, unless_183_end
.annotate 'line', 300
    die "Could not build C3 linearization: ambiguous hierarchy"
  unless_183_end:
.annotate 'line', 304
    new $P185, "Integer"
    assign $P185, 0
    store_lex "$i", $P185
.annotate 'line', 305
    new $P223, 'ExceptionHandler'
    set_label $P223, loop222_handler
    $P223."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P223
  loop222_test:
    find_lex $P186, "$i"
    set $N187, $P186
    find_lex $P188, "@merge_list"
    set $N189, $P188
    islt $I190, $N187, $N189
    unless $I190, loop222_done
  loop222_redo:
    .const 'Sub' $P192 = "24_1299591517.57" 
    capture_lex $P192
    $P192()
  loop222_next:
    goto loop222_test
  loop222_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P224, exception, 'type'
    eq $P224, .CONTROL_LOOP_NEXT, loop222_next
    eq $P224, .CONTROL_LOOP_REDO, loop222_redo
  loop222_done:
    pop_eh 
.annotate 'line', 318
    find_lex $P225, "@merge_list"
    $P226 = "c3_merge"($P225)
    store_lex "@result", $P226
.annotate 'line', 319
    find_lex $P227, "@result"
    find_lex $P228, "$accepted"
    $P227."unshift"($P228)
.annotate 'line', 320
    new $P229, "Exception"
    set $P229['type'], .CONTROL_RETURN
    find_lex $P230, "@result"
    setattribute $P229, 'payload', $P230
    throw $P229
.annotate 'line', 257
    .return ()
  control_97:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P231, exception, "payload"
    .return ($P231)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block113"  :anon :subid("20_1299591517.57") :outer("19_1299591517.57")
    .param pmc param_116
.annotate 'line', 264
    .const 'Sub' $P123 = "21_1299591517.57" 
    capture_lex $P123
.annotate 'line', 265
    $P115 = root_new ['parrot';'ResizablePMCArray']
    .lex "@cand_list", $P115
    .lex "$_", param_116
    find_lex $P117, "$_"
    store_lex "@cand_list", $P117
.annotate 'line', 266
    find_lex $P120, "@cand_list"
    set $N121, $P120
    if $N121, if_119
    new $P118, 'Float'
    set $P118, $N121
    goto if_119_end
  if_119:
    .const 'Sub' $P123 = "21_1299591517.57" 
    capture_lex $P123
    $P173 = $P123()
    set $P118, $P173
  if_119_end:
.annotate 'line', 264
    .return ($P118)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block122"  :anon :subid("21_1299591517.57") :outer("20_1299591517.57")
.annotate 'line', 266
    .const 'Sub' $P136 = "22_1299591517.57" 
    capture_lex $P136
.annotate 'line', 267
    new $P124, "Undef"
    .lex "$rejected", $P124
.annotate 'line', 268
    new $P125, "Undef"
    .lex "$cand_class", $P125
.annotate 'line', 267
    new $P126, "Integer"
    assign $P126, 0
    store_lex "$rejected", $P126
.annotate 'line', 268
    find_lex $P127, "@cand_list"
    unless_null $P127, vivify_181
    $P127 = root_new ['parrot';'ResizablePMCArray']
  vivify_181:
    set $P128, $P127[0]
    unless_null $P128, vivify_182
    new $P128, "Undef"
  vivify_182:
    store_lex "$cand_class", $P128
.annotate 'line', 269
    find_lex $P129, "$cand_count"
    add $P130, $P129, 1
    store_lex "$cand_count", $P130
.annotate 'line', 270
    find_lex $P132, "@merge_list"
    defined $I133, $P132
    unless $I133, for_undef_183
    iter $P131, $P132
    new $P171, 'ExceptionHandler'
    set_label $P171, loop170_handler
    $P171."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P171
  loop170_test:
    unless $P131, loop170_done
    shift $P134, $P131
  loop170_redo:
    .const 'Sub' $P136 = "22_1299591517.57" 
    capture_lex $P136
    $P136($P134)
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
  for_undef_183:
.annotate 'line', 266
    .return ($P131)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block135"  :anon :subid("22_1299591517.57") :outer("21_1299591517.57")
    .param pmc param_137
.annotate 'line', 270
    .const 'Sub' $P143 = "23_1299591517.57" 
    capture_lex $P143
    .lex "$_", param_137
.annotate 'line', 272
    find_lex $P139, "$_"
    find_lex $P140, "@cand_list"
    issame $I141, $P139, $P140
    if $I141, unless_138_end
    .const 'Sub' $P143 = "23_1299591517.57" 
    capture_lex $P143
    $P143()
  unless_138_end:
.annotate 'line', 284
    find_lex $P166, "$rejected"
    unless $P166, unless_165
    set $P164, $P166
    goto unless_165_end
  unless_165:
.annotate 'line', 285
    find_lex $P167, "$cand_class"
    store_lex "$accepted", $P167
.annotate 'line', 286
    new $P168, "Integer"
    assign $P168, 1
    store_lex "$something_accepted", $P168
.annotate 'line', 287
    set $I169, .CONTROL_LOOP_LAST
    die 0, $I169
  unless_165_end:
.annotate 'line', 270
    .return ($P164)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block142"  :anon :subid("23_1299591517.57") :outer("22_1299591517.57")
.annotate 'line', 274
    new $P144, "Undef"
    .lex "$cur_pos", $P144
    new $P145, "Integer"
    assign $P145, 1
    store_lex "$cur_pos", $P145
.annotate 'line', 275
    new $P162, 'ExceptionHandler'
    set_label $P162, loop161_handler
    $P162."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P162
  loop161_test:
    find_lex $P146, "$cur_pos"
    set $N147, $P146
    find_lex $P148, "$_"
    set $N149, $P148
    isle $I150, $N147, $N149
    unless $I150, loop161_done
  loop161_redo:
.annotate 'line', 276
    find_lex $P152, "$cur_pos"
    set $I153, $P152
    find_lex $P154, "$_"
    unless_null $P154, vivify_184
    $P154 = root_new ['parrot';'ResizablePMCArray']
  vivify_184:
    set $P155, $P154[$I153]
    unless_null $P155, vivify_185
    new $P155, "Undef"
  vivify_185:
    find_lex $P156, "$cand_class"
    issame $I157, $P155, $P156
    unless $I157, if_151_end
.annotate 'line', 277
    new $P158, "Integer"
    assign $P158, 1
    store_lex "$rejected", $P158
  if_151_end:
.annotate 'line', 279
    find_lex $P159, "$cur_pos"
    add $P160, $P159, 1
    store_lex "$cur_pos", $P160
  loop161_next:
.annotate 'line', 275
    goto loop161_test
  loop161_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P163, exception, 'type'
    eq $P163, .CONTROL_LOOP_NEXT, loop161_next
    eq $P163, .CONTROL_LOOP_REDO, loop161_redo
  loop161_done:
    pop_eh 
.annotate 'line', 272
    .return ($I150)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block191"  :anon :subid("24_1299591517.57") :outer("19_1299591517.57")
.annotate 'line', 305
    .const 'Sub' $P203 = "25_1299591517.57" 
    capture_lex $P203
.annotate 'line', 306
    $P193 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new_list", $P193
.annotate 'line', 305
    find_lex $P194, "@new_list"
.annotate 'line', 307
    find_lex $P196, "$i"
    set $I197, $P196
    find_lex $P198, "@merge_list"
    unless_null $P198, vivify_186
    $P198 = root_new ['parrot';'ResizablePMCArray']
  vivify_186:
    set $P199, $P198[$I197]
    unless_null $P199, vivify_187
    new $P199, "Undef"
  vivify_187:
    defined $I200, $P199
    unless $I200, for_undef_188
    iter $P195, $P199
    new $P214, 'ExceptionHandler'
    set_label $P214, loop213_handler
    $P214."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P214
  loop213_test:
    unless $P195, loop213_done
    shift $P201, $P195
  loop213_redo:
    .const 'Sub' $P203 = "25_1299591517.57" 
    capture_lex $P203
    $P203($P201)
  loop213_next:
    goto loop213_test
  loop213_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P215, exception, 'type'
    eq $P215, .CONTROL_LOOP_NEXT, loop213_next
    eq $P215, .CONTROL_LOOP_REDO, loop213_redo
  loop213_done:
    pop_eh 
  for_undef_188:
.annotate 'line', 312
    find_lex $P216, "@new_list"
    find_lex $P217, "$i"
    set $I218, $P217
    find_lex $P219, "@merge_list"
    unless_null $P219, vivify_189
    $P219 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@merge_list", $P219
  vivify_189:
    set $P219[$I218], $P216
.annotate 'line', 313
    find_lex $P220, "$i"
    add $P221, $P220, 1
    store_lex "$i", $P221
.annotate 'line', 305
    .return ($P221)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block202"  :anon :subid("25_1299591517.57") :outer("24_1299591517.57")
    .param pmc param_204
.annotate 'line', 307
    .lex "$_", param_204
.annotate 'line', 308
    find_lex $P207, "$_"
    find_lex $P208, "$accepted"
    issame $I209, $P207, $P208
    unless $I209, unless_206
    new $P205, 'Integer'
    set $P205, $I209
    goto unless_206_end
  unless_206:
.annotate 'line', 309
    find_lex $P210, "@new_list"
    find_lex $P211, "$_"
    $P212 = $P210."push"($P211)
.annotate 'line', 308
    set $P205, $P212
  unless_206_end:
.annotate 'line', 307
    .return ($P205)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "new"  :subid("26_1299591517.57") :outer("15_1299591517.57")
    .param pmc param_234
    .param pmc param_235 :optional :named("name")
    .param int has_param_235 :opt_flag
.annotate 'line', 62
    .lex "self", param_234
    if has_param_235, optparam_190
    new $P236, "Undef"
    set param_235, $P236
  optparam_190:
    .lex "$name", param_235
.annotate 'line', 63
    new $P237, "Undef"
    .lex "$obj", $P237
    find_lex $P238, "self"
    repr_instance_of $P239, $P238
    store_lex "$obj", $P239
.annotate 'line', 64
    find_lex $P240, "$obj"
    find_lex $P241, "$name"
    $P240."BUILD"($P241 :named("name"))
    find_lex $P242, "$obj"
.annotate 'line', 62
    .return ($P242)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "BUILD"  :subid("27_1299591517.57") :outer("15_1299591517.57")
    .param pmc param_244
    .param pmc param_245 :optional :named("name")
    .param int has_param_245 :opt_flag
.annotate 'line', 68
    .lex "self", param_244
    if has_param_245, optparam_191
    new $P246, "Undef"
    set param_245, $P246
  optparam_191:
    .lex "$name", param_245
.annotate 'line', 69
    find_lex $P247, "$name"
    find_lex $P248, "self"
    get_global $P249, "$?CLASS"
    setattribute $P248, $P249, "$!name", $P247
.annotate 'line', 68
    .return ($P247)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "new_type"  :subid("28_1299591517.57") :outer("15_1299591517.57")
    .param pmc param_251
    .param pmc param_252 :optional :named("name")
    .param int has_param_252 :opt_flag
    .param pmc param_254 :optional :named("repr")
    .param int has_param_254 :opt_flag
.annotate 'line', 74
    .lex "self", param_251
    if has_param_252, optparam_192
    new $P253, "String"
    assign $P253, "<anon>"
    set param_252, $P253
  optparam_192:
    .lex "$name", param_252
    if has_param_254, optparam_193
    new $P255, "String"
    assign $P255, "P6opaque"
    set param_254, $P255
  optparam_193:
    .lex "$repr", param_254
.annotate 'line', 75
    new $P256, "Undef"
    .lex "$metaclass", $P256
    find_lex $P257, "self"
    find_lex $P258, "$name"
    $P259 = $P257."new"($P258 :named("name"))
    store_lex "$metaclass", $P259
.annotate 'line', 76
    find_lex $P260, "$metaclass"
    find_lex $P261, "$repr"
    set $S262, $P261
    repr_type_object_for $P263, $P260, $S262
.annotate 'line', 74
    .return ($P263)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_method"  :subid("29_1299591517.57") :outer("15_1299591517.57")
    .param pmc param_265
    .param pmc param_266
    .param pmc param_267
    .param pmc param_268
.annotate 'line', 79
    .lex "self", param_265
    .lex "$obj", param_266
    .lex "$name", param_267
    .lex "$code_obj", param_268
.annotate 'line', 80
    find_lex $P270, "$name"
    find_lex $P271, "self"
    get_global $P272, "$?CLASS"
    getattribute $P273, $P271, $P272, "%!methods"
    unless_null $P273, vivify_194
    $P273 = root_new ['parrot';'Hash']
  vivify_194:
    set $P274, $P273[$P270]
    unless_null $P274, vivify_195
    new $P274, "Undef"
  vivify_195:
    unless $P274, if_269_end
.annotate 'line', 81
    new $P275, "String"
    assign $P275, "This class already has a method named "
    find_lex $P276, "$name"
    concat $P277, $P275, $P276
    die $P277
  if_269_end:
.annotate 'line', 83
    find_lex $P278, "$code_obj"
    find_lex $P279, "$name"
    find_lex $P280, "self"
    get_global $P281, "$?CLASS"
    getattribute $P282, $P280, $P281, "%!methods"
    unless_null $P282, vivify_196
    $P282 = root_new ['parrot';'Hash']
    setattribute $P280, $P281, "%!methods", $P282
  vivify_196:
    set $P282[$P279], $P278
.annotate 'line', 79
    .return ($P278)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_multi_method"  :subid("30_1299591517.57") :outer("15_1299591517.57")
    .param pmc param_284
    .param pmc param_285
    .param pmc param_286
    .param pmc param_287
.annotate 'line', 86
    .lex "self", param_284
    .lex "$obj", param_285
    .lex "$name", param_286
    .lex "$code_obj", param_287
.annotate 'line', 92
    $P288 = root_new ['parrot';'Hash']
    .lex "%todo", $P288
.annotate 'line', 86
    find_lex $P289, "%todo"
.annotate 'line', 93
    find_lex $P290, "$name"
    find_lex $P291, "%todo"
    unless_null $P291, vivify_197
    $P291 = root_new ['parrot';'Hash']
    store_lex "%todo", $P291
  vivify_197:
    set $P291["name"], $P290
.annotate 'line', 94
    find_lex $P292, "$code_obj"
    find_lex $P293, "%todo"
    unless_null $P293, vivify_198
    $P293 = root_new ['parrot';'Hash']
    store_lex "%todo", $P293
  vivify_198:
    set $P293["code"], $P292
.annotate 'line', 95
    find_lex $P294, "%todo"
    find_lex $P295, "self"
    get_global $P296, "$?CLASS"
    getattribute $P297, $P295, $P296, "@!multi_methods_to_incorporate"
    unless_null $P297, vivify_199
    $P297 = root_new ['parrot';'ResizablePMCArray']
  vivify_199:
    set $N298, $P297
    set $I299, $N298
    find_lex $P300, "self"
    get_global $P301, "$?CLASS"
    getattribute $P302, $P300, $P301, "@!multi_methods_to_incorporate"
    unless_null $P302, vivify_200
    $P302 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P300, $P301, "@!multi_methods_to_incorporate", $P302
  vivify_200:
    set $P302[$I299], $P294
    find_lex $P303, "$code_obj"
.annotate 'line', 86
    .return ($P303)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_attribute"  :subid("31_1299591517.57") :outer("15_1299591517.57")
    .param pmc param_305
    .param pmc param_306
    .param pmc param_307
.annotate 'line', 99
    .lex "self", param_305
    .lex "$obj", param_306
    .lex "$meta_attr", param_307
.annotate 'line', 100
    new $P308, "Undef"
    .lex "$name", $P308
    find_lex $P309, "$meta_attr"
    $P310 = $P309."name"()
    store_lex "$name", $P310
.annotate 'line', 101
    find_lex $P312, "$name"
    find_lex $P313, "self"
    get_global $P314, "$?CLASS"
    getattribute $P315, $P313, $P314, "%!attributes"
    unless_null $P315, vivify_201
    $P315 = root_new ['parrot';'Hash']
  vivify_201:
    set $P316, $P315[$P312]
    unless_null $P316, vivify_202
    new $P316, "Undef"
  vivify_202:
    unless $P316, if_311_end
.annotate 'line', 102
    new $P317, "String"
    assign $P317, "This class already has an attribute named "
    find_lex $P318, "$name"
    concat $P319, $P317, $P318
    die $P319
  if_311_end:
.annotate 'line', 104
    find_lex $P320, "$meta_attr"
    find_lex $P321, "$name"
    find_lex $P322, "self"
    get_global $P323, "$?CLASS"
    getattribute $P324, $P322, $P323, "%!attributes"
    unless_null $P324, vivify_203
    $P324 = root_new ['parrot';'Hash']
    setattribute $P322, $P323, "%!attributes", $P324
  vivify_203:
    set $P324[$P321], $P320
.annotate 'line', 99
    .return ($P320)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_parent"  :subid("32_1299591517.57") :outer("15_1299591517.57")
    .param pmc param_326
    .param pmc param_327
    .param pmc param_328
.annotate 'line', 107
    .const 'Sub' $P340 = "33_1299591517.57" 
    capture_lex $P340
    .lex "self", param_326
    .lex "$obj", param_327
    .lex "$parent", param_328
.annotate 'line', 108
    find_lex $P330, "self"
    get_global $P331, "$?CLASS"
    getattribute $P332, $P330, $P331, "$!composed"
    unless_null $P332, vivify_204
    new $P332, "Undef"
  vivify_204:
    unless $P332, if_329_end
.annotate 'line', 109
    die "NQPClassHOW does not support adding parents after being composed."
  if_329_end:
.annotate 'line', 111
    find_lex $P334, "self"
    get_global $P335, "$?CLASS"
    getattribute $P336, $P334, $P335, "@!parents"
    unless_null $P336, vivify_205
    $P336 = root_new ['parrot';'ResizablePMCArray']
  vivify_205:
    defined $I337, $P336
    unless $I337, for_undef_206
    iter $P333, $P336
    new $P352, 'ExceptionHandler'
    set_label $P352, loop351_handler
    $P352."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P352
  loop351_test:
    unless $P333, loop351_done
    shift $P338, $P333
  loop351_redo:
    .const 'Sub' $P340 = "33_1299591517.57" 
    capture_lex $P340
    $P340($P338)
  loop351_next:
    goto loop351_test
  loop351_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P353, exception, 'type'
    eq $P353, .CONTROL_LOOP_NEXT, loop351_next
    eq $P353, .CONTROL_LOOP_REDO, loop351_redo
  loop351_done:
    pop_eh 
  for_undef_206:
.annotate 'line', 116
    find_lex $P354, "$parent"
    find_lex $P355, "self"
    get_global $P356, "$?CLASS"
    getattribute $P357, $P355, $P356, "@!parents"
    unless_null $P357, vivify_207
    $P357 = root_new ['parrot';'ResizablePMCArray']
  vivify_207:
    set $N358, $P357
    set $I359, $N358
    find_lex $P360, "self"
    get_global $P361, "$?CLASS"
    getattribute $P362, $P360, $P361, "@!parents"
    unless_null $P362, vivify_208
    $P362 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P360, $P361, "@!parents", $P362
  vivify_208:
    set $P362[$I359], $P354
.annotate 'line', 107
    .return ($P354)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block339"  :anon :subid("33_1299591517.57") :outer("32_1299591517.57")
    .param pmc param_341
.annotate 'line', 111
    .lex "$_", param_341
.annotate 'line', 112
    find_lex $P344, "$_"
    find_lex $P345, "$parent"
    issame $I346, $P344, $P345
    if $I346, if_343
    new $P342, 'Integer'
    set $P342, $I346
    goto if_343_end
  if_343:
.annotate 'line', 113
    new $P347, "String"
    assign $P347, "Already have "
    find_lex $P348, "$parent"
    concat $P349, $P347, $P348
    concat $P350, $P349, " as a parent class."
    die $P350
  if_343_end:
.annotate 'line', 111
    .return ($P342)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_role"  :subid("34_1299591517.57") :outer("15_1299591517.57")
    .param pmc param_364
    .param pmc param_365
    .param pmc param_366
.annotate 'line', 119
    .const 'Sub' $P374 = "35_1299591517.57" 
    capture_lex $P374
    .lex "self", param_364
    .lex "$obj", param_365
    .lex "$role", param_366
.annotate 'line', 120
    find_lex $P368, "self"
    get_global $P369, "$?CLASS"
    getattribute $P370, $P368, $P369, "@!roles"
    unless_null $P370, vivify_209
    $P370 = root_new ['parrot';'ResizablePMCArray']
  vivify_209:
    defined $I371, $P370
    unless $I371, for_undef_210
    iter $P367, $P370
    new $P386, 'ExceptionHandler'
    set_label $P386, loop385_handler
    $P386."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P386
  loop385_test:
    unless $P367, loop385_done
    shift $P372, $P367
  loop385_redo:
    .const 'Sub' $P374 = "35_1299591517.57" 
    capture_lex $P374
    $P374($P372)
  loop385_next:
    goto loop385_test
  loop385_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P387, exception, 'type'
    eq $P387, .CONTROL_LOOP_NEXT, loop385_next
    eq $P387, .CONTROL_LOOP_REDO, loop385_redo
  loop385_done:
    pop_eh 
  for_undef_210:
.annotate 'line', 125
    find_lex $P388, "$role"
    find_lex $P389, "self"
    get_global $P390, "$?CLASS"
    getattribute $P391, $P389, $P390, "@!roles"
    unless_null $P391, vivify_211
    $P391 = root_new ['parrot';'ResizablePMCArray']
  vivify_211:
    set $N392, $P391
    set $I393, $N392
    find_lex $P394, "self"
    get_global $P395, "$?CLASS"
    getattribute $P396, $P394, $P395, "@!roles"
    unless_null $P396, vivify_212
    $P396 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P394, $P395, "@!roles", $P396
  vivify_212:
    set $P396[$I393], $P388
.annotate 'line', 119
    .return ($P388)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block373"  :anon :subid("35_1299591517.57") :outer("34_1299591517.57")
    .param pmc param_375
.annotate 'line', 120
    .lex "$_", param_375
.annotate 'line', 121
    find_lex $P378, "$_"
    find_lex $P379, "$role"
    issame $I380, $P378, $P379
    if $I380, if_377
    new $P376, 'Integer'
    set $P376, $I380
    goto if_377_end
  if_377:
.annotate 'line', 122
    new $P381, "String"
    assign $P381, "The role "
    find_lex $P382, "$role"
    concat $P383, $P381, $P382
    concat $P384, $P383, " has already been added."
    die $P384
  if_377_end:
.annotate 'line', 120
    .return ($P376)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_parrot_vtable_mapping"  :subid("36_1299591517.57") :outer("15_1299591517.57")
    .param pmc param_398
    .param pmc param_399
    .param pmc param_400
    .param pmc param_401
.annotate 'line', 128
    .lex "self", param_398
    .lex "$obj", param_399
    .lex "$name", param_400
    .lex "$meth", param_401
.annotate 'line', 129
    find_lex $P403, "$name"
    find_lex $P404, "self"
    get_global $P405, "$?CLASS"
    getattribute $P406, $P404, $P405, "%!parrot_vtable_mapping"
    unless_null $P406, vivify_213
    $P406 = root_new ['parrot';'Hash']
  vivify_213:
    set $P407, $P406[$P403]
    unless_null $P407, vivify_214
    new $P407, "Undef"
  vivify_214:
    defined $I408, $P407
    unless $I408, if_402_end
.annotate 'line', 130
    new $P409, "String"
    assign $P409, "Class '"
    find_lex $P410, "self"
    get_global $P411, "$?CLASS"
    getattribute $P412, $P410, $P411, "$!name"
    unless_null $P412, vivify_215
    new $P412, "Undef"
  vivify_215:
    concat $P413, $P409, $P412
    concat $P414, $P413, "' already has a Parrot v-table override for '"
    find_lex $P415, "$name"
    concat $P416, $P414, $P415
.annotate 'line', 131
    concat $P417, $P416, "'"
.annotate 'line', 132
    die $P417
  if_402_end:
.annotate 'line', 134
    find_lex $P418, "$meth"
    find_lex $P419, "$name"
    find_lex $P420, "self"
    get_global $P421, "$?CLASS"
    getattribute $P422, $P420, $P421, "%!parrot_vtable_mapping"
    unless_null $P422, vivify_216
    $P422 = root_new ['parrot';'Hash']
    setattribute $P420, $P421, "%!parrot_vtable_mapping", $P422
  vivify_216:
    set $P422[$P419], $P418
.annotate 'line', 128
    .return ($P418)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "compose"  :subid("37_1299591517.57") :outer("15_1299591517.57")
    .param pmc param_424
    .param pmc param_425
.annotate 'line', 137
    .const 'Sub' $P512 = "40_1299591517.57" 
    capture_lex $P512
    .const 'Sub' $P431 = "38_1299591517.57" 
    capture_lex $P431
    .lex "self", param_424
    .lex "$obj", param_425
.annotate 'line', 141
    find_lex $P427, "self"
    get_global $P428, "$?CLASS"
    getattribute $P429, $P427, $P428, "@!roles"
    unless_null $P429, vivify_217
    $P429 = root_new ['parrot';'ResizablePMCArray']
  vivify_217:
    unless $P429, if_426_end
    .const 'Sub' $P431 = "38_1299591517.57" 
    capture_lex $P431
    $P431()
  if_426_end:
.annotate 'line', 154
    find_lex $P479, "self"
    get_global $P480, "$?CLASS"
    getattribute $P481, $P479, $P480, "@!parents"
    unless_null $P481, vivify_224
    $P481 = root_new ['parrot';'ResizablePMCArray']
  vivify_224:
    set $N482, $P481
    iseq $I483, $N482, 0.0
    if $I483, if_478
    new $P477, 'Integer'
    set $P477, $I483
    goto if_478_end
  if_478:
    find_lex $P484, "self"
    get_global $P485, "$?CLASS"
    getattribute $P486, $P484, $P485, "$!name"
    unless_null $P486, vivify_225
    new $P486, "Undef"
  vivify_225:
    set $S487, $P486
    isne $I488, $S487, "NQPMu2"
    new $P477, 'Integer'
    set $P477, $I488
  if_478_end:
    unless $P477, if_476_end
.annotate 'line', 155
    find_lex $P489, "self"
    find_lex $P490, "$obj"
    get_hll_global $P491, "NQPMu2"
    $P489."add_parent"($P490, $P491)
  if_476_end:
.annotate 'line', 160
    find_lex $P493, "self"
    get_global $P494, "$?CLASS"
    getattribute $P495, $P493, $P494, "$!composed"
    unless_null $P495, vivify_226
    new $P495, "Undef"
  vivify_226:
    if $P495, unless_492_end
.annotate 'line', 161
    find_lex $P496, "$obj"
    $P497 = "compute_c3_mro"($P496)
    find_lex $P498, "self"
    get_global $P499, "$?CLASS"
    setattribute $P498, $P499, "@!mro", $P497
.annotate 'line', 162
    new $P500, "Integer"
    assign $P500, 1
    find_lex $P501, "self"
    get_global $P502, "$?CLASS"
    setattribute $P501, $P502, "$!composed", $P500
  unless_492_end:
.annotate 'line', 166
    find_lex $P503, "self"
    find_lex $P504, "$obj"
    $P503."incorporate_multi_candidates"($P504)
.annotate 'line', 169
    find_lex $P506, "self"
    find_lex $P507, "$obj"
    $P508 = $P506."attributes"($P507, "0" :named("local"))
    defined $I509, $P508
    unless $I509, for_undef_227
    iter $P505, $P508
    new $P518, 'ExceptionHandler'
    set_label $P518, loop517_handler
    $P518."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P518
  loop517_test:
    unless $P505, loop517_done
    shift $P510, $P505
  loop517_redo:
    .const 'Sub' $P512 = "40_1299591517.57" 
    capture_lex $P512
    $P512($P510)
  loop517_next:
    goto loop517_test
  loop517_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P519, exception, 'type'
    eq $P519, .CONTROL_LOOP_NEXT, loop517_next
    eq $P519, .CONTROL_LOOP_REDO, loop517_redo
  loop517_done:
    pop_eh 
  for_undef_227:
.annotate 'line', 172
    find_lex $P520, "self"
    find_lex $P521, "$obj"
    $P520."publish_type_cache"($P521)
.annotate 'line', 173
    find_lex $P522, "self"
    find_lex $P523, "$obj"
    $P522."publish_method_cache"($P523)
.annotate 'line', 176
    find_lex $P524, "self"
    find_lex $P525, "$obj"
    $P524."publish_parrot_vtable_mapping"($P525)
    find_lex $P526, "$obj"
.annotate 'line', 137
    .return ($P526)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block430"  :anon :subid("38_1299591517.57") :outer("37_1299591517.57")
.annotate 'line', 141
    .const 'Sub' $P441 = "39_1299591517.57" 
    capture_lex $P441
.annotate 'line', 142
    $P432 = root_new ['parrot';'ResizablePMCArray']
    .lex "@instantiated_roles", $P432
.annotate 'line', 141
    find_lex $P433, "@instantiated_roles"
.annotate 'line', 143
    find_lex $P435, "self"
    get_global $P436, "$?CLASS"
    getattribute $P437, $P435, $P436, "@!roles"
    unless_null $P437, vivify_218
    $P437 = root_new ['parrot';'ResizablePMCArray']
  vivify_218:
    defined $I438, $P437
    unless $I438, for_undef_219
    iter $P434, $P437
    new $P470, 'ExceptionHandler'
    set_label $P470, loop469_handler
    $P470."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P470
  loop469_test:
    unless $P434, loop469_done
    shift $P439, $P434
  loop469_redo:
    .const 'Sub' $P441 = "39_1299591517.57" 
    capture_lex $P441
    $P441($P439)
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
  for_undef_219:
.annotate 'line', 149
    get_hll_global $P472, "RoleToClassApplier"
    find_lex $P473, "$obj"
    find_lex $P474, "@instantiated_roles"
    $P475 = $P472."apply"($P473, $P474)
.annotate 'line', 141
    .return ($P475)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block440"  :anon :subid("39_1299591517.57") :outer("38_1299591517.57")
    .param pmc param_443
.annotate 'line', 144
    new $P442, "Undef"
    .lex "$ins", $P442
    .lex "$_", param_443
    find_lex $P444, "$_"
    get_how $P445, $P444
    find_lex $P446, "$_"
    find_lex $P447, "$obj"
    $P448 = $P445."instantiate"($P446, $P447)
    store_lex "$ins", $P448
.annotate 'line', 145
    find_lex $P449, "@instantiated_roles"
    find_lex $P450, "$ins"
    $P449."push"($P450)
.annotate 'line', 146
    find_lex $P451, "$_"
    find_lex $P452, "self"
    get_global $P453, "$?CLASS"
    getattribute $P454, $P452, $P453, "@!done"
    unless_null $P454, vivify_220
    $P454 = root_new ['parrot';'ResizablePMCArray']
  vivify_220:
    set $N455, $P454
    set $I456, $N455
    find_lex $P457, "self"
    get_global $P458, "$?CLASS"
    getattribute $P459, $P457, $P458, "@!done"
    unless_null $P459, vivify_221
    $P459 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P457, $P458, "@!done", $P459
  vivify_221:
    set $P459[$I456], $P451
.annotate 'line', 147
    find_lex $P460, "$ins"
    find_lex $P461, "self"
    get_global $P462, "$?CLASS"
    getattribute $P463, $P461, $P462, "@!done"
    unless_null $P463, vivify_222
    $P463 = root_new ['parrot';'ResizablePMCArray']
  vivify_222:
    set $N464, $P463
    set $I465, $N464
    find_lex $P466, "self"
    get_global $P467, "$?CLASS"
    getattribute $P468, $P466, $P467, "@!done"
    unless_null $P468, vivify_223
    $P468 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P466, $P467, "@!done", $P468
  vivify_223:
    set $P468[$I465], $P460
.annotate 'line', 143
    .return ($P460)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block511"  :anon :subid("40_1299591517.57") :outer("37_1299591517.57")
    .param pmc param_513
.annotate 'line', 169
    .lex "$_", param_513
    find_lex $P514, "$_"
    find_lex $P515, "$obj"
    $P516 = $P514."compose"($P515)
    .return ($P516)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "incorporate_multi_candidates"  :subid("41_1299591517.57") :outer("15_1299591517.57")
    .param pmc param_528
    .param pmc param_529
.annotate 'line', 181
    .const 'Sub' $P544 = "42_1299591517.57" 
    capture_lex $P544
    .lex "self", param_528
    .lex "$obj", param_529
.annotate 'line', 182
    new $P530, "Undef"
    .lex "$num_todo", $P530
.annotate 'line', 183
    new $P531, "Undef"
    .lex "$i", $P531
.annotate 'line', 182
    find_lex $P532, "self"
    get_global $P533, "$?CLASS"
    getattribute $P534, $P532, $P533, "@!multi_methods_to_incorporate"
    unless_null $P534, vivify_228
    $P534 = root_new ['parrot';'ResizablePMCArray']
  vivify_228:
    set $N535, $P534
    new $P536, 'Float'
    set $P536, $N535
    store_lex "$num_todo", $P536
.annotate 'line', 183
    new $P537, "Integer"
    assign $P537, 0
    store_lex "$i", $P537
.annotate 'line', 184
    new $P653, 'ExceptionHandler'
    set_label $P653, loop652_handler
    $P653."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P653
  loop652_test:
    find_lex $P538, "$i"
    set $N539, $P538
    find_lex $P540, "$num_todo"
    set $N541, $P540
    isne $I542, $N539, $N541
    unless $I542, loop652_done
  loop652_redo:
    .const 'Sub' $P544 = "42_1299591517.57" 
    capture_lex $P544
    $P544()
  loop652_next:
    goto loop652_test
  loop652_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P654, exception, 'type'
    eq $P654, .CONTROL_LOOP_NEXT, loop652_next
    eq $P654, .CONTROL_LOOP_REDO, loop652_redo
  loop652_done:
    pop_eh 
.annotate 'line', 181
    .return ($I542)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block543"  :anon :subid("42_1299591517.57") :outer("41_1299591517.57")
.annotate 'line', 184
    .const 'Sub' $P580 = "43_1299591517.57" 
    capture_lex $P580
.annotate 'line', 186
    new $P545, "Undef"
    .lex "$name", $P545
.annotate 'line', 187
    new $P546, "Undef"
    .lex "$code", $P546
.annotate 'line', 191
    new $P547, "Undef"
    .lex "$dispatcher", $P547
.annotate 'line', 186
    find_lex $P548, "$i"
    set $I549, $P548
    find_lex $P550, "self"
    get_global $P551, "$?CLASS"
    getattribute $P552, $P550, $P551, "@!multi_methods_to_incorporate"
    unless_null $P552, vivify_229
    $P552 = root_new ['parrot';'ResizablePMCArray']
  vivify_229:
    set $P553, $P552[$I549]
    unless_null $P553, vivify_230
    $P553 = root_new ['parrot';'Hash']
  vivify_230:
    set $P554, $P553["name"]
    unless_null $P554, vivify_231
    new $P554, "Undef"
  vivify_231:
    store_lex "$name", $P554
.annotate 'line', 187
    find_lex $P555, "$i"
    set $I556, $P555
    find_lex $P557, "self"
    get_global $P558, "$?CLASS"
    getattribute $P559, $P557, $P558, "@!multi_methods_to_incorporate"
    unless_null $P559, vivify_232
    $P559 = root_new ['parrot';'ResizablePMCArray']
  vivify_232:
    set $P560, $P559[$I556]
    unless_null $P560, vivify_233
    $P560 = root_new ['parrot';'Hash']
  vivify_233:
    set $P561, $P560["code"]
    unless_null $P561, vivify_234
    new $P561, "Undef"
  vivify_234:
    store_lex "$code", $P561
.annotate 'line', 191
    find_lex $P562, "$name"
    find_lex $P563, "self"
    get_global $P564, "$?CLASS"
    getattribute $P565, $P563, $P564, "%!methods"
    unless_null $P565, vivify_235
    $P565 = root_new ['parrot';'Hash']
  vivify_235:
    set $P566, $P565[$P562]
    unless_null $P566, vivify_236
    new $P566, "Undef"
  vivify_236:
    store_lex "$dispatcher", $P566
.annotate 'line', 192
    find_lex $P568, "$dispatcher"
    defined $I569, $P568
    if $I569, if_567
.annotate 'line', 202
    .const 'Sub' $P580 = "43_1299591517.57" 
    capture_lex $P580
    $P580()
    goto if_567_end
  if_567:
.annotate 'line', 195
    find_lex $P571, "$dispatcher"
    is_dispatcher $I572, $P571
    if $I572, if_570
.annotate 'line', 199
    new $P575, 'String'
    set $P575, "Cannot have a multi candidate for "
    find_lex $P576, "$name"
    concat $P577, $P575, $P576
    concat $P578, $P577, " when an only method is also in the class"
    die $P578
.annotate 'line', 198
    goto if_570_end
  if_570:
.annotate 'line', 196
    find_lex $P573, "$dispatcher"
    find_lex $P574, "$code"
    push_dispatchee $P573, $P574
  if_570_end:
  if_567_end:
.annotate 'line', 230
    find_lex $P650, "$i"
    add $P651, $P650, 1
    store_lex "$i", $P651
.annotate 'line', 184
    .return ($P651)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block579"  :anon :subid("43_1299591517.57") :outer("42_1299591517.57")
.annotate 'line', 202
    .const 'Sub' $P597 = "44_1299591517.57" 
    capture_lex $P597
.annotate 'line', 204
    new $P581, "Undef"
    .lex "$j", $P581
.annotate 'line', 205
    new $P582, "Undef"
    .lex "$found", $P582
.annotate 'line', 204
    new $P583, "Integer"
    assign $P583, 1
    store_lex "$j", $P583
.annotate 'line', 205
    new $P584, "Integer"
    assign $P584, 0
    store_lex "$found", $P584
.annotate 'line', 206
    new $P641, 'ExceptionHandler'
    set_label $P641, loop640_handler
    $P641."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P641
  loop640_test:
    find_lex $P587, "$j"
    set $N588, $P587
    find_lex $P589, "self"
    get_global $P590, "$?CLASS"
    getattribute $P591, $P589, $P590, "@!mro"
    unless_null $P591, vivify_237
    $P591 = root_new ['parrot';'ResizablePMCArray']
  vivify_237:
    set $N592, $P591
    isne $I593, $N588, $N592
    if $I593, if_586
    new $P585, 'Integer'
    set $P585, $I593
    goto if_586_end
  if_586:
    find_lex $P594, "$found"
    isfalse $I595, $P594
    new $P585, 'Integer'
    set $P585, $I595
  if_586_end:
    unless $P585, loop640_done
  loop640_redo:
    .const 'Sub' $P597 = "44_1299591517.57" 
    capture_lex $P597
    $P597()
  loop640_next:
    goto loop640_test
  loop640_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P642, exception, 'type'
    eq $P642, .CONTROL_LOOP_NEXT, loop640_next
    eq $P642, .CONTROL_LOOP_REDO, loop640_redo
  loop640_done:
    pop_eh 
.annotate 'line', 226
    find_lex $P645, "$found"
    unless $P645, unless_644
    set $P643, $P645
    goto unless_644_end
  unless_644:
.annotate 'line', 227
    new $P646, 'String'
    set $P646, "Could not find a proto for multi "
    find_lex $P647, "$name"
    concat $P648, $P646, $P647
    concat $P649, $P648, ", and proto generation is NYI"
    die $P649
  unless_644_end:
.annotate 'line', 202
    .return ($P643)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block596"  :anon :subid("44_1299591517.57") :outer("43_1299591517.57")
.annotate 'line', 206
    .const 'Sub' $P621 = "45_1299591517.57" 
    capture_lex $P621
.annotate 'line', 207
    new $P598, "Undef"
    .lex "$parent", $P598
.annotate 'line', 208
    $P599 = root_new ['parrot';'Hash']
    .lex "%meths", $P599
.annotate 'line', 209
    new $P600, "Undef"
    .lex "$dispatcher", $P600
.annotate 'line', 207
    find_lex $P601, "$j"
    set $I602, $P601
    find_lex $P603, "self"
    get_global $P604, "$?CLASS"
    getattribute $P605, $P603, $P604, "@!mro"
    unless_null $P605, vivify_238
    $P605 = root_new ['parrot';'ResizablePMCArray']
  vivify_238:
    set $P606, $P605[$I602]
    unless_null $P606, vivify_239
    new $P606, "Undef"
  vivify_239:
    store_lex "$parent", $P606
.annotate 'line', 208
    find_lex $P607, "$parent"
    get_how $P608, $P607
    find_lex $P609, "$parent"
    $P610 = $P608."method_table"($P609)
    store_lex "%meths", $P610
.annotate 'line', 209
    find_lex $P611, "$name"
    find_lex $P612, "%meths"
    unless_null $P612, vivify_240
    $P612 = root_new ['parrot';'Hash']
  vivify_240:
    set $P613, $P612[$P611]
    unless_null $P613, vivify_241
    new $P613, "Undef"
  vivify_241:
    store_lex "$dispatcher", $P613
.annotate 'line', 210
    find_lex $P615, "$dispatcher"
    defined $I616, $P615
    unless $I616, if_614_end
.annotate 'line', 213
    find_lex $P618, "$dispatcher"
    is_dispatcher $I619, $P618
    if $I619, if_617
.annotate 'line', 221
    new $P634, 'String'
    set $P634, "Could not find a proto for multi "
    find_lex $P635, "$name"
    concat $P636, $P634, $P635
    concat $P637, $P636, " (it may exist, but an only is hiding it if so)"
    die $P637
.annotate 'line', 220
    goto if_617_end
  if_617:
.annotate 'line', 213
    .const 'Sub' $P621 = "45_1299591517.57" 
    capture_lex $P621
    $P621()
  if_617_end:
  if_614_end:
.annotate 'line', 224
    find_lex $P638, "$j"
    add $P639, $P638, 1
    store_lex "$j", $P639
.annotate 'line', 206
    .return ($P639)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block620"  :anon :subid("45_1299591517.57") :outer("44_1299591517.57")
.annotate 'line', 215
    $P622 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new_dispatchees", $P622
.annotate 'line', 213
    find_lex $P623, "@new_dispatchees"
.annotate 'line', 216
    find_lex $P624, "$code"
    find_lex $P625, "@new_dispatchees"
    unless_null $P625, vivify_242
    $P625 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@new_dispatchees", $P625
  vivify_242:
    set $P625[0], $P624
.annotate 'line', 217
    find_lex $P626, "$dispatcher"
    find_lex $P627, "@new_dispatchees"
    create_dispatch_and_add_candidates $P628, $P626, $P627
    find_lex $P629, "$name"
    find_lex $P630, "self"
    get_global $P631, "$?CLASS"
    getattribute $P632, $P630, $P631, "%!methods"
    unless_null $P632, vivify_243
    $P632 = root_new ['parrot';'Hash']
    setattribute $P630, $P631, "%!methods", $P632
  vivify_243:
    set $P632[$P629], $P628
.annotate 'line', 218
    new $P633, "Integer"
    assign $P633, 1
    store_lex "$found", $P633
.annotate 'line', 213
    .return ($P633)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_type_cache"  :subid("46_1299591517.57") :outer("15_1299591517.57")
    .param pmc param_658
    .param pmc param_659
.annotate 'line', 323
    .const 'Sub' $P684 = "48_1299591517.57" 
    capture_lex $P684
    .const 'Sub' $P669 = "47_1299591517.57" 
    capture_lex $P669
    .lex "self", param_658
    .lex "$obj", param_659
.annotate 'line', 324
    $P660 = root_new ['parrot';'ResizablePMCArray']
    .lex "@tc", $P660
.annotate 'line', 323
    find_lex $P661, "@tc"
.annotate 'line', 325
    find_lex $P663, "self"
    get_global $P664, "$?CLASS"
    getattribute $P665, $P663, $P664, "@!mro"
    unless_null $P665, vivify_244
    $P665 = root_new ['parrot';'ResizablePMCArray']
  vivify_244:
    defined $I666, $P665
    unless $I666, for_undef_245
    iter $P662, $P665
    new $P675, 'ExceptionHandler'
    set_label $P675, loop674_handler
    $P675."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P675
  loop674_test:
    unless $P662, loop674_done
    shift $P667, $P662
  loop674_redo:
    .const 'Sub' $P669 = "47_1299591517.57" 
    capture_lex $P669
    $P669($P667)
  loop674_next:
    goto loop674_test
  loop674_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P676, exception, 'type'
    eq $P676, .CONTROL_LOOP_NEXT, loop674_next
    eq $P676, .CONTROL_LOOP_REDO, loop674_redo
  loop674_done:
    pop_eh 
  for_undef_245:
.annotate 'line', 326
    find_lex $P678, "self"
    get_global $P679, "$?CLASS"
    getattribute $P680, $P678, $P679, "@!done"
    unless_null $P680, vivify_246
    $P680 = root_new ['parrot';'ResizablePMCArray']
  vivify_246:
    defined $I681, $P680
    unless $I681, for_undef_247
    iter $P677, $P680
    new $P690, 'ExceptionHandler'
    set_label $P690, loop689_handler
    $P690."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P690
  loop689_test:
    unless $P677, loop689_done
    shift $P682, $P677
  loop689_redo:
    .const 'Sub' $P684 = "48_1299591517.57" 
    capture_lex $P684
    $P684($P682)
  loop689_next:
    goto loop689_test
  loop689_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P691, exception, 'type'
    eq $P691, .CONTROL_LOOP_NEXT, loop689_next
    eq $P691, .CONTROL_LOOP_REDO, loop689_redo
  loop689_done:
    pop_eh 
  for_undef_247:
.annotate 'line', 327
    find_lex $P692, "$obj"
    find_lex $P693, "@tc"
    publish_type_check_cache $P692, $P693
.annotate 'line', 323
    .return ()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block668"  :anon :subid("47_1299591517.57") :outer("46_1299591517.57")
    .param pmc param_670
.annotate 'line', 325
    .lex "$_", param_670
    find_lex $P671, "@tc"
    find_lex $P672, "$_"
    $P673 = $P671."push"($P672)
    .return ($P673)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block683"  :anon :subid("48_1299591517.57") :outer("46_1299591517.57")
    .param pmc param_685
.annotate 'line', 326
    .lex "$_", param_685
    find_lex $P686, "@tc"
    find_lex $P687, "$_"
    $P688 = $P686."push"($P687)
    .return ($P688)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_method_cache"  :subid("49_1299591517.57") :outer("15_1299591517.57")
    .param pmc param_695
    .param pmc param_696
.annotate 'line', 330
    .const 'Sub' $P706 = "50_1299591517.57" 
    capture_lex $P706
    .lex "self", param_695
    .lex "$obj", param_696
.annotate 'line', 333
    $P697 = root_new ['parrot';'Hash']
    .lex "%cache", $P697
.annotate 'line', 330
    find_lex $P698, "%cache"
.annotate 'line', 334
    find_lex $P700, "self"
    get_global $P701, "$?CLASS"
    getattribute $P702, $P700, $P701, "@!mro"
    unless_null $P702, vivify_248
    $P702 = root_new ['parrot';'ResizablePMCArray']
  vivify_248:
    defined $I703, $P702
    unless $I703, for_undef_249
    iter $P699, $P702
    new $P735, 'ExceptionHandler'
    set_label $P735, loop734_handler
    $P735."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P735
  loop734_test:
    unless $P699, loop734_done
    shift $P704, $P699
  loop734_redo:
    .const 'Sub' $P706 = "50_1299591517.57" 
    capture_lex $P706
    $P706($P704)
  loop734_next:
    goto loop734_test
  loop734_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P736, exception, 'type'
    eq $P736, .CONTROL_LOOP_NEXT, loop734_next
    eq $P736, .CONTROL_LOOP_REDO, loop734_redo
  loop734_done:
    pop_eh 
  for_undef_249:
.annotate 'line', 342
    find_lex $P737, "$obj"
    find_lex $P738, "%cache"
    publish_method_cache $P737, $P738
.annotate 'line', 330
    .return ()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block705"  :anon :subid("50_1299591517.57") :outer("49_1299591517.57")
    .param pmc param_708
.annotate 'line', 334
    .const 'Sub' $P718 = "51_1299591517.57" 
    capture_lex $P718
.annotate 'line', 335
    $P707 = root_new ['parrot';'Hash']
    .lex "%methods", $P707
    .lex "$_", param_708
    find_lex $P709, "$_"
    get_how $P710, $P709
    find_lex $P711, "$_"
    $P712 = $P710."method_table"($P711)
    store_lex "%methods", $P712
.annotate 'line', 336
    find_lex $P714, "%methods"
    defined $I715, $P714
    unless $I715, for_undef_250
    iter $P713, $P714
    new $P732, 'ExceptionHandler'
    set_label $P732, loop731_handler
    $P732."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P732
  loop731_test:
    unless $P713, loop731_done
    shift $P716, $P713
  loop731_redo:
    .const 'Sub' $P718 = "51_1299591517.57" 
    capture_lex $P718
    $P718($P716)
  loop731_next:
    goto loop731_test
  loop731_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P733, exception, 'type'
    eq $P733, .CONTROL_LOOP_NEXT, loop731_next
    eq $P733, .CONTROL_LOOP_REDO, loop731_redo
  loop731_done:
    pop_eh 
  for_undef_250:
.annotate 'line', 334
    .return ($P713)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block717"  :anon :subid("51_1299591517.57") :outer("50_1299591517.57")
    .param pmc param_719
.annotate 'line', 336
    .lex "$_", param_719
.annotate 'line', 337
    find_lex $P722, "$_"
    $P723 = $P722."key"()
    find_lex $P724, "%cache"
    unless_null $P724, vivify_251
    $P724 = root_new ['parrot';'Hash']
  vivify_251:
    set $P725, $P724[$P723]
    unless_null $P725, vivify_252
    new $P725, "Undef"
  vivify_252:
    unless $P725, unless_721
    set $P720, $P725
    goto unless_721_end
  unless_721:
.annotate 'line', 338
    find_lex $P726, "$_"
    $P727 = $P726."value"()
    find_lex $P728, "$_"
    $P729 = $P728."key"()
    find_lex $P730, "%cache"
    unless_null $P730, vivify_253
    $P730 = root_new ['parrot';'Hash']
    store_lex "%cache", $P730
  vivify_253:
    set $P730[$P729], $P727
.annotate 'line', 337
    set $P720, $P727
  unless_721_end:
.annotate 'line', 336
    .return ($P720)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_parrot_vtable_mapping"  :subid("52_1299591517.57") :outer("15_1299591517.57")
    .param pmc param_740
    .param pmc param_741
.annotate 'line', 345
    .const 'Sub' $P751 = "53_1299591517.57" 
    capture_lex $P751
    .lex "self", param_740
    .lex "$obj", param_741
.annotate 'line', 346
    $P742 = root_new ['parrot';'Hash']
    .lex "%mapping", $P742
.annotate 'line', 345
    find_lex $P743, "%mapping"
.annotate 'line', 347
    find_lex $P745, "self"
    get_global $P746, "$?CLASS"
    getattribute $P747, $P745, $P746, "@!mro"
    unless_null $P747, vivify_254
    $P747 = root_new ['parrot';'ResizablePMCArray']
  vivify_254:
    defined $I748, $P747
    unless $I748, for_undef_255
    iter $P744, $P747
    new $P780, 'ExceptionHandler'
    set_label $P780, loop779_handler
    $P780."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P780
  loop779_test:
    unless $P744, loop779_done
    shift $P749, $P744
  loop779_redo:
    .const 'Sub' $P751 = "53_1299591517.57" 
    capture_lex $P751
    $P751($P749)
  loop779_next:
    goto loop779_test
  loop779_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P781, exception, 'type'
    eq $P781, .CONTROL_LOOP_NEXT, loop779_next
    eq $P781, .CONTROL_LOOP_REDO, loop779_redo
  loop779_done:
    pop_eh 
  for_undef_255:
.annotate 'line', 355
    find_lex $P784, "%mapping"
    set $N785, $P784
    if $N785, if_783
    new $P782, 'Float'
    set $P782, $N785
    goto if_783_end
  if_783:
.annotate 'line', 356
    find_lex $P786, "$obj"
    find_lex $P787, "%mapping"
    stable_publish_vtable_mapping $P786, $P787
  if_783_end:
.annotate 'line', 345
    .return ($P782)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block750"  :anon :subid("53_1299591517.57") :outer("52_1299591517.57")
    .param pmc param_753
.annotate 'line', 347
    .const 'Sub' $P763 = "54_1299591517.57" 
    capture_lex $P763
.annotate 'line', 348
    $P752 = root_new ['parrot';'Hash']
    .lex "%map", $P752
    .lex "$_", param_753
    find_lex $P754, "$_"
    get_how $P755, $P754
    find_lex $P756, "$_"
    $P757 = $P755."parrot_vtable_mappings"($P756, 1 :named("local"))
    store_lex "%map", $P757
.annotate 'line', 349
    find_lex $P759, "%map"
    defined $I760, $P759
    unless $I760, for_undef_256
    iter $P758, $P759
    new $P777, 'ExceptionHandler'
    set_label $P777, loop776_handler
    $P777."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P777
  loop776_test:
    unless $P758, loop776_done
    shift $P761, $P758
  loop776_redo:
    .const 'Sub' $P763 = "54_1299591517.57" 
    capture_lex $P763
    $P763($P761)
  loop776_next:
    goto loop776_test
  loop776_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P778, exception, 'type'
    eq $P778, .CONTROL_LOOP_NEXT, loop776_next
    eq $P778, .CONTROL_LOOP_REDO, loop776_redo
  loop776_done:
    pop_eh 
  for_undef_256:
.annotate 'line', 347
    .return ($P758)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block762"  :anon :subid("54_1299591517.57") :outer("53_1299591517.57")
    .param pmc param_764
.annotate 'line', 349
    .lex "$_", param_764
.annotate 'line', 350
    find_lex $P767, "$_"
    $P768 = $P767."key"()
    find_lex $P769, "%mapping"
    unless_null $P769, vivify_257
    $P769 = root_new ['parrot';'Hash']
  vivify_257:
    set $P770, $P769[$P768]
    unless_null $P770, vivify_258
    new $P770, "Undef"
  vivify_258:
    unless $P770, unless_766
    set $P765, $P770
    goto unless_766_end
  unless_766:
.annotate 'line', 351
    find_lex $P771, "$_"
    $P772 = $P771."value"()
    find_lex $P773, "$_"
    $P774 = $P773."key"()
    find_lex $P775, "%mapping"
    unless_null $P775, vivify_259
    $P775 = root_new ['parrot';'Hash']
    store_lex "%mapping", $P775
  vivify_259:
    set $P775[$P774], $P772
.annotate 'line', 350
    set $P765, $P772
  unless_766_end:
.annotate 'line', 349
    .return ($P765)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parents"  :subid("55_1299591517.57") :outer("15_1299591517.57")
    .param pmc param_789
    .param pmc param_790
    .param pmc param_791 :optional :named("local")
    .param int has_param_791 :opt_flag
.annotate 'line', 364
    .lex "self", param_789
    .lex "$obj", param_790
    if has_param_791, optparam_260
    new $P792, "Undef"
    set param_791, $P792
  optparam_260:
    .lex "$local", param_791
.annotate 'line', 365
    find_lex $P795, "$local"
    if $P795, if_794
    find_lex $P799, "self"
    get_global $P800, "$?CLASS"
    getattribute $P801, $P799, $P800, "@!mro"
    unless_null $P801, vivify_261
    $P801 = root_new ['parrot';'ResizablePMCArray']
  vivify_261:
    set $P793, $P801
    goto if_794_end
  if_794:
    find_lex $P796, "self"
    get_global $P797, "$?CLASS"
    getattribute $P798, $P796, $P797, "@!parents"
    unless_null $P798, vivify_262
    $P798 = root_new ['parrot';'ResizablePMCArray']
  vivify_262:
    set $P793, $P798
  if_794_end:
.annotate 'line', 364
    .return ($P793)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "roles"  :subid("56_1299591517.57") :outer("15_1299591517.57")
    .param pmc param_803
    .param pmc param_804
    .param pmc param_805 :named("local")
.annotate 'line', 368
    .lex "self", param_803
    .lex "$obj", param_804
    .lex "$local", param_805
    find_lex $P806, "self"
    get_global $P807, "$?CLASS"
    getattribute $P808, $P806, $P807, "@!roles"
    unless_null $P808, vivify_263
    $P808 = root_new ['parrot';'ResizablePMCArray']
  vivify_263:
    .return ($P808)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "methods"  :subid("57_1299591517.57") :outer("15_1299591517.57")
    .param pmc param_810
    .param pmc param_811
    .param pmc param_812 :named("local")
.annotate 'line', 372
    .const 'Sub' $P822 = "58_1299591517.57" 
    capture_lex $P822
    .lex "self", param_810
    .lex "$obj", param_811
    .lex "$local", param_812
.annotate 'line', 373
    $P813 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meths", $P813
.annotate 'line', 372
    find_lex $P814, "@meths"
.annotate 'line', 374
    find_lex $P816, "self"
    get_global $P817, "$?CLASS"
    getattribute $P818, $P816, $P817, "%!methods"
    unless_null $P818, vivify_264
    $P818 = root_new ['parrot';'Hash']
  vivify_264:
    defined $I819, $P818
    unless $I819, for_undef_265
    iter $P815, $P818
    new $P829, 'ExceptionHandler'
    set_label $P829, loop828_handler
    $P829."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P829
  loop828_test:
    unless $P815, loop828_done
    shift $P820, $P815
  loop828_redo:
    .const 'Sub' $P822 = "58_1299591517.57" 
    capture_lex $P822
    $P822($P820)
  loop828_next:
    goto loop828_test
  loop828_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P830, exception, 'type'
    eq $P830, .CONTROL_LOOP_NEXT, loop828_next
    eq $P830, .CONTROL_LOOP_REDO, loop828_redo
  loop828_done:
    pop_eh 
  for_undef_265:
    find_lex $P831, "@meths"
.annotate 'line', 372
    .return ($P831)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block821"  :anon :subid("58_1299591517.57") :outer("57_1299591517.57")
    .param pmc param_823
.annotate 'line', 374
    .lex "$_", param_823
.annotate 'line', 375
    find_lex $P824, "@meths"
    find_lex $P825, "$_"
    $P826 = $P825."value"()
    $P827 = $P824."push"($P826)
.annotate 'line', 374
    .return ($P827)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "method_table"  :subid("59_1299591517.57") :outer("15_1299591517.57")
    .param pmc param_833
    .param pmc param_834
.annotate 'line', 380
    .lex "self", param_833
    .lex "$obj", param_834
    find_lex $P835, "self"
    get_global $P836, "$?CLASS"
    getattribute $P837, $P835, $P836, "%!methods"
    unless_null $P837, vivify_266
    $P837 = root_new ['parrot';'Hash']
  vivify_266:
    .return ($P837)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "name"  :subid("60_1299591517.57") :outer("15_1299591517.57")
    .param pmc param_839
    .param pmc param_840
.annotate 'line', 384
    .lex "self", param_839
    .lex "$obj", param_840
    find_lex $P841, "self"
    get_global $P842, "$?CLASS"
    getattribute $P843, $P841, $P842, "$!name"
    unless_null $P843, vivify_267
    new $P843, "Undef"
  vivify_267:
    .return ($P843)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "attributes"  :subid("61_1299591517.57") :outer("15_1299591517.57")
    .param pmc param_845
    .param pmc param_846
    .param pmc param_847 :named("local")
.annotate 'line', 388
    .const 'Sub' $P857 = "62_1299591517.57" 
    capture_lex $P857
    .lex "self", param_845
    .lex "$obj", param_846
    .lex "$local", param_847
.annotate 'line', 389
    $P848 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attrs", $P848
.annotate 'line', 388
    find_lex $P849, "@attrs"
.annotate 'line', 390
    find_lex $P851, "self"
    get_global $P852, "$?CLASS"
    getattribute $P853, $P851, $P852, "%!attributes"
    unless_null $P853, vivify_268
    $P853 = root_new ['parrot';'Hash']
  vivify_268:
    defined $I854, $P853
    unless $I854, for_undef_269
    iter $P850, $P853
    new $P864, 'ExceptionHandler'
    set_label $P864, loop863_handler
    $P864."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P864
  loop863_test:
    unless $P850, loop863_done
    shift $P855, $P850
  loop863_redo:
    .const 'Sub' $P857 = "62_1299591517.57" 
    capture_lex $P857
    $P857($P855)
  loop863_next:
    goto loop863_test
  loop863_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P865, exception, 'type'
    eq $P865, .CONTROL_LOOP_NEXT, loop863_next
    eq $P865, .CONTROL_LOOP_REDO, loop863_redo
  loop863_done:
    pop_eh 
  for_undef_269:
    find_lex $P866, "@attrs"
.annotate 'line', 388
    .return ($P866)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block856"  :anon :subid("62_1299591517.57") :outer("61_1299591517.57")
    .param pmc param_858
.annotate 'line', 390
    .lex "$_", param_858
.annotate 'line', 391
    find_lex $P859, "@attrs"
    find_lex $P860, "$_"
    $P861 = $P860."value"()
    $P862 = $P859."push"($P861)
.annotate 'line', 390
    .return ($P862)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parrot_vtable_mappings"  :subid("63_1299591517.57") :outer("15_1299591517.57")
    .param pmc param_868
    .param pmc param_869
    .param pmc param_870 :named("local")
.annotate 'line', 396
    .lex "self", param_868
    .lex "$obj", param_869
    .lex "$local", param_870
    find_lex $P871, "self"
    get_global $P872, "$?CLASS"
    getattribute $P873, $P871, $P872, "%!parrot_vtable_mapping"
    unless_null $P873, vivify_270
    $P873 = root_new ['parrot';'Hash']
  vivify_270:
    .return ($P873)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "isa"  :subid("64_1299591517.57") :outer("15_1299591517.57")
    .param pmc param_877
    .param pmc param_878
    .param pmc param_879
.annotate 'line', 404
    new $P876, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P876, control_875
    push_eh $P876
    .lex "self", param_877
    .lex "$obj", param_878
    .lex "$check", param_879
.annotate 'line', 405
    new $P880, "Undef"
    .lex "$check-class", $P880
.annotate 'line', 406
    new $P881, "Undef"
    .lex "$i", $P881
.annotate 'line', 405
    find_lex $P882, "$check"
    get_what $P883, $P882
    store_lex "$check-class", $P883
.annotate 'line', 406
    find_lex $P884, "self"
    get_global $P885, "$?CLASS"
    getattribute $P886, $P884, $P885, "@!mro"
    unless_null $P886, vivify_271
    $P886 = root_new ['parrot';'ResizablePMCArray']
  vivify_271:
    set $N887, $P886
    new $P888, 'Float'
    set $P888, $N887
    store_lex "$i", $P888
.annotate 'line', 407
    new $P906, 'ExceptionHandler'
    set_label $P906, loop905_handler
    $P906."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P906
  loop905_test:
    find_lex $P889, "$i"
    set $N890, $P889
    isgt $I891, $N890, 0.0
    unless $I891, loop905_done
  loop905_redo:
.annotate 'line', 408
    find_lex $P892, "$i"
    sub $P893, $P892, 1
    store_lex "$i", $P893
.annotate 'line', 409
    find_lex $P895, "$i"
    set $I896, $P895
    find_lex $P897, "self"
    get_global $P898, "$?CLASS"
    getattribute $P899, $P897, $P898, "@!mro"
    unless_null $P899, vivify_272
    $P899 = root_new ['parrot';'ResizablePMCArray']
  vivify_272:
    set $P900, $P899[$I896]
    unless_null $P900, vivify_273
    new $P900, "Undef"
  vivify_273:
    find_lex $P901, "$check-class"
    issame $I902, $P900, $P901
    unless $I902, if_894_end
.annotate 'line', 410
    new $P903, "Exception"
    set $P903['type'], .CONTROL_RETURN
    new $P904, "Integer"
    assign $P904, 1
    setattribute $P903, 'payload', $P904
    throw $P903
  if_894_end:
  loop905_next:
.annotate 'line', 407
    goto loop905_test
  loop905_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P907, exception, 'type'
    eq $P907, .CONTROL_LOOP_NEXT, loop905_next
    eq $P907, .CONTROL_LOOP_REDO, loop905_redo
  loop905_done:
    pop_eh 
.annotate 'line', 413
    new $P908, "Exception"
    set $P908['type'], .CONTROL_RETURN
    new $P909, "Integer"
    assign $P909, 0
    setattribute $P908, 'payload', $P909
    throw $P908
.annotate 'line', 404
    .return ()
  control_875:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P910, exception, "payload"
    .return ($P910)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "does"  :subid("65_1299591517.57") :outer("15_1299591517.57")
    .param pmc param_914
    .param pmc param_915
    .param pmc param_916
.annotate 'line', 416
    new $P913, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P913, control_912
    push_eh $P913
    .lex "self", param_914
    .lex "$obj", param_915
    .lex "$check", param_916
.annotate 'line', 417
    new $P917, "Undef"
    .lex "$i", $P917
    find_lex $P918, "self"
    get_global $P919, "$?CLASS"
    getattribute $P920, $P918, $P919, "@!done"
    unless_null $P920, vivify_274
    $P920 = root_new ['parrot';'ResizablePMCArray']
  vivify_274:
    set $N921, $P920
    new $P922, 'Float'
    set $P922, $N921
    store_lex "$i", $P922
.annotate 'line', 418
    new $P940, 'ExceptionHandler'
    set_label $P940, loop939_handler
    $P940."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P940
  loop939_test:
    find_lex $P923, "$i"
    set $N924, $P923
    isgt $I925, $N924, 0.0
    unless $I925, loop939_done
  loop939_redo:
.annotate 'line', 419
    find_lex $P926, "$i"
    sub $P927, $P926, 1
    store_lex "$i", $P927
.annotate 'line', 420
    find_lex $P929, "$i"
    set $I930, $P929
    find_lex $P931, "self"
    get_global $P932, "$?CLASS"
    getattribute $P933, $P931, $P932, "@!done"
    unless_null $P933, vivify_275
    $P933 = root_new ['parrot';'ResizablePMCArray']
  vivify_275:
    set $P934, $P933[$I930]
    unless_null $P934, vivify_276
    new $P934, "Undef"
  vivify_276:
    find_lex $P935, "$check"
    issame $I936, $P934, $P935
    unless $I936, if_928_end
.annotate 'line', 421
    new $P937, "Exception"
    set $P937['type'], .CONTROL_RETURN
    new $P938, "Integer"
    assign $P938, 1
    setattribute $P937, 'payload', $P938
    throw $P937
  if_928_end:
  loop939_next:
.annotate 'line', 418
    goto loop939_test
  loop939_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P941, exception, 'type'
    eq $P941, .CONTROL_LOOP_NEXT, loop939_next
    eq $P941, .CONTROL_LOOP_REDO, loop939_redo
  loop939_done:
    pop_eh 
.annotate 'line', 424
    new $P942, "Exception"
    set $P942['type'], .CONTROL_RETURN
    new $P943, "Integer"
    assign $P943, 0
    setattribute $P942, 'payload', $P943
    throw $P942
.annotate 'line', 416
    .return ()
  control_912:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P944, exception, "payload"
    .return ($P944)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "can"  :subid("66_1299591517.57") :outer("15_1299591517.57")
    .param pmc param_948
    .param pmc param_949
    .param pmc param_950
.annotate 'line', 427
    .const 'Sub' $P958 = "67_1299591517.57" 
    capture_lex $P958
    new $P947, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P947, control_946
    push_eh $P947
    .lex "self", param_948
    .lex "$obj", param_949
    .lex "$name", param_950
.annotate 'line', 428
    find_lex $P952, "self"
    get_global $P953, "$?CLASS"
    getattribute $P954, $P952, $P953, "@!mro"
    unless_null $P954, vivify_277
    $P954 = root_new ['parrot';'ResizablePMCArray']
  vivify_277:
    defined $I955, $P954
    unless $I955, for_undef_278
    iter $P951, $P954
    new $P976, 'ExceptionHandler'
    set_label $P976, loop975_handler
    $P976."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P976
  loop975_test:
    unless $P951, loop975_done
    shift $P956, $P951
  loop975_redo:
    .const 'Sub' $P958 = "67_1299591517.57" 
    capture_lex $P958
    $P958($P956)
  loop975_next:
    goto loop975_test
  loop975_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P977, exception, 'type'
    eq $P977, .CONTROL_LOOP_NEXT, loop975_next
    eq $P977, .CONTROL_LOOP_REDO, loop975_redo
  loop975_done:
    pop_eh 
  for_undef_278:
.annotate 'line', 435
    new $P978, "Exception"
    set $P978['type'], .CONTROL_RETURN
    new $P979, "Integer"
    assign $P979, 0
    setattribute $P978, 'payload', $P979
    throw $P978
.annotate 'line', 427
    .return ()
  control_946:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P980, exception, "payload"
    .return ($P980)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block957"  :anon :subid("67_1299591517.57") :outer("66_1299591517.57")
    .param pmc param_961
.annotate 'line', 429
    $P959 = root_new ['parrot';'Hash']
    .lex "%meths", $P959
.annotate 'line', 430
    new $P960, "Undef"
    .lex "$can", $P960
    .lex "$_", param_961
.annotate 'line', 429
    find_lex $P962, "$_"
    get_how $P963, $P962
    find_lex $P964, "$obj"
    $P965 = $P963."method_table"($P964)
    store_lex "%meths", $P965
.annotate 'line', 430
    find_lex $P966, "$name"
    find_lex $P967, "%meths"
    unless_null $P967, vivify_279
    $P967 = root_new ['parrot';'Hash']
  vivify_279:
    set $P968, $P967[$P966]
    unless_null $P968, vivify_280
    new $P968, "Undef"
  vivify_280:
    store_lex "$can", $P968
.annotate 'line', 431
    find_lex $P971, "$can"
    defined $I972, $P971
    if $I972, if_970
    new $P969, 'Integer'
    set $P969, $I972
    goto if_970_end
  if_970:
.annotate 'line', 432
    new $P973, "Exception"
    set $P973['type'], .CONTROL_RETURN
    find_lex $P974, "$can"
    setattribute $P973, 'payload', $P974
    throw $P973
  if_970_end:
.annotate 'line', 428
    .return ($P969)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "find_method"  :subid("68_1299591517.57") :outer("15_1299591517.57")
    .param pmc param_984
    .param pmc param_985
    .param pmc param_986
.annotate 'line', 441
    .const 'Sub' $P994 = "69_1299591517.57" 
    capture_lex $P994
    new $P983, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P983, control_982
    push_eh $P983
    .lex "self", param_984
    .lex "$obj", param_985
    .lex "$name", param_986
.annotate 'line', 442
    find_lex $P988, "self"
    get_global $P989, "$?CLASS"
    getattribute $P990, $P988, $P989, "@!mro"
    unless_null $P990, vivify_281
    $P990 = root_new ['parrot';'ResizablePMCArray']
  vivify_281:
    defined $I991, $P990
    unless $I991, for_undef_282
    iter $P987, $P990
    new $P1012, 'ExceptionHandler'
    set_label $P1012, loop1011_handler
    $P1012."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1012
  loop1011_test:
    unless $P987, loop1011_done
    shift $P992, $P987
  loop1011_redo:
    .const 'Sub' $P994 = "69_1299591517.57" 
    capture_lex $P994
    $P994($P992)
  loop1011_next:
    goto loop1011_test
  loop1011_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1013, exception, 'type'
    eq $P1013, .CONTROL_LOOP_NEXT, loop1011_next
    eq $P1013, .CONTROL_LOOP_REDO, loop1011_redo
  loop1011_done:
    pop_eh 
  for_undef_282:
.annotate 'line', 449
    null $P1014
.annotate 'line', 441
    .return ($P1014)
  control_982:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1015, exception, "payload"
    .return ($P1015)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block993"  :anon :subid("69_1299591517.57") :outer("68_1299591517.57")
    .param pmc param_997
.annotate 'line', 443
    $P995 = root_new ['parrot';'Hash']
    .lex "%meths", $P995
.annotate 'line', 444
    new $P996, "Undef"
    .lex "$found", $P996
    .lex "$_", param_997
.annotate 'line', 443
    find_lex $P998, "$_"
    get_how $P999, $P998
    find_lex $P1000, "$obj"
    $P1001 = $P999."method_table"($P1000)
    store_lex "%meths", $P1001
.annotate 'line', 444
    find_lex $P1002, "$name"
    find_lex $P1003, "%meths"
    unless_null $P1003, vivify_283
    $P1003 = root_new ['parrot';'Hash']
  vivify_283:
    set $P1004, $P1003[$P1002]
    unless_null $P1004, vivify_284
    new $P1004, "Undef"
  vivify_284:
    store_lex "$found", $P1004
.annotate 'line', 445
    find_lex $P1007, "$found"
    defined $I1008, $P1007
    if $I1008, if_1006
    new $P1005, 'Integer'
    set $P1005, $I1008
    goto if_1006_end
  if_1006:
.annotate 'line', 446
    new $P1009, "Exception"
    set $P1009['type'], .CONTROL_RETURN
    find_lex $P1010, "$found"
    setattribute $P1009, 'payload', $P1010
    throw $P1009
  if_1006_end:
.annotate 'line', 442
    .return ($P1005)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "_block1109"  :subid("71_1299591517.57") :outer("10_1299591517.57")
.annotate 'line', 454
    .const 'Sub' $P1170 = "80_1299591517.57" 
    capture_lex $P1170
    .const 'Sub' $P1162 = "79_1299591517.57" 
    capture_lex $P1162
    .const 'Sub' $P1156 = "78_1299591517.57" 
    capture_lex $P1156
    .const 'Sub' $P1152 = "77_1299591517.57" 
    capture_lex $P1152
    .const 'Sub' $P1147 = "76_1299591517.57" 
    capture_lex $P1147
    .const 'Sub' $P1142 = "75_1299591517.57" 
    capture_lex $P1142
    .const 'Sub' $P1129 = "74_1299591517.57" 
    capture_lex $P1129
    .const 'Sub' $P1122 = "73_1299591517.57" 
    capture_lex $P1122
    .const 'Sub' $P1112 = "72_1299591517.57" 
    capture_lex $P1112
    get_global $P1111, "$?CLASS"
.annotate 'line', 492
    .const 'Sub' $P1162 = "79_1299591517.57" 
    newclosure $P1168, $P1162
.annotate 'line', 454
    .return ($P1168)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "" :load :init :subid("post285") :outer("71_1299591517.57")
.annotate 'line', 454
    get_hll_global $P1110, ["NQPNativeHOW"], "_block1109" 
    .local pmc block
    set block, $P1110
    .const 'Sub' $P1170 = "80_1299591517.57" 
    capture_lex $P1170
    $P1170()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "_block1169"  :anon :subid("80_1299591517.57") :outer("71_1299591517.57")
.annotate 'line', 454
    get_hll_global $P1171, "KnowHOW"
    $P1172 = $P1171."new_type"("NQPNativeHOW" :named("name"))
    .local pmc type_obj
    set type_obj, $P1172
    set_hll_global "NQPNativeHOW", type_obj
    set_global "$?CLASS", type_obj
    get_how $P1173, type_obj
    get_hll_global $P1174, "KnowHOWAttribute"
    $P1175 = $P1174."new"("$!name" :named("name"))
    $P1173."add_attribute"(type_obj, $P1175)
    get_how $P1176, type_obj
    get_hll_global $P1177, "KnowHOWAttribute"
    $P1178 = $P1177."new"("$!composed" :named("name"))
    $P1176."add_attribute"(type_obj, $P1178)
    get_how $P1179, type_obj
    .const 'Sub' $P1180 = "72_1299591517.57" 
    $P1179."add_method"(type_obj, "new", $P1180)
    get_how $P1181, type_obj
    .const 'Sub' $P1182 = "73_1299591517.57" 
    $P1181."add_method"(type_obj, "BUILD", $P1182)
    get_how $P1183, type_obj
    .const 'Sub' $P1184 = "74_1299591517.57" 
    $P1183."add_method"(type_obj, "new_type", $P1184)
    get_how $P1185, type_obj
    .const 'Sub' $P1186 = "75_1299591517.57" 
    $P1185."add_method"(type_obj, "add_method", $P1186)
    get_how $P1187, type_obj
    .const 'Sub' $P1188 = "76_1299591517.57" 
    $P1187."add_method"(type_obj, "add_multi_method", $P1188)
    get_how $P1189, type_obj
    .const 'Sub' $P1190 = "77_1299591517.57" 
    $P1189."add_method"(type_obj, "add_attribute", $P1190)
    get_how $P1191, type_obj
    .const 'Sub' $P1192 = "78_1299591517.57" 
    $P1191."add_method"(type_obj, "compose", $P1192)
    get_how $P1193, type_obj
    .const 'Sub' $P1194 = "79_1299591517.57" 
    $P1193."add_method"(type_obj, "name", $P1194)
    get_how $P1195, type_obj
    $P1196 = $P1195."compose"(type_obj)
    .return ($P1196)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "new"  :subid("72_1299591517.57") :outer("71_1299591517.57")
    .param pmc param_1113
    .param pmc param_1114 :optional :named("name")
    .param int has_param_1114 :opt_flag
.annotate 'line', 458
    .lex "self", param_1113
    if has_param_1114, optparam_286
    new $P1115, "Undef"
    set param_1114, $P1115
  optparam_286:
    .lex "$name", param_1114
.annotate 'line', 459
    new $P1116, "Undef"
    .lex "$obj", $P1116
    find_lex $P1117, "self"
    repr_instance_of $P1118, $P1117
    store_lex "$obj", $P1118
.annotate 'line', 460
    find_lex $P1119, "$obj"
    find_lex $P1120, "$name"
    $P1119."BUILD"($P1120 :named("name"))
    find_lex $P1121, "$obj"
.annotate 'line', 458
    .return ($P1121)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "BUILD"  :subid("73_1299591517.57") :outer("71_1299591517.57")
    .param pmc param_1123
    .param pmc param_1124 :optional :named("name")
    .param int has_param_1124 :opt_flag
.annotate 'line', 464
    .lex "self", param_1123
    if has_param_1124, optparam_287
    new $P1125, "Undef"
    set param_1124, $P1125
  optparam_287:
    .lex "$name", param_1124
.annotate 'line', 465
    find_lex $P1126, "$name"
    find_lex $P1127, "self"
    get_global $P1128, "$?CLASS"
    setattribute $P1127, $P1128, "$!name", $P1126
.annotate 'line', 464
    .return ($P1126)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "new_type"  :subid("74_1299591517.57") :outer("71_1299591517.57")
    .param pmc param_1130
    .param pmc param_1133 :named("repr")
    .param pmc param_1131 :optional :named("name")
    .param int has_param_1131 :opt_flag
.annotate 'line', 471
    .lex "self", param_1130
    if has_param_1131, optparam_288
    new $P1132, "String"
    assign $P1132, "<anon>"
    set param_1131, $P1132
  optparam_288:
    .lex "$name", param_1131
    .lex "$repr", param_1133
.annotate 'line', 472
    new $P1134, "Undef"
    .lex "$metaclass", $P1134
    find_lex $P1135, "self"
    find_lex $P1136, "$name"
    $P1137 = $P1135."new"($P1136 :named("name"))
    store_lex "$metaclass", $P1137
.annotate 'line', 473
    find_lex $P1138, "$metaclass"
    find_lex $P1139, "$repr"
    set $S1140, $P1139
    repr_type_object_for $P1141, $P1138, $S1140
.annotate 'line', 471
    .return ($P1141)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_method"  :subid("75_1299591517.57") :outer("71_1299591517.57")
    .param pmc param_1143
    .param pmc param_1144
    .param pmc param_1145
    .param pmc param_1146
.annotate 'line', 476
    .lex "self", param_1143
    .lex "$obj", param_1144
    .lex "$name", param_1145
    .lex "$code_obj", param_1146
.annotate 'line', 477
    die "Native types may not have methods (must be boxed to call method)"
.annotate 'line', 476
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_multi_method"  :subid("76_1299591517.57") :outer("71_1299591517.57")
    .param pmc param_1148
    .param pmc param_1149
    .param pmc param_1150
    .param pmc param_1151
.annotate 'line', 480
    .lex "self", param_1148
    .lex "$obj", param_1149
    .lex "$name", param_1150
    .lex "$code_obj", param_1151
.annotate 'line', 481
    die "Native types may not have methods (must be boxed to call method)"
.annotate 'line', 480
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_attribute"  :subid("77_1299591517.57") :outer("71_1299591517.57")
    .param pmc param_1153
    .param pmc param_1154
    .param pmc param_1155
.annotate 'line', 484
    .lex "self", param_1153
    .lex "$obj", param_1154
    .lex "$meta_attr", param_1155
.annotate 'line', 485
    die "Native types may not have attributes"
.annotate 'line', 484
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "compose"  :subid("78_1299591517.57") :outer("71_1299591517.57")
    .param pmc param_1157
    .param pmc param_1158
.annotate 'line', 488
    .lex "self", param_1157
    .lex "$obj", param_1158
.annotate 'line', 489
    new $P1159, "Integer"
    assign $P1159, 1
    find_lex $P1160, "self"
    get_global $P1161, "$?CLASS"
    setattribute $P1160, $P1161, "$!composed", $P1159
.annotate 'line', 488
    .return ($P1159)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "name"  :subid("79_1299591517.57") :outer("71_1299591517.57")
    .param pmc param_1163
    .param pmc param_1164
.annotate 'line', 492
    .lex "self", param_1163
    .lex "$obj", param_1164
    find_lex $P1165, "self"
    get_global $P1166, "$?CLASS"
    getattribute $P1167, $P1165, $P1166, "$!name"
    unless_null $P1167, vivify_289
    new $P1167, "Undef"
  vivify_289:
    .return ($P1167)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block1197"  :subid("81_1299591517.57") :outer("10_1299591517.57")
.annotate 'line', 498
    .const 'Sub' $P1381 = "95_1299591517.57" 
    capture_lex $P1381
    .const 'Sub' $P1371 = "94_1299591517.57" 
    capture_lex $P1371
    .const 'Sub' $P1290 = "89_1299591517.57" 
    capture_lex $P1290
    .const 'Sub' $P1281 = "88_1299591517.57" 
    capture_lex $P1281
    .const 'Sub' $P1272 = "87_1299591517.57" 
    capture_lex $P1272
    .const 'Sub' $P1267 = "86_1299591517.57" 
    capture_lex $P1267
    .const 'Sub' $P1250 = "85_1299591517.57" 
    capture_lex $P1250
    .const 'Sub' $P1235 = "84_1299591517.57" 
    capture_lex $P1235
    .const 'Sub' $P1200 = "82_1299591517.57" 
    capture_lex $P1200
    get_global $P1199, "$?CLASS"
.annotate 'line', 558
    .const 'Sub' $P1200 = "82_1299591517.57" 
    newclosure $P1234, $P1200
    .lex "has_method", $P1234
.annotate 'line', 554
    find_lex $P1379, "has_method"
.annotate 'line', 498
    .return ($P1379)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "" :load :init :subid("post290") :outer("81_1299591517.57")
.annotate 'line', 498
    get_hll_global $P1198, ["NQPAttribute"], "_block1197" 
    .local pmc block
    set block, $P1198
    .const 'Sub' $P1381 = "95_1299591517.57" 
    capture_lex $P1381
    $P1381()
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block1380"  :anon :subid("95_1299591517.57") :outer("81_1299591517.57")
.annotate 'line', 498
    get_hll_global $P1382, "KnowHOW"
    $P1383 = $P1382."new_type"("NQPAttribute" :named("name"))
    .local pmc type_obj
    set type_obj, $P1383
    set_hll_global "NQPAttribute", type_obj
    set_global "$?CLASS", type_obj
    get_how $P1384, type_obj
    get_hll_global $P1385, "KnowHOWAttribute"
    $P1386 = $P1385."new"("$!name" :named("name"))
    $P1384."add_attribute"(type_obj, $P1386)
    get_how $P1387, type_obj
    get_hll_global $P1388, "KnowHOWAttribute"
    $P1389 = $P1388."new"("$!type" :named("name"))
    $P1387."add_attribute"(type_obj, $P1389)
    get_how $P1390, type_obj
    get_hll_global $P1391, "KnowHOWAttribute"
    $P1392 = $P1391."new"("$!box_target" :named("name"))
    $P1390."add_attribute"(type_obj, $P1392)
    get_how $P1393, type_obj
    .const 'Sub' $P1394 = "84_1299591517.57" 
    $P1393."add_method"(type_obj, "new", $P1394)
    get_how $P1395, type_obj
    .const 'Sub' $P1396 = "85_1299591517.57" 
    $P1395."add_method"(type_obj, "BUILD", $P1396)
    get_how $P1397, type_obj
    .const 'Sub' $P1398 = "86_1299591517.57" 
    $P1397."add_method"(type_obj, "name", $P1398)
    get_how $P1399, type_obj
    .const 'Sub' $P1400 = "87_1299591517.57" 
    $P1399."add_method"(type_obj, "type", $P1400)
    get_how $P1401, type_obj
    .const 'Sub' $P1402 = "88_1299591517.57" 
    $P1401."add_method"(type_obj, "box_target", $P1402)
    get_how $P1403, type_obj
    .const 'Sub' $P1404 = "89_1299591517.57" 
    $P1403."add_method"(type_obj, "compose", $P1404)
    get_how $P1405, type_obj
    .const 'Sub' $P1406 = "94_1299591517.57" 
    $P1405."add_method"(type_obj, "has_mutator", $P1406)
    get_how $P1407, type_obj
    $P1408 = $P1407."compose"(type_obj)
    .return ($P1408)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "has_method"  :subid("82_1299591517.57") :outer("81_1299591517.57")
    .param pmc param_1203
    .param pmc param_1204
    .param pmc param_1205
.annotate 'line', 558
    .const 'Sub' $P1217 = "83_1299591517.57" 
    capture_lex $P1217
    new $P1202, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1202, control_1201
    push_eh $P1202
    .lex "$target", param_1203
    .lex "$name", param_1204
    .lex "$local", param_1205
.annotate 'line', 559
    $P1206 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P1206
    find_lex $P1207, "$target"
    get_how $P1208, $P1207
    find_lex $P1209, "$target"
    find_lex $P1210, "$local"
    $P1211 = $P1208."methods"($P1209, $P1210 :named("local"))
    store_lex "@methods", $P1211
.annotate 'line', 560
    find_lex $P1213, "@methods"
    defined $I1214, $P1213
    unless $I1214, for_undef_291
    iter $P1212, $P1213
    new $P1229, 'ExceptionHandler'
    set_label $P1229, loop1228_handler
    $P1229."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1229
  loop1228_test:
    unless $P1212, loop1228_done
    shift $P1215, $P1212
  loop1228_redo:
    .const 'Sub' $P1217 = "83_1299591517.57" 
    capture_lex $P1217
    $P1217($P1215)
  loop1228_next:
    goto loop1228_test
  loop1228_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1230, exception, 'type'
    eq $P1230, .CONTROL_LOOP_NEXT, loop1228_next
    eq $P1230, .CONTROL_LOOP_REDO, loop1228_redo
  loop1228_done:
    pop_eh 
  for_undef_291:
.annotate 'line', 563
    new $P1231, "Exception"
    set $P1231['type'], .CONTROL_RETURN
    new $P1232, "Integer"
    assign $P1232, 0
    setattribute $P1231, 'payload', $P1232
    throw $P1231
.annotate 'line', 558
    .return ()
  control_1201:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1233, exception, "payload"
    .return ($P1233)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "_block1216"  :anon :subid("83_1299591517.57") :outer("82_1299591517.57")
    .param pmc param_1218
.annotate 'line', 560
    .lex "$_", param_1218
.annotate 'line', 561
    find_lex $P1221, "$_"
    set $S1222, $P1221
    find_lex $P1223, "$name"
    set $S1224, $P1223
    iseq $I1225, $S1222, $S1224
    if $I1225, if_1220
    new $P1219, 'Integer'
    set $P1219, $I1225
    goto if_1220_end
  if_1220:
    new $P1226, "Exception"
    set $P1226['type'], .CONTROL_RETURN
    new $P1227, "Integer"
    assign $P1227, 1
    setattribute $P1226, 'payload', $P1227
    throw $P1226
  if_1220_end:
.annotate 'line', 560
    .return ($P1219)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "new"  :subid("84_1299591517.57") :outer("81_1299591517.57")
    .param pmc param_1236
    .param pmc param_1237 :named("name")
    .param pmc param_1238 :optional :named("type")
    .param int has_param_1238 :opt_flag
    .param pmc param_1240 :optional :named("box_target")
    .param int has_param_1240 :opt_flag
.annotate 'line', 503
    .lex "self", param_1236
    .lex "$name", param_1237
    if has_param_1238, optparam_292
    new $P1239, "Undef"
    set param_1238, $P1239
  optparam_292:
    .lex "$type", param_1238
    if has_param_1240, optparam_293
    new $P1241, "Undef"
    set param_1240, $P1241
  optparam_293:
    .lex "$box_target", param_1240
.annotate 'line', 504
    new $P1242, "Undef"
    .lex "$attr", $P1242
    find_lex $P1243, "self"
    repr_instance_of $P1244, $P1243
    store_lex "$attr", $P1244
.annotate 'line', 505
    find_lex $P1245, "$attr"
    find_lex $P1246, "$name"
    find_lex $P1247, "$type"
    find_lex $P1248, "$box_target"
    $P1245."BUILD"($P1246 :named("name"), $P1247 :named("type"), $P1248 :named("box_target"))
    find_lex $P1249, "$attr"
.annotate 'line', 503
    .return ($P1249)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "BUILD"  :subid("85_1299591517.57") :outer("81_1299591517.57")
    .param pmc param_1251
    .param pmc param_1252 :optional :named("name")
    .param int has_param_1252 :opt_flag
    .param pmc param_1254 :optional :named("type")
    .param int has_param_1254 :opt_flag
    .param pmc param_1256 :optional :named("box_target")
    .param int has_param_1256 :opt_flag
.annotate 'line', 509
    .lex "self", param_1251
    if has_param_1252, optparam_294
    new $P1253, "Undef"
    set param_1252, $P1253
  optparam_294:
    .lex "$name", param_1252
    if has_param_1254, optparam_295
    new $P1255, "Undef"
    set param_1254, $P1255
  optparam_295:
    .lex "$type", param_1254
    if has_param_1256, optparam_296
    new $P1257, "Undef"
    set param_1256, $P1257
  optparam_296:
    .lex "$box_target", param_1256
.annotate 'line', 510
    find_lex $P1258, "$name"
    find_lex $P1259, "self"
    get_global $P1260, "$?CLASS"
    setattribute $P1259, $P1260, "$!name", $P1258
.annotate 'line', 511
    find_lex $P1261, "$type"
    find_lex $P1262, "self"
    get_global $P1263, "$?CLASS"
    setattribute $P1262, $P1263, "$!type", $P1261
.annotate 'line', 512
    find_lex $P1264, "$box_target"
    find_lex $P1265, "self"
    get_global $P1266, "$?CLASS"
    setattribute $P1265, $P1266, "$!box_target", $P1264
.annotate 'line', 509
    .return ($P1264)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "name"  :subid("86_1299591517.57") :outer("81_1299591517.57")
    .param pmc param_1268
.annotate 'line', 515
    .lex "self", param_1268
    find_lex $P1269, "self"
    get_global $P1270, "$?CLASS"
    getattribute $P1271, $P1269, $P1270, "$!name"
    unless_null $P1271, vivify_297
    new $P1271, "Undef"
  vivify_297:
    .return ($P1271)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "type"  :subid("87_1299591517.57") :outer("81_1299591517.57")
    .param pmc param_1273
.annotate 'line', 519
    .lex "self", param_1273
.annotate 'line', 520
    find_lex $P1275, "self"
    get_global $P1276, "$?CLASS"
    getattribute $P1277, $P1275, $P1276, "$!type"
    unless_null $P1277, vivify_298
    new $P1277, "Undef"
  vivify_298:
    set $P1274, $P1277
    defined $I1279, $P1274
    if $I1279, default_1278
    null $P1280
    set $P1274, $P1280
  default_1278:
.annotate 'line', 519
    .return ($P1274)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "box_target"  :subid("88_1299591517.57") :outer("81_1299591517.57")
    .param pmc param_1282
.annotate 'line', 523
    .lex "self", param_1282
.annotate 'line', 524
    find_lex $P1285, "self"
    get_global $P1286, "$?CLASS"
    getattribute $P1287, $P1285, $P1286, "$!box_target"
    unless_null $P1287, vivify_299
    new $P1287, "Undef"
  vivify_299:
    if $P1287, if_1284
    new $P1289, "Integer"
    assign $P1289, 0
    set $P1283, $P1289
    goto if_1284_end
  if_1284:
    new $P1288, "Integer"
    assign $P1288, 1
    set $P1283, $P1288
  if_1284_end:
.annotate 'line', 523
    .return ($P1283)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "compose"  :subid("89_1299591517.57") :outer("81_1299591517.57")
    .param pmc param_1291
    .param pmc param_1292
.annotate 'line', 527
    .const 'Sub' $P1344 = "92_1299591517.57" 
    capture_lex $P1344
    .const 'Sub' $P1304 = "90_1299591517.57" 
    capture_lex $P1304
    .lex "self", param_1291
    .lex "$obj", param_1292
.annotate 'line', 528
    new $P1293, "Undef"
    .lex "$long_name", $P1293
    find_lex $P1294, "self"
    get_global $P1295, "$?CLASS"
    getattribute $P1296, $P1294, $P1295, "$!name"
    unless_null $P1296, vivify_300
    new $P1296, "Undef"
  vivify_300:
    set $S1297, $P1296
    new $P1298, 'String'
    set $P1298, $S1297
    store_lex "$long_name", $P1298
.annotate 'line', 529
    find_lex $P1301, "self"
    $P1302 = $P1301."has_mutator"()
    if $P1302, if_1300
.annotate 'line', 541
    .const 'Sub' $P1344 = "92_1299591517.57" 
    capture_lex $P1344
    $P1370 = $P1344()
    set $P1299, $P1370
.annotate 'line', 529
    goto if_1300_end
  if_1300:
    .const 'Sub' $P1304 = "90_1299591517.57" 
    capture_lex $P1304
    $P1342 = $P1304()
    set $P1299, $P1342
  if_1300_end:
.annotate 'line', 527
    .return ($P1299)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block1343"  :anon :subid("92_1299591517.57") :outer("89_1299591517.57")
.annotate 'line', 541
    .const 'Sub' $P1360 = "93_1299591517.57" 
    capture_lex $P1360
.annotate 'line', 542
    new $P1345, "Undef"
    .lex "$method", $P1345
    find_lex $P1346, "$long_name"
    set $S1347, $P1346
    substr $S1348, $S1347, 2
    new $P1349, 'String'
    set $P1349, $S1348
    store_lex "$method", $P1349
.annotate 'line', 543
    find_lex $P1352, "$obj"
    find_lex $P1353, "$method"
    $P1354 = "has_method"($P1352, $P1353, 0)
    unless $P1354, unless_1351
    set $P1350, $P1354
    goto unless_1351_end
  unless_1351:
.annotate 'line', 544
    find_lex $P1355, "$obj"
    get_how $P1356, $P1355
    find_lex $P1357, "$obj"
    find_lex $P1358, "$method"
.annotate 'line', 545
    .const 'Sub' $P1360 = "93_1299591517.57" 
    newclosure $P1368, $P1360
    $P1369 = $P1356."add_method"($P1357, $P1358, $P1368)
.annotate 'line', 543
    set $P1350, $P1369
  unless_1351_end:
.annotate 'line', 541
    .return ($P1350)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block1359"  :anon :subid("93_1299591517.57") :outer("92_1299591517.57")
    .param pmc param_1361
.annotate 'line', 545
    .lex "self", param_1361
.annotate 'line', 546
    find_lex $P1362, "self"
    find_lex $P1363, "$obj"
    get_what $P1364, $P1363
    find_lex $P1365, "$long_name"
    set $S1366, $P1365
    getattribute $P1367, $P1362, $P1364, $S1366
.annotate 'line', 545
    .return ($P1367)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block1303"  :anon :subid("90_1299591517.57") :outer("89_1299591517.57")
.annotate 'line', 529
    .const 'Sub' $P1321 = "91_1299591517.57" 
    capture_lex $P1321
.annotate 'line', 530
    new $P1305, "Undef"
    .lex "$method", $P1305
    find_lex $P1306, "$long_name"
    set $S1307, $P1306
    substr $S1308, $S1307, 1
    new $P1309, 'String'
    set $P1309, $S1308
    store_lex "$method", $P1309
.annotate 'line', 531
    find_lex $P1312, "$obj"
    find_lex $P1313, "$method"
    $P1314 = "has_method"($P1312, $P1313, 0)
    unless $P1314, unless_1311
    set $P1310, $P1314
    goto unless_1311_end
  unless_1311:
.annotate 'line', 532
    find_lex $P1315, "$obj"
    get_how $P1316, $P1315
    find_lex $P1317, "$obj"
    get_what $P1318, $P1317
    find_lex $P1319, "$method"
    .const 'Sub' $P1321 = "91_1299591517.57" 
    newclosure $P1340, $P1321
    $P1341 = $P1316."add_method"($P1318, $P1319, $P1340)
.annotate 'line', 531
    set $P1310, $P1341
  unless_1311_end:
.annotate 'line', 529
    .return ($P1310)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block1320"  :anon :subid("91_1299591517.57") :outer("90_1299591517.57")
    .param pmc param_1322
    .param pmc param_1323 :optional
    .param int has_param_1323 :opt_flag
.annotate 'line', 532
    .lex "self", param_1322
    if has_param_1323, optparam_301
    new $P1324, "Undef"
    set param_1323, $P1324
  optparam_301:
    .lex "$value", param_1323
.annotate 'line', 534
    find_lex $P1326, "$value"
    defined $I1327, $P1326
    unless $I1327, if_1325_end
.annotate 'line', 533
    find_lex $P1328, "self"
    find_lex $P1329, "$obj"
    get_what $P1330, $P1329
    find_lex $P1331, "$long_name"
    set $S1332, $P1331
    find_lex $P1333, "$value"
    setattribute $P1328, $P1330, $S1332, $P1333
  if_1325_end:
.annotate 'line', 536
    find_lex $P1334, "self"
    find_lex $P1335, "$obj"
    get_what $P1336, $P1335
    find_lex $P1337, "$long_name"
    set $S1338, $P1337
    getattribute $P1339, $P1334, $P1336, $S1338
.annotate 'line', 532
    .return ($P1339)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "has_mutator"  :subid("94_1299591517.57") :outer("81_1299591517.57")
    .param pmc param_1372
.annotate 'line', 554
    .lex "self", param_1372
.annotate 'line', 555
    find_lex $P1373, "self"
    get_global $P1374, "$?CLASS"
    getattribute $P1375, $P1373, $P1374, "$!name"
    unless_null $P1375, vivify_302
    new $P1375, "Undef"
  vivify_302:
    set $S1376, $P1375
    substr $S1377, $S1376, 1, 1
    isne $I1378, $S1377, "!"
.annotate 'line', 554
    .return ($I1378)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1409"  :subid("96_1299591517.57") :outer("10_1299591517.57")
.annotate 'line', 571
    .const 'Sub' $P1665 = "117_1299591517.57" 
    capture_lex $P1665
    .const 'Sub' $P1657 = "116_1299591517.57" 
    capture_lex $P1657
    .const 'Sub' $P1651 = "115_1299591517.57" 
    capture_lex $P1651
    .const 'Sub' $P1629 = "113_1299591517.57" 
    capture_lex $P1629
    .const 'Sub' $P1623 = "112_1299591517.57" 
    capture_lex $P1623
    .const 'Sub' $P1617 = "111_1299591517.57" 
    capture_lex $P1617
    .const 'Sub' $P1611 = "110_1299591517.57" 
    capture_lex $P1611
    .const 'Sub' $P1589 = "108_1299591517.57" 
    capture_lex $P1589
    .const 'Sub' $P1540 = "106_1299591517.57" 
    capture_lex $P1540
    .const 'Sub' $P1527 = "105_1299591517.57" 
    capture_lex $P1527
    .const 'Sub' $P1514 = "104_1299591517.57" 
    capture_lex $P1514
    .const 'Sub' $P1510 = "103_1299591517.57" 
    capture_lex $P1510
    .const 'Sub' $P1489 = "102_1299591517.57" 
    capture_lex $P1489
    .const 'Sub' $P1468 = "101_1299591517.57" 
    capture_lex $P1468
    .const 'Sub' $P1449 = "100_1299591517.57" 
    capture_lex $P1449
    .const 'Sub' $P1433 = "99_1299591517.57" 
    capture_lex $P1433
    .const 'Sub' $P1423 = "98_1299591517.57" 
    capture_lex $P1423
    .const 'Sub' $P1412 = "97_1299591517.57" 
    capture_lex $P1412
    get_global $P1411, "$?CLASS"
.annotate 'line', 710
    .const 'Sub' $P1657 = "116_1299591517.57" 
    newclosure $P1663, $P1657
.annotate 'line', 571
    .return ($P1663)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "" :load :init :subid("post303") :outer("96_1299591517.57")
.annotate 'line', 571
    get_hll_global $P1410, ["NQPConcreteRoleHOW"], "_block1409" 
    .local pmc block
    set block, $P1410
    .const 'Sub' $P1665 = "117_1299591517.57" 
    capture_lex $P1665
    $P1665()
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1664"  :anon :subid("117_1299591517.57") :outer("96_1299591517.57")
.annotate 'line', 571
    get_hll_global $P1666, "KnowHOW"
    $P1667 = $P1666."new_type"("NQPConcreteRoleHOW" :named("name"))
    .local pmc type_obj
    set type_obj, $P1667
    set_hll_global "NQPConcreteRoleHOW", type_obj
    set_global "$?CLASS", type_obj
    get_how $P1668, type_obj
    get_hll_global $P1669, "KnowHOWAttribute"
    $P1670 = $P1669."new"("$!name" :named("name"))
    $P1668."add_attribute"(type_obj, $P1670)
    get_how $P1671, type_obj
    get_hll_global $P1672, "KnowHOWAttribute"
    $P1673 = $P1672."new"("$!instance_of" :named("name"))
    $P1671."add_attribute"(type_obj, $P1673)
    get_how $P1674, type_obj
    get_hll_global $P1675, "KnowHOWAttribute"
    $P1676 = $P1675."new"("%!attributes" :named("name"))
    $P1674."add_attribute"(type_obj, $P1676)
    get_how $P1677, type_obj
    get_hll_global $P1678, "KnowHOWAttribute"
    $P1679 = $P1678."new"("%!methods" :named("name"))
    $P1677."add_attribute"(type_obj, $P1679)
    get_how $P1680, type_obj
    get_hll_global $P1681, "KnowHOWAttribute"
    $P1682 = $P1681."new"("@!multi_methods_to_incorporate" :named("name"))
    $P1680."add_attribute"(type_obj, $P1682)
    get_how $P1683, type_obj
    get_hll_global $P1684, "KnowHOWAttribute"
    $P1685 = $P1684."new"("@!collisions" :named("name"))
    $P1683."add_attribute"(type_obj, $P1685)
    get_how $P1686, type_obj
    get_hll_global $P1687, "KnowHOWAttribute"
    $P1688 = $P1687."new"("@!roles" :named("name"))
    $P1686."add_attribute"(type_obj, $P1688)
    get_how $P1689, type_obj
    get_hll_global $P1690, "KnowHOWAttribute"
    $P1691 = $P1690."new"("@!done" :named("name"))
    $P1689."add_attribute"(type_obj, $P1691)
    get_how $P1692, type_obj
    get_hll_global $P1693, "KnowHOWAttribute"
    $P1694 = $P1693."new"("$!composed" :named("name"))
    $P1692."add_attribute"(type_obj, $P1694)
    get_how $P1695, type_obj
    .const 'Sub' $P1696 = "97_1299591517.57" 
    $P1695."add_method"(type_obj, "new", $P1696)
    get_how $P1697, type_obj
    .const 'Sub' $P1698 = "98_1299591517.57" 
    $P1697."add_method"(type_obj, "BUILD", $P1698)
    get_how $P1699, type_obj
    .const 'Sub' $P1700 = "99_1299591517.57" 
    $P1699."add_method"(type_obj, "new_type", $P1700)
    get_how $P1701, type_obj
    .const 'Sub' $P1702 = "100_1299591517.57" 
    $P1701."add_method"(type_obj, "add_method", $P1702)
    get_how $P1703, type_obj
    .const 'Sub' $P1704 = "101_1299591517.57" 
    $P1703."add_method"(type_obj, "add_multi_method", $P1704)
    get_how $P1705, type_obj
    .const 'Sub' $P1706 = "102_1299591517.57" 
    $P1705."add_method"(type_obj, "add_attribute", $P1706)
    get_how $P1707, type_obj
    .const 'Sub' $P1708 = "103_1299591517.57" 
    $P1707."add_method"(type_obj, "add_parent", $P1708)
    get_how $P1709, type_obj
    .const 'Sub' $P1710 = "104_1299591517.57" 
    $P1709."add_method"(type_obj, "add_role", $P1710)
    get_how $P1711, type_obj
    .const 'Sub' $P1712 = "105_1299591517.57" 
    $P1711."add_method"(type_obj, "add_collision", $P1712)
    get_how $P1713, type_obj
    .const 'Sub' $P1714 = "106_1299591517.57" 
    $P1713."add_method"(type_obj, "compose", $P1714)
    get_how $P1715, type_obj
    .const 'Sub' $P1716 = "108_1299591517.57" 
    $P1715."add_method"(type_obj, "methods", $P1716)
    get_how $P1717, type_obj
    .const 'Sub' $P1718 = "110_1299591517.57" 
    $P1717."add_method"(type_obj, "method_table", $P1718)
    get_how $P1719, type_obj
    .const 'Sub' $P1720 = "111_1299591517.57" 
    $P1719."add_method"(type_obj, "collisions", $P1720)
    get_how $P1721, type_obj
    .const 'Sub' $P1722 = "112_1299591517.57" 
    $P1721."add_method"(type_obj, "name", $P1722)
    get_how $P1723, type_obj
    .const 'Sub' $P1724 = "113_1299591517.57" 
    $P1723."add_method"(type_obj, "attributes", $P1724)
    get_how $P1725, type_obj
    .const 'Sub' $P1726 = "115_1299591517.57" 
    $P1725."add_method"(type_obj, "roles", $P1726)
    get_how $P1727, type_obj
    .const 'Sub' $P1728 = "116_1299591517.57" 
    $P1727."add_method"(type_obj, "instance_of", $P1728)
    get_how $P1729, type_obj
    $P1730 = $P1729."compose"(type_obj)
    .return ($P1730)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "new"  :subid("97_1299591517.57") :outer("96_1299591517.57")
    .param pmc param_1413
    .param pmc param_1414 :named("name")
    .param pmc param_1415 :named("instance_of")
.annotate 'line', 603
    .lex "self", param_1413
    .lex "$name", param_1414
    .lex "$instance_of", param_1415
.annotate 'line', 604
    new $P1416, "Undef"
    .lex "$obj", $P1416
    find_lex $P1417, "self"
    repr_instance_of $P1418, $P1417
    store_lex "$obj", $P1418
.annotate 'line', 605
    find_lex $P1419, "$obj"
    find_lex $P1420, "$name"
    find_lex $P1421, "$instance_of"
    $P1419."BUILD"($P1420 :named("name"), $P1421 :named("instance_of"))
    find_lex $P1422, "$obj"
.annotate 'line', 603
    .return ($P1422)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "BUILD"  :subid("98_1299591517.57") :outer("96_1299591517.57")
    .param pmc param_1424
    .param pmc param_1425 :named("name")
    .param pmc param_1426 :named("instance_of")
.annotate 'line', 609
    .lex "self", param_1424
    .lex "$name", param_1425
    .lex "$instance_of", param_1426
.annotate 'line', 610
    find_lex $P1427, "$name"
    find_lex $P1428, "self"
    get_global $P1429, "$?CLASS"
    setattribute $P1428, $P1429, "$!name", $P1427
.annotate 'line', 611
    find_lex $P1430, "$instance_of"
    find_lex $P1431, "self"
    get_global $P1432, "$?CLASS"
    setattribute $P1431, $P1432, "$!instance_of", $P1430
.annotate 'line', 609
    .return ($P1430)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "new_type"  :subid("99_1299591517.57") :outer("96_1299591517.57")
    .param pmc param_1434
    .param pmc param_1439 :named("instance_of")
    .param pmc param_1435 :optional :named("name")
    .param int has_param_1435 :opt_flag
    .param pmc param_1437 :optional :named("repr")
    .param int has_param_1437 :opt_flag
.annotate 'line', 616
    .lex "self", param_1434
    if has_param_1435, optparam_304
    new $P1436, "String"
    assign $P1436, "<anon>"
    set param_1435, $P1436
  optparam_304:
    .lex "$name", param_1435
    if has_param_1437, optparam_305
    new $P1438, "String"
    assign $P1438, "P6opaque"
    set param_1437, $P1438
  optparam_305:
    .lex "$repr", param_1437
    .lex "$instance_of", param_1439
.annotate 'line', 617
    new $P1440, "Undef"
    .lex "$metarole", $P1440
    find_lex $P1441, "self"
    find_lex $P1442, "$name"
    find_lex $P1443, "$instance_of"
    $P1444 = $P1441."new"($P1442 :named("name"), $P1443 :named("instance_of"))
    store_lex "$metarole", $P1444
.annotate 'line', 618
    find_lex $P1445, "$metarole"
    find_lex $P1446, "$repr"
    set $S1447, $P1446
    repr_type_object_for $P1448, $P1445, $S1447
.annotate 'line', 616
    .return ($P1448)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_method"  :subid("100_1299591517.57") :outer("96_1299591517.57")
    .param pmc param_1450
    .param pmc param_1451
    .param pmc param_1452
    .param pmc param_1453
.annotate 'line', 621
    .lex "self", param_1450
    .lex "$obj", param_1451
    .lex "$name", param_1452
    .lex "$code_obj", param_1453
.annotate 'line', 622
    find_lex $P1455, "$name"
    find_lex $P1456, "self"
    get_global $P1457, "$?CLASS"
    getattribute $P1458, $P1456, $P1457, "%!methods"
    unless_null $P1458, vivify_306
    $P1458 = root_new ['parrot';'Hash']
  vivify_306:
    set $P1459, $P1458[$P1455]
    unless_null $P1459, vivify_307
    new $P1459, "Undef"
  vivify_307:
    unless $P1459, if_1454_end
.annotate 'line', 623
    new $P1460, "String"
    assign $P1460, "This role already has a method named "
    find_lex $P1461, "$name"
    concat $P1462, $P1460, $P1461
    die $P1462
  if_1454_end:
.annotate 'line', 625
    find_lex $P1463, "$code_obj"
    find_lex $P1464, "$name"
    find_lex $P1465, "self"
    get_global $P1466, "$?CLASS"
    getattribute $P1467, $P1465, $P1466, "%!methods"
    unless_null $P1467, vivify_308
    $P1467 = root_new ['parrot';'Hash']
    setattribute $P1465, $P1466, "%!methods", $P1467
  vivify_308:
    set $P1467[$P1464], $P1463
.annotate 'line', 621
    .return ($P1463)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_multi_method"  :subid("101_1299591517.57") :outer("96_1299591517.57")
    .param pmc param_1469
    .param pmc param_1470
    .param pmc param_1471
    .param pmc param_1472
.annotate 'line', 628
    .lex "self", param_1469
    .lex "$obj", param_1470
    .lex "$name", param_1471
    .lex "$code_obj", param_1472
.annotate 'line', 629
    $P1473 = root_new ['parrot';'Hash']
    .lex "%todo", $P1473
.annotate 'line', 628
    find_lex $P1474, "%todo"
.annotate 'line', 630
    find_lex $P1475, "$name"
    find_lex $P1476, "%todo"
    unless_null $P1476, vivify_309
    $P1476 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1476
  vivify_309:
    set $P1476["name"], $P1475
.annotate 'line', 631
    find_lex $P1477, "$code_obj"
    find_lex $P1478, "%todo"
    unless_null $P1478, vivify_310
    $P1478 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1478
  vivify_310:
    set $P1478["code"], $P1477
.annotate 'line', 632
    find_lex $P1479, "%todo"
    find_lex $P1480, "self"
    get_global $P1481, "$?CLASS"
    getattribute $P1482, $P1480, $P1481, "@!multi_methods_to_incorporate"
    unless_null $P1482, vivify_311
    $P1482 = root_new ['parrot';'ResizablePMCArray']
  vivify_311:
    set $N1483, $P1482
    set $I1484, $N1483
    find_lex $P1485, "self"
    get_global $P1486, "$?CLASS"
    getattribute $P1487, $P1485, $P1486, "@!multi_methods_to_incorporate"
    unless_null $P1487, vivify_312
    $P1487 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1485, $P1486, "@!multi_methods_to_incorporate", $P1487
  vivify_312:
    set $P1487[$I1484], $P1479
    find_lex $P1488, "$code_obj"
.annotate 'line', 628
    .return ($P1488)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_attribute"  :subid("102_1299591517.57") :outer("96_1299591517.57")
    .param pmc param_1490
    .param pmc param_1491
    .param pmc param_1492
.annotate 'line', 636
    .lex "self", param_1490
    .lex "$obj", param_1491
    .lex "$meta_attr", param_1492
.annotate 'line', 637
    new $P1493, "Undef"
    .lex "$name", $P1493
    find_lex $P1494, "$meta_attr"
    $P1495 = $P1494."name"()
    store_lex "$name", $P1495
.annotate 'line', 638
    find_lex $P1497, "$name"
    find_lex $P1498, "self"
    get_global $P1499, "$?CLASS"
    getattribute $P1500, $P1498, $P1499, "%!attributes"
    unless_null $P1500, vivify_313
    $P1500 = root_new ['parrot';'Hash']
  vivify_313:
    set $P1501, $P1500[$P1497]
    unless_null $P1501, vivify_314
    new $P1501, "Undef"
  vivify_314:
    unless $P1501, if_1496_end
.annotate 'line', 639
    new $P1502, "String"
    assign $P1502, "This role already has an attribute named "
    find_lex $P1503, "$name"
    concat $P1504, $P1502, $P1503
    die $P1504
  if_1496_end:
.annotate 'line', 641
    find_lex $P1505, "$meta_attr"
    find_lex $P1506, "$name"
    find_lex $P1507, "self"
    get_global $P1508, "$?CLASS"
    getattribute $P1509, $P1507, $P1508, "%!attributes"
    unless_null $P1509, vivify_315
    $P1509 = root_new ['parrot';'Hash']
    setattribute $P1507, $P1508, "%!attributes", $P1509
  vivify_315:
    set $P1509[$P1506], $P1505
.annotate 'line', 636
    .return ($P1505)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_parent"  :subid("103_1299591517.57") :outer("96_1299591517.57")
    .param pmc param_1511
    .param pmc param_1512
    .param pmc param_1513
.annotate 'line', 644
    .lex "self", param_1511
    .lex "$obj", param_1512
    .lex "$parent", param_1513
.annotate 'line', 645
    die "A role cannot inherit from a class in NQP"
.annotate 'line', 644
    .return ()
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_role"  :subid("104_1299591517.57") :outer("96_1299591517.57")
    .param pmc param_1515
    .param pmc param_1516
    .param pmc param_1517
.annotate 'line', 648
    .lex "self", param_1515
    .lex "$obj", param_1516
    .lex "$role", param_1517
.annotate 'line', 649
    find_lex $P1518, "$role"
    find_lex $P1519, "self"
    get_global $P1520, "$?CLASS"
    getattribute $P1521, $P1519, $P1520, "@!roles"
    unless_null $P1521, vivify_316
    $P1521 = root_new ['parrot';'ResizablePMCArray']
  vivify_316:
    set $N1522, $P1521
    set $I1523, $N1522
    find_lex $P1524, "self"
    get_global $P1525, "$?CLASS"
    getattribute $P1526, $P1524, $P1525, "@!roles"
    unless_null $P1526, vivify_317
    $P1526 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1524, $P1525, "@!roles", $P1526
  vivify_317:
    set $P1526[$I1523], $P1518
.annotate 'line', 648
    .return ($P1518)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_collision"  :subid("105_1299591517.57") :outer("96_1299591517.57")
    .param pmc param_1528
    .param pmc param_1529
    .param pmc param_1530
.annotate 'line', 652
    .lex "self", param_1528
    .lex "$obj", param_1529
    .lex "$colliding_name", param_1530
.annotate 'line', 653
    find_lex $P1531, "$colliding_name"
    find_lex $P1532, "self"
    get_global $P1533, "$?CLASS"
    getattribute $P1534, $P1532, $P1533, "@!collisions"
    unless_null $P1534, vivify_318
    $P1534 = root_new ['parrot';'ResizablePMCArray']
  vivify_318:
    set $N1535, $P1534
    set $I1536, $N1535
    find_lex $P1537, "self"
    get_global $P1538, "$?CLASS"
    getattribute $P1539, $P1537, $P1538, "@!collisions"
    unless_null $P1539, vivify_319
    $P1539 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1537, $P1538, "@!collisions", $P1539
  vivify_319:
    set $P1539[$I1536], $P1531
.annotate 'line', 652
    .return ($P1531)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "compose"  :subid("106_1299591517.57") :outer("96_1299591517.57")
    .param pmc param_1541
    .param pmc param_1542
.annotate 'line', 657
    .const 'Sub' $P1554 = "107_1299591517.57" 
    capture_lex $P1554
    .lex "self", param_1541
    .lex "$obj", param_1542
.annotate 'line', 660
    find_lex $P1544, "self"
    get_global $P1545, "$?CLASS"
    getattribute $P1546, $P1544, $P1545, "@!roles"
    unless_null $P1546, vivify_320
    $P1546 = root_new ['parrot';'ResizablePMCArray']
  vivify_320:
    unless $P1546, if_1543_end
.annotate 'line', 661
    find_lex $P1548, "self"
    get_global $P1549, "$?CLASS"
    getattribute $P1550, $P1548, $P1549, "@!roles"
    unless_null $P1550, vivify_321
    $P1550 = root_new ['parrot';'ResizablePMCArray']
  vivify_321:
    defined $I1551, $P1550
    unless $I1551, for_undef_322
    iter $P1547, $P1550
    new $P1578, 'ExceptionHandler'
    set_label $P1578, loop1577_handler
    $P1578."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1578
  loop1577_test:
    unless $P1547, loop1577_done
    shift $P1552, $P1547
  loop1577_redo:
    .const 'Sub' $P1554 = "107_1299591517.57" 
    capture_lex $P1554
    $P1554($P1552)
  loop1577_next:
    goto loop1577_test
  loop1577_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1579, exception, 'type'
    eq $P1579, .CONTROL_LOOP_NEXT, loop1577_next
    eq $P1579, .CONTROL_LOOP_REDO, loop1577_redo
  loop1577_done:
    pop_eh 
  for_undef_322:
.annotate 'line', 665
    get_hll_global $P1580, "RoleToRoleApplier"
    find_lex $P1581, "$obj"
    find_lex $P1582, "self"
    get_global $P1583, "$?CLASS"
    getattribute $P1584, $P1582, $P1583, "@!roles"
    unless_null $P1584, vivify_327
    $P1584 = root_new ['parrot';'ResizablePMCArray']
  vivify_327:
    $P1580."apply"($P1581, $P1584)
  if_1543_end:
.annotate 'line', 669
    new $P1585, "Integer"
    assign $P1585, 1
    find_lex $P1586, "self"
    get_global $P1587, "$?CLASS"
    setattribute $P1586, $P1587, "$!composed", $P1585
    find_lex $P1588, "$obj"
.annotate 'line', 657
    .return ($P1588)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1553"  :anon :subid("107_1299591517.57") :outer("106_1299591517.57")
    .param pmc param_1555
.annotate 'line', 661
    .lex "$_", param_1555
.annotate 'line', 662
    find_lex $P1556, "$_"
    find_lex $P1557, "self"
    get_global $P1558, "$?CLASS"
    getattribute $P1559, $P1557, $P1558, "@!done"
    unless_null $P1559, vivify_323
    $P1559 = root_new ['parrot';'ResizablePMCArray']
  vivify_323:
    set $N1560, $P1559
    set $I1561, $N1560
    find_lex $P1562, "self"
    get_global $P1563, "$?CLASS"
    getattribute $P1564, $P1562, $P1563, "@!done"
    unless_null $P1564, vivify_324
    $P1564 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1562, $P1563, "@!done", $P1564
  vivify_324:
    set $P1564[$I1561], $P1556
.annotate 'line', 663
    find_lex $P1565, "$_"
    get_how $P1566, $P1565
    find_lex $P1567, "$_"
    $P1568 = $P1566."instance_of"($P1567)
    find_lex $P1569, "self"
    get_global $P1570, "$?CLASS"
    getattribute $P1571, $P1569, $P1570, "@!done"
    unless_null $P1571, vivify_325
    $P1571 = root_new ['parrot';'ResizablePMCArray']
  vivify_325:
    set $N1572, $P1571
    set $I1573, $N1572
    find_lex $P1574, "self"
    get_global $P1575, "$?CLASS"
    getattribute $P1576, $P1574, $P1575, "@!done"
    unless_null $P1576, vivify_326
    $P1576 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1574, $P1575, "@!done", $P1576
  vivify_326:
    set $P1576[$I1573], $P1568
.annotate 'line', 661
    .return ($P1568)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "methods"  :subid("108_1299591517.57") :outer("96_1299591517.57")
    .param pmc param_1590
    .param pmc param_1591
.annotate 'line', 678
    .const 'Sub' $P1601 = "109_1299591517.57" 
    capture_lex $P1601
    .lex "self", param_1590
    .lex "$obj", param_1591
.annotate 'line', 679
    $P1592 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meths", $P1592
.annotate 'line', 678
    find_lex $P1593, "@meths"
.annotate 'line', 680
    find_lex $P1595, "self"
    get_global $P1596, "$?CLASS"
    getattribute $P1597, $P1595, $P1596, "%!methods"
    unless_null $P1597, vivify_328
    $P1597 = root_new ['parrot';'Hash']
  vivify_328:
    defined $I1598, $P1597
    unless $I1598, for_undef_329
    iter $P1594, $P1597
    new $P1608, 'ExceptionHandler'
    set_label $P1608, loop1607_handler
    $P1608."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1608
  loop1607_test:
    unless $P1594, loop1607_done
    shift $P1599, $P1594
  loop1607_redo:
    .const 'Sub' $P1601 = "109_1299591517.57" 
    capture_lex $P1601
    $P1601($P1599)
  loop1607_next:
    goto loop1607_test
  loop1607_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1609, exception, 'type'
    eq $P1609, .CONTROL_LOOP_NEXT, loop1607_next
    eq $P1609, .CONTROL_LOOP_REDO, loop1607_redo
  loop1607_done:
    pop_eh 
  for_undef_329:
    find_lex $P1610, "@meths"
.annotate 'line', 678
    .return ($P1610)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1600"  :anon :subid("109_1299591517.57") :outer("108_1299591517.57")
    .param pmc param_1602
.annotate 'line', 680
    .lex "$_", param_1602
.annotate 'line', 681
    find_lex $P1603, "@meths"
    find_lex $P1604, "$_"
    $P1605 = $P1604."value"()
    $P1606 = $P1603."push"($P1605)
.annotate 'line', 680
    .return ($P1606)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "method_table"  :subid("110_1299591517.57") :outer("96_1299591517.57")
    .param pmc param_1612
    .param pmc param_1613
.annotate 'line', 686
    .lex "self", param_1612
    .lex "$obj", param_1613
    find_lex $P1614, "self"
    get_global $P1615, "$?CLASS"
    getattribute $P1616, $P1614, $P1615, "%!methods"
    unless_null $P1616, vivify_330
    $P1616 = root_new ['parrot';'Hash']
  vivify_330:
    .return ($P1616)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "collisions"  :subid("111_1299591517.57") :outer("96_1299591517.57")
    .param pmc param_1618
    .param pmc param_1619
.annotate 'line', 690
    .lex "self", param_1618
    .lex "$obj", param_1619
    find_lex $P1620, "self"
    get_global $P1621, "$?CLASS"
    getattribute $P1622, $P1620, $P1621, "@!collisions"
    unless_null $P1622, vivify_331
    $P1622 = root_new ['parrot';'ResizablePMCArray']
  vivify_331:
    .return ($P1622)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "name"  :subid("112_1299591517.57") :outer("96_1299591517.57")
    .param pmc param_1624
    .param pmc param_1625
.annotate 'line', 694
    .lex "self", param_1624
    .lex "$obj", param_1625
    find_lex $P1626, "self"
    get_global $P1627, "$?CLASS"
    getattribute $P1628, $P1626, $P1627, "$!name"
    unless_null $P1628, vivify_332
    new $P1628, "Undef"
  vivify_332:
    .return ($P1628)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "attributes"  :subid("113_1299591517.57") :outer("96_1299591517.57")
    .param pmc param_1630
    .param pmc param_1631
.annotate 'line', 698
    .const 'Sub' $P1641 = "114_1299591517.57" 
    capture_lex $P1641
    .lex "self", param_1630
    .lex "$obj", param_1631
.annotate 'line', 699
    $P1632 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attrs", $P1632
.annotate 'line', 698
    find_lex $P1633, "@attrs"
.annotate 'line', 700
    find_lex $P1635, "self"
    get_global $P1636, "$?CLASS"
    getattribute $P1637, $P1635, $P1636, "%!attributes"
    unless_null $P1637, vivify_333
    $P1637 = root_new ['parrot';'Hash']
  vivify_333:
    defined $I1638, $P1637
    unless $I1638, for_undef_334
    iter $P1634, $P1637
    new $P1648, 'ExceptionHandler'
    set_label $P1648, loop1647_handler
    $P1648."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1648
  loop1647_test:
    unless $P1634, loop1647_done
    shift $P1639, $P1634
  loop1647_redo:
    .const 'Sub' $P1641 = "114_1299591517.57" 
    capture_lex $P1641
    $P1641($P1639)
  loop1647_next:
    goto loop1647_test
  loop1647_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1649, exception, 'type'
    eq $P1649, .CONTROL_LOOP_NEXT, loop1647_next
    eq $P1649, .CONTROL_LOOP_REDO, loop1647_redo
  loop1647_done:
    pop_eh 
  for_undef_334:
    find_lex $P1650, "@attrs"
.annotate 'line', 698
    .return ($P1650)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1640"  :anon :subid("114_1299591517.57") :outer("113_1299591517.57")
    .param pmc param_1642
.annotate 'line', 700
    .lex "$_", param_1642
.annotate 'line', 701
    find_lex $P1643, "@attrs"
    find_lex $P1644, "$_"
    $P1645 = $P1644."value"()
    $P1646 = $P1643."push"($P1645)
.annotate 'line', 700
    .return ($P1646)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "roles"  :subid("115_1299591517.57") :outer("96_1299591517.57")
    .param pmc param_1652
    .param pmc param_1653
.annotate 'line', 706
    .lex "self", param_1652
    .lex "$obj", param_1653
    find_lex $P1654, "self"
    get_global $P1655, "$?CLASS"
    getattribute $P1656, $P1654, $P1655, "@!roles"
    unless_null $P1656, vivify_335
    $P1656 = root_new ['parrot';'ResizablePMCArray']
  vivify_335:
    .return ($P1656)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "instance_of"  :subid("116_1299591517.57") :outer("96_1299591517.57")
    .param pmc param_1658
    .param pmc param_1659
.annotate 'line', 710
    .lex "self", param_1658
    .lex "$obj", param_1659
    find_lex $P1660, "self"
    get_global $P1661, "$?CLASS"
    getattribute $P1662, $P1660, $P1661, "$!instance_of"
    unless_null $P1662, vivify_336
    new $P1662, "Undef"
  vivify_336:
    .return ($P1662)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1731"  :subid("118_1299591517.57") :outer("10_1299591517.57")
.annotate 'line', 720
    .const 'Sub' $P2029 = "141_1299591517.57" 
    capture_lex $P2029
    .const 'Sub' $P2021 = "140_1299591517.57" 
    capture_lex $P2021
    .const 'Sub' $P1999 = "138_1299591517.57" 
    capture_lex $P1999
    .const 'Sub' $P1993 = "137_1299591517.57" 
    capture_lex $P1993
    .const 'Sub' $P1987 = "136_1299591517.57" 
    capture_lex $P1987
    .const 'Sub' $P1965 = "134_1299591517.57" 
    capture_lex $P1965
    .const 'Sub' $P1859 = "129_1299591517.57" 
    capture_lex $P1859
    .const 'Sub' $P1856 = "128_1299591517.57" 
    capture_lex $P1856
    .const 'Sub' $P1849 = "127_1299591517.57" 
    capture_lex $P1849
    .const 'Sub' $P1836 = "126_1299591517.57" 
    capture_lex $P1836
    .const 'Sub' $P1832 = "125_1299591517.57" 
    capture_lex $P1832
    .const 'Sub' $P1811 = "124_1299591517.57" 
    capture_lex $P1811
    .const 'Sub' $P1790 = "123_1299591517.57" 
    capture_lex $P1790
    .const 'Sub' $P1771 = "122_1299591517.57" 
    capture_lex $P1771
    .const 'Sub' $P1755 = "121_1299591517.57" 
    capture_lex $P1755
    .const 'Sub' $P1745 = "120_1299591517.57" 
    capture_lex $P1745
    .const 'Sub' $P1734 = "119_1299591517.57" 
    capture_lex $P1734
    get_global $P1733, "$?CLASS"
.annotate 'line', 880
    .const 'Sub' $P2021 = "140_1299591517.57" 
    newclosure $P2027, $P2021
.annotate 'line', 720
    .return ($P2027)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "" :load :init :subid("post337") :outer("118_1299591517.57")
.annotate 'line', 720
    get_hll_global $P1732, ["NQPParametricRoleHOW"], "_block1731" 
    .local pmc block
    set block, $P1732
    .const 'Sub' $P2029 = "141_1299591517.57" 
    capture_lex $P2029
    $P2029()
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block2028"  :anon :subid("141_1299591517.57") :outer("118_1299591517.57")
.annotate 'line', 720
    get_hll_global $P2030, "KnowHOW"
    $P2031 = $P2030."new_type"("NQPParametricRoleHOW" :named("name"))
    .local pmc type_obj
    set type_obj, $P2031
    set_hll_global "NQPParametricRoleHOW", type_obj
    set_global "$?CLASS", type_obj
    get_how $P2032, type_obj
    get_hll_global $P2033, "KnowHOWAttribute"
    $P2034 = $P2033."new"("$!name" :named("name"))
    $P2032."add_attribute"(type_obj, $P2034)
    get_how $P2035, type_obj
    get_hll_global $P2036, "KnowHOWAttribute"
    $P2037 = $P2036."new"("%!attributes" :named("name"))
    $P2035."add_attribute"(type_obj, $P2037)
    get_how $P2038, type_obj
    get_hll_global $P2039, "KnowHOWAttribute"
    $P2040 = $P2039."new"("%!methods" :named("name"))
    $P2038."add_attribute"(type_obj, $P2040)
    get_how $P2041, type_obj
    get_hll_global $P2042, "KnowHOWAttribute"
    $P2043 = $P2042."new"("@!multi_methods_to_incorporate" :named("name"))
    $P2041."add_attribute"(type_obj, $P2043)
    get_how $P2044, type_obj
    get_hll_global $P2045, "KnowHOWAttribute"
    $P2046 = $P2045."new"("@!roles" :named("name"))
    $P2044."add_attribute"(type_obj, $P2046)
    get_how $P2047, type_obj
    get_hll_global $P2048, "KnowHOWAttribute"
    $P2049 = $P2048."new"("$!composed" :named("name"))
    $P2047."add_attribute"(type_obj, $P2049)
    get_how $P2050, type_obj
    get_hll_global $P2051, "KnowHOWAttribute"
    $P2052 = $P2051."new"("$!body_block" :named("name"))
    $P2050."add_attribute"(type_obj, $P2052)
    get_how $P2053, type_obj
    .const 'Sub' $P2054 = "119_1299591517.57" 
    $P2053."add_method"(type_obj, "new", $P2054)
    get_how $P2055, type_obj
    .const 'Sub' $P2056 = "120_1299591517.57" 
    $P2055."add_method"(type_obj, "BUILD", $P2056)
    get_how $P2057, type_obj
    .const 'Sub' $P2058 = "121_1299591517.57" 
    $P2057."add_method"(type_obj, "new_type", $P2058)
    get_how $P2059, type_obj
    .const 'Sub' $P2060 = "122_1299591517.57" 
    $P2059."add_method"(type_obj, "add_method", $P2060)
    get_how $P2061, type_obj
    .const 'Sub' $P2062 = "123_1299591517.57" 
    $P2061."add_method"(type_obj, "add_multi_method", $P2062)
    get_how $P2063, type_obj
    .const 'Sub' $P2064 = "124_1299591517.57" 
    $P2063."add_method"(type_obj, "add_attribute", $P2064)
    get_how $P2065, type_obj
    .const 'Sub' $P2066 = "125_1299591517.57" 
    $P2065."add_method"(type_obj, "add_parent", $P2066)
    get_how $P2067, type_obj
    .const 'Sub' $P2068 = "126_1299591517.57" 
    $P2067."add_method"(type_obj, "add_role", $P2068)
    get_how $P2069, type_obj
    .const 'Sub' $P2070 = "127_1299591517.57" 
    $P2069."add_method"(type_obj, "compose", $P2070)
    get_how $P2071, type_obj
    .const 'Sub' $P2072 = "128_1299591517.57" 
    $P2071."add_method"(type_obj, "parametric", $P2072)
    get_how $P2073, type_obj
    .const 'Sub' $P2074 = "129_1299591517.57" 
    $P2073."add_method"(type_obj, "instantiate", $P2074)
    get_how $P2075, type_obj
    .const 'Sub' $P2076 = "134_1299591517.57" 
    $P2075."add_method"(type_obj, "methods", $P2076)
    get_how $P2077, type_obj
    .const 'Sub' $P2078 = "136_1299591517.57" 
    $P2077."add_method"(type_obj, "method_table", $P2078)
    get_how $P2079, type_obj
    .const 'Sub' $P2080 = "137_1299591517.57" 
    $P2079."add_method"(type_obj, "name", $P2080)
    get_how $P2081, type_obj
    .const 'Sub' $P2082 = "138_1299591517.57" 
    $P2081."add_method"(type_obj, "attributes", $P2082)
    get_how $P2083, type_obj
    .const 'Sub' $P2084 = "140_1299591517.57" 
    $P2083."add_method"(type_obj, "roles", $P2084)
    get_how $P2085, type_obj
    $P2086 = $P2085."compose"(type_obj)
    .return ($P2086)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "new"  :subid("119_1299591517.57") :outer("118_1299591517.57")
    .param pmc param_1735
    .param pmc param_1736 :named("name")
    .param pmc param_1737 :named("body_block")
.annotate 'line', 750
    .lex "self", param_1735
    .lex "$name", param_1736
    .lex "$body_block", param_1737
.annotate 'line', 751
    new $P1738, "Undef"
    .lex "$obj", $P1738
    find_lex $P1739, "self"
    repr_instance_of $P1740, $P1739
    store_lex "$obj", $P1740
.annotate 'line', 752
    find_lex $P1741, "$obj"
    find_lex $P1742, "$name"
    find_lex $P1743, "$body_block"
    $P1741."BUILD"($P1742 :named("name"), $P1743 :named("body_block"))
    find_lex $P1744, "$obj"
.annotate 'line', 750
    .return ($P1744)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "BUILD"  :subid("120_1299591517.57") :outer("118_1299591517.57")
    .param pmc param_1746
    .param pmc param_1747 :named("name")
    .param pmc param_1748 :named("body_block")
.annotate 'line', 756
    .lex "self", param_1746
    .lex "$name", param_1747
    .lex "$body_block", param_1748
.annotate 'line', 757
    find_lex $P1749, "$name"
    find_lex $P1750, "self"
    get_global $P1751, "$?CLASS"
    setattribute $P1750, $P1751, "$!name", $P1749
.annotate 'line', 758
    find_lex $P1752, "$body_block"
    find_lex $P1753, "self"
    get_global $P1754, "$?CLASS"
    setattribute $P1753, $P1754, "$!body_block", $P1752
.annotate 'line', 756
    .return ($P1752)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "new_type"  :subid("121_1299591517.57") :outer("118_1299591517.57")
    .param pmc param_1756
    .param pmc param_1757 :named("body_block")
    .param pmc param_1758 :optional :named("name")
    .param int has_param_1758 :opt_flag
    .param pmc param_1760 :optional :named("repr")
    .param int has_param_1760 :opt_flag
.annotate 'line', 763
    .lex "self", param_1756
    .lex "$body_block", param_1757
    if has_param_1758, optparam_338
    new $P1759, "String"
    assign $P1759, "<anon>"
    set param_1758, $P1759
  optparam_338:
    .lex "$name", param_1758
    if has_param_1760, optparam_339
    new $P1761, "String"
    assign $P1761, "P6opaque"
    set param_1760, $P1761
  optparam_339:
    .lex "$repr", param_1760
.annotate 'line', 764
    new $P1762, "Undef"
    .lex "$metarole", $P1762
    find_lex $P1763, "self"
    find_lex $P1764, "$name"
    find_lex $P1765, "$body_block"
    $P1766 = $P1763."new"($P1764 :named("name"), $P1765 :named("body_block"))
    store_lex "$metarole", $P1766
.annotate 'line', 765
    find_lex $P1767, "$metarole"
    find_lex $P1768, "$repr"
    set $S1769, $P1768
    repr_type_object_for $P1770, $P1767, $S1769
.annotate 'line', 763
    .return ($P1770)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_method"  :subid("122_1299591517.57") :outer("118_1299591517.57")
    .param pmc param_1772
    .param pmc param_1773
    .param pmc param_1774
    .param pmc param_1775
.annotate 'line', 768
    .lex "self", param_1772
    .lex "$obj", param_1773
    .lex "$name", param_1774
    .lex "$code_obj", param_1775
.annotate 'line', 769
    find_lex $P1777, "$name"
    find_lex $P1778, "self"
    get_global $P1779, "$?CLASS"
    getattribute $P1780, $P1778, $P1779, "%!methods"
    unless_null $P1780, vivify_340
    $P1780 = root_new ['parrot';'Hash']
  vivify_340:
    set $P1781, $P1780[$P1777]
    unless_null $P1781, vivify_341
    new $P1781, "Undef"
  vivify_341:
    unless $P1781, if_1776_end
.annotate 'line', 770
    new $P1782, "String"
    assign $P1782, "This role already has a method named "
    find_lex $P1783, "$name"
    concat $P1784, $P1782, $P1783
    die $P1784
  if_1776_end:
.annotate 'line', 772
    find_lex $P1785, "$code_obj"
    find_lex $P1786, "$name"
    find_lex $P1787, "self"
    get_global $P1788, "$?CLASS"
    getattribute $P1789, $P1787, $P1788, "%!methods"
    unless_null $P1789, vivify_342
    $P1789 = root_new ['parrot';'Hash']
    setattribute $P1787, $P1788, "%!methods", $P1789
  vivify_342:
    set $P1789[$P1786], $P1785
.annotate 'line', 768
    .return ($P1785)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_multi_method"  :subid("123_1299591517.57") :outer("118_1299591517.57")
    .param pmc param_1791
    .param pmc param_1792
    .param pmc param_1793
    .param pmc param_1794
.annotate 'line', 775
    .lex "self", param_1791
    .lex "$obj", param_1792
    .lex "$name", param_1793
    .lex "$code_obj", param_1794
.annotate 'line', 776
    $P1795 = root_new ['parrot';'Hash']
    .lex "%todo", $P1795
.annotate 'line', 775
    find_lex $P1796, "%todo"
.annotate 'line', 777
    find_lex $P1797, "$name"
    find_lex $P1798, "%todo"
    unless_null $P1798, vivify_343
    $P1798 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1798
  vivify_343:
    set $P1798["name"], $P1797
.annotate 'line', 778
    find_lex $P1799, "$code_obj"
    find_lex $P1800, "%todo"
    unless_null $P1800, vivify_344
    $P1800 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1800
  vivify_344:
    set $P1800["code"], $P1799
.annotate 'line', 779
    find_lex $P1801, "%todo"
    find_lex $P1802, "self"
    get_global $P1803, "$?CLASS"
    getattribute $P1804, $P1802, $P1803, "@!multi_methods_to_incorporate"
    unless_null $P1804, vivify_345
    $P1804 = root_new ['parrot';'ResizablePMCArray']
  vivify_345:
    set $N1805, $P1804
    set $I1806, $N1805
    find_lex $P1807, "self"
    get_global $P1808, "$?CLASS"
    getattribute $P1809, $P1807, $P1808, "@!multi_methods_to_incorporate"
    unless_null $P1809, vivify_346
    $P1809 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1807, $P1808, "@!multi_methods_to_incorporate", $P1809
  vivify_346:
    set $P1809[$I1806], $P1801
    find_lex $P1810, "$code_obj"
.annotate 'line', 775
    .return ($P1810)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_attribute"  :subid("124_1299591517.57") :outer("118_1299591517.57")
    .param pmc param_1812
    .param pmc param_1813
    .param pmc param_1814
.annotate 'line', 783
    .lex "self", param_1812
    .lex "$obj", param_1813
    .lex "$meta_attr", param_1814
.annotate 'line', 784
    new $P1815, "Undef"
    .lex "$name", $P1815
    find_lex $P1816, "$meta_attr"
    $P1817 = $P1816."name"()
    store_lex "$name", $P1817
.annotate 'line', 785
    find_lex $P1819, "$name"
    find_lex $P1820, "self"
    get_global $P1821, "$?CLASS"
    getattribute $P1822, $P1820, $P1821, "%!attributes"
    unless_null $P1822, vivify_347
    $P1822 = root_new ['parrot';'Hash']
  vivify_347:
    set $P1823, $P1822[$P1819]
    unless_null $P1823, vivify_348
    new $P1823, "Undef"
  vivify_348:
    unless $P1823, if_1818_end
.annotate 'line', 786
    new $P1824, "String"
    assign $P1824, "This role already has an attribute named "
    find_lex $P1825, "$name"
    concat $P1826, $P1824, $P1825
    die $P1826
  if_1818_end:
.annotate 'line', 788
    find_lex $P1827, "$meta_attr"
    find_lex $P1828, "$name"
    find_lex $P1829, "self"
    get_global $P1830, "$?CLASS"
    getattribute $P1831, $P1829, $P1830, "%!attributes"
    unless_null $P1831, vivify_349
    $P1831 = root_new ['parrot';'Hash']
    setattribute $P1829, $P1830, "%!attributes", $P1831
  vivify_349:
    set $P1831[$P1828], $P1827
.annotate 'line', 783
    .return ($P1827)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_parent"  :subid("125_1299591517.57") :outer("118_1299591517.57")
    .param pmc param_1833
    .param pmc param_1834
    .param pmc param_1835
.annotate 'line', 791
    .lex "self", param_1833
    .lex "$obj", param_1834
    .lex "$parent", param_1835
.annotate 'line', 792
    die "A role cannot inherit from a class"
.annotate 'line', 791
    .return ()
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_role"  :subid("126_1299591517.57") :outer("118_1299591517.57")
    .param pmc param_1837
    .param pmc param_1838
    .param pmc param_1839
.annotate 'line', 795
    .lex "self", param_1837
    .lex "$obj", param_1838
    .lex "$role", param_1839
.annotate 'line', 796
    find_lex $P1840, "$role"
    find_lex $P1841, "self"
    get_global $P1842, "$?CLASS"
    getattribute $P1843, $P1841, $P1842, "@!roles"
    unless_null $P1843, vivify_350
    $P1843 = root_new ['parrot';'ResizablePMCArray']
  vivify_350:
    set $N1844, $P1843
    set $I1845, $N1844
    find_lex $P1846, "self"
    get_global $P1847, "$?CLASS"
    getattribute $P1848, $P1846, $P1847, "@!roles"
    unless_null $P1848, vivify_351
    $P1848 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1846, $P1847, "@!roles", $P1848
  vivify_351:
    set $P1848[$I1845], $P1840
.annotate 'line', 795
    .return ($P1840)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "compose"  :subid("127_1299591517.57") :outer("118_1299591517.57")
    .param pmc param_1850
    .param pmc param_1851
.annotate 'line', 800
    .lex "self", param_1850
    .lex "$obj", param_1851
.annotate 'line', 801
    new $P1852, "Integer"
    assign $P1852, 1
    find_lex $P1853, "self"
    get_global $P1854, "$?CLASS"
    setattribute $P1853, $P1854, "$!composed", $P1852
    find_lex $P1855, "$obj"
.annotate 'line', 800
    .return ($P1855)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "parametric"  :subid("128_1299591517.57") :outer("118_1299591517.57")
    .param pmc param_1857
    .param pmc param_1858
.annotate 'line', 811
    .lex "self", param_1857
    .lex "$obj", param_1858
    .return (1)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "instantiate"  :subid("129_1299591517.57") :outer("118_1299591517.57")
    .param pmc param_1862
    .param pmc param_1863
    .param pmc param_1864
.annotate 'line', 817
    .const 'Sub' $P1943 = "133_1299591517.57" 
    capture_lex $P1943
    .const 'Sub' $P1922 = "132_1299591517.57" 
    capture_lex $P1922
    .const 'Sub' $P1901 = "131_1299591517.57" 
    capture_lex $P1901
    .const 'Sub' $P1883 = "130_1299591517.57" 
    capture_lex $P1883
    new $P1861, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1861, control_1860
    push_eh $P1861
    .lex "self", param_1862
    .lex "$obj", param_1863
    .lex "$class_arg", param_1864
.annotate 'line', 823
    new $P1865, "Undef"
    .lex "$irole", $P1865
.annotate 'line', 820
    find_lex $P1866, "self"
    get_global $P1867, "$?CLASS"
    getattribute $P1868, $P1866, $P1867, "$!body_block"
    unless_null $P1868, vivify_352
    new $P1868, "Undef"
  vivify_352:
    find_lex $P1869, "$class_arg"
    $P1868($P1869)
.annotate 'line', 823
    get_hll_global $P1870, "NQPConcreteRoleHOW"
    find_lex $P1871, "self"
    get_global $P1872, "$?CLASS"
    getattribute $P1873, $P1871, $P1872, "$!name"
    unless_null $P1873, vivify_353
    new $P1873, "Undef"
  vivify_353:
    find_lex $P1874, "$obj"
    $P1875 = $P1870."new_type"($P1873 :named("name"), $P1874 :named("instance_of"))
    store_lex "$irole", $P1875
.annotate 'line', 827
    find_lex $P1877, "self"
    get_global $P1878, "$?CLASS"
    getattribute $P1879, $P1877, $P1878, "%!attributes"
    unless_null $P1879, vivify_354
    $P1879 = root_new ['parrot';'Hash']
  vivify_354:
    defined $I1880, $P1879
    unless $I1880, for_undef_355
    iter $P1876, $P1879
    new $P1892, 'ExceptionHandler'
    set_label $P1892, loop1891_handler
    $P1892."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1892
  loop1891_test:
    unless $P1876, loop1891_done
    shift $P1881, $P1876
  loop1891_redo:
    .const 'Sub' $P1883 = "130_1299591517.57" 
    capture_lex $P1883
    $P1883($P1881)
  loop1891_next:
    goto loop1891_test
  loop1891_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1893, exception, 'type'
    eq $P1893, .CONTROL_LOOP_NEXT, loop1891_next
    eq $P1893, .CONTROL_LOOP_REDO, loop1891_redo
  loop1891_done:
    pop_eh 
  for_undef_355:
.annotate 'line', 833
    find_lex $P1895, "self"
    get_global $P1896, "$?CLASS"
    getattribute $P1897, $P1895, $P1896, "%!methods"
    unless_null $P1897, vivify_356
    $P1897 = root_new ['parrot';'Hash']
  vivify_356:
    defined $I1898, $P1897
    unless $I1898, for_undef_357
    iter $P1894, $P1897
    new $P1913, 'ExceptionHandler'
    set_label $P1913, loop1912_handler
    $P1913."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1913
  loop1912_test:
    unless $P1894, loop1912_done
    shift $P1899, $P1894
  loop1912_redo:
    .const 'Sub' $P1901 = "131_1299591517.57" 
    capture_lex $P1901
    $P1901($P1899)
  loop1912_next:
    goto loop1912_test
  loop1912_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1914, exception, 'type'
    eq $P1914, .CONTROL_LOOP_NEXT, loop1912_next
    eq $P1914, .CONTROL_LOOP_REDO, loop1912_redo
  loop1912_done:
    pop_eh 
  for_undef_357:
.annotate 'line', 836
    find_lex $P1916, "self"
    get_global $P1917, "$?CLASS"
    getattribute $P1918, $P1916, $P1917, "@!multi_methods_to_incorporate"
    unless_null $P1918, vivify_358
    $P1918 = root_new ['parrot';'ResizablePMCArray']
  vivify_358:
    defined $I1919, $P1918
    unless $I1919, for_undef_359
    iter $P1915, $P1918
    new $P1934, 'ExceptionHandler'
    set_label $P1934, loop1933_handler
    $P1934."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1934
  loop1933_test:
    unless $P1915, loop1933_done
    shift $P1920, $P1915
  loop1933_redo:
    .const 'Sub' $P1922 = "132_1299591517.57" 
    capture_lex $P1922
    $P1922($P1920)
  loop1933_next:
    goto loop1933_test
  loop1933_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1935, exception, 'type'
    eq $P1935, .CONTROL_LOOP_NEXT, loop1933_next
    eq $P1935, .CONTROL_LOOP_REDO, loop1933_redo
  loop1933_done:
    pop_eh 
  for_undef_359:
.annotate 'line', 841
    find_lex $P1937, "self"
    get_global $P1938, "$?CLASS"
    getattribute $P1939, $P1937, $P1938, "@!roles"
    unless_null $P1939, vivify_364
    $P1939 = root_new ['parrot';'ResizablePMCArray']
  vivify_364:
    defined $I1940, $P1939
    unless $I1940, for_undef_365
    iter $P1936, $P1939
    new $P1957, 'ExceptionHandler'
    set_label $P1957, loop1956_handler
    $P1957."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1957
  loop1956_test:
    unless $P1936, loop1956_done
    shift $P1941, $P1936
  loop1956_redo:
    .const 'Sub' $P1943 = "133_1299591517.57" 
    capture_lex $P1943
    $P1943($P1941)
  loop1956_next:
    goto loop1956_test
  loop1956_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1958, exception, 'type'
    eq $P1958, .CONTROL_LOOP_NEXT, loop1956_next
    eq $P1958, .CONTROL_LOOP_REDO, loop1956_redo
  loop1956_done:
    pop_eh 
  for_undef_365:
.annotate 'line', 847
    find_lex $P1959, "$irole"
    get_how $P1960, $P1959
    find_lex $P1961, "$irole"
    $P1960."compose"($P1961)
.annotate 'line', 848
    new $P1962, "Exception"
    set $P1962['type'], .CONTROL_RETURN
    find_lex $P1963, "$irole"
    setattribute $P1962, 'payload', $P1963
    throw $P1962
.annotate 'line', 817
    .return ()
  control_1860:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1964, exception, "payload"
    .return ($P1964)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1882"  :anon :subid("130_1299591517.57") :outer("129_1299591517.57")
    .param pmc param_1884
.annotate 'line', 827
    .lex "$_", param_1884
.annotate 'line', 828
    find_lex $P1885, "$irole"
    get_how $P1886, $P1885
    find_lex $P1887, "$irole"
    find_lex $P1888, "$_"
    $P1889 = $P1888."value"()
    $P1890 = $P1886."add_attribute"($P1887, $P1889)
.annotate 'line', 827
    .return ($P1890)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1900"  :anon :subid("131_1299591517.57") :outer("129_1299591517.57")
    .param pmc param_1902
.annotate 'line', 833
    .lex "$_", param_1902
.annotate 'line', 834
    find_lex $P1903, "$irole"
    get_how $P1904, $P1903
    find_lex $P1905, "$irole"
    find_lex $P1906, "$_"
    $P1907 = $P1906."key"()
    find_lex $P1908, "$_"
    $P1909 = $P1908."value"()
    clone $P1910, $P1909
    $P1911 = $P1904."add_method"($P1905, $P1907, $P1910)
.annotate 'line', 833
    .return ($P1911)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1921"  :anon :subid("132_1299591517.57") :outer("129_1299591517.57")
    .param pmc param_1923
.annotate 'line', 836
    .lex "$_", param_1923
.annotate 'line', 837
    find_lex $P1924, "$irole"
    get_how $P1925, $P1924
    find_lex $P1926, "$irole"
    find_lex $P1927, "$_"
    unless_null $P1927, vivify_360
    $P1927 = root_new ['parrot';'Hash']
  vivify_360:
    set $P1928, $P1927["name"]
    unless_null $P1928, vivify_361
    new $P1928, "Undef"
  vivify_361:
    find_lex $P1929, "$_"
    unless_null $P1929, vivify_362
    $P1929 = root_new ['parrot';'Hash']
  vivify_362:
    set $P1930, $P1929["code"]
    unless_null $P1930, vivify_363
    new $P1930, "Undef"
  vivify_363:
    clone $P1931, $P1930
    $P1932 = $P1925."add_multi_method"($P1926, $P1928, $P1931)
.annotate 'line', 836
    .return ($P1932)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1942"  :anon :subid("133_1299591517.57") :outer("129_1299591517.57")
    .param pmc param_1945
.annotate 'line', 842
    new $P1944, "Undef"
    .lex "$instantiated", $P1944
    .lex "$_", param_1945
    find_lex $P1946, "$irole"
    get_how $P1947, $P1946
    find_lex $P1948, "$irole"
    find_lex $P1949, "$class_arg"
    $P1950 = $P1947."instantiate"($P1948, $P1949)
    store_lex "$instantiated", $P1950
.annotate 'line', 843
    find_lex $P1951, "$irole"
    get_how $P1952, $P1951
    find_lex $P1953, "$irole"
    find_lex $P1954, "$instantiated"
    $P1955 = $P1952."add_role"($P1953, $P1954)
.annotate 'line', 841
    .return ($P1955)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "methods"  :subid("134_1299591517.57") :outer("118_1299591517.57")
    .param pmc param_1966
    .param pmc param_1967
.annotate 'line', 856
    .const 'Sub' $P1977 = "135_1299591517.57" 
    capture_lex $P1977
    .lex "self", param_1966
    .lex "$obj", param_1967
.annotate 'line', 857
    $P1968 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meths", $P1968
.annotate 'line', 856
    find_lex $P1969, "@meths"
.annotate 'line', 858
    find_lex $P1971, "self"
    get_global $P1972, "$?CLASS"
    getattribute $P1973, $P1971, $P1972, "%!methods"
    unless_null $P1973, vivify_366
    $P1973 = root_new ['parrot';'Hash']
  vivify_366:
    defined $I1974, $P1973
    unless $I1974, for_undef_367
    iter $P1970, $P1973
    new $P1984, 'ExceptionHandler'
    set_label $P1984, loop1983_handler
    $P1984."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1984
  loop1983_test:
    unless $P1970, loop1983_done
    shift $P1975, $P1970
  loop1983_redo:
    .const 'Sub' $P1977 = "135_1299591517.57" 
    capture_lex $P1977
    $P1977($P1975)
  loop1983_next:
    goto loop1983_test
  loop1983_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1985, exception, 'type'
    eq $P1985, .CONTROL_LOOP_NEXT, loop1983_next
    eq $P1985, .CONTROL_LOOP_REDO, loop1983_redo
  loop1983_done:
    pop_eh 
  for_undef_367:
    find_lex $P1986, "@meths"
.annotate 'line', 856
    .return ($P1986)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1976"  :anon :subid("135_1299591517.57") :outer("134_1299591517.57")
    .param pmc param_1978
.annotate 'line', 858
    .lex "$_", param_1978
.annotate 'line', 859
    find_lex $P1979, "@meths"
    find_lex $P1980, "$_"
    $P1981 = $P1980."value"()
    $P1982 = $P1979."push"($P1981)
.annotate 'line', 858
    .return ($P1982)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "method_table"  :subid("136_1299591517.57") :outer("118_1299591517.57")
    .param pmc param_1988
    .param pmc param_1989
.annotate 'line', 864
    .lex "self", param_1988
    .lex "$obj", param_1989
    find_lex $P1990, "self"
    get_global $P1991, "$?CLASS"
    getattribute $P1992, $P1990, $P1991, "%!methods"
    unless_null $P1992, vivify_368
    $P1992 = root_new ['parrot';'Hash']
  vivify_368:
    .return ($P1992)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "name"  :subid("137_1299591517.57") :outer("118_1299591517.57")
    .param pmc param_1994
    .param pmc param_1995
.annotate 'line', 868
    .lex "self", param_1994
    .lex "$obj", param_1995
    find_lex $P1996, "self"
    get_global $P1997, "$?CLASS"
    getattribute $P1998, $P1996, $P1997, "$!name"
    unless_null $P1998, vivify_369
    new $P1998, "Undef"
  vivify_369:
    .return ($P1998)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "attributes"  :subid("138_1299591517.57") :outer("118_1299591517.57")
    .param pmc param_2000
    .param pmc param_2001
.annotate 'line', 872
    .const 'Sub' $P2011 = "139_1299591517.57" 
    capture_lex $P2011
    .lex "self", param_2000
    .lex "$obj", param_2001
.annotate 'line', 873
    $P2002 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attrs", $P2002
.annotate 'line', 872
    find_lex $P2003, "@attrs"
.annotate 'line', 874
    find_lex $P2005, "self"
    get_global $P2006, "$?CLASS"
    getattribute $P2007, $P2005, $P2006, "%!attributes"
    unless_null $P2007, vivify_370
    $P2007 = root_new ['parrot';'Hash']
  vivify_370:
    defined $I2008, $P2007
    unless $I2008, for_undef_371
    iter $P2004, $P2007
    new $P2018, 'ExceptionHandler'
    set_label $P2018, loop2017_handler
    $P2018."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2018
  loop2017_test:
    unless $P2004, loop2017_done
    shift $P2009, $P2004
  loop2017_redo:
    .const 'Sub' $P2011 = "139_1299591517.57" 
    capture_lex $P2011
    $P2011($P2009)
  loop2017_next:
    goto loop2017_test
  loop2017_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2019, exception, 'type'
    eq $P2019, .CONTROL_LOOP_NEXT, loop2017_next
    eq $P2019, .CONTROL_LOOP_REDO, loop2017_redo
  loop2017_done:
    pop_eh 
  for_undef_371:
    find_lex $P2020, "@attrs"
.annotate 'line', 872
    .return ($P2020)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block2010"  :anon :subid("139_1299591517.57") :outer("138_1299591517.57")
    .param pmc param_2012
.annotate 'line', 874
    .lex "$_", param_2012
.annotate 'line', 875
    find_lex $P2013, "@attrs"
    find_lex $P2014, "$_"
    $P2015 = $P2014."value"()
    $P2016 = $P2013."push"($P2015)
.annotate 'line', 874
    .return ($P2016)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "roles"  :subid("140_1299591517.57") :outer("118_1299591517.57")
    .param pmc param_2022
    .param pmc param_2023
.annotate 'line', 880
    .lex "self", param_2022
    .lex "$obj", param_2023
    find_lex $P2024, "self"
    get_global $P2025, "$?CLASS"
    getattribute $P2026, $P2024, $P2025, "@!roles"
    unless_null $P2026, vivify_372
    $P2026 = root_new ['parrot';'ResizablePMCArray']
  vivify_372:
    .return ($P2026)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block2087"  :subid("142_1299591517.57") :outer("10_1299591517.57")
.annotate 'line', 886
    .const 'Sub' $P2296 = "152_1299591517.57" 
    capture_lex $P2296
    .const 'Sub' $P2160 = "147_1299591517.57" 
    capture_lex $P2160
    .const 'Sub' $P2125 = "145_1299591517.57" 
    capture_lex $P2125
    .const 'Sub' $P2090 = "143_1299591517.57" 
    capture_lex $P2090
    get_global $P2089, "$?CLASS"
.annotate 'line', 888
    .const 'Sub' $P2090 = "143_1299591517.57" 
    newclosure $P2124, $P2090
    .lex "has_method", $P2124
.annotate 'line', 896
    .const 'Sub' $P2125 = "145_1299591517.57" 
    newclosure $P2157, $P2125
    .lex "has_attribute", $P2157
.annotate 'line', 886
    find_lex $P2158, "has_method"
    find_lex $P2159, "has_attribute"
.annotate 'line', 904
    .const 'Sub' $P2160 = "147_1299591517.57" 
    newclosure $P2294, $P2160
.annotate 'line', 886
    .return ($P2294)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "" :load :init :subid("post373") :outer("142_1299591517.57")
.annotate 'line', 886
    get_hll_global $P2088, ["RoleToClassApplier"], "_block2087" 
    .local pmc block
    set block, $P2088
    .const 'Sub' $P2296 = "152_1299591517.57" 
    capture_lex $P2296
    $P2296()
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block2295"  :anon :subid("152_1299591517.57") :outer("142_1299591517.57")
.annotate 'line', 886
    get_hll_global $P2297, "KnowHOW"
    $P2298 = $P2297."new_type"("RoleToClassApplier" :named("name"))
    .local pmc type_obj
    set type_obj, $P2298
    set_hll_global "RoleToClassApplier", type_obj
    set_global "$?CLASS", type_obj
    get_how $P2299, type_obj
    .const 'Sub' $P2300 = "147_1299591517.57" 
    $P2299."add_method"(type_obj, "apply", $P2300)
    get_how $P2301, type_obj
    $P2302 = $P2301."compose"(type_obj)
    .return ($P2302)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "has_method"  :subid("143_1299591517.57") :outer("142_1299591517.57")
    .param pmc param_2093
    .param pmc param_2094
    .param pmc param_2095
.annotate 'line', 888
    .const 'Sub' $P2107 = "144_1299591517.57" 
    capture_lex $P2107
    new $P2092, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2092, control_2091
    push_eh $P2092
    .lex "$target", param_2093
    .lex "$name", param_2094
    .lex "$local", param_2095
.annotate 'line', 889
    $P2096 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P2096
    find_lex $P2097, "$target"
    get_how $P2098, $P2097
    find_lex $P2099, "$target"
    find_lex $P2100, "$local"
    $P2101 = $P2098."methods"($P2099, $P2100 :named("local"))
    store_lex "@methods", $P2101
.annotate 'line', 890
    find_lex $P2103, "@methods"
    defined $I2104, $P2103
    unless $I2104, for_undef_374
    iter $P2102, $P2103
    new $P2119, 'ExceptionHandler'
    set_label $P2119, loop2118_handler
    $P2119."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2119
  loop2118_test:
    unless $P2102, loop2118_done
    shift $P2105, $P2102
  loop2118_redo:
    .const 'Sub' $P2107 = "144_1299591517.57" 
    capture_lex $P2107
    $P2107($P2105)
  loop2118_next:
    goto loop2118_test
  loop2118_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2120, exception, 'type'
    eq $P2120, .CONTROL_LOOP_NEXT, loop2118_next
    eq $P2120, .CONTROL_LOOP_REDO, loop2118_redo
  loop2118_done:
    pop_eh 
  for_undef_374:
.annotate 'line', 893
    new $P2121, "Exception"
    set $P2121['type'], .CONTROL_RETURN
    new $P2122, "Integer"
    assign $P2122, 0
    setattribute $P2121, 'payload', $P2122
    throw $P2121
.annotate 'line', 888
    .return ()
  control_2091:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2123, exception, "payload"
    .return ($P2123)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "_block2106"  :anon :subid("144_1299591517.57") :outer("143_1299591517.57")
    .param pmc param_2108
.annotate 'line', 890
    .lex "$_", param_2108
.annotate 'line', 891
    find_lex $P2111, "$_"
    set $S2112, $P2111
    find_lex $P2113, "$name"
    set $S2114, $P2113
    iseq $I2115, $S2112, $S2114
    if $I2115, if_2110
    new $P2109, 'Integer'
    set $P2109, $I2115
    goto if_2110_end
  if_2110:
    new $P2116, "Exception"
    set $P2116['type'], .CONTROL_RETURN
    new $P2117, "Integer"
    assign $P2117, 1
    setattribute $P2116, 'payload', $P2117
    throw $P2116
  if_2110_end:
.annotate 'line', 890
    .return ($P2109)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "has_attribute"  :subid("145_1299591517.57") :outer("142_1299591517.57")
    .param pmc param_2128
    .param pmc param_2129
.annotate 'line', 896
    .const 'Sub' $P2140 = "146_1299591517.57" 
    capture_lex $P2140
    new $P2127, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2127, control_2126
    push_eh $P2127
    .lex "$target", param_2128
    .lex "$name", param_2129
.annotate 'line', 897
    $P2130 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attributes", $P2130
    find_lex $P2131, "$target"
    get_how $P2132, $P2131
    find_lex $P2133, "$target"
    $P2134 = $P2132."attributes"($P2133, 1 :named("local"))
    store_lex "@attributes", $P2134
.annotate 'line', 898
    find_lex $P2136, "@attributes"
    defined $I2137, $P2136
    unless $I2137, for_undef_375
    iter $P2135, $P2136
    new $P2152, 'ExceptionHandler'
    set_label $P2152, loop2151_handler
    $P2152."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2152
  loop2151_test:
    unless $P2135, loop2151_done
    shift $P2138, $P2135
  loop2151_redo:
    .const 'Sub' $P2140 = "146_1299591517.57" 
    capture_lex $P2140
    $P2140($P2138)
  loop2151_next:
    goto loop2151_test
  loop2151_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2153, exception, 'type'
    eq $P2153, .CONTROL_LOOP_NEXT, loop2151_next
    eq $P2153, .CONTROL_LOOP_REDO, loop2151_redo
  loop2151_done:
    pop_eh 
  for_undef_375:
.annotate 'line', 901
    new $P2154, "Exception"
    set $P2154['type'], .CONTROL_RETURN
    new $P2155, "Integer"
    assign $P2155, 0
    setattribute $P2154, 'payload', $P2155
    throw $P2154
.annotate 'line', 896
    .return ()
  control_2126:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2156, exception, "payload"
    .return ($P2156)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "_block2139"  :anon :subid("146_1299591517.57") :outer("145_1299591517.57")
    .param pmc param_2141
.annotate 'line', 898
    .lex "$_", param_2141
.annotate 'line', 899
    find_lex $P2144, "$_"
    $S2145 = $P2144."name"()
    find_lex $P2146, "$name"
    set $S2147, $P2146
    iseq $I2148, $S2145, $S2147
    if $I2148, if_2143
    new $P2142, 'Integer'
    set $P2142, $I2148
    goto if_2143_end
  if_2143:
    new $P2149, "Exception"
    set $P2149['type'], .CONTROL_RETURN
    new $P2150, "Integer"
    assign $P2150, 1
    setattribute $P2149, 'payload', $P2150
    throw $P2149
  if_2143_end:
.annotate 'line', 898
    .return ($P2142)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "apply"  :subid("147_1299591517.57") :outer("142_1299591517.57")
    .param pmc param_2161
    .param pmc param_2162
    .param pmc param_2163
.annotate 'line', 904
    .const 'Sub' $P2265 = "151_1299591517.57" 
    capture_lex $P2265
    .const 'Sub' $P2239 = "150_1299591517.57" 
    capture_lex $P2239
    .const 'Sub' $P2210 = "149_1299591517.57" 
    capture_lex $P2210
    .const 'Sub' $P2190 = "148_1299591517.57" 
    capture_lex $P2190
    .lex "self", param_2161
    .lex "$target", param_2162
    .lex "@roles", param_2163
.annotate 'line', 907
    new $P2164, "Undef"
    .lex "$to_compose", $P2164
.annotate 'line', 908
    new $P2165, "Undef"
    .lex "$to_compose_meta", $P2165
.annotate 'line', 923
    $P2166 = root_new ['parrot';'ResizablePMCArray']
    .lex "@collisions", $P2166
.annotate 'line', 932
    $P2167 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P2167
.annotate 'line', 940
    $P2168 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attributes", $P2168
.annotate 'line', 952
    $P2169 = root_new ['parrot';'ResizablePMCArray']
    .lex "@done", $P2169
.annotate 'line', 904
    find_lex $P2170, "$to_compose"
    find_lex $P2171, "$to_compose_meta"
.annotate 'line', 909
    find_lex $P2173, "@roles"
    set $N2174, $P2173
    iseq $I2175, $N2174, 1.0
    if $I2175, if_2172
.annotate 'line', 914
    get_hll_global $P2180, "NQPConcreteRoleHOW"
    get_hll_global $P2181, "NQPMu"
    $P2182 = $P2180."new_type"($P2181 :named("instance_of"))
    store_lex "$to_compose", $P2182
.annotate 'line', 915
    find_lex $P2183, "$to_compose"
    get_how $P2184, $P2183
    store_lex "$to_compose_meta", $P2184
.annotate 'line', 916
    find_lex $P2186, "@roles"
    defined $I2187, $P2186
    unless $I2187, for_undef_376
    iter $P2185, $P2186
    new $P2197, 'ExceptionHandler'
    set_label $P2197, loop2196_handler
    $P2197."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2197
  loop2196_test:
    unless $P2185, loop2196_done
    shift $P2188, $P2185
  loop2196_redo:
    .const 'Sub' $P2190 = "148_1299591517.57" 
    capture_lex $P2190
    $P2190($P2188)
  loop2196_next:
    goto loop2196_test
  loop2196_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2198, exception, 'type'
    eq $P2198, .CONTROL_LOOP_NEXT, loop2196_next
    eq $P2198, .CONTROL_LOOP_REDO, loop2196_redo
  loop2196_done:
    pop_eh 
  for_undef_376:
.annotate 'line', 919
    find_lex $P2199, "$to_compose_meta"
    find_lex $P2200, "$to_compose"
    $P2201 = $P2199."compose"($P2200)
    store_lex "$to_compose", $P2201
.annotate 'line', 913
    goto if_2172_end
  if_2172:
.annotate 'line', 910
    find_lex $P2176, "@roles"
    unless_null $P2176, vivify_377
    $P2176 = root_new ['parrot';'ResizablePMCArray']
  vivify_377:
    set $P2177, $P2176[0]
    unless_null $P2177, vivify_378
    new $P2177, "Undef"
  vivify_378:
    store_lex "$to_compose", $P2177
.annotate 'line', 911
    find_lex $P2178, "$to_compose"
    get_how $P2179, $P2178
    store_lex "$to_compose_meta", $P2179
  if_2172_end:
.annotate 'line', 923
    find_lex $P2202, "$to_compose_meta"
    find_lex $P2203, "$to_compose"
    $P2204 = $P2202."collisions"($P2203)
    store_lex "@collisions", $P2204
.annotate 'line', 924
    find_lex $P2206, "@collisions"
    defined $I2207, $P2206
    unless $I2207, for_undef_379
    iter $P2205, $P2206
    new $P2229, 'ExceptionHandler'
    set_label $P2229, loop2228_handler
    $P2229."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2229
  loop2228_test:
    unless $P2205, loop2228_done
    shift $P2208, $P2205
  loop2228_redo:
    .const 'Sub' $P2210 = "149_1299591517.57" 
    capture_lex $P2210
    $P2210($P2208)
  loop2228_next:
    goto loop2228_test
  loop2228_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2230, exception, 'type'
    eq $P2230, .CONTROL_LOOP_NEXT, loop2228_next
    eq $P2230, .CONTROL_LOOP_REDO, loop2228_redo
  loop2228_done:
    pop_eh 
  for_undef_379:
.annotate 'line', 932
    find_lex $P2231, "$to_compose_meta"
    find_lex $P2232, "$to_compose"
    $P2233 = $P2231."methods"($P2232)
    store_lex "@methods", $P2233
.annotate 'line', 933
    find_lex $P2235, "@methods"
    defined $I2236, $P2235
    unless $I2236, for_undef_380
    iter $P2234, $P2235
    new $P2255, 'ExceptionHandler'
    set_label $P2255, loop2254_handler
    $P2255."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2255
  loop2254_test:
    unless $P2234, loop2254_done
    shift $P2237, $P2234
  loop2254_redo:
    .const 'Sub' $P2239 = "150_1299591517.57" 
    capture_lex $P2239
    $P2239($P2237)
  loop2254_next:
    goto loop2254_test
  loop2254_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2256, exception, 'type'
    eq $P2256, .CONTROL_LOOP_NEXT, loop2254_next
    eq $P2256, .CONTROL_LOOP_REDO, loop2254_redo
  loop2254_done:
    pop_eh 
  for_undef_380:
.annotate 'line', 940
    find_lex $P2257, "$to_compose_meta"
    find_lex $P2258, "$to_compose"
    $P2259 = $P2257."attributes"($P2258)
    store_lex "@attributes", $P2259
.annotate 'line', 941
    find_lex $P2261, "@attributes"
    defined $I2262, $P2261
    unless $I2262, for_undef_381
    iter $P2260, $P2261
    new $P2289, 'ExceptionHandler'
    set_label $P2289, loop2288_handler
    $P2289."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2289
  loop2288_test:
    unless $P2260, loop2288_done
    shift $P2263, $P2260
  loop2288_redo:
    .const 'Sub' $P2265 = "151_1299591517.57" 
    capture_lex $P2265
    $P2265($P2263)
  loop2288_next:
    goto loop2288_test
  loop2288_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2290, exception, 'type'
    eq $P2290, .CONTROL_LOOP_NEXT, loop2288_next
    eq $P2290, .CONTROL_LOOP_REDO, loop2288_redo
  loop2288_done:
    pop_eh 
  for_undef_381:
    find_lex $P2291, "@done"
.annotate 'line', 953
    find_lex $P2292, "$to_compose"
    find_lex $P2293, "@done"
    unless_null $P2293, vivify_382
    $P2293 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@done", $P2293
  vivify_382:
    set $P2293[0], $P2292
.annotate 'line', 904
    .return ($P2292)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block2189"  :anon :subid("148_1299591517.57") :outer("147_1299591517.57")
    .param pmc param_2191
.annotate 'line', 916
    .lex "$_", param_2191
.annotate 'line', 917
    find_lex $P2192, "$to_compose_meta"
    find_lex $P2193, "$to_compose"
    find_lex $P2194, "$_"
    $P2195 = $P2192."add_role"($P2193, $P2194)
.annotate 'line', 916
    .return ($P2195)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block2209"  :anon :subid("149_1299591517.57") :outer("147_1299591517.57")
    .param pmc param_2211
.annotate 'line', 924
    .lex "$_", param_2211
.annotate 'line', 925
    find_lex $P2214, "$target"
    find_lex $P2215, "$_"
    set $S2216, $P2215
    $P2217 = "has_method"($P2214, $S2216, 1)
    unless $P2217, unless_2213
    set $P2212, $P2217
    goto unless_2213_end
  unless_2213:
.annotate 'line', 926
    new $P2218, 'String'
    set $P2218, "Method '"
    find_lex $P2219, "$_"
    concat $P2220, $P2218, $P2219
    concat $P2221, $P2220, "' collides and a resolution must be provided by the class '"
.annotate 'line', 927
    find_lex $P2222, "$target"
    get_how $P2223, $P2222
    find_lex $P2224, "$target"
    $S2225 = $P2223."name"($P2224)
    concat $P2226, $P2221, $S2225
.annotate 'line', 926
    concat $P2227, $P2226, "'"
.annotate 'line', 927
    die $P2227
  unless_2213_end:
.annotate 'line', 924
    .return ($P2212)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block2238"  :anon :subid("150_1299591517.57") :outer("147_1299591517.57")
    .param pmc param_2240
.annotate 'line', 933
    .lex "$_", param_2240
.annotate 'line', 934
    find_lex $P2243, "$target"
    find_lex $P2244, "$_"
    set $S2245, $P2244
    $P2246 = "has_method"($P2243, $S2245, 0)
    unless $P2246, unless_2242
    set $P2241, $P2246
    goto unless_2242_end
  unless_2242:
.annotate 'line', 935
    find_lex $P2247, "$target"
    get_how $P2248, $P2247
    find_lex $P2249, "$target"
    find_lex $P2250, "$_"
    set $S2251, $P2250
    find_lex $P2252, "$_"
    $P2253 = $P2248."add_method"($P2249, $S2251, $P2252)
.annotate 'line', 934
    set $P2241, $P2253
  unless_2242_end:
.annotate 'line', 933
    .return ($P2241)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block2264"  :anon :subid("151_1299591517.57") :outer("147_1299591517.57")
    .param pmc param_2266
.annotate 'line', 941
    .lex "$_", param_2266
.annotate 'line', 942
    find_lex $P2268, "$target"
    find_lex $P2269, "$_"
    $P2270 = $P2269."name"()
    $P2271 = "has_attribute"($P2268, $P2270)
    unless $P2271, if_2267_end
.annotate 'line', 943
    new $P2272, "String"
    assign $P2272, "Attribute '"
    find_lex $P2273, "$_"
    $S2274 = $P2273."name"()
    concat $P2275, $P2272, $S2274
    concat $P2276, $P2275, "' already exists in the class '"
.annotate 'line', 944
    find_lex $P2277, "$target"
    get_how $P2278, $P2277
    find_lex $P2279, "$target"
    $S2280 = $P2278."name"($P2279)
    concat $P2281, $P2276, $S2280
.annotate 'line', 943
    concat $P2282, $P2281, "', but a role also wishes to compose it"
.annotate 'line', 944
    die $P2282
  if_2267_end:
.annotate 'line', 946
    find_lex $P2283, "$target"
    get_how $P2284, $P2283
    find_lex $P2285, "$target"
    find_lex $P2286, "$_"
    $P2287 = $P2284."add_attribute"($P2285, $P2286)
.annotate 'line', 941
    .return ($P2287)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block2303"  :subid("153_1299591517.57") :outer("10_1299591517.57")
.annotate 'line', 958
    .const 'Sub' $P2526 = "163_1299591517.57" 
    capture_lex $P2526
    .const 'Sub' $P2306 = "154_1299591517.57" 
    capture_lex $P2306
    get_global $P2305, "$?CLASS"
.annotate 'line', 959
    .const 'Sub' $P2306 = "154_1299591517.57" 
    newclosure $P2524, $P2306
.annotate 'line', 958
    .return ($P2524)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "" :load :init :subid("post383") :outer("153_1299591517.57")
.annotate 'line', 958
    get_hll_global $P2304, ["RoleToRoleApplier"], "_block2303" 
    .local pmc block
    set block, $P2304
    .const 'Sub' $P2526 = "163_1299591517.57" 
    capture_lex $P2526
    $P2526()
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block2525"  :anon :subid("163_1299591517.57") :outer("153_1299591517.57")
.annotate 'line', 958
    get_hll_global $P2527, "KnowHOW"
    $P2528 = $P2527."new_type"("RoleToRoleApplier" :named("name"))
    .local pmc type_obj
    set type_obj, $P2528
    set_hll_global "RoleToRoleApplier", type_obj
    set_global "$?CLASS", type_obj
    get_how $P2529, type_obj
    .const 'Sub' $P2530 = "154_1299591517.57" 
    $P2529."add_method"(type_obj, "apply", $P2530)
    get_how $P2531, type_obj
    $P2532 = $P2531."compose"(type_obj)
    .return ($P2532)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "apply"  :subid("154_1299591517.57") :outer("153_1299591517.57")
    .param pmc param_2309
    .param pmc param_2310
    .param pmc param_2311
.annotate 'line', 959
    .const 'Sub' $P2451 = "160_1299591517.57" 
    capture_lex $P2451
    .const 'Sub' $P2409 = "159_1299591517.57" 
    capture_lex $P2409
    .const 'Sub' $P2395 = "158_1299591517.57" 
    capture_lex $P2395
    .const 'Sub' $P2322 = "155_1299591517.57" 
    capture_lex $P2322
    new $P2308, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2308, control_2307
    push_eh $P2308
    .lex "self", param_2309
    .lex "$target", param_2310
    .lex "@roles", param_2311
.annotate 'line', 961
    $P2312 = root_new ['parrot';'Hash']
    .lex "%meth_info", $P2312
.annotate 'line', 987
    $P2313 = root_new ['parrot';'Hash']
    .lex "%target_meth_info", $P2313
.annotate 'line', 988
    $P2314 = root_new ['parrot';'ResizablePMCArray']
    .lex "@target_meths", $P2314
.annotate 'line', 1013
    $P2315 = root_new ['parrot';'ResizablePMCArray']
    .lex "@all_roles", $P2315
.annotate 'line', 959
    find_lex $P2316, "%meth_info"
.annotate 'line', 962
    find_lex $P2318, "@roles"
    defined $I2319, $P2318
    unless $I2319, for_undef_384
    iter $P2317, $P2318
    new $P2383, 'ExceptionHandler'
    set_label $P2383, loop2382_handler
    $P2383."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2383
  loop2382_test:
    unless $P2317, loop2382_done
    shift $P2320, $P2317
  loop2382_redo:
    .const 'Sub' $P2322 = "155_1299591517.57" 
    capture_lex $P2322
    $P2322($P2320)
  loop2382_next:
    goto loop2382_test
  loop2382_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2384, exception, 'type'
    eq $P2384, .CONTROL_LOOP_NEXT, loop2382_next
    eq $P2384, .CONTROL_LOOP_REDO, loop2382_redo
  loop2382_done:
    pop_eh 
  for_undef_384:
    find_lex $P2385, "%target_meth_info"
.annotate 'line', 988
    find_lex $P2386, "$target"
    get_how $P2387, $P2386
    find_lex $P2388, "$target"
    $P2389 = $P2387."methods"($P2388)
    store_lex "@target_meths", $P2389
.annotate 'line', 989
    find_lex $P2391, "@target_meths"
    defined $I2392, $P2391
    unless $I2392, for_undef_392
    iter $P2390, $P2391
    new $P2402, 'ExceptionHandler'
    set_label $P2402, loop2401_handler
    $P2402."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2402
  loop2401_test:
    unless $P2390, loop2401_done
    shift $P2393, $P2390
  loop2401_redo:
    .const 'Sub' $P2395 = "158_1299591517.57" 
    capture_lex $P2395
    $P2395($P2393)
  loop2401_next:
    goto loop2401_test
  loop2401_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2403, exception, 'type'
    eq $P2403, .CONTROL_LOOP_NEXT, loop2401_next
    eq $P2403, .CONTROL_LOOP_REDO, loop2401_redo
  loop2401_done:
    pop_eh 
  for_undef_392:
.annotate 'line', 994
    find_lex $P2405, "%meth_info"
    defined $I2406, $P2405
    unless $I2406, for_undef_394
    iter $P2404, $P2405
    new $P2443, 'ExceptionHandler'
    set_label $P2443, loop2442_handler
    $P2443."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2443
  loop2442_test:
    unless $P2404, loop2442_done
    shift $P2407, $P2404
  loop2442_redo:
    .const 'Sub' $P2409 = "159_1299591517.57" 
    capture_lex $P2409
    $P2409($P2407)
  loop2442_next:
    goto loop2442_test
  loop2442_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2444, exception, 'type'
    eq $P2444, .CONTROL_LOOP_NEXT, loop2442_next
    eq $P2444, .CONTROL_LOOP_REDO, loop2442_redo
  loop2442_done:
    pop_eh 
  for_undef_394:
    find_lex $P2445, "@all_roles"
.annotate 'line', 1014
    find_lex $P2447, "@roles"
    defined $I2448, $P2447
    unless $I2448, for_undef_401
    iter $P2446, $P2447
    new $P2519, 'ExceptionHandler'
    set_label $P2519, loop2518_handler
    $P2519."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2519
  loop2518_test:
    unless $P2446, loop2518_done
    shift $P2449, $P2446
  loop2518_redo:
    .const 'Sub' $P2451 = "160_1299591517.57" 
    capture_lex $P2451
    $P2451($P2449)
  loop2518_next:
    goto loop2518_test
  loop2518_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2520, exception, 'type'
    eq $P2520, .CONTROL_LOOP_NEXT, loop2518_next
    eq $P2520, .CONTROL_LOOP_REDO, loop2518_redo
  loop2518_done:
    pop_eh 
  for_undef_401:
.annotate 'line', 1043
    new $P2521, "Exception"
    set $P2521['type'], .CONTROL_RETURN
    find_lex $P2522, "@all_roles"
    setattribute $P2521, 'payload', $P2522
    throw $P2521
.annotate 'line', 959
    .return ()
  control_2307:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2523, exception, "payload"
    .return ($P2523)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block2321"  :anon :subid("155_1299591517.57") :outer("154_1299591517.57")
    .param pmc param_2324
.annotate 'line', 962
    .const 'Sub' $P2334 = "156_1299591517.57" 
    capture_lex $P2334
.annotate 'line', 963
    $P2323 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P2323
    .lex "$_", param_2324
    find_lex $P2325, "$_"
    get_how $P2326, $P2325
    find_lex $P2327, "$_"
    $P2328 = $P2326."methods"($P2327)
    store_lex "@methods", $P2328
.annotate 'line', 964
    find_lex $P2330, "@methods"
    defined $I2331, $P2330
    unless $I2331, for_undef_385
    iter $P2329, $P2330
    new $P2380, 'ExceptionHandler'
    set_label $P2380, loop2379_handler
    $P2380."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2380
  loop2379_test:
    unless $P2329, loop2379_done
    shift $P2332, $P2329
  loop2379_redo:
    .const 'Sub' $P2334 = "156_1299591517.57" 
    capture_lex $P2334
    $P2334($P2332)
  loop2379_next:
    goto loop2379_test
  loop2379_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2381, exception, 'type'
    eq $P2381, .CONTROL_LOOP_NEXT, loop2379_next
    eq $P2381, .CONTROL_LOOP_REDO, loop2379_redo
  loop2379_done:
    pop_eh 
  for_undef_385:
.annotate 'line', 962
    .return ($P2329)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block2333"  :anon :subid("156_1299591517.57") :outer("155_1299591517.57")
    .param pmc param_2339
.annotate 'line', 964
    .const 'Sub' $P2362 = "157_1299591517.57" 
    capture_lex $P2362
.annotate 'line', 965
    new $P2335, "Undef"
    .lex "$name", $P2335
.annotate 'line', 966
    new $P2336, "Undef"
    .lex "$meth", $P2336
.annotate 'line', 967
    $P2337 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meth_list", $P2337
.annotate 'line', 974
    new $P2338, "Undef"
    .lex "$found", $P2338
    .lex "$_", param_2339
.annotate 'line', 965
    find_lex $P2340, "$_"
    set $S2341, $P2340
    new $P2342, 'String'
    set $P2342, $S2341
    store_lex "$name", $P2342
.annotate 'line', 966
    find_lex $P2343, "$_"
    store_lex "$meth", $P2343
    find_lex $P2344, "@meth_list"
.annotate 'line', 968
    find_lex $P2346, "$name"
    find_lex $P2347, "%meth_info"
    unless_null $P2347, vivify_386
    $P2347 = root_new ['parrot';'Hash']
  vivify_386:
    set $P2348, $P2347[$P2346]
    unless_null $P2348, vivify_387
    new $P2348, "Undef"
  vivify_387:
    defined $I2349, $P2348
    if $I2349, if_2345
.annotate 'line', 972
    find_lex $P2353, "@meth_list"
    find_lex $P2354, "$name"
    find_lex $P2355, "%meth_info"
    unless_null $P2355, vivify_388
    $P2355 = root_new ['parrot';'Hash']
    store_lex "%meth_info", $P2355
  vivify_388:
    set $P2355[$P2354], $P2353
.annotate 'line', 971
    goto if_2345_end
  if_2345:
.annotate 'line', 969
    find_lex $P2350, "$name"
    find_lex $P2351, "%meth_info"
    unless_null $P2351, vivify_389
    $P2351 = root_new ['parrot';'Hash']
  vivify_389:
    set $P2352, $P2351[$P2350]
    unless_null $P2352, vivify_390
    new $P2352, "Undef"
  vivify_390:
    store_lex "@meth_list", $P2352
  if_2345_end:
.annotate 'line', 974
    new $P2356, "Integer"
    assign $P2356, 0
    store_lex "$found", $P2356
.annotate 'line', 975
    find_lex $P2358, "@meth_list"
    defined $I2359, $P2358
    unless $I2359, for_undef_391
    iter $P2357, $P2358
    new $P2371, 'ExceptionHandler'
    set_label $P2371, loop2370_handler
    $P2371."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2371
  loop2370_test:
    unless $P2357, loop2370_done
    shift $P2360, $P2357
  loop2370_redo:
    .const 'Sub' $P2362 = "157_1299591517.57" 
    capture_lex $P2362
    $P2362($P2360)
  loop2370_next:
    goto loop2370_test
  loop2370_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2372, exception, 'type'
    eq $P2372, .CONTROL_LOOP_NEXT, loop2370_next
    eq $P2372, .CONTROL_LOOP_REDO, loop2370_redo
  loop2370_done:
    pop_eh 
  for_undef_391:
.annotate 'line', 980
    find_lex $P2375, "$found"
    unless $P2375, unless_2374
    set $P2373, $P2375
    goto unless_2374_end
  unless_2374:
.annotate 'line', 981
    find_lex $P2376, "@meth_list"
    find_lex $P2377, "$meth"
    $P2378 = $P2376."push"($P2377)
.annotate 'line', 980
    set $P2373, $P2378
  unless_2374_end:
.annotate 'line', 964
    .return ($P2373)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block2361"  :anon :subid("157_1299591517.57") :outer("156_1299591517.57")
    .param pmc param_2363
.annotate 'line', 975
    .lex "$_", param_2363
.annotate 'line', 976
    find_lex $P2366, "$meth"
    find_lex $P2367, "$_"
    issame $I2368, $P2366, $P2367
    if $I2368, if_2365
    new $P2364, 'Integer'
    set $P2364, $I2368
    goto if_2365_end
  if_2365:
.annotate 'line', 977
    new $P2369, "Integer"
    assign $P2369, 1
    store_lex "$found", $P2369
.annotate 'line', 976
    set $P2364, $P2369
  if_2365_end:
.annotate 'line', 975
    .return ($P2364)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block2394"  :anon :subid("158_1299591517.57") :outer("154_1299591517.57")
    .param pmc param_2396
.annotate 'line', 989
    .lex "$_", param_2396
.annotate 'line', 990
    find_lex $P2397, "$_"
    find_lex $P2398, "$_"
    set $S2399, $P2398
    find_lex $P2400, "%target_meth_info"
    unless_null $P2400, vivify_393
    $P2400 = root_new ['parrot';'Hash']
    store_lex "%target_meth_info", $P2400
  vivify_393:
    set $P2400[$S2399], $P2397
.annotate 'line', 989
    .return ($P2397)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block2408"  :anon :subid("159_1299591517.57") :outer("154_1299591517.57")
    .param pmc param_2412
.annotate 'line', 995
    new $P2410, "Undef"
    .lex "$name", $P2410
.annotate 'line', 996
    $P2411 = root_new ['parrot';'ResizablePMCArray']
    .lex "@add_meths", $P2411
    .lex "$_", param_2412
.annotate 'line', 995
    find_lex $P2413, "$_"
    set $S2414, $P2413
    new $P2415, 'String'
    set $P2415, $S2414
    store_lex "$name", $P2415
.annotate 'line', 996
    find_lex $P2416, "$name"
    find_lex $P2417, "%meth_info"
    unless_null $P2417, vivify_395
    $P2417 = root_new ['parrot';'Hash']
  vivify_395:
    set $P2418, $P2417[$P2416]
    unless_null $P2418, vivify_396
    new $P2418, "Undef"
  vivify_396:
    store_lex "@add_meths", $P2418
.annotate 'line', 1000
    find_lex $P2421, "$name"
    find_lex $P2422, "%target_meth_info"
    unless_null $P2422, vivify_397
    $P2422 = root_new ['parrot';'Hash']
  vivify_397:
    set $P2423, $P2422[$P2421]
    unless_null $P2423, vivify_398
    new $P2423, "Undef"
  vivify_398:
    defined $I2424, $P2423
    unless $I2424, unless_2420
    new $P2419, 'Integer'
    set $P2419, $I2424
    goto unless_2420_end
  unless_2420:
.annotate 'line', 1002
    find_lex $P2427, "@add_meths"
    set $N2428, $P2427
    iseq $I2429, $N2428, 1.0
    if $I2429, if_2426
.annotate 'line', 1007
    find_lex $P2437, "$target"
    get_how $P2438, $P2437
    find_lex $P2439, "$target"
    find_lex $P2440, "$name"
    $P2441 = $P2438."add_collision"($P2439, $P2440)
.annotate 'line', 1005
    set $P2425, $P2441
.annotate 'line', 1002
    goto if_2426_end
  if_2426:
.annotate 'line', 1003
    find_lex $P2430, "$target"
    get_how $P2431, $P2430
    find_lex $P2432, "$target"
    find_lex $P2433, "$name"
    find_lex $P2434, "@add_meths"
    unless_null $P2434, vivify_399
    $P2434 = root_new ['parrot';'ResizablePMCArray']
  vivify_399:
    set $P2435, $P2434[0]
    unless_null $P2435, vivify_400
    new $P2435, "Undef"
  vivify_400:
    $P2436 = $P2431."add_method"($P2432, $P2433, $P2435)
.annotate 'line', 1002
    set $P2425, $P2436
  if_2426_end:
.annotate 'line', 1000
    set $P2419, $P2425
  unless_2420_end:
.annotate 'line', 994
    .return ($P2419)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block2450"  :anon :subid("160_1299591517.57") :outer("154_1299591517.57")
    .param pmc param_2454
.annotate 'line', 1014
    .const 'Sub' $P2465 = "161_1299591517.57" 
    capture_lex $P2465
.annotate 'line', 1015
    new $P2452, "Undef"
    .lex "$how", $P2452
.annotate 'line', 1018
    $P2453 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attributes", $P2453
    .lex "$_", param_2454
.annotate 'line', 1015
    find_lex $P2455, "$_"
    get_how $P2456, $P2455
    store_lex "$how", $P2456
.annotate 'line', 1018
    find_lex $P2457, "$how"
    find_lex $P2458, "$_"
    $P2459 = $P2457."attributes"($P2458)
    store_lex "@attributes", $P2459
.annotate 'line', 1019
    find_lex $P2461, "@attributes"
    defined $I2462, $P2461
    unless $I2462, for_undef_402
    iter $P2460, $P2461
    new $P2513, 'ExceptionHandler'
    set_label $P2513, loop2512_handler
    $P2513."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2513
  loop2512_test:
    unless $P2460, loop2512_done
    shift $P2463, $P2460
  loop2512_redo:
    .const 'Sub' $P2465 = "161_1299591517.57" 
    capture_lex $P2465
    $P2465($P2463)
  loop2512_next:
    goto loop2512_test
  loop2512_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2514, exception, 'type'
    eq $P2514, .CONTROL_LOOP_NEXT, loop2512_next
    eq $P2514, .CONTROL_LOOP_REDO, loop2512_redo
  loop2512_done:
    pop_eh 
  for_undef_402:
.annotate 'line', 1040
    find_lex $P2515, "@all_roles"
    find_lex $P2516, "$_"
    $P2517 = $P2515."push"($P2516)
.annotate 'line', 1014
    .return ($P2517)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block2464"  :anon :subid("161_1299591517.57") :outer("160_1299591517.57")
    .param pmc param_2469
.annotate 'line', 1019
    .const 'Sub' $P2481 = "162_1299591517.57" 
    capture_lex $P2481
.annotate 'line', 1020
    new $P2466, "Undef"
    .lex "$add_attr", $P2466
.annotate 'line', 1021
    new $P2467, "Undef"
    .lex "$skip", $P2467
.annotate 'line', 1022
    $P2468 = root_new ['parrot';'ResizablePMCArray']
    .lex "@cur_attrs", $P2468
    .lex "$_", param_2469
.annotate 'line', 1020
    find_lex $P2470, "$_"
    store_lex "$add_attr", $P2470
.annotate 'line', 1021
    new $P2471, "Integer"
    assign $P2471, 0
    store_lex "$skip", $P2471
.annotate 'line', 1022
    find_lex $P2472, "$target"
    get_how $P2473, $P2472
    find_lex $P2474, "$target"
    $P2475 = $P2473."attributes"($P2474)
    store_lex "@cur_attrs", $P2475
.annotate 'line', 1023
    find_lex $P2477, "@cur_attrs"
    defined $I2478, $P2477
    unless $I2478, for_undef_403
    iter $P2476, $P2477
    new $P2502, 'ExceptionHandler'
    set_label $P2502, loop2501_handler
    $P2502."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2502
  loop2501_test:
    unless $P2476, loop2501_done
    shift $P2479, $P2476
  loop2501_redo:
    .const 'Sub' $P2481 = "162_1299591517.57" 
    capture_lex $P2481
    $P2481($P2479)
  loop2501_next:
    goto loop2501_test
  loop2501_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2503, exception, 'type'
    eq $P2503, .CONTROL_LOOP_NEXT, loop2501_next
    eq $P2503, .CONTROL_LOOP_REDO, loop2501_redo
  loop2501_done:
    pop_eh 
  for_undef_403:
.annotate 'line', 1033
    find_lex $P2506, "$skip"
    unless $P2506, unless_2505
    set $P2504, $P2506
    goto unless_2505_end
  unless_2505:
.annotate 'line', 1034
    find_lex $P2507, "$target"
    get_how $P2508, $P2507
    find_lex $P2509, "$target"
    find_lex $P2510, "$add_attr"
    $P2511 = $P2508."add_attribute"($P2509, $P2510)
.annotate 'line', 1033
    set $P2504, $P2511
  unless_2505_end:
.annotate 'line', 1019
    .return ($P2504)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block2480"  :anon :subid("162_1299591517.57") :outer("161_1299591517.57")
    .param pmc param_2482
.annotate 'line', 1023
    .lex "$_", param_2482
.annotate 'line', 1024
    find_lex $P2485, "$_"
    find_lex $P2486, "$add_attr"
    issame $I2487, $P2485, $P2486
    if $I2487, if_2484
.annotate 'line', 1028
    find_lex $P2491, "$_"
    $S2492 = $P2491."name"()
    find_lex $P2493, "$add_attr"
    $S2494 = $P2493."name"()
    iseq $I2495, $S2492, $S2494
    if $I2495, if_2490
    new $P2489, 'Integer'
    set $P2489, $I2495
    goto if_2490_end
  if_2490:
.annotate 'line', 1029
    new $P2496, "String"
    assign $P2496, "Attribute '"
    find_lex $P2497, "$_"
    $S2498 = $P2497."name"()
    concat $P2499, $P2496, $S2498
    concat $P2500, $P2499, "' conflicts in role composition"
    die $P2500
  if_2490_end:
.annotate 'line', 1027
    set $P2483, $P2489
.annotate 'line', 1024
    goto if_2484_end
  if_2484:
.annotate 'line', 1025
    new $P2488, "Integer"
    assign $P2488, 1
    store_lex "$skip", $P2488
.annotate 'line', 1024
    set $P2483, $P2488
  if_2484_end:
.annotate 'line', 1023
    .return ($P2483)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "_block2533"  :subid("164_1299591517.57") :outer("10_1299591517.57")
.annotate 'line', 1048
    .const 'Sub' $P2595 = "173_1299591517.57" 
    capture_lex $P2595
    .const 'Sub' $P2587 = "172_1299591517.57" 
    capture_lex $P2587
    .const 'Sub' $P2581 = "171_1299591517.57" 
    capture_lex $P2581
    .const 'Sub' $P2577 = "170_1299591517.57" 
    capture_lex $P2577
    .const 'Sub' $P2572 = "169_1299591517.57" 
    capture_lex $P2572
    .const 'Sub' $P2567 = "168_1299591517.57" 
    capture_lex $P2567
    .const 'Sub' $P2553 = "167_1299591517.57" 
    capture_lex $P2553
    .const 'Sub' $P2546 = "166_1299591517.57" 
    capture_lex $P2546
    .const 'Sub' $P2536 = "165_1299591517.57" 
    capture_lex $P2536
    get_global $P2535, "$?CLASS"
.annotate 'line', 1087
    .const 'Sub' $P2587 = "172_1299591517.57" 
    newclosure $P2593, $P2587
.annotate 'line', 1048
    .return ($P2593)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "" :load :init :subid("post404") :outer("164_1299591517.57")
.annotate 'line', 1048
    get_hll_global $P2534, ["NQPModuleHOW"], "_block2533" 
    .local pmc block
    set block, $P2534
    .const 'Sub' $P2595 = "173_1299591517.57" 
    capture_lex $P2595
    $P2595()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "_block2594"  :anon :subid("173_1299591517.57") :outer("164_1299591517.57")
.annotate 'line', 1048
    get_hll_global $P2596, "KnowHOW"
    $P2597 = $P2596."new_type"("NQPModuleHOW" :named("name"))
    .local pmc type_obj
    set type_obj, $P2597
    set_hll_global "NQPModuleHOW", type_obj
    set_global "$?CLASS", type_obj
    get_how $P2598, type_obj
    get_hll_global $P2599, "KnowHOWAttribute"
    $P2600 = $P2599."new"("$!name" :named("name"))
    $P2598."add_attribute"(type_obj, $P2600)
    get_how $P2601, type_obj
    get_hll_global $P2602, "KnowHOWAttribute"
    $P2603 = $P2602."new"("$!composed" :named("name"))
    $P2601."add_attribute"(type_obj, $P2603)
    get_how $P2604, type_obj
    .const 'Sub' $P2605 = "165_1299591517.57" 
    $P2604."add_method"(type_obj, "new", $P2605)
    get_how $P2606, type_obj
    .const 'Sub' $P2607 = "166_1299591517.57" 
    $P2606."add_method"(type_obj, "BUILD", $P2607)
    get_how $P2608, type_obj
    .const 'Sub' $P2609 = "167_1299591517.57" 
    $P2608."add_method"(type_obj, "new_type", $P2609)
    get_how $P2610, type_obj
    .const 'Sub' $P2611 = "168_1299591517.57" 
    $P2610."add_method"(type_obj, "add_method", $P2611)
    get_how $P2612, type_obj
    .const 'Sub' $P2613 = "169_1299591517.57" 
    $P2612."add_method"(type_obj, "add_multi_method", $P2613)
    get_how $P2614, type_obj
    .const 'Sub' $P2615 = "170_1299591517.57" 
    $P2614."add_method"(type_obj, "add_attribute", $P2615)
    get_how $P2616, type_obj
    .const 'Sub' $P2617 = "171_1299591517.57" 
    $P2616."add_method"(type_obj, "compose", $P2617)
    get_how $P2618, type_obj
    .const 'Sub' $P2619 = "172_1299591517.57" 
    $P2618."add_method"(type_obj, "name", $P2619)
    get_how $P2620, type_obj
    $P2621 = $P2620."compose"(type_obj)
    .return ($P2621)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "new"  :subid("165_1299591517.57") :outer("164_1299591517.57")
    .param pmc param_2537
    .param pmc param_2538 :optional :named("name")
    .param int has_param_2538 :opt_flag
.annotate 'line', 1052
    .lex "self", param_2537
    if has_param_2538, optparam_405
    new $P2539, "Undef"
    set param_2538, $P2539
  optparam_405:
    .lex "$name", param_2538
.annotate 'line', 1053
    new $P2540, "Undef"
    .lex "$obj", $P2540
    find_lex $P2541, "self"
    repr_instance_of $P2542, $P2541
    store_lex "$obj", $P2542
.annotate 'line', 1054
    find_lex $P2543, "$obj"
    find_lex $P2544, "$name"
    $P2543."BUILD"($P2544 :named("name"))
    find_lex $P2545, "$obj"
.annotate 'line', 1052
    .return ($P2545)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "BUILD"  :subid("166_1299591517.57") :outer("164_1299591517.57")
    .param pmc param_2547
    .param pmc param_2548 :optional :named("name")
    .param int has_param_2548 :opt_flag
.annotate 'line', 1058
    .lex "self", param_2547
    if has_param_2548, optparam_406
    new $P2549, "Undef"
    set param_2548, $P2549
  optparam_406:
    .lex "$name", param_2548
.annotate 'line', 1059
    find_lex $P2550, "$name"
    find_lex $P2551, "self"
    get_global $P2552, "$?CLASS"
    setattribute $P2551, $P2552, "$!name", $P2550
.annotate 'line', 1058
    .return ($P2550)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "new_type"  :subid("167_1299591517.57") :outer("164_1299591517.57")
    .param pmc param_2554
    .param pmc param_2555 :optional :named("name")
    .param int has_param_2555 :opt_flag
    .param pmc param_2557 :optional :named("repr")
    .param int has_param_2557 :opt_flag
.annotate 'line', 1064
    .lex "self", param_2554
    if has_param_2555, optparam_407
    new $P2556, "String"
    assign $P2556, "<anon>"
    set param_2555, $P2556
  optparam_407:
    .lex "$name", param_2555
    if has_param_2557, optparam_408
    new $P2558, "String"
    assign $P2558, "P6opaque"
    set param_2557, $P2558
  optparam_408:
    .lex "$repr", param_2557
.annotate 'line', 1065
    new $P2559, "Undef"
    .lex "$metaclass", $P2559
    find_lex $P2560, "self"
    find_lex $P2561, "$name"
    $P2562 = $P2560."new"($P2561 :named("name"))
    store_lex "$metaclass", $P2562
.annotate 'line', 1066
    find_lex $P2563, "$metaclass"
    find_lex $P2564, "$repr"
    set $S2565, $P2564
    repr_type_object_for $P2566, $P2563, $S2565
.annotate 'line', 1064
    .return ($P2566)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_method"  :subid("168_1299591517.57") :outer("164_1299591517.57")
    .param pmc param_2568
    .param pmc param_2569
    .param pmc param_2570
    .param pmc param_2571
.annotate 'line', 1069
    .lex "self", param_2568
    .lex "$obj", param_2569
    .lex "$name", param_2570
    .lex "$code_obj", param_2571
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_multi_method"  :subid("169_1299591517.57") :outer("164_1299591517.57")
    .param pmc param_2573
    .param pmc param_2574
    .param pmc param_2575
    .param pmc param_2576
.annotate 'line', 1075
    .lex "self", param_2573
    .lex "$obj", param_2574
    .lex "$name", param_2575
    .lex "$code_obj", param_2576
.annotate 'line', 1076
    die "Modules may not have methods"
.annotate 'line', 1075
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_attribute"  :subid("170_1299591517.57") :outer("164_1299591517.57")
    .param pmc param_2578
    .param pmc param_2579
    .param pmc param_2580
.annotate 'line', 1079
    .lex "self", param_2578
    .lex "$obj", param_2579
    .lex "$meta_attr", param_2580
.annotate 'line', 1080
    die "Modules may not have attributes"
.annotate 'line', 1079
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "compose"  :subid("171_1299591517.57") :outer("164_1299591517.57")
    .param pmc param_2582
    .param pmc param_2583
.annotate 'line', 1083
    .lex "self", param_2582
    .lex "$obj", param_2583
.annotate 'line', 1084
    new $P2584, "Integer"
    assign $P2584, 1
    find_lex $P2585, "self"
    get_global $P2586, "$?CLASS"
    setattribute $P2585, $P2586, "$!composed", $P2584
.annotate 'line', 1083
    .return ($P2584)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "name"  :subid("172_1299591517.57") :outer("164_1299591517.57")
    .param pmc param_2588
    .param pmc param_2589
.annotate 'line', 1087
    .lex "self", param_2588
    .lex "$obj", param_2589
    find_lex $P2590, "self"
    get_global $P2591, "$?CLASS"
    getattribute $P2592, $P2590, $P2591, "$!name"
    unless_null $P2592, vivify_409
    new $P2592, "Undef"
  vivify_409:
    .return ($P2592)
.end


.HLL "nqp"

.namespace []
.sub "_block2623" :load :anon :subid("174_1299591517.57")
.annotate 'line', 1
    .const 'Sub' $P2625 = "10_1299591517.57" 
    $P2626 = $P2625()
    .return ($P2626)
.end

