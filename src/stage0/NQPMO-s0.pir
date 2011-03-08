
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1299588747.139")
.annotate 'line', 0
    get_hll_global $P2799, ["str"], "_block2798" 
    capture_lex $P2799
    get_hll_global $P2790, ["num"], "_block2789" 
    capture_lex $P2790
    get_hll_global $P2781, ["int"], "_block2780" 
    capture_lex $P2781
    get_hll_global $P2627, ["NQPMu"], "_block2626" 
    capture_lex $P2627
    get_hll_global $P2538, ["NQPModuleHOW"], "_block2537" 
    capture_lex $P2538
    get_hll_global $P2308, ["RoleToRoleApplier"], "_block2307" 
    capture_lex $P2308
    get_hll_global $P2092, ["RoleToClassApplier"], "_block2091" 
    capture_lex $P2092
    get_hll_global $P1736, ["NQPParametricRoleHOW"], "_block1735" 
    capture_lex $P1736
    get_hll_global $P1414, ["NQPConcreteRoleHOW"], "_block1413" 
    capture_lex $P1414
    get_hll_global $P1202, ["NQPAttribute"], "_block1201" 
    capture_lex $P1202
    get_hll_global $P1114, ["NQPNativeHOW"], "_block1113" 
    capture_lex $P1114
    get_hll_global $P56, ["NQPClassHOW"], "_block55" 
    capture_lex $P56
    get_hll_global $P30, ["KnowHOWAttribute"], "_block29" 
    capture_lex $P30
.annotate 'line', 1
    getinterp $P13
    get_class $P14, "LexPad"
    get_class $P15, "NQPLexPad"
    $P13."hll_map"($P14, $P15)
    get_hll_global $P16, "str"
    get_hll_global $P17, "num"
    get_hll_global $P18, "int"
    get_hll_global $P19, "NQPMu"
    get_hll_global $P20, "NQPModuleHOW"
    get_hll_global $P21, "RoleToRoleApplier"
    get_hll_global $P22, "RoleToClassApplier"
    get_hll_global $P23, "NQPParametricRoleHOW"
    get_hll_global $P24, "NQPConcreteRoleHOW"
    get_hll_global $P25, "NQPAttribute"
    get_hll_global $P26, "NQPNativeHOW"
    get_hll_global $P27, "NQPClassHOW"
    get_hll_global $P28, "KnowHOWAttribute"
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 10
    get_hll_global $P30, ["KnowHOWAttribute"], "_block29" 
    capture_lex $P30
    $P30()
.annotate 'line', 26
    get_hll_global $P56, ["NQPClassHOW"], "_block55" 
    capture_lex $P56
    $P56()
.annotate 'line', 454
    get_hll_global $P1114, ["NQPNativeHOW"], "_block1113" 
    capture_lex $P1114
    $P1114()
.annotate 'line', 498
    get_hll_global $P1202, ["NQPAttribute"], "_block1201" 
    capture_lex $P1202
    $P1202()
.annotate 'line', 571
    get_hll_global $P1414, ["NQPConcreteRoleHOW"], "_block1413" 
    capture_lex $P1414
    $P1414()
.annotate 'line', 720
    get_hll_global $P1736, ["NQPParametricRoleHOW"], "_block1735" 
    capture_lex $P1736
    $P1736()
.annotate 'line', 886
    get_hll_global $P2092, ["RoleToClassApplier"], "_block2091" 
    capture_lex $P2092
    $P2092()
.annotate 'line', 958
    get_hll_global $P2308, ["RoleToRoleApplier"], "_block2307" 
    capture_lex $P2308
    $P2308()
.annotate 'line', 1048
    get_hll_global $P2538, ["NQPModuleHOW"], "_block2537" 
    capture_lex $P2538
    $P2538()
.annotate 'line', 1093
    get_hll_global $P2627, ["NQPMu"], "_block2626" 
    capture_lex $P2627
    $P2627()
.annotate 'line', 1142
    get_hll_global $P2781, ["int"], "_block2780" 
    capture_lex $P2781
    $P2781()
.annotate 'line', 1144
    get_hll_global $P2790, ["num"], "_block2789" 
    capture_lex $P2790
    $P2790()
.annotate 'line', 1146
    get_hll_global $P2799, ["str"], "_block2798" 
    capture_lex $P2799
    $P2807 = $P2799()
.annotate 'line', 1
    .return ($P2807)
    .const 'Sub' $P2809 = "194_1299588747.139" 
    .return ($P2809)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post195") :outer("10_1299588747.139")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1299588747.139" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P2813, "1299588742.195"
    isnull $I2814, $P2813
    if $I2814, if_2812
    goto if_2812_end
  if_2812:
    nqp_dynop_setup 
    load_bytecode "nqpmo.pbc"
    nqp_create_sc $P2815, "1299588742.195"
  if_2812_end:
.end


.HLL "nqp"

.namespace ["KnowHOWAttribute"]
.sub "_block29"  :subid("11_1299588747.139") :outer("10_1299588747.139")
.annotate 'line', 10
    .const 'Sub' $P46 = "14_1299588747.139" 
    capture_lex $P46
    .const 'Sub' $P40 = "13_1299588747.139" 
    capture_lex $P40
    .const 'Sub' $P32 = "12_1299588747.139" 
    capture_lex $P32
    get_global $P31, "$?CLASS"
.annotate 'line', 14
    .const 'Sub' $P40 = "13_1299588747.139" 
    newclosure $P44, $P40
.annotate 'line', 10
    .return ($P44)
.end


.HLL "nqp"

.namespace ["KnowHOWAttribute"]
.sub "" :load :init :subid("post196") :outer("11_1299588747.139")
.annotate 'line', 10
    get_hll_global $P30, ["KnowHOWAttribute"], "_block29" 
    .local pmc block
    set block, $P30
    .const 'Sub' $P46 = "14_1299588747.139" 
    capture_lex $P46
    $P46()
.end


.HLL "nqp"

.namespace ["KnowHOWAttribute"]
.sub "_block45"  :anon :subid("14_1299588747.139") :outer("11_1299588747.139")
.annotate 'line', 10
    get_hll_global $P47, "KnowHOW"
    $P48 = $P47."new_type"("KnowHOWAttribute" :named("name"), "P6str" :named("repr"))
    .local pmc type_obj
    set type_obj, $P48
    set_hll_global "KnowHOWAttribute", type_obj
    set_global "$?CLASS", type_obj
    get_how $P49, type_obj
    .const 'Sub' $P50 = "12_1299588747.139" 
    $P49."add_method"(type_obj, "new", $P50)
    get_how $P51, type_obj
    .const 'Sub' $P52 = "13_1299588747.139" 
    $P51."add_method"(type_obj, "name", $P52)
    get_how $P53, type_obj
    $P54 = $P53."compose"(type_obj)
    .return ($P54)
.end


.HLL "nqp"

.namespace ["KnowHOWAttribute"]
.sub "new"  :subid("12_1299588747.139") :outer("11_1299588747.139")
    .param pmc param_33
    .param pmc param_34 :optional :named("name")
    .param int has_param_34 :opt_flag
.annotate 'line', 11
    .lex "self", param_33
    if has_param_34, optparam_197
    new $P35, "Undef"
    set param_34, $P35
  optparam_197:
    .lex "$name", param_34
.annotate 'line', 12
    find_lex $P36, "$name"
    set $S37, $P36
    get_hll_global $P38, "KnowHOWAttribute"
    repr_box_str $P39, $S37, $P38
.annotate 'line', 11
    .return ($P39)
.end


.HLL "nqp"

.namespace ["KnowHOWAttribute"]
.sub "name"  :subid("13_1299588747.139") :outer("11_1299588747.139")
    .param pmc param_41
.annotate 'line', 14
    .lex "self", param_41
.annotate 'line', 15
    find_lex $P42, "self"
    repr_unbox_str $S43, $P42
.annotate 'line', 14
    .return ($S43)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block55"  :subid("15_1299588747.139") :outer("10_1299588747.139")
.annotate 'line', 26
    .const 'Sub' $P1022 = "70_1299588747.139" 
    capture_lex $P1022
    .const 'Sub' $P985 = "68_1299588747.139" 
    capture_lex $P985
    .const 'Sub' $P949 = "66_1299588747.139" 
    capture_lex $P949
    .const 'Sub' $P915 = "65_1299588747.139" 
    capture_lex $P915
    .const 'Sub' $P878 = "64_1299588747.139" 
    capture_lex $P878
    .const 'Sub' $P871 = "63_1299588747.139" 
    capture_lex $P871
    .const 'Sub' $P848 = "61_1299588747.139" 
    capture_lex $P848
    .const 'Sub' $P842 = "60_1299588747.139" 
    capture_lex $P842
    .const 'Sub' $P836 = "59_1299588747.139" 
    capture_lex $P836
    .const 'Sub' $P813 = "57_1299588747.139" 
    capture_lex $P813
    .const 'Sub' $P806 = "56_1299588747.139" 
    capture_lex $P806
    .const 'Sub' $P792 = "55_1299588747.139" 
    capture_lex $P792
    .const 'Sub' $P743 = "52_1299588747.139" 
    capture_lex $P743
    .const 'Sub' $P698 = "49_1299588747.139" 
    capture_lex $P698
    .const 'Sub' $P661 = "46_1299588747.139" 
    capture_lex $P661
    .const 'Sub' $P531 = "41_1299588747.139" 
    capture_lex $P531
    .const 'Sub' $P427 = "37_1299588747.139" 
    capture_lex $P427
    .const 'Sub' $P401 = "36_1299588747.139" 
    capture_lex $P401
    .const 'Sub' $P367 = "34_1299588747.139" 
    capture_lex $P367
    .const 'Sub' $P329 = "32_1299588747.139" 
    capture_lex $P329
    .const 'Sub' $P308 = "31_1299588747.139" 
    capture_lex $P308
    .const 'Sub' $P287 = "30_1299588747.139" 
    capture_lex $P287
    .const 'Sub' $P268 = "29_1299588747.139" 
    capture_lex $P268
    .const 'Sub' $P254 = "28_1299588747.139" 
    capture_lex $P254
    .const 'Sub' $P247 = "27_1299588747.139" 
    capture_lex $P247
    .const 'Sub' $P237 = "26_1299588747.139" 
    capture_lex $P237
    .const 'Sub' $P100 = "19_1299588747.139" 
    capture_lex $P100
    .const 'Sub' $P58 = "16_1299588747.139" 
    capture_lex $P58
    get_global $P57, "$?CLASS"
.annotate 'line', 235
    .const 'Sub' $P58 = "16_1299588747.139" 
    newclosure $P99, $P58
    .lex "compute_c3_mro", $P99
.annotate 'line', 257
    .const 'Sub' $P100 = "19_1299588747.139" 
    newclosure $P236, $P100
    .lex "c3_merge", $P236
.annotate 'line', 181
    find_lex $P659, "compute_c3_mro"
    find_lex $P660, "c3_merge"
.annotate 'line', 441
    .const 'Sub' $P985 = "68_1299588747.139" 
    newclosure $P1020, $P985
.annotate 'line', 26
    .return ($P1020)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "" :load :init :subid("post198") :outer("15_1299588747.139")
.annotate 'line', 26
    get_hll_global $P56, ["NQPClassHOW"], "_block55" 
    .local pmc block
    set block, $P56
    .const 'Sub' $P1022 = "70_1299588747.139" 
    capture_lex $P1022
    $P1022()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1021"  :anon :subid("70_1299588747.139") :outer("15_1299588747.139")
.annotate 'line', 26
    get_hll_global $P1023, "KnowHOW"
    $P1024 = $P1023."new_type"("NQPClassHOW" :named("name"))
    .local pmc type_obj
    set type_obj, $P1024
    set_hll_global "NQPClassHOW", type_obj
    set_global "$?CLASS", type_obj
    get_how $P1025, type_obj
    get_hll_global $P1026, "KnowHOWAttribute"
    $P1027 = $P1026."new"("$!name" :named("name"))
    $P1025."add_attribute"(type_obj, $P1027)
    get_how $P1028, type_obj
    get_hll_global $P1029, "KnowHOWAttribute"
    $P1030 = $P1029."new"("%!attributes" :named("name"))
    $P1028."add_attribute"(type_obj, $P1030)
    get_how $P1031, type_obj
    get_hll_global $P1032, "KnowHOWAttribute"
    $P1033 = $P1032."new"("%!methods" :named("name"))
    $P1031."add_attribute"(type_obj, $P1033)
    get_how $P1034, type_obj
    get_hll_global $P1035, "KnowHOWAttribute"
    $P1036 = $P1035."new"("@!multi_methods_to_incorporate" :named("name"))
    $P1034."add_attribute"(type_obj, $P1036)
    get_how $P1037, type_obj
    get_hll_global $P1038, "KnowHOWAttribute"
    $P1039 = $P1038."new"("@!parents" :named("name"))
    $P1037."add_attribute"(type_obj, $P1039)
    get_how $P1040, type_obj
    get_hll_global $P1041, "KnowHOWAttribute"
    $P1042 = $P1041."new"("@!roles" :named("name"))
    $P1040."add_attribute"(type_obj, $P1042)
    get_how $P1043, type_obj
    get_hll_global $P1044, "KnowHOWAttribute"
    $P1045 = $P1044."new"("@!vtable" :named("name"))
    $P1043."add_attribute"(type_obj, $P1045)
    get_how $P1046, type_obj
    get_hll_global $P1047, "KnowHOWAttribute"
    $P1048 = $P1047."new"("%!method-vtable-slots" :named("name"))
    $P1046."add_attribute"(type_obj, $P1048)
    get_how $P1049, type_obj
    get_hll_global $P1050, "KnowHOWAttribute"
    $P1051 = $P1050."new"("$!composed" :named("name"))
    $P1049."add_attribute"(type_obj, $P1051)
    get_how $P1052, type_obj
    get_hll_global $P1053, "KnowHOWAttribute"
    $P1054 = $P1053."new"("@!mro" :named("name"))
    $P1052."add_attribute"(type_obj, $P1054)
    get_how $P1055, type_obj
    get_hll_global $P1056, "KnowHOWAttribute"
    $P1057 = $P1056."new"("@!done" :named("name"))
    $P1055."add_attribute"(type_obj, $P1057)
    get_how $P1058, type_obj
    get_hll_global $P1059, "KnowHOWAttribute"
    $P1060 = $P1059."new"("%!parrot_vtable_mapping" :named("name"))
    $P1058."add_attribute"(type_obj, $P1060)
    get_how $P1061, type_obj
    .const 'Sub' $P1062 = "26_1299588747.139" 
    $P1061."add_method"(type_obj, "new", $P1062)
    get_how $P1063, type_obj
    .const 'Sub' $P1064 = "27_1299588747.139" 
    $P1063."add_method"(type_obj, "BUILD", $P1064)
    get_how $P1065, type_obj
    .const 'Sub' $P1066 = "28_1299588747.139" 
    $P1065."add_method"(type_obj, "new_type", $P1066)
    get_how $P1067, type_obj
    .const 'Sub' $P1068 = "29_1299588747.139" 
    $P1067."add_method"(type_obj, "add_method", $P1068)
    get_how $P1069, type_obj
    .const 'Sub' $P1070 = "30_1299588747.139" 
    $P1069."add_method"(type_obj, "add_multi_method", $P1070)
    get_how $P1071, type_obj
    .const 'Sub' $P1072 = "31_1299588747.139" 
    $P1071."add_method"(type_obj, "add_attribute", $P1072)
    get_how $P1073, type_obj
    .const 'Sub' $P1074 = "32_1299588747.139" 
    $P1073."add_method"(type_obj, "add_parent", $P1074)
    get_how $P1075, type_obj
    .const 'Sub' $P1076 = "34_1299588747.139" 
    $P1075."add_method"(type_obj, "add_role", $P1076)
    get_how $P1077, type_obj
    .const 'Sub' $P1078 = "36_1299588747.139" 
    $P1077."add_method"(type_obj, "add_parrot_vtable_mapping", $P1078)
    get_how $P1079, type_obj
    .const 'Sub' $P1080 = "37_1299588747.139" 
    $P1079."add_method"(type_obj, "compose", $P1080)
    get_how $P1081, type_obj
    .const 'Sub' $P1082 = "41_1299588747.139" 
    $P1081."add_method"(type_obj, "incorporate_multi_candidates", $P1082)
    get_how $P1083, type_obj
    .const 'Sub' $P1084 = "46_1299588747.139" 
    $P1083."add_method"(type_obj, "publish_type_cache", $P1084)
    get_how $P1085, type_obj
    .const 'Sub' $P1086 = "49_1299588747.139" 
    $P1085."add_method"(type_obj, "publish_method_cache", $P1086)
    get_how $P1087, type_obj
    .const 'Sub' $P1088 = "52_1299588747.139" 
    $P1087."add_method"(type_obj, "publish_parrot_vtable_mapping", $P1088)
    get_how $P1089, type_obj
    .const 'Sub' $P1090 = "55_1299588747.139" 
    $P1089."add_method"(type_obj, "parents", $P1090)
    get_how $P1091, type_obj
    .const 'Sub' $P1092 = "56_1299588747.139" 
    $P1091."add_method"(type_obj, "roles", $P1092)
    get_how $P1093, type_obj
    .const 'Sub' $P1094 = "57_1299588747.139" 
    $P1093."add_method"(type_obj, "methods", $P1094)
    get_how $P1095, type_obj
    .const 'Sub' $P1096 = "59_1299588747.139" 
    $P1095."add_method"(type_obj, "method_table", $P1096)
    get_how $P1097, type_obj
    .const 'Sub' $P1098 = "60_1299588747.139" 
    $P1097."add_method"(type_obj, "name", $P1098)
    get_how $P1099, type_obj
    .const 'Sub' $P1100 = "61_1299588747.139" 
    $P1099."add_method"(type_obj, "attributes", $P1100)
    get_how $P1101, type_obj
    .const 'Sub' $P1102 = "63_1299588747.139" 
    $P1101."add_method"(type_obj, "parrot_vtable_mappings", $P1102)
    get_how $P1103, type_obj
    .const 'Sub' $P1104 = "64_1299588747.139" 
    $P1103."add_method"(type_obj, "isa", $P1104)
    get_how $P1105, type_obj
    .const 'Sub' $P1106 = "65_1299588747.139" 
    $P1105."add_method"(type_obj, "does", $P1106)
    get_how $P1107, type_obj
    .const 'Sub' $P1108 = "66_1299588747.139" 
    $P1107."add_method"(type_obj, "can", $P1108)
    get_how $P1109, type_obj
    .const 'Sub' $P1110 = "68_1299588747.139" 
    $P1109."add_method"(type_obj, "find_method", $P1110)
    get_how $P1111, type_obj
    $P1112 = $P1111."compose"(type_obj)
    .return ($P1112)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "compute_c3_mro"  :subid("16_1299588747.139") :outer("15_1299588747.139")
    .param pmc param_61
.annotate 'line', 235
    .const 'Sub' $P73 = "17_1299588747.139" 
    capture_lex $P73
    new $P60, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P60, control_59
    push_eh $P60
    .lex "$class", param_61
.annotate 'line', 236
    $P62 = root_new ['parrot';'ResizablePMCArray']
    .lex "@immediate_parents", $P62
.annotate 'line', 239
    $P63 = root_new ['parrot';'ResizablePMCArray']
    .lex "@result", $P63
.annotate 'line', 236
    find_lex $P64, "$class"
    get_how $P65, $P64
    find_lex $P66, "$class"
    $P67 = $P65."parents"($P66, 1 :named("local"))
    store_lex "@immediate_parents", $P67
    find_lex $P68, "@result"
.annotate 'line', 240
    find_lex $P70, "@immediate_parents"
    set $N71, $P70
    unless $N71, if_69_end
    .const 'Sub' $P73 = "17_1299588747.139" 
    capture_lex $P73
    $P73()
  if_69_end:
.annotate 'line', 252
    find_lex $P94, "@result"
    find_lex $P95, "$class"
    $P94."unshift"($P95)
.annotate 'line', 253
    new $P96, "Exception"
    set $P96['type'], .CONTROL_RETURN
    find_lex $P97, "@result"
    setattribute $P96, 'payload', $P97
    throw $P96
.annotate 'line', 235
    .return ()
  control_59:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P98, exception, "payload"
    .return ($P98)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block72"  :anon :subid("17_1299588747.139") :outer("16_1299588747.139")
.annotate 'line', 240
    .const 'Sub' $P81 = "18_1299588747.139" 
    capture_lex $P81
.annotate 'line', 243
    $P74 = root_new ['parrot';'ResizablePMCArray']
    .lex "@merge_list", $P74
.annotate 'line', 240
    find_lex $P75, "@merge_list"
.annotate 'line', 244
    find_lex $P77, "@immediate_parents"
    defined $I78, $P77
    unless $I78, for_undef_199
    iter $P76, $P77
    new $P88, 'ExceptionHandler'
    set_label $P88, loop87_handler
    $P88."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P88
  loop87_test:
    unless $P76, loop87_done
    shift $P79, $P76
  loop87_redo:
    .const 'Sub' $P81 = "18_1299588747.139" 
    capture_lex $P81
    $P81($P79)
  loop87_next:
    goto loop87_test
  loop87_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P89, exception, 'type'
    eq $P89, .CONTROL_LOOP_NEXT, loop87_next
    eq $P89, .CONTROL_LOOP_REDO, loop87_redo
  loop87_done:
    pop_eh 
  for_undef_199:
.annotate 'line', 247
    find_lex $P90, "@merge_list"
    find_lex $P91, "@immediate_parents"
    $P90."push"($P91)
.annotate 'line', 248
    find_lex $P92, "@merge_list"
    $P93 = "c3_merge"($P92)
    store_lex "@result", $P93
.annotate 'line', 240
    .return ($P93)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block80"  :anon :subid("18_1299588747.139") :outer("17_1299588747.139")
    .param pmc param_82
.annotate 'line', 244
    .lex "$_", param_82
.annotate 'line', 245
    find_lex $P83, "@merge_list"
    find_lex $P84, "$_"
    $P85 = "compute_c3_mro"($P84)
    $P86 = $P83."push"($P85)
.annotate 'line', 244
    .return ($P86)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "c3_merge"  :subid("19_1299588747.139") :outer("15_1299588747.139")
    .param pmc param_103
.annotate 'line', 257
    .const 'Sub' $P196 = "24_1299588747.139" 
    capture_lex $P196
    .const 'Sub' $P118 = "20_1299588747.139" 
    capture_lex $P118
    new $P102, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P102, control_101
    push_eh $P102
    .lex "@merge_list", param_103
.annotate 'line', 258
    $P104 = root_new ['parrot';'ResizablePMCArray']
    .lex "@result", $P104
.annotate 'line', 259
    new $P105, "Undef"
    .lex "$accepted", $P105
.annotate 'line', 260
    new $P106, "Undef"
    .lex "$something_accepted", $P106
.annotate 'line', 261
    new $P107, "Undef"
    .lex "$cand_count", $P107
.annotate 'line', 304
    new $P108, "Undef"
    .lex "$i", $P108
.annotate 'line', 257
    find_lex $P109, "@result"
    find_lex $P110, "$accepted"
.annotate 'line', 260
    new $P111, "Integer"
    assign $P111, 0
    store_lex "$something_accepted", $P111
.annotate 'line', 261
    new $P112, "Integer"
    assign $P112, 0
    store_lex "$cand_count", $P112
.annotate 'line', 264
    find_lex $P114, "@merge_list"
    defined $I115, $P114
    unless $I115, for_undef_200
    iter $P113, $P114
    new $P179, 'ExceptionHandler'
    set_label $P179, loop178_handler
    $P179."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P179
  loop178_test:
    unless $P113, loop178_done
    shift $P116, $P113
  loop178_redo:
    .const 'Sub' $P118 = "20_1299588747.139" 
    capture_lex $P118
    $P118($P116)
  loop178_next:
    goto loop178_test
  loop178_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P180, exception, 'type'
    eq $P180, .CONTROL_LOOP_NEXT, loop178_next
    eq $P180, .CONTROL_LOOP_REDO, loop178_redo
  loop178_done:
    pop_eh 
  for_undef_200:
.annotate 'line', 294
    find_lex $P182, "$cand_count"
    set $N183, $P182
    iseq $I184, $N183, 0.0
    unless $I184, if_181_end
.annotate 'line', 295
    new $P185, "Exception"
    set $P185['type'], .CONTROL_RETURN
    find_lex $P186, "@result"
    setattribute $P185, 'payload', $P186
    throw $P185
  if_181_end:
.annotate 'line', 299
    find_lex $P188, "$something_accepted"
    if $P188, unless_187_end
.annotate 'line', 300
    die "Could not build C3 linearization: ambiguous hierarchy"
  unless_187_end:
.annotate 'line', 304
    new $P189, "Integer"
    assign $P189, 0
    store_lex "$i", $P189
.annotate 'line', 305
    new $P227, 'ExceptionHandler'
    set_label $P227, loop226_handler
    $P227."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P227
  loop226_test:
    find_lex $P190, "$i"
    set $N191, $P190
    find_lex $P192, "@merge_list"
    set $N193, $P192
    islt $I194, $N191, $N193
    unless $I194, loop226_done
  loop226_redo:
    .const 'Sub' $P196 = "24_1299588747.139" 
    capture_lex $P196
    $P196()
  loop226_next:
    goto loop226_test
  loop226_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P228, exception, 'type'
    eq $P228, .CONTROL_LOOP_NEXT, loop226_next
    eq $P228, .CONTROL_LOOP_REDO, loop226_redo
  loop226_done:
    pop_eh 
.annotate 'line', 318
    find_lex $P229, "@merge_list"
    $P230 = "c3_merge"($P229)
    store_lex "@result", $P230
.annotate 'line', 319
    find_lex $P231, "@result"
    find_lex $P232, "$accepted"
    $P231."unshift"($P232)
.annotate 'line', 320
    new $P233, "Exception"
    set $P233['type'], .CONTROL_RETURN
    find_lex $P234, "@result"
    setattribute $P233, 'payload', $P234
    throw $P233
.annotate 'line', 257
    .return ()
  control_101:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P235, exception, "payload"
    .return ($P235)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block117"  :anon :subid("20_1299588747.139") :outer("19_1299588747.139")
    .param pmc param_120
.annotate 'line', 264
    .const 'Sub' $P127 = "21_1299588747.139" 
    capture_lex $P127
.annotate 'line', 265
    $P119 = root_new ['parrot';'ResizablePMCArray']
    .lex "@cand_list", $P119
    .lex "$_", param_120
    find_lex $P121, "$_"
    store_lex "@cand_list", $P121
.annotate 'line', 266
    find_lex $P124, "@cand_list"
    set $N125, $P124
    if $N125, if_123
    new $P122, 'Float'
    set $P122, $N125
    goto if_123_end
  if_123:
    .const 'Sub' $P127 = "21_1299588747.139" 
    capture_lex $P127
    $P177 = $P127()
    set $P122, $P177
  if_123_end:
.annotate 'line', 264
    .return ($P122)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block126"  :anon :subid("21_1299588747.139") :outer("20_1299588747.139")
.annotate 'line', 266
    .const 'Sub' $P140 = "22_1299588747.139" 
    capture_lex $P140
.annotate 'line', 267
    new $P128, "Undef"
    .lex "$rejected", $P128
.annotate 'line', 268
    new $P129, "Undef"
    .lex "$cand_class", $P129
.annotate 'line', 267
    new $P130, "Integer"
    assign $P130, 0
    store_lex "$rejected", $P130
.annotate 'line', 268
    find_lex $P131, "@cand_list"
    unless_null $P131, vivify_201
    $P131 = root_new ['parrot';'ResizablePMCArray']
  vivify_201:
    set $P132, $P131[0]
    unless_null $P132, vivify_202
    new $P132, "Undef"
  vivify_202:
    store_lex "$cand_class", $P132
.annotate 'line', 269
    find_lex $P133, "$cand_count"
    add $P134, $P133, 1
    store_lex "$cand_count", $P134
.annotate 'line', 270
    find_lex $P136, "@merge_list"
    defined $I137, $P136
    unless $I137, for_undef_203
    iter $P135, $P136
    new $P175, 'ExceptionHandler'
    set_label $P175, loop174_handler
    $P175."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P175
  loop174_test:
    unless $P135, loop174_done
    shift $P138, $P135
  loop174_redo:
    .const 'Sub' $P140 = "22_1299588747.139" 
    capture_lex $P140
    $P140($P138)
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
  for_undef_203:
.annotate 'line', 266
    .return ($P135)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block139"  :anon :subid("22_1299588747.139") :outer("21_1299588747.139")
    .param pmc param_141
.annotate 'line', 270
    .const 'Sub' $P147 = "23_1299588747.139" 
    capture_lex $P147
    .lex "$_", param_141
.annotate 'line', 272
    find_lex $P143, "$_"
    find_lex $P144, "@cand_list"
    issame $I145, $P143, $P144
    if $I145, unless_142_end
    .const 'Sub' $P147 = "23_1299588747.139" 
    capture_lex $P147
    $P147()
  unless_142_end:
.annotate 'line', 284
    find_lex $P170, "$rejected"
    unless $P170, unless_169
    set $P168, $P170
    goto unless_169_end
  unless_169:
.annotate 'line', 285
    find_lex $P171, "$cand_class"
    store_lex "$accepted", $P171
.annotate 'line', 286
    new $P172, "Integer"
    assign $P172, 1
    store_lex "$something_accepted", $P172
.annotate 'line', 287
    set $I173, .CONTROL_LOOP_LAST
    die 0, $I173
  unless_169_end:
.annotate 'line', 270
    .return ($P168)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block146"  :anon :subid("23_1299588747.139") :outer("22_1299588747.139")
.annotate 'line', 274
    new $P148, "Undef"
    .lex "$cur_pos", $P148
    new $P149, "Integer"
    assign $P149, 1
    store_lex "$cur_pos", $P149
.annotate 'line', 275
    new $P166, 'ExceptionHandler'
    set_label $P166, loop165_handler
    $P166."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P166
  loop165_test:
    find_lex $P150, "$cur_pos"
    set $N151, $P150
    find_lex $P152, "$_"
    set $N153, $P152
    isle $I154, $N151, $N153
    unless $I154, loop165_done
  loop165_redo:
.annotate 'line', 276
    find_lex $P156, "$cur_pos"
    set $I157, $P156
    find_lex $P158, "$_"
    unless_null $P158, vivify_204
    $P158 = root_new ['parrot';'ResizablePMCArray']
  vivify_204:
    set $P159, $P158[$I157]
    unless_null $P159, vivify_205
    new $P159, "Undef"
  vivify_205:
    find_lex $P160, "$cand_class"
    issame $I161, $P159, $P160
    unless $I161, if_155_end
.annotate 'line', 277
    new $P162, "Integer"
    assign $P162, 1
    store_lex "$rejected", $P162
  if_155_end:
.annotate 'line', 279
    find_lex $P163, "$cur_pos"
    add $P164, $P163, 1
    store_lex "$cur_pos", $P164
  loop165_next:
.annotate 'line', 275
    goto loop165_test
  loop165_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P167, exception, 'type'
    eq $P167, .CONTROL_LOOP_NEXT, loop165_next
    eq $P167, .CONTROL_LOOP_REDO, loop165_redo
  loop165_done:
    pop_eh 
.annotate 'line', 272
    .return ($I154)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block195"  :anon :subid("24_1299588747.139") :outer("19_1299588747.139")
.annotate 'line', 305
    .const 'Sub' $P207 = "25_1299588747.139" 
    capture_lex $P207
.annotate 'line', 306
    $P197 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new_list", $P197
