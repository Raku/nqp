
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1300232199.995")
.annotate 'line', 0
    get_hll_global $P2515, ["NQPModuleHOW"], "_block2514" 
    capture_lex $P2515
    get_hll_global $P2286, ["RoleToRoleApplier"], "_block2285" 
    capture_lex $P2286
    get_hll_global $P2071, ["RoleToClassApplier"], "_block2070" 
    capture_lex $P2071
    get_hll_global $P1715, ["NQPParametricRoleHOW"], "_block1714" 
    capture_lex $P1715
    get_hll_global $P1394, ["NQPConcreteRoleHOW"], "_block1393" 
    capture_lex $P1394
    get_hll_global $P1183, ["NQPAttribute"], "_block1182" 
    capture_lex $P1183
    get_hll_global $P1096, ["NQPNativeHOW"], "_block1095" 
    capture_lex $P1096
    get_hll_global $P39, ["NQPClassHOW"], "_block38" 
    capture_lex $P39
    get_hll_global $P14, ["KnowHOWAttribute"], "_block13" 
    capture_lex $P14
.annotate 'line', 1
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 10
    get_hll_global $P14, ["KnowHOWAttribute"], "_block13" 
    capture_lex $P14
    $P14()
.annotate 'line', 26
    get_hll_global $P39, ["NQPClassHOW"], "_block38" 
    capture_lex $P39
    $P39()
.annotate 'line', 454
    get_hll_global $P1096, ["NQPNativeHOW"], "_block1095" 
    capture_lex $P1096
    $P1096()
.annotate 'line', 498
    get_hll_global $P1183, ["NQPAttribute"], "_block1182" 
    capture_lex $P1183
    $P1183()
.annotate 'line', 571
    get_hll_global $P1394, ["NQPConcreteRoleHOW"], "_block1393" 
    capture_lex $P1394
    $P1394()
.annotate 'line', 720
    get_hll_global $P1715, ["NQPParametricRoleHOW"], "_block1714" 
    capture_lex $P1715
    $P1715()
.annotate 'line', 889
    get_hll_global $P2071, ["RoleToClassApplier"], "_block2070" 
    capture_lex $P2071
    $P2071()
.annotate 'line', 961
    get_hll_global $P2286, ["RoleToRoleApplier"], "_block2285" 
    capture_lex $P2286
    $P2286()
.annotate 'line', 1051
    get_hll_global $P2515, ["NQPModuleHOW"], "_block2514" 
    capture_lex $P2515
    $P2602 = $P2515()
.annotate 'line', 1
    .return ($P2602)
    .const 'Sub' $P2604 = "175_1300232199.995" 
    .return ($P2604)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post176") :outer("10_1300232199.995")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1300232199.995" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P2608, "1300232196.839"
    isnull $I2609, $P2608
    if $I2609, if_2607
    nqp_get_sc_object $P2641, "1300232196.839", 0
    set_hll_global "KnowHOWAttribute", $P2641
    nqp_get_sc_object $P2642, "1300232196.839", 1
    set_hll_global "NQPClassHOW", $P2642
    nqp_get_sc_object $P2643, "1300232196.839", 2
    set_hll_global "NQPNativeHOW", $P2643
    nqp_get_sc_object $P2644, "1300232196.839", 3
    set_hll_global "NQPAttribute", $P2644
    nqp_get_sc_object $P2645, "1300232196.839", 4
    set_hll_global "NQPConcreteRoleHOW", $P2645
    nqp_get_sc_object $P2646, "1300232196.839", 5
    set_hll_global "NQPParametricRoleHOW", $P2646
    nqp_get_sc_object $P2647, "1300232196.839", 6
    set_hll_global "RoleToClassApplier", $P2647
    nqp_get_sc_object $P2648, "1300232196.839", 7
    set_hll_global "RoleToRoleApplier", $P2648
    nqp_get_sc_object $P2649, "1300232196.839", 8
    set_hll_global "NQPModuleHOW", $P2649
    goto if_2607_end
  if_2607:
    nqp_dynop_setup 
    getinterp $P2610
    get_class $P2611, "LexPad"
    get_class $P2612, "NQPLexPad"
    $P2610."hll_map"($P2611, $P2612)
    load_bytecode "nqpmo.pbc"
    nqp_create_sc $P2613, "1300232196.839"
    .local pmc cur_sc
    set cur_sc, $P2613
    get_hll_global $P2614, "KnowHOW"
    $P2615 = $P2614."new_type"("KnowHOWAttribute" :named("name"), "P6str" :named("repr"))
    nqp_set_sc_for_object $P2615, cur_sc
    nqp_set_sc_object "1300232196.839", 0, $P2615
    nqp_get_sc_object $P2616, "1300232196.839", 0
    set_hll_global "KnowHOWAttribute", $P2616
    get_hll_global $P2617, "KnowHOW"
    $P2618 = $P2617."new_type"("NQPClassHOW" :named("name"))
    nqp_set_sc_for_object $P2618, cur_sc
    nqp_set_sc_object "1300232196.839", 1, $P2618
    nqp_get_sc_object $P2619, "1300232196.839", 1
    set_hll_global "NQPClassHOW", $P2619
    get_hll_global $P2620, "KnowHOW"
    $P2621 = $P2620."new_type"("NQPNativeHOW" :named("name"))
    nqp_set_sc_for_object $P2621, cur_sc
    nqp_set_sc_object "1300232196.839", 2, $P2621
    nqp_get_sc_object $P2622, "1300232196.839", 2
    set_hll_global "NQPNativeHOW", $P2622
    get_hll_global $P2623, "KnowHOW"
    $P2624 = $P2623."new_type"("NQPAttribute" :named("name"))
    nqp_set_sc_for_object $P2624, cur_sc
    nqp_set_sc_object "1300232196.839", 3, $P2624
    nqp_get_sc_object $P2625, "1300232196.839", 3
    set_hll_global "NQPAttribute", $P2625
    get_hll_global $P2626, "KnowHOW"
    $P2627 = $P2626."new_type"("NQPConcreteRoleHOW" :named("name"))
    nqp_set_sc_for_object $P2627, cur_sc
    nqp_set_sc_object "1300232196.839", 4, $P2627
    nqp_get_sc_object $P2628, "1300232196.839", 4
    set_hll_global "NQPConcreteRoleHOW", $P2628
    get_hll_global $P2629, "KnowHOW"
    $P2630 = $P2629."new_type"("NQPParametricRoleHOW" :named("name"))
    nqp_set_sc_for_object $P2630, cur_sc
    nqp_set_sc_object "1300232196.839", 5, $P2630
    nqp_get_sc_object $P2631, "1300232196.839", 5
    set_hll_global "NQPParametricRoleHOW", $P2631
    get_hll_global $P2632, "KnowHOW"
    $P2633 = $P2632."new_type"("RoleToClassApplier" :named("name"))
    nqp_set_sc_for_object $P2633, cur_sc
    nqp_set_sc_object "1300232196.839", 6, $P2633
    nqp_get_sc_object $P2634, "1300232196.839", 6
    set_hll_global "RoleToClassApplier", $P2634
    get_hll_global $P2635, "KnowHOW"
    $P2636 = $P2635."new_type"("RoleToRoleApplier" :named("name"))
    nqp_set_sc_for_object $P2636, cur_sc
    nqp_set_sc_object "1300232196.839", 7, $P2636
    nqp_get_sc_object $P2637, "1300232196.839", 7
    set_hll_global "RoleToRoleApplier", $P2637
    get_hll_global $P2638, "KnowHOW"
    $P2639 = $P2638."new_type"("NQPModuleHOW" :named("name"))
    nqp_set_sc_for_object $P2639, cur_sc
    nqp_set_sc_object "1300232196.839", 8, $P2639
    nqp_get_sc_object $P2640, "1300232196.839", 8
    set_hll_global "NQPModuleHOW", $P2640
  if_2607_end:
.end


.HLL "nqp"

.namespace ["KnowHOWAttribute"]
.sub "_block13"  :subid("11_1300232199.995") :outer("10_1300232199.995")
.annotate 'line', 10
    .const 'Sub' $P30 = "14_1300232199.995" 
    capture_lex $P30
    .const 'Sub' $P24 = "13_1300232199.995" 
    capture_lex $P24
    .const 'Sub' $P16 = "12_1300232199.995" 
    capture_lex $P16
    get_global $P15, "$?CLASS"
.annotate 'line', 14
    .const 'Sub' $P24 = "13_1300232199.995" 
    newclosure $P28, $P24
.annotate 'line', 10
    .return ($P28)
.end


.HLL "nqp"

.namespace ["KnowHOWAttribute"]
.sub "" :load :init :subid("post177") :outer("11_1300232199.995")
.annotate 'line', 10
    get_hll_global $P14, ["KnowHOWAttribute"], "_block13" 
    .local pmc block
    set block, $P14
    .const 'Sub' $P30 = "14_1300232199.995" 
    capture_lex $P30
    $P30()
.end


.HLL "nqp"

.namespace ["KnowHOWAttribute"]
.sub "_block29"  :anon :subid("14_1300232199.995") :outer("11_1300232199.995")
.annotate 'line', 10
    nqp_get_sc_object $P31, "1300232196.839", 0
    .local pmc type_obj
    set type_obj, $P31
    set_global "$?CLASS", type_obj
    get_how $P32, type_obj
    .const 'Sub' $P33 = "12_1300232199.995" 
    $P32."add_method"(type_obj, "new", $P33)
    get_how $P34, type_obj
    .const 'Sub' $P35 = "13_1300232199.995" 
    $P34."add_method"(type_obj, "name", $P35)
    get_how $P36, type_obj
    $P37 = $P36."compose"(type_obj)
    .return ($P37)
.end


.HLL "nqp"

.namespace ["KnowHOWAttribute"]
.sub "new"  :subid("12_1300232199.995") :outer("11_1300232199.995")
    .param pmc param_17
    .param pmc param_18 :optional :named("name")
    .param int has_param_18 :opt_flag
.annotate 'line', 11
    .lex "self", param_17
    if has_param_18, optparam_178
    new $P19, "Undef"
    set param_18, $P19
  optparam_178:
    .lex "$name", param_18
.annotate 'line', 12
    find_lex $P20, "$name"
    set $S21, $P20
    get_hll_global $P22, "KnowHOWAttribute"
    repr_box_str $P23, $S21, $P22
.annotate 'line', 11
    .return ($P23)
.end


.HLL "nqp"

.namespace ["KnowHOWAttribute"]
.sub "name"  :subid("13_1300232199.995") :outer("11_1300232199.995")
    .param pmc param_25
.annotate 'line', 14
    .lex "self", param_25
.annotate 'line', 15
    find_lex $P26, "self"
    repr_unbox_str $S27, $P26
.annotate 'line', 14
    .return ($S27)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block38"  :subid("15_1300232199.995") :outer("10_1300232199.995")
.annotate 'line', 26
    .const 'Sub' $P1005 = "70_1300232199.995" 
    capture_lex $P1005
    .const 'Sub' $P968 = "68_1300232199.995" 
    capture_lex $P968
    .const 'Sub' $P932 = "66_1300232199.995" 
    capture_lex $P932
    .const 'Sub' $P898 = "65_1300232199.995" 
    capture_lex $P898
    .const 'Sub' $P861 = "64_1300232199.995" 
    capture_lex $P861
    .const 'Sub' $P854 = "63_1300232199.995" 
    capture_lex $P854
    .const 'Sub' $P831 = "61_1300232199.995" 
    capture_lex $P831
    .const 'Sub' $P825 = "60_1300232199.995" 
    capture_lex $P825
    .const 'Sub' $P819 = "59_1300232199.995" 
    capture_lex $P819
    .const 'Sub' $P796 = "57_1300232199.995" 
    capture_lex $P796
    .const 'Sub' $P789 = "56_1300232199.995" 
    capture_lex $P789
    .const 'Sub' $P775 = "55_1300232199.995" 
    capture_lex $P775
    .const 'Sub' $P726 = "52_1300232199.995" 
    capture_lex $P726
    .const 'Sub' $P681 = "49_1300232199.995" 
    capture_lex $P681
    .const 'Sub' $P644 = "46_1300232199.995" 
    capture_lex $P644
    .const 'Sub' $P514 = "41_1300232199.995" 
    capture_lex $P514
    .const 'Sub' $P410 = "37_1300232199.995" 
    capture_lex $P410
    .const 'Sub' $P384 = "36_1300232199.995" 
    capture_lex $P384
    .const 'Sub' $P350 = "34_1300232199.995" 
    capture_lex $P350
    .const 'Sub' $P312 = "32_1300232199.995" 
    capture_lex $P312
    .const 'Sub' $P291 = "31_1300232199.995" 
    capture_lex $P291
    .const 'Sub' $P270 = "30_1300232199.995" 
    capture_lex $P270
    .const 'Sub' $P251 = "29_1300232199.995" 
    capture_lex $P251
    .const 'Sub' $P237 = "28_1300232199.995" 
    capture_lex $P237
    .const 'Sub' $P230 = "27_1300232199.995" 
    capture_lex $P230
    .const 'Sub' $P220 = "26_1300232199.995" 
    capture_lex $P220
    .const 'Sub' $P83 = "19_1300232199.995" 
    capture_lex $P83
    .const 'Sub' $P41 = "16_1300232199.995" 
    capture_lex $P41
    get_global $P40, "$?CLASS"
.annotate 'line', 235
    .const 'Sub' $P41 = "16_1300232199.995" 
    newclosure $P82, $P41
    .lex "compute_c3_mro", $P82
.annotate 'line', 257
    .const 'Sub' $P83 = "19_1300232199.995" 
    newclosure $P219, $P83
    .lex "c3_merge", $P219
.annotate 'line', 181
    find_lex $P642, "compute_c3_mro"
    find_lex $P643, "c3_merge"
.annotate 'line', 441
    .const 'Sub' $P968 = "68_1300232199.995" 
    newclosure $P1003, $P968
.annotate 'line', 26
    .return ($P1003)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "" :load :init :subid("post179") :outer("15_1300232199.995")
.annotate 'line', 26
    get_hll_global $P39, ["NQPClassHOW"], "_block38" 
    .local pmc block
    set block, $P39
    .const 'Sub' $P1005 = "70_1300232199.995" 
    capture_lex $P1005
    $P1005()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1004"  :anon :subid("70_1300232199.995") :outer("15_1300232199.995")
.annotate 'line', 26
    nqp_get_sc_object $P1006, "1300232196.839", 1
    .local pmc type_obj
    set type_obj, $P1006
    set_global "$?CLASS", type_obj
    get_how $P1007, type_obj
    get_hll_global $P1008, "KnowHOWAttribute"
    $P1009 = $P1008."new"("$!name" :named("name"))
    $P1007."add_attribute"(type_obj, $P1009)
    get_how $P1010, type_obj
    get_hll_global $P1011, "KnowHOWAttribute"
    $P1012 = $P1011."new"("%!attributes" :named("name"))
    $P1010."add_attribute"(type_obj, $P1012)
    get_how $P1013, type_obj
    get_hll_global $P1014, "KnowHOWAttribute"
    $P1015 = $P1014."new"("%!methods" :named("name"))
    $P1013."add_attribute"(type_obj, $P1015)
    get_how $P1016, type_obj
    get_hll_global $P1017, "KnowHOWAttribute"
    $P1018 = $P1017."new"("@!multi_methods_to_incorporate" :named("name"))
    $P1016."add_attribute"(type_obj, $P1018)
    get_how $P1019, type_obj
    get_hll_global $P1020, "KnowHOWAttribute"
    $P1021 = $P1020."new"("@!parents" :named("name"))
    $P1019."add_attribute"(type_obj, $P1021)
    get_how $P1022, type_obj
    get_hll_global $P1023, "KnowHOWAttribute"
    $P1024 = $P1023."new"("@!roles" :named("name"))
    $P1022."add_attribute"(type_obj, $P1024)
    get_how $P1025, type_obj
    get_hll_global $P1026, "KnowHOWAttribute"
    $P1027 = $P1026."new"("@!vtable" :named("name"))
    $P1025."add_attribute"(type_obj, $P1027)
    get_how $P1028, type_obj
    get_hll_global $P1029, "KnowHOWAttribute"
    $P1030 = $P1029."new"("%!method-vtable-slots" :named("name"))
    $P1028."add_attribute"(type_obj, $P1030)
    get_how $P1031, type_obj
    get_hll_global $P1032, "KnowHOWAttribute"
    $P1033 = $P1032."new"("$!composed" :named("name"))
    $P1031."add_attribute"(type_obj, $P1033)
    get_how $P1034, type_obj
    get_hll_global $P1035, "KnowHOWAttribute"
    $P1036 = $P1035."new"("@!mro" :named("name"))
    $P1034."add_attribute"(type_obj, $P1036)
    get_how $P1037, type_obj
    get_hll_global $P1038, "KnowHOWAttribute"
    $P1039 = $P1038."new"("@!done" :named("name"))
    $P1037."add_attribute"(type_obj, $P1039)
    get_how $P1040, type_obj
    get_hll_global $P1041, "KnowHOWAttribute"
    $P1042 = $P1041."new"("%!parrot_vtable_mapping" :named("name"))
    $P1040."add_attribute"(type_obj, $P1042)
    get_how $P1043, type_obj
    .const 'Sub' $P1044 = "26_1300232199.995" 
    $P1043."add_method"(type_obj, "new", $P1044)
    get_how $P1045, type_obj
    .const 'Sub' $P1046 = "27_1300232199.995" 
    $P1045."add_method"(type_obj, "BUILD", $P1046)
    get_how $P1047, type_obj
    .const 'Sub' $P1048 = "28_1300232199.995" 
    $P1047."add_method"(type_obj, "new_type", $P1048)
    get_how $P1049, type_obj
    .const 'Sub' $P1050 = "29_1300232199.995" 
    $P1049."add_method"(type_obj, "add_method", $P1050)
    get_how $P1051, type_obj
    .const 'Sub' $P1052 = "30_1300232199.995" 
    $P1051."add_method"(type_obj, "add_multi_method", $P1052)
    get_how $P1053, type_obj
    .const 'Sub' $P1054 = "31_1300232199.995" 
    $P1053."add_method"(type_obj, "add_attribute", $P1054)
    get_how $P1055, type_obj
    .const 'Sub' $P1056 = "32_1300232199.995" 
    $P1055."add_method"(type_obj, "add_parent", $P1056)
    get_how $P1057, type_obj
    .const 'Sub' $P1058 = "34_1300232199.995" 
    $P1057."add_method"(type_obj, "add_role", $P1058)
    get_how $P1059, type_obj
    .const 'Sub' $P1060 = "36_1300232199.995" 
    $P1059."add_method"(type_obj, "add_parrot_vtable_mapping", $P1060)
    get_how $P1061, type_obj
    .const 'Sub' $P1062 = "37_1300232199.995" 
    $P1061."add_method"(type_obj, "compose", $P1062)
    get_how $P1063, type_obj
    .const 'Sub' $P1064 = "41_1300232199.995" 
    $P1063."add_method"(type_obj, "incorporate_multi_candidates", $P1064)
    get_how $P1065, type_obj
    .const 'Sub' $P1066 = "46_1300232199.995" 
    $P1065."add_method"(type_obj, "publish_type_cache", $P1066)
    get_how $P1067, type_obj
    .const 'Sub' $P1068 = "49_1300232199.995" 
    $P1067."add_method"(type_obj, "publish_method_cache", $P1068)
    get_how $P1069, type_obj
    .const 'Sub' $P1070 = "52_1300232199.995" 
    $P1069."add_method"(type_obj, "publish_parrot_vtable_mapping", $P1070)
    get_how $P1071, type_obj
    .const 'Sub' $P1072 = "55_1300232199.995" 
    $P1071."add_method"(type_obj, "parents", $P1072)
    get_how $P1073, type_obj
    .const 'Sub' $P1074 = "56_1300232199.995" 
    $P1073."add_method"(type_obj, "roles", $P1074)
    get_how $P1075, type_obj
    .const 'Sub' $P1076 = "57_1300232199.995" 
    $P1075."add_method"(type_obj, "methods", $P1076)
    get_how $P1077, type_obj
    .const 'Sub' $P1078 = "59_1300232199.995" 
    $P1077."add_method"(type_obj, "method_table", $P1078)
    get_how $P1079, type_obj
    .const 'Sub' $P1080 = "60_1300232199.995" 
    $P1079."add_method"(type_obj, "name", $P1080)
    get_how $P1081, type_obj
    .const 'Sub' $P1082 = "61_1300232199.995" 
    $P1081."add_method"(type_obj, "attributes", $P1082)
    get_how $P1083, type_obj
    .const 'Sub' $P1084 = "63_1300232199.995" 
    $P1083."add_method"(type_obj, "parrot_vtable_mappings", $P1084)
    get_how $P1085, type_obj
    .const 'Sub' $P1086 = "64_1300232199.995" 
    $P1085."add_method"(type_obj, "isa", $P1086)
    get_how $P1087, type_obj
    .const 'Sub' $P1088 = "65_1300232199.995" 
    $P1087."add_method"(type_obj, "does", $P1088)
    get_how $P1089, type_obj
    .const 'Sub' $P1090 = "66_1300232199.995" 
    $P1089."add_method"(type_obj, "can", $P1090)
    get_how $P1091, type_obj
    .const 'Sub' $P1092 = "68_1300232199.995" 
    $P1091."add_method"(type_obj, "find_method", $P1092)
    get_how $P1093, type_obj
    $P1094 = $P1093."compose"(type_obj)
    .return ($P1094)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "compute_c3_mro"  :subid("16_1300232199.995") :outer("15_1300232199.995")
    .param pmc param_44
.annotate 'line', 235
    .const 'Sub' $P56 = "17_1300232199.995" 
    capture_lex $P56
    new $P43, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P43, control_42
    push_eh $P43
    .lex "$class", param_44
.annotate 'line', 236
    $P45 = root_new ['parrot';'ResizablePMCArray']
    .lex "@immediate_parents", $P45
.annotate 'line', 239
    $P46 = root_new ['parrot';'ResizablePMCArray']
    .lex "@result", $P46
.annotate 'line', 236
    find_lex $P47, "$class"
    get_how $P48, $P47
    find_lex $P49, "$class"
    $P50 = $P48."parents"($P49, 1 :named("local"))
    store_lex "@immediate_parents", $P50
    find_lex $P51, "@result"
.annotate 'line', 240
    find_lex $P53, "@immediate_parents"
    set $N54, $P53
    unless $N54, if_52_end
    .const 'Sub' $P56 = "17_1300232199.995" 
    capture_lex $P56
    $P56()
  if_52_end:
.annotate 'line', 252
    find_lex $P77, "@result"
    find_lex $P78, "$class"
    $P77."unshift"($P78)
.annotate 'line', 253
    new $P79, "Exception"
    set $P79['type'], .CONTROL_RETURN
    find_lex $P80, "@result"
    setattribute $P79, 'payload', $P80
    throw $P79
.annotate 'line', 235
    .return ()
  control_42:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P81, exception, "payload"
    .return ($P81)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block55"  :anon :subid("17_1300232199.995") :outer("16_1300232199.995")
.annotate 'line', 240
    .const 'Sub' $P64 = "18_1300232199.995" 
    capture_lex $P64
.annotate 'line', 243
    $P57 = root_new ['parrot';'ResizablePMCArray']
    .lex "@merge_list", $P57
.annotate 'line', 240
    find_lex $P58, "@merge_list"
.annotate 'line', 244
    find_lex $P60, "@immediate_parents"
    defined $I61, $P60
    unless $I61, for_undef_180
    iter $P59, $P60
    new $P71, 'ExceptionHandler'
    set_label $P71, loop70_handler
    $P71."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P71
  loop70_test:
    unless $P59, loop70_done
    shift $P62, $P59
  loop70_redo:
    .const 'Sub' $P64 = "18_1300232199.995" 
    capture_lex $P64
    $P64($P62)
  loop70_next:
    goto loop70_test
  loop70_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P72, exception, 'type'
    eq $P72, .CONTROL_LOOP_NEXT, loop70_next
    eq $P72, .CONTROL_LOOP_REDO, loop70_redo
  loop70_done:
    pop_eh 
  for_undef_180:
.annotate 'line', 247
    find_lex $P73, "@merge_list"
    find_lex $P74, "@immediate_parents"
    $P73."push"($P74)
.annotate 'line', 248
    find_lex $P75, "@merge_list"
    $P76 = "c3_merge"($P75)
    store_lex "@result", $P76
.annotate 'line', 240
    .return ($P76)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block63"  :anon :subid("18_1300232199.995") :outer("17_1300232199.995")
    .param pmc param_65
.annotate 'line', 244
    .lex "$_", param_65
.annotate 'line', 245
    find_lex $P66, "@merge_list"
    find_lex $P67, "$_"
    $P68 = "compute_c3_mro"($P67)
    $P69 = $P66."push"($P68)
.annotate 'line', 244
    .return ($P69)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "c3_merge"  :subid("19_1300232199.995") :outer("15_1300232199.995")
    .param pmc param_86
.annotate 'line', 257
    .const 'Sub' $P179 = "24_1300232199.995" 
    capture_lex $P179
    .const 'Sub' $P101 = "20_1300232199.995" 
    capture_lex $P101
    new $P85, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P85, control_84
    push_eh $P85
    .lex "@merge_list", param_86
.annotate 'line', 258
    $P87 = root_new ['parrot';'ResizablePMCArray']
    .lex "@result", $P87
.annotate 'line', 259
    new $P88, "Undef"
    .lex "$accepted", $P88
.annotate 'line', 260
    new $P89, "Undef"
    .lex "$something_accepted", $P89
.annotate 'line', 261
    new $P90, "Undef"
    .lex "$cand_count", $P90
.annotate 'line', 304
    new $P91, "Undef"
    .lex "$i", $P91
.annotate 'line', 257
    find_lex $P92, "@result"
    find_lex $P93, "$accepted"
.annotate 'line', 260
    new $P94, "Integer"
    assign $P94, 0
    store_lex "$something_accepted", $P94
.annotate 'line', 261
    new $P95, "Integer"
    assign $P95, 0
    store_lex "$cand_count", $P95
.annotate 'line', 264
    find_lex $P97, "@merge_list"
    defined $I98, $P97
    unless $I98, for_undef_181
    iter $P96, $P97
    new $P162, 'ExceptionHandler'
    set_label $P162, loop161_handler
    $P162."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P162
  loop161_test:
    unless $P96, loop161_done
    shift $P99, $P96
  loop161_redo:
    .const 'Sub' $P101 = "20_1300232199.995" 
    capture_lex $P101
    $P101($P99)
  loop161_next:
    goto loop161_test
  loop161_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P163, exception, 'type'
    eq $P163, .CONTROL_LOOP_NEXT, loop161_next
    eq $P163, .CONTROL_LOOP_REDO, loop161_redo
  loop161_done:
    pop_eh 
  for_undef_181:
.annotate 'line', 294
    find_lex $P165, "$cand_count"
    set $N166, $P165
    iseq $I167, $N166, 0.0
    unless $I167, if_164_end
.annotate 'line', 295
    new $P168, "Exception"
    set $P168['type'], .CONTROL_RETURN
    find_lex $P169, "@result"
    setattribute $P168, 'payload', $P169
    throw $P168
  if_164_end:
.annotate 'line', 299
    find_lex $P171, "$something_accepted"
    if $P171, unless_170_end
.annotate 'line', 300
    die "Could not build C3 linearization: ambiguous hierarchy"
  unless_170_end:
.annotate 'line', 304
    new $P172, "Integer"
    assign $P172, 0
    store_lex "$i", $P172
.annotate 'line', 305
    new $P210, 'ExceptionHandler'
    set_label $P210, loop209_handler
    $P210."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P210
  loop209_test:
    find_lex $P173, "$i"
    set $N174, $P173
    find_lex $P175, "@merge_list"
    set $N176, $P175
    islt $I177, $N174, $N176
    unless $I177, loop209_done
  loop209_redo:
    .const 'Sub' $P179 = "24_1300232199.995" 
    capture_lex $P179
    $P179()
  loop209_next:
    goto loop209_test
  loop209_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P211, exception, 'type'
    eq $P211, .CONTROL_LOOP_NEXT, loop209_next
    eq $P211, .CONTROL_LOOP_REDO, loop209_redo
  loop209_done:
    pop_eh 
.annotate 'line', 318
    find_lex $P212, "@merge_list"
    $P213 = "c3_merge"($P212)
    store_lex "@result", $P213
.annotate 'line', 319
    find_lex $P214, "@result"
    find_lex $P215, "$accepted"
    $P214."unshift"($P215)
.annotate 'line', 320
    new $P216, "Exception"
    set $P216['type'], .CONTROL_RETURN
    find_lex $P217, "@result"
    setattribute $P216, 'payload', $P217
    throw $P216
.annotate 'line', 257
    .return ()
  control_84:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P218, exception, "payload"
    .return ($P218)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block100"  :anon :subid("20_1300232199.995") :outer("19_1300232199.995")
    .param pmc param_103
.annotate 'line', 264
    .const 'Sub' $P110 = "21_1300232199.995" 
    capture_lex $P110
.annotate 'line', 265
    $P102 = root_new ['parrot';'ResizablePMCArray']
    .lex "@cand_list", $P102
    .lex "$_", param_103
    find_lex $P104, "$_"
    store_lex "@cand_list", $P104
