
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1303928979.9")
.annotate 'line', 0
    .const 'Sub' $P2535 = "172_1303928979.9" 
    capture_lex $P2535
    .const 'Sub' $P2451 = "162_1303928979.9" 
    capture_lex $P2451
    .const 'Sub' $P2248 = "147_1303928979.9" 
    capture_lex $P2248
    .const 'Sub' $P2165 = "137_1303928979.9" 
    capture_lex $P2165
    .const 'Sub' $P1115 = "80_1303928979.9" 
    capture_lex $P1115
    .const 'Sub' $P774 = "55_1303928979.9" 
    capture_lex $P774
    .const 'Sub' $P554 = "44_1303928979.9" 
    capture_lex $P554
    .const 'Sub' $P255 = "22_1303928979.9" 
    capture_lex $P255
    .const 'Sub' $P25 = "11_1303928979.9" 
    capture_lex $P25
.annotate 'line', 1
    .lex "GLOBALish", $P13
    .lex "$?PACKAGE", $P14
    .lex "RoleToRoleApplier", $P15
    .lex "NQPConcreteRoleHOW", $P16
    .lex "RoleToClassApplier", $P17
    .lex "NQPParametricRoleHOW", $P18
    .lex "NQPClassHOW", $P19
    .lex "NQPNativeHOW", $P20
    .lex "NQPAttribute", $P21
    .lex "NQPModuleHOW", $P22
    .lex "EXPORTHOW", $P23
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 7
    .const 'Sub' $P25 = "11_1303928979.9" 
    capture_lex $P25
    $P25()
.annotate 'line', 99
    .const 'Sub' $P255 = "22_1303928979.9" 
    capture_lex $P255
    $P255()
.annotate 'line', 244
    .const 'Sub' $P554 = "44_1303928979.9" 
    capture_lex $P554
    $P554()
.annotate 'line', 320
    .const 'Sub' $P774 = "55_1303928979.9" 
    capture_lex $P774
    $P774()
.annotate 'line', 495
    .const 'Sub' $P1115 = "80_1303928979.9" 
    capture_lex $P1115
    $P1115()
.annotate 'line', 933
    .const 'Sub' $P2165 = "137_1303928979.9" 
    capture_lex $P2165
    $P2165()
.annotate 'line', 979
    .const 'Sub' $P2248 = "147_1303928979.9" 
    capture_lex $P2248
    $P2248()
.annotate 'line', 1050
    .const 'Sub' $P2451 = "162_1303928979.9" 
    capture_lex $P2451
    $P2451()
.annotate 'line', 1099
    .const 'Sub' $P2535 = "172_1303928979.9" 
    capture_lex $P2535
    $P2567 = $P2535()
.annotate 'line', 1
    .return ($P2567)
    .const 'Sub' $P2569 = "174_1303928979.9" 
    .return ($P2569)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post175") :outer("10_1303928979.9")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1303928979.9" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P2573, "1303928976.25"
    isnull $I2574, $P2573
    if $I2574, if_2572
    .const 'Sub' $P2948 = "10_1303928979.9" 
    $P2949 = $P2948."get_lexinfo"()
    nqp_get_sc_object $P2950, "1303928976.25", 0
    $P2949."set_static_lexpad_value"("GLOBALish", $P2950)
    .const 'Sub' $P2951 = "10_1303928979.9" 
    $P2952 = $P2951."get_lexinfo"()
    $P2952."finish_static_lexpad"()
    .const 'Sub' $P2953 = "10_1303928979.9" 
    $P2954 = $P2953."get_lexinfo"()
    nqp_get_sc_object $P2955, "1303928976.25", 0
    $P2954."set_static_lexpad_value"("$?PACKAGE", $P2955)
    .const 'Sub' $P2956 = "10_1303928979.9" 
    $P2957 = $P2956."get_lexinfo"()
    $P2957."finish_static_lexpad"()
    .const 'Sub' $P2958 = "10_1303928979.9" 
    $P2959 = $P2958."get_lexinfo"()
    nqp_get_sc_object $P2960, "1303928976.25", 1
    $P2959."set_static_lexpad_value"("RoleToRoleApplier", $P2960)
    .const 'Sub' $P2961 = "10_1303928979.9" 
    $P2962 = $P2961."get_lexinfo"()
    $P2962."finish_static_lexpad"()
    .const 'Sub' $P2963 = "11_1303928979.9" 
    $P2964 = $P2963."get_lexinfo"()
    nqp_get_sc_object $P2965, "1303928976.25", 1
    $P2964."set_static_lexpad_value"("$?PACKAGE", $P2965)
    .const 'Sub' $P2966 = "11_1303928979.9" 
    $P2967 = $P2966."get_lexinfo"()
    $P2967."finish_static_lexpad"()
    .const 'Sub' $P2968 = "11_1303928979.9" 
    $P2969 = $P2968."get_lexinfo"()
    nqp_get_sc_object $P2970, "1303928976.25", 1
    $P2969."set_static_lexpad_value"("$?CLASS", $P2970)
    .const 'Sub' $P2971 = "11_1303928979.9" 
    $P2972 = $P2971."get_lexinfo"()
    $P2972."finish_static_lexpad"()
    .const 'Sub' $P2973 = "10_1303928979.9" 
    $P2974 = $P2973."get_lexinfo"()
    nqp_get_sc_object $P2975, "1303928976.25", 2
    $P2974."set_static_lexpad_value"("NQPConcreteRoleHOW", $P2975)
    .const 'Sub' $P2976 = "10_1303928979.9" 
    $P2977 = $P2976."get_lexinfo"()
    $P2977."finish_static_lexpad"()
    .const 'Sub' $P2978 = "22_1303928979.9" 
    $P2979 = $P2978."get_lexinfo"()
    nqp_get_sc_object $P2980, "1303928976.25", 2
    $P2979."set_static_lexpad_value"("$?PACKAGE", $P2980)
    .const 'Sub' $P2981 = "22_1303928979.9" 
    $P2982 = $P2981."get_lexinfo"()
    $P2982."finish_static_lexpad"()
    .const 'Sub' $P2983 = "22_1303928979.9" 
    $P2984 = $P2983."get_lexinfo"()
    nqp_get_sc_object $P2985, "1303928976.25", 2
    $P2984."set_static_lexpad_value"("$?CLASS", $P2985)
    .const 'Sub' $P2986 = "22_1303928979.9" 
    $P2987 = $P2986."get_lexinfo"()
    $P2987."finish_static_lexpad"()
    .const 'Sub' $P2988 = "10_1303928979.9" 
    $P2989 = $P2988."get_lexinfo"()
    nqp_get_sc_object $P2990, "1303928976.25", 3
    $P2989."set_static_lexpad_value"("RoleToClassApplier", $P2990)
    .const 'Sub' $P2991 = "10_1303928979.9" 
    $P2992 = $P2991."get_lexinfo"()
    $P2992."finish_static_lexpad"()
    .const 'Sub' $P2993 = "44_1303928979.9" 
    $P2994 = $P2993."get_lexinfo"()
    nqp_get_sc_object $P2995, "1303928976.25", 3
    $P2994."set_static_lexpad_value"("$?PACKAGE", $P2995)
    .const 'Sub' $P2996 = "44_1303928979.9" 
    $P2997 = $P2996."get_lexinfo"()
    $P2997."finish_static_lexpad"()
    .const 'Sub' $P2998 = "44_1303928979.9" 
    $P2999 = $P2998."get_lexinfo"()
    nqp_get_sc_object $P3000, "1303928976.25", 3
    $P2999."set_static_lexpad_value"("$?CLASS", $P3000)
    .const 'Sub' $P3001 = "44_1303928979.9" 
    $P3002 = $P3001."get_lexinfo"()
    $P3002."finish_static_lexpad"()
    .const 'Sub' $P3003 = "10_1303928979.9" 
    $P3004 = $P3003."get_lexinfo"()
    nqp_get_sc_object $P3005, "1303928976.25", 4
    $P3004."set_static_lexpad_value"("NQPParametricRoleHOW", $P3005)
    .const 'Sub' $P3006 = "10_1303928979.9" 
    $P3007 = $P3006."get_lexinfo"()
    $P3007."finish_static_lexpad"()
    .const 'Sub' $P3008 = "55_1303928979.9" 
    $P3009 = $P3008."get_lexinfo"()
    nqp_get_sc_object $P3010, "1303928976.25", 4
    $P3009."set_static_lexpad_value"("$?PACKAGE", $P3010)
    .const 'Sub' $P3011 = "55_1303928979.9" 
    $P3012 = $P3011."get_lexinfo"()
    $P3012."finish_static_lexpad"()
    .const 'Sub' $P3013 = "55_1303928979.9" 
    $P3014 = $P3013."get_lexinfo"()
    nqp_get_sc_object $P3015, "1303928976.25", 4
    $P3014."set_static_lexpad_value"("$?CLASS", $P3015)
    .const 'Sub' $P3016 = "55_1303928979.9" 
    $P3017 = $P3016."get_lexinfo"()
    $P3017."finish_static_lexpad"()
    .const 'Sub' $P3018 = "10_1303928979.9" 
    $P3019 = $P3018."get_lexinfo"()
    nqp_get_sc_object $P3020, "1303928976.25", 5
    $P3019."set_static_lexpad_value"("NQPClassHOW", $P3020)
    .const 'Sub' $P3021 = "10_1303928979.9" 
    $P3022 = $P3021."get_lexinfo"()
    $P3022."finish_static_lexpad"()
    .const 'Sub' $P3023 = "80_1303928979.9" 
    $P3024 = $P3023."get_lexinfo"()
    nqp_get_sc_object $P3025, "1303928976.25", 5
    $P3024."set_static_lexpad_value"("$?PACKAGE", $P3025)
    .const 'Sub' $P3026 = "80_1303928979.9" 
    $P3027 = $P3026."get_lexinfo"()
    $P3027."finish_static_lexpad"()
    .const 'Sub' $P3028 = "80_1303928979.9" 
    $P3029 = $P3028."get_lexinfo"()
    nqp_get_sc_object $P3030, "1303928976.25", 5
    $P3029."set_static_lexpad_value"("$?CLASS", $P3030)
    .const 'Sub' $P3031 = "80_1303928979.9" 
    $P3032 = $P3031."get_lexinfo"()
    $P3032."finish_static_lexpad"()
    .const 'Sub' $P3033 = "10_1303928979.9" 
    $P3034 = $P3033."get_lexinfo"()
    nqp_get_sc_object $P3035, "1303928976.25", 6
    $P3034."set_static_lexpad_value"("NQPNativeHOW", $P3035)
    .const 'Sub' $P3036 = "10_1303928979.9" 
    $P3037 = $P3036."get_lexinfo"()
    $P3037."finish_static_lexpad"()
    .const 'Sub' $P3038 = "137_1303928979.9" 
    $P3039 = $P3038."get_lexinfo"()
    nqp_get_sc_object $P3040, "1303928976.25", 6
    $P3039."set_static_lexpad_value"("$?PACKAGE", $P3040)
    .const 'Sub' $P3041 = "137_1303928979.9" 
    $P3042 = $P3041."get_lexinfo"()
    $P3042."finish_static_lexpad"()
    .const 'Sub' $P3043 = "137_1303928979.9" 
    $P3044 = $P3043."get_lexinfo"()
    nqp_get_sc_object $P3045, "1303928976.25", 6
    $P3044."set_static_lexpad_value"("$?CLASS", $P3045)
    .const 'Sub' $P3046 = "137_1303928979.9" 
    $P3047 = $P3046."get_lexinfo"()
    $P3047."finish_static_lexpad"()
    .const 'Sub' $P3048 = "10_1303928979.9" 
    $P3049 = $P3048."get_lexinfo"()
    nqp_get_sc_object $P3050, "1303928976.25", 7
    $P3049."set_static_lexpad_value"("NQPAttribute", $P3050)
    .const 'Sub' $P3051 = "10_1303928979.9" 
    $P3052 = $P3051."get_lexinfo"()
    $P3052."finish_static_lexpad"()
    .const 'Sub' $P3053 = "147_1303928979.9" 
    $P3054 = $P3053."get_lexinfo"()
    nqp_get_sc_object $P3055, "1303928976.25", 7
    $P3054."set_static_lexpad_value"("$?PACKAGE", $P3055)
    .const 'Sub' $P3056 = "147_1303928979.9" 
    $P3057 = $P3056."get_lexinfo"()
    $P3057."finish_static_lexpad"()
    .const 'Sub' $P3058 = "147_1303928979.9" 
    $P3059 = $P3058."get_lexinfo"()
    nqp_get_sc_object $P3060, "1303928976.25", 7
    $P3059."set_static_lexpad_value"("$?CLASS", $P3060)
    .const 'Sub' $P3061 = "147_1303928979.9" 
    $P3062 = $P3061."get_lexinfo"()
    $P3062."finish_static_lexpad"()
    .const 'Sub' $P3063 = "10_1303928979.9" 
    $P3064 = $P3063."get_lexinfo"()
    nqp_get_sc_object $P3065, "1303928976.25", 8
    $P3064."set_static_lexpad_value"("NQPModuleHOW", $P3065)
    .const 'Sub' $P3066 = "10_1303928979.9" 
    $P3067 = $P3066."get_lexinfo"()
    $P3067."finish_static_lexpad"()
    .const 'Sub' $P3068 = "162_1303928979.9" 
    $P3069 = $P3068."get_lexinfo"()
    nqp_get_sc_object $P3070, "1303928976.25", 8
    $P3069."set_static_lexpad_value"("$?PACKAGE", $P3070)
    .const 'Sub' $P3071 = "162_1303928979.9" 
    $P3072 = $P3071."get_lexinfo"()
    $P3072."finish_static_lexpad"()
    .const 'Sub' $P3073 = "162_1303928979.9" 
    $P3074 = $P3073."get_lexinfo"()
    nqp_get_sc_object $P3075, "1303928976.25", 8
    $P3074."set_static_lexpad_value"("$?CLASS", $P3075)
    .const 'Sub' $P3076 = "162_1303928979.9" 
    $P3077 = $P3076."get_lexinfo"()
    $P3077."finish_static_lexpad"()
    .const 'Sub' $P3078 = "10_1303928979.9" 
    $P3079 = $P3078."get_lexinfo"()
    nqp_get_sc_object $P3080, "1303928976.25", 9
    $P3079."set_static_lexpad_value"("EXPORTHOW", $P3080)
    .const 'Sub' $P3081 = "10_1303928979.9" 
    $P3082 = $P3081."get_lexinfo"()
    $P3082."finish_static_lexpad"()
    .const 'Sub' $P3083 = "172_1303928979.9" 
    $P3084 = $P3083."get_lexinfo"()
    nqp_get_sc_object $P3085, "1303928976.25", 9
    $P3084."set_static_lexpad_value"("$?PACKAGE", $P3085)
    .const 'Sub' $P3086 = "172_1303928979.9" 
    $P3087 = $P3086."get_lexinfo"()
    $P3087."finish_static_lexpad"()
    .const 'Sub' $P3088 = "172_1303928979.9" 
    $P3089 = $P3088."get_lexinfo"()
    nqp_get_sc_object $P3090, "1303928976.25", 9
    $P3089."set_static_lexpad_value"("$?CLASS", $P3090)
    .const 'Sub' $P3091 = "172_1303928979.9" 
    $P3092 = $P3091."get_lexinfo"()
    $P3092."finish_static_lexpad"()
    goto if_2572_end
  if_2572:
    nqp_dynop_setup 
    getinterp $P2575
    get_class $P2576, "LexPad"
    get_class $P2577, "NQPLexPad"
    $P2575."hll_map"($P2576, $P2577)
    nqp_create_sc $P2578, "1303928976.25"
    .local pmc cur_sc
    set cur_sc, $P2578
    nqp_get_sc_object $P2579, "__6MODEL_CORE__", 0
    $P2580 = $P2579."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P2580, cur_sc
    nqp_set_sc_object "1303928976.25", 0, $P2580
    .const 'Sub' $P2581 = "10_1303928979.9" 
    $P2582 = $P2581."get_lexinfo"()
    nqp_get_sc_object $P2583, "1303928976.25", 0
    $P2582."set_static_lexpad_value"("GLOBALish", $P2583)
    .const 'Sub' $P2584 = "10_1303928979.9" 
    $P2585 = $P2584."get_lexinfo"()
    $P2585."finish_static_lexpad"()
    .const 'Sub' $P2586 = "10_1303928979.9" 
    $P2587 = $P2586."get_lexinfo"()
    nqp_get_sc_object $P2588, "1303928976.25", 0
    $P2587."set_static_lexpad_value"("$?PACKAGE", $P2588)
    .const 'Sub' $P2589 = "10_1303928979.9" 
    $P2590 = $P2589."get_lexinfo"()
    $P2590."finish_static_lexpad"()
    nqp_get_sc_object $P2591, "__6MODEL_CORE__", 0
    $P2592 = $P2591."new_type"("RoleToRoleApplier" :named("name"))
    nqp_set_sc_for_object $P2592, cur_sc
    nqp_set_sc_object "1303928976.25", 1, $P2592
    nqp_get_sc_object $P2593, "1303928976.25", 1
    nqp_get_sc_object $P2594, "1303928976.25", 0
    get_who $P2595, $P2594
    set $P2595["RoleToRoleApplier"], $P2593
    .const 'Sub' $P2596 = "10_1303928979.9" 
    $P2597 = $P2596."get_lexinfo"()
    nqp_get_sc_object $P2598, "1303928976.25", 1
    $P2597."set_static_lexpad_value"("RoleToRoleApplier", $P2598)
    .const 'Sub' $P2599 = "10_1303928979.9" 
    $P2600 = $P2599."get_lexinfo"()
    $P2600."finish_static_lexpad"()
    .const 'Sub' $P2601 = "11_1303928979.9" 
    $P2602 = $P2601."get_lexinfo"()
    nqp_get_sc_object $P2603, "1303928976.25", 1
    $P2602."set_static_lexpad_value"("$?PACKAGE", $P2603)
    .const 'Sub' $P2604 = "11_1303928979.9" 
    $P2605 = $P2604."get_lexinfo"()
    $P2605."finish_static_lexpad"()
    .const 'Sub' $P2606 = "11_1303928979.9" 
    $P2607 = $P2606."get_lexinfo"()
    nqp_get_sc_object $P2608, "1303928976.25", 1
    $P2607."set_static_lexpad_value"("$?CLASS", $P2608)
    .const 'Sub' $P2609 = "11_1303928979.9" 
    $P2610 = $P2609."get_lexinfo"()
    $P2610."finish_static_lexpad"()
    nqp_get_sc_object $P2611, "__6MODEL_CORE__", 0
    $P2612 = $P2611."new_type"("NQPConcreteRoleHOW" :named("name"))
    nqp_set_sc_for_object $P2612, cur_sc
    nqp_set_sc_object "1303928976.25", 2, $P2612
    nqp_get_sc_object $P2613, "1303928976.25", 2
    nqp_get_sc_object $P2614, "1303928976.25", 0
    get_who $P2615, $P2614
    set $P2615["NQPConcreteRoleHOW"], $P2613
    .const 'Sub' $P2616 = "10_1303928979.9" 
    $P2617 = $P2616."get_lexinfo"()
    nqp_get_sc_object $P2618, "1303928976.25", 2
    $P2617."set_static_lexpad_value"("NQPConcreteRoleHOW", $P2618)
    .const 'Sub' $P2619 = "10_1303928979.9" 
    $P2620 = $P2619."get_lexinfo"()
    $P2620."finish_static_lexpad"()
    nqp_get_sc_object $P2621, "1303928976.25", 2
    get_how $P2622, $P2621
    nqp_get_sc_object $P2623, "1303928976.25", 2
    nqp_get_sc_object $P2624, "__6MODEL_CORE__", 2
    $P2625 = $P2624."new"("$!name" :named("name"))
    $P2622."add_attribute"($P2623, $P2625)
    nqp_get_sc_object $P2626, "1303928976.25", 2
    get_how $P2627, $P2626
    nqp_get_sc_object $P2628, "1303928976.25", 2
    nqp_get_sc_object $P2629, "__6MODEL_CORE__", 2
    $P2630 = $P2629."new"("$!instance_of" :named("name"))
    $P2627."add_attribute"($P2628, $P2630)
    nqp_get_sc_object $P2631, "1303928976.25", 2
    get_how $P2632, $P2631
    nqp_get_sc_object $P2633, "1303928976.25", 2
    nqp_get_sc_object $P2634, "__6MODEL_CORE__", 2
    $P2635 = $P2634."new"("%!attributes" :named("name"))
    $P2632."add_attribute"($P2633, $P2635)
    nqp_get_sc_object $P2636, "1303928976.25", 2
    get_how $P2637, $P2636
    nqp_get_sc_object $P2638, "1303928976.25", 2
    nqp_get_sc_object $P2639, "__6MODEL_CORE__", 2
    $P2640 = $P2639."new"("%!methods" :named("name"))
    $P2637."add_attribute"($P2638, $P2640)
    nqp_get_sc_object $P2641, "1303928976.25", 2
    get_how $P2642, $P2641
    nqp_get_sc_object $P2643, "1303928976.25", 2
    nqp_get_sc_object $P2644, "__6MODEL_CORE__", 2
    $P2645 = $P2644."new"("@!multi_methods_to_incorporate" :named("name"))
    $P2642."add_attribute"($P2643, $P2645)
    nqp_get_sc_object $P2646, "1303928976.25", 2
    get_how $P2647, $P2646
    nqp_get_sc_object $P2648, "1303928976.25", 2
    nqp_get_sc_object $P2649, "__6MODEL_CORE__", 2
    $P2650 = $P2649."new"("@!collisions" :named("name"))
    $P2647."add_attribute"($P2648, $P2650)
    nqp_get_sc_object $P2651, "1303928976.25", 2
    get_how $P2652, $P2651
    nqp_get_sc_object $P2653, "1303928976.25", 2
    nqp_get_sc_object $P2654, "__6MODEL_CORE__", 2
    $P2655 = $P2654."new"("@!roles" :named("name"))
    $P2652."add_attribute"($P2653, $P2655)
    nqp_get_sc_object $P2656, "1303928976.25", 2
    get_how $P2657, $P2656
    nqp_get_sc_object $P2658, "1303928976.25", 2
    nqp_get_sc_object $P2659, "__6MODEL_CORE__", 2
    $P2660 = $P2659."new"("@!done" :named("name"))
    $P2657."add_attribute"($P2658, $P2660)
    nqp_get_sc_object $P2661, "1303928976.25", 2
    get_how $P2662, $P2661
    nqp_get_sc_object $P2663, "1303928976.25", 2
    nqp_get_sc_object $P2664, "__6MODEL_CORE__", 2
    $P2665 = $P2664."new"("$!composed" :named("name"))
    $P2662."add_attribute"($P2663, $P2665)
    .const 'Sub' $P2666 = "22_1303928979.9" 
    $P2667 = $P2666."get_lexinfo"()
    nqp_get_sc_object $P2668, "1303928976.25", 2
    $P2667."set_static_lexpad_value"("$?PACKAGE", $P2668)
    .const 'Sub' $P2669 = "22_1303928979.9" 
    $P2670 = $P2669."get_lexinfo"()
    $P2670."finish_static_lexpad"()
    .const 'Sub' $P2671 = "22_1303928979.9" 
    $P2672 = $P2671."get_lexinfo"()
    nqp_get_sc_object $P2673, "1303928976.25", 2
    $P2672."set_static_lexpad_value"("$?CLASS", $P2673)
    .const 'Sub' $P2674 = "22_1303928979.9" 
    $P2675 = $P2674."get_lexinfo"()
    $P2675."finish_static_lexpad"()
    nqp_get_sc_object $P2676, "__6MODEL_CORE__", 0
    $P2677 = $P2676."new_type"("RoleToClassApplier" :named("name"))
    nqp_set_sc_for_object $P2677, cur_sc
    nqp_set_sc_object "1303928976.25", 3, $P2677
    nqp_get_sc_object $P2678, "1303928976.25", 3
    nqp_get_sc_object $P2679, "1303928976.25", 0
    get_who $P2680, $P2679
    set $P2680["RoleToClassApplier"], $P2678
    .const 'Sub' $P2681 = "10_1303928979.9" 
    $P2682 = $P2681."get_lexinfo"()
    nqp_get_sc_object $P2683, "1303928976.25", 3
    $P2682."set_static_lexpad_value"("RoleToClassApplier", $P2683)
    .const 'Sub' $P2684 = "10_1303928979.9" 
    $P2685 = $P2684."get_lexinfo"()
    $P2685."finish_static_lexpad"()
    .const 'Sub' $P2686 = "44_1303928979.9" 
    $P2687 = $P2686."get_lexinfo"()
    nqp_get_sc_object $P2688, "1303928976.25", 3
    $P2687."set_static_lexpad_value"("$?PACKAGE", $P2688)
    .const 'Sub' $P2689 = "44_1303928979.9" 
    $P2690 = $P2689."get_lexinfo"()
    $P2690."finish_static_lexpad"()
    .const 'Sub' $P2691 = "44_1303928979.9" 
    $P2692 = $P2691."get_lexinfo"()
    nqp_get_sc_object $P2693, "1303928976.25", 3
    $P2692."set_static_lexpad_value"("$?CLASS", $P2693)
    .const 'Sub' $P2694 = "44_1303928979.9" 
    $P2695 = $P2694."get_lexinfo"()
    $P2695."finish_static_lexpad"()
    nqp_get_sc_object $P2696, "__6MODEL_CORE__", 0
    $P2697 = $P2696."new_type"("NQPParametricRoleHOW" :named("name"))
    nqp_set_sc_for_object $P2697, cur_sc
    nqp_set_sc_object "1303928976.25", 4, $P2697
    nqp_get_sc_object $P2698, "1303928976.25", 4
    nqp_get_sc_object $P2699, "1303928976.25", 0
    get_who $P2700, $P2699
    set $P2700["NQPParametricRoleHOW"], $P2698
    .const 'Sub' $P2701 = "10_1303928979.9" 
    $P2702 = $P2701."get_lexinfo"()
    nqp_get_sc_object $P2703, "1303928976.25", 4
    $P2702."set_static_lexpad_value"("NQPParametricRoleHOW", $P2703)
    .const 'Sub' $P2704 = "10_1303928979.9" 
    $P2705 = $P2704."get_lexinfo"()
    $P2705."finish_static_lexpad"()
    nqp_get_sc_object $P2706, "1303928976.25", 4
    get_how $P2707, $P2706
    nqp_get_sc_object $P2708, "1303928976.25", 4
    nqp_get_sc_object $P2709, "__6MODEL_CORE__", 2
    $P2710 = $P2709."new"("$!name" :named("name"))
    $P2707."add_attribute"($P2708, $P2710)
    nqp_get_sc_object $P2711, "1303928976.25", 4
    get_how $P2712, $P2711
    nqp_get_sc_object $P2713, "1303928976.25", 4
    nqp_get_sc_object $P2714, "__6MODEL_CORE__", 2
    $P2715 = $P2714."new"("%!attributes" :named("name"))
    $P2712."add_attribute"($P2713, $P2715)
    nqp_get_sc_object $P2716, "1303928976.25", 4
    get_how $P2717, $P2716
    nqp_get_sc_object $P2718, "1303928976.25", 4
    nqp_get_sc_object $P2719, "__6MODEL_CORE__", 2
    $P2720 = $P2719."new"("%!methods" :named("name"))
    $P2717."add_attribute"($P2718, $P2720)
    nqp_get_sc_object $P2721, "1303928976.25", 4
    get_how $P2722, $P2721
    nqp_get_sc_object $P2723, "1303928976.25", 4
    nqp_get_sc_object $P2724, "__6MODEL_CORE__", 2
    $P2725 = $P2724."new"("@!multi_methods_to_incorporate" :named("name"))
    $P2722."add_attribute"($P2723, $P2725)
    nqp_get_sc_object $P2726, "1303928976.25", 4
    get_how $P2727, $P2726
    nqp_get_sc_object $P2728, "1303928976.25", 4
    nqp_get_sc_object $P2729, "__6MODEL_CORE__", 2
    $P2730 = $P2729."new"("@!roles" :named("name"))
    $P2727."add_attribute"($P2728, $P2730)
    nqp_get_sc_object $P2731, "1303928976.25", 4
    get_how $P2732, $P2731
    nqp_get_sc_object $P2733, "1303928976.25", 4
    nqp_get_sc_object $P2734, "__6MODEL_CORE__", 2
    $P2735 = $P2734."new"("$!composed" :named("name"))
    $P2732."add_attribute"($P2733, $P2735)
    nqp_get_sc_object $P2736, "1303928976.25", 4
    get_how $P2737, $P2736
    nqp_get_sc_object $P2738, "1303928976.25", 4
    nqp_get_sc_object $P2739, "__6MODEL_CORE__", 2
    $P2740 = $P2739."new"("$!body_block" :named("name"))
    $P2737."add_attribute"($P2738, $P2740)
    .const 'Sub' $P2741 = "55_1303928979.9" 
    $P2742 = $P2741."get_lexinfo"()
    nqp_get_sc_object $P2743, "1303928976.25", 4
    $P2742."set_static_lexpad_value"("$?PACKAGE", $P2743)
    .const 'Sub' $P2744 = "55_1303928979.9" 
    $P2745 = $P2744."get_lexinfo"()
    $P2745."finish_static_lexpad"()
    .const 'Sub' $P2746 = "55_1303928979.9" 
    $P2747 = $P2746."get_lexinfo"()
    nqp_get_sc_object $P2748, "1303928976.25", 4
    $P2747."set_static_lexpad_value"("$?CLASS", $P2748)
    .const 'Sub' $P2749 = "55_1303928979.9" 
    $P2750 = $P2749."get_lexinfo"()
    $P2750."finish_static_lexpad"()
    nqp_get_sc_object $P2751, "__6MODEL_CORE__", 0
    $P2752 = $P2751."new_type"("NQPClassHOW" :named("name"))
    nqp_set_sc_for_object $P2752, cur_sc
    nqp_set_sc_object "1303928976.25", 5, $P2752
    nqp_get_sc_object $P2753, "1303928976.25", 5
    nqp_get_sc_object $P2754, "1303928976.25", 0
    get_who $P2755, $P2754
    set $P2755["NQPClassHOW"], $P2753
    .const 'Sub' $P2756 = "10_1303928979.9" 
    $P2757 = $P2756."get_lexinfo"()
    nqp_get_sc_object $P2758, "1303928976.25", 5
    $P2757."set_static_lexpad_value"("NQPClassHOW", $P2758)
    .const 'Sub' $P2759 = "10_1303928979.9" 
    $P2760 = $P2759."get_lexinfo"()
    $P2760."finish_static_lexpad"()
    nqp_get_sc_object $P2761, "1303928976.25", 5
    get_how $P2762, $P2761
    nqp_get_sc_object $P2763, "1303928976.25", 5
    nqp_get_sc_object $P2764, "__6MODEL_CORE__", 2
    $P2765 = $P2764."new"("$!name" :named("name"))
    $P2762."add_attribute"($P2763, $P2765)
    nqp_get_sc_object $P2766, "1303928976.25", 5
    get_how $P2767, $P2766
    nqp_get_sc_object $P2768, "1303928976.25", 5
    nqp_get_sc_object $P2769, "__6MODEL_CORE__", 2
    $P2770 = $P2769."new"("%!attributes" :named("name"))
    $P2767."add_attribute"($P2768, $P2770)
    nqp_get_sc_object $P2771, "1303928976.25", 5
    get_how $P2772, $P2771
    nqp_get_sc_object $P2773, "1303928976.25", 5
    nqp_get_sc_object $P2774, "__6MODEL_CORE__", 2
    $P2775 = $P2774."new"("%!methods" :named("name"))
    $P2772."add_attribute"($P2773, $P2775)
    nqp_get_sc_object $P2776, "1303928976.25", 5
    get_how $P2777, $P2776
    nqp_get_sc_object $P2778, "1303928976.25", 5
    nqp_get_sc_object $P2779, "__6MODEL_CORE__", 2
    $P2780 = $P2779."new"("@!multi_methods_to_incorporate" :named("name"))
    $P2777."add_attribute"($P2778, $P2780)
    nqp_get_sc_object $P2781, "1303928976.25", 5
    get_how $P2782, $P2781
    nqp_get_sc_object $P2783, "1303928976.25", 5
    nqp_get_sc_object $P2784, "__6MODEL_CORE__", 2
    $P2785 = $P2784."new"("@!parents" :named("name"))
    $P2782."add_attribute"($P2783, $P2785)
    nqp_get_sc_object $P2786, "1303928976.25", 5
    get_how $P2787, $P2786
    nqp_get_sc_object $P2788, "1303928976.25", 5
    nqp_get_sc_object $P2789, "__6MODEL_CORE__", 2
    $P2790 = $P2789."new"("@!roles" :named("name"))
    $P2787."add_attribute"($P2788, $P2790)
    nqp_get_sc_object $P2791, "1303928976.25", 5
    get_how $P2792, $P2791
    nqp_get_sc_object $P2793, "1303928976.25", 5
    nqp_get_sc_object $P2794, "__6MODEL_CORE__", 2
    $P2795 = $P2794."new"("$!default_parent" :named("name"))
    $P2792."add_attribute"($P2793, $P2795)
    nqp_get_sc_object $P2796, "1303928976.25", 5
    get_how $P2797, $P2796
    nqp_get_sc_object $P2798, "1303928976.25", 5
    nqp_get_sc_object $P2799, "__6MODEL_CORE__", 2
    $P2800 = $P2799."new"("@!vtable" :named("name"))
    $P2797."add_attribute"($P2798, $P2800)
    nqp_get_sc_object $P2801, "1303928976.25", 5
    get_how $P2802, $P2801
    nqp_get_sc_object $P2803, "1303928976.25", 5
    nqp_get_sc_object $P2804, "__6MODEL_CORE__", 2
    $P2805 = $P2804."new"("%!method-vtable-slots" :named("name"))
    $P2802."add_attribute"($P2803, $P2805)
    nqp_get_sc_object $P2806, "1303928976.25", 5
    get_how $P2807, $P2806
    nqp_get_sc_object $P2808, "1303928976.25", 5
    nqp_get_sc_object $P2809, "__6MODEL_CORE__", 2
    $P2810 = $P2809."new"("$!composed" :named("name"))
    $P2807."add_attribute"($P2808, $P2810)
    nqp_get_sc_object $P2811, "1303928976.25", 5
    get_how $P2812, $P2811
    nqp_get_sc_object $P2813, "1303928976.25", 5
    nqp_get_sc_object $P2814, "__6MODEL_CORE__", 2
    $P2815 = $P2814."new"("@!mro" :named("name"))
    $P2812."add_attribute"($P2813, $P2815)
    nqp_get_sc_object $P2816, "1303928976.25", 5
    get_how $P2817, $P2816
    nqp_get_sc_object $P2818, "1303928976.25", 5
    nqp_get_sc_object $P2819, "__6MODEL_CORE__", 2
    $P2820 = $P2819."new"("@!done" :named("name"))
    $P2817."add_attribute"($P2818, $P2820)
    nqp_get_sc_object $P2821, "1303928976.25", 5
    get_how $P2822, $P2821
    nqp_get_sc_object $P2823, "1303928976.25", 5
    nqp_get_sc_object $P2824, "__6MODEL_CORE__", 2
    $P2825 = $P2824."new"("%!parrot_vtable_mapping" :named("name"))
    $P2822."add_attribute"($P2823, $P2825)
    .const 'Sub' $P2826 = "80_1303928979.9" 
    $P2827 = $P2826."get_lexinfo"()
    nqp_get_sc_object $P2828, "1303928976.25", 5
    $P2827."set_static_lexpad_value"("$?PACKAGE", $P2828)
    .const 'Sub' $P2829 = "80_1303928979.9" 
    $P2830 = $P2829."get_lexinfo"()
    $P2830."finish_static_lexpad"()
    .const 'Sub' $P2831 = "80_1303928979.9" 
    $P2832 = $P2831."get_lexinfo"()
    nqp_get_sc_object $P2833, "1303928976.25", 5
    $P2832."set_static_lexpad_value"("$?CLASS", $P2833)
    .const 'Sub' $P2834 = "80_1303928979.9" 
    $P2835 = $P2834."get_lexinfo"()
    $P2835."finish_static_lexpad"()
    nqp_get_sc_object $P2836, "__6MODEL_CORE__", 0
    $P2837 = $P2836."new_type"("NQPNativeHOW" :named("name"))
    nqp_set_sc_for_object $P2837, cur_sc
    nqp_set_sc_object "1303928976.25", 6, $P2837
    nqp_get_sc_object $P2838, "1303928976.25", 6
    nqp_get_sc_object $P2839, "1303928976.25", 0
    get_who $P2840, $P2839
    set $P2840["NQPNativeHOW"], $P2838
    .const 'Sub' $P2841 = "10_1303928979.9" 
    $P2842 = $P2841."get_lexinfo"()
    nqp_get_sc_object $P2843, "1303928976.25", 6
    $P2842."set_static_lexpad_value"("NQPNativeHOW", $P2843)
    .const 'Sub' $P2844 = "10_1303928979.9" 
    $P2845 = $P2844."get_lexinfo"()
    $P2845."finish_static_lexpad"()
    nqp_get_sc_object $P2846, "1303928976.25", 6
    get_how $P2847, $P2846
    nqp_get_sc_object $P2848, "1303928976.25", 6
    nqp_get_sc_object $P2849, "__6MODEL_CORE__", 2
    $P2850 = $P2849."new"("$!name" :named("name"))
    $P2847."add_attribute"($P2848, $P2850)
    nqp_get_sc_object $P2851, "1303928976.25", 6
    get_how $P2852, $P2851
    nqp_get_sc_object $P2853, "1303928976.25", 6
    nqp_get_sc_object $P2854, "__6MODEL_CORE__", 2
    $P2855 = $P2854."new"("$!composed" :named("name"))
    $P2852."add_attribute"($P2853, $P2855)
    .const 'Sub' $P2856 = "137_1303928979.9" 
    $P2857 = $P2856."get_lexinfo"()
    nqp_get_sc_object $P2858, "1303928976.25", 6
    $P2857."set_static_lexpad_value"("$?PACKAGE", $P2858)
    .const 'Sub' $P2859 = "137_1303928979.9" 
    $P2860 = $P2859."get_lexinfo"()
    $P2860."finish_static_lexpad"()
    .const 'Sub' $P2861 = "137_1303928979.9" 
    $P2862 = $P2861."get_lexinfo"()
    nqp_get_sc_object $P2863, "1303928976.25", 6
    $P2862."set_static_lexpad_value"("$?CLASS", $P2863)
    .const 'Sub' $P2864 = "137_1303928979.9" 
    $P2865 = $P2864."get_lexinfo"()
    $P2865."finish_static_lexpad"()
    nqp_get_sc_object $P2866, "__6MODEL_CORE__", 0
    $P2867 = $P2866."new_type"("NQPAttribute" :named("name"))
    nqp_set_sc_for_object $P2867, cur_sc
    nqp_set_sc_object "1303928976.25", 7, $P2867
    nqp_get_sc_object $P2868, "1303928976.25", 7
    nqp_get_sc_object $P2869, "1303928976.25", 0
    get_who $P2870, $P2869
    set $P2870["NQPAttribute"], $P2868
    .const 'Sub' $P2871 = "10_1303928979.9" 
    $P2872 = $P2871."get_lexinfo"()
    nqp_get_sc_object $P2873, "1303928976.25", 7
    $P2872."set_static_lexpad_value"("NQPAttribute", $P2873)
    .const 'Sub' $P2874 = "10_1303928979.9" 
    $P2875 = $P2874."get_lexinfo"()
    $P2875."finish_static_lexpad"()
    nqp_get_sc_object $P2876, "1303928976.25", 7
    get_how $P2877, $P2876
    nqp_get_sc_object $P2878, "1303928976.25", 7
    nqp_get_sc_object $P2879, "__6MODEL_CORE__", 2
    $P2880 = $P2879."new"("$!name" :named("name"))
    $P2877."add_attribute"($P2878, $P2880)
    nqp_get_sc_object $P2881, "1303928976.25", 7
    get_how $P2882, $P2881
    nqp_get_sc_object $P2883, "1303928976.25", 7
    nqp_get_sc_object $P2884, "__6MODEL_CORE__", 2
    $P2885 = $P2884."new"("$!type" :named("name"))
    $P2882."add_attribute"($P2883, $P2885)
    nqp_get_sc_object $P2886, "1303928976.25", 7
    get_how $P2887, $P2886
    nqp_get_sc_object $P2888, "1303928976.25", 7
    nqp_get_sc_object $P2889, "__6MODEL_CORE__", 2
    $P2890 = $P2889."new"("$!box_target" :named("name"))
    $P2887."add_attribute"($P2888, $P2890)
    .const 'Sub' $P2891 = "147_1303928979.9" 
    $P2892 = $P2891."get_lexinfo"()
    nqp_get_sc_object $P2893, "1303928976.25", 7
    $P2892."set_static_lexpad_value"("$?PACKAGE", $P2893)
    .const 'Sub' $P2894 = "147_1303928979.9" 
    $P2895 = $P2894."get_lexinfo"()
    $P2895."finish_static_lexpad"()
    .const 'Sub' $P2896 = "147_1303928979.9" 
    $P2897 = $P2896."get_lexinfo"()
    nqp_get_sc_object $P2898, "1303928976.25", 7
    $P2897."set_static_lexpad_value"("$?CLASS", $P2898)
    .const 'Sub' $P2899 = "147_1303928979.9" 
    $P2900 = $P2899."get_lexinfo"()
    $P2900."finish_static_lexpad"()
    nqp_get_sc_object $P2901, "__6MODEL_CORE__", 0
    $P2902 = $P2901."new_type"("NQPModuleHOW" :named("name"))
    nqp_set_sc_for_object $P2902, cur_sc
    nqp_set_sc_object "1303928976.25", 8, $P2902
    nqp_get_sc_object $P2903, "1303928976.25", 8
    nqp_get_sc_object $P2904, "1303928976.25", 0
    get_who $P2905, $P2904
    set $P2905["NQPModuleHOW"], $P2903
    .const 'Sub' $P2906 = "10_1303928979.9" 
    $P2907 = $P2906."get_lexinfo"()
    nqp_get_sc_object $P2908, "1303928976.25", 8
    $P2907."set_static_lexpad_value"("NQPModuleHOW", $P2908)
    .const 'Sub' $P2909 = "10_1303928979.9" 
    $P2910 = $P2909."get_lexinfo"()
    $P2910."finish_static_lexpad"()
    nqp_get_sc_object $P2911, "1303928976.25", 8
    get_how $P2912, $P2911
    nqp_get_sc_object $P2913, "1303928976.25", 8
    nqp_get_sc_object $P2914, "__6MODEL_CORE__", 2
    $P2915 = $P2914."new"("$!name" :named("name"))
    $P2912."add_attribute"($P2913, $P2915)
    nqp_get_sc_object $P2916, "1303928976.25", 8
    get_how $P2917, $P2916
    nqp_get_sc_object $P2918, "1303928976.25", 8
    nqp_get_sc_object $P2919, "__6MODEL_CORE__", 2
    $P2920 = $P2919."new"("$!composed" :named("name"))
    $P2917."add_attribute"($P2918, $P2920)
    .const 'Sub' $P2921 = "162_1303928979.9" 
    $P2922 = $P2921."get_lexinfo"()
    nqp_get_sc_object $P2923, "1303928976.25", 8
    $P2922."set_static_lexpad_value"("$?PACKAGE", $P2923)
    .const 'Sub' $P2924 = "162_1303928979.9" 
    $P2925 = $P2924."get_lexinfo"()
    $P2925."finish_static_lexpad"()
    .const 'Sub' $P2926 = "162_1303928979.9" 
    $P2927 = $P2926."get_lexinfo"()
    nqp_get_sc_object $P2928, "1303928976.25", 8
    $P2927."set_static_lexpad_value"("$?CLASS", $P2928)
    .const 'Sub' $P2929 = "162_1303928979.9" 
    $P2930 = $P2929."get_lexinfo"()
    $P2930."finish_static_lexpad"()
    nqp_get_sc_object $P2931, "__6MODEL_CORE__", 0
    $P2932 = $P2931."new_type"("EXPORTHOW" :named("name"))
    nqp_set_sc_for_object $P2932, cur_sc
    nqp_set_sc_object "1303928976.25", 9, $P2932
    .const 'Sub' $P2933 = "10_1303928979.9" 
    $P2934 = $P2933."get_lexinfo"()
    nqp_get_sc_object $P2935, "1303928976.25", 9
    $P2934."set_static_lexpad_value"("EXPORTHOW", $P2935)
    .const 'Sub' $P2936 = "10_1303928979.9" 
    $P2937 = $P2936."get_lexinfo"()
    $P2937."finish_static_lexpad"()
    .const 'Sub' $P2938 = "172_1303928979.9" 
    $P2939 = $P2938."get_lexinfo"()
    nqp_get_sc_object $P2940, "1303928976.25", 9
    $P2939."set_static_lexpad_value"("$?PACKAGE", $P2940)
    .const 'Sub' $P2941 = "172_1303928979.9" 
    $P2942 = $P2941."get_lexinfo"()
    $P2942."finish_static_lexpad"()
    .const 'Sub' $P2943 = "172_1303928979.9" 
    $P2944 = $P2943."get_lexinfo"()
    nqp_get_sc_object $P2945, "1303928976.25", 9
    $P2944."set_static_lexpad_value"("$?CLASS", $P2945)
    .const 'Sub' $P2946 = "172_1303928979.9" 
    $P2947 = $P2946."get_lexinfo"()
    $P2947."finish_static_lexpad"()
  if_2572_end:
    nqp_get_sc_object $P3093, "1303928976.25", 0
    set_hll_global "GLOBAL", $P3093
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block24"  :subid("11_1303928979.9") :outer("10_1303928979.9")
.annotate 'line', 7
    .const 'Sub' $P248 = "21_1303928979.9" 
    capture_lex $P248
    .const 'Sub' $P28 = "12_1303928979.9" 
    capture_lex $P28
    .lex "$?PACKAGE", $P26
    .lex "$?CLASS", $P27