.annotate 'line', 305
    find_lex $P198, "@new_list"
.annotate 'line', 307
    find_lex $P200, "$i"
    set $I201, $P200
    find_lex $P202, "@merge_list"
    unless_null $P202, vivify_206
    $P202 = root_new ['parrot';'ResizablePMCArray']
  vivify_206:
    set $P203, $P202[$I201]
    unless_null $P203, vivify_207
    new $P203, "Undef"
  vivify_207:
    defined $I204, $P203
    unless $I204, for_undef_208
    iter $P199, $P203
    new $P218, 'ExceptionHandler'
    set_label $P218, loop217_handler
    $P218."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P218
  loop217_test:
    unless $P199, loop217_done
    shift $P205, $P199
  loop217_redo:
    .const 'Sub' $P207 = "25_1299588747.139" 
    capture_lex $P207
    $P207($P205)
  loop217_next:
    goto loop217_test
  loop217_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P219, exception, 'type'
    eq $P219, .CONTROL_LOOP_NEXT, loop217_next
    eq $P219, .CONTROL_LOOP_REDO, loop217_redo
  loop217_done:
    pop_eh 
  for_undef_208:
.annotate 'line', 312
    find_lex $P220, "@new_list"
    find_lex $P221, "$i"
    set $I222, $P221
    find_lex $P223, "@merge_list"
    unless_null $P223, vivify_209
    $P223 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@merge_list", $P223
  vivify_209:
    set $P223[$I222], $P220
.annotate 'line', 313
    find_lex $P224, "$i"
    add $P225, $P224, 1
    store_lex "$i", $P225
.annotate 'line', 305
    .return ($P225)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block206"  :anon :subid("25_1299588747.139") :outer("24_1299588747.139")
    .param pmc param_208
.annotate 'line', 307
    .lex "$_", param_208
.annotate 'line', 308
    find_lex $P211, "$_"
    find_lex $P212, "$accepted"
    issame $I213, $P211, $P212
    unless $I213, unless_210
    new $P209, 'Integer'
    set $P209, $I213
    goto unless_210_end
  unless_210:
.annotate 'line', 309
    find_lex $P214, "@new_list"
    find_lex $P215, "$_"
    $P216 = $P214."push"($P215)
.annotate 'line', 308
    set $P209, $P216
  unless_210_end:
.annotate 'line', 307
    .return ($P209)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "new"  :subid("26_1299588747.139") :outer("15_1299588747.139")
    .param pmc param_238
    .param pmc param_239 :optional :named("name")
    .param int has_param_239 :opt_flag
.annotate 'line', 62
    .lex "self", param_238
    if has_param_239, optparam_210
    new $P240, "Undef"
    set param_239, $P240
  optparam_210:
    .lex "$name", param_239
.annotate 'line', 63
    new $P241, "Undef"
    .lex "$obj", $P241
    find_lex $P242, "self"
    repr_instance_of $P243, $P242
    store_lex "$obj", $P243
.annotate 'line', 64
    find_lex $P244, "$obj"
    find_lex $P245, "$name"
    $P244."BUILD"($P245 :named("name"))
    find_lex $P246, "$obj"
.annotate 'line', 62
    .return ($P246)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "BUILD"  :subid("27_1299588747.139") :outer("15_1299588747.139")
    .param pmc param_248
    .param pmc param_249 :optional :named("name")
    .param int has_param_249 :opt_flag
.annotate 'line', 68
    .lex "self", param_248
    if has_param_249, optparam_211
    new $P250, "Undef"
    set param_249, $P250
  optparam_211:
    .lex "$name", param_249
.annotate 'line', 69
    find_lex $P251, "$name"
    find_lex $P252, "self"
    get_global $P253, "$?CLASS"
    setattribute $P252, $P253, "$!name", $P251
.annotate 'line', 68
    .return ($P251)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "new_type"  :subid("28_1299588747.139") :outer("15_1299588747.139")
    .param pmc param_255
    .param pmc param_256 :optional :named("name")
    .param int has_param_256 :opt_flag
    .param pmc param_258 :optional :named("repr")
    .param int has_param_258 :opt_flag
.annotate 'line', 74
    .lex "self", param_255
    if has_param_256, optparam_212
    new $P257, "String"
    assign $P257, "<anon>"
    set param_256, $P257
  optparam_212:
    .lex "$name", param_256
    if has_param_258, optparam_213
    new $P259, "String"
    assign $P259, "P6opaque"
    set param_258, $P259
  optparam_213:
    .lex "$repr", param_258
.annotate 'line', 75
    new $P260, "Undef"
    .lex "$metaclass", $P260
    find_lex $P261, "self"
    find_lex $P262, "$name"
    $P263 = $P261."new"($P262 :named("name"))
    store_lex "$metaclass", $P263
.annotate 'line', 76
    find_lex $P264, "$metaclass"
    find_lex $P265, "$repr"
    set $S266, $P265
    repr_type_object_for $P267, $P264, $S266
.annotate 'line', 74
    .return ($P267)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_method"  :subid("29_1299588747.139") :outer("15_1299588747.139")
    .param pmc param_269
    .param pmc param_270
    .param pmc param_271
    .param pmc param_272
.annotate 'line', 79
    .lex "self", param_269
    .lex "$obj", param_270
    .lex "$name", param_271
    .lex "$code_obj", param_272
.annotate 'line', 80
    find_lex $P274, "$name"
    find_lex $P275, "self"
    get_global $P276, "$?CLASS"
    getattribute $P277, $P275, $P276, "%!methods"
    unless_null $P277, vivify_214
    $P277 = root_new ['parrot';'Hash']
  vivify_214:
    set $P278, $P277[$P274]
    unless_null $P278, vivify_215
    new $P278, "Undef"
  vivify_215:
    unless $P278, if_273_end
.annotate 'line', 81
    new $P279, "String"
    assign $P279, "This class already has a method named "
    find_lex $P280, "$name"
    concat $P281, $P279, $P280
    die $P281
  if_273_end:
.annotate 'line', 83
    find_lex $P282, "$code_obj"
    find_lex $P283, "$name"
    find_lex $P284, "self"
    get_global $P285, "$?CLASS"
    getattribute $P286, $P284, $P285, "%!methods"
    unless_null $P286, vivify_216
    $P286 = root_new ['parrot';'Hash']
    setattribute $P284, $P285, "%!methods", $P286
  vivify_216:
    set $P286[$P283], $P282
.annotate 'line', 79
    .return ($P282)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_multi_method"  :subid("30_1299588747.139") :outer("15_1299588747.139")
    .param pmc param_288
    .param pmc param_289
    .param pmc param_290
    .param pmc param_291
.annotate 'line', 86
    .lex "self", param_288
    .lex "$obj", param_289
    .lex "$name", param_290
    .lex "$code_obj", param_291
.annotate 'line', 92
    $P292 = root_new ['parrot';'Hash']
    .lex "%todo", $P292
.annotate 'line', 86
    find_lex $P293, "%todo"
.annotate 'line', 93
    find_lex $P294, "$name"
    find_lex $P295, "%todo"
    unless_null $P295, vivify_217
    $P295 = root_new ['parrot';'Hash']
    store_lex "%todo", $P295
  vivify_217:
    set $P295["name"], $P294
.annotate 'line', 94
    find_lex $P296, "$code_obj"
    find_lex $P297, "%todo"
    unless_null $P297, vivify_218
    $P297 = root_new ['parrot';'Hash']
    store_lex "%todo", $P297
  vivify_218:
    set $P297["code"], $P296
.annotate 'line', 95
    find_lex $P298, "%todo"
    find_lex $P299, "self"
    get_global $P300, "$?CLASS"
    getattribute $P301, $P299, $P300, "@!multi_methods_to_incorporate"
    unless_null $P301, vivify_219
    $P301 = root_new ['parrot';'ResizablePMCArray']
  vivify_219:
    set $N302, $P301
    set $I303, $N302
    find_lex $P304, "self"
    get_global $P305, "$?CLASS"
    getattribute $P306, $P304, $P305, "@!multi_methods_to_incorporate"
    unless_null $P306, vivify_220
    $P306 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P304, $P305, "@!multi_methods_to_incorporate", $P306
  vivify_220:
    set $P306[$I303], $P298
    find_lex $P307, "$code_obj"
.annotate 'line', 86
    .return ($P307)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_attribute"  :subid("31_1299588747.139") :outer("15_1299588747.139")
    .param pmc param_309
    .param pmc param_310
    .param pmc param_311
.annotate 'line', 99
    .lex "self", param_309
    .lex "$obj", param_310
    .lex "$meta_attr", param_311
.annotate 'line', 100
    new $P312, "Undef"
    .lex "$name", $P312
    find_lex $P313, "$meta_attr"
    $P314 = $P313."name"()
    store_lex "$name", $P314
.annotate 'line', 101
    find_lex $P316, "$name"
    find_lex $P317, "self"
    get_global $P318, "$?CLASS"
    getattribute $P319, $P317, $P318, "%!attributes"
    unless_null $P319, vivify_221
    $P319 = root_new ['parrot';'Hash']
  vivify_221:
    set $P320, $P319[$P316]
    unless_null $P320, vivify_222
    new $P320, "Undef"
  vivify_222:
    unless $P320, if_315_end
.annotate 'line', 102
    new $P321, "String"
    assign $P321, "This class already has an attribute named "
    find_lex $P322, "$name"
    concat $P323, $P321, $P322
    die $P323
  if_315_end:
.annotate 'line', 104
    find_lex $P324, "$meta_attr"
    find_lex $P325, "$name"
    find_lex $P326, "self"
    get_global $P327, "$?CLASS"
    getattribute $P328, $P326, $P327, "%!attributes"
    unless_null $P328, vivify_223
    $P328 = root_new ['parrot';'Hash']
    setattribute $P326, $P327, "%!attributes", $P328
  vivify_223:
    set $P328[$P325], $P324
.annotate 'line', 99
    .return ($P324)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_parent"  :subid("32_1299588747.139") :outer("15_1299588747.139")
    .param pmc param_330
    .param pmc param_331
    .param pmc param_332
.annotate 'line', 107
    .const 'Sub' $P344 = "33_1299588747.139" 
    capture_lex $P344
    .lex "self", param_330
    .lex "$obj", param_331
    .lex "$parent", param_332
.annotate 'line', 108
    find_lex $P334, "self"
    get_global $P335, "$?CLASS"
    getattribute $P336, $P334, $P335, "$!composed"
    unless_null $P336, vivify_224
    new $P336, "Undef"
  vivify_224:
    unless $P336, if_333_end
.annotate 'line', 109
    die "NQPClassHOW does not support adding parents after being composed."
  if_333_end:
.annotate 'line', 111
    find_lex $P338, "self"
    get_global $P339, "$?CLASS"
    getattribute $P340, $P338, $P339, "@!parents"
    unless_null $P340, vivify_225
    $P340 = root_new ['parrot';'ResizablePMCArray']
  vivify_225:
    defined $I341, $P340
    unless $I341, for_undef_226
    iter $P337, $P340
    new $P356, 'ExceptionHandler'
    set_label $P356, loop355_handler
    $P356."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P356
  loop355_test:
    unless $P337, loop355_done
    shift $P342, $P337
  loop355_redo:
    .const 'Sub' $P344 = "33_1299588747.139" 
    capture_lex $P344
    $P344($P342)
  loop355_next:
    goto loop355_test
  loop355_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P357, exception, 'type'
    eq $P357, .CONTROL_LOOP_NEXT, loop355_next
    eq $P357, .CONTROL_LOOP_REDO, loop355_redo
  loop355_done:
    pop_eh 
  for_undef_226:
.annotate 'line', 116
    find_lex $P358, "$parent"
    find_lex $P359, "self"
    get_global $P360, "$?CLASS"
    getattribute $P361, $P359, $P360, "@!parents"
    unless_null $P361, vivify_227
    $P361 = root_new ['parrot';'ResizablePMCArray']
  vivify_227:
    set $N362, $P361
    set $I363, $N362
    find_lex $P364, "self"
    get_global $P365, "$?CLASS"
    getattribute $P366, $P364, $P365, "@!parents"
    unless_null $P366, vivify_228
    $P366 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P364, $P365, "@!parents", $P366
  vivify_228:
    set $P366[$I363], $P358
.annotate 'line', 107
    .return ($P358)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block343"  :anon :subid("33_1299588747.139") :outer("32_1299588747.139")
    .param pmc param_345
.annotate 'line', 111
    .lex "$_", param_345
.annotate 'line', 112
    find_lex $P348, "$_"
    find_lex $P349, "$parent"
    issame $I350, $P348, $P349
    if $I350, if_347
    new $P346, 'Integer'
    set $P346, $I350
    goto if_347_end
  if_347:
.annotate 'line', 113
    new $P351, "String"
    assign $P351, "Already have "
    find_lex $P352, "$parent"
    concat $P353, $P351, $P352
    concat $P354, $P353, " as a parent class."
    die $P354
  if_347_end:
.annotate 'line', 111
    .return ($P346)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_role"  :subid("34_1299588747.139") :outer("15_1299588747.139")
    .param pmc param_368
    .param pmc param_369
    .param pmc param_370
.annotate 'line', 119
    .const 'Sub' $P378 = "35_1299588747.139" 
    capture_lex $P378
    .lex "self", param_368
    .lex "$obj", param_369
    .lex "$role", param_370
.annotate 'line', 120
    find_lex $P372, "self"
    get_global $P373, "$?CLASS"
    getattribute $P374, $P372, $P373, "@!roles"
    unless_null $P374, vivify_229
    $P374 = root_new ['parrot';'ResizablePMCArray']
  vivify_229:
    defined $I375, $P374
    unless $I375, for_undef_230
    iter $P371, $P374
    new $P390, 'ExceptionHandler'
    set_label $P390, loop389_handler
    $P390."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P390
  loop389_test:
    unless $P371, loop389_done
    shift $P376, $P371
  loop389_redo:
    .const 'Sub' $P378 = "35_1299588747.139" 
    capture_lex $P378
    $P378($P376)
  loop389_next:
    goto loop389_test
  loop389_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P391, exception, 'type'
    eq $P391, .CONTROL_LOOP_NEXT, loop389_next
    eq $P391, .CONTROL_LOOP_REDO, loop389_redo
  loop389_done:
    pop_eh 
  for_undef_230:
.annotate 'line', 125
    find_lex $P392, "$role"
    find_lex $P393, "self"
    get_global $P394, "$?CLASS"
    getattribute $P395, $P393, $P394, "@!roles"
    unless_null $P395, vivify_231
    $P395 = root_new ['parrot';'ResizablePMCArray']
  vivify_231:
    set $N396, $P395
    set $I397, $N396
    find_lex $P398, "self"
    get_global $P399, "$?CLASS"
    getattribute $P400, $P398, $P399, "@!roles"
    unless_null $P400, vivify_232
    $P400 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P398, $P399, "@!roles", $P400
  vivify_232:
    set $P400[$I397], $P392
.annotate 'line', 119
    .return ($P392)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block377"  :anon :subid("35_1299588747.139") :outer("34_1299588747.139")
    .param pmc param_379
.annotate 'line', 120
    .lex "$_", param_379
.annotate 'line', 121
    find_lex $P382, "$_"
    find_lex $P383, "$role"
    issame $I384, $P382, $P383
    if $I384, if_381
    new $P380, 'Integer'
    set $P380, $I384
    goto if_381_end
  if_381:
.annotate 'line', 122
    new $P385, "String"
    assign $P385, "The role "
    find_lex $P386, "$role"
    concat $P387, $P385, $P386
    concat $P388, $P387, " has already been added."
    die $P388
  if_381_end:
.annotate 'line', 120
    .return ($P380)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_parrot_vtable_mapping"  :subid("36_1299588747.139") :outer("15_1299588747.139")
    .param pmc param_402
    .param pmc param_403
    .param pmc param_404
    .param pmc param_405
.annotate 'line', 128
    .lex "self", param_402
    .lex "$obj", param_403
    .lex "$name", param_404
    .lex "$meth", param_405
.annotate 'line', 129
    find_lex $P407, "$name"
    find_lex $P408, "self"
    get_global $P409, "$?CLASS"
    getattribute $P410, $P408, $P409, "%!parrot_vtable_mapping"
    unless_null $P410, vivify_233
    $P410 = root_new ['parrot';'Hash']
  vivify_233:
    set $P411, $P410[$P407]
    unless_null $P411, vivify_234
    new $P411, "Undef"
  vivify_234:
    defined $I412, $P411
    unless $I412, if_406_end
.annotate 'line', 130
    new $P413, "String"
    assign $P413, "Class '"
    find_lex $P414, "self"
    get_global $P415, "$?CLASS"
    getattribute $P416, $P414, $P415, "$!name"
    unless_null $P416, vivify_235
    new $P416, "Undef"
  vivify_235:
    concat $P417, $P413, $P416
    concat $P418, $P417, "' already has a Parrot v-table override for '"
    find_lex $P419, "$name"
    concat $P420, $P418, $P419
.annotate 'line', 131
    concat $P421, $P420, "'"
.annotate 'line', 132
    die $P421
  if_406_end:
.annotate 'line', 134
    find_lex $P422, "$meth"
    find_lex $P423, "$name"
    find_lex $P424, "self"
    get_global $P425, "$?CLASS"
    getattribute $P426, $P424, $P425, "%!parrot_vtable_mapping"
    unless_null $P426, vivify_236
    $P426 = root_new ['parrot';'Hash']
    setattribute $P424, $P425, "%!parrot_vtable_mapping", $P426
  vivify_236:
    set $P426[$P423], $P422
.annotate 'line', 128
    .return ($P422)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "compose"  :subid("37_1299588747.139") :outer("15_1299588747.139")
    .param pmc param_428
    .param pmc param_429
.annotate 'line', 137
    .const 'Sub' $P516 = "40_1299588747.139" 
    capture_lex $P516
    .const 'Sub' $P435 = "38_1299588747.139" 
    capture_lex $P435
    .lex "self", param_428
    .lex "$obj", param_429
.annotate 'line', 141
    find_lex $P431, "self"
    get_global $P432, "$?CLASS"
    getattribute $P433, $P431, $P432, "@!roles"
    unless_null $P433, vivify_237
    $P433 = root_new ['parrot';'ResizablePMCArray']
  vivify_237:
    unless $P433, if_430_end
    .const 'Sub' $P435 = "38_1299588747.139" 
    capture_lex $P435
    $P435()
  if_430_end:
.annotate 'line', 154
    find_lex $P483, "self"
    get_global $P484, "$?CLASS"
    getattribute $P485, $P483, $P484, "@!parents"
    unless_null $P485, vivify_244
    $P485 = root_new ['parrot';'ResizablePMCArray']
  vivify_244:
    set $N486, $P485
    iseq $I487, $N486, 0.0
    if $I487, if_482
    new $P481, 'Integer'
    set $P481, $I487
    goto if_482_end
  if_482:
    find_lex $P488, "self"
    get_global $P489, "$?CLASS"
    getattribute $P490, $P488, $P489, "$!name"
    unless_null $P490, vivify_245
    new $P490, "Undef"
  vivify_245:
    set $S491, $P490
    isne $I492, $S491, "NQPMu"
    new $P481, 'Integer'
    set $P481, $I492
  if_482_end:
    unless $P481, if_480_end
.annotate 'line', 155
    find_lex $P493, "self"
    find_lex $P494, "$obj"
    get_hll_global $P495, "NQPMu"
    $P493."add_parent"($P494, $P495)
  if_480_end:
.annotate 'line', 160
    find_lex $P497, "self"
    get_global $P498, "$?CLASS"
    getattribute $P499, $P497, $P498, "$!composed"
    unless_null $P499, vivify_246
    new $P499, "Undef"
  vivify_246:
    if $P499, unless_496_end
.annotate 'line', 161
    find_lex $P500, "$obj"
    $P501 = "compute_c3_mro"($P500)
    find_lex $P502, "self"
    get_global $P503, "$?CLASS"
    setattribute $P502, $P503, "@!mro", $P501
.annotate 'line', 162
    new $P504, "Integer"
    assign $P504, 1
    find_lex $P505, "self"
    get_global $P506, "$?CLASS"
    setattribute $P505, $P506, "$!composed", $P504
  unless_496_end:
.annotate 'line', 166
    find_lex $P507, "self"
    find_lex $P508, "$obj"
    $P507."incorporate_multi_candidates"($P508)
.annotate 'line', 169
    find_lex $P510, "self"
    find_lex $P511, "$obj"
    $P512 = $P510."attributes"($P511, "0" :named("local"))
    defined $I513, $P512
    unless $I513, for_undef_247
    iter $P509, $P512
    new $P522, 'ExceptionHandler'
    set_label $P522, loop521_handler
    $P522."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P522
  loop521_test:
    unless $P509, loop521_done
    shift $P514, $P509
  loop521_redo:
    .const 'Sub' $P516 = "40_1299588747.139" 
    capture_lex $P516
    $P516($P514)
  loop521_next:
    goto loop521_test
  loop521_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P523, exception, 'type'
    eq $P523, .CONTROL_LOOP_NEXT, loop521_next
    eq $P523, .CONTROL_LOOP_REDO, loop521_redo
  loop521_done:
    pop_eh 
  for_undef_247:
.annotate 'line', 172
    find_lex $P524, "self"
    find_lex $P525, "$obj"
    $P524."publish_type_cache"($P525)
.annotate 'line', 173
    find_lex $P526, "self"
    find_lex $P527, "$obj"
    $P526."publish_method_cache"($P527)
.annotate 'line', 176
    find_lex $P528, "self"
    find_lex $P529, "$obj"
    $P528."publish_parrot_vtable_mapping"($P529)
    find_lex $P530, "$obj"
.annotate 'line', 137
    .return ($P530)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block434"  :anon :subid("38_1299588747.139") :outer("37_1299588747.139")
.annotate 'line', 141
    .const 'Sub' $P445 = "39_1299588747.139" 
    capture_lex $P445
.annotate 'line', 142
    $P436 = root_new ['parrot';'ResizablePMCArray']
    .lex "@instantiated_roles", $P436
.annotate 'line', 141
    find_lex $P437, "@instantiated_roles"
.annotate 'line', 143
    find_lex $P439, "self"
    get_global $P440, "$?CLASS"
    getattribute $P441, $P439, $P440, "@!roles"
    unless_null $P441, vivify_238
    $P441 = root_new ['parrot';'ResizablePMCArray']
  vivify_238:
    defined $I442, $P441
    unless $I442, for_undef_239
    iter $P438, $P441
    new $P474, 'ExceptionHandler'
    set_label $P474, loop473_handler
    $P474."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P474
  loop473_test:
    unless $P438, loop473_done
    shift $P443, $P438
  loop473_redo:
    .const 'Sub' $P445 = "39_1299588747.139" 
    capture_lex $P445
    $P445($P443)
  loop473_next:
    goto loop473_test
  loop473_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P475, exception, 'type'
    eq $P475, .CONTROL_LOOP_NEXT, loop473_next
    eq $P475, .CONTROL_LOOP_REDO, loop473_redo
  loop473_done:
    pop_eh 
  for_undef_239:
.annotate 'line', 149
    get_hll_global $P476, "RoleToClassApplier"
    find_lex $P477, "$obj"
    find_lex $P478, "@instantiated_roles"
    $P479 = $P476."apply"($P477, $P478)
.annotate 'line', 141
    .return ($P479)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block444"  :anon :subid("39_1299588747.139") :outer("38_1299588747.139")
    .param pmc param_447
.annotate 'line', 144
    new $P446, "Undef"
    .lex "$ins", $P446
    .lex "$_", param_447
    find_lex $P448, "$_"
    get_how $P449, $P448
    find_lex $P450, "$_"
    find_lex $P451, "$obj"
    $P452 = $P449."instantiate"($P450, $P451)
    store_lex "$ins", $P452
.annotate 'line', 145
    find_lex $P453, "@instantiated_roles"
    find_lex $P454, "$ins"
    $P453."push"($P454)
.annotate 'line', 146
    find_lex $P455, "$_"
    find_lex $P456, "self"
    get_global $P457, "$?CLASS"
    getattribute $P458, $P456, $P457, "@!done"
    unless_null $P458, vivify_240
    $P458 = root_new ['parrot';'ResizablePMCArray']
  vivify_240:
    set $N459, $P458
    set $I460, $N459
    find_lex $P461, "self"
    get_global $P462, "$?CLASS"
    getattribute $P463, $P461, $P462, "@!done"
    unless_null $P463, vivify_241
    $P463 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P461, $P462, "@!done", $P463
  vivify_241:
    set $P463[$I460], $P455
.annotate 'line', 147
    find_lex $P464, "$ins"
    find_lex $P465, "self"
    get_global $P466, "$?CLASS"
    getattribute $P467, $P465, $P466, "@!done"
    unless_null $P467, vivify_242
    $P467 = root_new ['parrot';'ResizablePMCArray']
  vivify_242:
    set $N468, $P467
    set $I469, $N468
    find_lex $P470, "self"
    get_global $P471, "$?CLASS"
    getattribute $P472, $P470, $P471, "@!done"
    unless_null $P472, vivify_243
    $P472 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P470, $P471, "@!done", $P472
  vivify_243:
    set $P472[$I469], $P464
.annotate 'line', 143
    .return ($P464)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block515"  :anon :subid("40_1299588747.139") :outer("37_1299588747.139")
    .param pmc param_517
.annotate 'line', 169
    .lex "$_", param_517
    find_lex $P518, "$_"
    find_lex $P519, "$obj"
    $P520 = $P518."compose"($P519)
    .return ($P520)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "incorporate_multi_candidates"  :subid("41_1299588747.139") :outer("15_1299588747.139")
    .param pmc param_532
    .param pmc param_533
.annotate 'line', 181
    .const 'Sub' $P548 = "42_1299588747.139" 
    capture_lex $P548
    .lex "self", param_532
    .lex "$obj", param_533
.annotate 'line', 182
    new $P534, "Undef"
    .lex "$num_todo", $P534
.annotate 'line', 183
    new $P535, "Undef"
    .lex "$i", $P535
.annotate 'line', 182
    find_lex $P536, "self"
    get_global $P537, "$?CLASS"
    getattribute $P538, $P536, $P537, "@!multi_methods_to_incorporate"
    unless_null $P538, vivify_248
    $P538 = root_new ['parrot';'ResizablePMCArray']
  vivify_248:
    set $N539, $P538
    new $P540, 'Float'
    set $P540, $N539
    store_lex "$num_todo", $P540
.annotate 'line', 183
    new $P541, "Integer"
    assign $P541, 0
    store_lex "$i", $P541
.annotate 'line', 184
    new $P657, 'ExceptionHandler'
    set_label $P657, loop656_handler
    $P657."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P657
  loop656_test:
    find_lex $P542, "$i"
    set $N543, $P542
    find_lex $P544, "$num_todo"
    set $N545, $P544
    isne $I546, $N543, $N545
    unless $I546, loop656_done
  loop656_redo:
    .const 'Sub' $P548 = "42_1299588747.139" 
    capture_lex $P548
    $P548()
  loop656_next:
    goto loop656_test
  loop656_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P658, exception, 'type'
    eq $P658, .CONTROL_LOOP_NEXT, loop656_next
    eq $P658, .CONTROL_LOOP_REDO, loop656_redo
  loop656_done:
    pop_eh 
.annotate 'line', 181
    .return ($I546)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block547"  :anon :subid("42_1299588747.139") :outer("41_1299588747.139")
.annotate 'line', 184
    .const 'Sub' $P584 = "43_1299588747.139" 
    capture_lex $P584
.annotate 'line', 186
    new $P549, "Undef"
    .lex "$name", $P549
.annotate 'line', 187
    new $P550, "Undef"
    .lex "$code", $P550
.annotate 'line', 191
    new $P551, "Undef"
    .lex "$dispatcher", $P551
.annotate 'line', 186
    find_lex $P552, "$i"
    set $I553, $P552
    find_lex $P554, "self"
    get_global $P555, "$?CLASS"
    getattribute $P556, $P554, $P555, "@!multi_methods_to_incorporate"
    unless_null $P556, vivify_249
    $P556 = root_new ['parrot';'ResizablePMCArray']
  vivify_249:
    set $P557, $P556[$I553]
    unless_null $P557, vivify_250
    $P557 = root_new ['parrot';'Hash']
  vivify_250:
    set $P558, $P557["name"]
    unless_null $P558, vivify_251
    new $P558, "Undef"
  vivify_251:
    store_lex "$name", $P558
.annotate 'line', 187
    find_lex $P559, "$i"
    set $I560, $P559
    find_lex $P561, "self"
    get_global $P562, "$?CLASS"
    getattribute $P563, $P561, $P562, "@!multi_methods_to_incorporate"
    unless_null $P563, vivify_252
    $P563 = root_new ['parrot';'ResizablePMCArray']
  vivify_252:
    set $P564, $P563[$I560]
    unless_null $P564, vivify_253
    $P564 = root_new ['parrot';'Hash']
  vivify_253:
    set $P565, $P564["code"]
    unless_null $P565, vivify_254
    new $P565, "Undef"
  vivify_254:
    store_lex "$code", $P565
.annotate 'line', 191
    find_lex $P566, "$name"
    find_lex $P567, "self"
    get_global $P568, "$?CLASS"
    getattribute $P569, $P567, $P568, "%!methods"
    unless_null $P569, vivify_255
    $P569 = root_new ['parrot';'Hash']
  vivify_255:
    set $P570, $P569[$P566]
    unless_null $P570, vivify_256
    new $P570, "Undef"
  vivify_256:
    store_lex "$dispatcher", $P570
.annotate 'line', 192
    find_lex $P572, "$dispatcher"
    defined $I573, $P572
    if $I573, if_571
.annotate 'line', 202
    .const 'Sub' $P584 = "43_1299588747.139" 
    capture_lex $P584
    $P584()
    goto if_571_end
  if_571:
.annotate 'line', 195
    find_lex $P575, "$dispatcher"
    is_dispatcher $I576, $P575
    if $I576, if_574
.annotate 'line', 199
    new $P579, 'String'
    set $P579, "Cannot have a multi candidate for "
    find_lex $P580, "$name"
    concat $P581, $P579, $P580
    concat $P582, $P581, " when an only method is also in the class"
    die $P582
.annotate 'line', 198
    goto if_574_end
  if_574:
.annotate 'line', 196
    find_lex $P577, "$dispatcher"
    find_lex $P578, "$code"
    push_dispatchee $P577, $P578
  if_574_end:
  if_571_end:
.annotate 'line', 230
    find_lex $P654, "$i"
    add $P655, $P654, 1
    store_lex "$i", $P655
.annotate 'line', 184
    .return ($P655)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block583"  :anon :subid("43_1299588747.139") :outer("42_1299588747.139")
.annotate 'line', 202
    .const 'Sub' $P601 = "44_1299588747.139" 
    capture_lex $P601
.annotate 'line', 204
    new $P585, "Undef"
    .lex "$j", $P585
.annotate 'line', 205
    new $P586, "Undef"
    .lex "$found", $P586
.annotate 'line', 204
    new $P587, "Integer"
    assign $P587, 1
    store_lex "$j", $P587
.annotate 'line', 205
    new $P588, "Integer"
    assign $P588, 0
    store_lex "$found", $P588
