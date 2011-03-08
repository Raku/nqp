
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1299602563.879")
.annotate 'line', 0
    get_hll_global $P2527, ["NQPModuleHOW"], "_block2526" 
    capture_lex $P2527
    get_hll_global $P2298, ["RoleToRoleApplier"], "_block2297" 
    capture_lex $P2298
    get_hll_global $P2083, ["RoleToClassApplier"], "_block2082" 
    capture_lex $P2083
    get_hll_global $P1727, ["NQPParametricRoleHOW"], "_block1726" 
    capture_lex $P1727
    get_hll_global $P1406, ["NQPConcreteRoleHOW"], "_block1405" 
    capture_lex $P1406
    get_hll_global $P1195, ["NQPAttribute"], "_block1194" 
    capture_lex $P1195
    get_hll_global $P1108, ["NQPNativeHOW"], "_block1107" 
    capture_lex $P1108
    get_hll_global $P51, ["NQPClassHOW"], "_block50" 
    capture_lex $P51
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
    get_hll_global $P51, ["NQPClassHOW"], "_block50" 
    capture_lex $P51
    $P51()
.annotate 'line', 454
    get_hll_global $P1108, ["NQPNativeHOW"], "_block1107" 
    capture_lex $P1108
    $P1108()
.annotate 'line', 498
    get_hll_global $P1195, ["NQPAttribute"], "_block1194" 
    capture_lex $P1195
    $P1195()
.annotate 'line', 571
    get_hll_global $P1406, ["NQPConcreteRoleHOW"], "_block1405" 
    capture_lex $P1406
    $P1406()
.annotate 'line', 720
    get_hll_global $P1727, ["NQPParametricRoleHOW"], "_block1726" 
    capture_lex $P1727
    $P1727()
.annotate 'line', 889
    get_hll_global $P2083, ["RoleToClassApplier"], "_block2082" 
    capture_lex $P2083
    $P2083()
.annotate 'line', 961
    get_hll_global $P2298, ["RoleToRoleApplier"], "_block2297" 
    capture_lex $P2298
    $P2298()
.annotate 'line', 1051
    get_hll_global $P2527, ["NQPModuleHOW"], "_block2526" 
    capture_lex $P2527
    $P2614 = $P2527()
.annotate 'line', 1
    .return ($P2614)
    .const 'Sub' $P2616 = "175_1299602563.879" 
    .return ($P2616)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post176") :outer("10_1299602563.879")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1299602563.879" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P2620, "1299602559.16"
    isnull $I2621, $P2620
    if $I2621, if_2619
    goto if_2619_end
  if_2619:
    nqp_dynop_setup 
    load_bytecode "nqpmo.pbc"
    nqp_create_sc $P2622, "1299602559.16"
    .local pmc cur_sc
    set cur_sc, $P2622
    get_hll_global $P2623, "KnowHOW"
    $P2624 = $P2623."new_type"("KnowHOWAttribute" :named("name"), "P6str" :named("repr"))
    nqp_set_sc_for_object $P2624, cur_sc
    nqp_set_sc_object "1299602559.16", 0, $P2624
    get_hll_global $P2625, "KnowHOW"
    $P2626 = $P2625."new_type"("NQPClassHOW" :named("name"))
    nqp_set_sc_for_object $P2626, cur_sc
    nqp_set_sc_object "1299602559.16", 1, $P2626
    get_hll_global $P2627, "KnowHOW"
    $P2628 = $P2627."new_type"("NQPNativeHOW" :named("name"))
    nqp_set_sc_for_object $P2628, cur_sc
    nqp_set_sc_object "1299602559.16", 2, $P2628
    get_hll_global $P2629, "KnowHOW"
    $P2630 = $P2629."new_type"("NQPAttribute" :named("name"))
    nqp_set_sc_for_object $P2630, cur_sc
    nqp_set_sc_object "1299602559.16", 3, $P2630
    get_hll_global $P2631, "KnowHOW"
    $P2632 = $P2631."new_type"("NQPConcreteRoleHOW" :named("name"))
    nqp_set_sc_for_object $P2632, cur_sc
    nqp_set_sc_object "1299602559.16", 4, $P2632
    get_hll_global $P2633, "KnowHOW"
    $P2634 = $P2633."new_type"("NQPParametricRoleHOW" :named("name"))
    nqp_set_sc_for_object $P2634, cur_sc
    nqp_set_sc_object "1299602559.16", 5, $P2634
    get_hll_global $P2635, "KnowHOW"
    $P2636 = $P2635."new_type"("RoleToClassApplier" :named("name"))
    nqp_set_sc_for_object $P2636, cur_sc
    nqp_set_sc_object "1299602559.16", 6, $P2636
    get_hll_global $P2637, "KnowHOW"
    $P2638 = $P2637."new_type"("RoleToRoleApplier" :named("name"))
    nqp_set_sc_for_object $P2638, cur_sc
    nqp_set_sc_object "1299602559.16", 7, $P2638
    get_hll_global $P2639, "KnowHOW"
    $P2640 = $P2639."new_type"("NQPModuleHOW" :named("name"))
    nqp_set_sc_for_object $P2640, cur_sc
    nqp_set_sc_object "1299602559.16", 8, $P2640
  if_2619_end:
.end


.HLL "nqp"

.namespace ["KnowHOWAttribute"]
.sub "_block25"  :subid("11_1299602563.879") :outer("10_1299602563.879")
.annotate 'line', 10
    .const 'Sub' $P42 = "14_1299602563.879" 
    capture_lex $P42
    .const 'Sub' $P36 = "13_1299602563.879" 
    capture_lex $P36
    .const 'Sub' $P28 = "12_1299602563.879" 
    capture_lex $P28
    get_global $P27, "$?CLASS"
.annotate 'line', 14
    .const 'Sub' $P36 = "13_1299602563.879" 
    newclosure $P40, $P36
.annotate 'line', 10
    .return ($P40)
.end


.HLL "nqp"

.namespace ["KnowHOWAttribute"]
.sub "" :load :init :subid("post177") :outer("11_1299602563.879")
.annotate 'line', 10
    get_hll_global $P26, ["KnowHOWAttribute"], "_block25" 
    .local pmc block
    set block, $P26
    .const 'Sub' $P42 = "14_1299602563.879" 
    capture_lex $P42
    $P42()
.end


.HLL "nqp"

.namespace ["KnowHOWAttribute"]
.sub "_block41"  :anon :subid("14_1299602563.879") :outer("11_1299602563.879")
.annotate 'line', 10
    nqp_get_sc_object $P43, "1299602559.16", 0
    .local pmc type_obj
    set type_obj, $P43
    set_hll_global "KnowHOWAttribute", type_obj
    set_global "$?CLASS", type_obj
    get_how $P44, type_obj
    .const 'Sub' $P45 = "12_1299602563.879" 
    $P44."add_method"(type_obj, "new", $P45)
    get_how $P46, type_obj
    .const 'Sub' $P47 = "13_1299602563.879" 
    $P46."add_method"(type_obj, "name", $P47)
    get_how $P48, type_obj
    $P49 = $P48."compose"(type_obj)
    .return ($P49)
.end


.HLL "nqp"

.namespace ["KnowHOWAttribute"]
.sub "new"  :subid("12_1299602563.879") :outer("11_1299602563.879")
    .param pmc param_29
    .param pmc param_30 :optional :named("name")
    .param int has_param_30 :opt_flag
.annotate 'line', 11
    .lex "self", param_29
    if has_param_30, optparam_178
    new $P31, "Undef"
    set param_30, $P31
  optparam_178:
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
.sub "name"  :subid("13_1299602563.879") :outer("11_1299602563.879")
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
.sub "_block50"  :subid("15_1299602563.879") :outer("10_1299602563.879")
.annotate 'line', 26
    .const 'Sub' $P1017 = "70_1299602563.879" 
    capture_lex $P1017
    .const 'Sub' $P980 = "68_1299602563.879" 
    capture_lex $P980
    .const 'Sub' $P944 = "66_1299602563.879" 
    capture_lex $P944
    .const 'Sub' $P910 = "65_1299602563.879" 
    capture_lex $P910
    .const 'Sub' $P873 = "64_1299602563.879" 
    capture_lex $P873
    .const 'Sub' $P866 = "63_1299602563.879" 
    capture_lex $P866
    .const 'Sub' $P843 = "61_1299602563.879" 
    capture_lex $P843
    .const 'Sub' $P837 = "60_1299602563.879" 
    capture_lex $P837
    .const 'Sub' $P831 = "59_1299602563.879" 
    capture_lex $P831
    .const 'Sub' $P808 = "57_1299602563.879" 
    capture_lex $P808
    .const 'Sub' $P801 = "56_1299602563.879" 
    capture_lex $P801
    .const 'Sub' $P787 = "55_1299602563.879" 
    capture_lex $P787
    .const 'Sub' $P738 = "52_1299602563.879" 
    capture_lex $P738
    .const 'Sub' $P693 = "49_1299602563.879" 
    capture_lex $P693
    .const 'Sub' $P656 = "46_1299602563.879" 
    capture_lex $P656
    .const 'Sub' $P526 = "41_1299602563.879" 
    capture_lex $P526
    .const 'Sub' $P422 = "37_1299602563.879" 
    capture_lex $P422
    .const 'Sub' $P396 = "36_1299602563.879" 
    capture_lex $P396
    .const 'Sub' $P362 = "34_1299602563.879" 
    capture_lex $P362
    .const 'Sub' $P324 = "32_1299602563.879" 
    capture_lex $P324
    .const 'Sub' $P303 = "31_1299602563.879" 
    capture_lex $P303
    .const 'Sub' $P282 = "30_1299602563.879" 
    capture_lex $P282
    .const 'Sub' $P263 = "29_1299602563.879" 
    capture_lex $P263
    .const 'Sub' $P249 = "28_1299602563.879" 
    capture_lex $P249
    .const 'Sub' $P242 = "27_1299602563.879" 
    capture_lex $P242
    .const 'Sub' $P232 = "26_1299602563.879" 
    capture_lex $P232
    .const 'Sub' $P95 = "19_1299602563.879" 
    capture_lex $P95
    .const 'Sub' $P53 = "16_1299602563.879" 
    capture_lex $P53
    get_global $P52, "$?CLASS"
.annotate 'line', 235
    .const 'Sub' $P53 = "16_1299602563.879" 
    newclosure $P94, $P53
    .lex "compute_c3_mro", $P94
.annotate 'line', 257
    .const 'Sub' $P95 = "19_1299602563.879" 
    newclosure $P231, $P95
    .lex "c3_merge", $P231
.annotate 'line', 181
    find_lex $P654, "compute_c3_mro"
    find_lex $P655, "c3_merge"
.annotate 'line', 441
    .const 'Sub' $P980 = "68_1299602563.879" 
    newclosure $P1015, $P980
.annotate 'line', 26
    .return ($P1015)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "" :load :init :subid("post179") :outer("15_1299602563.879")
.annotate 'line', 26
    get_hll_global $P51, ["NQPClassHOW"], "_block50" 
    .local pmc block
    set block, $P51
    .const 'Sub' $P1017 = "70_1299602563.879" 
    capture_lex $P1017
    $P1017()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1016"  :anon :subid("70_1299602563.879") :outer("15_1299602563.879")
.annotate 'line', 26
    nqp_get_sc_object $P1018, "1299602559.16", 1
    .local pmc type_obj
    set type_obj, $P1018
    set_hll_global "NQPClassHOW", type_obj
    set_global "$?CLASS", type_obj
    get_how $P1019, type_obj
    get_hll_global $P1020, "KnowHOWAttribute"
    $P1021 = $P1020."new"("$!name" :named("name"))
    $P1019."add_attribute"(type_obj, $P1021)
    get_how $P1022, type_obj
    get_hll_global $P1023, "KnowHOWAttribute"
    $P1024 = $P1023."new"("%!attributes" :named("name"))
    $P1022."add_attribute"(type_obj, $P1024)
    get_how $P1025, type_obj
    get_hll_global $P1026, "KnowHOWAttribute"
    $P1027 = $P1026."new"("%!methods" :named("name"))
    $P1025."add_attribute"(type_obj, $P1027)
    get_how $P1028, type_obj
    get_hll_global $P1029, "KnowHOWAttribute"
    $P1030 = $P1029."new"("@!multi_methods_to_incorporate" :named("name"))
    $P1028."add_attribute"(type_obj, $P1030)
    get_how $P1031, type_obj
    get_hll_global $P1032, "KnowHOWAttribute"
    $P1033 = $P1032."new"("@!parents" :named("name"))
    $P1031."add_attribute"(type_obj, $P1033)
    get_how $P1034, type_obj
    get_hll_global $P1035, "KnowHOWAttribute"
    $P1036 = $P1035."new"("@!roles" :named("name"))
    $P1034."add_attribute"(type_obj, $P1036)
    get_how $P1037, type_obj
    get_hll_global $P1038, "KnowHOWAttribute"
    $P1039 = $P1038."new"("@!vtable" :named("name"))
    $P1037."add_attribute"(type_obj, $P1039)
    get_how $P1040, type_obj
    get_hll_global $P1041, "KnowHOWAttribute"
    $P1042 = $P1041."new"("%!method-vtable-slots" :named("name"))
    $P1040."add_attribute"(type_obj, $P1042)
    get_how $P1043, type_obj
    get_hll_global $P1044, "KnowHOWAttribute"
    $P1045 = $P1044."new"("$!composed" :named("name"))
    $P1043."add_attribute"(type_obj, $P1045)
    get_how $P1046, type_obj
    get_hll_global $P1047, "KnowHOWAttribute"
    $P1048 = $P1047."new"("@!mro" :named("name"))
    $P1046."add_attribute"(type_obj, $P1048)
    get_how $P1049, type_obj
    get_hll_global $P1050, "KnowHOWAttribute"
    $P1051 = $P1050."new"("@!done" :named("name"))
    $P1049."add_attribute"(type_obj, $P1051)
    get_how $P1052, type_obj
    get_hll_global $P1053, "KnowHOWAttribute"
    $P1054 = $P1053."new"("%!parrot_vtable_mapping" :named("name"))
    $P1052."add_attribute"(type_obj, $P1054)
    get_how $P1055, type_obj
    .const 'Sub' $P1056 = "26_1299602563.879" 
    $P1055."add_method"(type_obj, "new", $P1056)
    get_how $P1057, type_obj
    .const 'Sub' $P1058 = "27_1299602563.879" 
    $P1057."add_method"(type_obj, "BUILD", $P1058)
    get_how $P1059, type_obj
    .const 'Sub' $P1060 = "28_1299602563.879" 
    $P1059."add_method"(type_obj, "new_type", $P1060)
    get_how $P1061, type_obj
    .const 'Sub' $P1062 = "29_1299602563.879" 
    $P1061."add_method"(type_obj, "add_method", $P1062)
    get_how $P1063, type_obj
    .const 'Sub' $P1064 = "30_1299602563.879" 
    $P1063."add_method"(type_obj, "add_multi_method", $P1064)
    get_how $P1065, type_obj
    .const 'Sub' $P1066 = "31_1299602563.879" 
    $P1065."add_method"(type_obj, "add_attribute", $P1066)
    get_how $P1067, type_obj
    .const 'Sub' $P1068 = "32_1299602563.879" 
    $P1067."add_method"(type_obj, "add_parent", $P1068)
    get_how $P1069, type_obj
    .const 'Sub' $P1070 = "34_1299602563.879" 
    $P1069."add_method"(type_obj, "add_role", $P1070)
    get_how $P1071, type_obj
    .const 'Sub' $P1072 = "36_1299602563.879" 
    $P1071."add_method"(type_obj, "add_parrot_vtable_mapping", $P1072)
    get_how $P1073, type_obj
    .const 'Sub' $P1074 = "37_1299602563.879" 
    $P1073."add_method"(type_obj, "compose", $P1074)
    get_how $P1075, type_obj
    .const 'Sub' $P1076 = "41_1299602563.879" 
    $P1075."add_method"(type_obj, "incorporate_multi_candidates", $P1076)
    get_how $P1077, type_obj
    .const 'Sub' $P1078 = "46_1299602563.879" 
    $P1077."add_method"(type_obj, "publish_type_cache", $P1078)
    get_how $P1079, type_obj
    .const 'Sub' $P1080 = "49_1299602563.879" 
    $P1079."add_method"(type_obj, "publish_method_cache", $P1080)
    get_how $P1081, type_obj
    .const 'Sub' $P1082 = "52_1299602563.879" 
    $P1081."add_method"(type_obj, "publish_parrot_vtable_mapping", $P1082)
    get_how $P1083, type_obj
    .const 'Sub' $P1084 = "55_1299602563.879" 
    $P1083."add_method"(type_obj, "parents", $P1084)
    get_how $P1085, type_obj
    .const 'Sub' $P1086 = "56_1299602563.879" 
    $P1085."add_method"(type_obj, "roles", $P1086)
    get_how $P1087, type_obj
    .const 'Sub' $P1088 = "57_1299602563.879" 
    $P1087."add_method"(type_obj, "methods", $P1088)
    get_how $P1089, type_obj
    .const 'Sub' $P1090 = "59_1299602563.879" 
    $P1089."add_method"(type_obj, "method_table", $P1090)
    get_how $P1091, type_obj
    .const 'Sub' $P1092 = "60_1299602563.879" 
    $P1091."add_method"(type_obj, "name", $P1092)
    get_how $P1093, type_obj
    .const 'Sub' $P1094 = "61_1299602563.879" 
    $P1093."add_method"(type_obj, "attributes", $P1094)
    get_how $P1095, type_obj
    .const 'Sub' $P1096 = "63_1299602563.879" 
    $P1095."add_method"(type_obj, "parrot_vtable_mappings", $P1096)
    get_how $P1097, type_obj
    .const 'Sub' $P1098 = "64_1299602563.879" 
    $P1097."add_method"(type_obj, "isa", $P1098)
    get_how $P1099, type_obj
    .const 'Sub' $P1100 = "65_1299602563.879" 
    $P1099."add_method"(type_obj, "does", $P1100)
    get_how $P1101, type_obj
    .const 'Sub' $P1102 = "66_1299602563.879" 
    $P1101."add_method"(type_obj, "can", $P1102)
    get_how $P1103, type_obj
    .const 'Sub' $P1104 = "68_1299602563.879" 
    $P1103."add_method"(type_obj, "find_method", $P1104)
    get_how $P1105, type_obj
    $P1106 = $P1105."compose"(type_obj)
    .return ($P1106)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "compute_c3_mro"  :subid("16_1299602563.879") :outer("15_1299602563.879")
    .param pmc param_56
.annotate 'line', 235
    .const 'Sub' $P68 = "17_1299602563.879" 
    capture_lex $P68
    new $P55, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P55, control_54
    push_eh $P55
    .lex "$class", param_56
.annotate 'line', 236
    $P57 = root_new ['parrot';'ResizablePMCArray']
    .lex "@immediate_parents", $P57
.annotate 'line', 239
    $P58 = root_new ['parrot';'ResizablePMCArray']
    .lex "@result", $P58
.annotate 'line', 236
    find_lex $P59, "$class"
    get_how $P60, $P59
    find_lex $P61, "$class"
    $P62 = $P60."parents"($P61, 1 :named("local"))
    store_lex "@immediate_parents", $P62
    find_lex $P63, "@result"
.annotate 'line', 240
    find_lex $P65, "@immediate_parents"
    set $N66, $P65
    unless $N66, if_64_end
    .const 'Sub' $P68 = "17_1299602563.879" 
    capture_lex $P68
    $P68()
  if_64_end:
.annotate 'line', 252
    find_lex $P89, "@result"
    find_lex $P90, "$class"
    $P89."unshift"($P90)
.annotate 'line', 253
    new $P91, "Exception"
    set $P91['type'], .CONTROL_RETURN
    find_lex $P92, "@result"
    setattribute $P91, 'payload', $P92
    throw $P91
.annotate 'line', 235
    .return ()
  control_54:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P93, exception, "payload"
    .return ($P93)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block67"  :anon :subid("17_1299602563.879") :outer("16_1299602563.879")
.annotate 'line', 240
    .const 'Sub' $P76 = "18_1299602563.879" 
    capture_lex $P76
.annotate 'line', 243
    $P69 = root_new ['parrot';'ResizablePMCArray']
    .lex "@merge_list", $P69
.annotate 'line', 240
    find_lex $P70, "@merge_list"
.annotate 'line', 244
    find_lex $P72, "@immediate_parents"
    defined $I73, $P72
    unless $I73, for_undef_180
    iter $P71, $P72
    new $P83, 'ExceptionHandler'
    set_label $P83, loop82_handler
    $P83."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P83
  loop82_test:
    unless $P71, loop82_done
    shift $P74, $P71
  loop82_redo:
    .const 'Sub' $P76 = "18_1299602563.879" 
    capture_lex $P76
    $P76($P74)
  loop82_next:
    goto loop82_test
  loop82_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P84, exception, 'type'
    eq $P84, .CONTROL_LOOP_NEXT, loop82_next
    eq $P84, .CONTROL_LOOP_REDO, loop82_redo
  loop82_done:
    pop_eh 
  for_undef_180:
.annotate 'line', 247
    find_lex $P85, "@merge_list"
    find_lex $P86, "@immediate_parents"
    $P85."push"($P86)
.annotate 'line', 248
    find_lex $P87, "@merge_list"
    $P88 = "c3_merge"($P87)
    store_lex "@result", $P88
.annotate 'line', 240
    .return ($P88)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block75"  :anon :subid("18_1299602563.879") :outer("17_1299602563.879")
    .param pmc param_77
.annotate 'line', 244
    .lex "$_", param_77
.annotate 'line', 245
    find_lex $P78, "@merge_list"
    find_lex $P79, "$_"
    $P80 = "compute_c3_mro"($P79)
    $P81 = $P78."push"($P80)
.annotate 'line', 244
    .return ($P81)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "c3_merge"  :subid("19_1299602563.879") :outer("15_1299602563.879")
    .param pmc param_98
.annotate 'line', 257
    .const 'Sub' $P191 = "24_1299602563.879" 
    capture_lex $P191
    .const 'Sub' $P113 = "20_1299602563.879" 
    capture_lex $P113
    new $P97, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P97, control_96
    push_eh $P97
    .lex "@merge_list", param_98
.annotate 'line', 258
    $P99 = root_new ['parrot';'ResizablePMCArray']
    .lex "@result", $P99
.annotate 'line', 259
    new $P100, "Undef"
    .lex "$accepted", $P100
.annotate 'line', 260
    new $P101, "Undef"
    .lex "$something_accepted", $P101
.annotate 'line', 261
    new $P102, "Undef"
    .lex "$cand_count", $P102
.annotate 'line', 304
    new $P103, "Undef"
    .lex "$i", $P103
.annotate 'line', 257
    find_lex $P104, "@result"
    find_lex $P105, "$accepted"
.annotate 'line', 260
    new $P106, "Integer"
    assign $P106, 0
    store_lex "$something_accepted", $P106
.annotate 'line', 261
    new $P107, "Integer"
    assign $P107, 0
    store_lex "$cand_count", $P107
.annotate 'line', 264
    find_lex $P109, "@merge_list"
    defined $I110, $P109
    unless $I110, for_undef_181
    iter $P108, $P109
    new $P174, 'ExceptionHandler'
    set_label $P174, loop173_handler
    $P174."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P174
  loop173_test:
    unless $P108, loop173_done
    shift $P111, $P108
  loop173_redo:
    .const 'Sub' $P113 = "20_1299602563.879" 
    capture_lex $P113
    $P113($P111)
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
  for_undef_181:
.annotate 'line', 294
    find_lex $P177, "$cand_count"
    set $N178, $P177
    iseq $I179, $N178, 0.0
    unless $I179, if_176_end
.annotate 'line', 295
    new $P180, "Exception"
    set $P180['type'], .CONTROL_RETURN
    find_lex $P181, "@result"
    setattribute $P180, 'payload', $P181
    throw $P180
  if_176_end:
.annotate 'line', 299
    find_lex $P183, "$something_accepted"
    if $P183, unless_182_end
.annotate 'line', 300
    die "Could not build C3 linearization: ambiguous hierarchy"
  unless_182_end:
.annotate 'line', 304
    new $P184, "Integer"
    assign $P184, 0
    store_lex "$i", $P184
.annotate 'line', 305
    new $P222, 'ExceptionHandler'
    set_label $P222, loop221_handler
    $P222."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P222
  loop221_test:
    find_lex $P185, "$i"
    set $N186, $P185
    find_lex $P187, "@merge_list"
    set $N188, $P187
    islt $I189, $N186, $N188
    unless $I189, loop221_done
  loop221_redo:
    .const 'Sub' $P191 = "24_1299602563.879" 
    capture_lex $P191
    $P191()
  loop221_next:
    goto loop221_test
  loop221_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P223, exception, 'type'
    eq $P223, .CONTROL_LOOP_NEXT, loop221_next
    eq $P223, .CONTROL_LOOP_REDO, loop221_redo
  loop221_done:
    pop_eh 
.annotate 'line', 318
    find_lex $P224, "@merge_list"
    $P225 = "c3_merge"($P224)
    store_lex "@result", $P225
.annotate 'line', 319
    find_lex $P226, "@result"
    find_lex $P227, "$accepted"
    $P226."unshift"($P227)
.annotate 'line', 320
    new $P228, "Exception"
    set $P228['type'], .CONTROL_RETURN
    find_lex $P229, "@result"
    setattribute $P228, 'payload', $P229
    throw $P228
.annotate 'line', 257
    .return ()
  control_96:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P230, exception, "payload"
    .return ($P230)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block112"  :anon :subid("20_1299602563.879") :outer("19_1299602563.879")
    .param pmc param_115
.annotate 'line', 264
    .const 'Sub' $P122 = "21_1299602563.879" 
    capture_lex $P122
.annotate 'line', 265
    $P114 = root_new ['parrot';'ResizablePMCArray']
    .lex "@cand_list", $P114
    .lex "$_", param_115
    find_lex $P116, "$_"
    store_lex "@cand_list", $P116
.annotate 'line', 266
    find_lex $P119, "@cand_list"
    set $N120, $P119
    if $N120, if_118
    new $P117, 'Float'
    set $P117, $N120
    goto if_118_end
  if_118:
    .const 'Sub' $P122 = "21_1299602563.879" 
    capture_lex $P122
    $P172 = $P122()
    set $P117, $P172
  if_118_end:
.annotate 'line', 264
    .return ($P117)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block121"  :anon :subid("21_1299602563.879") :outer("20_1299602563.879")
.annotate 'line', 266
    .const 'Sub' $P135 = "22_1299602563.879" 
    capture_lex $P135
.annotate 'line', 267
    new $P123, "Undef"
    .lex "$rejected", $P123
.annotate 'line', 268
    new $P124, "Undef"
    .lex "$cand_class", $P124
.annotate 'line', 267
    new $P125, "Integer"
    assign $P125, 0
    store_lex "$rejected", $P125
.annotate 'line', 268
    find_lex $P126, "@cand_list"
    unless_null $P126, vivify_182
    $P126 = root_new ['parrot';'ResizablePMCArray']
  vivify_182:
    set $P127, $P126[0]
    unless_null $P127, vivify_183
    new $P127, "Undef"
  vivify_183:
    store_lex "$cand_class", $P127
.annotate 'line', 269
    find_lex $P128, "$cand_count"
    add $P129, $P128, 1
    store_lex "$cand_count", $P129
.annotate 'line', 270
    find_lex $P131, "@merge_list"
    defined $I132, $P131
    unless $I132, for_undef_184
    iter $P130, $P131
    new $P170, 'ExceptionHandler'
    set_label $P170, loop169_handler
    $P170."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P170
  loop169_test:
    unless $P130, loop169_done
    shift $P133, $P130
  loop169_redo:
    .const 'Sub' $P135 = "22_1299602563.879" 
    capture_lex $P135
    $P135($P133)
  loop169_next:
    goto loop169_test
  loop169_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P171, exception, 'type'
    eq $P171, .CONTROL_LOOP_NEXT, loop169_next
    eq $P171, .CONTROL_LOOP_REDO, loop169_redo
  loop169_done:
    pop_eh 
  for_undef_184:
.annotate 'line', 266
    .return ($P130)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block134"  :anon :subid("22_1299602563.879") :outer("21_1299602563.879")
    .param pmc param_136
.annotate 'line', 270
    .const 'Sub' $P142 = "23_1299602563.879" 
    capture_lex $P142
    .lex "$_", param_136
.annotate 'line', 272
    find_lex $P138, "$_"
    find_lex $P139, "@cand_list"
    issame $I140, $P138, $P139
    if $I140, unless_137_end
    .const 'Sub' $P142 = "23_1299602563.879" 
    capture_lex $P142
    $P142()
  unless_137_end:
.annotate 'line', 284
    find_lex $P165, "$rejected"
    unless $P165, unless_164
    set $P163, $P165
    goto unless_164_end
  unless_164:
.annotate 'line', 285
    find_lex $P166, "$cand_class"
    store_lex "$accepted", $P166
.annotate 'line', 286
    new $P167, "Integer"
    assign $P167, 1
    store_lex "$something_accepted", $P167
.annotate 'line', 287
    set $I168, .CONTROL_LOOP_LAST
    die 0, $I168
  unless_164_end:
.annotate 'line', 270
    .return ($P163)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block141"  :anon :subid("23_1299602563.879") :outer("22_1299602563.879")
.annotate 'line', 274
    new $P143, "Undef"
    .lex "$cur_pos", $P143
    new $P144, "Integer"
    assign $P144, 1
    store_lex "$cur_pos", $P144
.annotate 'line', 275
    new $P161, 'ExceptionHandler'
    set_label $P161, loop160_handler
    $P161."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P161
  loop160_test:
    find_lex $P145, "$cur_pos"
    set $N146, $P145
    find_lex $P147, "$_"
    set $N148, $P147
    isle $I149, $N146, $N148
    unless $I149, loop160_done
  loop160_redo:
.annotate 'line', 276
    find_lex $P151, "$cur_pos"
    set $I152, $P151
    find_lex $P153, "$_"
    unless_null $P153, vivify_185
    $P153 = root_new ['parrot';'ResizablePMCArray']
  vivify_185:
    set $P154, $P153[$I152]
    unless_null $P154, vivify_186
    new $P154, "Undef"
  vivify_186:
    find_lex $P155, "$cand_class"
    issame $I156, $P154, $P155
    unless $I156, if_150_end
.annotate 'line', 277
    new $P157, "Integer"
    assign $P157, 1
    store_lex "$rejected", $P157
  if_150_end:
.annotate 'line', 279
    find_lex $P158, "$cur_pos"
    add $P159, $P158, 1
    store_lex "$cur_pos", $P159
  loop160_next:
.annotate 'line', 275
    goto loop160_test
  loop160_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P162, exception, 'type'
    eq $P162, .CONTROL_LOOP_NEXT, loop160_next
    eq $P162, .CONTROL_LOOP_REDO, loop160_redo
  loop160_done:
    pop_eh 
.annotate 'line', 272
    .return ($I149)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block190"  :anon :subid("24_1299602563.879") :outer("19_1299602563.879")
.annotate 'line', 305
    .const 'Sub' $P202 = "25_1299602563.879" 
    capture_lex $P202
.annotate 'line', 306
    $P192 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new_list", $P192
.annotate 'line', 305
    find_lex $P193, "@new_list"
.annotate 'line', 307
    find_lex $P195, "$i"
    set $I196, $P195
    find_lex $P197, "@merge_list"
    unless_null $P197, vivify_187
    $P197 = root_new ['parrot';'ResizablePMCArray']
  vivify_187:
    set $P198, $P197[$I196]
    unless_null $P198, vivify_188
    new $P198, "Undef"
  vivify_188:
    defined $I199, $P198
    unless $I199, for_undef_189
    iter $P194, $P198
    new $P213, 'ExceptionHandler'
    set_label $P213, loop212_handler
    $P213."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P213
  loop212_test:
    unless $P194, loop212_done
    shift $P200, $P194
  loop212_redo:
    .const 'Sub' $P202 = "25_1299602563.879" 
    capture_lex $P202
    $P202($P200)
  loop212_next:
    goto loop212_test
  loop212_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P214, exception, 'type'
    eq $P214, .CONTROL_LOOP_NEXT, loop212_next
    eq $P214, .CONTROL_LOOP_REDO, loop212_redo
  loop212_done:
    pop_eh 
  for_undef_189:
.annotate 'line', 312
    find_lex $P215, "@new_list"
    find_lex $P216, "$i"
    set $I217, $P216
    find_lex $P218, "@merge_list"
    unless_null $P218, vivify_190
    $P218 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@merge_list", $P218
  vivify_190:
    set $P218[$I217], $P215
.annotate 'line', 313
    find_lex $P219, "$i"
    add $P220, $P219, 1
    store_lex "$i", $P220
.annotate 'line', 305
    .return ($P220)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block201"  :anon :subid("25_1299602563.879") :outer("24_1299602563.879")
    .param pmc param_203
.annotate 'line', 307
    .lex "$_", param_203
.annotate 'line', 308
    find_lex $P206, "$_"
    find_lex $P207, "$accepted"
    issame $I208, $P206, $P207
    unless $I208, unless_205
    new $P204, 'Integer'
    set $P204, $I208
    goto unless_205_end
  unless_205:
.annotate 'line', 309
    find_lex $P209, "@new_list"
    find_lex $P210, "$_"
    $P211 = $P209."push"($P210)
.annotate 'line', 308
    set $P204, $P211
  unless_205_end:
.annotate 'line', 307
    .return ($P204)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "new"  :subid("26_1299602563.879") :outer("15_1299602563.879")
    .param pmc param_233
    .param pmc param_234 :optional :named("name")
    .param int has_param_234 :opt_flag
.annotate 'line', 62
    .lex "self", param_233
    if has_param_234, optparam_191
    new $P235, "Undef"
    set param_234, $P235
  optparam_191:
    .lex "$name", param_234
.annotate 'line', 63
    new $P236, "Undef"
    .lex "$obj", $P236
    find_lex $P237, "self"
    repr_instance_of $P238, $P237
    store_lex "$obj", $P238
.annotate 'line', 64
    find_lex $P239, "$obj"
    find_lex $P240, "$name"
    $P239."BUILD"($P240 :named("name"))
    find_lex $P241, "$obj"
.annotate 'line', 62
    .return ($P241)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "BUILD"  :subid("27_1299602563.879") :outer("15_1299602563.879")
    .param pmc param_243
    .param pmc param_244 :optional :named("name")
    .param int has_param_244 :opt_flag
.annotate 'line', 68
    .lex "self", param_243
    if has_param_244, optparam_192
    new $P245, "Undef"
    set param_244, $P245
  optparam_192:
    .lex "$name", param_244
.annotate 'line', 69
    find_lex $P246, "$name"
    find_lex $P247, "self"
    get_global $P248, "$?CLASS"
    setattribute $P247, $P248, "$!name", $P246
.annotate 'line', 68
    .return ($P246)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "new_type"  :subid("28_1299602563.879") :outer("15_1299602563.879")
    .param pmc param_250
    .param pmc param_251 :optional :named("name")
    .param int has_param_251 :opt_flag
    .param pmc param_253 :optional :named("repr")
    .param int has_param_253 :opt_flag
.annotate 'line', 74
    .lex "self", param_250
    if has_param_251, optparam_193
    new $P252, "String"
    assign $P252, "<anon>"
    set param_251, $P252
  optparam_193:
    .lex "$name", param_251
    if has_param_253, optparam_194
    new $P254, "String"
    assign $P254, "P6opaque"
    set param_253, $P254
  optparam_194:
    .lex "$repr", param_253
.annotate 'line', 75
    new $P255, "Undef"
    .lex "$metaclass", $P255
    find_lex $P256, "self"
    find_lex $P257, "$name"
    $P258 = $P256."new"($P257 :named("name"))
    store_lex "$metaclass", $P258
.annotate 'line', 76
    find_lex $P259, "$metaclass"
    find_lex $P260, "$repr"
    set $S261, $P260
    repr_type_object_for $P262, $P259, $S261
.annotate 'line', 74
    .return ($P262)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_method"  :subid("29_1299602563.879") :outer("15_1299602563.879")
    .param pmc param_264
    .param pmc param_265
    .param pmc param_266
    .param pmc param_267
.annotate 'line', 79
    .lex "self", param_264
    .lex "$obj", param_265
    .lex "$name", param_266
    .lex "$code_obj", param_267
.annotate 'line', 80
    find_lex $P269, "$name"
    find_lex $P270, "self"
    get_global $P271, "$?CLASS"
    getattribute $P272, $P270, $P271, "%!methods"
    unless_null $P272, vivify_195
    $P272 = root_new ['parrot';'Hash']
  vivify_195:
    set $P273, $P272[$P269]
    unless_null $P273, vivify_196
    new $P273, "Undef"
  vivify_196:
    unless $P273, if_268_end
.annotate 'line', 81
    new $P274, "String"
    assign $P274, "This class already has a method named "
    find_lex $P275, "$name"
    concat $P276, $P274, $P275
    die $P276
  if_268_end:
.annotate 'line', 83
    find_lex $P277, "$code_obj"
    find_lex $P278, "$name"
    find_lex $P279, "self"
    get_global $P280, "$?CLASS"
    getattribute $P281, $P279, $P280, "%!methods"
    unless_null $P281, vivify_197
    $P281 = root_new ['parrot';'Hash']
    setattribute $P279, $P280, "%!methods", $P281
  vivify_197:
    set $P281[$P278], $P277
.annotate 'line', 79
    .return ($P277)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_multi_method"  :subid("30_1299602563.879") :outer("15_1299602563.879")
    .param pmc param_283
    .param pmc param_284
    .param pmc param_285
    .param pmc param_286
.annotate 'line', 86
    .lex "self", param_283
    .lex "$obj", param_284
    .lex "$name", param_285
    .lex "$code_obj", param_286
.annotate 'line', 92
    $P287 = root_new ['parrot';'Hash']
    .lex "%todo", $P287
.annotate 'line', 86
    find_lex $P288, "%todo"
.annotate 'line', 93
    find_lex $P289, "$name"
    find_lex $P290, "%todo"
    unless_null $P290, vivify_198
    $P290 = root_new ['parrot';'Hash']
    store_lex "%todo", $P290
  vivify_198:
    set $P290["name"], $P289
.annotate 'line', 94
    find_lex $P291, "$code_obj"
    find_lex $P292, "%todo"
    unless_null $P292, vivify_199
    $P292 = root_new ['parrot';'Hash']
    store_lex "%todo", $P292
  vivify_199:
    set $P292["code"], $P291
.annotate 'line', 95
    find_lex $P293, "%todo"
    find_lex $P294, "self"
    get_global $P295, "$?CLASS"
    getattribute $P296, $P294, $P295, "@!multi_methods_to_incorporate"
    unless_null $P296, vivify_200
    $P296 = root_new ['parrot';'ResizablePMCArray']
  vivify_200:
    set $N297, $P296
    set $I298, $N297
    find_lex $P299, "self"
    get_global $P300, "$?CLASS"
    getattribute $P301, $P299, $P300, "@!multi_methods_to_incorporate"
    unless_null $P301, vivify_201
    $P301 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P299, $P300, "@!multi_methods_to_incorporate", $P301
  vivify_201:
    set $P301[$I298], $P293
    find_lex $P302, "$code_obj"
.annotate 'line', 86
    .return ($P302)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_attribute"  :subid("31_1299602563.879") :outer("15_1299602563.879")
    .param pmc param_304
    .param pmc param_305
    .param pmc param_306
.annotate 'line', 99
    .lex "self", param_304
    .lex "$obj", param_305
    .lex "$meta_attr", param_306
.annotate 'line', 100
    new $P307, "Undef"
    .lex "$name", $P307
    find_lex $P308, "$meta_attr"
    $P309 = $P308."name"()
    store_lex "$name", $P309
.annotate 'line', 101
    find_lex $P311, "$name"
    find_lex $P312, "self"
    get_global $P313, "$?CLASS"
    getattribute $P314, $P312, $P313, "%!attributes"
    unless_null $P314, vivify_202
    $P314 = root_new ['parrot';'Hash']
  vivify_202:
    set $P315, $P314[$P311]
    unless_null $P315, vivify_203
    new $P315, "Undef"
  vivify_203:
    unless $P315, if_310_end
.annotate 'line', 102
    new $P316, "String"
    assign $P316, "This class already has an attribute named "
    find_lex $P317, "$name"
    concat $P318, $P316, $P317
    die $P318
  if_310_end:
.annotate 'line', 104
    find_lex $P319, "$meta_attr"
    find_lex $P320, "$name"
    find_lex $P321, "self"
    get_global $P322, "$?CLASS"
    getattribute $P323, $P321, $P322, "%!attributes"
    unless_null $P323, vivify_204
    $P323 = root_new ['parrot';'Hash']
    setattribute $P321, $P322, "%!attributes", $P323
  vivify_204:
    set $P323[$P320], $P319
.annotate 'line', 99
    .return ($P319)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_parent"  :subid("32_1299602563.879") :outer("15_1299602563.879")
    .param pmc param_325
    .param pmc param_326
    .param pmc param_327
.annotate 'line', 107
    .const 'Sub' $P339 = "33_1299602563.879" 
    capture_lex $P339
    .lex "self", param_325
    .lex "$obj", param_326
    .lex "$parent", param_327
.annotate 'line', 108
    find_lex $P329, "self"
    get_global $P330, "$?CLASS"
    getattribute $P331, $P329, $P330, "$!composed"
    unless_null $P331, vivify_205
    new $P331, "Undef"
  vivify_205:
    unless $P331, if_328_end
.annotate 'line', 109
    die "NQPClassHOW does not support adding parents after being composed."
  if_328_end:
.annotate 'line', 111
    find_lex $P333, "self"
    get_global $P334, "$?CLASS"
    getattribute $P335, $P333, $P334, "@!parents"
    unless_null $P335, vivify_206
    $P335 = root_new ['parrot';'ResizablePMCArray']
  vivify_206:
    defined $I336, $P335
    unless $I336, for_undef_207
    iter $P332, $P335
    new $P351, 'ExceptionHandler'
    set_label $P351, loop350_handler
    $P351."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P351
  loop350_test:
    unless $P332, loop350_done
    shift $P337, $P332
  loop350_redo:
    .const 'Sub' $P339 = "33_1299602563.879" 
    capture_lex $P339
    $P339($P337)
  loop350_next:
    goto loop350_test
  loop350_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P352, exception, 'type'
    eq $P352, .CONTROL_LOOP_NEXT, loop350_next
    eq $P352, .CONTROL_LOOP_REDO, loop350_redo
  loop350_done:
    pop_eh 
  for_undef_207:
.annotate 'line', 116
    find_lex $P353, "$parent"
    find_lex $P354, "self"
    get_global $P355, "$?CLASS"
    getattribute $P356, $P354, $P355, "@!parents"
    unless_null $P356, vivify_208
    $P356 = root_new ['parrot';'ResizablePMCArray']
  vivify_208:
    set $N357, $P356
    set $I358, $N357
    find_lex $P359, "self"
    get_global $P360, "$?CLASS"
    getattribute $P361, $P359, $P360, "@!parents"
    unless_null $P361, vivify_209
    $P361 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P359, $P360, "@!parents", $P361
  vivify_209:
    set $P361[$I358], $P353
.annotate 'line', 107
    .return ($P353)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block338"  :anon :subid("33_1299602563.879") :outer("32_1299602563.879")
    .param pmc param_340
.annotate 'line', 111
    .lex "$_", param_340
.annotate 'line', 112
    find_lex $P343, "$_"
    find_lex $P344, "$parent"
    issame $I345, $P343, $P344
    if $I345, if_342
    new $P341, 'Integer'
    set $P341, $I345
    goto if_342_end
  if_342:
.annotate 'line', 113
    new $P346, "String"
    assign $P346, "Already have "
    find_lex $P347, "$parent"
    concat $P348, $P346, $P347
    concat $P349, $P348, " as a parent class."
    die $P349
  if_342_end:
.annotate 'line', 111
    .return ($P341)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_role"  :subid("34_1299602563.879") :outer("15_1299602563.879")
    .param pmc param_363
    .param pmc param_364
    .param pmc param_365
.annotate 'line', 119
    .const 'Sub' $P373 = "35_1299602563.879" 
    capture_lex $P373
    .lex "self", param_363
    .lex "$obj", param_364
    .lex "$role", param_365
.annotate 'line', 120
    find_lex $P367, "self"
    get_global $P368, "$?CLASS"
    getattribute $P369, $P367, $P368, "@!roles"
    unless_null $P369, vivify_210
    $P369 = root_new ['parrot';'ResizablePMCArray']
  vivify_210:
    defined $I370, $P369
    unless $I370, for_undef_211
    iter $P366, $P369
    new $P385, 'ExceptionHandler'
    set_label $P385, loop384_handler
    $P385."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P385
  loop384_test:
    unless $P366, loop384_done
    shift $P371, $P366
  loop384_redo:
    .const 'Sub' $P373 = "35_1299602563.879" 
    capture_lex $P373
    $P373($P371)
  loop384_next:
    goto loop384_test
  loop384_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P386, exception, 'type'
    eq $P386, .CONTROL_LOOP_NEXT, loop384_next
    eq $P386, .CONTROL_LOOP_REDO, loop384_redo
  loop384_done:
    pop_eh 
  for_undef_211:
.annotate 'line', 125
    find_lex $P387, "$role"
    find_lex $P388, "self"
    get_global $P389, "$?CLASS"
    getattribute $P390, $P388, $P389, "@!roles"
    unless_null $P390, vivify_212
    $P390 = root_new ['parrot';'ResizablePMCArray']
  vivify_212:
    set $N391, $P390
    set $I392, $N391
    find_lex $P393, "self"
    get_global $P394, "$?CLASS"
    getattribute $P395, $P393, $P394, "@!roles"
    unless_null $P395, vivify_213
    $P395 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P393, $P394, "@!roles", $P395
  vivify_213:
    set $P395[$I392], $P387
.annotate 'line', 119
    .return ($P387)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block372"  :anon :subid("35_1299602563.879") :outer("34_1299602563.879")
    .param pmc param_374
.annotate 'line', 120
    .lex "$_", param_374
.annotate 'line', 121
    find_lex $P377, "$_"
    find_lex $P378, "$role"
    issame $I379, $P377, $P378
    if $I379, if_376
    new $P375, 'Integer'
    set $P375, $I379
    goto if_376_end
  if_376:
.annotate 'line', 122
    new $P380, "String"
    assign $P380, "The role "
    find_lex $P381, "$role"
    concat $P382, $P380, $P381
    concat $P383, $P382, " has already been added."
    die $P383
  if_376_end:
.annotate 'line', 120
    .return ($P375)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_parrot_vtable_mapping"  :subid("36_1299602563.879") :outer("15_1299602563.879")
    .param pmc param_397
    .param pmc param_398
    .param pmc param_399
    .param pmc param_400
.annotate 'line', 128
    .lex "self", param_397
    .lex "$obj", param_398
    .lex "$name", param_399
    .lex "$meth", param_400
.annotate 'line', 129
    find_lex $P402, "$name"
    find_lex $P403, "self"
    get_global $P404, "$?CLASS"
    getattribute $P405, $P403, $P404, "%!parrot_vtable_mapping"
    unless_null $P405, vivify_214
    $P405 = root_new ['parrot';'Hash']
  vivify_214:
    set $P406, $P405[$P402]
    unless_null $P406, vivify_215
    new $P406, "Undef"
  vivify_215:
    defined $I407, $P406
    unless $I407, if_401_end
.annotate 'line', 130
    new $P408, "String"
    assign $P408, "Class '"
    find_lex $P409, "self"
    get_global $P410, "$?CLASS"
    getattribute $P411, $P409, $P410, "$!name"
    unless_null $P411, vivify_216
    new $P411, "Undef"
  vivify_216:
    concat $P412, $P408, $P411
    concat $P413, $P412, "' already has a Parrot v-table override for '"
    find_lex $P414, "$name"
    concat $P415, $P413, $P414
.annotate 'line', 131
    concat $P416, $P415, "'"
.annotate 'line', 132
    die $P416
  if_401_end:
.annotate 'line', 134
    find_lex $P417, "$meth"
    find_lex $P418, "$name"
    find_lex $P419, "self"
    get_global $P420, "$?CLASS"
    getattribute $P421, $P419, $P420, "%!parrot_vtable_mapping"
    unless_null $P421, vivify_217
    $P421 = root_new ['parrot';'Hash']
    setattribute $P419, $P420, "%!parrot_vtable_mapping", $P421
  vivify_217:
    set $P421[$P418], $P417
.annotate 'line', 128
    .return ($P417)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "compose"  :subid("37_1299602563.879") :outer("15_1299602563.879")
    .param pmc param_423
    .param pmc param_424
.annotate 'line', 137
    .const 'Sub' $P511 = "40_1299602563.879" 
    capture_lex $P511
    .const 'Sub' $P430 = "38_1299602563.879" 
    capture_lex $P430
    .lex "self", param_423
    .lex "$obj", param_424
.annotate 'line', 141
    find_lex $P426, "self"
    get_global $P427, "$?CLASS"
    getattribute $P428, $P426, $P427, "@!roles"
    unless_null $P428, vivify_218
    $P428 = root_new ['parrot';'ResizablePMCArray']
  vivify_218:
    unless $P428, if_425_end
    .const 'Sub' $P430 = "38_1299602563.879" 
    capture_lex $P430
    $P430()
  if_425_end:
.annotate 'line', 154
    find_lex $P478, "self"
    get_global $P479, "$?CLASS"
    getattribute $P480, $P478, $P479, "@!parents"
    unless_null $P480, vivify_225
    $P480 = root_new ['parrot';'ResizablePMCArray']
  vivify_225:
    set $N481, $P480
    iseq $I482, $N481, 0.0
    if $I482, if_477
    new $P476, 'Integer'
    set $P476, $I482
    goto if_477_end
  if_477:
    find_lex $P483, "self"
    get_global $P484, "$?CLASS"
    getattribute $P485, $P483, $P484, "$!name"
    unless_null $P485, vivify_226
    new $P485, "Undef"
  vivify_226:
    set $S486, $P485
    isne $I487, $S486, "NQPMu"
    new $P476, 'Integer'
    set $P476, $I487
  if_477_end:
    unless $P476, if_475_end
.annotate 'line', 155
    find_lex $P488, "self"
    find_lex $P489, "$obj"
    get_hll_global $P490, "NQPMu"
    $P488."add_parent"($P489, $P490)
  if_475_end:
.annotate 'line', 160
    find_lex $P492, "self"
    get_global $P493, "$?CLASS"
    getattribute $P494, $P492, $P493, "$!composed"
    unless_null $P494, vivify_227
    new $P494, "Undef"
  vivify_227:
    if $P494, unless_491_end
.annotate 'line', 161
    find_lex $P495, "$obj"
    $P496 = "compute_c3_mro"($P495)
    find_lex $P497, "self"
    get_global $P498, "$?CLASS"
    setattribute $P497, $P498, "@!mro", $P496
.annotate 'line', 162
    new $P499, "Integer"
    assign $P499, 1
    find_lex $P500, "self"
    get_global $P501, "$?CLASS"
    setattribute $P500, $P501, "$!composed", $P499
  unless_491_end:
.annotate 'line', 166
    find_lex $P502, "self"
    find_lex $P503, "$obj"
    $P502."incorporate_multi_candidates"($P503)
.annotate 'line', 169
    find_lex $P505, "self"
    find_lex $P506, "$obj"
    $P507 = $P505."attributes"($P506, "0" :named("local"))
    defined $I508, $P507
    unless $I508, for_undef_228
    iter $P504, $P507
    new $P517, 'ExceptionHandler'
    set_label $P517, loop516_handler
    $P517."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P517
  loop516_test:
    unless $P504, loop516_done
    shift $P509, $P504
  loop516_redo:
    .const 'Sub' $P511 = "40_1299602563.879" 
    capture_lex $P511
    $P511($P509)
  loop516_next:
    goto loop516_test
  loop516_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P518, exception, 'type'
    eq $P518, .CONTROL_LOOP_NEXT, loop516_next
    eq $P518, .CONTROL_LOOP_REDO, loop516_redo
  loop516_done:
    pop_eh 
  for_undef_228:
.annotate 'line', 172
    find_lex $P519, "self"
    find_lex $P520, "$obj"
    $P519."publish_type_cache"($P520)
.annotate 'line', 173
    find_lex $P521, "self"
    find_lex $P522, "$obj"
    $P521."publish_method_cache"($P522)
.annotate 'line', 176
    find_lex $P523, "self"
    find_lex $P524, "$obj"
    $P523."publish_parrot_vtable_mapping"($P524)
    find_lex $P525, "$obj"
.annotate 'line', 137
    .return ($P525)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block429"  :anon :subid("38_1299602563.879") :outer("37_1299602563.879")
.annotate 'line', 141
    .const 'Sub' $P440 = "39_1299602563.879" 
    capture_lex $P440
.annotate 'line', 142
    $P431 = root_new ['parrot';'ResizablePMCArray']
    .lex "@instantiated_roles", $P431
.annotate 'line', 141
    find_lex $P432, "@instantiated_roles"
.annotate 'line', 143
    find_lex $P434, "self"
    get_global $P435, "$?CLASS"
    getattribute $P436, $P434, $P435, "@!roles"
    unless_null $P436, vivify_219
    $P436 = root_new ['parrot';'ResizablePMCArray']
  vivify_219:
    defined $I437, $P436
    unless $I437, for_undef_220
    iter $P433, $P436
    new $P469, 'ExceptionHandler'
    set_label $P469, loop468_handler
    $P469."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P469
  loop468_test:
    unless $P433, loop468_done
    shift $P438, $P433
  loop468_redo:
    .const 'Sub' $P440 = "39_1299602563.879" 
    capture_lex $P440
    $P440($P438)
  loop468_next:
    goto loop468_test
  loop468_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P470, exception, 'type'
    eq $P470, .CONTROL_LOOP_NEXT, loop468_next
    eq $P470, .CONTROL_LOOP_REDO, loop468_redo
  loop468_done:
    pop_eh 
  for_undef_220:
.annotate 'line', 149
    get_hll_global $P471, "RoleToClassApplier"
    find_lex $P472, "$obj"
    find_lex $P473, "@instantiated_roles"
    $P474 = $P471."apply"($P472, $P473)
.annotate 'line', 141
    .return ($P474)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block439"  :anon :subid("39_1299602563.879") :outer("38_1299602563.879")
    .param pmc param_442
.annotate 'line', 144
    new $P441, "Undef"
    .lex "$ins", $P441
    .lex "$_", param_442
    find_lex $P443, "$_"
    get_how $P444, $P443
    find_lex $P445, "$_"
    find_lex $P446, "$obj"
    $P447 = $P444."instantiate"($P445, $P446)
    store_lex "$ins", $P447
.annotate 'line', 145
    find_lex $P448, "@instantiated_roles"
    find_lex $P449, "$ins"
    $P448."push"($P449)
.annotate 'line', 146
    find_lex $P450, "$_"
    find_lex $P451, "self"
    get_global $P452, "$?CLASS"
    getattribute $P453, $P451, $P452, "@!done"
    unless_null $P453, vivify_221
    $P453 = root_new ['parrot';'ResizablePMCArray']
  vivify_221:
    set $N454, $P453
    set $I455, $N454
    find_lex $P456, "self"
    get_global $P457, "$?CLASS"
    getattribute $P458, $P456, $P457, "@!done"
    unless_null $P458, vivify_222
    $P458 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P456, $P457, "@!done", $P458
  vivify_222:
    set $P458[$I455], $P450
.annotate 'line', 147
    find_lex $P459, "$ins"
    find_lex $P460, "self"
    get_global $P461, "$?CLASS"
    getattribute $P462, $P460, $P461, "@!done"
    unless_null $P462, vivify_223
    $P462 = root_new ['parrot';'ResizablePMCArray']
  vivify_223:
    set $N463, $P462
    set $I464, $N463
    find_lex $P465, "self"
    get_global $P466, "$?CLASS"
    getattribute $P467, $P465, $P466, "@!done"
    unless_null $P467, vivify_224
    $P467 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P465, $P466, "@!done", $P467
  vivify_224:
    set $P467[$I464], $P459
.annotate 'line', 143
    .return ($P459)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block510"  :anon :subid("40_1299602563.879") :outer("37_1299602563.879")
    .param pmc param_512
.annotate 'line', 169
    .lex "$_", param_512
    find_lex $P513, "$_"
    find_lex $P514, "$obj"
    $P515 = $P513."compose"($P514)
    .return ($P515)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "incorporate_multi_candidates"  :subid("41_1299602563.879") :outer("15_1299602563.879")
    .param pmc param_527
    .param pmc param_528
.annotate 'line', 181
    .const 'Sub' $P543 = "42_1299602563.879" 
    capture_lex $P543
    .lex "self", param_527
    .lex "$obj", param_528
.annotate 'line', 182
    new $P529, "Undef"
    .lex "$num_todo", $P529
.annotate 'line', 183
    new $P530, "Undef"
    .lex "$i", $P530
.annotate 'line', 182
    find_lex $P531, "self"
    get_global $P532, "$?CLASS"
    getattribute $P533, $P531, $P532, "@!multi_methods_to_incorporate"
    unless_null $P533, vivify_229
    $P533 = root_new ['parrot';'ResizablePMCArray']
  vivify_229:
    set $N534, $P533
    new $P535, 'Float'
    set $P535, $N534
    store_lex "$num_todo", $P535
.annotate 'line', 183
    new $P536, "Integer"
    assign $P536, 0
    store_lex "$i", $P536
.annotate 'line', 184
    new $P652, 'ExceptionHandler'
    set_label $P652, loop651_handler
    $P652."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P652
  loop651_test:
    find_lex $P537, "$i"
    set $N538, $P537
    find_lex $P539, "$num_todo"
    set $N540, $P539
    isne $I541, $N538, $N540
    unless $I541, loop651_done
  loop651_redo:
    .const 'Sub' $P543 = "42_1299602563.879" 
    capture_lex $P543
    $P543()
  loop651_next:
    goto loop651_test
  loop651_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P653, exception, 'type'
    eq $P653, .CONTROL_LOOP_NEXT, loop651_next
    eq $P653, .CONTROL_LOOP_REDO, loop651_redo
  loop651_done:
    pop_eh 