.annotate 'line', 8
    .const 'Sub' $P28 = "12_1303928979.9" 
    newclosure $P246, $P28
.annotate 'line', 7
    .return ($P246)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "" :load :init :subid("post176") :outer("11_1303928979.9")
.annotate 'line', 7
    .const 'Sub' $P25 = "11_1303928979.9" 
    .local pmc block
    set block, $P25
    .const 'Sub' $P248 = "21_1303928979.9" 
    capture_lex $P248
    $P248()
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block247"  :anon :subid("21_1303928979.9") :outer("11_1303928979.9")
.annotate 'line', 7
    nqp_get_sc_object $P249, "1303928976.25", 1
    .local pmc type_obj
    set type_obj, $P249
    get_how $P250, type_obj
    .const 'Sub' $P251 = "12_1303928979.9" 
    $P250."add_method"(type_obj, "apply", $P251)
    get_how $P252, type_obj
    $P253 = $P252."compose"(type_obj)
    .return ($P253)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "apply"  :subid("12_1303928979.9") :outer("11_1303928979.9")
    .param pmc param_31
    .param pmc param_32
    .param pmc param_33
.annotate 'line', 8
    .const 'Sub' $P173 = "18_1303928979.9" 
    capture_lex $P173
    .const 'Sub' $P131 = "17_1303928979.9" 
    capture_lex $P131
    .const 'Sub' $P117 = "16_1303928979.9" 
    capture_lex $P117
    .const 'Sub' $P44 = "13_1303928979.9" 
    capture_lex $P44
    new $P30, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P30, control_29
    push_eh $P30
    .lex "self", param_31
    .lex "$target", param_32
    .lex "@roles", param_33
.annotate 'line', 10
    $P34 = root_new ['parrot';'Hash']
    .lex "%meth_info", $P34
.annotate 'line', 36
    $P35 = root_new ['parrot';'Hash']
    .lex "%target_meth_info", $P35
.annotate 'line', 37
    $P36 = root_new ['parrot';'ResizablePMCArray']
    .lex "@target_meths", $P36
.annotate 'line', 62
    $P37 = root_new ['parrot';'ResizablePMCArray']
    .lex "@all_roles", $P37
.annotate 'line', 8
    find_lex $P38, "%meth_info"
    unless_null $P38, vivify_177
    $P38 = root_new ['parrot';'Hash']
  vivify_177:
.annotate 'line', 11
    find_lex $P40, "@roles"
    unless_null $P40, vivify_178
    $P40 = root_new ['parrot';'ResizablePMCArray']
  vivify_178:
    defined $I41, $P40
    unless $I41, for_undef_179
    iter $P39, $P40
    new $P105, 'ExceptionHandler'
    set_label $P105, loop104_handler
    $P105."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P105
  loop104_test:
    unless $P39, loop104_done
    shift $P42, $P39
  loop104_redo:
    .const 'Sub' $P44 = "13_1303928979.9" 
    capture_lex $P44
    $P44($P42)
  loop104_next:
    goto loop104_test
  loop104_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P106, exception, 'type'
    eq $P106, .CONTROL_LOOP_NEXT, loop104_next
    eq $P106, .CONTROL_LOOP_REDO, loop104_redo
  loop104_done:
    pop_eh 
  for_undef_179:
    find_lex $P107, "%target_meth_info"
    unless_null $P107, vivify_203
    $P107 = root_new ['parrot';'Hash']
  vivify_203:
.annotate 'line', 37
    find_lex $P108, "$target"
    unless_null $P108, vivify_204
    new $P108, "Undef"
  vivify_204:
    get_how $P109, $P108
    find_lex $P110, "$target"
    unless_null $P110, vivify_205
    new $P110, "Undef"
  vivify_205:
    $P111 = $P109."methods"($P110)
    store_lex "@target_meths", $P111
.annotate 'line', 38
    find_lex $P113, "@target_meths"
    unless_null $P113, vivify_206
    $P113 = root_new ['parrot';'ResizablePMCArray']
  vivify_206:
    defined $I114, $P113
    unless $I114, for_undef_207
    iter $P112, $P113
    new $P124, 'ExceptionHandler'
    set_label $P124, loop123_handler
    $P124."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P124
  loop123_test:
    unless $P112, loop123_done
    shift $P115, $P112
  loop123_redo:
    .const 'Sub' $P117 = "16_1303928979.9" 
    capture_lex $P117
    $P117($P115)
  loop123_next:
    goto loop123_test
  loop123_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P125, exception, 'type'
    eq $P125, .CONTROL_LOOP_NEXT, loop123_next
    eq $P125, .CONTROL_LOOP_REDO, loop123_redo
  loop123_done:
    pop_eh 
  for_undef_207:
.annotate 'line', 43
    find_lex $P127, "%meth_info"
    unless_null $P127, vivify_211
    $P127 = root_new ['parrot';'Hash']
  vivify_211:
    defined $I128, $P127
    unless $I128, for_undef_212
    iter $P126, $P127
    new $P165, 'ExceptionHandler'
    set_label $P165, loop164_handler
    $P165."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P165
  loop164_test:
    unless $P126, loop164_done
    shift $P129, $P126
  loop164_redo:
    .const 'Sub' $P131 = "17_1303928979.9" 
    capture_lex $P131
    $P131($P129)
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
  for_undef_212:
    find_lex $P167, "@all_roles"
    unless_null $P167, vivify_229
    $P167 = root_new ['parrot';'ResizablePMCArray']
  vivify_229:
.annotate 'line', 63
    find_lex $P169, "@roles"
    unless_null $P169, vivify_230
    $P169 = root_new ['parrot';'ResizablePMCArray']
  vivify_230:
    defined $I170, $P169
    unless $I170, for_undef_231
    iter $P168, $P169
    new $P241, 'ExceptionHandler'
    set_label $P241, loop240_handler
    $P241."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P241
  loop240_test:
    unless $P168, loop240_done
    shift $P171, $P168
  loop240_redo:
    .const 'Sub' $P173 = "18_1303928979.9" 
    capture_lex $P173
    $P173($P171)
  loop240_next:
    goto loop240_test
  loop240_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P242, exception, 'type'
    eq $P242, .CONTROL_LOOP_NEXT, loop240_next
    eq $P242, .CONTROL_LOOP_REDO, loop240_redo
  loop240_done:
    pop_eh 
  for_undef_231:
.annotate 'line', 92
    new $P243, "Exception"
    set $P243['type'], .CONTROL_RETURN
    find_lex $P244, "@all_roles"
    unless_null $P244, vivify_253
    $P244 = root_new ['parrot';'ResizablePMCArray']
  vivify_253:
    setattribute $P243, 'payload', $P244
    throw $P243
.annotate 'line', 8
    .return ()
  control_29:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P245, exception, "payload"
    .return ($P245)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block43"  :anon :subid("13_1303928979.9") :outer("12_1303928979.9")
    .param pmc param_46
.annotate 'line', 11
    .const 'Sub' $P56 = "14_1303928979.9" 
    capture_lex $P56
.annotate 'line', 12
    $P45 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P45
    .lex "$_", param_46
    find_lex $P47, "$_"
    unless_null $P47, vivify_180
    new $P47, "Undef"
  vivify_180:
    get_how $P48, $P47
    find_lex $P49, "$_"
    unless_null $P49, vivify_181
    new $P49, "Undef"
  vivify_181:
    $P50 = $P48."methods"($P49)
    store_lex "@methods", $P50
.annotate 'line', 13
    find_lex $P52, "@methods"
    unless_null $P52, vivify_182
    $P52 = root_new ['parrot';'ResizablePMCArray']
  vivify_182:
    defined $I53, $P52
    unless $I53, for_undef_183
    iter $P51, $P52
    new $P102, 'ExceptionHandler'
    set_label $P102, loop101_handler
    $P102."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P102
  loop101_test:
    unless $P51, loop101_done
    shift $P54, $P51
  loop101_redo:
    .const 'Sub' $P56 = "14_1303928979.9" 
    capture_lex $P56
    $P56($P54)
  loop101_next:
    goto loop101_test
  loop101_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P103, exception, 'type'
    eq $P103, .CONTROL_LOOP_NEXT, loop101_next
    eq $P103, .CONTROL_LOOP_REDO, loop101_redo
  loop101_done:
    pop_eh 
  for_undef_183:
.annotate 'line', 11
    .return ($P51)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block55"  :anon :subid("14_1303928979.9") :outer("13_1303928979.9")
    .param pmc param_61
.annotate 'line', 13
    .const 'Sub' $P84 = "15_1303928979.9" 
    capture_lex $P84
.annotate 'line', 14
    new $P57, "Undef"
    .lex "$name", $P57
.annotate 'line', 15
    new $P58, "Undef"
    .lex "$meth", $P58
.annotate 'line', 16
    $P59 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meth_list", $P59
.annotate 'line', 23
    new $P60, "Undef"
    .lex "$found", $P60
    .lex "$_", param_61
.annotate 'line', 14
    find_lex $P62, "$_"
    unless_null $P62, vivify_184
    new $P62, "Undef"
  vivify_184:
    set $S63, $P62
    new $P64, 'String'
    set $P64, $S63
    store_lex "$name", $P64
.annotate 'line', 15
    find_lex $P65, "$_"
    unless_null $P65, vivify_185
    new $P65, "Undef"
  vivify_185:
    store_lex "$meth", $P65
    find_lex $P66, "@meth_list"
    unless_null $P66, vivify_186
    $P66 = root_new ['parrot';'ResizablePMCArray']
  vivify_186:
.annotate 'line', 17
    find_lex $P68, "$name"
    unless_null $P68, vivify_187
    new $P68, "Undef"
  vivify_187:
    find_lex $P69, "%meth_info"
    unless_null $P69, vivify_188
    $P69 = root_new ['parrot';'Hash']
  vivify_188:
    set $P70, $P69[$P68]
    unless_null $P70, vivify_189
    new $P70, "Undef"
  vivify_189:
    defined $I71, $P70
    if $I71, if_67
.annotate 'line', 21
    find_lex $P75, "@meth_list"
    unless_null $P75, vivify_190
    $P75 = root_new ['parrot';'ResizablePMCArray']
  vivify_190:
    find_lex $P76, "$name"
    unless_null $P76, vivify_191
    new $P76, "Undef"
  vivify_191:
    find_lex $P77, "%meth_info"
    unless_null $P77, vivify_192
    $P77 = root_new ['parrot';'Hash']
    store_lex "%meth_info", $P77
  vivify_192:
    set $P77[$P76], $P75
.annotate 'line', 20
    goto if_67_end
  if_67:
.annotate 'line', 18
    find_lex $P72, "$name"
    unless_null $P72, vivify_193
    new $P72, "Undef"
  vivify_193:
    find_lex $P73, "%meth_info"
    unless_null $P73, vivify_194
    $P73 = root_new ['parrot';'Hash']
  vivify_194:
    set $P74, $P73[$P72]
    unless_null $P74, vivify_195
    new $P74, "Undef"
  vivify_195:
    store_lex "@meth_list", $P74
  if_67_end:
.annotate 'line', 23
    new $P78, "Integer"
    assign $P78, 0
    store_lex "$found", $P78
.annotate 'line', 24
    find_lex $P80, "@meth_list"
    unless_null $P80, vivify_196
    $P80 = root_new ['parrot';'ResizablePMCArray']
  vivify_196:
    defined $I81, $P80
    unless $I81, for_undef_197
    iter $P79, $P80
    new $P93, 'ExceptionHandler'
    set_label $P93, loop92_handler
    $P93."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P93
  loop92_test:
    unless $P79, loop92_done
    shift $P82, $P79
  loop92_redo:
    .const 'Sub' $P84 = "15_1303928979.9" 
    capture_lex $P84
    $P84($P82)
  loop92_next:
    goto loop92_test
  loop92_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P94, exception, 'type'
    eq $P94, .CONTROL_LOOP_NEXT, loop92_next
    eq $P94, .CONTROL_LOOP_REDO, loop92_redo
  loop92_done:
    pop_eh 
  for_undef_197:
.annotate 'line', 29
    find_lex $P97, "$found"
    unless_null $P97, vivify_200
    new $P97, "Undef"
  vivify_200:
    unless $P97, unless_96
    set $P95, $P97
    goto unless_96_end
  unless_96:
.annotate 'line', 30
    find_lex $P98, "@meth_list"
    unless_null $P98, vivify_201
    $P98 = root_new ['parrot';'ResizablePMCArray']
  vivify_201:
    find_lex $P99, "$meth"
    unless_null $P99, vivify_202
    new $P99, "Undef"
  vivify_202:
    $P100 = $P98."push"($P99)
.annotate 'line', 29
    set $P95, $P100
  unless_96_end:
.annotate 'line', 13
    .return ($P95)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block83"  :anon :subid("15_1303928979.9") :outer("14_1303928979.9")
    .param pmc param_85
.annotate 'line', 24
    .lex "$_", param_85
.annotate 'line', 25
    find_lex $P88, "$meth"
    unless_null $P88, vivify_198
    new $P88, "Undef"
  vivify_198:
    find_lex $P89, "$_"
    unless_null $P89, vivify_199
    new $P89, "Undef"
  vivify_199:
    issame $I90, $P88, $P89
    if $I90, if_87
    new $P86, 'Integer'
    set $P86, $I90
    goto if_87_end
  if_87:
.annotate 'line', 26
    new $P91, "Integer"
    assign $P91, 1
    store_lex "$found", $P91
.annotate 'line', 25
    set $P86, $P91
  if_87_end:
.annotate 'line', 24
    .return ($P86)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block116"  :anon :subid("16_1303928979.9") :outer("12_1303928979.9")
    .param pmc param_118
.annotate 'line', 38
    .lex "$_", param_118
.annotate 'line', 39
    find_lex $P119, "$_"
    unless_null $P119, vivify_208
    new $P119, "Undef"
  vivify_208:
    find_lex $P120, "$_"
    unless_null $P120, vivify_209
    new $P120, "Undef"
  vivify_209:
    set $S121, $P120
    find_lex $P122, "%target_meth_info"
    unless_null $P122, vivify_210
    $P122 = root_new ['parrot';'Hash']
    store_lex "%target_meth_info", $P122
  vivify_210:
    set $P122[$S121], $P119
.annotate 'line', 38
    .return ($P119)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block130"  :anon :subid("17_1303928979.9") :outer("12_1303928979.9")
    .param pmc param_134
.annotate 'line', 44
    new $P132, "Undef"
    .lex "$name", $P132
.annotate 'line', 45
    $P133 = root_new ['parrot';'ResizablePMCArray']
    .lex "@add_meths", $P133
    .lex "$_", param_134
.annotate 'line', 44
    find_lex $P135, "$_"
    unless_null $P135, vivify_213
    new $P135, "Undef"
  vivify_213:
    set $S136, $P135
    new $P137, 'String'
    set $P137, $S136
    store_lex "$name", $P137
.annotate 'line', 45
    find_lex $P138, "$name"
    unless_null $P138, vivify_214
    new $P138, "Undef"
  vivify_214:
    find_lex $P139, "%meth_info"
    unless_null $P139, vivify_215
    $P139 = root_new ['parrot';'Hash']
  vivify_215:
    set $P140, $P139[$P138]
    unless_null $P140, vivify_216
    new $P140, "Undef"
  vivify_216:
    store_lex "@add_meths", $P140
.annotate 'line', 49
    find_lex $P143, "$name"
    unless_null $P143, vivify_217
    new $P143, "Undef"
  vivify_217:
    find_lex $P144, "%target_meth_info"
    unless_null $P144, vivify_218
    $P144 = root_new ['parrot';'Hash']
  vivify_218:
    set $P145, $P144[$P143]
    unless_null $P145, vivify_219
    new $P145, "Undef"
  vivify_219:
    defined $I146, $P145
    unless $I146, unless_142
    new $P141, 'Integer'
    set $P141, $I146
    goto unless_142_end
  unless_142:
.annotate 'line', 51
    find_lex $P149, "@add_meths"
    unless_null $P149, vivify_220
    $P149 = root_new ['parrot';'ResizablePMCArray']
  vivify_220:
    set $N150, $P149
    iseq $I151, $N150, 1.0
    if $I151, if_148
.annotate 'line', 56
    find_lex $P159, "$target"
    unless_null $P159, vivify_221
    new $P159, "Undef"
  vivify_221:
    get_how $P160, $P159
    find_lex $P161, "$target"
    unless_null $P161, vivify_222
    new $P161, "Undef"
  vivify_222:
    find_lex $P162, "$name"
    unless_null $P162, vivify_223
    new $P162, "Undef"
  vivify_223:
    $P163 = $P160."add_collision"($P161, $P162)
.annotate 'line', 54
    set $P147, $P163
.annotate 'line', 51
    goto if_148_end
  if_148:
.annotate 'line', 52
    find_lex $P152, "$target"
    unless_null $P152, vivify_224
    new $P152, "Undef"
  vivify_224:
    get_how $P153, $P152
    find_lex $P154, "$target"
    unless_null $P154, vivify_225
    new $P154, "Undef"
  vivify_225:
    find_lex $P155, "$name"
    unless_null $P155, vivify_226
    new $P155, "Undef"
  vivify_226:
    find_lex $P156, "@add_meths"
    unless_null $P156, vivify_227
    $P156 = root_new ['parrot';'ResizablePMCArray']
  vivify_227:
    set $P157, $P156[0]
    unless_null $P157, vivify_228
    new $P157, "Undef"
  vivify_228:
    $P158 = $P153."add_method"($P154, $P155, $P157)
.annotate 'line', 51
    set $P147, $P158
  if_148_end:
.annotate 'line', 49
    set $P141, $P147
  unless_142_end:
.annotate 'line', 43
    .return ($P141)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block172"  :anon :subid("18_1303928979.9") :outer("12_1303928979.9")
    .param pmc param_176
.annotate 'line', 63
    .const 'Sub' $P187 = "19_1303928979.9" 
    capture_lex $P187
.annotate 'line', 64
    new $P174, "Undef"
    .lex "$how", $P174
.annotate 'line', 67
    $P175 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attributes", $P175
    .lex "$_", param_176
.annotate 'line', 64
    find_lex $P177, "$_"
    unless_null $P177, vivify_232
    new $P177, "Undef"
  vivify_232:
    get_how $P178, $P177
    store_lex "$how", $P178
.annotate 'line', 67
    find_lex $P179, "$how"
    unless_null $P179, vivify_233
    new $P179, "Undef"
  vivify_233:
    find_lex $P180, "$_"
    unless_null $P180, vivify_234
    new $P180, "Undef"
  vivify_234:
    $P181 = $P179."attributes"($P180)
    store_lex "@attributes", $P181
.annotate 'line', 68
    find_lex $P183, "@attributes"
    unless_null $P183, vivify_235
    $P183 = root_new ['parrot';'ResizablePMCArray']
  vivify_235:
    defined $I184, $P183
    unless $I184, for_undef_236
    iter $P182, $P183
    new $P235, 'ExceptionHandler'
    set_label $P235, loop234_handler
    $P235."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P235
  loop234_test:
    unless $P182, loop234_done
    shift $P185, $P182
  loop234_redo:
    .const 'Sub' $P187 = "19_1303928979.9" 
    capture_lex $P187
    $P187($P185)
  loop234_next:
    goto loop234_test
  loop234_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P236, exception, 'type'
    eq $P236, .CONTROL_LOOP_NEXT, loop234_next
    eq $P236, .CONTROL_LOOP_REDO, loop234_redo
  loop234_done:
    pop_eh 
  for_undef_236:
.annotate 'line', 89
    find_lex $P237, "@all_roles"
    unless_null $P237, vivify_251
    $P237 = root_new ['parrot';'ResizablePMCArray']
  vivify_251:
    find_lex $P238, "$_"
    unless_null $P238, vivify_252
    new $P238, "Undef"
  vivify_252:
    $P239 = $P237."push"($P238)
.annotate 'line', 63
    .return ($P239)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block186"  :anon :subid("19_1303928979.9") :outer("18_1303928979.9")
    .param pmc param_191
.annotate 'line', 68
    .const 'Sub' $P203 = "20_1303928979.9" 
    capture_lex $P203
.annotate 'line', 69
    new $P188, "Undef"
    .lex "$add_attr", $P188
.annotate 'line', 70
    new $P189, "Undef"
    .lex "$skip", $P189
.annotate 'line', 71
    $P190 = root_new ['parrot';'ResizablePMCArray']
    .lex "@cur_attrs", $P190
    .lex "$_", param_191
.annotate 'line', 69
    find_lex $P192, "$_"
    unless_null $P192, vivify_237
    new $P192, "Undef"
  vivify_237:
    store_lex "$add_attr", $P192
.annotate 'line', 70
    new $P193, "Integer"
    assign $P193, 0
    store_lex "$skip", $P193
.annotate 'line', 71
    find_lex $P194, "$target"
    unless_null $P194, vivify_238
    new $P194, "Undef"
  vivify_238:
    get_how $P195, $P194
    find_lex $P196, "$target"
    unless_null $P196, vivify_239
    new $P196, "Undef"
  vivify_239:
    $P197 = $P195."attributes"($P196)
    store_lex "@cur_attrs", $P197
.annotate 'line', 72
    find_lex $P199, "@cur_attrs"
    unless_null $P199, vivify_240
    $P199 = root_new ['parrot';'ResizablePMCArray']
  vivify_240:
    defined $I200, $P199
    unless $I200, for_undef_241
    iter $P198, $P199
    new $P224, 'ExceptionHandler'
    set_label $P224, loop223_handler
    $P224."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P224
  loop223_test:
    unless $P198, loop223_done
    shift $P201, $P198
  loop223_redo:
    .const 'Sub' $P203 = "20_1303928979.9" 
    capture_lex $P203
    $P203($P201)
  loop223_next:
    goto loop223_test
  loop223_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P225, exception, 'type'
    eq $P225, .CONTROL_LOOP_NEXT, loop223_next
    eq $P225, .CONTROL_LOOP_REDO, loop223_redo
  loop223_done:
    pop_eh 
  for_undef_241:
.annotate 'line', 82
    find_lex $P228, "$skip"
    unless_null $P228, vivify_247
    new $P228, "Undef"
  vivify_247:
    unless $P228, unless_227
    set $P226, $P228
    goto unless_227_end
  unless_227:
.annotate 'line', 83
    find_lex $P229, "$target"
    unless_null $P229, vivify_248
    new $P229, "Undef"
  vivify_248:
    get_how $P230, $P229
    find_lex $P231, "$target"
    unless_null $P231, vivify_249
    new $P231, "Undef"
  vivify_249:
    find_lex $P232, "$add_attr"
    unless_null $P232, vivify_250
    new $P232, "Undef"
  vivify_250:
    $P233 = $P230."add_attribute"($P231, $P232)
.annotate 'line', 82
    set $P226, $P233
  unless_227_end:
.annotate 'line', 68
    .return ($P226)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block202"  :anon :subid("20_1303928979.9") :outer("19_1303928979.9")
    .param pmc param_204
.annotate 'line', 72
    .lex "$_", param_204
.annotate 'line', 73
    find_lex $P207, "$_"
    unless_null $P207, vivify_242
    new $P207, "Undef"
  vivify_242:
    find_lex $P208, "$add_attr"
    unless_null $P208, vivify_243
    new $P208, "Undef"
  vivify_243:
    issame $I209, $P207, $P208
    if $I209, if_206
.annotate 'line', 77
    find_lex $P213, "$_"
    unless_null $P213, vivify_244
    new $P213, "Undef"
  vivify_244:
    $S214 = $P213."name"()
    find_lex $P215, "$add_attr"
    unless_null $P215, vivify_245
    new $P215, "Undef"
  vivify_245:
    $S216 = $P215."name"()
    iseq $I217, $S214, $S216
    if $I217, if_212
    new $P211, 'Integer'
    set $P211, $I217
    goto if_212_end
  if_212:
.annotate 'line', 78
    new $P218, "String"
    assign $P218, "Attribute '"
    find_lex $P219, "$_"
    unless_null $P219, vivify_246
    new $P219, "Undef"
  vivify_246:
    $S220 = $P219."name"()
    concat $P221, $P218, $S220
    concat $P222, $P221, "' conflicts in role composition"
    die $P222
  if_212_end:
.annotate 'line', 76
    set $P205, $P211
.annotate 'line', 73
    goto if_206_end
  if_206:
.annotate 'line', 74
    new $P210, "Integer"
    assign $P210, 1
    store_lex "$skip", $P210
.annotate 'line', 73
    set $P205, $P210
  if_206_end:
.annotate 'line', 72
    .return ($P205)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block254"  :subid("22_1303928979.9") :outer("10_1303928979.9")
.annotate 'line', 99
    .const 'Sub' $P515 = "43_1303928979.9" 
    capture_lex $P515
    .const 'Sub' $P507 = "42_1303928979.9" 
    capture_lex $P507
    .const 'Sub' $P501 = "41_1303928979.9" 
    capture_lex $P501
    .const 'Sub' $P477 = "39_1303928979.9" 
    capture_lex $P477
    .const 'Sub' $P471 = "38_1303928979.9" 
    capture_lex $P471
    .const 'Sub' $P465 = "37_1303928979.9" 
    capture_lex $P465
    .const 'Sub' $P459 = "36_1303928979.9" 
    capture_lex $P459
    .const 'Sub' $P435 = "34_1303928979.9" 
    capture_lex $P435
    .const 'Sub' $P386 = "32_1303928979.9" 
    capture_lex $P386
    .const 'Sub' $P373 = "31_1303928979.9" 
    capture_lex $P373
    .const 'Sub' $P360 = "30_1303928979.9" 
    capture_lex $P360
    .const 'Sub' $P356 = "29_1303928979.9" 
    capture_lex $P356
    .const 'Sub' $P335 = "28_1303928979.9" 
    capture_lex $P335
    .const 'Sub' $P314 = "27_1303928979.9" 
    capture_lex $P314
    .const 'Sub' $P295 = "26_1303928979.9" 
    capture_lex $P295
    .const 'Sub' $P279 = "25_1303928979.9" 
    capture_lex $P279
    .const 'Sub' $P269 = "24_1303928979.9" 
    capture_lex $P269
    .const 'Sub' $P258 = "23_1303928979.9" 
    capture_lex $P258
    .lex "$?PACKAGE", $P256
    .lex "$?CLASS", $P257
.annotate 'line', 238
    .const 'Sub' $P507 = "42_1303928979.9" 
    newclosure $P513, $P507
.annotate 'line', 99
    .return ($P513)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "" :load :init :subid("post254") :outer("22_1303928979.9")
.annotate 'line', 99
    .const 'Sub' $P255 = "22_1303928979.9" 
    .local pmc block
    set block, $P255
    .const 'Sub' $P515 = "43_1303928979.9" 
    capture_lex $P515
    $P515()
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block514"  :anon :subid("43_1303928979.9") :outer("22_1303928979.9")
.annotate 'line', 99
    nqp_get_sc_object $P516, "1303928976.25", 2
    .local pmc type_obj
    set type_obj, $P516
    get_how $P517, type_obj
    .const 'Sub' $P518 = "23_1303928979.9" 
    $P517."add_method"(type_obj, "new", $P518)
    get_how $P519, type_obj
    .const 'Sub' $P520 = "24_1303928979.9" 
    $P519."add_method"(type_obj, "BUILD", $P520)
    get_how $P521, type_obj
    .const 'Sub' $P522 = "25_1303928979.9" 
    $P521."add_method"(type_obj, "new_type", $P522)
    get_how $P523, type_obj
    .const 'Sub' $P524 = "26_1303928979.9" 
    $P523."add_method"(type_obj, "add_method", $P524)
    get_how $P525, type_obj
    .const 'Sub' $P526 = "27_1303928979.9" 
    $P525."add_method"(type_obj, "add_multi_method", $P526)
    get_how $P527, type_obj
    .const 'Sub' $P528 = "28_1303928979.9" 
    $P527."add_method"(type_obj, "add_attribute", $P528)
    get_how $P529, type_obj
    .const 'Sub' $P530 = "29_1303928979.9" 
    $P529."add_method"(type_obj, "add_parent", $P530)
    get_how $P531, type_obj
    .const 'Sub' $P532 = "30_1303928979.9" 
    $P531."add_method"(type_obj, "add_role", $P532)
    get_how $P533, type_obj
    .const 'Sub' $P534 = "31_1303928979.9" 
    $P533."add_method"(type_obj, "add_collision", $P534)
    get_how $P535, type_obj
    .const 'Sub' $P536 = "32_1303928979.9" 
    $P535."add_method"(type_obj, "compose", $P536)
    get_how $P537, type_obj
    .const 'Sub' $P538 = "34_1303928979.9" 
    $P537."add_method"(type_obj, "methods", $P538)
    get_how $P539, type_obj
    .const 'Sub' $P540 = "36_1303928979.9" 
    $P539."add_method"(type_obj, "method_table", $P540)
    get_how $P541, type_obj
    .const 'Sub' $P542 = "37_1303928979.9" 
    $P541."add_method"(type_obj, "collisions", $P542)
    get_how $P543, type_obj
    .const 'Sub' $P544 = "38_1303928979.9" 
    $P543."add_method"(type_obj, "name", $P544)
    get_how $P545, type_obj
    .const 'Sub' $P546 = "39_1303928979.9" 
    $P545."add_method"(type_obj, "attributes", $P546)
    get_how $P547, type_obj
    .const 'Sub' $P548 = "41_1303928979.9" 
    $P547."add_method"(type_obj, "roles", $P548)
    get_how $P549, type_obj
    .const 'Sub' $P550 = "42_1303928979.9" 
    $P549."add_method"(type_obj, "instance_of", $P550)
    get_how $P551, type_obj
    $P552 = $P551."compose"(type_obj)
    .return ($P552)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "new"  :subid("23_1303928979.9") :outer("22_1303928979.9")
    .param pmc param_259
    .param pmc param_260 :named("name")
    .param pmc param_261 :named("instance_of")
.annotate 'line', 131
    .lex "self", param_259
    .lex "$name", param_260
    .lex "$instance_of", param_261
.annotate 'line', 132
    new $P262, "Undef"
    .lex "$obj", $P262
    find_lex $P263, "self"
    repr_instance_of $P264, $P263
    store_lex "$obj", $P264
.annotate 'line', 133
    find_lex $P265, "$obj"
    unless_null $P265, vivify_255
    new $P265, "Undef"
  vivify_255:
    find_lex $P266, "$name"
    unless_null $P266, vivify_256
    new $P266, "Undef"
  vivify_256:
    find_lex $P267, "$instance_of"
    unless_null $P267, vivify_257
    new $P267, "Undef"
  vivify_257:
    $P265."BUILD"($P266 :named("name"), $P267 :named("instance_of"))
    find_lex $P268, "$obj"
    unless_null $P268, vivify_258
    new $P268, "Undef"
  vivify_258:
.annotate 'line', 131
    .return ($P268)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "BUILD"  :subid("24_1303928979.9") :outer("22_1303928979.9")
    .param pmc param_270
    .param pmc param_271 :named("name")
    .param pmc param_272 :named("instance_of")
.annotate 'line', 137
    .lex "self", param_270
    .lex "$name", param_271
    .lex "$instance_of", param_272
.annotate 'line', 138
    find_lex $P273, "$name"
    unless_null $P273, vivify_259
    new $P273, "Undef"
  vivify_259:
    find_lex $P274, "self"
    find_lex $P275, "$?CLASS"
    setattribute $P274, $P275, "$!name", $P273
.annotate 'line', 139
    find_lex $P276, "$instance_of"
    unless_null $P276, vivify_260
    new $P276, "Undef"
  vivify_260:
    find_lex $P277, "self"
    find_lex $P278, "$?CLASS"
    setattribute $P277, $P278, "$!instance_of", $P276