.annotate 'line', 206
    new $P645, 'ExceptionHandler'
    set_label $P645, loop644_handler
    $P645."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P645
  loop644_test:
    find_lex $P591, "$j"
    set $N592, $P591
    find_lex $P593, "self"
    get_global $P594, "$?CLASS"
    getattribute $P595, $P593, $P594, "@!mro"
    unless_null $P595, vivify_257
    $P595 = root_new ['parrot';'ResizablePMCArray']
  vivify_257:
    set $N596, $P595
    isne $I597, $N592, $N596
    if $I597, if_590
    new $P589, 'Integer'
    set $P589, $I597
    goto if_590_end
  if_590:
    find_lex $P598, "$found"
    isfalse $I599, $P598
    new $P589, 'Integer'
    set $P589, $I599
  if_590_end:
    unless $P589, loop644_done
  loop644_redo:
    .const 'Sub' $P601 = "44_1299588747.139" 
    capture_lex $P601
    $P601()
  loop644_next:
    goto loop644_test
  loop644_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P646, exception, 'type'
    eq $P646, .CONTROL_LOOP_NEXT, loop644_next
    eq $P646, .CONTROL_LOOP_REDO, loop644_redo
  loop644_done:
    pop_eh 
.annotate 'line', 226
    find_lex $P649, "$found"
    unless $P649, unless_648
    set $P647, $P649
    goto unless_648_end
  unless_648:
.annotate 'line', 227
    new $P650, 'String'
    set $P650, "Could not find a proto for multi "
    find_lex $P651, "$name"
    concat $P652, $P650, $P651
    concat $P653, $P652, ", and proto generation is NYI"
    die $P653
  unless_648_end:
.annotate 'line', 202
    .return ($P647)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block600"  :anon :subid("44_1299588747.139") :outer("43_1299588747.139")
.annotate 'line', 206
    .const 'Sub' $P625 = "45_1299588747.139" 
    capture_lex $P625
.annotate 'line', 207
    new $P602, "Undef"
    .lex "$parent", $P602
.annotate 'line', 208
    $P603 = root_new ['parrot';'Hash']
    .lex "%meths", $P603
.annotate 'line', 209
    new $P604, "Undef"
    .lex "$dispatcher", $P604
.annotate 'line', 207
    find_lex $P605, "$j"
    set $I606, $P605
    find_lex $P607, "self"
    get_global $P608, "$?CLASS"
    getattribute $P609, $P607, $P608, "@!mro"
    unless_null $P609, vivify_258
    $P609 = root_new ['parrot';'ResizablePMCArray']
  vivify_258:
    set $P610, $P609[$I606]
    unless_null $P610, vivify_259
    new $P610, "Undef"
  vivify_259:
    store_lex "$parent", $P610
.annotate 'line', 208
    find_lex $P611, "$parent"
    get_how $P612, $P611
    find_lex $P613, "$parent"
    $P614 = $P612."method_table"($P613)
    store_lex "%meths", $P614
.annotate 'line', 209
    find_lex $P615, "$name"
    find_lex $P616, "%meths"
    unless_null $P616, vivify_260
    $P616 = root_new ['parrot';'Hash']
  vivify_260:
    set $P617, $P616[$P615]
    unless_null $P617, vivify_261
    new $P617, "Undef"
  vivify_261:
    store_lex "$dispatcher", $P617
.annotate 'line', 210
    find_lex $P619, "$dispatcher"
    defined $I620, $P619
    unless $I620, if_618_end
.annotate 'line', 213
    find_lex $P622, "$dispatcher"
    is_dispatcher $I623, $P622
    if $I623, if_621
.annotate 'line', 221
    new $P638, 'String'
    set $P638, "Could not find a proto for multi "
    find_lex $P639, "$name"
    concat $P640, $P638, $P639
    concat $P641, $P640, " (it may exist, but an only is hiding it if so)"
    die $P641
.annotate 'line', 220
    goto if_621_end
  if_621:
.annotate 'line', 213
    .const 'Sub' $P625 = "45_1299588747.139" 
    capture_lex $P625
    $P625()
  if_621_end:
  if_618_end:
.annotate 'line', 224
    find_lex $P642, "$j"
    add $P643, $P642, 1
    store_lex "$j", $P643
.annotate 'line', 206
    .return ($P643)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block624"  :anon :subid("45_1299588747.139") :outer("44_1299588747.139")
.annotate 'line', 215
    $P626 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new_dispatchees", $P626
.annotate 'line', 213
    find_lex $P627, "@new_dispatchees"
.annotate 'line', 216
    find_lex $P628, "$code"
    find_lex $P629, "@new_dispatchees"
    unless_null $P629, vivify_262
    $P629 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@new_dispatchees", $P629
  vivify_262:
    set $P629[0], $P628
.annotate 'line', 217
    find_lex $P630, "$dispatcher"
    find_lex $P631, "@new_dispatchees"
    create_dispatch_and_add_candidates $P632, $P630, $P631
    find_lex $P633, "$name"
    find_lex $P634, "self"
    get_global $P635, "$?CLASS"
    getattribute $P636, $P634, $P635, "%!methods"
    unless_null $P636, vivify_263
    $P636 = root_new ['parrot';'Hash']
    setattribute $P634, $P635, "%!methods", $P636
  vivify_263:
    set $P636[$P633], $P632
.annotate 'line', 218
    new $P637, "Integer"
    assign $P637, 1
    store_lex "$found", $P637
.annotate 'line', 213
    .return ($P637)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_type_cache"  :subid("46_1299588747.139") :outer("15_1299588747.139")
    .param pmc param_662
    .param pmc param_663
.annotate 'line', 323
    .const 'Sub' $P688 = "48_1299588747.139" 
    capture_lex $P688
    .const 'Sub' $P673 = "47_1299588747.139" 
    capture_lex $P673
    .lex "self", param_662
    .lex "$obj", param_663
.annotate 'line', 324
    $P664 = root_new ['parrot';'ResizablePMCArray']
    .lex "@tc", $P664
.annotate 'line', 323
    find_lex $P665, "@tc"
.annotate 'line', 325
    find_lex $P667, "self"
    get_global $P668, "$?CLASS"
    getattribute $P669, $P667, $P668, "@!mro"
    unless_null $P669, vivify_264
    $P669 = root_new ['parrot';'ResizablePMCArray']
  vivify_264:
    defined $I670, $P669
    unless $I670, for_undef_265
    iter $P666, $P669
    new $P679, 'ExceptionHandler'
    set_label $P679, loop678_handler
    $P679."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P679
  loop678_test:
    unless $P666, loop678_done
    shift $P671, $P666
  loop678_redo:
    .const 'Sub' $P673 = "47_1299588747.139" 
    capture_lex $P673
    $P673($P671)
  loop678_next:
    goto loop678_test
  loop678_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P680, exception, 'type'
    eq $P680, .CONTROL_LOOP_NEXT, loop678_next
    eq $P680, .CONTROL_LOOP_REDO, loop678_redo
  loop678_done:
    pop_eh 
  for_undef_265:
.annotate 'line', 326
    find_lex $P682, "self"
    get_global $P683, "$?CLASS"
    getattribute $P684, $P682, $P683, "@!done"
    unless_null $P684, vivify_266
    $P684 = root_new ['parrot';'ResizablePMCArray']
  vivify_266:
    defined $I685, $P684
    unless $I685, for_undef_267
    iter $P681, $P684
    new $P694, 'ExceptionHandler'
    set_label $P694, loop693_handler
    $P694."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P694
  loop693_test:
    unless $P681, loop693_done
    shift $P686, $P681
  loop693_redo:
    .const 'Sub' $P688 = "48_1299588747.139" 
    capture_lex $P688
    $P688($P686)
  loop693_next:
    goto loop693_test
  loop693_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P695, exception, 'type'
    eq $P695, .CONTROL_LOOP_NEXT, loop693_next
    eq $P695, .CONTROL_LOOP_REDO, loop693_redo
  loop693_done:
    pop_eh 
  for_undef_267:
.annotate 'line', 327
    find_lex $P696, "$obj"
    find_lex $P697, "@tc"
    publish_type_check_cache $P696, $P697
.annotate 'line', 323
    .return ()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block672"  :anon :subid("47_1299588747.139") :outer("46_1299588747.139")
    .param pmc param_674
.annotate 'line', 325
    .lex "$_", param_674
    find_lex $P675, "@tc"
    find_lex $P676, "$_"
    $P677 = $P675."push"($P676)
    .return ($P677)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block687"  :anon :subid("48_1299588747.139") :outer("46_1299588747.139")
    .param pmc param_689
.annotate 'line', 326
    .lex "$_", param_689
    find_lex $P690, "@tc"
    find_lex $P691, "$_"
    $P692 = $P690."push"($P691)
    .return ($P692)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_method_cache"  :subid("49_1299588747.139") :outer("15_1299588747.139")
    .param pmc param_699
    .param pmc param_700
.annotate 'line', 330
    .const 'Sub' $P710 = "50_1299588747.139" 
    capture_lex $P710
    .lex "self", param_699
    .lex "$obj", param_700
.annotate 'line', 333
    $P701 = root_new ['parrot';'Hash']
    .lex "%cache", $P701
.annotate 'line', 330
    find_lex $P702, "%cache"
.annotate 'line', 334
    find_lex $P704, "self"
    get_global $P705, "$?CLASS"
    getattribute $P706, $P704, $P705, "@!mro"
    unless_null $P706, vivify_268
    $P706 = root_new ['parrot';'ResizablePMCArray']
  vivify_268:
    defined $I707, $P706
    unless $I707, for_undef_269
    iter $P703, $P706
    new $P739, 'ExceptionHandler'
    set_label $P739, loop738_handler
    $P739."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P739
  loop738_test:
    unless $P703, loop738_done
    shift $P708, $P703
  loop738_redo:
    .const 'Sub' $P710 = "50_1299588747.139" 
    capture_lex $P710
    $P710($P708)
  loop738_next:
    goto loop738_test
  loop738_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P740, exception, 'type'
    eq $P740, .CONTROL_LOOP_NEXT, loop738_next
    eq $P740, .CONTROL_LOOP_REDO, loop738_redo
  loop738_done:
    pop_eh 
  for_undef_269:
.annotate 'line', 342
    find_lex $P741, "$obj"
    find_lex $P742, "%cache"
    publish_method_cache $P741, $P742
.annotate 'line', 330
    .return ()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block709"  :anon :subid("50_1299588747.139") :outer("49_1299588747.139")
    .param pmc param_712
.annotate 'line', 334
    .const 'Sub' $P722 = "51_1299588747.139" 
    capture_lex $P722
.annotate 'line', 335
    $P711 = root_new ['parrot';'Hash']
    .lex "%methods", $P711
    .lex "$_", param_712
    find_lex $P713, "$_"
    get_how $P714, $P713
    find_lex $P715, "$_"
    $P716 = $P714."method_table"($P715)
    store_lex "%methods", $P716
.annotate 'line', 336
    find_lex $P718, "%methods"
    defined $I719, $P718
    unless $I719, for_undef_270
    iter $P717, $P718
    new $P736, 'ExceptionHandler'
    set_label $P736, loop735_handler
    $P736."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P736
  loop735_test:
    unless $P717, loop735_done
    shift $P720, $P717
  loop735_redo:
    .const 'Sub' $P722 = "51_1299588747.139" 
    capture_lex $P722
    $P722($P720)
  loop735_next:
    goto loop735_test
  loop735_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P737, exception, 'type'
    eq $P737, .CONTROL_LOOP_NEXT, loop735_next
    eq $P737, .CONTROL_LOOP_REDO, loop735_redo
  loop735_done:
    pop_eh 
  for_undef_270:
.annotate 'line', 334
    .return ($P717)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block721"  :anon :subid("51_1299588747.139") :outer("50_1299588747.139")
    .param pmc param_723
.annotate 'line', 336
    .lex "$_", param_723
.annotate 'line', 337
    find_lex $P726, "$_"
    $P727 = $P726."key"()
    find_lex $P728, "%cache"
    unless_null $P728, vivify_271
    $P728 = root_new ['parrot';'Hash']
  vivify_271:
    set $P729, $P728[$P727]
    unless_null $P729, vivify_272
    new $P729, "Undef"
  vivify_272:
    unless $P729, unless_725
    set $P724, $P729
    goto unless_725_end
  unless_725:
.annotate 'line', 338
    find_lex $P730, "$_"
    $P731 = $P730."value"()
    find_lex $P732, "$_"
    $P733 = $P732."key"()
    find_lex $P734, "%cache"
    unless_null $P734, vivify_273
    $P734 = root_new ['parrot';'Hash']
    store_lex "%cache", $P734
  vivify_273:
    set $P734[$P733], $P731
.annotate 'line', 337
    set $P724, $P731
  unless_725_end:
.annotate 'line', 336
    .return ($P724)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_parrot_vtable_mapping"  :subid("52_1299588747.139") :outer("15_1299588747.139")
    .param pmc param_744
    .param pmc param_745
.annotate 'line', 345
    .const 'Sub' $P755 = "53_1299588747.139" 
    capture_lex $P755
    .lex "self", param_744
    .lex "$obj", param_745
.annotate 'line', 346
    $P746 = root_new ['parrot';'Hash']
    .lex "%mapping", $P746
.annotate 'line', 345
    find_lex $P747, "%mapping"
.annotate 'line', 347
    find_lex $P749, "self"
    get_global $P750, "$?CLASS"
    getattribute $P751, $P749, $P750, "@!mro"
    unless_null $P751, vivify_274
    $P751 = root_new ['parrot';'ResizablePMCArray']
  vivify_274:
    defined $I752, $P751
    unless $I752, for_undef_275
    iter $P748, $P751
    new $P784, 'ExceptionHandler'
    set_label $P784, loop783_handler
    $P784."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P784
  loop783_test:
    unless $P748, loop783_done
    shift $P753, $P748
  loop783_redo:
    .const 'Sub' $P755 = "53_1299588747.139" 
    capture_lex $P755
    $P755($P753)
  loop783_next:
    goto loop783_test
  loop783_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P785, exception, 'type'
    eq $P785, .CONTROL_LOOP_NEXT, loop783_next
    eq $P785, .CONTROL_LOOP_REDO, loop783_redo
  loop783_done:
    pop_eh 
  for_undef_275:
.annotate 'line', 355
    find_lex $P788, "%mapping"
    set $N789, $P788
    if $N789, if_787
    new $P786, 'Float'
    set $P786, $N789
    goto if_787_end
  if_787:
.annotate 'line', 356
    find_lex $P790, "$obj"
    find_lex $P791, "%mapping"
    stable_publish_vtable_mapping $P790, $P791
  if_787_end:
.annotate 'line', 345
    .return ($P786)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block754"  :anon :subid("53_1299588747.139") :outer("52_1299588747.139")
    .param pmc param_757
.annotate 'line', 347
    .const 'Sub' $P767 = "54_1299588747.139" 
    capture_lex $P767
.annotate 'line', 348
    $P756 = root_new ['parrot';'Hash']
    .lex "%map", $P756
    .lex "$_", param_757
    find_lex $P758, "$_"
    get_how $P759, $P758
    find_lex $P760, "$_"
    $P761 = $P759."parrot_vtable_mappings"($P760, 1 :named("local"))
    store_lex "%map", $P761
.annotate 'line', 349
    find_lex $P763, "%map"
    defined $I764, $P763
    unless $I764, for_undef_276
    iter $P762, $P763
    new $P781, 'ExceptionHandler'
    set_label $P781, loop780_handler
    $P781."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P781
  loop780_test:
    unless $P762, loop780_done
    shift $P765, $P762
  loop780_redo:
    .const 'Sub' $P767 = "54_1299588747.139" 
    capture_lex $P767
    $P767($P765)
  loop780_next:
    goto loop780_test
  loop780_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P782, exception, 'type'
    eq $P782, .CONTROL_LOOP_NEXT, loop780_next
    eq $P782, .CONTROL_LOOP_REDO, loop780_redo
  loop780_done:
    pop_eh 
  for_undef_276:
.annotate 'line', 347
    .return ($P762)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block766"  :anon :subid("54_1299588747.139") :outer("53_1299588747.139")
    .param pmc param_768
.annotate 'line', 349
    .lex "$_", param_768
.annotate 'line', 350
    find_lex $P771, "$_"
    $P772 = $P771."key"()
    find_lex $P773, "%mapping"
    unless_null $P773, vivify_277
    $P773 = root_new ['parrot';'Hash']
  vivify_277:
    set $P774, $P773[$P772]
    unless_null $P774, vivify_278
    new $P774, "Undef"
  vivify_278:
    unless $P774, unless_770
    set $P769, $P774
    goto unless_770_end
  unless_770:
.annotate 'line', 351
    find_lex $P775, "$_"
    $P776 = $P775."value"()
    find_lex $P777, "$_"
    $P778 = $P777."key"()
    find_lex $P779, "%mapping"
    unless_null $P779, vivify_279
    $P779 = root_new ['parrot';'Hash']
    store_lex "%mapping", $P779
  vivify_279:
    set $P779[$P778], $P776
.annotate 'line', 350
    set $P769, $P776
  unless_770_end:
.annotate 'line', 349
    .return ($P769)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parents"  :subid("55_1299588747.139") :outer("15_1299588747.139")
    .param pmc param_793
    .param pmc param_794
    .param pmc param_795 :optional :named("local")
    .param int has_param_795 :opt_flag
.annotate 'line', 364
    .lex "self", param_793
    .lex "$obj", param_794
    if has_param_795, optparam_280
    new $P796, "Undef"
    set param_795, $P796
  optparam_280:
    .lex "$local", param_795
.annotate 'line', 365
    find_lex $P799, "$local"
    if $P799, if_798
    find_lex $P803, "self"
    get_global $P804, "$?CLASS"
    getattribute $P805, $P803, $P804, "@!mro"
    unless_null $P805, vivify_281
    $P805 = root_new ['parrot';'ResizablePMCArray']
  vivify_281:
    set $P797, $P805
    goto if_798_end
  if_798:
    find_lex $P800, "self"
    get_global $P801, "$?CLASS"
    getattribute $P802, $P800, $P801, "@!parents"
    unless_null $P802, vivify_282
    $P802 = root_new ['parrot';'ResizablePMCArray']
  vivify_282:
    set $P797, $P802
  if_798_end:
.annotate 'line', 364
    .return ($P797)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "roles"  :subid("56_1299588747.139") :outer("15_1299588747.139")
    .param pmc param_807
    .param pmc param_808
    .param pmc param_809 :named("local")
.annotate 'line', 368
    .lex "self", param_807
    .lex "$obj", param_808
    .lex "$local", param_809
    find_lex $P810, "self"
    get_global $P811, "$?CLASS"
    getattribute $P812, $P810, $P811, "@!roles"
    unless_null $P812, vivify_283
    $P812 = root_new ['parrot';'ResizablePMCArray']
  vivify_283:
    .return ($P812)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "methods"  :subid("57_1299588747.139") :outer("15_1299588747.139")
    .param pmc param_814
    .param pmc param_815
    .param pmc param_816 :named("local")
.annotate 'line', 372
    .const 'Sub' $P826 = "58_1299588747.139" 
    capture_lex $P826
    .lex "self", param_814
    .lex "$obj", param_815
    .lex "$local", param_816
.annotate 'line', 373
    $P817 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meths", $P817
.annotate 'line', 372
    find_lex $P818, "@meths"
.annotate 'line', 374
    find_lex $P820, "self"
    get_global $P821, "$?CLASS"
    getattribute $P822, $P820, $P821, "%!methods"
    unless_null $P822, vivify_284
    $P822 = root_new ['parrot';'Hash']
  vivify_284:
    defined $I823, $P822
    unless $I823, for_undef_285
    iter $P819, $P822
    new $P833, 'ExceptionHandler'
    set_label $P833, loop832_handler
    $P833."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P833
  loop832_test:
    unless $P819, loop832_done
    shift $P824, $P819
  loop832_redo:
    .const 'Sub' $P826 = "58_1299588747.139" 
    capture_lex $P826
    $P826($P824)
  loop832_next:
    goto loop832_test
  loop832_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P834, exception, 'type'
    eq $P834, .CONTROL_LOOP_NEXT, loop832_next
    eq $P834, .CONTROL_LOOP_REDO, loop832_redo
  loop832_done:
    pop_eh 
  for_undef_285:
    find_lex $P835, "@meths"
.annotate 'line', 372
    .return ($P835)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block825"  :anon :subid("58_1299588747.139") :outer("57_1299588747.139")
    .param pmc param_827
.annotate 'line', 374
    .lex "$_", param_827
.annotate 'line', 375
    find_lex $P828, "@meths"
    find_lex $P829, "$_"
    $P830 = $P829."value"()
    $P831 = $P828."push"($P830)
.annotate 'line', 374
    .return ($P831)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "method_table"  :subid("59_1299588747.139") :outer("15_1299588747.139")
    .param pmc param_837
    .param pmc param_838
.annotate 'line', 380
    .lex "self", param_837
    .lex "$obj", param_838
    find_lex $P839, "self"
    get_global $P840, "$?CLASS"
    getattribute $P841, $P839, $P840, "%!methods"
    unless_null $P841, vivify_286
    $P841 = root_new ['parrot';'Hash']
  vivify_286:
    .return ($P841)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "name"  :subid("60_1299588747.139") :outer("15_1299588747.139")
    .param pmc param_843
    .param pmc param_844
.annotate 'line', 384
    .lex "self", param_843
    .lex "$obj", param_844
    find_lex $P845, "self"
    get_global $P846, "$?CLASS"
    getattribute $P847, $P845, $P846, "$!name"
    unless_null $P847, vivify_287
    new $P847, "Undef"
  vivify_287:
    .return ($P847)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "attributes"  :subid("61_1299588747.139") :outer("15_1299588747.139")
    .param pmc param_849
    .param pmc param_850
    .param pmc param_851 :named("local")
.annotate 'line', 388
    .const 'Sub' $P861 = "62_1299588747.139" 
    capture_lex $P861
    .lex "self", param_849
    .lex "$obj", param_850
    .lex "$local", param_851
.annotate 'line', 389
    $P852 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attrs", $P852
.annotate 'line', 388
    find_lex $P853, "@attrs"
.annotate 'line', 390
    find_lex $P855, "self"
    get_global $P856, "$?CLASS"
    getattribute $P857, $P855, $P856, "%!attributes"
    unless_null $P857, vivify_288
    $P857 = root_new ['parrot';'Hash']
  vivify_288:
    defined $I858, $P857
    unless $I858, for_undef_289
    iter $P854, $P857
    new $P868, 'ExceptionHandler'
    set_label $P868, loop867_handler
    $P868."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P868
  loop867_test:
    unless $P854, loop867_done
    shift $P859, $P854
  loop867_redo:
    .const 'Sub' $P861 = "62_1299588747.139" 
    capture_lex $P861
    $P861($P859)
  loop867_next:
    goto loop867_test
  loop867_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P869, exception, 'type'
    eq $P869, .CONTROL_LOOP_NEXT, loop867_next
    eq $P869, .CONTROL_LOOP_REDO, loop867_redo
  loop867_done:
    pop_eh 
  for_undef_289:
    find_lex $P870, "@attrs"
.annotate 'line', 388
    .return ($P870)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block860"  :anon :subid("62_1299588747.139") :outer("61_1299588747.139")
    .param pmc param_862
.annotate 'line', 390
    .lex "$_", param_862
.annotate 'line', 391
    find_lex $P863, "@attrs"
    find_lex $P864, "$_"
    $P865 = $P864."value"()
    $P866 = $P863."push"($P865)
.annotate 'line', 390
    .return ($P866)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parrot_vtable_mappings"  :subid("63_1299588747.139") :outer("15_1299588747.139")
    .param pmc param_872
    .param pmc param_873
    .param pmc param_874 :named("local")
.annotate 'line', 396
    .lex "self", param_872
    .lex "$obj", param_873
    .lex "$local", param_874
    find_lex $P875, "self"
    get_global $P876, "$?CLASS"
    getattribute $P877, $P875, $P876, "%!parrot_vtable_mapping"
    unless_null $P877, vivify_290
    $P877 = root_new ['parrot';'Hash']
  vivify_290:
    .return ($P877)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "isa"  :subid("64_1299588747.139") :outer("15_1299588747.139")
    .param pmc param_881
    .param pmc param_882
    .param pmc param_883
.annotate 'line', 404
    new $P880, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P880, control_879
    push_eh $P880
    .lex "self", param_881
    .lex "$obj", param_882
    .lex "$check", param_883
.annotate 'line', 405
    new $P884, "Undef"
    .lex "$check-class", $P884
.annotate 'line', 406
    new $P885, "Undef"
    .lex "$i", $P885
.annotate 'line', 405
    find_lex $P886, "$check"
    get_what $P887, $P886
    store_lex "$check-class", $P887
.annotate 'line', 406
    find_lex $P888, "self"
    get_global $P889, "$?CLASS"
    getattribute $P890, $P888, $P889, "@!mro"
    unless_null $P890, vivify_291
    $P890 = root_new ['parrot';'ResizablePMCArray']
  vivify_291:
    set $N891, $P890
    new $P892, 'Float'
    set $P892, $N891
    store_lex "$i", $P892
.annotate 'line', 407
    new $P910, 'ExceptionHandler'
    set_label $P910, loop909_handler
    $P910."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P910
  loop909_test:
    find_lex $P893, "$i"
    set $N894, $P893
    isgt $I895, $N894, 0.0
    unless $I895, loop909_done
  loop909_redo:
.annotate 'line', 408
    find_lex $P896, "$i"
    sub $P897, $P896, 1
    store_lex "$i", $P897
.annotate 'line', 409
    find_lex $P899, "$i"
    set $I900, $P899
    find_lex $P901, "self"
    get_global $P902, "$?CLASS"
    getattribute $P903, $P901, $P902, "@!mro"
    unless_null $P903, vivify_292
    $P903 = root_new ['parrot';'ResizablePMCArray']
  vivify_292:
    set $P904, $P903[$I900]
    unless_null $P904, vivify_293
    new $P904, "Undef"
  vivify_293:
    find_lex $P905, "$check-class"
    issame $I906, $P904, $P905
    unless $I906, if_898_end
.annotate 'line', 410
    new $P907, "Exception"
    set $P907['type'], .CONTROL_RETURN
    new $P908, "Integer"
    assign $P908, 1
    setattribute $P907, 'payload', $P908
    throw $P907
  if_898_end:
  loop909_next:
.annotate 'line', 407
    goto loop909_test
  loop909_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P911, exception, 'type'
    eq $P911, .CONTROL_LOOP_NEXT, loop909_next
    eq $P911, .CONTROL_LOOP_REDO, loop909_redo
  loop909_done:
    pop_eh 
.annotate 'line', 413
    new $P912, "Exception"
    set $P912['type'], .CONTROL_RETURN
    new $P913, "Integer"
    assign $P913, 0
    setattribute $P912, 'payload', $P913
    throw $P912
.annotate 'line', 404
    .return ()
  control_879:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P914, exception, "payload"
    .return ($P914)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "does"  :subid("65_1299588747.139") :outer("15_1299588747.139")
    .param pmc param_918
    .param pmc param_919
    .param pmc param_920
.annotate 'line', 416
    new $P917, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P917, control_916
    push_eh $P917
    .lex "self", param_918
    .lex "$obj", param_919
    .lex "$check", param_920
.annotate 'line', 417
    new $P921, "Undef"
    .lex "$i", $P921
    find_lex $P922, "self"
    get_global $P923, "$?CLASS"
    getattribute $P924, $P922, $P923, "@!done"
    unless_null $P924, vivify_294
    $P924 = root_new ['parrot';'ResizablePMCArray']
  vivify_294:
    set $N925, $P924
    new $P926, 'Float'
    set $P926, $N925
    store_lex "$i", $P926
.annotate 'line', 418
    new $P944, 'ExceptionHandler'
    set_label $P944, loop943_handler
    $P944."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P944
  loop943_test:
    find_lex $P927, "$i"
    set $N928, $P927
    isgt $I929, $N928, 0.0
    unless $I929, loop943_done
  loop943_redo:
.annotate 'line', 419
    find_lex $P930, "$i"
    sub $P931, $P930, 1
    store_lex "$i", $P931
.annotate 'line', 420
    find_lex $P933, "$i"
    set $I934, $P933
    find_lex $P935, "self"
    get_global $P936, "$?CLASS"
    getattribute $P937, $P935, $P936, "@!done"
    unless_null $P937, vivify_295
    $P937 = root_new ['parrot';'ResizablePMCArray']
  vivify_295:
    set $P938, $P937[$I934]
    unless_null $P938, vivify_296
    new $P938, "Undef"
  vivify_296:
    find_lex $P939, "$check"
    issame $I940, $P938, $P939
    unless $I940, if_932_end
.annotate 'line', 421
    new $P941, "Exception"
    set $P941['type'], .CONTROL_RETURN
    new $P942, "Integer"
    assign $P942, 1
    setattribute $P941, 'payload', $P942
    throw $P941
  if_932_end:
  loop943_next:
.annotate 'line', 418
    goto loop943_test
  loop943_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P945, exception, 'type'
    eq $P945, .CONTROL_LOOP_NEXT, loop943_next
    eq $P945, .CONTROL_LOOP_REDO, loop943_redo
  loop943_done:
    pop_eh 
.annotate 'line', 424
    new $P946, "Exception"
    set $P946['type'], .CONTROL_RETURN
    new $P947, "Integer"
    assign $P947, 0
    setattribute $P946, 'payload', $P947
    throw $P946
.annotate 'line', 416
    .return ()
  control_916:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P948, exception, "payload"
    .return ($P948)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "can"  :subid("66_1299588747.139") :outer("15_1299588747.139")
    .param pmc param_952
    .param pmc param_953
    .param pmc param_954
.annotate 'line', 427
    .const 'Sub' $P962 = "67_1299588747.139" 
    capture_lex $P962
    new $P951, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P951, control_950
    push_eh $P951
    .lex "self", param_952
    .lex "$obj", param_953
    .lex "$name", param_954
.annotate 'line', 428
    find_lex $P956, "self"
    get_global $P957, "$?CLASS"
    getattribute $P958, $P956, $P957, "@!mro"
    unless_null $P958, vivify_297
    $P958 = root_new ['parrot';'ResizablePMCArray']
  vivify_297:
    defined $I959, $P958
    unless $I959, for_undef_298
    iter $P955, $P958
    new $P980, 'ExceptionHandler'
    set_label $P980, loop979_handler
    $P980."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P980
  loop979_test:
    unless $P955, loop979_done
    shift $P960, $P955
  loop979_redo:
    .const 'Sub' $P962 = "67_1299588747.139" 
    capture_lex $P962
    $P962($P960)
  loop979_next:
    goto loop979_test
  loop979_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P981, exception, 'type'
    eq $P981, .CONTROL_LOOP_NEXT, loop979_next
    eq $P981, .CONTROL_LOOP_REDO, loop979_redo
  loop979_done:
    pop_eh 
  for_undef_298:
.annotate 'line', 435
    new $P982, "Exception"
    set $P982['type'], .CONTROL_RETURN
    new $P983, "Integer"
    assign $P983, 0
    setattribute $P982, 'payload', $P983
    throw $P982
.annotate 'line', 427
    .return ()
  control_950:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P984, exception, "payload"
    .return ($P984)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block961"  :anon :subid("67_1299588747.139") :outer("66_1299588747.139")
    .param pmc param_965
.annotate 'line', 429
    $P963 = root_new ['parrot';'Hash']
    .lex "%meths", $P963
.annotate 'line', 430
    new $P964, "Undef"
    .lex "$can", $P964
    .lex "$_", param_965
.annotate 'line', 429
    find_lex $P966, "$_"
    get_how $P967, $P966
    find_lex $P968, "$obj"
    $P969 = $P967."method_table"($P968)
    store_lex "%meths", $P969