.annotate 'line', 181
    .return ($I541)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block542"  :anon :subid("42_1299602563.879") :outer("41_1299602563.879")
.annotate 'line', 184
    .const 'Sub' $P579 = "43_1299602563.879" 
    capture_lex $P579
.annotate 'line', 186
    new $P544, "Undef"
    .lex "$name", $P544
.annotate 'line', 187
    new $P545, "Undef"
    .lex "$code", $P545
.annotate 'line', 191
    new $P546, "Undef"
    .lex "$dispatcher", $P546
.annotate 'line', 186
    find_lex $P547, "$i"
    set $I548, $P547
    find_lex $P549, "self"
    get_global $P550, "$?CLASS"
    getattribute $P551, $P549, $P550, "@!multi_methods_to_incorporate"
    unless_null $P551, vivify_230
    $P551 = root_new ['parrot';'ResizablePMCArray']
  vivify_230:
    set $P552, $P551[$I548]
    unless_null $P552, vivify_231
    $P552 = root_new ['parrot';'Hash']
  vivify_231:
    set $P553, $P552["name"]
    unless_null $P553, vivify_232
    new $P553, "Undef"
  vivify_232:
    store_lex "$name", $P553
.annotate 'line', 187
    find_lex $P554, "$i"
    set $I555, $P554
    find_lex $P556, "self"
    get_global $P557, "$?CLASS"
    getattribute $P558, $P556, $P557, "@!multi_methods_to_incorporate"
    unless_null $P558, vivify_233
    $P558 = root_new ['parrot';'ResizablePMCArray']
  vivify_233:
    set $P559, $P558[$I555]
    unless_null $P559, vivify_234
    $P559 = root_new ['parrot';'Hash']
  vivify_234:
    set $P560, $P559["code"]
    unless_null $P560, vivify_235
    new $P560, "Undef"
  vivify_235:
    store_lex "$code", $P560
.annotate 'line', 191
    find_lex $P561, "$name"
    find_lex $P562, "self"
    get_global $P563, "$?CLASS"
    getattribute $P564, $P562, $P563, "%!methods"
    unless_null $P564, vivify_236
    $P564 = root_new ['parrot';'Hash']
  vivify_236:
    set $P565, $P564[$P561]
    unless_null $P565, vivify_237
    new $P565, "Undef"
  vivify_237:
    store_lex "$dispatcher", $P565
.annotate 'line', 192
    find_lex $P567, "$dispatcher"
    defined $I568, $P567
    if $I568, if_566
.annotate 'line', 202
    .const 'Sub' $P579 = "43_1299602563.879" 
    capture_lex $P579
    $P579()
    goto if_566_end
  if_566:
.annotate 'line', 195
    find_lex $P570, "$dispatcher"
    is_dispatcher $I571, $P570
    if $I571, if_569
.annotate 'line', 199
    new $P574, 'String'
    set $P574, "Cannot have a multi candidate for "
    find_lex $P575, "$name"
    concat $P576, $P574, $P575
    concat $P577, $P576, " when an only method is also in the class"
    die $P577
.annotate 'line', 198
    goto if_569_end
  if_569:
.annotate 'line', 196
    find_lex $P572, "$dispatcher"
    find_lex $P573, "$code"
    push_dispatchee $P572, $P573
  if_569_end:
  if_566_end:
.annotate 'line', 230
    find_lex $P649, "$i"
    add $P650, $P649, 1
    store_lex "$i", $P650
.annotate 'line', 184
    .return ($P650)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block578"  :anon :subid("43_1299602563.879") :outer("42_1299602563.879")
.annotate 'line', 202
    .const 'Sub' $P596 = "44_1299602563.879" 
    capture_lex $P596
.annotate 'line', 204
    new $P580, "Undef"
    .lex "$j", $P580
.annotate 'line', 205
    new $P581, "Undef"
    .lex "$found", $P581
.annotate 'line', 204
    new $P582, "Integer"
    assign $P582, 1
    store_lex "$j", $P582
.annotate 'line', 205
    new $P583, "Integer"
    assign $P583, 0
    store_lex "$found", $P583
.annotate 'line', 206
    new $P640, 'ExceptionHandler'
    set_label $P640, loop639_handler
    $P640."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P640
  loop639_test:
    find_lex $P586, "$j"
    set $N587, $P586
    find_lex $P588, "self"
    get_global $P589, "$?CLASS"
    getattribute $P590, $P588, $P589, "@!mro"
    unless_null $P590, vivify_238
    $P590 = root_new ['parrot';'ResizablePMCArray']
  vivify_238:
    set $N591, $P590
    isne $I592, $N587, $N591
    if $I592, if_585
    new $P584, 'Integer'
    set $P584, $I592
    goto if_585_end
  if_585:
    find_lex $P593, "$found"
    isfalse $I594, $P593
    new $P584, 'Integer'
    set $P584, $I594
  if_585_end:
    unless $P584, loop639_done
  loop639_redo:
    .const 'Sub' $P596 = "44_1299602563.879" 
    capture_lex $P596
    $P596()
  loop639_next:
    goto loop639_test
  loop639_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P641, exception, 'type'
    eq $P641, .CONTROL_LOOP_NEXT, loop639_next
    eq $P641, .CONTROL_LOOP_REDO, loop639_redo
  loop639_done:
    pop_eh 
.annotate 'line', 226
    find_lex $P644, "$found"
    unless $P644, unless_643
    set $P642, $P644
    goto unless_643_end
  unless_643:
.annotate 'line', 227
    new $P645, 'String'
    set $P645, "Could not find a proto for multi "
    find_lex $P646, "$name"
    concat $P647, $P645, $P646
    concat $P648, $P647, ", and proto generation is NYI"
    die $P648
  unless_643_end:
.annotate 'line', 202
    .return ($P642)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block595"  :anon :subid("44_1299602563.879") :outer("43_1299602563.879")
.annotate 'line', 206
    .const 'Sub' $P620 = "45_1299602563.879" 
    capture_lex $P620
.annotate 'line', 207
    new $P597, "Undef"
    .lex "$parent", $P597
.annotate 'line', 208
    $P598 = root_new ['parrot';'Hash']
    .lex "%meths", $P598
.annotate 'line', 209
    new $P599, "Undef"
    .lex "$dispatcher", $P599
.annotate 'line', 207
    find_lex $P600, "$j"
    set $I601, $P600
    find_lex $P602, "self"
    get_global $P603, "$?CLASS"
    getattribute $P604, $P602, $P603, "@!mro"
    unless_null $P604, vivify_239
    $P604 = root_new ['parrot';'ResizablePMCArray']
  vivify_239:
    set $P605, $P604[$I601]
    unless_null $P605, vivify_240
    new $P605, "Undef"
  vivify_240:
    store_lex "$parent", $P605
.annotate 'line', 208
    find_lex $P606, "$parent"
    get_how $P607, $P606
    find_lex $P608, "$parent"
    $P609 = $P607."method_table"($P608)
    store_lex "%meths", $P609
.annotate 'line', 209
    find_lex $P610, "$name"
    find_lex $P611, "%meths"
    unless_null $P611, vivify_241
    $P611 = root_new ['parrot';'Hash']
  vivify_241:
    set $P612, $P611[$P610]
    unless_null $P612, vivify_242
    new $P612, "Undef"
  vivify_242:
    store_lex "$dispatcher", $P612
.annotate 'line', 210
    find_lex $P614, "$dispatcher"
    defined $I615, $P614
    unless $I615, if_613_end
.annotate 'line', 213
    find_lex $P617, "$dispatcher"
    is_dispatcher $I618, $P617
    if $I618, if_616
.annotate 'line', 221
    new $P633, 'String'
    set $P633, "Could not find a proto for multi "
    find_lex $P634, "$name"
    concat $P635, $P633, $P634
    concat $P636, $P635, " (it may exist, but an only is hiding it if so)"
    die $P636
.annotate 'line', 220
    goto if_616_end
  if_616:
.annotate 'line', 213
    .const 'Sub' $P620 = "45_1299602563.879" 
    capture_lex $P620
    $P620()
  if_616_end:
  if_613_end:
.annotate 'line', 224
    find_lex $P637, "$j"
    add $P638, $P637, 1
    store_lex "$j", $P638
.annotate 'line', 206
    .return ($P638)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block619"  :anon :subid("45_1299602563.879") :outer("44_1299602563.879")
.annotate 'line', 215
    $P621 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new_dispatchees", $P621
.annotate 'line', 213
    find_lex $P622, "@new_dispatchees"
.annotate 'line', 216
    find_lex $P623, "$code"
    find_lex $P624, "@new_dispatchees"
    unless_null $P624, vivify_243
    $P624 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@new_dispatchees", $P624
  vivify_243:
    set $P624[0], $P623
.annotate 'line', 217
    find_lex $P625, "$dispatcher"
    find_lex $P626, "@new_dispatchees"
    create_dispatch_and_add_candidates $P627, $P625, $P626
    find_lex $P628, "$name"
    find_lex $P629, "self"
    get_global $P630, "$?CLASS"
    getattribute $P631, $P629, $P630, "%!methods"
    unless_null $P631, vivify_244
    $P631 = root_new ['parrot';'Hash']
    setattribute $P629, $P630, "%!methods", $P631
  vivify_244:
    set $P631[$P628], $P627
.annotate 'line', 218
    new $P632, "Integer"
    assign $P632, 1
    store_lex "$found", $P632
.annotate 'line', 213
    .return ($P632)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_type_cache"  :subid("46_1299602563.879") :outer("15_1299602563.879")
    .param pmc param_657
    .param pmc param_658
.annotate 'line', 323
    .const 'Sub' $P683 = "48_1299602563.879" 
    capture_lex $P683
    .const 'Sub' $P668 = "47_1299602563.879" 
    capture_lex $P668
    .lex "self", param_657
    .lex "$obj", param_658
.annotate 'line', 324
    $P659 = root_new ['parrot';'ResizablePMCArray']
    .lex "@tc", $P659
.annotate 'line', 323
    find_lex $P660, "@tc"
.annotate 'line', 325
    find_lex $P662, "self"
    get_global $P663, "$?CLASS"
    getattribute $P664, $P662, $P663, "@!mro"
    unless_null $P664, vivify_245
    $P664 = root_new ['parrot';'ResizablePMCArray']
  vivify_245:
    defined $I665, $P664
    unless $I665, for_undef_246
    iter $P661, $P664
    new $P674, 'ExceptionHandler'
    set_label $P674, loop673_handler
    $P674."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P674
  loop673_test:
    unless $P661, loop673_done
    shift $P666, $P661
  loop673_redo:
    .const 'Sub' $P668 = "47_1299602563.879" 
    capture_lex $P668
    $P668($P666)
  loop673_next:
    goto loop673_test
  loop673_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P675, exception, 'type'
    eq $P675, .CONTROL_LOOP_NEXT, loop673_next
    eq $P675, .CONTROL_LOOP_REDO, loop673_redo
  loop673_done:
    pop_eh 
  for_undef_246:
.annotate 'line', 326
    find_lex $P677, "self"
    get_global $P678, "$?CLASS"
    getattribute $P679, $P677, $P678, "@!done"
    unless_null $P679, vivify_247
    $P679 = root_new ['parrot';'ResizablePMCArray']
  vivify_247:
    defined $I680, $P679
    unless $I680, for_undef_248
    iter $P676, $P679
    new $P689, 'ExceptionHandler'
    set_label $P689, loop688_handler
    $P689."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P689
  loop688_test:
    unless $P676, loop688_done
    shift $P681, $P676
  loop688_redo:
    .const 'Sub' $P683 = "48_1299602563.879" 
    capture_lex $P683
    $P683($P681)
  loop688_next:
    goto loop688_test
  loop688_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P690, exception, 'type'
    eq $P690, .CONTROL_LOOP_NEXT, loop688_next
    eq $P690, .CONTROL_LOOP_REDO, loop688_redo
  loop688_done:
    pop_eh 
  for_undef_248:
.annotate 'line', 327
    find_lex $P691, "$obj"
    find_lex $P692, "@tc"
    publish_type_check_cache $P691, $P692
.annotate 'line', 323
    .return ()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block667"  :anon :subid("47_1299602563.879") :outer("46_1299602563.879")
    .param pmc param_669
.annotate 'line', 325
    .lex "$_", param_669
    find_lex $P670, "@tc"
    find_lex $P671, "$_"
    $P672 = $P670."push"($P671)
    .return ($P672)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block682"  :anon :subid("48_1299602563.879") :outer("46_1299602563.879")
    .param pmc param_684
.annotate 'line', 326
    .lex "$_", param_684
    find_lex $P685, "@tc"
    find_lex $P686, "$_"
    $P687 = $P685."push"($P686)
    .return ($P687)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_method_cache"  :subid("49_1299602563.879") :outer("15_1299602563.879")
    .param pmc param_694
    .param pmc param_695
.annotate 'line', 330
    .const 'Sub' $P705 = "50_1299602563.879" 
    capture_lex $P705
    .lex "self", param_694
    .lex "$obj", param_695
.annotate 'line', 333
    $P696 = root_new ['parrot';'Hash']
    .lex "%cache", $P696
.annotate 'line', 330
    find_lex $P697, "%cache"
.annotate 'line', 334
    find_lex $P699, "self"
    get_global $P700, "$?CLASS"
    getattribute $P701, $P699, $P700, "@!mro"
    unless_null $P701, vivify_249
    $P701 = root_new ['parrot';'ResizablePMCArray']
  vivify_249:
    defined $I702, $P701
    unless $I702, for_undef_250
    iter $P698, $P701
    new $P734, 'ExceptionHandler'
    set_label $P734, loop733_handler
    $P734."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P734
  loop733_test:
    unless $P698, loop733_done
    shift $P703, $P698
  loop733_redo:
    .const 'Sub' $P705 = "50_1299602563.879" 
    capture_lex $P705
    $P705($P703)
  loop733_next:
    goto loop733_test
  loop733_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P735, exception, 'type'
    eq $P735, .CONTROL_LOOP_NEXT, loop733_next
    eq $P735, .CONTROL_LOOP_REDO, loop733_redo
  loop733_done:
    pop_eh 
  for_undef_250:
.annotate 'line', 342
    find_lex $P736, "$obj"
    find_lex $P737, "%cache"
    publish_method_cache $P736, $P737
.annotate 'line', 330
    .return ()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block704"  :anon :subid("50_1299602563.879") :outer("49_1299602563.879")
    .param pmc param_707
.annotate 'line', 334
    .const 'Sub' $P717 = "51_1299602563.879" 
    capture_lex $P717
.annotate 'line', 335
    $P706 = root_new ['parrot';'Hash']
    .lex "%methods", $P706
    .lex "$_", param_707
    find_lex $P708, "$_"
    get_how $P709, $P708
    find_lex $P710, "$_"
    $P711 = $P709."method_table"($P710)
    store_lex "%methods", $P711
.annotate 'line', 336
    find_lex $P713, "%methods"
    defined $I714, $P713
    unless $I714, for_undef_251
    iter $P712, $P713
    new $P731, 'ExceptionHandler'
    set_label $P731, loop730_handler
    $P731."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P731
  loop730_test:
    unless $P712, loop730_done
    shift $P715, $P712
  loop730_redo:
    .const 'Sub' $P717 = "51_1299602563.879" 
    capture_lex $P717
    $P717($P715)
  loop730_next:
    goto loop730_test
  loop730_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P732, exception, 'type'
    eq $P732, .CONTROL_LOOP_NEXT, loop730_next
    eq $P732, .CONTROL_LOOP_REDO, loop730_redo
  loop730_done:
    pop_eh 
  for_undef_251:
.annotate 'line', 334
    .return ($P712)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block716"  :anon :subid("51_1299602563.879") :outer("50_1299602563.879")
    .param pmc param_718
.annotate 'line', 336
    .lex "$_", param_718
.annotate 'line', 337
    find_lex $P721, "$_"
    $P722 = $P721."key"()
    find_lex $P723, "%cache"
    unless_null $P723, vivify_252
    $P723 = root_new ['parrot';'Hash']
  vivify_252:
    set $P724, $P723[$P722]
    unless_null $P724, vivify_253
    new $P724, "Undef"
  vivify_253:
    unless $P724, unless_720
    set $P719, $P724
    goto unless_720_end
  unless_720:
.annotate 'line', 338
    find_lex $P725, "$_"
    $P726 = $P725."value"()
    find_lex $P727, "$_"
    $P728 = $P727."key"()
    find_lex $P729, "%cache"
    unless_null $P729, vivify_254
    $P729 = root_new ['parrot';'Hash']
    store_lex "%cache", $P729
  vivify_254:
    set $P729[$P728], $P726
.annotate 'line', 337
    set $P719, $P726
  unless_720_end:
.annotate 'line', 336
    .return ($P719)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_parrot_vtable_mapping"  :subid("52_1299602563.879") :outer("15_1299602563.879")
    .param pmc param_739
    .param pmc param_740
.annotate 'line', 345
    .const 'Sub' $P750 = "53_1299602563.879" 
    capture_lex $P750
    .lex "self", param_739
    .lex "$obj", param_740
.annotate 'line', 346
    $P741 = root_new ['parrot';'Hash']
    .lex "%mapping", $P741
.annotate 'line', 345
    find_lex $P742, "%mapping"
.annotate 'line', 347
    find_lex $P744, "self"
    get_global $P745, "$?CLASS"
    getattribute $P746, $P744, $P745, "@!mro"
    unless_null $P746, vivify_255
    $P746 = root_new ['parrot';'ResizablePMCArray']
  vivify_255:
    defined $I747, $P746
    unless $I747, for_undef_256
    iter $P743, $P746
    new $P779, 'ExceptionHandler'
    set_label $P779, loop778_handler
    $P779."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P779
  loop778_test:
    unless $P743, loop778_done
    shift $P748, $P743
  loop778_redo:
    .const 'Sub' $P750 = "53_1299602563.879" 
    capture_lex $P750
    $P750($P748)
  loop778_next:
    goto loop778_test
  loop778_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P780, exception, 'type'
    eq $P780, .CONTROL_LOOP_NEXT, loop778_next
    eq $P780, .CONTROL_LOOP_REDO, loop778_redo
  loop778_done:
    pop_eh 
  for_undef_256:
.annotate 'line', 355
    find_lex $P783, "%mapping"
    set $N784, $P783
    if $N784, if_782
    new $P781, 'Float'
    set $P781, $N784
    goto if_782_end
  if_782:
.annotate 'line', 356
    find_lex $P785, "$obj"
    find_lex $P786, "%mapping"
    stable_publish_vtable_mapping $P785, $P786
  if_782_end:
.annotate 'line', 345
    .return ($P781)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block749"  :anon :subid("53_1299602563.879") :outer("52_1299602563.879")
    .param pmc param_752
.annotate 'line', 347
    .const 'Sub' $P762 = "54_1299602563.879" 
    capture_lex $P762
.annotate 'line', 348
    $P751 = root_new ['parrot';'Hash']
    .lex "%map", $P751
    .lex "$_", param_752
    find_lex $P753, "$_"
    get_how $P754, $P753
    find_lex $P755, "$_"
    $P756 = $P754."parrot_vtable_mappings"($P755, 1 :named("local"))
    store_lex "%map", $P756
.annotate 'line', 349
    find_lex $P758, "%map"
    defined $I759, $P758
    unless $I759, for_undef_257
    iter $P757, $P758
    new $P776, 'ExceptionHandler'
    set_label $P776, loop775_handler
    $P776."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P776
  loop775_test:
    unless $P757, loop775_done
    shift $P760, $P757
  loop775_redo:
    .const 'Sub' $P762 = "54_1299602563.879" 
    capture_lex $P762
    $P762($P760)
  loop775_next:
    goto loop775_test
  loop775_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P777, exception, 'type'
    eq $P777, .CONTROL_LOOP_NEXT, loop775_next
    eq $P777, .CONTROL_LOOP_REDO, loop775_redo
  loop775_done:
    pop_eh 
  for_undef_257:
.annotate 'line', 347
    .return ($P757)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block761"  :anon :subid("54_1299602563.879") :outer("53_1299602563.879")
    .param pmc param_763
.annotate 'line', 349
    .lex "$_", param_763
.annotate 'line', 350
    find_lex $P766, "$_"
    $P767 = $P766."key"()
    find_lex $P768, "%mapping"
    unless_null $P768, vivify_258
    $P768 = root_new ['parrot';'Hash']
  vivify_258:
    set $P769, $P768[$P767]
    unless_null $P769, vivify_259
    new $P769, "Undef"
  vivify_259:
    unless $P769, unless_765
    set $P764, $P769
    goto unless_765_end
  unless_765:
.annotate 'line', 351
    find_lex $P770, "$_"
    $P771 = $P770."value"()
    find_lex $P772, "$_"
    $P773 = $P772."key"()
    find_lex $P774, "%mapping"
    unless_null $P774, vivify_260
    $P774 = root_new ['parrot';'Hash']
    store_lex "%mapping", $P774
  vivify_260:
    set $P774[$P773], $P771
.annotate 'line', 350
    set $P764, $P771
  unless_765_end:
.annotate 'line', 349
    .return ($P764)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parents"  :subid("55_1299602563.879") :outer("15_1299602563.879")
    .param pmc param_788
    .param pmc param_789
    .param pmc param_790 :optional :named("local")
    .param int has_param_790 :opt_flag
.annotate 'line', 364
    .lex "self", param_788
    .lex "$obj", param_789
    if has_param_790, optparam_261
    new $P791, "Undef"
    set param_790, $P791
  optparam_261:
    .lex "$local", param_790
.annotate 'line', 365
    find_lex $P794, "$local"
    if $P794, if_793
    find_lex $P798, "self"
    get_global $P799, "$?CLASS"
    getattribute $P800, $P798, $P799, "@!mro"
    unless_null $P800, vivify_262
    $P800 = root_new ['parrot';'ResizablePMCArray']
  vivify_262:
    set $P792, $P800
    goto if_793_end
  if_793:
    find_lex $P795, "self"
    get_global $P796, "$?CLASS"
    getattribute $P797, $P795, $P796, "@!parents"
    unless_null $P797, vivify_263
    $P797 = root_new ['parrot';'ResizablePMCArray']
  vivify_263:
    set $P792, $P797
  if_793_end:
.annotate 'line', 364
    .return ($P792)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "roles"  :subid("56_1299602563.879") :outer("15_1299602563.879")
    .param pmc param_802
    .param pmc param_803
    .param pmc param_804 :named("local")
.annotate 'line', 368
    .lex "self", param_802
    .lex "$obj", param_803
    .lex "$local", param_804
    find_lex $P805, "self"
    get_global $P806, "$?CLASS"
    getattribute $P807, $P805, $P806, "@!roles"
    unless_null $P807, vivify_264
    $P807 = root_new ['parrot';'ResizablePMCArray']
  vivify_264:
    .return ($P807)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "methods"  :subid("57_1299602563.879") :outer("15_1299602563.879")
    .param pmc param_809
    .param pmc param_810
    .param pmc param_811 :named("local")
.annotate 'line', 372
    .const 'Sub' $P821 = "58_1299602563.879" 
    capture_lex $P821
    .lex "self", param_809
    .lex "$obj", param_810
    .lex "$local", param_811
.annotate 'line', 373
    $P812 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meths", $P812
.annotate 'line', 372
    find_lex $P813, "@meths"
.annotate 'line', 374
    find_lex $P815, "self"
    get_global $P816, "$?CLASS"
    getattribute $P817, $P815, $P816, "%!methods"
    unless_null $P817, vivify_265
    $P817 = root_new ['parrot';'Hash']
  vivify_265:
    defined $I818, $P817
    unless $I818, for_undef_266
    iter $P814, $P817
    new $P828, 'ExceptionHandler'
    set_label $P828, loop827_handler
    $P828."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P828
  loop827_test:
    unless $P814, loop827_done
    shift $P819, $P814
  loop827_redo:
    .const 'Sub' $P821 = "58_1299602563.879" 
    capture_lex $P821
    $P821($P819)
  loop827_next:
    goto loop827_test
  loop827_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P829, exception, 'type'
    eq $P829, .CONTROL_LOOP_NEXT, loop827_next
    eq $P829, .CONTROL_LOOP_REDO, loop827_redo
  loop827_done:
    pop_eh 
  for_undef_266:
    find_lex $P830, "@meths"
.annotate 'line', 372
    .return ($P830)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block820"  :anon :subid("58_1299602563.879") :outer("57_1299602563.879")
    .param pmc param_822
.annotate 'line', 374
    .lex "$_", param_822
.annotate 'line', 375
    find_lex $P823, "@meths"
    find_lex $P824, "$_"
    $P825 = $P824."value"()
    $P826 = $P823."push"($P825)
.annotate 'line', 374
    .return ($P826)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "method_table"  :subid("59_1299602563.879") :outer("15_1299602563.879")
    .param pmc param_832
    .param pmc param_833
.annotate 'line', 380
    .lex "self", param_832
    .lex "$obj", param_833
    find_lex $P834, "self"
    get_global $P835, "$?CLASS"
    getattribute $P836, $P834, $P835, "%!methods"
    unless_null $P836, vivify_267
    $P836 = root_new ['parrot';'Hash']
  vivify_267:
    .return ($P836)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "name"  :subid("60_1299602563.879") :outer("15_1299602563.879")
    .param pmc param_838
    .param pmc param_839
.annotate 'line', 384
    .lex "self", param_838
    .lex "$obj", param_839
    find_lex $P840, "self"
    get_global $P841, "$?CLASS"
    getattribute $P842, $P840, $P841, "$!name"
    unless_null $P842, vivify_268
    new $P842, "Undef"
  vivify_268:
    .return ($P842)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "attributes"  :subid("61_1299602563.879") :outer("15_1299602563.879")
    .param pmc param_844
    .param pmc param_845
    .param pmc param_846 :named("local")
.annotate 'line', 388
    .const 'Sub' $P856 = "62_1299602563.879" 
    capture_lex $P856
    .lex "self", param_844
    .lex "$obj", param_845
    .lex "$local", param_846
.annotate 'line', 389
    $P847 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attrs", $P847
.annotate 'line', 388
    find_lex $P848, "@attrs"
.annotate 'line', 390
    find_lex $P850, "self"
    get_global $P851, "$?CLASS"
    getattribute $P852, $P850, $P851, "%!attributes"
    unless_null $P852, vivify_269
    $P852 = root_new ['parrot';'Hash']
  vivify_269:
    defined $I853, $P852
    unless $I853, for_undef_270
    iter $P849, $P852
    new $P863, 'ExceptionHandler'
    set_label $P863, loop862_handler
    $P863."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P863
  loop862_test:
    unless $P849, loop862_done
    shift $P854, $P849
  loop862_redo:
    .const 'Sub' $P856 = "62_1299602563.879" 
    capture_lex $P856
    $P856($P854)
  loop862_next:
    goto loop862_test
  loop862_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P864, exception, 'type'
    eq $P864, .CONTROL_LOOP_NEXT, loop862_next
    eq $P864, .CONTROL_LOOP_REDO, loop862_redo
  loop862_done:
    pop_eh 
  for_undef_270:
    find_lex $P865, "@attrs"
.annotate 'line', 388
    .return ($P865)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block855"  :anon :subid("62_1299602563.879") :outer("61_1299602563.879")
    .param pmc param_857
.annotate 'line', 390
    .lex "$_", param_857
.annotate 'line', 391
    find_lex $P858, "@attrs"
    find_lex $P859, "$_"
    $P860 = $P859."value"()
    $P861 = $P858."push"($P860)
.annotate 'line', 390
    .return ($P861)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parrot_vtable_mappings"  :subid("63_1299602563.879") :outer("15_1299602563.879")
    .param pmc param_867
    .param pmc param_868
    .param pmc param_869 :named("local")
.annotate 'line', 396
    .lex "self", param_867
    .lex "$obj", param_868
    .lex "$local", param_869
    find_lex $P870, "self"
    get_global $P871, "$?CLASS"
    getattribute $P872, $P870, $P871, "%!parrot_vtable_mapping"
    unless_null $P872, vivify_271
    $P872 = root_new ['parrot';'Hash']
  vivify_271:
    .return ($P872)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "isa"  :subid("64_1299602563.879") :outer("15_1299602563.879")
    .param pmc param_876
    .param pmc param_877
    .param pmc param_878
.annotate 'line', 404
    new $P875, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P875, control_874
    push_eh $P875
    .lex "self", param_876
    .lex "$obj", param_877
    .lex "$check", param_878
.annotate 'line', 405
    new $P879, "Undef"
    .lex "$check-class", $P879
.annotate 'line', 406
    new $P880, "Undef"
    .lex "$i", $P880
.annotate 'line', 405
    find_lex $P881, "$check"
    get_what $P882, $P881
    store_lex "$check-class", $P882
.annotate 'line', 406
    find_lex $P883, "self"
    get_global $P884, "$?CLASS"
    getattribute $P885, $P883, $P884, "@!mro"
    unless_null $P885, vivify_272
    $P885 = root_new ['parrot';'ResizablePMCArray']
  vivify_272:
    set $N886, $P885
    new $P887, 'Float'
    set $P887, $N886
    store_lex "$i", $P887