.annotate 'line', 137
    .return ($P276)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "new_type"  :subid("25_1303928979.9") :outer("22_1303928979.9")
    .param pmc param_280
    .param pmc param_285 :named("instance_of")
    .param pmc param_281 :optional :named("name")
    .param int has_param_281 :opt_flag
    .param pmc param_283 :optional :named("repr")
    .param int has_param_283 :opt_flag
.annotate 'line', 144
    .lex "self", param_280
    if has_param_281, optparam_261
    new $P282, "String"
    assign $P282, "<anon>"
    set param_281, $P282
  optparam_261:
    .lex "$name", param_281
    if has_param_283, optparam_262
    new $P284, "String"
    assign $P284, "P6opaque"
    set param_283, $P284
  optparam_262:
    .lex "$repr", param_283
    .lex "$instance_of", param_285
.annotate 'line', 145
    new $P286, "Undef"
    .lex "$metarole", $P286
    find_lex $P287, "self"
    find_lex $P288, "$name"
    unless_null $P288, vivify_263
    new $P288, "Undef"
  vivify_263:
    find_lex $P289, "$instance_of"
    unless_null $P289, vivify_264
    new $P289, "Undef"
  vivify_264:
    $P290 = $P287."new"($P288 :named("name"), $P289 :named("instance_of"))
    store_lex "$metarole", $P290
.annotate 'line', 146
    find_lex $P291, "$metarole"
    unless_null $P291, vivify_265
    new $P291, "Undef"
  vivify_265:
    find_lex $P292, "$repr"
    unless_null $P292, vivify_266
    new $P292, "Undef"
  vivify_266:
    set $S293, $P292
    repr_type_object_for $P294, $P291, $S293
.annotate 'line', 144
    .return ($P294)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_method"  :subid("26_1303928979.9") :outer("22_1303928979.9")
    .param pmc param_296
    .param pmc param_297
    .param pmc param_298
    .param pmc param_299
.annotate 'line', 149
    .lex "self", param_296
    .lex "$obj", param_297
    .lex "$name", param_298
    .lex "$code_obj", param_299
.annotate 'line', 150
    find_lex $P301, "$name"
    unless_null $P301, vivify_267
    new $P301, "Undef"
  vivify_267:
    find_lex $P302, "self"
    find_lex $P303, "$?CLASS"
    getattribute $P304, $P302, $P303, "%!methods"
    unless_null $P304, vivify_268
    $P304 = root_new ['parrot';'Hash']
  vivify_268:
    set $P305, $P304[$P301]
    unless_null $P305, vivify_269
    new $P305, "Undef"
  vivify_269:
    unless $P305, if_300_end
.annotate 'line', 151
    new $P306, "String"
    assign $P306, "This role already has a method named "
    find_lex $P307, "$name"
    unless_null $P307, vivify_270
    new $P307, "Undef"
  vivify_270:
    concat $P308, $P306, $P307
    die $P308
  if_300_end:
.annotate 'line', 153
    find_lex $P309, "$code_obj"
    unless_null $P309, vivify_271
    new $P309, "Undef"
  vivify_271:
    find_lex $P310, "$name"
    unless_null $P310, vivify_272
    new $P310, "Undef"
  vivify_272:
    find_lex $P311, "self"
    find_lex $P312, "$?CLASS"
    getattribute $P313, $P311, $P312, "%!methods"
    unless_null $P313, vivify_273
    $P313 = root_new ['parrot';'Hash']
    setattribute $P311, $P312, "%!methods", $P313
  vivify_273:
    set $P313[$P310], $P309
.annotate 'line', 149
    .return ($P309)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_multi_method"  :subid("27_1303928979.9") :outer("22_1303928979.9")
    .param pmc param_315
    .param pmc param_316
    .param pmc param_317
    .param pmc param_318
.annotate 'line', 156
    .lex "self", param_315
    .lex "$obj", param_316
    .lex "$name", param_317
    .lex "$code_obj", param_318
.annotate 'line', 157
    $P319 = root_new ['parrot';'Hash']
    .lex "%todo", $P319
.annotate 'line', 156
    find_lex $P320, "%todo"
    unless_null $P320, vivify_274
    $P320 = root_new ['parrot';'Hash']
  vivify_274:
.annotate 'line', 158
    find_lex $P321, "$name"
    unless_null $P321, vivify_275
    new $P321, "Undef"
  vivify_275:
    find_lex $P322, "%todo"
    unless_null $P322, vivify_276
    $P322 = root_new ['parrot';'Hash']
    store_lex "%todo", $P322
  vivify_276:
    set $P322["name"], $P321
.annotate 'line', 159
    find_lex $P323, "$code_obj"
    unless_null $P323, vivify_277
    new $P323, "Undef"
  vivify_277:
    find_lex $P324, "%todo"
    unless_null $P324, vivify_278
    $P324 = root_new ['parrot';'Hash']
    store_lex "%todo", $P324
  vivify_278:
    set $P324["code"], $P323
.annotate 'line', 160
    find_lex $P325, "%todo"
    unless_null $P325, vivify_279
    $P325 = root_new ['parrot';'Hash']
  vivify_279:
    find_lex $P326, "self"
    find_lex $P327, "$?CLASS"
    getattribute $P328, $P326, $P327, "@!multi_methods_to_incorporate"
    unless_null $P328, vivify_280
    $P328 = root_new ['parrot';'ResizablePMCArray']
  vivify_280:
    set $N329, $P328
    set $I330, $N329
    find_lex $P331, "self"
    find_lex $P332, "$?CLASS"
    getattribute $P333, $P331, $P332, "@!multi_methods_to_incorporate"
    unless_null $P333, vivify_281
    $P333 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P331, $P332, "@!multi_methods_to_incorporate", $P333
  vivify_281:
    set $P333[$I330], $P325
    find_lex $P334, "$code_obj"
    unless_null $P334, vivify_282
    new $P334, "Undef"
  vivify_282:
.annotate 'line', 156
    .return ($P334)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_attribute"  :subid("28_1303928979.9") :outer("22_1303928979.9")
    .param pmc param_336
    .param pmc param_337
    .param pmc param_338
.annotate 'line', 164
    .lex "self", param_336
    .lex "$obj", param_337
    .lex "$meta_attr", param_338
.annotate 'line', 165
    new $P339, "Undef"
    .lex "$name", $P339
    find_lex $P340, "$meta_attr"
    unless_null $P340, vivify_283
    new $P340, "Undef"
  vivify_283:
    $P341 = $P340."name"()
    store_lex "$name", $P341
.annotate 'line', 166
    find_lex $P343, "$name"
    unless_null $P343, vivify_284
    new $P343, "Undef"
  vivify_284:
    find_lex $P344, "self"
    find_lex $P345, "$?CLASS"
    getattribute $P346, $P344, $P345, "%!attributes"
    unless_null $P346, vivify_285
    $P346 = root_new ['parrot';'Hash']
  vivify_285:
    set $P347, $P346[$P343]
    unless_null $P347, vivify_286
    new $P347, "Undef"
  vivify_286:
    unless $P347, if_342_end
.annotate 'line', 167
    new $P348, "String"
    assign $P348, "This role already has an attribute named "
    find_lex $P349, "$name"
    unless_null $P349, vivify_287
    new $P349, "Undef"
  vivify_287:
    concat $P350, $P348, $P349
    die $P350
  if_342_end:
.annotate 'line', 169
    find_lex $P351, "$meta_attr"
    unless_null $P351, vivify_288
    new $P351, "Undef"
  vivify_288:
    find_lex $P352, "$name"
    unless_null $P352, vivify_289
    new $P352, "Undef"
  vivify_289:
    find_lex $P353, "self"
    find_lex $P354, "$?CLASS"
    getattribute $P355, $P353, $P354, "%!attributes"
    unless_null $P355, vivify_290
    $P355 = root_new ['parrot';'Hash']
    setattribute $P353, $P354, "%!attributes", $P355
  vivify_290:
    set $P355[$P352], $P351
.annotate 'line', 164
    .return ($P351)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_parent"  :subid("29_1303928979.9") :outer("22_1303928979.9")
    .param pmc param_357
    .param pmc param_358
    .param pmc param_359
.annotate 'line', 172
    .lex "self", param_357
    .lex "$obj", param_358
    .lex "$parent", param_359
.annotate 'line', 173
    die "A role cannot inherit from a class in NQP"
.annotate 'line', 172
    .return ()
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_role"  :subid("30_1303928979.9") :outer("22_1303928979.9")
    .param pmc param_361
    .param pmc param_362
    .param pmc param_363
.annotate 'line', 176
    .lex "self", param_361
    .lex "$obj", param_362
    .lex "$role", param_363
.annotate 'line', 177
    find_lex $P364, "$role"
    unless_null $P364, vivify_291
    new $P364, "Undef"
  vivify_291:
    find_lex $P365, "self"
    find_lex $P366, "$?CLASS"
    getattribute $P367, $P365, $P366, "@!roles"
    unless_null $P367, vivify_292
    $P367 = root_new ['parrot';'ResizablePMCArray']
  vivify_292:
    set $N368, $P367
    set $I369, $N368
    find_lex $P370, "self"
    find_lex $P371, "$?CLASS"
    getattribute $P372, $P370, $P371, "@!roles"
    unless_null $P372, vivify_293
    $P372 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P370, $P371, "@!roles", $P372
  vivify_293:
    set $P372[$I369], $P364
.annotate 'line', 176
    .return ($P364)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_collision"  :subid("31_1303928979.9") :outer("22_1303928979.9")
    .param pmc param_374
    .param pmc param_375
    .param pmc param_376
.annotate 'line', 180
    .lex "self", param_374
    .lex "$obj", param_375
    .lex "$colliding_name", param_376
.annotate 'line', 181
    find_lex $P377, "$colliding_name"
    unless_null $P377, vivify_294
    new $P377, "Undef"
  vivify_294:
    find_lex $P378, "self"
    find_lex $P379, "$?CLASS"
    getattribute $P380, $P378, $P379, "@!collisions"
    unless_null $P380, vivify_295
    $P380 = root_new ['parrot';'ResizablePMCArray']
  vivify_295:
    set $N381, $P380
    set $I382, $N381
    find_lex $P383, "self"
    find_lex $P384, "$?CLASS"
    getattribute $P385, $P383, $P384, "@!collisions"
    unless_null $P385, vivify_296
    $P385 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P383, $P384, "@!collisions", $P385
  vivify_296:
    set $P385[$I382], $P377
.annotate 'line', 180
    .return ($P377)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "compose"  :subid("32_1303928979.9") :outer("22_1303928979.9")
    .param pmc param_387
    .param pmc param_388
.annotate 'line', 185
    .const 'Sub' $P400 = "33_1303928979.9" 
    capture_lex $P400
    .lex "self", param_387
    .lex "$obj", param_388
.annotate 'line', 188
    find_lex $P390, "self"
    find_lex $P391, "$?CLASS"
    getattribute $P392, $P390, $P391, "@!roles"
    unless_null $P392, vivify_297
    $P392 = root_new ['parrot';'ResizablePMCArray']
  vivify_297:
    unless $P392, if_389_end
.annotate 'line', 189
    find_lex $P394, "self"
    find_lex $P395, "$?CLASS"
    getattribute $P396, $P394, $P395, "@!roles"
    unless_null $P396, vivify_298
    $P396 = root_new ['parrot';'ResizablePMCArray']
  vivify_298:
    defined $I397, $P396
    unless $I397, for_undef_299
    iter $P393, $P396
    new $P424, 'ExceptionHandler'
    set_label $P424, loop423_handler
    $P424."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P424
  loop423_test:
    unless $P393, loop423_done
    shift $P398, $P393
  loop423_redo:
    .const 'Sub' $P400 = "33_1303928979.9" 
    capture_lex $P400
    $P400($P398)
  loop423_next:
    goto loop423_test
  loop423_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P425, exception, 'type'
    eq $P425, .CONTROL_LOOP_NEXT, loop423_next
    eq $P425, .CONTROL_LOOP_REDO, loop423_redo
  loop423_done:
    pop_eh 
  for_undef_299:
.annotate 'line', 193
    find_lex $P426, "RoleToRoleApplier"
    find_lex $P427, "$obj"
    unless_null $P427, vivify_307
    new $P427, "Undef"
  vivify_307:
    find_lex $P428, "self"
    find_lex $P429, "$?CLASS"
    getattribute $P430, $P428, $P429, "@!roles"
    unless_null $P430, vivify_308
    $P430 = root_new ['parrot';'ResizablePMCArray']
  vivify_308:
    $P426."apply"($P427, $P430)
  if_389_end:
.annotate 'line', 197
    new $P431, "Integer"
    assign $P431, 1
    find_lex $P432, "self"
    find_lex $P433, "$?CLASS"
    setattribute $P432, $P433, "$!composed", $P431
    find_lex $P434, "$obj"
    unless_null $P434, vivify_309
    new $P434, "Undef"
  vivify_309:
.annotate 'line', 185
    .return ($P434)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block399"  :anon :subid("33_1303928979.9") :outer("32_1303928979.9")
    .param pmc param_401
.annotate 'line', 189
    .lex "$_", param_401
.annotate 'line', 190
    find_lex $P402, "$_"
    unless_null $P402, vivify_300
    new $P402, "Undef"
  vivify_300:
    find_lex $P403, "self"
    find_lex $P404, "$?CLASS"
    getattribute $P405, $P403, $P404, "@!done"
    unless_null $P405, vivify_301
    $P405 = root_new ['parrot';'ResizablePMCArray']
  vivify_301:
    set $N406, $P405
    set $I407, $N406
    find_lex $P408, "self"
    find_lex $P409, "$?CLASS"
    getattribute $P410, $P408, $P409, "@!done"
    unless_null $P410, vivify_302
    $P410 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P408, $P409, "@!done", $P410
  vivify_302:
    set $P410[$I407], $P402
.annotate 'line', 191
    find_lex $P411, "$_"
    unless_null $P411, vivify_303
    new $P411, "Undef"
  vivify_303:
    get_how $P412, $P411
    find_lex $P413, "$_"
    unless_null $P413, vivify_304
    new $P413, "Undef"
  vivify_304:
    $P414 = $P412."instance_of"($P413)
    find_lex $P415, "self"
    find_lex $P416, "$?CLASS"
    getattribute $P417, $P415, $P416, "@!done"
    unless_null $P417, vivify_305
    $P417 = root_new ['parrot';'ResizablePMCArray']
  vivify_305:
    set $N418, $P417
    set $I419, $N418
    find_lex $P420, "self"
    find_lex $P421, "$?CLASS"
    getattribute $P422, $P420, $P421, "@!done"
    unless_null $P422, vivify_306
    $P422 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P420, $P421, "@!done", $P422
  vivify_306:
    set $P422[$I419], $P414
.annotate 'line', 189
    .return ($P414)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "methods"  :subid("34_1303928979.9") :outer("22_1303928979.9")
    .param pmc param_436
    .param pmc param_437
    .param pmc param_438 :optional :named("local")
    .param int has_param_438 :opt_flag
.annotate 'line', 206
    .const 'Sub' $P449 = "35_1303928979.9" 
    capture_lex $P449
    .lex "self", param_436
    .lex "$obj", param_437
    if has_param_438, optparam_310
    new $P439, "Undef"
    set param_438, $P439
  optparam_310:
    .lex "$local", param_438
.annotate 'line', 207
    $P440 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meths", $P440
.annotate 'line', 206
    find_lex $P441, "@meths"
    unless_null $P441, vivify_311
    $P441 = root_new ['parrot';'ResizablePMCArray']
  vivify_311:
.annotate 'line', 208
    find_lex $P443, "self"
    find_lex $P444, "$?CLASS"
    getattribute $P445, $P443, $P444, "%!methods"
    unless_null $P445, vivify_312
    $P445 = root_new ['parrot';'Hash']
  vivify_312:
    defined $I446, $P445
    unless $I446, for_undef_313
    iter $P442, $P445
    new $P456, 'ExceptionHandler'
    set_label $P456, loop455_handler
    $P456."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P456
  loop455_test:
    unless $P442, loop455_done
    shift $P447, $P442
  loop455_redo:
    .const 'Sub' $P449 = "35_1303928979.9" 
    capture_lex $P449
    $P449($P447)
  loop455_next:
    goto loop455_test
  loop455_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P457, exception, 'type'
    eq $P457, .CONTROL_LOOP_NEXT, loop455_next
    eq $P457, .CONTROL_LOOP_REDO, loop455_redo
  loop455_done:
    pop_eh 
  for_undef_313:
    find_lex $P458, "@meths"
    unless_null $P458, vivify_316
    $P458 = root_new ['parrot';'ResizablePMCArray']
  vivify_316:
.annotate 'line', 206
    .return ($P458)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block448"  :anon :subid("35_1303928979.9") :outer("34_1303928979.9")
    .param pmc param_450
.annotate 'line', 208
    .lex "$_", param_450
.annotate 'line', 209
    find_lex $P451, "@meths"
    unless_null $P451, vivify_314
    $P451 = root_new ['parrot';'ResizablePMCArray']
  vivify_314:
    find_lex $P452, "$_"
    unless_null $P452, vivify_315
    new $P452, "Undef"
  vivify_315:
    $P453 = $P452."value"()
    $P454 = $P451."push"($P453)
.annotate 'line', 208
    .return ($P454)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "method_table"  :subid("36_1303928979.9") :outer("22_1303928979.9")
    .param pmc param_460
    .param pmc param_461
.annotate 'line', 214
    .lex "self", param_460
    .lex "$obj", param_461
    find_lex $P462, "self"
    find_lex $P463, "$?CLASS"
    getattribute $P464, $P462, $P463, "%!methods"
    unless_null $P464, vivify_317
    $P464 = root_new ['parrot';'Hash']
  vivify_317:
    .return ($P464)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "collisions"  :subid("37_1303928979.9") :outer("22_1303928979.9")
    .param pmc param_466
    .param pmc param_467
.annotate 'line', 218
    .lex "self", param_466
    .lex "$obj", param_467
    find_lex $P468, "self"
    find_lex $P469, "$?CLASS"
    getattribute $P470, $P468, $P469, "@!collisions"
    unless_null $P470, vivify_318
    $P470 = root_new ['parrot';'ResizablePMCArray']
  vivify_318:
    .return ($P470)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "name"  :subid("38_1303928979.9") :outer("22_1303928979.9")
    .param pmc param_472
    .param pmc param_473
.annotate 'line', 222
    .lex "self", param_472
    .lex "$obj", param_473
    find_lex $P474, "self"
    find_lex $P475, "$?CLASS"
    getattribute $P476, $P474, $P475, "$!name"
    unless_null $P476, vivify_319
    new $P476, "Undef"
  vivify_319:
    .return ($P476)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "attributes"  :subid("39_1303928979.9") :outer("22_1303928979.9")
    .param pmc param_478
    .param pmc param_479
    .param pmc param_480 :optional :named("local")
    .param int has_param_480 :opt_flag
.annotate 'line', 226
    .const 'Sub' $P491 = "40_1303928979.9" 
    capture_lex $P491
    .lex "self", param_478
    .lex "$obj", param_479
    if has_param_480, optparam_320
    new $P481, "Undef"
    set param_480, $P481
  optparam_320:
    .lex "$local", param_480
.annotate 'line', 227
    $P482 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attrs", $P482
.annotate 'line', 226
    find_lex $P483, "@attrs"
    unless_null $P483, vivify_321
    $P483 = root_new ['parrot';'ResizablePMCArray']
  vivify_321:
.annotate 'line', 228
    find_lex $P485, "self"
    find_lex $P486, "$?CLASS"
    getattribute $P487, $P485, $P486, "%!attributes"
    unless_null $P487, vivify_322
    $P487 = root_new ['parrot';'Hash']
  vivify_322:
    defined $I488, $P487
    unless $I488, for_undef_323
    iter $P484, $P487
    new $P498, 'ExceptionHandler'
    set_label $P498, loop497_handler
    $P498."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P498
  loop497_test:
    unless $P484, loop497_done
    shift $P489, $P484
  loop497_redo:
    .const 'Sub' $P491 = "40_1303928979.9" 
    capture_lex $P491
    $P491($P489)
  loop497_next:
    goto loop497_test
  loop497_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P499, exception, 'type'
    eq $P499, .CONTROL_LOOP_NEXT, loop497_next
    eq $P499, .CONTROL_LOOP_REDO, loop497_redo
  loop497_done:
    pop_eh 
  for_undef_323:
    find_lex $P500, "@attrs"
    unless_null $P500, vivify_326
    $P500 = root_new ['parrot';'ResizablePMCArray']
  vivify_326:
.annotate 'line', 226
    .return ($P500)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block490"  :anon :subid("40_1303928979.9") :outer("39_1303928979.9")
    .param pmc param_492
.annotate 'line', 228
    .lex "$_", param_492
.annotate 'line', 229
    find_lex $P493, "@attrs"
    unless_null $P493, vivify_324
    $P493 = root_new ['parrot';'ResizablePMCArray']
  vivify_324:
    find_lex $P494, "$_"
    unless_null $P494, vivify_325
    new $P494, "Undef"
  vivify_325:
    $P495 = $P494."value"()
    $P496 = $P493."push"($P495)
.annotate 'line', 228
    .return ($P496)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "roles"  :subid("41_1303928979.9") :outer("22_1303928979.9")
    .param pmc param_502
    .param pmc param_503
.annotate 'line', 234
    .lex "self", param_502
    .lex "$obj", param_503
    find_lex $P504, "self"
    find_lex $P505, "$?CLASS"
    getattribute $P506, $P504, $P505, "@!roles"
    unless_null $P506, vivify_327
    $P506 = root_new ['parrot';'ResizablePMCArray']
  vivify_327:
    .return ($P506)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "instance_of"  :subid("42_1303928979.9") :outer("22_1303928979.9")
    .param pmc param_508
    .param pmc param_509
.annotate 'line', 238
    .lex "self", param_508
    .lex "$obj", param_509
    find_lex $P510, "self"
    find_lex $P511, "$?CLASS"
    getattribute $P512, $P510, $P511, "$!instance_of"
    unless_null $P512, vivify_328
    new $P512, "Undef"
  vivify_328:
    .return ($P512)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block553"  :subid("44_1303928979.9") :outer("10_1303928979.9")
.annotate 'line', 244
    .const 'Sub' $P767 = "54_1303928979.9" 
    capture_lex $P767
    .const 'Sub' $P627 = "49_1303928979.9" 
    capture_lex $P627
    .const 'Sub' $P590 = "47_1303928979.9" 
    capture_lex $P590
    .const 'Sub' $P555 = "45_1303928979.9" 
    capture_lex $P555
.annotate 'line', 246
    .const 'Sub' $P555 = "45_1303928979.9" 
    newclosure $P589, $P555
    .lex "has_method", $P589
.annotate 'line', 254
    .const 'Sub' $P590 = "47_1303928979.9" 
    newclosure $P622, $P590
    .lex "has_attribute", $P622
.annotate 'line', 244
    .lex "$?PACKAGE", $P623
    .lex "$?CLASS", $P624
    find_lex $P625, "has_method"
    find_lex $P626, "has_attribute"
.annotate 'line', 262
    .const 'Sub' $P627 = "49_1303928979.9" 
    newclosure $P765, $P627
.annotate 'line', 244
    .return ($P765)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "" :load :init :subid("post329") :outer("44_1303928979.9")
.annotate 'line', 244
    .const 'Sub' $P554 = "44_1303928979.9" 
    .local pmc block
    set block, $P554
    .const 'Sub' $P767 = "54_1303928979.9" 
    capture_lex $P767
    $P767()
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block766"  :anon :subid("54_1303928979.9") :outer("44_1303928979.9")
.annotate 'line', 244
    nqp_get_sc_object $P768, "1303928976.25", 3
    .local pmc type_obj
    set type_obj, $P768
    get_how $P769, type_obj
    .const 'Sub' $P770 = "49_1303928979.9" 
    $P769."add_method"(type_obj, "apply", $P770)
    get_how $P771, type_obj
    $P772 = $P771."compose"(type_obj)
    .return ($P772)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "has_method"  :subid("45_1303928979.9") :outer("44_1303928979.9")
    .param pmc param_558
    .param pmc param_559
    .param pmc param_560
.annotate 'line', 246
    .const 'Sub' $P572 = "46_1303928979.9" 
    capture_lex $P572
    new $P557, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P557, control_556
    push_eh $P557
    .lex "$target", param_558
    .lex "$name", param_559
    .lex "$local", param_560
.annotate 'line', 247
    $P561 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P561
    find_lex $P562, "$target"
    unless_null $P562, vivify_330
    new $P562, "Undef"
  vivify_330:
    get_how $P563, $P562
    find_lex $P564, "$target"
    unless_null $P564, vivify_331
    new $P564, "Undef"
  vivify_331:
    find_lex $P565, "$local"
    unless_null $P565, vivify_332
    new $P565, "Undef"
  vivify_332:
    $P566 = $P563."methods"($P564, $P565 :named("local"))
    store_lex "@methods", $P566
.annotate 'line', 248
    find_lex $P568, "@methods"
    unless_null $P568, vivify_333
    $P568 = root_new ['parrot';'ResizablePMCArray']
  vivify_333:
    defined $I569, $P568
    unless $I569, for_undef_334
    iter $P567, $P568
    new $P584, 'ExceptionHandler'
    set_label $P584, loop583_handler
    $P584."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P584
  loop583_test:
    unless $P567, loop583_done
    shift $P570, $P567
  loop583_redo:
    .const 'Sub' $P572 = "46_1303928979.9" 
    capture_lex $P572
    $P572($P570)
  loop583_next:
    goto loop583_test
  loop583_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P585, exception, 'type'
    eq $P585, .CONTROL_LOOP_NEXT, loop583_next
    eq $P585, .CONTROL_LOOP_REDO, loop583_redo
  loop583_done:
    pop_eh 
  for_undef_334:
.annotate 'line', 251
    new $P586, "Exception"
    set $P586['type'], .CONTROL_RETURN
    new $P587, "Integer"
    assign $P587, 0
    setattribute $P586, 'payload', $P587
    throw $P586
.annotate 'line', 246
    .return ()
  control_556:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P588, exception, "payload"
    .return ($P588)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "_block571"  :anon :subid("46_1303928979.9") :outer("45_1303928979.9")
    .param pmc param_573
.annotate 'line', 248
    .lex "$_", param_573
.annotate 'line', 249
    find_lex $P576, "$_"
    unless_null $P576, vivify_335
    new $P576, "Undef"
  vivify_335:
    set $S577, $P576
    find_lex $P578, "$name"
    unless_null $P578, vivify_336
    new $P578, "Undef"
  vivify_336:
    set $S579, $P578
    iseq $I580, $S577, $S579
    if $I580, if_575
    new $P574, 'Integer'
    set $P574, $I580
    goto if_575_end
  if_575:
    new $P581, "Exception"
    set $P581['type'], .CONTROL_RETURN
    new $P582, "Integer"
    assign $P582, 1
    setattribute $P581, 'payload', $P582
    throw $P581
  if_575_end:
.annotate 'line', 248
    .return ($P574)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "has_attribute"  :subid("47_1303928979.9") :outer("44_1303928979.9")
    .param pmc param_593
    .param pmc param_594
.annotate 'line', 254
    .const 'Sub' $P605 = "48_1303928979.9" 
    capture_lex $P605
    new $P592, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P592, control_591
    push_eh $P592
    .lex "$target", param_593
    .lex "$name", param_594
.annotate 'line', 255
    $P595 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attributes", $P595
    find_lex $P596, "$target"
    unless_null $P596, vivify_337
    new $P596, "Undef"
  vivify_337:
    get_how $P597, $P596
    find_lex $P598, "$target"
    unless_null $P598, vivify_338
    new $P598, "Undef"
  vivify_338:
    $P599 = $P597."attributes"($P598, 1 :named("local"))
    store_lex "@attributes", $P599
.annotate 'line', 256
    find_lex $P601, "@attributes"
    unless_null $P601, vivify_339
    $P601 = root_new ['parrot';'ResizablePMCArray']
  vivify_339:
    defined $I602, $P601
    unless $I602, for_undef_340
    iter $P600, $P601
    new $P617, 'ExceptionHandler'
    set_label $P617, loop616_handler
    $P617."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P617
  loop616_test:
    unless $P600, loop616_done
    shift $P603, $P600
  loop616_redo:
    .const 'Sub' $P605 = "48_1303928979.9" 
    capture_lex $P605
    $P605($P603)
  loop616_next:
    goto loop616_test
  loop616_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P618, exception, 'type'
    eq $P618, .CONTROL_LOOP_NEXT, loop616_next
    eq $P618, .CONTROL_LOOP_REDO, loop616_redo
  loop616_done:
    pop_eh 
  for_undef_340:
.annotate 'line', 259
    new $P619, "Exception"
    set $P619['type'], .CONTROL_RETURN
    new $P620, "Integer"
    assign $P620, 0
    setattribute $P619, 'payload', $P620
    throw $P619
.annotate 'line', 254
    .return ()
  control_591:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P621, exception, "payload"
    .return ($P621)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "_block604"  :anon :subid("48_1303928979.9") :outer("47_1303928979.9")
    .param pmc param_606
.annotate 'line', 256
    .lex "$_", param_606
.annotate 'line', 257
    find_lex $P609, "$_"
    unless_null $P609, vivify_341
    new $P609, "Undef"
  vivify_341:
    $S610 = $P609."name"()
    find_lex $P611, "$name"
    unless_null $P611, vivify_342
    new $P611, "Undef"
  vivify_342:
    set $S612, $P611
    iseq $I613, $S610, $S612
    if $I613, if_608
    new $P607, 'Integer'
    set $P607, $I613
    goto if_608_end
  if_608:
    new $P614, "Exception"
    set $P614['type'], .CONTROL_RETURN
    new $P615, "Integer"
    assign $P615, 1
    setattribute $P614, 'payload', $P615
    throw $P614
  if_608_end:
.annotate 'line', 256
    .return ($P607)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "apply"  :subid("49_1303928979.9") :outer("44_1303928979.9")
    .param pmc param_628
    .param pmc param_629
    .param pmc param_630
.annotate 'line', 262
    .const 'Sub' $P736 = "53_1303928979.9" 
    capture_lex $P736
    .const 'Sub' $P710 = "52_1303928979.9" 
    capture_lex $P710
    .const 'Sub' $P681 = "51_1303928979.9" 
    capture_lex $P681
    .const 'Sub' $P661 = "50_1303928979.9" 
    capture_lex $P661
    .lex "self", param_628
    .lex "$target", param_629
    .lex "@roles", param_630
.annotate 'line', 265
    new $P631, "Undef"
    .lex "$to_compose", $P631
.annotate 'line', 266
    new $P632, "Undef"
    .lex "$to_compose_meta", $P632
.annotate 'line', 281
    $P633 = root_new ['parrot';'ResizablePMCArray']
    .lex "@collisions", $P633
.annotate 'line', 290
    $P634 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P634
.annotate 'line', 298
    $P635 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attributes", $P635
.annotate 'line', 310
    $P636 = root_new ['parrot';'ResizablePMCArray']
    .lex "@done", $P636
.annotate 'line', 262
    find_lex $P637, "$to_compose"
    unless_null $P637, vivify_343
    new $P637, "Undef"
  vivify_343:
    find_lex $P638, "$to_compose_meta"
    unless_null $P638, vivify_344
    new $P638, "Undef"
  vivify_344:
.annotate 'line', 267
    find_lex $P640, "@roles"
    unless_null $P640, vivify_345
    $P640 = root_new ['parrot';'ResizablePMCArray']
  vivify_345:
    set $N641, $P640
    iseq $I642, $N641, 1.0
    if $I642, if_639
.annotate 'line', 272
    find_lex $P647, "NQPConcreteRoleHOW"
    find_lex $P648, "$?PACKAGE"
    get_who $P649, $P648
    set $P652, $P649["NQPMu"]
    unless_null $P652, vivify_346
    get_hll_global $P650, "GLOBAL"
    get_who $P651, $P650
    set $P652, $P651["NQPMu"]
  vivify_346:
    $P653 = $P647."new_type"($P652 :named("instance_of"))
    store_lex "$to_compose", $P653
.annotate 'line', 273
    find_lex $P654, "$to_compose"
    unless_null $P654, vivify_347
    new $P654, "Undef"
  vivify_347:
    get_how $P655, $P654
    store_lex "$to_compose_meta", $P655
.annotate 'line', 274
    find_lex $P657, "@roles"
    unless_null $P657, vivify_348
    $P657 = root_new ['parrot';'ResizablePMCArray']
  vivify_348:
    defined $I658, $P657
    unless $I658, for_undef_349
    iter $P656, $P657
    new $P668, 'ExceptionHandler'
    set_label $P668, loop667_handler
    $P668."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P668
  loop667_test:
    unless $P656, loop667_done
    shift $P659, $P656
  loop667_redo:
    .const 'Sub' $P661 = "50_1303928979.9" 
    capture_lex $P661
    $P661($P659)
  loop667_next:
    goto loop667_test
  loop667_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P669, exception, 'type'
    eq $P669, .CONTROL_LOOP_NEXT, loop667_next
    eq $P669, .CONTROL_LOOP_REDO, loop667_redo
  loop667_done:
    pop_eh 
  for_undef_349:
.annotate 'line', 277
    find_lex $P670, "$to_compose_meta"
    unless_null $P670, vivify_353
    new $P670, "Undef"
  vivify_353:
    find_lex $P671, "$to_compose"
    unless_null $P671, vivify_354
    new $P671, "Undef"
  vivify_354:
    $P672 = $P670."compose"($P671)
    store_lex "$to_compose", $P672
.annotate 'line', 271
    goto if_639_end
  if_639:
.annotate 'line', 268
    find_lex $P643, "@roles"
    unless_null $P643, vivify_355
    $P643 = root_new ['parrot';'ResizablePMCArray']
  vivify_355:
    set $P644, $P643[0]
    unless_null $P644, vivify_356
    new $P644, "Undef"
  vivify_356:
    store_lex "$to_compose", $P644
.annotate 'line', 269
    find_lex $P645, "$to_compose"
    unless_null $P645, vivify_357
    new $P645, "Undef"
  vivify_357:
    get_how $P646, $P645
    store_lex "$to_compose_meta", $P646
  if_639_end:
.annotate 'line', 281
    find_lex $P673, "$to_compose_meta"
    unless_null $P673, vivify_358
    new $P673, "Undef"
  vivify_358:
    find_lex $P674, "$to_compose"
    unless_null $P674, vivify_359
    new $P674, "Undef"
  vivify_359:
    $P675 = $P673."collisions"($P674)
    store_lex "@collisions", $P675
.annotate 'line', 282
    find_lex $P677, "@collisions"
    unless_null $P677, vivify_360
    $P677 = root_new ['parrot';'ResizablePMCArray']
  vivify_360:
    defined $I678, $P677
    unless $I678, for_undef_361
    iter $P676, $P677
    new $P700, 'ExceptionHandler'
    set_label $P700, loop699_handler
    $P700."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P700
  loop699_test:
    unless $P676, loop699_done
    shift $P679, $P676
  loop699_redo:
    .const 'Sub' $P681 = "51_1303928979.9" 
    capture_lex $P681
    $P681($P679)
  loop699_next:
    goto loop699_test
  loop699_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P701, exception, 'type'
    eq $P701, .CONTROL_LOOP_NEXT, loop699_next
    eq $P701, .CONTROL_LOOP_REDO, loop699_redo
  loop699_done:
    pop_eh 
  for_undef_361:
.annotate 'line', 290
    find_lex $P702, "$to_compose_meta"
    unless_null $P702, vivify_367
    new $P702, "Undef"
  vivify_367:
    find_lex $P703, "$to_compose"
    unless_null $P703, vivify_368
    new $P703, "Undef"
  vivify_368:
    $P704 = $P702."methods"($P703)
    store_lex "@methods", $P704
.annotate 'line', 291
    find_lex $P706, "@methods"
    unless_null $P706, vivify_369
    $P706 = root_new ['parrot';'ResizablePMCArray']
  vivify_369:
    defined $I707, $P706
    unless $I707, for_undef_370
    iter $P705, $P706
    new $P726, 'ExceptionHandler'
    set_label $P726, loop725_handler
    $P726."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P726
  loop725_test:
    unless $P705, loop725_done
    shift $P708, $P705
  loop725_redo:
    .const 'Sub' $P710 = "52_1303928979.9" 
    capture_lex $P710
    $P710($P708)
  loop725_next:
    goto loop725_test
  loop725_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P727, exception, 'type'
    eq $P727, .CONTROL_LOOP_NEXT, loop725_next
    eq $P727, .CONTROL_LOOP_REDO, loop725_redo
  loop725_done:
    pop_eh 
  for_undef_370:
.annotate 'line', 298
    find_lex $P728, "$to_compose_meta"
    unless_null $P728, vivify_377
    new $P728, "Undef"
  vivify_377:
    find_lex $P729, "$to_compose"
    unless_null $P729, vivify_378
    new $P729, "Undef"
  vivify_378:
    $P730 = $P728."attributes"($P729)
    store_lex "@attributes", $P730
.annotate 'line', 299
    find_lex $P732, "@attributes"
    unless_null $P732, vivify_379
    $P732 = root_new ['parrot';'ResizablePMCArray']
  vivify_379:
    defined $I733, $P732
    unless $I733, for_undef_380
    iter $P731, $P732
    new $P760, 'ExceptionHandler'
    set_label $P760, loop759_handler
    $P760."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P760
  loop759_test:
    unless $P731, loop759_done
    shift $P734, $P731
  loop759_redo:
    .const 'Sub' $P736 = "53_1303928979.9" 
    capture_lex $P736
    $P736($P734)
  loop759_next:
    goto loop759_test
  loop759_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P761, exception, 'type'
    eq $P761, .CONTROL_LOOP_NEXT, loop759_next
    eq $P761, .CONTROL_LOOP_REDO, loop759_redo
  loop759_done:
    pop_eh 
  for_undef_380:
    find_lex $P762, "@done"
    unless_null $P762, vivify_389
    $P762 = root_new ['parrot';'ResizablePMCArray']
  vivify_389:
.annotate 'line', 311
    find_lex $P763, "$to_compose"
    unless_null $P763, vivify_390
    new $P763, "Undef"
  vivify_390:
    find_lex $P764, "@done"
    unless_null $P764, vivify_391
    $P764 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@done", $P764
  vivify_391:
    set $P764[0], $P763
.annotate 'line', 262
    .return ($P763)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block660"  :anon :subid("50_1303928979.9") :outer("49_1303928979.9")
    .param pmc param_662
.annotate 'line', 274
    .lex "$_", param_662
.annotate 'line', 275
    find_lex $P663, "$to_compose_meta"
    unless_null $P663, vivify_350
    new $P663, "Undef"
  vivify_350:
    find_lex $P664, "$to_compose"
    unless_null $P664, vivify_351
    new $P664, "Undef"
  vivify_351:
    find_lex $P665, "$_"
    unless_null $P665, vivify_352
    new $P665, "Undef"
  vivify_352:
    $P666 = $P663."add_role"($P664, $P665)