.annotate 'line', 430
    find_lex $P970, "$name"
    find_lex $P971, "%meths"
    unless_null $P971, vivify_299
    $P971 = root_new ['parrot';'Hash']
  vivify_299:
    set $P972, $P971[$P970]
    unless_null $P972, vivify_300
    new $P972, "Undef"
  vivify_300:
    store_lex "$can", $P972
.annotate 'line', 431
    find_lex $P975, "$can"
    defined $I976, $P975
    if $I976, if_974
    new $P973, 'Integer'
    set $P973, $I976
    goto if_974_end
  if_974:
.annotate 'line', 432
    new $P977, "Exception"
    set $P977['type'], .CONTROL_RETURN
    find_lex $P978, "$can"
    setattribute $P977, 'payload', $P978
    throw $P977
  if_974_end:
.annotate 'line', 428
    .return ($P973)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "find_method"  :subid("68_1299588747.139") :outer("15_1299588747.139")
    .param pmc param_988
    .param pmc param_989
    .param pmc param_990
.annotate 'line', 441
    .const 'Sub' $P998 = "69_1299588747.139" 
    capture_lex $P998
    new $P987, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P987, control_986
    push_eh $P987
    .lex "self", param_988
    .lex "$obj", param_989
    .lex "$name", param_990
.annotate 'line', 442
    find_lex $P992, "self"
    get_global $P993, "$?CLASS"
    getattribute $P994, $P992, $P993, "@!mro"
    unless_null $P994, vivify_301
    $P994 = root_new ['parrot';'ResizablePMCArray']
  vivify_301:
    defined $I995, $P994
    unless $I995, for_undef_302
    iter $P991, $P994
    new $P1016, 'ExceptionHandler'
    set_label $P1016, loop1015_handler
    $P1016."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1016
  loop1015_test:
    unless $P991, loop1015_done
    shift $P996, $P991
  loop1015_redo:
    .const 'Sub' $P998 = "69_1299588747.139" 
    capture_lex $P998
    $P998($P996)
  loop1015_next:
    goto loop1015_test
  loop1015_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1017, exception, 'type'
    eq $P1017, .CONTROL_LOOP_NEXT, loop1015_next
    eq $P1017, .CONTROL_LOOP_REDO, loop1015_redo
  loop1015_done:
    pop_eh 
  for_undef_302:
.annotate 'line', 449
    null $P1018
.annotate 'line', 441
    .return ($P1018)
  control_986:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1019, exception, "payload"
    .return ($P1019)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block997"  :anon :subid("69_1299588747.139") :outer("68_1299588747.139")
    .param pmc param_1001
.annotate 'line', 443
    $P999 = root_new ['parrot';'Hash']
    .lex "%meths", $P999
.annotate 'line', 444
    new $P1000, "Undef"
    .lex "$found", $P1000
    .lex "$_", param_1001
.annotate 'line', 443
    find_lex $P1002, "$_"
    get_how $P1003, $P1002
    find_lex $P1004, "$obj"
    $P1005 = $P1003."method_table"($P1004)
    store_lex "%meths", $P1005
.annotate 'line', 444
    find_lex $P1006, "$name"
    find_lex $P1007, "%meths"
    unless_null $P1007, vivify_303
    $P1007 = root_new ['parrot';'Hash']
  vivify_303:
    set $P1008, $P1007[$P1006]
    unless_null $P1008, vivify_304
    new $P1008, "Undef"
  vivify_304:
    store_lex "$found", $P1008
.annotate 'line', 445
    find_lex $P1011, "$found"
    defined $I1012, $P1011
    if $I1012, if_1010
    new $P1009, 'Integer'
    set $P1009, $I1012
    goto if_1010_end
  if_1010:
.annotate 'line', 446
    new $P1013, "Exception"
    set $P1013['type'], .CONTROL_RETURN
    find_lex $P1014, "$found"
    setattribute $P1013, 'payload', $P1014
    throw $P1013
  if_1010_end:
.annotate 'line', 442
    .return ($P1009)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "_block1113"  :subid("71_1299588747.139") :outer("10_1299588747.139")
.annotate 'line', 454
    .const 'Sub' $P1174 = "80_1299588747.139" 
    capture_lex $P1174
    .const 'Sub' $P1166 = "79_1299588747.139" 
    capture_lex $P1166
    .const 'Sub' $P1160 = "78_1299588747.139" 
    capture_lex $P1160
    .const 'Sub' $P1156 = "77_1299588747.139" 
    capture_lex $P1156
    .const 'Sub' $P1151 = "76_1299588747.139" 
    capture_lex $P1151
    .const 'Sub' $P1146 = "75_1299588747.139" 
    capture_lex $P1146
    .const 'Sub' $P1133 = "74_1299588747.139" 
    capture_lex $P1133
    .const 'Sub' $P1126 = "73_1299588747.139" 
    capture_lex $P1126
    .const 'Sub' $P1116 = "72_1299588747.139" 
    capture_lex $P1116
    get_global $P1115, "$?CLASS"
.annotate 'line', 492
    .const 'Sub' $P1166 = "79_1299588747.139" 
    newclosure $P1172, $P1166
.annotate 'line', 454
    .return ($P1172)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "" :load :init :subid("post305") :outer("71_1299588747.139")
.annotate 'line', 454
    get_hll_global $P1114, ["NQPNativeHOW"], "_block1113" 
    .local pmc block
    set block, $P1114
    .const 'Sub' $P1174 = "80_1299588747.139" 
    capture_lex $P1174
    $P1174()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "_block1173"  :anon :subid("80_1299588747.139") :outer("71_1299588747.139")
.annotate 'line', 454
    get_hll_global $P1175, "KnowHOW"
    $P1176 = $P1175."new_type"("NQPNativeHOW" :named("name"))
    .local pmc type_obj
    set type_obj, $P1176
    set_hll_global "NQPNativeHOW", type_obj
    set_global "$?CLASS", type_obj
    get_how $P1177, type_obj
    get_hll_global $P1178, "KnowHOWAttribute"
    $P1179 = $P1178."new"("$!name" :named("name"))
    $P1177."add_attribute"(type_obj, $P1179)
    get_how $P1180, type_obj
    get_hll_global $P1181, "KnowHOWAttribute"
    $P1182 = $P1181."new"("$!composed" :named("name"))
    $P1180."add_attribute"(type_obj, $P1182)
    get_how $P1183, type_obj
    .const 'Sub' $P1184 = "72_1299588747.139" 
    $P1183."add_method"(type_obj, "new", $P1184)
    get_how $P1185, type_obj
    .const 'Sub' $P1186 = "73_1299588747.139" 
    $P1185."add_method"(type_obj, "BUILD", $P1186)
    get_how $P1187, type_obj
    .const 'Sub' $P1188 = "74_1299588747.139" 
    $P1187."add_method"(type_obj, "new_type", $P1188)
    get_how $P1189, type_obj
    .const 'Sub' $P1190 = "75_1299588747.139" 
    $P1189."add_method"(type_obj, "add_method", $P1190)
    get_how $P1191, type_obj
    .const 'Sub' $P1192 = "76_1299588747.139" 
    $P1191."add_method"(type_obj, "add_multi_method", $P1192)
    get_how $P1193, type_obj
    .const 'Sub' $P1194 = "77_1299588747.139" 
    $P1193."add_method"(type_obj, "add_attribute", $P1194)
    get_how $P1195, type_obj
    .const 'Sub' $P1196 = "78_1299588747.139" 
    $P1195."add_method"(type_obj, "compose", $P1196)
    get_how $P1197, type_obj
    .const 'Sub' $P1198 = "79_1299588747.139" 
    $P1197."add_method"(type_obj, "name", $P1198)
    get_how $P1199, type_obj
    $P1200 = $P1199."compose"(type_obj)
    .return ($P1200)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "new"  :subid("72_1299588747.139") :outer("71_1299588747.139")
    .param pmc param_1117
    .param pmc param_1118 :optional :named("name")
    .param int has_param_1118 :opt_flag
.annotate 'line', 458
    .lex "self", param_1117
    if has_param_1118, optparam_306
    new $P1119, "Undef"
    set param_1118, $P1119
  optparam_306:
    .lex "$name", param_1118
.annotate 'line', 459
    new $P1120, "Undef"
    .lex "$obj", $P1120
    find_lex $P1121, "self"
    repr_instance_of $P1122, $P1121
    store_lex "$obj", $P1122
.annotate 'line', 460
    find_lex $P1123, "$obj"
    find_lex $P1124, "$name"
    $P1123."BUILD"($P1124 :named("name"))
    find_lex $P1125, "$obj"
.annotate 'line', 458
    .return ($P1125)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "BUILD"  :subid("73_1299588747.139") :outer("71_1299588747.139")
    .param pmc param_1127
    .param pmc param_1128 :optional :named("name")
    .param int has_param_1128 :opt_flag
.annotate 'line', 464
    .lex "self", param_1127
    if has_param_1128, optparam_307
    new $P1129, "Undef"
    set param_1128, $P1129
  optparam_307:
    .lex "$name", param_1128
.annotate 'line', 465
    find_lex $P1130, "$name"
    find_lex $P1131, "self"
    get_global $P1132, "$?CLASS"
    setattribute $P1131, $P1132, "$!name", $P1130
.annotate 'line', 464
    .return ($P1130)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "new_type"  :subid("74_1299588747.139") :outer("71_1299588747.139")
    .param pmc param_1134
    .param pmc param_1137 :named("repr")
    .param pmc param_1135 :optional :named("name")
    .param int has_param_1135 :opt_flag
.annotate 'line', 471
    .lex "self", param_1134
    if has_param_1135, optparam_308
    new $P1136, "String"
    assign $P1136, "<anon>"
    set param_1135, $P1136
  optparam_308:
    .lex "$name", param_1135
    .lex "$repr", param_1137
.annotate 'line', 472
    new $P1138, "Undef"
    .lex "$metaclass", $P1138
    find_lex $P1139, "self"
    find_lex $P1140, "$name"
    $P1141 = $P1139."new"($P1140 :named("name"))
    store_lex "$metaclass", $P1141
.annotate 'line', 473
    find_lex $P1142, "$metaclass"
    find_lex $P1143, "$repr"
    set $S1144, $P1143
    repr_type_object_for $P1145, $P1142, $S1144
.annotate 'line', 471
    .return ($P1145)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_method"  :subid("75_1299588747.139") :outer("71_1299588747.139")
    .param pmc param_1147
    .param pmc param_1148
    .param pmc param_1149
    .param pmc param_1150
.annotate 'line', 476
    .lex "self", param_1147
    .lex "$obj", param_1148
    .lex "$name", param_1149
    .lex "$code_obj", param_1150
.annotate 'line', 477
    die "Native types may not have methods (must be boxed to call method)"
.annotate 'line', 476
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_multi_method"  :subid("76_1299588747.139") :outer("71_1299588747.139")
    .param pmc param_1152
    .param pmc param_1153
    .param pmc param_1154
    .param pmc param_1155
.annotate 'line', 480
    .lex "self", param_1152
    .lex "$obj", param_1153
    .lex "$name", param_1154
    .lex "$code_obj", param_1155
.annotate 'line', 481
    die "Native types may not have methods (must be boxed to call method)"
.annotate 'line', 480
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_attribute"  :subid("77_1299588747.139") :outer("71_1299588747.139")
    .param pmc param_1157
    .param pmc param_1158
    .param pmc param_1159
.annotate 'line', 484
    .lex "self", param_1157
    .lex "$obj", param_1158
    .lex "$meta_attr", param_1159
.annotate 'line', 485
    die "Native types may not have attributes"
.annotate 'line', 484
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "compose"  :subid("78_1299588747.139") :outer("71_1299588747.139")
    .param pmc param_1161
    .param pmc param_1162
.annotate 'line', 488
    .lex "self", param_1161
    .lex "$obj", param_1162
.annotate 'line', 489
    new $P1163, "Integer"
    assign $P1163, 1
    find_lex $P1164, "self"
    get_global $P1165, "$?CLASS"
    setattribute $P1164, $P1165, "$!composed", $P1163
.annotate 'line', 488
    .return ($P1163)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "name"  :subid("79_1299588747.139") :outer("71_1299588747.139")
    .param pmc param_1167
    .param pmc param_1168
.annotate 'line', 492
    .lex "self", param_1167
    .lex "$obj", param_1168
    find_lex $P1169, "self"
    get_global $P1170, "$?CLASS"
    getattribute $P1171, $P1169, $P1170, "$!name"
    unless_null $P1171, vivify_309
    new $P1171, "Undef"
  vivify_309:
    .return ($P1171)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block1201"  :subid("81_1299588747.139") :outer("10_1299588747.139")
.annotate 'line', 498
    .const 'Sub' $P1385 = "95_1299588747.139" 
    capture_lex $P1385
    .const 'Sub' $P1375 = "94_1299588747.139" 
    capture_lex $P1375
    .const 'Sub' $P1294 = "89_1299588747.139" 
    capture_lex $P1294
    .const 'Sub' $P1285 = "88_1299588747.139" 
    capture_lex $P1285
    .const 'Sub' $P1276 = "87_1299588747.139" 
    capture_lex $P1276
    .const 'Sub' $P1271 = "86_1299588747.139" 
    capture_lex $P1271
    .const 'Sub' $P1254 = "85_1299588747.139" 
    capture_lex $P1254
    .const 'Sub' $P1239 = "84_1299588747.139" 
    capture_lex $P1239
    .const 'Sub' $P1204 = "82_1299588747.139" 
    capture_lex $P1204
    get_global $P1203, "$?CLASS"
.annotate 'line', 558
    .const 'Sub' $P1204 = "82_1299588747.139" 
    newclosure $P1238, $P1204
    .lex "has_method", $P1238
.annotate 'line', 554
    find_lex $P1383, "has_method"
.annotate 'line', 498
    .return ($P1383)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "" :load :init :subid("post310") :outer("81_1299588747.139")
.annotate 'line', 498
    get_hll_global $P1202, ["NQPAttribute"], "_block1201" 
    .local pmc block
    set block, $P1202
    .const 'Sub' $P1385 = "95_1299588747.139" 
    capture_lex $P1385
    $P1385()
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block1384"  :anon :subid("95_1299588747.139") :outer("81_1299588747.139")
.annotate 'line', 498
    get_hll_global $P1386, "KnowHOW"
    $P1387 = $P1386."new_type"("NQPAttribute" :named("name"))
    .local pmc type_obj
    set type_obj, $P1387
    set_hll_global "NQPAttribute", type_obj
    set_global "$?CLASS", type_obj
    get_how $P1388, type_obj
    get_hll_global $P1389, "KnowHOWAttribute"
    $P1390 = $P1389."new"("$!name" :named("name"))
    $P1388."add_attribute"(type_obj, $P1390)
    get_how $P1391, type_obj
    get_hll_global $P1392, "KnowHOWAttribute"
    $P1393 = $P1392."new"("$!type" :named("name"))
    $P1391."add_attribute"(type_obj, $P1393)
    get_how $P1394, type_obj
    get_hll_global $P1395, "KnowHOWAttribute"
    $P1396 = $P1395."new"("$!box_target" :named("name"))
    $P1394."add_attribute"(type_obj, $P1396)
    get_how $P1397, type_obj
    .const 'Sub' $P1398 = "84_1299588747.139" 
    $P1397."add_method"(type_obj, "new", $P1398)
    get_how $P1399, type_obj
    .const 'Sub' $P1400 = "85_1299588747.139" 
    $P1399."add_method"(type_obj, "BUILD", $P1400)
    get_how $P1401, type_obj
    .const 'Sub' $P1402 = "86_1299588747.139" 
    $P1401."add_method"(type_obj, "name", $P1402)
    get_how $P1403, type_obj
    .const 'Sub' $P1404 = "87_1299588747.139" 
    $P1403."add_method"(type_obj, "type", $P1404)
    get_how $P1405, type_obj
    .const 'Sub' $P1406 = "88_1299588747.139" 
    $P1405."add_method"(type_obj, "box_target", $P1406)
    get_how $P1407, type_obj
    .const 'Sub' $P1408 = "89_1299588747.139" 
    $P1407."add_method"(type_obj, "compose", $P1408)
    get_how $P1409, type_obj
    .const 'Sub' $P1410 = "94_1299588747.139" 
    $P1409."add_method"(type_obj, "has_mutator", $P1410)
    get_how $P1411, type_obj
    $P1412 = $P1411."compose"(type_obj)
    .return ($P1412)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "has_method"  :subid("82_1299588747.139") :outer("81_1299588747.139")
    .param pmc param_1207
    .param pmc param_1208
    .param pmc param_1209
.annotate 'line', 558
    .const 'Sub' $P1221 = "83_1299588747.139" 
    capture_lex $P1221
    new $P1206, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1206, control_1205
    push_eh $P1206
    .lex "$target", param_1207
    .lex "$name", param_1208
    .lex "$local", param_1209
.annotate 'line', 559
    $P1210 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P1210
    find_lex $P1211, "$target"
    get_how $P1212, $P1211
    find_lex $P1213, "$target"
    find_lex $P1214, "$local"
    $P1215 = $P1212."methods"($P1213, $P1214 :named("local"))
    store_lex "@methods", $P1215
.annotate 'line', 560
    find_lex $P1217, "@methods"
    defined $I1218, $P1217
    unless $I1218, for_undef_311
    iter $P1216, $P1217
    new $P1233, 'ExceptionHandler'
    set_label $P1233, loop1232_handler
    $P1233."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1233
  loop1232_test:
    unless $P1216, loop1232_done
    shift $P1219, $P1216
  loop1232_redo:
    .const 'Sub' $P1221 = "83_1299588747.139" 
    capture_lex $P1221
    $P1221($P1219)
  loop1232_next:
    goto loop1232_test
  loop1232_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1234, exception, 'type'
    eq $P1234, .CONTROL_LOOP_NEXT, loop1232_next
    eq $P1234, .CONTROL_LOOP_REDO, loop1232_redo
  loop1232_done:
    pop_eh 
  for_undef_311:
.annotate 'line', 563
    new $P1235, "Exception"
    set $P1235['type'], .CONTROL_RETURN
    new $P1236, "Integer"
    assign $P1236, 0
    setattribute $P1235, 'payload', $P1236
    throw $P1235
.annotate 'line', 558
    .return ()
  control_1205:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1237, exception, "payload"
    .return ($P1237)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "_block1220"  :anon :subid("83_1299588747.139") :outer("82_1299588747.139")
    .param pmc param_1222
.annotate 'line', 560
    .lex "$_", param_1222
.annotate 'line', 561
    find_lex $P1225, "$_"
    set $S1226, $P1225
    find_lex $P1227, "$name"
    set $S1228, $P1227
    iseq $I1229, $S1226, $S1228
    if $I1229, if_1224
    new $P1223, 'Integer'
    set $P1223, $I1229
    goto if_1224_end
  if_1224:
    new $P1230, "Exception"
    set $P1230['type'], .CONTROL_RETURN
    new $P1231, "Integer"
    assign $P1231, 1
    setattribute $P1230, 'payload', $P1231
    throw $P1230
  if_1224_end:
.annotate 'line', 560
    .return ($P1223)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "new"  :subid("84_1299588747.139") :outer("81_1299588747.139")
    .param pmc param_1240
    .param pmc param_1241 :named("name")
    .param pmc param_1242 :optional :named("type")
    .param int has_param_1242 :opt_flag
    .param pmc param_1244 :optional :named("box_target")
    .param int has_param_1244 :opt_flag
.annotate 'line', 503
    .lex "self", param_1240
    .lex "$name", param_1241
    if has_param_1242, optparam_312
    new $P1243, "Undef"
    set param_1242, $P1243
  optparam_312:
    .lex "$type", param_1242
    if has_param_1244, optparam_313
    new $P1245, "Undef"
    set param_1244, $P1245
  optparam_313:
    .lex "$box_target", param_1244
.annotate 'line', 504
    new $P1246, "Undef"
    .lex "$attr", $P1246
    find_lex $P1247, "self"
    repr_instance_of $P1248, $P1247
    store_lex "$attr", $P1248
.annotate 'line', 505
    find_lex $P1249, "$attr"
    find_lex $P1250, "$name"
    find_lex $P1251, "$type"
    find_lex $P1252, "$box_target"
    $P1249."BUILD"($P1250 :named("name"), $P1251 :named("type"), $P1252 :named("box_target"))
    find_lex $P1253, "$attr"
.annotate 'line', 503
    .return ($P1253)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "BUILD"  :subid("85_1299588747.139") :outer("81_1299588747.139")
    .param pmc param_1255
    .param pmc param_1256 :optional :named("name")
    .param int has_param_1256 :opt_flag
    .param pmc param_1258 :optional :named("type")
    .param int has_param_1258 :opt_flag
    .param pmc param_1260 :optional :named("box_target")
    .param int has_param_1260 :opt_flag
.annotate 'line', 509
    .lex "self", param_1255
    if has_param_1256, optparam_314
    new $P1257, "Undef"
    set param_1256, $P1257
  optparam_314:
    .lex "$name", param_1256
    if has_param_1258, optparam_315
    new $P1259, "Undef"
    set param_1258, $P1259
  optparam_315:
    .lex "$type", param_1258
    if has_param_1260, optparam_316
    new $P1261, "Undef"
    set param_1260, $P1261
  optparam_316:
    .lex "$box_target", param_1260
.annotate 'line', 510
    find_lex $P1262, "$name"
    find_lex $P1263, "self"
    get_global $P1264, "$?CLASS"
    setattribute $P1263, $P1264, "$!name", $P1262
.annotate 'line', 511
    find_lex $P1265, "$type"
    find_lex $P1266, "self"
    get_global $P1267, "$?CLASS"
    setattribute $P1266, $P1267, "$!type", $P1265
.annotate 'line', 512
    find_lex $P1268, "$box_target"
    find_lex $P1269, "self"
    get_global $P1270, "$?CLASS"
    setattribute $P1269, $P1270, "$!box_target", $P1268
.annotate 'line', 509
    .return ($P1268)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "name"  :subid("86_1299588747.139") :outer("81_1299588747.139")
    .param pmc param_1272
.annotate 'line', 515
    .lex "self", param_1272
    find_lex $P1273, "self"
    get_global $P1274, "$?CLASS"
    getattribute $P1275, $P1273, $P1274, "$!name"
    unless_null $P1275, vivify_317
    new $P1275, "Undef"
  vivify_317:
    .return ($P1275)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "type"  :subid("87_1299588747.139") :outer("81_1299588747.139")
    .param pmc param_1277
.annotate 'line', 519
    .lex "self", param_1277
.annotate 'line', 520
    find_lex $P1279, "self"
    get_global $P1280, "$?CLASS"
    getattribute $P1281, $P1279, $P1280, "$!type"
    unless_null $P1281, vivify_318
    new $P1281, "Undef"
  vivify_318:
    set $P1278, $P1281
    defined $I1283, $P1278
    if $I1283, default_1282
    null $P1284
    set $P1278, $P1284
  default_1282:
.annotate 'line', 519
    .return ($P1278)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "box_target"  :subid("88_1299588747.139") :outer("81_1299588747.139")
    .param pmc param_1286
.annotate 'line', 523
    .lex "self", param_1286
.annotate 'line', 524
    find_lex $P1289, "self"
    get_global $P1290, "$?CLASS"
    getattribute $P1291, $P1289, $P1290, "$!box_target"
    unless_null $P1291, vivify_319
    new $P1291, "Undef"
  vivify_319:
    if $P1291, if_1288
    new $P1293, "Integer"
    assign $P1293, 0
    set $P1287, $P1293
    goto if_1288_end
  if_1288:
    new $P1292, "Integer"
    assign $P1292, 1
    set $P1287, $P1292
  if_1288_end:
.annotate 'line', 523
    .return ($P1287)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "compose"  :subid("89_1299588747.139") :outer("81_1299588747.139")
    .param pmc param_1295
    .param pmc param_1296
.annotate 'line', 527
    .const 'Sub' $P1348 = "92_1299588747.139" 
    capture_lex $P1348
    .const 'Sub' $P1308 = "90_1299588747.139" 
    capture_lex $P1308
    .lex "self", param_1295
    .lex "$obj", param_1296
.annotate 'line', 528
    new $P1297, "Undef"
    .lex "$long_name", $P1297
    find_lex $P1298, "self"
    get_global $P1299, "$?CLASS"
    getattribute $P1300, $P1298, $P1299, "$!name"
    unless_null $P1300, vivify_320
    new $P1300, "Undef"
  vivify_320:
    set $S1301, $P1300
    new $P1302, 'String'
    set $P1302, $S1301
    store_lex "$long_name", $P1302
.annotate 'line', 529
    find_lex $P1305, "self"
    $P1306 = $P1305."has_mutator"()
    if $P1306, if_1304
.annotate 'line', 541
    .const 'Sub' $P1348 = "92_1299588747.139" 
    capture_lex $P1348
    $P1374 = $P1348()
    set $P1303, $P1374
.annotate 'line', 529
    goto if_1304_end
  if_1304:
    .const 'Sub' $P1308 = "90_1299588747.139" 
    capture_lex $P1308
    $P1346 = $P1308()
    set $P1303, $P1346
  if_1304_end:
.annotate 'line', 527
    .return ($P1303)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block1347"  :anon :subid("92_1299588747.139") :outer("89_1299588747.139")
.annotate 'line', 541
    .const 'Sub' $P1364 = "93_1299588747.139" 
    capture_lex $P1364
.annotate 'line', 542
    new $P1349, "Undef"
    .lex "$method", $P1349
    find_lex $P1350, "$long_name"
    set $S1351, $P1350
    substr $S1352, $S1351, 2
    new $P1353, 'String'
    set $P1353, $S1352
    store_lex "$method", $P1353
.annotate 'line', 543
    find_lex $P1356, "$obj"
    find_lex $P1357, "$method"
    $P1358 = "has_method"($P1356, $P1357, 0)
    unless $P1358, unless_1355
    set $P1354, $P1358
    goto unless_1355_end
  unless_1355:
.annotate 'line', 544
    find_lex $P1359, "$obj"
    get_how $P1360, $P1359
    find_lex $P1361, "$obj"
    find_lex $P1362, "$method"
.annotate 'line', 545
    .const 'Sub' $P1364 = "93_1299588747.139" 
    newclosure $P1372, $P1364
    $P1373 = $P1360."add_method"($P1361, $P1362, $P1372)
.annotate 'line', 543
    set $P1354, $P1373
  unless_1355_end:
.annotate 'line', 541
    .return ($P1354)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block1363"  :anon :subid("93_1299588747.139") :outer("92_1299588747.139")
    .param pmc param_1365
.annotate 'line', 545
    .lex "self", param_1365
.annotate 'line', 546
    find_lex $P1366, "self"
    find_lex $P1367, "$obj"
    get_what $P1368, $P1367
    find_lex $P1369, "$long_name"
    set $S1370, $P1369
    getattribute $P1371, $P1366, $P1368, $S1370
.annotate 'line', 545
    .return ($P1371)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block1307"  :anon :subid("90_1299588747.139") :outer("89_1299588747.139")
.annotate 'line', 529
    .const 'Sub' $P1325 = "91_1299588747.139" 
    capture_lex $P1325
.annotate 'line', 530
    new $P1309, "Undef"
    .lex "$method", $P1309
    find_lex $P1310, "$long_name"
    set $S1311, $P1310
    substr $S1312, $S1311, 1
    new $P1313, 'String'
    set $P1313, $S1312
    store_lex "$method", $P1313
.annotate 'line', 531
    find_lex $P1316, "$obj"
    find_lex $P1317, "$method"
    $P1318 = "has_method"($P1316, $P1317, 0)
    unless $P1318, unless_1315
    set $P1314, $P1318
    goto unless_1315_end
  unless_1315:
.annotate 'line', 532
    find_lex $P1319, "$obj"
    get_how $P1320, $P1319
    find_lex $P1321, "$obj"
    get_what $P1322, $P1321
    find_lex $P1323, "$method"
    .const 'Sub' $P1325 = "91_1299588747.139" 
    newclosure $P1344, $P1325
    $P1345 = $P1320."add_method"($P1322, $P1323, $P1344)
.annotate 'line', 531
    set $P1314, $P1345
  unless_1315_end:
.annotate 'line', 529
    .return ($P1314)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block1324"  :anon :subid("91_1299588747.139") :outer("90_1299588747.139")
    .param pmc param_1326
    .param pmc param_1327 :optional
    .param int has_param_1327 :opt_flag
.annotate 'line', 532
    .lex "self", param_1326
    if has_param_1327, optparam_321
    new $P1328, "Undef"
    set param_1327, $P1328
  optparam_321:
    .lex "$value", param_1327
.annotate 'line', 534
    find_lex $P1330, "$value"
    defined $I1331, $P1330
    unless $I1331, if_1329_end
.annotate 'line', 533
    find_lex $P1332, "self"
    find_lex $P1333, "$obj"
    get_what $P1334, $P1333
    find_lex $P1335, "$long_name"
    set $S1336, $P1335
    find_lex $P1337, "$value"
    setattribute $P1332, $P1334, $S1336, $P1337
  if_1329_end:
.annotate 'line', 536
    find_lex $P1338, "self"
    find_lex $P1339, "$obj"
    get_what $P1340, $P1339
    find_lex $P1341, "$long_name"
    set $S1342, $P1341
    getattribute $P1343, $P1338, $P1340, $S1342
.annotate 'line', 532
    .return ($P1343)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "has_mutator"  :subid("94_1299588747.139") :outer("81_1299588747.139")
    .param pmc param_1376
.annotate 'line', 554
    .lex "self", param_1376
.annotate 'line', 555
    find_lex $P1377, "self"
    get_global $P1378, "$?CLASS"
    getattribute $P1379, $P1377, $P1378, "$!name"
    unless_null $P1379, vivify_322
    new $P1379, "Undef"
  vivify_322:
    set $S1380, $P1379
    substr $S1381, $S1380, 1, 1
    isne $I1382, $S1381, "!"
.annotate 'line', 554
    .return ($I1382)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1413"  :subid("96_1299588747.139") :outer("10_1299588747.139")
.annotate 'line', 571
    .const 'Sub' $P1669 = "117_1299588747.139" 
    capture_lex $P1669
    .const 'Sub' $P1661 = "116_1299588747.139" 
    capture_lex $P1661
    .const 'Sub' $P1655 = "115_1299588747.139" 
    capture_lex $P1655
    .const 'Sub' $P1633 = "113_1299588747.139" 
    capture_lex $P1633
    .const 'Sub' $P1627 = "112_1299588747.139" 
    capture_lex $P1627
    .const 'Sub' $P1621 = "111_1299588747.139" 
    capture_lex $P1621
    .const 'Sub' $P1615 = "110_1299588747.139" 
    capture_lex $P1615
    .const 'Sub' $P1593 = "108_1299588747.139" 
    capture_lex $P1593
    .const 'Sub' $P1544 = "106_1299588747.139" 
    capture_lex $P1544
    .const 'Sub' $P1531 = "105_1299588747.139" 
    capture_lex $P1531
    .const 'Sub' $P1518 = "104_1299588747.139" 
    capture_lex $P1518
    .const 'Sub' $P1514 = "103_1299588747.139" 
    capture_lex $P1514
    .const 'Sub' $P1493 = "102_1299588747.139" 
    capture_lex $P1493
    .const 'Sub' $P1472 = "101_1299588747.139" 
    capture_lex $P1472
    .const 'Sub' $P1453 = "100_1299588747.139" 
    capture_lex $P1453
    .const 'Sub' $P1437 = "99_1299588747.139" 
    capture_lex $P1437
    .const 'Sub' $P1427 = "98_1299588747.139" 
    capture_lex $P1427
    .const 'Sub' $P1416 = "97_1299588747.139" 
    capture_lex $P1416
    get_global $P1415, "$?CLASS"
