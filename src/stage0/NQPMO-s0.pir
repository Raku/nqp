
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1300051145.567")
.annotate 'line', 0
    get_hll_global $P2518, ["NQPModuleHOW"], "_block2517" 
    capture_lex $P2518
    get_hll_global $P2289, ["RoleToRoleApplier"], "_block2288" 
    capture_lex $P2289
    get_hll_global $P2074, ["RoleToClassApplier"], "_block2073" 
    capture_lex $P2074
    get_hll_global $P1718, ["NQPParametricRoleHOW"], "_block1717" 
    capture_lex $P1718
    get_hll_global $P1397, ["NQPConcreteRoleHOW"], "_block1396" 
    capture_lex $P1397
    get_hll_global $P1186, ["NQPAttribute"], "_block1185" 
    capture_lex $P1186
    get_hll_global $P1099, ["NQPNativeHOW"], "_block1098" 
    capture_lex $P1099
    get_hll_global $P42, ["NQPClassHOW"], "_block41" 
    capture_lex $P42
    get_hll_global $P17, ["KnowHOWAttribute"], "_block16" 
    capture_lex $P17
.annotate 'line', 1
    getinterp $P13
    get_class $P14, "LexPad"
    get_class $P15, "NQPLexPad"
    $P13."hll_map"($P14, $P15)
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
    get_hll_global $P42, ["NQPClassHOW"], "_block41" 
    capture_lex $P42
    $P42()
.annotate 'line', 454
    get_hll_global $P1099, ["NQPNativeHOW"], "_block1098" 
    capture_lex $P1099
    $P1099()
.annotate 'line', 498
    get_hll_global $P1186, ["NQPAttribute"], "_block1185" 
    capture_lex $P1186
    $P1186()
.annotate 'line', 571
    get_hll_global $P1397, ["NQPConcreteRoleHOW"], "_block1396" 
    capture_lex $P1397
    $P1397()
.annotate 'line', 720
    get_hll_global $P1718, ["NQPParametricRoleHOW"], "_block1717" 
    capture_lex $P1718
    $P1718()
.annotate 'line', 889
    get_hll_global $P2074, ["RoleToClassApplier"], "_block2073" 
    capture_lex $P2074
    $P2074()
.annotate 'line', 961
    get_hll_global $P2289, ["RoleToRoleApplier"], "_block2288" 
    capture_lex $P2289
    $P2289()
.annotate 'line', 1051
    get_hll_global $P2518, ["NQPModuleHOW"], "_block2517" 
    capture_lex $P2518
    $P2605 = $P2518()
.annotate 'line', 1
    .return ($P2605)
    .const 'Sub' $P2607 = "175_1300051145.567" 
    .return ($P2607)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post176") :outer("10_1300051145.567")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1300051145.567" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P2611, "1300051141.242"
    isnull $I2612, $P2611
    if $I2612, if_2610
    nqp_get_sc_object $P2641, "1300051141.242", 0
    set_hll_global "KnowHOWAttribute", $P2641
    nqp_get_sc_object $P2642, "1300051141.242", 1
    set_hll_global "NQPClassHOW", $P2642
    nqp_get_sc_object $P2643, "1300051141.242", 2
    set_hll_global "NQPNativeHOW", $P2643
    nqp_get_sc_object $P2644, "1300051141.242", 3
    set_hll_global "NQPAttribute", $P2644
    nqp_get_sc_object $P2645, "1300051141.242", 4
    set_hll_global "NQPConcreteRoleHOW", $P2645
    nqp_get_sc_object $P2646, "1300051141.242", 5
    set_hll_global "NQPParametricRoleHOW", $P2646
    nqp_get_sc_object $P2647, "1300051141.242", 6
    set_hll_global "RoleToClassApplier", $P2647
    nqp_get_sc_object $P2648, "1300051141.242", 7
    set_hll_global "RoleToRoleApplier", $P2648
    nqp_get_sc_object $P2649, "1300051141.242", 8
    set_hll_global "NQPModuleHOW", $P2649
    goto if_2610_end
  if_2610:
    nqp_dynop_setup 
    load_bytecode "nqpmo.pbc"
    nqp_create_sc $P2613, "1300051141.242"
    .local pmc cur_sc
    set cur_sc, $P2613
    get_hll_global $P2614, "KnowHOW"
    $P2615 = $P2614."new_type"("KnowHOWAttribute" :named("name"), "P6str" :named("repr"))
    nqp_set_sc_for_object $P2615, cur_sc
    nqp_set_sc_object "1300051141.242", 0, $P2615
    nqp_get_sc_object $P2616, "1300051141.242", 0
    set_hll_global "KnowHOWAttribute", $P2616
    get_hll_global $P2617, "KnowHOW"
    $P2618 = $P2617."new_type"("NQPClassHOW" :named("name"))
    nqp_set_sc_for_object $P2618, cur_sc
    nqp_set_sc_object "1300051141.242", 1, $P2618
    nqp_get_sc_object $P2619, "1300051141.242", 1
    set_hll_global "NQPClassHOW", $P2619
    get_hll_global $P2620, "KnowHOW"
    $P2621 = $P2620."new_type"("NQPNativeHOW" :named("name"))
    nqp_set_sc_for_object $P2621, cur_sc
    nqp_set_sc_object "1300051141.242", 2, $P2621
    nqp_get_sc_object $P2622, "1300051141.242", 2
    set_hll_global "NQPNativeHOW", $P2622
    get_hll_global $P2623, "KnowHOW"
    $P2624 = $P2623."new_type"("NQPAttribute" :named("name"))
    nqp_set_sc_for_object $P2624, cur_sc
    nqp_set_sc_object "1300051141.242", 3, $P2624
    nqp_get_sc_object $P2625, "1300051141.242", 3
    set_hll_global "NQPAttribute", $P2625
    get_hll_global $P2626, "KnowHOW"
    $P2627 = $P2626."new_type"("NQPConcreteRoleHOW" :named("name"))
    nqp_set_sc_for_object $P2627, cur_sc
    nqp_set_sc_object "1300051141.242", 4, $P2627
    nqp_get_sc_object $P2628, "1300051141.242", 4
    set_hll_global "NQPConcreteRoleHOW", $P2628
    get_hll_global $P2629, "KnowHOW"
    $P2630 = $P2629."new_type"("NQPParametricRoleHOW" :named("name"))
    nqp_set_sc_for_object $P2630, cur_sc
    nqp_set_sc_object "1300051141.242", 5, $P2630
    nqp_get_sc_object $P2631, "1300051141.242", 5
    set_hll_global "NQPParametricRoleHOW", $P2631
    get_hll_global $P2632, "KnowHOW"
    $P2633 = $P2632."new_type"("RoleToClassApplier" :named("name"))
    nqp_set_sc_for_object $P2633, cur_sc
    nqp_set_sc_object "1300051141.242", 6, $P2633
    nqp_get_sc_object $P2634, "1300051141.242", 6
    set_hll_global "RoleToClassApplier", $P2634
    get_hll_global $P2635, "KnowHOW"
    $P2636 = $P2635."new_type"("RoleToRoleApplier" :named("name"))
    nqp_set_sc_for_object $P2636, cur_sc
    nqp_set_sc_object "1300051141.242", 7, $P2636
    nqp_get_sc_object $P2637, "1300051141.242", 7
    set_hll_global "RoleToRoleApplier", $P2637
    get_hll_global $P2638, "KnowHOW"
    $P2639 = $P2638."new_type"("NQPModuleHOW" :named("name"))
    nqp_set_sc_for_object $P2639, cur_sc
    nqp_set_sc_object "1300051141.242", 8, $P2639
    nqp_get_sc_object $P2640, "1300051141.242", 8
    set_hll_global "NQPModuleHOW", $P2640
  if_2610_end:
.end


.HLL "nqp"

.namespace ["KnowHOWAttribute"]
.sub "_block16"  :subid("11_1300051145.567") :outer("10_1300051145.567")
.annotate 'line', 10
    .const 'Sub' $P33 = "14_1300051145.567" 
    capture_lex $P33
    .const 'Sub' $P27 = "13_1300051145.567" 
    capture_lex $P27
    .const 'Sub' $P19 = "12_1300051145.567" 
    capture_lex $P19
    get_global $P18, "$?CLASS"
.annotate 'line', 14
    .const 'Sub' $P27 = "13_1300051145.567" 
    newclosure $P31, $P27
.annotate 'line', 10
    .return ($P31)
.end


.HLL "nqp"

.namespace ["KnowHOWAttribute"]
.sub "" :load :init :subid("post177") :outer("11_1300051145.567")
.annotate 'line', 10
    get_hll_global $P17, ["KnowHOWAttribute"], "_block16" 
    .local pmc block
    set block, $P17
    .const 'Sub' $P33 = "14_1300051145.567" 
    capture_lex $P33
    $P33()
.end


.HLL "nqp"

.namespace ["KnowHOWAttribute"]
.sub "_block32"  :anon :subid("14_1300051145.567") :outer("11_1300051145.567")
.annotate 'line', 10
    nqp_get_sc_object $P34, "1300051141.242", 0
    .local pmc type_obj
    set type_obj, $P34
    set_global "$?CLASS", type_obj
    get_how $P35, type_obj
    .const 'Sub' $P36 = "12_1300051145.567" 
    $P35."add_method"(type_obj, "new", $P36)
    get_how $P37, type_obj
    .const 'Sub' $P38 = "13_1300051145.567" 
    $P37."add_method"(type_obj, "name", $P38)
    get_how $P39, type_obj
    $P40 = $P39."compose"(type_obj)
    .return ($P40)
.end


.HLL "nqp"

.namespace ["KnowHOWAttribute"]
.sub "new"  :subid("12_1300051145.567") :outer("11_1300051145.567")
    .param pmc param_20
    .param pmc param_21 :optional :named("name")
    .param int has_param_21 :opt_flag
.annotate 'line', 11
    .lex "self", param_20
    if has_param_21, optparam_178
    new $P22, "Undef"
    set param_21, $P22
  optparam_178:
    .lex "$name", param_21
.annotate 'line', 12
    find_lex $P23, "$name"
    set $S24, $P23
    get_hll_global $P25, "KnowHOWAttribute"
    repr_box_str $P26, $S24, $P25
.annotate 'line', 11
    .return ($P26)
.end


.HLL "nqp"

.namespace ["KnowHOWAttribute"]
.sub "name"  :subid("13_1300051145.567") :outer("11_1300051145.567")
    .param pmc param_28
.annotate 'line', 14
    .lex "self", param_28
.annotate 'line', 15
    find_lex $P29, "self"
    repr_unbox_str $S30, $P29
.annotate 'line', 14
    .return ($S30)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block41"  :subid("15_1300051145.567") :outer("10_1300051145.567")
.annotate 'line', 26
    .const 'Sub' $P1008 = "70_1300051145.567" 
    capture_lex $P1008
    .const 'Sub' $P971 = "68_1300051145.567" 
    capture_lex $P971
    .const 'Sub' $P935 = "66_1300051145.567" 
    capture_lex $P935
    .const 'Sub' $P901 = "65_1300051145.567" 
    capture_lex $P901
    .const 'Sub' $P864 = "64_1300051145.567" 
    capture_lex $P864
    .const 'Sub' $P857 = "63_1300051145.567" 
    capture_lex $P857
    .const 'Sub' $P834 = "61_1300051145.567" 
    capture_lex $P834
    .const 'Sub' $P828 = "60_1300051145.567" 
    capture_lex $P828
    .const 'Sub' $P822 = "59_1300051145.567" 
    capture_lex $P822
    .const 'Sub' $P799 = "57_1300051145.567" 
    capture_lex $P799
    .const 'Sub' $P792 = "56_1300051145.567" 
    capture_lex $P792
    .const 'Sub' $P778 = "55_1300051145.567" 
    capture_lex $P778
    .const 'Sub' $P729 = "52_1300051145.567" 
    capture_lex $P729
    .const 'Sub' $P684 = "49_1300051145.567" 
    capture_lex $P684
    .const 'Sub' $P647 = "46_1300051145.567" 
    capture_lex $P647
    .const 'Sub' $P517 = "41_1300051145.567" 
    capture_lex $P517
    .const 'Sub' $P413 = "37_1300051145.567" 
    capture_lex $P413
    .const 'Sub' $P387 = "36_1300051145.567" 
    capture_lex $P387
    .const 'Sub' $P353 = "34_1300051145.567" 
    capture_lex $P353
    .const 'Sub' $P315 = "32_1300051145.567" 
    capture_lex $P315
    .const 'Sub' $P294 = "31_1300051145.567" 
    capture_lex $P294
    .const 'Sub' $P273 = "30_1300051145.567" 
    capture_lex $P273
    .const 'Sub' $P254 = "29_1300051145.567" 
    capture_lex $P254
    .const 'Sub' $P240 = "28_1300051145.567" 
    capture_lex $P240
    .const 'Sub' $P233 = "27_1300051145.567" 
    capture_lex $P233
    .const 'Sub' $P223 = "26_1300051145.567" 
    capture_lex $P223
    .const 'Sub' $P86 = "19_1300051145.567" 
    capture_lex $P86
    .const 'Sub' $P44 = "16_1300051145.567" 
    capture_lex $P44
    get_global $P43, "$?CLASS"
.annotate 'line', 235
    .const 'Sub' $P44 = "16_1300051145.567" 
    newclosure $P85, $P44
    .lex "compute_c3_mro", $P85
.annotate 'line', 257
    .const 'Sub' $P86 = "19_1300051145.567" 
    newclosure $P222, $P86
    .lex "c3_merge", $P222
.annotate 'line', 181
    find_lex $P645, "compute_c3_mro"
    find_lex $P646, "c3_merge"
.annotate 'line', 441
    .const 'Sub' $P971 = "68_1300051145.567" 
    newclosure $P1006, $P971
.annotate 'line', 26
    .return ($P1006)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "" :load :init :subid("post179") :outer("15_1300051145.567")
.annotate 'line', 26
    get_hll_global $P42, ["NQPClassHOW"], "_block41" 
    .local pmc block
    set block, $P42
    .const 'Sub' $P1008 = "70_1300051145.567" 
    capture_lex $P1008
    $P1008()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1007"  :anon :subid("70_1300051145.567") :outer("15_1300051145.567")
.annotate 'line', 26
    nqp_get_sc_object $P1009, "1300051141.242", 1
    .local pmc type_obj
    set type_obj, $P1009
    set_global "$?CLASS", type_obj
    get_how $P1010, type_obj
    get_hll_global $P1011, "KnowHOWAttribute"
    $P1012 = $P1011."new"("$!name" :named("name"))
    $P1010."add_attribute"(type_obj, $P1012)
    get_how $P1013, type_obj
    get_hll_global $P1014, "KnowHOWAttribute"
    $P1015 = $P1014."new"("%!attributes" :named("name"))
    $P1013."add_attribute"(type_obj, $P1015)
    get_how $P1016, type_obj
    get_hll_global $P1017, "KnowHOWAttribute"
    $P1018 = $P1017."new"("%!methods" :named("name"))
    $P1016."add_attribute"(type_obj, $P1018)
    get_how $P1019, type_obj
    get_hll_global $P1020, "KnowHOWAttribute"
    $P1021 = $P1020."new"("@!multi_methods_to_incorporate" :named("name"))
    $P1019."add_attribute"(type_obj, $P1021)
    get_how $P1022, type_obj
    get_hll_global $P1023, "KnowHOWAttribute"
    $P1024 = $P1023."new"("@!parents" :named("name"))
    $P1022."add_attribute"(type_obj, $P1024)
    get_how $P1025, type_obj
    get_hll_global $P1026, "KnowHOWAttribute"
    $P1027 = $P1026."new"("@!roles" :named("name"))
    $P1025."add_attribute"(type_obj, $P1027)
    get_how $P1028, type_obj
    get_hll_global $P1029, "KnowHOWAttribute"
    $P1030 = $P1029."new"("@!vtable" :named("name"))
    $P1028."add_attribute"(type_obj, $P1030)
    get_how $P1031, type_obj
    get_hll_global $P1032, "KnowHOWAttribute"
    $P1033 = $P1032."new"("%!method-vtable-slots" :named("name"))
    $P1031."add_attribute"(type_obj, $P1033)
    get_how $P1034, type_obj
    get_hll_global $P1035, "KnowHOWAttribute"
    $P1036 = $P1035."new"("$!composed" :named("name"))
    $P1034."add_attribute"(type_obj, $P1036)
    get_how $P1037, type_obj
    get_hll_global $P1038, "KnowHOWAttribute"
    $P1039 = $P1038."new"("@!mro" :named("name"))
    $P1037."add_attribute"(type_obj, $P1039)
    get_how $P1040, type_obj
    get_hll_global $P1041, "KnowHOWAttribute"
    $P1042 = $P1041."new"("@!done" :named("name"))
    $P1040."add_attribute"(type_obj, $P1042)
    get_how $P1043, type_obj
    get_hll_global $P1044, "KnowHOWAttribute"
    $P1045 = $P1044."new"("%!parrot_vtable_mapping" :named("name"))
    $P1043."add_attribute"(type_obj, $P1045)
    get_how $P1046, type_obj
    .const 'Sub' $P1047 = "26_1300051145.567" 
    $P1046."add_method"(type_obj, "new", $P1047)
    get_how $P1048, type_obj
    .const 'Sub' $P1049 = "27_1300051145.567" 
    $P1048."add_method"(type_obj, "BUILD", $P1049)
    get_how $P1050, type_obj
    .const 'Sub' $P1051 = "28_1300051145.567" 
    $P1050."add_method"(type_obj, "new_type", $P1051)
    get_how $P1052, type_obj
    .const 'Sub' $P1053 = "29_1300051145.567" 
    $P1052."add_method"(type_obj, "add_method", $P1053)
    get_how $P1054, type_obj
    .const 'Sub' $P1055 = "30_1300051145.567" 
    $P1054."add_method"(type_obj, "add_multi_method", $P1055)
    get_how $P1056, type_obj
    .const 'Sub' $P1057 = "31_1300051145.567" 
    $P1056."add_method"(type_obj, "add_attribute", $P1057)
    get_how $P1058, type_obj
    .const 'Sub' $P1059 = "32_1300051145.567" 
    $P1058."add_method"(type_obj, "add_parent", $P1059)
    get_how $P1060, type_obj
    .const 'Sub' $P1061 = "34_1300051145.567" 
    $P1060."add_method"(type_obj, "add_role", $P1061)
    get_how $P1062, type_obj
    .const 'Sub' $P1063 = "36_1300051145.567" 
    $P1062."add_method"(type_obj, "add_parrot_vtable_mapping", $P1063)
    get_how $P1064, type_obj
    .const 'Sub' $P1065 = "37_1300051145.567" 
    $P1064."add_method"(type_obj, "compose", $P1065)
    get_how $P1066, type_obj
    .const 'Sub' $P1067 = "41_1300051145.567" 
    $P1066."add_method"(type_obj, "incorporate_multi_candidates", $P1067)
    get_how $P1068, type_obj
    .const 'Sub' $P1069 = "46_1300051145.567" 
    $P1068."add_method"(type_obj, "publish_type_cache", $P1069)
    get_how $P1070, type_obj
    .const 'Sub' $P1071 = "49_1300051145.567" 
    $P1070."add_method"(type_obj, "publish_method_cache", $P1071)
    get_how $P1072, type_obj
    .const 'Sub' $P1073 = "52_1300051145.567" 
    $P1072."add_method"(type_obj, "publish_parrot_vtable_mapping", $P1073)
    get_how $P1074, type_obj
    .const 'Sub' $P1075 = "55_1300051145.567" 
    $P1074."add_method"(type_obj, "parents", $P1075)
    get_how $P1076, type_obj
    .const 'Sub' $P1077 = "56_1300051145.567" 
    $P1076."add_method"(type_obj, "roles", $P1077)
    get_how $P1078, type_obj
    .const 'Sub' $P1079 = "57_1300051145.567" 
    $P1078."add_method"(type_obj, "methods", $P1079)
    get_how $P1080, type_obj
    .const 'Sub' $P1081 = "59_1300051145.567" 
    $P1080."add_method"(type_obj, "method_table", $P1081)
    get_how $P1082, type_obj
    .const 'Sub' $P1083 = "60_1300051145.567" 
    $P1082."add_method"(type_obj, "name", $P1083)
    get_how $P1084, type_obj
    .const 'Sub' $P1085 = "61_1300051145.567" 
    $P1084."add_method"(type_obj, "attributes", $P1085)
    get_how $P1086, type_obj
    .const 'Sub' $P1087 = "63_1300051145.567" 
    $P1086."add_method"(type_obj, "parrot_vtable_mappings", $P1087)
    get_how $P1088, type_obj
    .const 'Sub' $P1089 = "64_1300051145.567" 
    $P1088."add_method"(type_obj, "isa", $P1089)
    get_how $P1090, type_obj
    .const 'Sub' $P1091 = "65_1300051145.567" 
    $P1090."add_method"(type_obj, "does", $P1091)
    get_how $P1092, type_obj
    .const 'Sub' $P1093 = "66_1300051145.567" 
    $P1092."add_method"(type_obj, "can", $P1093)
    get_how $P1094, type_obj
    .const 'Sub' $P1095 = "68_1300051145.567" 
    $P1094."add_method"(type_obj, "find_method", $P1095)
    get_how $P1096, type_obj
    $P1097 = $P1096."compose"(type_obj)
    .return ($P1097)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "compute_c3_mro"  :subid("16_1300051145.567") :outer("15_1300051145.567")
    .param pmc param_47
.annotate 'line', 235
    .const 'Sub' $P59 = "17_1300051145.567" 
    capture_lex $P59
    new $P46, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P46, control_45
    push_eh $P46
    .lex "$class", param_47
.annotate 'line', 236
    $P48 = root_new ['parrot';'ResizablePMCArray']
    .lex "@immediate_parents", $P48
.annotate 'line', 239
    $P49 = root_new ['parrot';'ResizablePMCArray']
    .lex "@result", $P49
.annotate 'line', 236
    find_lex $P50, "$class"
    get_how $P51, $P50
    find_lex $P52, "$class"
    $P53 = $P51."parents"($P52, 1 :named("local"))
    store_lex "@immediate_parents", $P53
    find_lex $P54, "@result"
.annotate 'line', 240
    find_lex $P56, "@immediate_parents"
    set $N57, $P56
    unless $N57, if_55_end
    .const 'Sub' $P59 = "17_1300051145.567" 
    capture_lex $P59
    $P59()
  if_55_end:
.annotate 'line', 252
    find_lex $P80, "@result"
    find_lex $P81, "$class"
    $P80."unshift"($P81)
.annotate 'line', 253
    new $P82, "Exception"
    set $P82['type'], .CONTROL_RETURN
    find_lex $P83, "@result"
    setattribute $P82, 'payload', $P83
    throw $P82
.annotate 'line', 235
    .return ()
  control_45:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P84, exception, "payload"
    .return ($P84)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block58"  :anon :subid("17_1300051145.567") :outer("16_1300051145.567")
.annotate 'line', 240
    .const 'Sub' $P67 = "18_1300051145.567" 
    capture_lex $P67
.annotate 'line', 243
    $P60 = root_new ['parrot';'ResizablePMCArray']
    .lex "@merge_list", $P60
.annotate 'line', 240
    find_lex $P61, "@merge_list"
.annotate 'line', 244
    find_lex $P63, "@immediate_parents"
    defined $I64, $P63
    unless $I64, for_undef_180
    iter $P62, $P63
    new $P74, 'ExceptionHandler'
    set_label $P74, loop73_handler
    $P74."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P74
  loop73_test:
    unless $P62, loop73_done
    shift $P65, $P62
  loop73_redo:
    .const 'Sub' $P67 = "18_1300051145.567" 
    capture_lex $P67
    $P67($P65)
  loop73_next:
    goto loop73_test
  loop73_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P75, exception, 'type'
    eq $P75, .CONTROL_LOOP_NEXT, loop73_next
    eq $P75, .CONTROL_LOOP_REDO, loop73_redo
  loop73_done:
    pop_eh 
  for_undef_180:
.annotate 'line', 247
    find_lex $P76, "@merge_list"
    find_lex $P77, "@immediate_parents"
    $P76."push"($P77)
.annotate 'line', 248
    find_lex $P78, "@merge_list"
    $P79 = "c3_merge"($P78)
    store_lex "@result", $P79
.annotate 'line', 240
    .return ($P79)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block66"  :anon :subid("18_1300051145.567") :outer("17_1300051145.567")
    .param pmc param_68
.annotate 'line', 244
    .lex "$_", param_68
.annotate 'line', 245
    find_lex $P69, "@merge_list"
    find_lex $P70, "$_"
    $P71 = "compute_c3_mro"($P70)
    $P72 = $P69."push"($P71)
.annotate 'line', 244
    .return ($P72)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "c3_merge"  :subid("19_1300051145.567") :outer("15_1300051145.567")
    .param pmc param_89
.annotate 'line', 257
    .const 'Sub' $P182 = "24_1300051145.567" 
    capture_lex $P182
    .const 'Sub' $P104 = "20_1300051145.567" 
    capture_lex $P104
    new $P88, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P88, control_87
    push_eh $P88
    .lex "@merge_list", param_89
.annotate 'line', 258
    $P90 = root_new ['parrot';'ResizablePMCArray']
    .lex "@result", $P90
.annotate 'line', 259
    new $P91, "Undef"
    .lex "$accepted", $P91
.annotate 'line', 260
    new $P92, "Undef"
    .lex "$something_accepted", $P92
.annotate 'line', 261
    new $P93, "Undef"
    .lex "$cand_count", $P93
.annotate 'line', 304
    new $P94, "Undef"
    .lex "$i", $P94
.annotate 'line', 257
    find_lex $P95, "@result"
    find_lex $P96, "$accepted"
.annotate 'line', 260
    new $P97, "Integer"
    assign $P97, 0
    store_lex "$something_accepted", $P97
.annotate 'line', 261
    new $P98, "Integer"
    assign $P98, 0
    store_lex "$cand_count", $P98
.annotate 'line', 264
    find_lex $P100, "@merge_list"
    defined $I101, $P100
    unless $I101, for_undef_181
    iter $P99, $P100
    new $P165, 'ExceptionHandler'
    set_label $P165, loop164_handler
    $P165."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P165
  loop164_test:
    unless $P99, loop164_done
    shift $P102, $P99
  loop164_redo:
    .const 'Sub' $P104 = "20_1300051145.567" 
    capture_lex $P104
    $P104($P102)
  loop164_next:
    goto loop164_test
  loop164_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P166, exception, 'type'
    eq $P166, .CONTROL_LOOP_NEXT, loop164_next
    eq $P166, .CONTROL_LOOP_REDO, loop164_redo
  loop164_done:
    pop_eh 
  for_undef_181:
.annotate 'line', 294
    find_lex $P168, "$cand_count"
    set $N169, $P168
    iseq $I170, $N169, 0.0
    unless $I170, if_167_end
.annotate 'line', 295
    new $P171, "Exception"
    set $P171['type'], .CONTROL_RETURN
    find_lex $P172, "@result"
    setattribute $P171, 'payload', $P172
    throw $P171
  if_167_end:
.annotate 'line', 299
    find_lex $P174, "$something_accepted"
    if $P174, unless_173_end
.annotate 'line', 300
    die "Could not build C3 linearization: ambiguous hierarchy"
  unless_173_end:
.annotate 'line', 304
    new $P175, "Integer"
    assign $P175, 0
    store_lex "$i", $P175
.annotate 'line', 305
    new $P213, 'ExceptionHandler'
    set_label $P213, loop212_handler
    $P213."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P213
  loop212_test:
    find_lex $P176, "$i"
    set $N177, $P176
    find_lex $P178, "@merge_list"
    set $N179, $P178
    islt $I180, $N177, $N179
    unless $I180, loop212_done
  loop212_redo:
    .const 'Sub' $P182 = "24_1300051145.567" 
    capture_lex $P182
    $P182()
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
.annotate 'line', 318
    find_lex $P215, "@merge_list"
    $P216 = "c3_merge"($P215)
    store_lex "@result", $P216
.annotate 'line', 319
    find_lex $P217, "@result"
    find_lex $P218, "$accepted"
    $P217."unshift"($P218)
.annotate 'line', 320
    new $P219, "Exception"
    set $P219['type'], .CONTROL_RETURN
    find_lex $P220, "@result"
    setattribute $P219, 'payload', $P220
    throw $P219
.annotate 'line', 257
    .return ()
  control_87:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P221, exception, "payload"
    .return ($P221)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block103"  :anon :subid("20_1300051145.567") :outer("19_1300051145.567")
    .param pmc param_106
.annotate 'line', 264
    .const 'Sub' $P113 = "21_1300051145.567" 
    capture_lex $P113
.annotate 'line', 265
    $P105 = root_new ['parrot';'ResizablePMCArray']
    .lex "@cand_list", $P105
    .lex "$_", param_106
    find_lex $P107, "$_"
    store_lex "@cand_list", $P107
.annotate 'line', 266
    find_lex $P110, "@cand_list"
    set $N111, $P110
    if $N111, if_109
    new $P108, 'Float'
    set $P108, $N111
    goto if_109_end
  if_109:
    .const 'Sub' $P113 = "21_1300051145.567" 
    capture_lex $P113
    $P163 = $P113()
    set $P108, $P163
  if_109_end:
.annotate 'line', 264
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block112"  :anon :subid("21_1300051145.567") :outer("20_1300051145.567")
.annotate 'line', 266
    .const 'Sub' $P126 = "22_1300051145.567" 
    capture_lex $P126