.annotate 'line', 266
    find_lex $P107, "@cand_list"
    set $N108, $P107
    if $N108, if_106
    new $P105, 'Float'
    set $P105, $N108
    goto if_106_end
  if_106:
    .const 'Sub' $P110 = "21_1300232199.995" 
    capture_lex $P110
    $P160 = $P110()
    set $P105, $P160
  if_106_end:
.annotate 'line', 264
    .return ($P105)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block109"  :anon :subid("21_1300232199.995") :outer("20_1300232199.995")
.annotate 'line', 266
    .const 'Sub' $P123 = "22_1300232199.995" 
    capture_lex $P123
.annotate 'line', 267
    new $P111, "Undef"
    .lex "$rejected", $P111
.annotate 'line', 268
    new $P112, "Undef"
    .lex "$cand_class", $P112
.annotate 'line', 267
    new $P113, "Integer"
    assign $P113, 0
    store_lex "$rejected", $P113
.annotate 'line', 268
    find_lex $P114, "@cand_list"
    unless_null $P114, vivify_182
    $P114 = root_new ['parrot';'ResizablePMCArray']
  vivify_182:
    set $P115, $P114[0]
    unless_null $P115, vivify_183
    new $P115, "Undef"
  vivify_183:
    store_lex "$cand_class", $P115
.annotate 'line', 269
    find_lex $P116, "$cand_count"
    add $P117, $P116, 1
    store_lex "$cand_count", $P117
.annotate 'line', 270
    find_lex $P119, "@merge_list"
    defined $I120, $P119
    unless $I120, for_undef_184
    iter $P118, $P119
    new $P158, 'ExceptionHandler'
    set_label $P158, loop157_handler
    $P158."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P158
  loop157_test:
    unless $P118, loop157_done
    shift $P121, $P118
  loop157_redo:
    .const 'Sub' $P123 = "22_1300232199.995" 
    capture_lex $P123
    $P123($P121)
  loop157_next:
    goto loop157_test
  loop157_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P159, exception, 'type'
    eq $P159, .CONTROL_LOOP_NEXT, loop157_next
    eq $P159, .CONTROL_LOOP_REDO, loop157_redo
  loop157_done:
    pop_eh 
  for_undef_184:
.annotate 'line', 266
    .return ($P118)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block122"  :anon :subid("22_1300232199.995") :outer("21_1300232199.995")
    .param pmc param_124
.annotate 'line', 270
    .const 'Sub' $P130 = "23_1300232199.995" 
    capture_lex $P130
    .lex "$_", param_124
.annotate 'line', 272
    find_lex $P126, "$_"
    find_lex $P127, "@cand_list"
    issame $I128, $P126, $P127
    if $I128, unless_125_end
    .const 'Sub' $P130 = "23_1300232199.995" 
    capture_lex $P130
    $P130()
  unless_125_end:
.annotate 'line', 284
    find_lex $P153, "$rejected"
    unless $P153, unless_152
    set $P151, $P153
    goto unless_152_end
  unless_152:
.annotate 'line', 285
    find_lex $P154, "$cand_class"
    store_lex "$accepted", $P154
.annotate 'line', 286
    new $P155, "Integer"
    assign $P155, 1
    store_lex "$something_accepted", $P155
.annotate 'line', 287
    set $I156, .CONTROL_LOOP_LAST
    die 0, $I156
  unless_152_end:
.annotate 'line', 270
    .return ($P151)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block129"  :anon :subid("23_1300232199.995") :outer("22_1300232199.995")
.annotate 'line', 274
    new $P131, "Undef"
    .lex "$cur_pos", $P131
    new $P132, "Integer"
    assign $P132, 1
    store_lex "$cur_pos", $P132
.annotate 'line', 275
    new $P149, 'ExceptionHandler'
    set_label $P149, loop148_handler
    $P149."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P149
  loop148_test:
    find_lex $P133, "$cur_pos"
    set $N134, $P133
    find_lex $P135, "$_"
    set $N136, $P135
    isle $I137, $N134, $N136
    unless $I137, loop148_done
  loop148_redo:
.annotate 'line', 276
    find_lex $P139, "$cur_pos"
    set $I140, $P139
    find_lex $P141, "$_"
    unless_null $P141, vivify_185
    $P141 = root_new ['parrot';'ResizablePMCArray']
  vivify_185:
    set $P142, $P141[$I140]
    unless_null $P142, vivify_186
    new $P142, "Undef"
  vivify_186:
    find_lex $P143, "$cand_class"
    issame $I144, $P142, $P143
    unless $I144, if_138_end
.annotate 'line', 277
    new $P145, "Integer"
    assign $P145, 1
    store_lex "$rejected", $P145
  if_138_end:
.annotate 'line', 279
    find_lex $P146, "$cur_pos"
    add $P147, $P146, 1
    store_lex "$cur_pos", $P147
  loop148_next:
.annotate 'line', 275
    goto loop148_test
  loop148_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P150, exception, 'type'
    eq $P150, .CONTROL_LOOP_NEXT, loop148_next
    eq $P150, .CONTROL_LOOP_REDO, loop148_redo
  loop148_done:
    pop_eh 
.annotate 'line', 272
    .return ($I137)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block178"  :anon :subid("24_1300232199.995") :outer("19_1300232199.995")
.annotate 'line', 305
    .const 'Sub' $P190 = "25_1300232199.995" 
    capture_lex $P190
.annotate 'line', 306
    $P180 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new_list", $P180
.annotate 'line', 305
    find_lex $P181, "@new_list"
.annotate 'line', 307
    find_lex $P183, "$i"
    set $I184, $P183
    find_lex $P185, "@merge_list"
    unless_null $P185, vivify_187
    $P185 = root_new ['parrot';'ResizablePMCArray']
  vivify_187:
    set $P186, $P185[$I184]
    unless_null $P186, vivify_188
    new $P186, "Undef"
  vivify_188:
    defined $I187, $P186
    unless $I187, for_undef_189
    iter $P182, $P186
    new $P201, 'ExceptionHandler'
    set_label $P201, loop200_handler
    $P201."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P201
  loop200_test:
    unless $P182, loop200_done
    shift $P188, $P182
  loop200_redo:
    .const 'Sub' $P190 = "25_1300232199.995" 
    capture_lex $P190
    $P190($P188)
  loop200_next:
    goto loop200_test
  loop200_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P202, exception, 'type'
    eq $P202, .CONTROL_LOOP_NEXT, loop200_next
    eq $P202, .CONTROL_LOOP_REDO, loop200_redo
  loop200_done:
    pop_eh 
  for_undef_189:
.annotate 'line', 312
    find_lex $P203, "@new_list"
    find_lex $P204, "$i"
    set $I205, $P204
    find_lex $P206, "@merge_list"
    unless_null $P206, vivify_190
    $P206 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@merge_list", $P206
  vivify_190:
    set $P206[$I205], $P203
.annotate 'line', 313
    find_lex $P207, "$i"
    add $P208, $P207, 1
    store_lex "$i", $P208
.annotate 'line', 305
    .return ($P208)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block189"  :anon :subid("25_1300232199.995") :outer("24_1300232199.995")
    .param pmc param_191
.annotate 'line', 307
    .lex "$_", param_191
.annotate 'line', 308
    find_lex $P194, "$_"
    find_lex $P195, "$accepted"
    issame $I196, $P194, $P195
    unless $I196, unless_193
    new $P192, 'Integer'
    set $P192, $I196
    goto unless_193_end
  unless_193:
.annotate 'line', 309
    find_lex $P197, "@new_list"
    find_lex $P198, "$_"
    $P199 = $P197."push"($P198)
.annotate 'line', 308
    set $P192, $P199
  unless_193_end:
.annotate 'line', 307
    .return ($P192)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "new"  :subid("26_1300232199.995") :outer("15_1300232199.995")
    .param pmc param_221
    .param pmc param_222 :optional :named("name")
    .param int has_param_222 :opt_flag
.annotate 'line', 62
    .lex "self", param_221
    if has_param_222, optparam_191
    new $P223, "Undef"
    set param_222, $P223
  optparam_191:
    .lex "$name", param_222
.annotate 'line', 63
    new $P224, "Undef"
    .lex "$obj", $P224
    find_lex $P225, "self"
    repr_instance_of $P226, $P225
    store_lex "$obj", $P226
.annotate 'line', 64
    find_lex $P227, "$obj"
    find_lex $P228, "$name"
    $P227."BUILD"($P228 :named("name"))
    find_lex $P229, "$obj"
.annotate 'line', 62
    .return ($P229)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "BUILD"  :subid("27_1300232199.995") :outer("15_1300232199.995")
    .param pmc param_231
    .param pmc param_232 :optional :named("name")
    .param int has_param_232 :opt_flag
.annotate 'line', 68
    .lex "self", param_231
    if has_param_232, optparam_192
    new $P233, "Undef"
    set param_232, $P233
  optparam_192:
    .lex "$name", param_232
.annotate 'line', 69
    find_lex $P234, "$name"
    find_lex $P235, "self"
    get_global $P236, "$?CLASS"
    setattribute $P235, $P236, "$!name", $P234
.annotate 'line', 68
    .return ($P234)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "new_type"  :subid("28_1300232199.995") :outer("15_1300232199.995")
    .param pmc param_238
    .param pmc param_239 :optional :named("name")
    .param int has_param_239 :opt_flag
    .param pmc param_241 :optional :named("repr")
    .param int has_param_241 :opt_flag
.annotate 'line', 74
    .lex "self", param_238
    if has_param_239, optparam_193
    new $P240, "String"
    assign $P240, "<anon>"
    set param_239, $P240
  optparam_193:
    .lex "$name", param_239
    if has_param_241, optparam_194
    new $P242, "String"
    assign $P242, "P6opaque"
    set param_241, $P242
  optparam_194:
    .lex "$repr", param_241
.annotate 'line', 75
    new $P243, "Undef"
    .lex "$metaclass", $P243
    find_lex $P244, "self"
    find_lex $P245, "$name"
    $P246 = $P244."new"($P245 :named("name"))
    store_lex "$metaclass", $P246
.annotate 'line', 76
    find_lex $P247, "$metaclass"
    find_lex $P248, "$repr"
    set $S249, $P248
    repr_type_object_for $P250, $P247, $S249
.annotate 'line', 74
    .return ($P250)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_method"  :subid("29_1300232199.995") :outer("15_1300232199.995")
    .param pmc param_252
    .param pmc param_253
    .param pmc param_254
    .param pmc param_255
.annotate 'line', 79
    .lex "self", param_252
    .lex "$obj", param_253
    .lex "$name", param_254
    .lex "$code_obj", param_255
.annotate 'line', 80
    find_lex $P257, "$name"
    find_lex $P258, "self"
    get_global $P259, "$?CLASS"
    getattribute $P260, $P258, $P259, "%!methods"
    unless_null $P260, vivify_195
    $P260 = root_new ['parrot';'Hash']
  vivify_195:
    set $P261, $P260[$P257]
    unless_null $P261, vivify_196
    new $P261, "Undef"
  vivify_196:
    unless $P261, if_256_end
.annotate 'line', 81
    new $P262, "String"
    assign $P262, "This class already has a method named "
    find_lex $P263, "$name"
    concat $P264, $P262, $P263
    die $P264
  if_256_end:
.annotate 'line', 83
    find_lex $P265, "$code_obj"
    find_lex $P266, "$name"
    find_lex $P267, "self"
    get_global $P268, "$?CLASS"
    getattribute $P269, $P267, $P268, "%!methods"
    unless_null $P269, vivify_197
    $P269 = root_new ['parrot';'Hash']
    setattribute $P267, $P268, "%!methods", $P269
  vivify_197:
    set $P269[$P266], $P265
.annotate 'line', 79
    .return ($P265)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_multi_method"  :subid("30_1300232199.995") :outer("15_1300232199.995")
    .param pmc param_271
    .param pmc param_272
    .param pmc param_273
    .param pmc param_274
.annotate 'line', 86
    .lex "self", param_271
    .lex "$obj", param_272
    .lex "$name", param_273
    .lex "$code_obj", param_274
.annotate 'line', 92
    $P275 = root_new ['parrot';'Hash']
    .lex "%todo", $P275
.annotate 'line', 86
    find_lex $P276, "%todo"
.annotate 'line', 93
    find_lex $P277, "$name"
    find_lex $P278, "%todo"
    unless_null $P278, vivify_198
    $P278 = root_new ['parrot';'Hash']
    store_lex "%todo", $P278
  vivify_198:
    set $P278["name"], $P277
.annotate 'line', 94
    find_lex $P279, "$code_obj"
    find_lex $P280, "%todo"
    unless_null $P280, vivify_199
    $P280 = root_new ['parrot';'Hash']
    store_lex "%todo", $P280
  vivify_199:
    set $P280["code"], $P279
.annotate 'line', 95
    find_lex $P281, "%todo"
    find_lex $P282, "self"
    get_global $P283, "$?CLASS"
    getattribute $P284, $P282, $P283, "@!multi_methods_to_incorporate"
    unless_null $P284, vivify_200
    $P284 = root_new ['parrot';'ResizablePMCArray']
  vivify_200:
    set $N285, $P284
    set $I286, $N285
    find_lex $P287, "self"
    get_global $P288, "$?CLASS"
    getattribute $P289, $P287, $P288, "@!multi_methods_to_incorporate"
    unless_null $P289, vivify_201
    $P289 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P287, $P288, "@!multi_methods_to_incorporate", $P289
  vivify_201:
    set $P289[$I286], $P281
    find_lex $P290, "$code_obj"
.annotate 'line', 86
    .return ($P290)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_attribute"  :subid("31_1300232199.995") :outer("15_1300232199.995")
    .param pmc param_292
    .param pmc param_293
    .param pmc param_294
.annotate 'line', 99
    .lex "self", param_292
    .lex "$obj", param_293
    .lex "$meta_attr", param_294
.annotate 'line', 100
    new $P295, "Undef"
    .lex "$name", $P295
    find_lex $P296, "$meta_attr"
    $P297 = $P296."name"()
    store_lex "$name", $P297
.annotate 'line', 101
    find_lex $P299, "$name"
    find_lex $P300, "self"
    get_global $P301, "$?CLASS"
    getattribute $P302, $P300, $P301, "%!attributes"
    unless_null $P302, vivify_202
    $P302 = root_new ['parrot';'Hash']
  vivify_202:
    set $P303, $P302[$P299]
    unless_null $P303, vivify_203
    new $P303, "Undef"
  vivify_203:
    unless $P303, if_298_end
.annotate 'line', 102
    new $P304, "String"
    assign $P304, "This class already has an attribute named "
    find_lex $P305, "$name"
    concat $P306, $P304, $P305
    die $P306
  if_298_end:
.annotate 'line', 104
    find_lex $P307, "$meta_attr"
    find_lex $P308, "$name"
    find_lex $P309, "self"
    get_global $P310, "$?CLASS"
    getattribute $P311, $P309, $P310, "%!attributes"
    unless_null $P311, vivify_204
    $P311 = root_new ['parrot';'Hash']
    setattribute $P309, $P310, "%!attributes", $P311
  vivify_204:
    set $P311[$P308], $P307
.annotate 'line', 99
    .return ($P307)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_parent"  :subid("32_1300232199.995") :outer("15_1300232199.995")
    .param pmc param_313
    .param pmc param_314
    .param pmc param_315
.annotate 'line', 107
    .const 'Sub' $P327 = "33_1300232199.995" 
    capture_lex $P327
    .lex "self", param_313
    .lex "$obj", param_314
    .lex "$parent", param_315
.annotate 'line', 108
    find_lex $P317, "self"
    get_global $P318, "$?CLASS"
    getattribute $P319, $P317, $P318, "$!composed"
    unless_null $P319, vivify_205
    new $P319, "Undef"
  vivify_205:
    unless $P319, if_316_end
.annotate 'line', 109
    die "NQPClassHOW does not support adding parents after being composed."
  if_316_end:
.annotate 'line', 111
    find_lex $P321, "self"
    get_global $P322, "$?CLASS"
    getattribute $P323, $P321, $P322, "@!parents"
    unless_null $P323, vivify_206
    $P323 = root_new ['parrot';'ResizablePMCArray']
  vivify_206:
    defined $I324, $P323
    unless $I324, for_undef_207
    iter $P320, $P323
    new $P339, 'ExceptionHandler'
    set_label $P339, loop338_handler
    $P339."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P339
  loop338_test:
    unless $P320, loop338_done
    shift $P325, $P320
  loop338_redo:
    .const 'Sub' $P327 = "33_1300232199.995" 
    capture_lex $P327
    $P327($P325)
  loop338_next:
    goto loop338_test
  loop338_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P340, exception, 'type'
    eq $P340, .CONTROL_LOOP_NEXT, loop338_next
    eq $P340, .CONTROL_LOOP_REDO, loop338_redo
  loop338_done:
    pop_eh 
  for_undef_207:
.annotate 'line', 116
    find_lex $P341, "$parent"
    find_lex $P342, "self"
    get_global $P343, "$?CLASS"
    getattribute $P344, $P342, $P343, "@!parents"
    unless_null $P344, vivify_208
    $P344 = root_new ['parrot';'ResizablePMCArray']
  vivify_208:
    set $N345, $P344
    set $I346, $N345
    find_lex $P347, "self"
    get_global $P348, "$?CLASS"
    getattribute $P349, $P347, $P348, "@!parents"
    unless_null $P349, vivify_209
    $P349 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P347, $P348, "@!parents", $P349
  vivify_209:
    set $P349[$I346], $P341
.annotate 'line', 107
    .return ($P341)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block326"  :anon :subid("33_1300232199.995") :outer("32_1300232199.995")
    .param pmc param_328
.annotate 'line', 111
    .lex "$_", param_328
.annotate 'line', 112
    find_lex $P331, "$_"
    find_lex $P332, "$parent"
    issame $I333, $P331, $P332
    if $I333, if_330
    new $P329, 'Integer'
    set $P329, $I333
    goto if_330_end
  if_330:
.annotate 'line', 113
    new $P334, "String"
    assign $P334, "Already have "
    find_lex $P335, "$parent"
    concat $P336, $P334, $P335
    concat $P337, $P336, " as a parent class."
    die $P337
  if_330_end:
.annotate 'line', 111
    .return ($P329)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_role"  :subid("34_1300232199.995") :outer("15_1300232199.995")
    .param pmc param_351
    .param pmc param_352
    .param pmc param_353
.annotate 'line', 119
    .const 'Sub' $P361 = "35_1300232199.995" 
    capture_lex $P361
    .lex "self", param_351
    .lex "$obj", param_352
    .lex "$role", param_353
.annotate 'line', 120
    find_lex $P355, "self"
    get_global $P356, "$?CLASS"
    getattribute $P357, $P355, $P356, "@!roles"
    unless_null $P357, vivify_210
    $P357 = root_new ['parrot';'ResizablePMCArray']
  vivify_210:
    defined $I358, $P357
    unless $I358, for_undef_211
    iter $P354, $P357
    new $P373, 'ExceptionHandler'
    set_label $P373, loop372_handler
    $P373."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P373
  loop372_test:
    unless $P354, loop372_done
    shift $P359, $P354
  loop372_redo:
    .const 'Sub' $P361 = "35_1300232199.995" 
    capture_lex $P361
    $P361($P359)
  loop372_next:
    goto loop372_test
  loop372_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P374, exception, 'type'
    eq $P374, .CONTROL_LOOP_NEXT, loop372_next
    eq $P374, .CONTROL_LOOP_REDO, loop372_redo
  loop372_done:
    pop_eh 
  for_undef_211:
.annotate 'line', 125
    find_lex $P375, "$role"
    find_lex $P376, "self"
    get_global $P377, "$?CLASS"
    getattribute $P378, $P376, $P377, "@!roles"
    unless_null $P378, vivify_212
    $P378 = root_new ['parrot';'ResizablePMCArray']
  vivify_212:
    set $N379, $P378
    set $I380, $N379
    find_lex $P381, "self"
    get_global $P382, "$?CLASS"
    getattribute $P383, $P381, $P382, "@!roles"
    unless_null $P383, vivify_213
    $P383 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P381, $P382, "@!roles", $P383
  vivify_213:
    set $P383[$I380], $P375
.annotate 'line', 119
    .return ($P375)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block360"  :anon :subid("35_1300232199.995") :outer("34_1300232199.995")
    .param pmc param_362
.annotate 'line', 120
    .lex "$_", param_362
.annotate 'line', 121
    find_lex $P365, "$_"
    find_lex $P366, "$role"
    issame $I367, $P365, $P366
    if $I367, if_364
    new $P363, 'Integer'
    set $P363, $I367
    goto if_364_end
  if_364:
.annotate 'line', 122
    new $P368, "String"
    assign $P368, "The role "
    find_lex $P369, "$role"
    concat $P370, $P368, $P369
    concat $P371, $P370, " has already been added."
    die $P371
  if_364_end:
.annotate 'line', 120
    .return ($P363)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_parrot_vtable_mapping"  :subid("36_1300232199.995") :outer("15_1300232199.995")
    .param pmc param_385
    .param pmc param_386
    .param pmc param_387
    .param pmc param_388
.annotate 'line', 128
    .lex "self", param_385
    .lex "$obj", param_386
    .lex "$name", param_387
    .lex "$meth", param_388
.annotate 'line', 129
    find_lex $P390, "$name"
    find_lex $P391, "self"
    get_global $P392, "$?CLASS"
    getattribute $P393, $P391, $P392, "%!parrot_vtable_mapping"
    unless_null $P393, vivify_214
    $P393 = root_new ['parrot';'Hash']
  vivify_214:
    set $P394, $P393[$P390]
    unless_null $P394, vivify_215
    new $P394, "Undef"
  vivify_215:
    defined $I395, $P394
    unless $I395, if_389_end
.annotate 'line', 130
    new $P396, "String"
    assign $P396, "Class '"
    find_lex $P397, "self"
    get_global $P398, "$?CLASS"
    getattribute $P399, $P397, $P398, "$!name"
    unless_null $P399, vivify_216
    new $P399, "Undef"
  vivify_216:
    concat $P400, $P396, $P399
    concat $P401, $P400, "' already has a Parrot v-table override for '"
    find_lex $P402, "$name"
    concat $P403, $P401, $P402
.annotate 'line', 131
    concat $P404, $P403, "'"
.annotate 'line', 132
    die $P404
  if_389_end:
.annotate 'line', 134
    find_lex $P405, "$meth"
    find_lex $P406, "$name"
    find_lex $P407, "self"
    get_global $P408, "$?CLASS"
    getattribute $P409, $P407, $P408, "%!parrot_vtable_mapping"
    unless_null $P409, vivify_217
    $P409 = root_new ['parrot';'Hash']
    setattribute $P407, $P408, "%!parrot_vtable_mapping", $P409
  vivify_217:
    set $P409[$P406], $P405
.annotate 'line', 128
    .return ($P405)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "compose"  :subid("37_1300232199.995") :outer("15_1300232199.995")
    .param pmc param_411
    .param pmc param_412
.annotate 'line', 137
    .const 'Sub' $P499 = "40_1300232199.995" 
    capture_lex $P499
    .const 'Sub' $P418 = "38_1300232199.995" 
    capture_lex $P418
    .lex "self", param_411
    .lex "$obj", param_412
.annotate 'line', 141
    find_lex $P414, "self"
    get_global $P415, "$?CLASS"
    getattribute $P416, $P414, $P415, "@!roles"
    unless_null $P416, vivify_218
    $P416 = root_new ['parrot';'ResizablePMCArray']
  vivify_218:
    unless $P416, if_413_end
    .const 'Sub' $P418 = "38_1300232199.995" 
    capture_lex $P418
    $P418()
  if_413_end:
.annotate 'line', 154
    find_lex $P466, "self"
    get_global $P467, "$?CLASS"
    getattribute $P468, $P466, $P467, "@!parents"
    unless_null $P468, vivify_225
    $P468 = root_new ['parrot';'ResizablePMCArray']
  vivify_225:
    set $N469, $P468
    iseq $I470, $N469, 0.0
    if $I470, if_465
    new $P464, 'Integer'
    set $P464, $I470
    goto if_465_end
  if_465:
    find_lex $P471, "self"
    get_global $P472, "$?CLASS"
    getattribute $P473, $P471, $P472, "$!name"
    unless_null $P473, vivify_226
    new $P473, "Undef"
  vivify_226:
    set $S474, $P473
    isne $I475, $S474, "NQPMu"
    new $P464, 'Integer'
    set $P464, $I475
  if_465_end:
    unless $P464, if_463_end
.annotate 'line', 155
    find_lex $P476, "self"
    find_lex $P477, "$obj"
    get_hll_global $P478, "NQPMu"
    $P476."add_parent"($P477, $P478)
  if_463_end:
.annotate 'line', 160
    find_lex $P480, "self"
    get_global $P481, "$?CLASS"
    getattribute $P482, $P480, $P481, "$!composed"
    unless_null $P482, vivify_227
    new $P482, "Undef"
  vivify_227:
    if $P482, unless_479_end
.annotate 'line', 161
    find_lex $P483, "$obj"
    $P484 = "compute_c3_mro"($P483)
    find_lex $P485, "self"
    get_global $P486, "$?CLASS"
    setattribute $P485, $P486, "@!mro", $P484
.annotate 'line', 162
    new $P487, "Integer"
    assign $P487, 1
    find_lex $P488, "self"
    get_global $P489, "$?CLASS"
    setattribute $P488, $P489, "$!composed", $P487
  unless_479_end:
.annotate 'line', 166
    find_lex $P490, "self"
    find_lex $P491, "$obj"
    $P490."incorporate_multi_candidates"($P491)
.annotate 'line', 169
    find_lex $P493, "self"
    find_lex $P494, "$obj"
    $P495 = $P493."attributes"($P494, "0" :named("local"))
    defined $I496, $P495
    unless $I496, for_undef_228
    iter $P492, $P495
    new $P505, 'ExceptionHandler'
    set_label $P505, loop504_handler
    $P505."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P505
  loop504_test:
    unless $P492, loop504_done
    shift $P497, $P492
  loop504_redo:
    .const 'Sub' $P499 = "40_1300232199.995" 
    capture_lex $P499
    $P499($P497)
  loop504_next:
    goto loop504_test
  loop504_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P506, exception, 'type'
    eq $P506, .CONTROL_LOOP_NEXT, loop504_next
    eq $P506, .CONTROL_LOOP_REDO, loop504_redo
  loop504_done:
    pop_eh 
  for_undef_228:
.annotate 'line', 172
    find_lex $P507, "self"
    find_lex $P508, "$obj"
    $P507."publish_type_cache"($P508)
.annotate 'line', 173
    find_lex $P509, "self"
    find_lex $P510, "$obj"
    $P509."publish_method_cache"($P510)
.annotate 'line', 176
    find_lex $P511, "self"
    find_lex $P512, "$obj"
    $P511."publish_parrot_vtable_mapping"($P512)
    find_lex $P513, "$obj"
.annotate 'line', 137
    .return ($P513)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block417"  :anon :subid("38_1300232199.995") :outer("37_1300232199.995")
.annotate 'line', 141
    .const 'Sub' $P428 = "39_1300232199.995" 
    capture_lex $P428
.annotate 'line', 142
    $P419 = root_new ['parrot';'ResizablePMCArray']
    .lex "@instantiated_roles", $P419
.annotate 'line', 141
    find_lex $P420, "@instantiated_roles"
.annotate 'line', 143
    find_lex $P422, "self"
    get_global $P423, "$?CLASS"
    getattribute $P424, $P422, $P423, "@!roles"
    unless_null $P424, vivify_219
    $P424 = root_new ['parrot';'ResizablePMCArray']
  vivify_219:
    defined $I425, $P424
    unless $I425, for_undef_220
    iter $P421, $P424
    new $P457, 'ExceptionHandler'
    set_label $P457, loop456_handler
    $P457."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P457
  loop456_test:
    unless $P421, loop456_done
    shift $P426, $P421
  loop456_redo:
    .const 'Sub' $P428 = "39_1300232199.995" 
    capture_lex $P428
    $P428($P426)
  loop456_next:
    goto loop456_test
  loop456_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P458, exception, 'type'
    eq $P458, .CONTROL_LOOP_NEXT, loop456_next
    eq $P458, .CONTROL_LOOP_REDO, loop456_redo
  loop456_done:
    pop_eh 
  for_undef_220:
.annotate 'line', 149
    get_hll_global $P459, "RoleToClassApplier"
    find_lex $P460, "$obj"
    find_lex $P461, "@instantiated_roles"
    $P462 = $P459."apply"($P460, $P461)
.annotate 'line', 141
    .return ($P462)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block427"  :anon :subid("39_1300232199.995") :outer("38_1300232199.995")
    .param pmc param_430
.annotate 'line', 144
    new $P429, "Undef"
    .lex "$ins", $P429
    .lex "$_", param_430
    find_lex $P431, "$_"
    get_how $P432, $P431
    find_lex $P433, "$_"
    find_lex $P434, "$obj"
    $P435 = $P432."instantiate"($P433, $P434)
    store_lex "$ins", $P435
.annotate 'line', 145
    find_lex $P436, "@instantiated_roles"
    find_lex $P437, "$ins"
    $P436."push"($P437)
.annotate 'line', 146
    find_lex $P438, "$_"
    find_lex $P439, "self"
    get_global $P440, "$?CLASS"
    getattribute $P441, $P439, $P440, "@!done"
    unless_null $P441, vivify_221
    $P441 = root_new ['parrot';'ResizablePMCArray']
  vivify_221:
    set $N442, $P441
    set $I443, $N442
    find_lex $P444, "self"
    get_global $P445, "$?CLASS"
    getattribute $P446, $P444, $P445, "@!done"
    unless_null $P446, vivify_222
    $P446 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P444, $P445, "@!done", $P446
  vivify_222:
    set $P446[$I443], $P438