.annotate 'line', 710
    .const 'Sub' $P1661 = "116_1299588747.139" 
    newclosure $P1667, $P1661
.annotate 'line', 571
    .return ($P1667)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "" :load :init :subid("post323") :outer("96_1299588747.139")
.annotate 'line', 571
    get_hll_global $P1414, ["NQPConcreteRoleHOW"], "_block1413" 
    .local pmc block
    set block, $P1414
    .const 'Sub' $P1669 = "117_1299588747.139" 
    capture_lex $P1669
    $P1669()
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1668"  :anon :subid("117_1299588747.139") :outer("96_1299588747.139")
.annotate 'line', 571
    get_hll_global $P1670, "KnowHOW"
    $P1671 = $P1670."new_type"("NQPConcreteRoleHOW" :named("name"))
    .local pmc type_obj
    set type_obj, $P1671
    set_hll_global "NQPConcreteRoleHOW", type_obj
    set_global "$?CLASS", type_obj
    get_how $P1672, type_obj
    get_hll_global $P1673, "KnowHOWAttribute"
    $P1674 = $P1673."new"("$!name" :named("name"))
    $P1672."add_attribute"(type_obj, $P1674)
    get_how $P1675, type_obj
    get_hll_global $P1676, "KnowHOWAttribute"
    $P1677 = $P1676."new"("$!instance_of" :named("name"))
    $P1675."add_attribute"(type_obj, $P1677)
    get_how $P1678, type_obj
    get_hll_global $P1679, "KnowHOWAttribute"
    $P1680 = $P1679."new"("%!attributes" :named("name"))
    $P1678."add_attribute"(type_obj, $P1680)
    get_how $P1681, type_obj
    get_hll_global $P1682, "KnowHOWAttribute"
    $P1683 = $P1682."new"("%!methods" :named("name"))
    $P1681."add_attribute"(type_obj, $P1683)
    get_how $P1684, type_obj
    get_hll_global $P1685, "KnowHOWAttribute"
    $P1686 = $P1685."new"("@!multi_methods_to_incorporate" :named("name"))
    $P1684."add_attribute"(type_obj, $P1686)
    get_how $P1687, type_obj
    get_hll_global $P1688, "KnowHOWAttribute"
    $P1689 = $P1688."new"("@!collisions" :named("name"))
    $P1687."add_attribute"(type_obj, $P1689)
    get_how $P1690, type_obj
    get_hll_global $P1691, "KnowHOWAttribute"
    $P1692 = $P1691."new"("@!roles" :named("name"))
    $P1690."add_attribute"(type_obj, $P1692)
    get_how $P1693, type_obj
    get_hll_global $P1694, "KnowHOWAttribute"
    $P1695 = $P1694."new"("@!done" :named("name"))
    $P1693."add_attribute"(type_obj, $P1695)
    get_how $P1696, type_obj
    get_hll_global $P1697, "KnowHOWAttribute"
    $P1698 = $P1697."new"("$!composed" :named("name"))
    $P1696."add_attribute"(type_obj, $P1698)
    get_how $P1699, type_obj
    .const 'Sub' $P1700 = "97_1299588747.139" 
    $P1699."add_method"(type_obj, "new", $P1700)
    get_how $P1701, type_obj
    .const 'Sub' $P1702 = "98_1299588747.139" 
    $P1701."add_method"(type_obj, "BUILD", $P1702)
    get_how $P1703, type_obj
    .const 'Sub' $P1704 = "99_1299588747.139" 
    $P1703."add_method"(type_obj, "new_type", $P1704)
    get_how $P1705, type_obj
    .const 'Sub' $P1706 = "100_1299588747.139" 
    $P1705."add_method"(type_obj, "add_method", $P1706)
    get_how $P1707, type_obj
    .const 'Sub' $P1708 = "101_1299588747.139" 
    $P1707."add_method"(type_obj, "add_multi_method", $P1708)
    get_how $P1709, type_obj
    .const 'Sub' $P1710 = "102_1299588747.139" 
    $P1709."add_method"(type_obj, "add_attribute", $P1710)
    get_how $P1711, type_obj
    .const 'Sub' $P1712 = "103_1299588747.139" 
    $P1711."add_method"(type_obj, "add_parent", $P1712)
    get_how $P1713, type_obj
    .const 'Sub' $P1714 = "104_1299588747.139" 
    $P1713."add_method"(type_obj, "add_role", $P1714)
    get_how $P1715, type_obj
    .const 'Sub' $P1716 = "105_1299588747.139" 
    $P1715."add_method"(type_obj, "add_collision", $P1716)
    get_how $P1717, type_obj
    .const 'Sub' $P1718 = "106_1299588747.139" 
    $P1717."add_method"(type_obj, "compose", $P1718)
    get_how $P1719, type_obj
    .const 'Sub' $P1720 = "108_1299588747.139" 
    $P1719."add_method"(type_obj, "methods", $P1720)
    get_how $P1721, type_obj
    .const 'Sub' $P1722 = "110_1299588747.139" 
    $P1721."add_method"(type_obj, "method_table", $P1722)
    get_how $P1723, type_obj
    .const 'Sub' $P1724 = "111_1299588747.139" 
    $P1723."add_method"(type_obj, "collisions", $P1724)
    get_how $P1725, type_obj
    .const 'Sub' $P1726 = "112_1299588747.139" 
    $P1725."add_method"(type_obj, "name", $P1726)
    get_how $P1727, type_obj
    .const 'Sub' $P1728 = "113_1299588747.139" 
    $P1727."add_method"(type_obj, "attributes", $P1728)
    get_how $P1729, type_obj
    .const 'Sub' $P1730 = "115_1299588747.139" 
    $P1729."add_method"(type_obj, "roles", $P1730)
    get_how $P1731, type_obj
    .const 'Sub' $P1732 = "116_1299588747.139" 
    $P1731."add_method"(type_obj, "instance_of", $P1732)
    get_how $P1733, type_obj
    $P1734 = $P1733."compose"(type_obj)
    .return ($P1734)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "new"  :subid("97_1299588747.139") :outer("96_1299588747.139")
    .param pmc param_1417
    .param pmc param_1418 :named("name")
    .param pmc param_1419 :named("instance_of")
.annotate 'line', 603
    .lex "self", param_1417
    .lex "$name", param_1418
    .lex "$instance_of", param_1419
.annotate 'line', 604
    new $P1420, "Undef"
    .lex "$obj", $P1420
    find_lex $P1421, "self"
    repr_instance_of $P1422, $P1421
    store_lex "$obj", $P1422
.annotate 'line', 605
    find_lex $P1423, "$obj"
    find_lex $P1424, "$name"
    find_lex $P1425, "$instance_of"
    $P1423."BUILD"($P1424 :named("name"), $P1425 :named("instance_of"))
    find_lex $P1426, "$obj"
.annotate 'line', 603
    .return ($P1426)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "BUILD"  :subid("98_1299588747.139") :outer("96_1299588747.139")
    .param pmc param_1428
    .param pmc param_1429 :named("name")
    .param pmc param_1430 :named("instance_of")
.annotate 'line', 609
    .lex "self", param_1428
    .lex "$name", param_1429
    .lex "$instance_of", param_1430
.annotate 'line', 610
    find_lex $P1431, "$name"
    find_lex $P1432, "self"
    get_global $P1433, "$?CLASS"
    setattribute $P1432, $P1433, "$!name", $P1431
.annotate 'line', 611
    find_lex $P1434, "$instance_of"
    find_lex $P1435, "self"
    get_global $P1436, "$?CLASS"
    setattribute $P1435, $P1436, "$!instance_of", $P1434
.annotate 'line', 609
    .return ($P1434)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "new_type"  :subid("99_1299588747.139") :outer("96_1299588747.139")
    .param pmc param_1438
    .param pmc param_1443 :named("instance_of")
    .param pmc param_1439 :optional :named("name")
    .param int has_param_1439 :opt_flag
    .param pmc param_1441 :optional :named("repr")
    .param int has_param_1441 :opt_flag
.annotate 'line', 616
    .lex "self", param_1438
    if has_param_1439, optparam_324
    new $P1440, "String"
    assign $P1440, "<anon>"
    set param_1439, $P1440
  optparam_324:
    .lex "$name", param_1439
    if has_param_1441, optparam_325
    new $P1442, "String"
    assign $P1442, "P6opaque"
    set param_1441, $P1442
  optparam_325:
    .lex "$repr", param_1441
    .lex "$instance_of", param_1443
.annotate 'line', 617
    new $P1444, "Undef"
    .lex "$metarole", $P1444
    find_lex $P1445, "self"
    find_lex $P1446, "$name"
    find_lex $P1447, "$instance_of"
    $P1448 = $P1445."new"($P1446 :named("name"), $P1447 :named("instance_of"))
    store_lex "$metarole", $P1448
.annotate 'line', 618
    find_lex $P1449, "$metarole"
    find_lex $P1450, "$repr"
    set $S1451, $P1450
    repr_type_object_for $P1452, $P1449, $S1451
.annotate 'line', 616
    .return ($P1452)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_method"  :subid("100_1299588747.139") :outer("96_1299588747.139")
    .param pmc param_1454
    .param pmc param_1455
    .param pmc param_1456
    .param pmc param_1457
.annotate 'line', 621
    .lex "self", param_1454
    .lex "$obj", param_1455
    .lex "$name", param_1456
    .lex "$code_obj", param_1457
.annotate 'line', 622
    find_lex $P1459, "$name"
    find_lex $P1460, "self"
    get_global $P1461, "$?CLASS"
    getattribute $P1462, $P1460, $P1461, "%!methods"
    unless_null $P1462, vivify_326
    $P1462 = root_new ['parrot';'Hash']
  vivify_326:
    set $P1463, $P1462[$P1459]
    unless_null $P1463, vivify_327
    new $P1463, "Undef"
  vivify_327:
    unless $P1463, if_1458_end
.annotate 'line', 623
    new $P1464, "String"
    assign $P1464, "This role already has a method named "
    find_lex $P1465, "$name"
    concat $P1466, $P1464, $P1465
    die $P1466
  if_1458_end:
.annotate 'line', 625
    find_lex $P1467, "$code_obj"
    find_lex $P1468, "$name"
    find_lex $P1469, "self"
    get_global $P1470, "$?CLASS"
    getattribute $P1471, $P1469, $P1470, "%!methods"
    unless_null $P1471, vivify_328
    $P1471 = root_new ['parrot';'Hash']
    setattribute $P1469, $P1470, "%!methods", $P1471
  vivify_328:
    set $P1471[$P1468], $P1467
.annotate 'line', 621
    .return ($P1467)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_multi_method"  :subid("101_1299588747.139") :outer("96_1299588747.139")
    .param pmc param_1473
    .param pmc param_1474
    .param pmc param_1475
    .param pmc param_1476
.annotate 'line', 628
    .lex "self", param_1473
    .lex "$obj", param_1474
    .lex "$name", param_1475
    .lex "$code_obj", param_1476
.annotate 'line', 629
    $P1477 = root_new ['parrot';'Hash']
    .lex "%todo", $P1477
.annotate 'line', 628
    find_lex $P1478, "%todo"
.annotate 'line', 630
    find_lex $P1479, "$name"
    find_lex $P1480, "%todo"
    unless_null $P1480, vivify_329
    $P1480 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1480
  vivify_329:
    set $P1480["name"], $P1479
.annotate 'line', 631
    find_lex $P1481, "$code_obj"
    find_lex $P1482, "%todo"
    unless_null $P1482, vivify_330
    $P1482 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1482
  vivify_330:
    set $P1482["code"], $P1481
.annotate 'line', 632
    find_lex $P1483, "%todo"
    find_lex $P1484, "self"
    get_global $P1485, "$?CLASS"
    getattribute $P1486, $P1484, $P1485, "@!multi_methods_to_incorporate"
    unless_null $P1486, vivify_331
    $P1486 = root_new ['parrot';'ResizablePMCArray']
  vivify_331:
    set $N1487, $P1486
    set $I1488, $N1487
    find_lex $P1489, "self"
    get_global $P1490, "$?CLASS"
    getattribute $P1491, $P1489, $P1490, "@!multi_methods_to_incorporate"
    unless_null $P1491, vivify_332
    $P1491 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1489, $P1490, "@!multi_methods_to_incorporate", $P1491
  vivify_332:
    set $P1491[$I1488], $P1483
    find_lex $P1492, "$code_obj"
.annotate 'line', 628
    .return ($P1492)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_attribute"  :subid("102_1299588747.139") :outer("96_1299588747.139")
    .param pmc param_1494
    .param pmc param_1495
    .param pmc param_1496
.annotate 'line', 636
    .lex "self", param_1494
    .lex "$obj", param_1495
    .lex "$meta_attr", param_1496
.annotate 'line', 637
    new $P1497, "Undef"
    .lex "$name", $P1497
    find_lex $P1498, "$meta_attr"
    $P1499 = $P1498."name"()
    store_lex "$name", $P1499
.annotate 'line', 638
    find_lex $P1501, "$name"
    find_lex $P1502, "self"
    get_global $P1503, "$?CLASS"
    getattribute $P1504, $P1502, $P1503, "%!attributes"
    unless_null $P1504, vivify_333
    $P1504 = root_new ['parrot';'Hash']
  vivify_333:
    set $P1505, $P1504[$P1501]
    unless_null $P1505, vivify_334
    new $P1505, "Undef"
  vivify_334:
    unless $P1505, if_1500_end
.annotate 'line', 639
    new $P1506, "String"
    assign $P1506, "This role already has an attribute named "
    find_lex $P1507, "$name"
    concat $P1508, $P1506, $P1507
    die $P1508
  if_1500_end:
.annotate 'line', 641
    find_lex $P1509, "$meta_attr"
    find_lex $P1510, "$name"
    find_lex $P1511, "self"
    get_global $P1512, "$?CLASS"
    getattribute $P1513, $P1511, $P1512, "%!attributes"
    unless_null $P1513, vivify_335
    $P1513 = root_new ['parrot';'Hash']
    setattribute $P1511, $P1512, "%!attributes", $P1513
  vivify_335:
    set $P1513[$P1510], $P1509
.annotate 'line', 636
    .return ($P1509)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_parent"  :subid("103_1299588747.139") :outer("96_1299588747.139")
    .param pmc param_1515
    .param pmc param_1516
    .param pmc param_1517
.annotate 'line', 644
    .lex "self", param_1515
    .lex "$obj", param_1516
    .lex "$parent", param_1517
.annotate 'line', 645
    die "A role cannot inherit from a class in NQP"
.annotate 'line', 644
    .return ()
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_role"  :subid("104_1299588747.139") :outer("96_1299588747.139")
    .param pmc param_1519
    .param pmc param_1520
    .param pmc param_1521
.annotate 'line', 648
    .lex "self", param_1519
    .lex "$obj", param_1520
    .lex "$role", param_1521
.annotate 'line', 649
    find_lex $P1522, "$role"
    find_lex $P1523, "self"
    get_global $P1524, "$?CLASS"
    getattribute $P1525, $P1523, $P1524, "@!roles"
    unless_null $P1525, vivify_336
    $P1525 = root_new ['parrot';'ResizablePMCArray']
  vivify_336:
    set $N1526, $P1525
    set $I1527, $N1526
    find_lex $P1528, "self"
    get_global $P1529, "$?CLASS"
    getattribute $P1530, $P1528, $P1529, "@!roles"
    unless_null $P1530, vivify_337
    $P1530 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1528, $P1529, "@!roles", $P1530
  vivify_337:
    set $P1530[$I1527], $P1522
.annotate 'line', 648
    .return ($P1522)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_collision"  :subid("105_1299588747.139") :outer("96_1299588747.139")
    .param pmc param_1532
    .param pmc param_1533
    .param pmc param_1534
.annotate 'line', 652
    .lex "self", param_1532
    .lex "$obj", param_1533
    .lex "$colliding_name", param_1534
.annotate 'line', 653
    find_lex $P1535, "$colliding_name"
    find_lex $P1536, "self"
    get_global $P1537, "$?CLASS"
    getattribute $P1538, $P1536, $P1537, "@!collisions"
    unless_null $P1538, vivify_338
    $P1538 = root_new ['parrot';'ResizablePMCArray']
  vivify_338:
    set $N1539, $P1538
    set $I1540, $N1539
    find_lex $P1541, "self"
    get_global $P1542, "$?CLASS"
    getattribute $P1543, $P1541, $P1542, "@!collisions"
    unless_null $P1543, vivify_339
    $P1543 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1541, $P1542, "@!collisions", $P1543
  vivify_339:
    set $P1543[$I1540], $P1535
.annotate 'line', 652
    .return ($P1535)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "compose"  :subid("106_1299588747.139") :outer("96_1299588747.139")
    .param pmc param_1545
    .param pmc param_1546
.annotate 'line', 657
    .const 'Sub' $P1558 = "107_1299588747.139" 
    capture_lex $P1558
    .lex "self", param_1545
    .lex "$obj", param_1546
.annotate 'line', 660
    find_lex $P1548, "self"
    get_global $P1549, "$?CLASS"
    getattribute $P1550, $P1548, $P1549, "@!roles"
    unless_null $P1550, vivify_340
    $P1550 = root_new ['parrot';'ResizablePMCArray']
  vivify_340:
    unless $P1550, if_1547_end
.annotate 'line', 661
    find_lex $P1552, "self"
    get_global $P1553, "$?CLASS"
    getattribute $P1554, $P1552, $P1553, "@!roles"
    unless_null $P1554, vivify_341
    $P1554 = root_new ['parrot';'ResizablePMCArray']
  vivify_341:
    defined $I1555, $P1554
    unless $I1555, for_undef_342
    iter $P1551, $P1554
    new $P1582, 'ExceptionHandler'
    set_label $P1582, loop1581_handler
    $P1582."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1582
  loop1581_test:
    unless $P1551, loop1581_done
    shift $P1556, $P1551
  loop1581_redo:
    .const 'Sub' $P1558 = "107_1299588747.139" 
    capture_lex $P1558
    $P1558($P1556)
  loop1581_next:
    goto loop1581_test
  loop1581_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1583, exception, 'type'
    eq $P1583, .CONTROL_LOOP_NEXT, loop1581_next
    eq $P1583, .CONTROL_LOOP_REDO, loop1581_redo
  loop1581_done:
    pop_eh 
  for_undef_342:
.annotate 'line', 665
    get_hll_global $P1584, "RoleToRoleApplier"
    find_lex $P1585, "$obj"
    find_lex $P1586, "self"
    get_global $P1587, "$?CLASS"
    getattribute $P1588, $P1586, $P1587, "@!roles"
    unless_null $P1588, vivify_347
    $P1588 = root_new ['parrot';'ResizablePMCArray']
  vivify_347:
    $P1584."apply"($P1585, $P1588)
  if_1547_end:
.annotate 'line', 669
    new $P1589, "Integer"
    assign $P1589, 1
    find_lex $P1590, "self"
    get_global $P1591, "$?CLASS"
    setattribute $P1590, $P1591, "$!composed", $P1589
    find_lex $P1592, "$obj"
.annotate 'line', 657
    .return ($P1592)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1557"  :anon :subid("107_1299588747.139") :outer("106_1299588747.139")
    .param pmc param_1559
.annotate 'line', 661
    .lex "$_", param_1559
.annotate 'line', 662
    find_lex $P1560, "$_"
    find_lex $P1561, "self"
    get_global $P1562, "$?CLASS"
    getattribute $P1563, $P1561, $P1562, "@!done"
    unless_null $P1563, vivify_343
    $P1563 = root_new ['parrot';'ResizablePMCArray']
  vivify_343:
    set $N1564, $P1563
    set $I1565, $N1564
    find_lex $P1566, "self"
    get_global $P1567, "$?CLASS"
    getattribute $P1568, $P1566, $P1567, "@!done"
    unless_null $P1568, vivify_344
    $P1568 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1566, $P1567, "@!done", $P1568
  vivify_344:
    set $P1568[$I1565], $P1560
.annotate 'line', 663
    find_lex $P1569, "$_"
    get_how $P1570, $P1569
    find_lex $P1571, "$_"
    $P1572 = $P1570."instance_of"($P1571)
    find_lex $P1573, "self"
    get_global $P1574, "$?CLASS"
    getattribute $P1575, $P1573, $P1574, "@!done"
    unless_null $P1575, vivify_345
    $P1575 = root_new ['parrot';'ResizablePMCArray']
  vivify_345:
    set $N1576, $P1575
    set $I1577, $N1576
    find_lex $P1578, "self"
    get_global $P1579, "$?CLASS"
    getattribute $P1580, $P1578, $P1579, "@!done"
    unless_null $P1580, vivify_346
    $P1580 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1578, $P1579, "@!done", $P1580
  vivify_346:
    set $P1580[$I1577], $P1572
.annotate 'line', 661
    .return ($P1572)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "methods"  :subid("108_1299588747.139") :outer("96_1299588747.139")
    .param pmc param_1594
    .param pmc param_1595
.annotate 'line', 678
    .const 'Sub' $P1605 = "109_1299588747.139" 
    capture_lex $P1605
    .lex "self", param_1594
    .lex "$obj", param_1595
.annotate 'line', 679
    $P1596 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meths", $P1596
.annotate 'line', 678
    find_lex $P1597, "@meths"
.annotate 'line', 680
    find_lex $P1599, "self"
    get_global $P1600, "$?CLASS"
    getattribute $P1601, $P1599, $P1600, "%!methods"
    unless_null $P1601, vivify_348
    $P1601 = root_new ['parrot';'Hash']
  vivify_348:
    defined $I1602, $P1601
    unless $I1602, for_undef_349
    iter $P1598, $P1601
    new $P1612, 'ExceptionHandler'
    set_label $P1612, loop1611_handler
    $P1612."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1612
  loop1611_test:
    unless $P1598, loop1611_done
    shift $P1603, $P1598
  loop1611_redo:
    .const 'Sub' $P1605 = "109_1299588747.139" 
    capture_lex $P1605
    $P1605($P1603)
  loop1611_next:
    goto loop1611_test
  loop1611_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1613, exception, 'type'
    eq $P1613, .CONTROL_LOOP_NEXT, loop1611_next
    eq $P1613, .CONTROL_LOOP_REDO, loop1611_redo
  loop1611_done:
    pop_eh 
  for_undef_349:
    find_lex $P1614, "@meths"
.annotate 'line', 678
    .return ($P1614)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1604"  :anon :subid("109_1299588747.139") :outer("108_1299588747.139")
    .param pmc param_1606
.annotate 'line', 680
    .lex "$_", param_1606
.annotate 'line', 681
    find_lex $P1607, "@meths"
    find_lex $P1608, "$_"
    $P1609 = $P1608."value"()
    $P1610 = $P1607."push"($P1609)
.annotate 'line', 680
    .return ($P1610)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "method_table"  :subid("110_1299588747.139") :outer("96_1299588747.139")
    .param pmc param_1616
    .param pmc param_1617
.annotate 'line', 686
    .lex "self", param_1616
    .lex "$obj", param_1617
    find_lex $P1618, "self"
    get_global $P1619, "$?CLASS"
    getattribute $P1620, $P1618, $P1619, "%!methods"
    unless_null $P1620, vivify_350
    $P1620 = root_new ['parrot';'Hash']
  vivify_350:
    .return ($P1620)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "collisions"  :subid("111_1299588747.139") :outer("96_1299588747.139")
    .param pmc param_1622
    .param pmc param_1623
.annotate 'line', 690
    .lex "self", param_1622
    .lex "$obj", param_1623
    find_lex $P1624, "self"
    get_global $P1625, "$?CLASS"
    getattribute $P1626, $P1624, $P1625, "@!collisions"
    unless_null $P1626, vivify_351
    $P1626 = root_new ['parrot';'ResizablePMCArray']
  vivify_351:
    .return ($P1626)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "name"  :subid("112_1299588747.139") :outer("96_1299588747.139")
    .param pmc param_1628
    .param pmc param_1629
.annotate 'line', 694
    .lex "self", param_1628
    .lex "$obj", param_1629
    find_lex $P1630, "self"
    get_global $P1631, "$?CLASS"
    getattribute $P1632, $P1630, $P1631, "$!name"
    unless_null $P1632, vivify_352
    new $P1632, "Undef"
  vivify_352:
    .return ($P1632)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "attributes"  :subid("113_1299588747.139") :outer("96_1299588747.139")
    .param pmc param_1634
    .param pmc param_1635
.annotate 'line', 698
    .const 'Sub' $P1645 = "114_1299588747.139" 
    capture_lex $P1645
    .lex "self", param_1634
    .lex "$obj", param_1635
.annotate 'line', 699
    $P1636 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attrs", $P1636
.annotate 'line', 698
    find_lex $P1637, "@attrs"
.annotate 'line', 700
    find_lex $P1639, "self"
    get_global $P1640, "$?CLASS"
    getattribute $P1641, $P1639, $P1640, "%!attributes"
    unless_null $P1641, vivify_353
    $P1641 = root_new ['parrot';'Hash']
  vivify_353:
    defined $I1642, $P1641
    unless $I1642, for_undef_354
    iter $P1638, $P1641
    new $P1652, 'ExceptionHandler'
    set_label $P1652, loop1651_handler
    $P1652."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1652
  loop1651_test:
    unless $P1638, loop1651_done
    shift $P1643, $P1638
  loop1651_redo:
    .const 'Sub' $P1645 = "114_1299588747.139" 
    capture_lex $P1645
    $P1645($P1643)
  loop1651_next:
    goto loop1651_test
  loop1651_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1653, exception, 'type'
    eq $P1653, .CONTROL_LOOP_NEXT, loop1651_next
    eq $P1653, .CONTROL_LOOP_REDO, loop1651_redo
  loop1651_done:
    pop_eh 
  for_undef_354:
    find_lex $P1654, "@attrs"
.annotate 'line', 698
    .return ($P1654)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1644"  :anon :subid("114_1299588747.139") :outer("113_1299588747.139")
    .param pmc param_1646
.annotate 'line', 700
    .lex "$_", param_1646
.annotate 'line', 701
    find_lex $P1647, "@attrs"
    find_lex $P1648, "$_"
    $P1649 = $P1648."value"()
    $P1650 = $P1647."push"($P1649)
.annotate 'line', 700
    .return ($P1650)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "roles"  :subid("115_1299588747.139") :outer("96_1299588747.139")
    .param pmc param_1656
    .param pmc param_1657
.annotate 'line', 706
    .lex "self", param_1656
    .lex "$obj", param_1657
    find_lex $P1658, "self"
    get_global $P1659, "$?CLASS"
    getattribute $P1660, $P1658, $P1659, "@!roles"
    unless_null $P1660, vivify_355
    $P1660 = root_new ['parrot';'ResizablePMCArray']
  vivify_355:
    .return ($P1660)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "instance_of"  :subid("116_1299588747.139") :outer("96_1299588747.139")
    .param pmc param_1662
    .param pmc param_1663
.annotate 'line', 710
    .lex "self", param_1662
    .lex "$obj", param_1663
    find_lex $P1664, "self"
    get_global $P1665, "$?CLASS"
    getattribute $P1666, $P1664, $P1665, "$!instance_of"
    unless_null $P1666, vivify_356
    new $P1666, "Undef"
  vivify_356:
    .return ($P1666)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1735"  :subid("118_1299588747.139") :outer("10_1299588747.139")
.annotate 'line', 720
    .const 'Sub' $P2033 = "141_1299588747.139" 
    capture_lex $P2033
    .const 'Sub' $P2025 = "140_1299588747.139" 
    capture_lex $P2025
    .const 'Sub' $P2003 = "138_1299588747.139" 
    capture_lex $P2003
    .const 'Sub' $P1997 = "137_1299588747.139" 
    capture_lex $P1997
    .const 'Sub' $P1991 = "136_1299588747.139" 
    capture_lex $P1991
    .const 'Sub' $P1969 = "134_1299588747.139" 
    capture_lex $P1969
    .const 'Sub' $P1863 = "129_1299588747.139" 
    capture_lex $P1863
    .const 'Sub' $P1860 = "128_1299588747.139" 
    capture_lex $P1860
    .const 'Sub' $P1853 = "127_1299588747.139" 
    capture_lex $P1853
    .const 'Sub' $P1840 = "126_1299588747.139" 
    capture_lex $P1840
    .const 'Sub' $P1836 = "125_1299588747.139" 
    capture_lex $P1836
    .const 'Sub' $P1815 = "124_1299588747.139" 
    capture_lex $P1815
    .const 'Sub' $P1794 = "123_1299588747.139" 
    capture_lex $P1794
    .const 'Sub' $P1775 = "122_1299588747.139" 
    capture_lex $P1775
    .const 'Sub' $P1759 = "121_1299588747.139" 
    capture_lex $P1759
    .const 'Sub' $P1749 = "120_1299588747.139" 
    capture_lex $P1749
    .const 'Sub' $P1738 = "119_1299588747.139" 
    capture_lex $P1738
    get_global $P1737, "$?CLASS"
.annotate 'line', 880
    .const 'Sub' $P2025 = "140_1299588747.139" 
    newclosure $P2031, $P2025
.annotate 'line', 720
    .return ($P2031)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "" :load :init :subid("post357") :outer("118_1299588747.139")