.annotate 'line', 267
    new $P114, "Undef"
    .lex "$rejected", $P114
.annotate 'line', 268
    new $P115, "Undef"
    .lex "$cand_class", $P115
.annotate 'line', 267
    new $P116, "Integer"
    assign $P116, 0
    store_lex "$rejected", $P116
.annotate 'line', 268
    find_lex $P117, "@cand_list"
    unless_null $P117, vivify_182
    $P117 = root_new ['parrot';'ResizablePMCArray']
  vivify_182:
    set $P118, $P117[0]
    unless_null $P118, vivify_183
    new $P118, "Undef"
  vivify_183:
    store_lex "$cand_class", $P118
.annotate 'line', 269
    find_lex $P119, "$cand_count"
    add $P120, $P119, 1
    store_lex "$cand_count", $P120
.annotate 'line', 270
    find_lex $P122, "@merge_list"
    defined $I123, $P122
    unless $I123, for_undef_184
    iter $P121, $P122
    new $P161, 'ExceptionHandler'
    set_label $P161, loop160_handler
    $P161."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P161
  loop160_test:
    unless $P121, loop160_done
    shift $P124, $P121
  loop160_redo:
    .const 'Sub' $P126 = "22_1300051145.567" 
    capture_lex $P126
    $P126($P124)
  loop160_next:
    goto loop160_test
  loop160_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P162, exception, 'type'
    eq $P162, .CONTROL_LOOP_NEXT, loop160_next
    eq $P162, .CONTROL_LOOP_REDO, loop160_redo
  loop160_done:
    pop_eh 
  for_undef_184:
.annotate 'line', 266
    .return ($P121)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block125"  :anon :subid("22_1300051145.567") :outer("21_1300051145.567")
    .param pmc param_127
.annotate 'line', 270
    .const 'Sub' $P133 = "23_1300051145.567" 
    capture_lex $P133
    .lex "$_", param_127
.annotate 'line', 272
    find_lex $P129, "$_"
    find_lex $P130, "@cand_list"
    issame $I131, $P129, $P130
    if $I131, unless_128_end
    .const 'Sub' $P133 = "23_1300051145.567" 
    capture_lex $P133
    $P133()
  unless_128_end:
.annotate 'line', 284
    find_lex $P156, "$rejected"
    unless $P156, unless_155
    set $P154, $P156
    goto unless_155_end
  unless_155:
.annotate 'line', 285
    find_lex $P157, "$cand_class"
    store_lex "$accepted", $P157
.annotate 'line', 286
    new $P158, "Integer"
    assign $P158, 1
    store_lex "$something_accepted", $P158
.annotate 'line', 287
    set $I159, .CONTROL_LOOP_LAST
    die 0, $I159
  unless_155_end:
.annotate 'line', 270
    .return ($P154)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block132"  :anon :subid("23_1300051145.567") :outer("22_1300051145.567")
.annotate 'line', 274
    new $P134, "Undef"
    .lex "$cur_pos", $P134
    new $P135, "Integer"
    assign $P135, 1
    store_lex "$cur_pos", $P135
.annotate 'line', 275
    new $P152, 'ExceptionHandler'
    set_label $P152, loop151_handler
    $P152."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P152
  loop151_test:
    find_lex $P136, "$cur_pos"
    set $N137, $P136
    find_lex $P138, "$_"
    set $N139, $P138
    isle $I140, $N137, $N139
    unless $I140, loop151_done
  loop151_redo:
.annotate 'line', 276
    find_lex $P142, "$cur_pos"
    set $I143, $P142
    find_lex $P144, "$_"
    unless_null $P144, vivify_185
    $P144 = root_new ['parrot';'ResizablePMCArray']
  vivify_185:
    set $P145, $P144[$I143]
    unless_null $P145, vivify_186
    new $P145, "Undef"
  vivify_186:
    find_lex $P146, "$cand_class"
    issame $I147, $P145, $P146
    unless $I147, if_141_end
.annotate 'line', 277
    new $P148, "Integer"
    assign $P148, 1
    store_lex "$rejected", $P148
  if_141_end:
.annotate 'line', 279
    find_lex $P149, "$cur_pos"
    add $P150, $P149, 1
    store_lex "$cur_pos", $P150
  loop151_next:
.annotate 'line', 275
    goto loop151_test
  loop151_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P153, exception, 'type'
    eq $P153, .CONTROL_LOOP_NEXT, loop151_next
    eq $P153, .CONTROL_LOOP_REDO, loop151_redo
  loop151_done:
    pop_eh 
.annotate 'line', 272
    .return ($I140)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block181"  :anon :subid("24_1300051145.567") :outer("19_1300051145.567")
.annotate 'line', 305
    .const 'Sub' $P193 = "25_1300051145.567" 
    capture_lex $P193
.annotate 'line', 306
    $P183 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new_list", $P183
.annotate 'line', 305
    find_lex $P184, "@new_list"
.annotate 'line', 307
    find_lex $P186, "$i"
    set $I187, $P186
    find_lex $P188, "@merge_list"
    unless_null $P188, vivify_187
    $P188 = root_new ['parrot';'ResizablePMCArray']
  vivify_187:
    set $P189, $P188[$I187]
    unless_null $P189, vivify_188
    new $P189, "Undef"
  vivify_188:
    defined $I190, $P189
    unless $I190, for_undef_189
    iter $P185, $P189
    new $P204, 'ExceptionHandler'
    set_label $P204, loop203_handler
    $P204."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P204
  loop203_test:
    unless $P185, loop203_done
    shift $P191, $P185
  loop203_redo:
    .const 'Sub' $P193 = "25_1300051145.567" 
    capture_lex $P193
    $P193($P191)
  loop203_next:
    goto loop203_test
  loop203_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P205, exception, 'type'
    eq $P205, .CONTROL_LOOP_NEXT, loop203_next
    eq $P205, .CONTROL_LOOP_REDO, loop203_redo
  loop203_done:
    pop_eh 
  for_undef_189:
.annotate 'line', 312
    find_lex $P206, "@new_list"
    find_lex $P207, "$i"
    set $I208, $P207
    find_lex $P209, "@merge_list"
    unless_null $P209, vivify_190
    $P209 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@merge_list", $P209
  vivify_190:
    set $P209[$I208], $P206
.annotate 'line', 313
    find_lex $P210, "$i"
    add $P211, $P210, 1
    store_lex "$i", $P211
.annotate 'line', 305
    .return ($P211)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block192"  :anon :subid("25_1300051145.567") :outer("24_1300051145.567")
    .param pmc param_194
.annotate 'line', 307
    .lex "$_", param_194
.annotate 'line', 308
    find_lex $P197, "$_"
    find_lex $P198, "$accepted"
    issame $I199, $P197, $P198
    unless $I199, unless_196
    new $P195, 'Integer'
    set $P195, $I199
    goto unless_196_end
  unless_196:
.annotate 'line', 309
    find_lex $P200, "@new_list"
    find_lex $P201, "$_"
    $P202 = $P200."push"($P201)
.annotate 'line', 308
    set $P195, $P202
  unless_196_end:
.annotate 'line', 307
    .return ($P195)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "new"  :subid("26_1300051145.567") :outer("15_1300051145.567")
    .param pmc param_224
    .param pmc param_225 :optional :named("name")
    .param int has_param_225 :opt_flag
.annotate 'line', 62
    .lex "self", param_224
    if has_param_225, optparam_191
    new $P226, "Undef"
    set param_225, $P226
  optparam_191:
    .lex "$name", param_225
.annotate 'line', 63
    new $P227, "Undef"
    .lex "$obj", $P227
    find_lex $P228, "self"
    repr_instance_of $P229, $P228
    store_lex "$obj", $P229
.annotate 'line', 64
    find_lex $P230, "$obj"
    find_lex $P231, "$name"
    $P230."BUILD"($P231 :named("name"))
    find_lex $P232, "$obj"
.annotate 'line', 62
    .return ($P232)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "BUILD"  :subid("27_1300051145.567") :outer("15_1300051145.567")
    .param pmc param_234
    .param pmc param_235 :optional :named("name")
    .param int has_param_235 :opt_flag
.annotate 'line', 68
    .lex "self", param_234
    if has_param_235, optparam_192
    new $P236, "Undef"
    set param_235, $P236
  optparam_192:
    .lex "$name", param_235
.annotate 'line', 69
    find_lex $P237, "$name"
    find_lex $P238, "self"
    get_global $P239, "$?CLASS"
    setattribute $P238, $P239, "$!name", $P237
.annotate 'line', 68
    .return ($P237)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "new_type"  :subid("28_1300051145.567") :outer("15_1300051145.567")
    .param pmc param_241
    .param pmc param_242 :optional :named("name")
    .param int has_param_242 :opt_flag
    .param pmc param_244 :optional :named("repr")
    .param int has_param_244 :opt_flag
.annotate 'line', 74
    .lex "self", param_241
    if has_param_242, optparam_193
    new $P243, "String"
    assign $P243, "<anon>"
    set param_242, $P243
  optparam_193:
    .lex "$name", param_242
    if has_param_244, optparam_194
    new $P245, "String"
    assign $P245, "P6opaque"
    set param_244, $P245
  optparam_194:
    .lex "$repr", param_244
.annotate 'line', 75
    new $P246, "Undef"
    .lex "$metaclass", $P246
    find_lex $P247, "self"
    find_lex $P248, "$name"
    $P249 = $P247."new"($P248 :named("name"))
    store_lex "$metaclass", $P249
.annotate 'line', 76
    find_lex $P250, "$metaclass"
    find_lex $P251, "$repr"
    set $S252, $P251
    repr_type_object_for $P253, $P250, $S252
.annotate 'line', 74
    .return ($P253)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_method"  :subid("29_1300051145.567") :outer("15_1300051145.567")
    .param pmc param_255
    .param pmc param_256
    .param pmc param_257
    .param pmc param_258
.annotate 'line', 79
    .lex "self", param_255
    .lex "$obj", param_256
    .lex "$name", param_257
    .lex "$code_obj", param_258
.annotate 'line', 80
    find_lex $P260, "$name"
    find_lex $P261, "self"
    get_global $P262, "$?CLASS"
    getattribute $P263, $P261, $P262, "%!methods"
    unless_null $P263, vivify_195
    $P263 = root_new ['parrot';'Hash']
  vivify_195:
    set $P264, $P263[$P260]
    unless_null $P264, vivify_196
    new $P264, "Undef"
  vivify_196:
    unless $P264, if_259_end
.annotate 'line', 81
    new $P265, "String"
    assign $P265, "This class already has a method named "
    find_lex $P266, "$name"
    concat $P267, $P265, $P266
    die $P267
  if_259_end:
.annotate 'line', 83
    find_lex $P268, "$code_obj"
    find_lex $P269, "$name"
    find_lex $P270, "self"
    get_global $P271, "$?CLASS"
    getattribute $P272, $P270, $P271, "%!methods"
    unless_null $P272, vivify_197
    $P272 = root_new ['parrot';'Hash']
    setattribute $P270, $P271, "%!methods", $P272
  vivify_197:
    set $P272[$P269], $P268
.annotate 'line', 79
    .return ($P268)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_multi_method"  :subid("30_1300051145.567") :outer("15_1300051145.567")
    .param pmc param_274
    .param pmc param_275
    .param pmc param_276
    .param pmc param_277
.annotate 'line', 86
    .lex "self", param_274
    .lex "$obj", param_275
    .lex "$name", param_276
    .lex "$code_obj", param_277
.annotate 'line', 92
    $P278 = root_new ['parrot';'Hash']
    .lex "%todo", $P278
.annotate 'line', 86
    find_lex $P279, "%todo"
.annotate 'line', 93
    find_lex $P280, "$name"
    find_lex $P281, "%todo"
    unless_null $P281, vivify_198
    $P281 = root_new ['parrot';'Hash']
    store_lex "%todo", $P281
  vivify_198:
    set $P281["name"], $P280
.annotate 'line', 94
    find_lex $P282, "$code_obj"
    find_lex $P283, "%todo"
    unless_null $P283, vivify_199
    $P283 = root_new ['parrot';'Hash']
    store_lex "%todo", $P283
  vivify_199:
    set $P283["code"], $P282
.annotate 'line', 95
    find_lex $P284, "%todo"
    find_lex $P285, "self"
    get_global $P286, "$?CLASS"
    getattribute $P287, $P285, $P286, "@!multi_methods_to_incorporate"
    unless_null $P287, vivify_200
    $P287 = root_new ['parrot';'ResizablePMCArray']
  vivify_200:
    set $N288, $P287
    set $I289, $N288
    find_lex $P290, "self"
    get_global $P291, "$?CLASS"
    getattribute $P292, $P290, $P291, "@!multi_methods_to_incorporate"
    unless_null $P292, vivify_201
    $P292 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P290, $P291, "@!multi_methods_to_incorporate", $P292
  vivify_201:
    set $P292[$I289], $P284
    find_lex $P293, "$code_obj"
.annotate 'line', 86
    .return ($P293)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_attribute"  :subid("31_1300051145.567") :outer("15_1300051145.567")
    .param pmc param_295
    .param pmc param_296
    .param pmc param_297
.annotate 'line', 99
    .lex "self", param_295
    .lex "$obj", param_296
    .lex "$meta_attr", param_297
.annotate 'line', 100
    new $P298, "Undef"
    .lex "$name", $P298
    find_lex $P299, "$meta_attr"
    $P300 = $P299."name"()
    store_lex "$name", $P300
.annotate 'line', 101
    find_lex $P302, "$name"
    find_lex $P303, "self"
    get_global $P304, "$?CLASS"
    getattribute $P305, $P303, $P304, "%!attributes"
    unless_null $P305, vivify_202
    $P305 = root_new ['parrot';'Hash']
  vivify_202:
    set $P306, $P305[$P302]
    unless_null $P306, vivify_203
    new $P306, "Undef"
  vivify_203:
    unless $P306, if_301_end
.annotate 'line', 102
    new $P307, "String"
    assign $P307, "This class already has an attribute named "
    find_lex $P308, "$name"
    concat $P309, $P307, $P308
    die $P309
  if_301_end:
.annotate 'line', 104
    find_lex $P310, "$meta_attr"
    find_lex $P311, "$name"
    find_lex $P312, "self"
    get_global $P313, "$?CLASS"
    getattribute $P314, $P312, $P313, "%!attributes"
    unless_null $P314, vivify_204
    $P314 = root_new ['parrot';'Hash']
    setattribute $P312, $P313, "%!attributes", $P314
  vivify_204:
    set $P314[$P311], $P310
.annotate 'line', 99
    .return ($P310)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_parent"  :subid("32_1300051145.567") :outer("15_1300051145.567")
    .param pmc param_316
    .param pmc param_317
    .param pmc param_318
.annotate 'line', 107
    .const 'Sub' $P330 = "33_1300051145.567" 
    capture_lex $P330
    .lex "self", param_316
    .lex "$obj", param_317
    .lex "$parent", param_318
.annotate 'line', 108
    find_lex $P320, "self"
    get_global $P321, "$?CLASS"
    getattribute $P322, $P320, $P321, "$!composed"
    unless_null $P322, vivify_205
    new $P322, "Undef"
  vivify_205:
    unless $P322, if_319_end
.annotate 'line', 109
    die "NQPClassHOW does not support adding parents after being composed."
  if_319_end:
.annotate 'line', 111
    find_lex $P324, "self"
    get_global $P325, "$?CLASS"
    getattribute $P326, $P324, $P325, "@!parents"
    unless_null $P326, vivify_206
    $P326 = root_new ['parrot';'ResizablePMCArray']
  vivify_206:
    defined $I327, $P326
    unless $I327, for_undef_207
    iter $P323, $P326
    new $P342, 'ExceptionHandler'
    set_label $P342, loop341_handler
    $P342."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P342
  loop341_test:
    unless $P323, loop341_done
    shift $P328, $P323
  loop341_redo:
    .const 'Sub' $P330 = "33_1300051145.567" 
    capture_lex $P330
    $P330($P328)
  loop341_next:
    goto loop341_test
  loop341_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P343, exception, 'type'
    eq $P343, .CONTROL_LOOP_NEXT, loop341_next
    eq $P343, .CONTROL_LOOP_REDO, loop341_redo
  loop341_done:
    pop_eh 
  for_undef_207:
.annotate 'line', 116
    find_lex $P344, "$parent"
    find_lex $P345, "self"
    get_global $P346, "$?CLASS"
    getattribute $P347, $P345, $P346, "@!parents"
    unless_null $P347, vivify_208
    $P347 = root_new ['parrot';'ResizablePMCArray']
  vivify_208:
    set $N348, $P347
    set $I349, $N348
    find_lex $P350, "self"
    get_global $P351, "$?CLASS"
    getattribute $P352, $P350, $P351, "@!parents"
    unless_null $P352, vivify_209
    $P352 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P350, $P351, "@!parents", $P352
  vivify_209:
    set $P352[$I349], $P344
.annotate 'line', 107
    .return ($P344)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block329"  :anon :subid("33_1300051145.567") :outer("32_1300051145.567")
    .param pmc param_331
.annotate 'line', 111
    .lex "$_", param_331
.annotate 'line', 112
    find_lex $P334, "$_"
    find_lex $P335, "$parent"
    issame $I336, $P334, $P335
    if $I336, if_333
    new $P332, 'Integer'
    set $P332, $I336
    goto if_333_end
  if_333:
.annotate 'line', 113
    new $P337, "String"
    assign $P337, "Already have "
    find_lex $P338, "$parent"
    concat $P339, $P337, $P338
    concat $P340, $P339, " as a parent class."
    die $P340
  if_333_end:
.annotate 'line', 111
    .return ($P332)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_role"  :subid("34_1300051145.567") :outer("15_1300051145.567")
    .param pmc param_354
    .param pmc param_355
    .param pmc param_356
.annotate 'line', 119
    .const 'Sub' $P364 = "35_1300051145.567" 
    capture_lex $P364
    .lex "self", param_354
    .lex "$obj", param_355
    .lex "$role", param_356
.annotate 'line', 120
    find_lex $P358, "self"
    get_global $P359, "$?CLASS"
    getattribute $P360, $P358, $P359, "@!roles"
    unless_null $P360, vivify_210
    $P360 = root_new ['parrot';'ResizablePMCArray']
  vivify_210:
    defined $I361, $P360
    unless $I361, for_undef_211
    iter $P357, $P360
    new $P376, 'ExceptionHandler'
    set_label $P376, loop375_handler
    $P376."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P376
  loop375_test:
    unless $P357, loop375_done
    shift $P362, $P357
  loop375_redo:
    .const 'Sub' $P364 = "35_1300051145.567" 
    capture_lex $P364
    $P364($P362)
  loop375_next:
    goto loop375_test
  loop375_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P377, exception, 'type'
    eq $P377, .CONTROL_LOOP_NEXT, loop375_next
    eq $P377, .CONTROL_LOOP_REDO, loop375_redo
  loop375_done:
    pop_eh 
  for_undef_211:
.annotate 'line', 125
    find_lex $P378, "$role"
    find_lex $P379, "self"
    get_global $P380, "$?CLASS"
    getattribute $P381, $P379, $P380, "@!roles"
    unless_null $P381, vivify_212
    $P381 = root_new ['parrot';'ResizablePMCArray']
  vivify_212:
    set $N382, $P381
    set $I383, $N382
    find_lex $P384, "self"
    get_global $P385, "$?CLASS"
    getattribute $P386, $P384, $P385, "@!roles"
    unless_null $P386, vivify_213
    $P386 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P384, $P385, "@!roles", $P386
  vivify_213:
    set $P386[$I383], $P378
.annotate 'line', 119
    .return ($P378)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block363"  :anon :subid("35_1300051145.567") :outer("34_1300051145.567")
    .param pmc param_365
.annotate 'line', 120
    .lex "$_", param_365
.annotate 'line', 121
    find_lex $P368, "$_"
    find_lex $P369, "$role"
    issame $I370, $P368, $P369
    if $I370, if_367
    new $P366, 'Integer'
    set $P366, $I370
    goto if_367_end
  if_367:
.annotate 'line', 122
    new $P371, "String"
    assign $P371, "The role "
    find_lex $P372, "$role"
    concat $P373, $P371, $P372
    concat $P374, $P373, " has already been added."
    die $P374
  if_367_end:
.annotate 'line', 120
    .return ($P366)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_parrot_vtable_mapping"  :subid("36_1300051145.567") :outer("15_1300051145.567")
    .param pmc param_388
    .param pmc param_389
    .param pmc param_390
    .param pmc param_391
.annotate 'line', 128
    .lex "self", param_388
    .lex "$obj", param_389
    .lex "$name", param_390
    .lex "$meth", param_391
.annotate 'line', 129
    find_lex $P393, "$name"
    find_lex $P394, "self"
    get_global $P395, "$?CLASS"
    getattribute $P396, $P394, $P395, "%!parrot_vtable_mapping"
    unless_null $P396, vivify_214
    $P396 = root_new ['parrot';'Hash']
  vivify_214:
    set $P397, $P396[$P393]
    unless_null $P397, vivify_215
    new $P397, "Undef"
  vivify_215:
    defined $I398, $P397
    unless $I398, if_392_end
.annotate 'line', 130
    new $P399, "String"
    assign $P399, "Class '"
    find_lex $P400, "self"
    get_global $P401, "$?CLASS"
    getattribute $P402, $P400, $P401, "$!name"
    unless_null $P402, vivify_216
    new $P402, "Undef"
  vivify_216:
    concat $P403, $P399, $P402
    concat $P404, $P403, "' already has a Parrot v-table override for '"
    find_lex $P405, "$name"
    concat $P406, $P404, $P405
.annotate 'line', 131
    concat $P407, $P406, "'"
.annotate 'line', 132
    die $P407
  if_392_end:
.annotate 'line', 134
    find_lex $P408, "$meth"
    find_lex $P409, "$name"
    find_lex $P410, "self"
    get_global $P411, "$?CLASS"
    getattribute $P412, $P410, $P411, "%!parrot_vtable_mapping"
    unless_null $P412, vivify_217
    $P412 = root_new ['parrot';'Hash']
    setattribute $P410, $P411, "%!parrot_vtable_mapping", $P412
  vivify_217:
    set $P412[$P409], $P408
.annotate 'line', 128
    .return ($P408)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "compose"  :subid("37_1300051145.567") :outer("15_1300051145.567")
    .param pmc param_414
    .param pmc param_415
.annotate 'line', 137
    .const 'Sub' $P502 = "40_1300051145.567" 
    capture_lex $P502
    .const 'Sub' $P421 = "38_1300051145.567" 
    capture_lex $P421
    .lex "self", param_414
    .lex "$obj", param_415
.annotate 'line', 141
    find_lex $P417, "self"
    get_global $P418, "$?CLASS"
    getattribute $P419, $P417, $P418, "@!roles"
    unless_null $P419, vivify_218
    $P419 = root_new ['parrot';'ResizablePMCArray']
  vivify_218:
    unless $P419, if_416_end
    .const 'Sub' $P421 = "38_1300051145.567" 
    capture_lex $P421
    $P421()
  if_416_end:
.annotate 'line', 154
    find_lex $P469, "self"
    get_global $P470, "$?CLASS"
    getattribute $P471, $P469, $P470, "@!parents"
    unless_null $P471, vivify_225
    $P471 = root_new ['parrot';'ResizablePMCArray']
  vivify_225:
    set $N472, $P471
    iseq $I473, $N472, 0.0
    if $I473, if_468
    new $P467, 'Integer'
    set $P467, $I473
    goto if_468_end
  if_468:
    find_lex $P474, "self"
    get_global $P475, "$?CLASS"
    getattribute $P476, $P474, $P475, "$!name"
    unless_null $P476, vivify_226
    new $P476, "Undef"
  vivify_226:
    set $S477, $P476
    isne $I478, $S477, "NQPMu"
    new $P467, 'Integer'
    set $P467, $I478
  if_468_end:
    unless $P467, if_466_end
.annotate 'line', 155
    find_lex $P479, "self"
    find_lex $P480, "$obj"
    get_hll_global $P481, "NQPMu"
    $P479."add_parent"($P480, $P481)
  if_466_end:
.annotate 'line', 160
    find_lex $P483, "self"
    get_global $P484, "$?CLASS"
    getattribute $P485, $P483, $P484, "$!composed"
    unless_null $P485, vivify_227
    new $P485, "Undef"
  vivify_227:
    if $P485, unless_482_end
.annotate 'line', 161
    find_lex $P486, "$obj"
    $P487 = "compute_c3_mro"($P486)
    find_lex $P488, "self"
    get_global $P489, "$?CLASS"
    setattribute $P488, $P489, "@!mro", $P487
.annotate 'line', 162
    new $P490, "Integer"
    assign $P490, 1
    find_lex $P491, "self"
    get_global $P492, "$?CLASS"
    setattribute $P491, $P492, "$!composed", $P490
  unless_482_end:
.annotate 'line', 166
    find_lex $P493, "self"
    find_lex $P494, "$obj"
    $P493."incorporate_multi_candidates"($P494)
.annotate 'line', 169
    find_lex $P496, "self"
    find_lex $P497, "$obj"
    $P498 = $P496."attributes"($P497, "0" :named("local"))
    defined $I499, $P498
    unless $I499, for_undef_228
    iter $P495, $P498
    new $P508, 'ExceptionHandler'
    set_label $P508, loop507_handler
    $P508."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P508
  loop507_test:
    unless $P495, loop507_done
    shift $P500, $P495
  loop507_redo:
    .const 'Sub' $P502 = "40_1300051145.567" 
    capture_lex $P502
    $P502($P500)
  loop507_next:
    goto loop507_test
  loop507_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P509, exception, 'type'
    eq $P509, .CONTROL_LOOP_NEXT, loop507_next
    eq $P509, .CONTROL_LOOP_REDO, loop507_redo
  loop507_done:
    pop_eh 
  for_undef_228:
.annotate 'line', 172
    find_lex $P510, "self"
    find_lex $P511, "$obj"
    $P510."publish_type_cache"($P511)
.annotate 'line', 173
    find_lex $P512, "self"
    find_lex $P513, "$obj"
    $P512."publish_method_cache"($P513)
.annotate 'line', 176
    find_lex $P514, "self"
    find_lex $P515, "$obj"
    $P514."publish_parrot_vtable_mapping"($P515)
    find_lex $P516, "$obj"
.annotate 'line', 137
    .return ($P516)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block420"  :anon :subid("38_1300051145.567") :outer("37_1300051145.567")
.annotate 'line', 141
    .const 'Sub' $P431 = "39_1300051145.567" 
    capture_lex $P431
.annotate 'line', 142
    $P422 = root_new ['parrot';'ResizablePMCArray']
    .lex "@instantiated_roles", $P422
.annotate 'line', 141
    find_lex $P423, "@instantiated_roles"
.annotate 'line', 143
    find_lex $P425, "self"
    get_global $P426, "$?CLASS"
    getattribute $P427, $P425, $P426, "@!roles"
    unless_null $P427, vivify_219
    $P427 = root_new ['parrot';'ResizablePMCArray']
  vivify_219:
    defined $I428, $P427
    unless $I428, for_undef_220
    iter $P424, $P427
    new $P460, 'ExceptionHandler'
    set_label $P460, loop459_handler
    $P460."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P460
  loop459_test:
    unless $P424, loop459_done
    shift $P429, $P424
  loop459_redo:
    .const 'Sub' $P431 = "39_1300051145.567" 
    capture_lex $P431
    $P431($P429)
  loop459_next:
    goto loop459_test
  loop459_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P461, exception, 'type'
    eq $P461, .CONTROL_LOOP_NEXT, loop459_next
    eq $P461, .CONTROL_LOOP_REDO, loop459_redo
  loop459_done:
    pop_eh 
  for_undef_220:
.annotate 'line', 149
    get_hll_global $P462, "RoleToClassApplier"
    find_lex $P463, "$obj"
    find_lex $P464, "@instantiated_roles"
    $P465 = $P462."apply"($P463, $P464)
.annotate 'line', 141
    .return ($P465)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block430"  :anon :subid("39_1300051145.567") :outer("38_1300051145.567")
    .param pmc param_433
.annotate 'line', 144
    new $P432, "Undef"
    .lex "$ins", $P432
    .lex "$_", param_433
    find_lex $P434, "$_"
    get_how $P435, $P434
    find_lex $P436, "$_"
    find_lex $P437, "$obj"
    $P438 = $P435."instantiate"($P436, $P437)
    store_lex "$ins", $P438
.annotate 'line', 145
    find_lex $P439, "@instantiated_roles"
    find_lex $P440, "$ins"
    $P439."push"($P440)
.annotate 'line', 146
    find_lex $P441, "$_"
    find_lex $P442, "self"
    get_global $P443, "$?CLASS"
    getattribute $P444, $P442, $P443, "@!done"
    unless_null $P444, vivify_221
    $P444 = root_new ['parrot';'ResizablePMCArray']
  vivify_221:
    set $N445, $P444
    set $I446, $N445
    find_lex $P447, "self"
    get_global $P448, "$?CLASS"
    getattribute $P449, $P447, $P448, "@!done"
    unless_null $P449, vivify_222
    $P449 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P447, $P448, "@!done", $P449
  vivify_222:
    set $P449[$I446], $P441