.annotate 'line', 407
    new $P905, 'ExceptionHandler'
    set_label $P905, loop904_handler
    $P905."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P905
  loop904_test:
    find_lex $P888, "$i"
    set $N889, $P888
    isgt $I890, $N889, 0.0
    unless $I890, loop904_done
  loop904_redo:
.annotate 'line', 408
    find_lex $P891, "$i"
    sub $P892, $P891, 1
    store_lex "$i", $P892
.annotate 'line', 409
    find_lex $P894, "$i"
    set $I895, $P894
    find_lex $P896, "self"
    get_global $P897, "$?CLASS"
    getattribute $P898, $P896, $P897, "@!mro"
    unless_null $P898, vivify_273
    $P898 = root_new ['parrot';'ResizablePMCArray']
  vivify_273:
    set $P899, $P898[$I895]
    unless_null $P899, vivify_274
    new $P899, "Undef"
  vivify_274:
    find_lex $P900, "$check-class"
    issame $I901, $P899, $P900
    unless $I901, if_893_end
.annotate 'line', 410
    new $P902, "Exception"
    set $P902['type'], .CONTROL_RETURN
    new $P903, "Integer"
    assign $P903, 1
    setattribute $P902, 'payload', $P903
    throw $P902
  if_893_end:
  loop904_next:
.annotate 'line', 407
    goto loop904_test
  loop904_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P906, exception, 'type'
    eq $P906, .CONTROL_LOOP_NEXT, loop904_next
    eq $P906, .CONTROL_LOOP_REDO, loop904_redo
  loop904_done:
    pop_eh 
.annotate 'line', 413
    new $P907, "Exception"
    set $P907['type'], .CONTROL_RETURN
    new $P908, "Integer"
    assign $P908, 0
    setattribute $P907, 'payload', $P908
    throw $P907
.annotate 'line', 404
    .return ()
  control_874:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P909, exception, "payload"
    .return ($P909)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "does"  :subid("65_1299602563.879") :outer("15_1299602563.879")
    .param pmc param_913
    .param pmc param_914
    .param pmc param_915
.annotate 'line', 416
    new $P912, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P912, control_911
    push_eh $P912
    .lex "self", param_913
    .lex "$obj", param_914
    .lex "$check", param_915
.annotate 'line', 417
    new $P916, "Undef"
    .lex "$i", $P916
    find_lex $P917, "self"
    get_global $P918, "$?CLASS"
    getattribute $P919, $P917, $P918, "@!done"
    unless_null $P919, vivify_275
    $P919 = root_new ['parrot';'ResizablePMCArray']
  vivify_275:
    set $N920, $P919
    new $P921, 'Float'
    set $P921, $N920
    store_lex "$i", $P921
.annotate 'line', 418
    new $P939, 'ExceptionHandler'
    set_label $P939, loop938_handler
    $P939."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P939
  loop938_test:
    find_lex $P922, "$i"
    set $N923, $P922
    isgt $I924, $N923, 0.0
    unless $I924, loop938_done
  loop938_redo:
.annotate 'line', 419
    find_lex $P925, "$i"
    sub $P926, $P925, 1
    store_lex "$i", $P926
.annotate 'line', 420
    find_lex $P928, "$i"
    set $I929, $P928
    find_lex $P930, "self"
    get_global $P931, "$?CLASS"
    getattribute $P932, $P930, $P931, "@!done"
    unless_null $P932, vivify_276
    $P932 = root_new ['parrot';'ResizablePMCArray']
  vivify_276:
    set $P933, $P932[$I929]
    unless_null $P933, vivify_277
    new $P933, "Undef"
  vivify_277:
    find_lex $P934, "$check"
    issame $I935, $P933, $P934
    unless $I935, if_927_end
.annotate 'line', 421
    new $P936, "Exception"
    set $P936['type'], .CONTROL_RETURN
    new $P937, "Integer"
    assign $P937, 1
    setattribute $P936, 'payload', $P937
    throw $P936
  if_927_end:
  loop938_next:
.annotate 'line', 418
    goto loop938_test
  loop938_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P940, exception, 'type'
    eq $P940, .CONTROL_LOOP_NEXT, loop938_next
    eq $P940, .CONTROL_LOOP_REDO, loop938_redo
  loop938_done:
    pop_eh 
.annotate 'line', 424
    new $P941, "Exception"
    set $P941['type'], .CONTROL_RETURN
    new $P942, "Integer"
    assign $P942, 0
    setattribute $P941, 'payload', $P942
    throw $P941
.annotate 'line', 416
    .return ()
  control_911:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P943, exception, "payload"
    .return ($P943)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "can"  :subid("66_1299602563.879") :outer("15_1299602563.879")
    .param pmc param_947
    .param pmc param_948
    .param pmc param_949
.annotate 'line', 427
    .const 'Sub' $P957 = "67_1299602563.879" 
    capture_lex $P957
    new $P946, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P946, control_945
    push_eh $P946
    .lex "self", param_947
    .lex "$obj", param_948
    .lex "$name", param_949
.annotate 'line', 428
    find_lex $P951, "self"
    get_global $P952, "$?CLASS"
    getattribute $P953, $P951, $P952, "@!mro"
    unless_null $P953, vivify_278
    $P953 = root_new ['parrot';'ResizablePMCArray']
  vivify_278:
    defined $I954, $P953
    unless $I954, for_undef_279
    iter $P950, $P953
    new $P975, 'ExceptionHandler'
    set_label $P975, loop974_handler
    $P975."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P975
  loop974_test:
    unless $P950, loop974_done
    shift $P955, $P950
  loop974_redo:
    .const 'Sub' $P957 = "67_1299602563.879" 
    capture_lex $P957
    $P957($P955)
  loop974_next:
    goto loop974_test
  loop974_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P976, exception, 'type'
    eq $P976, .CONTROL_LOOP_NEXT, loop974_next
    eq $P976, .CONTROL_LOOP_REDO, loop974_redo
  loop974_done:
    pop_eh 
  for_undef_279:
.annotate 'line', 435
    new $P977, "Exception"
    set $P977['type'], .CONTROL_RETURN
    new $P978, "Integer"
    assign $P978, 0
    setattribute $P977, 'payload', $P978
    throw $P977
.annotate 'line', 427
    .return ()
  control_945:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P979, exception, "payload"
    .return ($P979)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block956"  :anon :subid("67_1299602563.879") :outer("66_1299602563.879")
    .param pmc param_960
.annotate 'line', 429
    $P958 = root_new ['parrot';'Hash']
    .lex "%meths", $P958
.annotate 'line', 430
    new $P959, "Undef"
    .lex "$can", $P959
    .lex "$_", param_960
.annotate 'line', 429
    find_lex $P961, "$_"
    get_how $P962, $P961
    find_lex $P963, "$obj"
    $P964 = $P962."method_table"($P963)
    store_lex "%meths", $P964
.annotate 'line', 430
    find_lex $P965, "$name"
    find_lex $P966, "%meths"
    unless_null $P966, vivify_280
    $P966 = root_new ['parrot';'Hash']
  vivify_280:
    set $P967, $P966[$P965]
    unless_null $P967, vivify_281
    new $P967, "Undef"
  vivify_281:
    store_lex "$can", $P967
.annotate 'line', 431
    find_lex $P970, "$can"
    defined $I971, $P970
    if $I971, if_969
    new $P968, 'Integer'
    set $P968, $I971
    goto if_969_end
  if_969:
.annotate 'line', 432
    new $P972, "Exception"
    set $P972['type'], .CONTROL_RETURN
    find_lex $P973, "$can"
    setattribute $P972, 'payload', $P973
    throw $P972
  if_969_end:
.annotate 'line', 428
    .return ($P968)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "find_method"  :subid("68_1299602563.879") :outer("15_1299602563.879")
    .param pmc param_983
    .param pmc param_984
    .param pmc param_985
.annotate 'line', 441
    .const 'Sub' $P993 = "69_1299602563.879" 
    capture_lex $P993
    new $P982, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P982, control_981
    push_eh $P982
    .lex "self", param_983
    .lex "$obj", param_984
    .lex "$name", param_985
.annotate 'line', 442
    find_lex $P987, "self"
    get_global $P988, "$?CLASS"
    getattribute $P989, $P987, $P988, "@!mro"
    unless_null $P989, vivify_282
    $P989 = root_new ['parrot';'ResizablePMCArray']
  vivify_282:
    defined $I990, $P989
    unless $I990, for_undef_283
    iter $P986, $P989
    new $P1011, 'ExceptionHandler'
    set_label $P1011, loop1010_handler
    $P1011."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1011
  loop1010_test:
    unless $P986, loop1010_done
    shift $P991, $P986
  loop1010_redo:
    .const 'Sub' $P993 = "69_1299602563.879" 
    capture_lex $P993
    $P993($P991)
  loop1010_next:
    goto loop1010_test
  loop1010_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1012, exception, 'type'
    eq $P1012, .CONTROL_LOOP_NEXT, loop1010_next
    eq $P1012, .CONTROL_LOOP_REDO, loop1010_redo
  loop1010_done:
    pop_eh 
  for_undef_283:
.annotate 'line', 449
    null $P1013
.annotate 'line', 441
    .return ($P1013)
  control_981:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1014, exception, "payload"
    .return ($P1014)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block992"  :anon :subid("69_1299602563.879") :outer("68_1299602563.879")
    .param pmc param_996
.annotate 'line', 443
    $P994 = root_new ['parrot';'Hash']
    .lex "%meths", $P994
.annotate 'line', 444
    new $P995, "Undef"
    .lex "$found", $P995
    .lex "$_", param_996
.annotate 'line', 443
    find_lex $P997, "$_"
    get_how $P998, $P997
    find_lex $P999, "$obj"
    $P1000 = $P998."method_table"($P999)
    store_lex "%meths", $P1000
.annotate 'line', 444
    find_lex $P1001, "$name"
    find_lex $P1002, "%meths"
    unless_null $P1002, vivify_284
    $P1002 = root_new ['parrot';'Hash']
  vivify_284:
    set $P1003, $P1002[$P1001]
    unless_null $P1003, vivify_285
    new $P1003, "Undef"
  vivify_285:
    store_lex "$found", $P1003
.annotate 'line', 445
    find_lex $P1006, "$found"
    defined $I1007, $P1006
    if $I1007, if_1005
    new $P1004, 'Integer'
    set $P1004, $I1007
    goto if_1005_end
  if_1005:
.annotate 'line', 446
    new $P1008, "Exception"
    set $P1008['type'], .CONTROL_RETURN
    find_lex $P1009, "$found"
    setattribute $P1008, 'payload', $P1009
    throw $P1008
  if_1005_end:
.annotate 'line', 442
    .return ($P1004)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "_block1107"  :subid("71_1299602563.879") :outer("10_1299602563.879")
.annotate 'line', 454
    .const 'Sub' $P1168 = "80_1299602563.879" 
    capture_lex $P1168
    .const 'Sub' $P1160 = "79_1299602563.879" 
    capture_lex $P1160
    .const 'Sub' $P1154 = "78_1299602563.879" 
    capture_lex $P1154
    .const 'Sub' $P1150 = "77_1299602563.879" 
    capture_lex $P1150
    .const 'Sub' $P1145 = "76_1299602563.879" 
    capture_lex $P1145
    .const 'Sub' $P1140 = "75_1299602563.879" 
    capture_lex $P1140
    .const 'Sub' $P1127 = "74_1299602563.879" 
    capture_lex $P1127
    .const 'Sub' $P1120 = "73_1299602563.879" 
    capture_lex $P1120
    .const 'Sub' $P1110 = "72_1299602563.879" 
    capture_lex $P1110
    get_global $P1109, "$?CLASS"
.annotate 'line', 492
    .const 'Sub' $P1160 = "79_1299602563.879" 
    newclosure $P1166, $P1160
.annotate 'line', 454
    .return ($P1166)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "" :load :init :subid("post286") :outer("71_1299602563.879")
.annotate 'line', 454
    get_hll_global $P1108, ["NQPNativeHOW"], "_block1107" 
    .local pmc block
    set block, $P1108
    .const 'Sub' $P1168 = "80_1299602563.879" 
    capture_lex $P1168
    $P1168()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "_block1167"  :anon :subid("80_1299602563.879") :outer("71_1299602563.879")
.annotate 'line', 454
    nqp_get_sc_object $P1169, "1299602559.16", 2
    .local pmc type_obj
    set type_obj, $P1169
    set_hll_global "NQPNativeHOW", type_obj
    set_global "$?CLASS", type_obj
    get_how $P1170, type_obj
    get_hll_global $P1171, "KnowHOWAttribute"
    $P1172 = $P1171."new"("$!name" :named("name"))
    $P1170."add_attribute"(type_obj, $P1172)
    get_how $P1173, type_obj
    get_hll_global $P1174, "KnowHOWAttribute"
    $P1175 = $P1174."new"("$!composed" :named("name"))
    $P1173."add_attribute"(type_obj, $P1175)
    get_how $P1176, type_obj
    .const 'Sub' $P1177 = "72_1299602563.879" 
    $P1176."add_method"(type_obj, "new", $P1177)
    get_how $P1178, type_obj
    .const 'Sub' $P1179 = "73_1299602563.879" 
    $P1178."add_method"(type_obj, "BUILD", $P1179)
    get_how $P1180, type_obj
    .const 'Sub' $P1181 = "74_1299602563.879" 
    $P1180."add_method"(type_obj, "new_type", $P1181)
    get_how $P1182, type_obj
    .const 'Sub' $P1183 = "75_1299602563.879" 
    $P1182."add_method"(type_obj, "add_method", $P1183)
    get_how $P1184, type_obj
    .const 'Sub' $P1185 = "76_1299602563.879" 
    $P1184."add_method"(type_obj, "add_multi_method", $P1185)
    get_how $P1186, type_obj
    .const 'Sub' $P1187 = "77_1299602563.879" 
    $P1186."add_method"(type_obj, "add_attribute", $P1187)
    get_how $P1188, type_obj
    .const 'Sub' $P1189 = "78_1299602563.879" 
    $P1188."add_method"(type_obj, "compose", $P1189)
    get_how $P1190, type_obj
    .const 'Sub' $P1191 = "79_1299602563.879" 
    $P1190."add_method"(type_obj, "name", $P1191)
    get_how $P1192, type_obj
    $P1193 = $P1192."compose"(type_obj)
    .return ($P1193)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "new"  :subid("72_1299602563.879") :outer("71_1299602563.879")
    .param pmc param_1111
    .param pmc param_1112 :optional :named("name")
    .param int has_param_1112 :opt_flag
.annotate 'line', 458
    .lex "self", param_1111
    if has_param_1112, optparam_287
    new $P1113, "Undef"
    set param_1112, $P1113
  optparam_287:
    .lex "$name", param_1112
.annotate 'line', 459
    new $P1114, "Undef"
    .lex "$obj", $P1114
    find_lex $P1115, "self"
    repr_instance_of $P1116, $P1115
    store_lex "$obj", $P1116
.annotate 'line', 460
    find_lex $P1117, "$obj"
    find_lex $P1118, "$name"
    $P1117."BUILD"($P1118 :named("name"))
    find_lex $P1119, "$obj"
.annotate 'line', 458
    .return ($P1119)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "BUILD"  :subid("73_1299602563.879") :outer("71_1299602563.879")
    .param pmc param_1121
    .param pmc param_1122 :optional :named("name")
    .param int has_param_1122 :opt_flag
.annotate 'line', 464
    .lex "self", param_1121
    if has_param_1122, optparam_288
    new $P1123, "Undef"
    set param_1122, $P1123
  optparam_288:
    .lex "$name", param_1122
.annotate 'line', 465
    find_lex $P1124, "$name"
    find_lex $P1125, "self"
    get_global $P1126, "$?CLASS"
    setattribute $P1125, $P1126, "$!name", $P1124
.annotate 'line', 464
    .return ($P1124)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "new_type"  :subid("74_1299602563.879") :outer("71_1299602563.879")
    .param pmc param_1128
    .param pmc param_1131 :named("repr")
    .param pmc param_1129 :optional :named("name")
    .param int has_param_1129 :opt_flag
.annotate 'line', 471
    .lex "self", param_1128
    if has_param_1129, optparam_289
    new $P1130, "String"
    assign $P1130, "<anon>"
    set param_1129, $P1130
  optparam_289:
    .lex "$name", param_1129
    .lex "$repr", param_1131
.annotate 'line', 472
    new $P1132, "Undef"
    .lex "$metaclass", $P1132
    find_lex $P1133, "self"
    find_lex $P1134, "$name"
    $P1135 = $P1133."new"($P1134 :named("name"))
    store_lex "$metaclass", $P1135
.annotate 'line', 473
    find_lex $P1136, "$metaclass"
    find_lex $P1137, "$repr"
    set $S1138, $P1137
    repr_type_object_for $P1139, $P1136, $S1138
.annotate 'line', 471
    .return ($P1139)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_method"  :subid("75_1299602563.879") :outer("71_1299602563.879")
    .param pmc param_1141
    .param pmc param_1142
    .param pmc param_1143
    .param pmc param_1144
.annotate 'line', 476
    .lex "self", param_1141
    .lex "$obj", param_1142
    .lex "$name", param_1143
    .lex "$code_obj", param_1144
.annotate 'line', 477
    die "Native types may not have methods (must be boxed to call method)"
.annotate 'line', 476
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_multi_method"  :subid("76_1299602563.879") :outer("71_1299602563.879")
    .param pmc param_1146
    .param pmc param_1147
    .param pmc param_1148
    .param pmc param_1149
.annotate 'line', 480
    .lex "self", param_1146
    .lex "$obj", param_1147
    .lex "$name", param_1148
    .lex "$code_obj", param_1149
.annotate 'line', 481
    die "Native types may not have methods (must be boxed to call method)"
.annotate 'line', 480
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_attribute"  :subid("77_1299602563.879") :outer("71_1299602563.879")
    .param pmc param_1151
    .param pmc param_1152
    .param pmc param_1153
.annotate 'line', 484
    .lex "self", param_1151
    .lex "$obj", param_1152
    .lex "$meta_attr", param_1153
.annotate 'line', 485
    die "Native types may not have attributes"
.annotate 'line', 484
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "compose"  :subid("78_1299602563.879") :outer("71_1299602563.879")
    .param pmc param_1155
    .param pmc param_1156
.annotate 'line', 488
    .lex "self", param_1155
    .lex "$obj", param_1156
.annotate 'line', 489
    new $P1157, "Integer"
    assign $P1157, 1
    find_lex $P1158, "self"
    get_global $P1159, "$?CLASS"
    setattribute $P1158, $P1159, "$!composed", $P1157
.annotate 'line', 488
    .return ($P1157)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "name"  :subid("79_1299602563.879") :outer("71_1299602563.879")
    .param pmc param_1161
    .param pmc param_1162
.annotate 'line', 492
    .lex "self", param_1161
    .lex "$obj", param_1162
    find_lex $P1163, "self"
    get_global $P1164, "$?CLASS"
    getattribute $P1165, $P1163, $P1164, "$!name"
    unless_null $P1165, vivify_290
    new $P1165, "Undef"
  vivify_290:
    .return ($P1165)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block1194"  :subid("81_1299602563.879") :outer("10_1299602563.879")
.annotate 'line', 498
    .const 'Sub' $P1378 = "95_1299602563.879" 
    capture_lex $P1378
    .const 'Sub' $P1368 = "94_1299602563.879" 
    capture_lex $P1368
    .const 'Sub' $P1287 = "89_1299602563.879" 
    capture_lex $P1287
    .const 'Sub' $P1278 = "88_1299602563.879" 
    capture_lex $P1278
    .const 'Sub' $P1269 = "87_1299602563.879" 
    capture_lex $P1269
    .const 'Sub' $P1264 = "86_1299602563.879" 
    capture_lex $P1264
    .const 'Sub' $P1247 = "85_1299602563.879" 
    capture_lex $P1247
    .const 'Sub' $P1232 = "84_1299602563.879" 
    capture_lex $P1232
    .const 'Sub' $P1197 = "82_1299602563.879" 
    capture_lex $P1197
    get_global $P1196, "$?CLASS"
.annotate 'line', 558
    .const 'Sub' $P1197 = "82_1299602563.879" 
    newclosure $P1231, $P1197
    .lex "has_method", $P1231
.annotate 'line', 554
    find_lex $P1376, "has_method"
.annotate 'line', 498
    .return ($P1376)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "" :load :init :subid("post291") :outer("81_1299602563.879")
.annotate 'line', 498
    get_hll_global $P1195, ["NQPAttribute"], "_block1194" 
    .local pmc block
    set block, $P1195
    .const 'Sub' $P1378 = "95_1299602563.879" 
    capture_lex $P1378
    $P1378()
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block1377"  :anon :subid("95_1299602563.879") :outer("81_1299602563.879")
.annotate 'line', 498
    nqp_get_sc_object $P1379, "1299602559.16", 3
    .local pmc type_obj
    set type_obj, $P1379
    set_hll_global "NQPAttribute", type_obj
    set_global "$?CLASS", type_obj
    get_how $P1380, type_obj
    get_hll_global $P1381, "KnowHOWAttribute"
    $P1382 = $P1381."new"("$!name" :named("name"))
    $P1380."add_attribute"(type_obj, $P1382)
    get_how $P1383, type_obj
    get_hll_global $P1384, "KnowHOWAttribute"
    $P1385 = $P1384."new"("$!type" :named("name"))
    $P1383."add_attribute"(type_obj, $P1385)
    get_how $P1386, type_obj
    get_hll_global $P1387, "KnowHOWAttribute"
    $P1388 = $P1387."new"("$!box_target" :named("name"))
    $P1386."add_attribute"(type_obj, $P1388)
    get_how $P1389, type_obj
    .const 'Sub' $P1390 = "84_1299602563.879" 
    $P1389."add_method"(type_obj, "new", $P1390)
    get_how $P1391, type_obj
    .const 'Sub' $P1392 = "85_1299602563.879" 
    $P1391."add_method"(type_obj, "BUILD", $P1392)
    get_how $P1393, type_obj
    .const 'Sub' $P1394 = "86_1299602563.879" 
    $P1393."add_method"(type_obj, "name", $P1394)
    get_how $P1395, type_obj
    .const 'Sub' $P1396 = "87_1299602563.879" 
    $P1395."add_method"(type_obj, "type", $P1396)
    get_how $P1397, type_obj
    .const 'Sub' $P1398 = "88_1299602563.879" 
    $P1397."add_method"(type_obj, "box_target", $P1398)
    get_how $P1399, type_obj
    .const 'Sub' $P1400 = "89_1299602563.879" 
    $P1399."add_method"(type_obj, "compose", $P1400)
    get_how $P1401, type_obj
    .const 'Sub' $P1402 = "94_1299602563.879" 
    $P1401."add_method"(type_obj, "has_mutator", $P1402)
    get_how $P1403, type_obj
    $P1404 = $P1403."compose"(type_obj)
    .return ($P1404)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "has_method"  :subid("82_1299602563.879") :outer("81_1299602563.879")
    .param pmc param_1200
    .param pmc param_1201
    .param pmc param_1202
.annotate 'line', 558
    .const 'Sub' $P1214 = "83_1299602563.879" 
    capture_lex $P1214
    new $P1199, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1199, control_1198
    push_eh $P1199
    .lex "$target", param_1200
    .lex "$name", param_1201
    .lex "$local", param_1202
.annotate 'line', 559
    $P1203 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P1203
    find_lex $P1204, "$target"
    get_how $P1205, $P1204
    find_lex $P1206, "$target"
    find_lex $P1207, "$local"
    $P1208 = $P1205."methods"($P1206, $P1207 :named("local"))
    store_lex "@methods", $P1208
.annotate 'line', 560
    find_lex $P1210, "@methods"
    defined $I1211, $P1210
    unless $I1211, for_undef_292
    iter $P1209, $P1210
    new $P1226, 'ExceptionHandler'
    set_label $P1226, loop1225_handler
    $P1226."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1226
  loop1225_test:
    unless $P1209, loop1225_done
    shift $P1212, $P1209
  loop1225_redo:
    .const 'Sub' $P1214 = "83_1299602563.879" 
    capture_lex $P1214
    $P1214($P1212)
  loop1225_next:
    goto loop1225_test
  loop1225_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1227, exception, 'type'
    eq $P1227, .CONTROL_LOOP_NEXT, loop1225_next
    eq $P1227, .CONTROL_LOOP_REDO, loop1225_redo
  loop1225_done:
    pop_eh 
  for_undef_292:
.annotate 'line', 563
    new $P1228, "Exception"
    set $P1228['type'], .CONTROL_RETURN
    new $P1229, "Integer"
    assign $P1229, 0
    setattribute $P1228, 'payload', $P1229
    throw $P1228
.annotate 'line', 558
    .return ()
  control_1198:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1230, exception, "payload"
    .return ($P1230)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "_block1213"  :anon :subid("83_1299602563.879") :outer("82_1299602563.879")
    .param pmc param_1215
.annotate 'line', 560
    .lex "$_", param_1215
.annotate 'line', 561
    find_lex $P1218, "$_"
    set $S1219, $P1218
    find_lex $P1220, "$name"
    set $S1221, $P1220
    iseq $I1222, $S1219, $S1221
    if $I1222, if_1217
    new $P1216, 'Integer'
    set $P1216, $I1222
    goto if_1217_end
  if_1217:
    new $P1223, "Exception"
    set $P1223['type'], .CONTROL_RETURN
    new $P1224, "Integer"
    assign $P1224, 1
    setattribute $P1223, 'payload', $P1224
    throw $P1223
  if_1217_end:
.annotate 'line', 560
    .return ($P1216)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "new"  :subid("84_1299602563.879") :outer("81_1299602563.879")
    .param pmc param_1233
    .param pmc param_1234 :named("name")
    .param pmc param_1235 :optional :named("type")
    .param int has_param_1235 :opt_flag
    .param pmc param_1237 :optional :named("box_target")
    .param int has_param_1237 :opt_flag
.annotate 'line', 503
    .lex "self", param_1233
    .lex "$name", param_1234
    if has_param_1235, optparam_293
    new $P1236, "Undef"
    set param_1235, $P1236
  optparam_293:
    .lex "$type", param_1235
    if has_param_1237, optparam_294
    new $P1238, "Undef"
    set param_1237, $P1238
  optparam_294:
    .lex "$box_target", param_1237
.annotate 'line', 504
    new $P1239, "Undef"
    .lex "$attr", $P1239
    find_lex $P1240, "self"
    repr_instance_of $P1241, $P1240
    store_lex "$attr", $P1241
.annotate 'line', 505
    find_lex $P1242, "$attr"
    find_lex $P1243, "$name"
    find_lex $P1244, "$type"
    find_lex $P1245, "$box_target"
    $P1242."BUILD"($P1243 :named("name"), $P1244 :named("type"), $P1245 :named("box_target"))
    find_lex $P1246, "$attr"
.annotate 'line', 503
    .return ($P1246)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "BUILD"  :subid("85_1299602563.879") :outer("81_1299602563.879")
    .param pmc param_1248
    .param pmc param_1249 :optional :named("name")
    .param int has_param_1249 :opt_flag
    .param pmc param_1251 :optional :named("type")
    .param int has_param_1251 :opt_flag
    .param pmc param_1253 :optional :named("box_target")
    .param int has_param_1253 :opt_flag
.annotate 'line', 509
    .lex "self", param_1248
    if has_param_1249, optparam_295
    new $P1250, "Undef"
    set param_1249, $P1250
  optparam_295:
    .lex "$name", param_1249
    if has_param_1251, optparam_296
    new $P1252, "Undef"
    set param_1251, $P1252
  optparam_296:
    .lex "$type", param_1251
    if has_param_1253, optparam_297
    new $P1254, "Undef"
    set param_1253, $P1254
  optparam_297:
    .lex "$box_target", param_1253
.annotate 'line', 510
    find_lex $P1255, "$name"
    find_lex $P1256, "self"
    get_global $P1257, "$?CLASS"
    setattribute $P1256, $P1257, "$!name", $P1255
.annotate 'line', 511
    find_lex $P1258, "$type"
    find_lex $P1259, "self"
    get_global $P1260, "$?CLASS"
    setattribute $P1259, $P1260, "$!type", $P1258
.annotate 'line', 512
    find_lex $P1261, "$box_target"
    find_lex $P1262, "self"
    get_global $P1263, "$?CLASS"
    setattribute $P1262, $P1263, "$!box_target", $P1261
.annotate 'line', 509
    .return ($P1261)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "name"  :subid("86_1299602563.879") :outer("81_1299602563.879")
    .param pmc param_1265
.annotate 'line', 515
    .lex "self", param_1265
    find_lex $P1266, "self"
    get_global $P1267, "$?CLASS"
    getattribute $P1268, $P1266, $P1267, "$!name"
    unless_null $P1268, vivify_298
    new $P1268, "Undef"
  vivify_298:
    .return ($P1268)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "type"  :subid("87_1299602563.879") :outer("81_1299602563.879")
    .param pmc param_1270
.annotate 'line', 519
    .lex "self", param_1270