.annotate 'line', 147
    find_lex $P447, "$ins"
    find_lex $P448, "self"
    get_global $P449, "$?CLASS"
    getattribute $P450, $P448, $P449, "@!done"
    unless_null $P450, vivify_223
    $P450 = root_new ['parrot';'ResizablePMCArray']
  vivify_223:
    set $N451, $P450
    set $I452, $N451
    find_lex $P453, "self"
    get_global $P454, "$?CLASS"
    getattribute $P455, $P453, $P454, "@!done"
    unless_null $P455, vivify_224
    $P455 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P453, $P454, "@!done", $P455
  vivify_224:
    set $P455[$I452], $P447
.annotate 'line', 143
    .return ($P447)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block498"  :anon :subid("40_1300232199.995") :outer("37_1300232199.995")
    .param pmc param_500
.annotate 'line', 169
    .lex "$_", param_500
    find_lex $P501, "$_"
    find_lex $P502, "$obj"
    $P503 = $P501."compose"($P502)
    .return ($P503)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "incorporate_multi_candidates"  :subid("41_1300232199.995") :outer("15_1300232199.995")
    .param pmc param_515
    .param pmc param_516
.annotate 'line', 181
    .const 'Sub' $P531 = "42_1300232199.995" 
    capture_lex $P531
    .lex "self", param_515
    .lex "$obj", param_516
.annotate 'line', 182
    new $P517, "Undef"
    .lex "$num_todo", $P517
.annotate 'line', 183
    new $P518, "Undef"
    .lex "$i", $P518
.annotate 'line', 182
    find_lex $P519, "self"
    get_global $P520, "$?CLASS"
    getattribute $P521, $P519, $P520, "@!multi_methods_to_incorporate"
    unless_null $P521, vivify_229
    $P521 = root_new ['parrot';'ResizablePMCArray']
  vivify_229:
    set $N522, $P521
    new $P523, 'Float'
    set $P523, $N522
    store_lex "$num_todo", $P523
.annotate 'line', 183
    new $P524, "Integer"
    assign $P524, 0
    store_lex "$i", $P524
.annotate 'line', 184
    new $P640, 'ExceptionHandler'
    set_label $P640, loop639_handler
    $P640."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P640
  loop639_test:
    find_lex $P525, "$i"
    set $N526, $P525
    find_lex $P527, "$num_todo"
    set $N528, $P527
    isne $I529, $N526, $N528
    unless $I529, loop639_done
  loop639_redo:
    .const 'Sub' $P531 = "42_1300232199.995" 
    capture_lex $P531
    $P531()
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
.annotate 'line', 181
    .return ($I529)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block530"  :anon :subid("42_1300232199.995") :outer("41_1300232199.995")
.annotate 'line', 184
    .const 'Sub' $P567 = "43_1300232199.995" 
    capture_lex $P567
.annotate 'line', 186
    new $P532, "Undef"
    .lex "$name", $P532
.annotate 'line', 187
    new $P533, "Undef"
    .lex "$code", $P533
.annotate 'line', 191
    new $P534, "Undef"
    .lex "$dispatcher", $P534
.annotate 'line', 186
    find_lex $P535, "$i"
    set $I536, $P535
    find_lex $P537, "self"
    get_global $P538, "$?CLASS"
    getattribute $P539, $P537, $P538, "@!multi_methods_to_incorporate"
    unless_null $P539, vivify_230
    $P539 = root_new ['parrot';'ResizablePMCArray']
  vivify_230:
    set $P540, $P539[$I536]
    unless_null $P540, vivify_231
    $P540 = root_new ['parrot';'Hash']
  vivify_231:
    set $P541, $P540["name"]
    unless_null $P541, vivify_232
    new $P541, "Undef"
  vivify_232:
    store_lex "$name", $P541
.annotate 'line', 187
    find_lex $P542, "$i"
    set $I543, $P542
    find_lex $P544, "self"
    get_global $P545, "$?CLASS"
    getattribute $P546, $P544, $P545, "@!multi_methods_to_incorporate"
    unless_null $P546, vivify_233
    $P546 = root_new ['parrot';'ResizablePMCArray']
  vivify_233:
    set $P547, $P546[$I543]
    unless_null $P547, vivify_234
    $P547 = root_new ['parrot';'Hash']
  vivify_234:
    set $P548, $P547["code"]
    unless_null $P548, vivify_235
    new $P548, "Undef"
  vivify_235:
    store_lex "$code", $P548
.annotate 'line', 191
    find_lex $P549, "$name"
    find_lex $P550, "self"
    get_global $P551, "$?CLASS"
    getattribute $P552, $P550, $P551, "%!methods"
    unless_null $P552, vivify_236
    $P552 = root_new ['parrot';'Hash']
  vivify_236:
    set $P553, $P552[$P549]
    unless_null $P553, vivify_237
    new $P553, "Undef"
  vivify_237:
    store_lex "$dispatcher", $P553
.annotate 'line', 192
    find_lex $P555, "$dispatcher"
    defined $I556, $P555
    if $I556, if_554
.annotate 'line', 202
    .const 'Sub' $P567 = "43_1300232199.995" 
    capture_lex $P567
    $P567()
    goto if_554_end
  if_554:
.annotate 'line', 195
    find_lex $P558, "$dispatcher"
    is_dispatcher $I559, $P558
    if $I559, if_557
.annotate 'line', 199
    new $P562, 'String'
    set $P562, "Cannot have a multi candidate for "
    find_lex $P563, "$name"
    concat $P564, $P562, $P563
    concat $P565, $P564, " when an only method is also in the class"
    die $P565
.annotate 'line', 198
    goto if_557_end
  if_557:
.annotate 'line', 196
    find_lex $P560, "$dispatcher"
    find_lex $P561, "$code"
    push_dispatchee $P560, $P561
  if_557_end:
  if_554_end:
.annotate 'line', 230
    find_lex $P637, "$i"
    add $P638, $P637, 1
    store_lex "$i", $P638
.annotate 'line', 184
    .return ($P638)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block566"  :anon :subid("43_1300232199.995") :outer("42_1300232199.995")
.annotate 'line', 202
    .const 'Sub' $P584 = "44_1300232199.995" 
    capture_lex $P584
.annotate 'line', 204
    new $P568, "Undef"
    .lex "$j", $P568
.annotate 'line', 205
    new $P569, "Undef"
    .lex "$found", $P569
.annotate 'line', 204
    new $P570, "Integer"
    assign $P570, 1
    store_lex "$j", $P570
.annotate 'line', 205
    new $P571, "Integer"
    assign $P571, 0
    store_lex "$found", $P571
.annotate 'line', 206
    new $P628, 'ExceptionHandler'
    set_label $P628, loop627_handler
    $P628."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P628
  loop627_test:
    find_lex $P574, "$j"
    set $N575, $P574
    find_lex $P576, "self"
    get_global $P577, "$?CLASS"
    getattribute $P578, $P576, $P577, "@!mro"
    unless_null $P578, vivify_238
    $P578 = root_new ['parrot';'ResizablePMCArray']
  vivify_238:
    set $N579, $P578
    isne $I580, $N575, $N579
    if $I580, if_573
    new $P572, 'Integer'
    set $P572, $I580
    goto if_573_end
  if_573:
    find_lex $P581, "$found"
    isfalse $I582, $P581
    new $P572, 'Integer'
    set $P572, $I582
  if_573_end:
    unless $P572, loop627_done
  loop627_redo:
    .const 'Sub' $P584 = "44_1300232199.995" 
    capture_lex $P584
    $P584()
  loop627_next:
    goto loop627_test
  loop627_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P629, exception, 'type'
    eq $P629, .CONTROL_LOOP_NEXT, loop627_next
    eq $P629, .CONTROL_LOOP_REDO, loop627_redo
  loop627_done:
    pop_eh 
.annotate 'line', 226
    find_lex $P632, "$found"
    unless $P632, unless_631
    set $P630, $P632
    goto unless_631_end
  unless_631:
.annotate 'line', 227
    new $P633, 'String'
    set $P633, "Could not find a proto for multi "
    find_lex $P634, "$name"
    concat $P635, $P633, $P634
    concat $P636, $P635, ", and proto generation is NYI"
    die $P636
  unless_631_end:
.annotate 'line', 202
    .return ($P630)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block583"  :anon :subid("44_1300232199.995") :outer("43_1300232199.995")
.annotate 'line', 206
    .const 'Sub' $P608 = "45_1300232199.995" 
    capture_lex $P608
.annotate 'line', 207
    new $P585, "Undef"
    .lex "$parent", $P585
.annotate 'line', 208
    $P586 = root_new ['parrot';'Hash']
    .lex "%meths", $P586
.annotate 'line', 209
    new $P587, "Undef"
    .lex "$dispatcher", $P587
.annotate 'line', 207
    find_lex $P588, "$j"
    set $I589, $P588
    find_lex $P590, "self"
    get_global $P591, "$?CLASS"
    getattribute $P592, $P590, $P591, "@!mro"
    unless_null $P592, vivify_239
    $P592 = root_new ['parrot';'ResizablePMCArray']
  vivify_239:
    set $P593, $P592[$I589]
    unless_null $P593, vivify_240
    new $P593, "Undef"
  vivify_240:
    store_lex "$parent", $P593
.annotate 'line', 208
    find_lex $P594, "$parent"
    get_how $P595, $P594
    find_lex $P596, "$parent"
    $P597 = $P595."method_table"($P596)
    store_lex "%meths", $P597
.annotate 'line', 209
    find_lex $P598, "$name"
    find_lex $P599, "%meths"
    unless_null $P599, vivify_241
    $P599 = root_new ['parrot';'Hash']
  vivify_241:
    set $P600, $P599[$P598]
    unless_null $P600, vivify_242
    new $P600, "Undef"
  vivify_242:
    store_lex "$dispatcher", $P600
.annotate 'line', 210
    find_lex $P602, "$dispatcher"
    defined $I603, $P602
    unless $I603, if_601_end
.annotate 'line', 213
    find_lex $P605, "$dispatcher"
    is_dispatcher $I606, $P605
    if $I606, if_604
.annotate 'line', 221
    new $P621, 'String'
    set $P621, "Could not find a proto for multi "
    find_lex $P622, "$name"
    concat $P623, $P621, $P622
    concat $P624, $P623, " (it may exist, but an only is hiding it if so)"
    die $P624
.annotate 'line', 220
    goto if_604_end
  if_604:
.annotate 'line', 213
    .const 'Sub' $P608 = "45_1300232199.995" 
    capture_lex $P608
    $P608()
  if_604_end:
  if_601_end:
.annotate 'line', 224
    find_lex $P625, "$j"
    add $P626, $P625, 1
    store_lex "$j", $P626
.annotate 'line', 206
    .return ($P626)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block607"  :anon :subid("45_1300232199.995") :outer("44_1300232199.995")
.annotate 'line', 215
    $P609 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new_dispatchees", $P609
.annotate 'line', 213
    find_lex $P610, "@new_dispatchees"
.annotate 'line', 216
    find_lex $P611, "$code"
    find_lex $P612, "@new_dispatchees"
    unless_null $P612, vivify_243
    $P612 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@new_dispatchees", $P612
  vivify_243:
    set $P612[0], $P611
.annotate 'line', 217
    find_lex $P613, "$dispatcher"
    find_lex $P614, "@new_dispatchees"
    create_dispatch_and_add_candidates $P615, $P613, $P614
    find_lex $P616, "$name"
    find_lex $P617, "self"
    get_global $P618, "$?CLASS"
    getattribute $P619, $P617, $P618, "%!methods"
    unless_null $P619, vivify_244
    $P619 = root_new ['parrot';'Hash']
    setattribute $P617, $P618, "%!methods", $P619
  vivify_244:
    set $P619[$P616], $P615
.annotate 'line', 218
    new $P620, "Integer"
    assign $P620, 1
    store_lex "$found", $P620
.annotate 'line', 213
    .return ($P620)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_type_cache"  :subid("46_1300232199.995") :outer("15_1300232199.995")
    .param pmc param_645
    .param pmc param_646
.annotate 'line', 323
    .const 'Sub' $P671 = "48_1300232199.995" 
    capture_lex $P671
    .const 'Sub' $P656 = "47_1300232199.995" 
    capture_lex $P656
    .lex "self", param_645
    .lex "$obj", param_646
.annotate 'line', 324
    $P647 = root_new ['parrot';'ResizablePMCArray']
    .lex "@tc", $P647
.annotate 'line', 323
    find_lex $P648, "@tc"
.annotate 'line', 325
    find_lex $P650, "self"
    get_global $P651, "$?CLASS"
    getattribute $P652, $P650, $P651, "@!mro"
    unless_null $P652, vivify_245
    $P652 = root_new ['parrot';'ResizablePMCArray']
  vivify_245:
    defined $I653, $P652
    unless $I653, for_undef_246
    iter $P649, $P652
    new $P662, 'ExceptionHandler'
    set_label $P662, loop661_handler
    $P662."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P662
  loop661_test:
    unless $P649, loop661_done
    shift $P654, $P649
  loop661_redo:
    .const 'Sub' $P656 = "47_1300232199.995" 
    capture_lex $P656
    $P656($P654)
  loop661_next:
    goto loop661_test
  loop661_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P663, exception, 'type'
    eq $P663, .CONTROL_LOOP_NEXT, loop661_next
    eq $P663, .CONTROL_LOOP_REDO, loop661_redo
  loop661_done:
    pop_eh 
  for_undef_246:
.annotate 'line', 326
    find_lex $P665, "self"
    get_global $P666, "$?CLASS"
    getattribute $P667, $P665, $P666, "@!done"
    unless_null $P667, vivify_247
    $P667 = root_new ['parrot';'ResizablePMCArray']
  vivify_247:
    defined $I668, $P667
    unless $I668, for_undef_248
    iter $P664, $P667
    new $P677, 'ExceptionHandler'
    set_label $P677, loop676_handler
    $P677."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P677
  loop676_test:
    unless $P664, loop676_done
    shift $P669, $P664
  loop676_redo:
    .const 'Sub' $P671 = "48_1300232199.995" 
    capture_lex $P671
    $P671($P669)
  loop676_next:
    goto loop676_test
  loop676_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P678, exception, 'type'
    eq $P678, .CONTROL_LOOP_NEXT, loop676_next
    eq $P678, .CONTROL_LOOP_REDO, loop676_redo
  loop676_done:
    pop_eh 
  for_undef_248:
.annotate 'line', 327
    find_lex $P679, "$obj"
    find_lex $P680, "@tc"
    publish_type_check_cache $P679, $P680
.annotate 'line', 323
    .return ()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block655"  :anon :subid("47_1300232199.995") :outer("46_1300232199.995")
    .param pmc param_657
.annotate 'line', 325
    .lex "$_", param_657
    find_lex $P658, "@tc"
    find_lex $P659, "$_"
    $P660 = $P658."push"($P659)
    .return ($P660)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block670"  :anon :subid("48_1300232199.995") :outer("46_1300232199.995")
    .param pmc param_672
.annotate 'line', 326
    .lex "$_", param_672
    find_lex $P673, "@tc"
    find_lex $P674, "$_"
    $P675 = $P673."push"($P674)
    .return ($P675)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_method_cache"  :subid("49_1300232199.995") :outer("15_1300232199.995")
    .param pmc param_682
    .param pmc param_683
.annotate 'line', 330
    .const 'Sub' $P693 = "50_1300232199.995" 
    capture_lex $P693
    .lex "self", param_682
    .lex "$obj", param_683
.annotate 'line', 333
    $P684 = root_new ['parrot';'Hash']
    .lex "%cache", $P684
.annotate 'line', 330
    find_lex $P685, "%cache"
.annotate 'line', 334
    find_lex $P687, "self"
    get_global $P688, "$?CLASS"
    getattribute $P689, $P687, $P688, "@!mro"
    unless_null $P689, vivify_249
    $P689 = root_new ['parrot';'ResizablePMCArray']
  vivify_249:
    defined $I690, $P689
    unless $I690, for_undef_250
    iter $P686, $P689
    new $P722, 'ExceptionHandler'
    set_label $P722, loop721_handler
    $P722."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P722
  loop721_test:
    unless $P686, loop721_done
    shift $P691, $P686
  loop721_redo:
    .const 'Sub' $P693 = "50_1300232199.995" 
    capture_lex $P693
    $P693($P691)
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
  for_undef_250:
.annotate 'line', 342
    find_lex $P724, "$obj"
    find_lex $P725, "%cache"
    publish_method_cache $P724, $P725
.annotate 'line', 330
    .return ()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block692"  :anon :subid("50_1300232199.995") :outer("49_1300232199.995")
    .param pmc param_695
.annotate 'line', 334
    .const 'Sub' $P705 = "51_1300232199.995" 
    capture_lex $P705
.annotate 'line', 335
    $P694 = root_new ['parrot';'Hash']
    .lex "%methods", $P694
    .lex "$_", param_695
    find_lex $P696, "$_"
    get_how $P697, $P696
    find_lex $P698, "$_"
    $P699 = $P697."method_table"($P698)
    store_lex "%methods", $P699
.annotate 'line', 336
    find_lex $P701, "%methods"
    defined $I702, $P701
    unless $I702, for_undef_251
    iter $P700, $P701
    new $P719, 'ExceptionHandler'
    set_label $P719, loop718_handler
    $P719."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P719
  loop718_test:
    unless $P700, loop718_done
    shift $P703, $P700
  loop718_redo:
    .const 'Sub' $P705 = "51_1300232199.995" 
    capture_lex $P705
    $P705($P703)
  loop718_next:
    goto loop718_test
  loop718_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P720, exception, 'type'
    eq $P720, .CONTROL_LOOP_NEXT, loop718_next
    eq $P720, .CONTROL_LOOP_REDO, loop718_redo
  loop718_done:
    pop_eh 
  for_undef_251:
.annotate 'line', 334
    .return ($P700)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block704"  :anon :subid("51_1300232199.995") :outer("50_1300232199.995")
    .param pmc param_706
.annotate 'line', 336
    .lex "$_", param_706
.annotate 'line', 337
    find_lex $P709, "$_"
    $P710 = $P709."key"()
    find_lex $P711, "%cache"
    unless_null $P711, vivify_252
    $P711 = root_new ['parrot';'Hash']
  vivify_252:
    set $P712, $P711[$P710]
    unless_null $P712, vivify_253
    new $P712, "Undef"
  vivify_253:
    unless $P712, unless_708
    set $P707, $P712
    goto unless_708_end
  unless_708:
.annotate 'line', 338
    find_lex $P713, "$_"
    $P714 = $P713."value"()
    find_lex $P715, "$_"
    $P716 = $P715."key"()
    find_lex $P717, "%cache"
    unless_null $P717, vivify_254
    $P717 = root_new ['parrot';'Hash']
    store_lex "%cache", $P717
  vivify_254:
    set $P717[$P716], $P714
.annotate 'line', 337
    set $P707, $P714
  unless_708_end:
.annotate 'line', 336
    .return ($P707)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_parrot_vtable_mapping"  :subid("52_1300232199.995") :outer("15_1300232199.995")
    .param pmc param_727
    .param pmc param_728
.annotate 'line', 345
    .const 'Sub' $P738 = "53_1300232199.995" 
    capture_lex $P738
    .lex "self", param_727
    .lex "$obj", param_728
.annotate 'line', 346
    $P729 = root_new ['parrot';'Hash']
    .lex "%mapping", $P729
.annotate 'line', 345
    find_lex $P730, "%mapping"
.annotate 'line', 347
    find_lex $P732, "self"
    get_global $P733, "$?CLASS"
    getattribute $P734, $P732, $P733, "@!mro"
    unless_null $P734, vivify_255
    $P734 = root_new ['parrot';'ResizablePMCArray']
  vivify_255:
    defined $I735, $P734
    unless $I735, for_undef_256
    iter $P731, $P734
    new $P767, 'ExceptionHandler'
    set_label $P767, loop766_handler
    $P767."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P767
  loop766_test:
    unless $P731, loop766_done
    shift $P736, $P731
  loop766_redo:
    .const 'Sub' $P738 = "53_1300232199.995" 
    capture_lex $P738
    $P738($P736)
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
  for_undef_256:
.annotate 'line', 355
    find_lex $P771, "%mapping"
    set $N772, $P771
    if $N772, if_770
    new $P769, 'Float'
    set $P769, $N772
    goto if_770_end
  if_770:
.annotate 'line', 356
    find_lex $P773, "$obj"
    find_lex $P774, "%mapping"
    stable_publish_vtable_mapping $P773, $P774
  if_770_end:
.annotate 'line', 345
    .return ($P769)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block737"  :anon :subid("53_1300232199.995") :outer("52_1300232199.995")
    .param pmc param_740
.annotate 'line', 347
    .const 'Sub' $P750 = "54_1300232199.995" 
    capture_lex $P750
.annotate 'line', 348
    $P739 = root_new ['parrot';'Hash']
    .lex "%map", $P739
    .lex "$_", param_740
    find_lex $P741, "$_"
    get_how $P742, $P741
    find_lex $P743, "$_"
    $P744 = $P742."parrot_vtable_mappings"($P743, 1 :named("local"))
    store_lex "%map", $P744
.annotate 'line', 349
    find_lex $P746, "%map"
    defined $I747, $P746
    unless $I747, for_undef_257
    iter $P745, $P746
    new $P764, 'ExceptionHandler'
    set_label $P764, loop763_handler
    $P764."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P764
  loop763_test:
    unless $P745, loop763_done
    shift $P748, $P745
  loop763_redo:
    .const 'Sub' $P750 = "54_1300232199.995" 
    capture_lex $P750
    $P750($P748)
  loop763_next:
    goto loop763_test
  loop763_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P765, exception, 'type'
    eq $P765, .CONTROL_LOOP_NEXT, loop763_next
    eq $P765, .CONTROL_LOOP_REDO, loop763_redo
  loop763_done:
    pop_eh 
  for_undef_257:
.annotate 'line', 347
    .return ($P745)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block749"  :anon :subid("54_1300232199.995") :outer("53_1300232199.995")
    .param pmc param_751
.annotate 'line', 349
    .lex "$_", param_751
.annotate 'line', 350
    find_lex $P754, "$_"
    $P755 = $P754."key"()
    find_lex $P756, "%mapping"
    unless_null $P756, vivify_258
    $P756 = root_new ['parrot';'Hash']
  vivify_258:
    set $P757, $P756[$P755]
    unless_null $P757, vivify_259
    new $P757, "Undef"
  vivify_259:
    unless $P757, unless_753
    set $P752, $P757
    goto unless_753_end
  unless_753:
.annotate 'line', 351
    find_lex $P758, "$_"
    $P759 = $P758."value"()
    find_lex $P760, "$_"
    $P761 = $P760."key"()
    find_lex $P762, "%mapping"
    unless_null $P762, vivify_260
    $P762 = root_new ['parrot';'Hash']
    store_lex "%mapping", $P762
  vivify_260:
    set $P762[$P761], $P759
.annotate 'line', 350
    set $P752, $P759
  unless_753_end:
.annotate 'line', 349
    .return ($P752)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parents"  :subid("55_1300232199.995") :outer("15_1300232199.995")
    .param pmc param_776
    .param pmc param_777
    .param pmc param_778 :optional :named("local")
    .param int has_param_778 :opt_flag
.annotate 'line', 364
    .lex "self", param_776
    .lex "$obj", param_777
    if has_param_778, optparam_261
    new $P779, "Undef"
    set param_778, $P779
  optparam_261:
    .lex "$local", param_778
.annotate 'line', 365
    find_lex $P782, "$local"
    if $P782, if_781
    find_lex $P786, "self"
    get_global $P787, "$?CLASS"
    getattribute $P788, $P786, $P787, "@!mro"
    unless_null $P788, vivify_262
    $P788 = root_new ['parrot';'ResizablePMCArray']
  vivify_262:
    set $P780, $P788
    goto if_781_end
  if_781:
    find_lex $P783, "self"
    get_global $P784, "$?CLASS"
    getattribute $P785, $P783, $P784, "@!parents"
    unless_null $P785, vivify_263
    $P785 = root_new ['parrot';'ResizablePMCArray']
  vivify_263:
    set $P780, $P785
  if_781_end:
.annotate 'line', 364
    .return ($P780)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "roles"  :subid("56_1300232199.995") :outer("15_1300232199.995")
    .param pmc param_790
    .param pmc param_791
    .param pmc param_792 :named("local")
.annotate 'line', 368
    .lex "self", param_790
    .lex "$obj", param_791
    .lex "$local", param_792
    find_lex $P793, "self"
    get_global $P794, "$?CLASS"
    getattribute $P795, $P793, $P794, "@!roles"
    unless_null $P795, vivify_264
    $P795 = root_new ['parrot';'ResizablePMCArray']
  vivify_264:
    .return ($P795)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "methods"  :subid("57_1300232199.995") :outer("15_1300232199.995")
    .param pmc param_797
    .param pmc param_798
    .param pmc param_799 :named("local")
.annotate 'line', 372
    .const 'Sub' $P809 = "58_1300232199.995" 
    capture_lex $P809
    .lex "self", param_797
    .lex "$obj", param_798
    .lex "$local", param_799
.annotate 'line', 373
    $P800 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meths", $P800
.annotate 'line', 372
    find_lex $P801, "@meths"
.annotate 'line', 374
    find_lex $P803, "self"
    get_global $P804, "$?CLASS"
    getattribute $P805, $P803, $P804, "%!methods"
    unless_null $P805, vivify_265
    $P805 = root_new ['parrot';'Hash']
  vivify_265:
    defined $I806, $P805
    unless $I806, for_undef_266
    iter $P802, $P805
    new $P816, 'ExceptionHandler'
    set_label $P816, loop815_handler
    $P816."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P816
  loop815_test:
    unless $P802, loop815_done
    shift $P807, $P802
  loop815_redo:
    .const 'Sub' $P809 = "58_1300232199.995" 
    capture_lex $P809
    $P809($P807)
  loop815_next:
    goto loop815_test
  loop815_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P817, exception, 'type'
    eq $P817, .CONTROL_LOOP_NEXT, loop815_next
    eq $P817, .CONTROL_LOOP_REDO, loop815_redo
  loop815_done:
    pop_eh 
  for_undef_266:
    find_lex $P818, "@meths"
.annotate 'line', 372
    .return ($P818)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block808"  :anon :subid("58_1300232199.995") :outer("57_1300232199.995")
    .param pmc param_810
.annotate 'line', 374
    .lex "$_", param_810
.annotate 'line', 375
    find_lex $P811, "@meths"
    find_lex $P812, "$_"
    $P813 = $P812."value"()
    $P814 = $P811."push"($P813)
.annotate 'line', 374
    .return ($P814)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "method_table"  :subid("59_1300232199.995") :outer("15_1300232199.995")
    .param pmc param_820
    .param pmc param_821
.annotate 'line', 380
    .lex "self", param_820
    .lex "$obj", param_821
    find_lex $P822, "self"
    get_global $P823, "$?CLASS"
    getattribute $P824, $P822, $P823, "%!methods"
    unless_null $P824, vivify_267
    $P824 = root_new ['parrot';'Hash']
  vivify_267:
    .return ($P824)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "name"  :subid("60_1300232199.995") :outer("15_1300232199.995")
    .param pmc param_826
    .param pmc param_827
.annotate 'line', 384
    .lex "self", param_826
    .lex "$obj", param_827
    find_lex $P828, "self"
    get_global $P829, "$?CLASS"
    getattribute $P830, $P828, $P829, "$!name"
    unless_null $P830, vivify_268
    new $P830, "Undef"
  vivify_268:
    .return ($P830)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "attributes"  :subid("61_1300232199.995") :outer("15_1300232199.995")
    .param pmc param_832
    .param pmc param_833
    .param pmc param_834 :named("local")
.annotate 'line', 388
    .const 'Sub' $P844 = "62_1300232199.995" 
    capture_lex $P844
    .lex "self", param_832
    .lex "$obj", param_833
    .lex "$local", param_834
.annotate 'line', 389
    $P835 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attrs", $P835
.annotate 'line', 388
    find_lex $P836, "@attrs"
.annotate 'line', 390
    find_lex $P838, "self"
    get_global $P839, "$?CLASS"
    getattribute $P840, $P838, $P839, "%!attributes"
    unless_null $P840, vivify_269
    $P840 = root_new ['parrot';'Hash']
  vivify_269:
    defined $I841, $P840
    unless $I841, for_undef_270
    iter $P837, $P840
    new $P851, 'ExceptionHandler'
    set_label $P851, loop850_handler
    $P851."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P851
  loop850_test:
    unless $P837, loop850_done
    shift $P842, $P837
  loop850_redo:
    .const 'Sub' $P844 = "62_1300232199.995" 
    capture_lex $P844
    $P844($P842)
  loop850_next:
    goto loop850_test
  loop850_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P852, exception, 'type'
    eq $P852, .CONTROL_LOOP_NEXT, loop850_next
    eq $P852, .CONTROL_LOOP_REDO, loop850_redo
  loop850_done:
    pop_eh 
  for_undef_270:
    find_lex $P853, "@attrs"
.annotate 'line', 388
    .return ($P853)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block843"  :anon :subid("62_1300232199.995") :outer("61_1300232199.995")
    .param pmc param_845