.annotate 'line', 147
    find_lex $P450, "$ins"
    find_lex $P451, "self"
    get_global $P452, "$?CLASS"
    getattribute $P453, $P451, $P452, "@!done"
    unless_null $P453, vivify_223
    $P453 = root_new ['parrot';'ResizablePMCArray']
  vivify_223:
    set $N454, $P453
    set $I455, $N454
    find_lex $P456, "self"
    get_global $P457, "$?CLASS"
    getattribute $P458, $P456, $P457, "@!done"
    unless_null $P458, vivify_224
    $P458 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P456, $P457, "@!done", $P458
  vivify_224:
    set $P458[$I455], $P450
.annotate 'line', 143
    .return ($P450)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block501"  :anon :subid("40_1300051145.567") :outer("37_1300051145.567")
    .param pmc param_503
.annotate 'line', 169
    .lex "$_", param_503
    find_lex $P504, "$_"
    find_lex $P505, "$obj"
    $P506 = $P504."compose"($P505)
    .return ($P506)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "incorporate_multi_candidates"  :subid("41_1300051145.567") :outer("15_1300051145.567")
    .param pmc param_518
    .param pmc param_519
.annotate 'line', 181
    .const 'Sub' $P534 = "42_1300051145.567" 
    capture_lex $P534
    .lex "self", param_518
    .lex "$obj", param_519
.annotate 'line', 182
    new $P520, "Undef"
    .lex "$num_todo", $P520
.annotate 'line', 183
    new $P521, "Undef"
    .lex "$i", $P521
.annotate 'line', 182
    find_lex $P522, "self"
    get_global $P523, "$?CLASS"
    getattribute $P524, $P522, $P523, "@!multi_methods_to_incorporate"
    unless_null $P524, vivify_229
    $P524 = root_new ['parrot';'ResizablePMCArray']
  vivify_229:
    set $N525, $P524
    new $P526, 'Float'
    set $P526, $N525
    store_lex "$num_todo", $P526
.annotate 'line', 183
    new $P527, "Integer"
    assign $P527, 0
    store_lex "$i", $P527
.annotate 'line', 184
    new $P643, 'ExceptionHandler'
    set_label $P643, loop642_handler
    $P643."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P643
  loop642_test:
    find_lex $P528, "$i"
    set $N529, $P528
    find_lex $P530, "$num_todo"
    set $N531, $P530
    isne $I532, $N529, $N531
    unless $I532, loop642_done
  loop642_redo:
    .const 'Sub' $P534 = "42_1300051145.567" 
    capture_lex $P534
    $P534()
  loop642_next:
    goto loop642_test
  loop642_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P644, exception, 'type'
    eq $P644, .CONTROL_LOOP_NEXT, loop642_next
    eq $P644, .CONTROL_LOOP_REDO, loop642_redo
  loop642_done:
    pop_eh 
.annotate 'line', 181
    .return ($I532)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block533"  :anon :subid("42_1300051145.567") :outer("41_1300051145.567")
.annotate 'line', 184
    .const 'Sub' $P570 = "43_1300051145.567" 
    capture_lex $P570
.annotate 'line', 186
    new $P535, "Undef"
    .lex "$name", $P535
.annotate 'line', 187
    new $P536, "Undef"
    .lex "$code", $P536
.annotate 'line', 191
    new $P537, "Undef"
    .lex "$dispatcher", $P537
.annotate 'line', 186
    find_lex $P538, "$i"
    set $I539, $P538
    find_lex $P540, "self"
    get_global $P541, "$?CLASS"
    getattribute $P542, $P540, $P541, "@!multi_methods_to_incorporate"
    unless_null $P542, vivify_230
    $P542 = root_new ['parrot';'ResizablePMCArray']
  vivify_230:
    set $P543, $P542[$I539]
    unless_null $P543, vivify_231
    $P543 = root_new ['parrot';'Hash']
  vivify_231:
    set $P544, $P543["name"]
    unless_null $P544, vivify_232
    new $P544, "Undef"
  vivify_232:
    store_lex "$name", $P544
.annotate 'line', 187
    find_lex $P545, "$i"
    set $I546, $P545
    find_lex $P547, "self"
    get_global $P548, "$?CLASS"
    getattribute $P549, $P547, $P548, "@!multi_methods_to_incorporate"
    unless_null $P549, vivify_233
    $P549 = root_new ['parrot';'ResizablePMCArray']
  vivify_233:
    set $P550, $P549[$I546]
    unless_null $P550, vivify_234
    $P550 = root_new ['parrot';'Hash']
  vivify_234:
    set $P551, $P550["code"]
    unless_null $P551, vivify_235
    new $P551, "Undef"
  vivify_235:
    store_lex "$code", $P551
.annotate 'line', 191
    find_lex $P552, "$name"
    find_lex $P553, "self"
    get_global $P554, "$?CLASS"
    getattribute $P555, $P553, $P554, "%!methods"
    unless_null $P555, vivify_236
    $P555 = root_new ['parrot';'Hash']
  vivify_236:
    set $P556, $P555[$P552]
    unless_null $P556, vivify_237
    new $P556, "Undef"
  vivify_237:
    store_lex "$dispatcher", $P556
.annotate 'line', 192
    find_lex $P558, "$dispatcher"
    defined $I559, $P558
    if $I559, if_557
.annotate 'line', 202
    .const 'Sub' $P570 = "43_1300051145.567" 
    capture_lex $P570
    $P570()
    goto if_557_end
  if_557:
.annotate 'line', 195
    find_lex $P561, "$dispatcher"
    is_dispatcher $I562, $P561
    if $I562, if_560
.annotate 'line', 199
    new $P565, 'String'
    set $P565, "Cannot have a multi candidate for "
    find_lex $P566, "$name"
    concat $P567, $P565, $P566
    concat $P568, $P567, " when an only method is also in the class"
    die $P568
.annotate 'line', 198
    goto if_560_end
  if_560:
.annotate 'line', 196
    find_lex $P563, "$dispatcher"
    find_lex $P564, "$code"
    push_dispatchee $P563, $P564
  if_560_end:
  if_557_end:
.annotate 'line', 230
    find_lex $P640, "$i"
    add $P641, $P640, 1
    store_lex "$i", $P641
.annotate 'line', 184
    .return ($P641)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block569"  :anon :subid("43_1300051145.567") :outer("42_1300051145.567")
.annotate 'line', 202
    .const 'Sub' $P587 = "44_1300051145.567" 
    capture_lex $P587
.annotate 'line', 204
    new $P571, "Undef"
    .lex "$j", $P571
.annotate 'line', 205
    new $P572, "Undef"
    .lex "$found", $P572
.annotate 'line', 204
    new $P573, "Integer"
    assign $P573, 1
    store_lex "$j", $P573
.annotate 'line', 205
    new $P574, "Integer"
    assign $P574, 0
    store_lex "$found", $P574
.annotate 'line', 206
    new $P631, 'ExceptionHandler'
    set_label $P631, loop630_handler
    $P631."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P631
  loop630_test:
    find_lex $P577, "$j"
    set $N578, $P577
    find_lex $P579, "self"
    get_global $P580, "$?CLASS"
    getattribute $P581, $P579, $P580, "@!mro"
    unless_null $P581, vivify_238
    $P581 = root_new ['parrot';'ResizablePMCArray']
  vivify_238:
    set $N582, $P581
    isne $I583, $N578, $N582
    if $I583, if_576
    new $P575, 'Integer'
    set $P575, $I583
    goto if_576_end
  if_576:
    find_lex $P584, "$found"
    isfalse $I585, $P584
    new $P575, 'Integer'
    set $P575, $I585
  if_576_end:
    unless $P575, loop630_done
  loop630_redo:
    .const 'Sub' $P587 = "44_1300051145.567" 
    capture_lex $P587
    $P587()
  loop630_next:
    goto loop630_test
  loop630_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P632, exception, 'type'
    eq $P632, .CONTROL_LOOP_NEXT, loop630_next
    eq $P632, .CONTROL_LOOP_REDO, loop630_redo
  loop630_done:
    pop_eh 
.annotate 'line', 226
    find_lex $P635, "$found"
    unless $P635, unless_634
    set $P633, $P635
    goto unless_634_end
  unless_634:
.annotate 'line', 227
    new $P636, 'String'
    set $P636, "Could not find a proto for multi "
    find_lex $P637, "$name"
    concat $P638, $P636, $P637
    concat $P639, $P638, ", and proto generation is NYI"
    die $P639
  unless_634_end:
.annotate 'line', 202
    .return ($P633)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block586"  :anon :subid("44_1300051145.567") :outer("43_1300051145.567")
.annotate 'line', 206
    .const 'Sub' $P611 = "45_1300051145.567" 
    capture_lex $P611
.annotate 'line', 207
    new $P588, "Undef"
    .lex "$parent", $P588
.annotate 'line', 208
    $P589 = root_new ['parrot';'Hash']
    .lex "%meths", $P589
.annotate 'line', 209
    new $P590, "Undef"
    .lex "$dispatcher", $P590
.annotate 'line', 207
    find_lex $P591, "$j"
    set $I592, $P591
    find_lex $P593, "self"
    get_global $P594, "$?CLASS"
    getattribute $P595, $P593, $P594, "@!mro"
    unless_null $P595, vivify_239
    $P595 = root_new ['parrot';'ResizablePMCArray']
  vivify_239:
    set $P596, $P595[$I592]
    unless_null $P596, vivify_240
    new $P596, "Undef"
  vivify_240:
    store_lex "$parent", $P596
.annotate 'line', 208
    find_lex $P597, "$parent"
    get_how $P598, $P597
    find_lex $P599, "$parent"
    $P600 = $P598."method_table"($P599)
    store_lex "%meths", $P600
.annotate 'line', 209
    find_lex $P601, "$name"
    find_lex $P602, "%meths"
    unless_null $P602, vivify_241
    $P602 = root_new ['parrot';'Hash']
  vivify_241:
    set $P603, $P602[$P601]
    unless_null $P603, vivify_242
    new $P603, "Undef"
  vivify_242:
    store_lex "$dispatcher", $P603
.annotate 'line', 210
    find_lex $P605, "$dispatcher"
    defined $I606, $P605
    unless $I606, if_604_end
.annotate 'line', 213
    find_lex $P608, "$dispatcher"
    is_dispatcher $I609, $P608
    if $I609, if_607
.annotate 'line', 221
    new $P624, 'String'
    set $P624, "Could not find a proto for multi "
    find_lex $P625, "$name"
    concat $P626, $P624, $P625
    concat $P627, $P626, " (it may exist, but an only is hiding it if so)"
    die $P627
.annotate 'line', 220
    goto if_607_end
  if_607:
.annotate 'line', 213
    .const 'Sub' $P611 = "45_1300051145.567" 
    capture_lex $P611
    $P611()
  if_607_end:
  if_604_end:
.annotate 'line', 224
    find_lex $P628, "$j"
    add $P629, $P628, 1
    store_lex "$j", $P629
.annotate 'line', 206
    .return ($P629)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block610"  :anon :subid("45_1300051145.567") :outer("44_1300051145.567")
.annotate 'line', 215
    $P612 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new_dispatchees", $P612
.annotate 'line', 213
    find_lex $P613, "@new_dispatchees"
.annotate 'line', 216
    find_lex $P614, "$code"
    find_lex $P615, "@new_dispatchees"
    unless_null $P615, vivify_243
    $P615 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@new_dispatchees", $P615
  vivify_243:
    set $P615[0], $P614
.annotate 'line', 217
    find_lex $P616, "$dispatcher"
    find_lex $P617, "@new_dispatchees"
    create_dispatch_and_add_candidates $P618, $P616, $P617
    find_lex $P619, "$name"
    find_lex $P620, "self"
    get_global $P621, "$?CLASS"
    getattribute $P622, $P620, $P621, "%!methods"
    unless_null $P622, vivify_244
    $P622 = root_new ['parrot';'Hash']
    setattribute $P620, $P621, "%!methods", $P622
  vivify_244:
    set $P622[$P619], $P618
.annotate 'line', 218
    new $P623, "Integer"
    assign $P623, 1
    store_lex "$found", $P623
.annotate 'line', 213
    .return ($P623)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_type_cache"  :subid("46_1300051145.567") :outer("15_1300051145.567")
    .param pmc param_648
    .param pmc param_649
.annotate 'line', 323
    .const 'Sub' $P674 = "48_1300051145.567" 
    capture_lex $P674
    .const 'Sub' $P659 = "47_1300051145.567" 
    capture_lex $P659
    .lex "self", param_648
    .lex "$obj", param_649
.annotate 'line', 324
    $P650 = root_new ['parrot';'ResizablePMCArray']
    .lex "@tc", $P650
.annotate 'line', 323
    find_lex $P651, "@tc"
.annotate 'line', 325
    find_lex $P653, "self"
    get_global $P654, "$?CLASS"
    getattribute $P655, $P653, $P654, "@!mro"
    unless_null $P655, vivify_245
    $P655 = root_new ['parrot';'ResizablePMCArray']
  vivify_245:
    defined $I656, $P655
    unless $I656, for_undef_246
    iter $P652, $P655
    new $P665, 'ExceptionHandler'
    set_label $P665, loop664_handler
    $P665."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P665
  loop664_test:
    unless $P652, loop664_done
    shift $P657, $P652
  loop664_redo:
    .const 'Sub' $P659 = "47_1300051145.567" 
    capture_lex $P659
    $P659($P657)
  loop664_next:
    goto loop664_test
  loop664_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P666, exception, 'type'
    eq $P666, .CONTROL_LOOP_NEXT, loop664_next
    eq $P666, .CONTROL_LOOP_REDO, loop664_redo
  loop664_done:
    pop_eh 
  for_undef_246:
.annotate 'line', 326
    find_lex $P668, "self"
    get_global $P669, "$?CLASS"
    getattribute $P670, $P668, $P669, "@!done"
    unless_null $P670, vivify_247
    $P670 = root_new ['parrot';'ResizablePMCArray']
  vivify_247:
    defined $I671, $P670
    unless $I671, for_undef_248
    iter $P667, $P670
    new $P680, 'ExceptionHandler'
    set_label $P680, loop679_handler
    $P680."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P680
  loop679_test:
    unless $P667, loop679_done
    shift $P672, $P667
  loop679_redo:
    .const 'Sub' $P674 = "48_1300051145.567" 
    capture_lex $P674
    $P674($P672)
  loop679_next:
    goto loop679_test
  loop679_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P681, exception, 'type'
    eq $P681, .CONTROL_LOOP_NEXT, loop679_next
    eq $P681, .CONTROL_LOOP_REDO, loop679_redo
  loop679_done:
    pop_eh 
  for_undef_248:
.annotate 'line', 327
    find_lex $P682, "$obj"
    find_lex $P683, "@tc"
    publish_type_check_cache $P682, $P683
.annotate 'line', 323
    .return ()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block658"  :anon :subid("47_1300051145.567") :outer("46_1300051145.567")
    .param pmc param_660
.annotate 'line', 325
    .lex "$_", param_660
    find_lex $P661, "@tc"
    find_lex $P662, "$_"
    $P663 = $P661."push"($P662)
    .return ($P663)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block673"  :anon :subid("48_1300051145.567") :outer("46_1300051145.567")
    .param pmc param_675
.annotate 'line', 326
    .lex "$_", param_675
    find_lex $P676, "@tc"
    find_lex $P677, "$_"
    $P678 = $P676."push"($P677)
    .return ($P678)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_method_cache"  :subid("49_1300051145.567") :outer("15_1300051145.567")
    .param pmc param_685
    .param pmc param_686
.annotate 'line', 330
    .const 'Sub' $P696 = "50_1300051145.567" 
    capture_lex $P696
    .lex "self", param_685
    .lex "$obj", param_686
.annotate 'line', 333
    $P687 = root_new ['parrot';'Hash']
    .lex "%cache", $P687
.annotate 'line', 330
    find_lex $P688, "%cache"
.annotate 'line', 334
    find_lex $P690, "self"
    get_global $P691, "$?CLASS"
    getattribute $P692, $P690, $P691, "@!mro"
    unless_null $P692, vivify_249
    $P692 = root_new ['parrot';'ResizablePMCArray']
  vivify_249:
    defined $I693, $P692
    unless $I693, for_undef_250
    iter $P689, $P692
    new $P725, 'ExceptionHandler'
    set_label $P725, loop724_handler
    $P725."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P725
  loop724_test:
    unless $P689, loop724_done
    shift $P694, $P689
  loop724_redo:
    .const 'Sub' $P696 = "50_1300051145.567" 
    capture_lex $P696
    $P696($P694)
  loop724_next:
    goto loop724_test
  loop724_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P726, exception, 'type'
    eq $P726, .CONTROL_LOOP_NEXT, loop724_next
    eq $P726, .CONTROL_LOOP_REDO, loop724_redo
  loop724_done:
    pop_eh 
  for_undef_250:
.annotate 'line', 342
    find_lex $P727, "$obj"
    find_lex $P728, "%cache"
    publish_method_cache $P727, $P728
.annotate 'line', 330
    .return ()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block695"  :anon :subid("50_1300051145.567") :outer("49_1300051145.567")
    .param pmc param_698
.annotate 'line', 334
    .const 'Sub' $P708 = "51_1300051145.567" 
    capture_lex $P708
.annotate 'line', 335
    $P697 = root_new ['parrot';'Hash']
    .lex "%methods", $P697
    .lex "$_", param_698
    find_lex $P699, "$_"
    get_how $P700, $P699
    find_lex $P701, "$_"
    $P702 = $P700."method_table"($P701)
    store_lex "%methods", $P702
.annotate 'line', 336
    find_lex $P704, "%methods"
    defined $I705, $P704
    unless $I705, for_undef_251
    iter $P703, $P704
    new $P722, 'ExceptionHandler'
    set_label $P722, loop721_handler
    $P722."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P722
  loop721_test:
    unless $P703, loop721_done
    shift $P706, $P703
  loop721_redo:
    .const 'Sub' $P708 = "51_1300051145.567" 
    capture_lex $P708
    $P708($P706)
  loop721_next:
    goto loop721_test
  loop721_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P723, exception, 'type'
    eq $P723, .CONTROL_LOOP_NEXT, loop721_next
    eq $P723, .CONTROL_LOOP_REDO, loop721_redo
  loop721_done:
    pop_eh 
  for_undef_251:
.annotate 'line', 334
    .return ($P703)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block707"  :anon :subid("51_1300051145.567") :outer("50_1300051145.567")
    .param pmc param_709
.annotate 'line', 336
    .lex "$_", param_709
.annotate 'line', 337
    find_lex $P712, "$_"
    $P713 = $P712."key"()
    find_lex $P714, "%cache"
    unless_null $P714, vivify_252
    $P714 = root_new ['parrot';'Hash']
  vivify_252:
    set $P715, $P714[$P713]
    unless_null $P715, vivify_253
    new $P715, "Undef"
  vivify_253:
    unless $P715, unless_711
    set $P710, $P715
    goto unless_711_end
  unless_711:
.annotate 'line', 338
    find_lex $P716, "$_"
    $P717 = $P716."value"()
    find_lex $P718, "$_"
    $P719 = $P718."key"()
    find_lex $P720, "%cache"
    unless_null $P720, vivify_254
    $P720 = root_new ['parrot';'Hash']
    store_lex "%cache", $P720
  vivify_254:
    set $P720[$P719], $P717
.annotate 'line', 337
    set $P710, $P717
  unless_711_end:
.annotate 'line', 336
    .return ($P710)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_parrot_vtable_mapping"  :subid("52_1300051145.567") :outer("15_1300051145.567")
    .param pmc param_730
    .param pmc param_731
.annotate 'line', 345
    .const 'Sub' $P741 = "53_1300051145.567" 
    capture_lex $P741
    .lex "self", param_730
    .lex "$obj", param_731
.annotate 'line', 346
    $P732 = root_new ['parrot';'Hash']
    .lex "%mapping", $P732
.annotate 'line', 345
    find_lex $P733, "%mapping"
.annotate 'line', 347
    find_lex $P735, "self"
    get_global $P736, "$?CLASS"
    getattribute $P737, $P735, $P736, "@!mro"
    unless_null $P737, vivify_255
    $P737 = root_new ['parrot';'ResizablePMCArray']
  vivify_255:
    defined $I738, $P737
    unless $I738, for_undef_256
    iter $P734, $P737
    new $P770, 'ExceptionHandler'
    set_label $P770, loop769_handler
    $P770."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P770
  loop769_test:
    unless $P734, loop769_done
    shift $P739, $P734
  loop769_redo:
    .const 'Sub' $P741 = "53_1300051145.567" 
    capture_lex $P741
    $P741($P739)
  loop769_next:
    goto loop769_test
  loop769_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P771, exception, 'type'
    eq $P771, .CONTROL_LOOP_NEXT, loop769_next
    eq $P771, .CONTROL_LOOP_REDO, loop769_redo
  loop769_done:
    pop_eh 
  for_undef_256:
.annotate 'line', 355
    find_lex $P774, "%mapping"
    set $N775, $P774
    if $N775, if_773
    new $P772, 'Float'
    set $P772, $N775
    goto if_773_end
  if_773:
.annotate 'line', 356
    find_lex $P776, "$obj"
    find_lex $P777, "%mapping"
    stable_publish_vtable_mapping $P776, $P777
  if_773_end:
.annotate 'line', 345
    .return ($P772)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block740"  :anon :subid("53_1300051145.567") :outer("52_1300051145.567")
    .param pmc param_743
.annotate 'line', 347
    .const 'Sub' $P753 = "54_1300051145.567" 
    capture_lex $P753
.annotate 'line', 348
    $P742 = root_new ['parrot';'Hash']
    .lex "%map", $P742
    .lex "$_", param_743
    find_lex $P744, "$_"
    get_how $P745, $P744
    find_lex $P746, "$_"
    $P747 = $P745."parrot_vtable_mappings"($P746, 1 :named("local"))
    store_lex "%map", $P747
.annotate 'line', 349
    find_lex $P749, "%map"
    defined $I750, $P749
    unless $I750, for_undef_257
    iter $P748, $P749
    new $P767, 'ExceptionHandler'
    set_label $P767, loop766_handler
    $P767."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P767
  loop766_test:
    unless $P748, loop766_done
    shift $P751, $P748
  loop766_redo:
    .const 'Sub' $P753 = "54_1300051145.567" 
    capture_lex $P753
    $P753($P751)
  loop766_next:
    goto loop766_test
  loop766_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P768, exception, 'type'
    eq $P768, .CONTROL_LOOP_NEXT, loop766_next
    eq $P768, .CONTROL_LOOP_REDO, loop766_redo
  loop766_done:
    pop_eh 
  for_undef_257:
.annotate 'line', 347
    .return ($P748)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block752"  :anon :subid("54_1300051145.567") :outer("53_1300051145.567")
    .param pmc param_754
.annotate 'line', 349
    .lex "$_", param_754
.annotate 'line', 350
    find_lex $P757, "$_"
    $P758 = $P757."key"()
    find_lex $P759, "%mapping"
    unless_null $P759, vivify_258
    $P759 = root_new ['parrot';'Hash']
  vivify_258:
    set $P760, $P759[$P758]
    unless_null $P760, vivify_259
    new $P760, "Undef"
  vivify_259:
    unless $P760, unless_756
    set $P755, $P760
    goto unless_756_end
  unless_756:
.annotate 'line', 351
    find_lex $P761, "$_"
    $P762 = $P761."value"()
    find_lex $P763, "$_"
    $P764 = $P763."key"()
    find_lex $P765, "%mapping"
    unless_null $P765, vivify_260
    $P765 = root_new ['parrot';'Hash']
    store_lex "%mapping", $P765
  vivify_260:
    set $P765[$P764], $P762
.annotate 'line', 350
    set $P755, $P762
  unless_756_end:
.annotate 'line', 349
    .return ($P755)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parents"  :subid("55_1300051145.567") :outer("15_1300051145.567")
    .param pmc param_779
    .param pmc param_780
    .param pmc param_781 :optional :named("local")
    .param int has_param_781 :opt_flag
.annotate 'line', 364
    .lex "self", param_779
    .lex "$obj", param_780
    if has_param_781, optparam_261
    new $P782, "Undef"
    set param_781, $P782
  optparam_261:
    .lex "$local", param_781
.annotate 'line', 365
    find_lex $P785, "$local"
    if $P785, if_784
    find_lex $P789, "self"
    get_global $P790, "$?CLASS"
    getattribute $P791, $P789, $P790, "@!mro"
    unless_null $P791, vivify_262
    $P791 = root_new ['parrot';'ResizablePMCArray']
  vivify_262:
    set $P783, $P791
    goto if_784_end
  if_784:
    find_lex $P786, "self"
    get_global $P787, "$?CLASS"
    getattribute $P788, $P786, $P787, "@!parents"
    unless_null $P788, vivify_263
    $P788 = root_new ['parrot';'ResizablePMCArray']
  vivify_263:
    set $P783, $P788
  if_784_end:
.annotate 'line', 364
    .return ($P783)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "roles"  :subid("56_1300051145.567") :outer("15_1300051145.567")
    .param pmc param_793
    .param pmc param_794
    .param pmc param_795 :named("local")
.annotate 'line', 368
    .lex "self", param_793
    .lex "$obj", param_794
    .lex "$local", param_795
    find_lex $P796, "self"
    get_global $P797, "$?CLASS"
    getattribute $P798, $P796, $P797, "@!roles"
    unless_null $P798, vivify_264
    $P798 = root_new ['parrot';'ResizablePMCArray']
  vivify_264:
    .return ($P798)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "methods"  :subid("57_1300051145.567") :outer("15_1300051145.567")
    .param pmc param_800
    .param pmc param_801
    .param pmc param_802 :named("local")
.annotate 'line', 372
    .const 'Sub' $P812 = "58_1300051145.567" 
    capture_lex $P812
    .lex "self", param_800
    .lex "$obj", param_801
    .lex "$local", param_802
.annotate 'line', 373
    $P803 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meths", $P803
.annotate 'line', 372
    find_lex $P804, "@meths"
.annotate 'line', 374
    find_lex $P806, "self"
    get_global $P807, "$?CLASS"
    getattribute $P808, $P806, $P807, "%!methods"
    unless_null $P808, vivify_265
    $P808 = root_new ['parrot';'Hash']
  vivify_265:
    defined $I809, $P808
    unless $I809, for_undef_266
    iter $P805, $P808
    new $P819, 'ExceptionHandler'
    set_label $P819, loop818_handler
    $P819."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P819
  loop818_test:
    unless $P805, loop818_done
    shift $P810, $P805
  loop818_redo:
    .const 'Sub' $P812 = "58_1300051145.567" 
    capture_lex $P812
    $P812($P810)
  loop818_next:
    goto loop818_test
  loop818_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P820, exception, 'type'
    eq $P820, .CONTROL_LOOP_NEXT, loop818_next
    eq $P820, .CONTROL_LOOP_REDO, loop818_redo
  loop818_done:
    pop_eh 
  for_undef_266:
    find_lex $P821, "@meths"
.annotate 'line', 372
    .return ($P821)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block811"  :anon :subid("58_1300051145.567") :outer("57_1300051145.567")
    .param pmc param_813
.annotate 'line', 374
    .lex "$_", param_813
.annotate 'line', 375
    find_lex $P814, "@meths"
    find_lex $P815, "$_"
    $P816 = $P815."value"()
    $P817 = $P814."push"($P816)
.annotate 'line', 374
    .return ($P817)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "method_table"  :subid("59_1300051145.567") :outer("15_1300051145.567")
    .param pmc param_823
    .param pmc param_824
.annotate 'line', 380
    .lex "self", param_823
    .lex "$obj", param_824
    find_lex $P825, "self"
    get_global $P826, "$?CLASS"
    getattribute $P827, $P825, $P826, "%!methods"
    unless_null $P827, vivify_267
    $P827 = root_new ['parrot';'Hash']
  vivify_267:
    .return ($P827)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "name"  :subid("60_1300051145.567") :outer("15_1300051145.567")
    .param pmc param_829
    .param pmc param_830
.annotate 'line', 384
    .lex "self", param_829
    .lex "$obj", param_830
    find_lex $P831, "self"
    get_global $P832, "$?CLASS"
    getattribute $P833, $P831, $P832, "$!name"
    unless_null $P833, vivify_268
    new $P833, "Undef"
  vivify_268:
    .return ($P833)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "attributes"  :subid("61_1300051145.567") :outer("15_1300051145.567")
    .param pmc param_835
    .param pmc param_836
    .param pmc param_837 :named("local")
.annotate 'line', 388
    .const 'Sub' $P847 = "62_1300051145.567" 
    capture_lex $P847
    .lex "self", param_835
    .lex "$obj", param_836
    .lex "$local", param_837
.annotate 'line', 389
    $P838 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attrs", $P838
.annotate 'line', 388
    find_lex $P839, "@attrs"
.annotate 'line', 390
    find_lex $P841, "self"
    get_global $P842, "$?CLASS"
    getattribute $P843, $P841, $P842, "%!attributes"
    unless_null $P843, vivify_269
    $P843 = root_new ['parrot';'Hash']
  vivify_269:
    defined $I844, $P843
    unless $I844, for_undef_270
    iter $P840, $P843
    new $P854, 'ExceptionHandler'
    set_label $P854, loop853_handler
    $P854."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P854
  loop853_test:
    unless $P840, loop853_done
    shift $P845, $P840
  loop853_redo:
    .const 'Sub' $P847 = "62_1300051145.567" 
    capture_lex $P847
    $P847($P845)
  loop853_next:
    goto loop853_test
  loop853_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P855, exception, 'type'
    eq $P855, .CONTROL_LOOP_NEXT, loop853_next
    eq $P855, .CONTROL_LOOP_REDO, loop853_redo
  loop853_done:
    pop_eh 
  for_undef_270:
    find_lex $P856, "@attrs"