.annotate 'line', 274
    .return ($P666)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block680"  :anon :subid("51_1303928979.9") :outer("49_1303928979.9")
    .param pmc param_682
.annotate 'line', 282
    .lex "$_", param_682
.annotate 'line', 283
    find_lex $P685, "$target"
    unless_null $P685, vivify_362
    new $P685, "Undef"
  vivify_362:
    find_lex $P686, "$_"
    unless_null $P686, vivify_363
    new $P686, "Undef"
  vivify_363:
    set $S687, $P686
    $P688 = "has_method"($P685, $S687, 1)
    unless $P688, unless_684
    set $P683, $P688
    goto unless_684_end
  unless_684:
.annotate 'line', 284
    new $P689, 'String'
    set $P689, "Method '"
    find_lex $P690, "$_"
    unless_null $P690, vivify_364
    new $P690, "Undef"
  vivify_364:
    concat $P691, $P689, $P690
    concat $P692, $P691, "' collides and a resolution must be provided by the class '"
.annotate 'line', 285
    find_lex $P693, "$target"
    unless_null $P693, vivify_365
    new $P693, "Undef"
  vivify_365:
    get_how $P694, $P693
    find_lex $P695, "$target"
    unless_null $P695, vivify_366
    new $P695, "Undef"
  vivify_366:
    $S696 = $P694."name"($P695)
    concat $P697, $P692, $S696
.annotate 'line', 284
    concat $P698, $P697, "'"
.annotate 'line', 285
    die $P698
  unless_684_end:
.annotate 'line', 282
    .return ($P683)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block709"  :anon :subid("52_1303928979.9") :outer("49_1303928979.9")
    .param pmc param_711
.annotate 'line', 291
    .lex "$_", param_711
.annotate 'line', 292
    find_lex $P714, "$target"
    unless_null $P714, vivify_371
    new $P714, "Undef"
  vivify_371:
    find_lex $P715, "$_"
    unless_null $P715, vivify_372
    new $P715, "Undef"
  vivify_372:
    set $S716, $P715
    $P717 = "has_method"($P714, $S716, 0)
    unless $P717, unless_713
    set $P712, $P717
    goto unless_713_end
  unless_713:
.annotate 'line', 293
    find_lex $P718, "$target"
    unless_null $P718, vivify_373
    new $P718, "Undef"
  vivify_373:
    get_how $P719, $P718
    find_lex $P720, "$target"
    unless_null $P720, vivify_374
    new $P720, "Undef"
  vivify_374:
    find_lex $P721, "$_"
    unless_null $P721, vivify_375
    new $P721, "Undef"
  vivify_375:
    set $S722, $P721
    find_lex $P723, "$_"
    unless_null $P723, vivify_376
    new $P723, "Undef"
  vivify_376:
    $P724 = $P719."add_method"($P720, $S722, $P723)
.annotate 'line', 292
    set $P712, $P724
  unless_713_end:
.annotate 'line', 291
    .return ($P712)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block735"  :anon :subid("53_1303928979.9") :outer("49_1303928979.9")
    .param pmc param_737
.annotate 'line', 299
    .lex "$_", param_737
.annotate 'line', 300
    find_lex $P739, "$target"
    unless_null $P739, vivify_381
    new $P739, "Undef"
  vivify_381:
    find_lex $P740, "$_"
    unless_null $P740, vivify_382
    new $P740, "Undef"
  vivify_382:
    $P741 = $P740."name"()
    $P742 = "has_attribute"($P739, $P741)
    unless $P742, if_738_end
.annotate 'line', 301
    new $P743, "String"
    assign $P743, "Attribute '"
    find_lex $P744, "$_"
    unless_null $P744, vivify_383
    new $P744, "Undef"
  vivify_383:
    $S745 = $P744."name"()
    concat $P746, $P743, $S745
    concat $P747, $P746, "' already exists in the class '"
.annotate 'line', 302
    find_lex $P748, "$target"
    unless_null $P748, vivify_384
    new $P748, "Undef"
  vivify_384:
    get_how $P749, $P748
    find_lex $P750, "$target"
    unless_null $P750, vivify_385
    new $P750, "Undef"
  vivify_385:
    $S751 = $P749."name"($P750)
    concat $P752, $P747, $S751
.annotate 'line', 301
    concat $P753, $P752, "', but a role also wishes to compose it"
.annotate 'line', 302
    die $P753
  if_738_end:
.annotate 'line', 304
    find_lex $P754, "$target"
    unless_null $P754, vivify_386
    new $P754, "Undef"
  vivify_386:
    get_how $P755, $P754
    find_lex $P756, "$target"
    unless_null $P756, vivify_387
    new $P756, "Undef"
  vivify_387:
    find_lex $P757, "$_"
    unless_null $P757, vivify_388
    new $P757, "Undef"
  vivify_388:
    $P758 = $P755."add_attribute"($P756, $P757)
.annotate 'line', 299
    .return ($P758)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block773"  :subid("55_1303928979.9") :outer("10_1303928979.9")
.annotate 'line', 320
    .const 'Sub' $P1076 = "79_1303928979.9" 
    capture_lex $P1076
    .const 'Sub' $P1068 = "78_1303928979.9" 
    capture_lex $P1068
    .const 'Sub' $P1044 = "76_1303928979.9" 
    capture_lex $P1044
    .const 'Sub' $P1038 = "75_1303928979.9" 
    capture_lex $P1038
    .const 'Sub' $P1032 = "74_1303928979.9" 
    capture_lex $P1032
    .const 'Sub' $P1008 = "72_1303928979.9" 
    capture_lex $P1008
    .const 'Sub' $P902 = "67_1303928979.9" 
    capture_lex $P902
    .const 'Sub' $P899 = "66_1303928979.9" 
    capture_lex $P899
    .const 'Sub' $P892 = "65_1303928979.9" 
    capture_lex $P892
    .const 'Sub' $P879 = "64_1303928979.9" 
    capture_lex $P879
    .const 'Sub' $P875 = "63_1303928979.9" 
    capture_lex $P875
    .const 'Sub' $P854 = "62_1303928979.9" 
    capture_lex $P854
    .const 'Sub' $P833 = "61_1303928979.9" 
    capture_lex $P833
    .const 'Sub' $P814 = "60_1303928979.9" 
    capture_lex $P814
    .const 'Sub' $P807 = "59_1303928979.9" 
    capture_lex $P807
    .const 'Sub' $P792 = "58_1303928979.9" 
    capture_lex $P792
    .const 'Sub' $P786 = "57_1303928979.9" 
    capture_lex $P786
    .const 'Sub' $P777 = "56_1303928979.9" 
    capture_lex $P777
    .lex "$?PACKAGE", $P775
    .lex "$?CLASS", $P776
.annotate 'line', 485
    .const 'Sub' $P1068 = "78_1303928979.9" 
    newclosure $P1074, $P1068
.annotate 'line', 320
    .return ($P1074)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "" :load :init :subid("post392") :outer("55_1303928979.9")
.annotate 'line', 320
    .const 'Sub' $P774 = "55_1303928979.9" 
    .local pmc block
    set block, $P774
    .const 'Sub' $P1076 = "79_1303928979.9" 
    capture_lex $P1076
    $P1076()
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1075"  :anon :subid("79_1303928979.9") :outer("55_1303928979.9")
.annotate 'line', 320
    nqp_get_sc_object $P1077, "1303928976.25", 4
    .local pmc type_obj
    set type_obj, $P1077
    get_how $P1078, type_obj
    .const 'Sub' $P1079 = "56_1303928979.9" 
    $P1078."add_method"(type_obj, "new", $P1079)
    get_how $P1080, type_obj
    .const 'Sub' $P1081 = "57_1303928979.9" 
    $P1080."add_method"(type_obj, "BUILD", $P1081)
    get_how $P1082, type_obj
    .const 'Sub' $P1083 = "58_1303928979.9" 
    $P1082."add_method"(type_obj, "new_type", $P1083)
    get_how $P1084, type_obj
    .const 'Sub' $P1085 = "59_1303928979.9" 
    $P1084."add_method"(type_obj, "set_body_block", $P1085)
    get_how $P1086, type_obj
    .const 'Sub' $P1087 = "60_1303928979.9" 
    $P1086."add_method"(type_obj, "add_method", $P1087)
    get_how $P1088, type_obj
    .const 'Sub' $P1089 = "61_1303928979.9" 
    $P1088."add_method"(type_obj, "add_multi_method", $P1089)
    get_how $P1090, type_obj
    .const 'Sub' $P1091 = "62_1303928979.9" 
    $P1090."add_method"(type_obj, "add_attribute", $P1091)
    get_how $P1092, type_obj
    .const 'Sub' $P1093 = "63_1303928979.9" 
    $P1092."add_method"(type_obj, "add_parent", $P1093)
    get_how $P1094, type_obj
    .const 'Sub' $P1095 = "64_1303928979.9" 
    $P1094."add_method"(type_obj, "add_role", $P1095)
    get_how $P1096, type_obj
    .const 'Sub' $P1097 = "65_1303928979.9" 
    $P1096."add_method"(type_obj, "compose", $P1097)
    get_how $P1098, type_obj
    .const 'Sub' $P1099 = "66_1303928979.9" 
    $P1098."add_method"(type_obj, "parametric", $P1099)
    get_how $P1100, type_obj
    .const 'Sub' $P1101 = "67_1303928979.9" 
    $P1100."add_method"(type_obj, "instantiate", $P1101)
    get_how $P1102, type_obj
    .const 'Sub' $P1103 = "72_1303928979.9" 
    $P1102."add_method"(type_obj, "methods", $P1103)
    get_how $P1104, type_obj
    .const 'Sub' $P1105 = "74_1303928979.9" 
    $P1104."add_method"(type_obj, "method_table", $P1105)
    get_how $P1106, type_obj
    .const 'Sub' $P1107 = "75_1303928979.9" 
    $P1106."add_method"(type_obj, "name", $P1107)
    get_how $P1108, type_obj
    .const 'Sub' $P1109 = "76_1303928979.9" 
    $P1108."add_method"(type_obj, "attributes", $P1109)
    get_how $P1110, type_obj
    .const 'Sub' $P1111 = "78_1303928979.9" 
    $P1110."add_method"(type_obj, "roles", $P1111)
    get_how $P1112, type_obj
    $P1113 = $P1112."compose"(type_obj)
    .return ($P1113)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "new"  :subid("56_1303928979.9") :outer("55_1303928979.9")
    .param pmc param_778
    .param pmc param_779 :named("name")
.annotate 'line', 350
    .lex "self", param_778
    .lex "$name", param_779
.annotate 'line', 351
    new $P780, "Undef"
    .lex "$obj", $P780
    find_lex $P781, "self"
    repr_instance_of $P782, $P781
    store_lex "$obj", $P782
.annotate 'line', 352
    find_lex $P783, "$obj"
    unless_null $P783, vivify_393
    new $P783, "Undef"
  vivify_393:
    find_lex $P784, "$name"
    unless_null $P784, vivify_394
    new $P784, "Undef"
  vivify_394:
    $P783."BUILD"($P784 :named("name"))
    find_lex $P785, "$obj"
    unless_null $P785, vivify_395
    new $P785, "Undef"
  vivify_395:
.annotate 'line', 350
    .return ($P785)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "BUILD"  :subid("57_1303928979.9") :outer("55_1303928979.9")
    .param pmc param_787
    .param pmc param_788 :named("name")
.annotate 'line', 356
    .lex "self", param_787
    .lex "$name", param_788
.annotate 'line', 357
    find_lex $P789, "$name"
    unless_null $P789, vivify_396
    new $P789, "Undef"
  vivify_396:
    find_lex $P790, "self"
    find_lex $P791, "$?CLASS"
    setattribute $P790, $P791, "$!name", $P789
.annotate 'line', 356
    .return ($P789)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "new_type"  :subid("58_1303928979.9") :outer("55_1303928979.9")
    .param pmc param_793
    .param pmc param_794 :optional :named("name")
    .param int has_param_794 :opt_flag
    .param pmc param_796 :optional :named("repr")
    .param int has_param_796 :opt_flag
.annotate 'line', 362
    .lex "self", param_793
    if has_param_794, optparam_397
    new $P795, "String"
    assign $P795, "<anon>"
    set param_794, $P795
  optparam_397:
    .lex "$name", param_794
    if has_param_796, optparam_398
    new $P797, "String"
    assign $P797, "P6opaque"
    set param_796, $P797
  optparam_398:
    .lex "$repr", param_796
.annotate 'line', 363
    new $P798, "Undef"
    .lex "$metarole", $P798
    find_lex $P799, "self"
    find_lex $P800, "$name"
    unless_null $P800, vivify_399
    new $P800, "Undef"
  vivify_399:
    $P801 = $P799."new"($P800 :named("name"))
    store_lex "$metarole", $P801
.annotate 'line', 365
    find_lex $P802, "$metarole"
    unless_null $P802, vivify_400
    new $P802, "Undef"
  vivify_400:
    find_lex $P803, "$repr"
    unless_null $P803, vivify_401
    new $P803, "Undef"
  vivify_401:
    set $S804, $P803
    repr_type_object_for $P805, $P802, $S804
    $P806 = root_new ['parrot';'Hash']
    set_who $P805, $P806
.annotate 'line', 362
    .return ($P805)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "set_body_block"  :subid("59_1303928979.9") :outer("55_1303928979.9")
    .param pmc param_808
    .param pmc param_809
    .param pmc param_810
.annotate 'line', 369
    .lex "self", param_808
    .lex "$obj", param_809
    .lex "$body_block", param_810
.annotate 'line', 370
    find_lex $P811, "$body_block"
    unless_null $P811, vivify_402
    new $P811, "Undef"
  vivify_402:
    find_lex $P812, "self"
    find_lex $P813, "$?CLASS"
    setattribute $P812, $P813, "$!body_block", $P811
.annotate 'line', 369
    .return ($P811)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_method"  :subid("60_1303928979.9") :outer("55_1303928979.9")
    .param pmc param_815
    .param pmc param_816
    .param pmc param_817
    .param pmc param_818
.annotate 'line', 373
    .lex "self", param_815
    .lex "$obj", param_816
    .lex "$name", param_817
    .lex "$code_obj", param_818
.annotate 'line', 374
    find_lex $P820, "$name"
    unless_null $P820, vivify_403
    new $P820, "Undef"
  vivify_403:
    find_lex $P821, "self"
    find_lex $P822, "$?CLASS"
    getattribute $P823, $P821, $P822, "%!methods"
    unless_null $P823, vivify_404
    $P823 = root_new ['parrot';'Hash']
  vivify_404:
    set $P824, $P823[$P820]
    unless_null $P824, vivify_405
    new $P824, "Undef"
  vivify_405:
    unless $P824, if_819_end
.annotate 'line', 375
    new $P825, "String"
    assign $P825, "This role already has a method named "
    find_lex $P826, "$name"
    unless_null $P826, vivify_406
    new $P826, "Undef"
  vivify_406:
    concat $P827, $P825, $P826
    die $P827
  if_819_end:
.annotate 'line', 377
    find_lex $P828, "$code_obj"
    unless_null $P828, vivify_407
    new $P828, "Undef"
  vivify_407:
    find_lex $P829, "$name"
    unless_null $P829, vivify_408
    new $P829, "Undef"
  vivify_408:
    find_lex $P830, "self"
    find_lex $P831, "$?CLASS"
    getattribute $P832, $P830, $P831, "%!methods"
    unless_null $P832, vivify_409
    $P832 = root_new ['parrot';'Hash']
    setattribute $P830, $P831, "%!methods", $P832
  vivify_409:
    set $P832[$P829], $P828
.annotate 'line', 373
    .return ($P828)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_multi_method"  :subid("61_1303928979.9") :outer("55_1303928979.9")
    .param pmc param_834
    .param pmc param_835
    .param pmc param_836
    .param pmc param_837
.annotate 'line', 380
    .lex "self", param_834
    .lex "$obj", param_835
    .lex "$name", param_836
    .lex "$code_obj", param_837
.annotate 'line', 381
    $P838 = root_new ['parrot';'Hash']
    .lex "%todo", $P838
.annotate 'line', 380
    find_lex $P839, "%todo"
    unless_null $P839, vivify_410
    $P839 = root_new ['parrot';'Hash']
  vivify_410:
.annotate 'line', 382
    find_lex $P840, "$name"
    unless_null $P840, vivify_411
    new $P840, "Undef"
  vivify_411:
    find_lex $P841, "%todo"
    unless_null $P841, vivify_412
    $P841 = root_new ['parrot';'Hash']
    store_lex "%todo", $P841
  vivify_412:
    set $P841["name"], $P840
.annotate 'line', 383
    find_lex $P842, "$code_obj"
    unless_null $P842, vivify_413
    new $P842, "Undef"
  vivify_413:
    find_lex $P843, "%todo"
    unless_null $P843, vivify_414
    $P843 = root_new ['parrot';'Hash']
    store_lex "%todo", $P843
  vivify_414:
    set $P843["code"], $P842
.annotate 'line', 384
    find_lex $P844, "%todo"
    unless_null $P844, vivify_415
    $P844 = root_new ['parrot';'Hash']
  vivify_415:
    find_lex $P845, "self"
    find_lex $P846, "$?CLASS"
    getattribute $P847, $P845, $P846, "@!multi_methods_to_incorporate"
    unless_null $P847, vivify_416
    $P847 = root_new ['parrot';'ResizablePMCArray']
  vivify_416:
    set $N848, $P847
    set $I849, $N848
    find_lex $P850, "self"
    find_lex $P851, "$?CLASS"
    getattribute $P852, $P850, $P851, "@!multi_methods_to_incorporate"
    unless_null $P852, vivify_417
    $P852 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P850, $P851, "@!multi_methods_to_incorporate", $P852
  vivify_417:
    set $P852[$I849], $P844
    find_lex $P853, "$code_obj"
    unless_null $P853, vivify_418
    new $P853, "Undef"
  vivify_418:
.annotate 'line', 380
    .return ($P853)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_attribute"  :subid("62_1303928979.9") :outer("55_1303928979.9")
    .param pmc param_855
    .param pmc param_856
    .param pmc param_857
.annotate 'line', 388
    .lex "self", param_855
    .lex "$obj", param_856
    .lex "$meta_attr", param_857
.annotate 'line', 389
    new $P858, "Undef"
    .lex "$name", $P858
    find_lex $P859, "$meta_attr"
    unless_null $P859, vivify_419
    new $P859, "Undef"
  vivify_419:
    $P860 = $P859."name"()
    store_lex "$name", $P860
.annotate 'line', 390
    find_lex $P862, "$name"
    unless_null $P862, vivify_420
    new $P862, "Undef"
  vivify_420:
    find_lex $P863, "self"
    find_lex $P864, "$?CLASS"
    getattribute $P865, $P863, $P864, "%!attributes"
    unless_null $P865, vivify_421
    $P865 = root_new ['parrot';'Hash']
  vivify_421:
    set $P866, $P865[$P862]
    unless_null $P866, vivify_422
    new $P866, "Undef"
  vivify_422:
    unless $P866, if_861_end
.annotate 'line', 391
    new $P867, "String"
    assign $P867, "This role already has an attribute named "
    find_lex $P868, "$name"
    unless_null $P868, vivify_423
    new $P868, "Undef"
  vivify_423:
    concat $P869, $P867, $P868
    die $P869
  if_861_end:
.annotate 'line', 393
    find_lex $P870, "$meta_attr"
    unless_null $P870, vivify_424
    new $P870, "Undef"
  vivify_424:
    find_lex $P871, "$name"
    unless_null $P871, vivify_425
    new $P871, "Undef"
  vivify_425:
    find_lex $P872, "self"
    find_lex $P873, "$?CLASS"
    getattribute $P874, $P872, $P873, "%!attributes"
    unless_null $P874, vivify_426
    $P874 = root_new ['parrot';'Hash']
    setattribute $P872, $P873, "%!attributes", $P874
  vivify_426:
    set $P874[$P871], $P870
.annotate 'line', 388
    .return ($P870)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_parent"  :subid("63_1303928979.9") :outer("55_1303928979.9")
    .param pmc param_876
    .param pmc param_877
    .param pmc param_878
.annotate 'line', 396
    .lex "self", param_876
    .lex "$obj", param_877
    .lex "$parent", param_878
.annotate 'line', 397
    die "A role cannot inherit from a class"
.annotate 'line', 396
    .return ()
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_role"  :subid("64_1303928979.9") :outer("55_1303928979.9")
    .param pmc param_880
    .param pmc param_881
    .param pmc param_882
.annotate 'line', 400
    .lex "self", param_880
    .lex "$obj", param_881
    .lex "$role", param_882
.annotate 'line', 401
    find_lex $P883, "$role"
    unless_null $P883, vivify_427
    new $P883, "Undef"
  vivify_427:
    find_lex $P884, "self"
    find_lex $P885, "$?CLASS"
    getattribute $P886, $P884, $P885, "@!roles"
    unless_null $P886, vivify_428
    $P886 = root_new ['parrot';'ResizablePMCArray']
  vivify_428:
    set $N887, $P886
    set $I888, $N887
    find_lex $P889, "self"
    find_lex $P890, "$?CLASS"
    getattribute $P891, $P889, $P890, "@!roles"
    unless_null $P891, vivify_429
    $P891 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P889, $P890, "@!roles", $P891
  vivify_429:
    set $P891[$I888], $P883
.annotate 'line', 400
    .return ($P883)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "compose"  :subid("65_1303928979.9") :outer("55_1303928979.9")
    .param pmc param_893
    .param pmc param_894
.annotate 'line', 405
    .lex "self", param_893
    .lex "$obj", param_894
.annotate 'line', 406
    new $P895, "Integer"
    assign $P895, 1
    find_lex $P896, "self"
    find_lex $P897, "$?CLASS"
    setattribute $P896, $P897, "$!composed", $P895
    find_lex $P898, "$obj"
    unless_null $P898, vivify_430
    new $P898, "Undef"
  vivify_430:
.annotate 'line', 405
    .return ($P898)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "parametric"  :subid("66_1303928979.9") :outer("55_1303928979.9")
    .param pmc param_900
    .param pmc param_901
.annotate 'line', 416
    .lex "self", param_900
    .lex "$obj", param_901
    .return (1)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "instantiate"  :subid("67_1303928979.9") :outer("55_1303928979.9")
    .param pmc param_905
    .param pmc param_906
    .param pmc param_907
.annotate 'line', 422
    .const 'Sub' $P986 = "71_1303928979.9" 
    capture_lex $P986
    .const 'Sub' $P965 = "70_1303928979.9" 
    capture_lex $P965
    .const 'Sub' $P944 = "69_1303928979.9" 
    capture_lex $P944
    .const 'Sub' $P926 = "68_1303928979.9" 
    capture_lex $P926
    new $P904, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P904, control_903
    push_eh $P904
    .lex "self", param_905
    .lex "$obj", param_906
    .lex "$class_arg", param_907
.annotate 'line', 428
    new $P908, "Undef"
    .lex "$irole", $P908
.annotate 'line', 425
    find_lex $P909, "self"
    find_lex $P910, "$?CLASS"
    getattribute $P911, $P909, $P910, "$!body_block"
    unless_null $P911, vivify_431
    new $P911, "Undef"
  vivify_431:
    find_lex $P912, "$class_arg"
    unless_null $P912, vivify_432
    new $P912, "Undef"
  vivify_432:
    $P911($P912)
.annotate 'line', 428
    find_lex $P913, "NQPConcreteRoleHOW"
    find_lex $P914, "self"
    find_lex $P915, "$?CLASS"
    getattribute $P916, $P914, $P915, "$!name"
    unless_null $P916, vivify_433
    new $P916, "Undef"
  vivify_433:
    find_lex $P917, "$obj"
    unless_null $P917, vivify_434
    new $P917, "Undef"
  vivify_434:
    $P918 = $P913."new_type"($P916 :named("name"), $P917 :named("instance_of"))
    store_lex "$irole", $P918
.annotate 'line', 432
    find_lex $P920, "self"
    find_lex $P921, "$?CLASS"
    getattribute $P922, $P920, $P921, "%!attributes"
    unless_null $P922, vivify_435
    $P922 = root_new ['parrot';'Hash']
  vivify_435:
    defined $I923, $P922
    unless $I923, for_undef_436
    iter $P919, $P922
    new $P935, 'ExceptionHandler'
    set_label $P935, loop934_handler
    $P935."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P935
  loop934_test:
    unless $P919, loop934_done
    shift $P924, $P919
  loop934_redo:
    .const 'Sub' $P926 = "68_1303928979.9" 
    capture_lex $P926
    $P926($P924)
  loop934_next:
    goto loop934_test
  loop934_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P936, exception, 'type'
    eq $P936, .CONTROL_LOOP_NEXT, loop934_next
    eq $P936, .CONTROL_LOOP_REDO, loop934_redo
  loop934_done:
    pop_eh 
  for_undef_436:
.annotate 'line', 438
    find_lex $P938, "self"
    find_lex $P939, "$?CLASS"
    getattribute $P940, $P938, $P939, "%!methods"
    unless_null $P940, vivify_440
    $P940 = root_new ['parrot';'Hash']
  vivify_440:
    defined $I941, $P940
    unless $I941, for_undef_441
    iter $P937, $P940
    new $P956, 'ExceptionHandler'
    set_label $P956, loop955_handler
    $P956."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P956
  loop955_test:
    unless $P937, loop955_done
    shift $P942, $P937
  loop955_redo:
    .const 'Sub' $P944 = "69_1303928979.9" 
    capture_lex $P944
    $P944($P942)
  loop955_next:
    goto loop955_test
  loop955_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P957, exception, 'type'
    eq $P957, .CONTROL_LOOP_NEXT, loop955_next
    eq $P957, .CONTROL_LOOP_REDO, loop955_redo
  loop955_done:
    pop_eh 
  for_undef_441:
.annotate 'line', 441
    find_lex $P959, "self"
    find_lex $P960, "$?CLASS"
    getattribute $P961, $P959, $P960, "@!multi_methods_to_incorporate"
    unless_null $P961, vivify_446
    $P961 = root_new ['parrot';'ResizablePMCArray']
  vivify_446:
    defined $I962, $P961
    unless $I962, for_undef_447
    iter $P958, $P961
    new $P977, 'ExceptionHandler'
    set_label $P977, loop976_handler
    $P977."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P977
  loop976_test:
    unless $P958, loop976_done
    shift $P963, $P958
  loop976_redo:
    .const 'Sub' $P965 = "70_1303928979.9" 
    capture_lex $P965
    $P965($P963)
  loop976_next:
    goto loop976_test
  loop976_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P978, exception, 'type'
    eq $P978, .CONTROL_LOOP_NEXT, loop976_next
    eq $P978, .CONTROL_LOOP_REDO, loop976_redo
  loop976_done:
    pop_eh 
  for_undef_447:
.annotate 'line', 446
    find_lex $P980, "self"
    find_lex $P981, "$?CLASS"
    getattribute $P982, $P980, $P981, "@!roles"
    unless_null $P982, vivify_454
    $P982 = root_new ['parrot';'ResizablePMCArray']
  vivify_454:
    defined $I983, $P982
    unless $I983, for_undef_455
    iter $P979, $P982
    new $P1000, 'ExceptionHandler'
    set_label $P1000, loop999_handler
    $P1000."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1000
  loop999_test:
    unless $P979, loop999_done
    shift $P984, $P979
  loop999_redo:
    .const 'Sub' $P986 = "71_1303928979.9" 
    capture_lex $P986
    $P986($P984)
  loop999_next:
    goto loop999_test
  loop999_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1001, exception, 'type'
    eq $P1001, .CONTROL_LOOP_NEXT, loop999_next
    eq $P1001, .CONTROL_LOOP_REDO, loop999_redo
  loop999_done:
    pop_eh 
  for_undef_455:
.annotate 'line', 452
    find_lex $P1002, "$irole"
    unless_null $P1002, vivify_462
    new $P1002, "Undef"
  vivify_462:
    get_how $P1003, $P1002
    find_lex $P1004, "$irole"
    unless_null $P1004, vivify_463
    new $P1004, "Undef"
  vivify_463:
    $P1003."compose"($P1004)
.annotate 'line', 453
    new $P1005, "Exception"
    set $P1005['type'], .CONTROL_RETURN
    find_lex $P1006, "$irole"
    unless_null $P1006, vivify_464
    new $P1006, "Undef"
  vivify_464:
    setattribute $P1005, 'payload', $P1006
    throw $P1005
.annotate 'line', 422
    .return ()
  control_903:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1007, exception, "payload"
    .return ($P1007)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block925"  :anon :subid("68_1303928979.9") :outer("67_1303928979.9")
    .param pmc param_927
.annotate 'line', 432
    .lex "$_", param_927
.annotate 'line', 433
    find_lex $P928, "$irole"
    unless_null $P928, vivify_437
    new $P928, "Undef"
  vivify_437:
    get_how $P929, $P928
    find_lex $P930, "$irole"
    unless_null $P930, vivify_438
    new $P930, "Undef"
  vivify_438:
    find_lex $P931, "$_"
    unless_null $P931, vivify_439
    new $P931, "Undef"
  vivify_439:
    $P932 = $P931."value"()
    $P933 = $P929."add_attribute"($P930, $P932)
.annotate 'line', 432
    .return ($P933)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block943"  :anon :subid("69_1303928979.9") :outer("67_1303928979.9")
    .param pmc param_945
.annotate 'line', 438
    .lex "$_", param_945
.annotate 'line', 439
    find_lex $P946, "$irole"
    unless_null $P946, vivify_442
    new $P946, "Undef"
  vivify_442:
    get_how $P947, $P946
    find_lex $P948, "$irole"
    unless_null $P948, vivify_443
    new $P948, "Undef"
  vivify_443:
    find_lex $P949, "$_"
    unless_null $P949, vivify_444
    new $P949, "Undef"
  vivify_444:
    $P950 = $P949."key"()
    find_lex $P951, "$_"
    unless_null $P951, vivify_445
    new $P951, "Undef"
  vivify_445:
    $P952 = $P951."value"()
    clone $P953, $P952
    $P954 = $P947."add_method"($P948, $P950, $P953)
.annotate 'line', 438
    .return ($P954)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block964"  :anon :subid("70_1303928979.9") :outer("67_1303928979.9")
    .param pmc param_966
.annotate 'line', 441
    .lex "$_", param_966
.annotate 'line', 442
    find_lex $P967, "$irole"
    unless_null $P967, vivify_448
    new $P967, "Undef"
  vivify_448:
    get_how $P968, $P967
    find_lex $P969, "$irole"
    unless_null $P969, vivify_449
    new $P969, "Undef"
  vivify_449:
    find_lex $P970, "$_"
    unless_null $P970, vivify_450
    $P970 = root_new ['parrot';'Hash']
  vivify_450:
    set $P971, $P970["name"]
    unless_null $P971, vivify_451
    new $P971, "Undef"
  vivify_451:
    find_lex $P972, "$_"
    unless_null $P972, vivify_452
    $P972 = root_new ['parrot';'Hash']
  vivify_452:
    set $P973, $P972["code"]
    unless_null $P973, vivify_453
    new $P973, "Undef"
  vivify_453:
    clone $P974, $P973
    $P975 = $P968."add_multi_method"($P969, $P971, $P974)
.annotate 'line', 441
    .return ($P975)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block985"  :anon :subid("71_1303928979.9") :outer("67_1303928979.9")
    .param pmc param_988
.annotate 'line', 447
    new $P987, "Undef"
    .lex "$instantiated", $P987
    .lex "$_", param_988
    find_lex $P989, "$irole"
    unless_null $P989, vivify_456
    new $P989, "Undef"
  vivify_456:
    get_how $P990, $P989
    find_lex $P991, "$irole"
    unless_null $P991, vivify_457
    new $P991, "Undef"
  vivify_457:
    find_lex $P992, "$class_arg"
    unless_null $P992, vivify_458
    new $P992, "Undef"
  vivify_458:
    $P993 = $P990."instantiate"($P991, $P992)
    store_lex "$instantiated", $P993
.annotate 'line', 448
    find_lex $P994, "$irole"
    unless_null $P994, vivify_459
    new $P994, "Undef"
  vivify_459:
    get_how $P995, $P994
    find_lex $P996, "$irole"
    unless_null $P996, vivify_460
    new $P996, "Undef"
  vivify_460:
    find_lex $P997, "$instantiated"
    unless_null $P997, vivify_461
    new $P997, "Undef"
  vivify_461:
    $P998 = $P995."add_role"($P996, $P997)
.annotate 'line', 446
    .return ($P998)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "methods"  :subid("72_1303928979.9") :outer("55_1303928979.9")
    .param pmc param_1009
    .param pmc param_1010
    .param pmc param_1011 :optional :named("local")
    .param int has_param_1011 :opt_flag
.annotate 'line', 461
    .const 'Sub' $P1022 = "73_1303928979.9" 
    capture_lex $P1022
    .lex "self", param_1009
    .lex "$obj", param_1010
    if has_param_1011, optparam_465
    new $P1012, "Undef"
    set param_1011, $P1012
  optparam_465:
    .lex "$local", param_1011
.annotate 'line', 462
    $P1013 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meths", $P1013
.annotate 'line', 461
    find_lex $P1014, "@meths"
    unless_null $P1014, vivify_466
    $P1014 = root_new ['parrot';'ResizablePMCArray']
  vivify_466:
.annotate 'line', 463
    find_lex $P1016, "self"
    find_lex $P1017, "$?CLASS"
    getattribute $P1018, $P1016, $P1017, "%!methods"
    unless_null $P1018, vivify_467
    $P1018 = root_new ['parrot';'Hash']
  vivify_467:
    defined $I1019, $P1018
    unless $I1019, for_undef_468
    iter $P1015, $P1018
    new $P1029, 'ExceptionHandler'
    set_label $P1029, loop1028_handler
    $P1029."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1029
  loop1028_test:
    unless $P1015, loop1028_done
    shift $P1020, $P1015
  loop1028_redo:
    .const 'Sub' $P1022 = "73_1303928979.9" 
    capture_lex $P1022
    $P1022($P1020)
  loop1028_next:
    goto loop1028_test
  loop1028_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1030, exception, 'type'
    eq $P1030, .CONTROL_LOOP_NEXT, loop1028_next
    eq $P1030, .CONTROL_LOOP_REDO, loop1028_redo
  loop1028_done:
    pop_eh 
  for_undef_468:
    find_lex $P1031, "@meths"
    unless_null $P1031, vivify_471
    $P1031 = root_new ['parrot';'ResizablePMCArray']
  vivify_471:
.annotate 'line', 461
    .return ($P1031)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1021"  :anon :subid("73_1303928979.9") :outer("72_1303928979.9")
    .param pmc param_1023
.annotate 'line', 463
    .lex "$_", param_1023
.annotate 'line', 464
    find_lex $P1024, "@meths"
    unless_null $P1024, vivify_469
    $P1024 = root_new ['parrot';'ResizablePMCArray']
  vivify_469:
    find_lex $P1025, "$_"
    unless_null $P1025, vivify_470
    new $P1025, "Undef"
  vivify_470:
    $P1026 = $P1025."value"()
    $P1027 = $P1024."push"($P1026)
.annotate 'line', 463
    .return ($P1027)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "method_table"  :subid("74_1303928979.9") :outer("55_1303928979.9")
    .param pmc param_1033
    .param pmc param_1034
.annotate 'line', 469
    .lex "self", param_1033
    .lex "$obj", param_1034
    find_lex $P1035, "self"
    find_lex $P1036, "$?CLASS"
    getattribute $P1037, $P1035, $P1036, "%!methods"
    unless_null $P1037, vivify_472
    $P1037 = root_new ['parrot';'Hash']
  vivify_472:
    .return ($P1037)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "name"  :subid("75_1303928979.9") :outer("55_1303928979.9")
    .param pmc param_1039
    .param pmc param_1040
.annotate 'line', 473
    .lex "self", param_1039
    .lex "$obj", param_1040
    find_lex $P1041, "self"
    find_lex $P1042, "$?CLASS"
    getattribute $P1043, $P1041, $P1042, "$!name"
    unless_null $P1043, vivify_473
    new $P1043, "Undef"
  vivify_473:
    .return ($P1043)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "attributes"  :subid("76_1303928979.9") :outer("55_1303928979.9")
    .param pmc param_1045
    .param pmc param_1046
    .param pmc param_1047 :optional :named("local")
    .param int has_param_1047 :opt_flag
.annotate 'line', 477
    .const 'Sub' $P1058 = "77_1303928979.9" 
    capture_lex $P1058
    .lex "self", param_1045
    .lex "$obj", param_1046
    if has_param_1047, optparam_474
    new $P1048, "Undef"
    set param_1047, $P1048
  optparam_474:
    .lex "$local", param_1047
.annotate 'line', 478
    $P1049 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attrs", $P1049
.annotate 'line', 477
    find_lex $P1050, "@attrs"
    unless_null $P1050, vivify_475
    $P1050 = root_new ['parrot';'ResizablePMCArray']
  vivify_475:
.annotate 'line', 479
    find_lex $P1052, "self"
    find_lex $P1053, "$?CLASS"
    getattribute $P1054, $P1052, $P1053, "%!attributes"
    unless_null $P1054, vivify_476
    $P1054 = root_new ['parrot';'Hash']
  vivify_476:
    defined $I1055, $P1054
    unless $I1055, for_undef_477
    iter $P1051, $P1054
    new $P1065, 'ExceptionHandler'
    set_label $P1065, loop1064_handler
    $P1065."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1065
  loop1064_test:
    unless $P1051, loop1064_done
    shift $P1056, $P1051
  loop1064_redo:
    .const 'Sub' $P1058 = "77_1303928979.9" 
    capture_lex $P1058
    $P1058($P1056)
  loop1064_next:
    goto loop1064_test
  loop1064_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1066, exception, 'type'
    eq $P1066, .CONTROL_LOOP_NEXT, loop1064_next
    eq $P1066, .CONTROL_LOOP_REDO, loop1064_redo
  loop1064_done:
    pop_eh 
  for_undef_477:
    find_lex $P1067, "@attrs"
    unless_null $P1067, vivify_480
    $P1067 = root_new ['parrot';'ResizablePMCArray']
  vivify_480:
.annotate 'line', 477
    .return ($P1067)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1057"  :anon :subid("77_1303928979.9") :outer("76_1303928979.9")
    .param pmc param_1059
.annotate 'line', 479
    .lex "$_", param_1059
.annotate 'line', 480
    find_lex $P1060, "@attrs"
    unless_null $P1060, vivify_478
    $P1060 = root_new ['parrot';'ResizablePMCArray']
  vivify_478:
    find_lex $P1061, "$_"
    unless_null $P1061, vivify_479
    new $P1061, "Undef"
  vivify_479:
    $P1062 = $P1061."value"()
    $P1063 = $P1060."push"($P1062)