.annotate 'line', 390
    .lex "$_", param_845
.annotate 'line', 391
    find_lex $P846, "@attrs"
    find_lex $P847, "$_"
    $P848 = $P847."value"()
    $P849 = $P846."push"($P848)
.annotate 'line', 390
    .return ($P849)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parrot_vtable_mappings"  :subid("63_1300232199.995") :outer("15_1300232199.995")
    .param pmc param_855
    .param pmc param_856
    .param pmc param_857 :named("local")
.annotate 'line', 396
    .lex "self", param_855
    .lex "$obj", param_856
    .lex "$local", param_857
    find_lex $P858, "self"
    get_global $P859, "$?CLASS"
    getattribute $P860, $P858, $P859, "%!parrot_vtable_mapping"
    unless_null $P860, vivify_271
    $P860 = root_new ['parrot';'Hash']
  vivify_271:
    .return ($P860)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "isa"  :subid("64_1300232199.995") :outer("15_1300232199.995")
    .param pmc param_864
    .param pmc param_865
    .param pmc param_866
.annotate 'line', 404
    new $P863, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P863, control_862
    push_eh $P863
    .lex "self", param_864
    .lex "$obj", param_865
    .lex "$check", param_866
.annotate 'line', 405
    new $P867, "Undef"
    .lex "$check-class", $P867
.annotate 'line', 406
    new $P868, "Undef"
    .lex "$i", $P868
.annotate 'line', 405
    find_lex $P869, "$check"
    get_what $P870, $P869
    store_lex "$check-class", $P870
.annotate 'line', 406
    find_lex $P871, "self"
    get_global $P872, "$?CLASS"
    getattribute $P873, $P871, $P872, "@!mro"
    unless_null $P873, vivify_272
    $P873 = root_new ['parrot';'ResizablePMCArray']
  vivify_272:
    set $N874, $P873
    new $P875, 'Float'
    set $P875, $N874
    store_lex "$i", $P875
.annotate 'line', 407
    new $P893, 'ExceptionHandler'
    set_label $P893, loop892_handler
    $P893."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P893
  loop892_test:
    find_lex $P876, "$i"
    set $N877, $P876
    isgt $I878, $N877, 0.0
    unless $I878, loop892_done
  loop892_redo:
.annotate 'line', 408
    find_lex $P879, "$i"
    sub $P880, $P879, 1
    store_lex "$i", $P880
.annotate 'line', 409
    find_lex $P882, "$i"
    set $I883, $P882
    find_lex $P884, "self"
    get_global $P885, "$?CLASS"
    getattribute $P886, $P884, $P885, "@!mro"
    unless_null $P886, vivify_273
    $P886 = root_new ['parrot';'ResizablePMCArray']
  vivify_273:
    set $P887, $P886[$I883]
    unless_null $P887, vivify_274
    new $P887, "Undef"
  vivify_274:
    find_lex $P888, "$check-class"
    issame $I889, $P887, $P888
    unless $I889, if_881_end
.annotate 'line', 410
    new $P890, "Exception"
    set $P890['type'], .CONTROL_RETURN
    new $P891, "Integer"
    assign $P891, 1
    setattribute $P890, 'payload', $P891
    throw $P890
  if_881_end:
  loop892_next:
.annotate 'line', 407
    goto loop892_test
  loop892_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P894, exception, 'type'
    eq $P894, .CONTROL_LOOP_NEXT, loop892_next
    eq $P894, .CONTROL_LOOP_REDO, loop892_redo
  loop892_done:
    pop_eh 
.annotate 'line', 413
    new $P895, "Exception"
    set $P895['type'], .CONTROL_RETURN
    new $P896, "Integer"
    assign $P896, 0
    setattribute $P895, 'payload', $P896
    throw $P895
.annotate 'line', 404
    .return ()
  control_862:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P897, exception, "payload"
    .return ($P897)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "does"  :subid("65_1300232199.995") :outer("15_1300232199.995")
    .param pmc param_901
    .param pmc param_902
    .param pmc param_903
.annotate 'line', 416
    new $P900, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P900, control_899
    push_eh $P900
    .lex "self", param_901
    .lex "$obj", param_902
    .lex "$check", param_903
.annotate 'line', 417
    new $P904, "Undef"
    .lex "$i", $P904
    find_lex $P905, "self"
    get_global $P906, "$?CLASS"
    getattribute $P907, $P905, $P906, "@!done"
    unless_null $P907, vivify_275
    $P907 = root_new ['parrot';'ResizablePMCArray']
  vivify_275:
    set $N908, $P907
    new $P909, 'Float'
    set $P909, $N908
    store_lex "$i", $P909
.annotate 'line', 418
    new $P927, 'ExceptionHandler'
    set_label $P927, loop926_handler
    $P927."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P927
  loop926_test:
    find_lex $P910, "$i"
    set $N911, $P910
    isgt $I912, $N911, 0.0
    unless $I912, loop926_done
  loop926_redo:
.annotate 'line', 419
    find_lex $P913, "$i"
    sub $P914, $P913, 1
    store_lex "$i", $P914
.annotate 'line', 420
    find_lex $P916, "$i"
    set $I917, $P916
    find_lex $P918, "self"
    get_global $P919, "$?CLASS"
    getattribute $P920, $P918, $P919, "@!done"
    unless_null $P920, vivify_276
    $P920 = root_new ['parrot';'ResizablePMCArray']
  vivify_276:
    set $P921, $P920[$I917]
    unless_null $P921, vivify_277
    new $P921, "Undef"
  vivify_277:
    find_lex $P922, "$check"
    issame $I923, $P921, $P922
    unless $I923, if_915_end
.annotate 'line', 421
    new $P924, "Exception"
    set $P924['type'], .CONTROL_RETURN
    new $P925, "Integer"
    assign $P925, 1
    setattribute $P924, 'payload', $P925
    throw $P924
  if_915_end:
  loop926_next:
.annotate 'line', 418
    goto loop926_test
  loop926_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P928, exception, 'type'
    eq $P928, .CONTROL_LOOP_NEXT, loop926_next
    eq $P928, .CONTROL_LOOP_REDO, loop926_redo
  loop926_done:
    pop_eh 
.annotate 'line', 424
    new $P929, "Exception"
    set $P929['type'], .CONTROL_RETURN
    new $P930, "Integer"
    assign $P930, 0
    setattribute $P929, 'payload', $P930
    throw $P929
.annotate 'line', 416
    .return ()
  control_899:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P931, exception, "payload"
    .return ($P931)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "can"  :subid("66_1300232199.995") :outer("15_1300232199.995")
    .param pmc param_935
    .param pmc param_936
    .param pmc param_937
.annotate 'line', 427
    .const 'Sub' $P945 = "67_1300232199.995" 
    capture_lex $P945
    new $P934, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P934, control_933
    push_eh $P934
    .lex "self", param_935
    .lex "$obj", param_936
    .lex "$name", param_937
.annotate 'line', 428
    find_lex $P939, "self"
    get_global $P940, "$?CLASS"
    getattribute $P941, $P939, $P940, "@!mro"
    unless_null $P941, vivify_278
    $P941 = root_new ['parrot';'ResizablePMCArray']
  vivify_278:
    defined $I942, $P941
    unless $I942, for_undef_279
    iter $P938, $P941
    new $P963, 'ExceptionHandler'
    set_label $P963, loop962_handler
    $P963."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P963
  loop962_test:
    unless $P938, loop962_done
    shift $P943, $P938
  loop962_redo:
    .const 'Sub' $P945 = "67_1300232199.995" 
    capture_lex $P945
    $P945($P943)
  loop962_next:
    goto loop962_test
  loop962_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P964, exception, 'type'
    eq $P964, .CONTROL_LOOP_NEXT, loop962_next
    eq $P964, .CONTROL_LOOP_REDO, loop962_redo
  loop962_done:
    pop_eh 
  for_undef_279:
.annotate 'line', 435
    new $P965, "Exception"
    set $P965['type'], .CONTROL_RETURN
    new $P966, "Integer"
    assign $P966, 0
    setattribute $P965, 'payload', $P966
    throw $P965
.annotate 'line', 427
    .return ()
  control_933:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P967, exception, "payload"
    .return ($P967)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block944"  :anon :subid("67_1300232199.995") :outer("66_1300232199.995")
    .param pmc param_948
.annotate 'line', 429
    $P946 = root_new ['parrot';'Hash']
    .lex "%meths", $P946
.annotate 'line', 430
    new $P947, "Undef"
    .lex "$can", $P947
    .lex "$_", param_948
.annotate 'line', 429
    find_lex $P949, "$_"
    get_how $P950, $P949
    find_lex $P951, "$obj"
    $P952 = $P950."method_table"($P951)
    store_lex "%meths", $P952
.annotate 'line', 430
    find_lex $P953, "$name"
    find_lex $P954, "%meths"
    unless_null $P954, vivify_280
    $P954 = root_new ['parrot';'Hash']
  vivify_280:
    set $P955, $P954[$P953]
    unless_null $P955, vivify_281
    new $P955, "Undef"
  vivify_281:
    store_lex "$can", $P955
.annotate 'line', 431
    find_lex $P958, "$can"
    defined $I959, $P958
    if $I959, if_957
    new $P956, 'Integer'
    set $P956, $I959
    goto if_957_end
  if_957:
.annotate 'line', 432
    new $P960, "Exception"
    set $P960['type'], .CONTROL_RETURN
    find_lex $P961, "$can"
    setattribute $P960, 'payload', $P961
    throw $P960
  if_957_end:
.annotate 'line', 428
    .return ($P956)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "find_method"  :subid("68_1300232199.995") :outer("15_1300232199.995")
    .param pmc param_971
    .param pmc param_972
    .param pmc param_973
.annotate 'line', 441
    .const 'Sub' $P981 = "69_1300232199.995" 
    capture_lex $P981
    new $P970, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P970, control_969
    push_eh $P970
    .lex "self", param_971
    .lex "$obj", param_972
    .lex "$name", param_973
.annotate 'line', 442
    find_lex $P975, "self"
    get_global $P976, "$?CLASS"
    getattribute $P977, $P975, $P976, "@!mro"
    unless_null $P977, vivify_282
    $P977 = root_new ['parrot';'ResizablePMCArray']
  vivify_282:
    defined $I978, $P977
    unless $I978, for_undef_283
    iter $P974, $P977
    new $P999, 'ExceptionHandler'
    set_label $P999, loop998_handler
    $P999."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P999
  loop998_test:
    unless $P974, loop998_done
    shift $P979, $P974
  loop998_redo:
    .const 'Sub' $P981 = "69_1300232199.995" 
    capture_lex $P981
    $P981($P979)
  loop998_next:
    goto loop998_test
  loop998_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1000, exception, 'type'
    eq $P1000, .CONTROL_LOOP_NEXT, loop998_next
    eq $P1000, .CONTROL_LOOP_REDO, loop998_redo
  loop998_done:
    pop_eh 
  for_undef_283:
.annotate 'line', 449
    null $P1001
.annotate 'line', 441
    .return ($P1001)
  control_969:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1002, exception, "payload"
    .return ($P1002)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block980"  :anon :subid("69_1300232199.995") :outer("68_1300232199.995")
    .param pmc param_984
.annotate 'line', 443
    $P982 = root_new ['parrot';'Hash']
    .lex "%meths", $P982
.annotate 'line', 444
    new $P983, "Undef"
    .lex "$found", $P983
    .lex "$_", param_984
.annotate 'line', 443
    find_lex $P985, "$_"
    get_how $P986, $P985
    find_lex $P987, "$obj"
    $P988 = $P986."method_table"($P987)
    store_lex "%meths", $P988
.annotate 'line', 444
    find_lex $P989, "$name"
    find_lex $P990, "%meths"
    unless_null $P990, vivify_284
    $P990 = root_new ['parrot';'Hash']
  vivify_284:
    set $P991, $P990[$P989]
    unless_null $P991, vivify_285
    new $P991, "Undef"
  vivify_285:
    store_lex "$found", $P991
.annotate 'line', 445
    find_lex $P994, "$found"
    defined $I995, $P994
    if $I995, if_993
    new $P992, 'Integer'
    set $P992, $I995
    goto if_993_end
  if_993:
.annotate 'line', 446
    new $P996, "Exception"
    set $P996['type'], .CONTROL_RETURN
    find_lex $P997, "$found"
    setattribute $P996, 'payload', $P997
    throw $P996
  if_993_end:
.annotate 'line', 442
    .return ($P992)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "_block1095"  :subid("71_1300232199.995") :outer("10_1300232199.995")
.annotate 'line', 454
    .const 'Sub' $P1156 = "80_1300232199.995" 
    capture_lex $P1156
    .const 'Sub' $P1148 = "79_1300232199.995" 
    capture_lex $P1148
    .const 'Sub' $P1142 = "78_1300232199.995" 
    capture_lex $P1142
    .const 'Sub' $P1138 = "77_1300232199.995" 
    capture_lex $P1138
    .const 'Sub' $P1133 = "76_1300232199.995" 
    capture_lex $P1133
    .const 'Sub' $P1128 = "75_1300232199.995" 
    capture_lex $P1128
    .const 'Sub' $P1115 = "74_1300232199.995" 
    capture_lex $P1115
    .const 'Sub' $P1108 = "73_1300232199.995" 
    capture_lex $P1108
    .const 'Sub' $P1098 = "72_1300232199.995" 
    capture_lex $P1098
    get_global $P1097, "$?CLASS"
.annotate 'line', 492
    .const 'Sub' $P1148 = "79_1300232199.995" 
    newclosure $P1154, $P1148
.annotate 'line', 454
    .return ($P1154)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "" :load :init :subid("post286") :outer("71_1300232199.995")
.annotate 'line', 454
    get_hll_global $P1096, ["NQPNativeHOW"], "_block1095" 
    .local pmc block
    set block, $P1096
    .const 'Sub' $P1156 = "80_1300232199.995" 
    capture_lex $P1156
    $P1156()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "_block1155"  :anon :subid("80_1300232199.995") :outer("71_1300232199.995")
.annotate 'line', 454
    nqp_get_sc_object $P1157, "1300232196.839", 2
    .local pmc type_obj
    set type_obj, $P1157
    set_global "$?CLASS", type_obj
    get_how $P1158, type_obj
    get_hll_global $P1159, "KnowHOWAttribute"
    $P1160 = $P1159."new"("$!name" :named("name"))
    $P1158."add_attribute"(type_obj, $P1160)
    get_how $P1161, type_obj
    get_hll_global $P1162, "KnowHOWAttribute"
    $P1163 = $P1162."new"("$!composed" :named("name"))
    $P1161."add_attribute"(type_obj, $P1163)
    get_how $P1164, type_obj
    .const 'Sub' $P1165 = "72_1300232199.995" 
    $P1164."add_method"(type_obj, "new", $P1165)
    get_how $P1166, type_obj
    .const 'Sub' $P1167 = "73_1300232199.995" 
    $P1166."add_method"(type_obj, "BUILD", $P1167)
    get_how $P1168, type_obj
    .const 'Sub' $P1169 = "74_1300232199.995" 
    $P1168."add_method"(type_obj, "new_type", $P1169)
    get_how $P1170, type_obj
    .const 'Sub' $P1171 = "75_1300232199.995" 
    $P1170."add_method"(type_obj, "add_method", $P1171)
    get_how $P1172, type_obj
    .const 'Sub' $P1173 = "76_1300232199.995" 
    $P1172."add_method"(type_obj, "add_multi_method", $P1173)
    get_how $P1174, type_obj
    .const 'Sub' $P1175 = "77_1300232199.995" 
    $P1174."add_method"(type_obj, "add_attribute", $P1175)
    get_how $P1176, type_obj
    .const 'Sub' $P1177 = "78_1300232199.995" 
    $P1176."add_method"(type_obj, "compose", $P1177)
    get_how $P1178, type_obj
    .const 'Sub' $P1179 = "79_1300232199.995" 
    $P1178."add_method"(type_obj, "name", $P1179)
    get_how $P1180, type_obj
    $P1181 = $P1180."compose"(type_obj)
    .return ($P1181)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "new"  :subid("72_1300232199.995") :outer("71_1300232199.995")
    .param pmc param_1099
    .param pmc param_1100 :optional :named("name")
    .param int has_param_1100 :opt_flag
.annotate 'line', 458
    .lex "self", param_1099
    if has_param_1100, optparam_287
    new $P1101, "Undef"
    set param_1100, $P1101
  optparam_287:
    .lex "$name", param_1100
.annotate 'line', 459
    new $P1102, "Undef"
    .lex "$obj", $P1102
    find_lex $P1103, "self"
    repr_instance_of $P1104, $P1103
    store_lex "$obj", $P1104
.annotate 'line', 460
    find_lex $P1105, "$obj"
    find_lex $P1106, "$name"
    $P1105."BUILD"($P1106 :named("name"))
    find_lex $P1107, "$obj"
.annotate 'line', 458
    .return ($P1107)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "BUILD"  :subid("73_1300232199.995") :outer("71_1300232199.995")
    .param pmc param_1109
    .param pmc param_1110 :optional :named("name")
    .param int has_param_1110 :opt_flag
.annotate 'line', 464
    .lex "self", param_1109
    if has_param_1110, optparam_288
    new $P1111, "Undef"
    set param_1110, $P1111
  optparam_288:
    .lex "$name", param_1110
.annotate 'line', 465
    find_lex $P1112, "$name"
    find_lex $P1113, "self"
    get_global $P1114, "$?CLASS"
    setattribute $P1113, $P1114, "$!name", $P1112
.annotate 'line', 464
    .return ($P1112)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "new_type"  :subid("74_1300232199.995") :outer("71_1300232199.995")
    .param pmc param_1116
    .param pmc param_1119 :named("repr")
    .param pmc param_1117 :optional :named("name")
    .param int has_param_1117 :opt_flag
.annotate 'line', 471
    .lex "self", param_1116
    if has_param_1117, optparam_289
    new $P1118, "String"
    assign $P1118, "<anon>"
    set param_1117, $P1118
  optparam_289:
    .lex "$name", param_1117
    .lex "$repr", param_1119
.annotate 'line', 472
    new $P1120, "Undef"
    .lex "$metaclass", $P1120
    find_lex $P1121, "self"
    find_lex $P1122, "$name"
    $P1123 = $P1121."new"($P1122 :named("name"))
    store_lex "$metaclass", $P1123
.annotate 'line', 473
    find_lex $P1124, "$metaclass"
    find_lex $P1125, "$repr"
    set $S1126, $P1125
    repr_type_object_for $P1127, $P1124, $S1126
.annotate 'line', 471
    .return ($P1127)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_method"  :subid("75_1300232199.995") :outer("71_1300232199.995")
    .param pmc param_1129
    .param pmc param_1130
    .param pmc param_1131
    .param pmc param_1132
.annotate 'line', 476
    .lex "self", param_1129
    .lex "$obj", param_1130
    .lex "$name", param_1131
    .lex "$code_obj", param_1132
.annotate 'line', 477
    die "Native types may not have methods (must be boxed to call method)"
.annotate 'line', 476
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_multi_method"  :subid("76_1300232199.995") :outer("71_1300232199.995")
    .param pmc param_1134
    .param pmc param_1135
    .param pmc param_1136
    .param pmc param_1137
.annotate 'line', 480
    .lex "self", param_1134
    .lex "$obj", param_1135
    .lex "$name", param_1136
    .lex "$code_obj", param_1137
.annotate 'line', 481
    die "Native types may not have methods (must be boxed to call method)"
.annotate 'line', 480
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_attribute"  :subid("77_1300232199.995") :outer("71_1300232199.995")
    .param pmc param_1139
    .param pmc param_1140
    .param pmc param_1141
.annotate 'line', 484
    .lex "self", param_1139
    .lex "$obj", param_1140
    .lex "$meta_attr", param_1141
.annotate 'line', 485
    die "Native types may not have attributes"
.annotate 'line', 484
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "compose"  :subid("78_1300232199.995") :outer("71_1300232199.995")
    .param pmc param_1143
    .param pmc param_1144
.annotate 'line', 488
    .lex "self", param_1143
    .lex "$obj", param_1144
.annotate 'line', 489
    new $P1145, "Integer"
    assign $P1145, 1
    find_lex $P1146, "self"
    get_global $P1147, "$?CLASS"
    setattribute $P1146, $P1147, "$!composed", $P1145
.annotate 'line', 488
    .return ($P1145)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "name"  :subid("79_1300232199.995") :outer("71_1300232199.995")
    .param pmc param_1149
    .param pmc param_1150
.annotate 'line', 492
    .lex "self", param_1149
    .lex "$obj", param_1150
    find_lex $P1151, "self"
    get_global $P1152, "$?CLASS"
    getattribute $P1153, $P1151, $P1152, "$!name"
    unless_null $P1153, vivify_290
    new $P1153, "Undef"
  vivify_290:
    .return ($P1153)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block1182"  :subid("81_1300232199.995") :outer("10_1300232199.995")
.annotate 'line', 498
    .const 'Sub' $P1366 = "95_1300232199.995" 
    capture_lex $P1366
    .const 'Sub' $P1356 = "94_1300232199.995" 
    capture_lex $P1356
    .const 'Sub' $P1275 = "89_1300232199.995" 
    capture_lex $P1275
    .const 'Sub' $P1266 = "88_1300232199.995" 
    capture_lex $P1266
    .const 'Sub' $P1257 = "87_1300232199.995" 
    capture_lex $P1257
    .const 'Sub' $P1252 = "86_1300232199.995" 
    capture_lex $P1252
    .const 'Sub' $P1235 = "85_1300232199.995" 
    capture_lex $P1235
    .const 'Sub' $P1220 = "84_1300232199.995" 
    capture_lex $P1220
    .const 'Sub' $P1185 = "82_1300232199.995" 
    capture_lex $P1185
    get_global $P1184, "$?CLASS"
.annotate 'line', 558
    .const 'Sub' $P1185 = "82_1300232199.995" 
    newclosure $P1219, $P1185
    .lex "has_method", $P1219
.annotate 'line', 554
    find_lex $P1364, "has_method"
.annotate 'line', 498
    .return ($P1364)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "" :load :init :subid("post291") :outer("81_1300232199.995")
.annotate 'line', 498
    get_hll_global $P1183, ["NQPAttribute"], "_block1182" 
    .local pmc block
    set block, $P1183
    .const 'Sub' $P1366 = "95_1300232199.995" 
    capture_lex $P1366
    $P1366()
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block1365"  :anon :subid("95_1300232199.995") :outer("81_1300232199.995")
.annotate 'line', 498
    nqp_get_sc_object $P1367, "1300232196.839", 3
    .local pmc type_obj
    set type_obj, $P1367
    set_global "$?CLASS", type_obj
    get_how $P1368, type_obj
    get_hll_global $P1369, "KnowHOWAttribute"
    $P1370 = $P1369."new"("$!name" :named("name"))
    $P1368."add_attribute"(type_obj, $P1370)
    get_how $P1371, type_obj
    get_hll_global $P1372, "KnowHOWAttribute"
    $P1373 = $P1372."new"("$!type" :named("name"))
    $P1371."add_attribute"(type_obj, $P1373)
    get_how $P1374, type_obj
    get_hll_global $P1375, "KnowHOWAttribute"
    $P1376 = $P1375."new"("$!box_target" :named("name"))
    $P1374."add_attribute"(type_obj, $P1376)
    get_how $P1377, type_obj
    .const 'Sub' $P1378 = "84_1300232199.995" 
    $P1377."add_method"(type_obj, "new", $P1378)
    get_how $P1379, type_obj
    .const 'Sub' $P1380 = "85_1300232199.995" 
    $P1379."add_method"(type_obj, "BUILD", $P1380)
    get_how $P1381, type_obj
    .const 'Sub' $P1382 = "86_1300232199.995" 
    $P1381."add_method"(type_obj, "name", $P1382)
    get_how $P1383, type_obj
    .const 'Sub' $P1384 = "87_1300232199.995" 
    $P1383."add_method"(type_obj, "type", $P1384)
    get_how $P1385, type_obj
    .const 'Sub' $P1386 = "88_1300232199.995" 
    $P1385."add_method"(type_obj, "box_target", $P1386)
    get_how $P1387, type_obj
    .const 'Sub' $P1388 = "89_1300232199.995" 
    $P1387."add_method"(type_obj, "compose", $P1388)
    get_how $P1389, type_obj
    .const 'Sub' $P1390 = "94_1300232199.995" 
    $P1389."add_method"(type_obj, "has_mutator", $P1390)
    get_how $P1391, type_obj
    $P1392 = $P1391."compose"(type_obj)
    .return ($P1392)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "has_method"  :subid("82_1300232199.995") :outer("81_1300232199.995")
    .param pmc param_1188
    .param pmc param_1189
    .param pmc param_1190
.annotate 'line', 558
    .const 'Sub' $P1202 = "83_1300232199.995" 
    capture_lex $P1202
    new $P1187, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1187, control_1186
    push_eh $P1187
    .lex "$target", param_1188
    .lex "$name", param_1189
    .lex "$local", param_1190
.annotate 'line', 559
    $P1191 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P1191
    find_lex $P1192, "$target"
    get_how $P1193, $P1192
    find_lex $P1194, "$target"
    find_lex $P1195, "$local"
    $P1196 = $P1193."methods"($P1194, $P1195 :named("local"))
    store_lex "@methods", $P1196
.annotate 'line', 560
    find_lex $P1198, "@methods"
    defined $I1199, $P1198
    unless $I1199, for_undef_292
    iter $P1197, $P1198
    new $P1214, 'ExceptionHandler'
    set_label $P1214, loop1213_handler
    $P1214."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1214
  loop1213_test:
    unless $P1197, loop1213_done
    shift $P1200, $P1197
  loop1213_redo:
    .const 'Sub' $P1202 = "83_1300232199.995" 
    capture_lex $P1202
    $P1202($P1200)
  loop1213_next:
    goto loop1213_test
  loop1213_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1215, exception, 'type'
    eq $P1215, .CONTROL_LOOP_NEXT, loop1213_next
    eq $P1215, .CONTROL_LOOP_REDO, loop1213_redo
  loop1213_done:
    pop_eh 
  for_undef_292:
.annotate 'line', 563
    new $P1216, "Exception"
    set $P1216['type'], .CONTROL_RETURN
    new $P1217, "Integer"
    assign $P1217, 0
    setattribute $P1216, 'payload', $P1217
    throw $P1216
.annotate 'line', 558
    .return ()
  control_1186:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1218, exception, "payload"
    .return ($P1218)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "_block1201"  :anon :subid("83_1300232199.995") :outer("82_1300232199.995")
    .param pmc param_1203
.annotate 'line', 560
    .lex "$_", param_1203
.annotate 'line', 561
    find_lex $P1206, "$_"
    set $S1207, $P1206
    find_lex $P1208, "$name"
    set $S1209, $P1208
    iseq $I1210, $S1207, $S1209
    if $I1210, if_1205
    new $P1204, 'Integer'
    set $P1204, $I1210
    goto if_1205_end
  if_1205:
    new $P1211, "Exception"
    set $P1211['type'], .CONTROL_RETURN
    new $P1212, "Integer"
    assign $P1212, 1
    setattribute $P1211, 'payload', $P1212
    throw $P1211
  if_1205_end:
.annotate 'line', 560
    .return ($P1204)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "new"  :subid("84_1300232199.995") :outer("81_1300232199.995")
    .param pmc param_1221
    .param pmc param_1222 :named("name")
    .param pmc param_1223 :optional :named("type")
    .param int has_param_1223 :opt_flag
    .param pmc param_1225 :optional :named("box_target")
    .param int has_param_1225 :opt_flag
.annotate 'line', 503
    .lex "self", param_1221
    .lex "$name", param_1222
    if has_param_1223, optparam_293
    new $P1224, "Undef"
    set param_1223, $P1224
  optparam_293:
    .lex "$type", param_1223
    if has_param_1225, optparam_294
    new $P1226, "Undef"
    set param_1225, $P1226
  optparam_294:
    .lex "$box_target", param_1225
.annotate 'line', 504
    new $P1227, "Undef"
    .lex "$attr", $P1227
    find_lex $P1228, "self"
    repr_instance_of $P1229, $P1228
    store_lex "$attr", $P1229
.annotate 'line', 505
    find_lex $P1230, "$attr"
    find_lex $P1231, "$name"
    find_lex $P1232, "$type"
    find_lex $P1233, "$box_target"
    $P1230."BUILD"($P1231 :named("name"), $P1232 :named("type"), $P1233 :named("box_target"))
    find_lex $P1234, "$attr"
.annotate 'line', 503
    .return ($P1234)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "BUILD"  :subid("85_1300232199.995") :outer("81_1300232199.995")
    .param pmc param_1236
    .param pmc param_1237 :optional :named("name")
    .param int has_param_1237 :opt_flag
    .param pmc param_1239 :optional :named("type")
    .param int has_param_1239 :opt_flag
    .param pmc param_1241 :optional :named("box_target")
    .param int has_param_1241 :opt_flag
.annotate 'line', 509
    .lex "self", param_1236
    if has_param_1237, optparam_295
    new $P1238, "Undef"
    set param_1237, $P1238
  optparam_295:
    .lex "$name", param_1237
    if has_param_1239, optparam_296
    new $P1240, "Undef"
    set param_1239, $P1240
  optparam_296:
    .lex "$type", param_1239
    if has_param_1241, optparam_297
    new $P1242, "Undef"
    set param_1241, $P1242
  optparam_297:
    .lex "$box_target", param_1241