.annotate 'line', 388
    .return ($P856)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block846"  :anon :subid("62_1300051145.567") :outer("61_1300051145.567")
    .param pmc param_848
.annotate 'line', 390
    .lex "$_", param_848
.annotate 'line', 391
    find_lex $P849, "@attrs"
    find_lex $P850, "$_"
    $P851 = $P850."value"()
    $P852 = $P849."push"($P851)
.annotate 'line', 390
    .return ($P852)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parrot_vtable_mappings"  :subid("63_1300051145.567") :outer("15_1300051145.567")
    .param pmc param_858
    .param pmc param_859
    .param pmc param_860 :named("local")
.annotate 'line', 396
    .lex "self", param_858
    .lex "$obj", param_859
    .lex "$local", param_860
    find_lex $P861, "self"
    get_global $P862, "$?CLASS"
    getattribute $P863, $P861, $P862, "%!parrot_vtable_mapping"
    unless_null $P863, vivify_271
    $P863 = root_new ['parrot';'Hash']
  vivify_271:
    .return ($P863)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "isa"  :subid("64_1300051145.567") :outer("15_1300051145.567")
    .param pmc param_867
    .param pmc param_868
    .param pmc param_869
.annotate 'line', 404
    new $P866, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P866, control_865
    push_eh $P866
    .lex "self", param_867
    .lex "$obj", param_868
    .lex "$check", param_869
.annotate 'line', 405
    new $P870, "Undef"
    .lex "$check-class", $P870
.annotate 'line', 406
    new $P871, "Undef"
    .lex "$i", $P871
.annotate 'line', 405
    find_lex $P872, "$check"
    get_what $P873, $P872
    store_lex "$check-class", $P873
.annotate 'line', 406
    find_lex $P874, "self"
    get_global $P875, "$?CLASS"
    getattribute $P876, $P874, $P875, "@!mro"
    unless_null $P876, vivify_272
    $P876 = root_new ['parrot';'ResizablePMCArray']
  vivify_272:
    set $N877, $P876
    new $P878, 'Float'
    set $P878, $N877
    store_lex "$i", $P878
.annotate 'line', 407
    new $P896, 'ExceptionHandler'
    set_label $P896, loop895_handler
    $P896."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P896
  loop895_test:
    find_lex $P879, "$i"
    set $N880, $P879
    isgt $I881, $N880, 0.0
    unless $I881, loop895_done
  loop895_redo:
.annotate 'line', 408
    find_lex $P882, "$i"
    sub $P883, $P882, 1
    store_lex "$i", $P883
.annotate 'line', 409
    find_lex $P885, "$i"
    set $I886, $P885
    find_lex $P887, "self"
    get_global $P888, "$?CLASS"
    getattribute $P889, $P887, $P888, "@!mro"
    unless_null $P889, vivify_273
    $P889 = root_new ['parrot';'ResizablePMCArray']
  vivify_273:
    set $P890, $P889[$I886]
    unless_null $P890, vivify_274
    new $P890, "Undef"
  vivify_274:
    find_lex $P891, "$check-class"
    issame $I892, $P890, $P891
    unless $I892, if_884_end
.annotate 'line', 410
    new $P893, "Exception"
    set $P893['type'], .CONTROL_RETURN
    new $P894, "Integer"
    assign $P894, 1
    setattribute $P893, 'payload', $P894
    throw $P893
  if_884_end:
  loop895_next:
.annotate 'line', 407
    goto loop895_test
  loop895_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P897, exception, 'type'
    eq $P897, .CONTROL_LOOP_NEXT, loop895_next
    eq $P897, .CONTROL_LOOP_REDO, loop895_redo
  loop895_done:
    pop_eh 
.annotate 'line', 413
    new $P898, "Exception"
    set $P898['type'], .CONTROL_RETURN
    new $P899, "Integer"
    assign $P899, 0
    setattribute $P898, 'payload', $P899
    throw $P898
.annotate 'line', 404
    .return ()
  control_865:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P900, exception, "payload"
    .return ($P900)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "does"  :subid("65_1300051145.567") :outer("15_1300051145.567")
    .param pmc param_904
    .param pmc param_905
    .param pmc param_906
.annotate 'line', 416
    new $P903, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P903, control_902
    push_eh $P903
    .lex "self", param_904
    .lex "$obj", param_905
    .lex "$check", param_906
.annotate 'line', 417
    new $P907, "Undef"
    .lex "$i", $P907
    find_lex $P908, "self"
    get_global $P909, "$?CLASS"
    getattribute $P910, $P908, $P909, "@!done"
    unless_null $P910, vivify_275
    $P910 = root_new ['parrot';'ResizablePMCArray']
  vivify_275:
    set $N911, $P910
    new $P912, 'Float'
    set $P912, $N911
    store_lex "$i", $P912
.annotate 'line', 418
    new $P930, 'ExceptionHandler'
    set_label $P930, loop929_handler
    $P930."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P930
  loop929_test:
    find_lex $P913, "$i"
    set $N914, $P913
    isgt $I915, $N914, 0.0
    unless $I915, loop929_done
  loop929_redo:
.annotate 'line', 419
    find_lex $P916, "$i"
    sub $P917, $P916, 1
    store_lex "$i", $P917
.annotate 'line', 420
    find_lex $P919, "$i"
    set $I920, $P919
    find_lex $P921, "self"
    get_global $P922, "$?CLASS"
    getattribute $P923, $P921, $P922, "@!done"
    unless_null $P923, vivify_276
    $P923 = root_new ['parrot';'ResizablePMCArray']
  vivify_276:
    set $P924, $P923[$I920]
    unless_null $P924, vivify_277
    new $P924, "Undef"
  vivify_277:
    find_lex $P925, "$check"
    issame $I926, $P924, $P925
    unless $I926, if_918_end
.annotate 'line', 421
    new $P927, "Exception"
    set $P927['type'], .CONTROL_RETURN
    new $P928, "Integer"
    assign $P928, 1
    setattribute $P927, 'payload', $P928
    throw $P927
  if_918_end:
  loop929_next:
.annotate 'line', 418
    goto loop929_test
  loop929_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P931, exception, 'type'
    eq $P931, .CONTROL_LOOP_NEXT, loop929_next
    eq $P931, .CONTROL_LOOP_REDO, loop929_redo
  loop929_done:
    pop_eh 
.annotate 'line', 424
    new $P932, "Exception"
    set $P932['type'], .CONTROL_RETURN
    new $P933, "Integer"
    assign $P933, 0
    setattribute $P932, 'payload', $P933
    throw $P932
.annotate 'line', 416
    .return ()
  control_902:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P934, exception, "payload"
    .return ($P934)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "can"  :subid("66_1300051145.567") :outer("15_1300051145.567")
    .param pmc param_938
    .param pmc param_939
    .param pmc param_940
.annotate 'line', 427
    .const 'Sub' $P948 = "67_1300051145.567" 
    capture_lex $P948
    new $P937, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P937, control_936
    push_eh $P937
    .lex "self", param_938
    .lex "$obj", param_939
    .lex "$name", param_940
.annotate 'line', 428
    find_lex $P942, "self"
    get_global $P943, "$?CLASS"
    getattribute $P944, $P942, $P943, "@!mro"
    unless_null $P944, vivify_278
    $P944 = root_new ['parrot';'ResizablePMCArray']
  vivify_278:
    defined $I945, $P944
    unless $I945, for_undef_279
    iter $P941, $P944
    new $P966, 'ExceptionHandler'
    set_label $P966, loop965_handler
    $P966."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P966
  loop965_test:
    unless $P941, loop965_done
    shift $P946, $P941
  loop965_redo:
    .const 'Sub' $P948 = "67_1300051145.567" 
    capture_lex $P948
    $P948($P946)
  loop965_next:
    goto loop965_test
  loop965_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P967, exception, 'type'
    eq $P967, .CONTROL_LOOP_NEXT, loop965_next
    eq $P967, .CONTROL_LOOP_REDO, loop965_redo
  loop965_done:
    pop_eh 
  for_undef_279:
.annotate 'line', 435
    new $P968, "Exception"
    set $P968['type'], .CONTROL_RETURN
    new $P969, "Integer"
    assign $P969, 0
    setattribute $P968, 'payload', $P969
    throw $P968
.annotate 'line', 427
    .return ()
  control_936:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P970, exception, "payload"
    .return ($P970)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block947"  :anon :subid("67_1300051145.567") :outer("66_1300051145.567")
    .param pmc param_951
.annotate 'line', 429
    $P949 = root_new ['parrot';'Hash']
    .lex "%meths", $P949
.annotate 'line', 430
    new $P950, "Undef"
    .lex "$can", $P950
    .lex "$_", param_951
.annotate 'line', 429
    find_lex $P952, "$_"
    get_how $P953, $P952
    find_lex $P954, "$obj"
    $P955 = $P953."method_table"($P954)
    store_lex "%meths", $P955
.annotate 'line', 430
    find_lex $P956, "$name"
    find_lex $P957, "%meths"
    unless_null $P957, vivify_280
    $P957 = root_new ['parrot';'Hash']
  vivify_280:
    set $P958, $P957[$P956]
    unless_null $P958, vivify_281
    new $P958, "Undef"
  vivify_281:
    store_lex "$can", $P958
.annotate 'line', 431
    find_lex $P961, "$can"
    defined $I962, $P961
    if $I962, if_960
    new $P959, 'Integer'
    set $P959, $I962
    goto if_960_end
  if_960:
.annotate 'line', 432
    new $P963, "Exception"
    set $P963['type'], .CONTROL_RETURN
    find_lex $P964, "$can"
    setattribute $P963, 'payload', $P964
    throw $P963
  if_960_end:
.annotate 'line', 428
    .return ($P959)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "find_method"  :subid("68_1300051145.567") :outer("15_1300051145.567")
    .param pmc param_974
    .param pmc param_975
    .param pmc param_976
.annotate 'line', 441
    .const 'Sub' $P984 = "69_1300051145.567" 
    capture_lex $P984
    new $P973, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P973, control_972
    push_eh $P973
    .lex "self", param_974
    .lex "$obj", param_975
    .lex "$name", param_976
.annotate 'line', 442
    find_lex $P978, "self"
    get_global $P979, "$?CLASS"
    getattribute $P980, $P978, $P979, "@!mro"
    unless_null $P980, vivify_282
    $P980 = root_new ['parrot';'ResizablePMCArray']
  vivify_282:
    defined $I981, $P980
    unless $I981, for_undef_283
    iter $P977, $P980
    new $P1002, 'ExceptionHandler'
    set_label $P1002, loop1001_handler
    $P1002."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1002
  loop1001_test:
    unless $P977, loop1001_done
    shift $P982, $P977
  loop1001_redo:
    .const 'Sub' $P984 = "69_1300051145.567" 
    capture_lex $P984
    $P984($P982)
  loop1001_next:
    goto loop1001_test
  loop1001_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1003, exception, 'type'
    eq $P1003, .CONTROL_LOOP_NEXT, loop1001_next
    eq $P1003, .CONTROL_LOOP_REDO, loop1001_redo
  loop1001_done:
    pop_eh 
  for_undef_283:
.annotate 'line', 449
    null $P1004
.annotate 'line', 441
    .return ($P1004)
  control_972:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1005, exception, "payload"
    .return ($P1005)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block983"  :anon :subid("69_1300051145.567") :outer("68_1300051145.567")
    .param pmc param_987
.annotate 'line', 443
    $P985 = root_new ['parrot';'Hash']
    .lex "%meths", $P985
.annotate 'line', 444
    new $P986, "Undef"
    .lex "$found", $P986
    .lex "$_", param_987
.annotate 'line', 443
    find_lex $P988, "$_"
    get_how $P989, $P988
    find_lex $P990, "$obj"
    $P991 = $P989."method_table"($P990)
    store_lex "%meths", $P991
.annotate 'line', 444
    find_lex $P992, "$name"
    find_lex $P993, "%meths"
    unless_null $P993, vivify_284
    $P993 = root_new ['parrot';'Hash']
  vivify_284:
    set $P994, $P993[$P992]
    unless_null $P994, vivify_285
    new $P994, "Undef"
  vivify_285:
    store_lex "$found", $P994
.annotate 'line', 445
    find_lex $P997, "$found"
    defined $I998, $P997
    if $I998, if_996
    new $P995, 'Integer'
    set $P995, $I998
    goto if_996_end
  if_996:
.annotate 'line', 446
    new $P999, "Exception"
    set $P999['type'], .CONTROL_RETURN
    find_lex $P1000, "$found"
    setattribute $P999, 'payload', $P1000
    throw $P999
  if_996_end:
.annotate 'line', 442
    .return ($P995)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "_block1098"  :subid("71_1300051145.567") :outer("10_1300051145.567")
.annotate 'line', 454
    .const 'Sub' $P1159 = "80_1300051145.567" 
    capture_lex $P1159
    .const 'Sub' $P1151 = "79_1300051145.567" 
    capture_lex $P1151
    .const 'Sub' $P1145 = "78_1300051145.567" 
    capture_lex $P1145
    .const 'Sub' $P1141 = "77_1300051145.567" 
    capture_lex $P1141
    .const 'Sub' $P1136 = "76_1300051145.567" 
    capture_lex $P1136
    .const 'Sub' $P1131 = "75_1300051145.567" 
    capture_lex $P1131
    .const 'Sub' $P1118 = "74_1300051145.567" 
    capture_lex $P1118
    .const 'Sub' $P1111 = "73_1300051145.567" 
    capture_lex $P1111
    .const 'Sub' $P1101 = "72_1300051145.567" 
    capture_lex $P1101
    get_global $P1100, "$?CLASS"
.annotate 'line', 492
    .const 'Sub' $P1151 = "79_1300051145.567" 
    newclosure $P1157, $P1151
.annotate 'line', 454
    .return ($P1157)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "" :load :init :subid("post286") :outer("71_1300051145.567")
.annotate 'line', 454
    get_hll_global $P1099, ["NQPNativeHOW"], "_block1098" 
    .local pmc block
    set block, $P1099
    .const 'Sub' $P1159 = "80_1300051145.567" 
    capture_lex $P1159
    $P1159()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "_block1158"  :anon :subid("80_1300051145.567") :outer("71_1300051145.567")
.annotate 'line', 454
    nqp_get_sc_object $P1160, "1300051141.242", 2
    .local pmc type_obj
    set type_obj, $P1160
    set_global "$?CLASS", type_obj
    get_how $P1161, type_obj
    get_hll_global $P1162, "KnowHOWAttribute"
    $P1163 = $P1162."new"("$!name" :named("name"))
    $P1161."add_attribute"(type_obj, $P1163)
    get_how $P1164, type_obj
    get_hll_global $P1165, "KnowHOWAttribute"
    $P1166 = $P1165."new"("$!composed" :named("name"))
    $P1164."add_attribute"(type_obj, $P1166)
    get_how $P1167, type_obj
    .const 'Sub' $P1168 = "72_1300051145.567" 
    $P1167."add_method"(type_obj, "new", $P1168)
    get_how $P1169, type_obj
    .const 'Sub' $P1170 = "73_1300051145.567" 
    $P1169."add_method"(type_obj, "BUILD", $P1170)
    get_how $P1171, type_obj
    .const 'Sub' $P1172 = "74_1300051145.567" 
    $P1171."add_method"(type_obj, "new_type", $P1172)
    get_how $P1173, type_obj
    .const 'Sub' $P1174 = "75_1300051145.567" 
    $P1173."add_method"(type_obj, "add_method", $P1174)
    get_how $P1175, type_obj
    .const 'Sub' $P1176 = "76_1300051145.567" 
    $P1175."add_method"(type_obj, "add_multi_method", $P1176)
    get_how $P1177, type_obj
    .const 'Sub' $P1178 = "77_1300051145.567" 
    $P1177."add_method"(type_obj, "add_attribute", $P1178)
    get_how $P1179, type_obj
    .const 'Sub' $P1180 = "78_1300051145.567" 
    $P1179."add_method"(type_obj, "compose", $P1180)
    get_how $P1181, type_obj
    .const 'Sub' $P1182 = "79_1300051145.567" 
    $P1181."add_method"(type_obj, "name", $P1182)
    get_how $P1183, type_obj
    $P1184 = $P1183."compose"(type_obj)
    .return ($P1184)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "new"  :subid("72_1300051145.567") :outer("71_1300051145.567")
    .param pmc param_1102
    .param pmc param_1103 :optional :named("name")
    .param int has_param_1103 :opt_flag
.annotate 'line', 458
    .lex "self", param_1102
    if has_param_1103, optparam_287
    new $P1104, "Undef"
    set param_1103, $P1104
  optparam_287:
    .lex "$name", param_1103
.annotate 'line', 459
    new $P1105, "Undef"
    .lex "$obj", $P1105
    find_lex $P1106, "self"
    repr_instance_of $P1107, $P1106
    store_lex "$obj", $P1107
.annotate 'line', 460
    find_lex $P1108, "$obj"
    find_lex $P1109, "$name"
    $P1108."BUILD"($P1109 :named("name"))
    find_lex $P1110, "$obj"
.annotate 'line', 458
    .return ($P1110)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "BUILD"  :subid("73_1300051145.567") :outer("71_1300051145.567")
    .param pmc param_1112
    .param pmc param_1113 :optional :named("name")
    .param int has_param_1113 :opt_flag
.annotate 'line', 464
    .lex "self", param_1112
    if has_param_1113, optparam_288
    new $P1114, "Undef"
    set param_1113, $P1114
  optparam_288:
    .lex "$name", param_1113
.annotate 'line', 465
    find_lex $P1115, "$name"
    find_lex $P1116, "self"
    get_global $P1117, "$?CLASS"
    setattribute $P1116, $P1117, "$!name", $P1115
.annotate 'line', 464
    .return ($P1115)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "new_type"  :subid("74_1300051145.567") :outer("71_1300051145.567")
    .param pmc param_1119
    .param pmc param_1122 :named("repr")
    .param pmc param_1120 :optional :named("name")
    .param int has_param_1120 :opt_flag
.annotate 'line', 471
    .lex "self", param_1119
    if has_param_1120, optparam_289
    new $P1121, "String"
    assign $P1121, "<anon>"
    set param_1120, $P1121
  optparam_289:
    .lex "$name", param_1120
    .lex "$repr", param_1122
.annotate 'line', 472
    new $P1123, "Undef"
    .lex "$metaclass", $P1123
    find_lex $P1124, "self"
    find_lex $P1125, "$name"
    $P1126 = $P1124."new"($P1125 :named("name"))
    store_lex "$metaclass", $P1126
.annotate 'line', 473
    find_lex $P1127, "$metaclass"
    find_lex $P1128, "$repr"
    set $S1129, $P1128
    repr_type_object_for $P1130, $P1127, $S1129
.annotate 'line', 471
    .return ($P1130)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_method"  :subid("75_1300051145.567") :outer("71_1300051145.567")
    .param pmc param_1132
    .param pmc param_1133
    .param pmc param_1134
    .param pmc param_1135
.annotate 'line', 476
    .lex "self", param_1132
    .lex "$obj", param_1133
    .lex "$name", param_1134
    .lex "$code_obj", param_1135
.annotate 'line', 477
    die "Native types may not have methods (must be boxed to call method)"
.annotate 'line', 476
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_multi_method"  :subid("76_1300051145.567") :outer("71_1300051145.567")
    .param pmc param_1137
    .param pmc param_1138
    .param pmc param_1139
    .param pmc param_1140
.annotate 'line', 480
    .lex "self", param_1137
    .lex "$obj", param_1138
    .lex "$name", param_1139
    .lex "$code_obj", param_1140
.annotate 'line', 481
    die "Native types may not have methods (must be boxed to call method)"
.annotate 'line', 480
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_attribute"  :subid("77_1300051145.567") :outer("71_1300051145.567")
    .param pmc param_1142
    .param pmc param_1143
    .param pmc param_1144
.annotate 'line', 484
    .lex "self", param_1142
    .lex "$obj", param_1143
    .lex "$meta_attr", param_1144
.annotate 'line', 485
    die "Native types may not have attributes"
.annotate 'line', 484
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "compose"  :subid("78_1300051145.567") :outer("71_1300051145.567")
    .param pmc param_1146
    .param pmc param_1147
.annotate 'line', 488
    .lex "self", param_1146
    .lex "$obj", param_1147
.annotate 'line', 489
    new $P1148, "Integer"
    assign $P1148, 1
    find_lex $P1149, "self"
    get_global $P1150, "$?CLASS"
    setattribute $P1149, $P1150, "$!composed", $P1148
.annotate 'line', 488
    .return ($P1148)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "name"  :subid("79_1300051145.567") :outer("71_1300051145.567")
    .param pmc param_1152
    .param pmc param_1153
.annotate 'line', 492
    .lex "self", param_1152
    .lex "$obj", param_1153
    find_lex $P1154, "self"
    get_global $P1155, "$?CLASS"
    getattribute $P1156, $P1154, $P1155, "$!name"
    unless_null $P1156, vivify_290
    new $P1156, "Undef"
  vivify_290:
    .return ($P1156)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block1185"  :subid("81_1300051145.567") :outer("10_1300051145.567")
.annotate 'line', 498
    .const 'Sub' $P1369 = "95_1300051145.567" 
    capture_lex $P1369
    .const 'Sub' $P1359 = "94_1300051145.567" 
    capture_lex $P1359
    .const 'Sub' $P1278 = "89_1300051145.567" 
    capture_lex $P1278
    .const 'Sub' $P1269 = "88_1300051145.567" 
    capture_lex $P1269
    .const 'Sub' $P1260 = "87_1300051145.567" 
    capture_lex $P1260
    .const 'Sub' $P1255 = "86_1300051145.567" 
    capture_lex $P1255
    .const 'Sub' $P1238 = "85_1300051145.567" 
    capture_lex $P1238
    .const 'Sub' $P1223 = "84_1300051145.567" 
    capture_lex $P1223
    .const 'Sub' $P1188 = "82_1300051145.567" 
    capture_lex $P1188
    get_global $P1187, "$?CLASS"
.annotate 'line', 558
    .const 'Sub' $P1188 = "82_1300051145.567" 
    newclosure $P1222, $P1188
    .lex "has_method", $P1222
.annotate 'line', 554
    find_lex $P1367, "has_method"
.annotate 'line', 498
    .return ($P1367)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "" :load :init :subid("post291") :outer("81_1300051145.567")
.annotate 'line', 498
    get_hll_global $P1186, ["NQPAttribute"], "_block1185" 
    .local pmc block
    set block, $P1186
    .const 'Sub' $P1369 = "95_1300051145.567" 
    capture_lex $P1369
    $P1369()
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block1368"  :anon :subid("95_1300051145.567") :outer("81_1300051145.567")
.annotate 'line', 498
    nqp_get_sc_object $P1370, "1300051141.242", 3
    .local pmc type_obj
    set type_obj, $P1370
    set_global "$?CLASS", type_obj
    get_how $P1371, type_obj
    get_hll_global $P1372, "KnowHOWAttribute"
    $P1373 = $P1372."new"("$!name" :named("name"))
    $P1371."add_attribute"(type_obj, $P1373)
    get_how $P1374, type_obj
    get_hll_global $P1375, "KnowHOWAttribute"
    $P1376 = $P1375."new"("$!type" :named("name"))
    $P1374."add_attribute"(type_obj, $P1376)
    get_how $P1377, type_obj
    get_hll_global $P1378, "KnowHOWAttribute"
    $P1379 = $P1378."new"("$!box_target" :named("name"))
    $P1377."add_attribute"(type_obj, $P1379)
    get_how $P1380, type_obj
    .const 'Sub' $P1381 = "84_1300051145.567" 
    $P1380."add_method"(type_obj, "new", $P1381)
    get_how $P1382, type_obj
    .const 'Sub' $P1383 = "85_1300051145.567" 
    $P1382."add_method"(type_obj, "BUILD", $P1383)
    get_how $P1384, type_obj
    .const 'Sub' $P1385 = "86_1300051145.567" 
    $P1384."add_method"(type_obj, "name", $P1385)
    get_how $P1386, type_obj
    .const 'Sub' $P1387 = "87_1300051145.567" 
    $P1386."add_method"(type_obj, "type", $P1387)
    get_how $P1388, type_obj
    .const 'Sub' $P1389 = "88_1300051145.567" 
    $P1388."add_method"(type_obj, "box_target", $P1389)
    get_how $P1390, type_obj
    .const 'Sub' $P1391 = "89_1300051145.567" 
    $P1390."add_method"(type_obj, "compose", $P1391)
    get_how $P1392, type_obj
    .const 'Sub' $P1393 = "94_1300051145.567" 
    $P1392."add_method"(type_obj, "has_mutator", $P1393)
    get_how $P1394, type_obj
    $P1395 = $P1394."compose"(type_obj)
    .return ($P1395)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "has_method"  :subid("82_1300051145.567") :outer("81_1300051145.567")
    .param pmc param_1191
    .param pmc param_1192
    .param pmc param_1193
.annotate 'line', 558
    .const 'Sub' $P1205 = "83_1300051145.567" 
    capture_lex $P1205
    new $P1190, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1190, control_1189
    push_eh $P1190
    .lex "$target", param_1191
    .lex "$name", param_1192
    .lex "$local", param_1193
.annotate 'line', 559
    $P1194 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P1194
    find_lex $P1195, "$target"
    get_how $P1196, $P1195
    find_lex $P1197, "$target"
    find_lex $P1198, "$local"
    $P1199 = $P1196."methods"($P1197, $P1198 :named("local"))
    store_lex "@methods", $P1199
.annotate 'line', 560
    find_lex $P1201, "@methods"
    defined $I1202, $P1201
    unless $I1202, for_undef_292
    iter $P1200, $P1201
    new $P1217, 'ExceptionHandler'
    set_label $P1217, loop1216_handler
    $P1217."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1217
  loop1216_test:
    unless $P1200, loop1216_done
    shift $P1203, $P1200
  loop1216_redo:
    .const 'Sub' $P1205 = "83_1300051145.567" 
    capture_lex $P1205
    $P1205($P1203)
  loop1216_next:
    goto loop1216_test
  loop1216_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1218, exception, 'type'
    eq $P1218, .CONTROL_LOOP_NEXT, loop1216_next
    eq $P1218, .CONTROL_LOOP_REDO, loop1216_redo
  loop1216_done:
    pop_eh 
  for_undef_292:
.annotate 'line', 563
    new $P1219, "Exception"
    set $P1219['type'], .CONTROL_RETURN
    new $P1220, "Integer"
    assign $P1220, 0
    setattribute $P1219, 'payload', $P1220
    throw $P1219
.annotate 'line', 558
    .return ()
  control_1189:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1221, exception, "payload"
    .return ($P1221)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "_block1204"  :anon :subid("83_1300051145.567") :outer("82_1300051145.567")
    .param pmc param_1206
.annotate 'line', 560
    .lex "$_", param_1206
.annotate 'line', 561
    find_lex $P1209, "$_"
    set $S1210, $P1209
    find_lex $P1211, "$name"
    set $S1212, $P1211
    iseq $I1213, $S1210, $S1212
    if $I1213, if_1208
    new $P1207, 'Integer'
    set $P1207, $I1213
    goto if_1208_end
  if_1208:
    new $P1214, "Exception"
    set $P1214['type'], .CONTROL_RETURN
    new $P1215, "Integer"
    assign $P1215, 1
    setattribute $P1214, 'payload', $P1215
    throw $P1214
  if_1208_end:
.annotate 'line', 560
    .return ($P1207)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "new"  :subid("84_1300051145.567") :outer("81_1300051145.567")
    .param pmc param_1224
    .param pmc param_1225 :named("name")
    .param pmc param_1226 :optional :named("type")
    .param int has_param_1226 :opt_flag
    .param pmc param_1228 :optional :named("box_target")
    .param int has_param_1228 :opt_flag
.annotate 'line', 503
    .lex "self", param_1224
    .lex "$name", param_1225
    if has_param_1226, optparam_293
    new $P1227, "Undef"
    set param_1226, $P1227
  optparam_293:
    .lex "$type", param_1226
    if has_param_1228, optparam_294
    new $P1229, "Undef"
    set param_1228, $P1229
  optparam_294:
    .lex "$box_target", param_1228
.annotate 'line', 504
    new $P1230, "Undef"
    .lex "$attr", $P1230
    find_lex $P1231, "self"
    repr_instance_of $P1232, $P1231
    store_lex "$attr", $P1232
.annotate 'line', 505
    find_lex $P1233, "$attr"
    find_lex $P1234, "$name"
    find_lex $P1235, "$type"
    find_lex $P1236, "$box_target"
    $P1233."BUILD"($P1234 :named("name"), $P1235 :named("type"), $P1236 :named("box_target"))
    find_lex $P1237, "$attr"
.annotate 'line', 503
    .return ($P1237)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "BUILD"  :subid("85_1300051145.567") :outer("81_1300051145.567")
    .param pmc param_1239
    .param pmc param_1240 :optional :named("name")
    .param int has_param_1240 :opt_flag
    .param pmc param_1242 :optional :named("type")
    .param int has_param_1242 :opt_flag
    .param pmc param_1244 :optional :named("box_target")
    .param int has_param_1244 :opt_flag