.annotate 'line', 520
    find_lex $P1272, "self"
    get_global $P1273, "$?CLASS"
    getattribute $P1274, $P1272, $P1273, "$!type"
    unless_null $P1274, vivify_299
    new $P1274, "Undef"
  vivify_299:
    set $P1271, $P1274
    defined $I1276, $P1271
    if $I1276, default_1275
    null $P1277
    set $P1271, $P1277
  default_1275:
.annotate 'line', 519
    .return ($P1271)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "box_target"  :subid("88_1299602563.879") :outer("81_1299602563.879")
    .param pmc param_1279
.annotate 'line', 523
    .lex "self", param_1279
.annotate 'line', 524
    find_lex $P1282, "self"
    get_global $P1283, "$?CLASS"
    getattribute $P1284, $P1282, $P1283, "$!box_target"
    unless_null $P1284, vivify_300
    new $P1284, "Undef"
  vivify_300:
    if $P1284, if_1281
    new $P1286, "Integer"
    assign $P1286, 0
    set $P1280, $P1286
    goto if_1281_end
  if_1281:
    new $P1285, "Integer"
    assign $P1285, 1
    set $P1280, $P1285
  if_1281_end:
.annotate 'line', 523
    .return ($P1280)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "compose"  :subid("89_1299602563.879") :outer("81_1299602563.879")
    .param pmc param_1288
    .param pmc param_1289
.annotate 'line', 527
    .const 'Sub' $P1341 = "92_1299602563.879" 
    capture_lex $P1341
    .const 'Sub' $P1301 = "90_1299602563.879" 
    capture_lex $P1301
    .lex "self", param_1288
    .lex "$obj", param_1289
.annotate 'line', 528
    new $P1290, "Undef"
    .lex "$long_name", $P1290
    find_lex $P1291, "self"
    get_global $P1292, "$?CLASS"
    getattribute $P1293, $P1291, $P1292, "$!name"
    unless_null $P1293, vivify_301
    new $P1293, "Undef"
  vivify_301:
    set $S1294, $P1293
    new $P1295, 'String'
    set $P1295, $S1294
    store_lex "$long_name", $P1295
.annotate 'line', 529
    find_lex $P1298, "self"
    $P1299 = $P1298."has_mutator"()
    if $P1299, if_1297
.annotate 'line', 541
    .const 'Sub' $P1341 = "92_1299602563.879" 
    capture_lex $P1341
    $P1367 = $P1341()
    set $P1296, $P1367
.annotate 'line', 529
    goto if_1297_end
  if_1297:
    .const 'Sub' $P1301 = "90_1299602563.879" 
    capture_lex $P1301
    $P1339 = $P1301()
    set $P1296, $P1339
  if_1297_end:
.annotate 'line', 527
    .return ($P1296)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block1340"  :anon :subid("92_1299602563.879") :outer("89_1299602563.879")
.annotate 'line', 541
    .const 'Sub' $P1357 = "93_1299602563.879" 
    capture_lex $P1357
.annotate 'line', 542
    new $P1342, "Undef"
    .lex "$method", $P1342
    find_lex $P1343, "$long_name"
    set $S1344, $P1343
    substr $S1345, $S1344, 2
    new $P1346, 'String'
    set $P1346, $S1345
    store_lex "$method", $P1346
.annotate 'line', 543
    find_lex $P1349, "$obj"
    find_lex $P1350, "$method"
    $P1351 = "has_method"($P1349, $P1350, 0)
    unless $P1351, unless_1348
    set $P1347, $P1351
    goto unless_1348_end
  unless_1348:
.annotate 'line', 544
    find_lex $P1352, "$obj"
    get_how $P1353, $P1352
    find_lex $P1354, "$obj"
    find_lex $P1355, "$method"
.annotate 'line', 545
    .const 'Sub' $P1357 = "93_1299602563.879" 
    newclosure $P1365, $P1357
    $P1366 = $P1353."add_method"($P1354, $P1355, $P1365)
.annotate 'line', 543
    set $P1347, $P1366
  unless_1348_end:
.annotate 'line', 541
    .return ($P1347)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block1356"  :anon :subid("93_1299602563.879") :outer("92_1299602563.879")
    .param pmc param_1358
.annotate 'line', 545
    .lex "self", param_1358
.annotate 'line', 546
    find_lex $P1359, "self"
    find_lex $P1360, "$obj"
    get_what $P1361, $P1360
    find_lex $P1362, "$long_name"
    set $S1363, $P1362
    getattribute $P1364, $P1359, $P1361, $S1363
.annotate 'line', 545
    .return ($P1364)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block1300"  :anon :subid("90_1299602563.879") :outer("89_1299602563.879")
.annotate 'line', 529
    .const 'Sub' $P1318 = "91_1299602563.879" 
    capture_lex $P1318
.annotate 'line', 530
    new $P1302, "Undef"
    .lex "$method", $P1302
    find_lex $P1303, "$long_name"
    set $S1304, $P1303
    substr $S1305, $S1304, 1
    new $P1306, 'String'
    set $P1306, $S1305
    store_lex "$method", $P1306
.annotate 'line', 531
    find_lex $P1309, "$obj"
    find_lex $P1310, "$method"
    $P1311 = "has_method"($P1309, $P1310, 0)
    unless $P1311, unless_1308
    set $P1307, $P1311
    goto unless_1308_end
  unless_1308:
.annotate 'line', 532
    find_lex $P1312, "$obj"
    get_how $P1313, $P1312
    find_lex $P1314, "$obj"
    get_what $P1315, $P1314
    find_lex $P1316, "$method"
    .const 'Sub' $P1318 = "91_1299602563.879" 
    newclosure $P1337, $P1318
    $P1338 = $P1313."add_method"($P1315, $P1316, $P1337)
.annotate 'line', 531
    set $P1307, $P1338
  unless_1308_end:
.annotate 'line', 529
    .return ($P1307)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block1317"  :anon :subid("91_1299602563.879") :outer("90_1299602563.879")
    .param pmc param_1319
    .param pmc param_1320 :optional
    .param int has_param_1320 :opt_flag
.annotate 'line', 532
    .lex "self", param_1319
    if has_param_1320, optparam_302
    new $P1321, "Undef"
    set param_1320, $P1321
  optparam_302:
    .lex "$value", param_1320
.annotate 'line', 534
    find_lex $P1323, "$value"
    defined $I1324, $P1323
    unless $I1324, if_1322_end
.annotate 'line', 533
    find_lex $P1325, "self"
    find_lex $P1326, "$obj"
    get_what $P1327, $P1326
    find_lex $P1328, "$long_name"
    set $S1329, $P1328
    find_lex $P1330, "$value"
    setattribute $P1325, $P1327, $S1329, $P1330
  if_1322_end:
.annotate 'line', 536
    find_lex $P1331, "self"
    find_lex $P1332, "$obj"
    get_what $P1333, $P1332
    find_lex $P1334, "$long_name"
    set $S1335, $P1334
    getattribute $P1336, $P1331, $P1333, $S1335
.annotate 'line', 532
    .return ($P1336)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "has_mutator"  :subid("94_1299602563.879") :outer("81_1299602563.879")
    .param pmc param_1369
.annotate 'line', 554
    .lex "self", param_1369
.annotate 'line', 555
    find_lex $P1370, "self"
    get_global $P1371, "$?CLASS"
    getattribute $P1372, $P1370, $P1371, "$!name"
    unless_null $P1372, vivify_303
    new $P1372, "Undef"
  vivify_303:
    set $S1373, $P1372
    substr $S1374, $S1373, 1, 1
    isne $I1375, $S1374, "!"
.annotate 'line', 554
    .return ($I1375)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1405"  :subid("96_1299602563.879") :outer("10_1299602563.879")
.annotate 'line', 571
    .const 'Sub' $P1661 = "117_1299602563.879" 
    capture_lex $P1661
    .const 'Sub' $P1653 = "116_1299602563.879" 
    capture_lex $P1653
    .const 'Sub' $P1647 = "115_1299602563.879" 
    capture_lex $P1647
    .const 'Sub' $P1625 = "113_1299602563.879" 
    capture_lex $P1625
    .const 'Sub' $P1619 = "112_1299602563.879" 
    capture_lex $P1619
    .const 'Sub' $P1613 = "111_1299602563.879" 
    capture_lex $P1613
    .const 'Sub' $P1607 = "110_1299602563.879" 
    capture_lex $P1607
    .const 'Sub' $P1585 = "108_1299602563.879" 
    capture_lex $P1585
    .const 'Sub' $P1536 = "106_1299602563.879" 
    capture_lex $P1536
    .const 'Sub' $P1523 = "105_1299602563.879" 
    capture_lex $P1523
    .const 'Sub' $P1510 = "104_1299602563.879" 
    capture_lex $P1510
    .const 'Sub' $P1506 = "103_1299602563.879" 
    capture_lex $P1506
    .const 'Sub' $P1485 = "102_1299602563.879" 
    capture_lex $P1485
    .const 'Sub' $P1464 = "101_1299602563.879" 
    capture_lex $P1464
    .const 'Sub' $P1445 = "100_1299602563.879" 
    capture_lex $P1445
    .const 'Sub' $P1429 = "99_1299602563.879" 
    capture_lex $P1429
    .const 'Sub' $P1419 = "98_1299602563.879" 
    capture_lex $P1419
    .const 'Sub' $P1408 = "97_1299602563.879" 
    capture_lex $P1408
    get_global $P1407, "$?CLASS"
.annotate 'line', 710
    .const 'Sub' $P1653 = "116_1299602563.879" 
    newclosure $P1659, $P1653
.annotate 'line', 571
    .return ($P1659)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "" :load :init :subid("post304") :outer("96_1299602563.879")
.annotate 'line', 571
    get_hll_global $P1406, ["NQPConcreteRoleHOW"], "_block1405" 
    .local pmc block
    set block, $P1406
    .const 'Sub' $P1661 = "117_1299602563.879" 
    capture_lex $P1661
    $P1661()
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1660"  :anon :subid("117_1299602563.879") :outer("96_1299602563.879")
.annotate 'line', 571
    nqp_get_sc_object $P1662, "1299602559.16", 4
    .local pmc type_obj
    set type_obj, $P1662
    set_hll_global "NQPConcreteRoleHOW", type_obj
    set_global "$?CLASS", type_obj
    get_how $P1663, type_obj
    get_hll_global $P1664, "KnowHOWAttribute"
    $P1665 = $P1664."new"("$!name" :named("name"))
    $P1663."add_attribute"(type_obj, $P1665)
    get_how $P1666, type_obj
    get_hll_global $P1667, "KnowHOWAttribute"
    $P1668 = $P1667."new"("$!instance_of" :named("name"))
    $P1666."add_attribute"(type_obj, $P1668)
    get_how $P1669, type_obj
    get_hll_global $P1670, "KnowHOWAttribute"
    $P1671 = $P1670."new"("%!attributes" :named("name"))
    $P1669."add_attribute"(type_obj, $P1671)
    get_how $P1672, type_obj
    get_hll_global $P1673, "KnowHOWAttribute"
    $P1674 = $P1673."new"("%!methods" :named("name"))
    $P1672."add_attribute"(type_obj, $P1674)
    get_how $P1675, type_obj
    get_hll_global $P1676, "KnowHOWAttribute"
    $P1677 = $P1676."new"("@!multi_methods_to_incorporate" :named("name"))
    $P1675."add_attribute"(type_obj, $P1677)
    get_how $P1678, type_obj
    get_hll_global $P1679, "KnowHOWAttribute"
    $P1680 = $P1679."new"("@!collisions" :named("name"))
    $P1678."add_attribute"(type_obj, $P1680)
    get_how $P1681, type_obj
    get_hll_global $P1682, "KnowHOWAttribute"
    $P1683 = $P1682."new"("@!roles" :named("name"))
    $P1681."add_attribute"(type_obj, $P1683)
    get_how $P1684, type_obj
    get_hll_global $P1685, "KnowHOWAttribute"
    $P1686 = $P1685."new"("@!done" :named("name"))
    $P1684."add_attribute"(type_obj, $P1686)
    get_how $P1687, type_obj
    get_hll_global $P1688, "KnowHOWAttribute"
    $P1689 = $P1688."new"("$!composed" :named("name"))
    $P1687."add_attribute"(type_obj, $P1689)
    get_how $P1690, type_obj
    .const 'Sub' $P1691 = "97_1299602563.879" 
    $P1690."add_method"(type_obj, "new", $P1691)
    get_how $P1692, type_obj
    .const 'Sub' $P1693 = "98_1299602563.879" 
    $P1692."add_method"(type_obj, "BUILD", $P1693)
    get_how $P1694, type_obj
    .const 'Sub' $P1695 = "99_1299602563.879" 
    $P1694."add_method"(type_obj, "new_type", $P1695)
    get_how $P1696, type_obj
    .const 'Sub' $P1697 = "100_1299602563.879" 
    $P1696."add_method"(type_obj, "add_method", $P1697)
    get_how $P1698, type_obj
    .const 'Sub' $P1699 = "101_1299602563.879" 
    $P1698."add_method"(type_obj, "add_multi_method", $P1699)
    get_how $P1700, type_obj
    .const 'Sub' $P1701 = "102_1299602563.879" 
    $P1700."add_method"(type_obj, "add_attribute", $P1701)
    get_how $P1702, type_obj
    .const 'Sub' $P1703 = "103_1299602563.879" 
    $P1702."add_method"(type_obj, "add_parent", $P1703)
    get_how $P1704, type_obj
    .const 'Sub' $P1705 = "104_1299602563.879" 
    $P1704."add_method"(type_obj, "add_role", $P1705)
    get_how $P1706, type_obj
    .const 'Sub' $P1707 = "105_1299602563.879" 
    $P1706."add_method"(type_obj, "add_collision", $P1707)
    get_how $P1708, type_obj
    .const 'Sub' $P1709 = "106_1299602563.879" 
    $P1708."add_method"(type_obj, "compose", $P1709)
    get_how $P1710, type_obj
    .const 'Sub' $P1711 = "108_1299602563.879" 
    $P1710."add_method"(type_obj, "methods", $P1711)
    get_how $P1712, type_obj
    .const 'Sub' $P1713 = "110_1299602563.879" 
    $P1712."add_method"(type_obj, "method_table", $P1713)
    get_how $P1714, type_obj
    .const 'Sub' $P1715 = "111_1299602563.879" 
    $P1714."add_method"(type_obj, "collisions", $P1715)
    get_how $P1716, type_obj
    .const 'Sub' $P1717 = "112_1299602563.879" 
    $P1716."add_method"(type_obj, "name", $P1717)
    get_how $P1718, type_obj
    .const 'Sub' $P1719 = "113_1299602563.879" 
    $P1718."add_method"(type_obj, "attributes", $P1719)
    get_how $P1720, type_obj
    .const 'Sub' $P1721 = "115_1299602563.879" 
    $P1720."add_method"(type_obj, "roles", $P1721)
    get_how $P1722, type_obj
    .const 'Sub' $P1723 = "116_1299602563.879" 
    $P1722."add_method"(type_obj, "instance_of", $P1723)
    get_how $P1724, type_obj
    $P1725 = $P1724."compose"(type_obj)
    .return ($P1725)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "new"  :subid("97_1299602563.879") :outer("96_1299602563.879")
    .param pmc param_1409
    .param pmc param_1410 :named("name")
    .param pmc param_1411 :named("instance_of")
.annotate 'line', 603
    .lex "self", param_1409
    .lex "$name", param_1410
    .lex "$instance_of", param_1411
.annotate 'line', 604
    new $P1412, "Undef"
    .lex "$obj", $P1412
    find_lex $P1413, "self"
    repr_instance_of $P1414, $P1413
    store_lex "$obj", $P1414
.annotate 'line', 605
    find_lex $P1415, "$obj"
    find_lex $P1416, "$name"
    find_lex $P1417, "$instance_of"
    $P1415."BUILD"($P1416 :named("name"), $P1417 :named("instance_of"))
    find_lex $P1418, "$obj"
.annotate 'line', 603
    .return ($P1418)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "BUILD"  :subid("98_1299602563.879") :outer("96_1299602563.879")
    .param pmc param_1420
    .param pmc param_1421 :named("name")
    .param pmc param_1422 :named("instance_of")
.annotate 'line', 609
    .lex "self", param_1420
    .lex "$name", param_1421
    .lex "$instance_of", param_1422
.annotate 'line', 610
    find_lex $P1423, "$name"
    find_lex $P1424, "self"
    get_global $P1425, "$?CLASS"
    setattribute $P1424, $P1425, "$!name", $P1423
.annotate 'line', 611
    find_lex $P1426, "$instance_of"
    find_lex $P1427, "self"
    get_global $P1428, "$?CLASS"
    setattribute $P1427, $P1428, "$!instance_of", $P1426
.annotate 'line', 609
    .return ($P1426)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "new_type"  :subid("99_1299602563.879") :outer("96_1299602563.879")
    .param pmc param_1430
    .param pmc param_1435 :named("instance_of")
    .param pmc param_1431 :optional :named("name")
    .param int has_param_1431 :opt_flag
    .param pmc param_1433 :optional :named("repr")
    .param int has_param_1433 :opt_flag
.annotate 'line', 616
    .lex "self", param_1430
    if has_param_1431, optparam_305
    new $P1432, "String"
    assign $P1432, "<anon>"
    set param_1431, $P1432
  optparam_305:
    .lex "$name", param_1431
    if has_param_1433, optparam_306
    new $P1434, "String"
    assign $P1434, "P6opaque"
    set param_1433, $P1434
  optparam_306:
    .lex "$repr", param_1433
    .lex "$instance_of", param_1435
.annotate 'line', 617
    new $P1436, "Undef"
    .lex "$metarole", $P1436
    find_lex $P1437, "self"
    find_lex $P1438, "$name"
    find_lex $P1439, "$instance_of"
    $P1440 = $P1437."new"($P1438 :named("name"), $P1439 :named("instance_of"))
    store_lex "$metarole", $P1440
.annotate 'line', 618
    find_lex $P1441, "$metarole"
    find_lex $P1442, "$repr"
    set $S1443, $P1442
    repr_type_object_for $P1444, $P1441, $S1443
.annotate 'line', 616
    .return ($P1444)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_method"  :subid("100_1299602563.879") :outer("96_1299602563.879")
    .param pmc param_1446
    .param pmc param_1447
    .param pmc param_1448
    .param pmc param_1449
.annotate 'line', 621
    .lex "self", param_1446
    .lex "$obj", param_1447
    .lex "$name", param_1448
    .lex "$code_obj", param_1449
.annotate 'line', 622
    find_lex $P1451, "$name"
    find_lex $P1452, "self"
    get_global $P1453, "$?CLASS"
    getattribute $P1454, $P1452, $P1453, "%!methods"
    unless_null $P1454, vivify_307
    $P1454 = root_new ['parrot';'Hash']
  vivify_307:
    set $P1455, $P1454[$P1451]
    unless_null $P1455, vivify_308
    new $P1455, "Undef"
  vivify_308:
    unless $P1455, if_1450_end
.annotate 'line', 623
    new $P1456, "String"
    assign $P1456, "This role already has a method named "
    find_lex $P1457, "$name"
    concat $P1458, $P1456, $P1457
    die $P1458
  if_1450_end:
.annotate 'line', 625
    find_lex $P1459, "$code_obj"
    find_lex $P1460, "$name"
    find_lex $P1461, "self"
    get_global $P1462, "$?CLASS"
    getattribute $P1463, $P1461, $P1462, "%!methods"
    unless_null $P1463, vivify_309
    $P1463 = root_new ['parrot';'Hash']
    setattribute $P1461, $P1462, "%!methods", $P1463
  vivify_309:
    set $P1463[$P1460], $P1459
.annotate 'line', 621
    .return ($P1459)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_multi_method"  :subid("101_1299602563.879") :outer("96_1299602563.879")
    .param pmc param_1465
    .param pmc param_1466
    .param pmc param_1467
    .param pmc param_1468
.annotate 'line', 628
    .lex "self", param_1465
    .lex "$obj", param_1466
    .lex "$name", param_1467
    .lex "$code_obj", param_1468
.annotate 'line', 629
    $P1469 = root_new ['parrot';'Hash']
    .lex "%todo", $P1469
.annotate 'line', 628
    find_lex $P1470, "%todo"
.annotate 'line', 630
    find_lex $P1471, "$name"
    find_lex $P1472, "%todo"
    unless_null $P1472, vivify_310
    $P1472 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1472
  vivify_310:
    set $P1472["name"], $P1471
.annotate 'line', 631
    find_lex $P1473, "$code_obj"
    find_lex $P1474, "%todo"
    unless_null $P1474, vivify_311
    $P1474 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1474
  vivify_311:
    set $P1474["code"], $P1473
.annotate 'line', 632
    find_lex $P1475, "%todo"
    find_lex $P1476, "self"
    get_global $P1477, "$?CLASS"
    getattribute $P1478, $P1476, $P1477, "@!multi_methods_to_incorporate"
    unless_null $P1478, vivify_312
    $P1478 = root_new ['parrot';'ResizablePMCArray']
  vivify_312:
    set $N1479, $P1478
    set $I1480, $N1479
    find_lex $P1481, "self"
    get_global $P1482, "$?CLASS"
    getattribute $P1483, $P1481, $P1482, "@!multi_methods_to_incorporate"
    unless_null $P1483, vivify_313
    $P1483 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1481, $P1482, "@!multi_methods_to_incorporate", $P1483
  vivify_313:
    set $P1483[$I1480], $P1475
    find_lex $P1484, "$code_obj"
.annotate 'line', 628
    .return ($P1484)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_attribute"  :subid("102_1299602563.879") :outer("96_1299602563.879")
    .param pmc param_1486
    .param pmc param_1487
    .param pmc param_1488
.annotate 'line', 636
    .lex "self", param_1486
    .lex "$obj", param_1487
    .lex "$meta_attr", param_1488
.annotate 'line', 637
    new $P1489, "Undef"
    .lex "$name", $P1489
    find_lex $P1490, "$meta_attr"
    $P1491 = $P1490."name"()
    store_lex "$name", $P1491
.annotate 'line', 638
    find_lex $P1493, "$name"
    find_lex $P1494, "self"
    get_global $P1495, "$?CLASS"
    getattribute $P1496, $P1494, $P1495, "%!attributes"
    unless_null $P1496, vivify_314
    $P1496 = root_new ['parrot';'Hash']
  vivify_314:
    set $P1497, $P1496[$P1493]
    unless_null $P1497, vivify_315
    new $P1497, "Undef"
  vivify_315:
    unless $P1497, if_1492_end
.annotate 'line', 639
    new $P1498, "String"
    assign $P1498, "This role already has an attribute named "
    find_lex $P1499, "$name"
    concat $P1500, $P1498, $P1499
    die $P1500
  if_1492_end:
.annotate 'line', 641
    find_lex $P1501, "$meta_attr"
    find_lex $P1502, "$name"
    find_lex $P1503, "self"
    get_global $P1504, "$?CLASS"
    getattribute $P1505, $P1503, $P1504, "%!attributes"
    unless_null $P1505, vivify_316
    $P1505 = root_new ['parrot';'Hash']
    setattribute $P1503, $P1504, "%!attributes", $P1505
  vivify_316:
    set $P1505[$P1502], $P1501
.annotate 'line', 636
    .return ($P1501)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_parent"  :subid("103_1299602563.879") :outer("96_1299602563.879")
    .param pmc param_1507
    .param pmc param_1508
    .param pmc param_1509
.annotate 'line', 644
    .lex "self", param_1507
    .lex "$obj", param_1508
    .lex "$parent", param_1509
.annotate 'line', 645
    die "A role cannot inherit from a class in NQP"
.annotate 'line', 644
    .return ()
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_role"  :subid("104_1299602563.879") :outer("96_1299602563.879")
    .param pmc param_1511
    .param pmc param_1512
    .param pmc param_1513
.annotate 'line', 648
    .lex "self", param_1511
    .lex "$obj", param_1512
    .lex "$role", param_1513
.annotate 'line', 649
    find_lex $P1514, "$role"
    find_lex $P1515, "self"
    get_global $P1516, "$?CLASS"
    getattribute $P1517, $P1515, $P1516, "@!roles"
    unless_null $P1517, vivify_317
    $P1517 = root_new ['parrot';'ResizablePMCArray']
  vivify_317:
    set $N1518, $P1517
    set $I1519, $N1518
    find_lex $P1520, "self"
    get_global $P1521, "$?CLASS"
    getattribute $P1522, $P1520, $P1521, "@!roles"
    unless_null $P1522, vivify_318
    $P1522 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1520, $P1521, "@!roles", $P1522
  vivify_318:
    set $P1522[$I1519], $P1514
.annotate 'line', 648
    .return ($P1514)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_collision"  :subid("105_1299602563.879") :outer("96_1299602563.879")
    .param pmc param_1524
    .param pmc param_1525
    .param pmc param_1526
.annotate 'line', 652
    .lex "self", param_1524
    .lex "$obj", param_1525
    .lex "$colliding_name", param_1526
.annotate 'line', 653
    find_lex $P1527, "$colliding_name"
    find_lex $P1528, "self"
    get_global $P1529, "$?CLASS"
    getattribute $P1530, $P1528, $P1529, "@!collisions"
    unless_null $P1530, vivify_319
    $P1530 = root_new ['parrot';'ResizablePMCArray']
  vivify_319:
    set $N1531, $P1530
    set $I1532, $N1531
    find_lex $P1533, "self"
    get_global $P1534, "$?CLASS"
    getattribute $P1535, $P1533, $P1534, "@!collisions"
    unless_null $P1535, vivify_320
    $P1535 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1533, $P1534, "@!collisions", $P1535
  vivify_320:
    set $P1535[$I1532], $P1527
.annotate 'line', 652
    .return ($P1527)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "compose"  :subid("106_1299602563.879") :outer("96_1299602563.879")
    .param pmc param_1537
    .param pmc param_1538
.annotate 'line', 657
    .const 'Sub' $P1550 = "107_1299602563.879" 
    capture_lex $P1550
    .lex "self", param_1537
    .lex "$obj", param_1538
.annotate 'line', 660
    find_lex $P1540, "self"
    get_global $P1541, "$?CLASS"
    getattribute $P1542, $P1540, $P1541, "@!roles"
    unless_null $P1542, vivify_321
    $P1542 = root_new ['parrot';'ResizablePMCArray']
  vivify_321:
    unless $P1542, if_1539_end
.annotate 'line', 661
    find_lex $P1544, "self"
    get_global $P1545, "$?CLASS"
    getattribute $P1546, $P1544, $P1545, "@!roles"
    unless_null $P1546, vivify_322
    $P1546 = root_new ['parrot';'ResizablePMCArray']
  vivify_322:
    defined $I1547, $P1546
    unless $I1547, for_undef_323
    iter $P1543, $P1546
    new $P1574, 'ExceptionHandler'
    set_label $P1574, loop1573_handler
    $P1574."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1574
  loop1573_test:
    unless $P1543, loop1573_done
    shift $P1548, $P1543
  loop1573_redo:
    .const 'Sub' $P1550 = "107_1299602563.879" 
    capture_lex $P1550
    $P1550($P1548)
  loop1573_next:
    goto loop1573_test
  loop1573_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1575, exception, 'type'
    eq $P1575, .CONTROL_LOOP_NEXT, loop1573_next
    eq $P1575, .CONTROL_LOOP_REDO, loop1573_redo
  loop1573_done:
    pop_eh 
  for_undef_323:
.annotate 'line', 665
    get_hll_global $P1576, "RoleToRoleApplier"
    find_lex $P1577, "$obj"
    find_lex $P1578, "self"
    get_global $P1579, "$?CLASS"
    getattribute $P1580, $P1578, $P1579, "@!roles"
    unless_null $P1580, vivify_328
    $P1580 = root_new ['parrot';'ResizablePMCArray']
  vivify_328:
    $P1576."apply"($P1577, $P1580)
  if_1539_end:
.annotate 'line', 669
    new $P1581, "Integer"
    assign $P1581, 1
    find_lex $P1582, "self"
    get_global $P1583, "$?CLASS"
    setattribute $P1582, $P1583, "$!composed", $P1581
    find_lex $P1584, "$obj"
.annotate 'line', 657
    .return ($P1584)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1549"  :anon :subid("107_1299602563.879") :outer("106_1299602563.879")
    .param pmc param_1551
.annotate 'line', 661
    .lex "$_", param_1551
.annotate 'line', 662
    find_lex $P1552, "$_"
    find_lex $P1553, "self"
    get_global $P1554, "$?CLASS"
    getattribute $P1555, $P1553, $P1554, "@!done"
    unless_null $P1555, vivify_324
    $P1555 = root_new ['parrot';'ResizablePMCArray']
  vivify_324:
    set $N1556, $P1555
    set $I1557, $N1556
    find_lex $P1558, "self"
    get_global $P1559, "$?CLASS"
    getattribute $P1560, $P1558, $P1559, "@!done"
    unless_null $P1560, vivify_325
    $P1560 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1558, $P1559, "@!done", $P1560
  vivify_325:
    set $P1560[$I1557], $P1552