.annotate 'line', 510
    find_lex $P1243, "$name"
    find_lex $P1244, "self"
    get_global $P1245, "$?CLASS"
    setattribute $P1244, $P1245, "$!name", $P1243
.annotate 'line', 511
    find_lex $P1246, "$type"
    find_lex $P1247, "self"
    get_global $P1248, "$?CLASS"
    setattribute $P1247, $P1248, "$!type", $P1246
.annotate 'line', 512
    find_lex $P1249, "$box_target"
    find_lex $P1250, "self"
    get_global $P1251, "$?CLASS"
    setattribute $P1250, $P1251, "$!box_target", $P1249
.annotate 'line', 509
    .return ($P1249)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "name"  :subid("86_1300232199.995") :outer("81_1300232199.995")
    .param pmc param_1253
.annotate 'line', 515
    .lex "self", param_1253
    find_lex $P1254, "self"
    get_global $P1255, "$?CLASS"
    getattribute $P1256, $P1254, $P1255, "$!name"
    unless_null $P1256, vivify_298
    new $P1256, "Undef"
  vivify_298:
    .return ($P1256)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "type"  :subid("87_1300232199.995") :outer("81_1300232199.995")
    .param pmc param_1258
.annotate 'line', 519
    .lex "self", param_1258
.annotate 'line', 520
    find_lex $P1260, "self"
    get_global $P1261, "$?CLASS"
    getattribute $P1262, $P1260, $P1261, "$!type"
    unless_null $P1262, vivify_299
    new $P1262, "Undef"
  vivify_299:
    set $P1259, $P1262
    defined $I1264, $P1259
    if $I1264, default_1263
    null $P1265
    set $P1259, $P1265
  default_1263:
.annotate 'line', 519
    .return ($P1259)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "box_target"  :subid("88_1300232199.995") :outer("81_1300232199.995")
    .param pmc param_1267
.annotate 'line', 523
    .lex "self", param_1267
.annotate 'line', 524
    find_lex $P1270, "self"
    get_global $P1271, "$?CLASS"
    getattribute $P1272, $P1270, $P1271, "$!box_target"
    unless_null $P1272, vivify_300
    new $P1272, "Undef"
  vivify_300:
    if $P1272, if_1269
    new $P1274, "Integer"
    assign $P1274, 0
    set $P1268, $P1274
    goto if_1269_end
  if_1269:
    new $P1273, "Integer"
    assign $P1273, 1
    set $P1268, $P1273
  if_1269_end:
.annotate 'line', 523
    .return ($P1268)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "compose"  :subid("89_1300232199.995") :outer("81_1300232199.995")
    .param pmc param_1276
    .param pmc param_1277
.annotate 'line', 527
    .const 'Sub' $P1329 = "92_1300232199.995" 
    capture_lex $P1329
    .const 'Sub' $P1289 = "90_1300232199.995" 
    capture_lex $P1289
    .lex "self", param_1276
    .lex "$obj", param_1277
.annotate 'line', 528
    new $P1278, "Undef"
    .lex "$long_name", $P1278
    find_lex $P1279, "self"
    get_global $P1280, "$?CLASS"
    getattribute $P1281, $P1279, $P1280, "$!name"
    unless_null $P1281, vivify_301
    new $P1281, "Undef"
  vivify_301:
    set $S1282, $P1281
    new $P1283, 'String'
    set $P1283, $S1282
    store_lex "$long_name", $P1283
.annotate 'line', 529
    find_lex $P1286, "self"
    $P1287 = $P1286."has_mutator"()
    if $P1287, if_1285
.annotate 'line', 541
    .const 'Sub' $P1329 = "92_1300232199.995" 
    capture_lex $P1329
    $P1355 = $P1329()
    set $P1284, $P1355
.annotate 'line', 529
    goto if_1285_end
  if_1285:
    .const 'Sub' $P1289 = "90_1300232199.995" 
    capture_lex $P1289
    $P1327 = $P1289()
    set $P1284, $P1327
  if_1285_end:
.annotate 'line', 527
    .return ($P1284)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block1328"  :anon :subid("92_1300232199.995") :outer("89_1300232199.995")
.annotate 'line', 541
    .const 'Sub' $P1345 = "93_1300232199.995" 
    capture_lex $P1345
.annotate 'line', 542
    new $P1330, "Undef"
    .lex "$method", $P1330
    find_lex $P1331, "$long_name"
    set $S1332, $P1331
    substr $S1333, $S1332, 2
    new $P1334, 'String'
    set $P1334, $S1333
    store_lex "$method", $P1334
.annotate 'line', 543
    find_lex $P1337, "$obj"
    find_lex $P1338, "$method"
    $P1339 = "has_method"($P1337, $P1338, 0)
    unless $P1339, unless_1336
    set $P1335, $P1339
    goto unless_1336_end
  unless_1336:
.annotate 'line', 544
    find_lex $P1340, "$obj"
    get_how $P1341, $P1340
    find_lex $P1342, "$obj"
    find_lex $P1343, "$method"
.annotate 'line', 545
    .const 'Sub' $P1345 = "93_1300232199.995" 
    newclosure $P1353, $P1345
    $P1354 = $P1341."add_method"($P1342, $P1343, $P1353)
.annotate 'line', 543
    set $P1335, $P1354
  unless_1336_end:
.annotate 'line', 541
    .return ($P1335)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block1344"  :anon :subid("93_1300232199.995") :outer("92_1300232199.995")
    .param pmc param_1346
.annotate 'line', 545
    .lex "self", param_1346
.annotate 'line', 546
    find_lex $P1347, "self"
    find_lex $P1348, "$obj"
    get_what $P1349, $P1348
    find_lex $P1350, "$long_name"
    set $S1351, $P1350
    getattribute $P1352, $P1347, $P1349, $S1351
.annotate 'line', 545
    .return ($P1352)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block1288"  :anon :subid("90_1300232199.995") :outer("89_1300232199.995")
.annotate 'line', 529
    .const 'Sub' $P1306 = "91_1300232199.995" 
    capture_lex $P1306
.annotate 'line', 530
    new $P1290, "Undef"
    .lex "$method", $P1290
    find_lex $P1291, "$long_name"
    set $S1292, $P1291
    substr $S1293, $S1292, 1
    new $P1294, 'String'
    set $P1294, $S1293
    store_lex "$method", $P1294
.annotate 'line', 531
    find_lex $P1297, "$obj"
    find_lex $P1298, "$method"
    $P1299 = "has_method"($P1297, $P1298, 0)
    unless $P1299, unless_1296
    set $P1295, $P1299
    goto unless_1296_end
  unless_1296:
.annotate 'line', 532
    find_lex $P1300, "$obj"
    get_how $P1301, $P1300
    find_lex $P1302, "$obj"
    get_what $P1303, $P1302
    find_lex $P1304, "$method"
    .const 'Sub' $P1306 = "91_1300232199.995" 
    newclosure $P1325, $P1306
    $P1326 = $P1301."add_method"($P1303, $P1304, $P1325)
.annotate 'line', 531
    set $P1295, $P1326
  unless_1296_end:
.annotate 'line', 529
    .return ($P1295)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block1305"  :anon :subid("91_1300232199.995") :outer("90_1300232199.995")
    .param pmc param_1307
    .param pmc param_1308 :optional
    .param int has_param_1308 :opt_flag
.annotate 'line', 532
    .lex "self", param_1307
    if has_param_1308, optparam_302
    new $P1309, "Undef"
    set param_1308, $P1309
  optparam_302:
    .lex "$value", param_1308
.annotate 'line', 534
    find_lex $P1311, "$value"
    defined $I1312, $P1311
    unless $I1312, if_1310_end
.annotate 'line', 533
    find_lex $P1313, "self"
    find_lex $P1314, "$obj"
    get_what $P1315, $P1314
    find_lex $P1316, "$long_name"
    set $S1317, $P1316
    find_lex $P1318, "$value"
    setattribute $P1313, $P1315, $S1317, $P1318
  if_1310_end:
.annotate 'line', 536
    find_lex $P1319, "self"
    find_lex $P1320, "$obj"
    get_what $P1321, $P1320
    find_lex $P1322, "$long_name"
    set $S1323, $P1322
    getattribute $P1324, $P1319, $P1321, $S1323
.annotate 'line', 532
    .return ($P1324)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "has_mutator"  :subid("94_1300232199.995") :outer("81_1300232199.995")
    .param pmc param_1357
.annotate 'line', 554
    .lex "self", param_1357
.annotate 'line', 555
    find_lex $P1358, "self"
    get_global $P1359, "$?CLASS"
    getattribute $P1360, $P1358, $P1359, "$!name"
    unless_null $P1360, vivify_303
    new $P1360, "Undef"
  vivify_303:
    set $S1361, $P1360
    substr $S1362, $S1361, 1, 1
    isne $I1363, $S1362, "!"
.annotate 'line', 554
    .return ($I1363)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1393"  :subid("96_1300232199.995") :outer("10_1300232199.995")
.annotate 'line', 571
    .const 'Sub' $P1649 = "117_1300232199.995" 
    capture_lex $P1649
    .const 'Sub' $P1641 = "116_1300232199.995" 
    capture_lex $P1641
    .const 'Sub' $P1635 = "115_1300232199.995" 
    capture_lex $P1635
    .const 'Sub' $P1613 = "113_1300232199.995" 
    capture_lex $P1613
    .const 'Sub' $P1607 = "112_1300232199.995" 
    capture_lex $P1607
    .const 'Sub' $P1601 = "111_1300232199.995" 
    capture_lex $P1601
    .const 'Sub' $P1595 = "110_1300232199.995" 
    capture_lex $P1595
    .const 'Sub' $P1573 = "108_1300232199.995" 
    capture_lex $P1573
    .const 'Sub' $P1524 = "106_1300232199.995" 
    capture_lex $P1524
    .const 'Sub' $P1511 = "105_1300232199.995" 
    capture_lex $P1511
    .const 'Sub' $P1498 = "104_1300232199.995" 
    capture_lex $P1498
    .const 'Sub' $P1494 = "103_1300232199.995" 
    capture_lex $P1494
    .const 'Sub' $P1473 = "102_1300232199.995" 
    capture_lex $P1473
    .const 'Sub' $P1452 = "101_1300232199.995" 
    capture_lex $P1452
    .const 'Sub' $P1433 = "100_1300232199.995" 
    capture_lex $P1433
    .const 'Sub' $P1417 = "99_1300232199.995" 
    capture_lex $P1417
    .const 'Sub' $P1407 = "98_1300232199.995" 
    capture_lex $P1407
    .const 'Sub' $P1396 = "97_1300232199.995" 
    capture_lex $P1396
    get_global $P1395, "$?CLASS"
.annotate 'line', 710
    .const 'Sub' $P1641 = "116_1300232199.995" 
    newclosure $P1647, $P1641
.annotate 'line', 571
    .return ($P1647)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "" :load :init :subid("post304") :outer("96_1300232199.995")
.annotate 'line', 571
    get_hll_global $P1394, ["NQPConcreteRoleHOW"], "_block1393" 
    .local pmc block
    set block, $P1394
    .const 'Sub' $P1649 = "117_1300232199.995" 
    capture_lex $P1649
    $P1649()
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1648"  :anon :subid("117_1300232199.995") :outer("96_1300232199.995")
.annotate 'line', 571
    nqp_get_sc_object $P1650, "1300232196.839", 4
    .local pmc type_obj
    set type_obj, $P1650
    set_global "$?CLASS", type_obj
    get_how $P1651, type_obj
    get_hll_global $P1652, "KnowHOWAttribute"
    $P1653 = $P1652."new"("$!name" :named("name"))
    $P1651."add_attribute"(type_obj, $P1653)
    get_how $P1654, type_obj
    get_hll_global $P1655, "KnowHOWAttribute"
    $P1656 = $P1655."new"("$!instance_of" :named("name"))
    $P1654."add_attribute"(type_obj, $P1656)
    get_how $P1657, type_obj
    get_hll_global $P1658, "KnowHOWAttribute"
    $P1659 = $P1658."new"("%!attributes" :named("name"))
    $P1657."add_attribute"(type_obj, $P1659)
    get_how $P1660, type_obj
    get_hll_global $P1661, "KnowHOWAttribute"
    $P1662 = $P1661."new"("%!methods" :named("name"))
    $P1660."add_attribute"(type_obj, $P1662)
    get_how $P1663, type_obj
    get_hll_global $P1664, "KnowHOWAttribute"
    $P1665 = $P1664."new"("@!multi_methods_to_incorporate" :named("name"))
    $P1663."add_attribute"(type_obj, $P1665)
    get_how $P1666, type_obj
    get_hll_global $P1667, "KnowHOWAttribute"
    $P1668 = $P1667."new"("@!collisions" :named("name"))
    $P1666."add_attribute"(type_obj, $P1668)
    get_how $P1669, type_obj
    get_hll_global $P1670, "KnowHOWAttribute"
    $P1671 = $P1670."new"("@!roles" :named("name"))
    $P1669."add_attribute"(type_obj, $P1671)
    get_how $P1672, type_obj
    get_hll_global $P1673, "KnowHOWAttribute"
    $P1674 = $P1673."new"("@!done" :named("name"))
    $P1672."add_attribute"(type_obj, $P1674)
    get_how $P1675, type_obj
    get_hll_global $P1676, "KnowHOWAttribute"
    $P1677 = $P1676."new"("$!composed" :named("name"))
    $P1675."add_attribute"(type_obj, $P1677)
    get_how $P1678, type_obj
    .const 'Sub' $P1679 = "97_1300232199.995" 
    $P1678."add_method"(type_obj, "new", $P1679)
    get_how $P1680, type_obj
    .const 'Sub' $P1681 = "98_1300232199.995" 
    $P1680."add_method"(type_obj, "BUILD", $P1681)
    get_how $P1682, type_obj
    .const 'Sub' $P1683 = "99_1300232199.995" 
    $P1682."add_method"(type_obj, "new_type", $P1683)
    get_how $P1684, type_obj
    .const 'Sub' $P1685 = "100_1300232199.995" 
    $P1684."add_method"(type_obj, "add_method", $P1685)
    get_how $P1686, type_obj
    .const 'Sub' $P1687 = "101_1300232199.995" 
    $P1686."add_method"(type_obj, "add_multi_method", $P1687)
    get_how $P1688, type_obj
    .const 'Sub' $P1689 = "102_1300232199.995" 
    $P1688."add_method"(type_obj, "add_attribute", $P1689)
    get_how $P1690, type_obj
    .const 'Sub' $P1691 = "103_1300232199.995" 
    $P1690."add_method"(type_obj, "add_parent", $P1691)
    get_how $P1692, type_obj
    .const 'Sub' $P1693 = "104_1300232199.995" 
    $P1692."add_method"(type_obj, "add_role", $P1693)
    get_how $P1694, type_obj
    .const 'Sub' $P1695 = "105_1300232199.995" 
    $P1694."add_method"(type_obj, "add_collision", $P1695)
    get_how $P1696, type_obj
    .const 'Sub' $P1697 = "106_1300232199.995" 
    $P1696."add_method"(type_obj, "compose", $P1697)
    get_how $P1698, type_obj
    .const 'Sub' $P1699 = "108_1300232199.995" 
    $P1698."add_method"(type_obj, "methods", $P1699)
    get_how $P1700, type_obj
    .const 'Sub' $P1701 = "110_1300232199.995" 
    $P1700."add_method"(type_obj, "method_table", $P1701)
    get_how $P1702, type_obj
    .const 'Sub' $P1703 = "111_1300232199.995" 
    $P1702."add_method"(type_obj, "collisions", $P1703)
    get_how $P1704, type_obj
    .const 'Sub' $P1705 = "112_1300232199.995" 
    $P1704."add_method"(type_obj, "name", $P1705)
    get_how $P1706, type_obj
    .const 'Sub' $P1707 = "113_1300232199.995" 
    $P1706."add_method"(type_obj, "attributes", $P1707)
    get_how $P1708, type_obj
    .const 'Sub' $P1709 = "115_1300232199.995" 
    $P1708."add_method"(type_obj, "roles", $P1709)
    get_how $P1710, type_obj
    .const 'Sub' $P1711 = "116_1300232199.995" 
    $P1710."add_method"(type_obj, "instance_of", $P1711)
    get_how $P1712, type_obj
    $P1713 = $P1712."compose"(type_obj)
    .return ($P1713)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "new"  :subid("97_1300232199.995") :outer("96_1300232199.995")
    .param pmc param_1397
    .param pmc param_1398 :named("name")
    .param pmc param_1399 :named("instance_of")
.annotate 'line', 603
    .lex "self", param_1397
    .lex "$name", param_1398
    .lex "$instance_of", param_1399
.annotate 'line', 604
    new $P1400, "Undef"
    .lex "$obj", $P1400
    find_lex $P1401, "self"
    repr_instance_of $P1402, $P1401
    store_lex "$obj", $P1402
.annotate 'line', 605
    find_lex $P1403, "$obj"
    find_lex $P1404, "$name"
    find_lex $P1405, "$instance_of"
    $P1403."BUILD"($P1404 :named("name"), $P1405 :named("instance_of"))
    find_lex $P1406, "$obj"
.annotate 'line', 603
    .return ($P1406)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "BUILD"  :subid("98_1300232199.995") :outer("96_1300232199.995")
    .param pmc param_1408
    .param pmc param_1409 :named("name")
    .param pmc param_1410 :named("instance_of")
.annotate 'line', 609
    .lex "self", param_1408
    .lex "$name", param_1409
    .lex "$instance_of", param_1410
.annotate 'line', 610
    find_lex $P1411, "$name"
    find_lex $P1412, "self"
    get_global $P1413, "$?CLASS"
    setattribute $P1412, $P1413, "$!name", $P1411
.annotate 'line', 611
    find_lex $P1414, "$instance_of"
    find_lex $P1415, "self"
    get_global $P1416, "$?CLASS"
    setattribute $P1415, $P1416, "$!instance_of", $P1414
.annotate 'line', 609
    .return ($P1414)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "new_type"  :subid("99_1300232199.995") :outer("96_1300232199.995")
    .param pmc param_1418
    .param pmc param_1423 :named("instance_of")
    .param pmc param_1419 :optional :named("name")
    .param int has_param_1419 :opt_flag
    .param pmc param_1421 :optional :named("repr")
    .param int has_param_1421 :opt_flag
.annotate 'line', 616
    .lex "self", param_1418
    if has_param_1419, optparam_305
    new $P1420, "String"
    assign $P1420, "<anon>"
    set param_1419, $P1420
  optparam_305:
    .lex "$name", param_1419
    if has_param_1421, optparam_306
    new $P1422, "String"
    assign $P1422, "P6opaque"
    set param_1421, $P1422
  optparam_306:
    .lex "$repr", param_1421
    .lex "$instance_of", param_1423
.annotate 'line', 617
    new $P1424, "Undef"
    .lex "$metarole", $P1424
    find_lex $P1425, "self"
    find_lex $P1426, "$name"
    find_lex $P1427, "$instance_of"
    $P1428 = $P1425."new"($P1426 :named("name"), $P1427 :named("instance_of"))
    store_lex "$metarole", $P1428
.annotate 'line', 618
    find_lex $P1429, "$metarole"
    find_lex $P1430, "$repr"
    set $S1431, $P1430
    repr_type_object_for $P1432, $P1429, $S1431
.annotate 'line', 616
    .return ($P1432)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_method"  :subid("100_1300232199.995") :outer("96_1300232199.995")
    .param pmc param_1434
    .param pmc param_1435
    .param pmc param_1436
    .param pmc param_1437
.annotate 'line', 621
    .lex "self", param_1434
    .lex "$obj", param_1435
    .lex "$name", param_1436
    .lex "$code_obj", param_1437
.annotate 'line', 622
    find_lex $P1439, "$name"
    find_lex $P1440, "self"
    get_global $P1441, "$?CLASS"
    getattribute $P1442, $P1440, $P1441, "%!methods"
    unless_null $P1442, vivify_307
    $P1442 = root_new ['parrot';'Hash']
  vivify_307:
    set $P1443, $P1442[$P1439]
    unless_null $P1443, vivify_308
    new $P1443, "Undef"
  vivify_308:
    unless $P1443, if_1438_end
.annotate 'line', 623
    new $P1444, "String"
    assign $P1444, "This role already has a method named "
    find_lex $P1445, "$name"
    concat $P1446, $P1444, $P1445
    die $P1446
  if_1438_end:
.annotate 'line', 625
    find_lex $P1447, "$code_obj"
    find_lex $P1448, "$name"
    find_lex $P1449, "self"
    get_global $P1450, "$?CLASS"
    getattribute $P1451, $P1449, $P1450, "%!methods"
    unless_null $P1451, vivify_309
    $P1451 = root_new ['parrot';'Hash']
    setattribute $P1449, $P1450, "%!methods", $P1451
  vivify_309:
    set $P1451[$P1448], $P1447
.annotate 'line', 621
    .return ($P1447)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_multi_method"  :subid("101_1300232199.995") :outer("96_1300232199.995")
    .param pmc param_1453
    .param pmc param_1454
    .param pmc param_1455
    .param pmc param_1456
.annotate 'line', 628
    .lex "self", param_1453
    .lex "$obj", param_1454
    .lex "$name", param_1455
    .lex "$code_obj", param_1456
.annotate 'line', 629
    $P1457 = root_new ['parrot';'Hash']
    .lex "%todo", $P1457
.annotate 'line', 628
    find_lex $P1458, "%todo"
.annotate 'line', 630
    find_lex $P1459, "$name"
    find_lex $P1460, "%todo"
    unless_null $P1460, vivify_310
    $P1460 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1460
  vivify_310:
    set $P1460["name"], $P1459
.annotate 'line', 631
    find_lex $P1461, "$code_obj"
    find_lex $P1462, "%todo"
    unless_null $P1462, vivify_311
    $P1462 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1462
  vivify_311:
    set $P1462["code"], $P1461
.annotate 'line', 632
    find_lex $P1463, "%todo"
    find_lex $P1464, "self"
    get_global $P1465, "$?CLASS"
    getattribute $P1466, $P1464, $P1465, "@!multi_methods_to_incorporate"
    unless_null $P1466, vivify_312
    $P1466 = root_new ['parrot';'ResizablePMCArray']
  vivify_312:
    set $N1467, $P1466
    set $I1468, $N1467
    find_lex $P1469, "self"
    get_global $P1470, "$?CLASS"
    getattribute $P1471, $P1469, $P1470, "@!multi_methods_to_incorporate"
    unless_null $P1471, vivify_313
    $P1471 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1469, $P1470, "@!multi_methods_to_incorporate", $P1471
  vivify_313:
    set $P1471[$I1468], $P1463
    find_lex $P1472, "$code_obj"
.annotate 'line', 628
    .return ($P1472)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_attribute"  :subid("102_1300232199.995") :outer("96_1300232199.995")
    .param pmc param_1474
    .param pmc param_1475
    .param pmc param_1476
.annotate 'line', 636
    .lex "self", param_1474
    .lex "$obj", param_1475
    .lex "$meta_attr", param_1476
.annotate 'line', 637
    new $P1477, "Undef"
    .lex "$name", $P1477
    find_lex $P1478, "$meta_attr"
    $P1479 = $P1478."name"()
    store_lex "$name", $P1479
.annotate 'line', 638
    find_lex $P1481, "$name"
    find_lex $P1482, "self"
    get_global $P1483, "$?CLASS"
    getattribute $P1484, $P1482, $P1483, "%!attributes"
    unless_null $P1484, vivify_314
    $P1484 = root_new ['parrot';'Hash']
  vivify_314:
    set $P1485, $P1484[$P1481]
    unless_null $P1485, vivify_315
    new $P1485, "Undef"
  vivify_315:
    unless $P1485, if_1480_end
.annotate 'line', 639
    new $P1486, "String"
    assign $P1486, "This role already has an attribute named "
    find_lex $P1487, "$name"
    concat $P1488, $P1486, $P1487
    die $P1488
  if_1480_end:
.annotate 'line', 641
    find_lex $P1489, "$meta_attr"
    find_lex $P1490, "$name"
    find_lex $P1491, "self"
    get_global $P1492, "$?CLASS"
    getattribute $P1493, $P1491, $P1492, "%!attributes"
    unless_null $P1493, vivify_316
    $P1493 = root_new ['parrot';'Hash']
    setattribute $P1491, $P1492, "%!attributes", $P1493
  vivify_316:
    set $P1493[$P1490], $P1489
.annotate 'line', 636
    .return ($P1489)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_parent"  :subid("103_1300232199.995") :outer("96_1300232199.995")
    .param pmc param_1495
    .param pmc param_1496
    .param pmc param_1497
.annotate 'line', 644
    .lex "self", param_1495
    .lex "$obj", param_1496
    .lex "$parent", param_1497
.annotate 'line', 645
    die "A role cannot inherit from a class in NQP"
.annotate 'line', 644
    .return ()
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_role"  :subid("104_1300232199.995") :outer("96_1300232199.995")
    .param pmc param_1499
    .param pmc param_1500
    .param pmc param_1501
.annotate 'line', 648
    .lex "self", param_1499
    .lex "$obj", param_1500
    .lex "$role", param_1501
.annotate 'line', 649
    find_lex $P1502, "$role"
    find_lex $P1503, "self"
    get_global $P1504, "$?CLASS"
    getattribute $P1505, $P1503, $P1504, "@!roles"
    unless_null $P1505, vivify_317
    $P1505 = root_new ['parrot';'ResizablePMCArray']
  vivify_317:
    set $N1506, $P1505
    set $I1507, $N1506
    find_lex $P1508, "self"
    get_global $P1509, "$?CLASS"
    getattribute $P1510, $P1508, $P1509, "@!roles"
    unless_null $P1510, vivify_318
    $P1510 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1508, $P1509, "@!roles", $P1510
  vivify_318:
    set $P1510[$I1507], $P1502
.annotate 'line', 648
    .return ($P1502)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_collision"  :subid("105_1300232199.995") :outer("96_1300232199.995")
    .param pmc param_1512
    .param pmc param_1513
    .param pmc param_1514
.annotate 'line', 652
    .lex "self", param_1512
    .lex "$obj", param_1513
    .lex "$colliding_name", param_1514
.annotate 'line', 653
    find_lex $P1515, "$colliding_name"
    find_lex $P1516, "self"
    get_global $P1517, "$?CLASS"
    getattribute $P1518, $P1516, $P1517, "@!collisions"
    unless_null $P1518, vivify_319
    $P1518 = root_new ['parrot';'ResizablePMCArray']
  vivify_319:
    set $N1519, $P1518
    set $I1520, $N1519
    find_lex $P1521, "self"
    get_global $P1522, "$?CLASS"
    getattribute $P1523, $P1521, $P1522, "@!collisions"
    unless_null $P1523, vivify_320
    $P1523 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1521, $P1522, "@!collisions", $P1523
  vivify_320:
    set $P1523[$I1520], $P1515
.annotate 'line', 652
    .return ($P1515)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "compose"  :subid("106_1300232199.995") :outer("96_1300232199.995")
    .param pmc param_1525
    .param pmc param_1526
.annotate 'line', 657
    .const 'Sub' $P1538 = "107_1300232199.995" 
    capture_lex $P1538
    .lex "self", param_1525
    .lex "$obj", param_1526
.annotate 'line', 660
    find_lex $P1528, "self"
    get_global $P1529, "$?CLASS"
    getattribute $P1530, $P1528, $P1529, "@!roles"
    unless_null $P1530, vivify_321
    $P1530 = root_new ['parrot';'ResizablePMCArray']
  vivify_321:
    unless $P1530, if_1527_end
.annotate 'line', 661
    find_lex $P1532, "self"
    get_global $P1533, "$?CLASS"
    getattribute $P1534, $P1532, $P1533, "@!roles"
    unless_null $P1534, vivify_322
    $P1534 = root_new ['parrot';'ResizablePMCArray']
  vivify_322:
    defined $I1535, $P1534
    unless $I1535, for_undef_323
    iter $P1531, $P1534
    new $P1562, 'ExceptionHandler'
    set_label $P1562, loop1561_handler
    $P1562."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1562
  loop1561_test:
    unless $P1531, loop1561_done
    shift $P1536, $P1531
  loop1561_redo:
    .const 'Sub' $P1538 = "107_1300232199.995" 
    capture_lex $P1538
    $P1538($P1536)
  loop1561_next:
    goto loop1561_test
  loop1561_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1563, exception, 'type'
    eq $P1563, .CONTROL_LOOP_NEXT, loop1561_next
    eq $P1563, .CONTROL_LOOP_REDO, loop1561_redo
  loop1561_done:
    pop_eh 
  for_undef_323:
.annotate 'line', 665
    get_hll_global $P1564, "RoleToRoleApplier"
    find_lex $P1565, "$obj"
    find_lex $P1566, "self"
    get_global $P1567, "$?CLASS"
    getattribute $P1568, $P1566, $P1567, "@!roles"
    unless_null $P1568, vivify_328
    $P1568 = root_new ['parrot';'ResizablePMCArray']
  vivify_328:
    $P1564."apply"($P1565, $P1568)
  if_1527_end:
.annotate 'line', 669
    new $P1569, "Integer"
    assign $P1569, 1
    find_lex $P1570, "self"
    get_global $P1571, "$?CLASS"
    setattribute $P1570, $P1571, "$!composed", $P1569
    find_lex $P1572, "$obj"