.annotate 'line', 509
    .lex "self", param_1239
    if has_param_1240, optparam_295
    new $P1241, "Undef"
    set param_1240, $P1241
  optparam_295:
    .lex "$name", param_1240
    if has_param_1242, optparam_296
    new $P1243, "Undef"
    set param_1242, $P1243
  optparam_296:
    .lex "$type", param_1242
    if has_param_1244, optparam_297
    new $P1245, "Undef"
    set param_1244, $P1245
  optparam_297:
    .lex "$box_target", param_1244
.annotate 'line', 510
    find_lex $P1246, "$name"
    find_lex $P1247, "self"
    get_global $P1248, "$?CLASS"
    setattribute $P1247, $P1248, "$!name", $P1246
.annotate 'line', 511
    find_lex $P1249, "$type"
    find_lex $P1250, "self"
    get_global $P1251, "$?CLASS"
    setattribute $P1250, $P1251, "$!type", $P1249
.annotate 'line', 512
    find_lex $P1252, "$box_target"
    find_lex $P1253, "self"
    get_global $P1254, "$?CLASS"
    setattribute $P1253, $P1254, "$!box_target", $P1252
.annotate 'line', 509
    .return ($P1252)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "name"  :subid("86_1300051145.567") :outer("81_1300051145.567")
    .param pmc param_1256
.annotate 'line', 515
    .lex "self", param_1256
    find_lex $P1257, "self"
    get_global $P1258, "$?CLASS"
    getattribute $P1259, $P1257, $P1258, "$!name"
    unless_null $P1259, vivify_298
    new $P1259, "Undef"
  vivify_298:
    .return ($P1259)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "type"  :subid("87_1300051145.567") :outer("81_1300051145.567")
    .param pmc param_1261
.annotate 'line', 519
    .lex "self", param_1261
.annotate 'line', 520
    find_lex $P1263, "self"
    get_global $P1264, "$?CLASS"
    getattribute $P1265, $P1263, $P1264, "$!type"
    unless_null $P1265, vivify_299
    new $P1265, "Undef"
  vivify_299:
    set $P1262, $P1265
    defined $I1267, $P1262
    if $I1267, default_1266
    null $P1268
    set $P1262, $P1268
  default_1266:
.annotate 'line', 519
    .return ($P1262)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "box_target"  :subid("88_1300051145.567") :outer("81_1300051145.567")
    .param pmc param_1270
.annotate 'line', 523
    .lex "self", param_1270
.annotate 'line', 524
    find_lex $P1273, "self"
    get_global $P1274, "$?CLASS"
    getattribute $P1275, $P1273, $P1274, "$!box_target"
    unless_null $P1275, vivify_300
    new $P1275, "Undef"
  vivify_300:
    if $P1275, if_1272
    new $P1277, "Integer"
    assign $P1277, 0
    set $P1271, $P1277
    goto if_1272_end
  if_1272:
    new $P1276, "Integer"
    assign $P1276, 1
    set $P1271, $P1276
  if_1272_end:
.annotate 'line', 523
    .return ($P1271)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "compose"  :subid("89_1300051145.567") :outer("81_1300051145.567")
    .param pmc param_1279
    .param pmc param_1280
.annotate 'line', 527
    .const 'Sub' $P1332 = "92_1300051145.567" 
    capture_lex $P1332
    .const 'Sub' $P1292 = "90_1300051145.567" 
    capture_lex $P1292
    .lex "self", param_1279
    .lex "$obj", param_1280
.annotate 'line', 528
    new $P1281, "Undef"
    .lex "$long_name", $P1281
    find_lex $P1282, "self"
    get_global $P1283, "$?CLASS"
    getattribute $P1284, $P1282, $P1283, "$!name"
    unless_null $P1284, vivify_301
    new $P1284, "Undef"
  vivify_301:
    set $S1285, $P1284
    new $P1286, 'String'
    set $P1286, $S1285
    store_lex "$long_name", $P1286
.annotate 'line', 529
    find_lex $P1289, "self"
    $P1290 = $P1289."has_mutator"()
    if $P1290, if_1288
.annotate 'line', 541
    .const 'Sub' $P1332 = "92_1300051145.567" 
    capture_lex $P1332
    $P1358 = $P1332()
    set $P1287, $P1358
.annotate 'line', 529
    goto if_1288_end
  if_1288:
    .const 'Sub' $P1292 = "90_1300051145.567" 
    capture_lex $P1292
    $P1330 = $P1292()
    set $P1287, $P1330
  if_1288_end:
.annotate 'line', 527
    .return ($P1287)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block1331"  :anon :subid("92_1300051145.567") :outer("89_1300051145.567")
.annotate 'line', 541
    .const 'Sub' $P1348 = "93_1300051145.567" 
    capture_lex $P1348
.annotate 'line', 542
    new $P1333, "Undef"
    .lex "$method", $P1333
    find_lex $P1334, "$long_name"
    set $S1335, $P1334
    substr $S1336, $S1335, 2
    new $P1337, 'String'
    set $P1337, $S1336
    store_lex "$method", $P1337
.annotate 'line', 543
    find_lex $P1340, "$obj"
    find_lex $P1341, "$method"
    $P1342 = "has_method"($P1340, $P1341, 0)
    unless $P1342, unless_1339
    set $P1338, $P1342
    goto unless_1339_end
  unless_1339:
.annotate 'line', 544
    find_lex $P1343, "$obj"
    get_how $P1344, $P1343
    find_lex $P1345, "$obj"
    find_lex $P1346, "$method"
.annotate 'line', 545
    .const 'Sub' $P1348 = "93_1300051145.567" 
    newclosure $P1356, $P1348
    $P1357 = $P1344."add_method"($P1345, $P1346, $P1356)
.annotate 'line', 543
    set $P1338, $P1357
  unless_1339_end:
.annotate 'line', 541
    .return ($P1338)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block1347"  :anon :subid("93_1300051145.567") :outer("92_1300051145.567")
    .param pmc param_1349
.annotate 'line', 545
    .lex "self", param_1349
.annotate 'line', 546
    find_lex $P1350, "self"
    find_lex $P1351, "$obj"
    get_what $P1352, $P1351
    find_lex $P1353, "$long_name"
    set $S1354, $P1353
    getattribute $P1355, $P1350, $P1352, $S1354
.annotate 'line', 545
    .return ($P1355)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block1291"  :anon :subid("90_1300051145.567") :outer("89_1300051145.567")
.annotate 'line', 529
    .const 'Sub' $P1309 = "91_1300051145.567" 
    capture_lex $P1309
.annotate 'line', 530
    new $P1293, "Undef"
    .lex "$method", $P1293
    find_lex $P1294, "$long_name"
    set $S1295, $P1294
    substr $S1296, $S1295, 1
    new $P1297, 'String'
    set $P1297, $S1296
    store_lex "$method", $P1297
.annotate 'line', 531
    find_lex $P1300, "$obj"
    find_lex $P1301, "$method"
    $P1302 = "has_method"($P1300, $P1301, 0)
    unless $P1302, unless_1299
    set $P1298, $P1302
    goto unless_1299_end
  unless_1299:
.annotate 'line', 532
    find_lex $P1303, "$obj"
    get_how $P1304, $P1303
    find_lex $P1305, "$obj"
    get_what $P1306, $P1305
    find_lex $P1307, "$method"
    .const 'Sub' $P1309 = "91_1300051145.567" 
    newclosure $P1328, $P1309
    $P1329 = $P1304."add_method"($P1306, $P1307, $P1328)
.annotate 'line', 531
    set $P1298, $P1329
  unless_1299_end:
.annotate 'line', 529
    .return ($P1298)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block1308"  :anon :subid("91_1300051145.567") :outer("90_1300051145.567")
    .param pmc param_1310
    .param pmc param_1311 :optional
    .param int has_param_1311 :opt_flag
.annotate 'line', 532
    .lex "self", param_1310
    if has_param_1311, optparam_302
    new $P1312, "Undef"
    set param_1311, $P1312
  optparam_302:
    .lex "$value", param_1311
.annotate 'line', 534
    find_lex $P1314, "$value"
    defined $I1315, $P1314
    unless $I1315, if_1313_end
.annotate 'line', 533
    find_lex $P1316, "self"
    find_lex $P1317, "$obj"
    get_what $P1318, $P1317
    find_lex $P1319, "$long_name"
    set $S1320, $P1319
    find_lex $P1321, "$value"
    setattribute $P1316, $P1318, $S1320, $P1321
  if_1313_end:
.annotate 'line', 536
    find_lex $P1322, "self"
    find_lex $P1323, "$obj"
    get_what $P1324, $P1323
    find_lex $P1325, "$long_name"
    set $S1326, $P1325
    getattribute $P1327, $P1322, $P1324, $S1326
.annotate 'line', 532
    .return ($P1327)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "has_mutator"  :subid("94_1300051145.567") :outer("81_1300051145.567")
    .param pmc param_1360
.annotate 'line', 554
    .lex "self", param_1360
.annotate 'line', 555
    find_lex $P1361, "self"
    get_global $P1362, "$?CLASS"
    getattribute $P1363, $P1361, $P1362, "$!name"
    unless_null $P1363, vivify_303
    new $P1363, "Undef"
  vivify_303:
    set $S1364, $P1363
    substr $S1365, $S1364, 1, 1
    isne $I1366, $S1365, "!"
.annotate 'line', 554
    .return ($I1366)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1396"  :subid("96_1300051145.567") :outer("10_1300051145.567")
.annotate 'line', 571
    .const 'Sub' $P1652 = "117_1300051145.567" 
    capture_lex $P1652
    .const 'Sub' $P1644 = "116_1300051145.567" 
    capture_lex $P1644
    .const 'Sub' $P1638 = "115_1300051145.567" 
    capture_lex $P1638
    .const 'Sub' $P1616 = "113_1300051145.567" 
    capture_lex $P1616
    .const 'Sub' $P1610 = "112_1300051145.567" 
    capture_lex $P1610
    .const 'Sub' $P1604 = "111_1300051145.567" 
    capture_lex $P1604
    .const 'Sub' $P1598 = "110_1300051145.567" 
    capture_lex $P1598
    .const 'Sub' $P1576 = "108_1300051145.567" 
    capture_lex $P1576
    .const 'Sub' $P1527 = "106_1300051145.567" 
    capture_lex $P1527
    .const 'Sub' $P1514 = "105_1300051145.567" 
    capture_lex $P1514
    .const 'Sub' $P1501 = "104_1300051145.567" 
    capture_lex $P1501
    .const 'Sub' $P1497 = "103_1300051145.567" 
    capture_lex $P1497
    .const 'Sub' $P1476 = "102_1300051145.567" 
    capture_lex $P1476
    .const 'Sub' $P1455 = "101_1300051145.567" 
    capture_lex $P1455
    .const 'Sub' $P1436 = "100_1300051145.567" 
    capture_lex $P1436
    .const 'Sub' $P1420 = "99_1300051145.567" 
    capture_lex $P1420
    .const 'Sub' $P1410 = "98_1300051145.567" 
    capture_lex $P1410
    .const 'Sub' $P1399 = "97_1300051145.567" 
    capture_lex $P1399
    get_global $P1398, "$?CLASS"
.annotate 'line', 710
    .const 'Sub' $P1644 = "116_1300051145.567" 
    newclosure $P1650, $P1644
.annotate 'line', 571
    .return ($P1650)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "" :load :init :subid("post304") :outer("96_1300051145.567")
.annotate 'line', 571
    get_hll_global $P1397, ["NQPConcreteRoleHOW"], "_block1396" 
    .local pmc block
    set block, $P1397
    .const 'Sub' $P1652 = "117_1300051145.567" 
    capture_lex $P1652
    $P1652()
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1651"  :anon :subid("117_1300051145.567") :outer("96_1300051145.567")
.annotate 'line', 571
    nqp_get_sc_object $P1653, "1300051141.242", 4
    .local pmc type_obj
    set type_obj, $P1653
    set_global "$?CLASS", type_obj
    get_how $P1654, type_obj
    get_hll_global $P1655, "KnowHOWAttribute"
    $P1656 = $P1655."new"("$!name" :named("name"))
    $P1654."add_attribute"(type_obj, $P1656)
    get_how $P1657, type_obj
    get_hll_global $P1658, "KnowHOWAttribute"
    $P1659 = $P1658."new"("$!instance_of" :named("name"))
    $P1657."add_attribute"(type_obj, $P1659)
    get_how $P1660, type_obj
    get_hll_global $P1661, "KnowHOWAttribute"
    $P1662 = $P1661."new"("%!attributes" :named("name"))
    $P1660."add_attribute"(type_obj, $P1662)
    get_how $P1663, type_obj
    get_hll_global $P1664, "KnowHOWAttribute"
    $P1665 = $P1664."new"("%!methods" :named("name"))
    $P1663."add_attribute"(type_obj, $P1665)
    get_how $P1666, type_obj
    get_hll_global $P1667, "KnowHOWAttribute"
    $P1668 = $P1667."new"("@!multi_methods_to_incorporate" :named("name"))
    $P1666."add_attribute"(type_obj, $P1668)
    get_how $P1669, type_obj
    get_hll_global $P1670, "KnowHOWAttribute"
    $P1671 = $P1670."new"("@!collisions" :named("name"))
    $P1669."add_attribute"(type_obj, $P1671)
    get_how $P1672, type_obj
    get_hll_global $P1673, "KnowHOWAttribute"
    $P1674 = $P1673."new"("@!roles" :named("name"))
    $P1672."add_attribute"(type_obj, $P1674)
    get_how $P1675, type_obj
    get_hll_global $P1676, "KnowHOWAttribute"
    $P1677 = $P1676."new"("@!done" :named("name"))
    $P1675."add_attribute"(type_obj, $P1677)
    get_how $P1678, type_obj
    get_hll_global $P1679, "KnowHOWAttribute"
    $P1680 = $P1679."new"("$!composed" :named("name"))
    $P1678."add_attribute"(type_obj, $P1680)
    get_how $P1681, type_obj
    .const 'Sub' $P1682 = "97_1300051145.567" 
    $P1681."add_method"(type_obj, "new", $P1682)
    get_how $P1683, type_obj
    .const 'Sub' $P1684 = "98_1300051145.567" 
    $P1683."add_method"(type_obj, "BUILD", $P1684)
    get_how $P1685, type_obj
    .const 'Sub' $P1686 = "99_1300051145.567" 
    $P1685."add_method"(type_obj, "new_type", $P1686)
    get_how $P1687, type_obj
    .const 'Sub' $P1688 = "100_1300051145.567" 
    $P1687."add_method"(type_obj, "add_method", $P1688)
    get_how $P1689, type_obj
    .const 'Sub' $P1690 = "101_1300051145.567" 
    $P1689."add_method"(type_obj, "add_multi_method", $P1690)
    get_how $P1691, type_obj
    .const 'Sub' $P1692 = "102_1300051145.567" 
    $P1691."add_method"(type_obj, "add_attribute", $P1692)
    get_how $P1693, type_obj
    .const 'Sub' $P1694 = "103_1300051145.567" 
    $P1693."add_method"(type_obj, "add_parent", $P1694)
    get_how $P1695, type_obj
    .const 'Sub' $P1696 = "104_1300051145.567" 
    $P1695."add_method"(type_obj, "add_role", $P1696)
    get_how $P1697, type_obj
    .const 'Sub' $P1698 = "105_1300051145.567" 
    $P1697."add_method"(type_obj, "add_collision", $P1698)
    get_how $P1699, type_obj
    .const 'Sub' $P1700 = "106_1300051145.567" 
    $P1699."add_method"(type_obj, "compose", $P1700)
    get_how $P1701, type_obj
    .const 'Sub' $P1702 = "108_1300051145.567" 
    $P1701."add_method"(type_obj, "methods", $P1702)
    get_how $P1703, type_obj
    .const 'Sub' $P1704 = "110_1300051145.567" 
    $P1703."add_method"(type_obj, "method_table", $P1704)
    get_how $P1705, type_obj
    .const 'Sub' $P1706 = "111_1300051145.567" 
    $P1705."add_method"(type_obj, "collisions", $P1706)
    get_how $P1707, type_obj
    .const 'Sub' $P1708 = "112_1300051145.567" 
    $P1707."add_method"(type_obj, "name", $P1708)
    get_how $P1709, type_obj
    .const 'Sub' $P1710 = "113_1300051145.567" 
    $P1709."add_method"(type_obj, "attributes", $P1710)
    get_how $P1711, type_obj
    .const 'Sub' $P1712 = "115_1300051145.567" 
    $P1711."add_method"(type_obj, "roles", $P1712)
    get_how $P1713, type_obj
    .const 'Sub' $P1714 = "116_1300051145.567" 
    $P1713."add_method"(type_obj, "instance_of", $P1714)
    get_how $P1715, type_obj
    $P1716 = $P1715."compose"(type_obj)
    .return ($P1716)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "new"  :subid("97_1300051145.567") :outer("96_1300051145.567")
    .param pmc param_1400
    .param pmc param_1401 :named("name")
    .param pmc param_1402 :named("instance_of")
.annotate 'line', 603
    .lex "self", param_1400
    .lex "$name", param_1401
    .lex "$instance_of", param_1402
.annotate 'line', 604
    new $P1403, "Undef"
    .lex "$obj", $P1403
    find_lex $P1404, "self"
    repr_instance_of $P1405, $P1404
    store_lex "$obj", $P1405
.annotate 'line', 605
    find_lex $P1406, "$obj"
    find_lex $P1407, "$name"
    find_lex $P1408, "$instance_of"
    $P1406."BUILD"($P1407 :named("name"), $P1408 :named("instance_of"))
    find_lex $P1409, "$obj"
.annotate 'line', 603
    .return ($P1409)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "BUILD"  :subid("98_1300051145.567") :outer("96_1300051145.567")
    .param pmc param_1411
    .param pmc param_1412 :named("name")
    .param pmc param_1413 :named("instance_of")
.annotate 'line', 609
    .lex "self", param_1411
    .lex "$name", param_1412
    .lex "$instance_of", param_1413
.annotate 'line', 610
    find_lex $P1414, "$name"
    find_lex $P1415, "self"
    get_global $P1416, "$?CLASS"
    setattribute $P1415, $P1416, "$!name", $P1414
.annotate 'line', 611
    find_lex $P1417, "$instance_of"
    find_lex $P1418, "self"
    get_global $P1419, "$?CLASS"
    setattribute $P1418, $P1419, "$!instance_of", $P1417
.annotate 'line', 609
    .return ($P1417)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "new_type"  :subid("99_1300051145.567") :outer("96_1300051145.567")
    .param pmc param_1421
    .param pmc param_1426 :named("instance_of")
    .param pmc param_1422 :optional :named("name")
    .param int has_param_1422 :opt_flag
    .param pmc param_1424 :optional :named("repr")
    .param int has_param_1424 :opt_flag
.annotate 'line', 616
    .lex "self", param_1421
    if has_param_1422, optparam_305
    new $P1423, "String"
    assign $P1423, "<anon>"
    set param_1422, $P1423
  optparam_305:
    .lex "$name", param_1422
    if has_param_1424, optparam_306
    new $P1425, "String"
    assign $P1425, "P6opaque"
    set param_1424, $P1425
  optparam_306:
    .lex "$repr", param_1424
    .lex "$instance_of", param_1426
.annotate 'line', 617
    new $P1427, "Undef"
    .lex "$metarole", $P1427
    find_lex $P1428, "self"
    find_lex $P1429, "$name"
    find_lex $P1430, "$instance_of"
    $P1431 = $P1428."new"($P1429 :named("name"), $P1430 :named("instance_of"))
    store_lex "$metarole", $P1431
.annotate 'line', 618
    find_lex $P1432, "$metarole"
    find_lex $P1433, "$repr"
    set $S1434, $P1433
    repr_type_object_for $P1435, $P1432, $S1434
.annotate 'line', 616
    .return ($P1435)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_method"  :subid("100_1300051145.567") :outer("96_1300051145.567")
    .param pmc param_1437
    .param pmc param_1438
    .param pmc param_1439
    .param pmc param_1440
.annotate 'line', 621
    .lex "self", param_1437
    .lex "$obj", param_1438
    .lex "$name", param_1439
    .lex "$code_obj", param_1440
.annotate 'line', 622
    find_lex $P1442, "$name"
    find_lex $P1443, "self"
    get_global $P1444, "$?CLASS"
    getattribute $P1445, $P1443, $P1444, "%!methods"
    unless_null $P1445, vivify_307
    $P1445 = root_new ['parrot';'Hash']
  vivify_307:
    set $P1446, $P1445[$P1442]
    unless_null $P1446, vivify_308
    new $P1446, "Undef"
  vivify_308:
    unless $P1446, if_1441_end
.annotate 'line', 623
    new $P1447, "String"
    assign $P1447, "This role already has a method named "
    find_lex $P1448, "$name"
    concat $P1449, $P1447, $P1448
    die $P1449
  if_1441_end:
.annotate 'line', 625
    find_lex $P1450, "$code_obj"
    find_lex $P1451, "$name"
    find_lex $P1452, "self"
    get_global $P1453, "$?CLASS"
    getattribute $P1454, $P1452, $P1453, "%!methods"
    unless_null $P1454, vivify_309
    $P1454 = root_new ['parrot';'Hash']
    setattribute $P1452, $P1453, "%!methods", $P1454
  vivify_309:
    set $P1454[$P1451], $P1450
.annotate 'line', 621
    .return ($P1450)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_multi_method"  :subid("101_1300051145.567") :outer("96_1300051145.567")
    .param pmc param_1456
    .param pmc param_1457
    .param pmc param_1458
    .param pmc param_1459
.annotate 'line', 628
    .lex "self", param_1456
    .lex "$obj", param_1457
    .lex "$name", param_1458
    .lex "$code_obj", param_1459
.annotate 'line', 629
    $P1460 = root_new ['parrot';'Hash']
    .lex "%todo", $P1460
.annotate 'line', 628
    find_lex $P1461, "%todo"
.annotate 'line', 630
    find_lex $P1462, "$name"
    find_lex $P1463, "%todo"
    unless_null $P1463, vivify_310
    $P1463 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1463
  vivify_310:
    set $P1463["name"], $P1462
.annotate 'line', 631
    find_lex $P1464, "$code_obj"
    find_lex $P1465, "%todo"
    unless_null $P1465, vivify_311
    $P1465 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1465
  vivify_311:
    set $P1465["code"], $P1464
.annotate 'line', 632
    find_lex $P1466, "%todo"
    find_lex $P1467, "self"
    get_global $P1468, "$?CLASS"
    getattribute $P1469, $P1467, $P1468, "@!multi_methods_to_incorporate"
    unless_null $P1469, vivify_312
    $P1469 = root_new ['parrot';'ResizablePMCArray']
  vivify_312:
    set $N1470, $P1469
    set $I1471, $N1470
    find_lex $P1472, "self"
    get_global $P1473, "$?CLASS"
    getattribute $P1474, $P1472, $P1473, "@!multi_methods_to_incorporate"
    unless_null $P1474, vivify_313
    $P1474 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1472, $P1473, "@!multi_methods_to_incorporate", $P1474
  vivify_313:
    set $P1474[$I1471], $P1466
    find_lex $P1475, "$code_obj"
.annotate 'line', 628
    .return ($P1475)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_attribute"  :subid("102_1300051145.567") :outer("96_1300051145.567")
    .param pmc param_1477
    .param pmc param_1478
    .param pmc param_1479
.annotate 'line', 636
    .lex "self", param_1477
    .lex "$obj", param_1478
    .lex "$meta_attr", param_1479
.annotate 'line', 637
    new $P1480, "Undef"
    .lex "$name", $P1480
    find_lex $P1481, "$meta_attr"
    $P1482 = $P1481."name"()
    store_lex "$name", $P1482
.annotate 'line', 638
    find_lex $P1484, "$name"
    find_lex $P1485, "self"
    get_global $P1486, "$?CLASS"
    getattribute $P1487, $P1485, $P1486, "%!attributes"
    unless_null $P1487, vivify_314
    $P1487 = root_new ['parrot';'Hash']
  vivify_314:
    set $P1488, $P1487[$P1484]
    unless_null $P1488, vivify_315
    new $P1488, "Undef"
  vivify_315:
    unless $P1488, if_1483_end
.annotate 'line', 639
    new $P1489, "String"
    assign $P1489, "This role already has an attribute named "
    find_lex $P1490, "$name"
    concat $P1491, $P1489, $P1490
    die $P1491
  if_1483_end:
.annotate 'line', 641
    find_lex $P1492, "$meta_attr"
    find_lex $P1493, "$name"
    find_lex $P1494, "self"
    get_global $P1495, "$?CLASS"
    getattribute $P1496, $P1494, $P1495, "%!attributes"
    unless_null $P1496, vivify_316
    $P1496 = root_new ['parrot';'Hash']
    setattribute $P1494, $P1495, "%!attributes", $P1496
  vivify_316:
    set $P1496[$P1493], $P1492
.annotate 'line', 636
    .return ($P1492)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_parent"  :subid("103_1300051145.567") :outer("96_1300051145.567")
    .param pmc param_1498
    .param pmc param_1499
    .param pmc param_1500
.annotate 'line', 644
    .lex "self", param_1498
    .lex "$obj", param_1499
    .lex "$parent", param_1500
.annotate 'line', 645
    die "A role cannot inherit from a class in NQP"
.annotate 'line', 644
    .return ()
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_role"  :subid("104_1300051145.567") :outer("96_1300051145.567")
    .param pmc param_1502
    .param pmc param_1503
    .param pmc param_1504
.annotate 'line', 648
    .lex "self", param_1502
    .lex "$obj", param_1503
    .lex "$role", param_1504
.annotate 'line', 649
    find_lex $P1505, "$role"
    find_lex $P1506, "self"
    get_global $P1507, "$?CLASS"
    getattribute $P1508, $P1506, $P1507, "@!roles"
    unless_null $P1508, vivify_317
    $P1508 = root_new ['parrot';'ResizablePMCArray']
  vivify_317:
    set $N1509, $P1508
    set $I1510, $N1509
    find_lex $P1511, "self"
    get_global $P1512, "$?CLASS"
    getattribute $P1513, $P1511, $P1512, "@!roles"
    unless_null $P1513, vivify_318
    $P1513 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1511, $P1512, "@!roles", $P1513
  vivify_318:
    set $P1513[$I1510], $P1505
.annotate 'line', 648
    .return ($P1505)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_collision"  :subid("105_1300051145.567") :outer("96_1300051145.567")
    .param pmc param_1515
    .param pmc param_1516
    .param pmc param_1517
.annotate 'line', 652
    .lex "self", param_1515
    .lex "$obj", param_1516
    .lex "$colliding_name", param_1517
.annotate 'line', 653
    find_lex $P1518, "$colliding_name"
    find_lex $P1519, "self"
    get_global $P1520, "$?CLASS"
    getattribute $P1521, $P1519, $P1520, "@!collisions"
    unless_null $P1521, vivify_319
    $P1521 = root_new ['parrot';'ResizablePMCArray']
  vivify_319:
    set $N1522, $P1521
    set $I1523, $N1522
    find_lex $P1524, "self"
    get_global $P1525, "$?CLASS"
    getattribute $P1526, $P1524, $P1525, "@!collisions"
    unless_null $P1526, vivify_320
    $P1526 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1524, $P1525, "@!collisions", $P1526
  vivify_320:
    set $P1526[$I1523], $P1518
.annotate 'line', 652
    .return ($P1518)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "compose"  :subid("106_1300051145.567") :outer("96_1300051145.567")
    .param pmc param_1528
    .param pmc param_1529
.annotate 'line', 657
    .const 'Sub' $P1541 = "107_1300051145.567" 
    capture_lex $P1541
    .lex "self", param_1528
    .lex "$obj", param_1529
.annotate 'line', 660
    find_lex $P1531, "self"
    get_global $P1532, "$?CLASS"
    getattribute $P1533, $P1531, $P1532, "@!roles"
    unless_null $P1533, vivify_321
    $P1533 = root_new ['parrot';'ResizablePMCArray']
  vivify_321:
    unless $P1533, if_1530_end
.annotate 'line', 661
    find_lex $P1535, "self"
    get_global $P1536, "$?CLASS"
    getattribute $P1537, $P1535, $P1536, "@!roles"
    unless_null $P1537, vivify_322
    $P1537 = root_new ['parrot';'ResizablePMCArray']
  vivify_322:
    defined $I1538, $P1537
    unless $I1538, for_undef_323
    iter $P1534, $P1537
    new $P1565, 'ExceptionHandler'
    set_label $P1565, loop1564_handler
    $P1565."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1565
  loop1564_test:
    unless $P1534, loop1564_done
    shift $P1539, $P1534
  loop1564_redo:
    .const 'Sub' $P1541 = "107_1300051145.567" 
    capture_lex $P1541
    $P1541($P1539)
  loop1564_next:
    goto loop1564_test
  loop1564_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1566, exception, 'type'
    eq $P1566, .CONTROL_LOOP_NEXT, loop1564_next
    eq $P1566, .CONTROL_LOOP_REDO, loop1564_redo
  loop1564_done:
    pop_eh 
  for_undef_323:
.annotate 'line', 665
    get_hll_global $P1567, "RoleToRoleApplier"
    find_lex $P1568, "$obj"
    find_lex $P1569, "self"
    get_global $P1570, "$?CLASS"
    getattribute $P1571, $P1569, $P1570, "@!roles"
    unless_null $P1571, vivify_328
    $P1571 = root_new ['parrot';'ResizablePMCArray']
  vivify_328:
    $P1567."apply"($P1568, $P1571)
  if_1530_end:
.annotate 'line', 669
    new $P1572, "Integer"
    assign $P1572, 1
    find_lex $P1573, "self"
    get_global $P1574, "$?CLASS"
    setattribute $P1573, $P1574, "$!composed", $P1572
    find_lex $P1575, "$obj"
.annotate 'line', 657
    .return ($P1575)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1540"  :anon :subid("107_1300051145.567") :outer("106_1300051145.567")
    .param pmc param_1542
.annotate 'line', 661
    .lex "$_", param_1542
.annotate 'line', 662
    find_lex $P1543, "$_"
    find_lex $P1544, "self"
    get_global $P1545, "$?CLASS"
    getattribute $P1546, $P1544, $P1545, "@!done"
    unless_null $P1546, vivify_324
    $P1546 = root_new ['parrot';'ResizablePMCArray']
  vivify_324:
    set $N1547, $P1546
    set $I1548, $N1547
    find_lex $P1549, "self"
    get_global $P1550, "$?CLASS"
    getattribute $P1551, $P1549, $P1550, "@!done"
    unless_null $P1551, vivify_325
    $P1551 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1549, $P1550, "@!done", $P1551
  vivify_325:
    set $P1551[$I1548], $P1543
.annotate 'line', 663
    find_lex $P1552, "$_"
    get_how $P1553, $P1552
    find_lex $P1554, "$_"
    $P1555 = $P1553."instance_of"($P1554)
    find_lex $P1556, "self"
    get_global $P1557, "$?CLASS"
    getattribute $P1558, $P1556, $P1557, "@!done"
    unless_null $P1558, vivify_326
    $P1558 = root_new ['parrot';'ResizablePMCArray']
  vivify_326:
    set $N1559, $P1558
    set $I1560, $N1559
    find_lex $P1561, "self"
    get_global $P1562, "$?CLASS"
    getattribute $P1563, $P1561, $P1562, "@!done"
    unless_null $P1563, vivify_327
    $P1563 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1561, $P1562, "@!done", $P1563
  vivify_327:
    set $P1563[$I1560], $P1555
.annotate 'line', 661
    .return ($P1555)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "methods"  :subid("108_1300051145.567") :outer("96_1300051145.567")
    .param pmc param_1577
    .param pmc param_1578
.annotate 'line', 678
    .const 'Sub' $P1588 = "109_1300051145.567" 
    capture_lex $P1588
    .lex "self", param_1577
    .lex "$obj", param_1578
.annotate 'line', 679
    $P1579 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meths", $P1579
.annotate 'line', 678
    find_lex $P1580, "@meths"
.annotate 'line', 680
    find_lex $P1582, "self"
    get_global $P1583, "$?CLASS"
    getattribute $P1584, $P1582, $P1583, "%!methods"
    unless_null $P1584, vivify_329
    $P1584 = root_new ['parrot';'Hash']
  vivify_329:
    defined $I1585, $P1584
    unless $I1585, for_undef_330
    iter $P1581, $P1584
    new $P1595, 'ExceptionHandler'
    set_label $P1595, loop1594_handler
    $P1595."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1595
  loop1594_test:
    unless $P1581, loop1594_done
    shift $P1586, $P1581
  loop1594_redo:
    .const 'Sub' $P1588 = "109_1300051145.567" 
    capture_lex $P1588
    $P1588($P1586)
  loop1594_next:
    goto loop1594_test
  loop1594_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1596, exception, 'type'
    eq $P1596, .CONTROL_LOOP_NEXT, loop1594_next
    eq $P1596, .CONTROL_LOOP_REDO, loop1594_redo
  loop1594_done:
    pop_eh 
  for_undef_330:
    find_lex $P1597, "@meths"
.annotate 'line', 678
    .return ($P1597)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1587"  :anon :subid("109_1300051145.567") :outer("108_1300051145.567")
    .param pmc param_1589
.annotate 'line', 680
    .lex "$_", param_1589
.annotate 'line', 681
    find_lex $P1590, "@meths"
    find_lex $P1591, "$_"
    $P1592 = $P1591."value"()
    $P1593 = $P1590."push"($P1592)
.annotate 'line', 680
    .return ($P1593)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "method_table"  :subid("110_1300051145.567") :outer("96_1300051145.567")
    .param pmc param_1599
    .param pmc param_1600
.annotate 'line', 686
    .lex "self", param_1599
    .lex "$obj", param_1600
    find_lex $P1601, "self"
    get_global $P1602, "$?CLASS"
    getattribute $P1603, $P1601, $P1602, "%!methods"
    unless_null $P1603, vivify_331
    $P1603 = root_new ['parrot';'Hash']
  vivify_331:
    .return ($P1603)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "collisions"  :subid("111_1300051145.567") :outer("96_1300051145.567")
    .param pmc param_1605
    .param pmc param_1606
.annotate 'line', 690
    .lex "self", param_1605
    .lex "$obj", param_1606
    find_lex $P1607, "self"
    get_global $P1608, "$?CLASS"
    getattribute $P1609, $P1607, $P1608, "@!collisions"
    unless_null $P1609, vivify_332
    $P1609 = root_new ['parrot';'ResizablePMCArray']
  vivify_332:
    .return ($P1609)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "name"  :subid("112_1300051145.567") :outer("96_1300051145.567")
    .param pmc param_1611
    .param pmc param_1612
.annotate 'line', 694
    .lex "self", param_1611
    .lex "$obj", param_1612
    find_lex $P1613, "self"
    get_global $P1614, "$?CLASS"
    getattribute $P1615, $P1613, $P1614, "$!name"
    unless_null $P1615, vivify_333
    new $P1615, "Undef"
  vivify_333:
    .return ($P1615)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "attributes"  :subid("113_1300051145.567") :outer("96_1300051145.567")
    .param pmc param_1617
    .param pmc param_1618
.annotate 'line', 698
    .const 'Sub' $P1628 = "114_1300051145.567" 
    capture_lex $P1628
    .lex "self", param_1617
    .lex "$obj", param_1618
.annotate 'line', 699
    $P1619 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attrs", $P1619
.annotate 'line', 698
    find_lex $P1620, "@attrs"
.annotate 'line', 700
    find_lex $P1622, "self"
    get_global $P1623, "$?CLASS"
    getattribute $P1624, $P1622, $P1623, "%!attributes"
    unless_null $P1624, vivify_334
    $P1624 = root_new ['parrot';'Hash']
  vivify_334:
    defined $I1625, $P1624
    unless $I1625, for_undef_335
    iter $P1621, $P1624
    new $P1635, 'ExceptionHandler'
    set_label $P1635, loop1634_handler
    $P1635."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1635
  loop1634_test:
    unless $P1621, loop1634_done
    shift $P1626, $P1621
  loop1634_redo:
    .const 'Sub' $P1628 = "114_1300051145.567" 
    capture_lex $P1628
    $P1628($P1626)
  loop1634_next:
    goto loop1634_test
  loop1634_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1636, exception, 'type'
    eq $P1636, .CONTROL_LOOP_NEXT, loop1634_next
    eq $P1636, .CONTROL_LOOP_REDO, loop1634_redo
  loop1634_done:
    pop_eh 
  for_undef_335:
    find_lex $P1637, "@attrs"
.annotate 'line', 698
    .return ($P1637)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1627"  :anon :subid("114_1300051145.567") :outer("113_1300051145.567")
    .param pmc param_1629
.annotate 'line', 700
    .lex "$_", param_1629
.annotate 'line', 701
    find_lex $P1630, "@attrs"
    find_lex $P1631, "$_"
    $P1632 = $P1631."value"()
    $P1633 = $P1630."push"($P1632)
.annotate 'line', 700
    .return ($P1633)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "roles"  :subid("115_1300051145.567") :outer("96_1300051145.567")
    .param pmc param_1639
    .param pmc param_1640
.annotate 'line', 706
    .lex "self", param_1639
    .lex "$obj", param_1640
    find_lex $P1641, "self"
    get_global $P1642, "$?CLASS"
    getattribute $P1643, $P1641, $P1642, "@!roles"
    unless_null $P1643, vivify_336
    $P1643 = root_new ['parrot';'ResizablePMCArray']
  vivify_336:
    .return ($P1643)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "instance_of"  :subid("116_1300051145.567") :outer("96_1300051145.567")
    .param pmc param_1645
    .param pmc param_1646
.annotate 'line', 710
    .lex "self", param_1645
    .lex "$obj", param_1646
    find_lex $P1647, "self"
    get_global $P1648, "$?CLASS"
    getattribute $P1649, $P1647, $P1648, "$!instance_of"
    unless_null $P1649, vivify_337
    new $P1649, "Undef"
  vivify_337:
    .return ($P1649)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1717"  :subid("118_1300051145.567") :outer("10_1300051145.567")
.annotate 'line', 720
    .const 'Sub' $P2014 = "142_1300051145.567" 
    capture_lex $P2014
    .const 'Sub' $P2006 = "141_1300051145.567" 
    capture_lex $P2006
    .const 'Sub' $P1984 = "139_1300051145.567" 
    capture_lex $P1984
    .const 'Sub' $P1978 = "138_1300051145.567" 
    capture_lex $P1978
    .const 'Sub' $P1972 = "137_1300051145.567" 
    capture_lex $P1972
    .const 'Sub' $P1950 = "135_1300051145.567" 
    capture_lex $P1950
    .const 'Sub' $P1844 = "130_1300051145.567" 
    capture_lex $P1844
    .const 'Sub' $P1841 = "129_1300051145.567" 
    capture_lex $P1841
    .const 'Sub' $P1834 = "128_1300051145.567" 
    capture_lex $P1834
    .const 'Sub' $P1821 = "127_1300051145.567" 
    capture_lex $P1821
    .const 'Sub' $P1817 = "126_1300051145.567" 
    capture_lex $P1817
    .const 'Sub' $P1796 = "125_1300051145.567" 
    capture_lex $P1796
    .const 'Sub' $P1775 = "124_1300051145.567" 
    capture_lex $P1775
    .const 'Sub' $P1756 = "123_1300051145.567" 
    capture_lex $P1756
    .const 'Sub' $P1749 = "122_1300051145.567" 
    capture_lex $P1749
    .const 'Sub' $P1735 = "121_1300051145.567" 
    capture_lex $P1735
    .const 'Sub' $P1729 = "120_1300051145.567" 
    capture_lex $P1729
    .const 'Sub' $P1720 = "119_1300051145.567" 
    capture_lex $P1720
    get_global $P1719, "$?CLASS"
.annotate 'line', 883
    .const 'Sub' $P2006 = "141_1300051145.567" 
    newclosure $P2012, $P2006
.annotate 'line', 720
    .return ($P2012)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "" :load :init :subid("post338") :outer("118_1300051145.567")
.annotate 'line', 720
    get_hll_global $P1718, ["NQPParametricRoleHOW"], "_block1717" 
    .local pmc block
    set block, $P1718
    .const 'Sub' $P2014 = "142_1300051145.567" 
    capture_lex $P2014
    $P2014()
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block2013"  :anon :subid("142_1300051145.567") :outer("118_1300051145.567")
.annotate 'line', 720
    nqp_get_sc_object $P2015, "1300051141.242", 5
    .local pmc type_obj
    set type_obj, $P2015
    set_global "$?CLASS", type_obj
    get_how $P2016, type_obj
    get_hll_global $P2017, "KnowHOWAttribute"
    $P2018 = $P2017."new"("$!name" :named("name"))
    $P2016."add_attribute"(type_obj, $P2018)
    get_how $P2019, type_obj
    get_hll_global $P2020, "KnowHOWAttribute"
    $P2021 = $P2020."new"("%!attributes" :named("name"))
    $P2019."add_attribute"(type_obj, $P2021)
    get_how $P2022, type_obj
    get_hll_global $P2023, "KnowHOWAttribute"
    $P2024 = $P2023."new"("%!methods" :named("name"))
    $P2022."add_attribute"(type_obj, $P2024)
    get_how $P2025, type_obj
    get_hll_global $P2026, "KnowHOWAttribute"
    $P2027 = $P2026."new"("@!multi_methods_to_incorporate" :named("name"))
    $P2025."add_attribute"(type_obj, $P2027)
    get_how $P2028, type_obj
    get_hll_global $P2029, "KnowHOWAttribute"
    $P2030 = $P2029."new"("@!roles" :named("name"))
    $P2028."add_attribute"(type_obj, $P2030)
    get_how $P2031, type_obj
    get_hll_global $P2032, "KnowHOWAttribute"
    $P2033 = $P2032."new"("$!composed" :named("name"))
    $P2031."add_attribute"(type_obj, $P2033)
    get_how $P2034, type_obj
    get_hll_global $P2035, "KnowHOWAttribute"
    $P2036 = $P2035."new"("$!body_block" :named("name"))
    $P2034."add_attribute"(type_obj, $P2036)
    get_how $P2037, type_obj
    .const 'Sub' $P2038 = "119_1300051145.567" 
    $P2037."add_method"(type_obj, "new", $P2038)
    get_how $P2039, type_obj
    .const 'Sub' $P2040 = "120_1300051145.567" 
    $P2039."add_method"(type_obj, "BUILD", $P2040)
    get_how $P2041, type_obj
    .const 'Sub' $P2042 = "121_1300051145.567" 
    $P2041."add_method"(type_obj, "new_type", $P2042)
    get_how $P2043, type_obj
    .const 'Sub' $P2044 = "122_1300051145.567" 
    $P2043."add_method"(type_obj, "set_body_block", $P2044)
    get_how $P2045, type_obj
    .const 'Sub' $P2046 = "123_1300051145.567" 
    $P2045."add_method"(type_obj, "add_method", $P2046)
    get_how $P2047, type_obj
    .const 'Sub' $P2048 = "124_1300051145.567" 
    $P2047."add_method"(type_obj, "add_multi_method", $P2048)
    get_how $P2049, type_obj
    .const 'Sub' $P2050 = "125_1300051145.567" 
    $P2049."add_method"(type_obj, "add_attribute", $P2050)
    get_how $P2051, type_obj
    .const 'Sub' $P2052 = "126_1300051145.567" 
    $P2051."add_method"(type_obj, "add_parent", $P2052)
    get_how $P2053, type_obj
    .const 'Sub' $P2054 = "127_1300051145.567" 
    $P2053."add_method"(type_obj, "add_role", $P2054)
    get_how $P2055, type_obj
    .const 'Sub' $P2056 = "128_1300051145.567" 
    $P2055."add_method"(type_obj, "compose", $P2056)
    get_how $P2057, type_obj
    .const 'Sub' $P2058 = "129_1300051145.567" 
    $P2057."add_method"(type_obj, "parametric", $P2058)
    get_how $P2059, type_obj
    .const 'Sub' $P2060 = "130_1300051145.567" 
    $P2059."add_method"(type_obj, "instantiate", $P2060)
    get_how $P2061, type_obj
    .const 'Sub' $P2062 = "135_1300051145.567" 
    $P2061."add_method"(type_obj, "methods", $P2062)
    get_how $P2063, type_obj
    .const 'Sub' $P2064 = "137_1300051145.567" 
    $P2063."add_method"(type_obj, "method_table", $P2064)
    get_how $P2065, type_obj
    .const 'Sub' $P2066 = "138_1300051145.567" 
    $P2065."add_method"(type_obj, "name", $P2066)
    get_how $P2067, type_obj
    .const 'Sub' $P2068 = "139_1300051145.567" 
    $P2067."add_method"(type_obj, "attributes", $P2068)
    get_how $P2069, type_obj
    .const 'Sub' $P2070 = "141_1300051145.567" 
    $P2069."add_method"(type_obj, "roles", $P2070)
    get_how $P2071, type_obj
    $P2072 = $P2071."compose"(type_obj)
    .return ($P2072)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "new"  :subid("119_1300051145.567") :outer("118_1300051145.567")
    .param pmc param_1721
    .param pmc param_1722 :named("name")
.annotate 'line', 750
    .lex "self", param_1721
    .lex "$name", param_1722
.annotate 'line', 751
    new $P1723, "Undef"
    .lex "$obj", $P1723
    find_lex $P1724, "self"
    repr_instance_of $P1725, $P1724
    store_lex "$obj", $P1725
.annotate 'line', 752
    find_lex $P1726, "$obj"
    find_lex $P1727, "$name"
    $P1726."BUILD"($P1727 :named("name"))
    find_lex $P1728, "$obj"
.annotate 'line', 750
    .return ($P1728)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "BUILD"  :subid("120_1300051145.567") :outer("118_1300051145.567")
    .param pmc param_1730
    .param pmc param_1731 :named("name")
.annotate 'line', 756
    .lex "self", param_1730
    .lex "$name", param_1731
.annotate 'line', 757
    find_lex $P1732, "$name"
    find_lex $P1733, "self"
    get_global $P1734, "$?CLASS"
    setattribute $P1733, $P1734, "$!name", $P1732
.annotate 'line', 756
    .return ($P1732)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "new_type"  :subid("121_1300051145.567") :outer("118_1300051145.567")
    .param pmc param_1736
    .param pmc param_1737 :optional :named("name")
    .param int has_param_1737 :opt_flag
    .param pmc param_1739 :optional :named("repr")
    .param int has_param_1739 :opt_flag
.annotate 'line', 762
    .lex "self", param_1736
    if has_param_1737, optparam_339
    new $P1738, "String"
    assign $P1738, "<anon>"
    set param_1737, $P1738
  optparam_339:
    .lex "$name", param_1737
    if has_param_1739, optparam_340
    new $P1740, "String"
    assign $P1740, "P6opaque"
    set param_1739, $P1740
  optparam_340:
    .lex "$repr", param_1739
.annotate 'line', 763
    new $P1741, "Undef"
    .lex "$metarole", $P1741
    find_lex $P1742, "self"
    find_lex $P1743, "$name"
    $P1744 = $P1742."new"($P1743 :named("name"))
    store_lex "$metarole", $P1744
.annotate 'line', 764
    find_lex $P1745, "$metarole"
    find_lex $P1746, "$repr"
    set $S1747, $P1746
    repr_type_object_for $P1748, $P1745, $S1747
.annotate 'line', 762
    .return ($P1748)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "set_body_block"  :subid("122_1300051145.567") :outer("118_1300051145.567")
    .param pmc param_1750
    .param pmc param_1751
    .param pmc param_1752
.annotate 'line', 767
    .lex "self", param_1750
    .lex "$obj", param_1751
    .lex "$body_block", param_1752
.annotate 'line', 768
    find_lex $P1753, "$body_block"
    find_lex $P1754, "self"
    get_global $P1755, "$?CLASS"
    setattribute $P1754, $P1755, "$!body_block", $P1753
.annotate 'line', 767
    .return ($P1753)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_method"  :subid("123_1300051145.567") :outer("118_1300051145.567")
    .param pmc param_1757
    .param pmc param_1758
    .param pmc param_1759
    .param pmc param_1760
.annotate 'line', 771
    .lex "self", param_1757
    .lex "$obj", param_1758
    .lex "$name", param_1759
    .lex "$code_obj", param_1760
.annotate 'line', 772
    find_lex $P1762, "$name"
    find_lex $P1763, "self"
    get_global $P1764, "$?CLASS"
    getattribute $P1765, $P1763, $P1764, "%!methods"
    unless_null $P1765, vivify_341
    $P1765 = root_new ['parrot';'Hash']
  vivify_341:
    set $P1766, $P1765[$P1762]
    unless_null $P1766, vivify_342
    new $P1766, "Undef"
  vivify_342:
    unless $P1766, if_1761_end
.annotate 'line', 773
    new $P1767, "String"
    assign $P1767, "This role already has a method named "
    find_lex $P1768, "$name"
    concat $P1769, $P1767, $P1768
    die $P1769
  if_1761_end:
.annotate 'line', 775
    find_lex $P1770, "$code_obj"
    find_lex $P1771, "$name"
    find_lex $P1772, "self"
    get_global $P1773, "$?CLASS"
    getattribute $P1774, $P1772, $P1773, "%!methods"
    unless_null $P1774, vivify_343
    $P1774 = root_new ['parrot';'Hash']
    setattribute $P1772, $P1773, "%!methods", $P1774
  vivify_343:
    set $P1774[$P1771], $P1770
.annotate 'line', 771
    .return ($P1770)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_multi_method"  :subid("124_1300051145.567") :outer("118_1300051145.567")
    .param pmc param_1776
    .param pmc param_1777
    .param pmc param_1778
    .param pmc param_1779
.annotate 'line', 778
    .lex "self", param_1776
    .lex "$obj", param_1777
    .lex "$name", param_1778
    .lex "$code_obj", param_1779
.annotate 'line', 779
    $P1780 = root_new ['parrot';'Hash']
    .lex "%todo", $P1780
.annotate 'line', 778
    find_lex $P1781, "%todo"
.annotate 'line', 780
    find_lex $P1782, "$name"
    find_lex $P1783, "%todo"
    unless_null $P1783, vivify_344
    $P1783 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1783
  vivify_344:
    set $P1783["name"], $P1782
.annotate 'line', 781
    find_lex $P1784, "$code_obj"
    find_lex $P1785, "%todo"
    unless_null $P1785, vivify_345
    $P1785 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1785
  vivify_345:
    set $P1785["code"], $P1784
.annotate 'line', 782
    find_lex $P1786, "%todo"
    find_lex $P1787, "self"
    get_global $P1788, "$?CLASS"
    getattribute $P1789, $P1787, $P1788, "@!multi_methods_to_incorporate"
    unless_null $P1789, vivify_346
    $P1789 = root_new ['parrot';'ResizablePMCArray']
  vivify_346:
    set $N1790, $P1789
    set $I1791, $N1790
    find_lex $P1792, "self"
    get_global $P1793, "$?CLASS"
    getattribute $P1794, $P1792, $P1793, "@!multi_methods_to_incorporate"
    unless_null $P1794, vivify_347
    $P1794 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1792, $P1793, "@!multi_methods_to_incorporate", $P1794
  vivify_347:
    set $P1794[$I1791], $P1786
    find_lex $P1795, "$code_obj"
.annotate 'line', 778
    .return ($P1795)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_attribute"  :subid("125_1300051145.567") :outer("118_1300051145.567")
    .param pmc param_1797
    .param pmc param_1798
    .param pmc param_1799
.annotate 'line', 786
    .lex "self", param_1797
    .lex "$obj", param_1798
    .lex "$meta_attr", param_1799
.annotate 'line', 787
    new $P1800, "Undef"
    .lex "$name", $P1800
    find_lex $P1801, "$meta_attr"
    $P1802 = $P1801."name"()
    store_lex "$name", $P1802
.annotate 'line', 788
    find_lex $P1804, "$name"
    find_lex $P1805, "self"
    get_global $P1806, "$?CLASS"
    getattribute $P1807, $P1805, $P1806, "%!attributes"
    unless_null $P1807, vivify_348
    $P1807 = root_new ['parrot';'Hash']
  vivify_348:
    set $P1808, $P1807[$P1804]
    unless_null $P1808, vivify_349
    new $P1808, "Undef"
  vivify_349:
    unless $P1808, if_1803_end
.annotate 'line', 789
    new $P1809, "String"
    assign $P1809, "This role already has an attribute named "
    find_lex $P1810, "$name"
    concat $P1811, $P1809, $P1810
    die $P1811
  if_1803_end:
.annotate 'line', 791
    find_lex $P1812, "$meta_attr"
    find_lex $P1813, "$name"
    find_lex $P1814, "self"
    get_global $P1815, "$?CLASS"
    getattribute $P1816, $P1814, $P1815, "%!attributes"
    unless_null $P1816, vivify_350
    $P1816 = root_new ['parrot';'Hash']
    setattribute $P1814, $P1815, "%!attributes", $P1816
  vivify_350:
    set $P1816[$P1813], $P1812
.annotate 'line', 786
    .return ($P1812)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_parent"  :subid("126_1300051145.567") :outer("118_1300051145.567")
    .param pmc param_1818
    .param pmc param_1819
    .param pmc param_1820
.annotate 'line', 794
    .lex "self", param_1818
    .lex "$obj", param_1819
    .lex "$parent", param_1820
.annotate 'line', 795
    die "A role cannot inherit from a class"
.annotate 'line', 794
    .return ()
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_role"  :subid("127_1300051145.567") :outer("118_1300051145.567")
    .param pmc param_1822
    .param pmc param_1823
    .param pmc param_1824
.annotate 'line', 798
    .lex "self", param_1822
    .lex "$obj", param_1823
    .lex "$role", param_1824
.annotate 'line', 799
    find_lex $P1825, "$role"
    find_lex $P1826, "self"
    get_global $P1827, "$?CLASS"
    getattribute $P1828, $P1826, $P1827, "@!roles"
    unless_null $P1828, vivify_351
    $P1828 = root_new ['parrot';'ResizablePMCArray']
  vivify_351:
    set $N1829, $P1828
    set $I1830, $N1829
    find_lex $P1831, "self"
    get_global $P1832, "$?CLASS"
    getattribute $P1833, $P1831, $P1832, "@!roles"
    unless_null $P1833, vivify_352
    $P1833 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1831, $P1832, "@!roles", $P1833
  vivify_352:
    set $P1833[$I1830], $P1825
.annotate 'line', 798
    .return ($P1825)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "compose"  :subid("128_1300051145.567") :outer("118_1300051145.567")
    .param pmc param_1835
    .param pmc param_1836
.annotate 'line', 803
    .lex "self", param_1835
    .lex "$obj", param_1836
.annotate 'line', 804
    new $P1837, "Integer"
    assign $P1837, 1
    find_lex $P1838, "self"
    get_global $P1839, "$?CLASS"
    setattribute $P1838, $P1839, "$!composed", $P1837
    find_lex $P1840, "$obj"
.annotate 'line', 803
    .return ($P1840)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "parametric"  :subid("129_1300051145.567") :outer("118_1300051145.567")
    .param pmc param_1842
    .param pmc param_1843
.annotate 'line', 814
    .lex "self", param_1842
    .lex "$obj", param_1843
    .return (1)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "instantiate"  :subid("130_1300051145.567") :outer("118_1300051145.567")
    .param pmc param_1847
    .param pmc param_1848
    .param pmc param_1849
.annotate 'line', 820
    .const 'Sub' $P1928 = "134_1300051145.567" 
    capture_lex $P1928
    .const 'Sub' $P1907 = "133_1300051145.567" 
    capture_lex $P1907
    .const 'Sub' $P1886 = "132_1300051145.567" 
    capture_lex $P1886
    .const 'Sub' $P1868 = "131_1300051145.567" 
    capture_lex $P1868
    new $P1846, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1846, control_1845
    push_eh $P1846
    .lex "self", param_1847
    .lex "$obj", param_1848
    .lex "$class_arg", param_1849
.annotate 'line', 826
    new $P1850, "Undef"
    .lex "$irole", $P1850
.annotate 'line', 823
    find_lex $P1851, "self"
    get_global $P1852, "$?CLASS"
    getattribute $P1853, $P1851, $P1852, "$!body_block"
    unless_null $P1853, vivify_353
    new $P1853, "Undef"
  vivify_353:
    find_lex $P1854, "$class_arg"
    $P1853($P1854)
.annotate 'line', 826
    get_hll_global $P1855, "NQPConcreteRoleHOW"
    find_lex $P1856, "self"
    get_global $P1857, "$?CLASS"
    getattribute $P1858, $P1856, $P1857, "$!name"
    unless_null $P1858, vivify_354
    new $P1858, "Undef"
  vivify_354:
    find_lex $P1859, "$obj"
    $P1860 = $P1855."new_type"($P1858 :named("name"), $P1859 :named("instance_of"))
    store_lex "$irole", $P1860
.annotate 'line', 830
    find_lex $P1862, "self"
    get_global $P1863, "$?CLASS"
    getattribute $P1864, $P1862, $P1863, "%!attributes"
    unless_null $P1864, vivify_355
    $P1864 = root_new ['parrot';'Hash']
  vivify_355:
    defined $I1865, $P1864
    unless $I1865, for_undef_356
    iter $P1861, $P1864
    new $P1877, 'ExceptionHandler'
    set_label $P1877, loop1876_handler
    $P1877."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1877
  loop1876_test:
    unless $P1861, loop1876_done
    shift $P1866, $P1861
  loop1876_redo:
    .const 'Sub' $P1868 = "131_1300051145.567" 
    capture_lex $P1868
    $P1868($P1866)
  loop1876_next:
    goto loop1876_test
  loop1876_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1878, exception, 'type'
    eq $P1878, .CONTROL_LOOP_NEXT, loop1876_next
    eq $P1878, .CONTROL_LOOP_REDO, loop1876_redo
  loop1876_done:
    pop_eh 
  for_undef_356:
.annotate 'line', 836
    find_lex $P1880, "self"
    get_global $P1881, "$?CLASS"
    getattribute $P1882, $P1880, $P1881, "%!methods"
    unless_null $P1882, vivify_357
    $P1882 = root_new ['parrot';'Hash']
  vivify_357:
    defined $I1883, $P1882
    unless $I1883, for_undef_358
    iter $P1879, $P1882
    new $P1898, 'ExceptionHandler'
    set_label $P1898, loop1897_handler
    $P1898."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1898
  loop1897_test:
    unless $P1879, loop1897_done
    shift $P1884, $P1879
  loop1897_redo:
    .const 'Sub' $P1886 = "132_1300051145.567" 
    capture_lex $P1886
    $P1886($P1884)
  loop1897_next:
    goto loop1897_test
  loop1897_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1899, exception, 'type'
    eq $P1899, .CONTROL_LOOP_NEXT, loop1897_next
    eq $P1899, .CONTROL_LOOP_REDO, loop1897_redo
  loop1897_done:
    pop_eh 
  for_undef_358:
.annotate 'line', 839
    find_lex $P1901, "self"
    get_global $P1902, "$?CLASS"
    getattribute $P1903, $P1901, $P1902, "@!multi_methods_to_incorporate"
    unless_null $P1903, vivify_359
    $P1903 = root_new ['parrot';'ResizablePMCArray']
  vivify_359:
    defined $I1904, $P1903
    unless $I1904, for_undef_360
    iter $P1900, $P1903
    new $P1919, 'ExceptionHandler'
    set_label $P1919, loop1918_handler
    $P1919."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1919
  loop1918_test:
    unless $P1900, loop1918_done
    shift $P1905, $P1900
  loop1918_redo:
    .const 'Sub' $P1907 = "133_1300051145.567" 
    capture_lex $P1907
    $P1907($P1905)
  loop1918_next:
    goto loop1918_test
  loop1918_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1920, exception, 'type'
    eq $P1920, .CONTROL_LOOP_NEXT, loop1918_next
    eq $P1920, .CONTROL_LOOP_REDO, loop1918_redo
  loop1918_done:
    pop_eh 
  for_undef_360:
.annotate 'line', 844
    find_lex $P1922, "self"
    get_global $P1923, "$?CLASS"
    getattribute $P1924, $P1922, $P1923, "@!roles"
    unless_null $P1924, vivify_365
    $P1924 = root_new ['parrot';'ResizablePMCArray']
  vivify_365:
    defined $I1925, $P1924
    unless $I1925, for_undef_366
    iter $P1921, $P1924
    new $P1942, 'ExceptionHandler'
    set_label $P1942, loop1941_handler
    $P1942."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1942
  loop1941_test:
    unless $P1921, loop1941_done
    shift $P1926, $P1921
  loop1941_redo:
    .const 'Sub' $P1928 = "134_1300051145.567" 
    capture_lex $P1928
    $P1928($P1926)
  loop1941_next:
    goto loop1941_test
  loop1941_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1943, exception, 'type'
    eq $P1943, .CONTROL_LOOP_NEXT, loop1941_next
    eq $P1943, .CONTROL_LOOP_REDO, loop1941_redo
  loop1941_done:
    pop_eh 
  for_undef_366:
.annotate 'line', 850
    find_lex $P1944, "$irole"
    get_how $P1945, $P1944
    find_lex $P1946, "$irole"
    $P1945."compose"($P1946)
.annotate 'line', 851
    new $P1947, "Exception"
    set $P1947['type'], .CONTROL_RETURN
    find_lex $P1948, "$irole"
    setattribute $P1947, 'payload', $P1948
    throw $P1947
.annotate 'line', 820
    .return ()
  control_1845:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1949, exception, "payload"
    .return ($P1949)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1867"  :anon :subid("131_1300051145.567") :outer("130_1300051145.567")
    .param pmc param_1869
.annotate 'line', 830
    .lex "$_", param_1869
.annotate 'line', 831
    find_lex $P1870, "$irole"
    get_how $P1871, $P1870
    find_lex $P1872, "$irole"
    find_lex $P1873, "$_"
    $P1874 = $P1873."value"()
    $P1875 = $P1871."add_attribute"($P1872, $P1874)
.annotate 'line', 830
    .return ($P1875)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1885"  :anon :subid("132_1300051145.567") :outer("130_1300051145.567")
    .param pmc param_1887
.annotate 'line', 836
    .lex "$_", param_1887
.annotate 'line', 837
    find_lex $P1888, "$irole"
    get_how $P1889, $P1888
    find_lex $P1890, "$irole"
    find_lex $P1891, "$_"
    $P1892 = $P1891."key"()
    find_lex $P1893, "$_"
    $P1894 = $P1893."value"()
    clone $P1895, $P1894
    $P1896 = $P1889."add_method"($P1890, $P1892, $P1895)
.annotate 'line', 836
    .return ($P1896)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1906"  :anon :subid("133_1300051145.567") :outer("130_1300051145.567")
    .param pmc param_1908
.annotate 'line', 839
    .lex "$_", param_1908
.annotate 'line', 840
    find_lex $P1909, "$irole"
    get_how $P1910, $P1909
    find_lex $P1911, "$irole"
    find_lex $P1912, "$_"
    unless_null $P1912, vivify_361
    $P1912 = root_new ['parrot';'Hash']
  vivify_361:
    set $P1913, $P1912["name"]
    unless_null $P1913, vivify_362
    new $P1913, "Undef"
  vivify_362:
    find_lex $P1914, "$_"
    unless_null $P1914, vivify_363
    $P1914 = root_new ['parrot';'Hash']
  vivify_363:
    set $P1915, $P1914["code"]
    unless_null $P1915, vivify_364
    new $P1915, "Undef"
  vivify_364:
    clone $P1916, $P1915
    $P1917 = $P1910."add_multi_method"($P1911, $P1913, $P1916)
.annotate 'line', 839
    .return ($P1917)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1927"  :anon :subid("134_1300051145.567") :outer("130_1300051145.567")
    .param pmc param_1930
.annotate 'line', 845
    new $P1929, "Undef"
    .lex "$instantiated", $P1929
    .lex "$_", param_1930
    find_lex $P1931, "$irole"
    get_how $P1932, $P1931
    find_lex $P1933, "$irole"
    find_lex $P1934, "$class_arg"
    $P1935 = $P1932."instantiate"($P1933, $P1934)
    store_lex "$instantiated", $P1935
.annotate 'line', 846
    find_lex $P1936, "$irole"
    get_how $P1937, $P1936
    find_lex $P1938, "$irole"
    find_lex $P1939, "$instantiated"
    $P1940 = $P1937."add_role"($P1938, $P1939)
.annotate 'line', 844
    .return ($P1940)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "methods"  :subid("135_1300051145.567") :outer("118_1300051145.567")
    .param pmc param_1951
    .param pmc param_1952
.annotate 'line', 859
    .const 'Sub' $P1962 = "136_1300051145.567" 
    capture_lex $P1962
    .lex "self", param_1951
    .lex "$obj", param_1952
.annotate 'line', 860
    $P1953 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meths", $P1953
.annotate 'line', 859
    find_lex $P1954, "@meths"
.annotate 'line', 861
    find_lex $P1956, "self"
    get_global $P1957, "$?CLASS"
    getattribute $P1958, $P1956, $P1957, "%!methods"
    unless_null $P1958, vivify_367
    $P1958 = root_new ['parrot';'Hash']
  vivify_367:
    defined $I1959, $P1958
    unless $I1959, for_undef_368
    iter $P1955, $P1958
    new $P1969, 'ExceptionHandler'
    set_label $P1969, loop1968_handler
    $P1969."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1969
  loop1968_test:
    unless $P1955, loop1968_done
    shift $P1960, $P1955
  loop1968_redo:
    .const 'Sub' $P1962 = "136_1300051145.567" 
    capture_lex $P1962
    $P1962($P1960)
  loop1968_next:
    goto loop1968_test
  loop1968_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1970, exception, 'type'
    eq $P1970, .CONTROL_LOOP_NEXT, loop1968_next
    eq $P1970, .CONTROL_LOOP_REDO, loop1968_redo
  loop1968_done:
    pop_eh 
  for_undef_368:
    find_lex $P1971, "@meths"
.annotate 'line', 859
    .return ($P1971)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1961"  :anon :subid("136_1300051145.567") :outer("135_1300051145.567")
    .param pmc param_1963
.annotate 'line', 861
    .lex "$_", param_1963
.annotate 'line', 862
    find_lex $P1964, "@meths"
    find_lex $P1965, "$_"
    $P1966 = $P1965."value"()
    $P1967 = $P1964."push"($P1966)
.annotate 'line', 861
    .return ($P1967)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "method_table"  :subid("137_1300051145.567") :outer("118_1300051145.567")
    .param pmc param_1973
    .param pmc param_1974
.annotate 'line', 867
    .lex "self", param_1973
    .lex "$obj", param_1974
    find_lex $P1975, "self"
    get_global $P1976, "$?CLASS"
    getattribute $P1977, $P1975, $P1976, "%!methods"
    unless_null $P1977, vivify_369
    $P1977 = root_new ['parrot';'Hash']
  vivify_369:
    .return ($P1977)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "name"  :subid("138_1300051145.567") :outer("118_1300051145.567")
    .param pmc param_1979
    .param pmc param_1980
.annotate 'line', 871
    .lex "self", param_1979
    .lex "$obj", param_1980
    find_lex $P1981, "self"
    get_global $P1982, "$?CLASS"
    getattribute $P1983, $P1981, $P1982, "$!name"
    unless_null $P1983, vivify_370
    new $P1983, "Undef"
  vivify_370:
    .return ($P1983)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "attributes"  :subid("139_1300051145.567") :outer("118_1300051145.567")
    .param pmc param_1985
    .param pmc param_1986
.annotate 'line', 875
    .const 'Sub' $P1996 = "140_1300051145.567" 
    capture_lex $P1996
    .lex "self", param_1985
    .lex "$obj", param_1986
.annotate 'line', 876
    $P1987 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attrs", $P1987
.annotate 'line', 875
    find_lex $P1988, "@attrs"
.annotate 'line', 877
    find_lex $P1990, "self"
    get_global $P1991, "$?CLASS"
    getattribute $P1992, $P1990, $P1991, "%!attributes"
    unless_null $P1992, vivify_371
    $P1992 = root_new ['parrot';'Hash']
  vivify_371:
    defined $I1993, $P1992
    unless $I1993, for_undef_372
    iter $P1989, $P1992
    new $P2003, 'ExceptionHandler'
    set_label $P2003, loop2002_handler
    $P2003."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2003
  loop2002_test:
    unless $P1989, loop2002_done
    shift $P1994, $P1989
  loop2002_redo:
    .const 'Sub' $P1996 = "140_1300051145.567" 
    capture_lex $P1996
    $P1996($P1994)
  loop2002_next:
    goto loop2002_test
  loop2002_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2004, exception, 'type'
    eq $P2004, .CONTROL_LOOP_NEXT, loop2002_next
    eq $P2004, .CONTROL_LOOP_REDO, loop2002_redo
  loop2002_done:
    pop_eh 
  for_undef_372:
    find_lex $P2005, "@attrs"
.annotate 'line', 875
    .return ($P2005)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1995"  :anon :subid("140_1300051145.567") :outer("139_1300051145.567")
    .param pmc param_1997
.annotate 'line', 877
    .lex "$_", param_1997
.annotate 'line', 878
    find_lex $P1998, "@attrs"
    find_lex $P1999, "$_"
    $P2000 = $P1999."value"()
    $P2001 = $P1998."push"($P2000)
.annotate 'line', 877
    .return ($P2001)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "roles"  :subid("141_1300051145.567") :outer("118_1300051145.567")
    .param pmc param_2007
    .param pmc param_2008
.annotate 'line', 883
    .lex "self", param_2007
    .lex "$obj", param_2008
    find_lex $P2009, "self"
    get_global $P2010, "$?CLASS"
    getattribute $P2011, $P2009, $P2010, "@!roles"
    unless_null $P2011, vivify_373
    $P2011 = root_new ['parrot';'ResizablePMCArray']
  vivify_373:
    .return ($P2011)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block2073"  :subid("143_1300051145.567") :outer("10_1300051145.567")
.annotate 'line', 889
    .const 'Sub' $P2282 = "153_1300051145.567" 
    capture_lex $P2282
    .const 'Sub' $P2146 = "148_1300051145.567" 
    capture_lex $P2146
    .const 'Sub' $P2111 = "146_1300051145.567" 
    capture_lex $P2111
    .const 'Sub' $P2076 = "144_1300051145.567" 
    capture_lex $P2076
    get_global $P2075, "$?CLASS"
.annotate 'line', 891
    .const 'Sub' $P2076 = "144_1300051145.567" 
    newclosure $P2110, $P2076
    .lex "has_method", $P2110
.annotate 'line', 899
    .const 'Sub' $P2111 = "146_1300051145.567" 
    newclosure $P2143, $P2111
    .lex "has_attribute", $P2143
.annotate 'line', 889
    find_lex $P2144, "has_method"
    find_lex $P2145, "has_attribute"
.annotate 'line', 907
    .const 'Sub' $P2146 = "148_1300051145.567" 
    newclosure $P2280, $P2146
.annotate 'line', 889
    .return ($P2280)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "" :load :init :subid("post374") :outer("143_1300051145.567")
.annotate 'line', 889
    get_hll_global $P2074, ["RoleToClassApplier"], "_block2073" 
    .local pmc block
    set block, $P2074
    .const 'Sub' $P2282 = "153_1300051145.567" 
    capture_lex $P2282
    $P2282()
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block2281"  :anon :subid("153_1300051145.567") :outer("143_1300051145.567")
.annotate 'line', 889
    nqp_get_sc_object $P2283, "1300051141.242", 6
    .local pmc type_obj
    set type_obj, $P2283
    set_global "$?CLASS", type_obj
    get_how $P2284, type_obj
    .const 'Sub' $P2285 = "148_1300051145.567" 
    $P2284."add_method"(type_obj, "apply", $P2285)
    get_how $P2286, type_obj
    $P2287 = $P2286."compose"(type_obj)
    .return ($P2287)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "has_method"  :subid("144_1300051145.567") :outer("143_1300051145.567")
    .param pmc param_2079
    .param pmc param_2080
    .param pmc param_2081
.annotate 'line', 891
    .const 'Sub' $P2093 = "145_1300051145.567" 
    capture_lex $P2093
    new $P2078, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2078, control_2077
    push_eh $P2078
    .lex "$target", param_2079
    .lex "$name", param_2080
    .lex "$local", param_2081
.annotate 'line', 892
    $P2082 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P2082
    find_lex $P2083, "$target"
    get_how $P2084, $P2083
    find_lex $P2085, "$target"
    find_lex $P2086, "$local"
    $P2087 = $P2084."methods"($P2085, $P2086 :named("local"))
    store_lex "@methods", $P2087
.annotate 'line', 893
    find_lex $P2089, "@methods"
    defined $I2090, $P2089
    unless $I2090, for_undef_375
    iter $P2088, $P2089
    new $P2105, 'ExceptionHandler'
    set_label $P2105, loop2104_handler
    $P2105."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2105
  loop2104_test:
    unless $P2088, loop2104_done
    shift $P2091, $P2088
  loop2104_redo:
    .const 'Sub' $P2093 = "145_1300051145.567" 
    capture_lex $P2093
    $P2093($P2091)
  loop2104_next:
    goto loop2104_test
  loop2104_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2106, exception, 'type'
    eq $P2106, .CONTROL_LOOP_NEXT, loop2104_next
    eq $P2106, .CONTROL_LOOP_REDO, loop2104_redo
  loop2104_done:
    pop_eh 
  for_undef_375:
.annotate 'line', 896
    new $P2107, "Exception"
    set $P2107['type'], .CONTROL_RETURN
    new $P2108, "Integer"
    assign $P2108, 0
    setattribute $P2107, 'payload', $P2108
    throw $P2107
.annotate 'line', 891
    .return ()
  control_2077:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2109, exception, "payload"
    .return ($P2109)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "_block2092"  :anon :subid("145_1300051145.567") :outer("144_1300051145.567")
    .param pmc param_2094
.annotate 'line', 893
    .lex "$_", param_2094
.annotate 'line', 894
    find_lex $P2097, "$_"
    set $S2098, $P2097
    find_lex $P2099, "$name"
    set $S2100, $P2099
    iseq $I2101, $S2098, $S2100
    if $I2101, if_2096
    new $P2095, 'Integer'
    set $P2095, $I2101
    goto if_2096_end
  if_2096:
    new $P2102, "Exception"
    set $P2102['type'], .CONTROL_RETURN
    new $P2103, "Integer"
    assign $P2103, 1
    setattribute $P2102, 'payload', $P2103
    throw $P2102
  if_2096_end:
.annotate 'line', 893
    .return ($P2095)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "has_attribute"  :subid("146_1300051145.567") :outer("143_1300051145.567")
    .param pmc param_2114
    .param pmc param_2115
.annotate 'line', 899
    .const 'Sub' $P2126 = "147_1300051145.567" 
    capture_lex $P2126
    new $P2113, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2113, control_2112
    push_eh $P2113
    .lex "$target", param_2114
    .lex "$name", param_2115
.annotate 'line', 900
    $P2116 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attributes", $P2116
    find_lex $P2117, "$target"
    get_how $P2118, $P2117
    find_lex $P2119, "$target"
    $P2120 = $P2118."attributes"($P2119, 1 :named("local"))
    store_lex "@attributes", $P2120
.annotate 'line', 901
    find_lex $P2122, "@attributes"
    defined $I2123, $P2122
    unless $I2123, for_undef_376
    iter $P2121, $P2122
    new $P2138, 'ExceptionHandler'
    set_label $P2138, loop2137_handler
    $P2138."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2138
  loop2137_test:
    unless $P2121, loop2137_done
    shift $P2124, $P2121
  loop2137_redo:
    .const 'Sub' $P2126 = "147_1300051145.567" 
    capture_lex $P2126
    $P2126($P2124)
  loop2137_next:
    goto loop2137_test
  loop2137_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2139, exception, 'type'
    eq $P2139, .CONTROL_LOOP_NEXT, loop2137_next
    eq $P2139, .CONTROL_LOOP_REDO, loop2137_redo
  loop2137_done:
    pop_eh 
  for_undef_376:
.annotate 'line', 904
    new $P2140, "Exception"
    set $P2140['type'], .CONTROL_RETURN
    new $P2141, "Integer"
    assign $P2141, 0
    setattribute $P2140, 'payload', $P2141
    throw $P2140
.annotate 'line', 899
    .return ()
  control_2112:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2142, exception, "payload"
    .return ($P2142)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "_block2125"  :anon :subid("147_1300051145.567") :outer("146_1300051145.567")
    .param pmc param_2127
.annotate 'line', 901
    .lex "$_", param_2127
.annotate 'line', 902
    find_lex $P2130, "$_"
    $S2131 = $P2130."name"()
    find_lex $P2132, "$name"
    set $S2133, $P2132
    iseq $I2134, $S2131, $S2133
    if $I2134, if_2129
    new $P2128, 'Integer'
    set $P2128, $I2134
    goto if_2129_end
  if_2129:
    new $P2135, "Exception"
    set $P2135['type'], .CONTROL_RETURN
    new $P2136, "Integer"
    assign $P2136, 1
    setattribute $P2135, 'payload', $P2136
    throw $P2135
  if_2129_end:
.annotate 'line', 901
    .return ($P2128)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "apply"  :subid("148_1300051145.567") :outer("143_1300051145.567")
    .param pmc param_2147
    .param pmc param_2148
    .param pmc param_2149
.annotate 'line', 907
    .const 'Sub' $P2251 = "152_1300051145.567" 
    capture_lex $P2251
    .const 'Sub' $P2225 = "151_1300051145.567" 
    capture_lex $P2225
    .const 'Sub' $P2196 = "150_1300051145.567" 
    capture_lex $P2196
    .const 'Sub' $P2176 = "149_1300051145.567" 
    capture_lex $P2176
    .lex "self", param_2147
    .lex "$target", param_2148
    .lex "@roles", param_2149
.annotate 'line', 910
    new $P2150, "Undef"
    .lex "$to_compose", $P2150
.annotate 'line', 911
    new $P2151, "Undef"
    .lex "$to_compose_meta", $P2151
.annotate 'line', 926
    $P2152 = root_new ['parrot';'ResizablePMCArray']
    .lex "@collisions", $P2152
.annotate 'line', 935
    $P2153 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P2153
.annotate 'line', 943
    $P2154 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attributes", $P2154
.annotate 'line', 955
    $P2155 = root_new ['parrot';'ResizablePMCArray']
    .lex "@done", $P2155
.annotate 'line', 907
    find_lex $P2156, "$to_compose"
    find_lex $P2157, "$to_compose_meta"
.annotate 'line', 912
    find_lex $P2159, "@roles"
    set $N2160, $P2159
    iseq $I2161, $N2160, 1.0
    if $I2161, if_2158
.annotate 'line', 917
    get_hll_global $P2166, "NQPConcreteRoleHOW"
    get_hll_global $P2167, "NQPMu"
    $P2168 = $P2166."new_type"($P2167 :named("instance_of"))
    store_lex "$to_compose", $P2168
.annotate 'line', 918
    find_lex $P2169, "$to_compose"
    get_how $P2170, $P2169
    store_lex "$to_compose_meta", $P2170
.annotate 'line', 919
    find_lex $P2172, "@roles"
    defined $I2173, $P2172
    unless $I2173, for_undef_377
    iter $P2171, $P2172
    new $P2183, 'ExceptionHandler'
    set_label $P2183, loop2182_handler
    $P2183."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2183
  loop2182_test:
    unless $P2171, loop2182_done
    shift $P2174, $P2171
  loop2182_redo:
    .const 'Sub' $P2176 = "149_1300051145.567" 
    capture_lex $P2176
    $P2176($P2174)
  loop2182_next:
    goto loop2182_test
  loop2182_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2184, exception, 'type'
    eq $P2184, .CONTROL_LOOP_NEXT, loop2182_next
    eq $P2184, .CONTROL_LOOP_REDO, loop2182_redo
  loop2182_done:
    pop_eh 
  for_undef_377:
.annotate 'line', 922
    find_lex $P2185, "$to_compose_meta"
    find_lex $P2186, "$to_compose"
    $P2187 = $P2185."compose"($P2186)
    store_lex "$to_compose", $P2187
.annotate 'line', 916
    goto if_2158_end
  if_2158:
.annotate 'line', 913
    find_lex $P2162, "@roles"
    unless_null $P2162, vivify_378
    $P2162 = root_new ['parrot';'ResizablePMCArray']
  vivify_378:
    set $P2163, $P2162[0]
    unless_null $P2163, vivify_379
    new $P2163, "Undef"
  vivify_379:
    store_lex "$to_compose", $P2163
.annotate 'line', 914
    find_lex $P2164, "$to_compose"
    get_how $P2165, $P2164
    store_lex "$to_compose_meta", $P2165
  if_2158_end:
.annotate 'line', 926
    find_lex $P2188, "$to_compose_meta"
    find_lex $P2189, "$to_compose"
    $P2190 = $P2188."collisions"($P2189)
    store_lex "@collisions", $P2190
.annotate 'line', 927
    find_lex $P2192, "@collisions"
    defined $I2193, $P2192
    unless $I2193, for_undef_380
    iter $P2191, $P2192
    new $P2215, 'ExceptionHandler'
    set_label $P2215, loop2214_handler
    $P2215."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2215
  loop2214_test:
    unless $P2191, loop2214_done
    shift $P2194, $P2191
  loop2214_redo:
    .const 'Sub' $P2196 = "150_1300051145.567" 
    capture_lex $P2196
    $P2196($P2194)
  loop2214_next:
    goto loop2214_test
  loop2214_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2216, exception, 'type'
    eq $P2216, .CONTROL_LOOP_NEXT, loop2214_next
    eq $P2216, .CONTROL_LOOP_REDO, loop2214_redo
  loop2214_done:
    pop_eh 
  for_undef_380:
.annotate 'line', 935
    find_lex $P2217, "$to_compose_meta"
    find_lex $P2218, "$to_compose"
    $P2219 = $P2217."methods"($P2218)
    store_lex "@methods", $P2219
.annotate 'line', 936
    find_lex $P2221, "@methods"
    defined $I2222, $P2221
    unless $I2222, for_undef_381
    iter $P2220, $P2221
    new $P2241, 'ExceptionHandler'
    set_label $P2241, loop2240_handler
    $P2241."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2241
  loop2240_test:
    unless $P2220, loop2240_done
    shift $P2223, $P2220
  loop2240_redo:
    .const 'Sub' $P2225 = "151_1300051145.567" 
    capture_lex $P2225
    $P2225($P2223)
  loop2240_next:
    goto loop2240_test
  loop2240_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2242, exception, 'type'
    eq $P2242, .CONTROL_LOOP_NEXT, loop2240_next
    eq $P2242, .CONTROL_LOOP_REDO, loop2240_redo
  loop2240_done:
    pop_eh 
  for_undef_381:
.annotate 'line', 943
    find_lex $P2243, "$to_compose_meta"
    find_lex $P2244, "$to_compose"
    $P2245 = $P2243."attributes"($P2244)
    store_lex "@attributes", $P2245
.annotate 'line', 944
    find_lex $P2247, "@attributes"
    defined $I2248, $P2247
    unless $I2248, for_undef_382
    iter $P2246, $P2247
    new $P2275, 'ExceptionHandler'
    set_label $P2275, loop2274_handler
    $P2275."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2275
  loop2274_test:
    unless $P2246, loop2274_done
    shift $P2249, $P2246
  loop2274_redo:
    .const 'Sub' $P2251 = "152_1300051145.567" 
    capture_lex $P2251
    $P2251($P2249)
  loop2274_next:
    goto loop2274_test
  loop2274_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2276, exception, 'type'
    eq $P2276, .CONTROL_LOOP_NEXT, loop2274_next
    eq $P2276, .CONTROL_LOOP_REDO, loop2274_redo
  loop2274_done:
    pop_eh 
  for_undef_382:
    find_lex $P2277, "@done"
.annotate 'line', 956
    find_lex $P2278, "$to_compose"
    find_lex $P2279, "@done"
    unless_null $P2279, vivify_383
    $P2279 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@done", $P2279
  vivify_383:
    set $P2279[0], $P2278
.annotate 'line', 907
    .return ($P2278)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block2175"  :anon :subid("149_1300051145.567") :outer("148_1300051145.567")
    .param pmc param_2177
.annotate 'line', 919
    .lex "$_", param_2177
.annotate 'line', 920
    find_lex $P2178, "$to_compose_meta"
    find_lex $P2179, "$to_compose"
    find_lex $P2180, "$_"
    $P2181 = $P2178."add_role"($P2179, $P2180)
.annotate 'line', 919
    .return ($P2181)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block2195"  :anon :subid("150_1300051145.567") :outer("148_1300051145.567")
    .param pmc param_2197
.annotate 'line', 927
    .lex "$_", param_2197
.annotate 'line', 928
    find_lex $P2200, "$target"
    find_lex $P2201, "$_"
    set $S2202, $P2201
    $P2203 = "has_method"($P2200, $S2202, 1)
    unless $P2203, unless_2199
    set $P2198, $P2203
    goto unless_2199_end
  unless_2199:
.annotate 'line', 929
    new $P2204, 'String'
    set $P2204, "Method '"
    find_lex $P2205, "$_"
    concat $P2206, $P2204, $P2205
    concat $P2207, $P2206, "' collides and a resolution must be provided by the class '"
.annotate 'line', 930
    find_lex $P2208, "$target"
    get_how $P2209, $P2208
    find_lex $P2210, "$target"
    $S2211 = $P2209."name"($P2210)
    concat $P2212, $P2207, $S2211
.annotate 'line', 929
    concat $P2213, $P2212, "'"
.annotate 'line', 930
    die $P2213
  unless_2199_end:
.annotate 'line', 927
    .return ($P2198)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block2224"  :anon :subid("151_1300051145.567") :outer("148_1300051145.567")
    .param pmc param_2226
.annotate 'line', 936
    .lex "$_", param_2226
.annotate 'line', 937
    find_lex $P2229, "$target"
    find_lex $P2230, "$_"
    set $S2231, $P2230
    $P2232 = "has_method"($P2229, $S2231, 0)
    unless $P2232, unless_2228
    set $P2227, $P2232
    goto unless_2228_end
  unless_2228:
.annotate 'line', 938
    find_lex $P2233, "$target"
    get_how $P2234, $P2233
    find_lex $P2235, "$target"
    find_lex $P2236, "$_"
    set $S2237, $P2236
    find_lex $P2238, "$_"
    $P2239 = $P2234."add_method"($P2235, $S2237, $P2238)
.annotate 'line', 937
    set $P2227, $P2239
  unless_2228_end:
.annotate 'line', 936
    .return ($P2227)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block2250"  :anon :subid("152_1300051145.567") :outer("148_1300051145.567")
    .param pmc param_2252
.annotate 'line', 944
    .lex "$_", param_2252
.annotate 'line', 945
    find_lex $P2254, "$target"
    find_lex $P2255, "$_"
    $P2256 = $P2255."name"()
    $P2257 = "has_attribute"($P2254, $P2256)
    unless $P2257, if_2253_end
.annotate 'line', 946
    new $P2258, "String"
    assign $P2258, "Attribute '"
    find_lex $P2259, "$_"
    $S2260 = $P2259."name"()
    concat $P2261, $P2258, $S2260
    concat $P2262, $P2261, "' already exists in the class '"
.annotate 'line', 947
    find_lex $P2263, "$target"
    get_how $P2264, $P2263
    find_lex $P2265, "$target"
    $S2266 = $P2264."name"($P2265)
    concat $P2267, $P2262, $S2266
.annotate 'line', 946
    concat $P2268, $P2267, "', but a role also wishes to compose it"
.annotate 'line', 947
    die $P2268
  if_2253_end:
.annotate 'line', 949
    find_lex $P2269, "$target"
    get_how $P2270, $P2269
    find_lex $P2271, "$target"
    find_lex $P2272, "$_"
    $P2273 = $P2270."add_attribute"($P2271, $P2272)
.annotate 'line', 944
    .return ($P2273)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block2288"  :subid("154_1300051145.567") :outer("10_1300051145.567")