.annotate 'line', 663
    find_lex $P1561, "$_"
    get_how $P1562, $P1561
    find_lex $P1563, "$_"
    $P1564 = $P1562."instance_of"($P1563)
    find_lex $P1565, "self"
    get_global $P1566, "$?CLASS"
    getattribute $P1567, $P1565, $P1566, "@!done"
    unless_null $P1567, vivify_326
    $P1567 = root_new ['parrot';'ResizablePMCArray']
  vivify_326:
    set $N1568, $P1567
    set $I1569, $N1568
    find_lex $P1570, "self"
    get_global $P1571, "$?CLASS"
    getattribute $P1572, $P1570, $P1571, "@!done"
    unless_null $P1572, vivify_327
    $P1572 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1570, $P1571, "@!done", $P1572
  vivify_327:
    set $P1572[$I1569], $P1564
.annotate 'line', 661
    .return ($P1564)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "methods"  :subid("108_1299602563.879") :outer("96_1299602563.879")
    .param pmc param_1586
    .param pmc param_1587
.annotate 'line', 678
    .const 'Sub' $P1597 = "109_1299602563.879" 
    capture_lex $P1597
    .lex "self", param_1586
    .lex "$obj", param_1587
.annotate 'line', 679
    $P1588 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meths", $P1588
.annotate 'line', 678
    find_lex $P1589, "@meths"
.annotate 'line', 680
    find_lex $P1591, "self"
    get_global $P1592, "$?CLASS"
    getattribute $P1593, $P1591, $P1592, "%!methods"
    unless_null $P1593, vivify_329
    $P1593 = root_new ['parrot';'Hash']
  vivify_329:
    defined $I1594, $P1593
    unless $I1594, for_undef_330
    iter $P1590, $P1593
    new $P1604, 'ExceptionHandler'
    set_label $P1604, loop1603_handler
    $P1604."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1604
  loop1603_test:
    unless $P1590, loop1603_done
    shift $P1595, $P1590
  loop1603_redo:
    .const 'Sub' $P1597 = "109_1299602563.879" 
    capture_lex $P1597
    $P1597($P1595)
  loop1603_next:
    goto loop1603_test
  loop1603_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1605, exception, 'type'
    eq $P1605, .CONTROL_LOOP_NEXT, loop1603_next
    eq $P1605, .CONTROL_LOOP_REDO, loop1603_redo
  loop1603_done:
    pop_eh 
  for_undef_330:
    find_lex $P1606, "@meths"
.annotate 'line', 678
    .return ($P1606)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1596"  :anon :subid("109_1299602563.879") :outer("108_1299602563.879")
    .param pmc param_1598
.annotate 'line', 680
    .lex "$_", param_1598
.annotate 'line', 681
    find_lex $P1599, "@meths"
    find_lex $P1600, "$_"
    $P1601 = $P1600."value"()
    $P1602 = $P1599."push"($P1601)
.annotate 'line', 680
    .return ($P1602)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "method_table"  :subid("110_1299602563.879") :outer("96_1299602563.879")
    .param pmc param_1608
    .param pmc param_1609
.annotate 'line', 686
    .lex "self", param_1608
    .lex "$obj", param_1609
    find_lex $P1610, "self"
    get_global $P1611, "$?CLASS"
    getattribute $P1612, $P1610, $P1611, "%!methods"
    unless_null $P1612, vivify_331
    $P1612 = root_new ['parrot';'Hash']
  vivify_331:
    .return ($P1612)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "collisions"  :subid("111_1299602563.879") :outer("96_1299602563.879")
    .param pmc param_1614
    .param pmc param_1615
.annotate 'line', 690
    .lex "self", param_1614
    .lex "$obj", param_1615
    find_lex $P1616, "self"
    get_global $P1617, "$?CLASS"
    getattribute $P1618, $P1616, $P1617, "@!collisions"
    unless_null $P1618, vivify_332
    $P1618 = root_new ['parrot';'ResizablePMCArray']
  vivify_332:
    .return ($P1618)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "name"  :subid("112_1299602563.879") :outer("96_1299602563.879")
    .param pmc param_1620
    .param pmc param_1621
.annotate 'line', 694
    .lex "self", param_1620
    .lex "$obj", param_1621
    find_lex $P1622, "self"
    get_global $P1623, "$?CLASS"
    getattribute $P1624, $P1622, $P1623, "$!name"
    unless_null $P1624, vivify_333
    new $P1624, "Undef"
  vivify_333:
    .return ($P1624)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "attributes"  :subid("113_1299602563.879") :outer("96_1299602563.879")
    .param pmc param_1626
    .param pmc param_1627
.annotate 'line', 698
    .const 'Sub' $P1637 = "114_1299602563.879" 
    capture_lex $P1637
    .lex "self", param_1626
    .lex "$obj", param_1627
.annotate 'line', 699
    $P1628 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attrs", $P1628
.annotate 'line', 698
    find_lex $P1629, "@attrs"
.annotate 'line', 700
    find_lex $P1631, "self"
    get_global $P1632, "$?CLASS"
    getattribute $P1633, $P1631, $P1632, "%!attributes"
    unless_null $P1633, vivify_334
    $P1633 = root_new ['parrot';'Hash']
  vivify_334:
    defined $I1634, $P1633
    unless $I1634, for_undef_335
    iter $P1630, $P1633
    new $P1644, 'ExceptionHandler'
    set_label $P1644, loop1643_handler
    $P1644."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1644
  loop1643_test:
    unless $P1630, loop1643_done
    shift $P1635, $P1630
  loop1643_redo:
    .const 'Sub' $P1637 = "114_1299602563.879" 
    capture_lex $P1637
    $P1637($P1635)
  loop1643_next:
    goto loop1643_test
  loop1643_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1645, exception, 'type'
    eq $P1645, .CONTROL_LOOP_NEXT, loop1643_next
    eq $P1645, .CONTROL_LOOP_REDO, loop1643_redo
  loop1643_done:
    pop_eh 
  for_undef_335:
    find_lex $P1646, "@attrs"
.annotate 'line', 698
    .return ($P1646)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1636"  :anon :subid("114_1299602563.879") :outer("113_1299602563.879")
    .param pmc param_1638
.annotate 'line', 700
    .lex "$_", param_1638
.annotate 'line', 701
    find_lex $P1639, "@attrs"
    find_lex $P1640, "$_"
    $P1641 = $P1640."value"()
    $P1642 = $P1639."push"($P1641)
.annotate 'line', 700
    .return ($P1642)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "roles"  :subid("115_1299602563.879") :outer("96_1299602563.879")
    .param pmc param_1648
    .param pmc param_1649
.annotate 'line', 706
    .lex "self", param_1648
    .lex "$obj", param_1649
    find_lex $P1650, "self"
    get_global $P1651, "$?CLASS"
    getattribute $P1652, $P1650, $P1651, "@!roles"
    unless_null $P1652, vivify_336
    $P1652 = root_new ['parrot';'ResizablePMCArray']
  vivify_336:
    .return ($P1652)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "instance_of"  :subid("116_1299602563.879") :outer("96_1299602563.879")
    .param pmc param_1654
    .param pmc param_1655
.annotate 'line', 710
    .lex "self", param_1654
    .lex "$obj", param_1655
    find_lex $P1656, "self"
    get_global $P1657, "$?CLASS"
    getattribute $P1658, $P1656, $P1657, "$!instance_of"
    unless_null $P1658, vivify_337
    new $P1658, "Undef"
  vivify_337:
    .return ($P1658)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1726"  :subid("118_1299602563.879") :outer("10_1299602563.879")
.annotate 'line', 720
    .const 'Sub' $P2023 = "142_1299602563.879" 
    capture_lex $P2023
    .const 'Sub' $P2015 = "141_1299602563.879" 
    capture_lex $P2015
    .const 'Sub' $P1993 = "139_1299602563.879" 
    capture_lex $P1993
    .const 'Sub' $P1987 = "138_1299602563.879" 
    capture_lex $P1987
    .const 'Sub' $P1981 = "137_1299602563.879" 
    capture_lex $P1981
    .const 'Sub' $P1959 = "135_1299602563.879" 
    capture_lex $P1959
    .const 'Sub' $P1853 = "130_1299602563.879" 
    capture_lex $P1853
    .const 'Sub' $P1850 = "129_1299602563.879" 
    capture_lex $P1850
    .const 'Sub' $P1843 = "128_1299602563.879" 
    capture_lex $P1843
    .const 'Sub' $P1830 = "127_1299602563.879" 
    capture_lex $P1830
    .const 'Sub' $P1826 = "126_1299602563.879" 
    capture_lex $P1826
    .const 'Sub' $P1805 = "125_1299602563.879" 
    capture_lex $P1805
    .const 'Sub' $P1784 = "124_1299602563.879" 
    capture_lex $P1784
    .const 'Sub' $P1765 = "123_1299602563.879" 
    capture_lex $P1765
    .const 'Sub' $P1758 = "122_1299602563.879" 
    capture_lex $P1758
    .const 'Sub' $P1744 = "121_1299602563.879" 
    capture_lex $P1744
    .const 'Sub' $P1738 = "120_1299602563.879" 
    capture_lex $P1738
    .const 'Sub' $P1729 = "119_1299602563.879" 
    capture_lex $P1729
    get_global $P1728, "$?CLASS"
.annotate 'line', 883
    .const 'Sub' $P2015 = "141_1299602563.879" 
    newclosure $P2021, $P2015
.annotate 'line', 720
    .return ($P2021)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "" :load :init :subid("post338") :outer("118_1299602563.879")
.annotate 'line', 720
    get_hll_global $P1727, ["NQPParametricRoleHOW"], "_block1726" 
    .local pmc block
    set block, $P1727
    .const 'Sub' $P2023 = "142_1299602563.879" 
    capture_lex $P2023
    $P2023()
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block2022"  :anon :subid("142_1299602563.879") :outer("118_1299602563.879")
.annotate 'line', 720
    nqp_get_sc_object $P2024, "1299602559.16", 5
    .local pmc type_obj
    set type_obj, $P2024
    set_hll_global "NQPParametricRoleHOW", type_obj
    set_global "$?CLASS", type_obj
    get_how $P2025, type_obj
    get_hll_global $P2026, "KnowHOWAttribute"
    $P2027 = $P2026."new"("$!name" :named("name"))
    $P2025."add_attribute"(type_obj, $P2027)
    get_how $P2028, type_obj
    get_hll_global $P2029, "KnowHOWAttribute"
    $P2030 = $P2029."new"("%!attributes" :named("name"))
    $P2028."add_attribute"(type_obj, $P2030)
    get_how $P2031, type_obj
    get_hll_global $P2032, "KnowHOWAttribute"
    $P2033 = $P2032."new"("%!methods" :named("name"))
    $P2031."add_attribute"(type_obj, $P2033)
    get_how $P2034, type_obj
    get_hll_global $P2035, "KnowHOWAttribute"
    $P2036 = $P2035."new"("@!multi_methods_to_incorporate" :named("name"))
    $P2034."add_attribute"(type_obj, $P2036)
    get_how $P2037, type_obj
    get_hll_global $P2038, "KnowHOWAttribute"
    $P2039 = $P2038."new"("@!roles" :named("name"))
    $P2037."add_attribute"(type_obj, $P2039)
    get_how $P2040, type_obj
    get_hll_global $P2041, "KnowHOWAttribute"
    $P2042 = $P2041."new"("$!composed" :named("name"))
    $P2040."add_attribute"(type_obj, $P2042)
    get_how $P2043, type_obj
    get_hll_global $P2044, "KnowHOWAttribute"
    $P2045 = $P2044."new"("$!body_block" :named("name"))
    $P2043."add_attribute"(type_obj, $P2045)
    get_how $P2046, type_obj
    .const 'Sub' $P2047 = "119_1299602563.879" 
    $P2046."add_method"(type_obj, "new", $P2047)
    get_how $P2048, type_obj
    .const 'Sub' $P2049 = "120_1299602563.879" 
    $P2048."add_method"(type_obj, "BUILD", $P2049)
    get_how $P2050, type_obj
    .const 'Sub' $P2051 = "121_1299602563.879" 
    $P2050."add_method"(type_obj, "new_type", $P2051)
    get_how $P2052, type_obj
    .const 'Sub' $P2053 = "122_1299602563.879" 
    $P2052."add_method"(type_obj, "set_body_block", $P2053)
    get_how $P2054, type_obj
    .const 'Sub' $P2055 = "123_1299602563.879" 
    $P2054."add_method"(type_obj, "add_method", $P2055)
    get_how $P2056, type_obj
    .const 'Sub' $P2057 = "124_1299602563.879" 
    $P2056."add_method"(type_obj, "add_multi_method", $P2057)
    get_how $P2058, type_obj
    .const 'Sub' $P2059 = "125_1299602563.879" 
    $P2058."add_method"(type_obj, "add_attribute", $P2059)
    get_how $P2060, type_obj
    .const 'Sub' $P2061 = "126_1299602563.879" 
    $P2060."add_method"(type_obj, "add_parent", $P2061)
    get_how $P2062, type_obj
    .const 'Sub' $P2063 = "127_1299602563.879" 
    $P2062."add_method"(type_obj, "add_role", $P2063)
    get_how $P2064, type_obj
    .const 'Sub' $P2065 = "128_1299602563.879" 
    $P2064."add_method"(type_obj, "compose", $P2065)
    get_how $P2066, type_obj
    .const 'Sub' $P2067 = "129_1299602563.879" 
    $P2066."add_method"(type_obj, "parametric", $P2067)
    get_how $P2068, type_obj
    .const 'Sub' $P2069 = "130_1299602563.879" 
    $P2068."add_method"(type_obj, "instantiate", $P2069)
    get_how $P2070, type_obj
    .const 'Sub' $P2071 = "135_1299602563.879" 
    $P2070."add_method"(type_obj, "methods", $P2071)
    get_how $P2072, type_obj
    .const 'Sub' $P2073 = "137_1299602563.879" 
    $P2072."add_method"(type_obj, "method_table", $P2073)
    get_how $P2074, type_obj
    .const 'Sub' $P2075 = "138_1299602563.879" 
    $P2074."add_method"(type_obj, "name", $P2075)
    get_how $P2076, type_obj
    .const 'Sub' $P2077 = "139_1299602563.879" 
    $P2076."add_method"(type_obj, "attributes", $P2077)
    get_how $P2078, type_obj
    .const 'Sub' $P2079 = "141_1299602563.879" 
    $P2078."add_method"(type_obj, "roles", $P2079)
    get_how $P2080, type_obj
    $P2081 = $P2080."compose"(type_obj)
    .return ($P2081)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "new"  :subid("119_1299602563.879") :outer("118_1299602563.879")
    .param pmc param_1730
    .param pmc param_1731 :named("name")
.annotate 'line', 750
    .lex "self", param_1730
    .lex "$name", param_1731
.annotate 'line', 751
    new $P1732, "Undef"
    .lex "$obj", $P1732
    find_lex $P1733, "self"
    repr_instance_of $P1734, $P1733
    store_lex "$obj", $P1734
.annotate 'line', 752
    find_lex $P1735, "$obj"
    find_lex $P1736, "$name"
    $P1735."BUILD"($P1736 :named("name"))
    find_lex $P1737, "$obj"
.annotate 'line', 750
    .return ($P1737)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "BUILD"  :subid("120_1299602563.879") :outer("118_1299602563.879")
    .param pmc param_1739
    .param pmc param_1740 :named("name")
.annotate 'line', 756
    .lex "self", param_1739
    .lex "$name", param_1740
.annotate 'line', 757
    find_lex $P1741, "$name"
    find_lex $P1742, "self"
    get_global $P1743, "$?CLASS"
    setattribute $P1742, $P1743, "$!name", $P1741
.annotate 'line', 756
    .return ($P1741)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "new_type"  :subid("121_1299602563.879") :outer("118_1299602563.879")
    .param pmc param_1745
    .param pmc param_1746 :optional :named("name")
    .param int has_param_1746 :opt_flag
    .param pmc param_1748 :optional :named("repr")
    .param int has_param_1748 :opt_flag
.annotate 'line', 762
    .lex "self", param_1745
    if has_param_1746, optparam_339
    new $P1747, "String"
    assign $P1747, "<anon>"
    set param_1746, $P1747
  optparam_339:
    .lex "$name", param_1746
    if has_param_1748, optparam_340
    new $P1749, "String"
    assign $P1749, "P6opaque"
    set param_1748, $P1749
  optparam_340:
    .lex "$repr", param_1748
.annotate 'line', 763
    new $P1750, "Undef"
    .lex "$metarole", $P1750
    find_lex $P1751, "self"
    find_lex $P1752, "$name"
    $P1753 = $P1751."new"($P1752 :named("name"))
    store_lex "$metarole", $P1753
.annotate 'line', 764
    find_lex $P1754, "$metarole"
    find_lex $P1755, "$repr"
    set $S1756, $P1755
    repr_type_object_for $P1757, $P1754, $S1756
.annotate 'line', 762
    .return ($P1757)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "set_body_block"  :subid("122_1299602563.879") :outer("118_1299602563.879")
    .param pmc param_1759
    .param pmc param_1760
    .param pmc param_1761
.annotate 'line', 767
    .lex "self", param_1759
    .lex "$obj", param_1760
    .lex "$body_block", param_1761
.annotate 'line', 768
    find_lex $P1762, "$body_block"
    find_lex $P1763, "self"
    get_global $P1764, "$?CLASS"
    setattribute $P1763, $P1764, "$!body_block", $P1762
.annotate 'line', 767
    .return ($P1762)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_method"  :subid("123_1299602563.879") :outer("118_1299602563.879")
    .param pmc param_1766
    .param pmc param_1767
    .param pmc param_1768
    .param pmc param_1769
.annotate 'line', 771
    .lex "self", param_1766
    .lex "$obj", param_1767
    .lex "$name", param_1768
    .lex "$code_obj", param_1769
.annotate 'line', 772
    find_lex $P1771, "$name"
    find_lex $P1772, "self"
    get_global $P1773, "$?CLASS"
    getattribute $P1774, $P1772, $P1773, "%!methods"
    unless_null $P1774, vivify_341
    $P1774 = root_new ['parrot';'Hash']
  vivify_341:
    set $P1775, $P1774[$P1771]
    unless_null $P1775, vivify_342
    new $P1775, "Undef"
  vivify_342:
    unless $P1775, if_1770_end
.annotate 'line', 773
    new $P1776, "String"
    assign $P1776, "This role already has a method named "
    find_lex $P1777, "$name"
    concat $P1778, $P1776, $P1777
    die $P1778
  if_1770_end:
.annotate 'line', 775
    find_lex $P1779, "$code_obj"
    find_lex $P1780, "$name"
    find_lex $P1781, "self"
    get_global $P1782, "$?CLASS"
    getattribute $P1783, $P1781, $P1782, "%!methods"
    unless_null $P1783, vivify_343
    $P1783 = root_new ['parrot';'Hash']
    setattribute $P1781, $P1782, "%!methods", $P1783
  vivify_343:
    set $P1783[$P1780], $P1779
.annotate 'line', 771
    .return ($P1779)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_multi_method"  :subid("124_1299602563.879") :outer("118_1299602563.879")
    .param pmc param_1785
    .param pmc param_1786
    .param pmc param_1787
    .param pmc param_1788
.annotate 'line', 778
    .lex "self", param_1785
    .lex "$obj", param_1786
    .lex "$name", param_1787
    .lex "$code_obj", param_1788
.annotate 'line', 779
    $P1789 = root_new ['parrot';'Hash']
    .lex "%todo", $P1789
.annotate 'line', 778
    find_lex $P1790, "%todo"
.annotate 'line', 780
    find_lex $P1791, "$name"
    find_lex $P1792, "%todo"
    unless_null $P1792, vivify_344
    $P1792 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1792
  vivify_344:
    set $P1792["name"], $P1791
.annotate 'line', 781
    find_lex $P1793, "$code_obj"
    find_lex $P1794, "%todo"
    unless_null $P1794, vivify_345
    $P1794 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1794
  vivify_345:
    set $P1794["code"], $P1793
.annotate 'line', 782
    find_lex $P1795, "%todo"
    find_lex $P1796, "self"
    get_global $P1797, "$?CLASS"
    getattribute $P1798, $P1796, $P1797, "@!multi_methods_to_incorporate"
    unless_null $P1798, vivify_346
    $P1798 = root_new ['parrot';'ResizablePMCArray']
  vivify_346:
    set $N1799, $P1798
    set $I1800, $N1799
    find_lex $P1801, "self"
    get_global $P1802, "$?CLASS"
    getattribute $P1803, $P1801, $P1802, "@!multi_methods_to_incorporate"
    unless_null $P1803, vivify_347
    $P1803 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1801, $P1802, "@!multi_methods_to_incorporate", $P1803
  vivify_347:
    set $P1803[$I1800], $P1795
    find_lex $P1804, "$code_obj"
.annotate 'line', 778
    .return ($P1804)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_attribute"  :subid("125_1299602563.879") :outer("118_1299602563.879")
    .param pmc param_1806
    .param pmc param_1807
    .param pmc param_1808
.annotate 'line', 786
    .lex "self", param_1806
    .lex "$obj", param_1807
    .lex "$meta_attr", param_1808
.annotate 'line', 787
    new $P1809, "Undef"
    .lex "$name", $P1809
    find_lex $P1810, "$meta_attr"
    $P1811 = $P1810."name"()
    store_lex "$name", $P1811
.annotate 'line', 788
    find_lex $P1813, "$name"
    find_lex $P1814, "self"
    get_global $P1815, "$?CLASS"
    getattribute $P1816, $P1814, $P1815, "%!attributes"
    unless_null $P1816, vivify_348
    $P1816 = root_new ['parrot';'Hash']
  vivify_348:
    set $P1817, $P1816[$P1813]
    unless_null $P1817, vivify_349
    new $P1817, "Undef"
  vivify_349:
    unless $P1817, if_1812_end
.annotate 'line', 789
    new $P1818, "String"
    assign $P1818, "This role already has an attribute named "
    find_lex $P1819, "$name"
    concat $P1820, $P1818, $P1819
    die $P1820
  if_1812_end:
.annotate 'line', 791
    find_lex $P1821, "$meta_attr"
    find_lex $P1822, "$name"
    find_lex $P1823, "self"
    get_global $P1824, "$?CLASS"
    getattribute $P1825, $P1823, $P1824, "%!attributes"
    unless_null $P1825, vivify_350
    $P1825 = root_new ['parrot';'Hash']
    setattribute $P1823, $P1824, "%!attributes", $P1825
  vivify_350:
    set $P1825[$P1822], $P1821
.annotate 'line', 786
    .return ($P1821)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_parent"  :subid("126_1299602563.879") :outer("118_1299602563.879")
    .param pmc param_1827
    .param pmc param_1828
    .param pmc param_1829
.annotate 'line', 794
    .lex "self", param_1827
    .lex "$obj", param_1828
    .lex "$parent", param_1829
.annotate 'line', 795
    die "A role cannot inherit from a class"
.annotate 'line', 794
    .return ()
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_role"  :subid("127_1299602563.879") :outer("118_1299602563.879")
    .param pmc param_1831
    .param pmc param_1832
    .param pmc param_1833
.annotate 'line', 798
    .lex "self", param_1831
    .lex "$obj", param_1832
    .lex "$role", param_1833
.annotate 'line', 799
    find_lex $P1834, "$role"
    find_lex $P1835, "self"
    get_global $P1836, "$?CLASS"
    getattribute $P1837, $P1835, $P1836, "@!roles"
    unless_null $P1837, vivify_351
    $P1837 = root_new ['parrot';'ResizablePMCArray']
  vivify_351:
    set $N1838, $P1837
    set $I1839, $N1838
    find_lex $P1840, "self"
    get_global $P1841, "$?CLASS"
    getattribute $P1842, $P1840, $P1841, "@!roles"
    unless_null $P1842, vivify_352
    $P1842 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1840, $P1841, "@!roles", $P1842
  vivify_352:
    set $P1842[$I1839], $P1834
.annotate 'line', 798
    .return ($P1834)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "compose"  :subid("128_1299602563.879") :outer("118_1299602563.879")
    .param pmc param_1844
    .param pmc param_1845
.annotate 'line', 803
    .lex "self", param_1844
    .lex "$obj", param_1845
.annotate 'line', 804
    new $P1846, "Integer"
    assign $P1846, 1
    find_lex $P1847, "self"
    get_global $P1848, "$?CLASS"
    setattribute $P1847, $P1848, "$!composed", $P1846
    find_lex $P1849, "$obj"
.annotate 'line', 803
    .return ($P1849)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "parametric"  :subid("129_1299602563.879") :outer("118_1299602563.879")
    .param pmc param_1851
    .param pmc param_1852
.annotate 'line', 814
    .lex "self", param_1851
    .lex "$obj", param_1852
    .return (1)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "instantiate"  :subid("130_1299602563.879") :outer("118_1299602563.879")
    .param pmc param_1856
    .param pmc param_1857
    .param pmc param_1858
.annotate 'line', 820
    .const 'Sub' $P1937 = "134_1299602563.879" 
    capture_lex $P1937
    .const 'Sub' $P1916 = "133_1299602563.879" 
    capture_lex $P1916
    .const 'Sub' $P1895 = "132_1299602563.879" 
    capture_lex $P1895
    .const 'Sub' $P1877 = "131_1299602563.879" 
    capture_lex $P1877
    new $P1855, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1855, control_1854
    push_eh $P1855
    .lex "self", param_1856
    .lex "$obj", param_1857
    .lex "$class_arg", param_1858
.annotate 'line', 826
    new $P1859, "Undef"
    .lex "$irole", $P1859
.annotate 'line', 823
    find_lex $P1860, "self"
    get_global $P1861, "$?CLASS"
    getattribute $P1862, $P1860, $P1861, "$!body_block"
    unless_null $P1862, vivify_353
    new $P1862, "Undef"
  vivify_353:
    find_lex $P1863, "$class_arg"
    $P1862($P1863)
.annotate 'line', 826
    get_hll_global $P1864, "NQPConcreteRoleHOW"
    find_lex $P1865, "self"
    get_global $P1866, "$?CLASS"
    getattribute $P1867, $P1865, $P1866, "$!name"
    unless_null $P1867, vivify_354
    new $P1867, "Undef"
  vivify_354:
    find_lex $P1868, "$obj"
    $P1869 = $P1864."new_type"($P1867 :named("name"), $P1868 :named("instance_of"))
    store_lex "$irole", $P1869
.annotate 'line', 830
    find_lex $P1871, "self"
    get_global $P1872, "$?CLASS"
    getattribute $P1873, $P1871, $P1872, "%!attributes"
    unless_null $P1873, vivify_355
    $P1873 = root_new ['parrot';'Hash']
  vivify_355:
    defined $I1874, $P1873
    unless $I1874, for_undef_356
    iter $P1870, $P1873
    new $P1886, 'ExceptionHandler'
    set_label $P1886, loop1885_handler
    $P1886."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1886
  loop1885_test:
    unless $P1870, loop1885_done
    shift $P1875, $P1870
  loop1885_redo:
    .const 'Sub' $P1877 = "131_1299602563.879" 
    capture_lex $P1877
    $P1877($P1875)
  loop1885_next:
    goto loop1885_test
  loop1885_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1887, exception, 'type'
    eq $P1887, .CONTROL_LOOP_NEXT, loop1885_next
    eq $P1887, .CONTROL_LOOP_REDO, loop1885_redo
  loop1885_done:
    pop_eh 
  for_undef_356:
.annotate 'line', 836
    find_lex $P1889, "self"
    get_global $P1890, "$?CLASS"
    getattribute $P1891, $P1889, $P1890, "%!methods"
    unless_null $P1891, vivify_357
    $P1891 = root_new ['parrot';'Hash']
  vivify_357:
    defined $I1892, $P1891
    unless $I1892, for_undef_358
    iter $P1888, $P1891
    new $P1907, 'ExceptionHandler'
    set_label $P1907, loop1906_handler
    $P1907."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1907
  loop1906_test:
    unless $P1888, loop1906_done
    shift $P1893, $P1888
  loop1906_redo:
    .const 'Sub' $P1895 = "132_1299602563.879" 
    capture_lex $P1895
    $P1895($P1893)
  loop1906_next:
    goto loop1906_test
  loop1906_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1908, exception, 'type'
    eq $P1908, .CONTROL_LOOP_NEXT, loop1906_next
    eq $P1908, .CONTROL_LOOP_REDO, loop1906_redo
  loop1906_done:
    pop_eh 
  for_undef_358:
.annotate 'line', 839
    find_lex $P1910, "self"
    get_global $P1911, "$?CLASS"
    getattribute $P1912, $P1910, $P1911, "@!multi_methods_to_incorporate"
    unless_null $P1912, vivify_359
    $P1912 = root_new ['parrot';'ResizablePMCArray']
  vivify_359:
    defined $I1913, $P1912
    unless $I1913, for_undef_360
    iter $P1909, $P1912
    new $P1928, 'ExceptionHandler'
    set_label $P1928, loop1927_handler
    $P1928."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1928
  loop1927_test:
    unless $P1909, loop1927_done
    shift $P1914, $P1909
  loop1927_redo:
    .const 'Sub' $P1916 = "133_1299602563.879" 
    capture_lex $P1916
    $P1916($P1914)
  loop1927_next:
    goto loop1927_test
  loop1927_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1929, exception, 'type'
    eq $P1929, .CONTROL_LOOP_NEXT, loop1927_next
    eq $P1929, .CONTROL_LOOP_REDO, loop1927_redo
  loop1927_done:
    pop_eh 
  for_undef_360:
.annotate 'line', 844
    find_lex $P1931, "self"
    get_global $P1932, "$?CLASS"
    getattribute $P1933, $P1931, $P1932, "@!roles"
    unless_null $P1933, vivify_365
    $P1933 = root_new ['parrot';'ResizablePMCArray']
  vivify_365:
    defined $I1934, $P1933
    unless $I1934, for_undef_366
    iter $P1930, $P1933
    new $P1951, 'ExceptionHandler'
    set_label $P1951, loop1950_handler
    $P1951."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1951
  loop1950_test:
    unless $P1930, loop1950_done
    shift $P1935, $P1930
  loop1950_redo:
    .const 'Sub' $P1937 = "134_1299602563.879" 
    capture_lex $P1937
    $P1937($P1935)
  loop1950_next:
    goto loop1950_test
  loop1950_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1952, exception, 'type'
    eq $P1952, .CONTROL_LOOP_NEXT, loop1950_next
    eq $P1952, .CONTROL_LOOP_REDO, loop1950_redo
  loop1950_done:
    pop_eh 
  for_undef_366:
.annotate 'line', 850
    find_lex $P1953, "$irole"
    get_how $P1954, $P1953
    find_lex $P1955, "$irole"
    $P1954."compose"($P1955)
.annotate 'line', 851
    new $P1956, "Exception"
    set $P1956['type'], .CONTROL_RETURN
    find_lex $P1957, "$irole"
    setattribute $P1956, 'payload', $P1957
    throw $P1956
.annotate 'line', 820
    .return ()
  control_1854:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1958, exception, "payload"
    .return ($P1958)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1876"  :anon :subid("131_1299602563.879") :outer("130_1299602563.879")
    .param pmc param_1878
.annotate 'line', 830
    .lex "$_", param_1878
.annotate 'line', 831
    find_lex $P1879, "$irole"
    get_how $P1880, $P1879
    find_lex $P1881, "$irole"
    find_lex $P1882, "$_"
    $P1883 = $P1882."value"()
    $P1884 = $P1880."add_attribute"($P1881, $P1883)
.annotate 'line', 830
    .return ($P1884)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1894"  :anon :subid("132_1299602563.879") :outer("130_1299602563.879")
    .param pmc param_1896
.annotate 'line', 836
    .lex "$_", param_1896
.annotate 'line', 837
    find_lex $P1897, "$irole"
    get_how $P1898, $P1897
    find_lex $P1899, "$irole"
    find_lex $P1900, "$_"
    $P1901 = $P1900."key"()
    find_lex $P1902, "$_"
    $P1903 = $P1902."value"()
    clone $P1904, $P1903
    $P1905 = $P1898."add_method"($P1899, $P1901, $P1904)
.annotate 'line', 836
    .return ($P1905)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1915"  :anon :subid("133_1299602563.879") :outer("130_1299602563.879")
    .param pmc param_1917
.annotate 'line', 839
    .lex "$_", param_1917
.annotate 'line', 840
    find_lex $P1918, "$irole"
    get_how $P1919, $P1918
    find_lex $P1920, "$irole"
    find_lex $P1921, "$_"
    unless_null $P1921, vivify_361
    $P1921 = root_new ['parrot';'Hash']
  vivify_361:
    set $P1922, $P1921["name"]
    unless_null $P1922, vivify_362
    new $P1922, "Undef"
  vivify_362:
    find_lex $P1923, "$_"
    unless_null $P1923, vivify_363
    $P1923 = root_new ['parrot';'Hash']
  vivify_363:
    set $P1924, $P1923["code"]
    unless_null $P1924, vivify_364
    new $P1924, "Undef"
  vivify_364:
    clone $P1925, $P1924
    $P1926 = $P1919."add_multi_method"($P1920, $P1922, $P1925)
.annotate 'line', 839
    .return ($P1926)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1936"  :anon :subid("134_1299602563.879") :outer("130_1299602563.879")
    .param pmc param_1939
.annotate 'line', 845
    new $P1938, "Undef"
    .lex "$instantiated", $P1938
    .lex "$_", param_1939
    find_lex $P1940, "$irole"
    get_how $P1941, $P1940
    find_lex $P1942, "$irole"
    find_lex $P1943, "$class_arg"
    $P1944 = $P1941."instantiate"($P1942, $P1943)
    store_lex "$instantiated", $P1944
.annotate 'line', 846
    find_lex $P1945, "$irole"
    get_how $P1946, $P1945
    find_lex $P1947, "$irole"
    find_lex $P1948, "$instantiated"
    $P1949 = $P1946."add_role"($P1947, $P1948)
.annotate 'line', 844
    .return ($P1949)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "methods"  :subid("135_1299602563.879") :outer("118_1299602563.879")
    .param pmc param_1960
    .param pmc param_1961
.annotate 'line', 859
    .const 'Sub' $P1971 = "136_1299602563.879" 
    capture_lex $P1971
    .lex "self", param_1960
    .lex "$obj", param_1961
.annotate 'line', 860
    $P1962 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meths", $P1962
.annotate 'line', 859
    find_lex $P1963, "@meths"
.annotate 'line', 861
    find_lex $P1965, "self"
    get_global $P1966, "$?CLASS"
    getattribute $P1967, $P1965, $P1966, "%!methods"
    unless_null $P1967, vivify_367
    $P1967 = root_new ['parrot';'Hash']
  vivify_367:
    defined $I1968, $P1967
    unless $I1968, for_undef_368
    iter $P1964, $P1967
    new $P1978, 'ExceptionHandler'
    set_label $P1978, loop1977_handler
    $P1978."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1978
  loop1977_test:
    unless $P1964, loop1977_done
    shift $P1969, $P1964
  loop1977_redo:
    .const 'Sub' $P1971 = "136_1299602563.879" 
    capture_lex $P1971
    $P1971($P1969)
  loop1977_next:
    goto loop1977_test
  loop1977_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1979, exception, 'type'
    eq $P1979, .CONTROL_LOOP_NEXT, loop1977_next
    eq $P1979, .CONTROL_LOOP_REDO, loop1977_redo
  loop1977_done:
    pop_eh 
  for_undef_368:
    find_lex $P1980, "@meths"
.annotate 'line', 859
    .return ($P1980)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1970"  :anon :subid("136_1299602563.879") :outer("135_1299602563.879")
    .param pmc param_1972
.annotate 'line', 861
    .lex "$_", param_1972
.annotate 'line', 862
    find_lex $P1973, "@meths"
    find_lex $P1974, "$_"
    $P1975 = $P1974."value"()
    $P1976 = $P1973."push"($P1975)
.annotate 'line', 861
    .return ($P1976)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "method_table"  :subid("137_1299602563.879") :outer("118_1299602563.879")
    .param pmc param_1982
    .param pmc param_1983
.annotate 'line', 867
    .lex "self", param_1982
    .lex "$obj", param_1983
    find_lex $P1984, "self"
    get_global $P1985, "$?CLASS"
    getattribute $P1986, $P1984, $P1985, "%!methods"
    unless_null $P1986, vivify_369
    $P1986 = root_new ['parrot';'Hash']
  vivify_369:
    .return ($P1986)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "name"  :subid("138_1299602563.879") :outer("118_1299602563.879")
    .param pmc param_1988
    .param pmc param_1989
.annotate 'line', 871
    .lex "self", param_1988
    .lex "$obj", param_1989
    find_lex $P1990, "self"
    get_global $P1991, "$?CLASS"
    getattribute $P1992, $P1990, $P1991, "$!name"
    unless_null $P1992, vivify_370
    new $P1992, "Undef"
  vivify_370:
    .return ($P1992)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "attributes"  :subid("139_1299602563.879") :outer("118_1299602563.879")
    .param pmc param_1994
    .param pmc param_1995
.annotate 'line', 875
    .const 'Sub' $P2005 = "140_1299602563.879" 
    capture_lex $P2005
    .lex "self", param_1994
    .lex "$obj", param_1995
.annotate 'line', 876
    $P1996 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attrs", $P1996
.annotate 'line', 875
    find_lex $P1997, "@attrs"
.annotate 'line', 877
    find_lex $P1999, "self"
    get_global $P2000, "$?CLASS"
    getattribute $P2001, $P1999, $P2000, "%!attributes"
    unless_null $P2001, vivify_371
    $P2001 = root_new ['parrot';'Hash']
  vivify_371:
    defined $I2002, $P2001
    unless $I2002, for_undef_372
    iter $P1998, $P2001
    new $P2012, 'ExceptionHandler'
    set_label $P2012, loop2011_handler
    $P2012."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2012
  loop2011_test:
    unless $P1998, loop2011_done
    shift $P2003, $P1998
  loop2011_redo:
    .const 'Sub' $P2005 = "140_1299602563.879" 
    capture_lex $P2005
    $P2005($P2003)
  loop2011_next:
    goto loop2011_test
  loop2011_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2013, exception, 'type'
    eq $P2013, .CONTROL_LOOP_NEXT, loop2011_next
    eq $P2013, .CONTROL_LOOP_REDO, loop2011_redo
  loop2011_done:
    pop_eh 
  for_undef_372:
    find_lex $P2014, "@attrs"
.annotate 'line', 875
    .return ($P2014)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block2004"  :anon :subid("140_1299602563.879") :outer("139_1299602563.879")
    .param pmc param_2006
.annotate 'line', 877
    .lex "$_", param_2006
.annotate 'line', 878
    find_lex $P2007, "@attrs"
    find_lex $P2008, "$_"
    $P2009 = $P2008."value"()
    $P2010 = $P2007."push"($P2009)
.annotate 'line', 877
    .return ($P2010)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "roles"  :subid("141_1299602563.879") :outer("118_1299602563.879")
    .param pmc param_2016
    .param pmc param_2017
.annotate 'line', 883
    .lex "self", param_2016
    .lex "$obj", param_2017
    find_lex $P2018, "self"
    get_global $P2019, "$?CLASS"
    getattribute $P2020, $P2018, $P2019, "@!roles"
    unless_null $P2020, vivify_373
    $P2020 = root_new ['parrot';'ResizablePMCArray']
  vivify_373:
    .return ($P2020)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block2082"  :subid("143_1299602563.879") :outer("10_1299602563.879")
.annotate 'line', 889
    .const 'Sub' $P2291 = "153_1299602563.879" 
    capture_lex $P2291
    .const 'Sub' $P2155 = "148_1299602563.879" 
    capture_lex $P2155
    .const 'Sub' $P2120 = "146_1299602563.879" 
    capture_lex $P2120
    .const 'Sub' $P2085 = "144_1299602563.879" 
    capture_lex $P2085
    get_global $P2084, "$?CLASS"
.annotate 'line', 891
    .const 'Sub' $P2085 = "144_1299602563.879" 
    newclosure $P2119, $P2085
    .lex "has_method", $P2119
.annotate 'line', 899
    .const 'Sub' $P2120 = "146_1299602563.879" 
    newclosure $P2152, $P2120
    .lex "has_attribute", $P2152
.annotate 'line', 889
    find_lex $P2153, "has_method"
    find_lex $P2154, "has_attribute"
.annotate 'line', 907
    .const 'Sub' $P2155 = "148_1299602563.879" 
    newclosure $P2289, $P2155
.annotate 'line', 889
    .return ($P2289)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "" :load :init :subid("post374") :outer("143_1299602563.879")
.annotate 'line', 889
    get_hll_global $P2083, ["RoleToClassApplier"], "_block2082" 
    .local pmc block
    set block, $P2083
    .const 'Sub' $P2291 = "153_1299602563.879" 
    capture_lex $P2291
    $P2291()
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block2290"  :anon :subid("153_1299602563.879") :outer("143_1299602563.879")
.annotate 'line', 889
    nqp_get_sc_object $P2292, "1299602559.16", 6
    .local pmc type_obj
    set type_obj, $P2292
    set_hll_global "RoleToClassApplier", type_obj
    set_global "$?CLASS", type_obj
    get_how $P2293, type_obj
    .const 'Sub' $P2294 = "148_1299602563.879" 
    $P2293."add_method"(type_obj, "apply", $P2294)
    get_how $P2295, type_obj
    $P2296 = $P2295."compose"(type_obj)
    .return ($P2296)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "has_method"  :subid("144_1299602563.879") :outer("143_1299602563.879")
    .param pmc param_2088
    .param pmc param_2089
    .param pmc param_2090
.annotate 'line', 891
    .const 'Sub' $P2102 = "145_1299602563.879" 
    capture_lex $P2102
    new $P2087, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2087, control_2086
    push_eh $P2087
    .lex "$target", param_2088
    .lex "$name", param_2089
    .lex "$local", param_2090
.annotate 'line', 892
    $P2091 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P2091
    find_lex $P2092, "$target"
    get_how $P2093, $P2092
    find_lex $P2094, "$target"
    find_lex $P2095, "$local"
    $P2096 = $P2093."methods"($P2094, $P2095 :named("local"))
    store_lex "@methods", $P2096
.annotate 'line', 893
    find_lex $P2098, "@methods"
    defined $I2099, $P2098
    unless $I2099, for_undef_375
    iter $P2097, $P2098
    new $P2114, 'ExceptionHandler'
    set_label $P2114, loop2113_handler
    $P2114."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2114
  loop2113_test:
    unless $P2097, loop2113_done
    shift $P2100, $P2097
  loop2113_redo:
    .const 'Sub' $P2102 = "145_1299602563.879" 
    capture_lex $P2102
    $P2102($P2100)
  loop2113_next:
    goto loop2113_test
  loop2113_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2115, exception, 'type'
    eq $P2115, .CONTROL_LOOP_NEXT, loop2113_next
    eq $P2115, .CONTROL_LOOP_REDO, loop2113_redo
  loop2113_done:
    pop_eh 
  for_undef_375:
.annotate 'line', 896
    new $P2116, "Exception"
    set $P2116['type'], .CONTROL_RETURN
    new $P2117, "Integer"
    assign $P2117, 0
    setattribute $P2116, 'payload', $P2117
    throw $P2116
.annotate 'line', 891
    .return ()
  control_2086:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2118, exception, "payload"
    .return ($P2118)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "_block2101"  :anon :subid("145_1299602563.879") :outer("144_1299602563.879")
    .param pmc param_2103
.annotate 'line', 893
    .lex "$_", param_2103
.annotate 'line', 894
    find_lex $P2106, "$_"
    set $S2107, $P2106
    find_lex $P2108, "$name"
    set $S2109, $P2108
    iseq $I2110, $S2107, $S2109
    if $I2110, if_2105
    new $P2104, 'Integer'
    set $P2104, $I2110
    goto if_2105_end
  if_2105:
    new $P2111, "Exception"
    set $P2111['type'], .CONTROL_RETURN
    new $P2112, "Integer"
    assign $P2112, 1
    setattribute $P2111, 'payload', $P2112
    throw $P2111
  if_2105_end:
.annotate 'line', 893
    .return ($P2104)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "has_attribute"  :subid("146_1299602563.879") :outer("143_1299602563.879")
    .param pmc param_2123
    .param pmc param_2124
.annotate 'line', 899
    .const 'Sub' $P2135 = "147_1299602563.879" 
    capture_lex $P2135
    new $P2122, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2122, control_2121
    push_eh $P2122
    .lex "$target", param_2123
    .lex "$name", param_2124
.annotate 'line', 900
    $P2125 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attributes", $P2125
    find_lex $P2126, "$target"
    get_how $P2127, $P2126
    find_lex $P2128, "$target"
    $P2129 = $P2127."attributes"($P2128, 1 :named("local"))
    store_lex "@attributes", $P2129
.annotate 'line', 901
    find_lex $P2131, "@attributes"
    defined $I2132, $P2131
    unless $I2132, for_undef_376
    iter $P2130, $P2131
    new $P2147, 'ExceptionHandler'
    set_label $P2147, loop2146_handler
    $P2147."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2147
  loop2146_test:
    unless $P2130, loop2146_done
    shift $P2133, $P2130
  loop2146_redo:
    .const 'Sub' $P2135 = "147_1299602563.879" 
    capture_lex $P2135
    $P2135($P2133)
  loop2146_next:
    goto loop2146_test
  loop2146_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2148, exception, 'type'
    eq $P2148, .CONTROL_LOOP_NEXT, loop2146_next
    eq $P2148, .CONTROL_LOOP_REDO, loop2146_redo
  loop2146_done:
    pop_eh 
  for_undef_376:
.annotate 'line', 904
    new $P2149, "Exception"
    set $P2149['type'], .CONTROL_RETURN
    new $P2150, "Integer"
    assign $P2150, 0
    setattribute $P2149, 'payload', $P2150
    throw $P2149
.annotate 'line', 899
    .return ()
  control_2121:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2151, exception, "payload"
    .return ($P2151)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "_block2134"  :anon :subid("147_1299602563.879") :outer("146_1299602563.879")
    .param pmc param_2136
.annotate 'line', 901
    .lex "$_", param_2136
.annotate 'line', 902
    find_lex $P2139, "$_"
    $S2140 = $P2139."name"()
    find_lex $P2141, "$name"
    set $S2142, $P2141
    iseq $I2143, $S2140, $S2142
    if $I2143, if_2138
    new $P2137, 'Integer'
    set $P2137, $I2143
    goto if_2138_end
  if_2138:
    new $P2144, "Exception"
    set $P2144['type'], .CONTROL_RETURN
    new $P2145, "Integer"
    assign $P2145, 1
    setattribute $P2144, 'payload', $P2145
    throw $P2144
  if_2138_end:
.annotate 'line', 901
    .return ($P2137)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "apply"  :subid("148_1299602563.879") :outer("143_1299602563.879")
    .param pmc param_2156
    .param pmc param_2157
    .param pmc param_2158
.annotate 'line', 907
    .const 'Sub' $P2260 = "152_1299602563.879" 
    capture_lex $P2260
    .const 'Sub' $P2234 = "151_1299602563.879" 
    capture_lex $P2234
    .const 'Sub' $P2205 = "150_1299602563.879" 
    capture_lex $P2205
    .const 'Sub' $P2185 = "149_1299602563.879" 
    capture_lex $P2185
    .lex "self", param_2156
    .lex "$target", param_2157
    .lex "@roles", param_2158
.annotate 'line', 910
    new $P2159, "Undef"
    .lex "$to_compose", $P2159
.annotate 'line', 911
    new $P2160, "Undef"
    .lex "$to_compose_meta", $P2160
.annotate 'line', 926
    $P2161 = root_new ['parrot';'ResizablePMCArray']
    .lex "@collisions", $P2161
.annotate 'line', 935
    $P2162 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P2162
.annotate 'line', 943
    $P2163 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attributes", $P2163
.annotate 'line', 955
    $P2164 = root_new ['parrot';'ResizablePMCArray']
    .lex "@done", $P2164
.annotate 'line', 907
    find_lex $P2165, "$to_compose"
    find_lex $P2166, "$to_compose_meta"
.annotate 'line', 912
    find_lex $P2168, "@roles"
    set $N2169, $P2168
    iseq $I2170, $N2169, 1.0
    if $I2170, if_2167
.annotate 'line', 917
    get_hll_global $P2175, "NQPConcreteRoleHOW"
    get_hll_global $P2176, "NQPMu"
    $P2177 = $P2175."new_type"($P2176 :named("instance_of"))
    store_lex "$to_compose", $P2177
.annotate 'line', 918
    find_lex $P2178, "$to_compose"
    get_how $P2179, $P2178
    store_lex "$to_compose_meta", $P2179
.annotate 'line', 919
    find_lex $P2181, "@roles"
    defined $I2182, $P2181
    unless $I2182, for_undef_377
    iter $P2180, $P2181
    new $P2192, 'ExceptionHandler'
    set_label $P2192, loop2191_handler
    $P2192."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2192
  loop2191_test:
    unless $P2180, loop2191_done
    shift $P2183, $P2180
  loop2191_redo:
    .const 'Sub' $P2185 = "149_1299602563.879" 
    capture_lex $P2185
    $P2185($P2183)
  loop2191_next:
    goto loop2191_test
  loop2191_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2193, exception, 'type'
    eq $P2193, .CONTROL_LOOP_NEXT, loop2191_next
    eq $P2193, .CONTROL_LOOP_REDO, loop2191_redo
  loop2191_done:
    pop_eh 
  for_undef_377:
.annotate 'line', 922
    find_lex $P2194, "$to_compose_meta"
    find_lex $P2195, "$to_compose"
    $P2196 = $P2194."compose"($P2195)
    store_lex "$to_compose", $P2196
.annotate 'line', 916
    goto if_2167_end
  if_2167:
.annotate 'line', 913
    find_lex $P2171, "@roles"
    unless_null $P2171, vivify_378
    $P2171 = root_new ['parrot';'ResizablePMCArray']
  vivify_378:
    set $P2172, $P2171[0]
    unless_null $P2172, vivify_379
    new $P2172, "Undef"
  vivify_379:
    store_lex "$to_compose", $P2172
.annotate 'line', 914
    find_lex $P2173, "$to_compose"
    get_how $P2174, $P2173
    store_lex "$to_compose_meta", $P2174
  if_2167_end:
.annotate 'line', 926
    find_lex $P2197, "$to_compose_meta"
    find_lex $P2198, "$to_compose"
    $P2199 = $P2197."collisions"($P2198)
    store_lex "@collisions", $P2199
.annotate 'line', 927
    find_lex $P2201, "@collisions"
    defined $I2202, $P2201
    unless $I2202, for_undef_380
    iter $P2200, $P2201
    new $P2224, 'ExceptionHandler'
    set_label $P2224, loop2223_handler
    $P2224."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2224
  loop2223_test:
    unless $P2200, loop2223_done
    shift $P2203, $P2200
  loop2223_redo:
    .const 'Sub' $P2205 = "150_1299602563.879" 
    capture_lex $P2205
    $P2205($P2203)
  loop2223_next:
    goto loop2223_test
  loop2223_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2225, exception, 'type'
    eq $P2225, .CONTROL_LOOP_NEXT, loop2223_next
    eq $P2225, .CONTROL_LOOP_REDO, loop2223_redo
  loop2223_done:
    pop_eh 
  for_undef_380:
.annotate 'line', 935
    find_lex $P2226, "$to_compose_meta"
    find_lex $P2227, "$to_compose"
    $P2228 = $P2226."methods"($P2227)
    store_lex "@methods", $P2228
.annotate 'line', 936
    find_lex $P2230, "@methods"
    defined $I2231, $P2230
    unless $I2231, for_undef_381
    iter $P2229, $P2230
    new $P2250, 'ExceptionHandler'
    set_label $P2250, loop2249_handler
    $P2250."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2250
  loop2249_test:
    unless $P2229, loop2249_done
    shift $P2232, $P2229
  loop2249_redo:
    .const 'Sub' $P2234 = "151_1299602563.879" 
    capture_lex $P2234
    $P2234($P2232)
  loop2249_next:
    goto loop2249_test
  loop2249_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2251, exception, 'type'
    eq $P2251, .CONTROL_LOOP_NEXT, loop2249_next
    eq $P2251, .CONTROL_LOOP_REDO, loop2249_redo
  loop2249_done:
    pop_eh 
  for_undef_381:
.annotate 'line', 943
    find_lex $P2252, "$to_compose_meta"
    find_lex $P2253, "$to_compose"
    $P2254 = $P2252."attributes"($P2253)
    store_lex "@attributes", $P2254
.annotate 'line', 944
    find_lex $P2256, "@attributes"
    defined $I2257, $P2256
    unless $I2257, for_undef_382
    iter $P2255, $P2256
    new $P2284, 'ExceptionHandler'
    set_label $P2284, loop2283_handler
    $P2284."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2284
  loop2283_test:
    unless $P2255, loop2283_done
    shift $P2258, $P2255
  loop2283_redo:
    .const 'Sub' $P2260 = "152_1299602563.879" 
    capture_lex $P2260
    $P2260($P2258)
  loop2283_next:
    goto loop2283_test
  loop2283_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2285, exception, 'type'
    eq $P2285, .CONTROL_LOOP_NEXT, loop2283_next
    eq $P2285, .CONTROL_LOOP_REDO, loop2283_redo
  loop2283_done:
    pop_eh 
  for_undef_382:
    find_lex $P2286, "@done"
.annotate 'line', 956
    find_lex $P2287, "$to_compose"
    find_lex $P2288, "@done"
    unless_null $P2288, vivify_383
    $P2288 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@done", $P2288
  vivify_383:
    set $P2288[0], $P2287
.annotate 'line', 907
    .return ($P2287)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block2184"  :anon :subid("149_1299602563.879") :outer("148_1299602563.879")
    .param pmc param_2186
.annotate 'line', 919
    .lex "$_", param_2186
.annotate 'line', 920
    find_lex $P2187, "$to_compose_meta"
    find_lex $P2188, "$to_compose"
    find_lex $P2189, "$_"
    $P2190 = $P2187."add_role"($P2188, $P2189)
.annotate 'line', 919
    .return ($P2190)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block2204"  :anon :subid("150_1299602563.879") :outer("148_1299602563.879")
    .param pmc param_2206
.annotate 'line', 927
    .lex "$_", param_2206
.annotate 'line', 928
    find_lex $P2209, "$target"
    find_lex $P2210, "$_"
    set $S2211, $P2210
    $P2212 = "has_method"($P2209, $S2211, 1)
    unless $P2212, unless_2208
    set $P2207, $P2212
    goto unless_2208_end
  unless_2208:
.annotate 'line', 929
    new $P2213, 'String'
    set $P2213, "Method '"
    find_lex $P2214, "$_"
    concat $P2215, $P2213, $P2214
    concat $P2216, $P2215, "' collides and a resolution must be provided by the class '"
.annotate 'line', 930
    find_lex $P2217, "$target"
    get_how $P2218, $P2217
    find_lex $P2219, "$target"
    $S2220 = $P2218."name"($P2219)
    concat $P2221, $P2216, $S2220
.annotate 'line', 929
    concat $P2222, $P2221, "'"
.annotate 'line', 930
    die $P2222
  unless_2208_end:
.annotate 'line', 927
    .return ($P2207)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block2233"  :anon :subid("151_1299602563.879") :outer("148_1299602563.879")
    .param pmc param_2235
.annotate 'line', 936
    .lex "$_", param_2235
.annotate 'line', 937
    find_lex $P2238, "$target"
    find_lex $P2239, "$_"
    set $S2240, $P2239
    $P2241 = "has_method"($P2238, $S2240, 0)
    unless $P2241, unless_2237
    set $P2236, $P2241
    goto unless_2237_end
  unless_2237:
.annotate 'line', 938
    find_lex $P2242, "$target"
    get_how $P2243, $P2242
    find_lex $P2244, "$target"
    find_lex $P2245, "$_"
    set $S2246, $P2245
    find_lex $P2247, "$_"
    $P2248 = $P2243."add_method"($P2244, $S2246, $P2247)
.annotate 'line', 937
    set $P2236, $P2248
  unless_2237_end:
.annotate 'line', 936
    .return ($P2236)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block2259"  :anon :subid("152_1299602563.879") :outer("148_1299602563.879")
    .param pmc param_2261
.annotate 'line', 944
    .lex "$_", param_2261
.annotate 'line', 945
    find_lex $P2263, "$target"
    find_lex $P2264, "$_"
    $P2265 = $P2264."name"()
    $P2266 = "has_attribute"($P2263, $P2265)
    unless $P2266, if_2262_end
.annotate 'line', 946
    new $P2267, "String"
    assign $P2267, "Attribute '"
    find_lex $P2268, "$_"
    $S2269 = $P2268."name"()
    concat $P2270, $P2267, $S2269
    concat $P2271, $P2270, "' already exists in the class '"
.annotate 'line', 947
    find_lex $P2272, "$target"
    get_how $P2273, $P2272
    find_lex $P2274, "$target"
    $S2275 = $P2273."name"($P2274)
    concat $P2276, $P2271, $S2275
.annotate 'line', 946
    concat $P2277, $P2276, "', but a role also wishes to compose it"
.annotate 'line', 947
    die $P2277
  if_2262_end:
.annotate 'line', 949
    find_lex $P2278, "$target"
    get_how $P2279, $P2278
    find_lex $P2280, "$target"
    find_lex $P2281, "$_"
    $P2282 = $P2279."add_attribute"($P2280, $P2281)
.annotate 'line', 944
    .return ($P2282)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block2297"  :subid("154_1299602563.879") :outer("10_1299602563.879")
.annotate 'line', 961
    .const 'Sub' $P2520 = "164_1299602563.879" 
    capture_lex $P2520
    .const 'Sub' $P2300 = "155_1299602563.879" 
    capture_lex $P2300
    get_global $P2299, "$?CLASS"
.annotate 'line', 962
    .const 'Sub' $P2300 = "155_1299602563.879" 
    newclosure $P2518, $P2300
.annotate 'line', 961
    .return ($P2518)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "" :load :init :subid("post384") :outer("154_1299602563.879")