.annotate 'line', 720
    get_hll_global $P1736, ["NQPParametricRoleHOW"], "_block1735" 
    .local pmc block
    set block, $P1736
    .const 'Sub' $P2033 = "141_1299588747.139" 
    capture_lex $P2033
    $P2033()
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block2032"  :anon :subid("141_1299588747.139") :outer("118_1299588747.139")
.annotate 'line', 720
    get_hll_global $P2034, "KnowHOW"
    $P2035 = $P2034."new_type"("NQPParametricRoleHOW" :named("name"))
    .local pmc type_obj
    set type_obj, $P2035
    set_hll_global "NQPParametricRoleHOW", type_obj
    set_global "$?CLASS", type_obj
    get_how $P2036, type_obj
    get_hll_global $P2037, "KnowHOWAttribute"
    $P2038 = $P2037."new"("$!name" :named("name"))
    $P2036."add_attribute"(type_obj, $P2038)
    get_how $P2039, type_obj
    get_hll_global $P2040, "KnowHOWAttribute"
    $P2041 = $P2040."new"("%!attributes" :named("name"))
    $P2039."add_attribute"(type_obj, $P2041)
    get_how $P2042, type_obj
    get_hll_global $P2043, "KnowHOWAttribute"
    $P2044 = $P2043."new"("%!methods" :named("name"))
    $P2042."add_attribute"(type_obj, $P2044)
    get_how $P2045, type_obj
    get_hll_global $P2046, "KnowHOWAttribute"
    $P2047 = $P2046."new"("@!multi_methods_to_incorporate" :named("name"))
    $P2045."add_attribute"(type_obj, $P2047)
    get_how $P2048, type_obj
    get_hll_global $P2049, "KnowHOWAttribute"
    $P2050 = $P2049."new"("@!roles" :named("name"))
    $P2048."add_attribute"(type_obj, $P2050)
    get_how $P2051, type_obj
    get_hll_global $P2052, "KnowHOWAttribute"
    $P2053 = $P2052."new"("$!composed" :named("name"))
    $P2051."add_attribute"(type_obj, $P2053)
    get_how $P2054, type_obj
    get_hll_global $P2055, "KnowHOWAttribute"
    $P2056 = $P2055."new"("$!body_block" :named("name"))
    $P2054."add_attribute"(type_obj, $P2056)
    get_how $P2057, type_obj
    .const 'Sub' $P2058 = "119_1299588747.139" 
    $P2057."add_method"(type_obj, "new", $P2058)
    get_how $P2059, type_obj
    .const 'Sub' $P2060 = "120_1299588747.139" 
    $P2059."add_method"(type_obj, "BUILD", $P2060)
    get_how $P2061, type_obj
    .const 'Sub' $P2062 = "121_1299588747.139" 
    $P2061."add_method"(type_obj, "new_type", $P2062)
    get_how $P2063, type_obj
    .const 'Sub' $P2064 = "122_1299588747.139" 
    $P2063."add_method"(type_obj, "add_method", $P2064)
    get_how $P2065, type_obj
    .const 'Sub' $P2066 = "123_1299588747.139" 
    $P2065."add_method"(type_obj, "add_multi_method", $P2066)
    get_how $P2067, type_obj
    .const 'Sub' $P2068 = "124_1299588747.139" 
    $P2067."add_method"(type_obj, "add_attribute", $P2068)
    get_how $P2069, type_obj
    .const 'Sub' $P2070 = "125_1299588747.139" 
    $P2069."add_method"(type_obj, "add_parent", $P2070)
    get_how $P2071, type_obj
    .const 'Sub' $P2072 = "126_1299588747.139" 
    $P2071."add_method"(type_obj, "add_role", $P2072)
    get_how $P2073, type_obj
    .const 'Sub' $P2074 = "127_1299588747.139" 
    $P2073."add_method"(type_obj, "compose", $P2074)
    get_how $P2075, type_obj
    .const 'Sub' $P2076 = "128_1299588747.139" 
    $P2075."add_method"(type_obj, "parametric", $P2076)
    get_how $P2077, type_obj
    .const 'Sub' $P2078 = "129_1299588747.139" 
    $P2077."add_method"(type_obj, "instantiate", $P2078)
    get_how $P2079, type_obj
    .const 'Sub' $P2080 = "134_1299588747.139" 
    $P2079."add_method"(type_obj, "methods", $P2080)
    get_how $P2081, type_obj
    .const 'Sub' $P2082 = "136_1299588747.139" 
    $P2081."add_method"(type_obj, "method_table", $P2082)
    get_how $P2083, type_obj
    .const 'Sub' $P2084 = "137_1299588747.139" 
    $P2083."add_method"(type_obj, "name", $P2084)
    get_how $P2085, type_obj
    .const 'Sub' $P2086 = "138_1299588747.139" 
    $P2085."add_method"(type_obj, "attributes", $P2086)
    get_how $P2087, type_obj
    .const 'Sub' $P2088 = "140_1299588747.139" 
    $P2087."add_method"(type_obj, "roles", $P2088)
    get_how $P2089, type_obj
    $P2090 = $P2089."compose"(type_obj)
    .return ($P2090)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "new"  :subid("119_1299588747.139") :outer("118_1299588747.139")
    .param pmc param_1739
    .param pmc param_1740 :named("name")
    .param pmc param_1741 :named("body_block")
.annotate 'line', 750
    .lex "self", param_1739
    .lex "$name", param_1740
    .lex "$body_block", param_1741
.annotate 'line', 751
    new $P1742, "Undef"
    .lex "$obj", $P1742
    find_lex $P1743, "self"
    repr_instance_of $P1744, $P1743
    store_lex "$obj", $P1744
.annotate 'line', 752
    find_lex $P1745, "$obj"
    find_lex $P1746, "$name"
    find_lex $P1747, "$body_block"
    $P1745."BUILD"($P1746 :named("name"), $P1747 :named("body_block"))
    find_lex $P1748, "$obj"
.annotate 'line', 750
    .return ($P1748)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "BUILD"  :subid("120_1299588747.139") :outer("118_1299588747.139")
    .param pmc param_1750
    .param pmc param_1751 :named("name")
    .param pmc param_1752 :named("body_block")
.annotate 'line', 756
    .lex "self", param_1750
    .lex "$name", param_1751
    .lex "$body_block", param_1752
.annotate 'line', 757
    find_lex $P1753, "$name"
    find_lex $P1754, "self"
    get_global $P1755, "$?CLASS"
    setattribute $P1754, $P1755, "$!name", $P1753
.annotate 'line', 758
    find_lex $P1756, "$body_block"
    find_lex $P1757, "self"
    get_global $P1758, "$?CLASS"
    setattribute $P1757, $P1758, "$!body_block", $P1756
.annotate 'line', 756
    .return ($P1756)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "new_type"  :subid("121_1299588747.139") :outer("118_1299588747.139")
    .param pmc param_1760
    .param pmc param_1761 :named("body_block")
    .param pmc param_1762 :optional :named("name")
    .param int has_param_1762 :opt_flag
    .param pmc param_1764 :optional :named("repr")
    .param int has_param_1764 :opt_flag
.annotate 'line', 763
    .lex "self", param_1760
    .lex "$body_block", param_1761
    if has_param_1762, optparam_358
    new $P1763, "String"
    assign $P1763, "<anon>"
    set param_1762, $P1763
  optparam_358:
    .lex "$name", param_1762
    if has_param_1764, optparam_359
    new $P1765, "String"
    assign $P1765, "P6opaque"
    set param_1764, $P1765
  optparam_359:
    .lex "$repr", param_1764
.annotate 'line', 764
    new $P1766, "Undef"
    .lex "$metarole", $P1766
    find_lex $P1767, "self"
    find_lex $P1768, "$name"
    find_lex $P1769, "$body_block"
    $P1770 = $P1767."new"($P1768 :named("name"), $P1769 :named("body_block"))
    store_lex "$metarole", $P1770
.annotate 'line', 765
    find_lex $P1771, "$metarole"
    find_lex $P1772, "$repr"
    set $S1773, $P1772
    repr_type_object_for $P1774, $P1771, $S1773
.annotate 'line', 763
    .return ($P1774)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_method"  :subid("122_1299588747.139") :outer("118_1299588747.139")
    .param pmc param_1776
    .param pmc param_1777
    .param pmc param_1778
    .param pmc param_1779
.annotate 'line', 768
    .lex "self", param_1776
    .lex "$obj", param_1777
    .lex "$name", param_1778
    .lex "$code_obj", param_1779
.annotate 'line', 769
    find_lex $P1781, "$name"
    find_lex $P1782, "self"
    get_global $P1783, "$?CLASS"
    getattribute $P1784, $P1782, $P1783, "%!methods"
    unless_null $P1784, vivify_360
    $P1784 = root_new ['parrot';'Hash']
  vivify_360:
    set $P1785, $P1784[$P1781]
    unless_null $P1785, vivify_361
    new $P1785, "Undef"
  vivify_361:
    unless $P1785, if_1780_end
.annotate 'line', 770
    new $P1786, "String"
    assign $P1786, "This role already has a method named "
    find_lex $P1787, "$name"
    concat $P1788, $P1786, $P1787
    die $P1788
  if_1780_end:
.annotate 'line', 772
    find_lex $P1789, "$code_obj"
    find_lex $P1790, "$name"
    find_lex $P1791, "self"
    get_global $P1792, "$?CLASS"
    getattribute $P1793, $P1791, $P1792, "%!methods"
    unless_null $P1793, vivify_362
    $P1793 = root_new ['parrot';'Hash']
    setattribute $P1791, $P1792, "%!methods", $P1793
  vivify_362:
    set $P1793[$P1790], $P1789
.annotate 'line', 768
    .return ($P1789)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_multi_method"  :subid("123_1299588747.139") :outer("118_1299588747.139")
    .param pmc param_1795
    .param pmc param_1796
    .param pmc param_1797
    .param pmc param_1798
.annotate 'line', 775
    .lex "self", param_1795
    .lex "$obj", param_1796
    .lex "$name", param_1797
    .lex "$code_obj", param_1798
.annotate 'line', 776
    $P1799 = root_new ['parrot';'Hash']
    .lex "%todo", $P1799
.annotate 'line', 775
    find_lex $P1800, "%todo"
.annotate 'line', 777
    find_lex $P1801, "$name"
    find_lex $P1802, "%todo"
    unless_null $P1802, vivify_363
    $P1802 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1802
  vivify_363:
    set $P1802["name"], $P1801
.annotate 'line', 778
    find_lex $P1803, "$code_obj"
    find_lex $P1804, "%todo"
    unless_null $P1804, vivify_364
    $P1804 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1804
  vivify_364:
    set $P1804["code"], $P1803
.annotate 'line', 779
    find_lex $P1805, "%todo"
    find_lex $P1806, "self"
    get_global $P1807, "$?CLASS"
    getattribute $P1808, $P1806, $P1807, "@!multi_methods_to_incorporate"
    unless_null $P1808, vivify_365
    $P1808 = root_new ['parrot';'ResizablePMCArray']
  vivify_365:
    set $N1809, $P1808
    set $I1810, $N1809
    find_lex $P1811, "self"
    get_global $P1812, "$?CLASS"
    getattribute $P1813, $P1811, $P1812, "@!multi_methods_to_incorporate"
    unless_null $P1813, vivify_366
    $P1813 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1811, $P1812, "@!multi_methods_to_incorporate", $P1813
  vivify_366:
    set $P1813[$I1810], $P1805
    find_lex $P1814, "$code_obj"
.annotate 'line', 775
    .return ($P1814)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_attribute"  :subid("124_1299588747.139") :outer("118_1299588747.139")
    .param pmc param_1816
    .param pmc param_1817
    .param pmc param_1818
.annotate 'line', 783
    .lex "self", param_1816
    .lex "$obj", param_1817
    .lex "$meta_attr", param_1818
.annotate 'line', 784
    new $P1819, "Undef"
    .lex "$name", $P1819
    find_lex $P1820, "$meta_attr"
    $P1821 = $P1820."name"()
    store_lex "$name", $P1821
.annotate 'line', 785
    find_lex $P1823, "$name"
    find_lex $P1824, "self"
    get_global $P1825, "$?CLASS"
    getattribute $P1826, $P1824, $P1825, "%!attributes"
    unless_null $P1826, vivify_367
    $P1826 = root_new ['parrot';'Hash']
  vivify_367:
    set $P1827, $P1826[$P1823]
    unless_null $P1827, vivify_368
    new $P1827, "Undef"
  vivify_368:
    unless $P1827, if_1822_end
.annotate 'line', 786
    new $P1828, "String"
    assign $P1828, "This role already has an attribute named "
    find_lex $P1829, "$name"
    concat $P1830, $P1828, $P1829
    die $P1830
  if_1822_end:
.annotate 'line', 788
    find_lex $P1831, "$meta_attr"
    find_lex $P1832, "$name"
    find_lex $P1833, "self"
    get_global $P1834, "$?CLASS"
    getattribute $P1835, $P1833, $P1834, "%!attributes"
    unless_null $P1835, vivify_369
    $P1835 = root_new ['parrot';'Hash']
    setattribute $P1833, $P1834, "%!attributes", $P1835
  vivify_369:
    set $P1835[$P1832], $P1831
.annotate 'line', 783
    .return ($P1831)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_parent"  :subid("125_1299588747.139") :outer("118_1299588747.139")
    .param pmc param_1837
    .param pmc param_1838
    .param pmc param_1839
.annotate 'line', 791
    .lex "self", param_1837
    .lex "$obj", param_1838
    .lex "$parent", param_1839
.annotate 'line', 792
    die "A role cannot inherit from a class"
.annotate 'line', 791
    .return ()
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_role"  :subid("126_1299588747.139") :outer("118_1299588747.139")
    .param pmc param_1841
    .param pmc param_1842
    .param pmc param_1843
.annotate 'line', 795
    .lex "self", param_1841
    .lex "$obj", param_1842
    .lex "$role", param_1843
.annotate 'line', 796
    find_lex $P1844, "$role"
    find_lex $P1845, "self"
    get_global $P1846, "$?CLASS"
    getattribute $P1847, $P1845, $P1846, "@!roles"
    unless_null $P1847, vivify_370
    $P1847 = root_new ['parrot';'ResizablePMCArray']
  vivify_370:
    set $N1848, $P1847
    set $I1849, $N1848
    find_lex $P1850, "self"
    get_global $P1851, "$?CLASS"
    getattribute $P1852, $P1850, $P1851, "@!roles"
    unless_null $P1852, vivify_371
    $P1852 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1850, $P1851, "@!roles", $P1852
  vivify_371:
    set $P1852[$I1849], $P1844
.annotate 'line', 795
    .return ($P1844)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "compose"  :subid("127_1299588747.139") :outer("118_1299588747.139")
    .param pmc param_1854
    .param pmc param_1855
.annotate 'line', 800
    .lex "self", param_1854
    .lex "$obj", param_1855
.annotate 'line', 801
    new $P1856, "Integer"
    assign $P1856, 1
    find_lex $P1857, "self"
    get_global $P1858, "$?CLASS"
    setattribute $P1857, $P1858, "$!composed", $P1856
    find_lex $P1859, "$obj"
.annotate 'line', 800
    .return ($P1859)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "parametric"  :subid("128_1299588747.139") :outer("118_1299588747.139")
    .param pmc param_1861
    .param pmc param_1862
.annotate 'line', 811
    .lex "self", param_1861
    .lex "$obj", param_1862
    .return (1)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "instantiate"  :subid("129_1299588747.139") :outer("118_1299588747.139")
    .param pmc param_1866
    .param pmc param_1867
    .param pmc param_1868
.annotate 'line', 817
    .const 'Sub' $P1947 = "133_1299588747.139" 
    capture_lex $P1947
    .const 'Sub' $P1926 = "132_1299588747.139" 
    capture_lex $P1926
    .const 'Sub' $P1905 = "131_1299588747.139" 
    capture_lex $P1905
    .const 'Sub' $P1887 = "130_1299588747.139" 
    capture_lex $P1887
    new $P1865, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1865, control_1864
    push_eh $P1865
    .lex "self", param_1866
    .lex "$obj", param_1867
    .lex "$class_arg", param_1868
.annotate 'line', 823
    new $P1869, "Undef"
    .lex "$irole", $P1869
.annotate 'line', 820
    find_lex $P1870, "self"
    get_global $P1871, "$?CLASS"
    getattribute $P1872, $P1870, $P1871, "$!body_block"
    unless_null $P1872, vivify_372
    new $P1872, "Undef"
  vivify_372:
    find_lex $P1873, "$class_arg"
    $P1872($P1873)
.annotate 'line', 823
    get_hll_global $P1874, "NQPConcreteRoleHOW"
    find_lex $P1875, "self"
    get_global $P1876, "$?CLASS"
    getattribute $P1877, $P1875, $P1876, "$!name"
    unless_null $P1877, vivify_373
    new $P1877, "Undef"
  vivify_373:
    find_lex $P1878, "$obj"
    $P1879 = $P1874."new_type"($P1877 :named("name"), $P1878 :named("instance_of"))
    store_lex "$irole", $P1879
.annotate 'line', 827
    find_lex $P1881, "self"
    get_global $P1882, "$?CLASS"
    getattribute $P1883, $P1881, $P1882, "%!attributes"
    unless_null $P1883, vivify_374
    $P1883 = root_new ['parrot';'Hash']
  vivify_374:
    defined $I1884, $P1883
    unless $I1884, for_undef_375
    iter $P1880, $P1883
    new $P1896, 'ExceptionHandler'
    set_label $P1896, loop1895_handler
    $P1896."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1896
  loop1895_test:
    unless $P1880, loop1895_done
    shift $P1885, $P1880
  loop1895_redo:
    .const 'Sub' $P1887 = "130_1299588747.139" 
    capture_lex $P1887
    $P1887($P1885)
  loop1895_next:
    goto loop1895_test
  loop1895_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1897, exception, 'type'
    eq $P1897, .CONTROL_LOOP_NEXT, loop1895_next
    eq $P1897, .CONTROL_LOOP_REDO, loop1895_redo
  loop1895_done:
    pop_eh 
  for_undef_375:
.annotate 'line', 833
    find_lex $P1899, "self"
    get_global $P1900, "$?CLASS"
    getattribute $P1901, $P1899, $P1900, "%!methods"
    unless_null $P1901, vivify_376
    $P1901 = root_new ['parrot';'Hash']
  vivify_376:
    defined $I1902, $P1901
    unless $I1902, for_undef_377
    iter $P1898, $P1901
    new $P1917, 'ExceptionHandler'
    set_label $P1917, loop1916_handler
    $P1917."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1917
  loop1916_test:
    unless $P1898, loop1916_done
    shift $P1903, $P1898
  loop1916_redo:
    .const 'Sub' $P1905 = "131_1299588747.139" 
    capture_lex $P1905
    $P1905($P1903)
  loop1916_next:
    goto loop1916_test
  loop1916_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1918, exception, 'type'
    eq $P1918, .CONTROL_LOOP_NEXT, loop1916_next
    eq $P1918, .CONTROL_LOOP_REDO, loop1916_redo
  loop1916_done:
    pop_eh 
  for_undef_377:
.annotate 'line', 836
    find_lex $P1920, "self"
    get_global $P1921, "$?CLASS"
    getattribute $P1922, $P1920, $P1921, "@!multi_methods_to_incorporate"
    unless_null $P1922, vivify_378
    $P1922 = root_new ['parrot';'ResizablePMCArray']
  vivify_378:
    defined $I1923, $P1922
    unless $I1923, for_undef_379
    iter $P1919, $P1922
    new $P1938, 'ExceptionHandler'
    set_label $P1938, loop1937_handler
    $P1938."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1938
  loop1937_test:
    unless $P1919, loop1937_done
    shift $P1924, $P1919
  loop1937_redo:
    .const 'Sub' $P1926 = "132_1299588747.139" 
    capture_lex $P1926
    $P1926($P1924)
  loop1937_next:
    goto loop1937_test
  loop1937_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1939, exception, 'type'
    eq $P1939, .CONTROL_LOOP_NEXT, loop1937_next
    eq $P1939, .CONTROL_LOOP_REDO, loop1937_redo
  loop1937_done:
    pop_eh 
  for_undef_379:
.annotate 'line', 841
    find_lex $P1941, "self"
    get_global $P1942, "$?CLASS"
    getattribute $P1943, $P1941, $P1942, "@!roles"
    unless_null $P1943, vivify_384
    $P1943 = root_new ['parrot';'ResizablePMCArray']
  vivify_384:
    defined $I1944, $P1943
    unless $I1944, for_undef_385
    iter $P1940, $P1943
    new $P1961, 'ExceptionHandler'
    set_label $P1961, loop1960_handler
    $P1961."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1961
  loop1960_test:
    unless $P1940, loop1960_done
    shift $P1945, $P1940
  loop1960_redo:
    .const 'Sub' $P1947 = "133_1299588747.139" 
    capture_lex $P1947
    $P1947($P1945)
  loop1960_next:
    goto loop1960_test
  loop1960_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1962, exception, 'type'
    eq $P1962, .CONTROL_LOOP_NEXT, loop1960_next
    eq $P1962, .CONTROL_LOOP_REDO, loop1960_redo
  loop1960_done:
    pop_eh 
  for_undef_385:
.annotate 'line', 847
    find_lex $P1963, "$irole"
    get_how $P1964, $P1963
    find_lex $P1965, "$irole"
    $P1964."compose"($P1965)
.annotate 'line', 848
    new $P1966, "Exception"
    set $P1966['type'], .CONTROL_RETURN
    find_lex $P1967, "$irole"
    setattribute $P1966, 'payload', $P1967
    throw $P1966
.annotate 'line', 817
    .return ()
  control_1864:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1968, exception, "payload"
    .return ($P1968)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1886"  :anon :subid("130_1299588747.139") :outer("129_1299588747.139")
    .param pmc param_1888
.annotate 'line', 827
    .lex "$_", param_1888
.annotate 'line', 828
    find_lex $P1889, "$irole"
    get_how $P1890, $P1889
    find_lex $P1891, "$irole"
    find_lex $P1892, "$_"
    $P1893 = $P1892."value"()
    $P1894 = $P1890."add_attribute"($P1891, $P1893)
.annotate 'line', 827
    .return ($P1894)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1904"  :anon :subid("131_1299588747.139") :outer("129_1299588747.139")
    .param pmc param_1906
.annotate 'line', 833
    .lex "$_", param_1906
.annotate 'line', 834
    find_lex $P1907, "$irole"
    get_how $P1908, $P1907
    find_lex $P1909, "$irole"
    find_lex $P1910, "$_"
    $P1911 = $P1910."key"()
    find_lex $P1912, "$_"
    $P1913 = $P1912."value"()
    clone $P1914, $P1913
    $P1915 = $P1908."add_method"($P1909, $P1911, $P1914)
.annotate 'line', 833
    .return ($P1915)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1925"  :anon :subid("132_1299588747.139") :outer("129_1299588747.139")
    .param pmc param_1927
.annotate 'line', 836
    .lex "$_", param_1927
.annotate 'line', 837
    find_lex $P1928, "$irole"
    get_how $P1929, $P1928
    find_lex $P1930, "$irole"
    find_lex $P1931, "$_"
    unless_null $P1931, vivify_380
    $P1931 = root_new ['parrot';'Hash']
  vivify_380:
    set $P1932, $P1931["name"]
    unless_null $P1932, vivify_381
    new $P1932, "Undef"
  vivify_381:
    find_lex $P1933, "$_"
    unless_null $P1933, vivify_382
    $P1933 = root_new ['parrot';'Hash']
  vivify_382:
    set $P1934, $P1933["code"]
    unless_null $P1934, vivify_383
    new $P1934, "Undef"
  vivify_383:
    clone $P1935, $P1934
    $P1936 = $P1929."add_multi_method"($P1930, $P1932, $P1935)
.annotate 'line', 836
    .return ($P1936)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1946"  :anon :subid("133_1299588747.139") :outer("129_1299588747.139")
    .param pmc param_1949
.annotate 'line', 842
    new $P1948, "Undef"
    .lex "$instantiated", $P1948
    .lex "$_", param_1949
    find_lex $P1950, "$irole"
    get_how $P1951, $P1950
    find_lex $P1952, "$irole"
    find_lex $P1953, "$class_arg"
    $P1954 = $P1951."instantiate"($P1952, $P1953)
    store_lex "$instantiated", $P1954
.annotate 'line', 843
    find_lex $P1955, "$irole"
    get_how $P1956, $P1955
    find_lex $P1957, "$irole"
    find_lex $P1958, "$instantiated"
    $P1959 = $P1956."add_role"($P1957, $P1958)
.annotate 'line', 841
    .return ($P1959)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "methods"  :subid("134_1299588747.139") :outer("118_1299588747.139")
    .param pmc param_1970
    .param pmc param_1971
.annotate 'line', 856
    .const 'Sub' $P1981 = "135_1299588747.139" 
    capture_lex $P1981
    .lex "self", param_1970
    .lex "$obj", param_1971
.annotate 'line', 857
    $P1972 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meths", $P1972
.annotate 'line', 856
    find_lex $P1973, "@meths"
.annotate 'line', 858
    find_lex $P1975, "self"
    get_global $P1976, "$?CLASS"
    getattribute $P1977, $P1975, $P1976, "%!methods"
    unless_null $P1977, vivify_386
    $P1977 = root_new ['parrot';'Hash']
  vivify_386:
    defined $I1978, $P1977
    unless $I1978, for_undef_387
    iter $P1974, $P1977
    new $P1988, 'ExceptionHandler'
    set_label $P1988, loop1987_handler
    $P1988."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1988
  loop1987_test:
    unless $P1974, loop1987_done
    shift $P1979, $P1974
  loop1987_redo:
    .const 'Sub' $P1981 = "135_1299588747.139" 
    capture_lex $P1981
    $P1981($P1979)
  loop1987_next:
    goto loop1987_test
  loop1987_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1989, exception, 'type'
    eq $P1989, .CONTROL_LOOP_NEXT, loop1987_next
    eq $P1989, .CONTROL_LOOP_REDO, loop1987_redo
  loop1987_done:
    pop_eh 
  for_undef_387:
    find_lex $P1990, "@meths"
.annotate 'line', 856
    .return ($P1990)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1980"  :anon :subid("135_1299588747.139") :outer("134_1299588747.139")
    .param pmc param_1982
.annotate 'line', 858
    .lex "$_", param_1982
.annotate 'line', 859
    find_lex $P1983, "@meths"
    find_lex $P1984, "$_"
    $P1985 = $P1984."value"()
    $P1986 = $P1983."push"($P1985)
.annotate 'line', 858
    .return ($P1986)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "method_table"  :subid("136_1299588747.139") :outer("118_1299588747.139")
    .param pmc param_1992
    .param pmc param_1993
.annotate 'line', 864
    .lex "self", param_1992
    .lex "$obj", param_1993
    find_lex $P1994, "self"
    get_global $P1995, "$?CLASS"
    getattribute $P1996, $P1994, $P1995, "%!methods"
    unless_null $P1996, vivify_388
    $P1996 = root_new ['parrot';'Hash']
  vivify_388:
    .return ($P1996)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "name"  :subid("137_1299588747.139") :outer("118_1299588747.139")
    .param pmc param_1998
    .param pmc param_1999
.annotate 'line', 868
    .lex "self", param_1998
    .lex "$obj", param_1999
    find_lex $P2000, "self"
    get_global $P2001, "$?CLASS"
    getattribute $P2002, $P2000, $P2001, "$!name"
    unless_null $P2002, vivify_389
    new $P2002, "Undef"
  vivify_389:
    .return ($P2002)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "attributes"  :subid("138_1299588747.139") :outer("118_1299588747.139")
    .param pmc param_2004
    .param pmc param_2005
.annotate 'line', 872
    .const 'Sub' $P2015 = "139_1299588747.139" 
    capture_lex $P2015
    .lex "self", param_2004
    .lex "$obj", param_2005
.annotate 'line', 873
    $P2006 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attrs", $P2006
.annotate 'line', 872
    find_lex $P2007, "@attrs"
.annotate 'line', 874
    find_lex $P2009, "self"
    get_global $P2010, "$?CLASS"
    getattribute $P2011, $P2009, $P2010, "%!attributes"
    unless_null $P2011, vivify_390
    $P2011 = root_new ['parrot';'Hash']
  vivify_390:
    defined $I2012, $P2011
    unless $I2012, for_undef_391
    iter $P2008, $P2011
    new $P2022, 'ExceptionHandler'
    set_label $P2022, loop2021_handler
    $P2022."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2022
  loop2021_test:
    unless $P2008, loop2021_done
    shift $P2013, $P2008
  loop2021_redo:
    .const 'Sub' $P2015 = "139_1299588747.139" 
    capture_lex $P2015
    $P2015($P2013)
  loop2021_next:
    goto loop2021_test
  loop2021_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2023, exception, 'type'
    eq $P2023, .CONTROL_LOOP_NEXT, loop2021_next
    eq $P2023, .CONTROL_LOOP_REDO, loop2021_redo
  loop2021_done:
    pop_eh 
  for_undef_391:
    find_lex $P2024, "@attrs"
.annotate 'line', 872
    .return ($P2024)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block2014"  :anon :subid("139_1299588747.139") :outer("138_1299588747.139")
    .param pmc param_2016
.annotate 'line', 874
    .lex "$_", param_2016
.annotate 'line', 875
    find_lex $P2017, "@attrs"
    find_lex $P2018, "$_"
    $P2019 = $P2018."value"()
    $P2020 = $P2017."push"($P2019)
.annotate 'line', 874
    .return ($P2020)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "roles"  :subid("140_1299588747.139") :outer("118_1299588747.139")
    .param pmc param_2026
    .param pmc param_2027
.annotate 'line', 880
    .lex "self", param_2026
    .lex "$obj", param_2027
    find_lex $P2028, "self"
    get_global $P2029, "$?CLASS"
    getattribute $P2030, $P2028, $P2029, "@!roles"
    unless_null $P2030, vivify_392
    $P2030 = root_new ['parrot';'ResizablePMCArray']
  vivify_392:
    .return ($P2030)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block2091"  :subid("142_1299588747.139") :outer("10_1299588747.139")
.annotate 'line', 886
    .const 'Sub' $P2300 = "152_1299588747.139" 
    capture_lex $P2300
    .const 'Sub' $P2164 = "147_1299588747.139" 
    capture_lex $P2164
    .const 'Sub' $P2129 = "145_1299588747.139" 
    capture_lex $P2129
    .const 'Sub' $P2094 = "143_1299588747.139" 
    capture_lex $P2094
    get_global $P2093, "$?CLASS"
.annotate 'line', 888
    .const 'Sub' $P2094 = "143_1299588747.139" 
    newclosure $P2128, $P2094
    .lex "has_method", $P2128
.annotate 'line', 896
    .const 'Sub' $P2129 = "145_1299588747.139" 
    newclosure $P2161, $P2129
    .lex "has_attribute", $P2161
.annotate 'line', 886
    find_lex $P2162, "has_method"
    find_lex $P2163, "has_attribute"
.annotate 'line', 904
    .const 'Sub' $P2164 = "147_1299588747.139" 
    newclosure $P2298, $P2164
.annotate 'line', 886
    .return ($P2298)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "" :load :init :subid("post393") :outer("142_1299588747.139")
.annotate 'line', 886
    get_hll_global $P2092, ["RoleToClassApplier"], "_block2091" 
    .local pmc block
    set block, $P2092
    .const 'Sub' $P2300 = "152_1299588747.139" 
    capture_lex $P2300
    $P2300()
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block2299"  :anon :subid("152_1299588747.139") :outer("142_1299588747.139")
.annotate 'line', 886
    get_hll_global $P2301, "KnowHOW"
    $P2302 = $P2301."new_type"("RoleToClassApplier" :named("name"))
    .local pmc type_obj
    set type_obj, $P2302
    set_hll_global "RoleToClassApplier", type_obj
    set_global "$?CLASS", type_obj
    get_how $P2303, type_obj
    .const 'Sub' $P2304 = "147_1299588747.139" 
    $P2303."add_method"(type_obj, "apply", $P2304)
    get_how $P2305, type_obj
    $P2306 = $P2305."compose"(type_obj)
    .return ($P2306)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "has_method"  :subid("143_1299588747.139") :outer("142_1299588747.139")
    .param pmc param_2097
    .param pmc param_2098
    .param pmc param_2099
.annotate 'line', 888
    .const 'Sub' $P2111 = "144_1299588747.139" 
    capture_lex $P2111
    new $P2096, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2096, control_2095
    push_eh $P2096
    .lex "$target", param_2097
    .lex "$name", param_2098
    .lex "$local", param_2099
.annotate 'line', 889
    $P2100 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P2100
    find_lex $P2101, "$target"
    get_how $P2102, $P2101
    find_lex $P2103, "$target"
    find_lex $P2104, "$local"
    $P2105 = $P2102."methods"($P2103, $P2104 :named("local"))
    store_lex "@methods", $P2105
.annotate 'line', 890
    find_lex $P2107, "@methods"
    defined $I2108, $P2107
    unless $I2108, for_undef_394
    iter $P2106, $P2107
    new $P2123, 'ExceptionHandler'
    set_label $P2123, loop2122_handler
    $P2123."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2123
  loop2122_test:
    unless $P2106, loop2122_done
    shift $P2109, $P2106
  loop2122_redo:
    .const 'Sub' $P2111 = "144_1299588747.139" 
    capture_lex $P2111
    $P2111($P2109)
  loop2122_next:
    goto loop2122_test
  loop2122_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2124, exception, 'type'
    eq $P2124, .CONTROL_LOOP_NEXT, loop2122_next
    eq $P2124, .CONTROL_LOOP_REDO, loop2122_redo
  loop2122_done:
    pop_eh 
  for_undef_394:
.annotate 'line', 893
    new $P2125, "Exception"
    set $P2125['type'], .CONTROL_RETURN
    new $P2126, "Integer"
    assign $P2126, 0
    setattribute $P2125, 'payload', $P2126
    throw $P2125