.annotate 'line', 961
    .const 'Sub' $P2511 = "164_1300051145.567" 
    capture_lex $P2511
    .const 'Sub' $P2291 = "155_1300051145.567" 
    capture_lex $P2291
    get_global $P2290, "$?CLASS"
.annotate 'line', 962
    .const 'Sub' $P2291 = "155_1300051145.567" 
    newclosure $P2509, $P2291
.annotate 'line', 961
    .return ($P2509)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "" :load :init :subid("post384") :outer("154_1300051145.567")
.annotate 'line', 961
    get_hll_global $P2289, ["RoleToRoleApplier"], "_block2288" 
    .local pmc block
    set block, $P2289
    .const 'Sub' $P2511 = "164_1300051145.567" 
    capture_lex $P2511
    $P2511()
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block2510"  :anon :subid("164_1300051145.567") :outer("154_1300051145.567")
.annotate 'line', 961
    nqp_get_sc_object $P2512, "1300051141.242", 7
    .local pmc type_obj
    set type_obj, $P2512
    set_global "$?CLASS", type_obj
    get_how $P2513, type_obj
    .const 'Sub' $P2514 = "155_1300051145.567" 
    $P2513."add_method"(type_obj, "apply", $P2514)
    get_how $P2515, type_obj
    $P2516 = $P2515."compose"(type_obj)
    .return ($P2516)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "apply"  :subid("155_1300051145.567") :outer("154_1300051145.567")
    .param pmc param_2294
    .param pmc param_2295
    .param pmc param_2296
.annotate 'line', 962
    .const 'Sub' $P2436 = "161_1300051145.567" 
    capture_lex $P2436
    .const 'Sub' $P2394 = "160_1300051145.567" 
    capture_lex $P2394
    .const 'Sub' $P2380 = "159_1300051145.567" 
    capture_lex $P2380
    .const 'Sub' $P2307 = "156_1300051145.567" 
    capture_lex $P2307
    new $P2293, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2293, control_2292
    push_eh $P2293
    .lex "self", param_2294
    .lex "$target", param_2295
    .lex "@roles", param_2296
.annotate 'line', 964
    $P2297 = root_new ['parrot';'Hash']
    .lex "%meth_info", $P2297
.annotate 'line', 990
    $P2298 = root_new ['parrot';'Hash']
    .lex "%target_meth_info", $P2298
.annotate 'line', 991
    $P2299 = root_new ['parrot';'ResizablePMCArray']
    .lex "@target_meths", $P2299
.annotate 'line', 1016
    $P2300 = root_new ['parrot';'ResizablePMCArray']
    .lex "@all_roles", $P2300
.annotate 'line', 962
    find_lex $P2301, "%meth_info"
.annotate 'line', 965
    find_lex $P2303, "@roles"
    defined $I2304, $P2303
    unless $I2304, for_undef_385
    iter $P2302, $P2303
    new $P2368, 'ExceptionHandler'
    set_label $P2368, loop2367_handler
    $P2368."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2368
  loop2367_test:
    unless $P2302, loop2367_done
    shift $P2305, $P2302
  loop2367_redo:
    .const 'Sub' $P2307 = "156_1300051145.567" 
    capture_lex $P2307
    $P2307($P2305)
  loop2367_next:
    goto loop2367_test
  loop2367_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2369, exception, 'type'
    eq $P2369, .CONTROL_LOOP_NEXT, loop2367_next
    eq $P2369, .CONTROL_LOOP_REDO, loop2367_redo
  loop2367_done:
    pop_eh 
  for_undef_385:
    find_lex $P2370, "%target_meth_info"
.annotate 'line', 991
    find_lex $P2371, "$target"
    get_how $P2372, $P2371
    find_lex $P2373, "$target"
    $P2374 = $P2372."methods"($P2373)
    store_lex "@target_meths", $P2374
.annotate 'line', 992
    find_lex $P2376, "@target_meths"
    defined $I2377, $P2376
    unless $I2377, for_undef_393
    iter $P2375, $P2376
    new $P2387, 'ExceptionHandler'
    set_label $P2387, loop2386_handler
    $P2387."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2387
  loop2386_test:
    unless $P2375, loop2386_done
    shift $P2378, $P2375
  loop2386_redo:
    .const 'Sub' $P2380 = "159_1300051145.567" 
    capture_lex $P2380
    $P2380($P2378)
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
  for_undef_393:
.annotate 'line', 997
    find_lex $P2390, "%meth_info"
    defined $I2391, $P2390
    unless $I2391, for_undef_395
    iter $P2389, $P2390
    new $P2428, 'ExceptionHandler'
    set_label $P2428, loop2427_handler
    $P2428."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2428
  loop2427_test:
    unless $P2389, loop2427_done
    shift $P2392, $P2389
  loop2427_redo:
    .const 'Sub' $P2394 = "160_1300051145.567" 
    capture_lex $P2394
    $P2394($P2392)
  loop2427_next:
    goto loop2427_test
  loop2427_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2429, exception, 'type'
    eq $P2429, .CONTROL_LOOP_NEXT, loop2427_next
    eq $P2429, .CONTROL_LOOP_REDO, loop2427_redo
  loop2427_done:
    pop_eh 
  for_undef_395:
    find_lex $P2430, "@all_roles"
.annotate 'line', 1017
    find_lex $P2432, "@roles"
    defined $I2433, $P2432
    unless $I2433, for_undef_402
    iter $P2431, $P2432
    new $P2504, 'ExceptionHandler'
    set_label $P2504, loop2503_handler
    $P2504."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2504
  loop2503_test:
    unless $P2431, loop2503_done
    shift $P2434, $P2431
  loop2503_redo:
    .const 'Sub' $P2436 = "161_1300051145.567" 
    capture_lex $P2436
    $P2436($P2434)
  loop2503_next:
    goto loop2503_test
  loop2503_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2505, exception, 'type'
    eq $P2505, .CONTROL_LOOP_NEXT, loop2503_next
    eq $P2505, .CONTROL_LOOP_REDO, loop2503_redo
  loop2503_done:
    pop_eh 
  for_undef_402:
.annotate 'line', 1046
    new $P2506, "Exception"
    set $P2506['type'], .CONTROL_RETURN
    find_lex $P2507, "@all_roles"
    setattribute $P2506, 'payload', $P2507
    throw $P2506
.annotate 'line', 962
    .return ()
  control_2292:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2508, exception, "payload"
    .return ($P2508)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block2306"  :anon :subid("156_1300051145.567") :outer("155_1300051145.567")
    .param pmc param_2309
.annotate 'line', 965
    .const 'Sub' $P2319 = "157_1300051145.567" 
    capture_lex $P2319
.annotate 'line', 966
    $P2308 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P2308
    .lex "$_", param_2309
    find_lex $P2310, "$_"
    get_how $P2311, $P2310
    find_lex $P2312, "$_"
    $P2313 = $P2311."methods"($P2312)
    store_lex "@methods", $P2313
.annotate 'line', 967
    find_lex $P2315, "@methods"
    defined $I2316, $P2315
    unless $I2316, for_undef_386
    iter $P2314, $P2315
    new $P2365, 'ExceptionHandler'
    set_label $P2365, loop2364_handler
    $P2365."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2365
  loop2364_test:
    unless $P2314, loop2364_done
    shift $P2317, $P2314
  loop2364_redo:
    .const 'Sub' $P2319 = "157_1300051145.567" 
    capture_lex $P2319
    $P2319($P2317)
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
  for_undef_386:
.annotate 'line', 965
    .return ($P2314)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block2318"  :anon :subid("157_1300051145.567") :outer("156_1300051145.567")
    .param pmc param_2324
.annotate 'line', 967
    .const 'Sub' $P2347 = "158_1300051145.567" 
    capture_lex $P2347
.annotate 'line', 968
    new $P2320, "Undef"
    .lex "$name", $P2320
.annotate 'line', 969
    new $P2321, "Undef"
    .lex "$meth", $P2321
.annotate 'line', 970
    $P2322 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meth_list", $P2322
.annotate 'line', 977
    new $P2323, "Undef"
    .lex "$found", $P2323
    .lex "$_", param_2324
.annotate 'line', 968
    find_lex $P2325, "$_"
    set $S2326, $P2325
    new $P2327, 'String'
    set $P2327, $S2326
    store_lex "$name", $P2327
.annotate 'line', 969
    find_lex $P2328, "$_"
    store_lex "$meth", $P2328
    find_lex $P2329, "@meth_list"
.annotate 'line', 971
    find_lex $P2331, "$name"
    find_lex $P2332, "%meth_info"
    unless_null $P2332, vivify_387
    $P2332 = root_new ['parrot';'Hash']
  vivify_387:
    set $P2333, $P2332[$P2331]
    unless_null $P2333, vivify_388
    new $P2333, "Undef"
  vivify_388:
    defined $I2334, $P2333
    if $I2334, if_2330
.annotate 'line', 975
    find_lex $P2338, "@meth_list"
    find_lex $P2339, "$name"
    find_lex $P2340, "%meth_info"
    unless_null $P2340, vivify_389
    $P2340 = root_new ['parrot';'Hash']
    store_lex "%meth_info", $P2340
  vivify_389:
    set $P2340[$P2339], $P2338
.annotate 'line', 974
    goto if_2330_end
  if_2330:
.annotate 'line', 972
    find_lex $P2335, "$name"
    find_lex $P2336, "%meth_info"
    unless_null $P2336, vivify_390
    $P2336 = root_new ['parrot';'Hash']
  vivify_390:
    set $P2337, $P2336[$P2335]
    unless_null $P2337, vivify_391
    new $P2337, "Undef"
  vivify_391:
    store_lex "@meth_list", $P2337
  if_2330_end:
.annotate 'line', 977
    new $P2341, "Integer"
    assign $P2341, 0
    store_lex "$found", $P2341
.annotate 'line', 978
    find_lex $P2343, "@meth_list"
    defined $I2344, $P2343
    unless $I2344, for_undef_392
    iter $P2342, $P2343
    new $P2356, 'ExceptionHandler'
    set_label $P2356, loop2355_handler
    $P2356."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2356
  loop2355_test:
    unless $P2342, loop2355_done
    shift $P2345, $P2342
  loop2355_redo:
    .const 'Sub' $P2347 = "158_1300051145.567" 
    capture_lex $P2347
    $P2347($P2345)
  loop2355_next:
    goto loop2355_test
  loop2355_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2357, exception, 'type'
    eq $P2357, .CONTROL_LOOP_NEXT, loop2355_next
    eq $P2357, .CONTROL_LOOP_REDO, loop2355_redo
  loop2355_done:
    pop_eh 
  for_undef_392:
.annotate 'line', 983
    find_lex $P2360, "$found"
    unless $P2360, unless_2359
    set $P2358, $P2360
    goto unless_2359_end
  unless_2359:
.annotate 'line', 984
    find_lex $P2361, "@meth_list"
    find_lex $P2362, "$meth"
    $P2363 = $P2361."push"($P2362)
.annotate 'line', 983
    set $P2358, $P2363
  unless_2359_end:
.annotate 'line', 967
    .return ($P2358)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block2346"  :anon :subid("158_1300051145.567") :outer("157_1300051145.567")
    .param pmc param_2348
.annotate 'line', 978
    .lex "$_", param_2348
.annotate 'line', 979
    find_lex $P2351, "$meth"
    find_lex $P2352, "$_"
    issame $I2353, $P2351, $P2352
    if $I2353, if_2350
    new $P2349, 'Integer'
    set $P2349, $I2353
    goto if_2350_end
  if_2350:
.annotate 'line', 980
    new $P2354, "Integer"
    assign $P2354, 1
    store_lex "$found", $P2354
.annotate 'line', 979
    set $P2349, $P2354
  if_2350_end:
.annotate 'line', 978
    .return ($P2349)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block2379"  :anon :subid("159_1300051145.567") :outer("155_1300051145.567")
    .param pmc param_2381
.annotate 'line', 992
    .lex "$_", param_2381
.annotate 'line', 993
    find_lex $P2382, "$_"
    find_lex $P2383, "$_"
    set $S2384, $P2383
    find_lex $P2385, "%target_meth_info"
    unless_null $P2385, vivify_394
    $P2385 = root_new ['parrot';'Hash']
    store_lex "%target_meth_info", $P2385
  vivify_394:
    set $P2385[$S2384], $P2382
.annotate 'line', 992
    .return ($P2382)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block2393"  :anon :subid("160_1300051145.567") :outer("155_1300051145.567")
    .param pmc param_2397
.annotate 'line', 998
    new $P2395, "Undef"
    .lex "$name", $P2395
.annotate 'line', 999
    $P2396 = root_new ['parrot';'ResizablePMCArray']
    .lex "@add_meths", $P2396
    .lex "$_", param_2397
.annotate 'line', 998
    find_lex $P2398, "$_"
    set $S2399, $P2398
    new $P2400, 'String'
    set $P2400, $S2399
    store_lex "$name", $P2400
.annotate 'line', 999
    find_lex $P2401, "$name"
    find_lex $P2402, "%meth_info"
    unless_null $P2402, vivify_396
    $P2402 = root_new ['parrot';'Hash']
  vivify_396:
    set $P2403, $P2402[$P2401]
    unless_null $P2403, vivify_397
    new $P2403, "Undef"
  vivify_397:
    store_lex "@add_meths", $P2403
.annotate 'line', 1003
    find_lex $P2406, "$name"
    find_lex $P2407, "%target_meth_info"
    unless_null $P2407, vivify_398
    $P2407 = root_new ['parrot';'Hash']
  vivify_398:
    set $P2408, $P2407[$P2406]
    unless_null $P2408, vivify_399
    new $P2408, "Undef"
  vivify_399:
    defined $I2409, $P2408
    unless $I2409, unless_2405
    new $P2404, 'Integer'
    set $P2404, $I2409
    goto unless_2405_end
  unless_2405:
.annotate 'line', 1005
    find_lex $P2412, "@add_meths"
    set $N2413, $P2412
    iseq $I2414, $N2413, 1.0
    if $I2414, if_2411
.annotate 'line', 1010
    find_lex $P2422, "$target"
    get_how $P2423, $P2422
    find_lex $P2424, "$target"
    find_lex $P2425, "$name"
    $P2426 = $P2423."add_collision"($P2424, $P2425)
.annotate 'line', 1008
    set $P2410, $P2426
.annotate 'line', 1005
    goto if_2411_end
  if_2411:
.annotate 'line', 1006
    find_lex $P2415, "$target"
    get_how $P2416, $P2415
    find_lex $P2417, "$target"
    find_lex $P2418, "$name"
    find_lex $P2419, "@add_meths"
    unless_null $P2419, vivify_400
    $P2419 = root_new ['parrot';'ResizablePMCArray']
  vivify_400:
    set $P2420, $P2419[0]
    unless_null $P2420, vivify_401
    new $P2420, "Undef"
  vivify_401:
    $P2421 = $P2416."add_method"($P2417, $P2418, $P2420)
.annotate 'line', 1005
    set $P2410, $P2421
  if_2411_end:
.annotate 'line', 1003
    set $P2404, $P2410
  unless_2405_end:
.annotate 'line', 997
    .return ($P2404)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block2435"  :anon :subid("161_1300051145.567") :outer("155_1300051145.567")
    .param pmc param_2439
.annotate 'line', 1017
    .const 'Sub' $P2450 = "162_1300051145.567" 
    capture_lex $P2450
.annotate 'line', 1018
    new $P2437, "Undef"
    .lex "$how", $P2437
.annotate 'line', 1021
    $P2438 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attributes", $P2438
    .lex "$_", param_2439
.annotate 'line', 1018
    find_lex $P2440, "$_"
    get_how $P2441, $P2440
    store_lex "$how", $P2441
.annotate 'line', 1021
    find_lex $P2442, "$how"
    find_lex $P2443, "$_"
    $P2444 = $P2442."attributes"($P2443)
    store_lex "@attributes", $P2444
.annotate 'line', 1022
    find_lex $P2446, "@attributes"
    defined $I2447, $P2446
    unless $I2447, for_undef_403
    iter $P2445, $P2446
    new $P2498, 'ExceptionHandler'
    set_label $P2498, loop2497_handler
    $P2498."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2498
  loop2497_test:
    unless $P2445, loop2497_done
    shift $P2448, $P2445
  loop2497_redo:
    .const 'Sub' $P2450 = "162_1300051145.567" 
    capture_lex $P2450
    $P2450($P2448)
  loop2497_next:
    goto loop2497_test
  loop2497_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2499, exception, 'type'
    eq $P2499, .CONTROL_LOOP_NEXT, loop2497_next
    eq $P2499, .CONTROL_LOOP_REDO, loop2497_redo
  loop2497_done:
    pop_eh 
  for_undef_403:
.annotate 'line', 1043
    find_lex $P2500, "@all_roles"
    find_lex $P2501, "$_"
    $P2502 = $P2500."push"($P2501)
.annotate 'line', 1017
    .return ($P2502)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block2449"  :anon :subid("162_1300051145.567") :outer("161_1300051145.567")
    .param pmc param_2454
.annotate 'line', 1022
    .const 'Sub' $P2466 = "163_1300051145.567" 
    capture_lex $P2466
.annotate 'line', 1023
    new $P2451, "Undef"
    .lex "$add_attr", $P2451
.annotate 'line', 1024
    new $P2452, "Undef"
    .lex "$skip", $P2452
.annotate 'line', 1025
    $P2453 = root_new ['parrot';'ResizablePMCArray']
    .lex "@cur_attrs", $P2453
    .lex "$_", param_2454
.annotate 'line', 1023
    find_lex $P2455, "$_"
    store_lex "$add_attr", $P2455
.annotate 'line', 1024
    new $P2456, "Integer"
    assign $P2456, 0
    store_lex "$skip", $P2456
.annotate 'line', 1025
    find_lex $P2457, "$target"
    get_how $P2458, $P2457
    find_lex $P2459, "$target"
    $P2460 = $P2458."attributes"($P2459)
    store_lex "@cur_attrs", $P2460
.annotate 'line', 1026
    find_lex $P2462, "@cur_attrs"
    defined $I2463, $P2462
    unless $I2463, for_undef_404
    iter $P2461, $P2462
    new $P2487, 'ExceptionHandler'
    set_label $P2487, loop2486_handler
    $P2487."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2487
  loop2486_test:
    unless $P2461, loop2486_done
    shift $P2464, $P2461
  loop2486_redo:
    .const 'Sub' $P2466 = "163_1300051145.567" 
    capture_lex $P2466
    $P2466($P2464)
  loop2486_next:
    goto loop2486_test
  loop2486_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2488, exception, 'type'
    eq $P2488, .CONTROL_LOOP_NEXT, loop2486_next
    eq $P2488, .CONTROL_LOOP_REDO, loop2486_redo
  loop2486_done:
    pop_eh 
  for_undef_404:
.annotate 'line', 1036
    find_lex $P2491, "$skip"
    unless $P2491, unless_2490
    set $P2489, $P2491
    goto unless_2490_end
  unless_2490:
.annotate 'line', 1037
    find_lex $P2492, "$target"
    get_how $P2493, $P2492
    find_lex $P2494, "$target"
    find_lex $P2495, "$add_attr"
    $P2496 = $P2493."add_attribute"($P2494, $P2495)
.annotate 'line', 1036
    set $P2489, $P2496
  unless_2490_end:
.annotate 'line', 1022
    .return ($P2489)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block2465"  :anon :subid("163_1300051145.567") :outer("162_1300051145.567")
    .param pmc param_2467
.annotate 'line', 1026
    .lex "$_", param_2467
.annotate 'line', 1027
    find_lex $P2470, "$_"
    find_lex $P2471, "$add_attr"
    issame $I2472, $P2470, $P2471
    if $I2472, if_2469
.annotate 'line', 1031
    find_lex $P2476, "$_"
    $S2477 = $P2476."name"()
    find_lex $P2478, "$add_attr"
    $S2479 = $P2478."name"()
    iseq $I2480, $S2477, $S2479
    if $I2480, if_2475
    new $P2474, 'Integer'
    set $P2474, $I2480
    goto if_2475_end
  if_2475:
.annotate 'line', 1032
    new $P2481, "String"
    assign $P2481, "Attribute '"
    find_lex $P2482, "$_"
    $S2483 = $P2482."name"()
    concat $P2484, $P2481, $S2483
    concat $P2485, $P2484, "' conflicts in role composition"
    die $P2485
  if_2475_end:
.annotate 'line', 1030
    set $P2468, $P2474
.annotate 'line', 1027
    goto if_2469_end
  if_2469:
.annotate 'line', 1028
    new $P2473, "Integer"
    assign $P2473, 1
    store_lex "$skip", $P2473
.annotate 'line', 1027
    set $P2468, $P2473
  if_2469_end:
.annotate 'line', 1026
    .return ($P2468)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "_block2517"  :subid("165_1300051145.567") :outer("10_1300051145.567")
.annotate 'line', 1051
    .const 'Sub' $P2579 = "174_1300051145.567" 
    capture_lex $P2579
    .const 'Sub' $P2571 = "173_1300051145.567" 
    capture_lex $P2571
    .const 'Sub' $P2565 = "172_1300051145.567" 
    capture_lex $P2565
    .const 'Sub' $P2561 = "171_1300051145.567" 
    capture_lex $P2561
    .const 'Sub' $P2556 = "170_1300051145.567" 
    capture_lex $P2556
    .const 'Sub' $P2551 = "169_1300051145.567" 
    capture_lex $P2551
    .const 'Sub' $P2537 = "168_1300051145.567" 
    capture_lex $P2537
    .const 'Sub' $P2530 = "167_1300051145.567" 
    capture_lex $P2530
    .const 'Sub' $P2520 = "166_1300051145.567" 
    capture_lex $P2520
    get_global $P2519, "$?CLASS"
.annotate 'line', 1090
    .const 'Sub' $P2571 = "173_1300051145.567" 
    newclosure $P2577, $P2571
.annotate 'line', 1051
    .return ($P2577)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "" :load :init :subid("post405") :outer("165_1300051145.567")
.annotate 'line', 1051
    get_hll_global $P2518, ["NQPModuleHOW"], "_block2517" 
    .local pmc block
    set block, $P2518
    .const 'Sub' $P2579 = "174_1300051145.567" 
    capture_lex $P2579
    $P2579()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "_block2578"  :anon :subid("174_1300051145.567") :outer("165_1300051145.567")
.annotate 'line', 1051
    nqp_get_sc_object $P2580, "1300051141.242", 8
    .local pmc type_obj
    set type_obj, $P2580
    set_global "$?CLASS", type_obj
    get_how $P2581, type_obj
    get_hll_global $P2582, "KnowHOWAttribute"
    $P2583 = $P2582."new"("$!name" :named("name"))
    $P2581."add_attribute"(type_obj, $P2583)
    get_how $P2584, type_obj
    get_hll_global $P2585, "KnowHOWAttribute"
    $P2586 = $P2585."new"("$!composed" :named("name"))
    $P2584."add_attribute"(type_obj, $P2586)
    get_how $P2587, type_obj
    .const 'Sub' $P2588 = "166_1300051145.567" 
    $P2587."add_method"(type_obj, "new", $P2588)
    get_how $P2589, type_obj
    .const 'Sub' $P2590 = "167_1300051145.567" 
    $P2589."add_method"(type_obj, "BUILD", $P2590)
    get_how $P2591, type_obj
    .const 'Sub' $P2592 = "168_1300051145.567" 
    $P2591."add_method"(type_obj, "new_type", $P2592)
    get_how $P2593, type_obj
    .const 'Sub' $P2594 = "169_1300051145.567" 
    $P2593."add_method"(type_obj, "add_method", $P2594)
    get_how $P2595, type_obj
    .const 'Sub' $P2596 = "170_1300051145.567" 
    $P2595."add_method"(type_obj, "add_multi_method", $P2596)
    get_how $P2597, type_obj
    .const 'Sub' $P2598 = "171_1300051145.567" 
    $P2597."add_method"(type_obj, "add_attribute", $P2598)
    get_how $P2599, type_obj
    .const 'Sub' $P2600 = "172_1300051145.567" 
    $P2599."add_method"(type_obj, "compose", $P2600)
    get_how $P2601, type_obj
    .const 'Sub' $P2602 = "173_1300051145.567" 
    $P2601."add_method"(type_obj, "name", $P2602)
    get_how $P2603, type_obj
    $P2604 = $P2603."compose"(type_obj)
    .return ($P2604)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "new"  :subid("166_1300051145.567") :outer("165_1300051145.567")
    .param pmc param_2521
    .param pmc param_2522 :optional :named("name")
    .param int has_param_2522 :opt_flag
.annotate 'line', 1055
    .lex "self", param_2521
    if has_param_2522, optparam_406
    new $P2523, "Undef"
    set param_2522, $P2523
  optparam_406:
    .lex "$name", param_2522
.annotate 'line', 1056
    new $P2524, "Undef"
    .lex "$obj", $P2524
    find_lex $P2525, "self"
    repr_instance_of $P2526, $P2525
    store_lex "$obj", $P2526
.annotate 'line', 1057
    find_lex $P2527, "$obj"
    find_lex $P2528, "$name"
    $P2527."BUILD"($P2528 :named("name"))
    find_lex $P2529, "$obj"
.annotate 'line', 1055
    .return ($P2529)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "BUILD"  :subid("167_1300051145.567") :outer("165_1300051145.567")
    .param pmc param_2531
    .param pmc param_2532 :optional :named("name")
    .param int has_param_2532 :opt_flag
.annotate 'line', 1061
    .lex "self", param_2531
    if has_param_2532, optparam_407
    new $P2533, "Undef"
    set param_2532, $P2533
  optparam_407:
    .lex "$name", param_2532
.annotate 'line', 1062
    find_lex $P2534, "$name"
    find_lex $P2535, "self"
    get_global $P2536, "$?CLASS"
    setattribute $P2535, $P2536, "$!name", $P2534
.annotate 'line', 1061
    .return ($P2534)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "new_type"  :subid("168_1300051145.567") :outer("165_1300051145.567")
    .param pmc param_2538
    .param pmc param_2539 :optional :named("name")
    .param int has_param_2539 :opt_flag
    .param pmc param_2541 :optional :named("repr")
    .param int has_param_2541 :opt_flag
.annotate 'line', 1067
    .lex "self", param_2538
    if has_param_2539, optparam_408
    new $P2540, "String"
    assign $P2540, "<anon>"
    set param_2539, $P2540
  optparam_408:
    .lex "$name", param_2539
    if has_param_2541, optparam_409
    new $P2542, "String"
    assign $P2542, "P6opaque"
    set param_2541, $P2542
  optparam_409:
    .lex "$repr", param_2541
.annotate 'line', 1068
    new $P2543, "Undef"
    .lex "$metaclass", $P2543
    find_lex $P2544, "self"
    find_lex $P2545, "$name"
    $P2546 = $P2544."new"($P2545 :named("name"))
    store_lex "$metaclass", $P2546
.annotate 'line', 1069
    find_lex $P2547, "$metaclass"
    find_lex $P2548, "$repr"
    set $S2549, $P2548
    repr_type_object_for $P2550, $P2547, $S2549
.annotate 'line', 1067
    .return ($P2550)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_method"  :subid("169_1300051145.567") :outer("165_1300051145.567")
    .param pmc param_2552
    .param pmc param_2553
    .param pmc param_2554
    .param pmc param_2555
.annotate 'line', 1072
    .lex "self", param_2552
    .lex "$obj", param_2553
    .lex "$name", param_2554
    .lex "$code_obj", param_2555
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_multi_method"  :subid("170_1300051145.567") :outer("165_1300051145.567")
    .param pmc param_2557
    .param pmc param_2558
    .param pmc param_2559
    .param pmc param_2560
.annotate 'line', 1078
    .lex "self", param_2557
    .lex "$obj", param_2558
    .lex "$name", param_2559
    .lex "$code_obj", param_2560
.annotate 'line', 1079
    die "Modules may not have methods"
.annotate 'line', 1078
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_attribute"  :subid("171_1300051145.567") :outer("165_1300051145.567")
    .param pmc param_2562
    .param pmc param_2563
    .param pmc param_2564
.annotate 'line', 1082
    .lex "self", param_2562
    .lex "$obj", param_2563
    .lex "$meta_attr", param_2564
.annotate 'line', 1083
    die "Modules may not have attributes"
.annotate 'line', 1082
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "compose"  :subid("172_1300051145.567") :outer("165_1300051145.567")
    .param pmc param_2566
    .param pmc param_2567
.annotate 'line', 1086
    .lex "self", param_2566
    .lex "$obj", param_2567
.annotate 'line', 1087
    new $P2568, "Integer"
    assign $P2568, 1
    find_lex $P2569, "self"
    get_global $P2570, "$?CLASS"
    setattribute $P2569, $P2570, "$!composed", $P2568
.annotate 'line', 1086
    .return ($P2568)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "name"  :subid("173_1300051145.567") :outer("165_1300051145.567")
    .param pmc param_2572
    .param pmc param_2573
.annotate 'line', 1090
    .lex "self", param_2572
    .lex "$obj", param_2573
    find_lex $P2574, "self"
    get_global $P2575, "$?CLASS"
    getattribute $P2576, $P2574, $P2575, "$!name"
    unless_null $P2576, vivify_410
    new $P2576, "Undef"
  vivify_410:
    .return ($P2576)
.end


.HLL "nqp"

.namespace []
.sub "_block2606" :load :anon :subid("175_1300051145.567")
.annotate 'line', 1
    .const 'Sub' $P2608 = "10_1300051145.567" 
    $P2609 = $P2608()
    .return ($P2609)
.end