.annotate 'line', 961
    get_hll_global $P2298, ["RoleToRoleApplier"], "_block2297" 
    .local pmc block
    set block, $P2298
    .const 'Sub' $P2520 = "164_1299602563.879" 
    capture_lex $P2520
    $P2520()
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block2519"  :anon :subid("164_1299602563.879") :outer("154_1299602563.879")
.annotate 'line', 961
    nqp_get_sc_object $P2521, "1299602559.16", 7
    .local pmc type_obj
    set type_obj, $P2521
    set_hll_global "RoleToRoleApplier", type_obj
    set_global "$?CLASS", type_obj
    get_how $P2522, type_obj
    .const 'Sub' $P2523 = "155_1299602563.879" 
    $P2522."add_method"(type_obj, "apply", $P2523)
    get_how $P2524, type_obj
    $P2525 = $P2524."compose"(type_obj)
    .return ($P2525)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "apply"  :subid("155_1299602563.879") :outer("154_1299602563.879")
    .param pmc param_2303
    .param pmc param_2304
    .param pmc param_2305
.annotate 'line', 962
    .const 'Sub' $P2445 = "161_1299602563.879" 
    capture_lex $P2445
    .const 'Sub' $P2403 = "160_1299602563.879" 
    capture_lex $P2403
    .const 'Sub' $P2389 = "159_1299602563.879" 
    capture_lex $P2389
    .const 'Sub' $P2316 = "156_1299602563.879" 
    capture_lex $P2316
    new $P2302, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2302, control_2301
    push_eh $P2302
    .lex "self", param_2303
    .lex "$target", param_2304
    .lex "@roles", param_2305
.annotate 'line', 964
    $P2306 = root_new ['parrot';'Hash']
    .lex "%meth_info", $P2306
.annotate 'line', 990
    $P2307 = root_new ['parrot';'Hash']
    .lex "%target_meth_info", $P2307
.annotate 'line', 991
    $P2308 = root_new ['parrot';'ResizablePMCArray']
    .lex "@target_meths", $P2308
.annotate 'line', 1016
    $P2309 = root_new ['parrot';'ResizablePMCArray']
    .lex "@all_roles", $P2309
.annotate 'line', 962
    find_lex $P2310, "%meth_info"
.annotate 'line', 965
    find_lex $P2312, "@roles"
    defined $I2313, $P2312
    unless $I2313, for_undef_385
    iter $P2311, $P2312
    new $P2377, 'ExceptionHandler'
    set_label $P2377, loop2376_handler
    $P2377."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2377
  loop2376_test:
    unless $P2311, loop2376_done
    shift $P2314, $P2311
  loop2376_redo:
    .const 'Sub' $P2316 = "156_1299602563.879" 
    capture_lex $P2316
    $P2316($P2314)
  loop2376_next:
    goto loop2376_test
  loop2376_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2378, exception, 'type'
    eq $P2378, .CONTROL_LOOP_NEXT, loop2376_next
    eq $P2378, .CONTROL_LOOP_REDO, loop2376_redo
  loop2376_done:
    pop_eh 
  for_undef_385:
    find_lex $P2379, "%target_meth_info"
.annotate 'line', 991
    find_lex $P2380, "$target"
    get_how $P2381, $P2380
    find_lex $P2382, "$target"
    $P2383 = $P2381."methods"($P2382)
    store_lex "@target_meths", $P2383
.annotate 'line', 992
    find_lex $P2385, "@target_meths"
    defined $I2386, $P2385
    unless $I2386, for_undef_393
    iter $P2384, $P2385
    new $P2396, 'ExceptionHandler'
    set_label $P2396, loop2395_handler
    $P2396."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2396
  loop2395_test:
    unless $P2384, loop2395_done
    shift $P2387, $P2384
  loop2395_redo:
    .const 'Sub' $P2389 = "159_1299602563.879" 
    capture_lex $P2389
    $P2389($P2387)
  loop2395_next:
    goto loop2395_test
  loop2395_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2397, exception, 'type'
    eq $P2397, .CONTROL_LOOP_NEXT, loop2395_next
    eq $P2397, .CONTROL_LOOP_REDO, loop2395_redo
  loop2395_done:
    pop_eh 
  for_undef_393:
.annotate 'line', 997
    find_lex $P2399, "%meth_info"
    defined $I2400, $P2399
    unless $I2400, for_undef_395
    iter $P2398, $P2399
    new $P2437, 'ExceptionHandler'
    set_label $P2437, loop2436_handler
    $P2437."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2437
  loop2436_test:
    unless $P2398, loop2436_done
    shift $P2401, $P2398
  loop2436_redo:
    .const 'Sub' $P2403 = "160_1299602563.879" 
    capture_lex $P2403
    $P2403($P2401)
  loop2436_next:
    goto loop2436_test
  loop2436_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2438, exception, 'type'
    eq $P2438, .CONTROL_LOOP_NEXT, loop2436_next
    eq $P2438, .CONTROL_LOOP_REDO, loop2436_redo
  loop2436_done:
    pop_eh 
  for_undef_395:
    find_lex $P2439, "@all_roles"
.annotate 'line', 1017
    find_lex $P2441, "@roles"
    defined $I2442, $P2441
    unless $I2442, for_undef_402
    iter $P2440, $P2441
    new $P2513, 'ExceptionHandler'
    set_label $P2513, loop2512_handler
    $P2513."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2513
  loop2512_test:
    unless $P2440, loop2512_done
    shift $P2443, $P2440
  loop2512_redo:
    .const 'Sub' $P2445 = "161_1299602563.879" 
    capture_lex $P2445
    $P2445($P2443)
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
.annotate 'line', 1046
    new $P2515, "Exception"
    set $P2515['type'], .CONTROL_RETURN
    find_lex $P2516, "@all_roles"
    setattribute $P2515, 'payload', $P2516
    throw $P2515
.annotate 'line', 962
    .return ()
  control_2301:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2517, exception, "payload"
    .return ($P2517)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block2315"  :anon :subid("156_1299602563.879") :outer("155_1299602563.879")
    .param pmc param_2318
.annotate 'line', 965
    .const 'Sub' $P2328 = "157_1299602563.879" 
    capture_lex $P2328
.annotate 'line', 966
    $P2317 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P2317
    .lex "$_", param_2318
    find_lex $P2319, "$_"
    get_how $P2320, $P2319
    find_lex $P2321, "$_"
    $P2322 = $P2320."methods"($P2321)
    store_lex "@methods", $P2322
.annotate 'line', 967
    find_lex $P2324, "@methods"
    defined $I2325, $P2324
    unless $I2325, for_undef_386
    iter $P2323, $P2324
    new $P2374, 'ExceptionHandler'
    set_label $P2374, loop2373_handler
    $P2374."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2374
  loop2373_test:
    unless $P2323, loop2373_done
    shift $P2326, $P2323
  loop2373_redo:
    .const 'Sub' $P2328 = "157_1299602563.879" 
    capture_lex $P2328
    $P2328($P2326)
  loop2373_next:
    goto loop2373_test
  loop2373_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2375, exception, 'type'
    eq $P2375, .CONTROL_LOOP_NEXT, loop2373_next
    eq $P2375, .CONTROL_LOOP_REDO, loop2373_redo
  loop2373_done:
    pop_eh 
  for_undef_386:
.annotate 'line', 965
    .return ($P2323)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block2327"  :anon :subid("157_1299602563.879") :outer("156_1299602563.879")
    .param pmc param_2333
.annotate 'line', 967
    .const 'Sub' $P2356 = "158_1299602563.879" 
    capture_lex $P2356
.annotate 'line', 968
    new $P2329, "Undef"
    .lex "$name", $P2329
.annotate 'line', 969
    new $P2330, "Undef"
    .lex "$meth", $P2330
.annotate 'line', 970
    $P2331 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meth_list", $P2331
.annotate 'line', 977
    new $P2332, "Undef"
    .lex "$found", $P2332
    .lex "$_", param_2333
.annotate 'line', 968
    find_lex $P2334, "$_"
    set $S2335, $P2334
    new $P2336, 'String'
    set $P2336, $S2335
    store_lex "$name", $P2336
.annotate 'line', 969
    find_lex $P2337, "$_"
    store_lex "$meth", $P2337
    find_lex $P2338, "@meth_list"
.annotate 'line', 971
    find_lex $P2340, "$name"
    find_lex $P2341, "%meth_info"
    unless_null $P2341, vivify_387
    $P2341 = root_new ['parrot';'Hash']
  vivify_387:
    set $P2342, $P2341[$P2340]
    unless_null $P2342, vivify_388
    new $P2342, "Undef"
  vivify_388:
    defined $I2343, $P2342
    if $I2343, if_2339
.annotate 'line', 975
    find_lex $P2347, "@meth_list"
    find_lex $P2348, "$name"
    find_lex $P2349, "%meth_info"
    unless_null $P2349, vivify_389
    $P2349 = root_new ['parrot';'Hash']
    store_lex "%meth_info", $P2349
  vivify_389:
    set $P2349[$P2348], $P2347
.annotate 'line', 974
    goto if_2339_end
  if_2339:
.annotate 'line', 972
    find_lex $P2344, "$name"
    find_lex $P2345, "%meth_info"
    unless_null $P2345, vivify_390
    $P2345 = root_new ['parrot';'Hash']
  vivify_390:
    set $P2346, $P2345[$P2344]
    unless_null $P2346, vivify_391
    new $P2346, "Undef"
  vivify_391:
    store_lex "@meth_list", $P2346
  if_2339_end:
.annotate 'line', 977
    new $P2350, "Integer"
    assign $P2350, 0
    store_lex "$found", $P2350
.annotate 'line', 978
    find_lex $P2352, "@meth_list"
    defined $I2353, $P2352
    unless $I2353, for_undef_392
    iter $P2351, $P2352
    new $P2365, 'ExceptionHandler'
    set_label $P2365, loop2364_handler
    $P2365."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2365
  loop2364_test:
    unless $P2351, loop2364_done
    shift $P2354, $P2351
  loop2364_redo:
    .const 'Sub' $P2356 = "158_1299602563.879" 
    capture_lex $P2356
    $P2356($P2354)
  loop2364_next:
    goto loop2364_test
  loop2364_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2366, exception, 'type'
    eq $P2366, .CONTROL_LOOP_NEXT, loop2364_next
    eq $P2366, .CONTROL_LOOP_REDO, loop2364_redo
  loop2364_done:
    pop_eh 
  for_undef_392:
.annotate 'line', 983
    find_lex $P2369, "$found"
    unless $P2369, unless_2368
    set $P2367, $P2369
    goto unless_2368_end
  unless_2368:
.annotate 'line', 984
    find_lex $P2370, "@meth_list"
    find_lex $P2371, "$meth"
    $P2372 = $P2370."push"($P2371)
.annotate 'line', 983
    set $P2367, $P2372
  unless_2368_end:
.annotate 'line', 967
    .return ($P2367)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block2355"  :anon :subid("158_1299602563.879") :outer("157_1299602563.879")
    .param pmc param_2357
.annotate 'line', 978
    .lex "$_", param_2357
.annotate 'line', 979
    find_lex $P2360, "$meth"
    find_lex $P2361, "$_"
    issame $I2362, $P2360, $P2361
    if $I2362, if_2359
    new $P2358, 'Integer'
    set $P2358, $I2362
    goto if_2359_end
  if_2359:
.annotate 'line', 980
    new $P2363, "Integer"
    assign $P2363, 1
    store_lex "$found", $P2363
.annotate 'line', 979
    set $P2358, $P2363
  if_2359_end:
.annotate 'line', 978
    .return ($P2358)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block2388"  :anon :subid("159_1299602563.879") :outer("155_1299602563.879")
    .param pmc param_2390
.annotate 'line', 992
    .lex "$_", param_2390
.annotate 'line', 993
    find_lex $P2391, "$_"
    find_lex $P2392, "$_"
    set $S2393, $P2392
    find_lex $P2394, "%target_meth_info"
    unless_null $P2394, vivify_394
    $P2394 = root_new ['parrot';'Hash']
    store_lex "%target_meth_info", $P2394
  vivify_394:
    set $P2394[$S2393], $P2391
.annotate 'line', 992
    .return ($P2391)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block2402"  :anon :subid("160_1299602563.879") :outer("155_1299602563.879")
    .param pmc param_2406
.annotate 'line', 998
    new $P2404, "Undef"
    .lex "$name", $P2404
.annotate 'line', 999
    $P2405 = root_new ['parrot';'ResizablePMCArray']
    .lex "@add_meths", $P2405
    .lex "$_", param_2406
.annotate 'line', 998
    find_lex $P2407, "$_"
    set $S2408, $P2407
    new $P2409, 'String'
    set $P2409, $S2408
    store_lex "$name", $P2409
.annotate 'line', 999
    find_lex $P2410, "$name"
    find_lex $P2411, "%meth_info"
    unless_null $P2411, vivify_396
    $P2411 = root_new ['parrot';'Hash']
  vivify_396:
    set $P2412, $P2411[$P2410]
    unless_null $P2412, vivify_397
    new $P2412, "Undef"
  vivify_397:
    store_lex "@add_meths", $P2412
.annotate 'line', 1003
    find_lex $P2415, "$name"
    find_lex $P2416, "%target_meth_info"
    unless_null $P2416, vivify_398
    $P2416 = root_new ['parrot';'Hash']
  vivify_398:
    set $P2417, $P2416[$P2415]
    unless_null $P2417, vivify_399
    new $P2417, "Undef"
  vivify_399:
    defined $I2418, $P2417
    unless $I2418, unless_2414
    new $P2413, 'Integer'
    set $P2413, $I2418
    goto unless_2414_end
  unless_2414:
.annotate 'line', 1005
    find_lex $P2421, "@add_meths"
    set $N2422, $P2421
    iseq $I2423, $N2422, 1.0
    if $I2423, if_2420
.annotate 'line', 1010
    find_lex $P2431, "$target"
    get_how $P2432, $P2431
    find_lex $P2433, "$target"
    find_lex $P2434, "$name"
    $P2435 = $P2432."add_collision"($P2433, $P2434)
.annotate 'line', 1008
    set $P2419, $P2435
.annotate 'line', 1005
    goto if_2420_end
  if_2420:
.annotate 'line', 1006
    find_lex $P2424, "$target"
    get_how $P2425, $P2424
    find_lex $P2426, "$target"
    find_lex $P2427, "$name"
    find_lex $P2428, "@add_meths"
    unless_null $P2428, vivify_400
    $P2428 = root_new ['parrot';'ResizablePMCArray']
  vivify_400:
    set $P2429, $P2428[0]
    unless_null $P2429, vivify_401
    new $P2429, "Undef"
  vivify_401:
    $P2430 = $P2425."add_method"($P2426, $P2427, $P2429)
.annotate 'line', 1005
    set $P2419, $P2430
  if_2420_end:
.annotate 'line', 1003
    set $P2413, $P2419
  unless_2414_end:
.annotate 'line', 997
    .return ($P2413)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block2444"  :anon :subid("161_1299602563.879") :outer("155_1299602563.879")
    .param pmc param_2448
.annotate 'line', 1017
    .const 'Sub' $P2459 = "162_1299602563.879" 
    capture_lex $P2459
.annotate 'line', 1018
    new $P2446, "Undef"
    .lex "$how", $P2446
.annotate 'line', 1021
    $P2447 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attributes", $P2447
    .lex "$_", param_2448
.annotate 'line', 1018
    find_lex $P2449, "$_"
    get_how $P2450, $P2449
    store_lex "$how", $P2450
.annotate 'line', 1021
    find_lex $P2451, "$how"
    find_lex $P2452, "$_"
    $P2453 = $P2451."attributes"($P2452)
    store_lex "@attributes", $P2453
.annotate 'line', 1022
    find_lex $P2455, "@attributes"
    defined $I2456, $P2455
    unless $I2456, for_undef_403
    iter $P2454, $P2455
    new $P2507, 'ExceptionHandler'
    set_label $P2507, loop2506_handler
    $P2507."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2507
  loop2506_test:
    unless $P2454, loop2506_done
    shift $P2457, $P2454
  loop2506_redo:
    .const 'Sub' $P2459 = "162_1299602563.879" 
    capture_lex $P2459
    $P2459($P2457)
  loop2506_next:
    goto loop2506_test
  loop2506_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2508, exception, 'type'
    eq $P2508, .CONTROL_LOOP_NEXT, loop2506_next
    eq $P2508, .CONTROL_LOOP_REDO, loop2506_redo
  loop2506_done:
    pop_eh 
  for_undef_403:
.annotate 'line', 1043
    find_lex $P2509, "@all_roles"
    find_lex $P2510, "$_"
    $P2511 = $P2509."push"($P2510)
.annotate 'line', 1017
    .return ($P2511)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block2458"  :anon :subid("162_1299602563.879") :outer("161_1299602563.879")
    .param pmc param_2463
.annotate 'line', 1022
    .const 'Sub' $P2475 = "163_1299602563.879" 
    capture_lex $P2475
.annotate 'line', 1023
    new $P2460, "Undef"
    .lex "$add_attr", $P2460
.annotate 'line', 1024
    new $P2461, "Undef"
    .lex "$skip", $P2461
.annotate 'line', 1025
    $P2462 = root_new ['parrot';'ResizablePMCArray']
    .lex "@cur_attrs", $P2462
    .lex "$_", param_2463
.annotate 'line', 1023
    find_lex $P2464, "$_"
    store_lex "$add_attr", $P2464
.annotate 'line', 1024
    new $P2465, "Integer"
    assign $P2465, 0
    store_lex "$skip", $P2465
.annotate 'line', 1025
    find_lex $P2466, "$target"
    get_how $P2467, $P2466
    find_lex $P2468, "$target"
    $P2469 = $P2467."attributes"($P2468)
    store_lex "@cur_attrs", $P2469
.annotate 'line', 1026
    find_lex $P2471, "@cur_attrs"
    defined $I2472, $P2471
    unless $I2472, for_undef_404
    iter $P2470, $P2471
    new $P2496, 'ExceptionHandler'
    set_label $P2496, loop2495_handler
    $P2496."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2496
  loop2495_test:
    unless $P2470, loop2495_done
    shift $P2473, $P2470
  loop2495_redo:
    .const 'Sub' $P2475 = "163_1299602563.879" 
    capture_lex $P2475
    $P2475($P2473)
  loop2495_next:
    goto loop2495_test
  loop2495_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2497, exception, 'type'
    eq $P2497, .CONTROL_LOOP_NEXT, loop2495_next
    eq $P2497, .CONTROL_LOOP_REDO, loop2495_redo
  loop2495_done:
    pop_eh 
  for_undef_404:
.annotate 'line', 1036
    find_lex $P2500, "$skip"
    unless $P2500, unless_2499
    set $P2498, $P2500
    goto unless_2499_end
  unless_2499:
.annotate 'line', 1037
    find_lex $P2501, "$target"
    get_how $P2502, $P2501
    find_lex $P2503, "$target"
    find_lex $P2504, "$add_attr"
    $P2505 = $P2502."add_attribute"($P2503, $P2504)
.annotate 'line', 1036
    set $P2498, $P2505
  unless_2499_end:
.annotate 'line', 1022
    .return ($P2498)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block2474"  :anon :subid("163_1299602563.879") :outer("162_1299602563.879")
    .param pmc param_2476
.annotate 'line', 1026
    .lex "$_", param_2476
.annotate 'line', 1027
    find_lex $P2479, "$_"
    find_lex $P2480, "$add_attr"
    issame $I2481, $P2479, $P2480
    if $I2481, if_2478
.annotate 'line', 1031
    find_lex $P2485, "$_"
    $S2486 = $P2485."name"()
    find_lex $P2487, "$add_attr"
    $S2488 = $P2487."name"()
    iseq $I2489, $S2486, $S2488
    if $I2489, if_2484
    new $P2483, 'Integer'
    set $P2483, $I2489
    goto if_2484_end
  if_2484:
.annotate 'line', 1032
    new $P2490, "String"
    assign $P2490, "Attribute '"
    find_lex $P2491, "$_"
    $S2492 = $P2491."name"()
    concat $P2493, $P2490, $S2492
    concat $P2494, $P2493, "' conflicts in role composition"
    die $P2494
  if_2484_end:
.annotate 'line', 1030
    set $P2477, $P2483
.annotate 'line', 1027
    goto if_2478_end
  if_2478:
.annotate 'line', 1028
    new $P2482, "Integer"
    assign $P2482, 1
    store_lex "$skip", $P2482
.annotate 'line', 1027
    set $P2477, $P2482
  if_2478_end:
.annotate 'line', 1026
    .return ($P2477)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "_block2526"  :subid("165_1299602563.879") :outer("10_1299602563.879")
.annotate 'line', 1051
    .const 'Sub' $P2588 = "174_1299602563.879" 
    capture_lex $P2588
    .const 'Sub' $P2580 = "173_1299602563.879" 
    capture_lex $P2580
    .const 'Sub' $P2574 = "172_1299602563.879" 
    capture_lex $P2574
    .const 'Sub' $P2570 = "171_1299602563.879" 
    capture_lex $P2570
    .const 'Sub' $P2565 = "170_1299602563.879" 
    capture_lex $P2565
    .const 'Sub' $P2560 = "169_1299602563.879" 
    capture_lex $P2560
    .const 'Sub' $P2546 = "168_1299602563.879" 
    capture_lex $P2546
    .const 'Sub' $P2539 = "167_1299602563.879" 
    capture_lex $P2539
    .const 'Sub' $P2529 = "166_1299602563.879" 
    capture_lex $P2529
    get_global $P2528, "$?CLASS"
.annotate 'line', 1090
    .const 'Sub' $P2580 = "173_1299602563.879" 
    newclosure $P2586, $P2580
.annotate 'line', 1051
    .return ($P2586)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "" :load :init :subid("post405") :outer("165_1299602563.879")
.annotate 'line', 1051
    get_hll_global $P2527, ["NQPModuleHOW"], "_block2526" 
    .local pmc block
    set block, $P2527
    .const 'Sub' $P2588 = "174_1299602563.879" 
    capture_lex $P2588
    $P2588()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "_block2587"  :anon :subid("174_1299602563.879") :outer("165_1299602563.879")
.annotate 'line', 1051
    nqp_get_sc_object $P2589, "1299602559.16", 8
    .local pmc type_obj
    set type_obj, $P2589
    set_hll_global "NQPModuleHOW", type_obj
    set_global "$?CLASS", type_obj
    get_how $P2590, type_obj
    get_hll_global $P2591, "KnowHOWAttribute"
    $P2592 = $P2591."new"("$!name" :named("name"))
    $P2590."add_attribute"(type_obj, $P2592)
    get_how $P2593, type_obj
    get_hll_global $P2594, "KnowHOWAttribute"
    $P2595 = $P2594."new"("$!composed" :named("name"))
    $P2593."add_attribute"(type_obj, $P2595)
    get_how $P2596, type_obj
    .const 'Sub' $P2597 = "166_1299602563.879" 
    $P2596."add_method"(type_obj, "new", $P2597)
    get_how $P2598, type_obj
    .const 'Sub' $P2599 = "167_1299602563.879" 
    $P2598."add_method"(type_obj, "BUILD", $P2599)
    get_how $P2600, type_obj
    .const 'Sub' $P2601 = "168_1299602563.879" 
    $P2600."add_method"(type_obj, "new_type", $P2601)
    get_how $P2602, type_obj
    .const 'Sub' $P2603 = "169_1299602563.879" 
    $P2602."add_method"(type_obj, "add_method", $P2603)
    get_how $P2604, type_obj
    .const 'Sub' $P2605 = "170_1299602563.879" 
    $P2604."add_method"(type_obj, "add_multi_method", $P2605)
    get_how $P2606, type_obj
    .const 'Sub' $P2607 = "171_1299602563.879" 
    $P2606."add_method"(type_obj, "add_attribute", $P2607)
    get_how $P2608, type_obj
    .const 'Sub' $P2609 = "172_1299602563.879" 
    $P2608."add_method"(type_obj, "compose", $P2609)
    get_how $P2610, type_obj
    .const 'Sub' $P2611 = "173_1299602563.879" 
    $P2610."add_method"(type_obj, "name", $P2611)
    get_how $P2612, type_obj
    $P2613 = $P2612."compose"(type_obj)
    .return ($P2613)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "new"  :subid("166_1299602563.879") :outer("165_1299602563.879")
    .param pmc param_2530
    .param pmc param_2531 :optional :named("name")
    .param int has_param_2531 :opt_flag
.annotate 'line', 1055
    .lex "self", param_2530
    if has_param_2531, optparam_406
    new $P2532, "Undef"
    set param_2531, $P2532
  optparam_406:
    .lex "$name", param_2531
.annotate 'line', 1056
    new $P2533, "Undef"
    .lex "$obj", $P2533
    find_lex $P2534, "self"
    repr_instance_of $P2535, $P2534
    store_lex "$obj", $P2535
.annotate 'line', 1057
    find_lex $P2536, "$obj"
    find_lex $P2537, "$name"
    $P2536."BUILD"($P2537 :named("name"))
    find_lex $P2538, "$obj"
.annotate 'line', 1055
    .return ($P2538)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "BUILD"  :subid("167_1299602563.879") :outer("165_1299602563.879")
    .param pmc param_2540
    .param pmc param_2541 :optional :named("name")
    .param int has_param_2541 :opt_flag
.annotate 'line', 1061
    .lex "self", param_2540
    if has_param_2541, optparam_407
    new $P2542, "Undef"
    set param_2541, $P2542
  optparam_407:
    .lex "$name", param_2541
.annotate 'line', 1062
    find_lex $P2543, "$name"
    find_lex $P2544, "self"
    get_global $P2545, "$?CLASS"
    setattribute $P2544, $P2545, "$!name", $P2543
.annotate 'line', 1061
    .return ($P2543)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "new_type"  :subid("168_1299602563.879") :outer("165_1299602563.879")
    .param pmc param_2547
    .param pmc param_2548 :optional :named("name")
    .param int has_param_2548 :opt_flag
    .param pmc param_2550 :optional :named("repr")
    .param int has_param_2550 :opt_flag
.annotate 'line', 1067
    .lex "self", param_2547
    if has_param_2548, optparam_408
    new $P2549, "String"
    assign $P2549, "<anon>"
    set param_2548, $P2549
  optparam_408:
    .lex "$name", param_2548
    if has_param_2550, optparam_409
    new $P2551, "String"
    assign $P2551, "P6opaque"
    set param_2550, $P2551
  optparam_409:
    .lex "$repr", param_2550
.annotate 'line', 1068
    new $P2552, "Undef"
    .lex "$metaclass", $P2552
    find_lex $P2553, "self"
    find_lex $P2554, "$name"
    $P2555 = $P2553."new"($P2554 :named("name"))
    store_lex "$metaclass", $P2555
.annotate 'line', 1069
    find_lex $P2556, "$metaclass"
    find_lex $P2557, "$repr"
    set $S2558, $P2557
    repr_type_object_for $P2559, $P2556, $S2558
.annotate 'line', 1067
    .return ($P2559)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_method"  :subid("169_1299602563.879") :outer("165_1299602563.879")
    .param pmc param_2561
    .param pmc param_2562
    .param pmc param_2563
    .param pmc param_2564
.annotate 'line', 1072
    .lex "self", param_2561
    .lex "$obj", param_2562
    .lex "$name", param_2563
    .lex "$code_obj", param_2564
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_multi_method"  :subid("170_1299602563.879") :outer("165_1299602563.879")
    .param pmc param_2566
    .param pmc param_2567
    .param pmc param_2568
    .param pmc param_2569
.annotate 'line', 1078
    .lex "self", param_2566
    .lex "$obj", param_2567
    .lex "$name", param_2568
    .lex "$code_obj", param_2569
.annotate 'line', 1079
    die "Modules may not have methods"
.annotate 'line', 1078
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_attribute"  :subid("171_1299602563.879") :outer("165_1299602563.879")
    .param pmc param_2571
    .param pmc param_2572
    .param pmc param_2573
.annotate 'line', 1082
    .lex "self", param_2571
    .lex "$obj", param_2572
    .lex "$meta_attr", param_2573
.annotate 'line', 1083
    die "Modules may not have attributes"
.annotate 'line', 1082
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "compose"  :subid("172_1299602563.879") :outer("165_1299602563.879")
    .param pmc param_2575
    .param pmc param_2576
.annotate 'line', 1086
    .lex "self", param_2575
    .lex "$obj", param_2576
.annotate 'line', 1087
    new $P2577, "Integer"
    assign $P2577, 1
    find_lex $P2578, "self"
    get_global $P2579, "$?CLASS"
    setattribute $P2578, $P2579, "$!composed", $P2577
.annotate 'line', 1086
    .return ($P2577)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "name"  :subid("173_1299602563.879") :outer("165_1299602563.879")
    .param pmc param_2581
    .param pmc param_2582
.annotate 'line', 1090
    .lex "self", param_2581
    .lex "$obj", param_2582
    find_lex $P2583, "self"
    get_global $P2584, "$?CLASS"
    getattribute $P2585, $P2583, $P2584, "$!name"
    unless_null $P2585, vivify_410
    new $P2585, "Undef"
  vivify_410:
    .return ($P2585)
.end


.HLL "nqp"

.namespace []
.sub "_block2615" :load :anon :subid("175_1299602563.879")
.annotate 'line', 1
    .const 'Sub' $P2617 = "10_1299602563.879" 
    $P2618 = $P2617()
    .return ($P2618)
.end