.annotate 'line', 657
    .return ($P1572)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1537"  :anon :subid("107_1300232199.995") :outer("106_1300232199.995")
    .param pmc param_1539
.annotate 'line', 661
    .lex "$_", param_1539
.annotate 'line', 662
    find_lex $P1540, "$_"
    find_lex $P1541, "self"
    get_global $P1542, "$?CLASS"
    getattribute $P1543, $P1541, $P1542, "@!done"
    unless_null $P1543, vivify_324
    $P1543 = root_new ['parrot';'ResizablePMCArray']
  vivify_324:
    set $N1544, $P1543
    set $I1545, $N1544
    find_lex $P1546, "self"
    get_global $P1547, "$?CLASS"
    getattribute $P1548, $P1546, $P1547, "@!done"
    unless_null $P1548, vivify_325
    $P1548 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1546, $P1547, "@!done", $P1548
  vivify_325:
    set $P1548[$I1545], $P1540
.annotate 'line', 663
    find_lex $P1549, "$_"
    get_how $P1550, $P1549
    find_lex $P1551, "$_"
    $P1552 = $P1550."instance_of"($P1551)
    find_lex $P1553, "self"
    get_global $P1554, "$?CLASS"
    getattribute $P1555, $P1553, $P1554, "@!done"
    unless_null $P1555, vivify_326
    $P1555 = root_new ['parrot';'ResizablePMCArray']
  vivify_326:
    set $N1556, $P1555
    set $I1557, $N1556
    find_lex $P1558, "self"
    get_global $P1559, "$?CLASS"
    getattribute $P1560, $P1558, $P1559, "@!done"
    unless_null $P1560, vivify_327
    $P1560 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1558, $P1559, "@!done", $P1560
  vivify_327:
    set $P1560[$I1557], $P1552
.annotate 'line', 661
    .return ($P1552)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "methods"  :subid("108_1300232199.995") :outer("96_1300232199.995")
    .param pmc param_1574
    .param pmc param_1575
.annotate 'line', 678
    .const 'Sub' $P1585 = "109_1300232199.995" 
    capture_lex $P1585
    .lex "self", param_1574
    .lex "$obj", param_1575
.annotate 'line', 679
    $P1576 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meths", $P1576
.annotate 'line', 678
    find_lex $P1577, "@meths"
.annotate 'line', 680
    find_lex $P1579, "self"
    get_global $P1580, "$?CLASS"
    getattribute $P1581, $P1579, $P1580, "%!methods"
    unless_null $P1581, vivify_329
    $P1581 = root_new ['parrot';'Hash']
  vivify_329:
    defined $I1582, $P1581
    unless $I1582, for_undef_330
    iter $P1578, $P1581
    new $P1592, 'ExceptionHandler'
    set_label $P1592, loop1591_handler
    $P1592."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1592
  loop1591_test:
    unless $P1578, loop1591_done
    shift $P1583, $P1578
  loop1591_redo:
    .const 'Sub' $P1585 = "109_1300232199.995" 
    capture_lex $P1585
    $P1585($P1583)
  loop1591_next:
    goto loop1591_test
  loop1591_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1593, exception, 'type'
    eq $P1593, .CONTROL_LOOP_NEXT, loop1591_next
    eq $P1593, .CONTROL_LOOP_REDO, loop1591_redo
  loop1591_done:
    pop_eh 
  for_undef_330:
    find_lex $P1594, "@meths"
.annotate 'line', 678
    .return ($P1594)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1584"  :anon :subid("109_1300232199.995") :outer("108_1300232199.995")
    .param pmc param_1586
.annotate 'line', 680
    .lex "$_", param_1586
.annotate 'line', 681
    find_lex $P1587, "@meths"
    find_lex $P1588, "$_"
    $P1589 = $P1588."value"()
    $P1590 = $P1587."push"($P1589)
.annotate 'line', 680
    .return ($P1590)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "method_table"  :subid("110_1300232199.995") :outer("96_1300232199.995")
    .param pmc param_1596
    .param pmc param_1597
.annotate 'line', 686
    .lex "self", param_1596
    .lex "$obj", param_1597
    find_lex $P1598, "self"
    get_global $P1599, "$?CLASS"
    getattribute $P1600, $P1598, $P1599, "%!methods"
    unless_null $P1600, vivify_331
    $P1600 = root_new ['parrot';'Hash']
  vivify_331:
    .return ($P1600)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "collisions"  :subid("111_1300232199.995") :outer("96_1300232199.995")
    .param pmc param_1602
    .param pmc param_1603
.annotate 'line', 690
    .lex "self", param_1602
    .lex "$obj", param_1603
    find_lex $P1604, "self"
    get_global $P1605, "$?CLASS"
    getattribute $P1606, $P1604, $P1605, "@!collisions"
    unless_null $P1606, vivify_332
    $P1606 = root_new ['parrot';'ResizablePMCArray']
  vivify_332:
    .return ($P1606)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "name"  :subid("112_1300232199.995") :outer("96_1300232199.995")
    .param pmc param_1608
    .param pmc param_1609
.annotate 'line', 694
    .lex "self", param_1608
    .lex "$obj", param_1609
    find_lex $P1610, "self"
    get_global $P1611, "$?CLASS"
    getattribute $P1612, $P1610, $P1611, "$!name"
    unless_null $P1612, vivify_333
    new $P1612, "Undef"
  vivify_333:
    .return ($P1612)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "attributes"  :subid("113_1300232199.995") :outer("96_1300232199.995")
    .param pmc param_1614
    .param pmc param_1615
.annotate 'line', 698
    .const 'Sub' $P1625 = "114_1300232199.995" 
    capture_lex $P1625
    .lex "self", param_1614
    .lex "$obj", param_1615
.annotate 'line', 699
    $P1616 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attrs", $P1616
.annotate 'line', 698
    find_lex $P1617, "@attrs"
.annotate 'line', 700
    find_lex $P1619, "self"
    get_global $P1620, "$?CLASS"
    getattribute $P1621, $P1619, $P1620, "%!attributes"
    unless_null $P1621, vivify_334
    $P1621 = root_new ['parrot';'Hash']
  vivify_334:
    defined $I1622, $P1621
    unless $I1622, for_undef_335
    iter $P1618, $P1621
    new $P1632, 'ExceptionHandler'
    set_label $P1632, loop1631_handler
    $P1632."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1632
  loop1631_test:
    unless $P1618, loop1631_done
    shift $P1623, $P1618
  loop1631_redo:
    .const 'Sub' $P1625 = "114_1300232199.995" 
    capture_lex $P1625
    $P1625($P1623)
  loop1631_next:
    goto loop1631_test
  loop1631_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1633, exception, 'type'
    eq $P1633, .CONTROL_LOOP_NEXT, loop1631_next
    eq $P1633, .CONTROL_LOOP_REDO, loop1631_redo
  loop1631_done:
    pop_eh 
  for_undef_335:
    find_lex $P1634, "@attrs"
.annotate 'line', 698
    .return ($P1634)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1624"  :anon :subid("114_1300232199.995") :outer("113_1300232199.995")
    .param pmc param_1626
.annotate 'line', 700
    .lex "$_", param_1626
.annotate 'line', 701
    find_lex $P1627, "@attrs"
    find_lex $P1628, "$_"
    $P1629 = $P1628."value"()
    $P1630 = $P1627."push"($P1629)
.annotate 'line', 700
    .return ($P1630)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "roles"  :subid("115_1300232199.995") :outer("96_1300232199.995")
    .param pmc param_1636
    .param pmc param_1637
.annotate 'line', 706
    .lex "self", param_1636
    .lex "$obj", param_1637
    find_lex $P1638, "self"
    get_global $P1639, "$?CLASS"
    getattribute $P1640, $P1638, $P1639, "@!roles"
    unless_null $P1640, vivify_336
    $P1640 = root_new ['parrot';'ResizablePMCArray']
  vivify_336:
    .return ($P1640)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "instance_of"  :subid("116_1300232199.995") :outer("96_1300232199.995")
    .param pmc param_1642
    .param pmc param_1643
.annotate 'line', 710
    .lex "self", param_1642
    .lex "$obj", param_1643
    find_lex $P1644, "self"
    get_global $P1645, "$?CLASS"
    getattribute $P1646, $P1644, $P1645, "$!instance_of"
    unless_null $P1646, vivify_337
    new $P1646, "Undef"
  vivify_337:
    .return ($P1646)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1714"  :subid("118_1300232199.995") :outer("10_1300232199.995")
.annotate 'line', 720
    .const 'Sub' $P2011 = "142_1300232199.995" 
    capture_lex $P2011
    .const 'Sub' $P2003 = "141_1300232199.995" 
    capture_lex $P2003
    .const 'Sub' $P1981 = "139_1300232199.995" 
    capture_lex $P1981
    .const 'Sub' $P1975 = "138_1300232199.995" 
    capture_lex $P1975
    .const 'Sub' $P1969 = "137_1300232199.995" 
    capture_lex $P1969
    .const 'Sub' $P1947 = "135_1300232199.995" 
    capture_lex $P1947
    .const 'Sub' $P1841 = "130_1300232199.995" 
    capture_lex $P1841
    .const 'Sub' $P1838 = "129_1300232199.995" 
    capture_lex $P1838
    .const 'Sub' $P1831 = "128_1300232199.995" 
    capture_lex $P1831
    .const 'Sub' $P1818 = "127_1300232199.995" 
    capture_lex $P1818
    .const 'Sub' $P1814 = "126_1300232199.995" 
    capture_lex $P1814
    .const 'Sub' $P1793 = "125_1300232199.995" 
    capture_lex $P1793
    .const 'Sub' $P1772 = "124_1300232199.995" 
    capture_lex $P1772
    .const 'Sub' $P1753 = "123_1300232199.995" 
    capture_lex $P1753
    .const 'Sub' $P1746 = "122_1300232199.995" 
    capture_lex $P1746
    .const 'Sub' $P1732 = "121_1300232199.995" 
    capture_lex $P1732
    .const 'Sub' $P1726 = "120_1300232199.995" 
    capture_lex $P1726
    .const 'Sub' $P1717 = "119_1300232199.995" 
    capture_lex $P1717
    get_global $P1716, "$?CLASS"
.annotate 'line', 883
    .const 'Sub' $P2003 = "141_1300232199.995" 
    newclosure $P2009, $P2003
.annotate 'line', 720
    .return ($P2009)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "" :load :init :subid("post338") :outer("118_1300232199.995")
.annotate 'line', 720
    get_hll_global $P1715, ["NQPParametricRoleHOW"], "_block1714" 
    .local pmc block
    set block, $P1715
    .const 'Sub' $P2011 = "142_1300232199.995" 
    capture_lex $P2011
    $P2011()
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block2010"  :anon :subid("142_1300232199.995") :outer("118_1300232199.995")
.annotate 'line', 720
    nqp_get_sc_object $P2012, "1300232196.839", 5
    .local pmc type_obj
    set type_obj, $P2012
    set_global "$?CLASS", type_obj
    get_how $P2013, type_obj
    get_hll_global $P2014, "KnowHOWAttribute"
    $P2015 = $P2014."new"("$!name" :named("name"))
    $P2013."add_attribute"(type_obj, $P2015)
    get_how $P2016, type_obj
    get_hll_global $P2017, "KnowHOWAttribute"
    $P2018 = $P2017."new"("%!attributes" :named("name"))
    $P2016."add_attribute"(type_obj, $P2018)
    get_how $P2019, type_obj
    get_hll_global $P2020, "KnowHOWAttribute"
    $P2021 = $P2020."new"("%!methods" :named("name"))
    $P2019."add_attribute"(type_obj, $P2021)
    get_how $P2022, type_obj
    get_hll_global $P2023, "KnowHOWAttribute"
    $P2024 = $P2023."new"("@!multi_methods_to_incorporate" :named("name"))
    $P2022."add_attribute"(type_obj, $P2024)
    get_how $P2025, type_obj
    get_hll_global $P2026, "KnowHOWAttribute"
    $P2027 = $P2026."new"("@!roles" :named("name"))
    $P2025."add_attribute"(type_obj, $P2027)
    get_how $P2028, type_obj
    get_hll_global $P2029, "KnowHOWAttribute"
    $P2030 = $P2029."new"("$!composed" :named("name"))
    $P2028."add_attribute"(type_obj, $P2030)
    get_how $P2031, type_obj
    get_hll_global $P2032, "KnowHOWAttribute"
    $P2033 = $P2032."new"("$!body_block" :named("name"))
    $P2031."add_attribute"(type_obj, $P2033)
    get_how $P2034, type_obj
    .const 'Sub' $P2035 = "119_1300232199.995" 
    $P2034."add_method"(type_obj, "new", $P2035)
    get_how $P2036, type_obj
    .const 'Sub' $P2037 = "120_1300232199.995" 
    $P2036."add_method"(type_obj, "BUILD", $P2037)
    get_how $P2038, type_obj
    .const 'Sub' $P2039 = "121_1300232199.995" 
    $P2038."add_method"(type_obj, "new_type", $P2039)
    get_how $P2040, type_obj
    .const 'Sub' $P2041 = "122_1300232199.995" 
    $P2040."add_method"(type_obj, "set_body_block", $P2041)
    get_how $P2042, type_obj
    .const 'Sub' $P2043 = "123_1300232199.995" 
    $P2042."add_method"(type_obj, "add_method", $P2043)
    get_how $P2044, type_obj
    .const 'Sub' $P2045 = "124_1300232199.995" 
    $P2044."add_method"(type_obj, "add_multi_method", $P2045)
    get_how $P2046, type_obj
    .const 'Sub' $P2047 = "125_1300232199.995" 
    $P2046."add_method"(type_obj, "add_attribute", $P2047)
    get_how $P2048, type_obj
    .const 'Sub' $P2049 = "126_1300232199.995" 
    $P2048."add_method"(type_obj, "add_parent", $P2049)
    get_how $P2050, type_obj
    .const 'Sub' $P2051 = "127_1300232199.995" 
    $P2050."add_method"(type_obj, "add_role", $P2051)
    get_how $P2052, type_obj
    .const 'Sub' $P2053 = "128_1300232199.995" 
    $P2052."add_method"(type_obj, "compose", $P2053)
    get_how $P2054, type_obj
    .const 'Sub' $P2055 = "129_1300232199.995" 
    $P2054."add_method"(type_obj, "parametric", $P2055)
    get_how $P2056, type_obj
    .const 'Sub' $P2057 = "130_1300232199.995" 
    $P2056."add_method"(type_obj, "instantiate", $P2057)
    get_how $P2058, type_obj
    .const 'Sub' $P2059 = "135_1300232199.995" 
    $P2058."add_method"(type_obj, "methods", $P2059)
    get_how $P2060, type_obj
    .const 'Sub' $P2061 = "137_1300232199.995" 
    $P2060."add_method"(type_obj, "method_table", $P2061)
    get_how $P2062, type_obj
    .const 'Sub' $P2063 = "138_1300232199.995" 
    $P2062."add_method"(type_obj, "name", $P2063)
    get_how $P2064, type_obj
    .const 'Sub' $P2065 = "139_1300232199.995" 
    $P2064."add_method"(type_obj, "attributes", $P2065)
    get_how $P2066, type_obj
    .const 'Sub' $P2067 = "141_1300232199.995" 
    $P2066."add_method"(type_obj, "roles", $P2067)
    get_how $P2068, type_obj
    $P2069 = $P2068."compose"(type_obj)
    .return ($P2069)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "new"  :subid("119_1300232199.995") :outer("118_1300232199.995")
    .param pmc param_1718
    .param pmc param_1719 :named("name")
.annotate 'line', 750
    .lex "self", param_1718
    .lex "$name", param_1719
.annotate 'line', 751
    new $P1720, "Undef"
    .lex "$obj", $P1720
    find_lex $P1721, "self"
    repr_instance_of $P1722, $P1721
    store_lex "$obj", $P1722
.annotate 'line', 752
    find_lex $P1723, "$obj"
    find_lex $P1724, "$name"
    $P1723."BUILD"($P1724 :named("name"))
    find_lex $P1725, "$obj"
.annotate 'line', 750
    .return ($P1725)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "BUILD"  :subid("120_1300232199.995") :outer("118_1300232199.995")
    .param pmc param_1727
    .param pmc param_1728 :named("name")
.annotate 'line', 756
    .lex "self", param_1727
    .lex "$name", param_1728
.annotate 'line', 757
    find_lex $P1729, "$name"
    find_lex $P1730, "self"
    get_global $P1731, "$?CLASS"
    setattribute $P1730, $P1731, "$!name", $P1729
.annotate 'line', 756
    .return ($P1729)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "new_type"  :subid("121_1300232199.995") :outer("118_1300232199.995")
    .param pmc param_1733
    .param pmc param_1734 :optional :named("name")
    .param int has_param_1734 :opt_flag
    .param pmc param_1736 :optional :named("repr")
    .param int has_param_1736 :opt_flag
.annotate 'line', 762
    .lex "self", param_1733
    if has_param_1734, optparam_339
    new $P1735, "String"
    assign $P1735, "<anon>"
    set param_1734, $P1735
  optparam_339:
    .lex "$name", param_1734
    if has_param_1736, optparam_340
    new $P1737, "String"
    assign $P1737, "P6opaque"
    set param_1736, $P1737
  optparam_340:
    .lex "$repr", param_1736
.annotate 'line', 763
    new $P1738, "Undef"
    .lex "$metarole", $P1738
    find_lex $P1739, "self"
    find_lex $P1740, "$name"
    $P1741 = $P1739."new"($P1740 :named("name"))
    store_lex "$metarole", $P1741
.annotate 'line', 764
    find_lex $P1742, "$metarole"
    find_lex $P1743, "$repr"
    set $S1744, $P1743
    repr_type_object_for $P1745, $P1742, $S1744
.annotate 'line', 762
    .return ($P1745)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "set_body_block"  :subid("122_1300232199.995") :outer("118_1300232199.995")
    .param pmc param_1747
    .param pmc param_1748
    .param pmc param_1749
.annotate 'line', 767
    .lex "self", param_1747
    .lex "$obj", param_1748
    .lex "$body_block", param_1749
.annotate 'line', 768
    find_lex $P1750, "$body_block"
    find_lex $P1751, "self"
    get_global $P1752, "$?CLASS"
    setattribute $P1751, $P1752, "$!body_block", $P1750
.annotate 'line', 767
    .return ($P1750)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_method"  :subid("123_1300232199.995") :outer("118_1300232199.995")
    .param pmc param_1754
    .param pmc param_1755
    .param pmc param_1756
    .param pmc param_1757
.annotate 'line', 771
    .lex "self", param_1754
    .lex "$obj", param_1755
    .lex "$name", param_1756
    .lex "$code_obj", param_1757
.annotate 'line', 772
    find_lex $P1759, "$name"
    find_lex $P1760, "self"
    get_global $P1761, "$?CLASS"
    getattribute $P1762, $P1760, $P1761, "%!methods"
    unless_null $P1762, vivify_341
    $P1762 = root_new ['parrot';'Hash']
  vivify_341:
    set $P1763, $P1762[$P1759]
    unless_null $P1763, vivify_342
    new $P1763, "Undef"
  vivify_342:
    unless $P1763, if_1758_end
.annotate 'line', 773
    new $P1764, "String"
    assign $P1764, "This role already has a method named "
    find_lex $P1765, "$name"
    concat $P1766, $P1764, $P1765
    die $P1766
  if_1758_end:
.annotate 'line', 775
    find_lex $P1767, "$code_obj"
    find_lex $P1768, "$name"
    find_lex $P1769, "self"
    get_global $P1770, "$?CLASS"
    getattribute $P1771, $P1769, $P1770, "%!methods"
    unless_null $P1771, vivify_343
    $P1771 = root_new ['parrot';'Hash']
    setattribute $P1769, $P1770, "%!methods", $P1771
  vivify_343:
    set $P1771[$P1768], $P1767
.annotate 'line', 771
    .return ($P1767)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_multi_method"  :subid("124_1300232199.995") :outer("118_1300232199.995")
    .param pmc param_1773
    .param pmc param_1774
    .param pmc param_1775
    .param pmc param_1776
.annotate 'line', 778
    .lex "self", param_1773
    .lex "$obj", param_1774
    .lex "$name", param_1775
    .lex "$code_obj", param_1776
.annotate 'line', 779
    $P1777 = root_new ['parrot';'Hash']
    .lex "%todo", $P1777
.annotate 'line', 778
    find_lex $P1778, "%todo"
.annotate 'line', 780
    find_lex $P1779, "$name"
    find_lex $P1780, "%todo"
    unless_null $P1780, vivify_344
    $P1780 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1780
  vivify_344:
    set $P1780["name"], $P1779
.annotate 'line', 781
    find_lex $P1781, "$code_obj"
    find_lex $P1782, "%todo"
    unless_null $P1782, vivify_345
    $P1782 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1782
  vivify_345:
    set $P1782["code"], $P1781
.annotate 'line', 782
    find_lex $P1783, "%todo"
    find_lex $P1784, "self"
    get_global $P1785, "$?CLASS"
    getattribute $P1786, $P1784, $P1785, "@!multi_methods_to_incorporate"
    unless_null $P1786, vivify_346
    $P1786 = root_new ['parrot';'ResizablePMCArray']
  vivify_346:
    set $N1787, $P1786
    set $I1788, $N1787
    find_lex $P1789, "self"
    get_global $P1790, "$?CLASS"
    getattribute $P1791, $P1789, $P1790, "@!multi_methods_to_incorporate"
    unless_null $P1791, vivify_347
    $P1791 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1789, $P1790, "@!multi_methods_to_incorporate", $P1791
  vivify_347:
    set $P1791[$I1788], $P1783
    find_lex $P1792, "$code_obj"
.annotate 'line', 778
    .return ($P1792)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_attribute"  :subid("125_1300232199.995") :outer("118_1300232199.995")
    .param pmc param_1794
    .param pmc param_1795
    .param pmc param_1796
.annotate 'line', 786
    .lex "self", param_1794
    .lex "$obj", param_1795
    .lex "$meta_attr", param_1796
.annotate 'line', 787
    new $P1797, "Undef"
    .lex "$name", $P1797
    find_lex $P1798, "$meta_attr"
    $P1799 = $P1798."name"()
    store_lex "$name", $P1799
.annotate 'line', 788
    find_lex $P1801, "$name"
    find_lex $P1802, "self"
    get_global $P1803, "$?CLASS"
    getattribute $P1804, $P1802, $P1803, "%!attributes"
    unless_null $P1804, vivify_348
    $P1804 = root_new ['parrot';'Hash']
  vivify_348:
    set $P1805, $P1804[$P1801]
    unless_null $P1805, vivify_349
    new $P1805, "Undef"
  vivify_349:
    unless $P1805, if_1800_end
.annotate 'line', 789
    new $P1806, "String"
    assign $P1806, "This role already has an attribute named "
    find_lex $P1807, "$name"
    concat $P1808, $P1806, $P1807
    die $P1808
  if_1800_end:
.annotate 'line', 791
    find_lex $P1809, "$meta_attr"
    find_lex $P1810, "$name"
    find_lex $P1811, "self"
    get_global $P1812, "$?CLASS"
    getattribute $P1813, $P1811, $P1812, "%!attributes"
    unless_null $P1813, vivify_350
    $P1813 = root_new ['parrot';'Hash']
    setattribute $P1811, $P1812, "%!attributes", $P1813
  vivify_350:
    set $P1813[$P1810], $P1809
.annotate 'line', 786
    .return ($P1809)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_parent"  :subid("126_1300232199.995") :outer("118_1300232199.995")
    .param pmc param_1815
    .param pmc param_1816
    .param pmc param_1817
.annotate 'line', 794
    .lex "self", param_1815
    .lex "$obj", param_1816
    .lex "$parent", param_1817
.annotate 'line', 795
    die "A role cannot inherit from a class"
.annotate 'line', 794
    .return ()
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_role"  :subid("127_1300232199.995") :outer("118_1300232199.995")
    .param pmc param_1819
    .param pmc param_1820
    .param pmc param_1821
.annotate 'line', 798
    .lex "self", param_1819
    .lex "$obj", param_1820
    .lex "$role", param_1821
.annotate 'line', 799
    find_lex $P1822, "$role"
    find_lex $P1823, "self"
    get_global $P1824, "$?CLASS"
    getattribute $P1825, $P1823, $P1824, "@!roles"
    unless_null $P1825, vivify_351
    $P1825 = root_new ['parrot';'ResizablePMCArray']
  vivify_351:
    set $N1826, $P1825
    set $I1827, $N1826
    find_lex $P1828, "self"
    get_global $P1829, "$?CLASS"
    getattribute $P1830, $P1828, $P1829, "@!roles"
    unless_null $P1830, vivify_352
    $P1830 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1828, $P1829, "@!roles", $P1830
  vivify_352:
    set $P1830[$I1827], $P1822
.annotate 'line', 798
    .return ($P1822)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "compose"  :subid("128_1300232199.995") :outer("118_1300232199.995")
    .param pmc param_1832
    .param pmc param_1833
.annotate 'line', 803
    .lex "self", param_1832
    .lex "$obj", param_1833
.annotate 'line', 804
    new $P1834, "Integer"
    assign $P1834, 1
    find_lex $P1835, "self"
    get_global $P1836, "$?CLASS"
    setattribute $P1835, $P1836, "$!composed", $P1834
    find_lex $P1837, "$obj"
.annotate 'line', 803
    .return ($P1837)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "parametric"  :subid("129_1300232199.995") :outer("118_1300232199.995")
    .param pmc param_1839
    .param pmc param_1840
.annotate 'line', 814
    .lex "self", param_1839
    .lex "$obj", param_1840
    .return (1)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "instantiate"  :subid("130_1300232199.995") :outer("118_1300232199.995")
    .param pmc param_1844
    .param pmc param_1845
    .param pmc param_1846
.annotate 'line', 820
    .const 'Sub' $P1925 = "134_1300232199.995" 
    capture_lex $P1925
    .const 'Sub' $P1904 = "133_1300232199.995" 
    capture_lex $P1904
    .const 'Sub' $P1883 = "132_1300232199.995" 
    capture_lex $P1883
    .const 'Sub' $P1865 = "131_1300232199.995" 
    capture_lex $P1865
    new $P1843, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1843, control_1842
    push_eh $P1843
    .lex "self", param_1844
    .lex "$obj", param_1845
    .lex "$class_arg", param_1846
.annotate 'line', 826
    new $P1847, "Undef"
    .lex "$irole", $P1847
.annotate 'line', 823
    find_lex $P1848, "self"
    get_global $P1849, "$?CLASS"
    getattribute $P1850, $P1848, $P1849, "$!body_block"
    unless_null $P1850, vivify_353
    new $P1850, "Undef"
  vivify_353:
    find_lex $P1851, "$class_arg"
    $P1850($P1851)
.annotate 'line', 826
    get_hll_global $P1852, "NQPConcreteRoleHOW"
    find_lex $P1853, "self"
    get_global $P1854, "$?CLASS"
    getattribute $P1855, $P1853, $P1854, "$!name"
    unless_null $P1855, vivify_354
    new $P1855, "Undef"
  vivify_354:
    find_lex $P1856, "$obj"
    $P1857 = $P1852."new_type"($P1855 :named("name"), $P1856 :named("instance_of"))
    store_lex "$irole", $P1857
.annotate 'line', 830
    find_lex $P1859, "self"
    get_global $P1860, "$?CLASS"
    getattribute $P1861, $P1859, $P1860, "%!attributes"
    unless_null $P1861, vivify_355
    $P1861 = root_new ['parrot';'Hash']
  vivify_355:
    defined $I1862, $P1861
    unless $I1862, for_undef_356
    iter $P1858, $P1861
    new $P1874, 'ExceptionHandler'
    set_label $P1874, loop1873_handler
    $P1874."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1874
  loop1873_test:
    unless $P1858, loop1873_done
    shift $P1863, $P1858
  loop1873_redo:
    .const 'Sub' $P1865 = "131_1300232199.995" 
    capture_lex $P1865
    $P1865($P1863)
  loop1873_next:
    goto loop1873_test
  loop1873_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1875, exception, 'type'
    eq $P1875, .CONTROL_LOOP_NEXT, loop1873_next
    eq $P1875, .CONTROL_LOOP_REDO, loop1873_redo
  loop1873_done:
    pop_eh 
  for_undef_356:
.annotate 'line', 836
    find_lex $P1877, "self"
    get_global $P1878, "$?CLASS"
    getattribute $P1879, $P1877, $P1878, "%!methods"
    unless_null $P1879, vivify_357
    $P1879 = root_new ['parrot';'Hash']
  vivify_357:
    defined $I1880, $P1879
    unless $I1880, for_undef_358
    iter $P1876, $P1879
    new $P1895, 'ExceptionHandler'
    set_label $P1895, loop1894_handler
    $P1895."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1895
  loop1894_test:
    unless $P1876, loop1894_done
    shift $P1881, $P1876
  loop1894_redo:
    .const 'Sub' $P1883 = "132_1300232199.995" 
    capture_lex $P1883
    $P1883($P1881)
  loop1894_next:
    goto loop1894_test
  loop1894_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1896, exception, 'type'
    eq $P1896, .CONTROL_LOOP_NEXT, loop1894_next
    eq $P1896, .CONTROL_LOOP_REDO, loop1894_redo
  loop1894_done:
    pop_eh 
  for_undef_358:
.annotate 'line', 839
    find_lex $P1898, "self"
    get_global $P1899, "$?CLASS"
    getattribute $P1900, $P1898, $P1899, "@!multi_methods_to_incorporate"
    unless_null $P1900, vivify_359
    $P1900 = root_new ['parrot';'ResizablePMCArray']
  vivify_359:
    defined $I1901, $P1900
    unless $I1901, for_undef_360
    iter $P1897, $P1900
    new $P1916, 'ExceptionHandler'
    set_label $P1916, loop1915_handler
    $P1916."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1916
  loop1915_test:
    unless $P1897, loop1915_done
    shift $P1902, $P1897
  loop1915_redo:
    .const 'Sub' $P1904 = "133_1300232199.995" 
    capture_lex $P1904
    $P1904($P1902)
  loop1915_next:
    goto loop1915_test
  loop1915_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1917, exception, 'type'
    eq $P1917, .CONTROL_LOOP_NEXT, loop1915_next
    eq $P1917, .CONTROL_LOOP_REDO, loop1915_redo
  loop1915_done:
    pop_eh 
  for_undef_360:
.annotate 'line', 844
    find_lex $P1919, "self"
    get_global $P1920, "$?CLASS"
    getattribute $P1921, $P1919, $P1920, "@!roles"
    unless_null $P1921, vivify_365
    $P1921 = root_new ['parrot';'ResizablePMCArray']
  vivify_365:
    defined $I1922, $P1921
    unless $I1922, for_undef_366
    iter $P1918, $P1921
    new $P1939, 'ExceptionHandler'
    set_label $P1939, loop1938_handler
    $P1939."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1939
  loop1938_test:
    unless $P1918, loop1938_done
    shift $P1923, $P1918
  loop1938_redo:
    .const 'Sub' $P1925 = "134_1300232199.995" 
    capture_lex $P1925
    $P1925($P1923)
  loop1938_next:
    goto loop1938_test
  loop1938_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1940, exception, 'type'
    eq $P1940, .CONTROL_LOOP_NEXT, loop1938_next
    eq $P1940, .CONTROL_LOOP_REDO, loop1938_redo
  loop1938_done:
    pop_eh 
  for_undef_366:
.annotate 'line', 850
    find_lex $P1941, "$irole"
    get_how $P1942, $P1941
    find_lex $P1943, "$irole"
    $P1942."compose"($P1943)
.annotate 'line', 851
    new $P1944, "Exception"
    set $P1944['type'], .CONTROL_RETURN
    find_lex $P1945, "$irole"
    setattribute $P1944, 'payload', $P1945
    throw $P1944
.annotate 'line', 820
    .return ()
  control_1842:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1946, exception, "payload"
    .return ($P1946)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1864"  :anon :subid("131_1300232199.995") :outer("130_1300232199.995")
    .param pmc param_1866
.annotate 'line', 830
    .lex "$_", param_1866
.annotate 'line', 831
    find_lex $P1867, "$irole"
    get_how $P1868, $P1867
    find_lex $P1869, "$irole"
    find_lex $P1870, "$_"
    $P1871 = $P1870."value"()
    $P1872 = $P1868."add_attribute"($P1869, $P1871)
.annotate 'line', 830
    .return ($P1872)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1882"  :anon :subid("132_1300232199.995") :outer("130_1300232199.995")
    .param pmc param_1884
.annotate 'line', 836
    .lex "$_", param_1884
.annotate 'line', 837
    find_lex $P1885, "$irole"
    get_how $P1886, $P1885
    find_lex $P1887, "$irole"
    find_lex $P1888, "$_"
    $P1889 = $P1888."key"()
    find_lex $P1890, "$_"
    $P1891 = $P1890."value"()
    clone $P1892, $P1891
    $P1893 = $P1886."add_method"($P1887, $P1889, $P1892)
.annotate 'line', 836
    .return ($P1893)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1903"  :anon :subid("133_1300232199.995") :outer("130_1300232199.995")
    .param pmc param_1905
.annotate 'line', 839
    .lex "$_", param_1905
.annotate 'line', 840
    find_lex $P1906, "$irole"
    get_how $P1907, $P1906
    find_lex $P1908, "$irole"
    find_lex $P1909, "$_"
    unless_null $P1909, vivify_361
    $P1909 = root_new ['parrot';'Hash']
  vivify_361:
    set $P1910, $P1909["name"]
    unless_null $P1910, vivify_362
    new $P1910, "Undef"
  vivify_362:
    find_lex $P1911, "$_"
    unless_null $P1911, vivify_363
    $P1911 = root_new ['parrot';'Hash']
  vivify_363:
    set $P1912, $P1911["code"]
    unless_null $P1912, vivify_364
    new $P1912, "Undef"
  vivify_364:
    clone $P1913, $P1912
    $P1914 = $P1907."add_multi_method"($P1908, $P1910, $P1913)
.annotate 'line', 839
    .return ($P1914)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1924"  :anon :subid("134_1300232199.995") :outer("130_1300232199.995")
    .param pmc param_1927
.annotate 'line', 845
    new $P1926, "Undef"
    .lex "$instantiated", $P1926
    .lex "$_", param_1927
    find_lex $P1928, "$irole"
    get_how $P1929, $P1928
    find_lex $P1930, "$irole"
    find_lex $P1931, "$class_arg"
    $P1932 = $P1929."instantiate"($P1930, $P1931)
    store_lex "$instantiated", $P1932
.annotate 'line', 846
    find_lex $P1933, "$irole"
    get_how $P1934, $P1933
    find_lex $P1935, "$irole"
    find_lex $P1936, "$instantiated"
    $P1937 = $P1934."add_role"($P1935, $P1936)
.annotate 'line', 844
    .return ($P1937)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "methods"  :subid("135_1300232199.995") :outer("118_1300232199.995")
    .param pmc param_1948
    .param pmc param_1949
.annotate 'line', 859
    .const 'Sub' $P1959 = "136_1300232199.995" 
    capture_lex $P1959
    .lex "self", param_1948
    .lex "$obj", param_1949
.annotate 'line', 860
    $P1950 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meths", $P1950
.annotate 'line', 859
    find_lex $P1951, "@meths"
.annotate 'line', 861
    find_lex $P1953, "self"
    get_global $P1954, "$?CLASS"
    getattribute $P1955, $P1953, $P1954, "%!methods"
    unless_null $P1955, vivify_367
    $P1955 = root_new ['parrot';'Hash']
  vivify_367:
    defined $I1956, $P1955
    unless $I1956, for_undef_368
    iter $P1952, $P1955
    new $P1966, 'ExceptionHandler'
    set_label $P1966, loop1965_handler
    $P1966."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1966
  loop1965_test:
    unless $P1952, loop1965_done
    shift $P1957, $P1952
  loop1965_redo:
    .const 'Sub' $P1959 = "136_1300232199.995" 
    capture_lex $P1959
    $P1959($P1957)
  loop1965_next:
    goto loop1965_test
  loop1965_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1967, exception, 'type'
    eq $P1967, .CONTROL_LOOP_NEXT, loop1965_next
    eq $P1967, .CONTROL_LOOP_REDO, loop1965_redo
  loop1965_done:
    pop_eh 
  for_undef_368:
    find_lex $P1968, "@meths"
.annotate 'line', 859
    .return ($P1968)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1958"  :anon :subid("136_1300232199.995") :outer("135_1300232199.995")
    .param pmc param_1960
.annotate 'line', 861
    .lex "$_", param_1960
.annotate 'line', 862
    find_lex $P1961, "@meths"
    find_lex $P1962, "$_"
    $P1963 = $P1962."value"()
    $P1964 = $P1961."push"($P1963)
.annotate 'line', 861
    .return ($P1964)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "method_table"  :subid("137_1300232199.995") :outer("118_1300232199.995")
    .param pmc param_1970
    .param pmc param_1971
.annotate 'line', 867
    .lex "self", param_1970
    .lex "$obj", param_1971
    find_lex $P1972, "self"
    get_global $P1973, "$?CLASS"
    getattribute $P1974, $P1972, $P1973, "%!methods"
    unless_null $P1974, vivify_369
    $P1974 = root_new ['parrot';'Hash']
  vivify_369:
    .return ($P1974)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "name"  :subid("138_1300232199.995") :outer("118_1300232199.995")
    .param pmc param_1976
    .param pmc param_1977
.annotate 'line', 871
    .lex "self", param_1976
    .lex "$obj", param_1977
    find_lex $P1978, "self"
    get_global $P1979, "$?CLASS"
    getattribute $P1980, $P1978, $P1979, "$!name"
    unless_null $P1980, vivify_370
    new $P1980, "Undef"
  vivify_370:
    .return ($P1980)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "attributes"  :subid("139_1300232199.995") :outer("118_1300232199.995")
    .param pmc param_1982
    .param pmc param_1983
.annotate 'line', 875
    .const 'Sub' $P1993 = "140_1300232199.995" 
    capture_lex $P1993
    .lex "self", param_1982
    .lex "$obj", param_1983
.annotate 'line', 876
    $P1984 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attrs", $P1984
.annotate 'line', 875
    find_lex $P1985, "@attrs"
.annotate 'line', 877
    find_lex $P1987, "self"
    get_global $P1988, "$?CLASS"
    getattribute $P1989, $P1987, $P1988, "%!attributes"
    unless_null $P1989, vivify_371
    $P1989 = root_new ['parrot';'Hash']
  vivify_371:
    defined $I1990, $P1989
    unless $I1990, for_undef_372
    iter $P1986, $P1989
    new $P2000, 'ExceptionHandler'
    set_label $P2000, loop1999_handler
    $P2000."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2000
  loop1999_test:
    unless $P1986, loop1999_done
    shift $P1991, $P1986
  loop1999_redo:
    .const 'Sub' $P1993 = "140_1300232199.995" 
    capture_lex $P1993
    $P1993($P1991)
  loop1999_next:
    goto loop1999_test
  loop1999_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2001, exception, 'type'
    eq $P2001, .CONTROL_LOOP_NEXT, loop1999_next
    eq $P2001, .CONTROL_LOOP_REDO, loop1999_redo
  loop1999_done:
    pop_eh 
  for_undef_372:
    find_lex $P2002, "@attrs"
.annotate 'line', 875
    .return ($P2002)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1992"  :anon :subid("140_1300232199.995") :outer("139_1300232199.995")
    .param pmc param_1994
.annotate 'line', 877
    .lex "$_", param_1994
.annotate 'line', 878
    find_lex $P1995, "@attrs"
    find_lex $P1996, "$_"
    $P1997 = $P1996."value"()
    $P1998 = $P1995."push"($P1997)
.annotate 'line', 877
    .return ($P1998)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "roles"  :subid("141_1300232199.995") :outer("118_1300232199.995")
    .param pmc param_2004
    .param pmc param_2005
.annotate 'line', 883
    .lex "self", param_2004
    .lex "$obj", param_2005
    find_lex $P2006, "self"
    get_global $P2007, "$?CLASS"
    getattribute $P2008, $P2006, $P2007, "@!roles"
    unless_null $P2008, vivify_373
    $P2008 = root_new ['parrot';'ResizablePMCArray']
  vivify_373:
    .return ($P2008)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block2070"  :subid("143_1300232199.995") :outer("10_1300232199.995")
.annotate 'line', 889
    .const 'Sub' $P2279 = "153_1300232199.995" 
    capture_lex $P2279
    .const 'Sub' $P2143 = "148_1300232199.995" 
    capture_lex $P2143
    .const 'Sub' $P2108 = "146_1300232199.995" 
    capture_lex $P2108
    .const 'Sub' $P2073 = "144_1300232199.995" 
    capture_lex $P2073
    get_global $P2072, "$?CLASS"
.annotate 'line', 891
    .const 'Sub' $P2073 = "144_1300232199.995" 
    newclosure $P2107, $P2073
    .lex "has_method", $P2107
.annotate 'line', 899
    .const 'Sub' $P2108 = "146_1300232199.995" 
    newclosure $P2140, $P2108
    .lex "has_attribute", $P2140
.annotate 'line', 889
    find_lex $P2141, "has_method"
    find_lex $P2142, "has_attribute"
.annotate 'line', 907
    .const 'Sub' $P2143 = "148_1300232199.995" 
    newclosure $P2277, $P2143
.annotate 'line', 889
    .return ($P2277)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "" :load :init :subid("post374") :outer("143_1300232199.995")
.annotate 'line', 889
    get_hll_global $P2071, ["RoleToClassApplier"], "_block2070" 
    .local pmc block
    set block, $P2071
    .const 'Sub' $P2279 = "153_1300232199.995" 
    capture_lex $P2279
    $P2279()
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block2278"  :anon :subid("153_1300232199.995") :outer("143_1300232199.995")
.annotate 'line', 889
    nqp_get_sc_object $P2280, "1300232196.839", 6
    .local pmc type_obj
    set type_obj, $P2280
    set_global "$?CLASS", type_obj
    get_how $P2281, type_obj
    .const 'Sub' $P2282 = "148_1300232199.995" 
    $P2281."add_method"(type_obj, "apply", $P2282)
    get_how $P2283, type_obj
    $P2284 = $P2283."compose"(type_obj)
    .return ($P2284)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "has_method"  :subid("144_1300232199.995") :outer("143_1300232199.995")
    .param pmc param_2076
    .param pmc param_2077
    .param pmc param_2078
.annotate 'line', 891
    .const 'Sub' $P2090 = "145_1300232199.995" 
    capture_lex $P2090
    new $P2075, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2075, control_2074
    push_eh $P2075
    .lex "$target", param_2076
    .lex "$name", param_2077
    .lex "$local", param_2078
.annotate 'line', 892
    $P2079 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P2079
    find_lex $P2080, "$target"
    get_how $P2081, $P2080
    find_lex $P2082, "$target"
    find_lex $P2083, "$local"
    $P2084 = $P2081."methods"($P2082, $P2083 :named("local"))
    store_lex "@methods", $P2084
.annotate 'line', 893
    find_lex $P2086, "@methods"
    defined $I2087, $P2086
    unless $I2087, for_undef_375
    iter $P2085, $P2086
    new $P2102, 'ExceptionHandler'
    set_label $P2102, loop2101_handler
    $P2102."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2102
  loop2101_test:
    unless $P2085, loop2101_done
    shift $P2088, $P2085
  loop2101_redo:
    .const 'Sub' $P2090 = "145_1300232199.995" 
    capture_lex $P2090
    $P2090($P2088)
  loop2101_next:
    goto loop2101_test
  loop2101_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2103, exception, 'type'
    eq $P2103, .CONTROL_LOOP_NEXT, loop2101_next
    eq $P2103, .CONTROL_LOOP_REDO, loop2101_redo
  loop2101_done:
    pop_eh 
  for_undef_375:
.annotate 'line', 896
    new $P2104, "Exception"
    set $P2104['type'], .CONTROL_RETURN
    new $P2105, "Integer"
    assign $P2105, 0
    setattribute $P2104, 'payload', $P2105
    throw $P2104
.annotate 'line', 891
    .return ()
  control_2074:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2106, exception, "payload"
    .return ($P2106)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "_block2089"  :anon :subid("145_1300232199.995") :outer("144_1300232199.995")
    .param pmc param_2091
.annotate 'line', 893
    .lex "$_", param_2091
.annotate 'line', 894
    find_lex $P2094, "$_"
    set $S2095, $P2094
    find_lex $P2096, "$name"
    set $S2097, $P2096
    iseq $I2098, $S2095, $S2097
    if $I2098, if_2093
    new $P2092, 'Integer'
    set $P2092, $I2098
    goto if_2093_end
  if_2093:
    new $P2099, "Exception"
    set $P2099['type'], .CONTROL_RETURN
    new $P2100, "Integer"
    assign $P2100, 1
    setattribute $P2099, 'payload', $P2100
    throw $P2099
  if_2093_end:
.annotate 'line', 893
    .return ($P2092)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "has_attribute"  :subid("146_1300232199.995") :outer("143_1300232199.995")
    .param pmc param_2111
    .param pmc param_2112
.annotate 'line', 899
    .const 'Sub' $P2123 = "147_1300232199.995" 
    capture_lex $P2123
    new $P2110, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2110, control_2109
    push_eh $P2110
    .lex "$target", param_2111
    .lex "$name", param_2112
.annotate 'line', 900
    $P2113 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attributes", $P2113
    find_lex $P2114, "$target"
    get_how $P2115, $P2114
    find_lex $P2116, "$target"
    $P2117 = $P2115."attributes"($P2116, 1 :named("local"))
    store_lex "@attributes", $P2117
.annotate 'line', 901
    find_lex $P2119, "@attributes"
    defined $I2120, $P2119
    unless $I2120, for_undef_376
    iter $P2118, $P2119
    new $P2135, 'ExceptionHandler'
    set_label $P2135, loop2134_handler
    $P2135."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2135
  loop2134_test:
    unless $P2118, loop2134_done
    shift $P2121, $P2118
  loop2134_redo:
    .const 'Sub' $P2123 = "147_1300232199.995" 
    capture_lex $P2123
    $P2123($P2121)
  loop2134_next:
    goto loop2134_test
  loop2134_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2136, exception, 'type'
    eq $P2136, .CONTROL_LOOP_NEXT, loop2134_next
    eq $P2136, .CONTROL_LOOP_REDO, loop2134_redo
  loop2134_done:
    pop_eh 
  for_undef_376:
.annotate 'line', 904
    new $P2137, "Exception"
    set $P2137['type'], .CONTROL_RETURN
    new $P2138, "Integer"
    assign $P2138, 0
    setattribute $P2137, 'payload', $P2138
    throw $P2137
.annotate 'line', 899
    .return ()
  control_2109:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2139, exception, "payload"
    .return ($P2139)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "_block2122"  :anon :subid("147_1300232199.995") :outer("146_1300232199.995")
    .param pmc param_2124
.annotate 'line', 901
    .lex "$_", param_2124
.annotate 'line', 902
    find_lex $P2127, "$_"
    $S2128 = $P2127."name"()
    find_lex $P2129, "$name"
    set $S2130, $P2129
    iseq $I2131, $S2128, $S2130
    if $I2131, if_2126
    new $P2125, 'Integer'
    set $P2125, $I2131
    goto if_2126_end
  if_2126:
    new $P2132, "Exception"
    set $P2132['type'], .CONTROL_RETURN
    new $P2133, "Integer"
    assign $P2133, 1
    setattribute $P2132, 'payload', $P2133
    throw $P2132
  if_2126_end:
.annotate 'line', 901
    .return ($P2125)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "apply"  :subid("148_1300232199.995") :outer("143_1300232199.995")
    .param pmc param_2144
    .param pmc param_2145
    .param pmc param_2146
.annotate 'line', 907
    .const 'Sub' $P2248 = "152_1300232199.995" 
    capture_lex $P2248
    .const 'Sub' $P2222 = "151_1300232199.995" 
    capture_lex $P2222
    .const 'Sub' $P2193 = "150_1300232199.995" 
    capture_lex $P2193
    .const 'Sub' $P2173 = "149_1300232199.995" 
    capture_lex $P2173
    .lex "self", param_2144
    .lex "$target", param_2145
    .lex "@roles", param_2146
.annotate 'line', 910
    new $P2147, "Undef"
    .lex "$to_compose", $P2147
.annotate 'line', 911
    new $P2148, "Undef"
    .lex "$to_compose_meta", $P2148
.annotate 'line', 926
    $P2149 = root_new ['parrot';'ResizablePMCArray']
    .lex "@collisions", $P2149
.annotate 'line', 935
    $P2150 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P2150
.annotate 'line', 943
    $P2151 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attributes", $P2151
.annotate 'line', 955
    $P2152 = root_new ['parrot';'ResizablePMCArray']
    .lex "@done", $P2152
.annotate 'line', 907
    find_lex $P2153, "$to_compose"
    find_lex $P2154, "$to_compose_meta"
.annotate 'line', 912
    find_lex $P2156, "@roles"
    set $N2157, $P2156
    iseq $I2158, $N2157, 1.0
    if $I2158, if_2155
.annotate 'line', 917
    get_hll_global $P2163, "NQPConcreteRoleHOW"
    get_hll_global $P2164, "NQPMu"
    $P2165 = $P2163."new_type"($P2164 :named("instance_of"))
    store_lex "$to_compose", $P2165
.annotate 'line', 918
    find_lex $P2166, "$to_compose"
    get_how $P2167, $P2166
    store_lex "$to_compose_meta", $P2167
.annotate 'line', 919
    find_lex $P2169, "@roles"
    defined $I2170, $P2169
    unless $I2170, for_undef_377
    iter $P2168, $P2169
    new $P2180, 'ExceptionHandler'
    set_label $P2180, loop2179_handler
    $P2180."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2180
  loop2179_test:
    unless $P2168, loop2179_done
    shift $P2171, $P2168
  loop2179_redo:
    .const 'Sub' $P2173 = "149_1300232199.995" 
    capture_lex $P2173
    $P2173($P2171)
  loop2179_next:
    goto loop2179_test
  loop2179_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2181, exception, 'type'
    eq $P2181, .CONTROL_LOOP_NEXT, loop2179_next
    eq $P2181, .CONTROL_LOOP_REDO, loop2179_redo
  loop2179_done:
    pop_eh 
  for_undef_377:
.annotate 'line', 922
    find_lex $P2182, "$to_compose_meta"
    find_lex $P2183, "$to_compose"
    $P2184 = $P2182."compose"($P2183)
    store_lex "$to_compose", $P2184
.annotate 'line', 916
    goto if_2155_end
  if_2155:
.annotate 'line', 913
    find_lex $P2159, "@roles"
    unless_null $P2159, vivify_378
    $P2159 = root_new ['parrot';'ResizablePMCArray']
  vivify_378:
    set $P2160, $P2159[0]
    unless_null $P2160, vivify_379
    new $P2160, "Undef"
  vivify_379:
    store_lex "$to_compose", $P2160
.annotate 'line', 914
    find_lex $P2161, "$to_compose"
    get_how $P2162, $P2161
    store_lex "$to_compose_meta", $P2162
  if_2155_end:
.annotate 'line', 926
    find_lex $P2185, "$to_compose_meta"
    find_lex $P2186, "$to_compose"
    $P2187 = $P2185."collisions"($P2186)
    store_lex "@collisions", $P2187
.annotate 'line', 927
    find_lex $P2189, "@collisions"
    defined $I2190, $P2189
    unless $I2190, for_undef_380
    iter $P2188, $P2189
    new $P2212, 'ExceptionHandler'
    set_label $P2212, loop2211_handler
    $P2212."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2212
  loop2211_test:
    unless $P2188, loop2211_done
    shift $P2191, $P2188
  loop2211_redo:
    .const 'Sub' $P2193 = "150_1300232199.995" 
    capture_lex $P2193
    $P2193($P2191)
  loop2211_next:
    goto loop2211_test
  loop2211_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2213, exception, 'type'
    eq $P2213, .CONTROL_LOOP_NEXT, loop2211_next
    eq $P2213, .CONTROL_LOOP_REDO, loop2211_redo
  loop2211_done:
    pop_eh 
  for_undef_380:
.annotate 'line', 935
    find_lex $P2214, "$to_compose_meta"
    find_lex $P2215, "$to_compose"
    $P2216 = $P2214."methods"($P2215)
    store_lex "@methods", $P2216
.annotate 'line', 936
    find_lex $P2218, "@methods"
    defined $I2219, $P2218
    unless $I2219, for_undef_381
    iter $P2217, $P2218
    new $P2238, 'ExceptionHandler'
    set_label $P2238, loop2237_handler
    $P2238."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2238
  loop2237_test:
    unless $P2217, loop2237_done
    shift $P2220, $P2217
  loop2237_redo:
    .const 'Sub' $P2222 = "151_1300232199.995" 
    capture_lex $P2222
    $P2222($P2220)
  loop2237_next:
    goto loop2237_test
  loop2237_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2239, exception, 'type'
    eq $P2239, .CONTROL_LOOP_NEXT, loop2237_next
    eq $P2239, .CONTROL_LOOP_REDO, loop2237_redo
  loop2237_done:
    pop_eh 
  for_undef_381:
.annotate 'line', 943
    find_lex $P2240, "$to_compose_meta"
    find_lex $P2241, "$to_compose"
    $P2242 = $P2240."attributes"($P2241)
    store_lex "@attributes", $P2242
.annotate 'line', 944
    find_lex $P2244, "@attributes"
    defined $I2245, $P2244
    unless $I2245, for_undef_382
    iter $P2243, $P2244
    new $P2272, 'ExceptionHandler'
    set_label $P2272, loop2271_handler
    $P2272."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2272
  loop2271_test:
    unless $P2243, loop2271_done
    shift $P2246, $P2243
  loop2271_redo:
    .const 'Sub' $P2248 = "152_1300232199.995" 
    capture_lex $P2248
    $P2248($P2246)
  loop2271_next:
    goto loop2271_test
  loop2271_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2273, exception, 'type'
    eq $P2273, .CONTROL_LOOP_NEXT, loop2271_next
    eq $P2273, .CONTROL_LOOP_REDO, loop2271_redo
  loop2271_done:
    pop_eh 
  for_undef_382:
    find_lex $P2274, "@done"
.annotate 'line', 956
    find_lex $P2275, "$to_compose"
    find_lex $P2276, "@done"
    unless_null $P2276, vivify_383
    $P2276 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@done", $P2276
  vivify_383:
    set $P2276[0], $P2275
.annotate 'line', 907
    .return ($P2275)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block2172"  :anon :subid("149_1300232199.995") :outer("148_1300232199.995")
    .param pmc param_2174
.annotate 'line', 919
    .lex "$_", param_2174
.annotate 'line', 920
    find_lex $P2175, "$to_compose_meta"
    find_lex $P2176, "$to_compose"
    find_lex $P2177, "$_"
    $P2178 = $P2175."add_role"($P2176, $P2177)
.annotate 'line', 919
    .return ($P2178)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block2192"  :anon :subid("150_1300232199.995") :outer("148_1300232199.995")
    .param pmc param_2194
.annotate 'line', 927
    .lex "$_", param_2194
.annotate 'line', 928
    find_lex $P2197, "$target"
    find_lex $P2198, "$_"
    set $S2199, $P2198
    $P2200 = "has_method"($P2197, $S2199, 1)
    unless $P2200, unless_2196
    set $P2195, $P2200
    goto unless_2196_end
  unless_2196:
.annotate 'line', 929
    new $P2201, 'String'
    set $P2201, "Method '"
    find_lex $P2202, "$_"
    concat $P2203, $P2201, $P2202
    concat $P2204, $P2203, "' collides and a resolution must be provided by the class '"
.annotate 'line', 930
    find_lex $P2205, "$target"
    get_how $P2206, $P2205
    find_lex $P2207, "$target"
    $S2208 = $P2206."name"($P2207)
    concat $P2209, $P2204, $S2208
.annotate 'line', 929
    concat $P2210, $P2209, "'"
.annotate 'line', 930
    die $P2210
  unless_2196_end:
.annotate 'line', 927
    .return ($P2195)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block2221"  :anon :subid("151_1300232199.995") :outer("148_1300232199.995")
    .param pmc param_2223
.annotate 'line', 936
    .lex "$_", param_2223
.annotate 'line', 937
    find_lex $P2226, "$target"
    find_lex $P2227, "$_"
    set $S2228, $P2227
    $P2229 = "has_method"($P2226, $S2228, 0)
    unless $P2229, unless_2225
    set $P2224, $P2229
    goto unless_2225_end
  unless_2225:
.annotate 'line', 938
    find_lex $P2230, "$target"
    get_how $P2231, $P2230
    find_lex $P2232, "$target"
    find_lex $P2233, "$_"
    set $S2234, $P2233
    find_lex $P2235, "$_"
    $P2236 = $P2231."add_method"($P2232, $S2234, $P2235)
.annotate 'line', 937
    set $P2224, $P2236
  unless_2225_end:
.annotate 'line', 936
    .return ($P2224)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block2247"  :anon :subid("152_1300232199.995") :outer("148_1300232199.995")
    .param pmc param_2249
.annotate 'line', 944
    .lex "$_", param_2249
.annotate 'line', 945
    find_lex $P2251, "$target"
    find_lex $P2252, "$_"
    $P2253 = $P2252."name"()
    $P2254 = "has_attribute"($P2251, $P2253)
    unless $P2254, if_2250_end
.annotate 'line', 946
    new $P2255, "String"
    assign $P2255, "Attribute '"
    find_lex $P2256, "$_"
    $S2257 = $P2256."name"()
    concat $P2258, $P2255, $S2257
    concat $P2259, $P2258, "' already exists in the class '"
.annotate 'line', 947
    find_lex $P2260, "$target"
    get_how $P2261, $P2260
    find_lex $P2262, "$target"
    $S2263 = $P2261."name"($P2262)
    concat $P2264, $P2259, $S2263
.annotate 'line', 946
    concat $P2265, $P2264, "', but a role also wishes to compose it"
.annotate 'line', 947
    die $P2265
  if_2250_end:
.annotate 'line', 949
    find_lex $P2266, "$target"
    get_how $P2267, $P2266
    find_lex $P2268, "$target"
    find_lex $P2269, "$_"
    $P2270 = $P2267."add_attribute"($P2268, $P2269)
.annotate 'line', 944
    .return ($P2270)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block2285"  :subid("154_1300232199.995") :outer("10_1300232199.995")
.annotate 'line', 961
    .const 'Sub' $P2508 = "164_1300232199.995" 
    capture_lex $P2508
    .const 'Sub' $P2288 = "155_1300232199.995" 
    capture_lex $P2288
    get_global $P2287, "$?CLASS"