.annotate 'line', 479
    .return ($P1063)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "roles"  :subid("78_1303928979.9") :outer("55_1303928979.9")
    .param pmc param_1069
    .param pmc param_1070
.annotate 'line', 485
    .lex "self", param_1069
    .lex "$obj", param_1070
    find_lex $P1071, "self"
    find_lex $P1072, "$?CLASS"
    getattribute $P1073, $P1071, $P1072, "@!roles"
    unless_null $P1073, vivify_481
    $P1073 = root_new ['parrot';'ResizablePMCArray']
  vivify_481:
    .return ($P1073)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1114"  :subid("80_1303928979.9") :outer("10_1303928979.9")
.annotate 'line', 495
    .const 'Sub' $P2108 = "136_1303928979.9" 
    capture_lex $P2108
    .const 'Sub' $P2071 = "134_1303928979.9" 
    capture_lex $P2071
    .const 'Sub' $P2035 = "132_1303928979.9" 
    capture_lex $P2035
    .const 'Sub' $P2001 = "131_1303928979.9" 
    capture_lex $P2001
    .const 'Sub' $P1964 = "130_1303928979.9" 
    capture_lex $P1964
    .const 'Sub' $P1957 = "129_1303928979.9" 
    capture_lex $P1957
    .const 'Sub' $P1934 = "127_1303928979.9" 
    capture_lex $P1934
    .const 'Sub' $P1928 = "126_1303928979.9" 
    capture_lex $P1928
    .const 'Sub' $P1922 = "125_1303928979.9" 
    capture_lex $P1922
    .const 'Sub' $P1899 = "123_1303928979.9" 
    capture_lex $P1899
    .const 'Sub' $P1892 = "122_1303928979.9" 
    capture_lex $P1892
    .const 'Sub' $P1878 = "121_1303928979.9" 
    capture_lex $P1878
    .const 'Sub' $P1829 = "118_1303928979.9" 
    capture_lex $P1829
    .const 'Sub' $P1784 = "115_1303928979.9" 
    capture_lex $P1784
    .const 'Sub' $P1747 = "112_1303928979.9" 
    capture_lex $P1747
    .const 'Sub' $P1617 = "107_1303928979.9" 
    capture_lex $P1617
    .const 'Sub' $P1511 = "103_1303928979.9" 
    capture_lex $P1511
    .const 'Sub' $P1485 = "102_1303928979.9" 
    capture_lex $P1485
    .const 'Sub' $P1451 = "100_1303928979.9" 
    capture_lex $P1451
    .const 'Sub' $P1444 = "99_1303928979.9" 
    capture_lex $P1444
    .const 'Sub' $P1406 = "97_1303928979.9" 
    capture_lex $P1406
    .const 'Sub' $P1385 = "96_1303928979.9" 
    capture_lex $P1385
    .const 'Sub' $P1364 = "95_1303928979.9" 
    capture_lex $P1364
    .const 'Sub' $P1329 = "94_1303928979.9" 
    capture_lex $P1329
    .const 'Sub' $P1314 = "93_1303928979.9" 
    capture_lex $P1314
    .const 'Sub' $P1307 = "92_1303928979.9" 
    capture_lex $P1307
    .const 'Sub' $P1297 = "91_1303928979.9" 
    capture_lex $P1297
    .const 'Sub' $P1158 = "84_1303928979.9" 
    capture_lex $P1158
    .const 'Sub' $P1116 = "81_1303928979.9" 
    capture_lex $P1116
.annotate 'line', 714
    .const 'Sub' $P1116 = "81_1303928979.9" 
    newclosure $P1157, $P1116
    .lex "compute_c3_mro", $P1157
.annotate 'line', 736
    .const 'Sub' $P1158 = "84_1303928979.9" 
    newclosure $P1294, $P1158
    .lex "c3_merge", $P1294
.annotate 'line', 495
    .lex "$?PACKAGE", $P1295
    .lex "$?CLASS", $P1296
.annotate 'line', 660
    find_lex $P1745, "compute_c3_mro"
    find_lex $P1746, "c3_merge"
.annotate 'line', 920
    .const 'Sub' $P2071 = "134_1303928979.9" 
    newclosure $P2106, $P2071
.annotate 'line', 495
    .return ($P2106)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "" :load :init :subid("post482") :outer("80_1303928979.9")
.annotate 'line', 495
    .const 'Sub' $P1115 = "80_1303928979.9" 
    .local pmc block
    set block, $P1115
    .const 'Sub' $P2108 = "136_1303928979.9" 
    capture_lex $P2108
    $P2108()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block2107"  :anon :subid("136_1303928979.9") :outer("80_1303928979.9")
.annotate 'line', 495
    nqp_get_sc_object $P2109, "1303928976.25", 5
    .local pmc type_obj
    set type_obj, $P2109
    get_how $P2110, type_obj
    .const 'Sub' $P2111 = "91_1303928979.9" 
    $P2110."add_method"(type_obj, "new", $P2111)
    get_how $P2112, type_obj
    .const 'Sub' $P2113 = "92_1303928979.9" 
    $P2112."add_method"(type_obj, "BUILD", $P2113)
    get_how $P2114, type_obj
    .const 'Sub' $P2115 = "93_1303928979.9" 
    $P2114."add_method"(type_obj, "new_type", $P2115)
    get_how $P2116, type_obj
    .const 'Sub' $P2117 = "94_1303928979.9" 
    $P2116."add_method"(type_obj, "add_method", $P2117)
    get_how $P2118, type_obj
    .const 'Sub' $P2119 = "95_1303928979.9" 
    $P2118."add_method"(type_obj, "add_multi_method", $P2119)
    get_how $P2120, type_obj
    .const 'Sub' $P2121 = "96_1303928979.9" 
    $P2120."add_method"(type_obj, "add_attribute", $P2121)
    get_how $P2122, type_obj
    .const 'Sub' $P2123 = "97_1303928979.9" 
    $P2122."add_method"(type_obj, "add_parent", $P2123)
    get_how $P2124, type_obj
    .const 'Sub' $P2125 = "99_1303928979.9" 
    $P2124."add_method"(type_obj, "set_default_parent", $P2125)
    get_how $P2126, type_obj
    .const 'Sub' $P2127 = "100_1303928979.9" 
    $P2126."add_method"(type_obj, "add_role", $P2127)
    get_how $P2128, type_obj
    .const 'Sub' $P2129 = "102_1303928979.9" 
    $P2128."add_method"(type_obj, "add_parrot_vtable_mapping", $P2129)
    get_how $P2130, type_obj
    .const 'Sub' $P2131 = "103_1303928979.9" 
    $P2130."add_method"(type_obj, "compose", $P2131)
    get_how $P2132, type_obj
    .const 'Sub' $P2133 = "107_1303928979.9" 
    $P2132."add_method"(type_obj, "incorporate_multi_candidates", $P2133)
    get_how $P2134, type_obj
    .const 'Sub' $P2135 = "112_1303928979.9" 
    $P2134."add_method"(type_obj, "publish_type_cache", $P2135)
    get_how $P2136, type_obj
    .const 'Sub' $P2137 = "115_1303928979.9" 
    $P2136."add_method"(type_obj, "publish_method_cache", $P2137)
    get_how $P2138, type_obj
    .const 'Sub' $P2139 = "118_1303928979.9" 
    $P2138."add_method"(type_obj, "publish_parrot_vtable_mapping", $P2139)
    get_how $P2140, type_obj
    .const 'Sub' $P2141 = "121_1303928979.9" 
    $P2140."add_method"(type_obj, "parents", $P2141)
    get_how $P2142, type_obj
    .const 'Sub' $P2143 = "122_1303928979.9" 
    $P2142."add_method"(type_obj, "roles", $P2143)
    get_how $P2144, type_obj
    .const 'Sub' $P2145 = "123_1303928979.9" 
    $P2144."add_method"(type_obj, "methods", $P2145)
    get_how $P2146, type_obj
    .const 'Sub' $P2147 = "125_1303928979.9" 
    $P2146."add_method"(type_obj, "method_table", $P2147)
    get_how $P2148, type_obj
    .const 'Sub' $P2149 = "126_1303928979.9" 
    $P2148."add_method"(type_obj, "name", $P2149)
    get_how $P2150, type_obj
    .const 'Sub' $P2151 = "127_1303928979.9" 
    $P2150."add_method"(type_obj, "attributes", $P2151)
    get_how $P2152, type_obj
    .const 'Sub' $P2153 = "129_1303928979.9" 
    $P2152."add_method"(type_obj, "parrot_vtable_mappings", $P2153)
    get_how $P2154, type_obj
    .const 'Sub' $P2155 = "130_1303928979.9" 
    $P2154."add_method"(type_obj, "isa", $P2155)
    get_how $P2156, type_obj
    .const 'Sub' $P2157 = "131_1303928979.9" 
    $P2156."add_method"(type_obj, "does", $P2157)
    get_how $P2158, type_obj
    .const 'Sub' $P2159 = "132_1303928979.9" 
    $P2158."add_method"(type_obj, "can", $P2159)
    get_how $P2160, type_obj
    .const 'Sub' $P2161 = "134_1303928979.9" 
    $P2160."add_method"(type_obj, "find_method", $P2161)
    get_how $P2162, type_obj
    $P2163 = $P2162."compose"(type_obj)
    .return ($P2163)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "compute_c3_mro"  :subid("81_1303928979.9") :outer("80_1303928979.9")
    .param pmc param_1119
.annotate 'line', 714
    .const 'Sub' $P1131 = "82_1303928979.9" 
    capture_lex $P1131
    new $P1118, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1118, control_1117
    push_eh $P1118
    .lex "$class", param_1119
.annotate 'line', 715
    $P1120 = root_new ['parrot';'ResizablePMCArray']
    .lex "@immediate_parents", $P1120
.annotate 'line', 718
    $P1121 = root_new ['parrot';'ResizablePMCArray']
    .lex "@result", $P1121
.annotate 'line', 715
    find_lex $P1122, "$class"
    unless_null $P1122, vivify_483
    new $P1122, "Undef"
  vivify_483:
    get_how $P1123, $P1122
    find_lex $P1124, "$class"
    unless_null $P1124, vivify_484
    new $P1124, "Undef"
  vivify_484:
    $P1125 = $P1123."parents"($P1124, 1 :named("local"))
    store_lex "@immediate_parents", $P1125
    find_lex $P1126, "@result"
    unless_null $P1126, vivify_485
    $P1126 = root_new ['parrot';'ResizablePMCArray']
  vivify_485:
.annotate 'line', 719
    find_lex $P1128, "@immediate_parents"
    unless_null $P1128, vivify_486
    $P1128 = root_new ['parrot';'ResizablePMCArray']
  vivify_486:
    set $N1129, $P1128
    unless $N1129, if_1127_end
    .const 'Sub' $P1131 = "82_1303928979.9" 
    capture_lex $P1131
    $P1131()
  if_1127_end:
.annotate 'line', 731
    find_lex $P1152, "@result"
    unless_null $P1152, vivify_495
    $P1152 = root_new ['parrot';'ResizablePMCArray']
  vivify_495:
    find_lex $P1153, "$class"
    unless_null $P1153, vivify_496
    new $P1153, "Undef"
  vivify_496:
    $P1152."unshift"($P1153)
.annotate 'line', 732
    new $P1154, "Exception"
    set $P1154['type'], .CONTROL_RETURN
    find_lex $P1155, "@result"
    unless_null $P1155, vivify_497
    $P1155 = root_new ['parrot';'ResizablePMCArray']
  vivify_497:
    setattribute $P1154, 'payload', $P1155
    throw $P1154
.annotate 'line', 714
    .return ()
  control_1117:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1156, exception, "payload"
    .return ($P1156)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1130"  :anon :subid("82_1303928979.9") :outer("81_1303928979.9")
.annotate 'line', 719
    .const 'Sub' $P1139 = "83_1303928979.9" 
    capture_lex $P1139
.annotate 'line', 722
    $P1132 = root_new ['parrot';'ResizablePMCArray']
    .lex "@merge_list", $P1132
.annotate 'line', 719
    find_lex $P1133, "@merge_list"
    unless_null $P1133, vivify_487
    $P1133 = root_new ['parrot';'ResizablePMCArray']
  vivify_487:
.annotate 'line', 723
    find_lex $P1135, "@immediate_parents"
    unless_null $P1135, vivify_488
    $P1135 = root_new ['parrot';'ResizablePMCArray']
  vivify_488:
    defined $I1136, $P1135
    unless $I1136, for_undef_489
    iter $P1134, $P1135
    new $P1146, 'ExceptionHandler'
    set_label $P1146, loop1145_handler
    $P1146."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1146
  loop1145_test:
    unless $P1134, loop1145_done
    shift $P1137, $P1134
  loop1145_redo:
    .const 'Sub' $P1139 = "83_1303928979.9" 
    capture_lex $P1139
    $P1139($P1137)
  loop1145_next:
    goto loop1145_test
  loop1145_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1147, exception, 'type'
    eq $P1147, .CONTROL_LOOP_NEXT, loop1145_next
    eq $P1147, .CONTROL_LOOP_REDO, loop1145_redo
  loop1145_done:
    pop_eh 
  for_undef_489:
.annotate 'line', 726
    find_lex $P1148, "@merge_list"
    unless_null $P1148, vivify_492
    $P1148 = root_new ['parrot';'ResizablePMCArray']
  vivify_492:
    find_lex $P1149, "@immediate_parents"
    unless_null $P1149, vivify_493
    $P1149 = root_new ['parrot';'ResizablePMCArray']
  vivify_493:
    $P1148."push"($P1149)
.annotate 'line', 727
    find_lex $P1150, "@merge_list"
    unless_null $P1150, vivify_494
    $P1150 = root_new ['parrot';'ResizablePMCArray']
  vivify_494:
    $P1151 = "c3_merge"($P1150)
    store_lex "@result", $P1151
.annotate 'line', 719
    .return ($P1151)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1138"  :anon :subid("83_1303928979.9") :outer("82_1303928979.9")
    .param pmc param_1140
.annotate 'line', 723
    .lex "$_", param_1140
.annotate 'line', 724
    find_lex $P1141, "@merge_list"
    unless_null $P1141, vivify_490
    $P1141 = root_new ['parrot';'ResizablePMCArray']
  vivify_490:
    find_lex $P1142, "$_"
    unless_null $P1142, vivify_491
    new $P1142, "Undef"
  vivify_491:
    $P1143 = "compute_c3_mro"($P1142)
    $P1144 = $P1141."push"($P1143)
.annotate 'line', 723
    .return ($P1144)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "c3_merge"  :subid("84_1303928979.9") :outer("80_1303928979.9")
    .param pmc param_1161
.annotate 'line', 736
    .const 'Sub' $P1254 = "89_1303928979.9" 
    capture_lex $P1254
    .const 'Sub' $P1176 = "85_1303928979.9" 
    capture_lex $P1176
    new $P1160, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1160, control_1159
    push_eh $P1160
    .lex "@merge_list", param_1161
.annotate 'line', 737
    $P1162 = root_new ['parrot';'ResizablePMCArray']
    .lex "@result", $P1162
.annotate 'line', 738
    new $P1163, "Undef"
    .lex "$accepted", $P1163
.annotate 'line', 739
    new $P1164, "Undef"
    .lex "$something_accepted", $P1164
.annotate 'line', 740
    new $P1165, "Undef"
    .lex "$cand_count", $P1165
.annotate 'line', 783
    new $P1166, "Undef"
    .lex "$i", $P1166
.annotate 'line', 736
    find_lex $P1167, "@result"
    unless_null $P1167, vivify_498
    $P1167 = root_new ['parrot';'ResizablePMCArray']
  vivify_498:
    find_lex $P1168, "$accepted"
    unless_null $P1168, vivify_499
    new $P1168, "Undef"
  vivify_499:
.annotate 'line', 739
    new $P1169, "Integer"
    assign $P1169, 0
    store_lex "$something_accepted", $P1169
.annotate 'line', 740
    new $P1170, "Integer"
    assign $P1170, 0
    store_lex "$cand_count", $P1170
.annotate 'line', 743
    find_lex $P1172, "@merge_list"
    unless_null $P1172, vivify_500
    $P1172 = root_new ['parrot';'ResizablePMCArray']
  vivify_500:
    defined $I1173, $P1172
    unless $I1173, for_undef_501
    iter $P1171, $P1172
    new $P1237, 'ExceptionHandler'
    set_label $P1237, loop1236_handler
    $P1237."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1237
  loop1236_test:
    unless $P1171, loop1236_done
    shift $P1174, $P1171
  loop1236_redo:
    .const 'Sub' $P1176 = "85_1303928979.9" 
    capture_lex $P1176
    $P1176($P1174)
  loop1236_next:
    goto loop1236_test
  loop1236_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1238, exception, 'type'
    eq $P1238, .CONTROL_LOOP_NEXT, loop1236_next
    eq $P1238, .CONTROL_LOOP_REDO, loop1236_redo
  loop1236_done:
    pop_eh 
  for_undef_501:
.annotate 'line', 773
    find_lex $P1240, "$cand_count"
    unless_null $P1240, vivify_520
    new $P1240, "Undef"
  vivify_520:
    set $N1241, $P1240
    iseq $I1242, $N1241, 0.0
    unless $I1242, if_1239_end
.annotate 'line', 774
    new $P1243, "Exception"
    set $P1243['type'], .CONTROL_RETURN
    find_lex $P1244, "@result"
    unless_null $P1244, vivify_521
    $P1244 = root_new ['parrot';'ResizablePMCArray']
  vivify_521:
    setattribute $P1243, 'payload', $P1244
    throw $P1243
  if_1239_end:
.annotate 'line', 778
    find_lex $P1246, "$something_accepted"
    unless_null $P1246, vivify_522
    new $P1246, "Undef"
  vivify_522:
    if $P1246, unless_1245_end
.annotate 'line', 779
    die "Could not build C3 linearization: ambiguous hierarchy"
  unless_1245_end:
.annotate 'line', 783
    new $P1247, "Integer"
    assign $P1247, 0
    store_lex "$i", $P1247
.annotate 'line', 784
    new $P1285, 'ExceptionHandler'
    set_label $P1285, loop1284_handler
    $P1285."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1285
  loop1284_test:
    find_lex $P1248, "$i"
    unless_null $P1248, vivify_523
    new $P1248, "Undef"
  vivify_523:
    set $N1249, $P1248
    find_lex $P1250, "@merge_list"
    unless_null $P1250, vivify_524
    $P1250 = root_new ['parrot';'ResizablePMCArray']
  vivify_524:
    set $N1251, $P1250
    islt $I1252, $N1249, $N1251
    unless $I1252, loop1284_done
  loop1284_redo:
    .const 'Sub' $P1254 = "89_1303928979.9" 
    capture_lex $P1254
    $P1254()
  loop1284_next:
    goto loop1284_test
  loop1284_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1286, exception, 'type'
    eq $P1286, .CONTROL_LOOP_NEXT, loop1284_next
    eq $P1286, .CONTROL_LOOP_REDO, loop1284_redo
  loop1284_done:
    pop_eh 
.annotate 'line', 797
    find_lex $P1287, "@merge_list"
    unless_null $P1287, vivify_538
    $P1287 = root_new ['parrot';'ResizablePMCArray']
  vivify_538:
    $P1288 = "c3_merge"($P1287)
    store_lex "@result", $P1288
.annotate 'line', 798
    find_lex $P1289, "@result"
    unless_null $P1289, vivify_539
    $P1289 = root_new ['parrot';'ResizablePMCArray']
  vivify_539:
    find_lex $P1290, "$accepted"
    unless_null $P1290, vivify_540
    new $P1290, "Undef"
  vivify_540:
    $P1289."unshift"($P1290)
.annotate 'line', 799
    new $P1291, "Exception"
    set $P1291['type'], .CONTROL_RETURN
    find_lex $P1292, "@result"
    unless_null $P1292, vivify_541
    $P1292 = root_new ['parrot';'ResizablePMCArray']
  vivify_541:
    setattribute $P1291, 'payload', $P1292
    throw $P1291
.annotate 'line', 736
    .return ()
  control_1159:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1293, exception, "payload"
    .return ($P1293)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1175"  :anon :subid("85_1303928979.9") :outer("84_1303928979.9")
    .param pmc param_1178
.annotate 'line', 743
    .const 'Sub' $P1185 = "86_1303928979.9" 
    capture_lex $P1185
.annotate 'line', 744
    $P1177 = root_new ['parrot';'ResizablePMCArray']
    .lex "@cand_list", $P1177
    .lex "$_", param_1178
    find_lex $P1179, "$_"
    unless_null $P1179, vivify_502
    new $P1179, "Undef"
  vivify_502:
    store_lex "@cand_list", $P1179
.annotate 'line', 745
    find_lex $P1182, "@cand_list"
    unless_null $P1182, vivify_503
    $P1182 = root_new ['parrot';'ResizablePMCArray']
  vivify_503:
    set $N1183, $P1182
    if $N1183, if_1181
    new $P1180, 'Float'
    set $P1180, $N1183
    goto if_1181_end
  if_1181:
    .const 'Sub' $P1185 = "86_1303928979.9" 
    capture_lex $P1185
    $P1235 = $P1185()
    set $P1180, $P1235
  if_1181_end:
.annotate 'line', 743
    .return ($P1180)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1184"  :anon :subid("86_1303928979.9") :outer("85_1303928979.9")
.annotate 'line', 745
    .const 'Sub' $P1198 = "87_1303928979.9" 
    capture_lex $P1198
.annotate 'line', 746
    new $P1186, "Undef"
    .lex "$rejected", $P1186
.annotate 'line', 747
    new $P1187, "Undef"
    .lex "$cand_class", $P1187
.annotate 'line', 746
    new $P1188, "Integer"
    assign $P1188, 0
    store_lex "$rejected", $P1188
.annotate 'line', 747
    find_lex $P1189, "@cand_list"
    unless_null $P1189, vivify_504
    $P1189 = root_new ['parrot';'ResizablePMCArray']
  vivify_504:
    set $P1190, $P1189[0]
    unless_null $P1190, vivify_505
    new $P1190, "Undef"
  vivify_505:
    store_lex "$cand_class", $P1190
.annotate 'line', 748
    find_lex $P1191, "$cand_count"
    unless_null $P1191, vivify_506
    new $P1191, "Undef"
  vivify_506:
    add $P1192, $P1191, 1
    store_lex "$cand_count", $P1192
.annotate 'line', 749
    find_lex $P1194, "@merge_list"
    unless_null $P1194, vivify_507
    $P1194 = root_new ['parrot';'ResizablePMCArray']
  vivify_507:
    defined $I1195, $P1194
    unless $I1195, for_undef_508
    iter $P1193, $P1194
    new $P1233, 'ExceptionHandler'
    set_label $P1233, loop1232_handler
    $P1233."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1233
  loop1232_test:
    unless $P1193, loop1232_done
    shift $P1196, $P1193
  loop1232_redo:
    .const 'Sub' $P1198 = "87_1303928979.9" 
    capture_lex $P1198
    $P1198($P1196)
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
  for_undef_508:
.annotate 'line', 745
    .return ($P1193)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1197"  :anon :subid("87_1303928979.9") :outer("86_1303928979.9")
    .param pmc param_1199
.annotate 'line', 749
    .const 'Sub' $P1205 = "88_1303928979.9" 
    capture_lex $P1205
    .lex "$_", param_1199
.annotate 'line', 751
    find_lex $P1201, "$_"
    unless_null $P1201, vivify_509
    new $P1201, "Undef"
  vivify_509:
    find_lex $P1202, "@cand_list"
    unless_null $P1202, vivify_510
    $P1202 = root_new ['parrot';'ResizablePMCArray']
  vivify_510:
    issame $I1203, $P1201, $P1202
    if $I1203, unless_1200_end
    .const 'Sub' $P1205 = "88_1303928979.9" 
    capture_lex $P1205
    $P1205()
  unless_1200_end:
.annotate 'line', 763
    find_lex $P1228, "$rejected"
    unless_null $P1228, vivify_518
    new $P1228, "Undef"
  vivify_518:
    unless $P1228, unless_1227
    set $P1226, $P1228
    goto unless_1227_end
  unless_1227:
.annotate 'line', 764
    find_lex $P1229, "$cand_class"
    unless_null $P1229, vivify_519
    new $P1229, "Undef"
  vivify_519:
    store_lex "$accepted", $P1229
.annotate 'line', 765
    new $P1230, "Integer"
    assign $P1230, 1
    store_lex "$something_accepted", $P1230
.annotate 'line', 766
    set $I1231, .CONTROL_LOOP_LAST
    die 0, $I1231
  unless_1227_end:
.annotate 'line', 749
    .return ($P1226)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1204"  :anon :subid("88_1303928979.9") :outer("87_1303928979.9")
.annotate 'line', 753
    new $P1206, "Undef"
    .lex "$cur_pos", $P1206
    new $P1207, "Integer"
    assign $P1207, 1
    store_lex "$cur_pos", $P1207
.annotate 'line', 754
    new $P1224, 'ExceptionHandler'
    set_label $P1224, loop1223_handler
    $P1224."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1224
  loop1223_test:
    find_lex $P1208, "$cur_pos"
    unless_null $P1208, vivify_511
    new $P1208, "Undef"
  vivify_511:
    set $N1209, $P1208
    find_lex $P1210, "$_"
    unless_null $P1210, vivify_512
    new $P1210, "Undef"
  vivify_512:
    set $N1211, $P1210
    isle $I1212, $N1209, $N1211
    unless $I1212, loop1223_done
  loop1223_redo:
.annotate 'line', 755
    find_lex $P1214, "$cur_pos"
    unless_null $P1214, vivify_513
    new $P1214, "Undef"
  vivify_513:
    set $I1215, $P1214
    find_lex $P1216, "$_"
    unless_null $P1216, vivify_514
    $P1216 = root_new ['parrot';'ResizablePMCArray']
  vivify_514:
    set $P1217, $P1216[$I1215]
    unless_null $P1217, vivify_515
    new $P1217, "Undef"
  vivify_515:
    find_lex $P1218, "$cand_class"
    unless_null $P1218, vivify_516
    new $P1218, "Undef"
  vivify_516:
    issame $I1219, $P1217, $P1218
    unless $I1219, if_1213_end
.annotate 'line', 756
    new $P1220, "Integer"
    assign $P1220, 1
    store_lex "$rejected", $P1220
  if_1213_end:
.annotate 'line', 758
    find_lex $P1221, "$cur_pos"
    unless_null $P1221, vivify_517
    new $P1221, "Undef"
  vivify_517:
    add $P1222, $P1221, 1
    store_lex "$cur_pos", $P1222
  loop1223_next:
.annotate 'line', 754
    goto loop1223_test
  loop1223_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1225, exception, 'type'
    eq $P1225, .CONTROL_LOOP_NEXT, loop1223_next
    eq $P1225, .CONTROL_LOOP_REDO, loop1223_redo
  loop1223_done:
    pop_eh 
.annotate 'line', 751
    .return ($I1212)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1253"  :anon :subid("89_1303928979.9") :outer("84_1303928979.9")
.annotate 'line', 784
    .const 'Sub' $P1265 = "90_1303928979.9" 
    capture_lex $P1265
.annotate 'line', 785
    $P1255 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new_list", $P1255
.annotate 'line', 784
    find_lex $P1256, "@new_list"
    unless_null $P1256, vivify_525
    $P1256 = root_new ['parrot';'ResizablePMCArray']
  vivify_525:
.annotate 'line', 786
    find_lex $P1258, "$i"
    unless_null $P1258, vivify_526
    new $P1258, "Undef"
  vivify_526:
    set $I1259, $P1258
    find_lex $P1260, "@merge_list"
    unless_null $P1260, vivify_527
    $P1260 = root_new ['parrot';'ResizablePMCArray']
  vivify_527:
    set $P1261, $P1260[$I1259]
    unless_null $P1261, vivify_528
    new $P1261, "Undef"
  vivify_528:
    defined $I1262, $P1261
    unless $I1262, for_undef_529
    iter $P1257, $P1261
    new $P1276, 'ExceptionHandler'
    set_label $P1276, loop1275_handler
    $P1276."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1276
  loop1275_test:
    unless $P1257, loop1275_done
    shift $P1263, $P1257
  loop1275_redo:
    .const 'Sub' $P1265 = "90_1303928979.9" 
    capture_lex $P1265
    $P1265($P1263)
  loop1275_next:
    goto loop1275_test
  loop1275_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1277, exception, 'type'
    eq $P1277, .CONTROL_LOOP_NEXT, loop1275_next
    eq $P1277, .CONTROL_LOOP_REDO, loop1275_redo
  loop1275_done:
    pop_eh 
  for_undef_529:
.annotate 'line', 791
    find_lex $P1278, "@new_list"
    unless_null $P1278, vivify_534
    $P1278 = root_new ['parrot';'ResizablePMCArray']
  vivify_534:
    find_lex $P1279, "$i"
    unless_null $P1279, vivify_535
    new $P1279, "Undef"
  vivify_535:
    set $I1280, $P1279
    find_lex $P1281, "@merge_list"
    unless_null $P1281, vivify_536
    $P1281 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@merge_list", $P1281
  vivify_536:
    set $P1281[$I1280], $P1278
.annotate 'line', 792
    find_lex $P1282, "$i"
    unless_null $P1282, vivify_537
    new $P1282, "Undef"
  vivify_537:
    add $P1283, $P1282, 1
    store_lex "$i", $P1283
.annotate 'line', 784
    .return ($P1283)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1264"  :anon :subid("90_1303928979.9") :outer("89_1303928979.9")
    .param pmc param_1266
.annotate 'line', 786
    .lex "$_", param_1266
.annotate 'line', 787
    find_lex $P1269, "$_"
    unless_null $P1269, vivify_530
    new $P1269, "Undef"
  vivify_530:
    find_lex $P1270, "$accepted"
    unless_null $P1270, vivify_531
    new $P1270, "Undef"
  vivify_531:
    issame $I1271, $P1269, $P1270
    unless $I1271, unless_1268
    new $P1267, 'Integer'
    set $P1267, $I1271
    goto unless_1268_end
  unless_1268:
.annotate 'line', 788
    find_lex $P1272, "@new_list"
    unless_null $P1272, vivify_532
    $P1272 = root_new ['parrot';'ResizablePMCArray']
  vivify_532:
    find_lex $P1273, "$_"
    unless_null $P1273, vivify_533
    new $P1273, "Undef"
  vivify_533:
    $P1274 = $P1272."push"($P1273)
.annotate 'line', 787
    set $P1267, $P1274
  unless_1268_end:
.annotate 'line', 786
    .return ($P1267)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "new"  :subid("91_1303928979.9") :outer("80_1303928979.9")
    .param pmc param_1298
    .param pmc param_1299 :optional :named("name")
    .param int has_param_1299 :opt_flag
.annotate 'line', 532
    .lex "self", param_1298
    if has_param_1299, optparam_542
    new $P1300, "Undef"
    set param_1299, $P1300
  optparam_542:
    .lex "$name", param_1299
.annotate 'line', 533
    new $P1301, "Undef"
    .lex "$obj", $P1301
    find_lex $P1302, "self"
    repr_instance_of $P1303, $P1302
    store_lex "$obj", $P1303
.annotate 'line', 534
    find_lex $P1304, "$obj"
    unless_null $P1304, vivify_543
    new $P1304, "Undef"
  vivify_543:
    find_lex $P1305, "$name"
    unless_null $P1305, vivify_544
    new $P1305, "Undef"
  vivify_544:
    $P1304."BUILD"($P1305 :named("name"))
    find_lex $P1306, "$obj"
    unless_null $P1306, vivify_545
    new $P1306, "Undef"
  vivify_545:
.annotate 'line', 532
    .return ($P1306)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "BUILD"  :subid("92_1303928979.9") :outer("80_1303928979.9")
    .param pmc param_1308
    .param pmc param_1309 :optional :named("name")
    .param int has_param_1309 :opt_flag
.annotate 'line', 538
    .lex "self", param_1308
    if has_param_1309, optparam_546
    new $P1310, "Undef"
    set param_1309, $P1310
  optparam_546:
    .lex "$name", param_1309
.annotate 'line', 539
    find_lex $P1311, "$name"
    unless_null $P1311, vivify_547
    new $P1311, "Undef"
  vivify_547:
    find_lex $P1312, "self"
    find_lex $P1313, "$?CLASS"
    setattribute $P1312, $P1313, "$!name", $P1311
.annotate 'line', 538
    .return ($P1311)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "new_type"  :subid("93_1303928979.9") :outer("80_1303928979.9")
    .param pmc param_1315
    .param pmc param_1316 :optional :named("name")
    .param int has_param_1316 :opt_flag
    .param pmc param_1318 :optional :named("repr")
    .param int has_param_1318 :opt_flag
.annotate 'line', 544
    .lex "self", param_1315
    if has_param_1316, optparam_548
    new $P1317, "String"
    assign $P1317, "<anon>"
    set param_1316, $P1317
  optparam_548:
    .lex "$name", param_1316
    if has_param_1318, optparam_549
    new $P1319, "String"
    assign $P1319, "P6opaque"
    set param_1318, $P1319
  optparam_549:
    .lex "$repr", param_1318
.annotate 'line', 545
    new $P1320, "Undef"
    .lex "$metaclass", $P1320
    find_lex $P1321, "self"
    find_lex $P1322, "$name"
    unless_null $P1322, vivify_550
    new $P1322, "Undef"
  vivify_550:
    $P1323 = $P1321."new"($P1322 :named("name"))
    store_lex "$metaclass", $P1323
.annotate 'line', 547
    find_lex $P1324, "$metaclass"
    unless_null $P1324, vivify_551
    new $P1324, "Undef"
  vivify_551:
    find_lex $P1325, "$repr"
    unless_null $P1325, vivify_552
    new $P1325, "Undef"
  vivify_552:
    set $S1326, $P1325
    repr_type_object_for $P1327, $P1324, $S1326
    $P1328 = root_new ['parrot';'Hash']
    set_who $P1327, $P1328
.annotate 'line', 544
    .return ($P1327)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_method"  :subid("94_1303928979.9") :outer("80_1303928979.9")
    .param pmc param_1330
    .param pmc param_1331
    .param pmc param_1332
    .param pmc param_1333
.annotate 'line', 551
    .lex "self", param_1330
    .lex "$obj", param_1331
    .lex "$name", param_1332
    .lex "$code_obj", param_1333
.annotate 'line', 552
    find_lex $P1335, "$name"
    unless_null $P1335, vivify_553
    new $P1335, "Undef"
  vivify_553:
    find_lex $P1336, "self"
    find_lex $P1337, "$?CLASS"
    getattribute $P1338, $P1336, $P1337, "%!methods"
    unless_null $P1338, vivify_554
    $P1338 = root_new ['parrot';'Hash']
  vivify_554:
    set $P1339, $P1338[$P1335]
    unless_null $P1339, vivify_555
    new $P1339, "Undef"
  vivify_555:
    unless $P1339, if_1334_end
.annotate 'line', 553
    new $P1340, "String"
    assign $P1340, "This class already has a method named "
    find_lex $P1341, "$name"
    unless_null $P1341, vivify_556
    new $P1341, "Undef"
  vivify_556:
    concat $P1342, $P1340, $P1341
    die $P1342
  if_1334_end:
.annotate 'line', 555
    find_lex $P1346, "$code_obj"
    unless_null $P1346, vivify_557
    new $P1346, "Undef"
  vivify_557:
    isnull $I1347, $P1346
    unless $I1347, unless_1345
    new $P1344, 'Integer'
    set $P1344, $I1347
    goto unless_1345_end
  unless_1345:
    find_lex $P1348, "$code_obj"
    unless_null $P1348, vivify_558
    new $P1348, "Undef"
  vivify_558:
    isa $I1349, $P1348, "Undef"
    new $P1344, 'Integer'
    set $P1344, $I1349
  unless_1345_end:
    unless $P1344, if_1343_end
.annotate 'line', 556
    new $P1350, 'String'
    set $P1350, "Cannot add a null method '"
    find_lex $P1351, "$name"
    unless_null $P1351, vivify_559
    new $P1351, "Undef"
  vivify_559:
    concat $P1352, $P1350, $P1351
    concat $P1353, $P1352, "' to class '"
    find_lex $P1354, "self"
    find_lex $P1355, "$?CLASS"
    getattribute $P1356, $P1354, $P1355, "$!name"
    unless_null $P1356, vivify_560
    new $P1356, "Undef"
  vivify_560:
    concat $P1357, $P1353, $P1356
    concat $P1358, $P1357, "'"
    die $P1358
  if_1343_end:
.annotate 'line', 558
    find_lex $P1359, "$code_obj"
    unless_null $P1359, vivify_561
    new $P1359, "Undef"
  vivify_561:
    find_lex $P1360, "$name"
    unless_null $P1360, vivify_562
    new $P1360, "Undef"
  vivify_562:
    find_lex $P1361, "self"
    find_lex $P1362, "$?CLASS"
    getattribute $P1363, $P1361, $P1362, "%!methods"
    unless_null $P1363, vivify_563
    $P1363 = root_new ['parrot';'Hash']
    setattribute $P1361, $P1362, "%!methods", $P1363
  vivify_563:
    set $P1363[$P1360], $P1359
.annotate 'line', 551
    .return ($P1359)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_multi_method"  :subid("95_1303928979.9") :outer("80_1303928979.9")
    .param pmc param_1365
    .param pmc param_1366
    .param pmc param_1367
    .param pmc param_1368
.annotate 'line', 561
    .lex "self", param_1365
    .lex "$obj", param_1366
    .lex "$name", param_1367
    .lex "$code_obj", param_1368
.annotate 'line', 567
    $P1369 = root_new ['parrot';'Hash']
    .lex "%todo", $P1369
.annotate 'line', 561
    find_lex $P1370, "%todo"
    unless_null $P1370, vivify_564
    $P1370 = root_new ['parrot';'Hash']
  vivify_564:
.annotate 'line', 568
    find_lex $P1371, "$name"
    unless_null $P1371, vivify_565
    new $P1371, "Undef"
  vivify_565:
    find_lex $P1372, "%todo"
    unless_null $P1372, vivify_566
    $P1372 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1372
  vivify_566:
    set $P1372["name"], $P1371
.annotate 'line', 569
    find_lex $P1373, "$code_obj"
    unless_null $P1373, vivify_567
    new $P1373, "Undef"
  vivify_567:
    find_lex $P1374, "%todo"
    unless_null $P1374, vivify_568
    $P1374 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1374
  vivify_568:
    set $P1374["code"], $P1373