.annotate 'line', 888
    .return ()
  control_2095:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2127, exception, "payload"
    .return ($P2127)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "_block2110"  :anon :subid("144_1299588747.139") :outer("143_1299588747.139")
    .param pmc param_2112
.annotate 'line', 890
    .lex "$_", param_2112
.annotate 'line', 891
    find_lex $P2115, "$_"
    set $S2116, $P2115
    find_lex $P2117, "$name"
    set $S2118, $P2117
    iseq $I2119, $S2116, $S2118
    if $I2119, if_2114
    new $P2113, 'Integer'
    set $P2113, $I2119
    goto if_2114_end
  if_2114:
    new $P2120, "Exception"
    set $P2120['type'], .CONTROL_RETURN
    new $P2121, "Integer"
    assign $P2121, 1
    setattribute $P2120, 'payload', $P2121
    throw $P2120
  if_2114_end:
.annotate 'line', 890
    .return ($P2113)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "has_attribute"  :subid("145_1299588747.139") :outer("142_1299588747.139")
    .param pmc param_2132
    .param pmc param_2133
.annotate 'line', 896
    .const 'Sub' $P2144 = "146_1299588747.139" 
    capture_lex $P2144
    new $P2131, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2131, control_2130
    push_eh $P2131
    .lex "$target", param_2132
    .lex "$name", param_2133
.annotate 'line', 897
    $P2134 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attributes", $P2134
    find_lex $P2135, "$target"
    get_how $P2136, $P2135
    find_lex $P2137, "$target"
    $P2138 = $P2136."attributes"($P2137, 1 :named("local"))
    store_lex "@attributes", $P2138
.annotate 'line', 898
    find_lex $P2140, "@attributes"
    defined $I2141, $P2140
    unless $I2141, for_undef_395
    iter $P2139, $P2140
    new $P2156, 'ExceptionHandler'
    set_label $P2156, loop2155_handler
    $P2156."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2156
  loop2155_test:
    unless $P2139, loop2155_done
    shift $P2142, $P2139
  loop2155_redo:
    .const 'Sub' $P2144 = "146_1299588747.139" 
    capture_lex $P2144
    $P2144($P2142)
  loop2155_next:
    goto loop2155_test
  loop2155_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2157, exception, 'type'
    eq $P2157, .CONTROL_LOOP_NEXT, loop2155_next
    eq $P2157, .CONTROL_LOOP_REDO, loop2155_redo
  loop2155_done:
    pop_eh 
  for_undef_395:
.annotate 'line', 901
    new $P2158, "Exception"
    set $P2158['type'], .CONTROL_RETURN
    new $P2159, "Integer"
    assign $P2159, 0
    setattribute $P2158, 'payload', $P2159
    throw $P2158
.annotate 'line', 896
    .return ()
  control_2130:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2160, exception, "payload"
    .return ($P2160)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "_block2143"  :anon :subid("146_1299588747.139") :outer("145_1299588747.139")
    .param pmc param_2145
.annotate 'line', 898
    .lex "$_", param_2145
.annotate 'line', 899
    find_lex $P2148, "$_"
    $S2149 = $P2148."name"()
    find_lex $P2150, "$name"
    set $S2151, $P2150
    iseq $I2152, $S2149, $S2151
    if $I2152, if_2147
    new $P2146, 'Integer'
    set $P2146, $I2152
    goto if_2147_end
  if_2147:
    new $P2153, "Exception"
    set $P2153['type'], .CONTROL_RETURN
    new $P2154, "Integer"
    assign $P2154, 1
    setattribute $P2153, 'payload', $P2154
    throw $P2153
  if_2147_end:
.annotate 'line', 898
    .return ($P2146)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "apply"  :subid("147_1299588747.139") :outer("142_1299588747.139")
    .param pmc param_2165
    .param pmc param_2166
    .param pmc param_2167
.annotate 'line', 904
    .const 'Sub' $P2269 = "151_1299588747.139" 
    capture_lex $P2269
    .const 'Sub' $P2243 = "150_1299588747.139" 
    capture_lex $P2243
    .const 'Sub' $P2214 = "149_1299588747.139" 
    capture_lex $P2214
    .const 'Sub' $P2194 = "148_1299588747.139" 
    capture_lex $P2194
    .lex "self", param_2165
    .lex "$target", param_2166
    .lex "@roles", param_2167
.annotate 'line', 907
    new $P2168, "Undef"
    .lex "$to_compose", $P2168
.annotate 'line', 908
    new $P2169, "Undef"
    .lex "$to_compose_meta", $P2169
.annotate 'line', 923
    $P2170 = root_new ['parrot';'ResizablePMCArray']
    .lex "@collisions", $P2170
.annotate 'line', 932
    $P2171 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P2171
.annotate 'line', 940
    $P2172 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attributes", $P2172
.annotate 'line', 952
    $P2173 = root_new ['parrot';'ResizablePMCArray']
    .lex "@done", $P2173
.annotate 'line', 904
    find_lex $P2174, "$to_compose"
    find_lex $P2175, "$to_compose_meta"
.annotate 'line', 909
    find_lex $P2177, "@roles"
    set $N2178, $P2177
    iseq $I2179, $N2178, 1.0
    if $I2179, if_2176
.annotate 'line', 914
    get_hll_global $P2184, "NQPConcreteRoleHOW"
    get_hll_global $P2185, "NQPMu"
    $P2186 = $P2184."new_type"($P2185 :named("instance_of"))
    store_lex "$to_compose", $P2186
.annotate 'line', 915
    find_lex $P2187, "$to_compose"
    get_how $P2188, $P2187
    store_lex "$to_compose_meta", $P2188
.annotate 'line', 916
    find_lex $P2190, "@roles"
    defined $I2191, $P2190
    unless $I2191, for_undef_396
    iter $P2189, $P2190
    new $P2201, 'ExceptionHandler'
    set_label $P2201, loop2200_handler
    $P2201."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2201
  loop2200_test:
    unless $P2189, loop2200_done
    shift $P2192, $P2189
  loop2200_redo:
    .const 'Sub' $P2194 = "148_1299588747.139" 
    capture_lex $P2194
    $P2194($P2192)
  loop2200_next:
    goto loop2200_test
  loop2200_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2202, exception, 'type'
    eq $P2202, .CONTROL_LOOP_NEXT, loop2200_next
    eq $P2202, .CONTROL_LOOP_REDO, loop2200_redo
  loop2200_done:
    pop_eh 
  for_undef_396:
.annotate 'line', 919
    find_lex $P2203, "$to_compose_meta"
    find_lex $P2204, "$to_compose"
    $P2205 = $P2203."compose"($P2204)
    store_lex "$to_compose", $P2205
.annotate 'line', 913
    goto if_2176_end
  if_2176:
.annotate 'line', 910
    find_lex $P2180, "@roles"
    unless_null $P2180, vivify_397
    $P2180 = root_new ['parrot';'ResizablePMCArray']
  vivify_397:
    set $P2181, $P2180[0]
    unless_null $P2181, vivify_398
    new $P2181, "Undef"
  vivify_398:
    store_lex "$to_compose", $P2181
.annotate 'line', 911
    find_lex $P2182, "$to_compose"
    get_how $P2183, $P2182
    store_lex "$to_compose_meta", $P2183
  if_2176_end:
.annotate 'line', 923
    find_lex $P2206, "$to_compose_meta"
    find_lex $P2207, "$to_compose"
    $P2208 = $P2206."collisions"($P2207)
    store_lex "@collisions", $P2208
.annotate 'line', 924
    find_lex $P2210, "@collisions"
    defined $I2211, $P2210
    unless $I2211, for_undef_399
    iter $P2209, $P2210
    new $P2233, 'ExceptionHandler'
    set_label $P2233, loop2232_handler
    $P2233."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2233
  loop2232_test:
    unless $P2209, loop2232_done
    shift $P2212, $P2209
  loop2232_redo:
    .const 'Sub' $P2214 = "149_1299588747.139" 
    capture_lex $P2214
    $P2214($P2212)
  loop2232_next:
    goto loop2232_test
  loop2232_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2234, exception, 'type'
    eq $P2234, .CONTROL_LOOP_NEXT, loop2232_next
    eq $P2234, .CONTROL_LOOP_REDO, loop2232_redo
  loop2232_done:
    pop_eh 
  for_undef_399:
.annotate 'line', 932
    find_lex $P2235, "$to_compose_meta"
    find_lex $P2236, "$to_compose"
    $P2237 = $P2235."methods"($P2236)
    store_lex "@methods", $P2237
.annotate 'line', 933
    find_lex $P2239, "@methods"
    defined $I2240, $P2239
    unless $I2240, for_undef_400
    iter $P2238, $P2239
    new $P2259, 'ExceptionHandler'
    set_label $P2259, loop2258_handler
    $P2259."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2259
  loop2258_test:
    unless $P2238, loop2258_done
    shift $P2241, $P2238
  loop2258_redo:
    .const 'Sub' $P2243 = "150_1299588747.139" 
    capture_lex $P2243
    $P2243($P2241)
  loop2258_next:
    goto loop2258_test
  loop2258_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2260, exception, 'type'
    eq $P2260, .CONTROL_LOOP_NEXT, loop2258_next
    eq $P2260, .CONTROL_LOOP_REDO, loop2258_redo
  loop2258_done:
    pop_eh 
  for_undef_400:
.annotate 'line', 940
    find_lex $P2261, "$to_compose_meta"
    find_lex $P2262, "$to_compose"
    $P2263 = $P2261."attributes"($P2262)
    store_lex "@attributes", $P2263
.annotate 'line', 941
    find_lex $P2265, "@attributes"
    defined $I2266, $P2265
    unless $I2266, for_undef_401
    iter $P2264, $P2265
    new $P2293, 'ExceptionHandler'
    set_label $P2293, loop2292_handler
    $P2293."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2293
  loop2292_test:
    unless $P2264, loop2292_done
    shift $P2267, $P2264
  loop2292_redo:
    .const 'Sub' $P2269 = "151_1299588747.139" 
    capture_lex $P2269
    $P2269($P2267)
  loop2292_next:
    goto loop2292_test
  loop2292_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2294, exception, 'type'
    eq $P2294, .CONTROL_LOOP_NEXT, loop2292_next
    eq $P2294, .CONTROL_LOOP_REDO, loop2292_redo
  loop2292_done:
    pop_eh 
  for_undef_401:
    find_lex $P2295, "@done"
.annotate 'line', 953
    find_lex $P2296, "$to_compose"
    find_lex $P2297, "@done"
    unless_null $P2297, vivify_402
    $P2297 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@done", $P2297
  vivify_402:
    set $P2297[0], $P2296
.annotate 'line', 904
    .return ($P2296)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block2193"  :anon :subid("148_1299588747.139") :outer("147_1299588747.139")
    .param pmc param_2195
.annotate 'line', 916
    .lex "$_", param_2195
.annotate 'line', 917
    find_lex $P2196, "$to_compose_meta"
    find_lex $P2197, "$to_compose"
    find_lex $P2198, "$_"
    $P2199 = $P2196."add_role"($P2197, $P2198)
.annotate 'line', 916
    .return ($P2199)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block2213"  :anon :subid("149_1299588747.139") :outer("147_1299588747.139")
    .param pmc param_2215
.annotate 'line', 924
    .lex "$_", param_2215
.annotate 'line', 925
    find_lex $P2218, "$target"
    find_lex $P2219, "$_"
    set $S2220, $P2219
    $P2221 = "has_method"($P2218, $S2220, 1)
    unless $P2221, unless_2217
    set $P2216, $P2221
    goto unless_2217_end
  unless_2217:
.annotate 'line', 926
    new $P2222, 'String'
    set $P2222, "Method '"
    find_lex $P2223, "$_"
    concat $P2224, $P2222, $P2223
    concat $P2225, $P2224, "' collides and a resolution must be provided by the class '"
.annotate 'line', 927
    find_lex $P2226, "$target"
    get_how $P2227, $P2226
    find_lex $P2228, "$target"
    $S2229 = $P2227."name"($P2228)
    concat $P2230, $P2225, $S2229
.annotate 'line', 926
    concat $P2231, $P2230, "'"
.annotate 'line', 927
    die $P2231
  unless_2217_end:
.annotate 'line', 924
    .return ($P2216)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block2242"  :anon :subid("150_1299588747.139") :outer("147_1299588747.139")
    .param pmc param_2244
.annotate 'line', 933
    .lex "$_", param_2244
.annotate 'line', 934
    find_lex $P2247, "$target"
    find_lex $P2248, "$_"
    set $S2249, $P2248
    $P2250 = "has_method"($P2247, $S2249, 0)
    unless $P2250, unless_2246
    set $P2245, $P2250
    goto unless_2246_end
  unless_2246:
.annotate 'line', 935
    find_lex $P2251, "$target"
    get_how $P2252, $P2251
    find_lex $P2253, "$target"
    find_lex $P2254, "$_"
    set $S2255, $P2254
    find_lex $P2256, "$_"
    $P2257 = $P2252."add_method"($P2253, $S2255, $P2256)
.annotate 'line', 934
    set $P2245, $P2257
  unless_2246_end:
.annotate 'line', 933
    .return ($P2245)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block2268"  :anon :subid("151_1299588747.139") :outer("147_1299588747.139")
    .param pmc param_2270
.annotate 'line', 941
    .lex "$_", param_2270
.annotate 'line', 942
    find_lex $P2272, "$target"
    find_lex $P2273, "$_"
    $P2274 = $P2273."name"()
    $P2275 = "has_attribute"($P2272, $P2274)
    unless $P2275, if_2271_end
.annotate 'line', 943
    new $P2276, "String"
    assign $P2276, "Attribute '"
    find_lex $P2277, "$_"
    $S2278 = $P2277."name"()
    concat $P2279, $P2276, $S2278
    concat $P2280, $P2279, "' already exists in the class '"
.annotate 'line', 944
    find_lex $P2281, "$target"
    get_how $P2282, $P2281
    find_lex $P2283, "$target"
    $S2284 = $P2282."name"($P2283)
    concat $P2285, $P2280, $S2284
.annotate 'line', 943
    concat $P2286, $P2285, "', but a role also wishes to compose it"
.annotate 'line', 944
    die $P2286
  if_2271_end:
.annotate 'line', 946
    find_lex $P2287, "$target"
    get_how $P2288, $P2287
    find_lex $P2289, "$target"
    find_lex $P2290, "$_"
    $P2291 = $P2288."add_attribute"($P2289, $P2290)
.annotate 'line', 941
    .return ($P2291)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block2307"  :subid("153_1299588747.139") :outer("10_1299588747.139")
.annotate 'line', 958
    .const 'Sub' $P2530 = "163_1299588747.139" 
    capture_lex $P2530
    .const 'Sub' $P2310 = "154_1299588747.139" 
    capture_lex $P2310
    get_global $P2309, "$?CLASS"
.annotate 'line', 959
    .const 'Sub' $P2310 = "154_1299588747.139" 
    newclosure $P2528, $P2310
.annotate 'line', 958
    .return ($P2528)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "" :load :init :subid("post403") :outer("153_1299588747.139")
.annotate 'line', 958
    get_hll_global $P2308, ["RoleToRoleApplier"], "_block2307" 
    .local pmc block
    set block, $P2308
    .const 'Sub' $P2530 = "163_1299588747.139" 
    capture_lex $P2530
    $P2530()
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block2529"  :anon :subid("163_1299588747.139") :outer("153_1299588747.139")
.annotate 'line', 958
    get_hll_global $P2531, "KnowHOW"
    $P2532 = $P2531."new_type"("RoleToRoleApplier" :named("name"))
    .local pmc type_obj
    set type_obj, $P2532
    set_hll_global "RoleToRoleApplier", type_obj
    set_global "$?CLASS", type_obj
    get_how $P2533, type_obj
    .const 'Sub' $P2534 = "154_1299588747.139" 
    $P2533."add_method"(type_obj, "apply", $P2534)
    get_how $P2535, type_obj
    $P2536 = $P2535."compose"(type_obj)
    .return ($P2536)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "apply"  :subid("154_1299588747.139") :outer("153_1299588747.139")
    .param pmc param_2313
    .param pmc param_2314
    .param pmc param_2315
.annotate 'line', 959
    .const 'Sub' $P2455 = "160_1299588747.139" 
    capture_lex $P2455
    .const 'Sub' $P2413 = "159_1299588747.139" 
    capture_lex $P2413
    .const 'Sub' $P2399 = "158_1299588747.139" 
    capture_lex $P2399
    .const 'Sub' $P2326 = "155_1299588747.139" 
    capture_lex $P2326
    new $P2312, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2312, control_2311
    push_eh $P2312
    .lex "self", param_2313
    .lex "$target", param_2314
    .lex "@roles", param_2315
.annotate 'line', 961
    $P2316 = root_new ['parrot';'Hash']
    .lex "%meth_info", $P2316
.annotate 'line', 987
    $P2317 = root_new ['parrot';'Hash']
    .lex "%target_meth_info", $P2317
.annotate 'line', 988
    $P2318 = root_new ['parrot';'ResizablePMCArray']
    .lex "@target_meths", $P2318
.annotate 'line', 1013
    $P2319 = root_new ['parrot';'ResizablePMCArray']
    .lex "@all_roles", $P2319
.annotate 'line', 959
    find_lex $P2320, "%meth_info"
.annotate 'line', 962
    find_lex $P2322, "@roles"
    defined $I2323, $P2322
    unless $I2323, for_undef_404
    iter $P2321, $P2322
    new $P2387, 'ExceptionHandler'
    set_label $P2387, loop2386_handler
    $P2387."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2387
  loop2386_test:
    unless $P2321, loop2386_done
    shift $P2324, $P2321
  loop2386_redo:
    .const 'Sub' $P2326 = "155_1299588747.139" 
    capture_lex $P2326
    $P2326($P2324)
  loop2386_next:
    goto loop2386_test
  loop2386_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2388, exception, 'type'
    eq $P2388, .CONTROL_LOOP_NEXT, loop2386_next
    eq $P2388, .CONTROL_LOOP_REDO, loop2386_redo
  loop2386_done:
    pop_eh 
  for_undef_404:
    find_lex $P2389, "%target_meth_info"
.annotate 'line', 988
    find_lex $P2390, "$target"
    get_how $P2391, $P2390
    find_lex $P2392, "$target"
    $P2393 = $P2391."methods"($P2392)
    store_lex "@target_meths", $P2393
.annotate 'line', 989
    find_lex $P2395, "@target_meths"
    defined $I2396, $P2395
    unless $I2396, for_undef_412
    iter $P2394, $P2395
    new $P2406, 'ExceptionHandler'
    set_label $P2406, loop2405_handler
    $P2406."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2406
  loop2405_test:
    unless $P2394, loop2405_done
    shift $P2397, $P2394
  loop2405_redo:
    .const 'Sub' $P2399 = "158_1299588747.139" 
    capture_lex $P2399
    $P2399($P2397)
  loop2405_next:
    goto loop2405_test
  loop2405_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2407, exception, 'type'
    eq $P2407, .CONTROL_LOOP_NEXT, loop2405_next
    eq $P2407, .CONTROL_LOOP_REDO, loop2405_redo
  loop2405_done:
    pop_eh 
  for_undef_412:
.annotate 'line', 994
    find_lex $P2409, "%meth_info"
    defined $I2410, $P2409
    unless $I2410, for_undef_414
    iter $P2408, $P2409
    new $P2447, 'ExceptionHandler'
    set_label $P2447, loop2446_handler
    $P2447."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2447
  loop2446_test:
    unless $P2408, loop2446_done
    shift $P2411, $P2408
  loop2446_redo:
    .const 'Sub' $P2413 = "159_1299588747.139" 
    capture_lex $P2413
    $P2413($P2411)
  loop2446_next:
    goto loop2446_test
  loop2446_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2448, exception, 'type'
    eq $P2448, .CONTROL_LOOP_NEXT, loop2446_next
    eq $P2448, .CONTROL_LOOP_REDO, loop2446_redo
  loop2446_done:
    pop_eh 
  for_undef_414:
    find_lex $P2449, "@all_roles"
.annotate 'line', 1014
    find_lex $P2451, "@roles"
    defined $I2452, $P2451
    unless $I2452, for_undef_421
    iter $P2450, $P2451
    new $P2523, 'ExceptionHandler'
    set_label $P2523, loop2522_handler
    $P2523."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2523
  loop2522_test:
    unless $P2450, loop2522_done
    shift $P2453, $P2450
  loop2522_redo:
    .const 'Sub' $P2455 = "160_1299588747.139" 
    capture_lex $P2455
    $P2455($P2453)
  loop2522_next:
    goto loop2522_test
  loop2522_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2524, exception, 'type'
    eq $P2524, .CONTROL_LOOP_NEXT, loop2522_next
    eq $P2524, .CONTROL_LOOP_REDO, loop2522_redo
  loop2522_done:
    pop_eh 
  for_undef_421:
.annotate 'line', 1043
    new $P2525, "Exception"
    set $P2525['type'], .CONTROL_RETURN
    find_lex $P2526, "@all_roles"
    setattribute $P2525, 'payload', $P2526
    throw $P2525
.annotate 'line', 959
    .return ()
  control_2311:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2527, exception, "payload"
    .return ($P2527)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block2325"  :anon :subid("155_1299588747.139") :outer("154_1299588747.139")
    .param pmc param_2328
.annotate 'line', 962
    .const 'Sub' $P2338 = "156_1299588747.139" 
    capture_lex $P2338
.annotate 'line', 963
    $P2327 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P2327
    .lex "$_", param_2328
    find_lex $P2329, "$_"
    get_how $P2330, $P2329
    find_lex $P2331, "$_"
    $P2332 = $P2330."methods"($P2331)
    store_lex "@methods", $P2332
.annotate 'line', 964
    find_lex $P2334, "@methods"
    defined $I2335, $P2334
    unless $I2335, for_undef_405
    iter $P2333, $P2334
    new $P2384, 'ExceptionHandler'
    set_label $P2384, loop2383_handler
    $P2384."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2384
  loop2383_test:
    unless $P2333, loop2383_done
    shift $P2336, $P2333
  loop2383_redo:
    .const 'Sub' $P2338 = "156_1299588747.139" 
    capture_lex $P2338
    $P2338($P2336)
  loop2383_next:
    goto loop2383_test
  loop2383_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2385, exception, 'type'
    eq $P2385, .CONTROL_LOOP_NEXT, loop2383_next
    eq $P2385, .CONTROL_LOOP_REDO, loop2383_redo
  loop2383_done:
    pop_eh 
  for_undef_405:
.annotate 'line', 962
    .return ($P2333)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block2337"  :anon :subid("156_1299588747.139") :outer("155_1299588747.139")
    .param pmc param_2343
.annotate 'line', 964
    .const 'Sub' $P2366 = "157_1299588747.139" 
    capture_lex $P2366
.annotate 'line', 965
    new $P2339, "Undef"
    .lex "$name", $P2339
.annotate 'line', 966
    new $P2340, "Undef"
    .lex "$meth", $P2340
.annotate 'line', 967
    $P2341 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meth_list", $P2341
.annotate 'line', 974
    new $P2342, "Undef"
    .lex "$found", $P2342
    .lex "$_", param_2343
.annotate 'line', 965
    find_lex $P2344, "$_"
    set $S2345, $P2344
    new $P2346, 'String'
    set $P2346, $S2345
    store_lex "$name", $P2346
.annotate 'line', 966
    find_lex $P2347, "$_"
    store_lex "$meth", $P2347
    find_lex $P2348, "@meth_list"
.annotate 'line', 968
    find_lex $P2350, "$name"
    find_lex $P2351, "%meth_info"
    unless_null $P2351, vivify_406
    $P2351 = root_new ['parrot';'Hash']
  vivify_406:
    set $P2352, $P2351[$P2350]
    unless_null $P2352, vivify_407
    new $P2352, "Undef"
  vivify_407:
    defined $I2353, $P2352
    if $I2353, if_2349
.annotate 'line', 972
    find_lex $P2357, "@meth_list"
    find_lex $P2358, "$name"
    find_lex $P2359, "%meth_info"
    unless_null $P2359, vivify_408
    $P2359 = root_new ['parrot';'Hash']
    store_lex "%meth_info", $P2359
  vivify_408:
    set $P2359[$P2358], $P2357
.annotate 'line', 971
    goto if_2349_end
  if_2349:
.annotate 'line', 969
    find_lex $P2354, "$name"
    find_lex $P2355, "%meth_info"
    unless_null $P2355, vivify_409
    $P2355 = root_new ['parrot';'Hash']
  vivify_409:
    set $P2356, $P2355[$P2354]
    unless_null $P2356, vivify_410
    new $P2356, "Undef"
  vivify_410:
    store_lex "@meth_list", $P2356
  if_2349_end:
.annotate 'line', 974
    new $P2360, "Integer"
    assign $P2360, 0
    store_lex "$found", $P2360
.annotate 'line', 975
    find_lex $P2362, "@meth_list"
    defined $I2363, $P2362
    unless $I2363, for_undef_411
    iter $P2361, $P2362
    new $P2375, 'ExceptionHandler'
    set_label $P2375, loop2374_handler
    $P2375."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2375
  loop2374_test:
    unless $P2361, loop2374_done
    shift $P2364, $P2361
  loop2374_redo:
    .const 'Sub' $P2366 = "157_1299588747.139" 
    capture_lex $P2366
    $P2366($P2364)
  loop2374_next:
    goto loop2374_test
  loop2374_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2376, exception, 'type'
    eq $P2376, .CONTROL_LOOP_NEXT, loop2374_next
    eq $P2376, .CONTROL_LOOP_REDO, loop2374_redo
  loop2374_done:
    pop_eh 
  for_undef_411:
.annotate 'line', 980
    find_lex $P2379, "$found"
    unless $P2379, unless_2378
    set $P2377, $P2379
    goto unless_2378_end
  unless_2378:
.annotate 'line', 981
    find_lex $P2380, "@meth_list"
    find_lex $P2381, "$meth"
    $P2382 = $P2380."push"($P2381)
.annotate 'line', 980
    set $P2377, $P2382
  unless_2378_end:
.annotate 'line', 964
    .return ($P2377)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block2365"  :anon :subid("157_1299588747.139") :outer("156_1299588747.139")
    .param pmc param_2367
.annotate 'line', 975
    .lex "$_", param_2367
.annotate 'line', 976
    find_lex $P2370, "$meth"
    find_lex $P2371, "$_"
    issame $I2372, $P2370, $P2371
    if $I2372, if_2369
    new $P2368, 'Integer'
    set $P2368, $I2372
    goto if_2369_end
  if_2369:
.annotate 'line', 977
    new $P2373, "Integer"
    assign $P2373, 1
    store_lex "$found", $P2373
.annotate 'line', 976
    set $P2368, $P2373
  if_2369_end:
.annotate 'line', 975
    .return ($P2368)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block2398"  :anon :subid("158_1299588747.139") :outer("154_1299588747.139")
    .param pmc param_2400
.annotate 'line', 989
    .lex "$_", param_2400
.annotate 'line', 990
    find_lex $P2401, "$_"
    find_lex $P2402, "$_"
    set $S2403, $P2402
    find_lex $P2404, "%target_meth_info"
    unless_null $P2404, vivify_413
    $P2404 = root_new ['parrot';'Hash']
    store_lex "%target_meth_info", $P2404
  vivify_413:
    set $P2404[$S2403], $P2401
.annotate 'line', 989
    .return ($P2401)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block2412"  :anon :subid("159_1299588747.139") :outer("154_1299588747.139")
    .param pmc param_2416
.annotate 'line', 995
    new $P2414, "Undef"
    .lex "$name", $P2414
.annotate 'line', 996
    $P2415 = root_new ['parrot';'ResizablePMCArray']
    .lex "@add_meths", $P2415
    .lex "$_", param_2416
.annotate 'line', 995
    find_lex $P2417, "$_"
    set $S2418, $P2417
    new $P2419, 'String'
    set $P2419, $S2418
    store_lex "$name", $P2419
.annotate 'line', 996
    find_lex $P2420, "$name"
    find_lex $P2421, "%meth_info"
    unless_null $P2421, vivify_415
    $P2421 = root_new ['parrot';'Hash']
  vivify_415:
    set $P2422, $P2421[$P2420]
    unless_null $P2422, vivify_416
    new $P2422, "Undef"
  vivify_416:
    store_lex "@add_meths", $P2422
.annotate 'line', 1000
    find_lex $P2425, "$name"
    find_lex $P2426, "%target_meth_info"
    unless_null $P2426, vivify_417
    $P2426 = root_new ['parrot';'Hash']
  vivify_417:
    set $P2427, $P2426[$P2425]
    unless_null $P2427, vivify_418
    new $P2427, "Undef"
  vivify_418:
    defined $I2428, $P2427
    unless $I2428, unless_2424
    new $P2423, 'Integer'
    set $P2423, $I2428
    goto unless_2424_end
  unless_2424:
.annotate 'line', 1002
    find_lex $P2431, "@add_meths"
    set $N2432, $P2431
    iseq $I2433, $N2432, 1.0
    if $I2433, if_2430
.annotate 'line', 1007
    find_lex $P2441, "$target"
    get_how $P2442, $P2441
    find_lex $P2443, "$target"
    find_lex $P2444, "$name"
    $P2445 = $P2442."add_collision"($P2443, $P2444)
.annotate 'line', 1005
    set $P2429, $P2445
.annotate 'line', 1002
    goto if_2430_end
  if_2430:
.annotate 'line', 1003
    find_lex $P2434, "$target"
    get_how $P2435, $P2434
    find_lex $P2436, "$target"
    find_lex $P2437, "$name"
    find_lex $P2438, "@add_meths"
    unless_null $P2438, vivify_419
    $P2438 = root_new ['parrot';'ResizablePMCArray']
  vivify_419:
    set $P2439, $P2438[0]
    unless_null $P2439, vivify_420
    new $P2439, "Undef"
  vivify_420:
    $P2440 = $P2435."add_method"($P2436, $P2437, $P2439)
.annotate 'line', 1002
    set $P2429, $P2440
  if_2430_end:
.annotate 'line', 1000
    set $P2423, $P2429
  unless_2424_end:
.annotate 'line', 994
    .return ($P2423)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block2454"  :anon :subid("160_1299588747.139") :outer("154_1299588747.139")
    .param pmc param_2458
.annotate 'line', 1014
    .const 'Sub' $P2469 = "161_1299588747.139" 
    capture_lex $P2469
.annotate 'line', 1015
    new $P2456, "Undef"
    .lex "$how", $P2456
.annotate 'line', 1018
    $P2457 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attributes", $P2457
    .lex "$_", param_2458
.annotate 'line', 1015
    find_lex $P2459, "$_"
    get_how $P2460, $P2459
    store_lex "$how", $P2460
.annotate 'line', 1018
    find_lex $P2461, "$how"
    find_lex $P2462, "$_"
    $P2463 = $P2461."attributes"($P2462)
    store_lex "@attributes", $P2463
.annotate 'line', 1019
    find_lex $P2465, "@attributes"
    defined $I2466, $P2465
    unless $I2466, for_undef_422
    iter $P2464, $P2465
    new $P2517, 'ExceptionHandler'
    set_label $P2517, loop2516_handler
    $P2517."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2517
  loop2516_test:
    unless $P2464, loop2516_done
    shift $P2467, $P2464
  loop2516_redo:
    .const 'Sub' $P2469 = "161_1299588747.139" 
    capture_lex $P2469
    $P2469($P2467)
  loop2516_next:
    goto loop2516_test
  loop2516_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2518, exception, 'type'
    eq $P2518, .CONTROL_LOOP_NEXT, loop2516_next
    eq $P2518, .CONTROL_LOOP_REDO, loop2516_redo
  loop2516_done:
    pop_eh 
  for_undef_422:
.annotate 'line', 1040
    find_lex $P2519, "@all_roles"
    find_lex $P2520, "$_"
    $P2521 = $P2519."push"($P2520)
.annotate 'line', 1014
    .return ($P2521)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block2468"  :anon :subid("161_1299588747.139") :outer("160_1299588747.139")
    .param pmc param_2473
.annotate 'line', 1019
    .const 'Sub' $P2485 = "162_1299588747.139" 
    capture_lex $P2485
.annotate 'line', 1020
    new $P2470, "Undef"
    .lex "$add_attr", $P2470
.annotate 'line', 1021
    new $P2471, "Undef"
    .lex "$skip", $P2471
.annotate 'line', 1022
    $P2472 = root_new ['parrot';'ResizablePMCArray']
    .lex "@cur_attrs", $P2472
    .lex "$_", param_2473
.annotate 'line', 1020
    find_lex $P2474, "$_"
    store_lex "$add_attr", $P2474
.annotate 'line', 1021
    new $P2475, "Integer"
    assign $P2475, 0
    store_lex "$skip", $P2475
.annotate 'line', 1022
    find_lex $P2476, "$target"
    get_how $P2477, $P2476
    find_lex $P2478, "$target"
    $P2479 = $P2477."attributes"($P2478)
    store_lex "@cur_attrs", $P2479
.annotate 'line', 1023
    find_lex $P2481, "@cur_attrs"
    defined $I2482, $P2481
    unless $I2482, for_undef_423
    iter $P2480, $P2481
    new $P2506, 'ExceptionHandler'
    set_label $P2506, loop2505_handler
    $P2506."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2506
  loop2505_test:
    unless $P2480, loop2505_done
    shift $P2483, $P2480
  loop2505_redo:
    .const 'Sub' $P2485 = "162_1299588747.139" 
    capture_lex $P2485
    $P2485($P2483)
  loop2505_next:
    goto loop2505_test
  loop2505_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2507, exception, 'type'
    eq $P2507, .CONTROL_LOOP_NEXT, loop2505_next
    eq $P2507, .CONTROL_LOOP_REDO, loop2505_redo
  loop2505_done:
    pop_eh 
  for_undef_423:
.annotate 'line', 1033
    find_lex $P2510, "$skip"
    unless $P2510, unless_2509
    set $P2508, $P2510
    goto unless_2509_end
  unless_2509:
.annotate 'line', 1034
    find_lex $P2511, "$target"
    get_how $P2512, $P2511
    find_lex $P2513, "$target"
    find_lex $P2514, "$add_attr"
    $P2515 = $P2512."add_attribute"($P2513, $P2514)
.annotate 'line', 1033
    set $P2508, $P2515
  unless_2509_end:
.annotate 'line', 1019
    .return ($P2508)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block2484"  :anon :subid("162_1299588747.139") :outer("161_1299588747.139")
    .param pmc param_2486
.annotate 'line', 1023
    .lex "$_", param_2486
.annotate 'line', 1024
    find_lex $P2489, "$_"
    find_lex $P2490, "$add_attr"
    issame $I2491, $P2489, $P2490
    if $I2491, if_2488
.annotate 'line', 1028
    find_lex $P2495, "$_"
    $S2496 = $P2495."name"()
    find_lex $P2497, "$add_attr"
    $S2498 = $P2497."name"()
    iseq $I2499, $S2496, $S2498
    if $I2499, if_2494
    new $P2493, 'Integer'
    set $P2493, $I2499
    goto if_2494_end
  if_2494:
.annotate 'line', 1029
    new $P2500, "String"
    assign $P2500, "Attribute '"
    find_lex $P2501, "$_"
    $S2502 = $P2501."name"()
    concat $P2503, $P2500, $S2502
    concat $P2504, $P2503, "' conflicts in role composition"
    die $P2504
  if_2494_end:
.annotate 'line', 1027
    set $P2487, $P2493
.annotate 'line', 1024
    goto if_2488_end
  if_2488:
.annotate 'line', 1025
    new $P2492, "Integer"
    assign $P2492, 1
    store_lex "$skip", $P2492
.annotate 'line', 1024
    set $P2487, $P2492
  if_2488_end:
.annotate 'line', 1023
    .return ($P2487)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "_block2537"  :subid("164_1299588747.139") :outer("10_1299588747.139")
.annotate 'line', 1048
    .const 'Sub' $P2599 = "173_1299588747.139" 
    capture_lex $P2599
    .const 'Sub' $P2591 = "172_1299588747.139" 
    capture_lex $P2591
    .const 'Sub' $P2585 = "171_1299588747.139" 
    capture_lex $P2585
    .const 'Sub' $P2581 = "170_1299588747.139" 
    capture_lex $P2581
    .const 'Sub' $P2576 = "169_1299588747.139" 
    capture_lex $P2576
    .const 'Sub' $P2571 = "168_1299588747.139" 
    capture_lex $P2571
    .const 'Sub' $P2557 = "167_1299588747.139" 
    capture_lex $P2557
    .const 'Sub' $P2550 = "166_1299588747.139" 
    capture_lex $P2550
    .const 'Sub' $P2540 = "165_1299588747.139" 
    capture_lex $P2540
    get_global $P2539, "$?CLASS"
.annotate 'line', 1087
    .const 'Sub' $P2591 = "172_1299588747.139" 
    newclosure $P2597, $P2591
.annotate 'line', 1048
    .return ($P2597)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "" :load :init :subid("post424") :outer("164_1299588747.139")
.annotate 'line', 1048
    get_hll_global $P2538, ["NQPModuleHOW"], "_block2537" 
    .local pmc block
    set block, $P2538
    .const 'Sub' $P2599 = "173_1299588747.139" 
    capture_lex $P2599
    $P2599()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "_block2598"  :anon :subid("173_1299588747.139") :outer("164_1299588747.139")
.annotate 'line', 1048
    get_hll_global $P2600, "KnowHOW"
    $P2601 = $P2600."new_type"("NQPModuleHOW" :named("name"))
    .local pmc type_obj
    set type_obj, $P2601
    set_hll_global "NQPModuleHOW", type_obj
    set_global "$?CLASS", type_obj
    get_how $P2602, type_obj
    get_hll_global $P2603, "KnowHOWAttribute"
    $P2604 = $P2603."new"("$!name" :named("name"))
    $P2602."add_attribute"(type_obj, $P2604)
    get_how $P2605, type_obj
    get_hll_global $P2606, "KnowHOWAttribute"
    $P2607 = $P2606."new"("$!composed" :named("name"))
    $P2605."add_attribute"(type_obj, $P2607)
    get_how $P2608, type_obj
    .const 'Sub' $P2609 = "165_1299588747.139" 
    $P2608."add_method"(type_obj, "new", $P2609)
    get_how $P2610, type_obj
    .const 'Sub' $P2611 = "166_1299588747.139" 
    $P2610."add_method"(type_obj, "BUILD", $P2611)
    get_how $P2612, type_obj
    .const 'Sub' $P2613 = "167_1299588747.139" 
    $P2612."add_method"(type_obj, "new_type", $P2613)
    get_how $P2614, type_obj
    .const 'Sub' $P2615 = "168_1299588747.139" 
    $P2614."add_method"(type_obj, "add_method", $P2615)
    get_how $P2616, type_obj
    .const 'Sub' $P2617 = "169_1299588747.139" 
    $P2616."add_method"(type_obj, "add_multi_method", $P2617)
    get_how $P2618, type_obj
    .const 'Sub' $P2619 = "170_1299588747.139" 
    $P2618."add_method"(type_obj, "add_attribute", $P2619)
    get_how $P2620, type_obj
    .const 'Sub' $P2621 = "171_1299588747.139" 
    $P2620."add_method"(type_obj, "compose", $P2621)
    get_how $P2622, type_obj
    .const 'Sub' $P2623 = "172_1299588747.139" 
    $P2622."add_method"(type_obj, "name", $P2623)
    get_how $P2624, type_obj
    $P2625 = $P2624."compose"(type_obj)
    .return ($P2625)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "new"  :subid("165_1299588747.139") :outer("164_1299588747.139")
    .param pmc param_2541
    .param pmc param_2542 :optional :named("name")
    .param int has_param_2542 :opt_flag
.annotate 'line', 1052
    .lex "self", param_2541
    if has_param_2542, optparam_425
    new $P2543, "Undef"
    set param_2542, $P2543
  optparam_425:
    .lex "$name", param_2542
.annotate 'line', 1053
    new $P2544, "Undef"
    .lex "$obj", $P2544
    find_lex $P2545, "self"
    repr_instance_of $P2546, $P2545
    store_lex "$obj", $P2546
.annotate 'line', 1054
    find_lex $P2547, "$obj"
    find_lex $P2548, "$name"
    $P2547."BUILD"($P2548 :named("name"))
    find_lex $P2549, "$obj"
.annotate 'line', 1052
    .return ($P2549)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "BUILD"  :subid("166_1299588747.139") :outer("164_1299588747.139")
    .param pmc param_2551
    .param pmc param_2552 :optional :named("name")
    .param int has_param_2552 :opt_flag
.annotate 'line', 1058
    .lex "self", param_2551
    if has_param_2552, optparam_426
    new $P2553, "Undef"
    set param_2552, $P2553
  optparam_426:
    .lex "$name", param_2552
.annotate 'line', 1059
    find_lex $P2554, "$name"
    find_lex $P2555, "self"
    get_global $P2556, "$?CLASS"
    setattribute $P2555, $P2556, "$!name", $P2554
.annotate 'line', 1058
    .return ($P2554)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "new_type"  :subid("167_1299588747.139") :outer("164_1299588747.139")
    .param pmc param_2558
    .param pmc param_2559 :optional :named("name")
    .param int has_param_2559 :opt_flag
    .param pmc param_2561 :optional :named("repr")
    .param int has_param_2561 :opt_flag
.annotate 'line', 1064
    .lex "self", param_2558
    if has_param_2559, optparam_427
    new $P2560, "String"
    assign $P2560, "<anon>"
    set param_2559, $P2560
  optparam_427:
    .lex "$name", param_2559
    if has_param_2561, optparam_428
    new $P2562, "String"
    assign $P2562, "P6opaque"
    set param_2561, $P2562
  optparam_428:
    .lex "$repr", param_2561
.annotate 'line', 1065
    new $P2563, "Undef"
    .lex "$metaclass", $P2563
    find_lex $P2564, "self"
    find_lex $P2565, "$name"
    $P2566 = $P2564."new"($P2565 :named("name"))
    store_lex "$metaclass", $P2566
.annotate 'line', 1066
    find_lex $P2567, "$metaclass"
    find_lex $P2568, "$repr"
    set $S2569, $P2568
    repr_type_object_for $P2570, $P2567, $S2569
.annotate 'line', 1064
    .return ($P2570)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_method"  :subid("168_1299588747.139") :outer("164_1299588747.139")
    .param pmc param_2572
    .param pmc param_2573
    .param pmc param_2574
    .param pmc param_2575
.annotate 'line', 1069
    .lex "self", param_2572
    .lex "$obj", param_2573
    .lex "$name", param_2574
    .lex "$code_obj", param_2575
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_multi_method"  :subid("169_1299588747.139") :outer("164_1299588747.139")
    .param pmc param_2577
    .param pmc param_2578
    .param pmc param_2579
    .param pmc param_2580
.annotate 'line', 1075
    .lex "self", param_2577
    .lex "$obj", param_2578
    .lex "$name", param_2579
    .lex "$code_obj", param_2580
.annotate 'line', 1076
    die "Modules may not have methods"
.annotate 'line', 1075
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_attribute"  :subid("170_1299588747.139") :outer("164_1299588747.139")
    .param pmc param_2582
    .param pmc param_2583
    .param pmc param_2584
.annotate 'line', 1079
    .lex "self", param_2582
    .lex "$obj", param_2583
    .lex "$meta_attr", param_2584
.annotate 'line', 1080
    die "Modules may not have attributes"
.annotate 'line', 1079
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "compose"  :subid("171_1299588747.139") :outer("164_1299588747.139")
    .param pmc param_2586
    .param pmc param_2587
.annotate 'line', 1083
    .lex "self", param_2586
    .lex "$obj", param_2587
.annotate 'line', 1084
    new $P2588, "Integer"
    assign $P2588, 1
    find_lex $P2589, "self"
    get_global $P2590, "$?CLASS"
    setattribute $P2589, $P2590, "$!composed", $P2588
.annotate 'line', 1083
    .return ($P2588)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "name"  :subid("172_1299588747.139") :outer("164_1299588747.139")
    .param pmc param_2592
    .param pmc param_2593
.annotate 'line', 1087
    .lex "self", param_2592
    .lex "$obj", param_2593
    find_lex $P2594, "self"
    get_global $P2595, "$?CLASS"
    getattribute $P2596, $P2594, $P2595, "$!name"
    unless_null $P2596, vivify_429
    new $P2596, "Undef"
  vivify_429:
    .return ($P2596)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "_block2626"  :subid("174_1299588747.139") :outer("10_1299588747.139")
.annotate 'line', 1093
    .const 'Sub' $P2748 = "187_1299588747.139" 
    capture_lex $P2748
    .const 'Sub' $P2738 = "186_1299588747.139" 
    capture_lex $P2738
    .const 'Sub' $P2726 = "185_1299588747.139" 
    capture_lex $P2726
    .const 'Sub' $P2722 = "184_1299588747.139" 
    capture_lex $P2722
    .const 'Sub' $P2711 = "183_1299588747.139" 
    capture_lex $P2711
    .const 'Sub' $P2708 = "182_1299588747.139" 
    capture_lex $P2708
    .const 'Sub' $P2702 = "181_1299588747.139" 
    capture_lex $P2702
    .const 'Sub' $P2664 = "179_1299588747.139" 
    capture_lex $P2664
    .const 'Sub' $P2643 = "177_1299588747.139" 
    capture_lex $P2643
    .const 'Sub' $P2633 = "176_1299588747.139" 
    capture_lex $P2633
    .const 'Sub' $P2629 = "175_1299588747.139" 
    capture_lex $P2629
    get_global $P2628, "$?CLASS"
.annotate 'line', 1135
    .const 'Sub' $P2738 = "186_1299588747.139" 
    newclosure $P2746, $P2738
.annotate 'line', 1093
    .return ($P2746)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "" :load :init :subid("post430") :outer("174_1299588747.139")
.annotate 'line', 1093
    get_hll_global $P2627, ["NQPMu"], "_block2626" 
    .local pmc block
    set block, $P2627
    .const 'Sub' $P2748 = "187_1299588747.139" 
    capture_lex $P2748
    $P2748()
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "_block2747"  :anon :subid("187_1299588747.139") :outer("174_1299588747.139")
.annotate 'line', 1093
    .const 'Sub' $P2765 = "182_1299588747.139" 
    capture_lex $P2765
    get_hll_global $P2749, "NQPClassHOW"
    $P2750 = $P2749."new_type"("NQPMu" :named("name"))
    .local pmc type_obj
    set type_obj, $P2750
    set_hll_global "NQPMu", type_obj
    set_global "$?CLASS", type_obj
    get_how $P2751, type_obj
    .const 'Sub' $P2752 = "175_1299588747.139" 
    $P2751."add_method"(type_obj, "CREATE", $P2752)
    get_how $P2753, type_obj
    .const 'Sub' $P2754 = "176_1299588747.139" 
    $P2753."add_method"(type_obj, "bless", $P2754)
    get_how $P2755, type_obj
    .const 'Sub' $P2756 = "177_1299588747.139" 
    $P2755."add_method"(type_obj, "BUILDALL", $P2756)
    get_how $P2757, type_obj
    .const 'Sub' $P2758 = "179_1299588747.139" 
    $P2757."add_method"(type_obj, "BUILD_MAGIC", $P2758)
    get_how $P2759, type_obj
    .const 'Sub' $P2760 = "181_1299588747.139" 
    $P2759."add_method"(type_obj, "new", $P2760)
    get_how $P2761, type_obj
    .const 'Sub' $P2762 = "182_1299588747.139" 
    new $P2763, "ResizablePMCArray"
    set_dispatchees $P2762, $P2763
    $P2761."add_method"(type_obj, "Str", $P2762)
    get_how $P2764, type_obj
    .const 'Sub' $P2765 = "182_1299588747.139" 
    newclosure $P2768, $P2765
    $P2764."add_parrot_vtable_mapping"(type_obj, "get_string", $P2768)
    get_how $P2769, type_obj
    .const 'Sub' $P2770 = "183_1299588747.139" 
    $P2769."add_multi_method"(type_obj, "Str", $P2770)
    get_how $P2771, type_obj
    .const 'Sub' $P2772 = "184_1299588747.139" 
    new $P2773, "ResizablePMCArray"
    set_dispatchees $P2772, $P2773
    $P2771."add_method"(type_obj, "ACCEPTS", $P2772)
    get_how $P2774, type_obj
    .const 'Sub' $P2775 = "185_1299588747.139" 
    $P2774."add_multi_method"(type_obj, "ACCEPTS", $P2775)
    get_how $P2776, type_obj
    .const 'Sub' $P2777 = "186_1299588747.139" 
    $P2776."add_method"(type_obj, "isa", $P2777)
    get_how $P2778, type_obj
    $P2779 = $P2778."compose"(type_obj)
    .return ($P2779)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "Str" :instanceof("DispatcherSub") :subid("182_1299588747.139") :outer("187_1299588747.139")
    .param pmc param_2766
.annotate 'line', 1093
    .lex "self", param_2766
    multi_dispatch_over_lexical_candidates $P2767
    .return ($P2767)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "CREATE"  :subid("175_1299588747.139") :outer("174_1299588747.139")
    .param pmc param_2630
.annotate 'line', 1094
    .lex "self", param_2630
.annotate 'line', 1095
    find_lex $P2631, "self"
    repr_instance_of $P2632, $P2631
.annotate 'line', 1094
    .return ($P2632)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "bless"  :subid("176_1299588747.139") :outer("174_1299588747.139")
    .param pmc param_2634
    .param pmc param_2636 :slurpy :named
.annotate 'line', 1099
    .lex "$self", param_2634
    find_lex $P2635, "$self"
    .lex "self", $P2635
    .lex "%attributes", param_2636
.annotate 'line', 1100
    new $P2637, "Undef"
    .lex "$instance", $P2637
    find_lex $P2638, "self"
    $P2639 = $P2638."CREATE"()
    store_lex "$instance", $P2639
.annotate 'line', 1101
    find_lex $P2640, "$instance"
    find_lex $P2641, "%attributes"
    $P2640."BUILDALL"($P2641 :flat)
    find_lex $P2642, "$instance"
.annotate 'line', 1099
    .return ($P2642)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.include "except_types.pasm"
.sub "BUILDALL"  :subid("177_1299588747.139") :outer("174_1299588747.139")
    .param pmc param_2644
    .param pmc param_2646 :slurpy :named
.annotate 'line', 1105
    .const 'Sub' $P2655 = "178_1299588747.139" 
    capture_lex $P2655
    .lex "$self", param_2644
    find_lex $P2645, "$self"
    .lex "self", $P2645
    .lex "%attributes", param_2646
.annotate 'line', 1106
    find_lex $P2648, "$self"
    get_how $P2649, $P2648
    find_lex $P2650, "$self"
    $P2651 = $P2649."parents"($P2650)
    defined $I2652, $P2651
    unless $I2652, for_undef_431
    iter $P2647, $P2651
    new $P2662, 'ExceptionHandler'
    set_label $P2662, loop2661_handler
    $P2662."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2662
  loop2661_test:
    unless $P2647, loop2661_done
    shift $P2653, $P2647
  loop2661_redo:
    .const 'Sub' $P2655 = "178_1299588747.139" 
    capture_lex $P2655
    $P2655($P2653)
  loop2661_next:
    goto loop2661_test
  loop2661_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2663, exception, 'type'
    eq $P2663, .CONTROL_LOOP_NEXT, loop2661_next
    eq $P2663, .CONTROL_LOOP_REDO, loop2661_redo
  loop2661_done:
    pop_eh 
  for_undef_431:
.annotate 'line', 1105
    .return ($P2647)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "_block2654"  :anon :subid("178_1299588747.139") :outer("177_1299588747.139")
    .param pmc param_2656
.annotate 'line', 1106
    .lex "$class", param_2656
.annotate 'line', 1107
    find_lex $P2657, "$self"
    find_lex $P2658, "$class"
    find_lex $P2659, "%attributes"
    $P2660 = $P2657."BUILD_MAGIC"($P2658, $P2659 :flat)
.annotate 'line', 1106
    .return ($P2660)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.include "except_types.pasm"
.sub "BUILD_MAGIC"  :subid("179_1299588747.139") :outer("174_1299588747.139")
    .param pmc param_2665
    .param pmc param_2667
    .param pmc param_2668 :slurpy :named
.annotate 'line', 1111
    .const 'Sub' $P2677 = "180_1299588747.139" 
    capture_lex $P2677
    .lex "$self", param_2665
    find_lex $P2666, "$self"
    .lex "self", $P2666
    .lex "$type", param_2667
    .lex "%attributes", param_2668
.annotate 'line', 1112
    find_lex $P2670, "$type"
    get_how $P2671, $P2670
    find_lex $P2672, "$type"
    $P2673 = $P2671."attributes"($P2672, 1 :named("local"))
    defined $I2674, $P2673
    unless $I2674, for_undef_432
    iter $P2669, $P2673
    new $P2700, 'ExceptionHandler'
    set_label $P2700, loop2699_handler
    $P2700."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2700
  loop2699_test:
    unless $P2669, loop2699_done
    shift $P2675, $P2669
  loop2699_redo:
    .const 'Sub' $P2677 = "180_1299588747.139" 
    capture_lex $P2677
    $P2677($P2675)
  loop2699_next:
    goto loop2699_test
  loop2699_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2701, exception, 'type'
    eq $P2701, .CONTROL_LOOP_NEXT, loop2699_next
    eq $P2701, .CONTROL_LOOP_REDO, loop2699_redo
  loop2699_done:
    pop_eh 
  for_undef_432:
.annotate 'line', 1111
    .return ($P2669)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "_block2676"  :anon :subid("180_1299588747.139") :outer("179_1299588747.139")
    .param pmc param_2680
.annotate 'line', 1113
    new $P2678, "Undef"
    .lex "$name", $P2678
.annotate 'line', 1114
    new $P2679, "Undef"
    .lex "$shortname", $P2679
    .lex "$_", param_2680
.annotate 'line', 1113
    find_lex $P2681, "$_"
    $P2682 = $P2681."name"()
    store_lex "$name", $P2682
.annotate 'line', 1114
    find_lex $P2683, "$name"
    set $S2684, $P2683
    substr $S2685, $S2684, 2
    new $P2686, 'String'
    set $P2686, $S2685
    store_lex "$shortname", $P2686
.annotate 'line', 1115
    find_lex $P2690, "$shortname"
    find_lex $P2689, "%attributes"
    exists $I2691, $P2689[$P2690]
    if $I2691, if_2688
    new $P2687, 'Integer'
    set $P2687, $I2691
    goto if_2688_end
  if_2688:
.annotate 'line', 1116
    find_lex $P2692, "$self"
    find_lex $P2693, "$type"
    find_lex $P2694, "$name"
    set $S2695, $P2694
    find_lex $P2696, "$shortname"
    find_lex $P2697, "%attributes"
    unless_null $P2697, vivify_433
    $P2697 = root_new ['parrot';'Hash']
  vivify_433:
    set $P2698, $P2697[$P2696]
    unless_null $P2698, vivify_434
    new $P2698, "Undef"
  vivify_434:
    setattribute $P2692, $P2693, $S2695, $P2698
  if_2688_end:
.annotate 'line', 1112
    .return ($P2687)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "new"  :subid("181_1299588747.139") :outer("174_1299588747.139")
    .param pmc param_2703
    .param pmc param_2704 :slurpy :named
.annotate 'line', 1121
    .lex "self", param_2703
    .lex "%attributes", param_2704
.annotate 'line', 1122
    find_lex $P2705, "self"
    find_lex $P2706, "%attributes"
    $P2707 = $P2705."bless"($P2706 :flat)
.annotate 'line', 1121
    .return ($P2707)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "Str" :instanceof("DispatcherSub") :subid("182_1299588747.139") :outer("174_1299588747.139")
    .param pmc param_2709
.annotate 'line', 1121
    .lex "self", param_2709
    multi_dispatch_over_lexical_candidates $P2710
    .return ($P2710)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "Str"  :subid("183_1299588747.139") :outer("174_1299588747.139")
    .param pmc param_2712
.annotate 'line', 1126
    .lex "$self", param_2712
    find_lex $P2713, "$self"
    .lex "self", $P2713
.annotate 'line', 1127
    find_lex $P2714, "self"
    get_how $P2715, $P2714
    find_lex $P2716, "self"
    $P2717 = $P2715."name"($P2716)
    concat $P2718, $P2717, "()"
.annotate 'line', 1126
    .return ($P2718)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "" :load :init :subid("post435") :outer("183_1299588747.139")
.annotate 'line', 1126
    .const 'Sub' $P2711 = "183_1299588747.139" 
    .local pmc block
    set block, $P2711
    get_hll_global $P2719, "Mu"
    new $P2720, "ResizablePMCArray"
    push $P2720, $P2719
    new $P2721, "ResizablePMCArray"
    push $P2721, 2
    set_sub_multisig block, $P2720, $P2721
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "ACCEPTS" :instanceof("DispatcherSub") :subid("184_1299588747.139") :outer("174_1299588747.139")
    .param pmc param_2723
    .param pmc param_2724
.annotate 'line', 1126
    .lex "self", param_2723
.annotate 'line', 1130
    .lex "$topic", param_2724
.annotate 'line', 1126
    multi_dispatch_over_lexical_candidates $P2725
    .return ($P2725)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "ACCEPTS"  :subid("185_1299588747.139") :outer("174_1299588747.139")
    .param pmc param_2727
    .param pmc param_2729
.annotate 'line', 1131
    .lex "$self", param_2727
    find_lex $P2728, "$self"
    .lex "self", $P2728
    .lex "$topic", param_2729
.annotate 'line', 1132
    find_lex $P2730, "$topic"
    find_lex $P2731, "self"
    get_what $P2732, $P2731
    type_check $I2733, $P2730, $P2732
.annotate 'line', 1131
    .return ($I2733)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "" :load :init :subid("post436") :outer("185_1299588747.139")
.annotate 'line', 1131
    .const 'Sub' $P2726 = "185_1299588747.139" 
    .local pmc block
    set block, $P2726
    get_hll_global $P2734, "NQPMu"
    null $P2735
    new $P2736, "ResizablePMCArray"
    push $P2736, $P2734
    push $P2736, $P2735
    new $P2737, "ResizablePMCArray"
    push $P2737, 2
    push $P2737, 0
    set_sub_multisig block, $P2736, $P2737
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "isa"  :subid("186_1299588747.139") :outer("174_1299588747.139")
    .param pmc param_2739
    .param pmc param_2740
.annotate 'line', 1135
    .lex "self", param_2739
    .lex "$type", param_2740
.annotate 'line', 1136
    find_lex $P2741, "self"
    get_how $P2742, $P2741
    find_lex $P2743, "self"
    find_lex $P2744, "$type"
    $P2745 = $P2742."isa"($P2743, $P2744)
.annotate 'line', 1135
    .return ($P2745)
.end


.HLL "nqp"

.namespace ["int"]
.sub "_block2780"  :subid("188_1299588747.139") :outer("10_1299588747.139")
.annotate 'line', 1142
    .const 'Sub' $P2784 = "189_1299588747.139" 
    capture_lex $P2784
    get_global $P2782, "$?CLASS"
    .return ()
.end


.HLL "nqp"

.namespace ["int"]
.sub "" :load :init :subid("post437") :outer("188_1299588747.139")
.annotate 'line', 1142
    get_hll_global $P2781, ["int"], "_block2780" 
    .local pmc block
    set block, $P2781
    .const 'Sub' $P2784 = "189_1299588747.139" 
    capture_lex $P2784
    $P2784()
.end


.HLL "nqp"

.namespace ["int"]
.sub "_block2783"  :anon :subid("189_1299588747.139") :outer("188_1299588747.139")
.annotate 'line', 1142
    get_hll_global $P2785, "NQPNativeHOW"
    $P2786 = $P2785."new_type"("int" :named("name"), "P6int" :named("repr"))
    .local pmc type_obj
    set type_obj, $P2786
    set_hll_global "int", type_obj
    set_global "$?CLASS", type_obj
    get_how $P2787, type_obj
    $P2788 = $P2787."compose"(type_obj)
    .return ($P2788)
.end


.HLL "nqp"

.namespace ["num"]
.sub "_block2789"  :subid("190_1299588747.139") :outer("10_1299588747.139")
.annotate 'line', 1144
    .const 'Sub' $P2793 = "191_1299588747.139" 
    capture_lex $P2793
    get_global $P2791, "$?CLASS"
    .return ()
.end


.HLL "nqp"

.namespace ["num"]
.sub "" :load :init :subid("post438") :outer("190_1299588747.139")
.annotate 'line', 1144
    get_hll_global $P2790, ["num"], "_block2789" 
    .local pmc block
    set block, $P2790
    .const 'Sub' $P2793 = "191_1299588747.139" 
    capture_lex $P2793
    $P2793()
.end


.HLL "nqp"

.namespace ["num"]
.sub "_block2792"  :anon :subid("191_1299588747.139") :outer("190_1299588747.139")
.annotate 'line', 1144
    get_hll_global $P2794, "NQPNativeHOW"
    $P2795 = $P2794."new_type"("num" :named("name"), "P6num" :named("repr"))
    .local pmc type_obj
    set type_obj, $P2795
    set_hll_global "num", type_obj
    set_global "$?CLASS", type_obj
    get_how $P2796, type_obj
    $P2797 = $P2796."compose"(type_obj)
    .return ($P2797)
.end


.HLL "nqp"

.namespace ["str"]
.sub "_block2798"  :subid("192_1299588747.139") :outer("10_1299588747.139")
.annotate 'line', 1146
    .const 'Sub' $P2802 = "193_1299588747.139" 
    capture_lex $P2802
    get_global $P2800, "$?CLASS"
    .return ()
.end


.HLL "nqp"

.namespace ["str"]
.sub "" :load :init :subid("post439") :outer("192_1299588747.139")
.annotate 'line', 1146
    get_hll_global $P2799, ["str"], "_block2798" 
    .local pmc block
    set block, $P2799
    .const 'Sub' $P2802 = "193_1299588747.139" 
    capture_lex $P2802
    $P2802()
.end


.HLL "nqp"

.namespace ["str"]
.sub "_block2801"  :anon :subid("193_1299588747.139") :outer("192_1299588747.139")
.annotate 'line', 1146
    get_hll_global $P2803, "NQPNativeHOW"
    $P2804 = $P2803."new_type"("str" :named("name"), "P6str" :named("repr"))
    .local pmc type_obj
    set type_obj, $P2804
    set_hll_global "str", type_obj
    set_global "$?CLASS", type_obj
    get_how $P2805, type_obj
    $P2806 = $P2805."compose"(type_obj)
    .return ($P2806)
.end


.HLL "nqp"

.namespace []
.sub "_block2808" :load :anon :subid("194_1299588747.139")
.annotate 'line', 1
    .const 'Sub' $P2810 = "10_1299588747.139" 
    $P2811 = $P2810()
    .return ($P2811)
.end