.annotate 'line', 962
    .const 'Sub' $P2288 = "155_1300232199.995" 
    newclosure $P2506, $P2288
.annotate 'line', 961
    .return ($P2506)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "" :load :init :subid("post384") :outer("154_1300232199.995")
.annotate 'line', 961
    get_hll_global $P2286, ["RoleToRoleApplier"], "_block2285" 
    .local pmc block
    set block, $P2286
    .const 'Sub' $P2508 = "164_1300232199.995" 
    capture_lex $P2508
    $P2508()
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block2507"  :anon :subid("164_1300232199.995") :outer("154_1300232199.995")
.annotate 'line', 961
    nqp_get_sc_object $P2509, "1300232196.839", 7
    .local pmc type_obj
    set type_obj, $P2509
    set_global "$?CLASS", type_obj
    get_how $P2510, type_obj
    .const 'Sub' $P2511 = "155_1300232199.995" 
    $P2510."add_method"(type_obj, "apply", $P2511)
    get_how $P2512, type_obj
    $P2513 = $P2512."compose"(type_obj)
    .return ($P2513)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "apply"  :subid("155_1300232199.995") :outer("154_1300232199.995")
    .param pmc param_2291
    .param pmc param_2292
    .param pmc param_2293
.annotate 'line', 962
    .const 'Sub' $P2433 = "161_1300232199.995" 
    capture_lex $P2433
    .const 'Sub' $P2391 = "160_1300232199.995" 
    capture_lex $P2391
    .const 'Sub' $P2377 = "159_1300232199.995" 
    capture_lex $P2377
    .const 'Sub' $P2304 = "156_1300232199.995" 
    capture_lex $P2304
    new $P2290, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2290, control_2289
    push_eh $P2290
    .lex "self", param_2291
    .lex "$target", param_2292
    .lex "@roles", param_2293
.annotate 'line', 964
    $P2294 = root_new ['parrot';'Hash']
    .lex "%meth_info", $P2294
.annotate 'line', 990
    $P2295 = root_new ['parrot';'Hash']
    .lex "%target_meth_info", $P2295
.annotate 'line', 991
    $P2296 = root_new ['parrot';'ResizablePMCArray']
    .lex "@target_meths", $P2296
.annotate 'line', 1016
    $P2297 = root_new ['parrot';'ResizablePMCArray']
    .lex "@all_roles", $P2297
.annotate 'line', 962
    find_lex $P2298, "%meth_info"
.annotate 'line', 965
    find_lex $P2300, "@roles"
    defined $I2301, $P2300
    unless $I2301, for_undef_385
    iter $P2299, $P2300
    new $P2365, 'ExceptionHandler'
    set_label $P2365, loop2364_handler
    $P2365."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2365
  loop2364_test:
    unless $P2299, loop2364_done
    shift $P2302, $P2299
  loop2364_redo:
    .const 'Sub' $P2304 = "156_1300232199.995" 
    capture_lex $P2304
    $P2304($P2302)
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
  for_undef_385:
    find_lex $P2367, "%target_meth_info"
.annotate 'line', 991
    find_lex $P2368, "$target"
    get_how $P2369, $P2368
    find_lex $P2370, "$target"
    $P2371 = $P2369."methods"($P2370)
    store_lex "@target_meths", $P2371
.annotate 'line', 992
    find_lex $P2373, "@target_meths"
    defined $I2374, $P2373
    unless $I2374, for_undef_393
    iter $P2372, $P2373
    new $P2384, 'ExceptionHandler'
    set_label $P2384, loop2383_handler
    $P2384."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2384
  loop2383_test:
    unless $P2372, loop2383_done
    shift $P2375, $P2372
  loop2383_redo:
    .const 'Sub' $P2377 = "159_1300232199.995" 
    capture_lex $P2377
    $P2377($P2375)
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
  for_undef_393:
.annotate 'line', 997
    find_lex $P2387, "%meth_info"
    defined $I2388, $P2387
    unless $I2388, for_undef_395
    iter $P2386, $P2387
    new $P2425, 'ExceptionHandler'
    set_label $P2425, loop2424_handler
    $P2425."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2425
  loop2424_test:
    unless $P2386, loop2424_done
    shift $P2389, $P2386
  loop2424_redo:
    .const 'Sub' $P2391 = "160_1300232199.995" 
    capture_lex $P2391
    $P2391($P2389)
  loop2424_next:
    goto loop2424_test
  loop2424_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2426, exception, 'type'
    eq $P2426, .CONTROL_LOOP_NEXT, loop2424_next
    eq $P2426, .CONTROL_LOOP_REDO, loop2424_redo
  loop2424_done:
    pop_eh 
  for_undef_395:
    find_lex $P2427, "@all_roles"
.annotate 'line', 1017
    find_lex $P2429, "@roles"
    defined $I2430, $P2429
    unless $I2430, for_undef_402
    iter $P2428, $P2429
    new $P2501, 'ExceptionHandler'
    set_label $P2501, loop2500_handler
    $P2501."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2501
  loop2500_test:
    unless $P2428, loop2500_done
    shift $P2431, $P2428
  loop2500_redo:
    .const 'Sub' $P2433 = "161_1300232199.995" 
    capture_lex $P2433
    $P2433($P2431)
  loop2500_next:
    goto loop2500_test
  loop2500_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2502, exception, 'type'
    eq $P2502, .CONTROL_LOOP_NEXT, loop2500_next
    eq $P2502, .CONTROL_LOOP_REDO, loop2500_redo
  loop2500_done:
    pop_eh 
  for_undef_402:
.annotate 'line', 1046
    new $P2503, "Exception"
    set $P2503['type'], .CONTROL_RETURN
    find_lex $P2504, "@all_roles"
    setattribute $P2503, 'payload', $P2504
    throw $P2503
.annotate 'line', 962
    .return ()
  control_2289:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2505, exception, "payload"
    .return ($P2505)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block2303"  :anon :subid("156_1300232199.995") :outer("155_1300232199.995")
    .param pmc param_2306
.annotate 'line', 965
    .const 'Sub' $P2316 = "157_1300232199.995" 
    capture_lex $P2316
.annotate 'line', 966
    $P2305 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P2305
    .lex "$_", param_2306
    find_lex $P2307, "$_"
    get_how $P2308, $P2307
    find_lex $P2309, "$_"
    $P2310 = $P2308."methods"($P2309)
    store_lex "@methods", $P2310
.annotate 'line', 967
    find_lex $P2312, "@methods"
    defined $I2313, $P2312
    unless $I2313, for_undef_386
    iter $P2311, $P2312
    new $P2362, 'ExceptionHandler'
    set_label $P2362, loop2361_handler
    $P2362."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2362
  loop2361_test:
    unless $P2311, loop2361_done
    shift $P2314, $P2311
  loop2361_redo:
    .const 'Sub' $P2316 = "157_1300232199.995" 
    capture_lex $P2316
    $P2316($P2314)
  loop2361_next:
    goto loop2361_test
  loop2361_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2363, exception, 'type'
    eq $P2363, .CONTROL_LOOP_NEXT, loop2361_next
    eq $P2363, .CONTROL_LOOP_REDO, loop2361_redo
  loop2361_done:
    pop_eh 
  for_undef_386:
.annotate 'line', 965
    .return ($P2311)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block2315"  :anon :subid("157_1300232199.995") :outer("156_1300232199.995")
    .param pmc param_2321
.annotate 'line', 967
    .const 'Sub' $P2344 = "158_1300232199.995" 
    capture_lex $P2344
.annotate 'line', 968
    new $P2317, "Undef"
    .lex "$name", $P2317
.annotate 'line', 969
    new $P2318, "Undef"
    .lex "$meth", $P2318
.annotate 'line', 970
    $P2319 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meth_list", $P2319
.annotate 'line', 977
    new $P2320, "Undef"
    .lex "$found", $P2320
    .lex "$_", param_2321
.annotate 'line', 968
    find_lex $P2322, "$_"
    set $S2323, $P2322
    new $P2324, 'String'
    set $P2324, $S2323
    store_lex "$name", $P2324
.annotate 'line', 969
    find_lex $P2325, "$_"
    store_lex "$meth", $P2325
    find_lex $P2326, "@meth_list"
.annotate 'line', 971
    find_lex $P2328, "$name"
    find_lex $P2329, "%meth_info"
    unless_null $P2329, vivify_387
    $P2329 = root_new ['parrot';'Hash']
  vivify_387:
    set $P2330, $P2329[$P2328]
    unless_null $P2330, vivify_388
    new $P2330, "Undef"
  vivify_388:
    defined $I2331, $P2330
    if $I2331, if_2327
.annotate 'line', 975
    find_lex $P2335, "@meth_list"
    find_lex $P2336, "$name"
    find_lex $P2337, "%meth_info"
    unless_null $P2337, vivify_389
    $P2337 = root_new ['parrot';'Hash']
    store_lex "%meth_info", $P2337
  vivify_389:
    set $P2337[$P2336], $P2335
.annotate 'line', 974
    goto if_2327_end
  if_2327:
.annotate 'line', 972
    find_lex $P2332, "$name"
    find_lex $P2333, "%meth_info"
    unless_null $P2333, vivify_390
    $P2333 = root_new ['parrot';'Hash']
  vivify_390:
    set $P2334, $P2333[$P2332]
    unless_null $P2334, vivify_391
    new $P2334, "Undef"
  vivify_391:
    store_lex "@meth_list", $P2334
  if_2327_end:
.annotate 'line', 977
    new $P2338, "Integer"
    assign $P2338, 0
    store_lex "$found", $P2338
.annotate 'line', 978
    find_lex $P2340, "@meth_list"
    defined $I2341, $P2340
    unless $I2341, for_undef_392
    iter $P2339, $P2340
    new $P2353, 'ExceptionHandler'
    set_label $P2353, loop2352_handler
    $P2353."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2353
  loop2352_test:
    unless $P2339, loop2352_done
    shift $P2342, $P2339
  loop2352_redo:
    .const 'Sub' $P2344 = "158_1300232199.995" 
    capture_lex $P2344
    $P2344($P2342)
  loop2352_next:
    goto loop2352_test
  loop2352_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2354, exception, 'type'
    eq $P2354, .CONTROL_LOOP_NEXT, loop2352_next
    eq $P2354, .CONTROL_LOOP_REDO, loop2352_redo
  loop2352_done:
    pop_eh 
  for_undef_392:
.annotate 'line', 983
    find_lex $P2357, "$found"
    unless $P2357, unless_2356
    set $P2355, $P2357
    goto unless_2356_end
  unless_2356:
.annotate 'line', 984
    find_lex $P2358, "@meth_list"
    find_lex $P2359, "$meth"
    $P2360 = $P2358."push"($P2359)
.annotate 'line', 983
    set $P2355, $P2360
  unless_2356_end:
.annotate 'line', 967
    .return ($P2355)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block2343"  :anon :subid("158_1300232199.995") :outer("157_1300232199.995")
    .param pmc param_2345
.annotate 'line', 978
    .lex "$_", param_2345
.annotate 'line', 979
    find_lex $P2348, "$meth"
    find_lex $P2349, "$_"
    issame $I2350, $P2348, $P2349
    if $I2350, if_2347
    new $P2346, 'Integer'
    set $P2346, $I2350
    goto if_2347_end
  if_2347:
.annotate 'line', 980
    new $P2351, "Integer"
    assign $P2351, 1
    store_lex "$found", $P2351
.annotate 'line', 979
    set $P2346, $P2351
  if_2347_end:
.annotate 'line', 978
    .return ($P2346)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block2376"  :anon :subid("159_1300232199.995") :outer("155_1300232199.995")
    .param pmc param_2378
.annotate 'line', 992
    .lex "$_", param_2378
.annotate 'line', 993
    find_lex $P2379, "$_"
    find_lex $P2380, "$_"
    set $S2381, $P2380
    find_lex $P2382, "%target_meth_info"
    unless_null $P2382, vivify_394
    $P2382 = root_new ['parrot';'Hash']
    store_lex "%target_meth_info", $P2382
  vivify_394:
    set $P2382[$S2381], $P2379
.annotate 'line', 992
    .return ($P2379)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block2390"  :anon :subid("160_1300232199.995") :outer("155_1300232199.995")
    .param pmc param_2394
.annotate 'line', 998
    new $P2392, "Undef"
    .lex "$name", $P2392
.annotate 'line', 999
    $P2393 = root_new ['parrot';'ResizablePMCArray']
    .lex "@add_meths", $P2393
    .lex "$_", param_2394
.annotate 'line', 998
    find_lex $P2395, "$_"
    set $S2396, $P2395
    new $P2397, 'String'
    set $P2397, $S2396
    store_lex "$name", $P2397
.annotate 'line', 999
    find_lex $P2398, "$name"
    find_lex $P2399, "%meth_info"
    unless_null $P2399, vivify_396
    $P2399 = root_new ['parrot';'Hash']
  vivify_396:
    set $P2400, $P2399[$P2398]
    unless_null $P2400, vivify_397
    new $P2400, "Undef"
  vivify_397:
    store_lex "@add_meths", $P2400
.annotate 'line', 1003
    find_lex $P2403, "$name"
    find_lex $P2404, "%target_meth_info"
    unless_null $P2404, vivify_398
    $P2404 = root_new ['parrot';'Hash']
  vivify_398:
    set $P2405, $P2404[$P2403]
    unless_null $P2405, vivify_399
    new $P2405, "Undef"
  vivify_399:
    defined $I2406, $P2405
    unless $I2406, unless_2402
    new $P2401, 'Integer'
    set $P2401, $I2406
    goto unless_2402_end
  unless_2402:
.annotate 'line', 1005
    find_lex $P2409, "@add_meths"
    set $N2410, $P2409
    iseq $I2411, $N2410, 1.0
    if $I2411, if_2408
.annotate 'line', 1010
    find_lex $P2419, "$target"
    get_how $P2420, $P2419
    find_lex $P2421, "$target"
    find_lex $P2422, "$name"
    $P2423 = $P2420."add_collision"($P2421, $P2422)
.annotate 'line', 1008
    set $P2407, $P2423
.annotate 'line', 1005
    goto if_2408_end
  if_2408:
.annotate 'line', 1006
    find_lex $P2412, "$target"
    get_how $P2413, $P2412
    find_lex $P2414, "$target"
    find_lex $P2415, "$name"
    find_lex $P2416, "@add_meths"
    unless_null $P2416, vivify_400
    $P2416 = root_new ['parrot';'ResizablePMCArray']
  vivify_400:
    set $P2417, $P2416[0]
    unless_null $P2417, vivify_401
    new $P2417, "Undef"
  vivify_401:
    $P2418 = $P2413."add_method"($P2414, $P2415, $P2417)
.annotate 'line', 1005
    set $P2407, $P2418
  if_2408_end:
.annotate 'line', 1003
    set $P2401, $P2407
  unless_2402_end:
.annotate 'line', 997
    .return ($P2401)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block2432"  :anon :subid("161_1300232199.995") :outer("155_1300232199.995")
    .param pmc param_2436
.annotate 'line', 1017
    .const 'Sub' $P2447 = "162_1300232199.995" 
    capture_lex $P2447
.annotate 'line', 1018
    new $P2434, "Undef"
    .lex "$how", $P2434
.annotate 'line', 1021
    $P2435 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attributes", $P2435
    .lex "$_", param_2436
.annotate 'line', 1018
    find_lex $P2437, "$_"
    get_how $P2438, $P2437
    store_lex "$how", $P2438
.annotate 'line', 1021
    find_lex $P2439, "$how"
    find_lex $P2440, "$_"
    $P2441 = $P2439."attributes"($P2440)
    store_lex "@attributes", $P2441
.annotate 'line', 1022
    find_lex $P2443, "@attributes"
    defined $I2444, $P2443
    unless $I2444, for_undef_403
    iter $P2442, $P2443
    new $P2495, 'ExceptionHandler'
    set_label $P2495, loop2494_handler
    $P2495."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2495
  loop2494_test:
    unless $P2442, loop2494_done
    shift $P2445, $P2442
  loop2494_redo:
    .const 'Sub' $P2447 = "162_1300232199.995" 
    capture_lex $P2447
    $P2447($P2445)
  loop2494_next:
    goto loop2494_test
  loop2494_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2496, exception, 'type'
    eq $P2496, .CONTROL_LOOP_NEXT, loop2494_next
    eq $P2496, .CONTROL_LOOP_REDO, loop2494_redo
  loop2494_done:
    pop_eh 
  for_undef_403:
.annotate 'line', 1043
    find_lex $P2497, "@all_roles"
    find_lex $P2498, "$_"
    $P2499 = $P2497."push"($P2498)
.annotate 'line', 1017
    .return ($P2499)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block2446"  :anon :subid("162_1300232199.995") :outer("161_1300232199.995")
    .param pmc param_2451
.annotate 'line', 1022
    .const 'Sub' $P2463 = "163_1300232199.995" 
    capture_lex $P2463
.annotate 'line', 1023
    new $P2448, "Undef"
    .lex "$add_attr", $P2448
.annotate 'line', 1024
    new $P2449, "Undef"
    .lex "$skip", $P2449
.annotate 'line', 1025
    $P2450 = root_new ['parrot';'ResizablePMCArray']
    .lex "@cur_attrs", $P2450
    .lex "$_", param_2451
.annotate 'line', 1023
    find_lex $P2452, "$_"
    store_lex "$add_attr", $P2452
.annotate 'line', 1024
    new $P2453, "Integer"
    assign $P2453, 0
    store_lex "$skip", $P2453
.annotate 'line', 1025
    find_lex $P2454, "$target"
    get_how $P2455, $P2454
    find_lex $P2456, "$target"
    $P2457 = $P2455."attributes"($P2456)
    store_lex "@cur_attrs", $P2457
.annotate 'line', 1026
    find_lex $P2459, "@cur_attrs"
    defined $I2460, $P2459
    unless $I2460, for_undef_404
    iter $P2458, $P2459
    new $P2484, 'ExceptionHandler'
    set_label $P2484, loop2483_handler
    $P2484."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2484
  loop2483_test:
    unless $P2458, loop2483_done
    shift $P2461, $P2458
  loop2483_redo:
    .const 'Sub' $P2463 = "163_1300232199.995" 
    capture_lex $P2463
    $P2463($P2461)
  loop2483_next:
    goto loop2483_test
  loop2483_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2485, exception, 'type'
    eq $P2485, .CONTROL_LOOP_NEXT, loop2483_next
    eq $P2485, .CONTROL_LOOP_REDO, loop2483_redo
  loop2483_done:
    pop_eh 
  for_undef_404:
.annotate 'line', 1036
    find_lex $P2488, "$skip"
    unless $P2488, unless_2487
    set $P2486, $P2488
    goto unless_2487_end
  unless_2487:
.annotate 'line', 1037
    find_lex $P2489, "$target"
    get_how $P2490, $P2489
    find_lex $P2491, "$target"
    find_lex $P2492, "$add_attr"
    $P2493 = $P2490."add_attribute"($P2491, $P2492)
.annotate 'line', 1036
    set $P2486, $P2493
  unless_2487_end:
.annotate 'line', 1022
    .return ($P2486)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block2462"  :anon :subid("163_1300232199.995") :outer("162_1300232199.995")
    .param pmc param_2464
.annotate 'line', 1026
    .lex "$_", param_2464
.annotate 'line', 1027
    find_lex $P2467, "$_"
    find_lex $P2468, "$add_attr"
    issame $I2469, $P2467, $P2468
    if $I2469, if_2466
.annotate 'line', 1031
    find_lex $P2473, "$_"
    $S2474 = $P2473."name"()
    find_lex $P2475, "$add_attr"
    $S2476 = $P2475."name"()
    iseq $I2477, $S2474, $S2476
    if $I2477, if_2472
    new $P2471, 'Integer'
    set $P2471, $I2477
    goto if_2472_end
  if_2472:
.annotate 'line', 1032
    new $P2478, "String"
    assign $P2478, "Attribute '"
    find_lex $P2479, "$_"
    $S2480 = $P2479."name"()
    concat $P2481, $P2478, $S2480
    concat $P2482, $P2481, "' conflicts in role composition"
    die $P2482
  if_2472_end:
.annotate 'line', 1030
    set $P2465, $P2471
.annotate 'line', 1027
    goto if_2466_end
  if_2466:
.annotate 'line', 1028
    new $P2470, "Integer"
    assign $P2470, 1
    store_lex "$skip", $P2470
.annotate 'line', 1027
    set $P2465, $P2470
  if_2466_end:
.annotate 'line', 1026
    .return ($P2465)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "_block2514"  :subid("165_1300232199.995") :outer("10_1300232199.995")
.annotate 'line', 1051
    .const 'Sub' $P2576 = "174_1300232199.995" 
    capture_lex $P2576
    .const 'Sub' $P2568 = "173_1300232199.995" 
    capture_lex $P2568
    .const 'Sub' $P2562 = "172_1300232199.995" 
    capture_lex $P2562
    .const 'Sub' $P2558 = "171_1300232199.995" 
    capture_lex $P2558
    .const 'Sub' $P2553 = "170_1300232199.995" 
    capture_lex $P2553
    .const 'Sub' $P2548 = "169_1300232199.995" 
    capture_lex $P2548
    .const 'Sub' $P2534 = "168_1300232199.995" 
    capture_lex $P2534
    .const 'Sub' $P2527 = "167_1300232199.995" 
    capture_lex $P2527
    .const 'Sub' $P2517 = "166_1300232199.995" 
    capture_lex $P2517
    get_global $P2516, "$?CLASS"
.annotate 'line', 1090
    .const 'Sub' $P2568 = "173_1300232199.995" 
    newclosure $P2574, $P2568
.annotate 'line', 1051
    .return ($P2574)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "" :load :init :subid("post405") :outer("165_1300232199.995")
.annotate 'line', 1051
    get_hll_global $P2515, ["NQPModuleHOW"], "_block2514" 
    .local pmc block
    set block, $P2515
    .const 'Sub' $P2576 = "174_1300232199.995" 
    capture_lex $P2576
    $P2576()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "_block2575"  :anon :subid("174_1300232199.995") :outer("165_1300232199.995")
.annotate 'line', 1051
    nqp_get_sc_object $P2577, "1300232196.839", 8
    .local pmc type_obj
    set type_obj, $P2577
    set_global "$?CLASS", type_obj
    get_how $P2578, type_obj
    get_hll_global $P2579, "KnowHOWAttribute"
    $P2580 = $P2579."new"("$!name" :named("name"))
    $P2578."add_attribute"(type_obj, $P2580)
    get_how $P2581, type_obj
    get_hll_global $P2582, "KnowHOWAttribute"
    $P2583 = $P2582."new"("$!composed" :named("name"))
    $P2581."add_attribute"(type_obj, $P2583)
    get_how $P2584, type_obj
    .const 'Sub' $P2585 = "166_1300232199.995" 
    $P2584."add_method"(type_obj, "new", $P2585)
    get_how $P2586, type_obj
    .const 'Sub' $P2587 = "167_1300232199.995" 
    $P2586."add_method"(type_obj, "BUILD", $P2587)
    get_how $P2588, type_obj
    .const 'Sub' $P2589 = "168_1300232199.995" 
    $P2588."add_method"(type_obj, "new_type", $P2589)
    get_how $P2590, type_obj
    .const 'Sub' $P2591 = "169_1300232199.995" 
    $P2590."add_method"(type_obj, "add_method", $P2591)
    get_how $P2592, type_obj
    .const 'Sub' $P2593 = "170_1300232199.995" 
    $P2592."add_method"(type_obj, "add_multi_method", $P2593)
    get_how $P2594, type_obj
    .const 'Sub' $P2595 = "171_1300232199.995" 
    $P2594."add_method"(type_obj, "add_attribute", $P2595)
    get_how $P2596, type_obj
    .const 'Sub' $P2597 = "172_1300232199.995" 
    $P2596."add_method"(type_obj, "compose", $P2597)
    get_how $P2598, type_obj
    .const 'Sub' $P2599 = "173_1300232199.995" 
    $P2598."add_method"(type_obj, "name", $P2599)
    get_how $P2600, type_obj
    $P2601 = $P2600."compose"(type_obj)
    .return ($P2601)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "new"  :subid("166_1300232199.995") :outer("165_1300232199.995")
    .param pmc param_2518
    .param pmc param_2519 :optional :named("name")
    .param int has_param_2519 :opt_flag
.annotate 'line', 1055
    .lex "self", param_2518
    if has_param_2519, optparam_406
    new $P2520, "Undef"
    set param_2519, $P2520
  optparam_406:
    .lex "$name", param_2519
.annotate 'line', 1056
    new $P2521, "Undef"
    .lex "$obj", $P2521
    find_lex $P2522, "self"
    repr_instance_of $P2523, $P2522
    store_lex "$obj", $P2523
.annotate 'line', 1057
    find_lex $P2524, "$obj"
    find_lex $P2525, "$name"
    $P2524."BUILD"($P2525 :named("name"))
    find_lex $P2526, "$obj"
.annotate 'line', 1055
    .return ($P2526)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "BUILD"  :subid("167_1300232199.995") :outer("165_1300232199.995")
    .param pmc param_2528
    .param pmc param_2529 :optional :named("name")
    .param int has_param_2529 :opt_flag
.annotate 'line', 1061
    .lex "self", param_2528
    if has_param_2529, optparam_407
    new $P2530, "Undef"
    set param_2529, $P2530
  optparam_407:
    .lex "$name", param_2529
.annotate 'line', 1062
    find_lex $P2531, "$name"
    find_lex $P2532, "self"
    get_global $P2533, "$?CLASS"
    setattribute $P2532, $P2533, "$!name", $P2531
.annotate 'line', 1061
    .return ($P2531)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "new_type"  :subid("168_1300232199.995") :outer("165_1300232199.995")
    .param pmc param_2535
    .param pmc param_2536 :optional :named("name")
    .param int has_param_2536 :opt_flag
    .param pmc param_2538 :optional :named("repr")
    .param int has_param_2538 :opt_flag
.annotate 'line', 1067
    .lex "self", param_2535
    if has_param_2536, optparam_408
    new $P2537, "String"
    assign $P2537, "<anon>"
    set param_2536, $P2537
  optparam_408:
    .lex "$name", param_2536
    if has_param_2538, optparam_409
    new $P2539, "String"
    assign $P2539, "P6opaque"
    set param_2538, $P2539
  optparam_409:
    .lex "$repr", param_2538
.annotate 'line', 1068
    new $P2540, "Undef"
    .lex "$metaclass", $P2540
    find_lex $P2541, "self"
    find_lex $P2542, "$name"
    $P2543 = $P2541."new"($P2542 :named("name"))
    store_lex "$metaclass", $P2543
.annotate 'line', 1069
    find_lex $P2544, "$metaclass"
    find_lex $P2545, "$repr"
    set $S2546, $P2545
    repr_type_object_for $P2547, $P2544, $S2546
.annotate 'line', 1067
    .return ($P2547)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_method"  :subid("169_1300232199.995") :outer("165_1300232199.995")
    .param pmc param_2549
    .param pmc param_2550
    .param pmc param_2551
    .param pmc param_2552
.annotate 'line', 1072
    .lex "self", param_2549
    .lex "$obj", param_2550
    .lex "$name", param_2551
    .lex "$code_obj", param_2552
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_multi_method"  :subid("170_1300232199.995") :outer("165_1300232199.995")
    .param pmc param_2554
    .param pmc param_2555
    .param pmc param_2556
    .param pmc param_2557
.annotate 'line', 1078
    .lex "self", param_2554
    .lex "$obj", param_2555
    .lex "$name", param_2556
    .lex "$code_obj", param_2557
.annotate 'line', 1079
    die "Modules may not have methods"
.annotate 'line', 1078
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_attribute"  :subid("171_1300232199.995") :outer("165_1300232199.995")
    .param pmc param_2559
    .param pmc param_2560
    .param pmc param_2561
.annotate 'line', 1082
    .lex "self", param_2559
    .lex "$obj", param_2560
    .lex "$meta_attr", param_2561
.annotate 'line', 1083
    die "Modules may not have attributes"
.annotate 'line', 1082
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "compose"  :subid("172_1300232199.995") :outer("165_1300232199.995")
    .param pmc param_2563
    .param pmc param_2564
.annotate 'line', 1086
    .lex "self", param_2563
    .lex "$obj", param_2564
.annotate 'line', 1087
    new $P2565, "Integer"
    assign $P2565, 1
    find_lex $P2566, "self"
    get_global $P2567, "$?CLASS"
    setattribute $P2566, $P2567, "$!composed", $P2565
.annotate 'line', 1086
    .return ($P2565)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "name"  :subid("173_1300232199.995") :outer("165_1300232199.995")
    .param pmc param_2569
    .param pmc param_2570
.annotate 'line', 1090
    .lex "self", param_2569
    .lex "$obj", param_2570
    find_lex $P2571, "self"
    get_global $P2572, "$?CLASS"
    getattribute $P2573, $P2571, $P2572, "$!name"
    unless_null $P2573, vivify_410
    new $P2573, "Undef"
  vivify_410:
    .return ($P2573)
.end


.HLL "nqp"

.namespace []
.sub "_block2603" :load :anon :subid("175_1300232199.995")
.annotate 'line', 1
    .const 'Sub' $P2605 = "10_1300232199.995" 
    $P2606 = $P2605()
    .return ($P2606)
.end