.annotate 'line', 570
    find_lex $P1375, "%todo"
    unless_null $P1375, vivify_569
    $P1375 = root_new ['parrot';'Hash']
  vivify_569:
    find_lex $P1376, "self"
    find_lex $P1377, "$?CLASS"
    getattribute $P1378, $P1376, $P1377, "@!multi_methods_to_incorporate"
    unless_null $P1378, vivify_570
    $P1378 = root_new ['parrot';'ResizablePMCArray']
  vivify_570:
    set $N1379, $P1378
    set $I1380, $N1379
    find_lex $P1381, "self"
    find_lex $P1382, "$?CLASS"
    getattribute $P1383, $P1381, $P1382, "@!multi_methods_to_incorporate"
    unless_null $P1383, vivify_571
    $P1383 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1381, $P1382, "@!multi_methods_to_incorporate", $P1383
  vivify_571:
    set $P1383[$I1380], $P1375
    find_lex $P1384, "$code_obj"
    unless_null $P1384, vivify_572
    new $P1384, "Undef"
  vivify_572:
.annotate 'line', 561
    .return ($P1384)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_attribute"  :subid("96_1303928979.9") :outer("80_1303928979.9")
    .param pmc param_1386
    .param pmc param_1387
    .param pmc param_1388
.annotate 'line', 574
    .lex "self", param_1386
    .lex "$obj", param_1387
    .lex "$meta_attr", param_1388
.annotate 'line', 575
    new $P1389, "Undef"
    .lex "$name", $P1389
    find_lex $P1390, "$meta_attr"
    unless_null $P1390, vivify_573
    new $P1390, "Undef"
  vivify_573:
    $P1391 = $P1390."name"()
    store_lex "$name", $P1391
.annotate 'line', 576
    find_lex $P1393, "$name"
    unless_null $P1393, vivify_574
    new $P1393, "Undef"
  vivify_574:
    find_lex $P1394, "self"
    find_lex $P1395, "$?CLASS"
    getattribute $P1396, $P1394, $P1395, "%!attributes"
    unless_null $P1396, vivify_575
    $P1396 = root_new ['parrot';'Hash']
  vivify_575:
    set $P1397, $P1396[$P1393]
    unless_null $P1397, vivify_576
    new $P1397, "Undef"
  vivify_576:
    unless $P1397, if_1392_end
.annotate 'line', 577
    new $P1398, "String"
    assign $P1398, "This class already has an attribute named "
    find_lex $P1399, "$name"
    unless_null $P1399, vivify_577
    new $P1399, "Undef"
  vivify_577:
    concat $P1400, $P1398, $P1399
    die $P1400
  if_1392_end:
.annotate 'line', 579
    find_lex $P1401, "$meta_attr"
    unless_null $P1401, vivify_578
    new $P1401, "Undef"
  vivify_578:
    find_lex $P1402, "$name"
    unless_null $P1402, vivify_579
    new $P1402, "Undef"
  vivify_579:
    find_lex $P1403, "self"
    find_lex $P1404, "$?CLASS"
    getattribute $P1405, $P1403, $P1404, "%!attributes"
    unless_null $P1405, vivify_580
    $P1405 = root_new ['parrot';'Hash']
    setattribute $P1403, $P1404, "%!attributes", $P1405
  vivify_580:
    set $P1405[$P1402], $P1401
.annotate 'line', 574
    .return ($P1401)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_parent"  :subid("97_1303928979.9") :outer("80_1303928979.9")
    .param pmc param_1407
    .param pmc param_1408
    .param pmc param_1409
.annotate 'line', 582
    .const 'Sub' $P1421 = "98_1303928979.9" 
    capture_lex $P1421
    .lex "self", param_1407
    .lex "$obj", param_1408
    .lex "$parent", param_1409
.annotate 'line', 583
    find_lex $P1411, "self"
    find_lex $P1412, "$?CLASS"
    getattribute $P1413, $P1411, $P1412, "$!composed"
    unless_null $P1413, vivify_581
    new $P1413, "Undef"
  vivify_581:
    unless $P1413, if_1410_end
.annotate 'line', 584
    die "NQPClassHOW does not support adding parents after being composed."
  if_1410_end:
.annotate 'line', 586
    find_lex $P1415, "self"
    find_lex $P1416, "$?CLASS"
    getattribute $P1417, $P1415, $P1416, "@!parents"
    unless_null $P1417, vivify_582
    $P1417 = root_new ['parrot';'ResizablePMCArray']
  vivify_582:
    defined $I1418, $P1417
    unless $I1418, for_undef_583
    iter $P1414, $P1417
    new $P1433, 'ExceptionHandler'
    set_label $P1433, loop1432_handler
    $P1433."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1433
  loop1432_test:
    unless $P1414, loop1432_done
    shift $P1419, $P1414
  loop1432_redo:
    .const 'Sub' $P1421 = "98_1303928979.9" 
    capture_lex $P1421
    $P1421($P1419)
  loop1432_next:
    goto loop1432_test
  loop1432_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1434, exception, 'type'
    eq $P1434, .CONTROL_LOOP_NEXT, loop1432_next
    eq $P1434, .CONTROL_LOOP_REDO, loop1432_redo
  loop1432_done:
    pop_eh 
  for_undef_583:
.annotate 'line', 591
    find_lex $P1435, "$parent"
    unless_null $P1435, vivify_587
    new $P1435, "Undef"
  vivify_587:
    find_lex $P1436, "self"
    find_lex $P1437, "$?CLASS"
    getattribute $P1438, $P1436, $P1437, "@!parents"
    unless_null $P1438, vivify_588
    $P1438 = root_new ['parrot';'ResizablePMCArray']
  vivify_588:
    set $N1439, $P1438
    set $I1440, $N1439
    find_lex $P1441, "self"
    find_lex $P1442, "$?CLASS"
    getattribute $P1443, $P1441, $P1442, "@!parents"
    unless_null $P1443, vivify_589
    $P1443 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1441, $P1442, "@!parents", $P1443
  vivify_589:
    set $P1443[$I1440], $P1435
.annotate 'line', 582
    .return ($P1435)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1420"  :anon :subid("98_1303928979.9") :outer("97_1303928979.9")
    .param pmc param_1422
.annotate 'line', 586
    .lex "$_", param_1422
.annotate 'line', 587
    find_lex $P1425, "$_"
    unless_null $P1425, vivify_584
    new $P1425, "Undef"
  vivify_584:
    find_lex $P1426, "$parent"
    unless_null $P1426, vivify_585
    new $P1426, "Undef"
  vivify_585:
    issame $I1427, $P1425, $P1426
    if $I1427, if_1424
    new $P1423, 'Integer'
    set $P1423, $I1427
    goto if_1424_end
  if_1424:
.annotate 'line', 588
    new $P1428, "String"
    assign $P1428, "Already have "
    find_lex $P1429, "$parent"
    unless_null $P1429, vivify_586
    new $P1429, "Undef"
  vivify_586:
    concat $P1430, $P1428, $P1429
    concat $P1431, $P1430, " as a parent class."
    die $P1431
  if_1424_end:
.annotate 'line', 586
    .return ($P1423)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "set_default_parent"  :subid("99_1303928979.9") :outer("80_1303928979.9")
    .param pmc param_1445
    .param pmc param_1446
    .param pmc param_1447
.annotate 'line', 594
    .lex "self", param_1445
    .lex "$obj", param_1446
    .lex "$parent", param_1447
.annotate 'line', 595
    find_lex $P1448, "$parent"
    unless_null $P1448, vivify_590
    new $P1448, "Undef"
  vivify_590:
    find_lex $P1449, "self"
    find_lex $P1450, "$?CLASS"
    setattribute $P1449, $P1450, "$!default_parent", $P1448
.annotate 'line', 594
    .return ($P1448)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_role"  :subid("100_1303928979.9") :outer("80_1303928979.9")
    .param pmc param_1452
    .param pmc param_1453
    .param pmc param_1454
.annotate 'line', 598
    .const 'Sub' $P1462 = "101_1303928979.9" 
    capture_lex $P1462
    .lex "self", param_1452
    .lex "$obj", param_1453
    .lex "$role", param_1454
.annotate 'line', 599
    find_lex $P1456, "self"
    find_lex $P1457, "$?CLASS"
    getattribute $P1458, $P1456, $P1457, "@!roles"
    unless_null $P1458, vivify_591
    $P1458 = root_new ['parrot';'ResizablePMCArray']
  vivify_591:
    defined $I1459, $P1458
    unless $I1459, for_undef_592
    iter $P1455, $P1458
    new $P1474, 'ExceptionHandler'
    set_label $P1474, loop1473_handler
    $P1474."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1474
  loop1473_test:
    unless $P1455, loop1473_done
    shift $P1460, $P1455
  loop1473_redo:
    .const 'Sub' $P1462 = "101_1303928979.9" 
    capture_lex $P1462
    $P1462($P1460)
  loop1473_next:
    goto loop1473_test
  loop1473_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1475, exception, 'type'
    eq $P1475, .CONTROL_LOOP_NEXT, loop1473_next
    eq $P1475, .CONTROL_LOOP_REDO, loop1473_redo
  loop1473_done:
    pop_eh 
  for_undef_592:
.annotate 'line', 604
    find_lex $P1476, "$role"
    unless_null $P1476, vivify_596
    new $P1476, "Undef"
  vivify_596:
    find_lex $P1477, "self"
    find_lex $P1478, "$?CLASS"
    getattribute $P1479, $P1477, $P1478, "@!roles"
    unless_null $P1479, vivify_597
    $P1479 = root_new ['parrot';'ResizablePMCArray']
  vivify_597:
    set $N1480, $P1479
    set $I1481, $N1480
    find_lex $P1482, "self"
    find_lex $P1483, "$?CLASS"
    getattribute $P1484, $P1482, $P1483, "@!roles"
    unless_null $P1484, vivify_598
    $P1484 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1482, $P1483, "@!roles", $P1484
  vivify_598:
    set $P1484[$I1481], $P1476
.annotate 'line', 598
    .return ($P1476)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1461"  :anon :subid("101_1303928979.9") :outer("100_1303928979.9")
    .param pmc param_1463
.annotate 'line', 599
    .lex "$_", param_1463
.annotate 'line', 600
    find_lex $P1466, "$_"
    unless_null $P1466, vivify_593
    new $P1466, "Undef"
  vivify_593:
    find_lex $P1467, "$role"
    unless_null $P1467, vivify_594
    new $P1467, "Undef"
  vivify_594:
    issame $I1468, $P1466, $P1467
    if $I1468, if_1465
    new $P1464, 'Integer'
    set $P1464, $I1468
    goto if_1465_end
  if_1465:
.annotate 'line', 601
    new $P1469, "String"
    assign $P1469, "The role "
    find_lex $P1470, "$role"
    unless_null $P1470, vivify_595
    new $P1470, "Undef"
  vivify_595:
    concat $P1471, $P1469, $P1470
    concat $P1472, $P1471, " has already been added."
    die $P1472
  if_1465_end:
.annotate 'line', 599
    .return ($P1464)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_parrot_vtable_mapping"  :subid("102_1303928979.9") :outer("80_1303928979.9")
    .param pmc param_1486
    .param pmc param_1487
    .param pmc param_1488
    .param pmc param_1489
.annotate 'line', 607
    .lex "self", param_1486
    .lex "$obj", param_1487
    .lex "$name", param_1488
    .lex "$meth", param_1489
.annotate 'line', 608
    find_lex $P1491, "$name"
    unless_null $P1491, vivify_599
    new $P1491, "Undef"
  vivify_599:
    find_lex $P1492, "self"
    find_lex $P1493, "$?CLASS"
    getattribute $P1494, $P1492, $P1493, "%!parrot_vtable_mapping"
    unless_null $P1494, vivify_600
    $P1494 = root_new ['parrot';'Hash']
  vivify_600:
    set $P1495, $P1494[$P1491]
    unless_null $P1495, vivify_601
    new $P1495, "Undef"
  vivify_601:
    defined $I1496, $P1495
    unless $I1496, if_1490_end
.annotate 'line', 609
    new $P1497, "String"
    assign $P1497, "Class '"
    find_lex $P1498, "self"
    find_lex $P1499, "$?CLASS"
    getattribute $P1500, $P1498, $P1499, "$!name"
    unless_null $P1500, vivify_602
    new $P1500, "Undef"
  vivify_602:
    concat $P1501, $P1497, $P1500
    concat $P1502, $P1501, "' already has a Parrot v-table override for '"
    find_lex $P1503, "$name"
    unless_null $P1503, vivify_603
    new $P1503, "Undef"
  vivify_603:
    concat $P1504, $P1502, $P1503
.annotate 'line', 610
    concat $P1505, $P1504, "'"
.annotate 'line', 611
    die $P1505
  if_1490_end:
.annotate 'line', 613
    find_lex $P1506, "$meth"
    unless_null $P1506, vivify_604
    new $P1506, "Undef"
  vivify_604:
    find_lex $P1507, "$name"
    unless_null $P1507, vivify_605
    new $P1507, "Undef"
  vivify_605:
    find_lex $P1508, "self"
    find_lex $P1509, "$?CLASS"
    getattribute $P1510, $P1508, $P1509, "%!parrot_vtable_mapping"
    unless_null $P1510, vivify_606
    $P1510 = root_new ['parrot';'Hash']
    setattribute $P1508, $P1509, "%!parrot_vtable_mapping", $P1510
  vivify_606:
    set $P1510[$P1507], $P1506
.annotate 'line', 607
    .return ($P1506)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "compose"  :subid("103_1303928979.9") :outer("80_1303928979.9")
    .param pmc param_1512
    .param pmc param_1513
.annotate 'line', 616
    .const 'Sub' $P1602 = "106_1303928979.9" 
    capture_lex $P1602
    .const 'Sub' $P1519 = "104_1303928979.9" 
    capture_lex $P1519
    .lex "self", param_1512
    .lex "$obj", param_1513
.annotate 'line', 620
    find_lex $P1515, "self"
    find_lex $P1516, "$?CLASS"
    getattribute $P1517, $P1515, $P1516, "@!roles"
    unless_null $P1517, vivify_607
    $P1517 = root_new ['parrot';'ResizablePMCArray']
  vivify_607:
    unless $P1517, if_1514_end
    .const 'Sub' $P1519 = "104_1303928979.9" 
    capture_lex $P1519
    $P1519()
  if_1514_end:
.annotate 'line', 633
    find_lex $P1567, "self"
    find_lex $P1568, "$?CLASS"
    getattribute $P1569, $P1567, $P1568, "@!parents"
    unless_null $P1569, vivify_624
    $P1569 = root_new ['parrot';'ResizablePMCArray']
  vivify_624:
    set $N1570, $P1569
    iseq $I1571, $N1570, 0.0
    if $I1571, if_1566
    new $P1565, 'Integer'
    set $P1565, $I1571
    goto if_1566_end
  if_1566:
    find_lex $P1572, "self"
    find_lex $P1573, "$?CLASS"
    getattribute $P1574, $P1572, $P1573, "$!name"
    unless_null $P1574, vivify_625
    new $P1574, "Undef"
  vivify_625:
    set $S1575, $P1574
    isne $I1576, $S1575, "NQPMu"
    new $P1565, 'Integer'
    set $P1565, $I1576
  if_1566_end:
    unless $P1565, if_1564_end
.annotate 'line', 634
    find_lex $P1577, "self"
    find_lex $P1578, "$obj"
    unless_null $P1578, vivify_626
    new $P1578, "Undef"
  vivify_626:
    find_lex $P1579, "self"
    find_lex $P1580, "$?CLASS"
    getattribute $P1581, $P1579, $P1580, "$!default_parent"
    unless_null $P1581, vivify_627
    new $P1581, "Undef"
  vivify_627:
    $P1577."add_parent"($P1578, $P1581)
  if_1564_end:
.annotate 'line', 639
    find_lex $P1583, "self"
    find_lex $P1584, "$?CLASS"
    getattribute $P1585, $P1583, $P1584, "$!composed"
    unless_null $P1585, vivify_628
    new $P1585, "Undef"
  vivify_628:
    if $P1585, unless_1582_end
.annotate 'line', 640
    find_lex $P1586, "$obj"
    unless_null $P1586, vivify_629
    new $P1586, "Undef"
  vivify_629:
    $P1587 = "compute_c3_mro"($P1586)
    find_lex $P1588, "self"
    find_lex $P1589, "$?CLASS"
    setattribute $P1588, $P1589, "@!mro", $P1587
.annotate 'line', 641
    new $P1590, "Integer"
    assign $P1590, 1
    find_lex $P1591, "self"
    find_lex $P1592, "$?CLASS"
    setattribute $P1591, $P1592, "$!composed", $P1590
  unless_1582_end:
.annotate 'line', 645
    find_lex $P1593, "self"
    find_lex $P1594, "$obj"
    unless_null $P1594, vivify_630
    new $P1594, "Undef"
  vivify_630:
    $P1593."incorporate_multi_candidates"($P1594)
.annotate 'line', 648
    find_lex $P1596, "self"
    find_lex $P1597, "$obj"
    unless_null $P1597, vivify_631
    new $P1597, "Undef"
  vivify_631:
    $P1598 = $P1596."attributes"($P1597, "0" :named("local"))
    defined $I1599, $P1598
    unless $I1599, for_undef_632
    iter $P1595, $P1598
    new $P1608, 'ExceptionHandler'
    set_label $P1608, loop1607_handler
    $P1608."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1608
  loop1607_test:
    unless $P1595, loop1607_done
    shift $P1600, $P1595
  loop1607_redo:
    .const 'Sub' $P1602 = "106_1303928979.9" 
    capture_lex $P1602
    $P1602($P1600)
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
  for_undef_632:
.annotate 'line', 651
    find_lex $P1610, "self"
    find_lex $P1611, "$obj"
    unless_null $P1611, vivify_635
    new $P1611, "Undef"
  vivify_635:
    $P1610."publish_type_cache"($P1611)
.annotate 'line', 652
    find_lex $P1612, "self"
    find_lex $P1613, "$obj"
    unless_null $P1613, vivify_636
    new $P1613, "Undef"
  vivify_636:
    $P1612."publish_method_cache"($P1613)
.annotate 'line', 655
    find_lex $P1614, "self"
    find_lex $P1615, "$obj"
    unless_null $P1615, vivify_637
    new $P1615, "Undef"
  vivify_637:
    $P1614."publish_parrot_vtable_mapping"($P1615)
    find_lex $P1616, "$obj"
    unless_null $P1616, vivify_638
    new $P1616, "Undef"
  vivify_638:
.annotate 'line', 616
    .return ($P1616)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1518"  :anon :subid("104_1303928979.9") :outer("103_1303928979.9")
.annotate 'line', 620
    .const 'Sub' $P1529 = "105_1303928979.9" 
    capture_lex $P1529
.annotate 'line', 621
    $P1520 = root_new ['parrot';'ResizablePMCArray']
    .lex "@instantiated_roles", $P1520
.annotate 'line', 620
    find_lex $P1521, "@instantiated_roles"
    unless_null $P1521, vivify_608
    $P1521 = root_new ['parrot';'ResizablePMCArray']
  vivify_608:
.annotate 'line', 622
    find_lex $P1523, "self"
    find_lex $P1524, "$?CLASS"
    getattribute $P1525, $P1523, $P1524, "@!roles"
    unless_null $P1525, vivify_609
    $P1525 = root_new ['parrot';'ResizablePMCArray']
  vivify_609:
    defined $I1526, $P1525
    unless $I1526, for_undef_610
    iter $P1522, $P1525
    new $P1558, 'ExceptionHandler'
    set_label $P1558, loop1557_handler
    $P1558."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1558
  loop1557_test:
    unless $P1522, loop1557_done
    shift $P1527, $P1522
  loop1557_redo:
    .const 'Sub' $P1529 = "105_1303928979.9" 
    capture_lex $P1529
    $P1529($P1527)
  loop1557_next:
    goto loop1557_test
  loop1557_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1559, exception, 'type'
    eq $P1559, .CONTROL_LOOP_NEXT, loop1557_next
    eq $P1559, .CONTROL_LOOP_REDO, loop1557_redo
  loop1557_done:
    pop_eh 
  for_undef_610:
.annotate 'line', 628
    find_lex $P1560, "RoleToClassApplier"
    find_lex $P1561, "$obj"
    unless_null $P1561, vivify_622
    new $P1561, "Undef"
  vivify_622:
    find_lex $P1562, "@instantiated_roles"
    unless_null $P1562, vivify_623
    $P1562 = root_new ['parrot';'ResizablePMCArray']
  vivify_623:
    $P1563 = $P1560."apply"($P1561, $P1562)
.annotate 'line', 620
    .return ($P1563)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1528"  :anon :subid("105_1303928979.9") :outer("104_1303928979.9")
    .param pmc param_1531
.annotate 'line', 623
    new $P1530, "Undef"
    .lex "$ins", $P1530
    .lex "$_", param_1531
    find_lex $P1532, "$_"
    unless_null $P1532, vivify_611
    new $P1532, "Undef"
  vivify_611:
    get_how $P1533, $P1532
    find_lex $P1534, "$_"
    unless_null $P1534, vivify_612
    new $P1534, "Undef"
  vivify_612:
    find_lex $P1535, "$obj"
    unless_null $P1535, vivify_613
    new $P1535, "Undef"
  vivify_613:
    $P1536 = $P1533."instantiate"($P1534, $P1535)
    store_lex "$ins", $P1536
.annotate 'line', 624
    find_lex $P1537, "@instantiated_roles"
    unless_null $P1537, vivify_614
    $P1537 = root_new ['parrot';'ResizablePMCArray']
  vivify_614:
    find_lex $P1538, "$ins"
    unless_null $P1538, vivify_615
    new $P1538, "Undef"
  vivify_615:
    $P1537."push"($P1538)
.annotate 'line', 625
    find_lex $P1539, "$_"
    unless_null $P1539, vivify_616
    new $P1539, "Undef"
  vivify_616:
    find_lex $P1540, "self"
    find_lex $P1541, "$?CLASS"
    getattribute $P1542, $P1540, $P1541, "@!done"
    unless_null $P1542, vivify_617
    $P1542 = root_new ['parrot';'ResizablePMCArray']
  vivify_617:
    set $N1543, $P1542
    set $I1544, $N1543
    find_lex $P1545, "self"
    find_lex $P1546, "$?CLASS"
    getattribute $P1547, $P1545, $P1546, "@!done"
    unless_null $P1547, vivify_618
    $P1547 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1545, $P1546, "@!done", $P1547
  vivify_618:
    set $P1547[$I1544], $P1539
.annotate 'line', 626
    find_lex $P1548, "$ins"
    unless_null $P1548, vivify_619
    new $P1548, "Undef"
  vivify_619:
    find_lex $P1549, "self"
    find_lex $P1550, "$?CLASS"
    getattribute $P1551, $P1549, $P1550, "@!done"
    unless_null $P1551, vivify_620
    $P1551 = root_new ['parrot';'ResizablePMCArray']
  vivify_620:
    set $N1552, $P1551
    set $I1553, $N1552
    find_lex $P1554, "self"
    find_lex $P1555, "$?CLASS"
    getattribute $P1556, $P1554, $P1555, "@!done"
    unless_null $P1556, vivify_621
    $P1556 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1554, $P1555, "@!done", $P1556
  vivify_621:
    set $P1556[$I1553], $P1548
.annotate 'line', 622
    .return ($P1548)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1601"  :anon :subid("106_1303928979.9") :outer("103_1303928979.9")
    .param pmc param_1603
.annotate 'line', 648
    .lex "$_", param_1603
    find_lex $P1604, "$_"
    unless_null $P1604, vivify_633
    new $P1604, "Undef"
  vivify_633:
    find_lex $P1605, "$obj"
    unless_null $P1605, vivify_634
    new $P1605, "Undef"
  vivify_634:
    $P1606 = $P1604."compose"($P1605)
    .return ($P1606)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "incorporate_multi_candidates"  :subid("107_1303928979.9") :outer("80_1303928979.9")
    .param pmc param_1618
    .param pmc param_1619
.annotate 'line', 660
    .const 'Sub' $P1634 = "108_1303928979.9" 
    capture_lex $P1634
    .lex "self", param_1618
    .lex "$obj", param_1619
.annotate 'line', 661
    new $P1620, "Undef"
    .lex "$num_todo", $P1620
.annotate 'line', 662
    new $P1621, "Undef"
    .lex "$i", $P1621
.annotate 'line', 661
    find_lex $P1622, "self"
    find_lex $P1623, "$?CLASS"
    getattribute $P1624, $P1622, $P1623, "@!multi_methods_to_incorporate"
    unless_null $P1624, vivify_639
    $P1624 = root_new ['parrot';'ResizablePMCArray']
  vivify_639:
    set $N1625, $P1624
    new $P1626, 'Float'
    set $P1626, $N1625
    store_lex "$num_todo", $P1626
.annotate 'line', 662
    new $P1627, "Integer"
    assign $P1627, 0
    store_lex "$i", $P1627
.annotate 'line', 663
    new $P1743, 'ExceptionHandler'
    set_label $P1743, loop1742_handler
    $P1743."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1743
  loop1742_test:
    find_lex $P1628, "$i"
    unless_null $P1628, vivify_640
    new $P1628, "Undef"
  vivify_640:
    set $N1629, $P1628
    find_lex $P1630, "$num_todo"
    unless_null $P1630, vivify_641
    new $P1630, "Undef"
  vivify_641:
    set $N1631, $P1630
    isne $I1632, $N1629, $N1631
    unless $I1632, loop1742_done
  loop1742_redo:
    .const 'Sub' $P1634 = "108_1303928979.9" 
    capture_lex $P1634
    $P1634()
  loop1742_next:
    goto loop1742_test
  loop1742_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1744, exception, 'type'
    eq $P1744, .CONTROL_LOOP_NEXT, loop1742_next
    eq $P1744, .CONTROL_LOOP_REDO, loop1742_redo
  loop1742_done:
    pop_eh 
.annotate 'line', 660
    .return ($I1632)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1633"  :anon :subid("108_1303928979.9") :outer("107_1303928979.9")
.annotate 'line', 663
    .const 'Sub' $P1670 = "109_1303928979.9" 
    capture_lex $P1670
.annotate 'line', 665
    new $P1635, "Undef"
    .lex "$name", $P1635
.annotate 'line', 666
    new $P1636, "Undef"
    .lex "$code", $P1636
.annotate 'line', 670
    new $P1637, "Undef"
    .lex "$dispatcher", $P1637
.annotate 'line', 665
    find_lex $P1638, "$i"
    unless_null $P1638, vivify_642
    new $P1638, "Undef"
  vivify_642:
    set $I1639, $P1638
    find_lex $P1640, "self"
    find_lex $P1641, "$?CLASS"
    getattribute $P1642, $P1640, $P1641, "@!multi_methods_to_incorporate"
    unless_null $P1642, vivify_643
    $P1642 = root_new ['parrot';'ResizablePMCArray']
  vivify_643:
    set $P1643, $P1642[$I1639]
    unless_null $P1643, vivify_644
    $P1643 = root_new ['parrot';'Hash']
  vivify_644:
    set $P1644, $P1643["name"]
    unless_null $P1644, vivify_645
    new $P1644, "Undef"
  vivify_645:
    store_lex "$name", $P1644
.annotate 'line', 666
    find_lex $P1645, "$i"
    unless_null $P1645, vivify_646
    new $P1645, "Undef"
  vivify_646:
    set $I1646, $P1645
    find_lex $P1647, "self"
    find_lex $P1648, "$?CLASS"
    getattribute $P1649, $P1647, $P1648, "@!multi_methods_to_incorporate"
    unless_null $P1649, vivify_647
    $P1649 = root_new ['parrot';'ResizablePMCArray']
  vivify_647:
    set $P1650, $P1649[$I1646]
    unless_null $P1650, vivify_648
    $P1650 = root_new ['parrot';'Hash']
  vivify_648:
    set $P1651, $P1650["code"]
    unless_null $P1651, vivify_649
    new $P1651, "Undef"
  vivify_649:
    store_lex "$code", $P1651
.annotate 'line', 670
    find_lex $P1652, "$name"
    unless_null $P1652, vivify_650
    new $P1652, "Undef"
  vivify_650:
    find_lex $P1653, "self"
    find_lex $P1654, "$?CLASS"
    getattribute $P1655, $P1653, $P1654, "%!methods"
    unless_null $P1655, vivify_651
    $P1655 = root_new ['parrot';'Hash']
  vivify_651:
    set $P1656, $P1655[$P1652]
    unless_null $P1656, vivify_652
    new $P1656, "Undef"
  vivify_652:
    store_lex "$dispatcher", $P1656
.annotate 'line', 671
    find_lex $P1658, "$dispatcher"
    unless_null $P1658, vivify_653
    new $P1658, "Undef"
  vivify_653:
    defined $I1659, $P1658
    if $I1659, if_1657
.annotate 'line', 681
    .const 'Sub' $P1670 = "109_1303928979.9" 
    capture_lex $P1670
    $P1670()
    goto if_1657_end
  if_1657:
.annotate 'line', 674
    find_lex $P1661, "$dispatcher"
    unless_null $P1661, vivify_678
    new $P1661, "Undef"
  vivify_678:
    is_dispatcher $I1662, $P1661
    if $I1662, if_1660
.annotate 'line', 678
    new $P1665, 'String'
    set $P1665, "Cannot have a multi candidate for "
    find_lex $P1666, "$name"
    unless_null $P1666, vivify_679
    new $P1666, "Undef"
  vivify_679:
    concat $P1667, $P1665, $P1666
    concat $P1668, $P1667, " when an only method is also in the class"
    die $P1668
.annotate 'line', 677
    goto if_1660_end
  if_1660:
.annotate 'line', 675
    find_lex $P1663, "$dispatcher"
    unless_null $P1663, vivify_680
    new $P1663, "Undef"
  vivify_680:
    find_lex $P1664, "$code"
    unless_null $P1664, vivify_681
    new $P1664, "Undef"
  vivify_681:
    push_dispatchee $P1663, $P1664
  if_1660_end:
  if_1657_end:
.annotate 'line', 709
    find_lex $P1740, "$i"
    unless_null $P1740, vivify_682
    new $P1740, "Undef"
  vivify_682:
    add $P1741, $P1740, 1
    store_lex "$i", $P1741
.annotate 'line', 663
    .return ($P1741)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1669"  :anon :subid("109_1303928979.9") :outer("108_1303928979.9")
.annotate 'line', 681
    .const 'Sub' $P1687 = "110_1303928979.9" 
    capture_lex $P1687
.annotate 'line', 683
    new $P1671, "Undef"
    .lex "$j", $P1671
.annotate 'line', 684
    new $P1672, "Undef"
    .lex "$found", $P1672
.annotate 'line', 683
    new $P1673, "Integer"
    assign $P1673, 1
    store_lex "$j", $P1673
.annotate 'line', 684
    new $P1674, "Integer"
    assign $P1674, 0
    store_lex "$found", $P1674
.annotate 'line', 685
    new $P1731, 'ExceptionHandler'
    set_label $P1731, loop1730_handler
    $P1731."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1731
  loop1730_test:
    find_lex $P1677, "$j"
    unless_null $P1677, vivify_654
    new $P1677, "Undef"
  vivify_654:
    set $N1678, $P1677
    find_lex $P1679, "self"
    find_lex $P1680, "$?CLASS"
    getattribute $P1681, $P1679, $P1680, "@!mro"
    unless_null $P1681, vivify_655
    $P1681 = root_new ['parrot';'ResizablePMCArray']
  vivify_655:
    set $N1682, $P1681
    isne $I1683, $N1678, $N1682
    if $I1683, if_1676
    new $P1675, 'Integer'
    set $P1675, $I1683
    goto if_1676_end
  if_1676:
    find_lex $P1684, "$found"
    unless_null $P1684, vivify_656
    new $P1684, "Undef"
  vivify_656:
    isfalse $I1685, $P1684
    new $P1675, 'Integer'
    set $P1675, $I1685
  if_1676_end:
    unless $P1675, loop1730_done
  loop1730_redo:
    .const 'Sub' $P1687 = "110_1303928979.9" 
    capture_lex $P1687
    $P1687()
  loop1730_next:
    goto loop1730_test
  loop1730_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1732, exception, 'type'
    eq $P1732, .CONTROL_LOOP_NEXT, loop1730_next
    eq $P1732, .CONTROL_LOOP_REDO, loop1730_redo
  loop1730_done:
    pop_eh 
.annotate 'line', 705
    find_lex $P1735, "$found"
    unless_null $P1735, vivify_676
    new $P1735, "Undef"
  vivify_676:
    unless $P1735, unless_1734
    set $P1733, $P1735
    goto unless_1734_end
  unless_1734:
.annotate 'line', 706
    new $P1736, 'String'
    set $P1736, "Could not find a proto for multi "
    find_lex $P1737, "$name"
    unless_null $P1737, vivify_677
    new $P1737, "Undef"
  vivify_677:
    concat $P1738, $P1736, $P1737
    concat $P1739, $P1738, ", and proto generation is NYI"
    die $P1739
  unless_1734_end:
.annotate 'line', 681
    .return ($P1733)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1686"  :anon :subid("110_1303928979.9") :outer("109_1303928979.9")
.annotate 'line', 685
    .const 'Sub' $P1711 = "111_1303928979.9" 
    capture_lex $P1711
.annotate 'line', 686
    new $P1688, "Undef"
    .lex "$parent", $P1688
.annotate 'line', 687
    $P1689 = root_new ['parrot';'Hash']
    .lex "%meths", $P1689
.annotate 'line', 688
    new $P1690, "Undef"
    .lex "$dispatcher", $P1690
.annotate 'line', 686
    find_lex $P1691, "$j"
    unless_null $P1691, vivify_657
    new $P1691, "Undef"
  vivify_657:
    set $I1692, $P1691
    find_lex $P1693, "self"
    find_lex $P1694, "$?CLASS"
    getattribute $P1695, $P1693, $P1694, "@!mro"
    unless_null $P1695, vivify_658
    $P1695 = root_new ['parrot';'ResizablePMCArray']
  vivify_658:
    set $P1696, $P1695[$I1692]
    unless_null $P1696, vivify_659
    new $P1696, "Undef"
  vivify_659:
    store_lex "$parent", $P1696
.annotate 'line', 687
    find_lex $P1697, "$parent"
    unless_null $P1697, vivify_660
    new $P1697, "Undef"
  vivify_660:
    get_how $P1698, $P1697
    find_lex $P1699, "$parent"
    unless_null $P1699, vivify_661
    new $P1699, "Undef"
  vivify_661:
    $P1700 = $P1698."method_table"($P1699)
    store_lex "%meths", $P1700
.annotate 'line', 688
    find_lex $P1701, "$name"
    unless_null $P1701, vivify_662
    new $P1701, "Undef"
  vivify_662:
    find_lex $P1702, "%meths"
    unless_null $P1702, vivify_663
    $P1702 = root_new ['parrot';'Hash']
  vivify_663:
    set $P1703, $P1702[$P1701]
    unless_null $P1703, vivify_664
    new $P1703, "Undef"
  vivify_664:
    store_lex "$dispatcher", $P1703
.annotate 'line', 689
    find_lex $P1705, "$dispatcher"
    unless_null $P1705, vivify_665
    new $P1705, "Undef"
  vivify_665:
    defined $I1706, $P1705
    unless $I1706, if_1704_end
.annotate 'line', 692
    find_lex $P1708, "$dispatcher"
    unless_null $P1708, vivify_666
    new $P1708, "Undef"
  vivify_666:
    is_dispatcher $I1709, $P1708
    if $I1709, if_1707
.annotate 'line', 700
    new $P1724, 'String'
    set $P1724, "Could not find a proto for multi "
    find_lex $P1725, "$name"
    unless_null $P1725, vivify_667
    new $P1725, "Undef"
  vivify_667:
    concat $P1726, $P1724, $P1725
    concat $P1727, $P1726, " (it may exist, but an only is hiding it if so)"
    die $P1727
.annotate 'line', 699
    goto if_1707_end
  if_1707:
.annotate 'line', 692
    .const 'Sub' $P1711 = "111_1303928979.9" 
    capture_lex $P1711
    $P1711()
  if_1707_end:
  if_1704_end:
.annotate 'line', 703
    find_lex $P1728, "$j"
    unless_null $P1728, vivify_675
    new $P1728, "Undef"
  vivify_675:
    add $P1729, $P1728, 1
    store_lex "$j", $P1729
.annotate 'line', 685
    .return ($P1729)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1710"  :anon :subid("111_1303928979.9") :outer("110_1303928979.9")
.annotate 'line', 694
    $P1712 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new_dispatchees", $P1712
.annotate 'line', 692
    find_lex $P1713, "@new_dispatchees"
    unless_null $P1713, vivify_668
    $P1713 = root_new ['parrot';'ResizablePMCArray']
  vivify_668:
.annotate 'line', 695
    find_lex $P1714, "$code"
    unless_null $P1714, vivify_669
    new $P1714, "Undef"
  vivify_669:
    find_lex $P1715, "@new_dispatchees"
    unless_null $P1715, vivify_670
    $P1715 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@new_dispatchees", $P1715
  vivify_670:
    set $P1715[0], $P1714
.annotate 'line', 696
    find_lex $P1716, "$dispatcher"
    unless_null $P1716, vivify_671
    new $P1716, "Undef"
  vivify_671:
    find_lex $P1717, "@new_dispatchees"
    unless_null $P1717, vivify_672
    $P1717 = root_new ['parrot';'ResizablePMCArray']
  vivify_672:
    create_dispatch_and_add_candidates $P1718, $P1716, $P1717
    find_lex $P1719, "$name"
    unless_null $P1719, vivify_673
    new $P1719, "Undef"
  vivify_673:
    find_lex $P1720, "self"
    find_lex $P1721, "$?CLASS"
    getattribute $P1722, $P1720, $P1721, "%!methods"
    unless_null $P1722, vivify_674
    $P1722 = root_new ['parrot';'Hash']
    setattribute $P1720, $P1721, "%!methods", $P1722
  vivify_674:
    set $P1722[$P1719], $P1718
.annotate 'line', 697
    new $P1723, "Integer"
    assign $P1723, 1
    store_lex "$found", $P1723
.annotate 'line', 692
    .return ($P1723)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_type_cache"  :subid("112_1303928979.9") :outer("80_1303928979.9")
    .param pmc param_1748
    .param pmc param_1749
.annotate 'line', 802
    .const 'Sub' $P1774 = "114_1303928979.9" 
    capture_lex $P1774
    .const 'Sub' $P1759 = "113_1303928979.9" 
    capture_lex $P1759
    .lex "self", param_1748
    .lex "$obj", param_1749
.annotate 'line', 803
    $P1750 = root_new ['parrot';'ResizablePMCArray']
    .lex "@tc", $P1750
.annotate 'line', 802
    find_lex $P1751, "@tc"
    unless_null $P1751, vivify_683
    $P1751 = root_new ['parrot';'ResizablePMCArray']
  vivify_683:
.annotate 'line', 804
    find_lex $P1753, "self"
    find_lex $P1754, "$?CLASS"
    getattribute $P1755, $P1753, $P1754, "@!mro"
    unless_null $P1755, vivify_684
    $P1755 = root_new ['parrot';'ResizablePMCArray']
  vivify_684:
    defined $I1756, $P1755
    unless $I1756, for_undef_685
    iter $P1752, $P1755
    new $P1765, 'ExceptionHandler'
    set_label $P1765, loop1764_handler
    $P1765."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1765
  loop1764_test:
    unless $P1752, loop1764_done
    shift $P1757, $P1752
  loop1764_redo:
    .const 'Sub' $P1759 = "113_1303928979.9" 
    capture_lex $P1759
    $P1759($P1757)
  loop1764_next:
    goto loop1764_test
  loop1764_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1766, exception, 'type'
    eq $P1766, .CONTROL_LOOP_NEXT, loop1764_next
    eq $P1766, .CONTROL_LOOP_REDO, loop1764_redo
  loop1764_done:
    pop_eh 
  for_undef_685:
.annotate 'line', 805
    find_lex $P1768, "self"
    find_lex $P1769, "$?CLASS"
    getattribute $P1770, $P1768, $P1769, "@!done"
    unless_null $P1770, vivify_688
    $P1770 = root_new ['parrot';'ResizablePMCArray']
  vivify_688:
    defined $I1771, $P1770
    unless $I1771, for_undef_689
    iter $P1767, $P1770
    new $P1780, 'ExceptionHandler'
    set_label $P1780, loop1779_handler
    $P1780."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1780
  loop1779_test:
    unless $P1767, loop1779_done
    shift $P1772, $P1767
  loop1779_redo:
    .const 'Sub' $P1774 = "114_1303928979.9" 
    capture_lex $P1774
    $P1774($P1772)
  loop1779_next:
    goto loop1779_test
  loop1779_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1781, exception, 'type'
    eq $P1781, .CONTROL_LOOP_NEXT, loop1779_next
    eq $P1781, .CONTROL_LOOP_REDO, loop1779_redo
  loop1779_done:
    pop_eh 
  for_undef_689:
.annotate 'line', 806
    find_lex $P1782, "$obj"
    unless_null $P1782, vivify_692
    new $P1782, "Undef"
  vivify_692:
    find_lex $P1783, "@tc"
    unless_null $P1783, vivify_693
    $P1783 = root_new ['parrot';'ResizablePMCArray']
  vivify_693:
    publish_type_check_cache $P1782, $P1783
.annotate 'line', 802
    .return ()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1758"  :anon :subid("113_1303928979.9") :outer("112_1303928979.9")
    .param pmc param_1760
.annotate 'line', 804
    .lex "$_", param_1760
    find_lex $P1761, "@tc"
    unless_null $P1761, vivify_686
    $P1761 = root_new ['parrot';'ResizablePMCArray']
  vivify_686:
    find_lex $P1762, "$_"
    unless_null $P1762, vivify_687
    new $P1762, "Undef"
  vivify_687:
    $P1763 = $P1761."push"($P1762)
    .return ($P1763)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1773"  :anon :subid("114_1303928979.9") :outer("112_1303928979.9")
    .param pmc param_1775
.annotate 'line', 805
    .lex "$_", param_1775
    find_lex $P1776, "@tc"
    unless_null $P1776, vivify_690
    $P1776 = root_new ['parrot';'ResizablePMCArray']
  vivify_690:
    find_lex $P1777, "$_"
    unless_null $P1777, vivify_691
    new $P1777, "Undef"
  vivify_691:
    $P1778 = $P1776."push"($P1777)
    .return ($P1778)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_method_cache"  :subid("115_1303928979.9") :outer("80_1303928979.9")
    .param pmc param_1785
    .param pmc param_1786
.annotate 'line', 809
    .const 'Sub' $P1796 = "116_1303928979.9" 
    capture_lex $P1796
    .lex "self", param_1785
    .lex "$obj", param_1786
.annotate 'line', 812
    $P1787 = root_new ['parrot';'Hash']
    .lex "%cache", $P1787
.annotate 'line', 809
    find_lex $P1788, "%cache"
    unless_null $P1788, vivify_694
    $P1788 = root_new ['parrot';'Hash']
  vivify_694:
.annotate 'line', 813
    find_lex $P1790, "self"
    find_lex $P1791, "$?CLASS"
    getattribute $P1792, $P1790, $P1791, "@!mro"
    unless_null $P1792, vivify_695
    $P1792 = root_new ['parrot';'ResizablePMCArray']
  vivify_695:
    defined $I1793, $P1792
    unless $I1793, for_undef_696
    iter $P1789, $P1792
    new $P1825, 'ExceptionHandler'
    set_label $P1825, loop1824_handler
    $P1825."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1825
  loop1824_test:
    unless $P1789, loop1824_done
    shift $P1794, $P1789
  loop1824_redo:
    .const 'Sub' $P1796 = "116_1303928979.9" 
    capture_lex $P1796
    $P1796($P1794)
  loop1824_next:
    goto loop1824_test
  loop1824_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1826, exception, 'type'
    eq $P1826, .CONTROL_LOOP_NEXT, loop1824_next
    eq $P1826, .CONTROL_LOOP_REDO, loop1824_redo
  loop1824_done:
    pop_eh 
  for_undef_696:
.annotate 'line', 821
    find_lex $P1827, "$obj"
    unless_null $P1827, vivify_707
    new $P1827, "Undef"
  vivify_707:
    find_lex $P1828, "%cache"
    unless_null $P1828, vivify_708
    $P1828 = root_new ['parrot';'Hash']
  vivify_708:
    publish_method_cache $P1827, $P1828
.annotate 'line', 809
    .return ()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1795"  :anon :subid("116_1303928979.9") :outer("115_1303928979.9")
    .param pmc param_1798
.annotate 'line', 813
    .const 'Sub' $P1808 = "117_1303928979.9" 
    capture_lex $P1808
.annotate 'line', 814
    $P1797 = root_new ['parrot';'Hash']
    .lex "%methods", $P1797
    .lex "$_", param_1798
    find_lex $P1799, "$_"
    unless_null $P1799, vivify_697
    new $P1799, "Undef"
  vivify_697:
    get_how $P1800, $P1799
    find_lex $P1801, "$_"
    unless_null $P1801, vivify_698
    new $P1801, "Undef"
  vivify_698:
    $P1802 = $P1800."method_table"($P1801)
    store_lex "%methods", $P1802
.annotate 'line', 815
    find_lex $P1804, "%methods"
    unless_null $P1804, vivify_699
    $P1804 = root_new ['parrot';'Hash']
  vivify_699:
    defined $I1805, $P1804
    unless $I1805, for_undef_700
    iter $P1803, $P1804
    new $P1822, 'ExceptionHandler'
    set_label $P1822, loop1821_handler
    $P1822."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1822
  loop1821_test:
    unless $P1803, loop1821_done
    shift $P1806, $P1803
  loop1821_redo:
    .const 'Sub' $P1808 = "117_1303928979.9" 
    capture_lex $P1808
    $P1808($P1806)
  loop1821_next:
    goto loop1821_test
  loop1821_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1823, exception, 'type'
    eq $P1823, .CONTROL_LOOP_NEXT, loop1821_next
    eq $P1823, .CONTROL_LOOP_REDO, loop1821_redo
  loop1821_done:
    pop_eh 
  for_undef_700:
.annotate 'line', 813
    .return ($P1803)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1807"  :anon :subid("117_1303928979.9") :outer("116_1303928979.9")
    .param pmc param_1809
.annotate 'line', 815
    .lex "$_", param_1809
.annotate 'line', 816
    find_lex $P1812, "$_"
    unless_null $P1812, vivify_701
    new $P1812, "Undef"
  vivify_701:
    $P1813 = $P1812."key"()
    find_lex $P1814, "%cache"
    unless_null $P1814, vivify_702
    $P1814 = root_new ['parrot';'Hash']
  vivify_702:
    set $P1815, $P1814[$P1813]
    unless_null $P1815, vivify_703
    new $P1815, "Undef"
  vivify_703:
    unless $P1815, unless_1811
    set $P1810, $P1815
    goto unless_1811_end
  unless_1811:
.annotate 'line', 817
    find_lex $P1816, "$_"
    unless_null $P1816, vivify_704
    new $P1816, "Undef"
  vivify_704:
    $P1817 = $P1816."value"()
    find_lex $P1818, "$_"
    unless_null $P1818, vivify_705
    new $P1818, "Undef"
  vivify_705:
    $P1819 = $P1818."key"()
    find_lex $P1820, "%cache"
    unless_null $P1820, vivify_706
    $P1820 = root_new ['parrot';'Hash']
    store_lex "%cache", $P1820
  vivify_706:
    set $P1820[$P1819], $P1817
.annotate 'line', 816
    set $P1810, $P1817
  unless_1811_end:
.annotate 'line', 815
    .return ($P1810)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_parrot_vtable_mapping"  :subid("118_1303928979.9") :outer("80_1303928979.9")
    .param pmc param_1830
    .param pmc param_1831
.annotate 'line', 824
    .const 'Sub' $P1841 = "119_1303928979.9" 
    capture_lex $P1841
    .lex "self", param_1830
    .lex "$obj", param_1831
.annotate 'line', 825
    $P1832 = root_new ['parrot';'Hash']
    .lex "%mapping", $P1832
.annotate 'line', 824
    find_lex $P1833, "%mapping"
    unless_null $P1833, vivify_709
    $P1833 = root_new ['parrot';'Hash']
  vivify_709:
.annotate 'line', 826
    find_lex $P1835, "self"
    find_lex $P1836, "$?CLASS"
    getattribute $P1837, $P1835, $P1836, "@!mro"
    unless_null $P1837, vivify_710
    $P1837 = root_new ['parrot';'ResizablePMCArray']
  vivify_710:
    defined $I1838, $P1837
    unless $I1838, for_undef_711
    iter $P1834, $P1837
    new $P1870, 'ExceptionHandler'
    set_label $P1870, loop1869_handler
    $P1870."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1870
  loop1869_test:
    unless $P1834, loop1869_done
    shift $P1839, $P1834
  loop1869_redo:
    .const 'Sub' $P1841 = "119_1303928979.9" 
    capture_lex $P1841
    $P1841($P1839)
  loop1869_next:
    goto loop1869_test
  loop1869_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1871, exception, 'type'
    eq $P1871, .CONTROL_LOOP_NEXT, loop1869_next
    eq $P1871, .CONTROL_LOOP_REDO, loop1869_redo
  loop1869_done:
    pop_eh 
  for_undef_711:
.annotate 'line', 834
    find_lex $P1874, "%mapping"
    unless_null $P1874, vivify_722
    $P1874 = root_new ['parrot';'Hash']
  vivify_722:
    set $N1875, $P1874
    if $N1875, if_1873
    new $P1872, 'Float'
    set $P1872, $N1875
    goto if_1873_end
  if_1873:
.annotate 'line', 835
    find_lex $P1876, "$obj"
    unless_null $P1876, vivify_723
    new $P1876, "Undef"
  vivify_723:
    find_lex $P1877, "%mapping"
    unless_null $P1877, vivify_724
    $P1877 = root_new ['parrot';'Hash']
  vivify_724:
    stable_publish_vtable_mapping $P1876, $P1877
  if_1873_end:
.annotate 'line', 824
    .return ($P1872)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1840"  :anon :subid("119_1303928979.9") :outer("118_1303928979.9")
    .param pmc param_1843
.annotate 'line', 826
    .const 'Sub' $P1853 = "120_1303928979.9" 
    capture_lex $P1853
.annotate 'line', 827
    $P1842 = root_new ['parrot';'Hash']
    .lex "%map", $P1842
    .lex "$_", param_1843
    find_lex $P1844, "$_"
    unless_null $P1844, vivify_712
    new $P1844, "Undef"
  vivify_712:
    get_how $P1845, $P1844
    find_lex $P1846, "$_"
    unless_null $P1846, vivify_713
    new $P1846, "Undef"
  vivify_713:
    $P1847 = $P1845."parrot_vtable_mappings"($P1846, 1 :named("local"))
    store_lex "%map", $P1847
.annotate 'line', 828
    find_lex $P1849, "%map"
    unless_null $P1849, vivify_714
    $P1849 = root_new ['parrot';'Hash']
  vivify_714:
    defined $I1850, $P1849
    unless $I1850, for_undef_715
    iter $P1848, $P1849
    new $P1867, 'ExceptionHandler'
    set_label $P1867, loop1866_handler
    $P1867."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1867
  loop1866_test:
    unless $P1848, loop1866_done
    shift $P1851, $P1848
  loop1866_redo:
    .const 'Sub' $P1853 = "120_1303928979.9" 
    capture_lex $P1853
    $P1853($P1851)
  loop1866_next:
    goto loop1866_test
  loop1866_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1868, exception, 'type'
    eq $P1868, .CONTROL_LOOP_NEXT, loop1866_next
    eq $P1868, .CONTROL_LOOP_REDO, loop1866_redo
  loop1866_done:
    pop_eh 
  for_undef_715:
.annotate 'line', 826
    .return ($P1848)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1852"  :anon :subid("120_1303928979.9") :outer("119_1303928979.9")
    .param pmc param_1854
.annotate 'line', 828
    .lex "$_", param_1854
.annotate 'line', 829
    find_lex $P1857, "$_"
    unless_null $P1857, vivify_716
    new $P1857, "Undef"
  vivify_716:
    $P1858 = $P1857."key"()
    find_lex $P1859, "%mapping"
    unless_null $P1859, vivify_717
    $P1859 = root_new ['parrot';'Hash']
  vivify_717:
    set $P1860, $P1859[$P1858]
    unless_null $P1860, vivify_718
    new $P1860, "Undef"
  vivify_718:
    unless $P1860, unless_1856
    set $P1855, $P1860
    goto unless_1856_end
  unless_1856:
.annotate 'line', 830
    find_lex $P1861, "$_"
    unless_null $P1861, vivify_719
    new $P1861, "Undef"
  vivify_719:
    $P1862 = $P1861."value"()
    find_lex $P1863, "$_"
    unless_null $P1863, vivify_720
    new $P1863, "Undef"
  vivify_720:
    $P1864 = $P1863."key"()
    find_lex $P1865, "%mapping"
    unless_null $P1865, vivify_721
    $P1865 = root_new ['parrot';'Hash']
    store_lex "%mapping", $P1865
  vivify_721:
    set $P1865[$P1864], $P1862
.annotate 'line', 829
    set $P1855, $P1862
  unless_1856_end:
.annotate 'line', 828
    .return ($P1855)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parents"  :subid("121_1303928979.9") :outer("80_1303928979.9")
    .param pmc param_1879
    .param pmc param_1880
    .param pmc param_1881 :optional :named("local")
    .param int has_param_1881 :opt_flag
.annotate 'line', 843
    .lex "self", param_1879
    .lex "$obj", param_1880
    if has_param_1881, optparam_725
    new $P1882, "Undef"
    set param_1881, $P1882
  optparam_725:
    .lex "$local", param_1881
.annotate 'line', 844
    find_lex $P1885, "$local"
    unless_null $P1885, vivify_726
    new $P1885, "Undef"
  vivify_726:
    if $P1885, if_1884
    find_lex $P1889, "self"
    find_lex $P1890, "$?CLASS"
    getattribute $P1891, $P1889, $P1890, "@!mro"
    unless_null $P1891, vivify_727
    $P1891 = root_new ['parrot';'ResizablePMCArray']
  vivify_727:
    set $P1883, $P1891
    goto if_1884_end
  if_1884:
    find_lex $P1886, "self"
    find_lex $P1887, "$?CLASS"
    getattribute $P1888, $P1886, $P1887, "@!parents"
    unless_null $P1888, vivify_728
    $P1888 = root_new ['parrot';'ResizablePMCArray']
  vivify_728:
    set $P1883, $P1888
  if_1884_end:
.annotate 'line', 843
    .return ($P1883)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "roles"  :subid("122_1303928979.9") :outer("80_1303928979.9")
    .param pmc param_1893
    .param pmc param_1894
    .param pmc param_1895 :named("local")
.annotate 'line', 847
    .lex "self", param_1893
    .lex "$obj", param_1894
    .lex "$local", param_1895
    find_lex $P1896, "self"
    find_lex $P1897, "$?CLASS"
    getattribute $P1898, $P1896, $P1897, "@!roles"
    unless_null $P1898, vivify_729
    $P1898 = root_new ['parrot';'ResizablePMCArray']
  vivify_729:
    .return ($P1898)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "methods"  :subid("123_1303928979.9") :outer("80_1303928979.9")
    .param pmc param_1900
    .param pmc param_1901
    .param pmc param_1902 :named("local")
.annotate 'line', 851
    .const 'Sub' $P1912 = "124_1303928979.9" 
    capture_lex $P1912
    .lex "self", param_1900
    .lex "$obj", param_1901
    .lex "$local", param_1902
.annotate 'line', 852
    $P1903 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meths", $P1903
.annotate 'line', 851
    find_lex $P1904, "@meths"
    unless_null $P1904, vivify_730
    $P1904 = root_new ['parrot';'ResizablePMCArray']
  vivify_730:
.annotate 'line', 853
    find_lex $P1906, "self"
    find_lex $P1907, "$?CLASS"
    getattribute $P1908, $P1906, $P1907, "%!methods"
    unless_null $P1908, vivify_731
    $P1908 = root_new ['parrot';'Hash']
  vivify_731:
    defined $I1909, $P1908
    unless $I1909, for_undef_732
    iter $P1905, $P1908
    new $P1919, 'ExceptionHandler'
    set_label $P1919, loop1918_handler
    $P1919."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1919
  loop1918_test:
    unless $P1905, loop1918_done
    shift $P1910, $P1905
  loop1918_redo:
    .const 'Sub' $P1912 = "124_1303928979.9" 
    capture_lex $P1912
    $P1912($P1910)
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
  for_undef_732:
    find_lex $P1921, "@meths"
    unless_null $P1921, vivify_735
    $P1921 = root_new ['parrot';'ResizablePMCArray']
  vivify_735:
.annotate 'line', 851
    .return ($P1921)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1911"  :anon :subid("124_1303928979.9") :outer("123_1303928979.9")
    .param pmc param_1913
.annotate 'line', 853
    .lex "$_", param_1913
.annotate 'line', 854
    find_lex $P1914, "@meths"
    unless_null $P1914, vivify_733
    $P1914 = root_new ['parrot';'ResizablePMCArray']
  vivify_733:
    find_lex $P1915, "$_"
    unless_null $P1915, vivify_734
    new $P1915, "Undef"
  vivify_734:
    $P1916 = $P1915."value"()
    $P1917 = $P1914."push"($P1916)
.annotate 'line', 853
    .return ($P1917)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "method_table"  :subid("125_1303928979.9") :outer("80_1303928979.9")
    .param pmc param_1923
    .param pmc param_1924
.annotate 'line', 859
    .lex "self", param_1923
    .lex "$obj", param_1924
    find_lex $P1925, "self"
    find_lex $P1926, "$?CLASS"
    getattribute $P1927, $P1925, $P1926, "%!methods"
    unless_null $P1927, vivify_736
    $P1927 = root_new ['parrot';'Hash']
  vivify_736:
    .return ($P1927)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "name"  :subid("126_1303928979.9") :outer("80_1303928979.9")
    .param pmc param_1929
    .param pmc param_1930
.annotate 'line', 863
    .lex "self", param_1929
    .lex "$obj", param_1930
    find_lex $P1931, "self"
    find_lex $P1932, "$?CLASS"
    getattribute $P1933, $P1931, $P1932, "$!name"
    unless_null $P1933, vivify_737
    new $P1933, "Undef"
  vivify_737:
    .return ($P1933)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "attributes"  :subid("127_1303928979.9") :outer("80_1303928979.9")
    .param pmc param_1935
    .param pmc param_1936
    .param pmc param_1937 :named("local")
.annotate 'line', 867
    .const 'Sub' $P1947 = "128_1303928979.9" 
    capture_lex $P1947
    .lex "self", param_1935
    .lex "$obj", param_1936
    .lex "$local", param_1937
.annotate 'line', 868
    $P1938 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attrs", $P1938
.annotate 'line', 867
    find_lex $P1939, "@attrs"
    unless_null $P1939, vivify_738
    $P1939 = root_new ['parrot';'ResizablePMCArray']
  vivify_738:
.annotate 'line', 869
    find_lex $P1941, "self"
    find_lex $P1942, "$?CLASS"
    getattribute $P1943, $P1941, $P1942, "%!attributes"
    unless_null $P1943, vivify_739
    $P1943 = root_new ['parrot';'Hash']
  vivify_739:
    defined $I1944, $P1943
    unless $I1944, for_undef_740
    iter $P1940, $P1943
    new $P1954, 'ExceptionHandler'
    set_label $P1954, loop1953_handler
    $P1954."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1954
  loop1953_test:
    unless $P1940, loop1953_done
    shift $P1945, $P1940
  loop1953_redo:
    .const 'Sub' $P1947 = "128_1303928979.9" 
    capture_lex $P1947
    $P1947($P1945)
  loop1953_next:
    goto loop1953_test
  loop1953_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1955, exception, 'type'
    eq $P1955, .CONTROL_LOOP_NEXT, loop1953_next
    eq $P1955, .CONTROL_LOOP_REDO, loop1953_redo
  loop1953_done:
    pop_eh 
  for_undef_740:
    find_lex $P1956, "@attrs"
    unless_null $P1956, vivify_743
    $P1956 = root_new ['parrot';'ResizablePMCArray']
  vivify_743:
.annotate 'line', 867
    .return ($P1956)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1946"  :anon :subid("128_1303928979.9") :outer("127_1303928979.9")
    .param pmc param_1948
.annotate 'line', 869
    .lex "$_", param_1948
.annotate 'line', 870
    find_lex $P1949, "@attrs"
    unless_null $P1949, vivify_741
    $P1949 = root_new ['parrot';'ResizablePMCArray']
  vivify_741:
    find_lex $P1950, "$_"
    unless_null $P1950, vivify_742
    new $P1950, "Undef"
  vivify_742:
    $P1951 = $P1950."value"()
    $P1952 = $P1949."push"($P1951)
.annotate 'line', 869
    .return ($P1952)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parrot_vtable_mappings"  :subid("129_1303928979.9") :outer("80_1303928979.9")
    .param pmc param_1958
    .param pmc param_1959
    .param pmc param_1960 :named("local")
.annotate 'line', 875
    .lex "self", param_1958
    .lex "$obj", param_1959
    .lex "$local", param_1960
    find_lex $P1961, "self"
    find_lex $P1962, "$?CLASS"
    getattribute $P1963, $P1961, $P1962, "%!parrot_vtable_mapping"
    unless_null $P1963, vivify_744
    $P1963 = root_new ['parrot';'Hash']
  vivify_744:
    .return ($P1963)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "isa"  :subid("130_1303928979.9") :outer("80_1303928979.9")
    .param pmc param_1967
    .param pmc param_1968
    .param pmc param_1969
.annotate 'line', 883
    new $P1966, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1966, control_1965
    push_eh $P1966
    .lex "self", param_1967
    .lex "$obj", param_1968
    .lex "$check", param_1969
.annotate 'line', 884
    new $P1970, "Undef"
    .lex "$check-class", $P1970
.annotate 'line', 885
    new $P1971, "Undef"
    .lex "$i", $P1971
.annotate 'line', 884
    find_lex $P1972, "$check"
    unless_null $P1972, vivify_745
    new $P1972, "Undef"
  vivify_745:
    get_what $P1973, $P1972
    store_lex "$check-class", $P1973
.annotate 'line', 885
    find_lex $P1974, "self"
    find_lex $P1975, "$?CLASS"
    getattribute $P1976, $P1974, $P1975, "@!mro"
    unless_null $P1976, vivify_746
    $P1976 = root_new ['parrot';'ResizablePMCArray']
  vivify_746:
    set $N1977, $P1976
    new $P1978, 'Float'
    set $P1978, $N1977
    store_lex "$i", $P1978
.annotate 'line', 886
    new $P1996, 'ExceptionHandler'
    set_label $P1996, loop1995_handler
    $P1996."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1996
  loop1995_test:
    find_lex $P1979, "$i"
    unless_null $P1979, vivify_747
    new $P1979, "Undef"
  vivify_747:
    set $N1980, $P1979
    isgt $I1981, $N1980, 0.0
    unless $I1981, loop1995_done
  loop1995_redo:
.annotate 'line', 887
    find_lex $P1982, "$i"
    unless_null $P1982, vivify_748
    new $P1982, "Undef"
  vivify_748:
    sub $P1983, $P1982, 1
    store_lex "$i", $P1983
.annotate 'line', 888
    find_lex $P1985, "$i"
    unless_null $P1985, vivify_749
    new $P1985, "Undef"
  vivify_749:
    set $I1986, $P1985
    find_lex $P1987, "self"
    find_lex $P1988, "$?CLASS"
    getattribute $P1989, $P1987, $P1988, "@!mro"
    unless_null $P1989, vivify_750
    $P1989 = root_new ['parrot';'ResizablePMCArray']
  vivify_750:
    set $P1990, $P1989[$I1986]
    unless_null $P1990, vivify_751
    new $P1990, "Undef"
  vivify_751:
    find_lex $P1991, "$check-class"
    unless_null $P1991, vivify_752
    new $P1991, "Undef"
  vivify_752:
    issame $I1992, $P1990, $P1991
    unless $I1992, if_1984_end
.annotate 'line', 889
    new $P1993, "Exception"
    set $P1993['type'], .CONTROL_RETURN
    new $P1994, "Integer"
    assign $P1994, 1
    setattribute $P1993, 'payload', $P1994
    throw $P1993
  if_1984_end:
  loop1995_next:
.annotate 'line', 886
    goto loop1995_test
  loop1995_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1997, exception, 'type'
    eq $P1997, .CONTROL_LOOP_NEXT, loop1995_next
    eq $P1997, .CONTROL_LOOP_REDO, loop1995_redo
  loop1995_done:
    pop_eh 
.annotate 'line', 892
    new $P1998, "Exception"
    set $P1998['type'], .CONTROL_RETURN
    new $P1999, "Integer"
    assign $P1999, 0
    setattribute $P1998, 'payload', $P1999
    throw $P1998
.annotate 'line', 883
    .return ()
  control_1965:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2000, exception, "payload"
    .return ($P2000)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "does"  :subid("131_1303928979.9") :outer("80_1303928979.9")
    .param pmc param_2004
    .param pmc param_2005
    .param pmc param_2006
.annotate 'line', 895
    new $P2003, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2003, control_2002
    push_eh $P2003
    .lex "self", param_2004
    .lex "$obj", param_2005
    .lex "$check", param_2006
.annotate 'line', 896
    new $P2007, "Undef"
    .lex "$i", $P2007
    find_lex $P2008, "self"
    find_lex $P2009, "$?CLASS"
    getattribute $P2010, $P2008, $P2009, "@!done"
    unless_null $P2010, vivify_753
    $P2010 = root_new ['parrot';'ResizablePMCArray']
  vivify_753:
    set $N2011, $P2010
    new $P2012, 'Float'
    set $P2012, $N2011
    store_lex "$i", $P2012
.annotate 'line', 897
    new $P2030, 'ExceptionHandler'
    set_label $P2030, loop2029_handler
    $P2030."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2030
  loop2029_test:
    find_lex $P2013, "$i"
    unless_null $P2013, vivify_754
    new $P2013, "Undef"
  vivify_754:
    set $N2014, $P2013
    isgt $I2015, $N2014, 0.0
    unless $I2015, loop2029_done
  loop2029_redo:
.annotate 'line', 898
    find_lex $P2016, "$i"
    unless_null $P2016, vivify_755
    new $P2016, "Undef"
  vivify_755:
    sub $P2017, $P2016, 1
    store_lex "$i", $P2017
.annotate 'line', 899
    find_lex $P2019, "$i"
    unless_null $P2019, vivify_756
    new $P2019, "Undef"
  vivify_756:
    set $I2020, $P2019
    find_lex $P2021, "self"
    find_lex $P2022, "$?CLASS"
    getattribute $P2023, $P2021, $P2022, "@!done"
    unless_null $P2023, vivify_757
    $P2023 = root_new ['parrot';'ResizablePMCArray']
  vivify_757:
    set $P2024, $P2023[$I2020]
    unless_null $P2024, vivify_758
    new $P2024, "Undef"
  vivify_758:
    find_lex $P2025, "$check"
    unless_null $P2025, vivify_759
    new $P2025, "Undef"
  vivify_759:
    issame $I2026, $P2024, $P2025
    unless $I2026, if_2018_end
.annotate 'line', 900
    new $P2027, "Exception"
    set $P2027['type'], .CONTROL_RETURN
    new $P2028, "Integer"
    assign $P2028, 1
    setattribute $P2027, 'payload', $P2028
    throw $P2027
  if_2018_end:
  loop2029_next:
.annotate 'line', 897
    goto loop2029_test
  loop2029_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2031, exception, 'type'
    eq $P2031, .CONTROL_LOOP_NEXT, loop2029_next
    eq $P2031, .CONTROL_LOOP_REDO, loop2029_redo
  loop2029_done:
    pop_eh 
.annotate 'line', 903
    new $P2032, "Exception"
    set $P2032['type'], .CONTROL_RETURN
    new $P2033, "Integer"
    assign $P2033, 0
    setattribute $P2032, 'payload', $P2033
    throw $P2032
.annotate 'line', 895
    .return ()
  control_2002:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2034, exception, "payload"
    .return ($P2034)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "can"  :subid("132_1303928979.9") :outer("80_1303928979.9")
    .param pmc param_2038
    .param pmc param_2039
    .param pmc param_2040
.annotate 'line', 906
    .const 'Sub' $P2048 = "133_1303928979.9" 
    capture_lex $P2048
    new $P2037, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2037, control_2036
    push_eh $P2037
    .lex "self", param_2038
    .lex "$obj", param_2039
    .lex "$name", param_2040
.annotate 'line', 907
    find_lex $P2042, "self"
    find_lex $P2043, "$?CLASS"
    getattribute $P2044, $P2042, $P2043, "@!mro"
    unless_null $P2044, vivify_760
    $P2044 = root_new ['parrot';'ResizablePMCArray']
  vivify_760:
    defined $I2045, $P2044
    unless $I2045, for_undef_761
    iter $P2041, $P2044
    new $P2066, 'ExceptionHandler'
    set_label $P2066, loop2065_handler
    $P2066."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2066
  loop2065_test:
    unless $P2041, loop2065_done
    shift $P2046, $P2041
  loop2065_redo:
    .const 'Sub' $P2048 = "133_1303928979.9" 
    capture_lex $P2048
    $P2048($P2046)
  loop2065_next:
    goto loop2065_test
  loop2065_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2067, exception, 'type'
    eq $P2067, .CONTROL_LOOP_NEXT, loop2065_next
    eq $P2067, .CONTROL_LOOP_REDO, loop2065_redo
  loop2065_done:
    pop_eh 
  for_undef_761:
.annotate 'line', 914
    new $P2068, "Exception"
    set $P2068['type'], .CONTROL_RETURN
    new $P2069, "Integer"
    assign $P2069, 0
    setattribute $P2068, 'payload', $P2069
    throw $P2068
.annotate 'line', 906
    .return ()
  control_2036:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2070, exception, "payload"
    .return ($P2070)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block2047"  :anon :subid("133_1303928979.9") :outer("132_1303928979.9")
    .param pmc param_2051
.annotate 'line', 908
    $P2049 = root_new ['parrot';'Hash']
    .lex "%meths", $P2049
.annotate 'line', 909
    new $P2050, "Undef"
    .lex "$can", $P2050
    .lex "$_", param_2051
.annotate 'line', 908
    find_lex $P2052, "$_"
    unless_null $P2052, vivify_762
    new $P2052, "Undef"
  vivify_762:
    get_how $P2053, $P2052
    find_lex $P2054, "$obj"
    unless_null $P2054, vivify_763
    new $P2054, "Undef"
  vivify_763:
    $P2055 = $P2053."method_table"($P2054)
    store_lex "%meths", $P2055
.annotate 'line', 909
    find_lex $P2056, "$name"
    unless_null $P2056, vivify_764
    new $P2056, "Undef"
  vivify_764:
    find_lex $P2057, "%meths"
    unless_null $P2057, vivify_765
    $P2057 = root_new ['parrot';'Hash']
  vivify_765:
    set $P2058, $P2057[$P2056]
    unless_null $P2058, vivify_766
    new $P2058, "Undef"
  vivify_766:
    store_lex "$can", $P2058
.annotate 'line', 910
    find_lex $P2061, "$can"
    unless_null $P2061, vivify_767
    new $P2061, "Undef"
  vivify_767:
    defined $I2062, $P2061
    if $I2062, if_2060
    new $P2059, 'Integer'
    set $P2059, $I2062
    goto if_2060_end
  if_2060:
.annotate 'line', 911
    new $P2063, "Exception"
    set $P2063['type'], .CONTROL_RETURN
    find_lex $P2064, "$can"
    unless_null $P2064, vivify_768
    new $P2064, "Undef"
  vivify_768:
    setattribute $P2063, 'payload', $P2064
    throw $P2063
  if_2060_end:
.annotate 'line', 907
    .return ($P2059)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "find_method"  :subid("134_1303928979.9") :outer("80_1303928979.9")
    .param pmc param_2074
    .param pmc param_2075
    .param pmc param_2076
.annotate 'line', 920
    .const 'Sub' $P2084 = "135_1303928979.9" 
    capture_lex $P2084
    new $P2073, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2073, control_2072
    push_eh $P2073
    .lex "self", param_2074
    .lex "$obj", param_2075
    .lex "$name", param_2076
.annotate 'line', 921
    find_lex $P2078, "self"
    find_lex $P2079, "$?CLASS"
    getattribute $P2080, $P2078, $P2079, "@!mro"
    unless_null $P2080, vivify_769
    $P2080 = root_new ['parrot';'ResizablePMCArray']
  vivify_769:
    defined $I2081, $P2080
    unless $I2081, for_undef_770
    iter $P2077, $P2080
    new $P2102, 'ExceptionHandler'
    set_label $P2102, loop2101_handler
    $P2102."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2102
  loop2101_test:
    unless $P2077, loop2101_done
    shift $P2082, $P2077
  loop2101_redo:
    .const 'Sub' $P2084 = "135_1303928979.9" 
    capture_lex $P2084
    $P2084($P2082)
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
  for_undef_770:
.annotate 'line', 928
    null $P2104
.annotate 'line', 920
    .return ($P2104)
  control_2072:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2105, exception, "payload"
    .return ($P2105)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block2083"  :anon :subid("135_1303928979.9") :outer("134_1303928979.9")
    .param pmc param_2087
.annotate 'line', 922
    $P2085 = root_new ['parrot';'Hash']
    .lex "%meths", $P2085
.annotate 'line', 923
    new $P2086, "Undef"
    .lex "$found", $P2086
    .lex "$_", param_2087
.annotate 'line', 922
    find_lex $P2088, "$_"
    unless_null $P2088, vivify_771
    new $P2088, "Undef"
  vivify_771:
    get_how $P2089, $P2088
    find_lex $P2090, "$obj"
    unless_null $P2090, vivify_772
    new $P2090, "Undef"
  vivify_772:
    $P2091 = $P2089."method_table"($P2090)
    store_lex "%meths", $P2091
.annotate 'line', 923
    find_lex $P2092, "$name"
    unless_null $P2092, vivify_773
    new $P2092, "Undef"
  vivify_773:
    find_lex $P2093, "%meths"
    unless_null $P2093, vivify_774
    $P2093 = root_new ['parrot';'Hash']
  vivify_774:
    set $P2094, $P2093[$P2092]
    unless_null $P2094, vivify_775
    new $P2094, "Undef"
  vivify_775:
    store_lex "$found", $P2094
.annotate 'line', 924
    find_lex $P2097, "$found"
    unless_null $P2097, vivify_776
    new $P2097, "Undef"
  vivify_776:
    defined $I2098, $P2097
    if $I2098, if_2096
    new $P2095, 'Integer'
    set $P2095, $I2098
    goto if_2096_end
  if_2096:
.annotate 'line', 925
    new $P2099, "Exception"
    set $P2099['type'], .CONTROL_RETURN
    find_lex $P2100, "$found"
    unless_null $P2100, vivify_777
    new $P2100, "Undef"
  vivify_777:
    setattribute $P2099, 'payload', $P2100
    throw $P2099
  if_2096_end:
.annotate 'line', 921
    .return ($P2095)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "_block2164"  :subid("137_1303928979.9") :outer("10_1303928979.9")
.annotate 'line', 933
    .const 'Sub' $P2227 = "146_1303928979.9" 
    capture_lex $P2227
    .const 'Sub' $P2219 = "145_1303928979.9" 
    capture_lex $P2219
    .const 'Sub' $P2213 = "144_1303928979.9" 
    capture_lex $P2213
    .const 'Sub' $P2209 = "143_1303928979.9" 
    capture_lex $P2209
    .const 'Sub' $P2204 = "142_1303928979.9" 
    capture_lex $P2204
    .const 'Sub' $P2199 = "141_1303928979.9" 
    capture_lex $P2199
    .const 'Sub' $P2185 = "140_1303928979.9" 
    capture_lex $P2185
    .const 'Sub' $P2178 = "139_1303928979.9" 
    capture_lex $P2178
    .const 'Sub' $P2168 = "138_1303928979.9" 
    capture_lex $P2168
    .lex "$?PACKAGE", $P2166
    .lex "$?CLASS", $P2167
.annotate 'line', 973
    .const 'Sub' $P2219 = "145_1303928979.9" 
    newclosure $P2225, $P2219
.annotate 'line', 933
    .return ($P2225)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "" :load :init :subid("post778") :outer("137_1303928979.9")
.annotate 'line', 933
    .const 'Sub' $P2165 = "137_1303928979.9" 
    .local pmc block
    set block, $P2165
    .const 'Sub' $P2227 = "146_1303928979.9" 
    capture_lex $P2227
    $P2227()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "_block2226"  :anon :subid("146_1303928979.9") :outer("137_1303928979.9")
.annotate 'line', 933
    nqp_get_sc_object $P2228, "1303928976.25", 6
    .local pmc type_obj
    set type_obj, $P2228
    get_how $P2229, type_obj
    .const 'Sub' $P2230 = "138_1303928979.9" 
    $P2229."add_method"(type_obj, "new", $P2230)
    get_how $P2231, type_obj
    .const 'Sub' $P2232 = "139_1303928979.9" 
    $P2231."add_method"(type_obj, "BUILD", $P2232)
    get_how $P2233, type_obj
    .const 'Sub' $P2234 = "140_1303928979.9" 
    $P2233."add_method"(type_obj, "new_type", $P2234)
    get_how $P2235, type_obj
    .const 'Sub' $P2236 = "141_1303928979.9" 
    $P2235."add_method"(type_obj, "add_method", $P2236)
    get_how $P2237, type_obj
    .const 'Sub' $P2238 = "142_1303928979.9" 
    $P2237."add_method"(type_obj, "add_multi_method", $P2238)
    get_how $P2239, type_obj
    .const 'Sub' $P2240 = "143_1303928979.9" 
    $P2239."add_method"(type_obj, "add_attribute", $P2240)
    get_how $P2241, type_obj
    .const 'Sub' $P2242 = "144_1303928979.9" 
    $P2241."add_method"(type_obj, "compose", $P2242)
    get_how $P2243, type_obj
    .const 'Sub' $P2244 = "145_1303928979.9" 
    $P2243."add_method"(type_obj, "name", $P2244)
    get_how $P2245, type_obj
    $P2246 = $P2245."compose"(type_obj)
    .return ($P2246)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "new"  :subid("138_1303928979.9") :outer("137_1303928979.9")
    .param pmc param_2169
    .param pmc param_2170 :optional :named("name")
    .param int has_param_2170 :opt_flag
.annotate 'line', 937
    .lex "self", param_2169
    if has_param_2170, optparam_779
    new $P2171, "Undef"
    set param_2170, $P2171
  optparam_779:
    .lex "$name", param_2170
.annotate 'line', 938
    new $P2172, "Undef"
    .lex "$obj", $P2172
    find_lex $P2173, "self"
    repr_instance_of $P2174, $P2173
    store_lex "$obj", $P2174
.annotate 'line', 939
    find_lex $P2175, "$obj"
    unless_null $P2175, vivify_780
    new $P2175, "Undef"
  vivify_780:
    find_lex $P2176, "$name"
    unless_null $P2176, vivify_781
    new $P2176, "Undef"
  vivify_781:
    $P2175."BUILD"($P2176 :named("name"))
    find_lex $P2177, "$obj"
    unless_null $P2177, vivify_782
    new $P2177, "Undef"
  vivify_782:
.annotate 'line', 937
    .return ($P2177)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "BUILD"  :subid("139_1303928979.9") :outer("137_1303928979.9")
    .param pmc param_2179
    .param pmc param_2180 :optional :named("name")
    .param int has_param_2180 :opt_flag
.annotate 'line', 943
    .lex "self", param_2179
    if has_param_2180, optparam_783
    new $P2181, "Undef"
    set param_2180, $P2181
  optparam_783:
    .lex "$name", param_2180
.annotate 'line', 944
    find_lex $P2182, "$name"
    unless_null $P2182, vivify_784
    new $P2182, "Undef"
  vivify_784:
    find_lex $P2183, "self"
    find_lex $P2184, "$?CLASS"
    setattribute $P2183, $P2184, "$!name", $P2182
.annotate 'line', 943
    .return ($P2182)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "new_type"  :subid("140_1303928979.9") :outer("137_1303928979.9")
    .param pmc param_2186
    .param pmc param_2189 :named("repr")
    .param pmc param_2187 :optional :named("name")
    .param int has_param_2187 :opt_flag
.annotate 'line', 950
    .lex "self", param_2186
    if has_param_2187, optparam_785
    new $P2188, "String"
    assign $P2188, "<anon>"
    set param_2187, $P2188
  optparam_785:
    .lex "$name", param_2187
    .lex "$repr", param_2189
.annotate 'line', 951
    new $P2190, "Undef"
    .lex "$metaclass", $P2190
    find_lex $P2191, "self"
    find_lex $P2192, "$name"
    unless_null $P2192, vivify_786
    new $P2192, "Undef"
  vivify_786:
    $P2193 = $P2191."new"($P2192 :named("name"))
    store_lex "$metaclass", $P2193
.annotate 'line', 953
    find_lex $P2194, "$metaclass"
    unless_null $P2194, vivify_787
    new $P2194, "Undef"
  vivify_787:
    find_lex $P2195, "$repr"
    unless_null $P2195, vivify_788
    new $P2195, "Undef"
  vivify_788:
    set $S2196, $P2195
    repr_type_object_for $P2197, $P2194, $S2196
    $P2198 = root_new ['parrot';'Hash']
    set_who $P2197, $P2198
.annotate 'line', 950
    .return ($P2197)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_method"  :subid("141_1303928979.9") :outer("137_1303928979.9")
    .param pmc param_2200
    .param pmc param_2201
    .param pmc param_2202
    .param pmc param_2203
.annotate 'line', 957
    .lex "self", param_2200
    .lex "$obj", param_2201
    .lex "$name", param_2202
    .lex "$code_obj", param_2203
.annotate 'line', 958
    die "Native types may not have methods (must be boxed to call method)"
.annotate 'line', 957
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_multi_method"  :subid("142_1303928979.9") :outer("137_1303928979.9")
    .param pmc param_2205
    .param pmc param_2206
    .param pmc param_2207
    .param pmc param_2208
.annotate 'line', 961
    .lex "self", param_2205
    .lex "$obj", param_2206
    .lex "$name", param_2207
    .lex "$code_obj", param_2208
.annotate 'line', 962
    die "Native types may not have methods (must be boxed to call method)"
.annotate 'line', 961
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_attribute"  :subid("143_1303928979.9") :outer("137_1303928979.9")
    .param pmc param_2210
    .param pmc param_2211
    .param pmc param_2212
.annotate 'line', 965
    .lex "self", param_2210
    .lex "$obj", param_2211
    .lex "$meta_attr", param_2212
.annotate 'line', 966
    die "Native types may not have attributes"
.annotate 'line', 965
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "compose"  :subid("144_1303928979.9") :outer("137_1303928979.9")
    .param pmc param_2214
    .param pmc param_2215
.annotate 'line', 969
    .lex "self", param_2214
    .lex "$obj", param_2215
.annotate 'line', 970
    new $P2216, "Integer"
    assign $P2216, 1
    find_lex $P2217, "self"
    find_lex $P2218, "$?CLASS"
    setattribute $P2217, $P2218, "$!composed", $P2216
.annotate 'line', 969
    .return ($P2216)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "name"  :subid("145_1303928979.9") :outer("137_1303928979.9")
    .param pmc param_2220
    .param pmc param_2221
.annotate 'line', 973
    .lex "self", param_2220
    .lex "$obj", param_2221
    find_lex $P2222, "self"
    find_lex $P2223, "$?CLASS"
    getattribute $P2224, $P2222, $P2223, "$!name"
    unless_null $P2224, vivify_789
    new $P2224, "Undef"
  vivify_789:
    .return ($P2224)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2247"  :subid("147_1303928979.9") :outer("10_1303928979.9")
.annotate 'line', 979
    .const 'Sub' $P2432 = "161_1303928979.9" 
    capture_lex $P2432
    .const 'Sub' $P2422 = "160_1303928979.9" 
    capture_lex $P2422
    .const 'Sub' $P2341 = "155_1303928979.9" 
    capture_lex $P2341
    .const 'Sub' $P2332 = "154_1303928979.9" 
    capture_lex $P2332
    .const 'Sub' $P2323 = "153_1303928979.9" 
    capture_lex $P2323
    .const 'Sub' $P2318 = "152_1303928979.9" 
    capture_lex $P2318
    .const 'Sub' $P2301 = "151_1303928979.9" 
    capture_lex $P2301
    .const 'Sub' $P2286 = "150_1303928979.9" 
    capture_lex $P2286
    .const 'Sub' $P2249 = "148_1303928979.9" 
    capture_lex $P2249
.annotate 'line', 1039
    .const 'Sub' $P2249 = "148_1303928979.9" 
    newclosure $P2283, $P2249
    .lex "has_method", $P2283
.annotate 'line', 979
    .lex "$?PACKAGE", $P2284
    .lex "$?CLASS", $P2285
.annotate 'line', 1035
    find_lex $P2430, "has_method"
.annotate 'line', 979
    .return ($P2430)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "" :load :init :subid("post790") :outer("147_1303928979.9")
.annotate 'line', 979
    .const 'Sub' $P2248 = "147_1303928979.9" 
    .local pmc block
    set block, $P2248
    .const 'Sub' $P2432 = "161_1303928979.9" 
    capture_lex $P2432
    $P2432()
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2431"  :anon :subid("161_1303928979.9") :outer("147_1303928979.9")
.annotate 'line', 979
    nqp_get_sc_object $P2433, "1303928976.25", 7
    .local pmc type_obj
    set type_obj, $P2433
    get_how $P2434, type_obj
    .const 'Sub' $P2435 = "150_1303928979.9" 
    $P2434."add_method"(type_obj, "new", $P2435)
    get_how $P2436, type_obj
    .const 'Sub' $P2437 = "151_1303928979.9" 
    $P2436."add_method"(type_obj, "BUILD", $P2437)
    get_how $P2438, type_obj
    .const 'Sub' $P2439 = "152_1303928979.9" 
    $P2438."add_method"(type_obj, "name", $P2439)
    get_how $P2440, type_obj
    .const 'Sub' $P2441 = "153_1303928979.9" 
    $P2440."add_method"(type_obj, "type", $P2441)
    get_how $P2442, type_obj
    .const 'Sub' $P2443 = "154_1303928979.9" 
    $P2442."add_method"(type_obj, "box_target", $P2443)
    get_how $P2444, type_obj
    .const 'Sub' $P2445 = "155_1303928979.9" 
    $P2444."add_method"(type_obj, "compose", $P2445)
    get_how $P2446, type_obj
    .const 'Sub' $P2447 = "160_1303928979.9" 
    $P2446."add_method"(type_obj, "has_mutator", $P2447)
    get_how $P2448, type_obj
    $P2449 = $P2448."compose"(type_obj)
    .return ($P2449)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "has_method"  :subid("148_1303928979.9") :outer("147_1303928979.9")
    .param pmc param_2252
    .param pmc param_2253
    .param pmc param_2254
.annotate 'line', 1039
    .const 'Sub' $P2266 = "149_1303928979.9" 
    capture_lex $P2266
    new $P2251, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2251, control_2250
    push_eh $P2251
    .lex "$target", param_2252
    .lex "$name", param_2253
    .lex "$local", param_2254
.annotate 'line', 1040
    $P2255 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P2255
    find_lex $P2256, "$target"
    unless_null $P2256, vivify_791
    new $P2256, "Undef"
  vivify_791:
    get_how $P2257, $P2256
    find_lex $P2258, "$target"
    unless_null $P2258, vivify_792
    new $P2258, "Undef"
  vivify_792:
    find_lex $P2259, "$local"
    unless_null $P2259, vivify_793
    new $P2259, "Undef"
  vivify_793:
    $P2260 = $P2257."methods"($P2258, $P2259 :named("local"))
    store_lex "@methods", $P2260
.annotate 'line', 1041
    find_lex $P2262, "@methods"
    unless_null $P2262, vivify_794
    $P2262 = root_new ['parrot';'ResizablePMCArray']
  vivify_794:
    defined $I2263, $P2262
    unless $I2263, for_undef_795
    iter $P2261, $P2262
    new $P2278, 'ExceptionHandler'
    set_label $P2278, loop2277_handler
    $P2278."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2278
  loop2277_test:
    unless $P2261, loop2277_done
    shift $P2264, $P2261
  loop2277_redo:
    .const 'Sub' $P2266 = "149_1303928979.9" 
    capture_lex $P2266
    $P2266($P2264)
  loop2277_next:
    goto loop2277_test
  loop2277_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2279, exception, 'type'
    eq $P2279, .CONTROL_LOOP_NEXT, loop2277_next
    eq $P2279, .CONTROL_LOOP_REDO, loop2277_redo
  loop2277_done:
    pop_eh 
  for_undef_795:
.annotate 'line', 1044
    new $P2280, "Exception"
    set $P2280['type'], .CONTROL_RETURN
    new $P2281, "Integer"
    assign $P2281, 0
    setattribute $P2280, 'payload', $P2281
    throw $P2280
.annotate 'line', 1039
    .return ()
  control_2250:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2282, exception, "payload"
    .return ($P2282)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "_block2265"  :anon :subid("149_1303928979.9") :outer("148_1303928979.9")
    .param pmc param_2267
.annotate 'line', 1041
    .lex "$_", param_2267
.annotate 'line', 1042
    find_lex $P2270, "$_"
    unless_null $P2270, vivify_796
    new $P2270, "Undef"
  vivify_796:
    set $S2271, $P2270
    find_lex $P2272, "$name"
    unless_null $P2272, vivify_797
    new $P2272, "Undef"
  vivify_797:
    set $S2273, $P2272
    iseq $I2274, $S2271, $S2273
    if $I2274, if_2269
    new $P2268, 'Integer'
    set $P2268, $I2274
    goto if_2269_end
  if_2269:
    new $P2275, "Exception"
    set $P2275['type'], .CONTROL_RETURN
    new $P2276, "Integer"
    assign $P2276, 1
    setattribute $P2275, 'payload', $P2276
    throw $P2275
  if_2269_end:
.annotate 'line', 1041
    .return ($P2268)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "new"  :subid("150_1303928979.9") :outer("147_1303928979.9")
    .param pmc param_2287
    .param pmc param_2288 :named("name")
    .param pmc param_2289 :optional :named("type")
    .param int has_param_2289 :opt_flag
    .param pmc param_2291 :optional :named("box_target")
    .param int has_param_2291 :opt_flag
.annotate 'line', 984
    .lex "self", param_2287
    .lex "$name", param_2288
    if has_param_2289, optparam_798
    new $P2290, "Undef"
    set param_2289, $P2290
  optparam_798:
    .lex "$type", param_2289
    if has_param_2291, optparam_799
    new $P2292, "Undef"
    set param_2291, $P2292
  optparam_799:
    .lex "$box_target", param_2291
.annotate 'line', 985
    new $P2293, "Undef"
    .lex "$attr", $P2293
    find_lex $P2294, "self"
    repr_instance_of $P2295, $P2294
    store_lex "$attr", $P2295
.annotate 'line', 986
    find_lex $P2296, "$attr"
    unless_null $P2296, vivify_800
    new $P2296, "Undef"
  vivify_800:
    find_lex $P2297, "$name"
    unless_null $P2297, vivify_801
    new $P2297, "Undef"
  vivify_801:
    find_lex $P2298, "$type"
    unless_null $P2298, vivify_802
    new $P2298, "Undef"
  vivify_802:
    find_lex $P2299, "$box_target"
    unless_null $P2299, vivify_803
    new $P2299, "Undef"
  vivify_803:
    $P2296."BUILD"($P2297 :named("name"), $P2298 :named("type"), $P2299 :named("box_target"))
    find_lex $P2300, "$attr"
    unless_null $P2300, vivify_804
    new $P2300, "Undef"
  vivify_804:
.annotate 'line', 984
    .return ($P2300)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "BUILD"  :subid("151_1303928979.9") :outer("147_1303928979.9")
    .param pmc param_2302
    .param pmc param_2303 :optional :named("name")
    .param int has_param_2303 :opt_flag
    .param pmc param_2305 :optional :named("type")
    .param int has_param_2305 :opt_flag
    .param pmc param_2307 :optional :named("box_target")
    .param int has_param_2307 :opt_flag
.annotate 'line', 990
    .lex "self", param_2302
    if has_param_2303, optparam_805
    new $P2304, "Undef"
    set param_2303, $P2304
  optparam_805:
    .lex "$name", param_2303
    if has_param_2305, optparam_806
    new $P2306, "Undef"
    set param_2305, $P2306
  optparam_806:
    .lex "$type", param_2305
    if has_param_2307, optparam_807
    new $P2308, "Undef"
    set param_2307, $P2308
  optparam_807:
    .lex "$box_target", param_2307
.annotate 'line', 991
    find_lex $P2309, "$name"
    unless_null $P2309, vivify_808
    new $P2309, "Undef"
  vivify_808:
    find_lex $P2310, "self"
    find_lex $P2311, "$?CLASS"
    setattribute $P2310, $P2311, "$!name", $P2309
.annotate 'line', 992
    find_lex $P2312, "$type"
    unless_null $P2312, vivify_809
    new $P2312, "Undef"
  vivify_809:
    find_lex $P2313, "self"
    find_lex $P2314, "$?CLASS"
    setattribute $P2313, $P2314, "$!type", $P2312
.annotate 'line', 993
    find_lex $P2315, "$box_target"
    unless_null $P2315, vivify_810
    new $P2315, "Undef"
  vivify_810:
    find_lex $P2316, "self"
    find_lex $P2317, "$?CLASS"
    setattribute $P2316, $P2317, "$!box_target", $P2315
.annotate 'line', 990
    .return ($P2315)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "name"  :subid("152_1303928979.9") :outer("147_1303928979.9")
    .param pmc param_2319
.annotate 'line', 996
    .lex "self", param_2319
    find_lex $P2320, "self"
    find_lex $P2321, "$?CLASS"
    getattribute $P2322, $P2320, $P2321, "$!name"
    unless_null $P2322, vivify_811
    new $P2322, "Undef"
  vivify_811:
    .return ($P2322)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "type"  :subid("153_1303928979.9") :outer("147_1303928979.9")
    .param pmc param_2324
.annotate 'line', 1000
    .lex "self", param_2324
.annotate 'line', 1001
    find_lex $P2326, "self"
    find_lex $P2327, "$?CLASS"
    getattribute $P2328, $P2326, $P2327, "$!type"
    unless_null $P2328, vivify_812
    new $P2328, "Undef"
  vivify_812:
    set $P2325, $P2328
    defined $I2330, $P2325
    if $I2330, default_2329
    null $P2331
    set $P2325, $P2331
  default_2329:
.annotate 'line', 1000
    .return ($P2325)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "box_target"  :subid("154_1303928979.9") :outer("147_1303928979.9")
    .param pmc param_2333
.annotate 'line', 1004
    .lex "self", param_2333
.annotate 'line', 1005
    find_lex $P2336, "self"
    find_lex $P2337, "$?CLASS"
    getattribute $P2338, $P2336, $P2337, "$!box_target"
    unless_null $P2338, vivify_813
    new $P2338, "Undef"
  vivify_813:
    if $P2338, if_2335
    new $P2340, "Integer"
    assign $P2340, 0
    set $P2334, $P2340
    goto if_2335_end
  if_2335:
    new $P2339, "Integer"
    assign $P2339, 1
    set $P2334, $P2339
  if_2335_end:
.annotate 'line', 1004
    .return ($P2334)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "compose"  :subid("155_1303928979.9") :outer("147_1303928979.9")
    .param pmc param_2342
    .param pmc param_2343
.annotate 'line', 1008
    .const 'Sub' $P2395 = "158_1303928979.9" 
    capture_lex $P2395
    .const 'Sub' $P2355 = "156_1303928979.9" 
    capture_lex $P2355
    .lex "self", param_2342
    .lex "$obj", param_2343
.annotate 'line', 1009
    new $P2344, "Undef"
    .lex "$long_name", $P2344
    find_lex $P2345, "self"
    find_lex $P2346, "$?CLASS"
    getattribute $P2347, $P2345, $P2346, "$!name"
    unless_null $P2347, vivify_814
    new $P2347, "Undef"
  vivify_814:
    set $S2348, $P2347
    new $P2349, 'String'
    set $P2349, $S2348
    store_lex "$long_name", $P2349
.annotate 'line', 1010
    find_lex $P2352, "self"
    $P2353 = $P2352."has_mutator"()
    if $P2353, if_2351
.annotate 'line', 1022
    .const 'Sub' $P2395 = "158_1303928979.9" 
    capture_lex $P2395
    $P2421 = $P2395()
    set $P2350, $P2421
.annotate 'line', 1010
    goto if_2351_end
  if_2351:
    .const 'Sub' $P2355 = "156_1303928979.9" 
    capture_lex $P2355
    $P2393 = $P2355()
    set $P2350, $P2393
  if_2351_end:
.annotate 'line', 1008
    .return ($P2350)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2394"  :anon :subid("158_1303928979.9") :outer("155_1303928979.9")
.annotate 'line', 1022
    .const 'Sub' $P2411 = "159_1303928979.9" 
    capture_lex $P2411
.annotate 'line', 1023
    new $P2396, "Undef"
    .lex "$method", $P2396
    find_lex $P2397, "$long_name"
    unless_null $P2397, vivify_815
    new $P2397, "Undef"
  vivify_815:
    set $S2398, $P2397
    substr $S2399, $S2398, 2
    new $P2400, 'String'
    set $P2400, $S2399
    store_lex "$method", $P2400
.annotate 'line', 1024
    find_lex $P2403, "$obj"
    unless_null $P2403, vivify_816
    new $P2403, "Undef"
  vivify_816:
    find_lex $P2404, "$method"
    unless_null $P2404, vivify_817
    new $P2404, "Undef"
  vivify_817:
    $P2405 = "has_method"($P2403, $P2404, 0)
    unless $P2405, unless_2402
    set $P2401, $P2405
    goto unless_2402_end
  unless_2402:
.annotate 'line', 1025
    find_lex $P2406, "$obj"
    unless_null $P2406, vivify_818
    new $P2406, "Undef"
  vivify_818:
    get_how $P2407, $P2406
    find_lex $P2408, "$obj"
    unless_null $P2408, vivify_819
    new $P2408, "Undef"
  vivify_819:
    find_lex $P2409, "$method"
    unless_null $P2409, vivify_820
    new $P2409, "Undef"
  vivify_820:
.annotate 'line', 1026
    .const 'Sub' $P2411 = "159_1303928979.9" 
    newclosure $P2419, $P2411
    $P2420 = $P2407."add_method"($P2408, $P2409, $P2419)
.annotate 'line', 1024
    set $P2401, $P2420
  unless_2402_end:
.annotate 'line', 1022
    .return ($P2401)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2410"  :anon :subid("159_1303928979.9") :outer("158_1303928979.9")
    .param pmc param_2412
.annotate 'line', 1026
    .lex "self", param_2412
.annotate 'line', 1027
    find_lex $P2413, "self"
    find_lex $P2414, "$obj"
    unless_null $P2414, vivify_821
    new $P2414, "Undef"
  vivify_821:
    get_what $P2415, $P2414
    find_lex $P2416, "$long_name"
    unless_null $P2416, vivify_822
    new $P2416, "Undef"
  vivify_822:
    set $S2417, $P2416
    getattribute $P2418, $P2413, $P2415, $S2417
.annotate 'line', 1026
    .return ($P2418)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2354"  :anon :subid("156_1303928979.9") :outer("155_1303928979.9")
.annotate 'line', 1010
    .const 'Sub' $P2372 = "157_1303928979.9" 
    capture_lex $P2372
.annotate 'line', 1011
    new $P2356, "Undef"
    .lex "$method", $P2356
    find_lex $P2357, "$long_name"
    unless_null $P2357, vivify_823
    new $P2357, "Undef"
  vivify_823:
    set $S2358, $P2357
    substr $S2359, $S2358, 1
    new $P2360, 'String'
    set $P2360, $S2359
    store_lex "$method", $P2360
.annotate 'line', 1012
    find_lex $P2363, "$obj"
    unless_null $P2363, vivify_824
    new $P2363, "Undef"
  vivify_824:
    find_lex $P2364, "$method"
    unless_null $P2364, vivify_825
    new $P2364, "Undef"
  vivify_825:
    $P2365 = "has_method"($P2363, $P2364, 0)
    unless $P2365, unless_2362
    set $P2361, $P2365
    goto unless_2362_end
  unless_2362:
.annotate 'line', 1013
    find_lex $P2366, "$obj"
    unless_null $P2366, vivify_826
    new $P2366, "Undef"
  vivify_826:
    get_how $P2367, $P2366
    find_lex $P2368, "$obj"
    unless_null $P2368, vivify_827
    new $P2368, "Undef"
  vivify_827:
    get_what $P2369, $P2368
    find_lex $P2370, "$method"
    unless_null $P2370, vivify_828
    new $P2370, "Undef"
  vivify_828:
    .const 'Sub' $P2372 = "157_1303928979.9" 
    newclosure $P2391, $P2372
    $P2392 = $P2367."add_method"($P2369, $P2370, $P2391)
.annotate 'line', 1012
    set $P2361, $P2392
  unless_2362_end:
.annotate 'line', 1010
    .return ($P2361)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2371"  :anon :subid("157_1303928979.9") :outer("156_1303928979.9")
    .param pmc param_2373
    .param pmc param_2374 :optional
    .param int has_param_2374 :opt_flag
.annotate 'line', 1013
    .lex "self", param_2373
    if has_param_2374, optparam_829
    new $P2375, "Undef"
    set param_2374, $P2375
  optparam_829:
    .lex "$value", param_2374
.annotate 'line', 1015
    find_lex $P2377, "$value"
    unless_null $P2377, vivify_830
    new $P2377, "Undef"
  vivify_830:
    defined $I2378, $P2377
    unless $I2378, if_2376_end
.annotate 'line', 1014
    find_lex $P2379, "self"
    find_lex $P2380, "$obj"
    unless_null $P2380, vivify_831
    new $P2380, "Undef"
  vivify_831:
    get_what $P2381, $P2380
    find_lex $P2382, "$long_name"
    unless_null $P2382, vivify_832
    new $P2382, "Undef"
  vivify_832:
    set $S2383, $P2382
    find_lex $P2384, "$value"
    unless_null $P2384, vivify_833
    new $P2384, "Undef"
  vivify_833:
    setattribute $P2379, $P2381, $S2383, $P2384
  if_2376_end:
.annotate 'line', 1017
    find_lex $P2385, "self"
    find_lex $P2386, "$obj"
    unless_null $P2386, vivify_834
    new $P2386, "Undef"
  vivify_834:
    get_what $P2387, $P2386
    find_lex $P2388, "$long_name"
    unless_null $P2388, vivify_835
    new $P2388, "Undef"
  vivify_835:
    set $S2389, $P2388
    getattribute $P2390, $P2385, $P2387, $S2389
.annotate 'line', 1013
    .return ($P2390)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "has_mutator"  :subid("160_1303928979.9") :outer("147_1303928979.9")
    .param pmc param_2423
.annotate 'line', 1035
    .lex "self", param_2423
.annotate 'line', 1036
    find_lex $P2424, "self"
    find_lex $P2425, "$?CLASS"
    getattribute $P2426, $P2424, $P2425, "$!name"
    unless_null $P2426, vivify_836
    new $P2426, "Undef"
  vivify_836:
    set $S2427, $P2426
    substr $S2428, $S2427, 1, 1
    isne $I2429, $S2428, "!"
.annotate 'line', 1035
    .return ($I2429)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "_block2450"  :subid("162_1303928979.9") :outer("10_1303928979.9")
.annotate 'line', 1050
    .const 'Sub' $P2514 = "171_1303928979.9" 
    capture_lex $P2514
    .const 'Sub' $P2506 = "170_1303928979.9" 
    capture_lex $P2506
    .const 'Sub' $P2500 = "169_1303928979.9" 
    capture_lex $P2500
    .const 'Sub' $P2496 = "168_1303928979.9" 
    capture_lex $P2496
    .const 'Sub' $P2491 = "167_1303928979.9" 
    capture_lex $P2491
    .const 'Sub' $P2486 = "166_1303928979.9" 
    capture_lex $P2486
    .const 'Sub' $P2471 = "165_1303928979.9" 
    capture_lex $P2471
    .const 'Sub' $P2464 = "164_1303928979.9" 
    capture_lex $P2464
    .const 'Sub' $P2454 = "163_1303928979.9" 
    capture_lex $P2454
    .lex "$?PACKAGE", $P2452
    .lex "$?CLASS", $P2453
.annotate 'line', 1091
    .const 'Sub' $P2506 = "170_1303928979.9" 
    newclosure $P2512, $P2506
.annotate 'line', 1050
    .return ($P2512)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "" :load :init :subid("post837") :outer("162_1303928979.9")
.annotate 'line', 1050
    .const 'Sub' $P2451 = "162_1303928979.9" 
    .local pmc block
    set block, $P2451
    .const 'Sub' $P2514 = "171_1303928979.9" 
    capture_lex $P2514
    $P2514()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "_block2513"  :anon :subid("171_1303928979.9") :outer("162_1303928979.9")
.annotate 'line', 1050
    nqp_get_sc_object $P2515, "1303928976.25", 8
    .local pmc type_obj
    set type_obj, $P2515
    get_how $P2516, type_obj
    .const 'Sub' $P2517 = "163_1303928979.9" 
    $P2516."add_method"(type_obj, "new", $P2517)
    get_how $P2518, type_obj
    .const 'Sub' $P2519 = "164_1303928979.9" 
    $P2518."add_method"(type_obj, "BUILD", $P2519)
    get_how $P2520, type_obj
    .const 'Sub' $P2521 = "165_1303928979.9" 
    $P2520."add_method"(type_obj, "new_type", $P2521)
    get_how $P2522, type_obj
    .const 'Sub' $P2523 = "166_1303928979.9" 
    $P2522."add_method"(type_obj, "add_method", $P2523)
    get_how $P2524, type_obj
    .const 'Sub' $P2525 = "167_1303928979.9" 
    $P2524."add_method"(type_obj, "add_multi_method", $P2525)
    get_how $P2526, type_obj
    .const 'Sub' $P2527 = "168_1303928979.9" 
    $P2526."add_method"(type_obj, "add_attribute", $P2527)
    get_how $P2528, type_obj
    .const 'Sub' $P2529 = "169_1303928979.9" 
    $P2528."add_method"(type_obj, "compose", $P2529)
    get_how $P2530, type_obj
    .const 'Sub' $P2531 = "170_1303928979.9" 
    $P2530."add_method"(type_obj, "name", $P2531)
    get_how $P2532, type_obj
    $P2533 = $P2532."compose"(type_obj)
    .return ($P2533)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "new"  :subid("163_1303928979.9") :outer("162_1303928979.9")
    .param pmc param_2455
    .param pmc param_2456 :optional :named("name")
    .param int has_param_2456 :opt_flag
.annotate 'line', 1054
    .lex "self", param_2455
    if has_param_2456, optparam_838
    new $P2457, "Undef"
    set param_2456, $P2457
  optparam_838:
    .lex "$name", param_2456
.annotate 'line', 1055
    new $P2458, "Undef"
    .lex "$obj", $P2458
    find_lex $P2459, "self"
    repr_instance_of $P2460, $P2459
    store_lex "$obj", $P2460
.annotate 'line', 1056
    find_lex $P2461, "$obj"
    unless_null $P2461, vivify_839
    new $P2461, "Undef"
  vivify_839:
    find_lex $P2462, "$name"
    unless_null $P2462, vivify_840
    new $P2462, "Undef"
  vivify_840:
    $P2461."BUILD"($P2462 :named("name"))
    find_lex $P2463, "$obj"
    unless_null $P2463, vivify_841
    new $P2463, "Undef"
  vivify_841:
.annotate 'line', 1054
    .return ($P2463)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "BUILD"  :subid("164_1303928979.9") :outer("162_1303928979.9")
    .param pmc param_2465
    .param pmc param_2466 :optional :named("name")
    .param int has_param_2466 :opt_flag
.annotate 'line', 1060
    .lex "self", param_2465
    if has_param_2466, optparam_842
    new $P2467, "Undef"
    set param_2466, $P2467
  optparam_842:
    .lex "$name", param_2466
.annotate 'line', 1061
    find_lex $P2468, "$name"
    unless_null $P2468, vivify_843
    new $P2468, "Undef"
  vivify_843:
    find_lex $P2469, "self"
    find_lex $P2470, "$?CLASS"
    setattribute $P2469, $P2470, "$!name", $P2468
.annotate 'line', 1060
    .return ($P2468)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "new_type"  :subid("165_1303928979.9") :outer("162_1303928979.9")
    .param pmc param_2472
    .param pmc param_2473 :optional :named("name")
    .param int has_param_2473 :opt_flag
    .param pmc param_2475 :optional :named("repr")
    .param int has_param_2475 :opt_flag
.annotate 'line', 1066
    .lex "self", param_2472
    if has_param_2473, optparam_844
    new $P2474, "String"
    assign $P2474, "<anon>"
    set param_2473, $P2474
  optparam_844:
    .lex "$name", param_2473
    if has_param_2475, optparam_845
    new $P2476, "String"
    assign $P2476, "P6opaque"
    set param_2475, $P2476
  optparam_845:
    .lex "$repr", param_2475
.annotate 'line', 1067
    new $P2477, "Undef"
    .lex "$metaclass", $P2477
    find_lex $P2478, "self"
    find_lex $P2479, "$name"
    unless_null $P2479, vivify_846
    new $P2479, "Undef"
  vivify_846:
    $P2480 = $P2478."new"($P2479 :named("name"))
    store_lex "$metaclass", $P2480
.annotate 'line', 1069
    find_lex $P2481, "$metaclass"
    unless_null $P2481, vivify_847
    new $P2481, "Undef"
  vivify_847:
    find_lex $P2482, "$repr"
    unless_null $P2482, vivify_848
    new $P2482, "Undef"
  vivify_848:
    set $S2483, $P2482
    repr_type_object_for $P2484, $P2481, $S2483
    $P2485 = root_new ['parrot';'Hash']
    set_who $P2484, $P2485
.annotate 'line', 1066
    .return ($P2484)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_method"  :subid("166_1303928979.9") :outer("162_1303928979.9")
    .param pmc param_2487
    .param pmc param_2488
    .param pmc param_2489
    .param pmc param_2490
.annotate 'line', 1073
    .lex "self", param_2487
    .lex "$obj", param_2488
    .lex "$name", param_2489
    .lex "$code_obj", param_2490
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_multi_method"  :subid("167_1303928979.9") :outer("162_1303928979.9")
    .param pmc param_2492
    .param pmc param_2493
    .param pmc param_2494
    .param pmc param_2495
.annotate 'line', 1079
    .lex "self", param_2492
    .lex "$obj", param_2493
    .lex "$name", param_2494
    .lex "$code_obj", param_2495
.annotate 'line', 1080
    die "Modules may not have methods"
.annotate 'line', 1079
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_attribute"  :subid("168_1303928979.9") :outer("162_1303928979.9")
    .param pmc param_2497
    .param pmc param_2498
    .param pmc param_2499
.annotate 'line', 1083
    .lex "self", param_2497
    .lex "$obj", param_2498
    .lex "$meta_attr", param_2499
.annotate 'line', 1084
    die "Modules may not have attributes"
.annotate 'line', 1083
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "compose"  :subid("169_1303928979.9") :outer("162_1303928979.9")
    .param pmc param_2501
    .param pmc param_2502
.annotate 'line', 1087
    .lex "self", param_2501
    .lex "$obj", param_2502
.annotate 'line', 1088
    new $P2503, "Integer"
    assign $P2503, 1
    find_lex $P2504, "self"
    find_lex $P2505, "$?CLASS"
    setattribute $P2504, $P2505, "$!composed", $P2503
.annotate 'line', 1087
    .return ($P2503)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "name"  :subid("170_1303928979.9") :outer("162_1303928979.9")
    .param pmc param_2507
    .param pmc param_2508
.annotate 'line', 1091
    .lex "self", param_2507
    .lex "$obj", param_2508
    find_lex $P2509, "self"
    find_lex $P2510, "$?CLASS"
    getattribute $P2511, $P2509, $P2510, "$!name"
    unless_null $P2511, vivify_849
    new $P2511, "Undef"
  vivify_849:
    .return ($P2511)
.end


.HLL "nqp"

.namespace []
.sub "_block2534"  :anon :subid("172_1303928979.9") :outer("10_1303928979.9")
.annotate 'line', 1099
    .const 'Sub' $P2563 = "173_1303928979.9" 
    capture_lex $P2563
    .lex "$?PACKAGE", $P2536
    .lex "$?CLASS", $P2537
.annotate 'line', 1100
    find_lex $P2538, "NQPModuleHOW"
    find_lex $P2539, "$?PACKAGE"
    unless_null $P2539, vivify_851
    new $P2539, "Undef"
    store_lex "$?PACKAGE", $P2539
  vivify_851:
    get_who $P2540, $P2539
    set $P2540["module"], $P2538
.annotate 'line', 1101
    find_lex $P2541, "NQPClassHOW"
    find_lex $P2542, "$?PACKAGE"
    unless_null $P2542, vivify_852
    new $P2542, "Undef"
    store_lex "$?PACKAGE", $P2542
  vivify_852:
    get_who $P2543, $P2542
    set $P2543["class"], $P2541
.annotate 'line', 1102
    find_lex $P2544, "NQPAttribute"
    find_lex $P2545, "$?PACKAGE"
    unless_null $P2545, vivify_853
    new $P2545, "Undef"
    store_lex "$?PACKAGE", $P2545
  vivify_853:
    get_who $P2546, $P2545
    set $P2546["class-attr"], $P2544
.annotate 'line', 1103
    find_lex $P2547, "NQPClassHOW"
    find_lex $P2548, "$?PACKAGE"
    unless_null $P2548, vivify_854
    new $P2548, "Undef"
    store_lex "$?PACKAGE", $P2548
  vivify_854:
    get_who $P2549, $P2548
    set $P2549["grammar"], $P2547
.annotate 'line', 1104
    find_lex $P2550, "NQPAttribute"
    find_lex $P2551, "$?PACKAGE"
    unless_null $P2551, vivify_855
    new $P2551, "Undef"
    store_lex "$?PACKAGE", $P2551
  vivify_855:
    get_who $P2552, $P2551
    set $P2552["grammar-attr"], $P2550
.annotate 'line', 1105
    find_lex $P2553, "NQPParametricRoleHOW"
    find_lex $P2554, "$?PACKAGE"
    unless_null $P2554, vivify_856
    new $P2554, "Undef"
    store_lex "$?PACKAGE", $P2554
  vivify_856:
    get_who $P2555, $P2554
    set $P2555["role"], $P2553
.annotate 'line', 1106
    find_lex $P2556, "NQPAttribute"
    find_lex $P2557, "$?PACKAGE"
    unless_null $P2557, vivify_857
    new $P2557, "Undef"
    store_lex "$?PACKAGE", $P2557
  vivify_857:
    get_who $P2558, $P2557
    set $P2558["role-attr"], $P2556
.annotate 'line', 1107
    find_lex $P2559, "NQPNativeHOW"
    find_lex $P2560, "$?PACKAGE"
    unless_null $P2560, vivify_858
    new $P2560, "Undef"
    store_lex "$?PACKAGE", $P2560
  vivify_858:
    get_who $P2561, $P2560
    set $P2561["native"], $P2559
.annotate 'line', 1099
    .return ($P2559)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post850") :outer("172_1303928979.9")
.annotate 'line', 1099
    .const 'Sub' $P2535 = "172_1303928979.9" 
    .local pmc block
    set block, $P2535
    .const 'Sub' $P2563 = "173_1303928979.9" 
    capture_lex $P2563
    $P2563()
.end


.HLL "nqp"

.namespace []
.sub "_block2562"  :anon :subid("173_1303928979.9") :outer("172_1303928979.9")
.annotate 'line', 1099
    nqp_get_sc_object $P2564, "1303928976.25", 9
    .local pmc type_obj
    set type_obj, $P2564
    get_how $P2565, type_obj
    $P2566 = $P2565."compose"(type_obj)
    .return ($P2566)
.end


.HLL "nqp"

.namespace []
.sub "_block2568" :load :anon :subid("174_1303928979.9")
.annotate 'line', 1
    .const 'Sub' $P2570 = "10_1303928979.9" 
    $P2571 = $P2570()
    .return ($P2571)
.end

